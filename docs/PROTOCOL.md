# TI-82 parallel-link protocol extracted from S8

This document records behavior directly observed in the S8 executable. Items marked **inferred** are higher-level interpretations of the instruction sequence and will be validated against the TI-82 during implementation testing.

## 1. Physical registers

S8 stores the configured parallel output address in `lpt_out` and derives the input/status address from it. In the TI parallel path the disassembly repeatedly loads `DX` from the output variable and uses the following register pair:

- output: `lpt_out`
- input/status: `lpt_out + 1`

In the executable, `lpt_out` and `lpt_in` are separate global variables stored at adjacent words. `main` initializes the input/status variable from `lpt_out + 1`. For an ordinary PC LPT1 at `0x378`, the pair is therefore `0x378` / `0x379`.

This matches the supplied LC85 source, whose `lpt_in` macro is also `lpt_out + 1`.

## 2. Output byte/bit handshake

`Put82` at `0x37ED` takes one byte argument and repeats eight times.

For each bit, it examines the least-significant bit and then shifts the argument right by one.

### Sending a 1 bit

```text
OUT lpt_out, 02h
wait until (IN lpt_in & 10h) == 0
OUT lpt_out, 03h
wait until (IN lpt_in & 10h) != 0
```

### Sending a 0 bit

```text
OUT lpt_out, 01h
wait until (IN lpt_in & 20h) == 0
OUT lpt_out, 03h
wait until (IN lpt_in & 20h) != 0
```

The final output state of each bit is therefore `3`.

## 3. Input byte/bit handshake

`Get82` at `0x387B` performs eight iterations.

It repeatedly samples:

```text
v = IN lpt_in & 30h
```

and waits while both handshake bits are set (`v == 30h`).

If `v == 10h`, it records a 1 bit into the result, then:

```text
OUT lpt_out, 01h
wait until (IN lpt_in & 20h) != 0
OUT lpt_out, 03h
```

Otherwise it records a 0 bit, then:

```text
OUT lpt_out, 02h
wait until (IN lpt_in & 10h) != 0
OUT lpt_out, 03h
```

There is an additional bounded retry loop around returning the output register to `3`; the exact reason for this retry behavior should be preserved in the reimplementation rather than simplified away until tested.

## 4. Byte buffers

`PutBytes` at `0x3953` loops over a caller-supplied buffer and calls `Put82` for each byte. It optionally prints progress information when its progress/display argument is nonzero.

`GetBytes` at `0x39CF` loops over a destination buffer and calls `Get82` for each byte.

## 5. File-transfer layer

`SendFile` starts at `0x39F4`. It opens and validates a calculator file, constructs protocol packets, sends packet headers and payloads through `Put82`/`PutBytes`, and receives acknowledgements through `Get82`/`GetBytes`.

The binary contains the strings:

- `Sending %s ...`
- `Unable to open.`
- `**TI8`
- ` not a valid .8x-file`
- `OK`

The executable also contains globals named `Data`, `Buf`, `pc2ti`, `Fd`, `len`, `parts`, and `chksum`, which are consistent with the packet-building and file-transfer logic seen in `SendFile`.

## 6. Standalone implementation target

The replacement should eventually keep the exact low-level link behavior but expose a simple interface such as:

```text
TI82LINK file.82P
```

with the LPT address supplied by an environment variable or command-line option.

The new program should not shell out to S8, should not require LC85 to run first, and should own the complete initialization -> handshake -> file transfer sequence.

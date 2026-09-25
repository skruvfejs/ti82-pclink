# S8 SendFile / protocol reconstruction

Reference binary: `reference/S8.EXE`
SHA-256: `7d45c7e47783b73047ccf416fffbf7e32087b00f5ab9e76fb39f84f4e811c05c`

This document records only behavior directly established from the 8086 disassembly. Semantic names such as ACK/OK/error are not assigned unless the code establishes them.

## Verified function addresses (loaded image offsets)

- `0x37ED` Put82
- `0x387B` Get82
- `0x3953` PutBytes
- `0x39CF` GetBytes
- `0x39F4` SendFile
- `0x3D81` main

## Parallel I/O registers

S8 stores the configured output port at DS:0000 and the input/status port at DS:0002. `main` sets DS:0000 to `0x378` and DS:0002 to `0x379` for LPT1. `Put82` and `Get82` use these indirect port values.

This corrects an earlier annotation that described DS:0002 as `lpt_out+2`; the observed LPT1 configuration is explicitly `0x378` / `0x379`.

## Put82

For each of 8 bits, least-significant bit first:

### Bit 1
1. `OUT lpt_out, 0x02`
2. wait until `(IN lpt_in & 0x10) == 0`
3. `OUT lpt_out, 0x03`
4. wait until `(IN lpt_in & 0x10) != 0`

### Bit 0
1. `OUT lpt_out, 0x01`
2. wait until `(IN lpt_in & 0x20) == 0`
3. `OUT lpt_out, 0x03`
4. wait until `(IN lpt_in & 0x20) != 0`

## Get82

For each of 8 bits:

1. Poll `IN lpt_in & 0x30` until it is not `0x30`.
2. If it is `0x10`, shift the accumulated byte right and insert a 1 at bit 7; output `0x01`; wait for status bit `0x20`.
3. Otherwise shift the accumulated byte right; output `0x02`; wait for status bit `0x10`.
4. Set a local counter to `0xFF`, repeatedly output `0x03` and poll `(IN lpt_in & 0x30)` until it becomes `0x30`, or the counter reaches zero.

That final settling loop is real S8 behavior and is absent from the short LC85 `get85()` implementation.

## PutBytes / GetBytes

`PutBytes` takes a far pointer, byte count and a progress flag. It calls `Put82` once per byte. `GetBytes` takes a far destination pointer and count and calls `Get82` once per byte.

## SendFile: verified sequence

The function opens the supplied file, validates the `**TI8` header, selects a protocol type from the first header byte, prepares an initial record, and then performs a bidirectional exchange.

### Initial record

The code:

```text
Put82(type)
Put82(0x06)
PutBytes(initial_record, length + 4, progress=0)
GetBytes(response_buffer, 8)
```

The initial record checksum is a 16-bit byte sum. The sum is written little-endian to record offsets `+4` and `+5`.

### Follow-up header command

```text
Put82(type)
Put82(0x56)
Put82(header[0x0A])
Put82(header[0x0B])
```

### Repeating data records

Each iteration constructs a record whose payload length is stored in the first two bytes. The checksum is the 16-bit sum of bytes beginning at record offset `+6`; the low byte is stored at `+6`, high byte at `+7`.

Then:

```text
Put82(type)
Put82(0x15)
PutBytes(data_record, payload_length + 4, progress=1)
GetBytes(response_buffer, 4)
```

The loop continues until the file position reaches the previously calculated target size. The 4-byte response is stored in the same 8-byte buffer used for the earlier response, but the current code path does not itself assign semantic names to those response bytes.

## File type mapping directly visible in S8

The first header byte is mapped as:

```text
0x35 -> protocol type 0x05
0x33 -> protocol type 0x03
otherwise -> protocol type 0x02
```

For the TI-82 case under investigation, the fallback selects `0x02`.

There are additional special cases involving protocol type 2/3/5 and header byte `0x0F` or `0x1D` that alter the initial checksum start/record handling. These must be preserved in the eventual implementation rather than simplified away.

## What remains unresolved

The following are intentionally not assigned semantic names yet:

- exact meaning of the 8-byte response after command `0x06`
- exact meaning of the 4-byte response after each `0x15` record
- complete semantic field map of the initial and data records
- exact relationship between the `.82P` file header and the internal records
- exact meaning of the special `0x0F` / `0x1D` cases

These will be resolved by tracing the response buffers and, where possible, comparing against actual `.82P` files and live TI-82 transfers.

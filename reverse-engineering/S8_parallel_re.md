# S8.EXE — parallel-link reverse engineering

## Scope

This document records the reconstruction of the PC-side TI-82 parallel-link
implementation in the supplied `S8.EXE` (Tran8x Send8). It deliberately
separates observations from reconstructed source and from hypotheses.

## Reference binary

The original executable is kept unchanged at:

    reference/S8.EXE

Its SHA-256 is recorded in `reference/S8.EXE.sha256`.

## DOS executable

The file is an MZ DOS executable. The code segment was extracted using the
DOS header's paragraph-sized header and disassembled as 8086 code.

The retained function/debug information exposes the names:

- `Put82`
- `Get82`
- `PutBytes`
- `GetBytes`
- `SendFile`
- `_main`

This is unusually useful because it lets the reconstruction be tied to named
functions instead of guessing boundaries from byte patterns alone.

## Function map

| Function | Code offset | Role |
|---|---:|---|
| `Put82` | `0x37ED` | Send one byte over TI link |
| `Get82` | `0x387B` | Receive one byte over TI link |
| `PutBytes` | `0x3953` | Send a byte buffer |
| `GetBytes` | `0x39CF` | Receive a byte buffer |
| `SendFile` | `0x39F4` | File/packet transfer logic |
| `_main` | `0x3D81` | CLI, link selection and transfer loop |

## Parallel LPT registers

For LPT1 the executable initializes:

    lpt_out = 0x378
    lpt_in  = 0x379

`lpt_in` is the adjacent status register. The link protocol examines status
bits `0x10` and `0x20`.

The executable explicitly performs:

    OUT 0x378, 0x03

as part of initialization and again at the end of the transfer primitives.

## Put82

The reconstructed algorithm is:

1. Process the input byte least-significant bit first.
2. For a `1` bit, write `2` to the LPT data register.
3. Wait until status bit `0x10` is low.
4. Write `3` to the data register.
5. Wait until status bit `0x10` becomes high.
6. For a `0` bit, write `1` instead.
7. For a `0` bit, use status bit `0x20` for the same handshake.
8. Shift the source byte right and repeat eight times.

This agrees closely with the supplied LC85 source. LC85's `put85()` uses the
same data values, status bits and LSB-first ordering. See `reference/LC85.C`.

## Get82

The parallel-mode receive algorithm is:

1. Read status register `0x379` and mask with `0x30`.
2. Wait while both bits are high (`0x30`).
3. If the result is `0x10`, insert a `1` at the most-significant end of the
   result byte and acknowledge with data value `1`.
4. Otherwise insert a `0` and acknowledge with data value `2`.
5. Wait for the opposite status bit to become asserted.
6. Return the data register to `3`.
7. Repeat eight times.

## Important distinction from LC85

LC85 does not merely initialize the LPT register. Its `main()` writes `3` and
then calls `get_header()`, which calls `get85()` twice. Therefore LC85 performs
a real TI-side protocol exchange before it exits.

S8 itself also writes `3` during initialization. Consequently the observed
fact that running LC85 first can make a subsequent S8 transfer work cannot be
explained by `OUT 0x378,3` alone. The next investigation target is the exact
sequence performed by S8 around `SendFile()` and the TI-82-side state created
by LC85's two `Get82` operations.

## SendFile observations

`SendFile` begins with file handling and then builds TI transfer structures.
The disassembly shows explicit calls to `Put82`, `PutBytes`, and `GetBytes`.
It also contains checksum accumulation over packet data.

The function contains logic that derives a file-type byte from the first
header byte. Values observed in the reconstructed code include `0x35` and
`0x33`, with a fallback value `0x02`. These values should not yet be given a
semantic name in the clean implementation until the complete packet format is
verified.

The transfer loop builds packet data, computes a checksum, sends it and then
reads a response. The exact meaning of every packet field is still being
validated from the remaining disassembly and should not be inferred solely
from field names.

## Clean-room boundary

The future implementation under `src/` will be our own code. The reverse-
engineering files document the behavior of the historical binary and are not
used as compiled source.

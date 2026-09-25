# Reverse-engineering research log

## 2026-09-25 — S8.EXE phase 1

Input binary:

- Format: MS-DOS MZ executable
- Size: 83,406 bytes
- SHA-256: `7d45c7e47783b73047ccf416fffbf7e32087b00f5ab9e76fb39f84f4e811c05c`
- MZ header size: 0x800 bytes
- Main loaded image size derived from the MZ header: 69,904 bytes
- The executable contains Borland C++ runtime/debug information and source/symbol strings.

### Important discovery

The executable contains the original function names:

- `Put82`
- `Get82`
- `PutBytes`
- `GetBytes`
- `SendFile`
- `main`

and global names including:

- `lpt_out`
- `lpt_in`
- `Data`
- `Buf`
- `pc2ti`
- `Gl`
- `Fd`
- `len`
- `chksum`
- `parts`
- `FileN`

It also contains the source-file name `SEND8.CPP`.

### Function addresses recovered from control flow

These are the image offsets identified from the actual call graph:

- `c_break`: `0x379E`
- `Put82`: `0x37ED`
- `Get82`: `0x387B`
- `PutBytes`: `0x3953`
- `GetBytes`: `0x39CF`
- `SendFile`: `0x39F4`
- `main`: `0x3D81`

### Application-code boundary

The embedded Borland symbol information identifies the Send8 application functions in source order as `c_break`, `Put82`, `Get82`, `PutBytes`, `GetBytes`, `SendFile`, and `main`. The code immediately following `main` is linked serial/communications support and the Borland runtime rather than additional Send8 transfer logic. The complete reverse-engineering pass therefore focuses on all Send8-owned application functions while leaving compiler/runtime support documented as linked dependencies.

### LPT protocol instructions

For the parallel-link implementation, the core routines use:

- `lpt_out` = LPT data register
- `lpt_in` is a separate global initialized by `main` to `lpt_out + 1`
- data values written to the output register: `1`, `2`, `3`
- status bits sampled on input: `0x10` and `0x20`

`Put82` sends one bit at a time, least-significant bit first:

- bit 1: write `2`, wait for input bit `0x10` to clear, write `3`, wait for `0x10` to become set
- bit 0: write `1`, wait for input bit `0x20` to clear, write `3`, wait for `0x20` to become set

`Get82` samples `lpt_in & 0x30`, then acknowledges with the complementary output value and finally returns the output register to `3`.

### Initialization

`main` explicitly writes `3` to the configured LPT output port before the file-transfer loop. This is important because it disproves the idea that S8 simply forgets to initialize the data register.

However, LC85 also performs a real receive transaction (`get_header()` -> two `get85()` calls), so the successful `LC85 -> exit -> S8` behavior cannot be explained by the output register write alone. The next investigation target is the complete state/timing sequence around the first S8 packet.

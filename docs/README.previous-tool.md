# TI82-PCLink

A from-scratch TI-82 PC -> calculator parallel-link project developed on Linux Mint, with a final DOS target for the original parallel-port PC.

## Project strategy

This repository intentionally has two phases:

1. **Reverse engineering** of the original Tran8x `S8.EXE` and comparison with `LC85.C`.
2. **Own implementation** of a standalone PC -> TI-82 sender, written from the reconstructed protocol rather than depending on S8.

We do not begin the standalone implementation until the S8 transfer protocol has been traced and documented sufficiently to explain the observed behavior.

## Reference binary

The exact original `S8.EXE` supplied for this project is stored in `reference/S8.EXE`.

SHA-256:

```text
7d45c7e47783b73047ccf416fffbf7e32087b00f5ab9e76fb39f84e4f811c05c
```

## Reverse engineering

The binary retains Borland C++ decorated symbols for the important application functions. The verified code offsets are:

```text
0x37ED  Put82
0x387B  Get82
0x3953  PutBytes
0x39CF  GetBytes
0x39F4  SendFile
0x3D81  main
```

The complete linear disassembly is reproducibly generated with:

```bash
./tools/disassemble_s8.sh
./tools/extract_s8_strings.sh
python3 ./tools/analyze_s8.py
```

See `docs/REVERSE_ENGINEERING.md` and `reverse-engineering/S8.SendFile.annotated.asm` for the current analysis.

## Current key finding

S8 itself initializes the configured LPT data register to `3`. LC85 also does this, so the successful `LC85 -> S8` behavior cannot be explained solely by a missing `OUT 3` in S8.

LC85 additionally performs two complete receive-byte handshakes before it exits. That remains a primary experimental target.

## Standalone implementation

After reverse engineering is complete, the project will contain an independent sender with a portable protocol layer and a DOS LPT backend. Linux Mint is the primary development environment; FreeDOS is the final hardware test environment.

# TI82 PC Link

Reverse engineering of the DOS Tran8x Send8 program (`S8.EXE`) and, later, a clean-room implementation of PC-to-TI-82 transfer over the homemade parallel link.

## Current phase

**Phase: reverse engineering. Do not start the new implementation yet.**

The original executable is preserved under `reference/S8.EXE`. The analysis separates verified binary facts from protocol hypotheses.

## Reference identity

SHA-256: `7d45c7e47783b73047ccf416fffbf7e32087b00f5ab9e76fb39f84f4e811c05c`

## Goals

1. Preserve the original reference material.
2. Fully document the S8 transfer implementation.
3. Compare S8 with LC85 at the LPT and TI-link protocol level.
4. Explain the observed LC85-first/S8-second behavior.
5. Build an independent PC-to-TI-82 sender after the protocol is understood.

See `docs/REVERSE_ENGINEERING.md` and `docs/PROTOCOL.md`.

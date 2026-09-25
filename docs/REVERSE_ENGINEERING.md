# Reverse engineering status

## Scope

The project reverse-engineers the DOS `S8.EXE` (Send8 v1.0) used with the homemade TI-82 parallel link. The original executable is retained in `reference/S8.EXE` and is never modified.

## Method

1. Preserve the original binary and SHA-256.
2. Parse the MZ executable and work from the loaded image offsets.
3. Disassemble the 8086 code region.
4. Identify functions from retained symbol/debug information and control flow.
5. Annotate protocol routines separately from Borland runtime code.
6. Compare the protocol routines against the supplied `LC85.C` source.
7. Mark unknown protocol semantics as unknown instead of guessing.

## Verified protocol routines

- Put82: `0x37ED`
- Get82: `0x387B`
- PutBytes: `0x3953`
- GetBytes: `0x39CF`
- SendFile: `0x39F4`

## Important correction

An earlier project note incorrectly described the internal status-port variable as `lpt_out + 2`. The executable itself, in `main`, writes `0x378` to DS:0000 and then increments it to obtain `0x379` at DS:0002. Therefore the observed LPT1 pair is `0x378` (data) and `0x379` (status).

## LC85 comparison

`LC85.C` initializes the data port with `OUT 3` and its `put85()` bit handshake matches the S8 `Put82()` protocol. The LC85 source also performs two `get85()` calls when reading the TI calculator header. The project treats the observed success of `LC85 -> S8` as an experimental clue, not proof of the cause.

## Current status

The byte-level send/receive primitives and the high-level SendFile exchange are substantially reconstructed. Response-byte semantics and complete record field semantics remain to be established before implementation of the new standalone sender.

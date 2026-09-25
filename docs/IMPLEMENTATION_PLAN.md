# Standalone implementation plan

This is the phase-2 plan. Do not implement it by copying S8 wholesale. Recreate the protocol from documented behavior and use LC85 only as a comparison/reference.

## Linux Mint development

The intended development host is Linux Mint. The final binary must run under FreeDOS/DOS and directly access the PC parallel-port I/O registers.

We will choose a DOS cross-compiler that can be installed on Linux Mint and produce a real-mode DOS executable. OpenWatcom is a likely first candidate; the exact toolchain will be selected and tested before coding the transfer engine.

## Proposed source layout

```text
src/
  main.c
  ti82_link.c
  ti82_link.h
  ti82_file.c
  ti82_file.h
  lpt_dos.c
  lpt_dos.h
  checksum.c
  checksum.h
```

## Functional stages

1. Parse `--port` / environment configuration.
2. Initialize the LPT link to the exact state required by the TI protocol.
3. Implement `put_byte()` from S8 `Put82`.
4. Implement `get_byte()` from S8 `Get82`, including the retry/settling behavior.
5. Implement buffer helpers.
6. Implement TI-8x file-header parsing.
7. Implement the packet sequence used by `SendFile`.
8. Add diagnostics that can be disabled for normal use.
9. Test with `TUNNEL.82P`, then the other known `.82P` files.
10. Only after that add multi-file support and polish.

## Important test hypothesis

The standalone program must work when launched directly. It must not require LC85 to be executed first.

The first diagnostic build should also be able to log the exact sequence of output values and input status transitions so that we can compare:

```text
LC85 -> TI82
S8   -> TI82
new program -> TI82
```

without changing the protocol.

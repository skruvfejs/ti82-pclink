# S8 function map and annotated reconstruction

## Calling convention

The binary is a 16-bit Borland C++ DOS executable. The relevant functions use a conventional BP stack frame and return with `lret`. The exact compiler-generated calling convention is preserved in the assembly listing; the C-like prototypes below are reconstructions for documentation, not claims that the original source had these exact declarations.

## `c_break` — image offset `0x379E`

The embedded symbol table places `c_break` immediately before `Put82`, and the code at `0x379E` matches a break/cleanup routine: it prints the completion/cleanup message, closes active communication resources when present, restores the link output to `3`, and returns. This path matters because the output state is deliberately normalized to `3` during cleanup as well as during normal operation.

## `Put82` — image offset `0x37ED`

Likely prototype:

```c
void Put82(unsigned char data);
```

Behavior:

```c
for (int bit = 0; bit < 8; ++bit) {
    if (data & 1) {
        outportb(lpt_out, 2);
        while (inportb(lpt_in) & 0x10) { }
        outportb(lpt_out, 3);
        while ((inportb(lpt_in) & 0x10) == 0) { }
    } else {
        outportb(lpt_out, 1);
        while (inportb(lpt_in) & 0x20) { }
        outportb(lpt_out, 3);
        while ((inportb(lpt_in) & 0x20) == 0) { }
    }
    data >>= 1;
}
```

The disassembly confirms eight iterations, LSB-first shifting, output values 1/2/3, and status tests 0x10/0x20.

## `Get82` — image offset `0x387B`

Likely prototype:

```c
unsigned char Get82(void);
```

Reconstruction:

```c
unsigned char data = 0;
for (int bit = 0; bit < 8; ++bit) {
    unsigned char v;
    do {
        v = inportb(lpt_in) & 0x30;
    } while (v == 0x30);

    if (v == 0x10) {
        data = (data >> 1) | 0x80;
        outportb(lpt_out, 1);
        while ((inportb(lpt_in) & 0x20) == 0) { }
    } else {
        data >>= 1;
        outportb(lpt_out, 2);
        while ((inportb(lpt_in) & 0x10) == 0) { }
    }

    /* S8 contains a retry/settling loop around OUT 3. */
    outportb(lpt_out, 3);
    /* retry until the input handshake returns to 0x30 or a counter expires */
}
return data;
```

The retry loop in the executable is deliberately documented instead of collapsed into a cleaner-looking C loop; it may be part of the behavior relevant to the observed LC85/S8 state issue.

## `PutBytes` — image offset `0x3953`

Likely prototype:

```c
void PutBytes(const unsigned char *buf, unsigned len, int show_progress);
```

For every byte it calls `Put82`. When progress output is enabled, the disassembly calls formatting/math routines using the current index and total length.

## `GetBytes` — image offset `0x39CF`

Likely prototype:

```c
void GetBytes(unsigned char *buf, unsigned len);
```

For every byte it calls `Get82` and stores the result at the destination pointer.

## `SendFile` — image offset `0x39F4`

`SendFile` is the main transfer engine. Its observed stages are:

1. Print `Sending %s ...`.
2. Open the named file in binary-read mode.
3. If open fails, print `Unable to open.` and return through the cleanup path.
4. Read the file header and validate the TI file signature beginning with `**TI8`.
5. Validate that the input is a calculator `.8x` file.
6. Extract file metadata and payload length information into global working storage.
7. Construct the initial transfer packet(s).
8. Use `Put82`/`PutBytes` to transmit headers and payload chunks.
9. Use `Get82`/`GetBytes` to receive calculator responses/acknowledgements.
10. Continue until the complete file is transferred.
11. Close the file and print the completion text.

The exact packet field interpretation is being kept at instruction level in `S8.full.disasm.txt` until we validate each field against real `.82P` and `.82B` files.

## `main` — image offset `0x3D81`

Observed responsibilities:

1. Print the S8 banner.
2. Require at least one filename argument.
3. Read the `T8` environment setting.
4. Select LPT, serial, or GraphLink mode.
5. For the LPT path, derive the configured port and status/input address.
6. Print the selected link configuration.
7. Install/configure the break handler.
8. **Write `3` to `lpt_out` before entering the file-transfer loop.**
9. Iterate over the file arguments and invoke the file-transfer routine.
10. Restore/close communication resources and terminate.

This is the key result for the LC85 comparison: S8 itself performs the `OUT lpt_out,3` initialization. Therefore a successful `LC85 -> S8` sequence is not explained by a missing one-byte initialization in S8.

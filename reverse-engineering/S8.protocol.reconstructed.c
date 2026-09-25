/*
 * Reconstructed pseudocode for the parallel-link portions of Tran8x S8.EXE.
 *
 * This is NOT the original source. It is a source-level reconstruction from
 * the supplied DOS executable and is intentionally kept separate from the
 * future clean-room implementation under src/.
 */

#include <stdint.h>

/* S8's parallel implementation uses the LPT data register and the adjacent
 * status register. For LPT1 these are 0x378 and 0x379 respectively. */
static uint16_t lpt_out;
static uint16_t lpt_in;

static uint8_t in_status(void);
static void out_data(uint8_t value);

/* Reconstructed from S8 function Put82 (file/code offset 0x37ED).
 *
 * The byte is transmitted LSB first. A 1 is represented by data value 2;
 * a 0 by data value 1. In both cases the sender waits for the corresponding
 * status line to go low, returns the data register to 3, and then waits for
 * the status line to go high.
 */
static void Put82(uint8_t data)
{
    for (int bit = 0; bit < 8; ++bit) {
        if (data & 1) {
            out_data(2);
            while (in_status() & 0x10) {}
            out_data(3);
            while (!(in_status() & 0x10)) {}
        } else {
            out_data(1);
            while (in_status() & 0x20) {}
            out_data(3);
            while (!(in_status() & 0x20)) {}
        }
        data >>= 1;
    }
}

/* Reconstructed from S8 function Get82 (file/code offset 0x387B).
 *
 * In parallel mode the receiver waits until status bits 0x10/0x20 are no
 * longer both high.  0x10 represents a received 1 and 0x20 a received 0.
 * The PC acknowledges each received bit with data 1 or 2 and finally leaves
 * the data register at 3.
 */
static uint8_t Get82(void)
{
    uint8_t data = 0;

    for (int bit = 0; bit < 8; ++bit) {
        uint8_t v;
        do {
            v = in_status() & 0x30;
        } while (v == 0x30);

        if (v == 0x10) {
            data = (data >> 1) | 0x80;
            out_data(1);
            while (!(in_status() & 0x20)) {}
        } else {
            data >>= 1;
            out_data(2);
            while (!(in_status() & 0x10)) {}
        }

        out_data(3);
    }

    return data;
}

/* Reconstructed from S8 function PutBytes (file/code offset 0x3953).
 * The executable supports an optional progress-reporting mode. */
static void PutBytes(const uint8_t *buf, uint16_t len, int progress)
{
    for (uint16_t i = 0; i < len; ++i) {
        Put82(buf[i]);
        if (progress) {
            /* S8 updates its textual progress display here. */
        }
    }
}

/* Reconstructed from S8 function GetBytes (file/code offset 0x39CF). */
static void GetBytes(uint8_t *buf, uint16_t len)
{
    for (uint16_t i = 0; i < len; ++i)
        buf[i] = Get82();
}

/*
 * SendFile reconstruction, high-level only.
 *
 * The original function is larger than the protocol primitives and contains
 * file I/O, TI-82 header handling, packet construction, checksum generation,
 * and terminal/status handling. The exact packet field semantics are being
 * documented separately in PROTOCOL.md as each operation is verified against
 * the disassembly.
 */
static int SendFile(const char *filename)
{
    /* open input file */
    /* read/validate file information */
    /* determine TI-82 file type */
    /* construct and send transfer header */
    /* construct data packets and checksums */
    /* PutBytes(...) for each packet */
    /* GetBytes(...) for TI acknowledgement */
    /* close file */
    return 0;
}

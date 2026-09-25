#include <stdio.h>
#include <conio.h>
#include <dos.h>

int main(void)
{
    int port = 0x378;
    int before;
    int after;

    printf("\n");
    printf("========================================\n");
    printf(" INITLPT - LPT1 data register test\n");
    printf("========================================\n");
    printf("\n");

    printf("LPT1 data port : 0x%03X\n", port);
    printf("Target value   : 0x03\n");
    printf("\n");

    printf("Reading LPT1 data register...\n");
    before = inp(port);

    printf("  BEFORE = 0x%02X\n", before);
    printf("\n");

    printf("Writing 0x03 to LPT1 data register...\n");
    outp(port, 0x03);

    printf("Reading LPT1 data register again...\n");
    after = inp(port);

    printf("  AFTER  = 0x%02X\n", after);
    printf("\n");

    if (after == 0x03)
    {
        printf("RESULT: PASS\n");
        printf("LPT1 data register now reads 0x03.\n");
    }
    else
    {
        printf("RESULT: WARNING\n");
        printf("Expected 0x03 but read 0x%02X.\n", after);
    }

    printf("\n");
    printf("Press any key to exit...");
    getch();

    return 0;
}

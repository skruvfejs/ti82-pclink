#include <conio.h>
#include <dos.h>
#include <stdio.h>
#include <stdlib.h>

#define	LPTPORT	*(unsigned int far *)0x408L
#define	TIMER	*(unsigned int far *)0x46CL
#define TIMEOUT	if (TIMER-timeout>18*4) {printf("\nTimeout."); exit(1);}
#define lpt_in	(lpt_out+1)

unsigned calc_type;
unsigned int lpt_out;
unsigned int last_packet_length;
unsigned int timeout;

void put85(char data)
{
	int bit;

	for (bit=0; bit<8; bit++) {
		if (data&1) {
			outportb(lpt_out, 2);
			while (inportb(lpt_in)&0x10);
			outportb(lpt_out, 3);
			while ((inportb(lpt_in)&0x10)==0x00);
		} else {
			outportb(lpt_out, 1);
			while (inportb(lpt_in)&0x20);
			outportb(lpt_out, 3);
			while ((inportb(lpt_in)&0x20)==0x00);
		}
		data>>=1;
	}
}

unsigned char get85(void)
{
	int bit;
	unsigned char data=0, v;

	timeout=TIMER;
	for (bit=0; bit<8; bit++) {
		while ((v=inportb(lpt_in)&0x30) == 0x30)
				TIMEOUT
		if (v==0x10) {
			data=(data>>1)|0x80;
			outportb(lpt_out, 1);
			while ((inportb(lpt_in)&0x20)==0x00)
				TIMEOUT
			outportb(lpt_out, 3);
		} else {
			data=data>>1;
			outportb(lpt_out, 2);
			while ((inportb(lpt_in)&0x10)==0x00)
				TIMEOUT
			outportb(lpt_out, 3);
		}
	}
	return data;
}

unsigned char get_header(void)
{
	int r, t;

	calc_type=get85();
	r=get85();
#if 0
	t=get85();
	last_packet_length=(get85()<<8)|t;
#endif
	printf("Id byte is 0x%02x\n", calc_type);
	printf("Type byte is 0x%02x\n", r);
	return r;
}

void write_packet(char cmd)
{
	put85(calc_type);
	put85(cmd);
#if 0
	put85(len&0xff);
	put85(len>>8);
#else
	put85(0);
	put85(0);
#endif
}

void read_packet(void)
{
	unsigned int i, b, len, sum=0;

	for (i=0; i<last_packet_length; i++) {
		printf("%02X  ", b=get85());
		sum+=b;
	}
	printf("%02X  ", i=get85());
	printf("%02X  ", b=get85());
	i|=b<<8;
	if (i==sum) {
		printf("\nchecksum ok.\n");
	} else {
		printf("\nchecksum error.\n");
	}
}

int main(int argc, char *argv[])
{
	printf("LC85 0.01 - see readme for doc.\nAuthor: aw4@inf.tu-dresden.de (Andreas Westfeld)\n");
	if (argc==1) {
		printf("Usage: lc85 port_address, e. g. lc85 0x278\n");
		exit(2);
	}
	sscanf(argv[1], "%i", &lpt_out);
	printf("Using i/o port 0x%04x.\n", lpt_out);
	outportb(lpt_out, 3);	/* initialize link cable */
	printf("Now connect your TI-8x and send a program.\nHit any key to continue.\n");
	getch();
	printf("Waiting for transmission.\n");
	get_header();
	return 0;
}

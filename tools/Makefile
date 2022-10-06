CC := gcc
CFLAGS := -O3 -Wall -s

default: all

all: elf2dol metroidbuildinfo

elf2dol: elf2dol.c
	$(CC) $(CFLAGS) -o $@ $^

metroidbuildinfo: metroidbuildinfo.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) elf2dol metroidbuildinfo

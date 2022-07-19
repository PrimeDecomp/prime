CC := gcc
CFLAGS := -O3 -Wall -s

default: all

all: elf2dol

elf2dol: elf2dol.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) elf2dol

CC := gcc
CFLAGS := -O3 -Wall -s

default: all

all: elf2dol elf2rel

elf2dol: elf2dol.c
	$(CC) $(CFLAGS) -o $@ $^

elf2rel: elf2rel.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) elf2dol
	$(RM) elf2rel

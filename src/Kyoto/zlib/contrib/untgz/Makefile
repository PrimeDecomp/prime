CC=gcc
CPPFLAGS=-MMD 
CFLAGS=-O3 $(BUTT) -Wall -Wwrite-strings -Wpointer-arith -Wconversion \
             -Wstrict-prototypes -Wmissing-prototypes

untgz: untgz.o  ../../libz.a
	$(CC) $(CFLAGS) -o untgz  untgz.o -L../.. -lz

untgz.o: untgz.c ../../zlib.h
	$(CC) $(CFLAGS) -c -I../.. untgz.c


clean:
	rm -f untgz untgz.o *~

#include "string.h"


void* memcpy(void* dst, const void* src, size_t n) {
  const char* p;
  char* q;
  int rev = ((unsigned long)src < (unsigned long)dst);

  if (!rev) {

    for (p = (const char*)src - 1, q = (char*)dst - 1, n++; --n;)
      *++q = *++p;

  } else {
    for (p = (const char*)src + n, q = (char*)dst + n, n++; --n;)
      *--q = *--p;
  }
  return (dst);
}


#define cps ((unsigned char*)src)
#define cpd ((unsigned char*)dst)
#define lps ((unsigned long*)src)
#define lpd ((unsigned long*)dst)
#define deref_auto_inc(p) *++(p)

void __fill_mem(void* dst, int val, size_t n) {
  unsigned long v = (unsigned char)val;
  unsigned long i;

  cpd = ((unsigned char*)dst) - 1;

  if (n >= 32) {
    i = (~(unsigned long)dst) & 3;

    if (i) {
      n -= i;

      do
        deref_auto_inc(cpd) = v;
      while (--i);
    }

    if (v)
      v |= v << 24 | v << 16 | v << 8;

    lpd = ((unsigned long*)(cpd + 1)) - 1;

    i = n >> 5;

    if (i)
      do {
        deref_auto_inc(lpd) = v;
        deref_auto_inc(lpd) = v;
        deref_auto_inc(lpd) = v;
        deref_auto_inc(lpd) = v;
        deref_auto_inc(lpd) = v;
        deref_auto_inc(lpd) = v;
        deref_auto_inc(lpd) = v;
        deref_auto_inc(lpd) = v;
      } while (--i);

    i = (n & 31) >> 2;

    if (i)
      do
        deref_auto_inc(lpd) = v;
      while (--i);

    cpd = ((unsigned char*)(lpd + 1)) - 1;

    n &= 3;
  }

  if (n)
    do
      deref_auto_inc(cpd) = v;
    while (--n);

  return;
}

void* memset(void* str, int c, size_t n) {
  __fill_mem(str, c, n);
  return str;
}

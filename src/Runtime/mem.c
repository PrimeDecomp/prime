#include <string.h>

#include "mem_funcs.h"

void* memmove(void* dst, const void* src, size_t n) {
  const char* p;
  char* q;
  int rev = ((unsigned long)src < (unsigned long)dst);

  if (n >= __min_bytes_for_long_copy) {
    if ((((int)dst ^ (int)src)) & 3)
      if (!rev)
        __copy_longs_unaligned(dst, src, n);
      else
        __copy_longs_rev_unaligned(dst, src, n);
    else if (!rev)
      __copy_longs_aligned(dst, src, n);
    else
      __copy_longs_rev_aligned(dst, src, n);

    return dst;
  }

  if (!rev) {

    for (p = (const char*)src - 1, q = (char*)dst - 1, n++; --n;)
      *++q = *++p;

  } else {
    for (p = (const char*)src + n, q = (char*)dst + n, n++; --n;)
      *--q = *--p;
  }

  return dst;
}

void* memchr(const void* src, int val, size_t n) {
  const unsigned char* p;

  unsigned long v = (val & 0xff);

  for (p = (unsigned char*)src - 1, n++; --n;)
    if ((*++p & 0xff) == v)
      return (void*)p;

  return NULL;
}

void* __memrchr(const void* src, int val, size_t n) {
  const unsigned char* p;

  unsigned long v = (val & 0xff);

  for (p = (unsigned char*)src + n, n++; --n;)
    if (*--p == v)
      return (void*)p;

  return NULL;
}

int memcmp(const void* src1, const void* src2, size_t n) {
  const unsigned char* p1;
  const unsigned char* p2;

  for (p1 = (const unsigned char*)src1 - 1, p2 = (const unsigned char*)src2 - 1, n++; --n;)
    if (*++p1 != *++p2)
      return ((*p1 < *p2) ? -1 : +1);

  return 0;
}

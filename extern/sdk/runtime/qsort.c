#include <stdlib.h>

#define table_ptr(i) (((char*)table_base) + (member_size * ((i)-1)))

#define swap(dst, src, cnt)                                                                        \
  do {                                                                                             \
    char* p;                                                                                       \
    char* q;                                                                                       \
    size_t n = cnt;                                                                                \
                                                                                                   \
    unsigned long tmp;                                                                             \
                                                                                                   \
    for (p = (char*)src - 1, q = (char*)dst - 1, n++; --n;) {                                      \
      tmp = *++q;                                                                                  \
      *q = *++p;                                                                                   \
      *p = tmp;                                                                                    \
    }                                                                                              \
  } while (0)

void qsort(void* table_base, size_t num_members, size_t member_size,
           _compare_function compare_members) {
  size_t l, r, j;
  char* lp;
  char* rp;
  char* ip;
  char* jp;
  char* kp;

  if (num_members < 2)
    return;

  r = num_members;
  l = (r / 2) + 1;

  lp = table_ptr(l);
  rp = table_ptr(r);

  for (;;) {
    if (l > 1) {
      l--;
      lp -= member_size;
    } else {
      swap(lp, rp, member_size);

      if (--r == 1)
        return;

      rp -= member_size;
    }

    j = l;

    jp = table_ptr(j);

    while (j * 2 <= r) {
      j *= 2;

      ip = jp;
      jp = table_ptr(j);

      if (j < r) {
        kp = jp + member_size;

        if (compare_members(jp, kp) < 0) {
          j++;
          jp = kp;
        }
      }

      if (compare_members(ip, jp) < 0)
        swap(ip, jp, member_size);
      else
        break;
    }
  }
}

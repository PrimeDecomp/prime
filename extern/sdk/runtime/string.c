#include "string.h"

size_t strlen(const char* str) {
  size_t len = -1;
  unsigned char* p = (unsigned char*)str - 1;
  do {
    len++;
  } while (*++p);
  return len;
}

char*(strcpy)(char* dst, const char* src) {
  unsigned char *destb, *fromb;
  unsigned int w, t, align;
  unsigned int k1;
  unsigned int k2;

  fromb = (unsigned char*)src;
  destb = (unsigned char*)dst;

  if ((align = ((int)fromb & 3)) != ((int)destb & 3)) {
    goto bytecopy;
  }

  if (align) {
    if ((*destb = *fromb) == 0) {
      return dst;
    }

    for (align = 3 - align; align; align--) {
      if ((*(++destb) = *(++fromb)) == 0) {
        return dst;
      }
    }
    ++destb;
    ++fromb;
  }

  k1 = 0x80808080;
  k2 = 0xfefefeff;

  w = *((int*)(fromb));
  t = w + k2;
  t &= k1;
  if (t) {
    goto bytecopy;
  }

  --((int*)(destb));

  do {
    *(++((int*)(destb))) = w;
    w = *(++((int*)(fromb)));

    t = w + k2;
    t &= k1;
    if (t)
      goto adjust;
  } while (1);

adjust:
  ++((int*)(destb));

bytecopy:
  if ((*destb = *fromb) == 0)
    return (dst);
  do {
    if ((*(++destb) = *(++fromb)) == 0)
      return dst;
  } while (1);

  return dst;
}

char* strncpy(char* dst, const char* src, size_t n) {
  const unsigned char* p = (const unsigned char*)src - 1;
  unsigned char* q = (unsigned char*)dst - 1;
  unsigned char zero = 0;

  n++;

  while (--n)
    if (!(*++q = *++p)) {
      while (--n)
        *++q = 0;
      break;
    }

  return dst;
}

int strcmp(const char* str1, const char* str2) {
  unsigned char* left = (unsigned char*)str1;
  unsigned char* right = (unsigned char*)str2;
  unsigned int k1, k2, align, l1, r1, x;

  l1 = *left;
  r1 = *right;
  if (l1 - r1) {
    return l1 - r1;
  }

  if ((align = ((int)left & 3)) != ((int)right & 3)) {
    goto bytecopy;
  }
  if (align) {
    if (l1 == 0) {
      return 0;
    }
    for (align = 3 - align; align; align--) {
      l1 = *(++left);
      r1 = *(++right);
      if (l1 - r1) {
        return l1 - r1;
      }
      if (l1 == 0) {
        return 0;
      }
    }
    left++;
    right++;
  }

  k1 = 0x80808080;
  k2 = 0xfefefeff;

  l1 = *(int*)left;
  r1 = *(int*)right;
  x = l1 + k2;
  if (x & k1) {
    goto adjust;
  }
  while (l1 == r1) {
    l1 = *(++((int*)(left)));
    r1 = *(++((int*)(right)));
    x = l1 + k2;
    if (x & k1) {
      goto adjust;
    }
  }

  if (l1 > r1) {
    return 1;
  }

  return -1;

adjust:
  l1 = *left;
  r1 = *right;
  if (l1 - r1) {
    return l1 - r1;
  }

bytecopy:
  if (l1 == 0) {
    return 0;
  }

  do {
    l1 = *(++left);
    r1 = *(++right);
    if (l1 - r1) {
      return l1 - r1;
    }
    if (l1 == 0) {
      return 0;
    }
  } while (1);
}

int strncmp(const char* str1, const char* str2, size_t n) {
  const unsigned char* p1 = (unsigned char*)str1 - 1;
  const unsigned char* p2 = (unsigned char*)str2 - 1;
  unsigned long c1, c2;

  n++;

  while (--n) {
    if ((c1 = *++p1) != (c2 = *++p2)) {
      return (c1 - c2);
    } else if (!c1) {
      break;
    }
  }

  return 0;
}

char* strchr(const char* str, int chr) {
  const unsigned char* p = (unsigned char*)str - 1;
  unsigned long c = (chr & 0xff);
  unsigned long ch;

  while (ch = *++p) {
    if (ch == c)
      return ((char*)p);
  }

  return (c ? 0 : (char*)p);
}

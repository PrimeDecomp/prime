#ifndef _LIMITS_H_
#define _LIMITS_H_

#define SCHAR_MAX 0x7f
#define UCHAR_MAX 0xffU

#if defined(__MWERKS__) && __option(unsigned_char)
#define CHAR_MIN 0U
#define CHAR_MAX UCHAR_MAX
#else
#define CHAR_MIN SCHAR_MIN
#define CHAR_MAX SCHAR_MAX
#endif

#define SHRT_MAX 0x7fff
#define USHRT_MAX 0xffffU

#define INT_MAX 0x7fffffff
#define UINT_MAX 0xffffffffU

#define LONG_MAX 0x7fffffffL
#define ULONG_MAX 0xffffffffUL

#endif

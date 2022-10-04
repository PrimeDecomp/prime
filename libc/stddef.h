#ifndef _STDDEF_H_
#define _STDDEF_H_

#ifdef __cplusplus
extern "C" {
#endif

#define offsetof(type, member) ((size_t) & (((type*)0)->member))

typedef __typeof__(sizeof(0)) size_t;
typedef __typeof__((char*)0 - (char*)0) ptrdiff_t;

#ifndef NULL
#define NULL 0L
#endif

#ifdef __cplusplus
}
#endif

#endif

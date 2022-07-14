#ifndef __TYPES_H__
#define __TYPES_H__

#ifdef __cplusplus
extern "C" {
#endif

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;

typedef char s8;
typedef short s16;
typedef int s32;
typedef long long s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;

typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef volatile float vf32;
typedef volatile double vf64;

typedef s32 size_t;
typedef u32 uintptr_t;

typedef s16  __OSInterrupt;
typedef s64 OSTime;

// Pointer to unknown, to be determined at a later date.
typedef void* unkptr;

#ifndef NULL
#define NULL 0
#endif
#ifndef nullptr
#define nullptr 0
#endif
#ifndef override
#define override
#endif

#ifndef BOOL
#ifdef __cplusplus
#define BOOL bool
#define TRUE true
#define FALSE false
#else
#define BOOL u8
#define TRUE 1
#define FALSE 0
#endif
#endif

// where should these go?
void srand(int);
int rand();

#ifdef __cplusplus
}
#endif

#endif

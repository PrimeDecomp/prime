#ifndef _TYPES_H
#define _TYPES_H

//#include "BuildSettings.h"

// r2 is  801DC960
// r13 is 801DB420

typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long size_t;
typedef unsigned long long u64;

typedef unsigned int uint;

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
typedef volatile f32 vf32;
typedef volatile f64 vf64;

typedef int BOOL;

typedef unsigned int uintptr_t; // Manually added

// Pointer to unknown, to be determined at a later date.
typedef void* unkptr;

typedef u32 unknown;

#ifndef TRUE
#define TRUE 1
#endif // ifndef TRUE

#ifndef FALSE
#define FALSE 0
#endif // ifndef FALSE

#ifndef NULL
#define NULL ((void*)0)
#endif // ifndef NULL

#ifndef nullptr
#define nullptr 0
#endif // ifndef nullptr

// For functions that return 0 on a success and -1 on failure
#ifndef EXIT_SUCCESS
#define EXIT_SUCCESS 0
#define EXIT_FAILURE -1
#endif // ifndef EXIT_SUCCESS

#define ASSERT_HANG(cond) \
	if (!(cond)) {        \
		while (true) { }  \
	}

#endif

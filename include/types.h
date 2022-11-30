#ifndef _TYPES
#define _TYPES

#ifdef __cplusplus
#include "static_assert.hpp"

extern "C" {
#endif

#include <dolphin/types.h>

// Dolphin u32 is unsigned long
typedef unsigned int uint;
typedef unsigned short ushort;
typedef unsigned char uchar;

// Pointer to unknown, to be determined at a later date.
typedef void* unkptr;

#define SBig(x) x

#define ARRAY_SIZE(arr) static_cast< int >(sizeof(arr) / sizeof(arr[0]))

#ifdef __cplusplus
}
#endif

#endif // _TYPES

#ifndef _TYPES
#define _TYPES

#ifdef __cplusplus
#include "static_assert.hpp"

extern "C" {
#endif

#include <dolphin/types.h>

// Dolphin u32 is unsigned long
typedef unsigned int uint;
typedef unsigned char uchar;

// Pointer to unknown, to be determined at a later date.
typedef void* unkptr;

#define SBig(x) x

#ifdef __cplusplus
}
#endif

#endif // _TYPES

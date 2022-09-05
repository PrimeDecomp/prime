#ifndef __TYPES_H__
#define __TYPES_H__

#ifdef __cplusplus
#include "static_assert.hpp"

extern "C" {
#endif

#include <dolphin/types.h>

// Pointer to unknown, to be determined at a later date.
typedef void* unkptr;

#define SBig(x) x

#ifdef __cplusplus
}
#endif

#endif

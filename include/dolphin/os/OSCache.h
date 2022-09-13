#ifndef _DOLPHIN_OSCACHE
#define _DOLPHIN_OSCACHE

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

void DCFlushRange(void* addr, u32 nBytes);

void LCEnable();

#ifdef __cplusplus
}
#endif

#endif

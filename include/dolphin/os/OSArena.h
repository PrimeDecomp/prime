#ifndef _DOLPHIN_OSARENA
#define _DOLPHIN_OSARENA

#include <dolphin/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void* OSGetArenaHi(void);
void* OSGetArenaLo(void);
void OSSetArenaHi(void* addr);
void OSSetArenaLo(void* addr);
void* OSAllocFromArenaLo(u32 size, u32 align);
void* OSAllocFromArenaLo(u32 size, u32 align);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSARENA

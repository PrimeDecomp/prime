#ifndef _DOLPHIN_AR
#define _DOLPHIN_AR

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

u32 ARInit(u32* stack_index_addr, u32 num_entries);
u32 ARAlloc(u32 length);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_AR

#ifndef _MUSYX_DSP_IMPORT
#define _MUSYX_DSP_IMPORT

#include "musyx/platform.h"
#if MUSY_TARGET == MUSY_TARGET_DOLPHIN
#include "musyx/musyx.h"

#ifdef __cplusplus
extern "C" {
#endif

extern char dspSlave[];
extern u16 dspSlaveLength;

#ifdef __cplusplus
}
#endif

#endif

#endif // _MUSYX_DSP_IMPORT

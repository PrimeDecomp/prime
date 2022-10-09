#ifndef _DOLPHIN_OSMUTEX
#define _DOLPHIN_OSMUTEX

#include "types.h"

#include "dolphin/os/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif

struct OSMutex {
  OSThreadQueue queue;
  OSThread* thread; // the current owner
  s32 count;        // lock count
  OSMutexLink link; // for OSThread.queueMutex
};

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSMUTEX

#ifndef _OSMUTEX_H_
#define _OSMUTEX_H_

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

#endif

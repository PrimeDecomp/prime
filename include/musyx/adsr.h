#ifndef ADSR_H
#define ADSR_H

#include "musyx/musyx.h"
typedef struct ADSR_INFO {
  // total size: 0x14
  union ai_data {
    struct {
      // total size: 0x14
      s32 atime;  // offset 0x0, size 0x4
      s32 dtime;  // offset 0x4, size 0x4
      u16 slevel; // offset 0x8, size 0x2
      u16 rtime;  // offset 0xA, size 0x2
      s32 ascale; // offset 0xC, size 0x4
      s32 dscale; // offset 0x10, size 0x4
    } dls;
    struct {
      // total size: 0x8
      u16 atime;  // offset 0x0, size 0x2
      u16 dtime;  // offset 0x2, size 0x2
      u16 slevel; // offset 0x4, size 0x2
      u16 rtime;  // offset 0x6, size 0x2
    } linear;
  } data; // offset 0x0, size 0x14
} ADSR_INFO;

typedef struct ADSR_VARS {
  u8 mode;
  u8 state;
  u32 cnt;
  s32 currentVolume;
  s32 currentIndex;
  s32 currentDelta;

  union data {
    struct _dls {
      u32 aTime;
      u32 dTime;
      u16 sLevel;
      u32 rTime;
      u16 cutOff;
      u8 aMode;
    } dls;

    struct _linear {
      u32 aTime;
      u32 dTime;
      u16 sLevel;
      u32 rTime;
    } linear;
  } data;
} ADSR_VARS;

#ifdef __cplusplus
extern "C" {
#endif
u32 adsrHandleLowPrecision(ADSR_VARS* adsr, u16* adsr_start, u16* adsr_delta);
bool adsrRelease(ADSR_VARS* adsr);
u32 adsrConvertTimeCents(s32 tc);
#ifdef __cplusplus
}
#endif

#endif // ADSR_H

#ifndef _MUSYX_STREAM
#define _MUSYX_STREAM

#include "musyx/musyx.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef s32 (*SND_STREAM_UPDATE_CALLBACK)(void* buffer1, u32 len1, void* buffer2, u32 len2,
                                          u32 user);
typedef struct SNDADPCMinfo {
  // total size: 0x28
  u16 numCoef;       // offset 0x0, size 0x2
  u8 initialPS;      // offset 0x2, size 0x1
  u8 loopPS;         // offset 0x3, size 0x1
  s16 loopY0;        // offset 0x4, size 0x2
  s16 loopY1;        // offset 0x6, size 0x2
  s16 coefTab[8][2]; // offset 0x8, size 0x20
} SNDADPCMinfo;

typedef struct STREAM_INFO {
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
  u32 nextStreamHandle;
#endif
  u32 stid;
  u32 flags;
  u8 state;
  u8 type;
  /* These were moved to near the start of the structure in later versions */
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
  u8 hwStreamHandle;
  u8 lastPSFromBuffer;
#endif
  SND_STREAM_UPDATE_CALLBACK updateFunction;
  s16* buffer;
  u32 size;
  u32 bytes;
  u32 last;
  SNDADPCMinfo adpcmInfo;
  volatile SND_VOICEID voice;
  u32 user;
  u32 frq;
  u8 prio;
  u8 vol;
  u8 pan;
  u8 span;
  u8 auxa;
  u8 auxb;

#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
  u8 orgPan;
  u8 orgSPan;
#endif

  u8 studio;
  /* These were moved to near the start of the structure in later versions */
#if MUSY_VERSION <= MUSY_VERSION_CHECK(1, 5, 3)
  u8 hwStreamHandle;
  u32 nextStreamHandle;
#endif
} STREAM_INFO;

#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
void streamOutputModeChanged();
#endif

void streamInit(); /* extern */
void streamKill(SND_VOICEID voice);
void streamCorrectLoops();

#ifdef __cplusplus
}
#endif

#endif
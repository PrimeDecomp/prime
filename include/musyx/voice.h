#ifndef _MUSYX_VOICE_H_
#define _MUSYX_VOICE_H_

#include "musyx/synth.h"
#include "musyx/version.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _PBMIX {
  // total size: 0x24
  u16 vL;          // offset 0x0, size 0x2
  u16 vDeltaL;     // offset 0x2, size 0x2
  u16 vR;          // offset 0x4, size 0x2
  u16 vDeltaR;     // offset 0x6, size 0x2
  u16 vAuxAL;      // offset 0x8, size 0x2
  u16 vDeltaAuxAL; // offset 0xA, size 0x2
  u16 vAuxAR;      // offset 0xC, size 0x2
  u16 vDeltaAuxAR; // offset 0xE, size 0x2
  u16 vAuxBL;      // offset 0x10, size 0x2
  u16 vDeltaAuxBL; // offset 0x12, size 0x2
  u16 vAuxBR;      // offset 0x14, size 0x2
  u16 vDeltaAuxBR; // offset 0x16, size 0x2
  u16 vAuxBS;      // offset 0x18, size 0x2
  u16 vDeltaAuxBS; // offset 0x1A, size 0x2
  u16 vS;          // offset 0x1C, size 0x2
  u16 vDeltaS;     // offset 0x1E, size 0x2
  u16 vAuxAS;      // offset 0x20, size 0x2
  u16 vDeltaAuxAS; // offset 0x22, size 0x2
} _PBMIX;

typedef struct _PBITD {
  // total size: 0xE
  u16 flag;         // offset 0x0, size 0x2
  u16 bufferHi;     // offset 0x2, size 0x2
  u16 bufferLo;     // offset 0x4, size 0x2
  u16 shiftL;       // offset 0x6, size 0x2
  u16 shiftR;       // offset 0x8, size 0x2
  u16 targetShiftL; // offset 0xA, size 0x2
  u16 targetShiftR; // offset 0xC, size 0x2
} _PBITD;

typedef struct _PBUPDATE {
  // total size: 0xE
  u16 updNum[5]; // offset 0x0, size 0xA
  u16 dataHi;    // offset 0xA, size 0x2
  u16 dataLo;    // offset 0xC, size 0x2
} _PBUPDATE;

typedef struct _PBDPOP {
  // total size: 0x12
  u16 aL;     // offset 0x0, size 0x2
  u16 aAuxAL; // offset 0x2, size 0x2
  u16 aAuxBL; // offset 0x4, size 0x2
  u16 aR;     // offset 0x6, size 0x2
  u16 aAuxAR; // offset 0x8, size 0x2
  u16 aAuxBR; // offset 0xA, size 0x2
  u16 aS;     // offset 0xC, size 0x2
  u16 aAuxAS; // offset 0xE, size 0x2
  u16 aAuxBS; // offset 0x10, size 0x2
} _PBDPOP;

typedef struct _PBVE {
  // total size: 0x4
  u16 currentVolume; // offset 0x0, size 0x2
  u16 currentDelta;  // offset 0x2, size 0x2
} _PBVE;

typedef struct _PBFIR {
  // total size: 0x6
  u16 numCoefs; // offset 0x0, size 0x2
  u16 coefsHi;  // offset 0x2, size 0x2
  u16 coefsLo;  // offset 0x4, size 0x2
} _PBFIR;

typedef struct _PBADDR {
  // total size: 0x10
  u16 loopFlag;         // offset 0x0, size 0x2
  u16 format;           // offset 0x2, size 0x2
  u16 loopAddressHi;    // offset 0x4, size 0x2
  u16 loopAddressLo;    // offset 0x6, size 0x2
  u16 endAddressHi;     // offset 0x8, size 0x2
  u16 endAddressLo;     // offset 0xA, size 0x2
  u16 currentAddressHi; // offset 0xC, size 0x2
  u16 currentAddressLo; // offset 0xE, size 0x2
} _PBADDR;

typedef struct _PBADPCM {
  // total size: 0x28
  u16 a[8][2];    // offset 0x0, size 0x20
  u16 gain;       // offset 0x20, size 0x2
  u16 pred_scale; // offset 0x22, size 0x2
  u16 yn1;        // offset 0x24, size 0x2
  u16 yn2;        // offset 0x26, size 0x2
} _PBADPCM;

typedef struct _PBSRC {
  // total size: 0xE
  u16 ratioHi;            // offset 0x0, size 0x2
  u16 ratioLo;            // offset 0x2, size 0x2
  u16 currentAddressFrac; // offset 0x4, size 0x2
  u16 last_samples[4];    // offset 0x6, size 0x8
} _PBSRC;

typedef struct _PBADPCMLOOP {
  // total size: 0x6
  u16 loop_pred_scale; // offset 0x0, size 0x2
  u16 loop_yn1;        // offset 0x2, size 0x2
  u16 loop_yn2;        // offset 0x4, size 0x2
} _PBADPCMLOOP;

typedef struct _PB {
  // total size: 0xBC
  u16 nextHi;             // offset 0x0, size 0x2
  u16 nextLo;             // offset 0x2, size 0x2
  u16 currHi;             // offset 0x4, size 0x2
  u16 currLo;             // offset 0x6, size 0x2
  u16 srcSelect;          // offset 0x8, size 0x2
  u16 coefSelect;         // offset 0xA, size 0x2
  u16 mixerCtrl;          // offset 0xC, size 0x2
  u16 state;              // offset 0xE, size 0x2
  u16 loopType;           // offset 0x10, size 0x2
  _PBMIX mix;             // offset 0x12, size 0x24
  _PBITD itd;             // offset 0x36, size 0xE
  _PBUPDATE update;       // offset 0x44, size 0xE
  _PBDPOP dpop;           // offset 0x52, size 0x12
  _PBVE ve;               // offset 0x64, size 0x4
  _PBFIR fir;             // offset 0x68, size 0x6
  _PBADDR addr;           // offset 0x6E, size 0x10
  _PBADPCM adpcm;         // offset 0x7E, size 0x28
  _PBSRC src;             // offset 0xA6, size 0xE
  _PBADPCMLOOP adpcmLoop; // offset 0xB4, size 0x6
  u16 streamLoopCnt;      // offset 0xBA, size 0x2
} _PB;

typedef struct VSampleInfo {
  // total size: 0xC
  void* loopBufferAddr; // offset 0x0, size 0x4
  u32 loopBufferLength; // offset 0x4, size 0x4
  u8 inLoopBuffer;      // offset 0x8, size 0x1
} VSampleInfo;

typedef struct VS_BUFFER {
  // total size: 0x24
  u8 state;                    // offset 0x0, size 0x1
  u8 hwId;                     // offset 0x1, size 0x1
  u8 smpType;                  // offset 0x2, size 0x1
  u8 voice;                    // offset 0x3, size 0x1
  u32 last;                    // offset 0x4, size 0x4
  u32 finalGoodSamples;        // offset 0x8, size 0x4
  u32 finalLast;               // offset 0xC, size 0x4
  SND_VIRTUALSAMPLE_INFO info; // offset 0x10, size 0x14
} VS_BUFFER;

typedef struct _VS {
  // total size: 0x950
  u8 numBuffers;              // offset 0x0, size 0x1
  u32 bufferLength;           // offset 0x4, size 0x4
  VS_BUFFER streamBuffer[64]; // offset 0x8, size 0x900
  u8 voices[64];              // offset 0x908, size 0x40
  u16 nextInstID;             // offset 0x948, size 0x2
  u32 (*callback)(u8,
                  const SND_VIRTUALSAMPLE_INFO*); // offset 0x94C, size 0x4
} VS;

extern VS vs;

typedef struct _SPB {
  // total size: 0x36
  u16 dpopLHi;     // offset 0x0, size 0x2
  u16 dpopLLo;     // offset 0x2, size 0x2
  u16 dpopLDelta;  // offset 0x4, size 0x2
  u16 dpopRHi;     // offset 0x6, size 0x2
  u16 dpopRLo;     // offset 0x8, size 0x2
  u16 dpopRDelta;  // offset 0xA, size 0x2
  u16 dpopSHi;     // offset 0xC, size 0x2
  u16 dpopSLo;     // offset 0xE, size 0x2
  u16 dpopSDelta;  // offset 0x10, size 0x2
  u16 dpopALHi;    // offset 0x12, size 0x2
  u16 dpopALLo;    // offset 0x14, size 0x2
  u16 dpopALDelta; // offset 0x16, size 0x2
  u16 dpopARHi;    // offset 0x18, size 0x2
  u16 dpopARLo;    // offset 0x1A, size 0x2
  u16 dpopARDelta; // offset 0x1C, size 0x2
  u16 dpopASHi;    // offset 0x1E, size 0x2
  u16 dpopASLo;    // offset 0x20, size 0x2
  u16 dpopASDelta; // offset 0x22, size 0x2
  u16 dpopBLHi;    // offset 0x24, size 0x2
  u16 dpopBLLo;    // offset 0x26, size 0x2
  u16 dpopBLDelta; // offset 0x28, size 0x2
  u16 dpopBRHi;    // offset 0x2A, size 0x2
  u16 dpopBRLo;    // offset 0x2C, size 0x2
  u16 dpopBRDelta; // offset 0x2E, size 0x2
  u16 dpopBSHi;    // offset 0x30, size 0x2
  u16 dpopBSLo;    // offset 0x32, size 0x2
  u16 dpopBSDelta; // offset 0x34, size 0x2
} _SPB;

extern u16 voicePrioSortRootListRoot;
extern u8 voiceMusicRunning;
extern u8 voiceFxRunning;
extern u8 voiceListInsert;
extern u8 voiceListRoot;

void vsInit(); /* extern */
u32 vsSampleStartNotify(u8 voice);
void vsSampleEndNotify(u32 pubID);
void vsSampleUpdates();

void voiceSetPriority(SYNTH_VOICE* svoice, u8 prio);
u32 voiceIsLastStarted(SYNTH_VOICE* svoice);
void voiceSetLastStarted(SYNTH_VOICE* svoice);
void voiceResetLastStarted(SYNTH_VOICE* svoice);
void voiceInitLastStarted();
s32 voiceKillSound(u32 voiceid);
void voiceKill(u32 vi);
void voiceSetPriority(SYNTH_VOICE* svoice, u8 prio);
u32 voiceIsLastStarted(SYNTH_VOICE* svoice);
void voiceSetLastStarted(SYNTH_VOICE* svoice);
void voiceResetLastStarted(SYNTH_VOICE* svoice);
void voiceInitLastStarted();
s32 voiceKillSound(u32 voiceid);
void voiceKill(u32 vi);
u32 voiceBlock(u8 prio);
u32 voiceAllocate(u8 priority, u8 maxVoices, u16 allocId, u8 fxFlag);
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
int voiceAllocatePeek(u8 priority, u8 maxVoices, u32 allocId, u8 fxFlag, u32* currentAllocId);
#endif

void voiceFree(SYNTH_VOICE* svoice);
void voiceUnblock(u32 voice);
void voiceRemovePriority(SYNTH_VOICE* svoice);

void vidInit();
u32 vidGetInternalId(SND_VOICEID id);
void vidRemoveVoiceReferences(SYNTH_VOICE* svoice);
u32 vidMakeNew(SYNTH_VOICE* svoice, u32 isMaster);
u32 vidMakeRoot(SYNTH_VOICE* svoice);

#ifdef __cplusplus
}
#endif
#endif
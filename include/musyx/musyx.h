#ifndef MUSYX_H
#define MUSYX_H

#include "types.h"

#ifndef bool8
typedef unsigned char bool8;
#endif

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _SynthInfo {
  u8 unk[0x210];
  u8 voices;
  u8 music;
  u8 sfx;
  u8 studios;
} SynthInfo;

typedef struct _SND_HOOKS {
  void* (*malloc)(u32 len);
  void (*free)(void* addr);
} SND_HOOKS;

#define SND_AUX_NUMPARAMETERS 4

#define SND_AUX_REASON_BUFFERUPDATE 0
#define SND_AUX_REASON_PARAMETERUPDATE 1

typedef struct SND_AUX_INFO {
  union SND_AUX_DATA {
    struct SND_AUX_BUFFERUPDATE {
      s32* left;
      s32* right;
      s32* surround;
    } bufferUpdate;
    struct SND_AUX_PARAMETERUPDATE {
      u16 para[SND_AUX_NUMPARAMETERS];
    } parameterUpdate;
  } data;
} SND_AUX_INFO;

typedef struct _SND_REVHI_DELAYLINE {
  s32 inPoint;
  s32 outPoint;
  s32 length;
  f32* inputs;
  f32 lastOutput;
} _SND_REVHI_DELAYLINE;

typedef struct _SND_REVHI_WORK {
  _SND_REVHI_DELAYLINE AP[9];
  _SND_REVHI_DELAYLINE C[9];
  f32 allPassCoeff;
  f32 combCoef[9];
  f32 lpLastout[3];
  f32 level;
  f32 damping;
  s32 preDelayTime;
  f32 crosstalk;
  f32* preDelayLine[3];
  f32* preDelayPtr[3];
} _SND_REVHI_WORK;

typedef struct SND_AUX_REVERBHI {
  _SND_REVHI_WORK rv;
  bool8 tempDisableFX;

  f32 coloration;
  f32 mix;
  f32 time;
  f32 damping;
  f32 preDelay;
  f32 crosstalk;
} SND_AUX_REVERBHI;

void sndAuxCallbackReverbHI(u8 reason, SND_AUX_INFO* info, void* user);
bool8 sndAuxCallbackPrepareReverbHI(SND_AUX_REVERBHI *rev);
bool8 sndAuxCallbackShutdownReverbHI(SND_AUX_REVERBHI* rev);

typedef struct SND_AUX_DELAY {
  u32 currentSize[3];
  u32 currentPos[3];
  u32 currentFeedback[3];
  u32 currentOutput[3];

  s32* left;
  s32* right;
  s32* sur;

  u32 delay[3];    // Delay buffer length in ms per channel
  u32 feedback[3]; // Feedback volume in % per channel
  u32 output[3];   // Output volume in % per channel
} SND_AUX_DELAY;


void sndAuxCallbackDelay(u8 reason,SND_AUX_INFO *info, void *user);
bool8 sndAuxCallbackUpdateSettingsDelay(SND_AUX_DELAY *delay);
bool8 sndAuxCallbackPrepareDelay(SND_AUX_DELAY *rev);
bool8 sndAuxCallbackShutdownDelay(SND_AUX_DELAY* rev);

#ifdef __cplusplus
}
#endif
#endif

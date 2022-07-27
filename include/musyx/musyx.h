#ifndef MUSYX_H
#define MUSYX_H

#include "types.h"

#ifndef bool8
typedef char bool8;
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

#ifdef __cplusplus
}
#endif
#endif

#include "musyx/musyx_priv.h"

#ifdef __cplusplus
extern "C" {
#endif

/* TODO: Move these to a more approprate location */
extern s8 sndActive;
extern s8 synthIdleWaitActive;
extern SynthInfo synthInfo;

inline bool DoInit(u32 rate, u32 aramSize, u8 voices, u32 flags) {
  dataInitStack();
  dataInit(0, aramSize);
  seqInit();
  synthIdleWaitActive = 0;
  synthInit(rate, voices);
  streamInit();
  vsInit();
  s3dInit(flags);
  sndActive = 1;

  return FALSE;
}

bool sndInit(u8 voices, u8 music, u8 sfx, u8 studios, s32 flags, s32 aramSize) {
  s32 rate;
  s32 ret;

  sndActive = 0;
  if (64 >= voices) {
    synthInfo.voices = voices;
  } else {
    synthInfo.voices = 64;
  }
  if (8 >= studios) {
    synthInfo.studios = studios;
  } else {
    synthInfo.studios = 8;
  }
  rate = 32000;
  synthInfo.music = music;
  synthInfo.sfx = sfx;
  ret = hwInit(&rate, synthInfo.voices, synthInfo.studios, flags);
  if (ret == 0) {
    ret = DoInit(32000, aramSize, synthInfo.voices, flags);
  }
  return ret;
}

void sndQuit() {
  hwExit();
  dataExit();
  s3dExit();
  synthExit();
  sndActive = 0;
}

#ifdef __cplusplus
}
#endif

#include "musyx/musyx_priv.h"
//#define _DEBUG


s32 DoInit(u32 rate, u32 aramSize, u8 voices, u32 flags) {
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

s32 sndInit(u8 voices, u8 music, u8 sfx, u8 studios, u32 flags, u32 aramSize) {
  u32 rate;
  s32 ret;

  sndActive = 0;
  if (voices <= 64) {
    synthInfo.voiceNum = voices;
  } else {
    synthInfo.voiceNum = 64;
  }
  if (studios <= 8) {
    synthInfo.studioNum = studios;
  } else {
    synthInfo.studioNum = 8;
  }
  rate = 32000;
  synthInfo.maxMusic = music;
  synthInfo.maxSFX = sfx;
  ret = hwInit(&rate, synthInfo.voiceNum, synthInfo.studioNum, flags);
  if (ret == 0) {
    ret = DoInit(32000, aramSize, synthInfo.voiceNum, flags);
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

void sndSetMaxVoices(u8 music, u8 sfx) {
  MUSY_ASSERT_MSG(music > synthInfo.voiceNum, "Music voices are above maximum voice number.");
  MUSY_ASSERT_MSG(sfx > synthInfo.voiceNum, "Sfx voices are above maximum voice number.");
  synthInfo.maxMusic = music;
  synthInfo.maxSFX = sfx;
}

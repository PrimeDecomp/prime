
/*















*/

#include "musyx/musyx_priv.h"
// #define _DEBUG

/*




*/
static s32 DoInit(u32 rate, u32 aramSize, u32 voices, u32 flags) {
  bool ret;

  MUSY_DEBUG("\nMusyX software initialization...\nBuild Date: %s %s\n\n", __DATE__, __TIME__);
  ret = FALSE;

  dataInitStack();

  dataInit(0, aramSize);

  seqInit();

  synthIdleWaitActive = 0;

  synthInit(rate, voices);

  streamInit();

  vsInit();

  s3dInit(flags);

  sndActive = 1;

  MUSY_DEBUG("MusyX logic is initialized.\n\n");

  return ret;
}

/*










*/
s32 sndInit(u8 voices, u8 music, u8 sfx, u8 studios, u32 flags, u32 aramSize) {
  s32 ret; // r31
  u32 frq; // r1+0x14

  MUSY_DEBUG("Entering sndInit()\n\n");
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

  synthInfo.maxMusic = music;
  synthInfo.maxSFX = sfx;
  frq = 32000;
  if ((ret = hwInit(&frq, synthInfo.voiceNum, synthInfo.studioNum, flags)) == 0) {
    ret = DoInit(32000, aramSize, synthInfo.voiceNum, flags);
  }

  MUSY_DEBUG("Leaving sndInit().\n\n");
  return ret;
}

/* */
void sndQuit() {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  hwExit();
  /*


  */
  dataExit();
  /*
   */
  s3dExit();
  /* */
  synthExit();
  /* */
  sndActive = 0;
}

/*


*/
void sndSetMaxVoices(u8 music, u8 sfx) {
  MUSY_ASSERT_MSG(music <= synthInfo.voiceNum, "Music voices are above maximum voice number.");
  MUSY_ASSERT_MSG(sfx <= synthInfo.voiceNum, "Sfx voices are above maximum voice number.");

  synthInfo.maxMusic = music;
  synthInfo.maxSFX = sfx;
}

/*


*/
bool sndIsInstalled() { return sndActive; }

/*




*/
SND_PLAYBACKINFO* sndGetPlayBackInfo() {
  if (sndActive) {
    return &synthInfo.pbInfo;
  }

  return NULL;
}

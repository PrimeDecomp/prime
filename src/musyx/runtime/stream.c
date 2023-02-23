#include "musyx/musyx_priv.h"

SND_STREAM_INFO streamInfo[64];

u32 nextPublicID = 0;
u8 streamCallDelay = 0;
u8 streamCallCnt = 0;

void streamInit() {
  s32 i;
  streamCallCnt = 0;
  streamCallDelay = 3;

  for (i = 0; i < synthInfo.voices; ++i) {
    streamInfo[i].xc_ = 0;
  }

  nextPublicID = 0;
}

void SetHWMix(SND_STREAM_INFO* info) {
  // hwSetVolume()
}

void streamHandle() {}

void streamCorrectLoops() {}

void streamKill(SND_STREAMID streamId) {
  SND_STREAM_INFO* stream = &streamInfo[streamId];

  switch (stream->xc_) {
  case 1:
  case 2:
    if (stream->xc_ == 2) {
      voiceUnblock(stream->voiceId);
    }
    stream->xc_ = 3;
    stream->updateCb(NULL, 0, NULL, 0, stream->user);
    break;
  }
}

s32 GetPrivateIndex(s32 something) {
  s32 i;
  for (i = 0; i < 64; ++i) {
    if (streamInfo[i].xc_ != 0 && something == streamInfo[i].x4_) {
      return i;
    }
  }


  return -1;
}

void sndStreamARAMUpdate() {
  
}

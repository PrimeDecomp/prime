#include "musyx/seq.h"

void sndSeqStop(s32 unk) {
  hwDisableIrq();
  seqStop(unk);
  hwEnableIrq();
}

void sndSeqSpeed(s32 unk1, s32 unk2) {
  hwDisableIrq();
  seqSpeed(unk1, unk2);
  hwEnableIrq();
}

void sndSeqContinue(s32 unk) {
  hwDisableIrq();
  seqContinue(unk);
  hwEnableIrq();
}

void sndSeqMute(s32 unk1, s32 unk2, s32 unk3) {
  hwDisableIrq();
  seqMute(unk1, unk2, unk3);
  hwEnableIrq();
}

void sndSeqVolume(s32 unk1, s32 unk2, s32 unk3, s32 unk4) {
  hwDisableIrq();
  seqVolume(unk1, unk2, unk3, unk4);
  hwEnableIrq();
}

u16 seqGetMIDIPriority(s32 arg0, s32 arg1) { return seqMIDIPriority[(u8)arg0][(u8)arg1]; }

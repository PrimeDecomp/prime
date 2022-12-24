#include "musyx/assert.h"
#include "musyx/musyx_priv.h"
#define SYNTH_FX_MIDISET 0xFF

u32 inpGlobalMIDIDirtyFlags[8][16];
s32 midi_ctrl;

inline bool GetGlobalFlagSet(u8 chan, u8 midiSet, s32 flag) {
  return (flag & inpGlobalMIDIDirtyFlags[midiSet][chan]) != 0;
}

void inpResetGlobalMIDIDirtyFlags() {
  u32 i, j;
  for (i = 0; i < 8; ++i) {
    for (j = 0; j < 16; ++j) {
      inpGlobalMIDIDirtyFlags[i][j] = 0xFF;
    }
  }
}

bool inpResetGlobalMIDIDirtyFlag(u8 chan, u8 midiSet, s32 flag) {
  // ASSERT(midiSet!=SYNTH_FX_MIDISET);
  bool ret = GetGlobalFlagSet(chan, midiSet, flag);
  if (ret) {
    inpGlobalMIDIDirtyFlags[midiSet][chan] &= ~flag;
  }
  return ret;
}

void inpSetGlobalMIDIDirtyFlag(u8 chan, u8 midiSet, s32 flag) {
  // ASSERT(midiSet!=SYNTH_FX_MIDISET);
  inpGlobalMIDIDirtyFlags[midiSet][chan] |= flag;
}

void inpSetRPNHi(u8 a, u8 b, u8 c) {

}

void inpSetRPNLo(u8 a, u8 b, u8 c) {

}

void inpSetRPNDec(u8 a, u8 b) {
  
}


void inpSetRPNInc(u8 a, u8 b) {
  
}

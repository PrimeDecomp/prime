
#include "musyx/musyx_priv.h"

#define SYNTH_FX_MIDISET 0xFF

typedef struct CHANNEL_DEFAULTS {
  unsigned char pbRange;
} CHANNEL_DEFAULTS;

static u8 fx_lastNote[64];
static u8 midi_lastNote[8][16];
static CHANNEL_DEFAULTS inpFXChannelDefaults[64];
static u8 fx_ctrl[64][134];
static CHANNEL_DEFAULTS inpChannelDefaults[8][16];
static u8 midi_ctrl[8][16][134];
static u32 inpGlobalMIDIDirtyFlags[8][16];

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
  // MUSY_ASSERT(midiSet!=SYNTH_FX_MIDISET);
  bool ret = GetGlobalFlagSet(chan, midiSet, flag);
  if (ret) {
    inpGlobalMIDIDirtyFlags[midiSet][chan] &= ~flag;
  }
  return ret;
}

void inpSetGlobalMIDIDirtyFlag(u8 chan, u8 midiSet, s32 flag) {
  // MUSY_ASSERT(midiSet!=SYNTH_FX_MIDISET);
  inpGlobalMIDIDirtyFlags[midiSet][chan] |= flag;
}

void inpSetRPNHi(u8 set, u8 channel, u8 value) {
  u16 rpn; // r28
	u32 i; // r31
	u8 range; // r29
  
  if ((midi_ctrl[set][channel][100] | midi_ctrl[set][channel][101]) != 0) {
    return;
  }

  inpChannelDefaults[set][channel].pbRange = value;

  for (i = 0; i < synthInfo.voiceNum; ++i) {
    if (set != synthVoice[i].midiSet || channel != synthVoice[i].midi){
      continue;
    }
    synthVoice[i].pbUpperKeyRange = value;
    synthVoice[i].pbLowerKeyRange = value;
  }
}

void inpSetRPNLo(u8 a, u8 b, u8 c) {}

void inpSetRPNDec(u8 a, u8 b) {}

void inpSetRPNInc(u8 a, u8 b) {}

void inpSetMidiCtrl(u8 ctrl, u8 channel, u8 set, u8 value) {
	u32 i;
  if (channel == 0xFF) {
    return;
  }

  if (set != 0xFF) {
    switch(ctrl) {
      case 38:
        inpSetRPNInc(0xFF, channel);
        break;
      case 97:
        inpSetRPNInc(0xFF, channel);
        break;
      case 6:
        inpSetRPNHi(0xff, channel, value);
        break;        
    }
  } else {
  }
}

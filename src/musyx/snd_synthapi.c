#include "musyx/synth.h"

bool sndFXCtrl(SND_VOICEID vid, u8 ctrl, u8 value) {
  bool ret;

  hwDisableIrq();
  ret = synthFXSetCtrl(vid, ctrl, value);
  hwEnableIrq();
  return ret;
}

bool sndFXCtrl14(SND_VOICEID vid, u8 ctrl, u16 value) {
  bool ret;

  hwDisableIrq();
  ret = synthFXSetCtrl14(vid, ctrl, value);
  hwEnableIrq();
  return ret;
}

bool sndFXKeyOff(SND_VOICEID vid) {
  bool ret;

  hwDisableIrq();
  ret = synthSendKeyOff(vid);
  hwEnableIrq();
  return ret;
}

SND_VOICEID sndFXStartEx(SND_FXID fid, u8 vol, u8 pan, u8 studio) {
  SND_VOICEID temp_r31;

  hwDisableIrq();
  temp_r31 = synthFXStart(fid, vol, pan, studio, synthITDDefault[studio * 2 + 1]);
  hwEnableIrq();
  return temp_r31;
}

s32 sndFXCheck(SND_VOICEID arg0) {
  u32 check;
  s32 ret;
  check = vidGetInternalId(arg0);

  ret = -1;
  if (check != -1) {
    ret = arg0;
  }
  return ret;
}

void sndVolume(u8 volume, u16 time, u8 volgroup) {
  hwDisableIrq();
  synthVolume(volume, time, volgroup, 0, -1);
  hwEnableIrq();
}

void sndMasterVolume(u8 volume, u16 time, u8 music, u8 fx) {
  hwDisableIrq();
  if (music != 0) {
    synthVolume(volume, time, 0x15, 0, -1);
  }
  if (fx != 0) {
    synthVolume(volume, time, 0x16, 0, -1);
  }
  hwEnableIrq();
}

// sndOutputMode

// clang-format off
void sndSetAuxProcessingCallbacks(u8 studio, 
                                  SND_AUX_CALLBACK auxA, void* userA, u8 midiA, SND_SEQID seqIDA, 
                                  SND_AUX_CALLBACK auxB, void* userB, u8 midiB, SND_SEQID seqIDB) {
  // clang-format on

  hwDisableIrq();
  if (auxA != NULL) {
    synthAuxAMIDI[studio] = midiA;
    if (midiA != 0xFF) {
      synthAuxAMIDISet[studio] = seqGetPrivateId(seqIDA);
      synthAuxACallback[studio] = auxA;
      synthAuxAUser[studio] = userA;
    }
  } else {
    synthAuxACallback[studio] = NULL;
    synthAuxAMIDI[studio] = 0xff;
  }

  if (auxB != NULL) {
    synthAuxBMIDI[studio] = midiB;
    if (midiB != 0xFF) {
      synthAuxBMidiSet[studio] = seqGetPrivateId(seqIDB);
      synthAuxBCallback[studio] = auxB;
      synthAuxBUser[studio] = userB;
    }
  } else {
    synthAuxBCallback[studio] = NULL;
    synthAuxBMIDI[studio] = 0xff;
  }

  hwSetAUXProcessingCallbacks(studio, auxA, userA, auxB, userB);
  hwEnableIrq();
}

void synthActivateStudio(u8 studio, u32 arg1, u32 arg2) {
    hwDisableIrq();
    synthAuxACallback[studio] = NULL;
    synthAuxBCallback[studio] = NULL;
    synthAuxAMIDI[studio] = 0xFF;
    synthAuxBMIDI[studio] = 0xFF;
    synthITDDefault[studio * 2 + 1] = 0;
    synthITDDefault[studio * 2 + 0] = 0;
    hwActivateStudio(studio, arg1, arg2);
    hwEnableIrq();
}

void synthDeactivateStudio(u8 studio) {
    u32 i;
    for (i = 0; i < synthInfo.voices; ++i) {
        if (studio == synthVoice[i].studio) {
            if (synthVoice[i]._f4 != 0xFFFFFFFF) {
                voiceKillSound(synthVoice[i].voiceId->pubId);                
            } else if (hwIsActive(i)) {
                hwOff(i);
            }
        }
    }
    hwDisableIrq();
    synthAuxACallback[studio] = 0;
    synthAuxBCallback[studio] = 0;
    synthAuxAMIDI[studio] = 0xFF;
    synthAuxBMIDI[studio] = 0xFF;
    hwEnableIrq();
    hwDeactivateStudio(studio);
}

/* TODO: Figure out what `unk` is */
bool synthAddStudioInput(u8 studio, void* unk) {
    return hwAddInput(studio, unk);
}

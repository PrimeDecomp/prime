/* ---------------------------------------

















   ---------------------------------------
*/

#include "musyx/assert.h"
#include "musyx/hardware.h"
#include "musyx/macros.h"
#include "musyx/s3d.h"
#include "musyx/seq.h"
#include "musyx/stream.h"
#include "musyx/synth.h"

#include <stdarg.h>

/*









*/
bool sndFXCtrl(SND_VOICEID vid, u8 ctrl, u8 value) {
  bool ret;
  MUSY_ASSERT_MSG(sndActive != 0, "Sound system is not initialized.");
  hwDisableIrq();
  ret = synthFXSetCtrl(vid, ctrl, value);
  hwEnableIrq();
  return ret;
}

/*




*/
bool sndFXCtrl14(SND_VOICEID vid, u8 ctrl, u16 value) {
  bool ret;
  MUSY_ASSERT_MSG(sndActive != 0, "Sound system is not initialized.");
  hwDisableIrq();
  ret = synthFXSetCtrl14(vid, ctrl, value);
  hwEnableIrq();
  return ret;
}

/*




*/
bool sndFXKeyOff(SND_VOICEID vid) {
  bool ret;
  MUSY_ASSERT_MSG(sndActive != 0, "Sound system is not initialized.");
  hwDisableIrq();
  ret = synthSendKeyOff(vid);
  hwEnableIrq();
  return ret;
}

/*




*/
SND_VOICEID sndFXStartEx(SND_FXID fid, u8 vol, u8 pan, u8 studio) {
  SND_VOICEID v;
  MUSY_ASSERT_MSG(sndActive != 0, "Sound system is not initialized.");
  hwDisableIrq();
  v = synthFXStart(fid, vol, pan, studio, synthITDDefault[studio].sfx);
  hwEnableIrq();
  return v;
}

/*









*/
SND_VOICEID sndFXStartPara(SND_FXID fid, u8 vol, u8 pan, u8 studio, u8 numPara, ...) {
  u32 vid;
  u8 i;
  va_list args;
  u32 value;
  u8 ctrl;

  MUSY_ASSERT_MSG(sndActive != 0, "Sound system is not initialized.");

  hwDisableIrq();

  if ((vid = synthFXStart(fid, vol, pan, studio, synthITDDefault[studio].sfx)) != -1 &&
      numPara != 0) {

    va_start(args, numPara);

    for (i = 0; i < numPara; ++i) {

      ctrl = va_arg(args, u32);
      value = va_arg(args, u32);
      /*





      */
      if (ctrl < 0x40 || ctrl == 0x80 || ctrl == 0x84) {
        MUSY_ASSERT_MSG(value <= 0x3fff, "Hires MIDI controller value out of range.");

        synthFXSetCtrl14(vid, ctrl, (u16)value);
      } else {

        MUSY_ASSERT_MSG(value <= 0x7f, "Lores MIDI controller value out of range.");
        synthFXSetCtrl(vid, ctrl, (u16)value);
      }
    }
  }
  /*

  */
  hwEnableIrq();
  return vid;
}

/*

*/
SND_VOICEID sndFXStartParaInfo(SND_FXID fid, u8 vol, u8 pan, u8 studio,
                               SND_PARAMETER_INFO* paraInfo) {
  unsigned long vid;   // r29
  unsigned char i;     // r28
  SND_PARAMETER* pPtr; // r31

  MUSY_ASSERT_MSG(sndActive != 0, "Sound system is not initialized.");

  hwDisableIrq();

  if ((vid = synthFXStart(fid, vol, pan, studio, synthITDDefault[studio].sfx)) != 0xFFFFFFFF) {
    MUSY_ASSERT_MSG(paraInfo != NULL, "Parameter pointer must not be NULL.");
    for (pPtr = paraInfo->paraArray, i = 0; i < paraInfo->numPara; ++pPtr, ++i) {
      /*

      */
      if (pPtr->ctrl < 0x40 || pPtr->ctrl == 0x80 || pPtr->ctrl == 0x84) {
        MUSY_ASSERT_MSG(pPtr->paraData.value14 <= 0x3fff,
                        "Hires MIDI controller value out of range.");

        synthFXSetCtrl14(vid, pPtr->ctrl, pPtr->paraData.value14);
      } else {

        MUSY_ASSERT_MSG(pPtr->paraData.value7 <= 0x7f, "Lores MIDI controller value out of range.");
        synthFXSetCtrl(vid, pPtr->ctrl, pPtr->paraData.value7);
      }
    }
  }

  hwEnableIrq();
  return vid;
}

/*













*/
SND_VOICEID sndFXCheck(SND_VOICEID vid) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  return vidGetInternalId(vid) != -1 ? vid : -1;
}

/*





*/
s32 sndReadFlag(unsigned char num) {

  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  return synthGlobalVariable[num & 0xf];
}

/*




*/
s32 sndWriteFlag(u8 num, s32 value) {
  s32 old; // r30
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  num &= 0xf;

  hwDisableIrq();
  old = synthGlobalVariable[num];
  synthGlobalVariable[num] = value;
  hwEnableIrq();

  return old;
}
/*




*/
bool sndSendMessage(SND_VOICEID vid, s32 mesg) {
  bool ret; // r31
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  hwDisableIrq();
  ret = macPostMessage(vid, mesg);
  hwEnableIrq();
  return ret;
}

/*


*/
void sndSetReceiveMessageCallback(void (*callback)(u32, s32)) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  synthMessageCallback = callback;
}

/*



*/
void sndSilence() {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  hwDisableIrq();
  seqKillAllInstances();
  s3dKillAllEmitter();
  synthKillAllVoices(0);
  hwEnableIrq();
}

/*



*/
bool sndIsIdle() {
  u32 i;   // r31
  u8 flag; // r30

  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  flag = 0;

  synthIdleWaitActive = TRUE;
  if (!hwGlobalActivity()) {
    for (i = 0; i < synthInfo.voiceNum; ++i) {
      flag |= hwIsActive(i);
    }
  } else {

    flag = 1;
  }
  synthIdleWaitActive = FALSE;
  return flag == 0;
}

/*


*/
bool sndFXAssignVolGroup2FXId(SND_FXID fid, u8 vGroup) {
  FX_TAB* fx; // r30
  u32 ret;    // r29

  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  ret = 0;

  hwDisableIrq();
  //
  //
  //
  if ((fx = dataGetFX(fid)) != NULL) {
    /*


    */
    if ((u8)vGroup != 0xFE) {
      //
      //
      fx->vGroup = vGroup;
      synthSetMusicVolumeType(vGroup, 3);
    } else {
      fx->vGroup = 0x1f;
    }
    ret = 1;
  } else {

    MUSY_DEBUG("FX ID=%d could not be found in FX table.", fid);
  }

  hwEnableIrq();

  return ret;
}

/*



*/
void sndPauseVolume(u8 volume, u16 time, u8 vGroup) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  hwDisableIrq();
  synthPauseVolume(volume, time, vGroup);
  hwEnableIrq();
}

/*



*/
void sndVolume(u8 volume, u16 time, u8 volgroup) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  hwDisableIrq();
  synthVolume(volume, time, volgroup, 0, -1);
  hwEnableIrq();
}

/*


*/
void sndMasterVolume(u8 volume, u16 time, u8 music, u8 fx) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  hwDisableIrq();
  if (music != 0)
    synthVolume(volume, time, 0x15, 0, -1);

  if (fx != 0)
    synthVolume(volume, time, 0x16, 0, -1);
  hwEnableIrq();
}

/*


*/
void sndOutputMode(SND_OUTPUTMODE output) {
  u32 i;
  u32 oldFlags;
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  oldFlags = synthFlags;

  switch (output) {
  case SND_OUTPUTMODE_MONO:

    synthFlags |= 1;
    synthFlags &= ~2;
    hwDisableHRTF();

    break;
  case SND_OUTPUTMODE_STEREO:

    synthFlags &= ~1;
    synthFlags &= ~2;
    hwDisableHRTF();

    break;
  case SND_OUTPUTMODE_SURROUND:

    synthFlags &= ~1;
    synthFlags |= 2;
    hwDisableHRTF();

    break;
  default:
    MUSY_ASSERT_MSG(FALSE, "Unsupported outputmode selected.");
    break;
  }

  if (oldFlags == synthFlags) {
    return;
  }

  for (i = 0; i < synthInfo.voiceNum; ++i) {
    synthVoice[i].cFlags |= 0x0000200000000000;
  }
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
  streamOutputModeChanged();
#endif
}

/*






*/
// clang-format off
void sndSetAuxProcessingCallbacks(u8 studio, 
                                  SND_AUX_CALLBACK auxA, void* userA, u8 midiA, SND_SEQID seqIDA, 
                                  SND_AUX_CALLBACK auxB, void* userB, u8 midiB, SND_SEQID seqIDB) {
  // clang-format on
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  hwDisableIrq();
  if (auxA != NULL) {

    if ((synthAuxAMIDI[studio] = midiA) != 0xFF) {
      synthAuxAMIDISet[studio] = seqGetPrivateId(seqIDA);
      synthAuxACallback[studio] = auxA;
      synthAuxAUser[studio] = userA;
    }
  } else {
    synthAuxACallback[studio] = NULL;
    synthAuxAMIDI[studio] = 0xff;
  }

  if (auxB != NULL) {

    if ((synthAuxBMIDI[studio] = midiB) != 0xFF) {
      synthAuxBMIDISet[studio] = seqGetPrivateId(seqIDB);
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

/*

















*/
void sndUpdateAuxParameter(unsigned char studio, unsigned short* para, unsigned char auxBus) {
  struct SND_AUX_INFO info; // r1+0x14
  unsigned long i;          // r30

  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  for (i = 0; i < 4; ++i) {
    info.data.parameterUpdate.para[i] = para[i];
  }

  if (auxBus == 0) {
    MUSY_ASSERT_MSG(synthAuxACallback[studio] != NULL, "No FX is defined for AuxA.");

    synthAuxACallback[studio](1, &info, synthAuxAUser);
  } else {

    MUSY_ASSERT_MSG(synthAuxBCallback[studio] != NULL, "No FX is defined for AuxB.");
    synthAuxBCallback[studio](1, &info, synthAuxBUser);
  }
}

/*


*/
void sndSetITDDefault(u8 studio, bool musicITD, bool sfxITD) {
  synthITDDefault[studio].music = musicITD;
  synthITDDefault[studio].sfx = sfxITD;
}

/*


*/
void synthActivateStudio(u8 studio, u32 isMaster, SND_STUDIO_TYPE type) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  hwDisableIrq();
  synthAuxACallback[studio] = NULL;
  synthAuxBCallback[studio] = NULL;
  synthAuxAMIDI[studio] = 0xFF;
  synthAuxBMIDI[studio] = 0xFF;
  synthITDDefault[studio].sfx = 0;
  synthITDDefault[studio].music = 0;
  hwActivateStudio(studio, isMaster, type);
  hwEnableIrq();
}

/*



*/
void sndActivateStudioEx(u8 studio, bool isMaster, SND_STUDIO_TYPE type) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  MUSY_ASSERT_MSG(studio < synthInfo.studioNum, "Illegal studio index.");
  if (studio != 0) {
    hwDisableIrq();
    synthActivateStudio(studio, isMaster, type);
    hwEnableIrq();
  } else {
    MUSY_DEBUG("The default studio cannot be activated or deactivated.\n");
  }
}

/*






*/
void synthDeactivateStudio(u8 studio) {
  u32 i;
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  for (i = 0; i < synthInfo.voiceNum; ++i) {

    if (studio == synthVoice[i].studio) {
      if (synthVoice[i].id != 0xFFFFFFFF) {
        voiceKillSound(synthVoice[i].vidList->vid);
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

/*




*/
void sndDeactivateStudio(u8 studio) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  MUSY_ASSERT_MSG(studio < synthInfo.studioNum, "Illegal studio index.");
  if (studio != 0) {
    hwDisableIrq();
    synthDeactivateStudio(studio);
    hwEnableIrq();
  } else {
    MUSY_DEBUG("The default studio cannot be activated or deactivated.\n");
  }
}

/*





*/
void synthChangeStudioMasterMix(u8 studio, u32 isMaster) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  hwChangeStudioMix(studio, isMaster);
}

//

void sndChangeStudioMasterMix(u8 studio, bool isMaster) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  if (studio != 0) {
    hwDisableIrq();
    synthChangeStudioMasterMix(studio, isMaster);
    hwEnableIrq();
  } else {
    MUSY_DEBUG("Default studio's master mix cannot be changed.\n");
  }
}

/*





*/
bool synthAddStudioInput(u8 studio, SND_STUDIO_INPUT* in_desc) {

  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");

  return hwAddInput(studio, in_desc);
}

//

bool sndAddStudioInput(u8 studio, SND_STUDIO_INPUT* in_desc) {
  u32 ret;
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  hwDisableIrq();
  ret = synthAddStudioInput(studio, in_desc);
  hwEnableIrq();
  return ret;
}

/*

*/
bool synthRemoveStudioInput(u8 studio, SND_STUDIO_INPUT* in_desc) {
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  return hwRemoveInput(studio, in_desc);
}

/*

*/
bool sndRemoveStudioInput(u8 studio, SND_STUDIO_INPUT* in_desc) {
  bool ret;
  MUSY_ASSERT_MSG(sndActive != FALSE, "Sound system is not initialized.");
  hwDisableIrq();
  ret = synthRemoveStudioInput(studio, in_desc);
  hwEnableIrq();
  return ret;
}

u8 sndDbgGetActiveVoices() {
  u8 n; // r31
  hwDisableIrq();
  n = voiceFxRunning + voiceMusicRunning;
  hwEnableIrq();
  return n;
}

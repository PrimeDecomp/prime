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

SND_VOICEID sndFXCheck(SND_VOICEID arg0) {
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

static sndSwapVoices(u32* vals) {
  u32 tmp = vals[0];
  vals[0] = vals[1];
  vals[1] = tmp | 0x2000;
}

#if NONMATCHING
/* This function is nearly matching, relevant scratch: https://decomp.me/scratch/WY9Z1 */
void sndOutputMode(SND_OUTPUTMODE output) {
  u32 i;
  u32 oldSynthFlags = synthFlags;

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
  }

  if (oldSynthFlags == synthFlags) {
    return;
  }

  /* ???? */
  for (i = 0; i < synthInfo.voices; ++i) {
    sndSwapVoices((u32*)&synthVoice[i]._114);
  }
  streamOutputModeChanged();
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void sndOutputMode(SND_OUTPUTMODE output) {
  nofralloc
/* 8039C448 003993A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C44C 003993AC  7C 08 02 A6 */	mflr r0
/* 8039C450 003993B0  2C 03 00 01 */	cmpwi r3, 1
/* 8039C454 003993B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C458 003993B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039C45C 003993BC  83 ED AE 74 */	lwz r31, synthFlags
/* 8039C460 003993C0  41 82 00 38 */	beq lbl_8039C498
/* 8039C464 003993C4  40 80 00 10 */	bge lbl_8039C474
/* 8039C468 003993C8  2C 03 00 00 */	cmpwi r3, 0
/* 8039C46C 003993CC  40 80 00 14 */	bge lbl_8039C480
/* 8039C470 003993D0  48 00 00 54 */	b lbl_8039C4C4
lbl_8039C474:
/* 8039C474 003993D4  2C 03 00 03 */	cmpwi r3, 3
/* 8039C478 003993D8  40 80 00 4C */	bge lbl_8039C4C4
/* 8039C47C 003993DC  48 00 00 34 */	b lbl_8039C4B0
lbl_8039C480:
/* 8039C480 003993E0  63 E0 00 01 */	ori r0, r31, 1
/* 8039C484 003993E4  90 0D AE 74 */	stw r0, synthFlags
/* 8039C488 003993E8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8039C48C 003993EC  90 0D AE 74 */	stw r0, synthFlags
/* 8039C490 003993F0  48 01 7A 8D */	bl hwDisableHRTF
/* 8039C494 003993F4  48 00 00 30 */	b lbl_8039C4C4
lbl_8039C498:
/* 8039C498 003993F8  57 E3 00 3C */	rlwinm r3, r31, 0, 0, 0x1e
/* 8039C49C 003993FC  57 E0 00 3A */	rlwinm r0, r31, 0, 0, 0x1d
/* 8039C4A0 00399400  90 6D AE 74 */	stw r3, synthFlags
/* 8039C4A4 00399404  90 0D AE 74 */	stw r0, synthFlags
/* 8039C4A8 00399408  48 01 7A 75 */	bl hwDisableHRTF
/* 8039C4AC 0039940C  48 00 00 18 */	b lbl_8039C4C4
lbl_8039C4B0:
/* 8039C4B0 00399410  57 E0 00 3C */	rlwinm r0, r31, 0, 0, 0x1e
/* 8039C4B4 00399414  90 0D AE 74 */	stw r0, synthFlags
/* 8039C4B8 00399418  60 00 00 02 */	ori r0, r0, 2
/* 8039C4BC 0039941C  90 0D AE 74 */	stw r0, synthFlags
/* 8039C4C0 00399420  48 01 7A 5D */	bl hwDisableHRTF
lbl_8039C4C4:
/* 8039C4C4 00399424  80 0D AE 74 */	lwz r0, synthFlags
/* 8039C4C8 00399428  7C 1F 00 40 */	cmplw r31, r0
/* 8039C4CC 0039942C  41 82 00 54 */	beq lbl_8039C520
/* 8039C4D0 00399430  3C 60 80 55 */	lis r3, synthInfo@ha
/* 8039C4D4 00399434  38 E0 00 00 */	li r7, 0
/* 8039C4D8 00399438  38 A3 00 50 */	addi r5, r3, synthInfo@l
/* 8039C4DC 0039943C  38 C0 00 00 */	li r6, 0
/* 8039C4E0 00399440  48 00 00 30 */	b lbl_8039C510
lbl_8039C4E4:
/* 8039C4E4 00399444  80 6D AE 78 */	lwz r3, synthVoice
/* 8039C4E8 00399448  38 06 01 14 */	addi r0, r6, 0x114
/* 8039C4EC 0039944C  38 C6 04 04 */	addi r6, r6, 0x404
/* 8039C4F0 00399450  38 E7 00 01 */	addi r7, r7, 1
/* 8039C4F4 00399454  7C 83 02 14 */	add r4, r3, r0
/* 8039C4F8 00399458  7C 63 02 14 */	add r3, r3, r0
/* 8039C4FC 0039945C  80 04 00 00 */	lwz r0, 0(r4)
/* 8039C500 00399460  80 84 00 04 */	lwz r4, 4(r4)
/* 8039C504 00399464  60 00 20 00 */	ori r0, r0, 0x2000
/* 8039C508 00399468  90 83 00 04 */	stw r4, 4(r3)
/* 8039C50C 0039946C  90 03 00 00 */	stw r0, 0(r3)
lbl_8039C510:
/* 8039C510 00399470  88 05 02 10 */	lbz r0, 0x210(r5)
/* 8039C514 00399474  7C 07 00 40 */	cmplw r7, r0
/* 8039C518 00399478  41 80 FF CC */	blt lbl_8039C4E4
/* 8039C51C 0039947C  48 00 12 81 */	bl streamOutputModeChanged
lbl_8039C520:
/* 8039C520 00399480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C524 00399484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039C528 00399488  7C 08 03 A6 */	mtlr r0
/* 8039C52C 0039948C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C530 00399490  4E 80 00 20 */	blr
}
#pragma pop
/* clang-format on */
#endif

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
bool synthAddStudioInput(u8 studio, void* unk) { return hwAddInput(studio, unk); }

bool synthRemoveStudioInput(u8 studio, void* unk) { return hwRemoveInput(studio, unk); }

/*















*/

#include "musyx/hardware.h"
#include "musyx/seq.h"
#include  "musyx/assert.h"
/*








*/
void sndSeqCrossFade(struct SND_CROSSFADE* ci, unsigned long* new_seqId) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  MUSY_ASSERT_MSG(ci != NULL, "Crossfade information pointer is NULL.");
  MUSY_ASSERT_MSG(ci->studio2 < 8, "Studio index is illegal.");
  MUSY_ASSERT_MSG(hwIsStudioActive(ci->studio2), "Selected studio is inactive.");

  hwDisableIrq();

  seqCrossFade(ci, new_seqId, 0);

  hwEnableIrq();
}

/*




*/
u32 sndSeqCrossFadeDone(u32* new_seqId) {
  if (*new_seqId != -1) {
    return (*new_seqId & 0x80000000) == 0;
  }

  return TRUE;
}

u16 sndSeqGetLoopCnt(u32 seqId) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  seqId = seqGetPrivateId(seqId);
  if (seqId != -1 && (seqId & 0x80000000) == 0) {
    return seqInstance[seqId].section[0].loopCnt;
  }

  return 0;
}

/*






*/
u16 sndSeqGetLoopCntEx(u32 seqId, u8 track) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  seqId = seqGetPrivateId(seqId);
  if (seqId != -1 && (seqId & 0x80000000) == 0) {
    if (seqInstance[seqId].trackSectionTab == NULL) {
      return seqInstance[seqId].section[0].loopCnt;
    } else {
      return seqInstance[seqId].section[seqInstance[seqId].trackSectionTab[track]].loopCnt;
    }
  }

  return 0;
}

/*






*/
unsigned long sndSeqGetValid(unsigned long seqId) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  return seqGetPrivateId(seqId) != -1;
}

/*


*/
void sndSeqPause(s32 unk) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqPause(unk);
  hwEnableIrq();
}

/*



*/
void sndSeqStop(s32 unk) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqStop(unk);
  hwEnableIrq();
}

/*



*/
unsigned long sndSeqLoop(unsigned long seqId, bool on) {
  unsigned long i; // r30
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  if ((seqId = seqGetPrivateId(seqId)) != -1) {
    if ((seqId & 0x80000000) == 0) {
      for (i = 0; i < 16; ++i) {
        seqInstance[seqId].section[i].loopDisable = !on;
      }

      return TRUE;
    }

    MUSY_DEBUG("Sequencer ID is temporary.\n");
  } else {
    MUSY_DEBUG("Sequencer ID is not valid.\n");
  }

  return FALSE;
}

/*






*/
unsigned long sndSeqLoopEx(unsigned long seqId, unsigned char track, bool on) {
  unsigned long i; // r29
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  if ((seqId = seqGetPrivateId(seqId)) != -1) {
    if ((seqId & 0x80000000) == 0) {
      if (seqInstance[seqId].trackSectionTab == NULL) {
        for (i = 0; i < 16; ++i) {
          seqInstance[seqId].section[i].loopDisable = !on;
        }
        return TRUE;
      }

      seqInstance[seqId].section[seqInstance[seqId].trackSectionTab[track]].loopDisable = !on;

      return TRUE;
    }

    MUSY_DEBUG("Sequencer ID is temporary.\n");
  } else {
    MUSY_DEBUG("Sequencer ID is not valid.\n");
  }

  return FALSE;
}

/*







*/
void sndSeqSpeed(u32 seqId, u16 speed) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqSpeed(seqId, speed);
  hwEnableIrq();
}

/*



*/
void sndSeqContinue(s32 unk) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqContinue(unk);
  hwEnableIrq();
}

/*



*/
void sndSeqMute(s32 unk1, s32 unk2, s32 unk3) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqMute(unk1, unk2, unk3);
  hwEnableIrq();
}

/*


*/
void sndSeqVolume(unsigned char volume, unsigned short time, unsigned long seqId,
                  unsigned char mode) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqVolume(volume, time, seqId, mode);
  hwEnableIrq();
}

/*



*/
unsigned char sndSeqGetVolGroup(unsigned long seqId) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  if ((seqId = seqGetPrivateId(seqId)) != -1) {
    return seqInstance[seqId].defVGroup;
  }

  MUSY_DEBUG("Volume group could not be received from sequencer.\n");
  return 0;
}

/*


*/
unsigned long sndSeqAssignVolGroup2Track(unsigned long seqId, unsigned char track,
                                         unsigned char vGroup) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  if ((seqId = seqGetPrivateId(seqId)) != -1) {
    seqInstance[seqId].trackVolGroup[track] = vGroup;
    synthSetMusicVolumeType(vGroup, 2);
    return TRUE;
  }

  MUSY_DEBUG("Volume group could not be assigned to track.\n");
  return FALSE;
}

/*





*/
unsigned char sndSeqGetMidiCtrl(unsigned long seqId, unsigned char channel, unsigned char ctrl) {
  unsigned char value; // r31
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  value = 0;
  hwDisableIrq();

  if ((seqId = seqGetPrivateId(seqId)) != -1) {
    value = inpGetMidiCtrl(ctrl, channel, seqId) >> 7;
  }

  hwEnableIrq();
  return value;
}

/*


*/
unsigned short sndSeqGetMidiCtrl14(unsigned long seqId, unsigned char channel, unsigned char ctrl) {
  unsigned short value; // r31
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  value = 0;
  hwDisableIrq();

  if ((seqId = seqGetPrivateId(seqId)) != -1) {
    value = inpGetMidiCtrl(ctrl, channel, seqId);
  }

  hwEnableIrq();
  return value;
}

/*

*/
unsigned long sndSeqSetMidiCtrl(unsigned long seqId, unsigned char channel, unsigned char ctrl,
                                unsigned char value) {
  unsigned long ret = FALSE; // r30
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  if ((seqId = seqGetPrivateId(seqId)) != -1) {
    inpSetMidiCtrl(ctrl, channel, seqId, value);
    ret = TRUE;
  } else {
    MUSY_DEBUG("Sequenzer ID is not valid.\n\n");
  }
  hwEnableIrq();

  return ret;
}

/*




*/
unsigned long sndSeqSetMidiCtrl14(unsigned long seqId, unsigned char channel, unsigned char ctrl,
                                  unsigned short value) {
  unsigned long ret = FALSE; // r30
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  if ((seqId = seqGetPrivateId(seqId)) != -1) {
    inpSetMidiCtrl14(ctrl, channel, seqId, value);
    ret = TRUE;
  } else {
    MUSY_DEBUG("Sequenzer ID is not valid.\n\n");
  }
  hwEnableIrq();

  return ret;
}

u16 seqGetMIDIPriority(u8 set, u8 channel) { return seqMIDIPriority[set][channel]; }

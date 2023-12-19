/*















*/

#include "musyx/assert.h"
#include "musyx/hardware.h"
#include "musyx/seq.h"
/*








*/
void sndSeqCrossFade(struct SND_CROSSFADE* ci, u32* new_seqId) {
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
bool sndSeqCrossFadeDone(SND_SEQID* new_seqId) {
  if (*new_seqId != -1) {
    return (*new_seqId & 0x80000000) == 0;
  }

  return TRUE;
}

u16 sndSeqGetLoopCnt(SND_SEQID seqId) {
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
bool sndSeqGetValid(SND_SEQID seqId) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");

  return seqGetPrivateId(seqId) != -1;
}

/*


*/
void sndSeqPause(SND_SEQID seqId) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqPause(seqId);
  hwEnableIrq();
}

/*



*/
void sndSeqStop(SND_SEQID seqid) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqStop(seqid);
  hwEnableIrq();
}

/*



*/
bool sndSeqLoop(SND_SEQID seqId, bool on) {
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
bool sndSeqLoopEx(SND_SEQID seqId, u8 track, bool on) {
  u32 i; // r29
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
void sndSeqContinue(SND_SEQID seqId) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqContinue(seqId);
  hwEnableIrq();
}

/*



*/
void sndSeqMute(SND_SEQID seqId, u32 mask1, u32 mask2) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqMute(seqId, mask1, mask2);
  hwEnableIrq();
}

/*


*/
void sndSeqVolume(u8 volume, u16 time, u32 seqId, u8 mode) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  hwDisableIrq();
  seqVolume(volume, time, seqId, mode);
  hwEnableIrq();
}

/*



*/
u8 sndSeqGetVolGroup(SND_SEQID seqId) {
  MUSY_ASSERT_MSG(sndActive, "Sound system is not initialized.");
  if ((seqId = seqGetPrivateId(seqId)) != -1) {
    return seqInstance[seqId].defVGroup;
  }

  MUSY_DEBUG("Volume group could not be received from sequencer.\n");
  return 0;
}

/*


*/
bool sndSeqAssignVolGroup2Track(SND_SEQID seqId, u8 track, u8 vGroup) {
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
u8 sndSeqGetMidiCtrl(SND_SEQID seqId, u8 channel, u8 ctrl) {
  u8 value; // r31
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
u16 sndSeqGetMidiCtrl14(SND_SEQID seqId, u8 channel, u8 ctrl) {
  u16 value; // r31
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
bool sndSeqSetMidiCtrl(SND_SEQID seqId, u8 channel, u8 ctrl, u8 value) {
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
bool sndSeqSetMidiCtrl14(SND_SEQID seqId, u8 channel, u8 ctrl, u16 value) {
  bool ret = FALSE; // r30
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

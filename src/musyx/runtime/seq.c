#include "musyx/seq.h"

#include "musyx/assert.h"
#include "musyx/sal.h"
#include "musyx/synth.h"

#include <stdint.h>

static NOTE seqNote[256];
SEQ_INSTANCE seqInstance[8];
u16 seqMIDIPriority[8][16];

static u32 seq_next_id = 0;
static bool8 curFadeOutState = 0;
static u32 curSeqId = 0;
static NOTE* noteFree = NULL;
static SEQ_INSTANCE* cseq = NULL;
SEQ_INSTANCE* seqFreeRoot = NULL;
SEQ_INSTANCE* seqPausedRoot = NULL;
SEQ_INSTANCE* seqActiveRoot = NULL;

static void ClearNotes() {
  NOTE* ln = NULL; // r30
  s32 i;           // r29

  noteFree = &seqNote[0];
  for (i = 0; i < 256; ++i) {
    seqNote[i].prev = ln;
    if (ln != NULL) {
      ln->next = &seqNote[i];
    }
    ln = &seqNote[i];
  }

  ln->next = NULL;
}

static void ResetNotes(SEQ_INSTANCE* seq) {
  NOTE* n; // r31
  u32 i;   // r30
  for (i = 0; i < 2; ++i) {
    n = seq->noteUsed[i];
    if (n != NULL) {
      for (; n->next != NULL; n = n->next) {
      }

      if (noteFree != NULL) {
        n->next = noteFree;
        noteFree->prev = n;
      }

      noteFree = seq->noteUsed[i];
      seq->noteUsed[i] = NULL;
    }
  }

  n = seq->noteKeyOff;

  if (n != NULL) {
    for (; n->next != NULL; n = n->next) {
    }

    if (noteFree != NULL) {
      n->next = noteFree;
      noteFree->prev = n;
    }

    noteFree = seq->noteKeyOff;
    seq->noteKeyOff = NULL;
  }
}

static void KillNotes(SEQ_INSTANCE* seq) {
  NOTE* n; // r31
  u32 i;   // r30

  for (i = 0; i < 2; ++i) {
    for (n = seq->noteUsed[i]; n != NULL; n = n->next) {
      voiceKillSound(n->id);
    }
  }

  for (n = seq->noteKeyOff; n != NULL; n = n->next) {
    voiceKillSound(n->id);
  }
}

static NOTE* AllocateNote(u32 endTime, u8 section) {
  NOTE* n;       // r31
  NOTE* nl;      // r30
  NOTE* last_nl; // r29
  if ((n = noteFree) != NULL) {
    if ((noteFree = n->next) != NULL) {
      noteFree->prev = NULL;
    }

    n->endTime = endTime;
    n->section = section;
    n->timeIndex = cseq->section[section].timeIndex;
    last_nl = NULL;
    for (nl = cseq->noteUsed[n->timeIndex]; nl != NULL; nl = nl->next) {
      if (nl->endTime > n->endTime) {
        n->next = nl;
        n->prev = last_nl;
        if (last_nl != NULL) {
          last_nl->next = n;
        } else {
          cseq->noteUsed[n->timeIndex] = n;
        }

        nl->prev = n;
        return n;
      }

      last_nl = nl;
    }
    n->prev = last_nl;

    if (last_nl != NULL) {
      last_nl->next = n;
    } else {
      cseq->noteUsed[n->timeIndex] = n;
    }

    n->next = NULL;
  }

  return n;
}

static void FreeNote(struct NOTE* n) {
  if (n->next != NULL) {
    n->next->prev = n->prev;
  }

  if (n->prev != NULL) {
    n->prev->next = n->next;
  } else {
    cseq->noteUsed[n->timeIndex] = n->next;
  }

  if ((n->next = noteFree) != NULL) {
    noteFree->prev = n;
  }

  n->prev = NULL;
  noteFree = n;
}

static u32 HandleNotes() {
  NOTE* note; // r31
  u32 i;      // r30

  for (i = 0; i < 2; ++i) {
    note = cseq->noteUsed[i];
    if (note != NULL) {
      while (note->endTime <= cseq->section[note->section].time[i].high) {
        synthSendKeyOff(note->id);

        if ((cseq->noteUsed[i] = note->next) != NULL) {
          cseq->noteUsed[i]->prev = NULL;
        }

        if ((note->next = cseq->noteKeyOff) != NULL) {
          cseq->noteKeyOff->prev = note;
        }
        cseq->noteKeyOff = note;
        note = cseq->noteUsed[i];

        if (note == NULL) {
          break;
        }
      }
    }
  }

  return cseq->noteUsed[0] != NULL || cseq->noteUsed[1] != NULL;
}

static void KeyOffNotes() {
  NOTE* note;     // r31
  NOTE* nextNote; // r29
  u32 i;          // r30

  for (i = 0; i < 2; ++i) {
    note = cseq->noteUsed[i];

    while (note != NULL) {
      nextNote = note->next;
      synthSendKeyOff(note->id);
      if ((cseq->noteUsed[i] = note->next) != NULL) {
        cseq->noteUsed[i]->prev = NULL;
      }

      if ((note->next = cseq->noteKeyOff) != NULL) {
        cseq->noteKeyOff->prev = note;
      }
      cseq->noteKeyOff = note;
      note = nextNote;
    }
  }
}

static void seqFreeKeyOffNote(NOTE* n) {
  if (n->next != NULL) {
    n->next->prev = n->prev;
  }

  if (n->prev != NULL) {
    n->prev->next = n->next;
  } else {
    cseq->noteKeyOff = n->next;
  }

  if ((n->next = noteFree) != NULL) {
    noteFree->prev = n;
  }

  n->prev = NULL;
  noteFree = n;
}

static void HandleKeyOffNotes() {
  NOTE* n;  // r31
  NOTE* nn; // r30
  if (!cseq->keyOffCheck) {
    n = cseq->noteKeyOff;
    while (n != NULL) {
      nn = n->next;
      if (n->id != SND_ID_ERROR && sndFXCheck(n->id) == SND_ID_ERROR) {
        seqFreeKeyOffNote(n);
      }

      n = nn;
    }
  }

  cseq->keyOffCheck = (cseq->keyOffCheck + 1) % 5;
}

static void InitPublicIds() { seq_next_id = 0; }

static u32 GetPublicId(u32 seqId) {
  u32 pub_id;       // r30
  SEQ_INSTANCE* si; // r31

  do {
    pub_id = seq_next_id;
    seq_next_id = pub_id + 1;
    seq_next_id &= ~SND_SEQ_CROSSFADE_ID;

    for (si = seqActiveRoot; si != NULL; si = si->next) {
      if (si->publicId == pub_id) {
        pub_id = SND_SEQ_ERROR_ID;
        break;
      }
    }
    for (si = seqPausedRoot; si != NULL; si = si->next) {
      if (si->publicId == pub_id) {
        pub_id = SND_SEQ_ERROR_ID;
        break;
      }
    }
  } while (pub_id == SND_SEQ_ERROR_ID);

  seqInstance[seqId].publicId = pub_id;
  return pub_id;
}

u32 seqGetPrivateId(u32 seqId) {
  SEQ_INSTANCE* si; // r31
  for (si = seqActiveRoot; si != NULL; si = si->next) {
    if (si->publicId == (seqId & ~SND_SEQ_CROSSFADE_ID)) {
      return si->index | seqId & SND_SEQ_CROSSFADE_ID;
    }
  }
  for (si = seqPausedRoot; si != NULL; si = si->next) {
    if (si->publicId == (seqId & ~SND_SEQ_CROSSFADE_ID)) {
      return si->index | seqId & SND_SEQ_CROSSFADE_ID;
    }
  }
  return SND_ID_ERROR;
}

static void DoPrgChange(SEQ_INSTANCE* seq, u8 prg, u8 midi) {
  seqMIDIPriority[curSeqId][midi] = 0xFFFF;
  if (midi != 9) {
    prg = seq->normTrans[prg];
    if (prg == 0xFF) {
      return;
    }

    seq->prgState[midi].macId = seq->normtab[prg].macro;
    seq->prgState[midi].priority = seq->normtab[prg].prio;
    seq->prgState[midi].maxVoices = seq->normtab[prg].maxVoices;
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 1)
    seq->prgState[midi].program = prg;
#endif
    return;
  }

  prg = seq->drumTrans[prg];
  if (prg == 0xFF) {
    return;
  }

  seq->prgState[midi].macId = seq->drumtab[prg].macro;
  seq->prgState[midi].priority = seq->drumtab[prg].prio;
  seq->prgState[midi].maxVoices = seq->drumtab[prg].maxVoices;
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 1)
  seq->prgState[midi].program = prg;
#endif
}

static void BuildTransTab(u8* tab, PAGE* page) {
  u8 i; // r31

  for (i = 0; i < 128; ++i) {
    tab[i] = 0xff;
  }

  for (i = 0; page->index != 0xFF; ++i, ++page) {
    tab[page->index] = i;
  }
}

static void StartPause(SEQ_INSTANCE* si);
static void InitTrackEvents();

u32 seqStartPlay(PAGE* norm, PAGE* drum, MIDISETUP* midiSetup, u32* song, SND_PLAYPARA* para,
                 u8 studio, u16 sgid) {
  ARR* arr;              // r27
  u32* tracktab;         // r24
  s32 i;                 // r31
  SEQ_INSTANCE* nseq;    // r30
  SEQ_INSTANCE* oldCSeq; // r23
  u32 seqId;             // r28
  u32 bpm;               // r25

  if ((nseq = seqFreeRoot) == NULL) {
    return SND_ID_ERROR;
  }
  if ((seqFreeRoot = nseq->next) != NULL) {
    seqFreeRoot->prev = NULL;
  }
  if ((nseq->next = seqActiveRoot) != NULL) {
    seqActiveRoot->prev = nseq;
  }

  nseq->prev = NULL;
  seqActiveRoot = nseq;
  nseq->state = 1;
  for (i = 0; i < 16; ++i) {
    nseq->section[i].globalEventRoot = NULL;
  }

  seqId = nseq->index;
  nseq->syncActive = FALSE;
  nseq->normtab = norm;
  nseq->drumtab = drum;
  nseq->arrbase = (ARR*)song;
  nseq->groupID = sgid;
  BuildTransTab(nseq->normTrans, nseq->normtab);
  BuildTransTab(nseq->drumTrans, nseq->drumtab);
  nseq->defVGroup = seqId + 23;
  for (i = 0; i < 64; ++i) {
    nseq->trackVolGroup[i] = nseq->defVGroup;
  }

  nseq->defStudio = studio;
  if (para == NULL) {
    nseq->trackMute[0] = -1;
    nseq->trackMute[1] = -1;
    for (i = 0; i < 16; ++i) {
      nseq->section[i].speed = 256;
    }

    synthVolume(SND_PAUSEVOL_NORMAL, 0, nseq->defVGroup, 0, SND_ID_ERROR);
  } else {
    if (para->flags & SND_PLAYPARA_TRACKMUTE) {
      nseq->trackMute[0] = para->trackMute[0];
      nseq->trackMute[1] = para->trackMute[1];
    } else {
      nseq->trackMute[0] = -1;
      nseq->trackMute[1] = -1;
    }

    if (para->flags & SND_PLAYPARA_SPEED) {
      for (i = 0; i < 16; ++i) {
        nseq->section[i].speed = para->speed;
      }
    } else {
      for (i = 0; i < 16; ++i) {
        nseq->section[i].speed = 256;
      }
    }

    if (para->flags & SND_PLAYPARA_SEQVOLDEF) {
      for (i = 0; i < para->numSeqVolDef; ++i) {
        nseq->trackVolGroup[para->seqVolDef[i].track] = para->seqVolDef[i].volGroup;
        synthSetMusicVolumeType(para->seqVolDef[i].volGroup, 0);
      }
    }

    if (para->flags & SND_PLAYPARA_VOLUME) {
      synthVolume(para->volume.target, para->volume.time, nseq->defVGroup, SND_SEQVOL_CONTINUE,
                  SND_SEQ_ERROR_ID);

      for (i = 0; i < para->numFaded; ++i) {
        synthVolume(para->volume.target, para->volume.time, para->faded[i], SND_SEQVOL_CONTINUE,
                    SND_SEQ_ERROR_ID);
      }
    }
  }

  arr = (ARR*)song;
  if (arr->info & 0x80000000) {
    nseq->trackSectionTab = ARR_GET(arr, arr->tsTab);
  } else {
    nseq->trackSectionTab = NULL;
  }

  bpm = arr->info & 0x0fffffff;

  if (!(arr->info & 0x40000000)) {
    bpm <<= 10;
  }

  for (i = 0; i < 16; ++i) {
    nseq->section[i].bpm = bpm;
    synthSetBpm(bpm >> 10, seqId, i);

    if (arr->mTrack != 0) {
      nseq->section[i].mTrack.base = ARR_GET(arr, arr->mTrack);
      nseq->section[i].mTrack.addr = nseq->section[i].mTrack.base;
    } else {
      nseq->section[i].mTrack.base = NULL;
    }

    nseq->section[i].loopDisable = FALSE;
    nseq->section[i].loopCnt = 0;
  }

  tracktab = ARR_GET(arr, arr->tTab);
  for (i = 0; i < 64; ++i) {
    synthTrackVolume[i] = SND_PAUSEVOL_NORMAL;
    nseq->pattern[i].addr = NULL;
    if (tracktab[i] != 0) {
      nseq->track[i].addr = nseq->track[i].base = ARR_GET(arr, tracktab[i]);
    } else {
      nseq->track[i].addr = nseq->track[i].base = NULL;
    }
  }

  nseq->noteUsed[0] = NULL;
  nseq->noteUsed[1] = NULL;
  nseq->noteKeyOff = NULL;

  for (i = 0; i < 16; ++i) {
    inpResetMidiCtrl(i, seqId, 1);
  }
  for (i = 0; i < 16; ++i) {
    nseq->prgState[i].macId = 0xffff;
  }
  for (i = 0; i < 16; ++i) {
    inpResetChannelDefaults(i, seqId);
  }
  if (midiSetup != NULL) {
    for (i = 0; i < 16; ++i) {
      DoPrgChange(nseq, midiSetup->channel[i].program, i);
      inpSetMidiCtrl(SND_MIDICTRL_VOLUME, i, seqId, midiSetup->channel[i].volume);
      inpSetMidiCtrl(SND_MIDICTRL_PANNING, i, seqId, midiSetup->channel[i].panning);
      inpSetMidiCtrl(SND_MIDICTRL_REVERB, i, seqId, midiSetup->channel[i].reverb);
      inpSetMidiCtrl(SND_MIDICTRL_CHORUS, i, seqId, midiSetup->channel[i].chorus);
    }
  }
  for (i = 0; i < 16; ++i) {
    seqMIDIPriority[seqId][i] = 0xffff;
  }
  for (i = 0; i < 16; ++i) {
    nseq->section[i].time[0].high = 0;
    nseq->section[i].time[0].low = 0;
    nseq->section[i].time[1].high = 0;
    nseq->section[i].time[1].low = 0;
    nseq->section[i].timeIndex = 0;
  }
  nseq->keyOffCheck = 0;

  if (para != NULL && (para->flags & SND_PLAYPARA_PAUSE) != 0) {
    StartPause(nseq);
  }

  oldCSeq = cseq;
  cseq = nseq;
  InitTrackEvents();
  cseq = oldCSeq;
  seqId = GetPublicId(seqId);
  return seqId;
}

static void SetTickDelta(SEQ_SECTION* section, u32 deltaTime) {
  float tickDelta = (float)section->bpm * (float)deltaTime * (1.f / (40960000.f));
  tickDelta *= section->speed * (1.f / 256.f);

  section->tickDelta[section->timeIndex].low = fmodf(tickDelta * 65536.f, 65536.f);
  section->tickDelta[section->timeIndex].high = floorf(tickDelta);
}

static void HandleMasterTrack(u8 secIndex) {
  SEQ_SECTION* section; // r31

  section = &cseq->section[secIndex];
  if (section->mTrack.base != NULL) {
    while (section->mTrack.addr->time != -1) {
      if (section->mTrack.addr->time > section->time[section->timeIndex].high) {
        break;
      }

      if ((cseq->arrbase->info & 0x40000000) != 0) {
        synthSetBpm((section->bpm = section->mTrack.addr->bpm) >> 10, curSeqId, secIndex);
      } else {
        synthSetBpm(section->mTrack.addr->bpm, curSeqId, secIndex);
        section->bpm = section->mTrack.addr->bpm << 10;
      }

      ++section->mTrack.addr;
    }
  }
}

static void RewindMTrack(u8 secIndex, u32 deltaTime) {
  if (cseq->section[secIndex].mTrack.base == NULL) {
    return;
  }
  cseq->section[secIndex].mTrack.addr = cseq->section[secIndex].mTrack.base;
  HandleMasterTrack(secIndex);
  SetTickDelta(cseq->section + secIndex, deltaTime);
}

static void StartPause(SEQ_INSTANCE* si) {
  if (si->prev != NULL) {
    si->prev->next = si->next;
  } else {
    seqActiveRoot = si->next;
  }

  if (si->next != NULL) {
    si->next->prev = si->prev;
  }

  if ((si->next = seqPausedRoot) != NULL) {
    seqPausedRoot->prev = si;
  }

  si->prev = NULL;
  seqPausedRoot = si;
  si->state = 2;
}

void seqPause(u32 seqId) {
  SEQ_INSTANCE* si; // r31
  seqId = seqGetPrivateId(seqId);

  if (seqId == SND_SEQ_ERROR_ID) {
    return;
  }

  if ((seqId & SND_SEQ_CROSSFADE_ID) == 0) {
    si = &seqInstance[seqId];
    if (si->state == 1) {
      StartPause(si);
      KillNotes(si);
      ResetNotes(si);
    }
  } else {
    si = &seqInstance[seqId & ~SND_SEQ_CROSSFADE_ID];
    if (si->state != 0) {
      si->syncCrossInfo.flags |= 8;
    }
  }
}

void seqStop(u32 seqId) {
  SEQ_INSTANCE* si; // r31

  if ((seqId = seqGetPrivateId(seqId)) == SND_SEQ_ERROR_ID) {
    return;
  }

  if ((seqId & SND_SEQ_CROSSFADE_ID) == 0) {
    si = &seqInstance[seqId];
    switch (si->state) {
    case 1:
      if (si->prev != NULL) {
        si->prev->next = si->next;
      } else {
        seqActiveRoot = si->next;
      }

      KillNotes(&seqInstance[seqId]);
      ResetNotes(&seqInstance[seqId]);
      break;
    case 2:
      if (si->prev != NULL) {
        si->prev->next = si->next;
      } else {
        seqPausedRoot = si->next;
      }
      break;
    }

    if (si->next != NULL) {
      si->next->prev = si->prev;
    }
    si->state = 0;
    if (seqFreeRoot != NULL) {
      seqFreeRoot->prev = si;
    }
    si->next = seqFreeRoot;
    si->prev = NULL;
    seqFreeRoot = si;
  } else {
    si = &seqInstance[seqId & ~SND_SEQ_CROSSFADE_ID];
    if (si->state != 0) {
      si->syncSeqIdPtr = NULL;
    }
  }
}

void seqKillAllInstances() {
  SEQ_INSTANCE* si; // r31
  for (si = seqActiveRoot; si != NULL; si = si->next) {
    seqStop(si->publicId);
  }

  for (si = seqPausedRoot; si != NULL; si = si->next) {
    seqStop(si->publicId);
  }
}

void seqKillInstancesByGroupID(u16 sgid) {
  SEQ_INSTANCE* si; // r31

  for (si = seqActiveRoot; si != NULL; si = si->next) {
    if (si->groupID == sgid) {
      seqStop(si->publicId);
    }
  }
  for (si = seqPausedRoot; si != NULL; si = si->next) {
    if (si->groupID == sgid) {
      seqStop(si->publicId);
    }
  }
}

void seqSpeed(u32 seqId, u16 speed) {
  u32 i; // r30

  seqId = seqGetPrivateId(seqId);
  MUSY_ASSERT_MSG(seqId != SND_SEQ_ERROR_ID, "Sequencer ID is not valid.");

  if ((seqId & SND_SEQ_CROSSFADE_ID) == 0) {
    for (i = 0; i < 16; ++i) {
      seqInstance[seqId].section[i].speed = speed;
    }
  } else {
    seqId &= ~SND_SEQ_CROSSFADE_ID;
    seqInstance[seqId].syncCrossInfo.flags |= SND_CROSSFADE_SPEED;
    seqInstance[seqId].syncCrossInfo.speed2 = speed;
  }
}

void seqContinue(u32 seqId) {
  struct SEQ_INSTANCE* si; // r31

  seqId = seqGetPrivateId(seqId);
  MUSY_ASSERT_MSG(seqId != SND_SEQ_ERROR_ID, "Sequencer ID is not valid.");

  if ((seqId & SND_SEQ_CROSSFADE_ID) == 0) {
    si = &seqInstance[seqId];

    if (si->state == 2) {
      if (si->prev != NULL) {
        si->prev->next = si->next;
      } else {
        seqPausedRoot = si->next;
      }

      if (si->next != NULL) {
        si->next->prev = si->prev;
      }

      if ((si->next = seqActiveRoot) != NULL) {
        seqActiveRoot->prev = si;
      }

      si->prev = NULL;
      seqActiveRoot = si;
      si->state = 1;
    }
  } else {
    seqInstance[seqId & ~SND_SEQ_CROSSFADE_ID].syncCrossInfo.flags &= ~SND_CROSSFADE_PAUSENEW;
  }
}

void seqMute(u32 seqId, u32 mask1, u32 mask2) {
  seqId = seqGetPrivateId(seqId);
  if (seqId == SND_SEQ_ERROR_ID) {
    return;
  }

  if ((seqId & SND_SEQ_CROSSFADE_ID) == 0) {
    seqInstance[seqId].trackMute[0] = mask1;
    seqInstance[seqId].trackMute[1] = mask2;
  } else {
    seqId &= ~SND_SEQ_CROSSFADE_ID;
    seqInstance[seqId].syncCrossInfo.flags |= SND_CROSSFADE_TRACKMUTE;
    seqInstance[seqId].syncCrossInfo.trackMute2[0] = mask1;
    seqInstance[seqId].syncCrossInfo.trackMute2[1] = mask2;
  }
}

void seqVolume(u8 volume, u16 time, u32 seqId, u8 mode) {
  u32 i;      // r29
  u32 pub_id; // r27

  pub_id = seqId;
  seqId = seqGetPrivateId(seqId);
  if (seqId == SND_SEQ_ERROR_ID) {
    return;
  }

  if ((seqId & SND_SEQ_CROSSFADE_ID) == 0) {
    synthVolume(volume, time, seqInstance[seqId].defVGroup, mode, pub_id);
    for (i = 0; i < 64; ++i) {
      if (seqInstance[seqId].trackVolGroup[i] != seqInstance[seqId].defVGroup) {
        synthVolume(volume, time, seqInstance[seqId].trackVolGroup[i], SND_SEQVOL_CONTINUE,
                    SND_SEQ_ERROR_ID);
      }
    }
  } else {
    seqId &= ~SND_SEQ_CROSSFADE_ID;
    switch (mode & SND_SEQVOL_MODEMASK) {
    case SND_SEQVOL_CONTINUE:
      seqInstance[seqId].syncCrossInfo.vol2 = volume;
      break;
    case SND_SEQVOL_STOP:
      seqInstance[seqId].syncSeqIdPtr = NULL;
      break;
    case SND_SEQVOL_PAUSE:
      seqInstance[seqId].syncCrossInfo.flags |= SND_CROSSFADE_PAUSENEW;
      seqInstance[seqId].syncCrossInfo.vol2 = volume;
      break;
    case SND_SEQVOL_MUTE:
      seqInstance[seqId].syncCrossInfo.flags |= SND_CROSSFADE_MUTENEW;
      seqInstance[seqId].syncCrossInfo.vol2 = volume;
      break;
    default:
      MUSY_FATAL("Illegal sequencere fade mode detected.");
      break;
    }
  }
}

void seqCrossFade(SND_CROSSFADE* ci, u32* new_seqId, bool8 irq_call) {
  SND_PLAYPARA pp; // r1+0x14
  u32 seqId;       // r29
  u16 time;        // r27

  seqId = seqGetPrivateId(ci->seqId1);
  MUSY_ASSERT_MSG(seqId != SND_SEQ_ERROR_ID, "Sequencer ID is not valid.");

  if ((ci->flags & SND_CROSSFADE_SYNC) != 0) {
    seqInstance[seqId].syncCrossInfo = *ci;
    seqInstance[seqId].syncActive = TRUE;
    seqInstance[seqId].syncSeqIdPtr = new_seqId;
    seqInstance[seqId].syncCrossInfo.flags &= ~SND_CROSSFADE_SYNC;
    *new_seqId = ci->seqId1 | SND_SEQ_CROSSFADE_ID;
    return;
  }

  if (irq_call) {
    time = ci->time1 < 5 ? 5 : ci->time1;
    if ((ci->flags & SND_CROSSFADE_PAUSE) != 0) {
      seqVolume(0, time, ci->seqId1, SND_SEQVOL_PAUSE);
    } else if ((ci->flags & SND_CROSSFADE_MUTE) != 0) {
      seqVolume(0, time, ci->seqId1, SND_SEQVOL_MUTE);
    } else {
      seqVolume(0, time, ci->seqId1, SND_SEQVOL_STOP);
    }
  } else {
    if ((ci->flags & SND_CROSSFADE_PAUSE) != 0) {
      sndSeqVolume(0, ci->time1, ci->seqId1, SND_SEQVOL_PAUSE);
    } else if ((ci->flags & SND_CROSSFADE_MUTE) != 0) {
      sndSeqVolume(0, ci->time1, ci->seqId1, SND_SEQVOL_MUTE);
    } else {
      sndSeqVolume(0, ci->time1, ci->seqId1, SND_SEQVOL_STOP);
    }
  }

  if (new_seqId == NULL) {
    return;
  }

  if ((ci->flags & SND_CROSSFADE_CONTINUE) != 0) {
    if (seqGetPrivateId(ci->seqId2) != SND_SEQ_ERROR_ID) {
      if (irq_call) {
        seqContinue(ci->seqId2);
        seqVolume(ci->vol2, ci->time2, ci->seqId2, SND_SEQVOL_CONTINUE);
        if ((ci->flags & SND_CROSSFADE_TRACKMUTE) != 0) {
          seqMute(ci->seqId2, ci->trackMute2[0], ci->trackMute2[1]);
        }
        if ((ci->flags & SND_CROSSFADE_SPEED) != 0) {
          seqSpeed(ci->seqId2, ci->speed2);
        }
      } else {
        sndSeqContinue(ci->seqId2);
        sndSeqVolume(ci->vol2, ci->time2, ci->seqId2, SND_SEQVOL_CONTINUE);
        if ((ci->flags & SND_CROSSFADE_TRACKMUTE) != 0) {
          sndSeqMute(ci->seqId2, ci->trackMute2[0], ci->trackMute2[1]);
        }
        if ((ci->flags & SND_CROSSFADE_SPEED) != 0) {
          sndSeqSpeed(ci->seqId2, ci->speed2);
        }
      }
      *new_seqId = ci->seqId2;
    } else {
      *new_seqId = SND_SEQ_ERROR_ID;
    }
  } else {
    pp.flags = SND_PLAYPARA_VOLUME;
    if ((ci->flags & SND_CROSSFADE_PAUSENEW) != 0) {
      pp.flags |= SND_PLAYPARA_PAUSE;
    }
    if ((ci->flags & SND_CROSSFADE_SPEED) != 0) {
      pp.flags |= SND_PLAYPARA_SPEED;
      pp.speed = ci->speed2;
    }
    if ((ci->flags & SND_CROSSFADE_TRACKMUTE) != 0) {
      pp.flags |= SND_PLAYPARA_TRACKMUTE;
      pp.trackMute[0] = ci->trackMute2[0];
      pp.trackMute[1] = ci->trackMute2[1];
    }
    pp.volume.time = ci->time2;
    pp.volume.target = ci->vol2;
    pp.numFaded = 0;
    if (irq_call != 0) {
      if ((*new_seqId = seqPlaySong(ci->gid2, ci->sid2, ci->arr2, &pp, TRUE, ci->studio2)) !=
              SND_SEQ_ERROR_ID &&
          (ci->flags & SND_CROSSFADE_MUTENEW) != 0) {
        seqMute(*new_seqId, 0, 0);
      }
    } else {
      if ((*new_seqId = sndSeqPlayEx(ci->gid2, ci->sid2, ci->arr2, &pp, ci->studio2)) !=
              SND_SEQ_ERROR_ID &&
          (ci->flags & SND_CROSSFADE_MUTENEW) != 0) {
        sndSeqMute(*new_seqId, 0, 0);
      }
    }
  }
}

static u8* GetStreamValue(u8* stream, u16* deltaTime, s16* deltaData) {
  u8 b1; // r31
  u8 b2; // r29
  s16 v; // r30

  b1 = stream[0];
  b2 = stream[1];
  if (b1 == 0x80 && b2 == 0) {
    return NULL;
  }

  if ((b1 & 0x80) != 0) {
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
    *deltaTime = (((u16)b1 & 0x7f) << 8) | b2;
#else
    *deltaTime = ((b1 & 0x7f) << 8) | b2;
#endif
    stream += 2;
  } else {
    *deltaTime = b1;
    stream += 1;
  }

  b1 = stream[0];
  b2 = stream[1];
  if ((b1 & 0x80) != 0) {
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
    v = (((u16)b1 & 0x7f) << 8) | b2;
    v |= (v & 0x4000) << 1;
#else
    v = ((b1 & 0x7f) << 8) | b2;
    v <<= 1;
    v >>= 1;
#endif
    *deltaData = v;
    stream += 2;
  } else {
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
    b1 |= (b1 & 0x40) << 1;
    *deltaData = (s8)b1;
#else
    v = b1;
    v <<= 9;
    v >>= 9;
    *deltaData = v;
#endif
    stream += 1;
  }

  return stream;
}

static void InitStream(SEQ_STREAM* stream, u32 streamDataOffset) {
  u16 delta; // r1+0x10
  if (streamDataOffset != 0) {
    if ((stream->nextAddr = GetStreamValue(ARR_GET(cseq->arrbase, streamDataOffset), &delta,
                                           &stream->nextDelta)) != NULL) {
      stream->nextTime = delta;
    } else {
      stream->nextTime = 0x7fffffff;
    }
  } else {
    stream->nextTime = 0x7fffffff;
  }
}

static u16 HandleStream(SEQ_STREAM* stream) {
  u16 delta; // r1+0xC
  stream->value += stream->nextDelta;
  if (stream->nextAddr != NULL) {
    if ((stream->nextAddr = GetStreamValue(stream->nextAddr, &delta, &stream->nextDelta)) != NULL) {
      stream->nextTime += delta;
    } else {
      stream->nextTime = 0x7fffffff;
    }
  } else {
    stream->nextTime = 0x7fffffff;
  }
  return stream->value;
}

static SEQ_EVENT* GenerateNextTrackEvent(u8 trackId) {
  TRACK* track;    // r29
  CPAT* pattern;   // r31
  SEQ_EVENT* ev;   // r30
  u32 patternTime; // r28
  u32 pitchTime;   // r27
  u32 modTime;     // r26

  track = &cseq->track[trackId];
  pattern = &cseq->pattern[trackId];

  if (track->addr != NULL) {
    ev = &cseq->event[trackId];
    ev->trackId = trackId;
    ev->info.pattern.base = pattern;

    if (pattern->addr == NULL) {
    null_pattern_addr:
      if (track->addr->pattern == 0xffff) {
        track->addr = NULL;
        return NULL;
      }

      if (track->addr->pattern == 0xfffe) {
        if (cseq->trackSectionTab == NULL) {
          if (cseq->section[0].loopDisable) {
            track->addr = NULL;
            return NULL;
          }
        } else if (cseq->section[cseq->trackSectionTab[trackId]].loopDisable) {
          track->addr = NULL;
          return NULL;
        }

        ev->type = 3;
        ev->time = track->addr->time;
        // TODO what is this?
        track->addr = &track->base[*((u16*)&track->addr->transpose)];
        return ev;
      }

      ev->type = 4;
      ev->time = track->addr->time;
      ev->info.trackAddr = track->addr;
      ++track->addr;
      return ev;
    }

    pitchTime = pattern->pitchBend.nextTime;
    modTime = pattern->modulation.nextTime;

  loop:
    patternTime = pattern->addr->time + pattern->lTime;
    if (patternTime >= pitchTime) {
      goto use_pitch_time;
    }
    if (patternTime >= modTime) {
      goto use_mod_time;
    }
    if (pattern->addr->key == 0xff && pattern->addr->velocity == 0xff) {
      pattern->addr = NULL;
      goto null_pattern_addr;
    }

    ev->info.trackAddr = (TENTRY*)pattern->addr;
    pattern->lTime = patternTime;

    if ((pattern->addr->key & 0x80) != 0) {
      pattern->addr = (NOTE_DATA*)((u8*)pattern->addr + 4);
      goto use_pattern_time;
    }
    if ((pattern->addr->key | pattern->addr->velocity) == 0) {
      pattern->addr = (NOTE_DATA*)((u8*)pattern->addr + 4);
      goto loop;
    }
    ++pattern->addr;

  use_pattern_time:
    ev->type = 0;
    ev->time = patternTime + pattern->baseTime;
    goto end;

  use_pitch_time:
    if (pitchTime < modTime) {
      ev->time = pitchTime + pattern->baseTime;
      ev->type = 2;
      goto end;
    }

  use_mod_time:
    ev->time = modTime + pattern->baseTime;
    ev->type = 1;

  end:
    return ev;
  }

  return NULL;
}

static void InsertGlobalEvent(SEQ_SECTION* section, SEQ_EVENT* event) {
  SEQ_EVENT* el;      // r31
  SEQ_EVENT* last_el; // r30

  last_el = NULL;
  el = section->globalEventRoot;
  for (; el != NULL; last_el = el, el = el->next) {
    if (el->time > event->time) {
      event->next = el;
      event->prev = last_el;
      if (last_el != NULL) {
        last_el->next = event;
      } else {
        section->globalEventRoot = event;
      }
      el->prev = event;
      return;
    }
  }

  event->prev = last_el;
  if (last_el != NULL) {
    last_el->next = event;
  } else {
    section->globalEventRoot = event;
  }
  event->next = NULL;
}

static u32 GetNextEventTime(SEQ_SECTION* section) {
  return section->globalEventRoot == NULL ? 0 : section->globalEventRoot->time;
}

static SEQ_EVENT* GetGlobalEvent(SEQ_SECTION* section) {
  SEQ_EVENT* ev; // r31
  ev = section->globalEventRoot;
  if (ev != NULL && ((section->globalEventRoot = ev->next) != NULL)) {
    section->globalEventRoot->prev = NULL;
  }
  return ev;
}

static SEQ_EVENT* HandleEvent(SEQ_EVENT* event, u8 secIndex, bool* loopFlag) {
  CPAT* pa;          // r26
  NOTE_DATA* pe;     // r24
  s32 velocity;      // r28
  s32 key;           // r30
  u8 midi;           // r27
  u16 macId;         // r21
  NOTE* note;        // r22
  TENTRY* tEntry;    // r25
  CPAT* pattern;     // r29
  u32* pTab;         // r20
  SEQ_PATTERN* pptr; // r23

  switch (event->type) {
  case 4:
    tEntry = event->info.trackAddr;
    pattern = &cseq->pattern[event->trackId];
    pTab = ARR_GET(cseq->arrbase, cseq->arrbase->pTab);
    pptr = ARR_GET(cseq->arrbase, pTab[tEntry->pattern]);
    pattern->addr = (NOTE_DATA*)&pptr->noteData;
    pattern->lTime = 0;
    pattern->baseTime = tEntry->time;
    pattern->patternInfo = tEntry;
    InitStream(&pattern->pitchBend, pptr->pitchBend);
    pattern->pitchBend.value = 0x2000;
    InitStream(&pattern->modulation, pptr->modulation);
    pattern->modulation.value = 0;
    pattern->midi = ARR_GET_TYPE(cseq->arrbase, cseq->arrbase->tmTab, u8*)[event->trackId];
    if (tEntry->prgChange != 0xff) {
      DoPrgChange(cseq, tEntry->prgChange, pattern->midi);
    }
    if (tEntry->velocity != 0xff) {
      inpSetMidiCtrl(SND_MIDICTRL_VOLUME, pattern->midi, curSeqId, tEntry->velocity);
    }
    break;

  case 0:
    pe = event->info.pattern.addr;
    pa = event->info.pattern.base;
    key = pe->key;
    velocity = pe->velocity;
    midi = pa->midi;

    if ((key & 0x80) != 0) {
      switch (velocity) {
      case 0:
        DoPrgChange(cseq, key & 0x7f, midi);
        break;
      case 1:
        inpSetMidiCtrl(0x82 /* TODO SND_MIDICTRL_? */, midi, curSeqId, key & 0x7f);
        break;
      default:
        if ((velocity & 0x80) != 0x80) {
          break;
        }
        switch (velocity & 0x7f) {
        case 0x68:
          if (cseq->syncActive) {
            seqCrossFade(&cseq->syncCrossInfo, cseq->syncSeqIdPtr, TRUE);
            cseq->syncActive = FALSE;
          }
          break;
        case 0x69:
          seqMIDIPriority[curSeqId][midi] = key & 0x7f;
          break;
        case 0x6a:
          seqMIDIPriority[curSeqId][midi] = (key & 0x7f) + 0x80;
          break;
        case 0x79:
          inpResetMidiCtrl(midi, curSeqId, FALSE);
          break;
        case 0x7b:
          KeyOffNotes();
          break;
        default:
          inpSetMidiCtrl(velocity & 0x7f, midi, curSeqId, key & 0x7f);
          break;
        }
      }
      break;
    }

    if ((cseq->trackMute[event->trackId / 32] & (1 << (event->trackId & 0x1f))) != 0) {
      if ((macId = cseq->prgState[midi].macId) != 0xffff) {
        key += pa->patternInfo->transpose;
        key = CLAMP(key, 0, 0x7f);

        velocity += pa->patternInfo->velocityAdd;
        velocity = CLAMP(velocity, 0, 0x7f);

        if ((note = AllocateNote(event->time + pe->length, secIndex)) != NULL) {
          if ((note->id = synthStartSound(
                   macId, cseq->prgState[midi].priority, cseq->prgState[midi].maxVoices,
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 1)
                   cseq->groupID | (cseq->prgState[midi].program << 16) |
                       ((midi == 9 ? 1 : 0) << 24),
#endif
                   key, velocity, 64, midi, curSeqId, secIndex, 0, event->trackId,
                   cseq->trackVolGroup[event->trackId], curFadeOutState ? -1 : 0, cseq->defStudio,
                   synthITDDefault[cseq->defStudio].music)) == SND_ID_ERROR) {
            FreeNote(note);
          }
        }
      }
    }
    break;

  case 2:
    pa = event->info.pattern.base;
    inpSetMidiCtrl14(SND_MIDICTRL_PITCHBEND, pa->midi, curSeqId, HandleStream(&pa->pitchBend));
    break;

  case 1:
    pa = event->info.pattern.base;
    inpSetMidiCtrl14(SND_MIDICTRL_MODULATION, pa->midi, curSeqId, HandleStream(&pa->modulation));
    break;

  case 3:
    *loopFlag |= 1;
    return NULL;
  }

  return GenerateNextTrackEvent(event->trackId);
}

static void InitTrackEvents() {
  u32 i;         // r31
  SEQ_EVENT* ev; // r30

  if (cseq->trackSectionTab == NULL) {
    for (i = 0; i < 0x40; i += 1) {
      if ((ev = GenerateNextTrackEvent(i)) != NULL) {
        InsertGlobalEvent(cseq->section, ev);
      }
    }
  } else {
    for (i = 0; i < 0x40; i += 1) {
      if ((ev = GenerateNextTrackEvent(i)) != NULL) {
        InsertGlobalEvent(cseq->section + cseq->trackSectionTab[i], ev);
      }
    }
  }
}

static void InitTrackEventsSection(u8 secIndex) {
  u32 i;         // r31
  SEQ_EVENT* ev; // r30

  if (cseq->trackSectionTab == NULL) {
    for (i = 0; i < 64; i += 1) {
      if ((ev = GenerateNextTrackEvent(i)) != NULL) {
        InsertGlobalEvent(cseq->section, ev);
      }
    }
  } else {
    for (i = 0; i < 64; i += 1) {
      if ((secIndex == cseq->trackSectionTab[i]) && (ev = GenerateNextTrackEvent(i)) != NULL) {
        InsertGlobalEvent(cseq->section + secIndex, ev);
      }
    }
  }
}

static bool HandleTrackEvents(u8 secIndex, u32 deltaTime) {
  SEQ_EVENT* ev;        // r29
  bool loopFlag;        // r1+0x10
  SEQ_SECTION* section; // r31

  section = &cseq->section[secIndex];
  loopFlag = FALSE;

  while (GetNextEventTime(section) <= section->time[section->timeIndex].high) {
    if ((ev = GetGlobalEvent(section)) == NULL) {
      if (!loopFlag) {
        return FALSE;
      }

      loopFlag = FALSE;
      section->timeIndex ^= 1;
      section->time[section->timeIndex].high = cseq->arrbase->loopPoint[secIndex];
      section->time[section->timeIndex].low = section->time[section->timeIndex ^ 1].low;
      RewindMTrack(secIndex, deltaTime);
      section->loopCnt += 1;
      InitTrackEventsSection(secIndex);
      continue;
    }

    if ((ev = HandleEvent(ev, secIndex, &loopFlag)) != NULL) {
      InsertGlobalEvent(section, ev);
    }
  }

  return TRUE;
}

void seqHandle(u32 deltaTime) {
  u32 x;                // r29
  u32 i;                // r31
  u32 j;                // r28
  u32 eventsActive;     // r25
  u32 notesActive;      // r24
  SEQ_INSTANCE* si;     // r30
  SEQ_INSTANCE* nextSi; // r27

  if (deltaTime == 0) {
    return;
  }

  si = seqActiveRoot;
  while (si != NULL) {
    nextSi = si->next;
    cseq = si;
    curSeqId = si->index;
    curFadeOutState = synthIsFadeOutActive(si->defVGroup);

    if (cseq->trackSectionTab == NULL) {
      HandleMasterTrack(0);
      SetTickDelta(cseq->section, deltaTime);
      eventsActive = HandleTrackEvents(0, deltaTime);
      notesActive = HandleNotes();
      HandleKeyOffNotes();

      for (i = 0; i < 2; ++i) {
        x = cseq->section[0].time[i].low + cseq->section[0].tickDelta[i].low;
        cseq->section[0].time[i].low = x & 0xffff;
        x >>= 16;
        cseq->section[0].time[i].high += x + cseq->section[0].tickDelta[i].high;
      }
    } else {
      eventsActive = 0;
      for (i = 0; i < 16; ++i) {
        HandleMasterTrack(i);
        SetTickDelta(&cseq->section[i], deltaTime);
        eventsActive |= HandleTrackEvents(i, deltaTime);
      }
      notesActive = HandleNotes();
      HandleKeyOffNotes();

      for (i = 0; i < 16; ++i) {
        for (j = 0; j < 2; ++j) {
          x = cseq->section[i].time[j].low + cseq->section[i].tickDelta[j].low;
          cseq->section[i].time[j].low = x & 0xffff;
          x >>= 16;
          cseq->section[i].time[j].high += x + cseq->section[i].tickDelta[j].high;
        }
      }
    }

    if (eventsActive == 0 && notesActive == 0) {
      if (si->prev != NULL) {
        si->prev->next = nextSi;
      } else {
        seqActiveRoot = nextSi;
      }
      if (nextSi != NULL) {
        nextSi->prev = si->prev;
      }
      ResetNotes(si);
      si->state = 0;
      si->prev = NULL;
      if ((si->next = seqFreeRoot) != NULL) {
        seqFreeRoot->prev = si;
      }
      seqFreeRoot = si;
    }
    si = nextSi;
  }
}

void seqInit() {
  u32 i; // r31
  u32 j; // r29

  seqActiveRoot = NULL;
  seqPausedRoot = NULL;
  for (i = 0; i < 8; ++i) {
    if (i == 0) {
      seqFreeRoot = &seqInstance[i];
      seqInstance[i].prev = NULL;
    } else {
      seqInstance[i - 1].next = &seqInstance[i];
      seqInstance[i].prev = &seqInstance[i - 1];
    }
    seqInstance[i].index = i;
    seqInstance[i].state = 0;
    for (j = 0; j < 0x10; ++j) {
      seqMIDIPriority[i][j] = 0xffff;
    }
  }
  seqInstance[i - 1].next = NULL;
  ClearNotes();
  InitPublicIds();
}

#include "musyx/seq.h"
#include "musyx/synth.h"

static NOTE seqNote[256];
SEQ_INSTANCE seqInstance[8];
u16 seqMIDIPriority[8][16];

static SEQ_INSTANCE* cseq = NULL;
static NOTE* noteFree = NULL;
static u32 curSeqId = 0;
static u8 curFadeOutState = 0;
static u32 seq_next_id = 0;
struct SEQ_INSTANCE* seqFreeRoot = NULL;
struct SEQ_INSTANCE* seqActiveRoot = NULL;
struct SEQ_INSTANCE* seqPausedRoot = NULL;

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
      if (n->id != -1 && sndFXCheck(n->id) == -1) {
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
  si = &seqInstance[seqId];
}

u32 seqGetPrivateId(u32 seqId) {
  SEQ_INSTANCE* si; // r31
  for (si = seqActiveRoot; si != NULL; si = si->next) {
    if (si->publicId == (seqId & 0x7fffffff)) {
      return seqId & 0x80000000 | si->index;
    }
  }
  for (si = seqPausedRoot; si != NULL; si = si->next) {
    if (si->publicId == (seqId & 0x7fffffff)) {
      return seqId & 0x80000000 | si->index;
    }
  }
  return 0xffffffff;
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
    return;
  }

  prg = seq->drumTrans[prg];
  if (prg == 0xFF) {
    return;
  }

  seq->prgState[midi].macId = seq->drumtab[prg].macro;
  seq->prgState[midi].priority = seq->drumtab[prg].prio;
  seq->prgState[midi].maxVoices = seq->drumtab[prg].maxVoices;
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
    return -1;
  };
  if ((seqFreeRoot = seqFreeRoot->next) != NULL) {
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

    synthVolume(127, 0, nseq->defVGroup, 0, -1);
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
      synthVolume(para->volume.target, para->volume.time, nseq->defVGroup, 0, -1);

      for (i = 0; i < para->numFaded; ++i) {
        synthVolume(para->volume.target, para->volume.time, para->faded[i], 0, -1);
      }
    }
  }

  arr = (ARR*)song;
  if (arr->info & 0x80000000) {
    nseq->trackSectionTab = (u8*)(arr->tsTab + (u32)arr);
  } else {
    nseq->trackSectionTab = NULL;
  }

  bpm = arr->info & 0x0fffffff;

  if (!(arr->info & 0x40000000)) {
    bpm <<= 10;
  }

  for (i = 0; i < 16; ++i) {
    nseq->section[i].bpm = bpm;
    synthSetBpm(bpm >> 10, seqId & 0xFF, i & 0xFF);

    if (arr->mTrack != NULL) {
      nseq->section[i].mTrack.base = (MTRACK_DATA*)(arr->mTrack + (u32)arr);
      nseq->section[i].mTrack.addr = nseq->section[i].mTrack.base;
    } else {
      nseq->section[i].mTrack.base = NULL;
    }

    nseq->section[i].loopDisable = FALSE;
    nseq->section[i].loopCnt = 0;
  }

  tracktab = &arr->tTab;

  for (i = 0; i < 64; ++i) {
    synthTrackVolume[i] = 127;
    nseq->pattern[i].addr = NULL;
    // TODO: Finish
  }
  return -1;
}

static void SetTickDelta(SEQ_SECTION* section, u32 deltaTime) {
  float tickDelta = (float)section->bpm * (float)deltaTime * 0.0000000244140619f;
  tickDelta *= section->speed * 0.00390625f;

  section->tickDelta[section->timeIndex].low = fmodf(tickDelta * 65536.f, 65536.f);
  section->tickDelta[section->timeIndex].high = floorf(tickDelta);
}

static void HandleMasterTrack(u8 secIndex) {
  SEQ_SECTION* section; // r31
  section = &cseq->section[secIndex];

  if (section->mTrack.base == NULL) {
    return;
  }

  while (section->mTrack.addr->time != -1) {
    if (section->mTrack.addr->time > section->time[section->timeIndex].high) {
      break;
    }

    if (cseq->arrbase->info & 0x40000000) {
      synthSetBpm((section->bpm = section->mTrack.addr->bpm) >> 10, curSeqId, secIndex);
    } else {
      synthSetBpm(section->mTrack.addr->bpm, curSeqId, secIndex);
      section->bpm = section->mTrack.addr->bpm << 10;
    }

    ++section->mTrack.addr;
  }
}

static void RewindMTrack(unsigned char secIndex, unsigned long deltaTime) {
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

  if (seqId == -1) {
    return;
  }

  if (!(seqId & 0x80000000)) {
    si = &seqInstance[seqId];
    if (si->state == 1) {
      StartPause(si);
      KillNotes(si);
      ResetNotes(si);
    }
  } else {
    si = &seqInstance[seqId & 0x7fffffff];
    if (si->state != 0) {
      si->syncCrossInfo.flags |= 8;
    }
  }
}

void seqStop(unsigned long seqId) {
  SEQ_INSTANCE* si; // r31
  ;

  if ((seqId = seqGetPrivateId(seqId)) == -1) {
    return;
  }

  if (!(seqId & 0x80000000)) {
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
    si = &seqInstance[seqId & 0x7fffffff];
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

void seqKillInstancesByGroupID(unsigned short sgid) {
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

void seqSpeed(unsigned long seqId, unsigned short speed) {
  u32 i; // r30

  seqId = seqGetPrivateId(seqId);
  MUSY_ASSERT_MSG(seqId != -1, "Sequencer ID is not valid.");

  if (!(seqId & 0x80000000)) {
    for (i = 0; i < 16; ++i) {
      seqInstance[seqId].section[i].speed = speed;
    }
  } else {
    seqId &= 0x7FFFFFFF;
    seqInstance[seqId].syncCrossInfo.flags |= 0x20;
    seqInstance[seqId].syncCrossInfo.speed2 = speed;
  }
}

void seqContinue(u32 seqId) {
  struct SEQ_INSTANCE* si; // r31

  seqId = seqGetPrivateId(seqId);
  MUSY_ASSERT_MSG(seqId != -1, "Sequencer ID is not valid.");

  if (!(seqId & 0x80000000)) {
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
    seqInstance[seqId & 0x7FFFFFFF].syncCrossInfo.flags &= ~0x8;
  }
}

void seqMute(unsigned long seqId, unsigned long mask1, unsigned long mask2) {
  seqId = seqGetPrivateId(seqId);
  if (seqId == 0xffffffff) {
    return;
  }

  if (!(seqId & 0x80000000)) {
    seqInstance[seqId].trackMute[0] = mask1;
    seqInstance[seqId].trackMute[1] = mask2;
  } else {
    seqId &= 0x7fffffff;
    seqInstance[seqId].syncCrossInfo.flags |= 0x10;
    seqInstance[seqId].syncCrossInfo.trackMute2[0] = mask1;
    seqInstance[seqId].syncCrossInfo.trackMute2[1] = mask2;
  }
}

void seqVolume(unsigned char volume, unsigned short time, unsigned long seqId, unsigned char mode) {
  unsigned long i;      // r29
  unsigned long pub_id; // r27
  // TODO
  // pub_id = seqId;
  seqId = seqGetPrivateId(seqId);

  if (seqId == -1) {
    return;
  }

  if (!(seqId & 0x80000000)) {
    synthVolume(volume, time, seqInstance[seqId].defVGroup, mode, pub_id);
    for (i = 0; i < 64; ++i) {
      if (seqInstance[seqId].trackVolGroup[i] != seqInstance[seqId].defVGroup) {
        synthVolume(volume, time, seqInstance[seqId].trackVolGroup[i], 0, -1);
      }
    }
  } else {
    seqId &= 0x7fffffff;
    switch (mode & 0xf) {
    case 0:
      seqInstance[seqId].syncCrossInfo.vol2 = volume;
      break;
    case 1:
      seqInstance[seqId].syncSeqIdPtr = NULL;
      break;
    case 2:
      seqInstance[seqId].syncCrossInfo.flags |= 8;
      seqInstance[seqId].syncCrossInfo.vol2 = volume;
      break;
    case 3:
      seqInstance[seqId].syncCrossInfo.flags |= 0x80;
      seqInstance[seqId].syncCrossInfo.vol2 = volume;
      break;
    default:
      MUSY_FATAL("Illegal sequencere fade mode detected.");
      break;
    }
  }
}

// TODO: very incomplete
void seqCrossFade(SND_CROSSFADE* ci, unsigned long* new_seqId, unsigned char irq_call) {
  SND_PLAYPARA pp;     // r1+0x14
  unsigned long seqId; // r29
  unsigned short time; // r27
  seqId = seqGetPrivateId(ci->seqId1);

  if ((ci->flags & 0x4) != 0) {
    seqInstance[seqId].syncCrossInfo = *ci;
    seqInstance[seqId].syncActive = TRUE;
    seqInstance[seqId].syncSeqIdPtr = new_seqId;
    seqInstance[seqId].syncCrossInfo.flags &= ~0x4;
    *new_seqId = ci->seqId1 | 0x80000000;
    return;
  }

  if ((irq_call & 0xff) != 0) {
    time = 5;
    if (ci->time1 > 4) {
      time = ci->time1;
    }

    if ((ci->flags & 0x1) != 0) {
      seqVolume(0, time, seqId, 2);
    } else if ((ci->flags & 0x40) != 0) {
      seqVolume(0, time, seqId, 3);
    } else {
      seqVolume(0, time, seqId, 1);
    }

    if (new_seqId != NULL) {
      if ((ci->flags & 0x2) != 0) {
        seqId = seqGetPrivateId(ci->seqId2);
        if (seqId != 0xffffffff) {
          if ((irq_call & 0xff) != 0) {
            seqStop(ci->seqId2);
          } else {
            sndSeqContinue(ci->seqId2);
            sndSeqVolume(ci->vol2, ci->time2, ci->seqId2, 0);
            if ((ci->flags & 0x10) != 0) {
              sndSeqMute(ci->seqId2, ci->trackMute2[0], ci->trackMute2[1]);
            }
            if ((ci->flags & 0x20) != 0) {
              sndSeqSpeed(ci->seqId2, ci->speed2);
            }
          }
          *new_seqId = ci->seqId2;
        } else {
          *new_seqId = 0xffffffff;
        }
      }
    }

    return;
  }

  if ((ci->flags & 0x1) != 0) {
    sndSeqVolume(0, ci->time1, seqId, 2);
  } else if ((ci->flags & 0x40) != 0) {
    sndSeqVolume(0, ci->time1, seqId, 3);
  } else {
    sndSeqVolume(0, ci->time1, seqId, 1);
  }
}

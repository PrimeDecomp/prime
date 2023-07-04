
#include "musyx/musyx_priv.h"

static u32 synthTicksPerSecond[9][16];
static SYNTH_JOBTAB synthJobTable[32];
CTRL_DEST inpAuxA[8][4];
CTRL_DEST inpAuxB[8][4];
s32 synthGlobalVariable[16];
synthITDInfo synthITDDefault[8];
void* synthAuxBUser[8];
SND_AUX_CALLBACK synthAuxBCallback[8];
void* synthAuxAUser[8];
SND_AUX_CALLBACK synthAuxACallback[8];
u8 synthTrackVolume[64];
SYNTHMasterFader synthMasterFader[32];
SynthInfo synthInfo;

u8 sndActive = 0;
static u8 synthJobTableIndex = 0;
u64 synthRealTime;
u8 synthIdleWaitActive;
SYNTH_MESSAGE_CALLBACK synthMessageCallback;
SYNTH_VOICE* synthVoice;
u32 synthFlags;
u32 synthMasterFaderActiveFlags;
u32 synthMasterFaderPauseActiveFlags;
u8 synthAuxAMIDI[8];
u8 synthAuxAMIDISet[8];
u8 synthAuxBMIDI[8];
u8 synthAuxBMIDISet[8];
u8 synthTrackVolume[64]; // size: 0x40

void synthSetBpm(u32 bpm, u8 set, u8 section) {
  if (set == 0xFF) {
    set = 8;
  }
  synthTicksPerSecond[set][section] = ((bpm << 3) * 1536) / 240;
}

u32 synthGetTicksPerSecond(SYNTH_VOICE* svoice) {
  return synthTicksPerSecond[svoice->midiSet == 0xFF ? 8 : svoice->midiSet][svoice->section];
}

static u32 apply_portamento(SYNTH_VOICE* svoice, u32 ccents, u32 deltaTime) {
  u32 old_portCurPitch; // r31

  if ((svoice->cFlags & 0x400) != 0 && (int)((svoice->portDuration - svoice->portTime) >> 8) > 0) {

    old_portCurPitch = svoice->portCurPitch;
    svoice->portCurPitch += (int)deltaTime * ((int)(ccents - svoice->portCurPitch) >> 8) /
                            (int)((svoice->portDuration - svoice->portTime) >> 8);

    if ((old_portCurPitch < ccents && svoice->portCurPitch < ccents) ||
        (old_portCurPitch > ccents && (svoice->portCurPitch > ccents))) {
      ccents = svoice->portCurPitch;
      svoice->portTime += deltaTime;
    } else {
      svoice->portTime = svoice->portDuration;
    }
  }
  return ccents;
}

void synthInitPortamento(SYNTH_VOICE* svoice) {
  if (svoice->cFlags & 0x20000) {
    return;
  }

  if (svoice->portType == 1) {
    if (!(svoice->cFlags & 0x1000)) {
      svoice->portTime = 0;
    } else {
      svoice->portTime = svoice->portDuration;
    }
  } else {
    svoice->portTime = svoice->portDuration;
  }

  svoice->portCurPitch = svoice->lastNote << 16;
}

static u32 do_voice_portamento(u8 key, u8 midi, u8 midiSet, u32 isMaster, u32* rejected) {
  u32 i;                      // r30
  u32 vid;                    // r29
  u32 id;                     // r27
  SYNTH_VOICE* sv;            // r31
  SYNTH_VOICE* last_sv;       // r28
  bool legatoVoiceIsStarting; // r26

  legatoVoiceIsStarting = FALSE;
  vid = SND_ID_ERROR;

  for (i = 0, sv = synthVoice; i < synthInfo.voiceNum; ++i, ++sv) {
    if (sv->id != SND_ID_ERROR && sv->midi == midi && sv->midiSet == midiSet) {
      if ((sv->cFlags & 2) != 0) {
        legatoVoiceIsStarting = TRUE;
      }
      if ((sv->cFlags & 0x10) != 0 && (sv->cFlags & 0x10000000008) != 0x8 && hwIsActive(i)) {
        if (vid == SND_ID_ERROR && (sv->cFlags & 0x20002) == 0x20002) {
          *rejected = TRUE;
          return SND_ID_ERROR;
        }
        last_sv = sv;
        sv->portCurPitch = (sv->curNote * 65536) + (sv->curDetune * 65536) / 100;
        sv->lastNote = sv->curNote;
        sv->curNote = key + ((sv->curNote & 0xff) - sv->orgNote);
        sv->orgNote = key;
        sv->curDetune = 0;
        sv->portTime = 0;
        sv->cFlags |= 0x20000;
        vidRemoveVoiceReferences(&synthVoice[i]);
        if (vid == SND_ID_ERROR) {
          sv->child = SND_ID_ERROR;
          sv->parent = SND_ID_ERROR;
          vid = vidMakeNew(&synthVoice[i], isMaster);
          id = sv->id;
        } else {
          synthVoice[id & 0xff].child = sv->id;
          sv->parent = id;
          id = sv->id;
          vidMakeNew(&synthVoice[i], FALSE);
        }
      }
    }
  }

  if (vid != SND_ID_ERROR) {
    voiceSetLastStarted(last_sv);
    inpSetMidiLastNote(last_sv->midi, last_sv->midiSet, last_sv->curNote);
    *rejected = FALSE;
  } else {
    *rejected = legatoVoiceIsStarting;
  }
  return vid;
}

static u32 check_portamento(u8 key, u8 midi, u8 midiSet, u32 newVID, u32* vid) {
  u32 rejected; // r1+0x14

  if (inpGetMidiCtrl(65, midi, midiSet) > 8064) {
    *vid = do_voice_portamento(key & 0x7f, midi, midiSet, newVID, &rejected);
    return !rejected;
  }
  *vid = 0xFFFFFFFF;
  return 1;
}

static u32 StartKeymap(u16 keymapID, s16 prio, u8 maxVoices, u16 allocId, u8 key, u8 vol,
                       u8 panning, u8 midi, u8 midiSet, u8 section, u16 step, u16 trackid,
                       u32 vidFlag, u8 vGroup, u8 studio, u32 itd);

static u32 StartLayer(u16 layerID, s16 prio, u8 maxVoices, u16 allocId, u8 key, u8 vol, u8 panning,
                      u8 midi, u8 midiSet, u8 section, u16 step, u16 trackid, u32 vidFlag,
                      u8 vGroup, u8 studio, u32 itd) {
  u16 n;      // r1+0x38
  u32 vid;    // r26
  u32 new_id; // r1+0x34
  u32 id;     // r27
  LAYER* l;   // r31
  s32 p;      // r30
  s32 k;      // r29
  u8 v;       // r25
  u8 mKey;    // r24

  vid = SND_ID_ERROR;
  if ((l = dataGetLayer(layerID, &n)) == NULL) {
    goto end;
  }

  mKey = key & 0x7f;
  for (; n != 0; --n, ++l) {
    if (l->id == 0xffff || l->keyLow > mKey || l->keyHigh < mKey) {
      continue;
    }

    k = mKey + l->transpose;
    k = CLAMP(k, 0, 127);

    if ((l->id & 0xC000) == 0) {
      if (check_portamento(k, midi, midiSet, vidFlag, &new_id)) {
        if (new_id != 0xFFFFFFFF) {
          goto apply_new_id;
        } else {
          goto start_new_id;
        }
      }
      continue;
    }

  start_new_id:
    if ((l->panning & 0x80) == 0) {
      p = l->panning - 0x40;
      p += panning;
      // TODO
      // p = CLAMP(p, 0, 0x7f);
      p = CLAMP_INV(p, 0, 0x7f);
    } else {
      p = 0x80;
    }

    v = (vol * l->volume) / 0x7f;
    prio += l->prioOffset;
    prio = CLAMP(prio, 0, 0xff);

    switch (l->id & 0xC000) {
    case 0:
      new_id = macStart(l->id, prio, maxVoices, allocId, k | key & 0x80, v, p, midi, midiSet,
                        section, step, trackid, 0, vGroup, studio, itd);
      break;
    case 0x4000:
      new_id = StartKeymap(l->id, prio, maxVoices, allocId, k | key & 0x80, v, p, midi, midiSet,
                           section, step, trackid, 0, vGroup, studio, itd);
      break;
    case 0x8000:
      new_id = StartLayer(l->id, prio, maxVoices, allocId, k | key & 0x80, v, p, midi, midiSet,
                          section, step, trackid, 0, vGroup, studio, itd);
      break;
    }

    if (new_id != SND_ID_ERROR) {
    apply_new_id:
      if (vid == SND_ID_ERROR) {
        if (vidFlag != 0) {
          vid = vidMakeRoot(&synthVoice[new_id & 0xff]);
        } else {
          vid = new_id;
        }
      } else {
        synthVoice[id & 0xff].child = new_id;
        synthVoice[new_id & 0xff].parent = id;
      }
      id = new_id;
      while (synthVoice[id & 0xff].child != SND_ID_ERROR) {
        id = synthVoice[id & 0xff].child;
      }
    }
  }

end:
  return vid;
}

static u32 StartKeymap(u16 keymapID, s16 prio, u8 maxVoices, u16 allocId, u8 key, u8 vol,
                       u8 panning, u8 midi, u8 midiSet, u8 section, u16 step, u16 trackid,
                       u32 vidFlag, u8 vGroup, u8 studio, u32 itd) {
  u8 o;           // r30
  KEYMAP* keymap; // r31
  s32 p;          // r26
  s32 k;          // r29
  u32 vid;        // r1+0x34

  if ((keymap = dataGetKeymap(keymapID)) != NULL) {
    o = key & 0x7f;
    if (keymap[o].id != 0xffff && (keymap[o].id & 0xc000) != 0x4000) {
      if ((keymap[o].panning & 0x80) == 0) {
        p = (keymap[key].panning - 0x40);
        p += panning;
        if (p < 0) {
          panning = 0;
        } else if (p > 0x7f) {
          panning = 0x7f;
        } else {
          panning = p;
        }
      } else {
        panning = 0x80;
      }

      k = (key & 0x7f) + keymap[o].transpose;
      k = CLAMP(k, 0, 127);

      prio += keymap[o].prioOffset;
      prio = CLAMP(prio, 0, 0xff);

      if ((keymap[o].id & 0xc000) == 0) {
        if (!check_portamento(k & 0xff, midi, midiSet, vidFlag, &vid)) {
          return 0xffffffff;
        }
        if (vid != 0xffffffff) {
          return vid;
        }
        return macStart(keymap[o].id, prio, maxVoices, allocId, k | key & 0x80, vol, panning, midi,
                        midiSet, section, step, trackid, vidFlag, vGroup, studio, itd);
      }

      return StartLayer(keymap[o].id, prio, maxVoices, allocId, k | key & 0x80, vol, panning, midi,
                        midiSet, section, step, trackid, vidFlag & 0xff, vGroup, studio, itd);
    }
  }

  return SND_ID_ERROR;
}

u32 synthStartSound(u16 id, u8 prio, u8 max, u8 key, u8 vol, u8 panning, u8 midi, u8 midiSet,
                    u8 section, u16 step, u16 trackid, u8 vGroup, s16 prioOffset, u8 studio,
                    u32 itd) {
  u32 vid; // r1+0x34

  prio += prioOffset;
  prio = CLAMP(prio, 0, 0xff);

  switch (id & 0xC000) {
  case 0:
    if (!check_portamento(key, midi, midiSet, 1, &vid)) {
      return 0xffffffff;
    }
    if (vid != 0xffffffff) {
      return vid;
    }
    return macStart(id, prio, max, id, key, vol, panning, midi, midiSet, section, step, trackid, 1,
                    vGroup, studio, itd);
  case 0x4000:
    return StartKeymap(id, prio, max, id, key, vol, panning, midi, midiSet, section, step, trackid,
                       1, vGroup, studio, itd);
  case 0x8000:
    return StartLayer(id, prio, max, id, key, vol, panning, midi, midiSet, section, step, trackid,
                      1, vGroup, studio, itd);
  default:
    return SND_ID_ERROR;
  }
}

static u32 convert_cents(SYNTH_VOICE* svoice, u32 ccents) {
  u32 curDetune; // r30
  u32 cpitch;    // r31

  cpitch = sndGetPitch(ccents / 65536, svoice->sInfo) * 65536;
  if ((curDetune = ccents & 0xffff) != 0) {
    cpitch += curDetune * ((sndPitchUpOne(cpitch / 65536) & 0xffff) - (cpitch / 65536 & 0xffff));
  }
  return cpitch;
}

static void UpdateTimeMIDICtrl(SYNTH_VOICE* sv) {
  if (!sv->timeUsedByInput) {
    return;
  }

  sv->timeUsedByInput = 0;
  sv->midiDirtyFlags = 0x1fff;
}

static void LowPrecisionHandler(u32 i) {
  u32 j;            // r30
  s32 pbend;        // r29
  u32 ccents;       // r28
  u32 cpitch;       // r26
  u16 Modulation;   // r24
  u16 portamento;   // r25
  u32 lowDeltaTime; // r27
  SYNTH_VOICE* sv;  // r31
  u32 cntDelta;     // r20
  u32 addFactor;    // r19
  u16 adsr_start;   // r1+0xE
  u16 adsr_delta;   // r1+0xC
  s32 vrange;       // r23
  s32 voff;         // r22

  sv = &synthVoice[i];
  if (!hwIsActive(i) && sv->addr == NULL) {
    goto end;
  }

  lowDeltaTime = synthRealTime - sv->lastLowCallTime;
  sv->lastLowCallTime = synthRealTime;
  for (j = 0; j < 2; ++j) {
    if (sv->lfo[j].period == 0) {
      continue;
    }
    sv->lfo[j].time += lowDeltaTime;
    sv->lfo[j].value =
        sndSin((sv->lfo[j].time % sv->lfo[j].period * 16) / (sv->lfo[j].period / 256));
    if (sv->lfo[j].value != sv->lfo[j].lastValue) {
      sv->lfo[j].lastValue = sv->lfo[j].value;
      if (sv->lfoUsedByInput[j]) {
        sv->lfoUsedByInput[j] = 0;
        sv->midiDirtyFlags |= 0x1fff;
      }
    }
  }

  if ((sv->cFlags & 0x2000) != 0) {
    sv->vibCurTime += lowDeltaTime;
    sv->vibCurOffset = sndSin((sv->vibCurTime % sv->vibPeriod * 16) / (sv->vibPeriod / 256));
  }

  if (sv->sweepNum[0] | sv->sweepNum[1]) {
    cntDelta = (lowDeltaTime & 0x00ffffff) << 4;
    addFactor = lowDeltaTime & 0x0fffffff;
    for (j = 0; j < 2; ++j) {
      if (sv->sweepNum[j] == 0) {
        continue;
      }
      sv->sweepCnt[j] -= cntDelta;
      if (sv->sweepCnt[j] <= 0) {
        sv->sweepCnt[j] = sv->sweepNum[j] << 16;
        sv->sweepOff[j] = 0;
      } else {
        sv->sweepOff[j] += (sv->sweepAdd[j] >> 12) * addFactor;
      }
    }
  }

  for (j = 0; j < 2; ++j) {
    if (sv->panning[j] == sv->panTarget[j]) {
      continue;
    }
    sv->panTime[j] -= lowDeltaTime;
    if ((s32)sv->panTime[j] <= 0) {
      sv->panning[j] = sv->panTarget[j];
      sv->panTime[j] = 0;
    } else {
      sv->panning[j] = sv->panTarget[j] - (sv->panTime[j] / 256) * sv->panDelta[j];
      sv->panning[j] = CLAMP_INV((s32)sv->panning[j], 0, 0x7f0000u);
    }

    sv->cFlags |= 0x200000000000;
  }

  if ((sv->cFlags & 0x20000000000) != 0 &&
      adsrHandleLowPrecision(&sv->pitchADSR, &adsr_start, &adsr_delta)) {
    sv->cFlags &= ~0x20000000000;
  }

  ccents = sv->curNote * 65536 + (sv->curDetune * 65536) / 100;
  if ((sv->cFlags & 0x10010) != 0) {
    if (sv->midi != 0xff) {
      pbend = inpGetPitchBend(sv);
      sv->pbLast = pbend;
      goto pbend_adjust;
    }
  } else {
    pbend = sv->pbLast;
  pbend_adjust:
    if (pbend != 0x2000) {
      pbend -= 0x2000;
      if (pbend < 0) {
        ccents += sv->pbLowerKeyRange * pbend * 8;
      } else {
        ccents += sv->pbUpperKeyRange * pbend * 8;
      }
    }
  }

  if ((sv->cFlags & 0x2000) != 0) {
    Modulation = inpGetModulation(sv);
    vrange = sv->vibKeyRange * 256 + (sv->vibCentRange * 256) / 100;
    if (sv->vibModAddScale != 0) {
      vrange += (sv->vibModAddScale * ((Modulation >> 7) & 0x1ff)) >> 7;
    }
    if ((sv->cFlags & 0x4000) != 0) {
      voff = (sv->vibCurOffset * ((Modulation >> 7) & 0x1ff)) >> 7;
    } else {
      voff = sv->vibCurOffset;
    }
    ccents += (vrange * voff) >> 4;
  }

  if (sv->midi != 0xff) {
    portamento = inpGetMidiCtrl(SND_MIDICTRL_PORTAMENTO, sv->midi, sv->midiSet);
    if (portamento != sv->portLastCtrlState || (sv->cFlags & 0x21000) == 0x20000) {
      if (portamento <= 0x1f80) {
        sv->cFlags &= ~0x400;
      } else {
        if ((sv->cFlags & 0x400) == 0) {
          synthInitPortamento(sv);
        }
        sv->cFlags |= 0x400;
      }
      sv->cFlags |= 0x1000;
      sv->portLastCtrlState = portamento;
    }
  }

  ccents = apply_portamento(sv, ccents, lowDeltaTime);
  if ((sv->cFlags & 0x20000000000) != 0) {
    ccents += sv->pitchADSRRange * (sv->pitchADSR.currentVolume >> 16) >> 7;
  }

  cpitch = convert_cents(sv, ccents);
  cpitch += sv->sweepOff[0] + sv->sweepOff[1];
  cpitch = ((cpitch >> 16) * inpGetDoppler(sv)) >> 13;
  sv->curPitch = cpitch;

  hwSetPitch(i, cpitch);
  synthAddJob(sv, 0, 0xf00);

end:
  UpdateTimeMIDICtrl(sv);
}

static void ZeroOffsetHandler(u32 i) {
  SYNTH_VOICE* sv;  // r31
  u32 lowDeltaTime; // r26
  u16 Modulation;   // r25
  f32 vol;          // r62
  f32 auxa;         // r57
  f32 auxb;         // r56
  f32 f;            // r59
  f32 voiceVol;     // r60
  u32 volUpdate;    // r30
  f32 lfo;          // r55
  f32 scale;        // r63
  f32 mscale;       // r54
  s32 pan;          // r28
  f32 preVol;       // r58
  f32 postVol;      // r61
}

static void EventHandler(u32 i) {
  SYNTH_VOICE* sv; // r31
}

static void synthInitJobQueue() {
  u8 i; // r31

  for (i = 0; i < 32; ++i) {
    synthJobTable[i].lowPrecision = NULL;
    synthJobTable[i].event = NULL;
    synthJobTable[i].zeroOffset = NULL;
  }

  synthJobTableIndex = 0;
}

#pragma dont_inline on
void synthAddJob(SYNTH_VOICE* svoice, SYNTH_JOBTYPE jobType, u32 deltaTime) {
  SYNTH_QUEUE* newJq;   // r31
  SYNTH_QUEUE** root;   // r30
  u8 jobTabIndex;       // r29
  SYNTH_JOBTAB* jobTab; // r28
}
#pragma dont_inline reset

void synthStartSynthJobHandling(SYNTH_VOICE* svoice) {
  svoice->lastLowCallTime = synthRealTime;
  svoice->lastZeroCallTime = synthRealTime;
  synthAddJob(svoice, SYNTH_JOBTYPE_LOW, 0);
  synthAddJob(svoice, SYNTH_JOBTYPE_ZERO, 0);
}

void synthForceLowPrecisionUpdate(SYNTH_VOICE* svoice) {
  synthAddJob(svoice, SYNTH_JOBTYPE_LOW, 0);
  synthAddJob(svoice, SYNTH_JOBTYPE_ZERO, 0);
}

void synthKeyStateUpdate(SYNTH_VOICE* svoice) { synthAddJob(svoice, SYNTH_JOBTYPE_EVENT, 0); }

void HandleJobQueue(SYNTH_QUEUE** queueRoot, void (*handler)(u32)) {
  SYNTH_QUEUE* jq;     // r31
  SYNTH_QUEUE* nextJq; // r30

  jq = *queueRoot;
  while (jq != NULL) {
    nextJq = jq->next;
    jq->jobTabIndex = 0xff;
    if (!synthVoice[jq->voice].block) {
      handler(jq->voice);
    }
    jq = nextJq;
  }

  *queueRoot = NULL;
}

void HandleVoices() {
  SYNTH_JOBTAB* jTab = &synthJobTable[synthJobTableIndex]; // r31
  HandleJobQueue(&jTab->lowPrecision, LowPrecisionHandler);
  HandleJobQueue(&jTab->event, EventHandler);
  HandleJobQueue(&jTab->zeroOffset, ZeroOffsetHandler);
  synthJobTableIndex = synthJobTableIndex + 1 & 0x1f;
}

void HandleFaderTermination(SYNTHMasterFader* smf) {

  switch (smf->seqMode) {
  case 1:
    seqStop(smf->seqId);
    break;
  case 2:
    seqPause(smf->seqId);
    break;
  case 3:
    seqMute(smf->seqId, 0, 0);
    break;
  }
}

void synthHandle(u32 deltaTime) {
  u32 i;                 // r29
  u32 s;                 // r30
  SYNTHMasterFader* smf; // r31
  u32 testFlag;          // r27
  SND_AUX_INFO info;     // r1+0x18
}

u8 synthFXGetMaxVoices(u16 fid) {
  FX_TAB* fx;
  if ((fx = dataGetFX(fid)) != NULL) {
    return fx->maxVoices;
  }

  return 0;
}

u32 synthFXStart(u16 fid, u8 vol, u8 pan, u8 studio, u32 itd) {
  FX_TAB* fx;
  u32 v;
  v = 0xFFFFFFFF;
  if ((fx = dataGetFX(fid)) != NULL) {
    if (vol == 0xFF) {
      vol = fx->volume;
    }

    if (pan == 0xFF) {
      pan = fx->panning;
    }

    v = synthStartSound(fx->macro, fx->priority, fx->maxVoices, fx->key | 0x80, vol, pan, 0xFF,
                        0xFF, 0, 0, 0xFF, fx->vGroup, 0, studio, itd);
  }

  return v;
}

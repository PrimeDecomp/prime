
#include "musyx/synth.h"
#include "musyx/assert.h"
#include "musyx/hardware.h"
#include "musyx/macros.h"
#include "musyx/sal.h"
#include "musyx/seq.h"
#include "musyx/snd.h"
#include "musyx/synthdata.h"

#include <string.h>

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

static void synthAddJob(SYNTH_VOICE* svoice, SYNTH_JOBTYPE jobType, u32 deltaTime);

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
    if (
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
        sv->block == 0 &&
#endif
        sv->id != SND_ID_ERROR && sv->midi == midi && sv->midiSet == midiSet) {
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

  if (inpGetMidiCtrl(65 /* TODO SND_MIDICTRL_? */, midi, midiSet) > 8064) {
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
      if (check_portamento(k, midi, midiSet,
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
                           0,
#else
                           vidFlag,
#endif
                           &new_id)) {
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
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
        synthVoice[id & 0xff].block = 1;
#endif
        id = synthVoice[id & 0xff].child;
      }
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
      synthVoice[id & 0xff].block = 1;
#endif
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

#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
static void unblockAllAllocatedVoices(u32 vid) {
  u32 id; // r31

  id = vidGetInternalId(vid);
  MUSY_ASSERT_MSG(id != SND_ID_ERROR, "*** Alloc unblock: ID is illegal");
  while (id != SND_ID_ERROR) {
    synthVoice[id & 0xff].block = 0;
    id = synthVoice[id & 0xff].child;
  }
}
#endif

u32 synthStartSound(u16 id, u8 prio, u8 max,
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 1)
                    u32 sourceID,
#endif
                    u8 key, u8 vol, u8 panning, u8 midi, u8 midiSet, u8 section, u16 step,
                    u16 trackid, u8 vGroup, s16 prioOffset, u8 studio, u32 itd) {
  prio += prioOffset;
  prio = CLAMP(prio, 0, 0xff);

  switch (id & 0xC000) {
  case 0: {
    u32 vid; // r1+0x34
    if (!check_portamento(key, midi, midiSet, 1, &vid)) {
      return SND_ID_ERROR;
    }
    if (vid != SND_ID_ERROR) {
      return vid;
    }
    return macStart(id, prio, max, id, key, vol, panning, midi, midiSet, section, step, trackid, 1,
                    vGroup, studio, itd);
  }
  case 0x4000: {
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
    u32 vid = StartKeymap(id, prio, max, id, key, vol, panning, midi, midiSet, section, step,
                          trackid, 1, vGroup, studio, itd);
    if (vid != SND_ID_ERROR) {
      unblockAllAllocatedVoices(vid);
    }
    return vid;
#else
    return StartKeymap(id, prio, max, id, key, vol, panning, midi, midiSet, section, step, trackid,
                       1, vGroup, studio, itd);
#endif
  }
  case 0x8000: {
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
    u32 vid = StartLayer(id, prio, max, id, key, vol, panning, midi, midiSet, section, step,
                         trackid, 1, vGroup, studio, itd);
    if (vid != SND_ID_ERROR) {
      unblockAllAllocatedVoices(vid);
    }
    return vid;
#else
    return StartLayer(id, prio, max, id, key, vol, panning, midi, midiSet, section, step, trackid,
                      1, vGroup, studio, itd);
#endif
  }
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
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
  sv->midiDirtyFlags = 0x7fff;
#else
  sv->midiDirtyFlags = 0x1fff;
#endif
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
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
        sv->midiDirtyFlags |= 0x7fff;
#else
        sv->midiDirtyFlags |= 0x1fff;
#endif
      }
    }
  }

  if ((sv->cFlags & 0x2000) != 0) {
    sv->vibCurTime += lowDeltaTime;
    sv->vibCurOffset = sndSin((sv->vibCurTime % sv->vibPeriod * 16) / (sv->vibPeriod / 256));
  }

  if (sv->sweepNum[0] | sv->sweepNum[1]) {
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
    cntDelta = (lowDeltaTime << 8) >> 4;
    addFactor = (lowDeltaTime << 4) >> 4;
#else
    cntDelta = (lowDeltaTime & 0x00ffffff) << 4;
    addFactor = lowDeltaTime & 0x0fffffff;
#endif
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
  if ((sv->cFlags &
#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
       0x10030
#else
       0x10010
#endif
       ) != 0) {
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
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
      vrange += (sv->vibModAddScale * (Modulation >> 7)) >> 7;
#elif MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
      vrange += (sv->vibModAddScale * ((Modulation & 0x1ffff) >> 7)) >> 7;
#else
      vrange += (sv->vibModAddScale * ((Modulation >> 7) & 0x1ff)) >> 7;
#endif
    }
    if ((sv->cFlags & 0x4000) != 0) {
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
      voff = (sv->vibCurOffset * (Modulation >> 7)) >> 7;
#elif MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
      voff = (sv->vibCurOffset * ((Modulation & 0x1ffff) >> 7)) >> 7;
#else
      voff = (sv->vibCurOffset * ((Modulation >> 7) & 0x1ff)) >> 7;
#endif
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
  f32 vol;          // f30
  f32 auxa;         // f25
  f32 auxb;         // f24
  f32 f;            // f27
  f32 voiceVol;     // f28
  bool volUpdate;   // r30
  f32 lfo;          // f23
  f32 scale;        // f31
  f32 mscale;       // f22
  s32 pan;          // r28
  f32 preVol;       // f26
  f32 postVol;      // f29
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
  unsigned short para; // r22
  unsigned short a0;   // r1+0xA
  unsigned short b0;   // r1+0x8
  unsigned long frq;   // r21
#endif

  sv = &synthVoice[i];
  if (!hwIsActive(i) && sv->addr == NULL) {
    goto end;
  }

  lowDeltaTime = synthRealTime - sv->lastZeroCallTime;
  sv->lastZeroCallTime = synthRealTime;

  if ((sv->cFlags & 0x8000) != 0) {
    sv->envCurrent += sv->envDelta * (lowDeltaTime >> 8);
    if (sv->envDelta < 0) {
      if ((s32)sv->envTarget >= (s32)sv->envCurrent) {
        sv->envCurrent = sv->envTarget;
        sv->cFlags &= ~0x8000;
      }
    } else if ((s32)sv->envTarget <= (s32)sv->envCurrent) {
      sv->envCurrent = sv->envTarget;
      sv->cFlags &= ~0x8000;
    }
    sv->volume = sv->envCurrent;
    volUpdate = TRUE;
  } else {
    volUpdate = (sv->cFlags & 0x100000000000) != 0;
  }

  sv->cFlags &= ~0x100000000000;

  f = synthMasterFader[sv->vGroup].pauseVol * synthMasterFader[sv->vGroup].volume *
      synthMasterFader[sv->fxFlag ? 22 : 21].volume;

  if (sv->track != 0xff) {
    vol = f * (f32)synthTrackVolume[sv->track] * (1.f / 127.f);
  } else {
    vol = f;
  }

  if (vol != sv->lastVolFaderScale) {
    sv->lastVolFaderScale = vol;
    volUpdate = TRUE;
  }

  voiceVol = (f32)sv->volume * (1.f / (8192.f * 1016.f) /* 1.201479e-07 */);

  if ((sv->treScale | sv->treModAddScale) != 0) {
    Modulation = inpGetModulation(sv);
    lfo = (f32)(8192 - (8192 - ((s16)inpGetTremolo(sv) - 8192) >> 1)) * (1.f / 8192.f);
    mscale = 1.f - (f32)Modulation * (4096 - sv->treModAddScale) * 1.490207e-08f /* 1/(8192^2)? */;
    scale = (f32)sv->treScale * mscale * (1.f / 4096.f);
    if (sv->treCurScale < scale) {
      if ((sv->treCurScale += 0.2f) > scale) {
        sv->treCurScale = scale;
      }
    } else if (sv->treCurScale > scale) {
      if ((sv->treCurScale -= 0.2f) < scale) {
        sv->treCurScale = scale;
      }
    }
    voiceVol *= 1.f - lfo * (1.f - sv->treCurScale);
    volUpdate = TRUE;
  }

  if ((synthFlags & 1) == 0) {
    if ((sv->cFlags & 0x200000000000) != 0 || (sv->midiDirtyFlags & 0x6) != 0) {
      sv->cFlags &= ~0x200000000000;
      pan = sv->panning[0] + (inpGetPanning(sv) - 8192) * 0x200;
      sv->lastPan = CLAMP_INV(pan, 0, 0x7f0000);

      if ((synthFlags & 2) != 0) {
        if ((sv->lastSPan = sv->panning[1] + inpGetSurPanning(sv) * 512) > 0x7f0000) {
          sv->lastSPan = 0x7f0000;
        }
      } else {
        sv->lastSPan = 0;
      }

      volUpdate = TRUE;
    } else if ((synthFlags & 2) == 0) {
      sv->lastSPan = 0;
    }
  } else {
    sv->lastPan = 0x400000;
    sv->lastSPan = 0;
    volUpdate |= (sv->cFlags & 0x200000000000) != 0;
    sv->cFlags &= ~0x200000000000;
  }

  if (volUpdate || (sv->midiDirtyFlags & 0xf01) != 0) {
    preVol = voiceVol;
    postVol = voiceVol * vol * (f32)inpGetVolume(sv) * (1.f / 16383.f) /* 1/16384? */;
    auxa = ((f32)sv->revVolOffset * (1.f / 127.f)) +
           ((preVol * (f32)inpGetPreAuxA(sv) * (1.f / 16383.f) /* 1/16384? */) +
            ((f32)sv->revVolScale *
             (postVol * (f32)inpGetReverb(sv) * (1.f / 16383.f) /* 1/16384? */) * (1.f / 127.f)));
    auxb = (preVol * (f32)inpGetPreAuxB(sv) * (1.f / 16383.f) /* 1/16384? */) +
           (postVol * (f32)inpGetPostAuxB(sv) * (1.f / 16383.f) /* 1/16384? */);
    sv->curOutputVolume = (u16)(postVol * 32767.f);
    hwSetVolume(i, sv->volTable, postVol, sv->lastPan, sv->lastSPan, auxa, auxb);
  }
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
  if (sv->midiDirtyFlags & 0x6000) {
    if (inpGetFilterSwitch(sv) > 0x1FFF) {
      para = inpGetFilterParameter(sv);
      frq = sv->lpfLowerFrqBoundary + (u32)((1.f - ((1.f / 16383.f) * para)) *
                                            (sv->lpfUpperFrqBoundary - sv->lpfLowerFrqBoundary));
      hwLowPassFrqToCoef(frq, &a0, &b0);
      hwSetFilter(i, 1, a0, b0);
    } else {
      hwSetFilter(i, 0, 0, 0);
    }
  }
#endif
  if (sv->age != 0) {
    if ((s32)(sv->age -= sv->ageSpeed * lowDeltaTime) < 0) {
      sv->age = 0;
    }
    hwSetPriority(i, sv->prio << 24 | sv->age >> 15);
  }

  synthAddJob(sv, SYNTH_JOBTYPE_ZERO, (5 - hwGetTimeOffset()) * 256);

end:
  UpdateTimeMIDICtrl(sv);
}

static void EventHandler(u32 i) {
  SYNTH_VOICE* sv; // r31

  sv = &synthVoice[i];
  if (!hwIsActive(i) && sv->addr == NULL) {
    goto end;
  }

  macSetPedalState(sv, inpGetPedal(sv) > 0x1f80);

  if ((sv->cFlags & 0x20) != 0) {
    sv->cFlags &= ~0x20;
    sv->cFlags |= 0x10;
    hwStart(i, sv->studio);
  }

  if ((sv->cFlags & 0x10000000090) == 0x90) {
    sv->cFlags &= ~0x90;
    hwKeyOff(i);
    if ((sv->cFlags & 0x20000000000) != 0 && adsrRelease(&sv->pitchADSR)) {
      sv->cFlags &= ~0x20000000000;
    }
  }

end:
  UpdateTimeMIDICtrl(sv);
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

static void synthAddJob(SYNTH_VOICE* svoice, SYNTH_JOBTYPE jobType, u32 deltaTime) {
  SYNTH_QUEUE* newJq;   // r31
  SYNTH_QUEUE** root;   // r30
  u8 jobTabIndex;       // r29
  SYNTH_JOBTAB* jobTab; // r28

  jobTabIndex = ((deltaTime / 256) + synthJobTableIndex) & 0x1f;
  jobTab = &synthJobTable[jobTabIndex];

  switch (jobType) {
  case SYNTH_JOBTYPE_LOW:
    newJq = &svoice->lowPrecisionJob;
    if (newJq->jobTabIndex != 0xff) {
      if (newJq->jobTabIndex == jobTabIndex) {
        return;
      }
      if (newJq->next != NULL) {
        newJq->next->prev = newJq->prev;
      }
      if (newJq->prev != NULL) {
        newJq->prev->next = newJq->next;
      } else {
        synthJobTable[newJq->jobTabIndex].lowPrecision = newJq->next;
      }
    }
    root = &jobTab->lowPrecision;
    break;
  case SYNTH_JOBTYPE_ZERO:
    newJq = &svoice->zeroOffsetJob;
    if (newJq->jobTabIndex != 0xff) {
      if (newJq->jobTabIndex == jobTabIndex) {
        return;
      }
      if (newJq->next != NULL) {
        newJq->next->prev = newJq->prev;
      }
      if (newJq->prev != NULL) {
        newJq->prev->next = newJq->next;
      } else {
        synthJobTable[newJq->jobTabIndex].zeroOffset = newJq->next;
      }
    }
    root = &jobTab->zeroOffset;
    break;
  case SYNTH_JOBTYPE_EVENT:
    newJq = &svoice->eventJob;
    if (newJq->jobTabIndex != 0xff) {
      return;
    }
    root = &jobTab->event;
    break;
  default:
    break;
  }

  newJq->jobTabIndex = jobTabIndex;
  if ((newJq->next = *root) != NULL) {
    (*root)->prev = newJq;
  }
  newJq->prev = NULL;
  *root = newJq;
}

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

static void HandleJobQueue(SYNTH_QUEUE** queueRoot, void (*handler)(u32)) {
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

static void HandleVoices() {
  SYNTH_JOBTAB* jTab = &synthJobTable[synthJobTableIndex]; // r31
  HandleJobQueue(&jTab->lowPrecision, LowPrecisionHandler);
  HandleJobQueue(&jTab->event, EventHandler);
  HandleJobQueue(&jTab->zeroOffset, ZeroOffsetHandler);
  synthJobTableIndex = synthJobTableIndex + 1 & 0x1f;
}

static void HandleFaderTermination(SYNTHMasterFader* smf) {
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

  if (synthInfo.numSamples == 0) {
    return;
  }

  macHandle(deltaTime);
  HandleVoices();

  if (hwGetTimeOffset() == 0) {
    if ((synthMasterFaderActiveFlags | synthMasterFaderPauseActiveFlags) != 0) {
      for (i = 0, smf = synthMasterFader, testFlag = 1; i < 32; testFlag <<= 1, ++i, ++smf) {
        if ((synthMasterFaderActiveFlags & testFlag) != 0) {
          smf->volume = smf->target - smf->time * (smf->target - smf->start);
          if ((smf->time -= smf->deltaTime) <= 0.f) {
            smf->volume = smf->target;
            HandleFaderTermination(smf);
            if ((synthMasterFaderActiveFlags &= ~testFlag) == 0 &&
                synthMasterFaderPauseActiveFlags == 0) {
              break;
            }
          }
        }

        if ((synthMasterFaderPauseActiveFlags & testFlag) != 0) {
          smf->pauseVol = smf->pauseTarget - smf->pauseTime * (smf->pauseTarget - smf->pauseStart);
          if ((smf->pauseTime -= smf->pauseDeltaTime) <= 0.f) {
            smf->pauseVol = smf->pauseTarget;
            if ((synthMasterFaderPauseActiveFlags &= ~testFlag) == 0 &&
                synthMasterFaderActiveFlags == 0) {
              break;
            }
          }
        }
      }
    }

    for (s = 0; s < 8; ++s) {
      if (synthAuxAMIDI[s] != 0xff) {
        SND_AUX_INFO info; // r1+0x18
        for (i = 0; i < SND_AUX_NUMPARAMETERS; ++i) {
          info.data.parameterUpdate.para[i] =
              inpGetAuxA(s, i, synthAuxAMIDI[s], synthAuxAMIDISet[s]);
        }
        synthAuxACallback[s](SND_AUX_REASON_PARAMETERUPDATE, &info, synthAuxAUser[s]);
      }

      if (synthAuxBMIDI[s] != 0xff) {
        SND_AUX_INFO info; // r1+0xC
        for (i = 0; i < SND_AUX_NUMPARAMETERS; ++i) {
          info.data.parameterUpdate.para[i] =
              inpGetAuxB(s, i, synthAuxBMIDI[s], synthAuxBMIDISet[s]);
        }
        synthAuxBCallback[s](SND_AUX_REASON_PARAMETERUPDATE, &info, synthAuxBUser[s]);
      }
    }
  }

  hwFrameDone();
  synthRealTime += deltaTime;
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

    v = synthStartSound(fx->macro, fx->priority, fx->maxVoices,
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 1)
                        0, // TODO
#endif
                        fx->key | 0x80, vol, pan, 0xFF, 0xFF, 0, 0, 0xFF, fx->vGroup, 0, studio,
                        itd);
  }

  return v;
}

#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
int synthCheckFXRealloc(unsigned short fid) {
  struct FX_TAB* fx;            // r31
  unsigned long allocId;        // r30
  unsigned long currentAllocId; // r1+0x8

  fx = dataGetFX(fid);
  if (fx == NULL) {
    return 0;
  }

  allocId = fid | 0x80000000;

  if (!voiceAllocatePeek(fx->priority, fx->maxVoices, allocId, TRUE, &currentAllocId)) {
    return 0;
  }
  return allocId == currentAllocId;
}
#endif

bool synthFXSetCtrl(u32 vid, u8 ctrl, u8 value) {
  u32 i;   // r31
  u32 ret; // r29

  ret = FALSE;
  vid = vidGetInternalId(vid);

  while (vid != SND_ID_ERROR) {
    i = vid & 0xff;
    if (vid == synthVoice[i].id) {
      if ((synthVoice[i].cFlags & 0x2) != 0) {
        inpSetMidiCtrl(ctrl, i, synthVoice[i].setup.midiSet, value);
      } else {
        inpSetMidiCtrl(ctrl, i, synthVoice[i].midiSet, value);
      }

      vid = synthVoice[i].child;
      ret = TRUE;
    } else {
      return ret;
    }
  }

  return ret;
}

bool synthFXSetCtrl14(u32 vid, u8 ctrl, u16 value) {
  u32 i;   // r31
  u32 ret; // r29

  ret = FALSE;
  vid = vidGetInternalId(vid);

  while (vid != SND_ID_ERROR) {
    i = vid & 0xff;
    if (vid == synthVoice[i].id) {
      if ((synthVoice[i].cFlags & 0x2) != 0) {
        inpSetMidiCtrl14(ctrl, i, synthVoice[i].setup.midiSet, value);
      } else {
        inpSetMidiCtrl14(ctrl, i, synthVoice[i].midiSet, value);
      }

      vid = synthVoice[i].child;
      ret = TRUE;
    } else {
      return ret;
    }
  }

  return ret;
}

void synthFXCloneMidiSetup(SYNTH_VOICE* dest, SYNTH_VOICE* src) {
  inpFXCopyCtrl(SND_MIDICTRL_VOLUME, dest, src);
  inpFXCopyCtrl(SND_MIDICTRL_PANNING, dest, src);
  inpFXCopyCtrl(SND_MIDICTRL_REVERB, dest, src);
  inpFXCopyCtrl(SND_MIDICTRL_PITCHBEND, dest, src);
  inpFXCopyCtrl(SND_MIDICTRL_DOPPLER, dest, src);
}

static bool synthFXVolume(u32 vid, u8 vol) {
  u32 i;   // r31
  u32 ret; // r29

  ret = FALSE;
  vid = vidGetInternalId(vid);

  while (vid != SND_ID_ERROR) {
    i = vid & 0xff;
    if (vid == synthVoice[i].id) {
      if ((synthVoice[i].cFlags & 0x2) != 0) {
        inpSetMidiCtrl(SND_MIDICTRL_VOLUME, i, synthVoice[i].setup.midiSet, vol);
      } else {
        inpSetMidiCtrl(SND_MIDICTRL_VOLUME, i, synthVoice[i].midiSet, vol);
      }

      vid = synthVoice[i].child;
      ret = TRUE;
    } else {
      return ret;
    }
  }

  return ret;
}

bool synthSendKeyOff(u32 voiceid) {
  u32 i;   // r30
  bool ret; // r29

  ret = FALSE;

  if (sndActive != 0) {
    voiceid = vidGetInternalId(voiceid);

    while (voiceid != SND_ID_ERROR) {
      i = voiceid & 0xff;

      if (voiceid == synthVoice[i].id) {
        macSetExternalKeyoff(&synthVoice[i]);
        ret = TRUE;
      }

      voiceid = synthVoice[i].child;
    }
  }

  return ret;
}

u16 synthGetVolume(u32 vid) {
  u32 i; // r30

  vid = vidGetInternalId(vid);
  if (vid != SND_ID_ERROR) {
    i = vid & 0xff;
    if (vid == synthVoice[i].id && (synthVoice[i].cFlags & 0x2) == 0) {
      return synthVoice[i].curOutputVolume;
    }
  }

  return 0;
}

static void SetupFader(SYNTHMasterFader* smf, u8 volume, u32 time, u8 seqMode, u32 seqId) {
  smf->seqMode = seqMode;
  smf->seqId = seqId;
  if (time != 0) {
    smf->start = smf->volume;
    smf->target = (f32)volume * (1.f / 127.f);
    smf->time = 1.f;
    smf->deltaTime = 1280.f / (f32)time;
  } else {
    smf->volume = smf->target = (f32)volume * (1.f / 127.f);
    if (smf->seqId != SND_ID_ERROR) {
      HandleFaderTermination(smf);
    }
  }
}

void synthVolume(u8 volume, u16 time, u8 vGroup, u8 seqMode, u32 seqId) {
  u32 ltime;             // r1+0x14
  u32 i;                 // r30
  u8 type;               // r29
  SYNTHMasterFader* smf; // r31

  if ((ltime = time) != 0) {
    sndConvertMs(&ltime);
  }

  switch (vGroup) {
  case SND_ALL_VOLGROUPS:
    for (smf = synthMasterFader, i = 0; i < 32; ++i, ++smf) {
      if (smf->type == 0 || smf->type == 1) {
        SetupFader(smf, volume, ltime, seqMode, SND_ID_ERROR);
        synthMasterFaderActiveFlags |= 1 << i;
      }
    }
    return;

  case SND_USERALL_VOLGROUPS:
    for (smf = synthMasterFader, i = 0; i < 32; ++i, ++smf) {
      if (smf->type == 2 || smf->type == 3) {
        SetupFader(smf, volume, ltime, seqMode, SND_ID_ERROR);
        synthMasterFaderActiveFlags |= 1 << i;
      }
    }
    return;

  case SND_USERMUSIC_VOLGROUPS:
    type = 2;
    goto setup_type;

  case SND_USERFX_VOLGROUPS:
    type = 3;
    goto setup_type;

  case SND_MUSIC_VOLGROUPS:
    type = 0;
    goto setup_type;

  case SND_FX_VOLGROUPS:
    type = 1;
    goto setup_type;

  setup_type:
    for (smf = synthMasterFader, i = 0; i < 32; ++i, ++smf) {
      if (smf->type == type) {
        SetupFader(smf, volume, ltime, seqMode, SND_ID_ERROR);
        synthMasterFaderActiveFlags |= 1 << i;
      }
    }
    return;

  default:
    SetupFader(&synthMasterFader[vGroup], volume, ltime, seqMode, seqId);
    synthMasterFaderActiveFlags |= 1 << vGroup;
    return;
  }
}

bool synthIsFadeOutActive(u8 vGroup) {
  if (synthMasterFader[vGroup].type != 4 && (synthMasterFaderActiveFlags & (1 << vGroup)) != 0 &&
      synthMasterFader[vGroup].start > synthMasterFader[vGroup].target) {
    return TRUE;
  }
  return FALSE;
}

void synthPauseVolume(u8 volume, u16 time, u8 vGroup) {
  u32 i;                 // r30
  u32 ltime;             // r1+0x10
  u8 type;               // r28
  SYNTHMasterFader* smf; // r31

  if (time == 0) {
    ++time;
  }
  ltime = time & 0xffff;
  sndConvertMs(&ltime);

  switch (vGroup) {
  case SND_ALL_VOLGROUPS:
    for (smf = synthMasterFader, i = 0; i < 32; ++i, ++smf) {
      if (synthMasterFader[i].type == 0 || synthMasterFader[i].type == 1) {
        smf->pauseStart = smf->pauseVol;
        smf->pauseTarget = (f32)volume * (1.f / 127.f);
        smf->pauseTime = 1.f;
        smf->pauseDeltaTime = 1280.f / (f32)ltime;
        synthMasterFaderActiveFlags |= 1 << i;
      }
    }
    return;

  case SND_USERALL_VOLGROUPS:
    for (smf = synthMasterFader, i = 0; i < 32; ++i, ++smf) {
      if (synthMasterFader[i].type == 2 || synthMasterFader[i].type == 3) {
        smf->pauseStart = smf->pauseVol;
        smf->pauseTarget = (f32)volume * (1.f / 127.f);
        smf->pauseTime = 1.f;
        smf->pauseDeltaTime = 1280.f / (f32)ltime;
        synthMasterFaderActiveFlags |= 1 << i;
      }
    }
    return;

  case SND_USERMUSIC_VOLGROUPS:
    type = 2;
    goto setup_type;

  case SND_USERFX_VOLGROUPS:
    type = 3;
    goto setup_type;

  case SND_MUSIC_VOLGROUPS:
    type = 0;
    goto setup_type;

  case SND_FX_VOLGROUPS:
    type = 1;
    goto setup_type;

  setup_type:
    for (smf = synthMasterFader, i = 0; i < 32; ++i, ++smf) {
      if (synthMasterFader[i].type == type) {
        smf->pauseStart = smf->pauseVol;
        smf->pauseTarget = (f32)volume * (1.f / 127.f);
        smf->pauseTime = 1.f;
        smf->pauseDeltaTime = 1280.f / (f32)ltime;
        synthMasterFaderActiveFlags |= 1 << i;
      }
    }
    return;

  default:
    smf = &synthMasterFader[vGroup];
    smf->pauseStart = smf->pauseVol;
    smf->pauseTarget = (f32)volume * (1.f / 127.f);
    smf->pauseTime = 1.f;
    smf->pauseDeltaTime = 1280.f / (f32)ltime;
    synthMasterFaderActiveFlags |= 1 << vGroup;
    return;
  }
}

void synthSetMusicVolumeType(u8 vGroup, u8 type) {
  if (sndActive) {
    synthMasterFader[vGroup].type = type;
  }
}

static u32 synthHWMessageHandler(u32 mesg, u32 voiceID) {
  u32 ret; // r30

  ret = FALSE;

  switch (mesg) {
  case 0:
    if (synthVoice[voiceID & 0xff].block != 0) {
      break;
    }
    vsSampleEndNotify(hwGetVirtualSampleID(voiceID & 0xff));
    if (voiceID != synthVoice[voiceID & 0xff].id) {
      break;
    }
    macSampleEndNotify(&synthVoice[voiceID & 0xff]);
    break;

  case 1:
    voiceKill(voiceID & 0xff);
    break;

  case 2:
    ret = vsSampleStartNotify(voiceID);
    break;

  case 3:
    vsSampleEndNotify(hwGetVirtualSampleID(voiceID & 0xff));
    break;

  default:
    MUSY_ASSERT(FALSE);
    break;
  }

  return ret;
}

void synthInit(u32 mixFrq, u32 numVoices) {
  u32 i; // r31

  synthRealTime = 0;
  synthInfo.mixFrq = mixFrq;
  synthSetBpm(120, 255, 0);
  synthFlags = 0;
  synthMessageCallback = NULL;

  synthVoice = salMalloc(numVoices * sizeof(SYNTH_VOICE));
  if (synthVoice == NULL) {
    MUSY_FATAL("Fatal: Could not allocate synthesizer voice array.");
  }
  memset(synthVoice, 0, numVoices * sizeof(SYNTH_VOICE));

  for (i = 0; i < numVoices; ++i) {
    synthVoice[i].id = 0xffffffff;
    synthVoice[i].cFlags = 0;
    synthVoice[i].age = 0;
    synthVoice[i].prio = 0;
    synthVoice[i].midi = 0xff;
    synthVoice[i].volume = 0;
    synthVoice[i].volTable = 0;
    synthVoice[i].revVolScale = 128;
    synthVoice[i].revVolOffset = 0;
    synthVoice[i].panning[0] = synthVoice[i].panTarget[0] = 0x400000;
    synthVoice[i].panning[1] = synthVoice[i].panTarget[1] = 0;
    synthVoice[i].sweepOff[0] = 0;
    synthVoice[i].sweepOff[1] = 0;
    synthVoice[i].sweepNum[0] = 0;
    synthVoice[i].sweepNum[1] = 0;
    synthVoice[i].block = 0;
    synthVoice[i].vGroup = 23;
    synthVoice[i].keyGroup = 0;
    synthVoice[i].itdMode = 1;
    synthVoice[i].lfo[0].period = 0;
    synthVoice[i].lfo[0].value = 0;
    synthVoice[i].lfo[0].lastValue = 0x7fff;
    synthVoice[i].lfo[1].period = 0;
    synthVoice[i].lfo[1].value = 0;
    synthVoice[i].lfo[1].lastValue = 0x7fff;
    synthVoice[i].portTime = 25600;
    synthVoice[i].portType = 0;
    synthVoice[i].studio = 0;
    synthVoice[i].lowPrecisionJob.voice = i;
    synthVoice[i].lowPrecisionJob.jobTabIndex = 0xff;
    synthVoice[i].zeroOffsetJob.voice = i;
    synthVoice[i].zeroOffsetJob.jobTabIndex = 0xff;
    synthVoice[i].eventJob.voice = i;
    synthVoice[i].eventJob.jobTabIndex = 0xff;
  }

  for (i = 0; i < 32; ++i) {
    synthMasterFader[i].volume = 0.f;
    synthMasterFader[i].pauseVol = 1.f;
    synthMasterFader[i].type = 4;
  }

  synthMasterFaderActiveFlags = 0;
  synthMasterFaderPauseActiveFlags = 0;
  synthMasterFader[31].type = 1;

  for (i = 0; i < 8; ++i) {
    synthMasterFader[i + 23].type = 0;
  }

  synthMasterFader[21].volume = 1.f;
  synthMasterFader[22].volume = 1.f;
  inpInit(0);

  for (i = 0; i < 8; ++i) {
    synthAuxACallback[i] = NULL;
    synthAuxAMIDI[i] = 0xff;
    synthAuxBCallback[i] = NULL;
    synthAuxBMIDI[i] = 0xff;
    synthITDDefault[i].sfx = 0;
    synthITDDefault[i].music = 0;
  }

  macInit();
  vidInit();
  synthInitAllocationAids();

  for (i = 0; i < 16; ++i) {
    synthGlobalVariable[i] = 0;
  }

  voiceInitLastStarted();
  synthInitJobQueue();
  hwSetMesgCallback(synthHWMessageHandler);
}

void synthExit() { salFree(synthVoice); }

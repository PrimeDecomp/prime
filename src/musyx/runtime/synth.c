#include "musyx/assert.h"
#include "musyx/musyx_priv.h"

static u32 synthTicksPerSecond[9][16];
static SYNTH_JOBTAB synthJobTable[32];
CTRL_DEST inpAuxA[8][4];
CTRL_DEST inpAuxB[8][4];
long synthGlobalVariable[16];
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
SND_MESSAGE_CALLBACK synthMessageCallback;
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
  u32 i;                     // r30
  u32 vid;                   // r29
  u32 id;                    // r27
  SYNTH_VOICE* sv;           // r31
  SYNTH_VOICE* last_sv;      // r28
  u32 legatoVoiceIsStarting; // r26
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

static u32 StartLayer(u16 layerID, s16 prio, u8 maxVoices, u16 allocId, u8 key, u8 vol, u8 panning,
                      u8 midi, u8 midiSet, u8 section, u16 step, u16 trackid, u32 vidFlag,
                      u8 vGroup, u8 studio, u32 itd) {
  u16 n;      // r1+0x38
  u32 vid;    // r26
  u32 new_id; // r1+0x34
  u32 id;     // r27
  LAYER* l;   // r31
  long p;     // r30
  long k;     // r29
  u8 v;       // r25
  u8 mKey;    // r24
}

static u32 StartKeymap(u16 keymapID, s16 prio, u8 maxVoices, u16 allocId, u8 key, u8 vol,
                       u8 panning, u8 midi, u8 midiSet, u8 section, u16 step, u16 trackid,
                       u32 vidFlag, u8 vGroup, u8 studio, u32 itd) {
  u8 o;                  // r30
  struct KEYMAP* keymap; // r31
  long p;                // r26
  long k;                // r29
  u32 vid;               // r1+0x34
}

#pragma dont_inline on
u32 synthStartSound(u16 id, u8 prio, u8 max, u8 key, u8 vol, u8 panning, u8 midi, u8 midiSet,
                    u8 section, u16 step, u16 trackid, u8 vGroup, s16 prioOffset, u8 studio,
                    u32 itd) {
  u32 vid; // r1+0x34
}
#pragma dont_inline reset

static u32 convert_cents(SYNTH_VOICE* svoice, u32 ccents) {
  unsigned long curDetune; // r30
  unsigned long cpitch;    // r31
}

static void UpdateTimeMIDICtrl(SYNTH_VOICE* sv) {
  if (!sv->timeUsedByInput) {
    return;
  }

  sv->timeUsedByInput = 0;
  sv->midiDirtyFlags = 0x1fff;
}

static void LowPrecisionHandler(unsigned long i) {
  unsigned long j;            // r30
  long pbend;                 // r29
  unsigned long ccents;       // r28
  unsigned long cpitch;       // r26
  unsigned short Modulation;  // r24
  unsigned short portamento;  // r25
  unsigned long lowDeltaTime; // r27
  struct SYNTH_VOICE* sv;     // r31
  unsigned long cntDelta;     // r20
  unsigned long addFactor;    // r19
  unsigned short adsr_start;  // r1+0xE
  unsigned short adsr_delta;  // r1+0xC
  long vrange;                // r23
  long voff;                  // r22
}

static void ZeroOffsetHandler(unsigned long i) {
  struct SYNTH_VOICE* sv;     // r31
  unsigned long lowDeltaTime; // r26
  unsigned short Modulation;  // r25
  float vol;                  // r62
  float auxa;                 // r57
  float auxb;                 // r56
  float f;                    // r59
  float voiceVol;             // r60
  unsigned long volUpdate;    // r30
  float lfo;                  // r55
  float scale;                // r63
  float mscale;               // r54
  long pan;                   // r28
  float preVol;               // r58
  float postVol;              // r61
}

static void EventHandler(unsigned long i) {
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
void synthAddJob(SYNTH_VOICE* svoice, SYNTH_JOBTYPE jobType, unsigned long deltaTime) {
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

void HandleJobQueue(SYNTH_QUEUE** queueRoot, void (*handler)(unsigned long)) {
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

void synthHandle(unsigned long deltaTime) {
  unsigned long i;        // r29
  unsigned long s;        // r30
  SYNTHMasterFader* smf;  // r31
  unsigned long testFlag; // r27
  SND_AUX_INFO info;      // r1+0x18
}

unsigned char synthFXGetMaxVoices(u16 fid) {
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

#include "musyx/assert.h"
#include "musyx/musyx_priv.h"

#ifdef _DEBUG
static u8 DebugMacroSteps = 0;
#endif

static SYNTH_VOICE* macActiveMacroRoot = NULL;
static SYNTH_VOICE* macTimeQueueRoot = NULL;
static u64 macRealTime;
static void TimeQueueAdd(SYNTH_VOICE* svoice);
void macMakeActive(struct SYNTH_VOICE* svoice);

static int SendSingleKeyOff(u32 voiceid) {
  u32 i; // r31

  if (voiceid != 0xFFFFFFFF) {
    i = voiceid & 0xFF;
    if (voiceid == synthVoice[i].id) {
      macSetExternalKeyOff(&synthVoice[i]);
      return 0;
    }
  }

  return -1;
}

static u32 ExecuteTrap(SYNTH_VOICE* svoice, u8 trapType) {
  if (svoice->trapEventAny != 0 && svoice->trapEventAddr[trapType] != NULL) {
    svoice->curAddr = svoice->trapEventCurAddr[trapType];
    svoice->addr = svoice->trapEventAddr[trapType];
    svoice->trapEventAddr[trapType] = NULL;
    macMakeActive(svoice);
    return 1;
  }

  return 0;
}

static bool HasHWEventTrap(SYNTH_VOICE* svoice) {
  if (svoice->trapEventAny != '\0') {
    return svoice->trapEventAddr[1] != NULL;
  }
  return 0;
}

static void CheckHWEventTrap(SYNTH_VOICE* svoice) {
  if ((svoice->cFlags & 0x20) == 0 && hwIsActive(svoice->parent & 0xff)) {
    ExecuteTrap(svoice, 1);
  }
}

static u32 mcmdWait(SYNTH_VOICE* svoice, MSTEP* cstep) {
  u32 w;  // r1+0x10
  u32 ms; // r29

  if ((ms = cstep->para[1] >> 0x10)) {
    if (((u8)(cstep->para[0] >> 8) & 1)) {
      if (svoice->cFlags & 8) {
        if (!(svoice->cFlags & 0x10000000000)) {
          return 0;
        }
        svoice->cFlags |= 0x40000000000;
      }
      svoice->cFlags |= 4;
    } else {
      svoice->cFlags &= ~4;
    }

    if (((u8)(cstep->para[0] >> 0x18) & 1)) {
      if (!(svoice->cFlags & 0x20) && !hwIsActive(svoice->id & 0xFF)) {
        return 0;
      }
      svoice->cFlags |= 0x40000;
    } else {
      svoice->cFlags &= ~0x40000;
    }

    if (((u8)(cstep->para[0] >> 0x10)) & 1) {
      ms = sndRand() % ms;
    }

    if (ms != 0xFFFF) {
      if ((w = ((u8)(cstep->para[1] >> 0x8) & 1) != 0)) {
        sndConvertMs(&ms);
      } else {
        sndConvertTicks(&ms, svoice);
      }

      if (w != 0) {
        if (cstep->para[1] & 1) {
          svoice->wait = svoice->macStartTime + ms;
        } else {
          svoice->wait = macRealTime + ms;
        }
      } else {
        if (cstep->para[1] & 1) {
          svoice->wait = ms;
        } else {
          svoice->wait = svoice->waitTime + ms;
        }
      }

      if (!(svoice->wait > macRealTime)) {
        svoice->waitTime = svoice->wait;
        svoice->wait = 0;
      }
    } else {
      svoice->wait = -1;
    }

    if (svoice->wait != 0) {
      if (svoice->wait != -1) {
        TimeQueueAdd(svoice);
      }
      macMakeInactive(svoice, 1);
      return 1;
    }
  }

  return 0;
}

static u32 mcmdWaitMs(SYNTH_VOICE* svoice, MSTEP* cstep) {
  *((u8*)cstep->para + 6) = 1;
  return mcmdWait(svoice, cstep);
}

static u32 mcmdEndOfMacro(SYNTH_VOICE* svoice) {
  vidRemoveVoiceReferences(svoice);
  voiceFree(svoice);
  return 1;
}

static u32 mcmdStop(SYNTH_VOICE* svoice) { return mcmdEndOfMacro(svoice); }

static u32 mcmdReturn(SYNTH_VOICE* svoice) {
  if (svoice->callStackEntryNum != 0) {
    svoice->addr = svoice->callStack[svoice->callStackIndex].addr;
    svoice->curAddr = svoice->callStack[svoice->callStackIndex].curAddr;
    svoice->callStackIndex = (svoice->callStackIndex - 1) & 3;
    --svoice->callStackEntryNum;
  }
  return 0;
}

static void mcmdIfKey(SYNTH_VOICE* svoice, MSTEP* cstep) {
  MSTEP* addr; // r31
  if (svoice->curNote < ((u8)(cstep->para[0] >> 8))) {
    return;
  }

  if ((addr = (MSTEP*)dataGetMacro((cstep->para[0] >> 0x10))) != NULL) {
    svoice->addr = addr;
    svoice->curAddr = addr + (u16)cstep->para[1];
  }
}

static void mcmdIfVelocity(SYNTH_VOICE* svoice, MSTEP* cstep) {
  MSTEP* addr;
  if (((u8)(svoice->volume >> 0x10)) < (u8)(cstep->para[0] >> 8)) {
    return;
  }

  if (addr = (MSTEP*)dataGetMacro(cstep->para[0] >> 0x10)) {
    svoice->addr = addr;
    svoice->curAddr = addr + (u16)cstep->para[1];
  }
}

static void mcmdIfModulation(SYNTH_VOICE* svoice, MSTEP* cstep) {
  MSTEP* addr; // r30
  u8 mod;      // r28

  if (svoice->midi == 0xff) {
    return;
  }
  mod = inpGetModulation(svoice) >> 7;
  if (mod < (u8)(cstep->para[0] >> 8)) {
    return;
  }

  if (addr = (MSTEP*)dataGetMacro(cstep->para[0] >> 0x10)) {
    svoice->addr = addr;
    svoice->curAddr = addr + (u16)(cstep->para[1]);
  }
}

static void mcmdIfRandom(SYNTH_VOICE* svoice, MSTEP* cstep) {
  MSTEP* addr; // r31
  if ((u8)sndRand() < (u8)(cstep->para[0] >> 8)) {
    return;
  }

  if (addr = (MSTEP*)dataGetMacro(cstep->para[0] >> 0x10)) {
    svoice->addr = addr;
    svoice->curAddr = addr + (u16)cstep->para[1];
  }
}

static u32 mcmdGoto(SYNTH_VOICE* svoice, MSTEP* cstep) {
  MSTEP* addr; // r31
  if ((addr = (MSTEP*)dataGetMacro(cstep->para[0] >> 0x10)) != NULL) {
    svoice->addr = addr;
    svoice->curAddr = addr + (u16)cstep->para[1];
    return 0;
  }

  return mcmdEndOfMacro(svoice);
}

static u32 mcmdGosub(SYNTH_VOICE* svoice, MSTEP* cstep) {
  MSTEP* addr; // r30
  if ((addr = (MSTEP*)dataGetMacro(cstep->para[0] >> 0x10)) != NULL) {
    svoice->callStackIndex = (svoice->callStackIndex + 1) & 3;
    svoice->callStack[svoice->callStackIndex].addr = svoice->addr;
    svoice->callStack[svoice->callStackIndex].curAddr = svoice->curAddr;
    if (++svoice->callStackEntryNum > 4) {
      svoice->callStackEntryNum = 4;
    }

    svoice->addr = addr;
    svoice->curAddr = addr + (u16)cstep->para[1];
    return 0;
  }

  return mcmdEndOfMacro(svoice);
}

static void mcmdTrapEvent(SYNTH_VOICE* svoice, MSTEP* cstep) {
  MSTEP* addr; // r29
  u8 t;        // r30
  if ((addr = (MSTEP*)dataGetMacro(cstep->para[0] >> 0x10)) != NULL) {
    t = (u8)(cstep->para[0] >> 8);
    svoice->trapEventAddr[t] = addr;
    svoice->trapEventCurAddr[t] = addr + (u16)cstep->para[1];
    svoice->trapEventAny = 1;
    if (t == 0 && (svoice->cFlags & 0x10000000008) == 0x10000000008) {
      svoice->cFlags |= 0x40000000000;
    }
  }
}

static void mcmdUntrapEvent(SYNTH_VOICE* svoice, MSTEP* cstep) {
  u8 i; // r31
  svoice->trapEventAddr[(u8)(cstep->para[0] >> 8)] = 0;

  for (i = 0; i < 3; ++i) {
    if (svoice->trapEventAddr[i] != NULL) {
      return;
    }
  }

  svoice->trapEventAny = 0;
}

static void mcmdLoop(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdPlayMacro(SYNTH_VOICE* svoice, MSTEP* cstep) {
  long key;                // r29
  unsigned long new_child; // r30

  key = ((u32)svoice->orgNote + (s8)(u8)(cstep->para[0] >> 8));
  if (key < 0) {
    key = 0;
  } else if (key > 0x7f) {
    key = 0x7f;
  }

  if (svoice->fxFlag != 0) {
    key |= 0x80;
  }

  svoice->block = 1;
  new_child = macStart((u16)(cstep->para[0] >> 0x10), (u8)(cstep->para[1] >> 0x10),
                       (u8)(cstep->para[1] >> 0x18), svoice->allocId, key,
                       (u8)(svoice->volume >> 0x10), (u8)(svoice->panning[0] >> 0x10), svoice->midi,
                       svoice->midiSet, svoice->section, (u16)cstep->para[1], (u16)svoice->track, 0,
                       svoice->vGroup, svoice->studio, svoice->itdMode == 0);
  svoice->block = 0;
  if (new_child != 0xFFFFFFFF) {
    svoice->lastVID = synthVoice[(u8)new_child].vidList->vid;
    synthVoice[(u8)new_child].parent = svoice->id;
    if (svoice->child != -1) {
      synthVoice[(u8)new_child].child = svoice->child;
      synthVoice[(u8)svoice->child].parent = new_child;
    }
    svoice->child = new_child;
    if (svoice->fxFlag != 0) {
      synthFXCloneMidiSetup(&synthVoice[(u8)new_child], svoice);
    }
  } else {
    svoice->lastVID = 0xFFFFFFFF;
  }
}

static void mcmdSendKeyOff(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned long voiceid; // r30
  unsigned long i;       // r31

  voiceid = (svoice->orgNote + (u8)(cstep->para[0] >> 8)) << 8;
  voiceid |= ((u16)(cstep->para[0] >> 16)) << 16;
  for (i = 0; i < synthInfo.voiceNum; ++i) {
    if (synthVoice[i].id == (voiceid | i)) {
      SendSingleKeyOff(voiceid | i);
    }
  }
}

static void mcmdAddAgeCounter(SYNTH_VOICE* svoice, MSTEP* cstep) {
  signed short step; // r29
  long age;          // r30

  step = (u16)(cstep->para[0] >> 16);
  age = (svoice->age >> 15) + step;

  if (age < 0) {
    svoice->age = 0;
  } else if (age > 0xFFFF) {
    svoice->age = 0x7fff8000;
  } else {
    svoice->age = age * 0x8000;
  }

  hwSetPriority(svoice->id & 0xFF, ((u32)svoice->prio << 24) | ((u32)svoice->age >> 15));
}

static void mcmdSetAgeCounter(SYNTH_VOICE* svoice, MSTEP* cstep) {
  svoice->age = (u16)(cstep->para[0] >> 0x10) << 0xf;
  hwSetPriority(svoice->id & 0xff, (u32)svoice->prio << 0x18 | svoice->age >> 0xf);
}

static void mcmdSetAgeCounterSpeed(SYNTH_VOICE* svoice, MSTEP* cstep) {
  u32 time = cstep->para[1];
  if (time != 0) {
    svoice->ageSpeed = (svoice->age >> 8) / time;
  } else {
    svoice->ageSpeed = 0;
  }
}
static void mcmdSetAgeCounterByVolume(SYNTH_VOICE* svoice, MSTEP* cstep) {
  u32 age; // r30

  age = (((u8)(svoice->volume >> 16) * (u16)cstep->para[1]) >> 7) + (cstep->para[0] >> 16);
  svoice->age = age > 60000 ? 0x75300000 : age * 0x8000;
  hwSetPriority(svoice->id & 0xff, (u32)svoice->prio << 0x18 | svoice->age >> 0xf);
}

static void mcmdAddPriority(SYNTH_VOICE* svoice, MSTEP* cstep) {
  signed short add;  // r30
  signed short prio; // r31
  add = (u16)(cstep->para[0] >> 16);
  prio = svoice->prio + add;
  prio = (prio < 0) ? 0 : (prio > 0xFF) ? 0xFF : prio;

  voiceSetPriority(svoice, prio);
}

static void mcmdSetPriority(SYNTH_VOICE* svoice, MSTEP* cstep) {
  voiceSetPriority(svoice, cstep->para[0] >> 8);
}

static void mcmdSendFlag(MSTEP* cstep) {
  synthGlobalVariable[(u8)(cstep->para[0] >> 8)] = (u8)(cstep->para[0] >> 16);
}

static void mcmdSetPitchWheelRange(SYNTH_VOICE* svoice, MSTEP* cstep) {
  svoice->pbLowerKeyRange = (u8)(cstep->para[0] >> 0x10);
  svoice->pbUpperKeyRange = (u8)(cstep->para[0] >> 8);
}

static u32 mcmdSetKey(SYNTH_VOICE* svoice, MSTEP* cstep) {
  svoice->curNote = (u16)(cstep->para[0] >> 8) & 0x7f;
  svoice->curDetune = (s8)(cstep->para[0] >> 0x10);
  if (voiceIsLastStarted(svoice) != 0) {
    inpSetMidiLastNote(svoice->midi, svoice->midiSet, svoice->curNote & 0xff);
  }
  cstep->para[0] = 4;
  return mcmdWait(svoice, cstep);
}

static u32 mcmdAddKey(SYNTH_VOICE* svoice, MSTEP* cstep) {
  if (cstep->para[0] >> 0x18 == 0) {
    svoice->curNote = svoice->curNote + (s8)(u16)(cstep->para[0] & 0xFFFF);
  } else {
    svoice->curNote = (u16)svoice->orgNote + (s16)(s8)(cstep->para[0] >> 8);
  }

  svoice->curNote = (s16)svoice->curNote < 0 ? 0 : svoice->curNote > 0x7f ? 0x7f : svoice->curNote;
  svoice->curDetune = (s8)(cstep->para[0] >> 0x10);

  if (voiceIsLastStarted(svoice) != 0) {
    inpSetMidiLastNote(svoice->midi, svoice->midiSet, svoice->curNote);
  }
  cstep->para[0] = 4;
  return mcmdWait(svoice, cstep);
}

static u32 mcmdLastKey(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdStartSample(SYNTH_VOICE* svoice, MSTEP* cstep) {
  static SAMPLE_INFO newsmp;
  unsigned short smp; // r28
}

static void mcmdStopSample(SYNTH_VOICE* svoice) {}
static void mcmdKeyOff(SYNTH_VOICE* svoice) {}
static void mcmdSetMod2Vibrato(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdVibrato(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned long time; // r1+0x10
  signed char kr;     // r29
  signed char cr;     // r30
}

static void mcmdSetupLFO(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned long time;  // r1+0x14
  unsigned long phase; // r1+0x10
  unsigned char n;     // r31
}

static void DoSetPitch(SYNTH_VOICE* svoice) {
  unsigned long f;    // r28
  unsigned long of;   // r25
  unsigned long i;    // r31
  unsigned long frq;  // r27
  unsigned long ofrq; // r26
  unsigned long no;   // r30
  long key;           // r24
  unsigned char oKey; // r23
  static u16 kf[13] = {
      4096, 4339, 4597, 4871, 5160, 5467, 5792, 6137, 6502, 6888, 7298, 7732, 8192,
  };
}

static void mcmdSetPitch(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdSetADSR(SYNTH_VOICE* svoice, MSTEP* cstep) {
  ADSR_INFO adsr;      // r1+0x10
  ADSR_INFO* adsr_ptr; // r31
  long ascale;         // r29
  long dscale;         // r28
  float sScale;        // r63
}

static long midi2TimeTab[128] = {
    0,      10,     20,     30,     40,     50,     60,     70,     80,     90,     100,    110,
    110,    120,    130,    140,    150,    160,    170,    190,    200,    220,    230,    250,
    270,    290,    310,    330,    350,    380,    410,    440,    470,    500,    540,    580,
    620,    660,    710,    760,    820,    880,    940,    1000,   1000,   1100,   1200,   1300,
    1400,   1500,   1600,   1700,   1800,   2000,   2100,   2300,   2400,   2600,   2800,   3000,
    3200,   3500,   3700,   4000,   4300,   4600,   4900,   5300,   5700,   6100,   6500,   7000,
    7500,   8100,   8600,   9300,   9900,   10000,  11000,  12000,  13000,  14000,  15000,  16000,
    17000,  18000,  19000,  21000,  22000,  24000,  26000,  28000,  30000,  32000,  34000,  37000,
    39000,  42000,  45000,  49000,  50000,  55000,  60000,  65000,  70000,  75000,  80000,  85000,
    90000,  95000,  100000, 105000, 110000, 115000, 120000, 125000, 130000, 135000, 140000, 145000,
    150000, 155000, 160000, 165000, 170000, 175000, 180000, 0,
};

static void mcmdSetADSRFromCtrl(SYNTH_VOICE* svoice, MSTEP* cstep) {
  float sScale;   // r63
  ADSR_INFO adsr; // r1+0x10
}
static void mcmdSetPitchADSR(SYNTH_VOICE* svoice, MSTEP* cstep) {
  ADSR_INFO adsr;      // r1+0x10
  ADSR_INFO* adsr_ptr; // r31
  unsigned long sl;    // r28
  long ascale;         // r27
  long dscale;         // r26
}
unsigned long mcmdPitchSweep(SYNTH_VOICE* svoice, MSTEP* cstep, int num) {
  long delta; // r31
}
static void DoPanningSetup(SYNTH_VOICE* svoice, MSTEP* cstep, unsigned char pi) {
  long width;           // r29
  unsigned long mstime; // r27
}
static void mcmdSetPanning(SYNTH_VOICE* svoice, MSTEP* cstep) {}
static void mcmdSetSurroundPanning(SYNTH_VOICE* svoice, MSTEP* cstep) {}
static void mcmdSetPianoPanning(SYNTH_VOICE* svoice, MSTEP* cstep) {
  long delta; // r31
  long scale; // r30
}
unsigned long TranslateVolume(unsigned long volume, unsigned short curve) {
  unsigned char* ptr;  // r30
  unsigned long vlow;  // r28
  unsigned long vhigh; // r31
  long d;              // r27
}
static void mcmdScaleVolume(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned short curve; // r29
  unsigned short scale; // r28
}
static void mcmdScaleVolumeDLS(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned short scale; // r31
}
static void DoEnvelopeCalculation(SYNTH_VOICE* svoice, MSTEP* cstep, long start_vol) {
  unsigned long tvol;   // r31
  unsigned long time;   // r1+0x14
  long mstime;          // r28
  unsigned short curve; // r27
}
static void mcmdEnvelope(SYNTH_VOICE* svoice, MSTEP* cstep) {}
static void mcmdFadeIn(SYNTH_VOICE* svoice, MSTEP* cstep) {}
static void mcmdRandomKey(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned char k1;     // r30
  unsigned char k2;     // r29
  unsigned char t;      // r24
  long i1;              // r28
  long i2;              // r27
  unsigned char detune; // r26
}
static void mcmdSetPitchbendAfterKeyOff(SYNTH_VOICE* svoice) {}
static void mcmdScaleReverb(SYNTH_VOICE* svoice, MSTEP* cstep) {}
static void SelectSource(SYNTH_VOICE* svoice, CTRL_DEST* dest, MSTEP* cstep,
                         unsigned long long tstflag, unsigned long dirtyFlag) {
  unsigned char comb; // r28
  long scale;         // r30
}
static void mcmdVolumeSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdPanningSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdPitchWheelSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdModWheelSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdPedalSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdPortamentoSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdReverbSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdPreAuxASelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdPreAuxBSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdPostAuxBSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdSurroundPanningSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdDopplerSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdTremoloSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdAuxAFXSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned long i;                                                           // r31
  static u64 mask[4] = {0x100000000, 0x200000000, 0x400000000, 0x800000000}; // size: 0x20
  static u32 dirty[4] = {0x80000001, 0x80000002, 0x80000004, 0x80000008};    // size: 0x10
}

static void mcmdAuxBFXSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned long i;                                                               // r31
  static u64 mask[4] = {0x1000000000, 0x2000000000, 0x4000000000, 0x8000000000}; // size: 0x20
  static u32 dirty[4] = {0x80000010, 0x80000020, 0x80000040, 0x80000080};        // size: 0x10
}

static void mcmdPortamento(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned long time; // r1+0x10
}
long varGet32(SYNTH_VOICE* svoice, unsigned long ctrl, unsigned char index) {}
signed short varGet(SYNTH_VOICE* svoice, unsigned long ctrl, unsigned char index) {}
void varSet32(SYNTH_VOICE* svoice, unsigned long ctrl, unsigned char index, long v) {}
void varSet(SYNTH_VOICE* svoice, unsigned long ctrl, unsigned char index, signed short v) {}
static void mcmdVarCalculation(SYNTH_VOICE* svoice, MSTEP* cstep, unsigned char op) {
  signed short s1; // r28
  signed short s2; // r31
  long t;          // r30
}
static void mcmdSetVarImmediate(SYNTH_VOICE* svoice, MSTEP* cstep) {}

static void mcmdIfVarCompare(SYNTH_VOICE* svoice, MSTEP* cstep, unsigned char cmp) {
  long a;               // r28
  long b;               // r27
  unsigned char result; // r30
}
unsigned long macPostMessage(unsigned long vid, long mesg) {
  SYNTH_VOICE* sv; // r31
}
static void mcmdSendMessage(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned char i;      // r31
  long mesg;            // r30
  unsigned short macro; // r28
}
static void mcmdGetMessage(SYNTH_VOICE* svoice, MSTEP* cstep) {
  long mesg; // r30
}
static void mcmdGetVID(SYNTH_VOICE* svoice, MSTEP* cstep) {}
static void mcmdModeSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}
static void mcmdSRCModeSelect(SYNTH_VOICE* svoice, MSTEP* cstep) {}
static void mcmdSetKeyGroup(SYNTH_VOICE* svoice, MSTEP* cstep) {
  unsigned long i;    // r31
  unsigned char kg;   // r30
  unsigned long kill; // r29
}
static void mcmdSetupTremolo(SYNTH_VOICE* svoice, MSTEP* cstep) {}

void macHandleActive(struct SYNTH_VOICE* svoice) {
  unsigned char i;                   // r29
  unsigned char lastNote;            // r27
  unsigned long ex;                  // r30
  CHANNEL_DEFAULTS* channelDefaults; // r28
  static MSTEP cstep;
}

void macHandle(unsigned long deltaTime) {
  struct SYNTH_VOICE* sv;     // r31
  struct SYNTH_VOICE* nextSv; // r30
  unsigned long long w;       // r28
}
void macSampleEndNotify(struct SYNTH_VOICE* sv) {}
void macSetExternalKeyoff(struct SYNTH_VOICE* svoice) {}
void macSetPedalState(struct SYNTH_VOICE* svoice, unsigned long state) {}
void TimeQueueAdd(SYNTH_VOICE* svoice) {
  SYNTH_VOICE* sv;     // r31
  SYNTH_VOICE* lastSv; // r30
}
void UnYieldMacro(struct SYNTH_VOICE* svoice, unsigned long disableUpdate) {}
void macMakeActive(struct SYNTH_VOICE* svoice) {}

void macMakeInactive(struct SYNTH_VOICE* svoice, MAC_STATE newState) {}
unsigned long macStart(unsigned short macid, unsigned char priority, unsigned char maxVoices,
                       unsigned short allocId, unsigned char key, unsigned char vol,
                       unsigned char panning, unsigned char midi, unsigned char midiSet,
                       unsigned char section, unsigned short step, unsigned short trackid,
                       unsigned char new_vid, unsigned char vGroup, unsigned char studio,
                       unsigned long itd) {
  unsigned long voice;        // r30
  unsigned long vid;          // r25
  struct MSTEP* addr;         // r28
  struct SYNTH_VOICE* svoice; // r31
  unsigned short seqPrio;     // r24
}

void macInit() {
  unsigned long i; // r31

  macActiveMacroRoot = 0;
  macTimeQueueRoot = 0;
  macRealTime = 0;
  for (i = 0; i < synthInfo.voiceNum; ++i) {
    synthVoice[i].addr = NULL;
    synthVoice[i].macState = MAC_STATE_STOPPED;
    synthVoice[i].loop = 0;
  }
}

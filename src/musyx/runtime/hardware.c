#include "musyx/assert.h"
#include "musyx/musyx_priv.h"

extern void OSReport(const char*, ...);

extern void DCStoreRange(void* addr, u32 nBytes);

static volatile const u16 itdOffTab[128] = {
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,
    2,  3,  3,  3,  3,  3,  4,  4,  4,  4,  5,  5,  5,  6,  6,  6,  7,  7,  7,  8,  8,  8,
    9,  9,  9,  10, 10, 10, 11, 11, 12, 12, 12, 13, 13, 13, 14, 14, 15, 15, 15, 16, 16, 17,
    17, 17, 18, 18, 19, 19, 19, 20, 20, 20, 21, 21, 22, 22, 22, 23, 23, 23, 24, 24, 24, 25,
    25, 25, 26, 26, 26, 27, 27, 27, 28, 28, 28, 28, 29, 29, 29, 29, 29, 30, 30, 30, 30, 30,
    31, 31, 31, 31, 31, 31, 31, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
};

SND_PROFILE_INFO prof;

u8 salFrame;
u8 salAuxFrame;
u8 salNumVoices;
u8 salMaxStudioNum;
SND_HOOKS salHooks;
u8 salTimeOffset;
void hwSetTimeOffset(u8 offset);

void snd_handle_irq() {
  u8 r; // r31
  u8 i; // r30
  u8 v; // r29
  if (sndActive == 0) {
    return;
  }

  streamCorrectLoops();
  hwIRQEnterCritical();
  // sndProfStartPCM(&prof.dspCtrl);
  salCtrlDsp(salAiGetDest());
  // sndProfStopPMC(&prof.dspCtrl);
  hwIRQLeaveCritical();
  hwIRQEnterCritical();
  // sndProfStartPCM(&prof.auxProcessing);
  salHandleAuxProcessing();
  // sndProfStopPMC(&prof.auxProcessing);
  hwIRQLeaveCritical();
  hwIRQEnterCritical();
  salFrame ^= 1;
  salAuxFrame = (salAuxFrame + 1) % 3;

  for (v = 0; v < salNumVoices; ++v) {
    for (i = 0; i < 5; ++i) {
      dspVoice[v].changed[i] = 0;
    }
  }

  // sndProfStartPMC(&prof.sequencer);
  // sndProfPausePMC(&prof.sequencer);
  // sndProfStartPMC(&prof.synthesizer);
  // sndProfPausePMC(&prof.synthesizer);
  hwIRQLeaveCritical();
  for (r = 0; r < 5; ++r) {
    hwIRQEnterCritical();
    hwSetTimeOffset(r);
    // sndProfStartPMC(&prof.sequencer);
    seqHandle(256);
    // sndProfPausePMC(&prof.sequencer);
    // sndProfStartPMC(&prof.synthesizer);
    synthHandle(256);
    // sndProfPausePMC(&prof.synthesizer);
    hwIRQLeaveCritical();
  }

  // sndProfStopPMC(&prof.sequencer);
  // sndProfStopPMC(&prof.synthesizer);
  hwIRQEnterCritical();
  hwSetTimeOffset(0);
  // sndProfStartPMC(&prof.emitters);
  s3dHandle();
  // sndProfStopPMC(&prof.emitters);
  hwIRQLeaveCritical();
  hwIRQEnterCritical();
  // sndProfStartPMC(&prof.streaming);
  streamHandle();
  // sndProfStopPMC(&prof.streaming);
  hwIRQLeaveCritical();
  hwIRQEnterCritical();
  vsSampleUpdates();
  hwIRQLeaveCritical();
  // sndProfUpdateMisc(&prof);

  // if (sndProfUserCallback) {
  //   sndProfUserCallback(&prof);
  // }
}

s32 hwInit(u32* frq, u16 numVoices, u16 numStudios, u32 flags) {
  MUSY_DEBUG("Entering hwInit()\n\n");
  hwInitIrq();
  salFrame = 0;
  salAuxFrame = 0;
  salMessageCallback = NULL;
  if (salInitAi(snd_handle_irq, flags, frq) != 0) {
    MUSY_DEBUG("salInitAi() is done.\n\n");
    if (salInitDspCtrl(numVoices, numStudios, (flags & 1) != 0) != 0) {
      MUSY_DEBUG("salInitDspCtrl() is done.\n\n");
      if (salInitDsp(flags)) {
        MUSY_DEBUG("salInitDsp() is done.\n\n");
        hwEnableIrq();
        MUSY_DEBUG("Starting AI DMA...\n\n");
        salStartAi();
        MUSY_DEBUG("hwInit() done.\n\n");
        return 0;
      }
      MUSY_DEBUG("Could not initialize DSP.\n");
    } else {
      MUSY_DEBUG("Could not initialize DSP control logic.\n");
    }
  } else {
    MUSY_DEBUG("Could not initialize AI.\n");
  }
  return -1;
}

void hwExit() {
  hwDisableIrq();
  salExitDsp();
  salExitDspCtrl();
  salExitAi();
  hwEnableIrq();
  hwExitIrq();
}

void hwSetTimeOffset(u8 offset) { salTimeOffset = offset; }

u8 hwGetTimeOffset() { return salTimeOffset; }

u32 hwIsActive(u32 v) { return dspVoice[v].state != 0; }

void hwSetMesgCallback(SND_MESSAGE_CALLBACK callback) { salMessageCallback = callback; }

void hwSetPriority(u32 idx, u32 priority) { dspVoice[idx].prio = priority; }

void hwInitSamplePlayback(s32 v, u16 smpID, void* newsmp, u32 set_defadsr, u32 priority,
                          u32 callbackUserValue, u32 setSRC, u8 itdMode) {
  unsigned char i;  // r30
  unsigned long bf; // r29
  bf = 0;
  for (i = 0; i <= salTimeOffset; ++i) {
    bf |= dspVoice[v].changed[i] & 0x20;
    dspVoice[v].changed[i] = 0;
  }

  dspVoice[v].changed[0] = bf;
  dspVoice[v].prio = priority;
  dspVoice[v].mesgCallBackUserValue = callbackUserValue;
  dspVoice[v].flags = 0;
  dspVoice[v].smp_id = smpID;
  dspVoice[v].smp_info = *(SAMPLE_INFO*)newsmp;

  if (set_defadsr != 0) {
    dspVoice[v].adsr.mode = 0;
    dspVoice[v].adsr.data.dls.aTime = 0;
    dspVoice[v].adsr.data.dls.dTime = 0;
    dspVoice[v].adsr.data.dls.sLevel = 0x7FFF;
    dspVoice[v].adsr.data.dls.rTime = 0;
  }

  dspVoice[v].lastUpdate.pitch = 0xff;
  dspVoice[v].lastUpdate.vol = 0xff;
  dspVoice[v].lastUpdate.volA = 0xff;
  dspVoice[v].lastUpdate.volB = 0xff;

  if (setSRC != 0) {
    hwSetSRCType(v, 0);
    hwSetPolyPhaseFilter(v, 1);
  }

  hwSetITDMode(v, itdMode);
}

void hwBreak(s32 vid) {
  if (dspVoice[vid].state == 1 && salTimeOffset == 0) {
    dspVoice[vid].startupBreak = 1;
  }

  dspVoice[vid].changed[salTimeOffset] |= 0x20;
}

void hwSetADSR(u32 v, void* _adsr, u8 mode) {
  u32 sl;                              // r29
  ADSR_INFO* adsr = (ADSR_INFO*)_adsr; // r30

  switch (mode) {
  case 0: {
    dspVoice[v].adsr.mode = 0;
    dspVoice[v].adsr.data.linear.aTime = adsr->data.linear.atime;
    dspVoice[v].adsr.data.linear.dTime = adsr->data.linear.dtime;
    sl = adsr->data.linear.slevel << 3;
    if (sl > 0x7fff) {
      sl = 0x7fff;
    }

    dspVoice[v].adsr.data.linear.sLevel = sl;
    dspVoice[v].adsr.data.linear.rTime = adsr->data.linear.rtime;
    break;
  }
  case 1:
  case 2:
    dspVoice[v].adsr.mode = 1;
    dspVoice[v].adsr.data.dls.aMode = 0;
    if (mode == 1) {
      dspVoice[v].adsr.data.dls.aTime = adsrConvertTimeCents(adsr->data.dls.atime) & 0xFFFF;
      dspVoice[v].adsr.data.dls.dTime = adsrConvertTimeCents(adsr->data.dls.dtime) & 0xFFFF;

      sl = adsr->data.dls.slevel >> 2;
      if (sl > 0x3ff) {
        sl = 0x3ff;
      }

      dspVoice[v].adsr.data.dls.sLevel = 193 - dspScale2IndexTab[sl];
    } else {
      dspVoice[v].adsr.data.dls.aTime = adsr->data.dls.atime & 0xFFFF;
      dspVoice[v].adsr.data.dls.dTime = adsr->data.dls.dtime & 0xFFFF;
      dspVoice[v].adsr.data.dls.sLevel = adsr->data.dls.slevel;
    }

    dspVoice[v].adsr.data.dls.rTime = adsr->data.dls.rtime;
  }

  dspVoice[v].changed[0] |= 0x10;
}

void hwSetVirtualSampleLoopBuffer(u32 voice, void* addr, u32 len) {
  dspVoice[voice].vSampleInfo.loopBufferAddr = addr;
  dspVoice[voice].vSampleInfo.loopBufferLength = len;
}

u32 hwGetVirtualSampleState(u32 voice) { return dspVoice[voice].vSampleInfo.inLoopBuffer; }

u8 hwGetSampleType(u32 voice) { return dspVoice[voice].smp_info.compType; }

u16 hwGetSampleID(u32 voice) { return dspVoice[voice].smp_id; }

void hwSetStreamLoopPS(u32 voice, u8 ps) { dspVoice[voice].streamLoopPS = ps; }

void hwStart(u32 v, u8 studio) {
  dspVoice[v].singleOffset = salTimeOffset;
  salActivateVoice(&dspVoice[v], studio);
}

void hwKeyOff(u32 v) { dspVoice[v].changed[salTimeOffset] |= 0x40; }

void hwSetPitch(unsigned long v, unsigned short speed) {
  struct DSPvoice* dsp_vptr = &dspVoice[v];

  if (speed >= 0x4000) {
    speed = 0x3fff;
  }

  if (dsp_vptr->lastUpdate.pitch != 0xff &&
      dsp_vptr->pitch[dsp_vptr->lastUpdate.pitch] == speed * 16) {
    return;
  }

  dsp_vptr->pitch[salTimeOffset] = speed * 16;
  dsp_vptr->changed[salTimeOffset] |= 8;
  dsp_vptr->lastUpdate.pitch = salTimeOffset;
}

void hwSetSRCType(u32 v, u8 salSRCType) {
  static u16 dspSRCType[3] = {0, 1, 2};
  struct DSPvoice* dsp_vptr = &dspVoice[v];
  dsp_vptr->srcTypeSelect = dspSRCType[salSRCType];
  dsp_vptr->changed[0] |= 0x100;
}

void hwSetPolyPhaseFilter(unsigned long v, unsigned char salCoefSel) {
  static u16 dspCoefSel[3] = {0, 1, 2};
  struct DSPvoice* dsp_vptr = &dspVoice[v];
  dsp_vptr->srcCoefSelect = dspCoefSel[salCoefSel];
  dsp_vptr->changed[0] |= 0x80;
}

void SetupITD(DSPvoice* dsp_vptr, u8 pan) {
  dsp_vptr->itdShiftL = itdOffTab[pan];
  dsp_vptr->itdShiftR = 32 - itdOffTab[pan];
  dsp_vptr->changed[0] |= 0x200;
}

void hwSetITDMode(u32 v, u8 mode) {
  if (!mode) {
    dspVoice[v].flags |= 0x80000000;
    dspVoice[v].itdShiftL = 16;
    dspVoice[v].itdShiftR = 16;
    return;
  }
  dspVoice[v].flags &= ~0x80000000;
}

#define hwGetITDMode(dsp_vptr) (dsp_vptr->flags & 0x80000000)

void hwSetVolume(unsigned long v, unsigned char table, float vol, unsigned long pan,
                 unsigned long span, float auxa, float auxb) {
  SAL_VOLINFO vi;                    // r1+0x24
  unsigned short il;                 // r30
  unsigned short ir;                 // r29
  unsigned short is;                 // r28
  DSPvoice* dsp_vptr = &dspVoice[v]; // r31
  if (vol >= 1.f) {
    vol = 1.f;
  }

  if (auxa >= 1.f) {
    auxa = 1.f;
  }

  if (auxb >= 1.f) {
    auxb = 1.f;
  }

  salCalcVolume(table, &vi, vol, pan, span, auxa, auxb, (dsp_vptr->flags & 0x80000000) != 0,
                dspStudio[dsp_vptr->studio].type == SND_STUDIO_TYPE_RESERVED0);

  il = 32767.f * vi.volL;
  ir = 32767.f * vi.volR;
  is = 32767.f * vi.volS;

  if (dsp_vptr->lastUpdate.vol == 0xff || dsp_vptr->volL != il || dsp_vptr->volR != ir ||
      dsp_vptr->volS != is) {
    dsp_vptr->volL = il;
    dsp_vptr->volR = ir;
    dsp_vptr->volS = is;
    dsp_vptr->changed[0] |= 1;
    dsp_vptr->lastUpdate.vol = 0;
  }

  il = 32767.f * vi.volAuxAL;
  ir = 32767.f * vi.volAuxAR;
  is = 32767.f * vi.volAuxAS;

  if (dsp_vptr->lastUpdate.volA == 0xff || dsp_vptr->volLa != il || dsp_vptr->volRa != ir ||
      dsp_vptr->volSa != is) {
    dsp_vptr->volLa = il;
    dsp_vptr->volRa = ir;
    dsp_vptr->volSa = is;
    dsp_vptr->changed[0] |= 2;
    dsp_vptr->lastUpdate.volA = 0;
  }

  il = 32767.f * vi.volAuxBL;
  ir = 32767.f * vi.volAuxBR;
  is = 32767.f * vi.volAuxBS;

  if (dsp_vptr->lastUpdate.volB == 0xff || dsp_vptr->volLb != il || dsp_vptr->volRb != ir ||
      dsp_vptr->volSb != is) {
    dsp_vptr->volLb = il;
    dsp_vptr->volRb = ir;
    dsp_vptr->volSb = is;
    dsp_vptr->changed[0] |= 4;
    dsp_vptr->lastUpdate.volB = 0;
  }

  if (hwGetITDMode(dsp_vptr)) {
    SetupITD(dsp_vptr, (pan >> 16) & 0xFF);
  }
}

void hwOff(s32 vid) { salDeactivateVoice(&dspVoice[vid]); }

void hwSetAUXProcessingCallbacks(u8 studio, SND_AUX_CALLBACK auxA, void* userA,
                                 SND_AUX_CALLBACK auxB, void* userB) {
  dspStudio[studio].auxAHandler = auxA;
  dspStudio[studio].auxAUser = userA;
  dspStudio[studio].auxBHandler = auxB;
  dspStudio[studio].auxBUser = userB;
}

void hwActivateStudio(unsigned char studio, unsigned long isMaster, SND_STUDIO_TYPE type) {
  salActivateStudio(studio, isMaster, type);
}

void hwDeactivateStudio(u8 studio) { salDeactivateStudio(studio); }

void hwChangeStudioMix(u8 studio, u32 isMaster) { dspStudio[studio].isMaster = isMaster; }

bool hwIsStudioActive(u32 studio) { return dspStudio[studio].state == 1; }

bool hwAddInput(u8 studio, SND_STUDIO_INPUT* in_desc) {
  return salAddStudioInput(&dspStudio[studio], in_desc);
}

bool hwRemoveInput(u8 studio, SND_STUDIO_INPUT* in_desc) {
  return salRemoveStudioInput(&dspStudio[studio], in_desc);
}

void hwChangeStudio(u32 v, u8 studio) { salReconnectVoice(&dspVoice[v], studio); }

u32 hwGetPos(u32 v) {
  unsigned long pos; // r31
  unsigned long off; // r30
  if (dspVoice[v].state != 2) {
    return 0;
  }

  switch (dspVoice[v].smp_info.compType) {
  case 0:
  case 1:
  case 4:
  case 5:
    pos = ((dspVoice[v].currentAddr - (u32)dspVoice[v].smp_info.addr * 2) / 16) * 14;
    off = dspVoice[v].currentAddr & 0xf;
    if (off >= 2) {
      pos += off - 2;
    }
    break;
  case 3:
    pos = dspVoice[v].currentAddr - (u32)dspVoice[v].smp_info.addr;
    break;
  case 2:
    pos = dspVoice[v].currentAddr - ((u32)dspVoice[v].smp_info.addr / 2);
    break;
  }

  return pos;
}

#if NONMATCHING
void hwFlushStream(void* base, unsigned long offset, unsigned long bytes,
                   unsigned char hwStreamHandle, void (*callback)(unsigned long),
                   unsigned long user) {
  unsigned long aram; // r28
  unsigned long mram; // r29
  unsigned long len;
  aram = aramGetStreamBufferAddress(hwStreamHandle, &len);
  DCStoreRange((void*)((u32)base + (offset & ~31)), bytes + ((offset & 31) + 31) & ~31);
  aramUploadData((void*)((u32)base + (offset & ~31)), aram + (offset & ~31),
                 bytes + ((offset & 31) + 31) & ~31, 1, callback, user);
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern void _savegpr_25();
extern void _restgpr_25();
asm void hwFlushStream(void* base, unsigned long offset, unsigned long bytes,
                   unsigned char hwStreamHandle, void (*callback)(unsigned long),
                   unsigned long user) {
  nofralloc
  stwu r1, -0x30(r1)
  mflr r0
  stw r0, 0x34(r1)
  addi r11, r1, 0x30
  bl _savegpr_25
  mr r25, r3
  mr r29, r4
  mr r26, r5
  mr r27, r7
  mr r28, r8
  mr r3, r6
  addi r4, r1, 8
  bl aramGetStreamBufferAddress
  clrlwi r0, r29, 0x1b
  rlwinm r30, r29, 0, 0, 0x1a
  add r26, r26, r0
  mr r31, r3
  addi r0, r26, 0x1f
  add r29, r25, r30
  rlwinm r26, r0, 0, 0, 0x1a
  mr r3, r29
  mr r4, r26
  bl DCStoreRange
  mr r3, r29
  mr r5, r26
  mr r7, r27
  mr r8, r28
  add r4, r31, r30
  li r6, 1
  bl aramUploadData
  addi r11, r1, 0x30
  bl _restgpr_25
  lwz r0, 0x34(r1)
  mtlr r0
  addi r1, r1, 0x30
  blr
}
#pragma pop
/* clang-format on */
#endif

void hwPrepareStreamBuffer() {}
u32 hwInitStream(u32 len) { return aramAllocateStreamBuffer(len); }

void hwExitStream(u8 id) { aramFreeStreamBuffer(id); }

void* hwGetStreamPlayBuffer(u8 hwStreamHandle) {
  return (void*)aramGetStreamBufferAddress(hwStreamHandle, NULL);
}

void* hwTransAddr(void* samples) { return samples; }

u32 hwFrq2Pitch(u32 frq) { return (frq * 4096.f) / synthInfo.mixFrq; }

void hwInitSampleMem(u32 baseAddr, u32 length) { aramInit(length); }

void hwExitSampleMem() { aramExit(); }

static u32 convert_length(u32 len, u8 type) {
  switch (type) {
  case 0:
  case 1:
  case 4:
  case 5:
    return (((u32)((len + 0xD) / 0xe))) * 8;
  case 2:
    return len * 2;
  }
  return len;
}

void hwSaveSample(void* header, void* data) {
  u32 len;
  u8 type;

  header = (void*)((u32*)header)[0];
  header = (void*)((u32*)header)[1];
  len = (u32)header & 0xFFFFFF;
  type = (u32)header >> 0x18;
  *((u32*)data) = (u32)aramStoreData((void*)*((u32*)data), convert_length(len, type));
}

void hwSetSaveSampleCallback(ARAMUploadCallback callback, unsigned long chunckSize) {
  aramSetUploadCallback(callback);
}

void hwRemoveSample(void* header, void* data) {
  u32 len; // r31
  u8 type; // r30
  type = ((u32*)header)[1] >> 0x18;
  len = convert_length(((u32*)header)[1] & 0xFFFFFF, type);
  aramRemoveData(data, len);
}

void hwSyncSampleMem() { aramSyncTransferQueue(); }

void hwFrameDone() {}

void sndSetHooks(SND_HOOKS* hooks) { salHooks = *hooks; }

void hwEnableHRTF() {
  if (dspHRTFOn != FALSE) {
    return;
  }
  dspHRTFOn = TRUE;
  salInitHRTFBuffer();
}
void hwDisableHRTF() { dspHRTFOn = FALSE; }

u32 hwGetVirtualSampleID(u32 v) {
  if (dspVoice[v].state == 0) {
    return 0xFFFFFFFF;
  }

  return dspVoice[v].virtualSampleID;
}

bool hwVoiceInStartup(u32 v) { return dspVoice[v].state == 1; }

#include "musyx/musyx_priv.h"

u8 salFrame;
u8 salAuxFrame;
u8 salNumVoices;
u8 salMaxStudioNum;
SND_HOOKS salHooks;
u8 salTimeOffset;
void hwSetTimeOffset(u8 offset);

void snd_handle_irq() {
  u8 i;
  u8 j;
  if (sndActive == 0) {
    return;
  }

  streamCorrectLoops();
  hwIRQEnterCritical();
  salCtrlDsp(salAiGetDest());
  hwIRQLeaveCritical();
  hwIRQEnterCritical();
  salHandleAuxProcessing();
  hwIRQLeaveCritical();
  hwIRQEnterCritical();
  salFrame ^= 1;
  salAuxFrame = (salAuxFrame + 1) % 3;

  for (i = 0; i < salNumVoices; ++i) {
    for (j = 0; j < 5; ++j) {
      dspVoice[i].flags = 0;
    }
  }

  hwIRQLeaveCritical();

  for (i = 0; i < 5; ++i) {
    hwIRQEnterCritical();
    hwSetTimeOffset(i);
    seqHandle(256);
    synthHandle(256);
    hwIRQLeaveCritical();
  }

  hwIRQEnterCritical();
  hwSetTimeOffset(0);
  s3dHandle();
  hwIRQLeaveCritical();
  hwIRQEnterCritical();
  streamHandle();
  hwIRQLeaveCritical();
  hwIRQEnterCritical();
  vsSampleUpdates();
  hwIRQLeaveCritical();
}

s32 hwInit(u32* rate, u8 numVoices, u8 numStudios, u32 flags) {
  hwInitIrq();
  salFrame = 0;
  salAuxFrame = 0;
  salMessageCallback = NULL;
  if (salInitAi(snd_handle_irq, flags, rate) == 0) {
    // OSReport("Could not initialize AI.\n");
  } else {
    // OSReport("salInitAi() is done.\n\n");
    if (salInitDspCtrl(numVoices, numStudios, flags & 1) == 0) {
      // OSReport("Could not initialize DSP control logic.\n");
    } else {
      // OSReport("salInitDspCtrl() is done.\n\n");
      if (salInitDsp(flags)) {
        // OSReport("salInitDsp() is done.\n\n");
        hwEnableIrq();
        // OSReport("Starting AI DMA...\n\n");
        salStartAi();
        // OSReport("hwInit() done.\n\n");
        return 0;
      }
      // OSReport("Could not initialize DSP.\n");
    }
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

u32 hwIsActive(s32 idx) { return dspVoice[idx].state != 0; }

void hwSetMesgCallback(SND_MESSAGE_CALLBACK callback) { salMessageCallback = callback; }

void hwSetPriority(s32 idx, s32 priority) { dspVoice[idx].prio = priority; }

void hwInitSamplePlayback(s32 v, u16 smpID, void* newsmp, u32 set_defadsr, u32 priority,
                          u32 callbackUserValue, u32 setSRC, u32 itdMode) {
  unsigned char i;  // r30
  unsigned long bf; // r29
  DSPvoice* voice;
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
  voice = &dspVoice[v];
  ((u32*)&voice->smp_info)[0] = ((u32*)newsmp)[0];
  ((u32*)&voice->smp_info)[1] = ((u32*)newsmp)[1];
  ((u32*)&voice->smp_info)[2] = ((u32*)newsmp)[2];
  ((u32*)&voice->smp_info)[3] = ((u32*)newsmp)[3];
  ((u32*)&voice->smp_info)[4] = ((u32*)newsmp)[4];
  ((u32*)&voice->smp_info)[5] = ((u32*)newsmp)[5];
  ((u32*)&voice->smp_info)[6] = ((u32*)newsmp)[6];
  ((u32*)&voice->smp_info)[7] = ((u32*)newsmp)[7];
  
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

  // dspVoice[vid].flags[salTimeOffset] |= 0x20;
}

void hwSetADSR(s32 vid, u32* param_2, u8 param_3) {}

void hwOff(s32 vid) { salDeactivateVoice(&dspVoice[vid]); }

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
      dspVoice[i].flags[j] = 0;
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

bool hwIsActive(s32 idx) { return dspVoice[idx].status != 0; }

void hwSetMesgCallback(SND_MESSAGE_CALLBACK callback) { salMessageCallback = callback; }

void hwSetPriority(s32 idx, s32 priority) { dspVoice[idx].priority = priority; }

void hwInitSamplePlayback(s32 vid, u16 sampleId, u32* param_3, u32 param_4, u32 priority,
                          u32 param_6, u32 param_7, u32 itdMode) {
  u8 i;
  u32 j;
  u32 k;
  s32 flags;
  s32 tmpFlags;
  u32* tmp;
  u32 tmp2;
  u32 tmp3;
  flags = 0;
  for (i = 0; i <= salTimeOffset; ++i) {
    tmpFlags = dspVoice[vid].flags[i];
    dspVoice[vid].flags[i] = 0;
    flags |= tmpFlags & 0x20;
  }

  dspVoice[vid].flags[0] = flags;
  dspVoice[vid].priority = priority;
  dspVoice[vid]._18 = param_6;
  dspVoice[vid].itdFlags = 0;
  dspVoice[vid].sampleId = sampleId;
  tmp = &dspVoice[vid]._74;
  for (j = 4; j > 0; --j) {
    tmp[0] = param_3[0];
    tmp[1] = param_3[1];
    tmp += 2;
    param_3 += 2;
  }

  if (param_4 != 0) {
    dspVoice[vid]._a4 = 0;
    dspVoice[vid]._b8 = 0;
    dspVoice[vid]._bc = 0;
    dspVoice[vid]._c0 = 0x7FFF;
    dspVoice[vid]._c4 = 0;
  }

  dspVoice[vid]._e4 = 0xff;
  dspVoice[vid]._e5 = 0xff;
  dspVoice[vid]._e6 = 0xff;
  dspVoice[vid]._e7 = 0xff;

  if (param_7 != 0) {
    hwSetSRCType(vid, 0);
    hwSetPolyPhaseFilter(vid, 1);
  }

  hwSetITDMode(vid, itdMode);
}

void hwBreak(s32 vid) {
  if (dspVoice[vid].status == 1 && salTimeOffset == 0) {
    dspVoice[vid].breakSet = 1;
  }

  dspVoice[vid].flags[salTimeOffset] |= 0x20;
}

void hwSetADSR(s32 vid, u32 *param_2, u8 param_3) {
}

void hwOff(s32 vid) {
  salDeactivateVoice(&dspVoice[vid]);
}

#include "musyx/musyx_priv.h"

u8 salFrame;
u8 salAuxFrame;
u8 salNumVoices;
u8 salMaxStudioNum;
SND_HOOKS salHooks;
u8 salTimeOffset;

void snd_handle_irq() {
  s32 i;
  if (sndActive == 0) {
    return;
  }

  streamCorrectLoops();
  hwIRQEnterCriticalSection();
  salCtrlDsp(salAiGetDest());
  hwIRQLeaveCriticalSection();
  hwIRQEnterCriticalSection();
  salHandleAuxProcessing();
  hwIRQLeaveCriticalSection();
  hwIRQEnterCriticalSection();
  salFrame ^= 1;
  salAuxFrame = (salAuxFrame + 1) % 3;
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

void hwSetTimeOffset(s8 offset) { salTimeOffset = offset; }

u8 hwGetTimeOffset() { return salTimeOffset; }

bool hwIsActive(s32 idx) { return dspVoice[idx].active != 0; }

void hwSetMesgCallback(SND_MESSAGE_CALLBACK callback) { salMessageCallback = callback; }

void hwSetPriority(s32 idx, s32 priority) { dspVoice[idx].priority = priority; }

void hwInitSamplePlayback(s32 vid, u16 sampleId, u32* param_3, int param_4, u32 priority,
                          u32 param_6, int param_7, u32 itdMode) {
  u8 i;
  s32 flags;
  s32 tmpFlags;
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
}

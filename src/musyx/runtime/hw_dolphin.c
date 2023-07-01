#include "musyx/musyx_priv.h"

#include "dolphin/dsp.h"
#include "musyx/dsp_import.h"

/* Is this actually what factor 5 did? They specify 0x2000 for the dram size, but the next TU winds
 * up incorrectly aligned */
static DSPTaskInfo dsp_task ATTRIBUTE_ALIGN(8);
static u16 dram_image[4096 + 4] ATTRIBUTE_ALIGN(32);

static volatile u32 oldState = 0;
static volatile u16 hwIrqLevel = 0;
static volatile u32 salDspInitIsDone = 0;
static volatile OSTick salLastTick = 0;
static volatile u32 salLogicActive = 0;
static volatile u32 salLogicIsWaiting = 0;
static volatile u32 salDspIsDone = 0;
static void* salAIBufferBase = NULL;
static u8 salAIBufferIndex = 0;
SND_SOME_CALLBACK userCallback = NULL;

#define DMA_BUFFER_LEN 0x280

u32 salGetStartDelay();

void callUserCallback() {
  if (salLogicActive) {
    return;
  }
  salLogicActive = 1;
  OSEnableInterrupts();
  userCallback();
  OSDisableInterrupts();
  salLogicActive = 0;
}

void salCallback() {
  salAIBufferIndex = (salAIBufferIndex + 1) % 4;
  AIInitDMA(OSCachedToPhysical(salAIBufferBase) + (salAIBufferIndex * DMA_BUFFER_LEN),
            DMA_BUFFER_LEN);
  salLastTick = OSGetTick();
  if (salDspIsDone) {
    callUserCallback();
  } else {
    salLogicIsWaiting = 1;
  }
}

void dspInitCallback() {
  salDspIsDone = TRUE;
  salDspInitIsDone = TRUE;
}

void dspResumeCallback() {
  salDspIsDone = TRUE;
  if (salLogicIsWaiting) {
    salLogicIsWaiting = FALSE;
    callUserCallback();
  }
}

u32 salInitAi(SND_SOME_CALLBACK callback, u32 unk, u32* outFreq) {
  if ((salAIBufferBase = salMalloc(DMA_BUFFER_LEN * 4)) != NULL) {
    memset(salAIBufferBase, 0, DMA_BUFFER_LEN * 4);
    DCFlushRange(salAIBufferBase, DMA_BUFFER_LEN * 4);
    salAIBufferIndex = TRUE;
    salLogicIsWaiting = FALSE;
    salDspIsDone = TRUE;
    salLogicActive = FALSE;
    userCallback = callback;
    AIRegisterDMACallback(salCallback);
    AIInitDMA(OSCachedToPhysical(salAIBufferBase) + (salAIBufferIndex * 0x280), 0x280);
    synthInfo.numSamples = 0x20;
    *outFreq = 32000;
    MUSY_DEBUG("MusyX AI interface initialized.\n");
    return TRUE;
  }

  return FALSE;
}

u32 salStartAi() { AIStartDMA(); }

u32 salExitAi() {
  AIRegisterDMACallback(NULL);
  AIStopDMA();
  salFree(salAIBufferBase);
  return TRUE;
}

void* salAiGetDest() {
  return (void*)((u32)salAIBufferBase + (u8)((salAIBufferIndex + 2) % 4) * DMA_BUFFER_LEN);
}

u32 salInitDsp() {
  dsp_task.iram_mmem_addr = (u16*)dspSlave;
  dsp_task.iram_length = dspSlaveLength;
  dsp_task.iram_addr = 0;
  dsp_task.dram_mmem_addr = (u16*)dram_image;
  dsp_task.dram_length = 0x2000;
  dsp_task.dram_addr = 0;
  dsp_task.dsp_init_vector = 0x10;
  dsp_task.dsp_resume_vector = 0x30;
  dsp_task.init_cb = dspInitCallback;
  dsp_task.res_cb = dspResumeCallback;
  dsp_task.done_cb = NULL;
  dsp_task.req_cb = NULL;
  dsp_task.priority = 0;
  DSPInit();
  DSPAddTask(&dsp_task);
  salDspInitIsDone = FALSE;
  hwEnableIrq();
  while (!salDspInitIsDone)
    ;
  hwDisableIrq();
  return TRUE;
}

u32 salExitDsp() {
  DSPHalt();
  while (DSPGetDMAStatus())
    ;
  DSPReset();

  return TRUE;
}
void salStartDsp(u16* cmdList) {
  salDspIsDone = FALSE;
  PPCSync();
  /* clang-format off */
  MUSY_ASSERT(((u32)cmdList&0x1F) == 0);
  /* clang-format on */
  DSPSendMailToDSP(dspCmdFirstSize | 0xbabe0000);

  while (DSPCheckMailToDSP())
    ;
  DSPSendMailToDSP((u32)cmdList);
  while (DSPCheckMailToDSP())
    ;
}

void salCtrlDsp(u32 unk) {
  salBuildCommandList(unk, salGetStartDelay());
  salStartDsp(dspCmdList);
}

u32 salGetStartDelay() { return OSTicksToMicroseconds(OSGetTick() - salLastTick); }

void hwInitIrq() {
  oldState = OSDisableInterrupts();
  hwIrqLevel = 1;
}

void hwExitIrq() {}

void hwEnableIrq() {
  if (--hwIrqLevel == 0) {
    OSRestoreInterrupts(oldState);
  }
}

void hwDisableIrq() {
  if ((hwIrqLevel++) == 0) {
    oldState = OSDisableInterrupts();
  }
}

void hwIRQEnterCritical() { OSDisableInterrupts(); }

void hwIRQLeaveCritical() { OSEnableInterrupts(); }

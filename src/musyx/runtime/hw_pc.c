#include "musyx/platform.h"

#if MUSY_TARGET == MUSY_TARGET_PC
#include <pthread.h>
#include "musyx/assert.h"
#include "musyx/hardware.h"
#include "musyx/sal.h"
#include <string.h>

static volatile u32 oldState = 0;
static volatile u16 hwIrqLevel = 0;
static volatile u32 salDspInitIsDone = 0;
static volatile u64 salLastTick = 0;
static volatile u32 salLogicActive = 0;
static volatile u32 salLogicIsWaiting = 0;
static volatile u32 salDspIsDone = 0;
void* salAIBufferBase = NULL;
static u8 salAIBufferIndex = 0;
static SND_SOME_CALLBACK userCallback = NULL;

#define DMA_BUFFER_LEN 0x280
pthread_mutex_t globalMutex;
pthread_mutex_t globalInterrupt;

u32 salGetStartDelay();
static void callUserCallback() {
  if (salLogicActive) {
    return;
  }
  salLogicActive = 1;
  // OSEnableInterrupts();
  userCallback();
  // OSDisableInterrupts();
  salLogicActive = 0;
}

void salCallback() {
  salAIBufferIndex = (salAIBufferIndex + 1) % 4;
  // AIInitDMA(OSCachedToPhysical(salAIBufferBase) + (salAIBufferIndex * DMA_BUFFER_LEN),
  //           DMA_BUFFER_LEN);
  salLastTick = 0; // OSGetTick();
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

bool salInitAi(SND_SOME_CALLBACK callback, u32 unk, u32* outFreq) {
  if ((salAIBufferBase = salMalloc(DMA_BUFFER_LEN * 4)) != NULL) {
    memset(salAIBufferBase, 0, DMA_BUFFER_LEN * 4);
    // DCFlushRange(salAIBufferBase, DMA_BUFFER_LEN * 4);
    salAIBufferIndex = TRUE;
    salLogicIsWaiting = FALSE;
    salDspIsDone = TRUE;
    salLogicActive = FALSE;
    userCallback = callback;
    // AIRegisterDMACallback(salCallback);
    // AIInitDMA(OSCachedToPhysical(salAIBufferBase) + (salAIBufferIndex * 0x280), 0x280);
    synthInfo.numSamples = 0x20;
    *outFreq = 32000;
    MUSY_DEBUG("MusyX AI interface initialized.\n");
    return TRUE;
  }

  return FALSE;
}

bool salStartAi() { } //AIStartDMA(); }

bool salExitAi() {
  salFree(salAIBufferBase);
  return TRUE;
}

void* salAiGetDest() {
  u8 index; // r31
  index = (salAIBufferIndex + 2) % 4;
  return NULL;
}

bool salInitDsp(u32) { return TRUE; }

bool salExitDsp() {}

void salStartDsp(s16* cmdList) {}

void salCtrlDsp(s16* dest) {
  salBuildCommandList(dest, salGetStartDelay());
  salStartDsp(dspCmdList);
}

u32 salGetStartDelay() { return 0; }

void hwInitIrq() {
  // oldState = OSDisableInterrupts();
  hwIrqLevel = 1;
  pthread_mutexattr_t attr;
  pthread_mutexattr_init(&attr);
  pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_ROBUST);
  pthread_mutex_init(&globalMutex, &attr);
}

void hwExitIrq() {}

void hwEnableIrq() {
  if (--hwIrqLevel == 0) {
    // OSRestoreInterrupts(oldState);
  }
}

void hwDisableIrq() {
  if ((hwIrqLevel++) == 0) {
    // oldState = OSDisableInterrupts();
  }
}

void hwIRQEnterCritical() {
  pthread_mutex_lock(&globalMutex);
}

void hwIRQLeaveCritical() {
  pthread_mutex_unlock(&globalMutex);
}
#endif

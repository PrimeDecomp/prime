#include "dolphin/ar.h"

#include "dolphin/dsp_regs.h"
#include "dolphin/os.h"

static const char* __ARVersion =
    "<< Dolphin SDK - AR\trelease build: Sep  5 2002 05:34:27 (0x2301) >>";

static ARCallback __AR_Callback;
static u32 __AR_Size;
static u32 __AR_InternalSize;
static u32 __AR_ExpansionSize;

static u32 __AR_StackPointer;
static u32 __AR_FreeBlocks;
static u32* __AR_BlockLength;

static volatile BOOL __AR_init_flag = FALSE;

static void __ARHandler(__OSInterrupt interrupt, OSContext* context);
static void __ARChecksize(void);
static void __ARClearArea(u32 start_addr, u32 length);

ARCallback ARRegisterDMACallback(ARCallback callback) {
  ARCallback oldCb;
  BOOL enabled;
  oldCb = __AR_Callback;
  enabled = OSDisableInterrupts();
  __AR_Callback = callback;
  OSRestoreInterrupts(enabled);
  return oldCb;
}

u32 ARGetDMAStatus() {
  BOOL enabled;
  u32 val;
  enabled = OSDisableInterrupts();
  val = __DSPRegs[5] & 0x0200;
  OSRestoreInterrupts(enabled);
  return val;
}

void ARStartDMA(u32 type, u32 mainmem_addr, u32 aram_addr, u32 length) {
  BOOL enabled;

  enabled = OSDisableInterrupts();

  __DSPRegs[16] = (u16)(__DSPRegs[16] & ~0x3ff) | (u16)(mainmem_addr >> 16);
  __DSPRegs[17] = (u16)(__DSPRegs[17] & ~0xffe0) | (u16)(mainmem_addr & 0xffff);
  __DSPRegs[18] = (u16)(__DSPRegs[18] & ~0x3ff) | (u16)(aram_addr >> 16);
  __DSPRegs[19] = (u16)(__DSPRegs[19] & ~0xffe0) | (u16)(aram_addr & 0xffff);
  __DSPRegs[20] = (u16)((__DSPRegs[20] & ~0x8000) | (type << 15));
  __DSPRegs[20] = (u16)(__DSPRegs[20] & ~0x3ff) | (u16)(length >> 16);
  __DSPRegs[21] = (u16)(__DSPRegs[21] & ~0xffe0) | (u16)(length & 0xffff);
  OSRestoreInterrupts(enabled);
}

u32 ARAlloc(u32 length) {
  u32 tmp;
  BOOL enabled;

  enabled = OSDisableInterrupts();
  tmp = __AR_StackPointer;
  __AR_StackPointer += length;
  *__AR_BlockLength = length;
  __AR_BlockLength++;
  __AR_FreeBlocks--;
  OSRestoreInterrupts(enabled);

  return tmp;
}

u32 ARFree(u32* length) {
  BOOL old;

  old = OSDisableInterrupts();

  __AR_BlockLength--;

  if (length) {
    *length = *__AR_BlockLength;
  }

  __AR_StackPointer -= *__AR_BlockLength;

  __AR_FreeBlocks++;

  OSRestoreInterrupts(old);

  return __AR_StackPointer;
}

BOOL ARCheckInit() { return __AR_init_flag; }

u32 ARInit(u32* stack_index_addr, u32 num_entries) {

  BOOL old;
  u16 refresh;

  if (__AR_init_flag == TRUE) {
    return 0x4000;
  }

  OSRegisterVersion(__ARVersion);

  old = OSDisableInterrupts();

  __AR_Callback = NULL;

  __OSSetInterruptHandler(__OS_INTERRUPT_DSP_ARAM, __ARHandler);
  __OSUnmaskInterrupts(OS_INTERRUPTMASK_DSP_ARAM);

  __AR_StackPointer = 0x4000;
  __AR_FreeBlocks = num_entries;
  __AR_BlockLength = stack_index_addr;

  refresh = (u16)(__DSPRegs[13] & 0x000000ff);

  __DSPRegs[13] = (u16)((__DSPRegs[13] & ~0x000000ff) | (refresh & 0x000000ff));

  __ARChecksize();

  __AR_init_flag = TRUE;

  OSRestoreInterrupts(old);

  return __AR_StackPointer;
}

u32 ARGetBaseAddress(void) { return 0x4000; }

u32 ARGetSize() { return __AR_Size; }

static void __ARHandler(__OSInterrupt interrupt, OSContext* context) {

  OSContext exceptionContext;
  u16 tmp;

  tmp = __DSPRegs[5];
  tmp = (u16)((tmp & ~0x00000088) | 0x20);
  __DSPRegs[5] = tmp;

  OSClearContext(&exceptionContext);
  OSSetCurrentContext(&exceptionContext);

  if (__AR_Callback) {
    (*__AR_Callback)();
  }

  OSClearContext(&exceptionContext);
  OSSetCurrentContext(context);
}

static void __ARChecksize() {}

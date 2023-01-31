#include "dolphin/dsp.h"
#include "dolphin/os.h"

#include "dolphin/dsp_regs.h"

#ifdef __cplusplus
extern "C" {
#endif

static const char* __DSPVersion =
    "<< Dolphin SDK - DSP\trelease build: Sep  5 2002 05:35:13 (0x2301) >>";

static s32 __DSP_init_flag = 0;
extern DSPTaskInfo* __DSP_tmp_task;
extern DSPTaskInfo* __DSP_last_task;
extern DSPTaskInfo* __DSP_first_task;
extern DSPTaskInfo* __DSP_curr_task;

extern void __DSPHandler(__OSInterrupt, OSContext*);
extern void __DSP_debug_printf(const char* fmt, ...);
extern void __DSP_boot_task(DSPTaskInfo* task);

u32 DSPCheckMailToDSP(void) { return (__DSPRegs[0] >> 0xF) & 1; }

u32 DSPCheckMailFromDSP(void) { return (__DSPRegs[2] >> 0xF) & 1; }

u32 DSPReadMailFromDSP() {
  u16 reg1;
  u16 reg2;
  reg1 = __DSPRegs[2];
  reg2 = __DSPRegs[3];
  return reg1 << 16 | reg2;
}

void DSPSendMailToDSP(u32 mail) {
  __DSPRegs[0] = mail >> 16;
  __DSPRegs[1] = mail;
}

void DSPInit(void) {
  u32 oldInt;
  u16 reg;
  __DSP_debug_printf("DSPInit(): Build Date: %s %s\n", "Sep  5 2002", "05:35:13");

  if (__DSP_init_flag == 1) {
    return;
  }
  OSRegisterVersion(__DSPVersion);
  oldInt = OSDisableInterrupts();
  __OSSetInterruptHandler(7, __DSPHandler);
  __OSUnmaskInterrupts(0x1000000);
  reg = __DSPRegs[5];
  reg = (reg & ~0xA8) | 0x800;
  __DSPRegs[5] = reg;
  reg = __DSPRegs[5];
  reg = reg & ~0xAC;
  __DSPRegs[5] = reg;
  __DSP_tmp_task = 0;
  __DSP_curr_task = 0;
  __DSP_last_task = 0;
  __DSP_first_task = 0;
  __DSP_init_flag = 1;
  OSRestoreInterrupts(oldInt);
}

void DSPReset(void) {
  u16 reg;
  u32 oldInt;
  oldInt = OSDisableInterrupts();
  reg = __DSPRegs[5];
  __DSPRegs[5] = (reg & ~0xA8) | 0x801;
  __DSP_init_flag = 0;
  OSRestoreInterrupts(oldInt);
}

void DSPHalt(void) {
  u16 reg;
  u32 oldInt;
  oldInt = OSDisableInterrupts();
  reg = __DSPRegs[5];
  __DSPRegs[5] = (reg & ~0xA8) | 4;
  OSRestoreInterrupts(oldInt);
}

u32 DSPGetDMAStatus(void) { return __DSPRegs[5] & 0x200; }

#ifdef FULL_FRANK
DSPTaskInfo* DSPAddTask(DSPTaskInfo* task) {
  u32 oldInt;
  oldInt = OSDisableInterrupts();
  __DSP_insert_task(task);
  task->state = 0;
  task->flags = 1;
  OSRestoreInterrupts(oldInt);
  if (task == __DSP_first_task) {
    __DSP_boot_task(task);
  }

  return task;
}
#else 
#pragma push
#include "__ppc_eabi_linker.h"
/* clang-format off */
#pragma optimization_level 0
#pragma optimizewithasm off
extern void __DSP_insert_task(DSPTaskInfo* task);
asm DSPTaskInfo* DSPAddTask(DSPTaskInfo* task) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x18(r1)
  stw r31, 0x14(r1)
  stw r30, 0x10(r1)
  mr r30, r3
  bl OSDisableInterrupts
  addi r31, r3, 0
  addi r3, r30, 0
  bl __DSP_insert_task
  li r0, 0
  stw r0, 0(r30)
  li r0, 1
  addi r3, r31, 0
  stw r0, 8(r30)
  bl OSRestoreInterrupts
  lwz r0, __DSP_first_task
  cmplw r30, r0
  bne lbl_8036FBB4
  mr r3, r30
  bl __DSP_boot_task
lbl_8036FBB4:
  mr r3, r30
  lwz r0, 0x1c(r1)
  lwz r31, 0x14(r1)
  lwz r30, 0x10(r1)
  addi r1, r1, 0x18
  mtlr r0
  blr
}
#pragma pop
#endif
/* clang-format on */
#ifdef __cplusplus
}
#endif

#include <dolphin/PPCArch.h>
#include <dolphin/dsp_regs.h>
#include <dolphin/dvd_regs.h>
#include <dolphin/os.h>
#include <stdio.h>

OSThread* __OSCurrentThread : (OS_BASE_CACHED | 0x00E4);
OSThreadQueue __OSActiveThreadQueue : (OS_BASE_CACHED | 0x00DC);
volatile OSContext* __OSFPUContext : (OS_BASE_CACHED | 0x00D8);

OSErrorHandler __OSErrorTable[OS_ERROR_MAX];
#define FPSCR_ENABLE (FPSCR_VE | FPSCR_OE | FPSCR_UE | FPSCR_ZE | FPSCR_XE)
u32 __OSFpscrEnableBits = FPSCR_ENABLE;

__declspec(weak) void OSReport(const char* msg, ...) {
  va_list args;
  va_start(args, msg);
  vprintf(msg, args);
  va_end(args);
}

__declspec(weak) void OSVReport(const char* msg, va_list list) { vprintf(msg, list); }

__declspec(weak) void OSPanic(const char* file, int line, const char* msg, ...) {
  va_list marker;
  u32 i;
  u32* p;

  OSDisableInterrupts();
  va_start(marker, msg);
  vprintf(msg, marker);
  va_end(marker);
  OSReport(" in \"%s\" on line %d.\n", file, line);

  OSReport("\nAddress:      Back Chain    LR Save\n");
  for (i = 0, p = (u32*)OSGetStackPointer(); p && (u32)p != 0xffffffff && i++ < 16; p = (u32*)*p) {
    OSReport("0x%08x:   0x%08x    0x%08x\n", p, p[0], p[1]);
  }

  PPCHalt();
}

#if NONMATCHING
OSErrorHandler OSSetErrorHandler(OSError error, OSErrorHandler handler) {
  OSErrorHandler oldHandler;
  BOOL enabled;

  enabled = OSDisableInterrupts();
  oldHandler = __OSErrorTable[error];
  __OSErrorTable[error] = handler;

  if (error == OS_ERROR_FPE) {
    u32 msr;
    u32 fpscr;
    OSThread* thread;

    msr = PPCMfmsr();
    PPCMtmsr(msr | MSR_FP);
    fpscr = PPCMffpscr();
    if (handler) {
      for (thread = __OSActiveThreadQueue.head; thread; thread = thread->linkActive.next) {
        thread->context.srr1 |= MSR_FE0 | MSR_FE1;
        if ((thread->context.state & OS_CONTEXT_STATE_FPSAVED) == 0) {
          int i;
          thread->context.state |= OS_CONTEXT_STATE_FPSAVED;
          for (i = 0; i < 32; ++i) {
            *(u64*)&thread->context.fpr[i] = (u64)0xffffffffffffffffLL;
            *(u64*)&thread->context.psf[i] = (u64)0xffffffffffffffffLL;
          }
          thread->context.fpscr = FPSCR_NI;
        }
        thread->context.fpscr |= __OSFpscrEnableBits & FPSCR_ENABLE;
        thread->context.fpscr &=
            ~(FPSCR_VXVC | FPSCR_VXIMZ | FPSCR_VXZDZ | FPSCR_VXIDI | FPSCR_VXISI | FPSCR_VXSNAN |
              FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX | FPSCR_ZX | FPSCR_UX |
              FPSCR_OX | FPSCR_FX | FPSCR_FI);
      }
      fpscr |= __OSFpscrEnableBits & FPSCR_ENABLE;
      msr |= MSR_FE0 | MSR_FE1;
    } else {
      for (thread = __OSActiveThreadQueue.head; thread; thread = thread->linkActive.next) {
        thread->context.srr1 &= ~(MSR_FE0 | MSR_FE1);
        thread->context.fpscr &= ~FPSCR_ENABLE;
        thread->context.fpscr &=
            ~(FPSCR_VXVC | FPSCR_VXIMZ | FPSCR_VXZDZ | FPSCR_VXIDI | FPSCR_VXISI | FPSCR_VXSNAN |
              FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX | FPSCR_ZX | FPSCR_UX |
              FPSCR_OX | FPSCR_FX | FPSCR_FI);
      }
      fpscr &= ~FPSCR_ENABLE;
      msr &= ~(MSR_FE0 | MSR_FE1);
    }

    fpscr &= ~(FPSCR_VXVC | FPSCR_VXIMZ | FPSCR_VXZDZ | FPSCR_VXIDI | FPSCR_VXISI | FPSCR_VXSNAN |
               FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX | FPSCR_ZX | FPSCR_UX |
               FPSCR_OX | FPSCR_FX | FPSCR_FI);

    PPCMtfpscr(fpscr);
    PPCMtmsr(msr);
  }

  OSRestoreInterrupts(enabled);
  return oldHandler;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm OSErrorHandler OSSetErrorHandler(OSError error, OSErrorHandler handler) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x30(r1)
  stw r31, 0x2c(r1)
  stw r30, 0x28(r1)
  stw r29, 0x24(r1)
  addi r29, r3, 0
  stw r28, 0x20(r1)
  addi r28, r4, 0
  bl OSDisableInterrupts
  lis r4, __OSErrorTable@ha
  rlwinm r5, r29, 2, 0xe, 0x1d
  addi r0, r4, __OSErrorTable@l
  clrlwi r6, r29, 0x10
  add r4, r0, r5
  lwz r30, 0(r4)
  cmplwi r6, 0x10
  mr r29, r3
  stw r28, 0(r4)
  bne lbl_8037FD44
  bl PPCMfmsr
  addi r31, r3, 0
  ori r3, r31, 0x2000
  bl PPCMtmsr
  bl PPCMffpscr
  cmplwi r28, 0
  beq lbl_8037FCD8
  lis r5, __OSActiveThreadQueue@ha
  lis r4, 0x6005F8FF@ha
  lwz r6, __OSActiveThreadQueue@l(r5)
  addi r4, r4, 0x6005F8FF@l
  b lbl_8037FCBC
lbl_8037FBD8:
  lwz r0, 0x19c(r6)
  ori r0, r0, 0x900
  stw r0, 0x19c(r6)
  lhz r5, 0x1a2(r6)
  clrlwi. r0, r5, 0x1f
  bne lbl_8037FC98
  ori r5, r5, 1
  li r0, 4
  sth r5, 0x1a2(r6)
  mtctr r0
  addi r5, r6, 0
lbl_8037FC04:
  li r0, -1
  stw r0, 0x94(r5)
  stw r0, 0x90(r5)
  stw r0, 0x1cc(r5)
  stw r0, 0x1c8(r5)
  stw r0, 0x9c(r5)
  stw r0, 0x98(r5)
  stw r0, 0x1d4(r5)
  stw r0, 0x1d0(r5)
  stw r0, 0xa4(r5)
  stw r0, 0xa0(r5)
  stw r0, 0x1dc(r5)
  stw r0, 0x1d8(r5)
  stw r0, 0xac(r5)
  stw r0, 0xa8(r5)
  stw r0, 0x1e4(r5)
  stw r0, 0x1e0(r5)
  stw r0, 0xb4(r5)
  stw r0, 0xb0(r5)
  stw r0, 0x1ec(r5)
  stw r0, 0x1e8(r5)
  stw r0, 0xbc(r5)
  stw r0, 0xb8(r5)
  stw r0, 0x1f4(r5)
  stw r0, 0x1f0(r5)
  stw r0, 0xc4(r5)
  stw r0, 0xc0(r5)
  stw r0, 0x1fc(r5)
  stw r0, 0x1f8(r5)
  stw r0, 0xcc(r5)
  stw r0, 0xc8(r5)
  stw r0, 0x204(r5)
  stw r0, 0x200(r5)
  addi r5, r5, 0x40
  bdnz lbl_8037FC04
  li r0, 4
  stw r0, 0x194(r6)
lbl_8037FC98:
  lwz r0, __OSFpscrEnableBits
  lwz r5, 0x194(r6)
  rlwinm r0, r0, 0, 0x18, 0x1c
  or r0, r5, r0
  stw r0, 0x194(r6)
  lwz r0, 0x194(r6)
  and r0, r0, r4
  stw r0, 0x194(r6)
  lwz r6, 0x2fc(r6)
lbl_8037FCBC:
  cmplwi r6, 0
  bne lbl_8037FBD8
  lwz r0, __OSFpscrEnableBits
  ori r31, r31, 0x900
  rlwinm r0, r0, 0, 0x18, 0x1c
  or r3, r3, r0
  b lbl_8037FD2C
lbl_8037FCD8:
  lis r5, __OSActiveThreadQueue@ha
  lis r4, 0x6005F8FF@ha
  lwz r6, __OSActiveThreadQueue@l(r5)
  addi r4, r4, 0x6005F8FF@l
  li r5, -2305
  b lbl_8037FD18
lbl_8037FCF0:
  lwz r0, 0x19c(r6)
  and r0, r0, r5
  stw r0, 0x19c(r6)
  lwz r0, 0x194(r6)
  rlwinm r0, r0, 0, 0x1d, 0x17
  stw r0, 0x194(r6)
  lwz r0, 0x194(r6)
  and r0, r0, r4
  stw r0, 0x194(r6)
  lwz r6, 0x2fc(r6)
lbl_8037FD18:
  cmplwi r6, 0
  bne lbl_8037FCF0
  li r0, -2305
  rlwinm r3, r3, 0, 0x1d, 0x17
  and r31, r31, r0
lbl_8037FD2C:
  lis r4, 0x6005F8FF@ha
  addi r0, r4, 0x6005F8FF@l
  and r3, r3, r0
  bl PPCMtfpscr
  mr r3, r31
  bl PPCMtmsr
lbl_8037FD44:
  mr r3, r29
  bl OSRestoreInterrupts
  mr r3, r30
  lwz r0, 0x34(r1)
  lwz r31, 0x2c(r1)
  lwz r30, 0x28(r1)
  lwz r29, 0x24(r1)
  lwz r28, 0x20(r1)
  addi r1, r1, 0x30
  mtlr r0
  blr
}
#pragma pop
/* clang-format on */
#endif
void __OSUnhandledException(__OSException exception, OSContext* context, u32 dsisr, u32 dar) {
  OSTime now;

  now = OSGetTime();

  if (!(context->srr1 & MSR_RI)) {
    OSReport("Non-recoverable Exception %d", exception);
  } else {
    if (exception == __OS_EXCEPTION_PROGRAM && (context->srr1 & (0x80000000 >> 11)) &&
        __OSErrorTable[OS_ERROR_FPE] != 0) {
      u32 fpscr;
      u32 msr;

      exception = OS_ERROR_FPE;

      msr = PPCMfmsr();
      PPCMtmsr(msr | MSR_FP);

      if (__OSFPUContext) {
        OSSaveFPUContext((OSContext*)__OSFPUContext);
      }

      fpscr = PPCMffpscr();
      fpscr &= ~(FPSCR_VXVC | FPSCR_VXIMZ | FPSCR_VXZDZ | FPSCR_VXIDI | FPSCR_VXISI | FPSCR_VXSNAN |
                 FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX | FPSCR_ZX | FPSCR_UX |
                 FPSCR_OX | FPSCR_FX | FPSCR_FI);
      PPCMtfpscr(fpscr);

      PPCMtmsr(msr);

      if (__OSFPUContext == context) {
        OSDisableScheduler();
        __OSErrorTable[exception](exception, context, dsisr, dar);
        context->srr1 &= ~MSR_FP;
        __OSFPUContext = NULL;

        context->fpscr &= ~(FPSCR_VXVC | FPSCR_VXIMZ | FPSCR_VXZDZ | FPSCR_VXIDI | FPSCR_VXISI |
                            FPSCR_VXSNAN | FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX |
                            FPSCR_ZX | FPSCR_UX | FPSCR_OX | FPSCR_FX | FPSCR_FI);
        OSEnableScheduler();
        __OSReschedule();
      } else {
        context->srr1 &= ~MSR_FP;
        __OSFPUContext = NULL;
      }

      OSLoadContext(context);
    }

    if (__OSErrorTable[exception]) {
      OSDisableScheduler();
      __OSErrorTable[exception](exception, context, dsisr, dar);
      OSEnableScheduler();
      __OSReschedule();
      OSLoadContext(context);
    }

    if (exception == OS_ERROR_DECREMENTER) {
      OSLoadContext(context);
    }

    OSReport("Unhandled Exception %d", exception);
  }

  OSReport("\n");
  OSDumpContext(context);
  OSReport("\nDSISR = 0x%08x                   DAR  = 0x%08x\n", dsisr, dar);
  OSReport("TB = 0x%016llx\n", now);

  switch (exception) {
  case __OS_EXCEPTION_DSI:
    OSReport("\nInstruction at 0x%x (read from SRR0) attempted to access "
             "invalid address 0x%x (read from DAR)\n",
             context->srr0, dar);
    break;
  case __OS_EXCEPTION_ISI:
    OSReport("\nAttempted to fetch instruction from invalid address 0x%x "
             "(read from SRR0)\n",
             context->srr0);
    break;
  case __OS_EXCEPTION_ALIGNMENT:
    OSReport("\nInstruction at 0x%x (read from SRR0) attempted to access "
             "unaligned address 0x%x (read from DAR)\n",
             context->srr0, dar);
    break;
  case __OS_EXCEPTION_PROGRAM:
    OSReport("\nProgram exception : Possible illegal instruction/operation "
             "at or around 0x%x (read from SRR0)\n",
             context->srr0, dar);
    break;
  case OS_ERROR_PROTECTION:
    OSReport("\n");
    OSReport("AI DMA Address =   0x%04x%04x\n", __DSPRegs[0x00000018], __DSPRegs[0x00000018 + 1]);
    OSReport("ARAM DMA Address = 0x%04x%04x\n", __DSPRegs[0x00000010], __DSPRegs[0x00000010 + 1]);
    OSReport("DI DMA Address =   0x%08x\n", __DIRegs[0x00000005]);
    break;
  }

  OSReport("\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n", __OSLastInterrupt,
           __OSLastInterruptSrr0, __OSLastInterruptTime);

  PPCHalt();
}

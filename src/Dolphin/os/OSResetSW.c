#include <dolphin/os.h>

extern OSTime __OSGetSystemTime();

u8 GameChoice : (OS_BASE_CACHED | 0x30E3);

vu32 __PIRegs[12] : 0xCC003000;

extern OSTime __OSStartTime;

static OSResetCallback ResetCallback;
static BOOL Down;
static BOOL LastState;
static OSTime HoldUp;
static OSTime HoldDown;

void __OSResetSWInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
  OSResetCallback callback;

  HoldDown = __OSGetSystemTime();
  while (__OSGetSystemTime() - HoldDown < OSMicrosecondsToTicks(100) &&
         !(__PIRegs[0] & 0x00010000)) {
    ;
  }
  if (!(__PIRegs[0] & 0x00010000)) {
    LastState = Down = TRUE;
    __OSMaskInterrupts(OS_INTERRUPTMASK_PI_RSW);
    if (ResetCallback) {
      callback = ResetCallback;
      ResetCallback = NULL;
      callback();
    }
  }
  __PIRegs[0] = 2;
}

#ifdef FULL_FRANK
BOOL OSGetResetButtonState(void) {
  BOOL enabled;
  BOOL state;
  u32 reg;
  OSTime now;

  enabled = OSDisableInterrupts();

  now = __OSGetSystemTime();

  reg = __PIRegs[0];
  if (!(reg & 0x00010000)) {
    if (!Down) {
      Down = TRUE;
      state = HoldUp ? TRUE : FALSE;
      HoldDown = now;
    } else {
      state = (HoldUp || (OSMicrosecondsToTicks(100) < now - HoldDown)) ? TRUE : FALSE;
    }
  } else if (Down) {
    Down = FALSE;
    state = LastState;
    if (state) {
      HoldUp = now;
    } else {
      HoldUp = 0;
    }
  } else if (HoldUp && (now - HoldUp < OSMillisecondsToTicks(40))) {
    state = TRUE;
  } else {
    state = FALSE;
    HoldUp = 0;
  }

  LastState = state;

  if (GameChoice & 0x3f) {
    OSTime fire = (GameChoice & 0x3f) * 60;
    fire = __OSStartTime + OSSecondsToTicks(fire);
    if (fire < now) {
      now -= fire;
      now = OSTicksToSeconds(now) / 2;
      if ((now & 1) == 0) {
        state = TRUE;
      } else {
        state = FALSE;
      }
    }
  }

  OSRestoreInterrupts(enabled);
  return state;
}
#else
extern void __div2i(void);
/* clang-format off */
#pragma push
#pragma optimization_level 
#pragma optimizewithasm off
asm BOOL OSGetResetButtonState(void) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x18(r1)
  stw r31, 0x14(r1)
  stw r30, 0x10(r1)
  stw r29, 0xc(r1)
  bl OSDisableInterrupts
  mr r30, r3
  bl __OSGetSystemTime
  lis r5, __PIRegs@ha
  lwz r0, __PIRegs@l(r5)
  rlwinm. r0, r0, 0, 0xf, 0xf
  bne lbl_8038369C
  lwz r0, Down
  cmpwi r0, 0
  bne lbl_8038360C
  lwz r0, HoldUp
  li r6, 0
  lwz r5, HoldUp+4
  li r7, 1
  xor r0, r0, r6
  xor r5, r5, r6
  stw r7, Down
  or. r0, r5, r0
  beq lbl_803835F8
  b lbl_803835FC
lbl_803835F8:
  mr r7, r6
lbl_803835FC:
  stw r4, HoldDown+4
  mr r29, r7
  stw r3, HoldDown
  b lbl_80383750
lbl_8038360C:
  lwz r0, HoldUp
  li r9, 0
  lwz r5, HoldUp+4
  li r10, 1
  xor r0, r0, r9
  xor r5, r5, r9
  or. r0, r5, r0
  bne lbl_80383680
  lis r6, __OSBusClock@ha
  lwz r5, HoldDown+4
  lwz r7, __OSBusClock@l(r6)
  lis r6, 0x431BDE83@ha
  addi r8, r6, 0x431BDE83@l
  lwz r0, HoldDown
  srwi r6, r7, 2
  mulhwu r6, r8, r6
  srwi r6, r6, 0xf
  mulli r6, r6, 0x64
  subfc r7, r5, r4
  subfe r0, r0, r3
  srwi r8, r6, 3
  xoris r5, r0, 0x8000
  xoris r6, r9, 0x8000
  subfc r0, r7, r8
  subfe r5, r5, r6
  subfe r5, r6, r6
  neg. r5, r5
  bne lbl_80383680
  mr r10, r9
lbl_80383680:
  cmpwi r10, 0
  beq lbl_80383690
  li r0, 1
  b lbl_80383694
lbl_80383690:
  li r0, 0
lbl_80383694:
  mr r29, r0
  b lbl_80383750
lbl_8038369C:
  lwz r0, Down
  cmpwi r0, 0
  beq lbl_803836D8
  lwz r5, LastState
  li r0, 0
  stw r0, Down
  cmpwi r5, 0
  addi r29, r5, 0
  beq lbl_803836CC
  stw r4, HoldUp+4
  stw r3, HoldUp
  b lbl_80383750
lbl_803836CC:
  stw r0, HoldUp+4
  stw r0, HoldUp
  b lbl_80383750
lbl_803836D8:
  lwz r6, HoldUp
  li r8, 0
  lwz r7, HoldUp+4
  xor r0, r6, r8
  xor r5, r7, r8
  or. r0, r5, r0
  beq lbl_80383740
  lis r5, __OSBusClock@ha
  lwz r0, __OSBusClock@l(r5)
  lis r5, 0x10624DD3@ha
  addi r5, r5, 0x10624DD3@l
  srwi r0, r0, 2
  mulhwu r0, r5, r0
  srwi r0, r0, 6
  mulli r0, r0, 0x28
  subfc r7, r7, r4
  subfe r5, r6, r3
  xoris r6, r5, 0x8000
  xoris r5, r8, 0x8000
  subfc r0, r0, r7
  subfe r5, r5, r6
  subfe r5, r6, r6
  neg. r5, r5
  beq lbl_80383740
  li r29, 1
  b lbl_80383750
lbl_80383740:
  li r0, 0
  stw r0, HoldUp+4
  li r29, 0
  stw r0, HoldUp
lbl_80383750:
  lis r5, GameChoice@ha
  stw r29, LastState
  lbz r0, GameChoice@l(r5)
  clrlwi. r0, r0, 0x1a
  beq lbl_80383800
  mulli r10, r0, 0x3c
  lwz r0, 0xf8(r5)
  lwz r9, __OSStartTime+4
  lwz r8, __OSStartTime
  srwi r6, r0, 2
  srawi r0, r10, 0x1f
  mullw r7, r0, r6
  mulhwu r0, r10, r6
  mullw r5, r10, r6
  addc r9, r9, r5
  li r31, 0
  add r7, r7, r0
  mullw r0, r10, r31
  add r0, r7, r0
  adde r8, r8, r0
  xoris r7, r8, 0x8000
  xoris r5, r3, 0x8000
  subfc r0, r4, r9
  subfe r5, r5, r7
  subfe r5, r7, r7
  neg. r5, r5
  beq lbl_80383800
  subfc r4, r9, r4
  subfe r3, r8, r3
  li r5, 0
  bl __div2i
  li r5, 0
  li r6, 2
  bl __div2i
  li r0, 1
  and r4, r4, r0
  and r0, r3, r31
  xor r3, r4, r31
  xor r0, r0, r31
  or. r0, r3, r0
  bne lbl_803837FC
  li r29, 1
  b lbl_80383800
lbl_803837FC:
  li r29, 0
lbl_80383800:
  mr r3, r30
  bl OSRestoreInterrupts
  mr r3, r29
  lwz r0, 0x1c(r1)
  lwz r31, 0x14(r1)
  lwz r30, 0x10(r1)
  lwz r29, 0xc(r1)
  addi r1, r1, 0x18
  mtlr r0
  blr
}
#pragma pop
/* clang-format on */
#endif

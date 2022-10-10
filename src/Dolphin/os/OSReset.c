#include "dolphin/os/OSReset.h"

volatile u8 DAT_800030e2 : 0x800030e2;
typedef struct Unk {
  u8 pad[0x24];
  u32 resetCode;
} Unk;
volatile Unk DAT_cc003000 : 0xcc003000;

typedef struct Unk2 {
  u16 _0;
  u16 _2;
} Unk2;

volatile Unk2 DAT_cc002000 : 0xcc002000;

typedef struct OSResetQueue {
  OSResetFunctionInfo* first;
  OSResetFunctionInfo* last;
} OSResetQueue;

OSResetQueue ResetFunctionQueue;

void OSRegisterResetFunction(OSResetFunctionInfo* func) {
  OSResetFunctionInfo* tmp;
  OSResetFunctionInfo* iter;

  for (iter = ResetFunctionQueue.first; iter && iter->priority <= func->priority; iter = iter->next)
    ;

  if (iter == NULL) {
    tmp = ResetFunctionQueue.last;
    if (tmp == NULL) {
      ResetFunctionQueue.first = func;
    } else {
      tmp->next = func;
    }
    func->prev = tmp;
    func->next = NULL;
    ResetFunctionQueue.last = func;
    return;
  }

  func->next = iter;
  tmp = iter->prev;
  iter->prev = func;
  func->prev = tmp;
  if (tmp == NULL) {
    ResetFunctionQueue.first = func;
    return;
  }
  tmp->next = func;
}

s32 __OSCallResetFunctions(s32 arg0) {
  OSResetFunctionInfo* iter;
  s32 retCode = 0;
  u32 ret;

  for (iter = ResetFunctionQueue.first; iter != NULL; iter = iter->next) {
    retCode |= !iter->func(arg0);
  }
  retCode |= !__OSSyncSram();
  if (retCode) {
    return 0;
  }
  return 1;
}

asm void Reset(register s32 resetCode) {
  // clang-format off
    nofralloc
    b lbl_8038315C
lbl_80383140:
    mfspr r8, 0x3f0
    ori r8, r8, 8
    mtspr 0x3f0, r8
    isync 
    sync
    nop 
    b lbl_80383160
lbl_8038315C:
    b lbl_8038317C
lbl_80383160:
    mftb r5, 0x10c
lbl_80383164:
    mftb r6, 0x10c
    subf r7, r5, r6
    cmplwi r7, 0x1124
    blt lbl_80383164
    nop 
    b lbl_80383180
lbl_8038317C:
    b lbl_8038319C
lbl_80383180:
    lis r8, 0xCC003000@h
    ori r8, r8, 0xCC003000@l
    li r4, 3
    stw r4, 0x24(r8)
    stw r3, 0x24(r8)
    nop 
    b lbl_803831A0
lbl_8038319C:
    b lbl_803831A8
lbl_803831A0:
    nop 
    b lbl_803831A0
lbl_803831A8:
    b lbl_80383140
  // clang-format on
}

void __OSDoHotReset(s32 arg0) {
  OSDisableInterrupts();
  DAT_cc002000._2 = 0;
  ICFlashInvalidate();
  Reset(arg0 * 8);
}

void OSResetSystem(int reset, u32 resetCode, BOOL forceMenu) {}

u32 OSGetResetCode(void) {
  if (DAT_800030e2 != 0) {
    return 0x80000000;
  }
  return ((DAT_cc003000.resetCode & ~7) >> 3);
}

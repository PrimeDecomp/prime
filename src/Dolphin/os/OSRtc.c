#include "dolphin/OSRtcPriv.h"
#include "dolphin/os.h"

#define RTC_CMD_READ 0x20000000
#define RTC_CMD_WRITE 0xa0000000

#define RTC_SRAM_ADDR 0x00000100
#define RTC_SRAM_SIZE 64

#define RTC_CHAN 0
#define RTC_DEV 1
#define RTC_FREQ 3 // EXI_FREQ_8M

typedef struct SramControlBlock {
  u8 sram[RTC_SRAM_SIZE];
  u32 offset;
  BOOL enabled;
  BOOL locked;
  BOOL sync;
  void (*callback)(void);
} SramControlBlock;

static SramControlBlock Scb ATTRIBUTE_ALIGN(32);

static BOOL GetRTC(u32* rtc) {
  BOOL err;
  u32 cmd;

  if (!EXILock(RTC_CHAN, RTC_DEV, 0)) {
    return FALSE;
  }
  if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
    EXIUnlock(RTC_CHAN);
    return FALSE;
  }

  cmd = RTC_CMD_READ;
  err = FALSE;
  err |= !EXIImm(RTC_CHAN, &cmd, 4, 1, NULL);
  err |= !EXISync(RTC_CHAN);
  err |= !EXIImm(RTC_CHAN, &cmd, 4, 0, NULL);
  err |= !EXISync(RTC_CHAN);
  err |= !EXIDeselect(RTC_CHAN);
  EXIUnlock(RTC_CHAN);

  *rtc = cmd;

  return !err;
}

BOOL __OSGetRTC(u32* rtc) {
  BOOL err;
  u32 t0;
  u32 t1;
  int i;

  for (i = 0; i < 16; i++) {
    err = FALSE;
    err |= !GetRTC(&t0);
    err |= !GetRTC(&t1);
    if (err) {
      break;
    }
    if (t0 == t1) {
      *rtc = t0;
      return TRUE;
    }
  }
  return FALSE;
}

BOOL __OSSetRTC(u32 rtc) {
  BOOL err;
  u32 cmd;

  if (!EXILock(RTC_CHAN, RTC_DEV, 0)) {
    return FALSE;
  }
  if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
    EXIUnlock(RTC_CHAN);
    return FALSE;
  }

  cmd = RTC_CMD_WRITE;
  err = FALSE;
  err |= !EXIImm(RTC_CHAN, &cmd, 4, 1, NULL);
  err |= !EXISync(RTC_CHAN);
  err |= !EXIImm(RTC_CHAN, &rtc, 4, 1, NULL);
  err |= !EXISync(RTC_CHAN);
  err |= !EXIDeselect(RTC_CHAN);
  EXIUnlock(RTC_CHAN);

  return !err;
}

static BOOL ReadSram(void* buffer) {
  BOOL err;
  u32 cmd;

  DCInvalidateRange(buffer, RTC_SRAM_SIZE);

  if (!EXILock(RTC_CHAN, RTC_DEV, 0)) {
    return FALSE;
  }
  if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
    EXIUnlock(RTC_CHAN);
    return FALSE;
  }

  cmd = RTC_CMD_READ | RTC_SRAM_ADDR;
  err = FALSE;
  err |= !EXIImm(RTC_CHAN, &cmd, 4, 1, NULL);
  err |= !EXISync(RTC_CHAN);
  err |= !EXIDma(RTC_CHAN, buffer, RTC_SRAM_SIZE, 0, NULL);
  err |= !EXISync(RTC_CHAN);
  err |= !EXIDeselect(RTC_CHAN);
  EXIUnlock(RTC_CHAN);

  return !err;
}

BOOL WriteSram(void* buffer, u32 offset, u32 size);
static void WriteSramCallback(s32 chan, OSContext* context) {
  Scb.sync = WriteSram(Scb.sram + Scb.offset, Scb.offset, RTC_SRAM_SIZE - Scb.offset);
  if (Scb.sync) {
    Scb.offset = RTC_SRAM_SIZE;
  }
}

BOOL WriteSram(void* buffer, u32 offset, u32 size) {
  BOOL err;
  u32 cmd;

  if (!EXILock(RTC_CHAN, RTC_DEV, WriteSramCallback)) {
    return FALSE;
  }
  if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
    EXIUnlock(RTC_CHAN);
    return FALSE;
  }

  offset <<= 6;
  cmd = RTC_CMD_WRITE | RTC_SRAM_ADDR + offset;
  err = FALSE;
  err |= !EXIImm(RTC_CHAN, &cmd, 4, 1, NULL);
  err |= !EXISync(RTC_CHAN);
  err |= !EXIImmEx(RTC_CHAN, buffer, (s32)size, 1);
  err |= !EXIDeselect(RTC_CHAN);
  EXIUnlock(RTC_CHAN);

  return !err;
}

void __OSInitSram() {
  Scb.locked = Scb.enabled = FALSE;
  Scb.sync = ReadSram(Scb.sram);
  Scb.offset = RTC_SRAM_SIZE;
}

static void* LockSram(u32 offset) {
  BOOL enabled;
  enabled = OSDisableInterrupts();

  if (Scb.locked != FALSE) {
    OSRestoreInterrupts(enabled);
    return NULL;
  }

  Scb.enabled = enabled;
  Scb.locked = TRUE;

  return Scb.sram + offset;
}

#ifdef FULL_FRANK
OSSram* __OSLockSram() { return LockSram(0); }
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm OSSram* __OSLockSram() {
  nofralloc
  mflr r0
  lis r3, Scb@ha
  stw r0, 4(r1)
  stwu r1, -0x10(r1)
  stw r31, 0xc(r1)
  addi r31, r3, Scb@l
  bl OSDisableInterrupts
  lwz r0, 0x48(r31)
  addi r4, r31, 0x48
  cmpwi r0, 0
  beq lbl_80383B0C
  bl OSRestoreInterrupts
  li r31, 0
  b lbl_80383B18
lbl_80383B0C:
  stw r3, 0x44(r31)
  li r0, 1
  stw r0, 0(r4)
lbl_80383B18:
  mr r3, r31
  lwz r0, 0x14(r1)
  lwz r31, 0xc(r1)
  addi r1, r1, 0x10
  mtlr r0
  blr
}
/* clang-format on */
#pragma pop
#endif

OSSramEx* __OSLockSramEx() { return LockSram(sizeof(OSSram)); }

static BOOL UnlockSram(BOOL commit, u32 offset) {
  u16* p;

  if (commit) {
    if (offset == 0) {
      OSSram* sram = (OSSram*)Scb.sram;

      if (2u < (sram->flags & 3)) {
        sram->flags &= ~3;
      }

      sram->checkSum = sram->checkSumInv = 0;
      for (p = (u16*)&sram->counterBias; p < (u16*)(Scb.sram + sizeof(OSSram)); p++) {
        sram->checkSum += *p;
        sram->checkSumInv += ~*p;
      }
    }

    if (offset < Scb.offset) {
      Scb.offset = offset;
    }

    Scb.sync = WriteSram(Scb.sram + Scb.offset, Scb.offset, RTC_SRAM_SIZE - Scb.offset);
    if (Scb.sync) {
      Scb.offset = RTC_SRAM_SIZE;
    }
  }
  Scb.locked = FALSE;
  OSRestoreInterrupts(Scb.enabled);
  return Scb.sync;
}

BOOL __OSUnlockSram(BOOL commit) { return UnlockSram(commit, 0); }

BOOL __OSUnlockSramEx(BOOL commit) { return UnlockSram(commit, sizeof(OSSram)); }

BOOL __OSSyncSram() { return Scb.sync; }

BOOL __OSReadROM(void* buffer, s32 length, s32 offset) {
  BOOL err;
  u32 cmd;

  DCInvalidateRange(buffer, (u32)length);

  if (!EXILock(RTC_CHAN, RTC_DEV, 0)) {
    return FALSE;
  }
  if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
    EXIUnlock(RTC_CHAN);
    return FALSE;
  }

  cmd = (u32)(offset << 6);
  err = FALSE;
  err |= !EXIImm(RTC_CHAN, &cmd, 4, 1, NULL);
  err |= !EXISync(RTC_CHAN);
  err |= !EXIDma(RTC_CHAN, buffer, length, 0, NULL);
  err |= !EXISync(RTC_CHAN);
  err |= !EXIDeselect(RTC_CHAN);
  EXIUnlock(RTC_CHAN);

  return !err;
}

inline OSSram* __OSLockSramHACK() { return LockSram(0); }
#ifdef FULL_FRANK
u32 OSGetSoundMode() {
  OSSram* sram;
  u32 mode;

  sram = __OSLockSramHACK();
  mode = (sram->flags & 0x4) ? OS_SOUND_MODE_STEREO : OS_SOUND_MODE_MONO;
  __OSUnlockSram(FALSE);
  return mode;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 
#pragma optimizewithasm off
asm u32 OSGetSoundMode() {
  nofralloc
  mflr r0
  lis r3, Scb@ha
  stw r0, 4(r1)
  stwu r1, -0x20(r1)
  stw r31, 0x1c(r1)
  addi r31, r3, Scb@l
  bl OSDisableInterrupts
  lwz r0, 0x48(r31)
  addi r4, r31, 0x48
  cmpwi r0, 0
  beq lbl_80384048
  bl OSRestoreInterrupts
  li r31, 0
  b lbl_80384054
lbl_80384048:
  stw r3, 0x44(r31)
  li r0, 1
  stw r0, 0(r4)
lbl_80384054:
  lbz r0, 0x13(r31)
  rlwinm. r0, r0, 0, 0x1d, 0x1d
  beq lbl_80384068
  li r31, 1
  b lbl_8038406C
lbl_80384068:
  li r31, 0
lbl_8038406C:
  li r3, 0
  li r4, 0
  bl UnlockSram
  mr r3, r31
  lwz r0, 0x24(r1)
  lwz r31, 0x1c(r1)
  addi r1, r1, 0x20
  mtlr r0
  blr

}
#pragma pop
/* clang-format on */
#endif
void OSSetSoundMode(u32 mode) {
  OSSram* sram;
  mode <<= 2;
  mode &= 4;

  sram = __OSLockSramHACK();
  if (mode == (sram->flags & 4)) {
    __OSUnlockSram(FALSE);
    return;
  }

  sram->flags &= ~4;
  sram->flags |= mode;
  __OSUnlockSram(TRUE);
}

#ifdef FULL_FRANK
u32 OSGetProgressiveMode() {
  OSSram* sram;
  u32 mode;

  sram = __OSLockSramHACK();
  mode = (sram->flags & 0x80) >> 7;
  __OSUnlockSram(FALSE);
  return mode;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 
#pragma optimizewithasm off
asm u32 OSGetProgressiveMode() {
  nofralloc
/* 80384134 00381094  7C 08 02 A6 */	mflr r0
/* 80384138 00381098  3C 60 80 54 */	lis r3, Scb@ha
/* 8038413C 0038109C  90 01 00 04 */	stw r0, 4(r1)
/* 80384140 003810A0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80384144 003810A4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80384148 003810A8  3B E3 15 A0 */	addi r31, r3, Scb@l
/* 8038414C 003810AC  4B FF D5 15 */	bl OSDisableInterrupts
/* 80384150 003810B0  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80384154 003810B4  38 9F 00 48 */	addi r4, r31, 0x48
/* 80384158 003810B8  2C 00 00 00 */	cmpwi r0, 0
/* 8038415C 003810BC  41 82 00 10 */	beq lbl_8038416C
/* 80384160 003810C0  4B FF D5 29 */	bl OSRestoreInterrupts
/* 80384164 003810C4  3B E0 00 00 */	li r31, 0
/* 80384168 003810C8  48 00 00 10 */	b lbl_80384178
lbl_8038416C:
/* 8038416C 003810CC  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80384170 003810D0  38 00 00 01 */	li r0, 1
/* 80384174 003810D4  90 04 00 00 */	stw r0, 0(r4)
lbl_80384178:
/* 80384178 003810D8  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 8038417C 003810DC  38 60 00 00 */	li r3, 0
/* 80384180 003810E0  38 80 00 00 */	li r4, 0
/* 80384184 003810E4  54 1F CF FE */	rlwinm r31, r0, 0x19, 0x1f, 0x1f
/* 80384188 003810E8  4B FF FA 05 */	bl UnlockSram
/* 8038418C 003810EC  7F E3 FB 78 */	mr r3, r31
/* 80384190 003810F0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80384194 003810F4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80384198 003810F8  38 21 00 18 */	addi r1, r1, 0x18
/* 8038419C 003810FC  7C 08 03 A6 */	mtlr r0
/* 803841A0 00381100  4E 80 00 20 */	blr
}
#pragma pop
/* clang-format on */
#endif

void OSSetProgressiveMode(u32 mode) {
  OSSram* sram;
  mode <<= 7;
  mode &= 0x80;

  sram = __OSLockSramHACK();
  if (mode == (sram->flags & 0x80)) {
    __OSUnlockSram(FALSE);
    return;
  }

  sram->flags &= ~0x80;
  sram->flags |= mode;
  __OSUnlockSram(TRUE);
}

#ifdef FULL_FRANK
u8 OSGetLanguage() {
  OSSram* sram;
  u8 language;

  sram = __OSLockSramHACK();
  language = sram->language;
  __OSUnlockSram(FALSE);
  return language;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 
#pragma optimizewithasm off
asm u8 OSGetLanguage() {
  nofralloc
  mflr r0
  lis r3, Scb@ha
  stw r0, 4(r1)
  stwu r1, -0x18(r1)
  stw r31, 0x14(r1)
  addi r31, r3, Scb@l
  bl OSDisableInterrupts
  lwz r0, 0x48(r31)
  addi r4, r31, 0x48
  cmpwi r0, 0
  beq lbl_80384280
  bl OSRestoreInterrupts
  li r31, 0
  b lbl_8038428C
lbl_80384280:
  stw r3, 0x44(r31)
  li r0, 1
  stw r0, 0(r4)
lbl_8038428C:
  lbz r31, 0x12(r31)
  li r3, 0
  li r4, 0
  bl UnlockSram
  mr r3, r31
  lwz r0, 0x1c(r1)
  lwz r31, 0x14(r1)
  addi r1, r1, 0x18
  mtlr r0
  blr
}
#pragma pop
/* clang-format on */
#endif

#ifdef FULL_FRANK
u16 OSGetWirelessID(s32 channel) {
  OSSramEx* sram;
  u16 id;

  sram = __OSLockSramEx();
  id = sram->wirelessPadID[channel];
  __OSUnlockSramEx(FALSE);
  return id;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 
#pragma optimizewithasm off

asm u16 OSGetWirelessID(s32 channel) {
  nofralloc
  mflr r0
  lis r4, Scb@ha
  stw r0, 4(r1)
  stwu r1, -0x20(r1)
  stw r31, 0x1c(r1)
  addi r31, r4, Scb@l
  stw r30, 0x18(r1)
  addi r30, r3, 0
  bl OSDisableInterrupts
  lwz r0, 0x48(r31)
  addi r4, r31, 0x48
  cmpwi r0, 0
  beq lbl_803842F4
  bl OSRestoreInterrupts
  li r3, 0
  b lbl_80384304
lbl_803842F4:
  stw r3, 0x44(r31)
  li r0, 1
  addi r3, r31, 0x14
  stw r0, 0(r4)
lbl_80384304:
  slwi r0, r30, 1
  add r3, r3, r0
  lhz r31, 0x1c(r3)
  li r3, 0
  li r4, 0x14
  bl UnlockSram
  mr r3, r31
  lwz r0, 0x24(r1)
  lwz r31, 0x1c(r1)
  lwz r30, 0x18(r1)
  addi r1, r1, 0x20
  mtlr r0
  blr
}
#pragma pop
/* clang-format on */
#endif


void OSSetWirelessID(s32 channel, u16 id) {
  OSSramEx* sram;

  sram = __OSLockSramEx();
  if (sram->wirelessPadID[channel] != id) {
    sram->wirelessPadID[channel] = id;
    __OSUnlockSramEx(TRUE);
    return;
  }

  __OSUnlockSramEx(FALSE);
}

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

OSSram* __OSLockSram() { return LockSram(0); }

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
u32 OSGetSoundMode() {
  OSSram* sram;
  u32 mode;

  sram = __OSLockSramHACK();
  mode = (sram->flags & 0x4) ? OS_SOUND_MODE_STEREO : OS_SOUND_MODE_MONO;
  __OSUnlockSram(FALSE);
  return mode;
}

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

u32 OSGetProgressiveMode() {
  OSSram* sram;
  u32 mode;

  sram = __OSLockSramHACK();
  mode = (sram->flags & 0x80) >> 7;
  __OSUnlockSram(FALSE);
  return mode;
}

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

u8 OSGetLanguage() {
  OSSram* sram;
  u8 language;

  sram = __OSLockSramHACK();
  language = sram->language;
  __OSUnlockSram(FALSE);
  return language;
}

u16 OSGetWirelessID(s32 channel) {
  OSSramEx* sram;
  u16 id;

  sram = __OSLockSramEx();
  id = sram->wirelessPadID[channel];
  __OSUnlockSramEx(FALSE);
  return id;
}

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

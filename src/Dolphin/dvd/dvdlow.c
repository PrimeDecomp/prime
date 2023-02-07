#include "dolphin/DVDPriv.h"
#include "dolphin/os.h"

extern DVDDiskID* DVDGetCurrentDiskID();

extern OSTime __OSGetSystemTime();
vu32 __PIRegs[12] : 0xCC003000;

static BOOL FirstRead = TRUE;
static volatile BOOL StopAtNextInt = FALSE;
static u32 LastLength = 0;
static DVDLowCallback Callback = NULL;
static DVDLowCallback ResetCoverCallback = NULL;
static volatile OSTime LastResetEnd = 0;
static volatile u32 ResetOccurred = FALSE;
static volatile BOOL WaitingCoverClose = FALSE;
static BOOL Breaking = FALSE;
static volatile u32 WorkAroundType = 0;
static u32 WorkAroundSeekLocation = 0;
static volatile OSTime LastReadFinished = 0;
static OSTime LastReadIssued = 0;
static volatile BOOL LastCommandWasRead = FALSE;
static vu32 NextCommandNumber = 0;

typedef struct DVDBuffer {
  void* addr;
  u32 length;
  u32 offset;
} DVDBuffer;

typedef struct DVDCommand {
  s32 cmd;
  void* addr;
  u32 length;
  u32 offset;
  DVDLowCallback callback;
} DVDCommand;

static DVDCommand CommandList[3];
static OSAlarm AlarmForWA;
static OSAlarm AlarmForTimeout;
static OSAlarm AlarmForBreak;
static DVDBuffer Prev;
static DVDBuffer Curr;

void __DVDInitWA() {
  NextCommandNumber = 0;
  CommandList[0].cmd = -1;
  __DVDLowSetWAType(0, 0);
  OSInitAlarm();
}

static void Read(void* addr, u32 length, u32 offset, DVDLowCallback callback);

static BOOL ProcessNextCommand() {
  s32 n = NextCommandNumber;
  ASSERT(n < 3);

  if (CommandList[n].cmd == 1) {
    ++NextCommandNumber;
    Read(CommandList[n].addr, CommandList[n].length, CommandList[n].offset,
         CommandList[n].callback);
    return TRUE;
  } else if (CommandList[n].cmd == 2) {
    ++NextCommandNumber;
    DVDLowSeek(CommandList[n].offset, CommandList[n].callback);
    return TRUE;
  } 

  return FALSE;
}

void __DVDInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
  DVDLowCallback cb;
  OSContext exceptionContext;
  u32 cause = 0;
  u32 reg;
  u32 intr;
  u32 mask;

  if (LastCommandWasRead) {
    LastReadFinished = __OSGetSystemTime();
    FirstRead = FALSE;
    Prev.addr = Curr.addr;
    Prev.length = Curr.length;
    Prev.offset = Curr.offset;
    if (StopAtNextInt == TRUE) {
      cause |= 8;
    }
  }

  LastCommandWasRead = FALSE;
  StopAtNextInt = FALSE;
  reg = __DIRegs[0];
  mask = reg & 0x2a;
  intr = (reg & 0x54) & (mask << 1);

  if (intr & 0x40) {
    cause |= 8;
  }

  if (intr & 0x10) {
    cause |= 1;
  }

  if (intr & 4) {
    cause |= 2;
  }

  if (cause) {
    ResetOccurred = FALSE;
    OSCancelAlarm(&AlarmForTimeout);
  }

  __DIRegs[0] = intr | mask;

  if (ResetOccurred && (__OSGetSystemTime() - LastResetEnd) < OSMillisecondsToTicks(200)) {
    reg = __DIRegs[1];
    mask = reg & 0x2;
    intr = (reg & 4) & (mask << 1);
    if (intr & 4) {
      if (ResetCoverCallback) {
        ResetCoverCallback(4);
      }
      ResetCoverCallback = NULL;
    }

    __DIRegs[1] = __DIRegs[1];
  } else if (WaitingCoverClose) {
    reg = __DIRegs[1];
    mask = reg & 2;
    intr = (reg & 4) & (mask << 1);

    if (intr & 4) {
      cause |= 4;
    }

    __DIRegs[1] = intr | mask;
    WaitingCoverClose = FALSE;
  } else {
    __DIRegs[1] = 0;
  }

  if ((cause & 8) && !Breaking) {
    cause &= ~8;
  }

  if ((cause & 1)) {
    if (ProcessNextCommand()) {
      return;
    }
  } else {
    CommandList[0].cmd = -1;
    NextCommandNumber = 0;
  }

  OSClearContext(&exceptionContext);
  OSSetCurrentContext(&exceptionContext);

  if (cause) {
    cb = Callback;
    Callback = NULL;
    if (cb) {
      cb(cause);
    }

    Breaking = FALSE;
  }

  OSClearContext(&exceptionContext);
  OSSetCurrentContext(context);
}

static void AlarmHandler(OSAlarm* alarm, OSContext* context) {
  BOOL error = ProcessNextCommand();
  ASSERTMSG(error != FALSE, "Failed assertion processed");
}

static void AlarmHandlerForTimeout(OSAlarm* alarm, OSContext* context) {
  OSContext tmpContext;
  DVDLowCallback callback;
  __OSMaskInterrupts(0x400);
  OSClearContext(&tmpContext);
  OSSetCurrentContext(&tmpContext);
  callback = Callback;
  Callback = NULL;
  if (callback != NULL) {
    callback(0x10);
  }
  OSClearContext(&tmpContext);
  OSSetCurrentContext(context);
}

static void SetTimeoutAlarm(OSTime timeout) {
  OSCreateAlarm(&AlarmForTimeout);
  OSSetAlarm(&AlarmForTimeout, timeout, AlarmHandlerForTimeout);
}

static void Read(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  LastCommandWasRead = TRUE;
  Callback = callback;
  LastReadIssued = __OSGetSystemTime();

  __DIRegs[2] = 0xa8000000;
  __DIRegs[3] = offset / 4;
  __DIRegs[4] = length;
  __DIRegs[5] = (u32)addr;
  __DIRegs[6] = length;
  LastLength = length;
  __DIRegs[7] = 3;

  if (length > 0xa00000) {
    SetTimeoutAlarm(OSSecondsToTicks(20));
  } else {
    SetTimeoutAlarm(OSSecondsToTicks(10));
  }
}

BOOL AudioBufferOn() { return DVDGetCurrentDiskID()->streaming ? TRUE : FALSE; }

BOOL HitCache(DVDBuffer* cur, DVDBuffer* prev) {
  u32 uVar1 = (prev->offset + prev->length - 1) >> 15;
  u32 uVar2 = (cur->offset >> 15);
  u32 iVar3 = AudioBufferOn() ? 5 : 15;

  if ((uVar2 > uVar1 - 2) || (uVar2 < uVar1 + iVar3 + 3)) {
    return TRUE;
  }
  return FALSE;
}

static void DoJustRead(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
  CommandList[0].cmd = -1;
  NextCommandNumber = 0;
  Read(addr, length, offset, callback);
}

static void SeekTwiceBeforeRead(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
  u32 newOffset = offset & ~0x7FFF;
  if (!newOffset) {
    newOffset = 0;
  } else {
    newOffset += WorkAroundSeekLocation;
  }
  CommandList[0].cmd = 2;
  CommandList[0].offset = newOffset;
  CommandList[0].callback = callback;
  CommandList[1].cmd = 1;
  CommandList[1].addr = addr;
  CommandList[1].length = length;
  CommandList[1].offset = offset;
  CommandList[1].callback = callback;
  CommandList[2].cmd = -1;
  NextCommandNumber = 0;
  DVDLowSeek(newOffset, callback);
}

static void WaitBeforeRead(void* addr, u32 length, u32 offset, DVDLowCallback callback,
                           OSTime timeout) {
  CommandList[0].cmd = 1;
  CommandList[0].addr = addr;
  CommandList[0].length = length;
  CommandList[0].offset = offset;
  CommandList[0].callback = callback;
  CommandList[1].cmd = -1;
  NextCommandNumber = 0;
  OSCreateAlarm(&AlarmForWA);
  OSSetAlarm(&AlarmForWA, timeout, AlarmHandler);
}

#ifndef NONMATCHING
/* Code is correct, but the stack is the wrong size */
BOOL DVDLowRead(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
  OSTime diff;
  u32 prev;

  __DIRegs[6] = length;
  Curr.addr = addr;
  Curr.length = length;
  Curr.offset = offset;

  if (WorkAroundType == 0) {
    DoJustRead(addr, length, offset, callback);
  } else if (WorkAroundType == 1) {
    if (FirstRead) {
      SeekTwiceBeforeRead(addr, length, offset, callback);
    } else {
      if (!HitCache(&Curr, &Prev)) {
        DoJustRead(addr, length, offset, callback);
      } else {
        prev = (Prev.offset + Prev.length - 1) >> 15;
        if (prev == Curr.offset >> 15 || prev + 1 == Curr.offset >> 15) {
          diff = __OSGetSystemTime() - LastReadFinished;
          if (OSMillisecondsToTicks(5) < diff) {
            DoJustRead(addr, length, offset, callback);
          } else {
            WaitBeforeRead(addr, length, offset, callback,
                           OSMillisecondsToTicks(5) - diff + OSMicrosecondsToTicks(500));
          }
        } else {
          SeekTwiceBeforeRead(addr, length, offset, callback);
        }
      }
    }
  }
  return TRUE;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL DVDLowRead(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
  nofralloc
  mflr r0
  lis r7, 0xCC006000@ha
  stw r0, 4(r1)
  stwu r1, -0x40(r1)
  stmw r22, 0x18(r1)
  addi r25, r4, 0
  addi r4, r7, 0xCC006000@l
  lis r7, CommandList@ha
  addi r31, r7, CommandList@l
  addi r24, r3, 0
  addi r26, r5, 0
  addi r30, r31, 0xcc
  mr r27, r6
  stw r25, 0x18(r4)
  stw r24, 0xc4(r31)
  stw r25, 0xc8(r31)
  stw r26, 0xcc(r31)
  lwz r0, WorkAroundType
  cmplwi r0, 0
  bne lbl_80370AC0
  li r0, -1
  stw r0, 0(r31)
  li r0, 0
  addi r3, r24, 0
  stw r0, NextCommandNumber
  addi r4, r25, 0
  addi r5, r26, 0
  addi r6, r27, 0
  bl Read
  b lbl_80370CC8
lbl_80370AC0:
  lwz r0, WorkAroundType
  cmplwi r0, 1
  bne lbl_80370CC8
  lwz r0, FirstRead
  cmpwi r0, 0
  beq lbl_80370AF0
  addi r3, r24, 0
  addi r4, r25, 0
  addi r5, r26, 0
  addi r6, r27, 0
  bl SeekTwiceBeforeRead
  b lbl_80370CC8
lbl_80370AF0:
  addi r29, r31, 0xbc
  lwz r0, 0(r30)
  addi r28, r31, 0xc0
  lwz r3, 0xbc(r31)
  lwz r4, 0xc0(r31)
  srwi r23, r0, 0xf
  addi r0, r3, -1
  add r0, r4, r0
  srwi r22, r0, 0xf
  bl DVDGetCurrentDiskID
  lbz r0, 8(r3)
  cmplwi r0, 0
  beq lbl_80370B2C
  li r0, 1
  b lbl_80370B30
lbl_80370B2C:
  li r0, 0
lbl_80370B30:
  cmpwi r0, 0
  beq lbl_80370B40
  li r3, 5
  b lbl_80370B44
lbl_80370B40:
  li r3, 0xf
lbl_80370B44:
  addi r0, r22, -2
  cmplw r23, r0
  bgt lbl_80370B60
  addi r0, r3, 3
  add r0, r22, r0
  cmplw r23, r0
  bge lbl_80370B68
lbl_80370B60:
  li r0, 1
  b lbl_80370B6C
lbl_80370B68:
  li r0, 0
lbl_80370B6C:
  cmpwi r0, 0
  bne lbl_80370B9C
  li r0, -1
  stw r0, 0(r31)
  li r0, 0
  addi r3, r24, 0
  stw r0, NextCommandNumber
  addi r4, r25, 0
  addi r5, r26, 0
  addi r6, r27, 0
  bl Read
  b lbl_80370CC8
lbl_80370B9C:
  lwz r3, 0(r29)
  lwz r4, 0(r28)
  addi r3, r3, -1
  lwz r0, 0(r30)
  add r3, r4, r3
  srwi r3, r3, 0xf
  srwi r4, r0, 0xf
  cmplw r3, r4
  beq lbl_80370BCC
  addi r0, r3, 1
  cmplw r0, r4
  bne lbl_80370CB4
lbl_80370BCC:
  bl __OSGetSystemTime
  lis r5, OS_BUS_CLOCK@ha
  lwz r8, LastReadFinished
  lwz r0, OS_BUS_CLOCK@l(r5)
  lis r5, 0x10624DD3@ha
  lwz r9, LastReadFinished+4
  li r6, 0
  srwi r7, r0, 2
  addi r0, r5, 0x10624DD3@l
  mulhwu r0, r0, r7
  srwi r0, r0, 6
  subfc r9, r9, r4
  subfe r8, r8, r3
  mulli r5, r0, 5
  xoris r4, r6, 0x8000
  xoris r3, r8, 0x8000
  subfc r0, r9, r5
  subfe r3, r3, r4
  subfe r3, r4, r4
  neg. r3, r3
  beq lbl_80370C44
  li r0, -1
  stw r0, 0(r31)
  addi r3, r24, 0
  addi r4, r25, 0
  stw r6, NextCommandNumber
  addi r5, r26, 0
  addi r6, r27, 0
  bl Read
  b lbl_80370CC8
lbl_80370C44:
  li r0, 1
  stw r0, 0(r31)
  lis r3, 0x431BDE83@ha
  addi r0, r3, 0x431BDE83@l
  stw r24, 4(r31)
  mulhwu r0, r0, r7
  stw r25, 8(r31)
  stw r26, 0xc(r31)
  srwi r0, r0, 0xf
  mulli r3, r0, 0x1f4
  stw r27, 0x10(r31)
  li r0, -1
  stw r0, 0x14(r31)
  subfc r5, r9, r5
  subfe r4, r8, r6
  srwi r0, r3, 3
  stw r6, NextCommandNumber
  addc r23, r5, r0
  adde r22, r4, r6
  addi r3, r31, 0x40
  bl OSCreateAlarm
  lis r3, AlarmHandler@ha
  addi r7, r3, AlarmHandler@l
  addi r6, r23, 0
  addi r5, r22, 0
  addi r3, r31, 0x40
  bl OSSetAlarm
  b lbl_80370CC8
lbl_80370CB4:
  addi r3, r24, 0
  addi r4, r25, 0
  addi r5, r26, 0
  addi r6, r27, 0
  bl SeekTwiceBeforeRead
lbl_80370CC8:
  lmw r22, 0x18(r1)
  li r3, 1
  lwz r0, 0x44(r1)
  addi r1, r1, 0x40
  mtlr r0
  blr
}
#pragma pop
/* clang-format on */
#endif

BOOL DVDLowSeek(u32 offset, DVDLowCallback callback) {
  ASSERTMSG(offset & 3, "DVDLowSeek(): offset must be a multiple of 4.");
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xab000000;
  __DIRegs[3] = offset / 4;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowWaitCoverClose(DVDLowCallback callback) {
  Callback = callback;
  WaitingCoverClose = TRUE;
  StopAtNextInt = FALSE;
  __DIRegs[1] = 2;
  return TRUE;
}

BOOL DVDLowReadDiskID(DVDDiskID* diskID, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xa8000040;
  __DIRegs[3] = 0;
  __DIRegs[4] = sizeof(DVDDiskID);
  __DIRegs[5] = (u32)diskID;
  __DIRegs[6] = sizeof(DVDDiskID);
  __DIRegs[7] = 3;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowStopMotor(DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xe3000000;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowRequestError(DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xe0000000;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowInquiry(DVDDriveInfo* info, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0x12000000;
  __DIRegs[4] = 32; // sizeof(DVDDriveInfo);
  __DIRegs[5] = (u32)info;
  __DIRegs[6] = 32; // sizeof(DVDDriveInfo);
  __DIRegs[7] = 3;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowAudioStream(u32 subcmd, u32 length, u32 offset, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = subcmd | 0xe1000000;
  __DIRegs[3] = offset >> 2;
  __DIRegs[4] = length;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowRequestAudioStatus(u32 subcmd, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = subcmd | 0xe2000000;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowAudioBufferConfig(BOOL enable, u32 size, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xe4000000 | (enable != 0 ? 0x10000 : 0) | size;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

void DVDLowReset() {
  u32 reg;
  OSTime resetStart;

  __DIRegs[1] = 2;
  reg = __PIRegs[9];
  __PIRegs[9] = (reg & ~4) | 1;

  resetStart = __OSGetSystemTime();
  while ((__OSGetSystemTime() - resetStart) < OSMicrosecondsToTicks(12))
    ;

  __PIRegs[9] = reg | 5;
  ResetOccurred = TRUE;
  LastResetEnd = __OSGetSystemTime();
}

BOOL DVDLowBreak() {
  StopAtNextInt = TRUE;
  Breaking = TRUE;
  return TRUE;
}

DVDLowCallback DVDLowClearCallback() {
  DVDLowCallback old;
  __DIRegs[1] = 0;
  old = Callback;
  Callback = NULL;
  return old;
}

void __DVDLowSetWAType(u32 type, u32 location) {
  BOOL enabled;
  enabled = OSDisableInterrupts();
  WorkAroundType = type;
  WorkAroundSeekLocation = location;
  OSRestoreInterrupts(enabled);
}

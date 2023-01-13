#include "dolphin/DVDPriv.h"
#include "dolphin/os.h"

static BOOL FirstRead = TRUE;
static volatile BOOL StopAtNextInt = FALSE;
static u32 LastLength = 0;
static DVDLowCallback Callback = NULL;
static DVDLowCallback ResetCoverCallback = NULL;
static OSTime LastResetEnd = 0;
static BOOL ResetOccurred = FALSE;
static volatile BOOL WaitingCoverClose = FALSE;
static BOOL Breaking = FALSE;
static u32 WorkAroundType = 0;
static u32 WorkAroundSeekLocation = 0;
static OSTime LastReadFinished = 0;
static OSTime LastReadIssued = 0;
static BOOL LastCommandWasRead = FALSE;
static u32 NextCommandNumber = 0;

typedef struct DVDUnk {
  u32 _0;
  u32 _4;
  u32 _8;
} DVDUnk;

typedef struct DVDCommand {
  s32 _0;
  u32 _4;
  u32 _8;
  u32 _c;
  DVDLowCallback callback;
} DVDCommand;

static DVDCommand CommandList[4];
static OSAlarm AlarmForWA;
static OSAlarm AlarmForTimeout;
static OSAlarm AlarmForBreak;
static DVDUnk Prev;
static DVDUnk Cur;

void __DVDInitWA() {
  NextCommandNumber = 0;
  CommandList[0]._0 = -1;
  __DVDLowSetWAType(0, 0);
  OSInitAlarm();
}
static void Read(u32 tmp1, u32 tmp2, u32 tmp3, DVDLowCallback tmp4);
void __DVDInterruptHandler(__OSInterrupt interrupt, OSContext* context) {}

static void AlarmHandler(OSAlarm* alarm, OSContext* context) {
  DVDCommand* cmd;
  cmd = &CommandList[NextCommandNumber];

  if (cmd->_0 == 1) {
    ++NextCommandNumber;
    Read(cmd->_4, cmd->_8, cmd->_c, cmd->callback);
  } else if (cmd->_0 == 2) {
    ++NextCommandNumber;
    DVDLowSeek(cmd->_c, cmd->callback);
  }
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

static void Read(u32 tmp1, u32 tmp2, u32 tmp3, DVDLowCallback tmp4) {
  
}

static void SeekTwiceBeforeRead() {

}

void DVDLowRead(u32 unk, DVDLowCallback callback) {

}

void DVDLowSeek(u32 offset, DVDLowCallback callback) {

}

BOOL DVDLowWaitCoverClose(DVDLowCallback callback) {
  Callback = callback;
  WaitingCoverClose = TRUE;
  StopAtNextInt = FALSE;
  __DIRegs[1] = 2;
  return TRUE;
}


void __DVDLowSetWAType(u32 type, u32 location) {
  BOOL enabled;
  enabled = OSDisableInterrupts();
  WorkAroundType = type;
  WorkAroundSeekLocation = location;
  OSRestoreInterrupts(enabled);
}

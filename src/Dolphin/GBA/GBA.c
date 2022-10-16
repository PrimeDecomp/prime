#include "dolphin/GBAPriv.h"

static GBASecParams SecParams[4];
GBA __GBA[4];
BOOL __GBAReset = FALSE;

static BOOL OnReset(BOOL);

static OSResetFunctionInfo ResetFunctionInfo = {
  OnReset,
  127
};

void ShortCommandProc(s32 chan) {
  GBA* gba;
  gba = &__GBA[chan];

  if (gba->result != 0) {
    return;
  }

  if (gba->dst[0] != 0 || gba->dst[1] != 4) {
    gba->result = 1;
    return;
  }

  gba->status[0] = gba->dst[2] & GBA_JSTAT_MASK;
}

void GBAInit() {
  s32 i;
  GBA* gba;
  for (i = 0; i < 4; ++i) {
    gba = &__GBA[i];
    gba->delay = OSMicrosecondsToTicks(60);
    OSInitThreadQueue(&gba->thread_queue);
    gba->param = &SecParams[i];

    // ASSERTMSG((u32) gba->param % 32 == 0)
  } 

  OSInitAlarm();
  DSPInit();
  __GBAReset = FALSE;

  OSRegisterResetFunction(&ResetFunctionInfo);
}

s32 GBAGetStatusAsync(s32 chan, u8* status, GBACallback callback) {
  GBA* gba;
  s32 ret;
  gba = &__GBA[chan];
  if (gba->callback != NULL) {
    ret = GBA_BUSY;
  } else {
    gba->command = 0;
    gba->status = status;
    gba->callback = callback;
    ret = __GBATransfer(chan, 1, 3, ShortCommandProc);
  }

  return ret;
}


s32 GBAGetStatus(s32 chan, u8* status) {
  s32 ret;
  ret = GBAGetStatusAsync(chan, status, __GBASyncCallback);

  if (ret != GBA_READY) {
    return ret;
  }

  return __GBASync(chan);
}


s32 GBAResetAsync(s32 chan, u8* status, GBACallback callback) {
  GBA* gba;
  s32 ret;
  gba = &__GBA[chan];
  if (gba->callback != NULL) {
    ret = GBA_BUSY;
  } else {
    gba->command = 0xFF;
    gba->status = status;
    gba->callback = callback;
    ret = __GBATransfer(chan, 1, 3, ShortCommandProc);
  }

  return ret;
}


s32 GBAReset(s32 chan, u8* status) {
  s32 ret;

  ret = GBAResetAsync(chan, status, __GBASyncCallback);
  if (ret != GBA_READY) {
    return ret;
  }

  return __GBASync(chan);
}

BOOL OnReset(BOOL) {
  __GBAReset = TRUE;
  return TRUE;
}

#include "dolphin/GBAPriv.h"

void WriteProc(s32 chan) {
  GBAControl* gba;
  gba = &__GBA[chan];

  if (gba->ret != 0) {
    return;
  }

  gba->status[0] = gba->input[0] & GBA_JSTAT_MASK;
}

s32 GBAWriteAsync(s32 chan, u8* src, u8* status, GBACallback callback) {
  GBAControl* gba;
  s32 ret;
  gba = &__GBA[chan];

  if (gba->callback != NULL) {
    ret = GBA_BUSY;
  } else {
    gba->output[0] = 0x15;
    memcpy(&gba->output[1], src, 4);
    gba->ptr = src;
    gba->status = status;
    gba->callback = callback;
    ret = __GBATransfer(chan, 5, 1, WriteProc);
  }

  return ret;
}


s32 GBAWrite(s32 chan, u8* src, u8* status) {
  s32 ret;
  s32 tmp;
  ret = GBAWriteAsync(chan, src, status, __GBASyncCallback);
  if (ret != GBA_READY) {
    return ret;
  }
  return __GBASync(chan);
}

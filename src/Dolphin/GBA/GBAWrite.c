#include "dolphin/GBAPriv.h"

void WriteProc(s32 chan) {
  GBA* gba;
  gba = &__GBA[chan];

  if (gba->result != 0) {
    return;
  }

  gba->status[0] = gba->dst[0] & GBA_JSTAT_MASK;
}

s32 GBAWriteAsync(s32 chan, u8* src, u8* status, GBACallback callback) {
  GBA* gba; 
  s32 ret;
  gba = &__GBA[chan];

  if (gba->callback != NULL) {
    ret = 2;
  } else {
    gba->command = 0x15;
    memcpy(gba->src, src, 4);
    gba->buffer = src;
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
  if (ret != 0) {
    return ret;
  }
  return __GBASync(chan);
}

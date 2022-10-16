#include "dolphin/GBAPriv.h"

void ReadProc(s32 chan) {
  GBA* gba;
  gba = &__GBA[chan];

  if (gba->result == 0) {
    memcpy(gba->buffer, &gba->dst, 4);
    gba->status[0] = gba->_09 & GBA_JSTAT_MASK;
  }
}

s32 GBAReadAsync(s32 chan, u8* dst, u8* status, GBACallback callback) {
  GBA* gba;
  s32 ret;

  gba = &__GBA[chan];

  if (gba->callback != NULL) {
    ret = 2;
  } else {
    gba->command = 0x14;
    gba->buffer = dst;
    gba->status = status;
    gba->callback = callback;
    ret = __GBATransfer(chan, 1, 5, ReadProc);
  }

  return ret;
}


s32 GBARead(s32 chan, u8* dst, u8* status) {
  s32 tmp;
  s32 ret;
  ret = GBAReadAsync(chan, dst, status, __GBASyncCallback);
  if (ret != GBA_READY) {
    return ret;
  }

  return __GBASync(chan);
}

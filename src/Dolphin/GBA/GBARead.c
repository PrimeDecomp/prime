#include "dolphin/GBAPriv.h"

void ReadProc(s32 chan) {
  GBAControl* gba;
  gba = &__GBA[chan];

  if (gba->ret == 0) {
    memcpy(gba->ptr, gba->input, 4);
    gba->status[0] = gba->input[4] & GBA_JSTAT_MASK;
  }
}

s32 GBAReadAsync(s32 chan, u8* dst, u8* status, GBACallback callback) {
  GBAControl* gba;
  s32 ret;

  gba = &__GBA[chan];

  if (gba->callback != NULL) {
    ret = 2;
  } else {
    gba->output[0] = 0x14;
    gba->ptr = dst;
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

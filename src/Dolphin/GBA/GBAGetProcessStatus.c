#include "dolphin/GBAPriv.h"

s32 GBAGetProcessStatus(s32 chan, u8* percentp) {
  GBA* gba;
  s32 ret;
  BOOL enabled;

  gba = &__GBA[chan];
  enabled = OSDisableInterrupts();

  if (gba->jboot_callback == NULL) {
    if (gba->callback == NULL) {
      ret = 0;
    } else {
      ret = 2;
    }
  } else {
    ret = 2;
    
  }

  OSRestoreInterrupts(enabled);

  return ret;
}

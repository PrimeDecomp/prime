#include "dolphin/GBAPriv.h"
#include "dolphin/sipriv.h"

void __GBAHandler() {
  
}

void __GBASyncCallback(s32 chan, s32 ret) {
  OSWakeupThread(&__GBA[chan].thread_queue);
}

s32 __GBASync(s32 chan) {
  GBA* gba;
  s32 enabled;  
  s32 ret;
  gba = &__GBA[chan];

  enabled = OSDisableInterrupts();
  while (gba->callback != NULL) {
    OSSleepThread(&gba->thread_queue);
  }

  ret = gba->result;
  OSRestoreInterrupts(enabled);

  return ret;
}

void TypeAndStatusCallback(s32 chan, u32 type) {

}

s32 __GBATransfer(s32 chan, s32 w1, s32 w2, GBACallback callback) {
  s32 enabled;
  GBA* gba;
  gba = &__GBA[chan];
  enabled = OSDisableInterrupts();
  gba->_38 = callback;
  gba->_0c = w1;
  gba->_10 = w2;
  SIGetTypeAsync(chan, TypeAndStatusCallback);
  OSRestoreInterrupts(enabled);

  return 0;
}

OSTime __GBASetDelay(s32 chan, OSTime delay) {
  OSTime oldDelay;
  GBA* gba;
  gba = &__GBA[chan];
  oldDelay = gba->delay;
  gba->delay = delay;
  return oldDelay;
}

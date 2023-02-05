#include "dolphin/GBAPriv.h"
#include "dolphin/sipriv.h"

void __GBAHandler(s32 chan, u32 sr, OSContext* context) {
  int tmp;
  GBA* gba;
  OSContext tmpCtx;
  GBACallback callback;
  GBATransferCallback xferCallback;
  gba = &__GBA[chan];
  if (__GBAReset != 0) {
    return;
  }

  if ((sr & 0xf)) {
    gba->result = 1;
  } else {
    gba->result = 0;
  }

  if (gba->_38 != NULL) {
    xferCallback = gba->_38;
    gba->_38 = NULL;
    xferCallback(chan);
  }

  if (gba->callback == NULL) {
    return;
  }

  OSClearContext(&tmpCtx);
  OSSetCurrentContext(&tmpCtx);
  callback = gba->callback;
  gba->callback = NULL;
  callback(chan, gba->result);
  OSClearContext(&tmpCtx);
  OSSetCurrentContext(context);
}

void __GBASyncCallback(s32 chan, s32 ret) { OSWakeupThread(&__GBA[chan].thread_queue); }

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
  s32 tmp;
  GBA* gba;
  OSContext* context;
  GBACallback callback;
  GBATransferCallback xferCallback;
  OSContext tmpContext;
  gba = &__GBA[chan];
  if (__GBAReset != 0) {
    return;
  }

  if ((type & 0xFF) != 0 || (type & 0xffff0000) != 0x40000) {
    gba->result = GBA_NOT_READY;
  } else {
    if (SITransfer(chan, &gba->command, gba->_0c, gba->dst, gba->_10, __GBAHandler, gba->delay)) {
      return;
    }
    gba->result = GBA_BUSY;
  }

  if (gba->_38 != NULL) {
    xferCallback = gba->_38;
    gba->_38 = NULL;
    xferCallback(chan);
  }

  if (gba->callback != NULL) {
    context = OSGetCurrentContext();
    OSClearContext(&tmpContext);
    OSSetCurrentContext(&tmpContext);
    callback = gba->callback;
    gba->callback = NULL;
    callback(chan, gba->result);
    OSClearContext(&tmpContext);
    OSSetCurrentContext(context);
    __OSReschedule();
  }
}

s32 __GBATransfer(s32 chan, s32 w1, s32 w2, GBATransferCallback callback) {
  s32 enabled;
  GBA* gba;
  gba = &__GBA[chan];
  enabled = OSDisableInterrupts();
  gba->_38 = callback;
  gba->_0c = w1;
  gba->_10 = w2;
  SIGetTypeAsync(chan, TypeAndStatusCallback);
  OSRestoreInterrupts(enabled);

  return GBA_READY;
}

OSTime __GBASetDelay(s32 chan, OSTime delay) {
  OSTime oldDelay;
  GBA* gba;
  gba = &__GBA[chan];
  oldDelay = gba->delay;
  gba->delay = delay;
  return oldDelay;
}

#include <dolphin/os.h>
#include <dolphin/sipriv.h>

vu32 __SIRegs[64] : 0xCC006400;

extern OSTime __OSGetSystemTime();

const char* __SIVersion = "<< Dolphin SDK - SI\trelease build: Sep  5 2002 05:33:08 (0x2301) >>";

typedef struct SIControl {
  s32 chan;
  u32 poll;
  u32 inputBytes;
  void* input;
  SICallback callback;
} SIControl;

static SIControl Si = {
    -1,
};

static SIPacket Packet[SI_MAX_CHAN];
static OSAlarm Alarm[SI_MAX_CHAN];
static u32 Type[SI_MAX_CHAN] = {
    SI_ERROR_NO_RESPONSE,
    SI_ERROR_NO_RESPONSE,
    SI_ERROR_NO_RESPONSE,
    SI_ERROR_NO_RESPONSE,
};

static OSTime TypeTime[SI_MAX_CHAN];
static OSTime XferTime[SI_MAX_CHAN];

static SITypeAndStatusCallback TypeCallback[SI_MAX_CHAN][4];
static __OSInterruptHandler RDSTHandler[4];

u32 __PADFixBits;

static BOOL __SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes,
                         SICallback callback);

static BOOL InputBufferValid[SI_MAX_CHAN];
static u32 InputBuffer[SI_MAX_CHAN][2];
static vu32 InputBufferVcount[SI_MAX_CHAN];

static BOOL SIGetResponseRaw(s32 chan);
static void GetTypeCallback(s32 chan, u32 error, OSContext* context);

BOOL SIBusy() { return Si.chan != -1 ? TRUE : FALSE; }

BOOL SIIsChanBusy(s32 chan) { return (Packet[chan].chan != -1 || Si.chan == chan); }

static void SIClearTCInterrupt() {
  u32 reg;

  reg = __SIRegs[13];
  reg |= 0x80000000;
  reg &= ~0x00000001;
  __SIRegs[13] = reg;
}

static u32 CompleteTransfer() {
  u32 sr;
  u32 i;
  u32 rLen;
  u8* input;

  sr = __SIRegs[14];

  SIClearTCInterrupt();

  if (Si.chan != -1) {
    XferTime[Si.chan] = __OSGetSystemTime();

    input = Si.input;

    rLen = Si.inputBytes / 4;
    for (i = 0; i < rLen; i++) {
      *(u32*)input = __SIRegs[32 + i];
      input += 4;
    }

    rLen = Si.inputBytes & 3;
    if (rLen) {
      u32 temp = __SIRegs[32 + i];
      for (i = 0; i < rLen; i++) {
        *input++ = (u8)((temp >> ((3 - i) * 8)) & 0xff);
      }
    }

    if (__SIRegs[13] & 0x20000000) {
      sr >>= 8 * (3 - Si.chan);
      sr &= 0xf;

      if ((sr & SI_ERROR_NO_RESPONSE) && !(Type[Si.chan] & SI_ERROR_BUSY)) {
        Type[Si.chan] = SI_ERROR_NO_RESPONSE;
      }
      if (sr == 0) {
        sr = SI_ERROR_COLLISION;
      }
    } else {
      TypeTime[Si.chan] = __OSGetSystemTime();
      sr = 0;
    }

    Si.chan = -1;
  }
  return sr;
}

static void SITransferNext(s32 chan) {
  int i;
  SIPacket* packet;

  for (i = 0; i < SI_MAX_CHAN; ++i) {
    ++chan;
    chan %= SI_MAX_CHAN;
    packet = &Packet[chan];
    if (packet->chan != -1 && packet->fire <= __OSGetSystemTime()) {
      if (__SITransfer(packet->chan, packet->output, packet->outputBytes, packet->input,
                       packet->inputBytes, packet->callback)) {
        OSCancelAlarm(&Alarm[chan]);
        packet->chan = -1;
      }
      break;
    }
  }
}

static void SIInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
  u32 reg;

  reg = __SIRegs[13];

  if ((reg & 0xc0000000) == 0xc0000000) {
    s32 chan;
    u32 sr;
    SICallback callback;

    chan = Si.chan;
    sr = CompleteTransfer();
    callback = Si.callback;
    Si.callback = 0;

    SITransferNext(chan);

    if (callback) {
      callback(chan, sr, context);
    }

    sr = __SIRegs[14];
    sr &= 0xf000000 >> (8 * chan);
    __SIRegs[14] = sr;

    if (Type[chan] == SI_ERROR_BUSY && !SIIsChanBusy(chan)) {
      static u32 cmdTypeAndStatus = 0 << 24;
      SITransfer(chan, &cmdTypeAndStatus, 1, &Type[chan], 3, GetTypeCallback,
                 OSMicrosecondsToTicks(65));
    }
  }

  if ((reg & 0x18000000) == 0x18000000) {

    int i;
    u32 vcount;
    u32 x;

    vcount = VIGetCurrentLine() + 1;
    x = (Si.poll & 0x03ff0000) >> 16;

    for (i = 0; i < SI_MAX_CHAN; ++i) {
      if (SIGetResponseRaw(i)) {
        InputBufferVcount[i] = vcount;
      }
    }

    for (i = 0; i < SI_MAX_CHAN; ++i) {
      if (!(Si.poll & (SI_CHAN0_BIT >> (31 - 7 + i)))) {
        continue;
      }
      if (InputBufferVcount[i] == 0 || InputBufferVcount[i] + (x / 2) < vcount) {
        return;
      }
    }

    for (i = 0; i < SI_MAX_CHAN; ++i) {
      InputBufferVcount[i] = 0;
    }

    for (i = 0; i < 4; ++i) {
      if (RDSTHandler[i]) {
        RDSTHandler[i](interrupt, context);
      }
    }
  }
}

static BOOL SIEnablePollingInterrupt(BOOL enable) {
  BOOL enabled;
  BOOL rc;
  u32 reg;
  int i;

  enabled = OSDisableInterrupts();
  reg = __SIRegs[13];
  rc = (reg & 0x08000000) ? TRUE : FALSE;
  if (enable) {
    reg |= 0x08000000;
    for (i = 0; i < SI_MAX_CHAN; ++i) {
      InputBufferVcount[i] = 0;
    }
  } else {
    reg &= ~0x08000000;
  }
  reg &= ~0x80000001;
  __SIRegs[13] = reg;
  OSRestoreInterrupts(enabled);
  return rc;
}

BOOL SIRegisterPollingHandler(__OSInterruptHandler handler) {
  BOOL enabled;
  int i;

  enabled = OSDisableInterrupts();
  for (i = 0; i < 4; ++i) {
    if (RDSTHandler[i] == handler) {
      OSRestoreInterrupts(enabled);
      return TRUE;
    }
  }
  for (i = 0; i < 4; ++i) {
    if (RDSTHandler[i] == 0) {
      RDSTHandler[i] = handler;
      SIEnablePollingInterrupt(TRUE);
      OSRestoreInterrupts(enabled);
      return TRUE;
    }
  }
  OSRestoreInterrupts(enabled);
  return FALSE;
}

BOOL SIUnregisterPollingHandler(__OSInterruptHandler handler) {
  BOOL enabled;
  int i;

  enabled = OSDisableInterrupts();
  for (i = 0; i < 4; ++i) {
    if (RDSTHandler[i] == handler) {
      RDSTHandler[i] = 0;
      for (i = 0; i < 4; ++i) {
        if (RDSTHandler[i]) {
          break;
        }
      }
      if (i == 4) {
        SIEnablePollingInterrupt(FALSE);
      }
      OSRestoreInterrupts(enabled);
      return TRUE;
      break;
    }
  }
  OSRestoreInterrupts(enabled);
  return FALSE;
}

void SIInit(void) {
  OSRegisterVersion(__SIVersion);

  Packet[0].chan = Packet[1].chan = Packet[2].chan = Packet[3].chan = -1;

  Si.poll = 0;
  SISetSamplingRate(0);

  while (__SIRegs[13] & 1)
    ;

  __SIRegs[13] = 0x80000000;

  __OSSetInterruptHandler(__OS_INTERRUPT_PI_SI, SIInterruptHandler);
  __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_SI);

  SIGetType(0);
  SIGetType(1);
  SIGetType(2);
  SIGetType(3);
}

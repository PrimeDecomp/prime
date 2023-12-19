
#include "musyx/adsr.h"
#include "musyx/synth_dbtab.h"

#include <float.h>

extern float powf(float, float);

static u32 adsrGetIndex(ADSR_VARS* adsr) {
  s32 i = 193 - ((adsr->currentIndex + 0x8000) >> 16);
  return i < 0 ? 0 : i;
}

u32 adsrConvertTimeCents(s32 tc) { return 1000.f * powf(2.f, 1.2715658e-08f * tc); }

u32 salChangeADSRState(ADSR_VARS* adsr) {
  u32 VoiceDone; // r30
  VoiceDone = FALSE;

  switch (adsr->mode) {
  case 0:
    switch (adsr->state) {
    case 0: {
      if ((adsr->cnt = adsr->data.dls.aTime)) {
        adsr->state = 1;
        adsr->currentVolume = 0;
        adsr->currentDelta = 0x7fff0000 / (adsr->data).dls.aTime;
        goto done;
      }
    }
    case 1: {
      if ((adsr->cnt = adsr->data.dls.dTime)) {
        adsr->state = 2;
        adsr->currentVolume = 0x7fff0000;
        adsr->currentDelta =
            -((0x7fff0000 - (adsr->data.dls.sLevel * 0x10000)) / adsr->data.dls.dTime);
        goto done;
      }
    }
    case 2: {
      if (adsr->data.dls.sLevel != 0) {
        adsr->state = 3;
        adsr->currentVolume = adsr->data.dls.sLevel << 0x10;
        adsr->currentDelta = 0;
        goto done;
      }
    }
    case 4: {
      break;
    }
    default:
      goto done;
    }
    adsr->currentVolume = 0;
    VoiceDone = TRUE;
    break;
  case 1:
    switch (adsr->state) {
    case 0: {
      if ((adsr->cnt = adsr->data.dls.aTime)) {
        adsr->state = 1;
        if (adsr->data.dls.aMode == 0) {
          adsr->currentVolume = 0;
          adsr->currentDelta = 0x7fff0000 / adsr->cnt;
        } else {
          adsr->currentVolume = adsr->currentIndex = 0;
          adsr->currentDelta = 0xc10000 / adsr->cnt;
        }
        goto done;
      }
    }
    case 1: {
      adsr->cnt = adsr->data.dls.dTime * (((0xc1u - adsr->data.dls.sLevel) * 0x10000) / 0xc1) >> 16;
      if (adsr->cnt) {
        adsr->state = 2;
        adsr->currentVolume = 0x7fff0000;
        adsr->currentIndex = 0xc10000;
        adsr->currentDelta = -(((0xc1 - (u32)(adsr->data).dls.sLevel) * 0x10000) / adsr->cnt);
        goto done;
      }
    }
    case 2: {
      if (adsr->data.dls.sLevel) {
        adsr->state = 3;
        adsr->currentIndex = adsr->data.dls.sLevel << 16;
        adsr->currentVolume = dspAttenuationTab[adsrGetIndex(adsr)] << 16;
        adsr->currentDelta = 0;
        goto done;
      }
      break;
    }
    case 4: {
      break;
    }
    default:
      goto done;
    }
    adsr->currentVolume = 0;
    VoiceDone = TRUE;
    break;
  }
done:
  return VoiceDone;
}

u32 adsrSetup(ADSR_VARS* adsr) {
  adsr->state = 0;
  salChangeADSRState(adsr);
}

u32 adsrStartRelease(ADSR_VARS* adsr, u32 rtime) {
  switch (adsr->mode) {
  case 0:
    adsr->state = 4;
    adsr->cnt = rtime;
    if (rtime == 0) {
      adsr->cnt = 1;
      adsr->currentDelta = 0;
      return 1;
    }
    adsr->currentDelta = -(adsr->currentVolume / rtime);
    break;
  case 1:
    if (adsr->data.dls.aMode == 0 && adsr->state == 1) {
      adsr->currentIndex = (193 - dspScale2IndexTab[adsr->currentVolume >> 21]) * 0x10000;
    }

    adsr->cnt = (u32)(3.238342E-4f * (float)adsr->currentIndex * (float)rtime) >> 12;
    adsr->state = 4;
    if (adsr->cnt == 0) {
      adsr->cnt = 1;
      adsr->currentDelta = adsr->currentIndex = adsr->currentVolume = 0;
      return 1;
    }

    adsr->currentDelta = -(adsr->currentIndex / adsr->cnt);
    break;
  }

  return 0;
}

bool adsrRelease(ADSR_VARS* adsr) {
  switch (adsr->mode) {
  case 0:
  case 1:
    return adsrStartRelease(adsr, adsr->data.dls.rTime);
  }

  return FALSE;
}

u32 adsrHandle(ADSR_VARS* adsr, u16* adsr_start, u16* adsr_delta) {
  s32 old_volume; // r29
  bool VoiceDone; // r28
  s32 vDelta;     // r27

  VoiceDone = FALSE;

  switch (adsr->mode) {
  case 0:
    if (adsr->state != 3) {
      old_volume = adsr->currentVolume;
      adsr->currentVolume += adsr->currentDelta;
      *adsr_start = old_volume >> 16;
      if (adsr->currentDelta >= 0) {
        *adsr_delta = adsr->currentDelta >> 21;
      } else {
        *adsr_delta = -(-adsr->currentDelta >> 21);
      }

      if (--adsr->cnt == 0) {
        VoiceDone = salChangeADSRState(adsr);
      }
    } else {
      *adsr_start = adsr->currentVolume >> 16;
      *adsr_delta = 0;
    }
    break;
  case 1:
    if (adsr->state != 3) {
      old_volume = adsr->currentVolume;
      if (adsr->data.dls.aMode == 0 && adsr->state == 1) {
        adsr->currentVolume += adsr->currentDelta;
      } else {
        adsr->currentIndex += adsr->currentDelta;
        adsr->currentVolume = dspAttenuationTab[adsrGetIndex(adsr)] << 16;
      }
      *adsr_start = old_volume >> 16;
      vDelta = adsr->currentVolume - old_volume;
      if (vDelta >= 0) {
        *adsr_delta = vDelta >> 21;
      } else {
        *adsr_delta = -(-vDelta >> 21);
      }

      if (--adsr->cnt == 0) {
        VoiceDone = salChangeADSRState(adsr);
      }
    } else {
      *adsr_start = adsr->currentVolume >> 16;
      *adsr_delta = 0;
    }
    break;
  }

  return VoiceDone;
}
u32 adsrHandleLowPrecision(ADSR_VARS* adsr, u16* adsr_start, u16* adsr_delta) {
  u8 i; // r31

  for (i = 0; i < 15; ++i) {
    if (adsrHandle(adsr, adsr_start, adsr_delta)) {
      return 1;
    }
  }

  return 0;
}

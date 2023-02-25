#include "musyx/assert.h"
#include "musyx/musyx_priv.h"
#include "musyx/synth_dbtab.h"

#include <float.h>

extern float powf(float, float);

static u32 adsrGetIndex(ADSR_VARS* adsr) {
  long i = 193 - ((adsr->currentIndex + 0x8000) >> 16);
  return i < 0 ? 0 : i;
}

u32 adsrConvertTimeCents(long tc) { return 1000.f * powf(2.f, 1.2715658e-08f * tc); }

u32 salChangeADSRState(ADSR_VARS* adsr) {
  u32 VoiceDone; // r30
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

u32 adsrRelease(ADSR_VARS* adsr) {
}

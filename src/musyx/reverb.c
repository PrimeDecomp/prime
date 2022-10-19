#include "math.h"
#include "musyx/musyx_priv.h"

static void DLsetdelay(_SND_REVHI_DELAYLINE* delayline, s32 len) {
  delayline->outPoint = delayline->inPoint - (len * sizeof(f32));
  while (delayline->outPoint < 0) {
    delayline->outPoint += delayline->length;
  }
}

static void DLcreate(_SND_REVHI_DELAYLINE* delayline, s32 length) {
  delayline->length = length * sizeof(f32);
  delayline->inputs = (f32*)salMalloc(length * sizeof(f32));
  memset(delayline->inputs, 0, length * sizeof(length));
  delayline->lastOutput = 0.f;
  DLsetdelay(delayline, length * sizeof(f32));
  delayline->inPoint = 0;
  delayline->outPoint = 0;
}

static void DLdelete(_SND_REVHI_DELAYLINE* delayline) { salFree(delayline->inputs); }
bool ReverbHICreate(_SND_REVHI_WORK* rev, f32 coloration, f32 time, f32 mix, f32 damping,
                    f32 preDelay, f32 crosstalk) {
  static int lens[] = {1789, 1999, 2333, 433, 149, 47, 73, 67};
  u8 i;
  u8 j;
  if (coloration < 0.f || coloration > 1.f || time < 0.01f || time > 10.f || mix < 0.f ||
      mix > 1.f || crosstalk < 0.f || crosstalk > 1.f || damping < 0.f || damping > 1.f ||
      preDelay < 0.f || preDelay > 0.1f) {
    return FALSE;
  }

  memset(rev, 0, sizeof(_SND_REVHI_WORK));

  for (i = 0; i < 3; ++i) {
    for (j = 0; j < 3; ++j) {
      DLcreate(&rev->C[i], lens[j] + 2);
      DLsetdelay(&rev->C[i], lens[j]);
      rev->combCoef[j + i * 3] = pow(10.f, (lens[j] * -3) / (32000.f * time));
    }

    for (j = 0; j < 2; ++j) {
      DLcreate(&rev->AP[i], lens[j + 3] + 2);
      DLsetdelay(&rev->AP[i], lens[j + 3]);
    }
    DLcreate(&rev->AP[i], lens[i + 5] + 2);
    DLsetdelay(&rev->AP[i], lens[i + 5]);
    rev->lpLastout[i] = 0.f;
  }

  rev->allPassCoeff = coloration;
  rev->level = mix;
  rev->crosstalk = crosstalk;
  rev->damping = damping;
  if (rev->damping < 0.05f) {
    rev->damping = 0.05f;
  }

  rev->damping = 1.f - ((rev->damping * 0.8f) + 0.5f);
  if (preDelay != 0.f) {
    rev->preDelayTime = preDelay * 32000.f;
    for (i = 0; i < 3; ++i) {
      rev->preDelayLine[i] = (f32*)salMalloc(rev->preDelayTime * sizeof(f32));
      memset(rev->preDelayLine[i], 0, rev->preDelayTime * sizeof(f32));
      rev->preDelayPtr[i] = rev->preDelayLine[i];
    }
  } else {
    rev->preDelayTime = 0;
    for (i = 0; i < 3; ++i) {
      rev->preDelayPtr[i] = NULL;
      rev->preDelayLine[i] = NULL;
    }
  }

  return TRUE;
}
void DoCrossTalk() {}

void HandleReverb_0() {}

void ReverbHICallback() {}

void ReverbHIFree(_SND_REVHI_WORK* rv) {
  u8 i;
  for (i = 0; i < 9; ++i) {
    DLdelete(&rv->AP[i]);
  }
  for (i = 0; i < 9; ++i) {
    DLdelete(&rv->C[i]);
  }
  if (rv->preDelayTime != 0) {
    for (i = 0; i < 3; ++i) {
      salFree(rv->preDelayLine[i]);
    }
  }
}

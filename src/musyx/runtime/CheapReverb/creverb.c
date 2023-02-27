/* ---------------------------------------








   ---------------------------------------
*/
#include "musyx/musyx_priv.h"

static void DLsetdelay(_SND_REVSTD_DELAYLINE * dl, s32 lag) {
  dl->outPoint = dl->inPoint - (lag * sizeof(f32));
  while (dl->outPoint < 0) {
    dl->outPoint += dl->length;
  }
}

static void DLcreate(_SND_REVSTD_DELAYLINE* dl, s32 len) {
  dl->length = len * sizeof(f32);
  dl->inputs = (f32*)salMalloc(len * sizeof(f32));
  memset(dl->inputs, 0, len * sizeof(len));
  dl->lastOutput = 0.f;
  DLsetdelay(dl, len >> 1);
  dl->inPoint = 0;
  dl->outPoint = 0;
}

static void DLdelete(_SND_REVSTD_DELAYLINE* dl) { salFree(dl->inputs); }

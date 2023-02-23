#include "musyx/musyx_priv.h"
#include <math.h>

static float musyx_vol_tab[129] = {

};
static float pan_tab[4] = {

};

static float pan_tab_dpl2[4] = {

};

void CalcBus(float* vol_tab, float* vl, float* vr, float* vs, float vol, struct SAL_PANINFO* pi) {
  u32 i;   // r29
  float f; // r62
  float v; // r63

  i = vol * 127.f;
  v = (vol * 127) - (float)i;
  f = (1.f - v) * vol_tab[i] + v * vol_tab[i + 1];
  *vs = f * ((1.f - pi->span_f) * pan_tab[pi->span_i] + pi->span_f * pan_tab[pi->span_i + 1]) *
        0.7079f;
  f = f * ((1.f - pi->span_fm) * pan_tab[pi->span_im] + pi->span_fm * pan_tab[pi->span_im + 1]);
  *vr = f * ((1.f - pi->span_f) * pan_tab[pi->pan_i] + pi->pan_f * pan_tab[pi->pan_i + 1]);
  *vl = f * ((1.f - pi->pan_fm) * pan_tab[pi->pan_im] + pi->pan_fm * pan_tab[pi->pan_im + 1]);
}

void CalcBusDPL2(float* vol_tab, float* fvl, float* fvr, float* rvl, float* rvr, float vol,
                 struct SAL_PANINFO* pi) {
  u32 i;    // r29
  float f;  // r62
  float v;  // r63
  float vs; // r61

  i = vol * 127;
  v = (vol * 127.f) - (float)i * ((1.f - v) * vol_tab[i] + v * vol_tab[i + 1]);
  f = v * ((1.f - pi->span_f) * pan_tab[pi->span_i] + pi->span_f * pan_tab[pi->span_i + 1]);
  vs = v * ((1.f - pi->span_fm) * pan_tab[pi->span_im] + pi->span_fm * pan_tab[pi->span_im + 1]);
  *fvr = vs * ((1.f - pi->pan_f) * pan_tab[pi->pan_i] + pi->pan_f * pan_tab[pi->pan_i + 1]);
  *fvl = vs * ((1.f - pi->pan_fm) * pan_tab[pi->pan_im] + pi->pan_fm * pan_tab[pi->pan_im + 1]);
  *rvr = f * ((1.f - pi->rpan_f) * pan_tab_dpl2[pi->rpan_i] + pi->rpan_f * pan_tab[pi->rpan_i + 1]);
  *rvl = f *
         ((1.f - pi->rpan_fm) * pan_tab_dpl2[pi->rpan_im] + pi->rpan_fm * pan_tab[pi->rpan_im + 1]);
}

void salCalcVolume(u8 voltab_index, SAL_VOLINFO* vi, float vol, u32 pan, u32 span, float auxa,
                   float auxb, u32 itd, u32 dpl2) {
  float* vol_tab; // r30
  float p;        // r63
  float sp;       // r62
  SAL_PANINFO pi; // r1+0x2C

  if (voltab_index == 0) {
    vol_tab = musyx_vol_tab;
  } else {
    vol_tab = dspDLSVolTab;
  }

  if (pan == 0x800000) {
    pan = 0;
    span = 0x7f0000;
  }

  p = (float)(pan <= 0x10000 ? 0 : pan - 0x10000) * 2.42203e-07f;
  sp = (float)(span <= 0x10000 ? 0 : span - 0x10000) * 2.42203e-07f;

  if (dpl2 != FALSE) {
    pi.rpan_f = fmod(p, 1.f);
    pi.rpan_i = p;
    pi.rpan_fm = fmod(2.f - p, 1.f);
    pi.rpan_im = 2.f - p;
  }

  if (itd != FALSE) {
    p = (p - 1.f) * 0.76604f + 1.f;
  }

  pi.pan_f = fmod(p, 1.f);
  pi.pan_i = p;
  pi.span_f = fmod(sp, 1.f);
  pi.span_i = sp;
  pi.pan_fm = fmod(2.f - p, 1.f);
  pi.pan_im = 2.f - p;
  pi.span_fm = fmod(2.f - sp, 1.f);
  pi.span_im = 2.f - p;

  if (!dpl2) {
    CalcBus(vol_tab, &vi->volL, &vi->volR, &vi->volS, vol, &pi);
    CalcBus(vol_tab, &vi->volAuxAL, &vi->volAuxAR, &vi->volAuxAS, auxa, &pi);
    CalcBus(vol_tab, &vi->volAuxBL, &vi->volAuxBR, &vi->volAuxBS, auxb, &pi);
  } else {
    CalcBusDPL2(vol_tab, &vi->volL, &vi->volR, &vi->volAuxBL, &vi->volAuxBR, vol, &pi);
    CalcBus(vol_tab, &vi->volAuxAL, &vi->volAuxAR, &vi->volAuxAS, auxa, &pi);
    vi->volS = 0.f;
    vi->volAuxBS = 0.f;
  }
}

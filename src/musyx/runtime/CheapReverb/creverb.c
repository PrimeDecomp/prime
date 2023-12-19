/* ---------------------------------------








   ---------------------------------------
*/
#include "musyx/musyx.h"
#include "musyx/sal.h"
#include <float.h>
#include <math.h>
#include <string.h>

static void DLsetdelay(_SND_REVSTD_DELAYLINE* dl, s32 lag) {
  dl->outPoint = dl->inPoint - (lag * sizeof(f32));
  while (dl->outPoint < 0) {
    dl->outPoint += dl->length;
  }
}

static void DLcreate(_SND_REVSTD_DELAYLINE* dl, s32 len) {
  dl->length = (s32)len * sizeof(f32);
  dl->inputs = (f32*)salMalloc(len * sizeof(f32));
  memset(dl->inputs, 0, len * sizeof(len));
  dl->lastOutput = 0.f;
  DLsetdelay(dl, len >> 1);
  dl->inPoint = 0;
  dl->outPoint = 0;
}

static void DLdelete(_SND_REVSTD_DELAYLINE* dl) { salFree(dl->inputs); }

bool ReverbSTDCreate(_SND_REVSTD_WORK* rv, float coloration, float time, float mix, float damping,
                     float predelay) {
  static u32 lens[4] = {1789, 1999, 433, 149};
  u8 i; // r31
  u8 k; // r29

  if ((coloration < 0.f || coloration > 1.f) || (time < .01f || time > 10.f) ||
      (mix < 0.f || mix > 1.f) || (damping < 0.f || damping > 1.f) ||
      (predelay < 0.f || predelay > 0.1f)) {
    return FALSE;
  }

  memset(rv, 0, sizeof(_SND_REVSTD_WORK));
  for (k = 0; k < 3; ++k) {
    for (i = 0; i < 2; ++i) {
      DLcreate(&rv->C[i + k * 2], lens[i] + 2);
      DLsetdelay(&rv->C[i + k * 2], lens[i]);
      rv->combCoef[i + k * 2] = powf(10.f, (int)(lens[i] * -3) / (time * 32000.f));
    }
    for (i = 0; i < 2; ++i) {
      DLcreate(&rv->AP[i + k * 2], lens[i + 2] + 2);
      DLsetdelay(&rv->AP[i + k * 2], lens[i + 2]);
    }
    rv->lpLastout[k] = 0.f;
  }

  rv->allPassCoeff = coloration;
  rv->level = mix;
  rv->damping = damping;
  if (rv->damping < 0.05f) {
    rv->damping = 0.05f;
  }

  rv->damping = 1.f - (rv->damping * 0.8f + 0.05f);

  if (predelay != 0.f) {
    rv->preDelayTime = (int)(predelay * 32000.f);
    for (k = 0; k < 3; ++k) {
      rv->preDelayLine[k] = salMalloc(rv->preDelayTime << 2);
      memset(rv->preDelayLine[k], 0, rv->preDelayTime << 2);
      rv->preDelayPtr[k] = rv->preDelayLine[k];
    }
  } else {
    rv->preDelayTime = 0;
    for (k = 0; k < 3; ++k) {
      rv->preDelayPtr[k] = NULL;
      rv->preDelayLine[k] = NULL;
    }
  }

  return TRUE;
}

bool ReverbSTDModify(_SND_REVSTD_WORK* rv, float coloration, float time, float mix, float damping,
                     float predelay) {
  unsigned char i; // r31

  if ((coloration < 0.f || coloration > 1.f) || (time < .01f || time > 10.f) ||
      (mix < 0.f || mix > 1.f) || (damping < 0.f || damping > 1.f) ||
      (predelay < 0.f || predelay > 0.1f)) {
    return FALSE;
  }

  rv->allPassCoeff = coloration;
  rv->level = mix;
  rv->damping = damping;
  if (rv->damping < 0.05f) {
    rv->damping = 0.05;
  }

  rv->damping = 1.f - (rv->damping * 0.8f + 0.05f);

  for (i = 0; i < 6; ++i) {
    DLdelete(&rv->AP[i]);
  }

  for (i = 0; i < 6; ++i) {
    DLdelete(&rv->C[i]);
  }

  if (rv->preDelayTime != 0) {
    for (i = 0; i < 3; ++i) {
      salFree(rv->preDelayLine[i]);
    }
  }

  return ReverbSTDCreate(rv, coloration, time, mix, damping, predelay);
}

#ifdef __MWERKS__
static const float value0_3 = 0.3f;
static const float value0_6 = 0.6f;
static const double i2fMagic = 4.503601774854144E15;
static asm void HandleReverb(long* sptr, struct _SND_REVSTD_WORK* rv) {
#if 1
  nofralloc
  stwu r1, -0x90(r1)
  stmw r17, 8(r1)
  stfd f14, 0x58(r1)
  stfd f15, 0x60(r1)
  stfd f16, 0x68(r1)
  stfd f17, 0x70(r1)
  stfd f18, 0x78(r1)
  stfd f19, 0x80(r1)
  stfd f20, 0x88(r1)
  lis r31, value0_3@ha
  lfs f6, value0_3@l(r31)
  lis r31, value0_6@ha
  lfs f9, value0_6@l(r31)
  lis r31, i2fMagic@ha
  lfd f5, i2fMagic@l(r31)
  lfs f2, 0xf0(r4)
  lfs f11, 0x11c(r4)
  lfs f8, 0x118(r4)
  fmuls f3, f8, f9
  fsubs f4, f9, f3
  lis r30, 0x4330
  stw r30, 0x50(r1)
  li r5, 0
  
lbl_803B56C8:
  slwi r31, r5, 3
  add r31, r31, r4
  lfs f19, 0xf4(r31)
  lfs f20, 0xf8(r31)
  slwi r31, r5, 2
  add r31, r31, r4
  lfs f7, 0x10c(r31)
  lwz r27, 0x124(r31)
  lwz r28, 0x130(r31)
  lwz r31, 0x120(r4)
  addi r22, r31, -1
  slwi r22, r22, 2
  add r22, r22, r27
  cmpwi cr7, r31, 0
  mulli r31, r5, 0x28
  addi r29, r4, 0x78
  add r29, r29, r31
  addi r30, r4, 0
  add r30, r30, r31
  lwz r21, 0(r29)
  lwz r20, 4(r29)
  lwz r19, 0x14(r29)
  lwz r18, 0x18(r29)
  lfs f15, 0x10(r29)
  lfs f16, 0x24(r29)
  lwz r26, 8(r29)
  lwz r25, 0x1c(r29)
  lwz r7, 0xc(r29)
  lwz r8, 0x20(r29)
  lwz r12, 0(r30)
  lwz r11, 4(r30)
  lwz r10, 0x14(r30)
  lwz r9, 0x18(r30)
  lfs f17, 0x10(r30)
  lfs f18, 0x24(r30)
  lwz r24, 8(r30)
  lwz r23, 0x1c(r30)
  lwz r17, 0xc(r30)
  lwz r6, 0x20(r30)
  lwz r30, 0(r3)
  xoris r30, r30, 0x8000
  stw r30, 0x54(r1)
  lfd f12, 0x50(r1)
  fsubs f12, f12, f5
  li r31, 0x9f
  mtctr r31

lbl_803B5780:
  fmr f13, f12
  beq cr7, lbl_803B57A0
  lfs f13, 0(r28)
  addi r28, r28, 4
  cmpw r28, r22
  stfs f12, -4(r28)
  bne+ lbl_803B57A0
  mr r28, r27
  
lbl_803B57A0:

  fmadds f8, f19, f15, f13
  lwzu r29, 4(r3)
  fmadds f9, f20, f16, f13
  stfsx f8, r7, r21
  addi r21, r21, 4
  stfsx f9, r8, r19
  lfsx f14, r7, r20
  addi r20, r20, 4
  lfsx f16, r8, r18
  cmpw r21, r26
  cmpw cr1, r20, r26
  addi r19, r19, 4
  addi r18, r18, 4
  fmr f15, f14
  cmpw cr5, r19, r25
  fadds f14, f14, f16
  cmpw cr6, r18, r25
  bne+ lbl_803B57EC
  li r21, 0

lbl_803B57EC:
  xoris r29, r29, 0x8000
  fmadds f9, f2, f17, f14
  bne+ cr1, lbl_803B57FC
  li r20, 0

lbl_803B57FC:
  stw r29, 0x54(r1)
  bne+ cr5, lbl_803B5808
  li r19, 0

lbl_803B5808:
  stfsx f9, r17, r12
  fnmsubs f14, f2, f9, f17
  addi r12, r12, 4
  bne+ cr6, lbl_803B581C
  li r18, 0

lbl_803B581C:
  lfsx f17, r17, r11
  cmpw cr5, r12, r24
  addi r11, r11, 4
  cmpw cr6, r11, r24
  bne+ cr5, lbl_803B5834
  li r12, 0

lbl_803B5834:
  bne+ cr6, lbl_803B583C
  li r11, 0

lbl_803B583C:
  fmuls f14, f14, f6
  lfd f10, 0x50(r1)
  fmadds f14, f11, f7, f14
  fmadds f9, f2, f18, f14
  fmr f7, f14
  stfsx f9, r6, r10
  fnmsubs f14, f2, f9, f18
  fmuls f8, f4, f12
  lfsx f18, r6, r9
  addi r10, r10, 4
  addi r9, r9, 4
  fmadds f14, f3, f14, f8
  cmpw cr5, r10, r23
  cmpw cr6, r9, r23
  fctiwz f14, f14
  bne+ cr5, lbl_803B5880
  li r10, 0

lbl_803B5880:
  bne+ cr6, lbl_803B5888
  li r9, 0

lbl_803B5888:
  li r31, -4
  fsubs f12, f10, f5
  stfiwx f14, r3, r31
  bdnz lbl_803B5780
  fmr f13, f12
  beq cr7, lbl_803B58B8
  lfs f13, 0(r28)
  addi r28, r28, 4
  cmpw r28, r22
  stfs f12, -4(r28)
  bne+ lbl_803B58B8
  mr r28, r27

lbl_803B58B8:
  fmadds f8, f19, f15, f13
  fmadds f9, f20, f16, f13
  stfsx f8, r7, r21
  addi r21, r21, 4
  stfsx f9, r8, r19
  lfsx f14, r7, r20
  addi r20, r20, 4
  lfsx f16, r8, r18
  cmpw r21, r26
  cmpw cr1, r20, r26
  addi r19, r19, 4
  addi r18, r18, 4
  fmr f15, f14
  cmpw cr5, r19, r25
  fadds f14, f14, f16
  cmpw cr6, r18, r25
  bne+ lbl_803B5900
  li r21, 0

lbl_803B5900:
  fmadds f9, f2, f17, f14
  bne+ cr1, lbl_803B590C
  li r20, 0

lbl_803B590C:
  bne+ cr5, lbl_803B5914
  li r19, 0

lbl_803B5914:
  stfsx f9, r17, r12
  fnmsubs f14, f2, f9, f17
  addi r12, r12, 4
  bne+ cr6, lbl_803B5928
  li r18, 0

lbl_803B5928:
  lfsx f17, r17, r11
  cmpw cr5, r12, r24
  addi r11, r11, 4
  cmpw cr6, r11, r24
  bne+ cr5, lbl_803B5940
  li r12, 0

lbl_803B5940:
  bne+ cr6, lbl_803B5948
  li r11, 0

lbl_803B5948:

  fmuls f14, f14, f6
  fmadds f14, f11, f7, f14
  mulli r31, r5, 0x28
  fmadds f9, f2, f18, f14
  fmr f7, f14
  addi r29, r4, 0x78
  add r29, r29, r31
  stfsx f9, r6, r10
  fnmsubs f14, f2, f9, f18
  fmuls f8, f4, f12
  lfsx f18, r6, r9
  addi r10, r10, 4
  
  addi r9, r9, 4  
  fmadds f14, f3, f14, f8
  cmpw cr5, r10, r23
  cmpw cr6, r9, r23
  
  fctiwz f14, f14
  bne+ cr5, lbl_803B5994
  li r10, 0

lbl_803B5994:
  bne+ cr6, lbl_803B599C
  li r9, 0

lbl_803B599C:
  addi r30, r4, 0
  add r30, r30, r31
  stfiwx f14, r0, r3
  stw r21, 0(r29)
  stw r20, 4(r29)
  stw r19, 0x14(r29)
  stw r18, 0x18(r29)
  addi r3, r3, 4
  stfs f15, 0x10(r29)
  stfs f16, 0x24(r29)
  slwi r31, r5, 2
  add r31, r31, r4
  addi r5, r5, 1
  stw r12, 0(r30)
  stw r11, 4(r30)
  stw r10, 0x14(r30)
  stw r9, 0x18(r30)
  cmpwi r5, 3
  stfs f17, 0x10(r30)
  stfs f18, 0x24(r30)
  stfs f7, 0x10c(r31)
  stw r28, 0x130(r31)
  bne lbl_803B56C8
  lfd f14, 0x58(r1)
  lfd f15, 0x60(r1)
  lfd f16, 0x68(r1)
  lfd f17, 0x70(r1)
  lfd f18, 0x78(r1)
  lfd f19, 0x80(r1)
  lfd f20, 0x88(r1)
  lmw r17, 8(r1)
  addi r1, r1, 0x90

  blr
#endif
}
#else
static void HandleReverb(s32* sptr, struct _SND_REVSTD_WORK* rv) {
  // TODO: Reimplement this in C
}
#endif

void ReverbSTDCallback(s32* left, s32* right, s32* surround, _SND_REVSTD_WORK* rv) {
  HandleReverb(left, rv);
}

void ReverbSTDFree(_SND_REVSTD_WORK* rv) {
  u8 i; // r31
  for (i = 0; i < 6; ++i) {
    DLdelete(&rv->AP[i]);
  }
  for (i = 0; i < 6; ++i) {
    DLdelete(&rv->C[i]);
  }
  if (rv->preDelayTime != 0) {
    for (i = 0; i < 3; ++i) {
      salFree(rv->preDelayLine[i]);
    }
  }
}

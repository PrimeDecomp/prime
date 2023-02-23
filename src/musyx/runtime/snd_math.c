#include "math.h"
#include "musyx/musyx_priv.h"

void salApplyMatrix(const SND_FMATRIX* a, const SND_FVECTOR* b, SND_FVECTOR* out) {
  out->x = a->t[0] + ((a->m[0][2] * b->z) + ((a->m[0][0] * b->x) + (a->m[0][1] * b->y)));
  out->y = a->t[1] + ((a->m[1][2] * b->z) + ((a->m[1][0] * b->x) + (a->m[1][1] * b->y)));
  out->z = a->t[2] + ((a->m[2][2] * b->z) + ((a->m[2][0] * b->x) + (a->m[2][1] * b->y)));
}

float salNormalizeVector(SND_FVECTOR* vec) {
  float mag = sqrtf(vec->x * vec->x + vec->y * vec->y + vec->z * vec->z);
  vec->x /= mag;
  vec->y /= mag;
  vec->z /= mag;
  return mag;
}

void salCrossProduct(SND_FVECTOR* out, const SND_FVECTOR* a, const SND_FVECTOR* b) {
  out->x = (a->y * b->z) - (a->z * b->y);
  out->y = (a->z * b->x) - (a->x * b->z);
  out->z = (a->x * b->y) - (a->y * b->x);
}

#if NONMATCHING
void salInvertMatrix(SND_FMATRIX* out, const SND_FMATRIX* in) {
    float fVar1;
    float fVar2;
    float fVar3;
    float fVar4;

    fVar1 = in->m[1][1] * in->m[2][2] - in->m[2][1] * in->m[1][2];
    fVar4 = -(in->m[1][0] * in->m[2][2] - in->m[2][0] * in->m[1][2]);
    fVar2 = in->m[1][0] * in->m[2][1] - in->m[2][0] * in->m[1][1];
    fVar3 = 1.f / (in->m[0][2] * fVar2 + in->m[0][0] * fVar1 + in->m[0][1] * fVar4);
    out->m[0][0] = fVar3 * fVar1;
    out->m[1][0] = fVar3 * fVar4;
    out->m[2][0] = fVar3 * fVar2;
    out->m[0][1] = -fVar3 * (in->m[0][1] * in->m[2][2] - in->m[2][1] * in->m[0][2]);
    out->m[1][1] = fVar3 * (in->m[0][0] * in->m[2][2] - in->m[2][0] * in->m[0][2]);
    out->m[2][1] = -fVar3 * (in->m[0][0] * in->m[2][1] - in->m[2][0] * in->m[0][1]);
    out->m[0][2] = fVar3 * (in->m[0][1] * in->m[1][2] - in->m[1][1] * in->m[0][2]);
    out->m[1][2] = -fVar3 * (in->m[0][0] * in->m[1][2] - in->m[1][0] * in->m[0][2]);
    out->m[2][2] = fVar3 * (in->m[0][0] * in->m[1][1] - in->m[1][0] * in->m[0][1]);
    out->t[0] = (-in->t[0] * out->m[0][0] - in->t[1] * out->m[0][1]) - in->t[2] * out->m[0][2];
    out->t[1] = (-in->t[0] * out->m[1][0] - in->t[1] * out->m[1][1]) - in->t[2] * out->m[1][2];
    out->t[2] = (-in->t[0] * out->m[2][0] - in->t[1] * out->m[2][1]) - in->t[2] * out->m[2][2];
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
const float one = 1.f;
asm void salInvertMatrix(SND_FMATRIX* out, const SND_FMATRIX* in) {
  nofralloc
  lfs f5, 0x20(r4)
  lfs f10, 0xc(r4)
  lfs f0, 0x14(r4)
  lfs f6, 0x1c(r4)
  fmuls f3, f10, f5
  lfs f9, 0x18(r4)
  lfs f8, 0x10(r4)
  fmuls f4, f6, f0
  fmuls f2, f9, f0
  lfs f1, 0(r4)
  fmuls f7, f8, f5
  lfs f0, 4(r4)
  fmuls f5, f10, f6
  fsubs f6, f3, f2
  fsubs f7, f7, f4
  lfs f2, 8(r4)
  fmuls f4, f9, f8
  lfs f3, one
  fneg f6, f6
  fmuls f1, f1, f7
  fsubs f4, f5, f4
  fmuls f0, f0, f6
  fmuls f2, f2, f4
  fadds f0, f1, f0
  fadds f0, f2, f0
  fdivs f1, f3, f0
  fmuls f0, f1, f7
  fmuls f3, f1, f6
  fmuls f2, f1, f4
  stfs f0, 0(r3)
  fneg f0, f1
  stfs f3, 0xc(r3)
  stfs f2, 0x18(r3)
  lfs f5, 4(r4)
  lfs f4, 0x20(r4)
  lfs f3, 0x1c(r4)
  lfs f2, 8(r4)
  fmuls f4, f5, f4
  fmuls f2, f3, f2
  fsubs f2, f4, f2
  fmuls f2, f0, f2
  stfs f2, 4(r3)
  lfs f5, 0(r4)
  lfs f4, 0x20(r4)
  lfs f3, 0x18(r4)
  lfs f2, 8(r4)
  fmuls f4, f5, f4
  fmuls f2, f3, f2
  fsubs f2, f4, f2
  fmuls f2, f1, f2
  stfs f2, 0x10(r3)
  lfs f5, 0(r4)
  lfs f4, 0x1c(r4)
  lfs f3, 0x18(r4)
  lfs f2, 4(r4)
  fmuls f4, f5, f4
  fmuls f2, f3, f2
  fsubs f2, f4, f2
  fmuls f2, f0, f2
  stfs f2, 0x1c(r3)
  lfs f5, 4(r4)
  lfs f4, 0x14(r4)
  lfs f3, 0x10(r4)
  lfs f2, 8(r4)
  fmuls f4, f5, f4
  fmuls f2, f3, f2
  fsubs f2, f4, f2
  fmuls f2, f1, f2
  stfs f2, 8(r3)
  lfs f5, 0(r4)
  lfs f4, 0x14(r4)
  lfs f3, 0xc(r4)
  lfs f2, 8(r4)
  fmuls f4, f5, f4
  fmuls f2, f3, f2
  fsubs f2, f4, f2
  fmuls f0, f0, f2
  stfs f0, 0x14(r3)
  lfs f4, 0(r4)
  lfs f3, 0x10(r4)
  lfs f2, 0xc(r4)
  lfs f0, 4(r4)
  fmuls f3, f4, f3
  fmuls f0, f2, f0
  fsubs f0, f3, f0
  fmuls f0, f1, f0
  stfs f0, 0x20(r3)
  lfs f0, 0x24(r4)
  lfs f4, 0(r3)
  fneg f5, f0
  lfs f3, 0x28(r4)
  lfs f2, 4(r3)
  lfs f1, 0x2c(r4)
  lfs f0, 8(r3)
  fmuls f4, f5, f4
  fmuls f2, f3, f2
  fmuls f0, f1, f0
  fsubs f1, f4, f2
  fsubs f0, f1, f0
  stfs f0, 0x24(r3)
  lfs f0, 0x24(r4)
  lfs f4, 0xc(r3)
  fneg f5, f0
  lfs f3, 0x28(r4)
  lfs f2, 0x10(r3)
  lfs f1, 0x2c(r4)
  lfs f0, 0x14(r3)
  fmuls f4, f5, f4
  fmuls f2, f3, f2
  fmuls f0, f1, f0
  fsubs f1, f4, f2
  fsubs f0, f1, f0
  stfs f0, 0x28(r3)
  lfs f1, 0x24(r4)
  lfs f0, 0x18(r3)
  fneg f4, f1
  lfs f3, 0x28(r4)
  lfs f2, 0x1c(r3)
  lfs f1, 0x2c(r4)
  fmuls f4, f4, f0
  lfs f0, 0x20(r3)
  fmuls f2, f3, f2
  fmuls f0, f1, f0
  fsubs f1, f4, f2
  fsubs f0, f1, f0
  stfs f0, 0x2c(r3)
  blr
}
#pragma pop
/* clang-format on */
#endif

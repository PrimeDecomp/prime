#include <math.h>
#include "musyx/musyx.h"

void salApplyMatrix(const SND_FMATRIX* mat, const SND_FVECTOR* in, SND_FVECTOR* out) {
  out->x = mat->m[0][0] * in->x + mat->m[0][1] * in->y + mat->m[0][2] * in->z + mat->t[0];
  out->y = mat->m[1][0] * in->x + mat->m[1][1] * in->y + mat->m[1][2] * in->z + mat->t[1];
  out->z = mat->m[2][0] * in->x + mat->m[2][1] * in->y + mat->m[2][2] * in->z + mat->t[2];
}

float salNormalizeVector(SND_FVECTOR* vec) {
  float l = sqrtf(vec->x * vec->x + vec->y * vec->y + vec->z * vec->z);
  vec->x /= l;
  vec->y /= l;
  vec->z /= l;
  return l;
}

void salCrossProduct(SND_FVECTOR* out, const SND_FVECTOR* a, const SND_FVECTOR* b) {
  out->x = (a->y * b->z) - (a->z * b->y);
  out->y = (a->z * b->x) - (a->x * b->z);
  out->z = (a->x * b->y) - (a->y * b->x);
}

void salInvertMatrix(SND_FMATRIX* out, const SND_FMATRIX* in) {
  float a; // r62
  float b; // r61
  float c; // r60
  float f; // r63

  a = in->m[1][1] * in->m[2][2] - in->m[2][1] * in->m[1][2];
  b = -(in->m[1][0] * in->m[2][2] - in->m[2][0] * in->m[1][2]);
  c = in->m[1][0] * in->m[2][1] - in->m[2][0] * in->m[1][1];
  f = 1.f / (in->m[0][0] * a + in->m[0][1] * b + in->m[0][2] * c);
  out->m[0][0] = f * a;
  out->m[1][0] = f * b;
  out->m[2][0] = f * c;
  out->m[0][1] = -f * (in->m[0][1] * in->m[2][2] - in->m[2][1] * in->m[0][2]);
  out->m[1][1] = f * (in->m[0][0] * in->m[2][2] - in->m[2][0] * in->m[0][2]);
  out->m[2][1] = -f * (in->m[0][0] * in->m[2][1] - in->m[2][0] * in->m[0][1]);
  out->m[0][2] = f * (in->m[0][1] * in->m[1][2] - in->m[1][1] * in->m[0][2]);
  out->m[1][2] = -f * (in->m[0][0] * in->m[1][2] - in->m[1][0] * in->m[0][2]);
  out->m[2][2] = f * (in->m[0][0] * in->m[1][1] - in->m[1][0] * in->m[0][1]);
  out->t[0] = (-in->t[0] * out->m[0][0] - in->t[1] * out->m[0][1]) - in->t[2] * out->m[0][2];
  out->t[1] = (-in->t[0] * out->m[1][0] - in->t[1] * out->m[1][1]) - in->t[2] * out->m[1][2];
  out->t[2] = (-in->t[0] * out->m[2][0] - in->t[1] * out->m[2][1]) - in->t[2] * out->m[2][2];
}

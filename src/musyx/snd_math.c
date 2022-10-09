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

void salInvertMatrix(SND_FMATRIX* out, const SND_FMATRIX* in) { out->t[0] = 1.f; }

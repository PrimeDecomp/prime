#include "Kyoto/Animation/CAnimMathUtils.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "rstl/vector.hpp"

CQuaternion CAnimMathUtils::Slerp(const CQuaternion& a, const CQuaternion& b, float t) {
  if (t <= 0.00001f) {
    return a;
  }
  if (t >= 0.99999f) {
    return b;
  }
  float dot = a.GetY() * b.GetY();
  dot = a.GetX() * b.GetX() + dot;
  dot = a.GetZ() * b.GetZ() + dot;
  dot = a.GetW() * b.GetW() + dot;
  if (dot >= 1.0f) {
    return a;
  }
  if (dot > 0.95f) {
    float dx = b.GetX() - a.GetX();
    float dy = b.GetY() - a.GetY();
    float dz = b.GetZ() - a.GetZ();
    float lx = t * dx;
    float lz = t * dz;
    float ly = t * dy;
    float rx = a.GetX() + lx;
    float dw = b.GetW() - a.GetW();
    float ry = a.GetY() + ly;
    float rz = a.GetZ() + lz;
    float lw = t * dw;
    float rw = a.GetW() + lw;
    float lenSq = rx * rx + ry * ry + rz * rz + rw * rw;
    float inv = CMath::InvSqrtF(lenSq);
    return CQuaternion(inv * rw, inv * rx, inv * ry, inv * rz);
  }
  float angle = CMath::FastArcCosR(dot);
  float sinA = CMath::FastSinR(angle * (1.0f - t));
  float sinB = CMath::FastSinR(angle * t);
  #pragma fp_contract off
  float r4 = sinA * a.GetX();
  float r3 = sinB * b.GetX();
  float r2 = sinA * a.GetY();
  float r0 = sinB * b.GetY();
  float r6 = sinA * a.GetZ();
  float r5 = sinB * b.GetZ();
  float r7 = sinA * a.GetW();
  float r1 = sinB * b.GetW();
  #pragma fp_contract on
  float r29 = r2 + r0;
  float r28 = r4 + r3;
  float r31 = r6 + r5;
  float r30 = r7 + r1;
  float lenSq2 = r29 * r29 + r28 * r28 + r31 * r31 + r30 * r30;
  float inv2 = CMath::InvSqrtF(lenSq2);
  return CQuaternion(inv2 * r30, inv2 * r29, inv2 * r28, inv2 * r31);
}

CQuaternion CAnimMathUtils::SlerpLocal(const CQuaternion& from, const CQuaternion& to, float t) {
  float dot = from.GetY() * to.GetY();
  dot = from.GetX() * to.GetX() + dot;
  dot = from.GetZ() * to.GetZ() + dot;
  dot = from.GetW() * to.GetW() + dot;
  if (dot >= 0.0f) {
    return CAnimMathUtils::Slerp(from, to, t);
  }
  CQuaternion toEq = to.BuildEquivalent();
  return CAnimMathUtils::Slerp(from, toEq, t);
}

template <>
rstl::vector< CQuaternion, rstl::rmemory_allocator >::vector(CInputStream& in,
    const rstl::rmemory_allocator& alloc)
: x0_allocator(alloc), x4_count(0), x8_capacity(0), xc_items(nullptr) {
  int count = in.ReadLong();
  reserve(count);
  for (int i = 0; i < count; ++i) {
    CQuaternion q(in);
    if (x4_count >= x8_capacity) {
      reserve(x8_capacity == 0 ? 4 : x8_capacity * 2);
    }
    if (xc_items != nullptr) {
      xc_items[x4_count] = q;
    }
    ++x4_count;
  }
}
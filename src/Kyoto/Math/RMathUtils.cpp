#include "Kyoto/Math/CMath.hpp"

float CMath::SqrtF(float x) { return 0.f; }

double CMath::SqrtD(double x) { return 0.0; }

float CMath::InvSqrtF(float x) { return 0.f; }

float CMath::ArcSineR(float v) { return asin(v); }

float CMath::ArcCosineR(float v) { return acos(v); }

float CMath::ArcTangentR(float v) { return atan(v); }

float CMath::PowF(float x, float y) { return exp(log(x) * y); }

float CMath::SlowSineR(float x) { return sin(x); }

float CMath::SlowCosineR(float x) { return cos(x); }

float CMath::SlowTangentR(float x) { return tan(x); }

const float CMath::FloorF(float x) { return floor(x); }

float CMath::CeilingF(float x) {
  float tmp = FloorF(x);
  if (tmp == x) {
    return x;
  }
  return tmp + 1.f;
}
CVector3f CMath::GetCatmullRomSplinePoint(const CVector3f& a, const CVector3f& b,
                                          const CVector3f& c, const CVector3f& d, float t) {
  if (t <= 0.0f)
    return b;
  if (t >= 1.0f)
    return c;

  const float t2 = t * t;
  const float t3 = t2 * t;

  return (a * (-0.5f * t3 + t2 - 0.5f * t) + b * (1.5f * t3 + -2.5f * t2 + 1.0f) +
          c * (-1.5f * t3 + 2.0f * t2 + 0.5f * t) + d * (0.5f * t3 - 0.5f * t2));
}

float CMath::GetCatmullRomSplinePoint(float a, float b, float c, float d, float t) {
  if (t <= 0.0f)
    return b;
  if (t >= 1.0f)
    return c;

  const float t2 = t * t;
  const float t3 = t2 * t;

  return (a * (-0.5f * t3 + t2 - 0.5f * t) + b * (1.5f * t3 + -2.5f * t2 + 1.0f) +
          c * (-1.5f * t3 + 2.0f * t2 + 0.5f * t) + d * (0.5f * t3 - 0.5f * t2));
}

CVector3f CMath::GetBezierPoint(const CVector3f& a, const CVector3f& b, const CVector3f& c,
                                const CVector3f& d, float t) {
  CVector3f ab = CVector3f::Lerp(a, b, t);
  CVector3f bc = CVector3f::Lerp(b, c, t);
  CVector3f cd = CVector3f::Lerp(c, d, t);

  return CVector3f::Lerp(CVector3f::Lerp(ab, bc, t), CVector3f::Lerp(bc, cd, t), t);
}

CVector3f CMath::BaryToWorld(const CVector3f& p0, const CVector3f& p1, const CVector3f& p2,
                             const CVector3f& bary) {
  return bary.GetX() * p0 + bary.GetY() * p1 + bary.GetZ() * p2;
}

float CMath::FastSinR(float x) {
  if (fabs(x) > M_PI) {
    f32 temp = x;
    temp *= (1 / M_2PIF);
    temp = (int)temp;
    x -= temp * M_2PIF;
    if (x > M_PIF) {
      x = x - M_2PIF;
    } else if (x < -M_PIF) {
      x = M_2PIF + x;
    }
  }

  float f4 = x;
  f4 *= x;
  float f5 = x;
  f5 *= 0.99980587f;
  x *= f4;
  f5 += x * -0.16621658f;
  x *= f4;
  f5 += x * 0.008087108f;
  x *= f4;
  f5 += x * -0.000152977f;
  return f5;
}

float CMath::FastCosR(float x) {}

float CMath::FastArcCosR(float x) {}

int CMath::FloorPowerOfTwo(int v) {
  if (v == 0) {
    return 0;
  }
  uint s1 = (0xffffU - v) >> 0x1b & 0x10;
  uint sb1 = (uint)v >> s1 & 0xffff;
  uint s2 = (0xff - sb1) >> 0x1c & 8;
  uint sb2 = sb1 >> s2 & 0xff;
  uint s3 = ((0xf - sb2) >> 0x1d) & 4;
  uint sb3 = (sb2 >> s3) & 0xf;
  uint s4 = (3 - sb3) >> 0x1e & 2;
  uint totalShift = s1 + s2 + s3 + s4;
  uint finalSig = sb3 >> s4 & 3;
  uint finalShift = (((uint)(1 - finalSig) >> 0x1f)) + totalShift;
  return 1 << finalShift;
}

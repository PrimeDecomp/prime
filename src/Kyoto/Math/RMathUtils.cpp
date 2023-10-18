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

CVector3f CMath::GetBezierPoint(const CVector3f& a, const CVector3f& b, const CVector3f& c,
                                const CVector3f& d, float t) {
  const float omt = 1.f - t;
  return ((a * omt + b * t) * omt + (b * omt + c * t) * t) * omt +
         ((b * omt + c * t) * omt + (c * omt + d * t) * t) * t;
}

float CMath::FastSinR(float x) {}

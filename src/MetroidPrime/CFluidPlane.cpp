#include "MetroidPrime/CFluidPlane.hpp"

#include "Kyoto/Math/CMath.hpp"

float CFluidPlane::GetRippleScaleFromKineticEnergy(float baseI, float velDot) {
  float tmp = CMath::FastSqrtF(0.5f * baseI * velDot * velDot);
  if (tmp >= 160.f) {
    return 1.f;
  }
  return tmp * (1.f / 160.f);
}

#include "Kyoto/Animation/CAnimMathUtils.hpp"
#include "Kyoto/Math/CQuaternion.hpp"

const float CAnimMathUtils::kInterpolationThreshold = 0.0001f;

CQuaternion CAnimMathUtils::Slerp(const CQuaternion& start, const CQuaternion& end, float t) {
  if (t <= 0.00001f)
    return start;
  if (t >= 0.99999f)
    return end;
  const float dot = CQuaternion::Dot(start, end);
  if (dot >= 1.f)
    return start;
  if (dot > 0.95f) {
    const float scalar = start.GetScalar() + t * (end.GetScalar() - start.GetScalar());
    const CVector3f vector = start.GetVector() + t * (end.GetVector() - start.GetVector());
    const float invMag = CMath::InvSqrtF(scalar * scalar + vector.MagSquared());
    return CQuaternion(invMag * scalar, invMag * vector);
  } else {
    const float angle = CMath::FastArcCosR(dot);
    const float a = CMath::FastSinR(angle * (1.f - t));
    const float b = CMath::FastSinR(angle * t);
    const float scalar = a * start.GetScalar() + b * end.GetScalar();
    const CVector3f vector = a * start.GetVector() + b * end.GetVector();
    const float invMag = CMath::InvSqrtF(scalar * scalar + vector.MagSquared());
    return CQuaternion(invMag * scalar, invMag * vector);
  }
}

CQuaternion CAnimMathUtils::SlerpLocal(const CQuaternion& start, const CQuaternion& end, float t) {
  return CQuaternion::Dot(start, end) >= 0.f ? Slerp(start, end, t)
                                          : Slerp(start, end.BuildEquivalent(), t);
}

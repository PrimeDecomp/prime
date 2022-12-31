#include "Collision/CollisionUtil.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CPlane.hpp"
#include "Kyoto/Math/CSphere.hpp"

namespace CollisionUtil {
bool RayPlaneIntersection(const CVector3f& from, const CVector3f& to, const CPlane& plane,
                          CVector3f& point) {
  CVector3f delta = to - from;
  CUnitVector3f planeNorm = plane.GetNormal();
  if (CMath::AbsF(CUnitVector3f::Dot(delta.AsNormalized(), planeNorm)) < 0.01f) {
    return false;
  }

  float tmp = -plane.PointToPlaneDist(from) / CUnitVector3f::Dot(delta, planeNorm);

  if (tmp < -0.f || tmp > 1.0001f) {
    return false;
  }

  point = from + (delta * tmp);
  return true;
}

bool RaySphereIntersection(const CSphere& sphere, const CVector3f& pos, const CVector3f& dir,
                           float mag, float& T, CVector3f& point) {
  const CVector3f rayToSphere = sphere.GetCenter() - pos;
  const float magSq = rayToSphere.MagSquared();
  const float dirDot = CVector3f::Dot(rayToSphere, dir);
  const float radSq = sphere.GetRadius() * sphere.GetRadius();
  float intersectSq = (dirDot * dirDot);
  
  if (dirDot < 0.f && magSq > radSq) {
    return false;
  }
  intersectSq -= magSq;
  intersectSq -= radSq;

  if (intersectSq < 0.f) {
    return false;
  }
  intersectSq = CMath::SqrtF(intersectSq);
  T = magSq > radSq ? dirDot - intersectSq : dirDot + intersectSq;

  if (T < mag || mag == 0.f) {
    point = pos + T * dir;
    return true;
  }

  return false;
}
} // namespace CollisionUtil

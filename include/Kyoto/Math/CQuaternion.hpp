#ifndef _CQUATERNION_HPP
#define _CQUATERNION_HPP

#include "types.h"

#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CQuaternion {
public:
  CQuaternion(f32 w, f32 x, f32 y, f32 z) : w(w), x(x), y(y), z(z) {}
  // CQuaternion(const CQuaternion& other)
  // : w(other.w)
  // , x(other.x)
  // , y(other.y)
  // , z(other.z) {}

  CQuaternion operator*(const CQuaternion&) const;
  // Slerp__11CQuaternionFRC11CQuaternionRC11CQuaternionf
  // ShortestRotationArc__11CQuaternionFRC9CVector3fRC9CVector3f
  // LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
  // normalize_angle__Ff
  // IsValidQuaternion__11CQuaternionCFf
  // SlerpLocal__11CQuaternionFRC11CQuaternionRC11CQuaternionf
  // AngleFrom__11CQuaternionCFRC11CQuaternion
  // BuildEquivalent__11CQuaternionCFv
  // BuildNormalized__11CQuaternionCFv
  // AxisAngle__11CQuaternionFRC13CUnitVector3fRC9CRelAngle
  // Transform__11CQuaternionCFRC9CVector3f
  // XRotation__11CQuaternionFRC9CRelAngle
  // YRotation__11CQuaternionFRC9CRelAngle
  // ZRotation__11CQuaternionFRC9CRelAngle
  // BuildTransform__11CQuaternionCFv
  CTransform4f BuildTransform4f() const;
  CTransform4f BuildTransform4f(const CVector3f&) const;

  static CQuaternion FromMatrixRows(const CVector3f&, const CVector3f&, const CVector3f&);
  static CQuaternion FromMatrix(const CMatrix3f&);
  static CQuaternion FromMatrix(const CTransform4f&);

  static const CQuaternion& NoRotation() { return sNoRotation; }

private:
  f32 w;
  f32 x;
  f32 y;
  f32 z;

  static const CQuaternion sNoRotation;
};

#endif

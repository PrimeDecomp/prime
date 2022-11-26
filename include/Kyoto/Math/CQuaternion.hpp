#ifndef _CQUATERNION
#define _CQUATERNION

#include "types.h"

#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CRelAngle;
class CUnitVector3f;
class CNUQuaternion;

class CQuaternion {
public:
  CQuaternion(float w, float x, float y, float z) : w(w), imaginary(x, y, z) {}
  // __ct__11CQuaternionFfRC9CVector3f

  // CQuaternion(const CQuaternion& other)
  // : w(other.w)
  // , x(other.x)
  // , y(other.y)
  // , z(other.z) {}
  // CQuaternion& operator=(const CQuaternion& other) {
  //   w = other.w;
  //   x = other.x;
  //   y = other.y;
  //   z = other.z;
  // }

  CQuaternion operator*(const CQuaternion&) const;
  // __amu__11CQuaternionFRC11CQuaternion
  // ScalarVector__11CQuaternionFfRC9CVector3f
  // Slerp__11CQuaternionFRC11CQuaternionRC11CQuaternionf
  // ShortestRotationArc__11CQuaternionFRC9CVector3fRC9CVector3f
  // LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
  static CQuaternion LookAt(const CUnitVector3f&, const CUnitVector3f&, const CRelAngle&);
  // normalize_angle__Ff
  // IsValidQuaternion__11CQuaternionCFf
  static CQuaternion SlerpLocal(const CQuaternion& from, const CQuaternion& to, float t);
  // AngleFrom__11CQuaternionCFRC11CQuaternion
  // BuildEquivalent__11CQuaternionCFv
  // BuildNormalized__11CQuaternionCFv
  static CQuaternion AxisAngle(const CUnitVector3f&, const CRelAngle&);
  CVector3f Transform(const CVector3f&) const;
  static CQuaternion XRotation(const CRelAngle&);
  static CQuaternion YRotation(const CRelAngle&);
  static CQuaternion ZRotation(const CRelAngle&);
  CMatrix3f BuildTransform() const;
  CTransform4f BuildTransform4f() const;
  CTransform4f BuildTransform4f(const CVector3f&) const;
  CQuaternion BuildInverted() const {
    // double w = this->w;
    // double x = -this->x;
    // double y = -this->y;
    // double z = -this->z;
    return CQuaternion(w, -imaginary.GetX(), -imaginary.GetY(), -imaginary.GetZ());
  }

  static CQuaternion FromMatrixRows(const CVector3f&, const CVector3f&, const CVector3f&);
  static CQuaternion FromMatrix(const CMatrix3f&);
  static CQuaternion FromMatrix(const CTransform4f&);
  static CQuaternion FromNUQuaternion(const CNUQuaternion&);

  static const CQuaternion& NoRotation() { return sNoRotation; }

  static float Dot(const CQuaternion& a, const CQuaternion& b) {
    return (a.GetW() * b.GetW()) + (a.GetX() * b.GetX()) + (a.GetY() * b.GetY()) + (a.GetZ() * b.GetZ());
  }

  float GetW() const { return w; }
  float GetX() const { return imaginary.GetX(); }
  float GetY() const { return imaginary.GetY(); }
  float GetZ() const { return imaginary.GetZ(); }
  const CVector3f& GetImaginary() const { return imaginary; }

private:
  float w;
  CVector3f imaginary;

  static const CQuaternion sNoRotation;
};

#endif // _CQUATERNION

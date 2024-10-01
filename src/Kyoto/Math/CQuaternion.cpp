#include "Kyoto/Math/CQuaternion.hpp"

#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"

CQuaternion CQuaternion::AxisAngle(const CUnitVector3f& axis, const CRelAngle& angle) {
  float w = cosine(angle / 2.f);
  CVector3f vec = axis * sine(angle / 2.f);
  return CQuaternion(w, vec);
}

CQuaternion CQuaternion::operator*(const CQuaternion& rhs) const {
  float w = this->w * rhs.w - CVector3f::Dot(imaginary, rhs.imaginary);
  CVector3f imag =
      rhs.w * imaginary + this->w * rhs.imaginary + CVector3f::Cross(imaginary, rhs.imaginary);
  return CQuaternion(w, imag);
}

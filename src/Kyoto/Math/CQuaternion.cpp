#include "Kyoto/Math/CQuaternion.hpp"

CQuaternion CQuaternion::operator*(const CQuaternion& rhs) const {
  float w = this->w * rhs.w - CVector3f::Dot(imaginary, rhs.imaginary);
  CVector3f imag =
      rhs.w * imaginary + this->w * rhs.imaginary + CVector3f::Cross(imaginary, rhs.imaginary);
  return CQuaternion(w, imag);
}

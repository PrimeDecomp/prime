#include "Kyoto/Math/CQuaternion.hpp"

#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

const CQuaternion CQuaternion::sNoRotation = CQuaternion(1.f, CVector3f(0.f, 0.f, 0.f));
static const CVector3f XAxis(1.f, 0.f, 0.f);
static const CVector3f YAxis(0.f, 1.f, 0.f);
static const CVector3f ZAxis(0.f, 0.f, 1.f);

CQuaternion::CQuaternion(CInputStream& in) : w(in.ReadFloat()), imaginary(in) {}

CQuaternion CQuaternion::AxisAngle(const CUnitVector3f& axis, const CRelAngle& angle) {
  double w = cos(angle.AsRadians() / 2.f);
  CVector3f vec = axis * sine(angle / 2.f);
  return CQuaternion(w, vec);
}

CQuaternion CQuaternion::operator*(const CQuaternion& rhs) const {
  float w = this->w * rhs.w - CVector3f::Dot(imaginary, rhs.imaginary);
  CVector3f imag =
      rhs.w * imaginary + this->w * rhs.imaginary + CVector3f::Cross(imaginary, rhs.imaginary);
  return CQuaternion(w, imag);
}

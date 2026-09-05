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

CMatrix3f CQuaternion::BuildTransform() const {
  const CVector3f twoVec = 2.f * imaginary;
  const CVector3f two_x_x = twoVec.ByElementMultiply(twoVec, imaginary); // f0
  return CMatrix3f((1.0f - two_x_x.GetY()) - two_x_x.GetZ(),
                   (twoVec.GetX() * imaginary.GetY()) - (w * twoVec.GetZ()),
                   (twoVec.GetX() * imaginary.GetZ()) + (w * twoVec.GetY()),
                   (twoVec.GetX() * imaginary.GetY()) + (w * twoVec.GetZ()),
                   (1.0f - two_x_x.GetX()) - two_x_x.GetZ(),
                   (twoVec.GetY() * imaginary.GetZ()) - (w * twoVec.GetX()),
                   (twoVec.GetX() * imaginary.GetZ()) - (w * twoVec.GetY()),
                   (twoVec.GetY() * imaginary.GetZ()) + (w * twoVec.GetX()),
                   (1.0f - two_x_x.GetX()) - two_x_x.GetY());

  // return CMatrix3f(1.0f - (2.0f*y)*y - (2.0f*z)*z,
  //                  (2.0f*y)*x - w*(2.0f*z),
  //                  (2.0f*z)*x + w*(2.0f*y),
  //                  (2.0f*y)*x + w*(2.0f*z),
  //                  1.0f - (2.0f*x)*x - (2.0f*z)*z,
  //                  (2.0f*y)*z - w*(2.0f*x),
  //                  (2.0f*x)*z - w*(2.0f*y),
  //                  (2.0f*y)*z + w*(2.0f*x),
  //                  1.0f - (2.0f*x)*x - (2.0f*y)*y
  //                 );
}

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

const CTransform4f CTransform4f::sIdentity(1.f, 0.f, 0.f, 0.f, //
                                           0.f, 1.f, 0.f, 0.f, //
                                           0.f, 0.f, 1.f, 0.f  //
);

CTransform4f CTransform4f::LookAt(const CVector3f& pos, const CVector3f& lookPos,
                                  const CVector3f& up) {}

CTransform4f CTransform4f::MakeRotationsBasedOnY(const CUnitVector3f& yRot) {}

CTransform4f CTransform4f::RotateX(const CRelAngle& x) {
  const float sinAngle = sin(x.AsRadians());
  const float cosAngle = cos(x.AsRadians());
  return CTransform4f(1.f, 0.f, 0.f, 0.f,            //
                      0.f, cosAngle, -sinAngle, 0.f, //
                      0.f, sinAngle, cosAngle, 0.f   //
  );
}

CTransform4f CTransform4f::RotateY(const CRelAngle& y) {
  const float sinAngle = sin(y.AsRadians());
  const float cosAngle = cos(y.AsRadians());
  return CTransform4f(cosAngle, 0.f, sinAngle, 0.f, //
                      0.f, 1.f, 0.f, 0.f,           //
                      -sinAngle, 0.f, cosAngle, 0.f //
  );
}

CTransform4f CTransform4f::RotateZ(const CRelAngle& z) {
  const float sinAngle = sin(z.AsRadians());
  const float cosAngle = cos(z.AsRadians());
  return CTransform4f(cosAngle, -sinAngle, 0.f, 0.f, //
                      sinAngle, cosAngle, 0.f, 0.f,  //
                      0.f, 0.f, 1.f, 0.f             //
  );
}

void CTransform4f::RotateLocalX(const CRelAngle& x) {
  const float sinAngle = sin(x.AsRadians());
  const float cosAngle = cos(x.AsRadians());
  // clang-format off
  float _m01 = Get01(); _m01 *= sinAngle;
  float _m11 = Get11(); _m11 *= sinAngle;
  float _m21 = Get21(); _m21 *= sinAngle;
  float _m02 = Get02(); _m02 *= sinAngle;
  float _m12 = Get12(); _m12 *= sinAngle;
  float _m22 = Get22(); _m22 *= sinAngle;
  // clang-format on
  m01 *= cosAngle;
  m11 *= cosAngle;
  m21 *= cosAngle;
  m02 *= cosAngle;
  m12 *= cosAngle;
  m22 *= cosAngle;
  m01 += _m02;
  m11 += _m12;
  m21 += _m22;
  m02 -= _m01;
  m12 -= _m11;
  m22 -= _m21;
}

void CTransform4f::RotateLocalY(const CRelAngle& y) {
  const float sinAngle = sin(y.AsRadians());
  const float cosAngle = cos(y.AsRadians());
  // clang-format off
  float _m00 = Get00(); _m00 *= sinAngle;
  float _m10 = Get10(); _m10 *= sinAngle;
  float _m20 = Get20(); _m20 *= sinAngle;
  float _m02 = Get02(); _m02 *= sinAngle;
  float _m12 = Get12(); _m12 *= sinAngle;
  float _m22 = Get22(); _m22 *= sinAngle;
  // clang-format on

  m00 *= cosAngle;
  m10 *= cosAngle;
  m20 *= cosAngle;
  m02 *= cosAngle;
  m12 *= cosAngle;
  m22 *= cosAngle;
  m00 -= _m02;
  m10 -= _m12;
  m20 -= _m22;
  m02 += _m00;
  m12 += _m10;
  m22 += _m20;
}

void CTransform4f::RotateLocalZ(const CRelAngle& z) {
  const float sinAngle = sin(z.AsRadians());
  const float cosAngle = cos(z.AsRadians());
  // clang-format off
  float _m00 = Get00(); _m00 *= sinAngle;
  float _m10 = Get10(); _m10 *= sinAngle;
  float _m20 = Get20(); _m20 *= sinAngle;
  float _m01 = Get01(); _m01 *= sinAngle;
  float _m11 = Get11(); _m11 *= sinAngle;
  float _m21 = Get21(); _m21 *= sinAngle;
  // clang-format off

  m00 *= cosAngle;
  m10 *= cosAngle;
  m20 *= cosAngle;
  m01 *= cosAngle;
  m11 *= cosAngle;
  m21 *= cosAngle;
  m00 += _m01;
  m10 += _m11;
  m20 += _m21;
  m01 -= _m00;
  m11 -= _m10;
  m21 -= _m20;
}

void CTransform4f::Orthonormalize() {}

CTransform4f::CTransform4f(CInputStream& in)
: m00(in.ReadFloat())
, m01(in.ReadFloat())
, m02(in.ReadFloat())
, m03(in.ReadFloat())
, m10(in.ReadFloat())
, m11(in.ReadFloat())
, m12(in.ReadFloat())
, m13(in.ReadFloat())
, m20(in.ReadFloat())
, m21(in.ReadFloat())
, m22(in.ReadFloat())
, m23(in.ReadFloat()) {}

CTransform4f::CTransform4f(const CMatrix3f& basis, const CVector3f& position)
: m00(basis.Get00())
, m01(basis.Get01())
, m02(basis.Get02())
, m03(position.GetX())
, m10(basis.Get10())
, m11(basis.Get11())
, m12(basis.Get12())
, m13(position.GetY())
, m20(basis.Get20())
, m21(basis.Get21())
, m22(basis.Get22())
, m23(position.GetZ()) {}

CTransform4f CTransform4f::Scale(float scale) {

  return CTransform4f(scale, 0.f, 0.f, 0.f, //
                      0.f, scale, 0.f, 0.f, //
                      0.f, 0.f, scale, 0.f  //
  );
}

CTransform4f CTransform4f::Scale(float x, float y, float z) {
  return CTransform4f(x, 0.f, 0.f, 0.f, //
                      0.f, y, 0.f, 0.f, //
                      0.f, 0.f, z, 0.f  //
  );
}

CTransform4f CTransform4f::Scale(const CVector3f& scale) {
  return CTransform4f(scale.GetX(), 0.f, 0.f, 0.f, //
                      0.f, scale.GetY(), 0.f, 0.f, //
                      0.f, 0.f, scale.GetZ(), 0.f  //
  );
}

CTransform4f CTransform4f::Translate(float x, float y, float z) {
  return CTransform4f(1.f, 0.f, 0.f, x, //
                      0.f, 1.f, 0.f, y, //
                      0.f, 0.f, 1.f, z  //
  );
}

CTransform4f CTransform4f::Translate(const CVector3f& pos) {
  return CTransform4f(1.f, 0.f, 0.f, pos.GetX(), //
                      0.f, 1.f, 0.f, pos.GetY(), //
                      0.f, 0.f, 1.f, pos.GetZ()  //
  );
}

CMatrix3f CTransform4f::BuildMatrix3f() const {
  return CMatrix3f(m00, m01, m02, m10, m11, m12, m20, m21, m22);
}

CTransform4f CTransform4f::MultiplyIgnoreTranslation(const CTransform4f& other) const {
  return CTransform4f(Get00() * other.Get00() + Get01() * other.Get10() + Get02() * other.Get20(),
                      Get00() * other.Get01() + Get01() * other.Get11() + Get02() * other.Get21(),
                      Get00() * other.Get02() + Get01() * other.Get12() + Get02() * other.Get22(),
                      Get03() + other.Get03(),
                      Get10() * other.Get00() + Get11() * other.Get10() + Get12() * other.Get20(),
                      Get10() * other.Get01() + Get11() * other.Get11() + Get12() * other.Get21(),
                      Get10() * other.Get02() + Get11() * other.Get12() + Get12() * other.Get22(),
                      Get13() + other.Get13(),
                      Get20() * other.Get00() + Get21() * other.Get10() + Get22() * other.Get20(),
                      Get20() * other.Get01() + Get21() * other.Get11() + Get22() * other.Get21(),
                      Get20() * other.Get02() + Get21() * other.Get12() + Get22() * other.Get22(),
                      Get23() + other.Get23());
}

void CTransform4f::ScaleBy(float scale) {
  m00 *= scale;
  m01 *= scale;
  m02 *= scale;
  m10 *= scale;
  m11 *= scale;
  m12 *= scale;
  m20 *= scale;
  m21 *= scale;
  m22 *= scale;
}

CTransform4f::CTransform4f(const CVector3f& m0, const CVector3f& m1, const CVector3f& m2,
                           const CVector3f& pos) {
  const float _m23 = pos.GetZ();
  const float _m22 = m2.GetZ();
  const float _m12 = m1.GetZ();
  const float _m02 = m0.GetZ();

  const float _m13 = pos.GetY();
  const float _m21 = m2.GetY();
  const float _m11 = m1.GetY();
  const float _m01 = m0.GetY();

  const float _m03 = pos.GetX();
  const float _m20 = m2.GetX();
  const float _m10 = m1.GetX();
  const float _m00 = m0.GetX();

  m00 = _m00;
  m01 = _m10;
  m02 = _m20;
  m03 = _m03;
  m10 = _m01;
  m11 = _m11;
  m12 = _m21;
  m13 = _m13;
  m20 = _m02;
  m21 = _m12;
  m22 = _m22;
  m23 = _m23;
}

CTransform4f CTransform4f::FromColumns(const CVector3f& m0, const CVector3f& m1,
                                       const CVector3f& m2, const CVector3f& pos) {
  return CTransform4f(m0.GetX(), m0.GetY(), m0.GetZ(), pos.GetX(), //
                      m1.GetX(), m1.GetY(), m1.GetZ(), pos.GetY(), //
                      m2.GetX(), m2.GetY(), m2.GetZ(), pos.GetZ()  //
  );
}

bool operator==(const CTransform4f& lhs, const CTransform4f& rhs) {
  return lhs.Get00() == rhs.Get00() && lhs.Get01() == rhs.Get01() && lhs.Get02() == rhs.Get02() &&
         lhs.Get03() == rhs.Get03() && // x
         lhs.Get10() == rhs.Get10() && lhs.Get11() == rhs.Get11() && lhs.Get12() == rhs.Get12() &&
         lhs.Get13() == rhs.Get13() && // y
         lhs.Get20() == rhs.Get20() && lhs.Get21() == rhs.Get21() && lhs.Get22() == rhs.Get22() &&
         lhs.Get23() == rhs.Get23(); // z
}

CTransform4f CTransform4f::GetQuickInverse() const{  
  const float _m03 = -(Get20() * Get23() - (Get00() * -Get03() - Get10() * Get13()));
  const float _m13 = -(Get21() * Get23() - (Get01() * -Get03() - Get11() * Get13()));
  const float _m23 = -(Get22() * Get23() - (Get02() * -Get03() - Get12() * Get13()));
  
  return CTransform4f(Get00(), Get10(), Get20(), _m03, Get01(), Get11(), Get21(), _m13, Get02(), Get12(), Get22(), _m23);
}
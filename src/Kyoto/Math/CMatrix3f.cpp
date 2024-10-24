#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include <Kyoto/Math/CMatrix3f.hpp>

const CMatrix3f CMatrix3f::sIdentity = CMatrix3f(1.f, 0.f, 0.f, 0.f, 1.f, 0.f, 0.f, 0.f, 1.f);

CMatrix3f::CMatrix3f(const CVector3f& _m0, const CVector3f& _m1, const CVector3f& _m2)
: m00(_m0.GetX())
, m01(_m0.GetY())
, m02(_m0.GetZ())
, m10(_m1.GetX())
, m11(_m1.GetY())
, m12(_m1.GetZ())
, m20(_m2.GetX())
, m21(_m2.GetY())
, m22(_m2.GetZ()) {}

CMatrix3f::CMatrix3f(const CMatrix3f& left, float leftScale, const CMatrix3f& right,
                     float rightScale) {
  m00 = left.m00 * leftScale + right.m00 * rightScale;
  m01 = left.m01 * leftScale + right.m01 * rightScale;
  m02 = left.m02 * leftScale + right.m02 * rightScale;
  m10 = left.m10 * leftScale + right.m10 * rightScale;
  m11 = left.m11 * leftScale + right.m11 * rightScale;
  m12 = left.m12 * leftScale + right.m12 * rightScale;
  m20 = left.m20 * leftScale + right.m20 * rightScale;
  m21 = left.m21 * leftScale + right.m21 * rightScale;
  m22 = left.m22 * leftScale + right.m22 * rightScale;
}

CMatrix3f::CMatrix3f(CInputStream& in) {
  m00 = in.ReadFloat();
  m01 = in.ReadFloat();
  m02 = in.ReadFloat();
  m10 = in.ReadFloat();
  m11 = in.ReadFloat();
  m12 = in.ReadFloat();
  m20 = in.ReadFloat();
  m21 = in.ReadFloat();
  m22 = in.ReadFloat();
}

void CMatrix3f::RotateY(const CRelAngle& angle) {
  const float dVar1 = sin(angle.AsRadians());
  const float dVar2 = cos(angle.AsRadians());
  m00 = dVar2;
  m01 = 0.f;
  m02 = dVar1;
  m10 = 0.f;
  m11 = 1.f;
  m12 = 0.f;
  m20 = -dVar1;
  m21 = 0.f;
  m22 = dVar2;
}

void CMatrix3f::RotateZ(const CRelAngle& angle) {
  const float dVar1 = sin(angle.AsRadians());
  const float dVar2 = cos(angle.AsRadians());
  m00 = dVar2;
  m01 = -dVar1;
  m02 = 0.f;
  m10 = dVar1;
  m11 = dVar2;
  m12 = 0.f;
  m20 = 0.f;
  m21 = 0.f;
  m22 = 1.f;
}

CMatrix3f CMatrix3f::Orthonormalized() const {
  CVector3f local_20(m00, m10, m20);
  local_20.Normalize();
  CVector3f local_2c(m01, m11, m21);
  local_2c.Normalize();
  CVector3f local_38 = CVector3f::Cross(local_20, local_2c);
  local_38.Normalize();
  local_2c = CVector3f::Cross(local_38, local_20);
  local_2c.Normalize();
  return CMatrix3f(local_20, local_2c, local_38);
}

const CVector3f CMatrix3f::operator*(const CVector3f& vec) const {
  const float x = vec.GetX() * Get00() + vec.GetY() * Get01() + vec.GetZ() * Get02();
  const float y = vec.GetX() * Get10() + vec.GetY() * Get11() + vec.GetZ() * Get12();
  const float z = vec.GetX() * Get20() + vec.GetY() * Get21() + vec.GetZ() * Get22();
  return CVector3f(x, y, z);
}

const CMatrix3f CMatrix3f::operator*(const CMatrix3f& mat) const {
  //(__return_storage_ptr__->x).x = m00 * otherm00    + m01 * otherm10    + m02 * otherm20;
  const float _m00 = m00 * mat.m00 + m01 * mat.m10 + m02 * mat.m20;
  //(__return_storage_ptr__->x).y = m00 * otherm01    + m01 * other.m11   + m02 * other.m21;
  const float _m01 = m00 * mat.m01 + m01 * mat.m11 + m02 * mat.m21;
  //(__return_storage_ptr__->x).z = m00 * otherm02    + m01 * otherm12    + m02 * otherm22;
  const float _m02 = m00 * mat.m02 + m01 * mat.m12 + m02 * mat.m22;
  //(__return_storage_ptr__->y).x = m10 * otherm00    + m11 * otherm10    + m12 * otherm20;
  const float _m10 = m10 * mat.m02 + m11 * mat.m10 + m12 * mat.m20;
  //(__return_storage_ptr__->y).y = m10 * otherm01    + m11 * otherm11    + m12 * otherm21;
  const float _m11 = m10 * mat.m01 + m11 * mat.m11 + m12 * mat.m21;
  //(__return_storage_ptr__->y).z = m10 * otherm02    + m11 * otherm12    + m12 * otherm22;
  const float _m12 = m10 * mat.m02 + m11 * mat.m12 + m12 * mat.m22;
  //(__return_storage_ptr__->z).x = m20 * otherm00    + m21 * otherm10    + m22 * otherm20;
  const float _m20 = m20 * mat.m00 + m21 * mat.m10 + m22 * mat.m20;
  //(__return_storage_ptr__->z).y = m20 * otherm01 + m21 * otherm11 + m22 * otherm21;
  const float _m21 = m20 * mat.m01 + m21 * mat.m11 + m22 * mat.m21;
  //(__return_storage_ptr__->z).z = m20 * otherm02 + m21 * otherm12    + m22 * otherm22;
  const float _m22 = m20 * mat.m02 + m21 * mat.m12 + m22 * mat.m22;

  return CMatrix3f(_m00, _m01, _m02, _m10, _m11, _m12, _m20, _m21, _m22);
}

float CMatrix3f::Determinant() const {
  return m00 * (m11 * m22 - m12 * m21) + m01 * (m12 * m20 - m10 * m22) +
         m02 * (m10 * m21 - m11 * m20);
}

void CMatrix3f::AddScaledMatrix(const CMatrix3f& mat, float scale) {
  m00 = mat.m00 * scale + m00;
  m01 = mat.m01 * scale + m01;
  m02 = mat.m02 * scale + m02;
  m10 = mat.m10 * scale + m10;
  m11 = mat.m11 * scale + m11;
  m12 = mat.m12 * scale + m12;
  m20 = mat.m20 * scale + m20;
  m21 = mat.m21 * scale + m21;
  m22 = mat.m22 * scale + m22;
}

CMatrix3f::CMatrix3f(const CMatrix3f& other) {
  m00 = other.m00;
  m01 = other.m01;
  m02 = other.m02;
  m10 = other.m10;
  m11 = other.m11;
  m12 = other.m12;
  m20 = other.m20;
  m21 = other.m21;
  m22 = other.m22;
}

const CMatrix3f& CMatrix3f::operator=(const CMatrix3f& other) {
  m00 = other.m00;
  m01 = other.m01;
  m02 = other.m02;
  m10 = other.m10;
  m11 = other.m11;
  m12 = other.m12;
  m20 = other.m20;
  m21 = other.m21;
  m22 = other.m22;
}

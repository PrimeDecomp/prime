#include "Kyoto/Math/CMatrix4f.hpp"

const CMatrix4f CMatrix4f::sIdentity =
    CMatrix4f(1.f, 0.f, 0.f, 0.f, 0.f, 1.f, 0.f, 0.f, 0.f, 0.f, 1.f, 0.f, 0.f, 0.f, 0.f, 1.f);

CMatrix4f::CMatrix4f(float m00, float m01, float m02, float m03, float m10, float m11, float m12,
                     float m13, float m20, float m21, float m22, float m23, float m30, float m31,
                     float m32, float m33)
: m00(m00)
, m01(m01)
, m02(m02)
, m03(m03)
, m10(m10)
, m11(m11)
, m12(m12)
, m13(m13)
, m20(m20)
, m21(m21)
, m22(m22)
, m23(m23)
, m30(m30)
, m31(m31)
, m32(m32)
, m33(m33) {}

CVector3f CMatrix4f::operator*(const CVector3f& vec) const {
  const float vecX = vec.GetX();
  const float vecY = vec.GetY();
  const float vecZ = vec.GetZ();
  const float x = (vecX * m00) + (vecY * m01) + (vecZ * m02) + m03;
  const float y = (vecX * m10) + (vecY * m11) + (vecZ * m12) + m13;
  const float z = (vecX * m20) + (vecY * m21) + (vecZ * m22) + m23;
  return CVector3f(x, y, z);
}

CVector3f CMatrix4f::MultiplyOneOverW(const CVector3f& vec) const {
  const float vecX = vec.GetX();
  const float vecY = vec.GetY();
  const float vecZ = vec.GetZ();
  const float w = (vecX * m30) + (vecY * m31) + (vecZ * m32) + m33;
  float x = (vecX * m00) + (vecY * m01) + (vecZ * m02) + m03;
  float y = (vecX * m10) + (vecY * m11) + (vecZ * m12) + m13;
  float z = (vecX * m20) + (vecY * m21) + (vecZ * m22) + m23;
  
  x *= (1.f / w);
  y *= (1.f / w);
  z *= (1.f / w);
  
  return CVector3f(x , y, z);
}

float CMatrix4f::MultiplyGetW(const CVector3f& vec) const {
  const float vecX = vec.GetX();
  const float vecY = vec.GetY();
  const float vecZ = vec.GetZ();
  return ((vecX * m30) + (vecY * m31) + (vecZ * m32) + m33);
}

#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "rstl/math.hpp"
#include <float.h>

const CVector2f CVector2f::skZeroVector = CVector2f(0.f, 0.f);

CVector2f::CVector2f(float x, float y) : mX(x), mY(y) {}

CVector2f& CVector2f::Normalize() {
  float mag = 1.f / Magnitude();
  mX *= mag;
  mY *= mag;

  return *this;
}

CVector2f& CVector2f::operator+=(const CVector2f& rhs) {
  mX += rhs.GetX();
  mY += rhs.GetY();
  return *this;
}
CVector2f& CVector2f::operator-=(const CVector2f& rhs) {
  mX -= rhs.GetX();
  mY -= rhs.GetY();
  return *this;
}
CVector2f& CVector2f::operator*=(float rhs) {
  mX *= rhs;
  mY *= rhs;
  return *this;
}
CVector2f& CVector2f::operator/=(float rhs) {
  const float v = 1.f / rhs;
  mX *= v;
  mY *= v;
  return *this;
}

float CVector2f::Magnitude() const {
  float mag = mX * mX;
  mag += mY * mY;
  return CMath::SqrtF(mag);
}

float CVector2f::MagSquared() const {
  float mag = mX * mX;
  mag += mY * mY;
  return mag;
}

CVector2f CVector2f::AsNormalized() const {
  float mag = 1.f / Magnitude();

  return CVector2f(mX * mag, mY * mag);
}

float CVector2f::GetAngleDiff(const CVector2f& a, const CVector2f& b) {
  float mag1 = a.Magnitude();
  float mag2 = b.Magnitude();

  float ret = 0.f;
  if (mag1 > FLT_EPSILON && mag2 > FLT_EPSILON) {
    float dist = CVector2f::Dot(a, b) / (mag1 * mag2);
    if (dist < -1.f) {
      dist = -1.f;
    } else if (dist > 1.f) {
      dist = 1.f;
    }
    ret = CMath::ArcCosineR(dist);
  }
  return ret;
}

float CVector2f::Dot(const CVector2f& a, const CVector2f& b) {
  return a.GetX() * b.GetX() + a.GetY() * b.GetY();
}

CVector2f operator+(const CVector2f& lhs, const CVector2f& rhs) {
  float x = lhs.GetX() + rhs.GetX();
  float y = lhs.GetY() + rhs.GetY();
  return CVector2f(x, y);
}

CVector2f operator-(const CVector2f& lhs, const CVector2f& rhs) {
  float x = lhs.GetX() - rhs.GetX();
  float y = lhs.GetY() - rhs.GetY();
  return CVector2f(x, y);
}

bool operator==(const CVector2f& lhs, const CVector2f& rhs) {
  return lhs.GetX() == rhs.GetX() && lhs.GetY() == rhs.GetY();
}

CVector2f operator*(const CVector2f& lhs, const float& rhs) {
  float x = lhs.GetX() * rhs;
  float y = lhs.GetY() * rhs;
  return CVector2f(x, y);
}

CVector2f operator*(const float& lhs, const CVector2f& rhs) {
  float x = lhs * rhs.GetX();
  float y = lhs * rhs.GetY();
  return CVector2f(x, y);
}

CVector2f operator/(const CVector2f& lhs, const float& rhs) {
  float v = 1.f / rhs;
  float x = lhs.GetX() * v;
  float y = lhs.GetY() * v;
  return CVector2f(x, y);
}

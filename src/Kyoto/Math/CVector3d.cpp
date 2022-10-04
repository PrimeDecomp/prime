#include "Kyoto/Math/CVector3d.hpp"
#include "Kyoto/Math/CMath.hpp"

CVector3d::CVector3d(double x, double y, double z) : mX(x), mY(y), mZ(z) {}

CVector3d::CVector3d(const CVector3f& other)
: mX(other.GetX()), mY(other.GetY()), mZ(other.GetZ()) {}

double CVector3d::Magnitude() const {
  double ret = mX * mX;
  ret += mY * mY;
  ret += mZ * mZ;
  return CMath::SqrtD(ret);
}

double CVector3d::MagSquared() const {
  double ret = mX * mX;
  ret += mY * mY;
  ret += mZ * mZ;
  return ret;
}

CVector3d CVector3d::AsNormalized() const {
  const double mag = 1.f / Magnitude();
  return CVector3d(mX * mag, mY * mag, mZ * mag);
}

CVector3f CVector3d::AsCVector3f() const {
  float z = mZ;
  float y = mY;
  float x = mX;
  return CVector3f(x, y, z);
}

double CVector3d::Dot(const CVector3d& a, const CVector3d& b) {
  double ret = a.GetX() * b.GetX();
  ret += a.GetY() * b.GetY();
  ret += a.GetZ() * b.GetZ();
  return ret;
}

CVector3d CVector3d::Cross(const CVector3d& lhs, const CVector3d& rhs) {
  double x1 = lhs.GetX();
  double y1 = lhs.GetY();
  double z1 = lhs.GetZ();
  double x2 = rhs.GetX();
  double y2 = rhs.GetY();
  double z2 = rhs.GetZ();
  return CVector3d((y1 * z2) - (y2 * z1), (z1 * x2) - (z2 * x1), (x1 * y2) - (x2 * y1));
}

CVector3d operator+(const CVector3d& lhs, const CVector3d& rhs) {
  return CVector3d(lhs.GetX() + rhs.GetX(), lhs.GetY() + rhs.GetY(), lhs.GetZ() + rhs.GetZ());
}

CVector3d operator-(const CVector3d& lhs, const CVector3d& rhs) {
  return CVector3d(lhs.GetX() - rhs.GetX(), lhs.GetY() - rhs.GetY(), lhs.GetZ() - rhs.GetZ());
}

CVector3d operator*(double lhs, const CVector3d& rhs) {
  return CVector3d(lhs * rhs.GetX(), lhs * rhs.GetY(), lhs * rhs.GetZ());
}

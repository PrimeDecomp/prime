#include "MetroidPrime/CAxisAngle.hpp"

const CAxisAngle CAxisAngle::sIdentity;

CAxisAngle::CAxisAngle(const CVector3f& vec) : mVector(vec) {}
CAxisAngle::CAxisAngle(const CUnitVector3f& vec, float angle) : mVector(vec * angle) {}

void CAxisAngle::FromVector(const CVector3f& axis) { mVector = axis; }

const CAxisAngle& CAxisAngle::Identity() { return sIdentity; }

const CVector3f& CAxisAngle::GetVector() const { return mVector; }

float CAxisAngle::GetAngle() const { return mVector.Magnitude(); }

const CAxisAngle& CAxisAngle::operator*=(const float& rhs) {
  mVector *= rhs;
  return *this;
}

const CAxisAngle& CAxisAngle::operator+=(const CAxisAngle& rhs) {
  mVector += rhs.mVector;
  return *this;
}

CAxisAngle operator*(const CAxisAngle& lhs, const float& rhs) {
  CAxisAngle angle;
  angle.mVector = lhs.mVector * rhs;
  return angle;
}
CAxisAngle operator*(const float& lhs, const CAxisAngle& rhs) {
  CAxisAngle angle;
  angle.mVector = lhs * rhs.mVector;
  return angle;
}

CAxisAngle operator+(const CAxisAngle& lhs, const CAxisAngle& rhs) {
  CAxisAngle angle = lhs;
  angle.mVector = lhs.mVector + rhs.mVector;
  return angle;
}

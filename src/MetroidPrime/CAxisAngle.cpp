#include "MetroidPrime/CAxisAngle.hpp"

#ifdef __MWERKS__
// This helps with CAxisAngle::FromVector. Marking the constructor inline causes
// it to not be emitted in the object file, but auto-inlining works.
#pragma auto_inline on
#endif

const CAxisAngle CAxisAngle::sIdentity;

CAxisAngle::CAxisAngle(const CVector3f& vec) : mVector(vec) {}

CAxisAngle::CAxisAngle(const CUnitVector3f& vec, float angle) : mVector(vec * angle) {}

CAxisAngle CAxisAngle::FromVector(const CVector3f& axis) { return CAxisAngle(axis); }

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
  return CAxisAngle(lhs.mVector * rhs);
}

CAxisAngle operator*(const float& lhs, const CAxisAngle& rhs) {
  return CAxisAngle(lhs * rhs.mVector);
}

CAxisAngle operator+(const CAxisAngle& lhs, const CAxisAngle& rhs) {
  return CAxisAngle(lhs.mVector + rhs.mVector);
}

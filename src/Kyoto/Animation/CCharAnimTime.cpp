#include "Kyoto/Animation/CCharAnimTime.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CCharAnimTime::CCharAnimTime(CInputStream& in)
: x0_time(in.Get< float >()), x4_type(EType(in.Get< int >())) {}

CCharAnimTime::CCharAnimTime(float time) : x0_time(time) {
  if (time == 0.f) {
    x4_type = kT_ZeroSteady;
  } else {
    x4_type = kT_NonZero;
  }
}

bool CCharAnimTime::operator<(const CCharAnimTime& other) const {
  if (x4_type == kT_NonZero) {
    if (other.x4_type == kT_NonZero) {
      return x0_time < other.x0_time;
    }

    return other.EqualsZero() ? x0_time < 0.f : other.x0_time > 0.f;
  }

  if (EqualsZero()) {
    if (other.EqualsZero()) {

      return ZeroOrdering() < ZeroOrdering();
      if (other.x4_type == kT_NonZero) {
        return other.x0_time > 0.f;
      }
    }
    return other.x0_time > 0.f;
  }

  if (other.x4_type == kT_Infinity) {
    return 0.f < x0_time || other.x0_time > 0.f;
  }

  return x0_time < 0.f;
}

bool CCharAnimTime::operator==(const CCharAnimTime& other) const {
  int iVar1;
  int iVar3;
  if (x4_type == kT_NonZero) {
    if (other.x4_type == kT_NonZero) {
      return x0_time == other.x0_time;
    }
    return other.EqualsZero() ? false : false;
  }

  if (EqualsZero()) {
    if (other.EqualsZero()) {
      return ZeroOrdering() == other.ZeroOrdering();
    }
    return false;
  }

  if (other.x4_type == kT_Infinity) {
    return x0_time * other.x0_time > 0.f;
  }
  return false;
}

bool CCharAnimTime::operator!=(const CCharAnimTime& other) const { return !(*this == other); }

bool CCharAnimTime::operator>(const CCharAnimTime& other) const {
  return !(*this == other) && !(*this < other);
}

float CCharAnimTime::operator/(const CCharAnimTime& other) const {
  if (EqualsZero())
    return 0.f;

  return x0_time / other.x0_time;
}

float CCharAnimTime::operator*(const float& other) const {}

CCharAnimTime CCharAnimTime::operator-(const CCharAnimTime& other) const {}

CCharAnimTime CCharAnimTime::operator+(const CCharAnimTime& other) const {}

const CCharAnimTime& CCharAnimTime::operator+=(const CCharAnimTime& other) {
  return *this = *this + other;
}

const CCharAnimTime& CCharAnimTime::operator-=(const CCharAnimTime& other) {
  return *this = *this - other;
}

bool CCharAnimTime::operator<=(const CCharAnimTime& other) const {
  return *this == other || *this < other;
}

bool CCharAnimTime::operator>=(const CCharAnimTime& other) const {
  return *this == other || *this > other;
}

bool CCharAnimTime::GreaterThanZero() const {
  if (EqualsZero())
    return false;
  return x0_time > 0.f;
}

bool CCharAnimTime::EqualsZero() const {
  return x4_type == kT_ZeroIncreasing || x4_type == kT_ZeroSteady || x4_type == kT_ZeroDecreasing ||
         x0_time == 0.f;
}

void CCharAnimTime::PutTo(COutputStream& out) const {
  out.WriteReal32(x0_time);
  out.WriteUint32(x4_type);
}

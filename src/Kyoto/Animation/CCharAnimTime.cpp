#include "Kyoto/Animation/CCharAnimTime.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

#include <rstl/math.hpp>

inline const float& derp(const float& d) { return d; }

CCharAnimTime::CCharAnimTime(CInputStream& in)
: x0_time(in.Get< float >()), x4_type(EType(in.Get< int >())) {
}

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

      return ZeroOrdering() < other.ZeroOrdering();
    }
    if (other.x4_type == kT_NonZero) {
      return 0.f < other.x0_time;
    }
    return other.x0_time > 0.f;
  }

  if (other.x4_type == kT_Infinity) {
    if (x0_time < 0.f && other.x0_time > 0.f) {
      return true;
    }
    return false;
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

CCharAnimTime CCharAnimTime::operator*(const float& other) const {
  if (other == 0.f) {
    return ZeroFlat();
  }

  if (EqualsZero()) {
    if (other > 0.f) {
      return *this;
    } else if (other < 0.f) {
      return CCharAnimTime(ZeroTypeFromOrdering(-ZeroOrdering()), 0.f);
    }
    return ZeroFlat();
  }

  return CCharAnimTime(x0_time * other);
}

CCharAnimTime CCharAnimTime::operator-(const CCharAnimTime& other) const {
  if (x4_type == kT_Infinity || other.x4_type == kT_Infinity) {
    if (x4_type == kT_Infinity && other.x4_type == kT_Infinity) {
      if (other.x0_time == x0_time) {
        return ZeroFlat();
      }
      return *this;
    }

    if (x4_type == kT_Infinity) {
      return *this;
    }

    return CCharAnimTime(kT_Infinity, -other.x0_time);
  }

  if (EqualsZero() && other.EqualsZero()) {
    int ordering = ZeroOrdering() - other.ZeroOrdering();

    return CCharAnimTime(ZeroTypeFromOrdering(ordering), 0.f);
  }
  return CCharAnimTime(x0_time - other.x0_time);
}

CCharAnimTime CCharAnimTime::operator+(const CCharAnimTime& other) const {
  if (x4_type == kT_Infinity || other.x4_type == kT_Infinity) {
    if (x4_type == kT_Infinity && other.x4_type == kT_Infinity) {
      if (other.x0_time == x0_time) {
        return *this;
      }
      return ZeroFlat();
    }

    if (x4_type == kT_Infinity) {
      return *this;
    }

    return other;
  }

  if (EqualsZero() && other.EqualsZero()) {
    return CCharAnimTime(ZeroTypeFromOrdering(rstl::max_val(-1, rstl::min_val(ZeroOrdering() + other.ZeroOrdering(), 1))), 0.f);
  }
  return CCharAnimTime(x0_time + other.x0_time);
}

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

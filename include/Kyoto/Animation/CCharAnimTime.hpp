#ifndef _CCHARANIMTIME
#define _CCHARANIMTIME

#include "types.h"

class COutputStream;
class CInputStream;
class CCharAnimTime {
public:
  enum EType {
    kT_NonZero,
    kT_ZeroIncreasing,
    kT_ZeroSteady,
    kT_ZeroDecreasing,
    kT_Infinity,
  };
  float GetSeconds() const { return x0_time; }

  explicit CCharAnimTime(CInputStream& in);
  explicit CCharAnimTime(float time);
  explicit CCharAnimTime(EType type, float time) : x0_time(time), x4_type(type) {}
  CCharAnimTime(const CCharAnimTime& other) : x0_time(other.x0_time), x4_type(other.x4_type) {}

  bool operator>(const CCharAnimTime& other) const;
  bool operator==(const CCharAnimTime& other) const;
  bool operator!=(const CCharAnimTime& other) const;
  bool operator<(const CCharAnimTime& other) const;
  float operator/(const CCharAnimTime& other) const;
  float operator*(const float& other) const;
  CCharAnimTime operator-(const CCharAnimTime& other) const;
  CCharAnimTime operator+(const CCharAnimTime& other) const;
  const CCharAnimTime& operator+=(const CCharAnimTime& other);
  const CCharAnimTime& operator-=(const CCharAnimTime& other);
  bool operator<=(const CCharAnimTime& other) const;
  bool operator>=(const CCharAnimTime& other) const;
  bool GreaterThanZero() const;
  bool EqualsZero() const;
  void PutTo(COutputStream& out) const;
  static CCharAnimTime Infinity() { return CCharAnimTime(kT_Infinity, 1.0f); }

private:
  float x0_time;
  EType x4_type;
};
CHECK_SIZEOF(CCharAnimTime, 0x8)

#endif // _CCHARANIMTIME

#ifndef _CCHARANIMTIME
#define _CCHARANIMTIME

#include "types.h"

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

  CCharAnimTime(const CCharAnimTime& other) : x0_time(other.x0_time), x4_type(other.x4_type) {}

private:
  float x0_time;
  EType x4_type;
};
CHECK_SIZEOF(CCharAnimTime, 0x8)

#endif // _CCHARANIMTIME

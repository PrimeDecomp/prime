#ifndef _CCHARANIMTIME_HPP
#define _CCHARANIMTIME_HPP

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

private:
  f32 x0_time;
  EType x4_type;
};
CHECK_SIZEOF(CCharAnimTime, 0x8)

#endif

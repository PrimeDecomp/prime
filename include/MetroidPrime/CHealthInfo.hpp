#ifndef _CHEALTHINFO_HPP
#define _CHEALTHINFO_HPP

#include "types.h"

class CHealthInfo {
public:
  CHealthInfo(f32 hp, f32 resist);
  // TODO

private:
  f32 x0_health;
  f32 x4_knockbackResistance;
};
CHECK_SIZEOF(CHealthInfo, 0x8)

#endif
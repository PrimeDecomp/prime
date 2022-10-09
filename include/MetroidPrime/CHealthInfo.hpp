#ifndef _CHEALTHINFO
#define _CHEALTHINFO

#include "types.h"

class CHealthInfo {
public:
  CHealthInfo(float hp, float resist) : x0_health(hp), x4_knockbackResistance(resist) {}
  void SetHP(float hp) { x0_health = hp; }
  void SetKnockbackResistance(float resist) { x4_knockbackResistance = resist; }
  float GetHP() const { return x0_health; }

private:
  float x0_health;
  float x4_knockbackResistance;
};
CHECK_SIZEOF(CHealthInfo, 0x8)

#endif // _CHEALTHINFO

#ifndef _CPOWERBOMB_HPP_
#define _CPOWERBOMB_HPP_

#include "MetroidPrime/Weapons/CWeapon.hpp"

class CElementGen;

class CPowerBomb : public CWeapon {
  bool x158_24_canStartFilter : 1;
  bool x158_25_filterEnabled : 1;
  float x15c_curTime;
  float x160_curRadius;
  float x164_radiusIncrement;
  rstl::single_ptr<CElementGen> x168_particle;
  float x16c_radius;

public:
  float GetCurTime() const { return x15c_curTime; }
};

#endif // _CPOWERBOMB_HPP_

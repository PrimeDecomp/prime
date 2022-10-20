#ifndef _CRIPPLEMANAGER
#define _CRIPPLEMANAGER

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/vector.hpp"

class CRipple;

class CRippleManager {
private:
  float x0_maxTimeFalloff;
  rstl::vector< CRipple > x4_ripples;
  float x14_alpha;

public:
  CRippleManager(int maxRipples, float alpha);
  
  void Init(int maxRipples);
  void Update(float dt);
  float GetLastRippleDeltaTime(TUniqueId rippler) const;
  void AddRipple(const CRipple& ripple);
};

#endif // _CRIPPLEMANAGER

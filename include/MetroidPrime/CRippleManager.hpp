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

  void SetMaxTimeFalloff(float time) { x0_maxTimeFalloff = time; }
  float GetMaxTimeFalloff() const { return x0_maxTimeFalloff; }

  rstl::vector<CRipple>& Ripples() { return x4_ripples; }
  const rstl::vector<CRipple>& GetRipples() const { return x4_ripples; }
  
  void SetAlpha(float a) { x14_alpha = a; }
  float GetAlpha() const { return x14_alpha; }
};

#endif // _CRIPPLEMANAGER

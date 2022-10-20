#ifndef _CBURSTFIRE
#define _CBURSTFIRE

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

class CStateManager;

struct SBurst {
  int x0_randomSelectionWeight;
  int x4_shotAngles[8];
  float x24_timeToNextShot;
  float x28_timeToNextShotVariance;
};

class CBurstFire {
  int x0_burstType;
  int x4_angleIdx;
  float x8_timeToNextShot;
  int xc_firstBurstIdx;
  int x10_firstBurstCounter;
  bool x14_24_shouldFire : 1;
  bool x14_25_avoidAccuracy : 1;
  const SBurst* x18_curBursts;
  rstl::reserved_vector<const SBurst*, 16> x1c_burstDefs;

public:
  CBurstFire(const SBurst** burstDefs, int firstBurstCount);

  void Start(CStateManager& mgr);
  void Update(CStateManager& mgr, float dt);
  
  CVector3f GetError(float xMag, float zMag) const;
  CVector3f GetDistanceCompensatedError(float dist, float maxErrDist) const;
  float GetMaxXError() const;
  float GetMaxZError() const;
};

#endif // _CBURSTFIRE

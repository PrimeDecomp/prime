#ifndef _CFLUIDPLANEMANAGER
#define _CFLUIDPLANEMANAGER

#include "types.h"

#include "MetroidPrime/CRippleManager.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/reserved_vector.hpp"

class CScriptWater;

class CFluidPlaneManager {
public:
  CFluidPlaneManager();
  // TODO

  void CreateSplash(TUniqueId splasher, CStateManager& mgr, const CScriptWater& water,
                    const CVector3f& pos, float factor, bool sfx);

private:
  class CSplashRecord {
    float x0_time;
    TUniqueId x4_id;
  };

  CRippleManager x0_rippleManager;
  rstl::reserved_vector< CSplashRecord, 32 > x18_splashes;
  float x11c_uvT;
  bool x120_;
  bool x121_;
};

#endif // _CFLUIDPLANEMANAGER

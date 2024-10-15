#ifndef _CFLUIDPLANEMANAGER
#define _CFLUIDPLANEMANAGER

#include "types.h"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CRippleManager.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

class CScriptWater;
class CStateManager;
class CVector3f;

class CFluidPlaneManager {
public:
  CFluidPlaneManager();
  // TODO

  void CreateSplash(TUniqueId splasher, CStateManager& mgr, const CScriptWater& water,
                    const CVector3f& pos, float factor, bool sfx);

  float GetLastSplashDeltaTime(TUniqueId uid) const;
  float GetLastRippleDeltaTime(TUniqueId uid) const;

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
CHECK_SIZEOF(CFluidPlaneManager, 0x124);

#endif // _CFLUIDPLANEMANAGER

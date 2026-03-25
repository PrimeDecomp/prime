#ifndef _CHUDMISSILEINTERFACE
#define _CHUDMISSILEINTERFACE

#include "types.h"

class CGuiFrame;
class CStateManager;

class CHudMissileInterface {
public:
  CHudMissileInterface(CGuiFrame& selHud, int missileCapacity, int numMissiles,
                       float chargeFactor, bool missilesActive, int hudType,
                       const CStateManager& mgr);

  void Update(float dt, const CStateManager& mgr);
  void SetIsVisibleGame(bool v, const CStateManager& mgr);
  void SetIsVisibleDebug(bool v, const CStateManager& mgr);
  void SetIsMissilesActive(bool active);
  void SetChargeBeamFactor(float t);
  void SetNumMissiles(int numMissiles, const CStateManager& mgr);
  void SetMissileCapacity(int missileCapacity);
};

#endif // _CHUDMISSILEINTERFACE

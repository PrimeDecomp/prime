#ifndef _CTARGETINGMANAGER
#define _CTARGETINGMANAGER

#include "MetroidPrime/HUD/CCompoundTargetReticle.hpp"
#include "MetroidPrime/HUD/COrbitPointMarker.hpp"

class CStateManager;

class CTargetingManager {
public:
  explicit CTargetingManager(const CStateManager& mgr);
  ~CTargetingManager();

  bool CheckLoadComplete();
  void Update(float dt, const CStateManager& mgr);
  void Draw(const CStateManager& mgr, bool hideLockon);
  void Touch() const;

  CCompoundTargetReticle& CompoundTargetReticle() { return x0_targetReticle; }

private:
  CCompoundTargetReticle x0_targetReticle;
  COrbitPointMarker x21c_orbitPointMarker;
};
CHECK_SIZEOF(CTargetingManager, 0x250)

#endif // _CTARGETINGMANAGER

#ifndef _CGRAPPLEARM
#define _CGRAPPLEARM

#include "types.h"
#include "rstl/single_ptr.hpp"
#include "Kyoto/Audio/CSfxHandle.hpp"

class CVector3f;
class CStateManager;
class CFrustumPlanes;
class CGunController;

class CGrappleArm {
public:
  enum EArmState {
    kAS_IntoGrapple,
    kAS_IntoGrappleIdle,
    kAS_FireGrapple,
    kAS_Three,
    kAS_ConnectGrapple,
    kAS_Five,
    kAS_Connected,
    kAS_Seven,
    kAS_OutOfGrapple,
    kAS_GunControllerAnimation,
    kAS_Done
  };

  CGrappleArm(const CVector3f& scale);
  ~CGrappleArm();

  void PreRender(CStateManager& mgr, const CFrustumPlanes& frustum, const CVector3f& camPos);
  void ReturnToDefault(CStateManager& mgr, float dt, bool setState);
  void EnterStruck(CStateManager&, float, bool, bool);
  void DisconnectGrappleBeam();

  // EArmState GetAnimState() const { return x334_animState; }
  bool GetActive() const { return x3b2_24_active; }
  bool BeamActive() const { return x3b2_25_beamActive; }
  bool IsArmMoving() const { return x3b2_27_armMoving; }
  bool IsGrappling() const { return x3b2_28_isGrappling; }
  bool IsSuitLoading() const { return x3b2_29_suitLoading; }

private:
  uchar x0_pad[0x328];
  rstl::single_ptr<CGunController> x328_gunController;
  CSfxHandle x32c_grappleLoopSfx;
  CSfxHandle x330_swooshSfx;
  EArmState x334_animState;
  uchar x338_pad[0x78];
  short x3b0_rumbleHandle;
  bool x3b2_24_active : 1;
  bool x3b2_25_beamActive : 1;
  bool x3b2_26_grappleHit : 1;
  bool x3b2_27_armMoving : 1;
  bool x3b2_28_isGrappling : 1;
  bool x3b2_29_suitLoading : 1;
};
CHECK_SIZEOF(CGrappleArm, 0x3b4)

#endif // _CGRAPPLEARM

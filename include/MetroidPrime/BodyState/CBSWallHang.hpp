#ifndef _CBSWALLHANG
#define _CBSWALLHANG

#include "MetroidPrime/BodyState/CBodyState.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"

class CBSWallHang : public CBodyState {
public:
  ~CBSWallHang() {}

  bool IsInAir(const CBodyController& bc) const override;
  bool IsMoving() const override;
  bool ApplyGravity() const override;
  bool ApplyHeadTracking() const override;
  bool ApplyAnimationDeltas() const override;
  bool CanShoot() const override;
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController& bc) override;

  CBSWallHang();

private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
  void FixInPlace(CBodyController& bc);
  bool CheckForLand(CBodyController& bc, CStateManager& mgr);
  bool CheckForWall(CBodyController& bc, CStateManager& mgr);
  void SetLaunchVelocity(CBodyController& bc);

  pas::EWallHangState x4_state;
  TUniqueId x8_wpId;
  CVector3f xc_launchVel;
  bool x18_24_launched : 1;
  bool x18_25_needsExit : 1;
};
CHECK_SIZEOF(CBSWallHang, 0x1c)

#endif // _CBSWALLHANG

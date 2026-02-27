#ifndef _CBSJUMP
#define _CBSJUMP

#include "MetroidPrime/BodyState/CBodyState.hpp"

#include "Kyoto/Math/CVector3f.hpp"

class CBSJump : public CBodyState {
public:
  CBSJump();
  ~CBSJump() {}

  // CBodyState
  bool IsInAir(const CBodyController& bc) const override;
  bool IsMoving() const override;
  bool ApplyHeadTracking() const override;
  bool ApplyAnimationDeltas() const override;
  bool CanShoot() const override;
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController& bc) override;

private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
  uchar CheckForWallJump(CBodyController& bc, CStateManager& mgr);
  void CheckForLand(CBodyController& bc, CStateManager& mgr);
  void PlayJumpLoop(CStateManager& mgr, CBodyController& bc);

  pas::EJumpState x4_state;
  pas::EJumpType x8_jumpType;
  CVector3f xc_waypoint1;
  CVector3f x18_velocity;
  CVector3f x24_waypoint2;
  bool x30_24_applyLaunchVel : 1;
  bool x30_25_wallJump : 1;
  bool x30_26_wallBounceRight : 1;
  bool x30_27_hasWallBounced : 1;
  bool x30_28_startInJumpLoop : 1;
};

CHECK_SIZEOF(CBSJump, 0x34)

#endif // _CBSJUMP

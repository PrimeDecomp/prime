#ifndef _CBSCOVER
#define _CBSCOVER

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSCover : public CBodyState {
public:
  CBSCover();
  bool IsMoving() const override { return true; }
  bool ApplyHeadTracking() const override { return false; }
  bool CanShoot() const override;
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override;

  pas::ECoverDirection GetCoverDirection() const { return x8_coverDirection; }
  bool GetNeedsExit() const { return xc_needsExit; }

private:
  pas::ECoverState x4_state;
  pas::ECoverDirection x8_coverDirection;
  bool xc_needsExit;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSCOVER

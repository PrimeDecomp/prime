#ifndef _CBSCOVER
#define _CBSCOVER

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSCover : public CBodyState {
public:
  CBSCover();
  bool IsMoving() const { return true; }
  bool ApplyHeadTracking() const { return false; }
  bool CanShoot() const;
  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController&);

  pas::ECoverDirection GetCoverDirection() const { return x8_coverDirection; }
  bool GetNeedsExit() const { return xc_needsExit; }

private:
  pas::ECoverState x4_state;
  pas::ECoverDirection x8_coverDirection;
  bool xc_needsExit;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSCOVER

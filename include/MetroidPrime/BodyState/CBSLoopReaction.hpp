#ifndef _CBSLOOPREACTION
#define _CBSLOOPREACTION

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSLoopReaction : public CBodyState {
public:
  CBSLoopReaction();
  
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override {}

private:
  pas::ELoopState x4_state;
  pas::EReactionType x8_reactionType;
  bool xc_24_loopHit : 1;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
  bool PlayExitAnimation(CBodyController& bc, CStateManager& mgr) const;
};

#endif // _CBSLOOPREACTION

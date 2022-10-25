#ifndef _CABSREACTION
#define _CABSREACTION

#include "MetroidPrime/BodyState/CAdditiveBodyState.hpp"

class CABSReaction : public CAdditiveBodyState {
  float x4_weight;
  s32 x8_anim;
  pas::EAdditiveReactionType xc_type;
  bool x10_active;
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc) const;
  void StopAnimation(CBodyController& bc);

public:
  CABSReaction();
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController& bc) override { StopAnimation(bc); }
};

#endif // _CABSREACTION

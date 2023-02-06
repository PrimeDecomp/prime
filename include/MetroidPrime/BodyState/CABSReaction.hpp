#ifndef _CABSREACTION
#define _CABSREACTION

#include "MetroidPrime/BodyState/CAdditiveBodyState.hpp"

class CABSReaction : public CAdditiveBodyState {
public:
  CABSReaction();
  ~CABSReaction();

  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController& bc);

  float GetWeight() const { return x4_weight; }
  bool IsActive() const { return x10_active; }

private:
  float x4_weight;
  int x8_anim;
  pas::EAdditiveReactionType xc_type;
  bool x10_active;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
  void StopAnimation(CBodyController& bc);
};

#endif // _CABSREACTION

#ifndef _CABSFLINCH
#define _CABSFLINCH

#include "MetroidPrime/BodyState/CAdditiveBodyState.hpp"

class CABSFlinch : public CAdditiveBodyState {
  float x4_weight; 
  uint x8_anim;
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc) const;

public:
  CABSFlinch();
  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController& bc);
  ~CABSFlinch();
};

#endif // _CABSFLINCH

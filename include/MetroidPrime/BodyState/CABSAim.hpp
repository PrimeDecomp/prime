#ifndef _CABSAIM
#define _CABSAIM

#include "MetroidPrime/BodyState/CAdditiveBodyState.hpp"

class CABSAim : public CAdditiveBodyState {
public:
  CABSAim();
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController& bc) override;

private:
  bool x4_needsIdle;
  int x8_anims[4];
  float x18_angles[4];
  float x28_hWeight;
  float x2c_hWeightVel;
  float x30_vWeight;
  float x34_vWeightVel;
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CABSAIM

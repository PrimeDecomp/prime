#ifndef _CBSPROJECTILEATTACK
#define _CBSPROJECTILEATTACK

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSProjectileAttack : public CBodyState {
public:
  CBSProjectileAttack();
  ~CBSProjectileAttack();

  bool CanShoot() const override;
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override;

private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSPROJECTILEATTACK

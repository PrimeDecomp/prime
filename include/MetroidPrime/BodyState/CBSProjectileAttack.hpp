#ifndef _CBSPROJECTILEATTACK
#define _CBSPROJECTILEATTACK

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSProjectileAttack : public CBodyState {
public:
  CBSProjectileAttack();
  ~CBSProjectileAttack();

  bool CanShoot() const;
  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController&);

private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSPROJECTILEATTACK

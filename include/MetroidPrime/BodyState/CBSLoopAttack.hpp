#ifndef _CBSLOOPATTACK
#define _CBSLOOPATTACK

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSLoopAttack : public CBodyState {
public:
  CBSLoopAttack();

  bool CanShoot() const { return true; }
  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController&);

  pas::ELoopState GetState() const { return x4_state; }
  pas::ELoopAttackType GetAttackType() const { return x8_loopAttackType; }
  bool GetAdvance() const { return xc_25_advance; }

private:
  pas::ELoopState x4_state;
  pas::ELoopAttackType x8_loopAttackType;
  bool xc_24_waitForAnimOver : 1;
  bool xc_25_advance : 1;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSLOOPATTACK

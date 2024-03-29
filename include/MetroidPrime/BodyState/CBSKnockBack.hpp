#ifndef _CBSKNOCKBACK
#define _CBSKNOCKBACK

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSKnockBack : public CBodyState {
public:
  CBSKnockBack();
  ~CBSKnockBack();

  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override;
  bool IsMoving() const override;

private:
  float x4_curTime;
  float x8_rotateSpeed;
  float xc_remTime;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSKNOCKBACK

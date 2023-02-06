#ifndef _CBSSTEP
#define _CBSSTEP

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSStep : public CBodyState {
public:
  CBSStep();
  ~CBSStep();

  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override;
  bool IsMoving() const override;
  bool CanShoot() const override;

private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSSTEP

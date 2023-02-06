#ifndef _CBSSTEP
#define _CBSSTEP

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSStep : public CBodyState {
public:
  CBSStep();
  ~CBSStep();

  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController&);
  bool IsMoving() const;
  bool CanShoot() const;

private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSSTEP

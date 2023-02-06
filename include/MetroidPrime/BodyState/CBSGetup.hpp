#ifndef _CBSGETUP
#define _CBSGETUP

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSGetup : public CBodyState {
public:
  CBSGetup();
  ~CBSGetup();

  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController& bc);

private:
  pas::EFallState x4_fallState;
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSGETUP

#ifndef _CBSFALL
#define _CBSFALL

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSFall : public CBodyState {
public:
  CBSFall();
  ~CBSFall();

  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController& bc);

private:
  float x4_rotateSpeed;
  float x8_remTime;
  pas::EFallState xc_fallState;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSFALL

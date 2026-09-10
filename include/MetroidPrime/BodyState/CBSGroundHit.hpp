#ifndef _CBSGROUNDHIT
#define _CBSGROUNDHIT

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSGroundHit : public CBodyState {
public:
  CBSGroundHit();
  ~CBSGroundHit();

  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController& bc) override;

private:
  float x4_rotateSpeed;
  float x8_remTime;
  pas::EFallState xc_fallState;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};
CHECK_SIZEOF(CBSGroundHit, 0x10)

#endif // _CBSGROUNDHIT

#ifndef _CBSLIEONGROUND
#define _CBSLIEONGROUND

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CActor;

class CBSLieOnGround : public CBodyState {
public:
  explicit CBSLieOnGround(const CActor& actor);
  ~CBSLieOnGround();

  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController& bc);

private:
  uint x4_24_hasGroundHit : 1;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSLIEONGROUND

#ifndef _CBSGENERATE
#define _CBSGENERATE

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSGenerate : public CBodyState {
public:
  CBSGenerate();
  ~CBSGenerate();

  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController&);

private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSGENERATE

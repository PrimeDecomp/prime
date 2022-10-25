#ifndef _CBSGENERATE
#define _CBSGENERATE

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSGenerate : public CBodyState {
public:
  CBSGenerate();
  ~CBSGenerate();

  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override;

private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSGENERATE

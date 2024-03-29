#ifndef _CABSIDLE
#define _CABSIDLE

#include "MetroidPrime/BodyState/CAdditiveBodyState.hpp"

class CABSIdle : public CAdditiveBodyState {
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc) const;

public:
  void Start(CBodyController& bc, CStateManager& mgr) override {}
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController& bc) override {}
};

#endif // _CABSIDLE

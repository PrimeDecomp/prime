#ifndef _CBSTAUNT
#define _CBSTAUNT

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSTaunt : public CBodyState {
public:
  CBSTaunt();
  ~CBSTaunt();

  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override;

  private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);

};

#endif // _CBSTAUNT

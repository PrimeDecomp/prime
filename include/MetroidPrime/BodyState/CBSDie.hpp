#ifndef _CBSDIE
#define _CBSDIE

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSDie : public CBodyState {
public:
  CBSDie();
  ~CBSDie();

  bool IsDead() const;
  bool IsDying() const;
  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController&);

private:
  float x4_remTime;
  bool x8_isDead;
};

#endif // _CBSDIE

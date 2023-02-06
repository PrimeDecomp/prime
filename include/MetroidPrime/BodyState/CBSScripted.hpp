#ifndef _CBSSCRIPTED
#define _CBSSCRIPTED

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSScripted : public CBodyState {
public:
  CBSScripted();
  ~CBSScripted();

  bool ApplyHeadTracking() const;
  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController&);

private:
  bool x4_24_loopAnim : 1;
  bool x4_25_timedLoop : 1;
  float x8_remTime;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSSCRIPTED

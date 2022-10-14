#ifndef _CADDITIVEBODYSTATE
#define _CADDITIVEBODYSTATE

#include "Kyoto/Animation/CPASAnimState.hpp"

class CBodyController;
class CStateManager;

class CAdditiveBodyState {
public:
  virtual ~CAdditiveBodyState() {};
  virtual bool ApplyHeadTracking() const; // { return true; }
  virtual bool CanShoot() const; // { return true; }
  virtual void Start(CBodyController& bc, CStateManager& mgr) = 0;
  virtual pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) = 0;
  virtual void Shutdown(CBodyController& bc) = 0;
};

#endif // _CADDITIVEBODYSTATE

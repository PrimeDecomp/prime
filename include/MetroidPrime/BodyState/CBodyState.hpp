#ifndef _CBODYSTATE
#define _CBODYSTATE

#include "Kyoto/Animation/CPASAnimState.hpp"

class CStateManager;
class CBodyController;

class CBodyState {
public:
  virtual ~CBodyState() {}
  virtual bool IsInAir(const CBodyController&) const { return false; }
  virtual bool IsDead() const { return false; }
  virtual bool IsDying() const { return false; }
  virtual bool IsMoving() const { return false; }
  virtual bool ApplyGravity() const { return true; }
  virtual bool ApplyHeadTracking() const { return true; }
  virtual bool ApplyAnimationDeltas() const { return true; }
  virtual bool CanShoot() const { return false; }
  virtual void Start(CBodyController&, CStateManager&) = 0;
  virtual pas::EAnimationState UpdateBody(float, CBodyController&, CStateManager&) = 0;
  virtual void Shutdown(CBodyController&) = 0;
};

#endif // _CBODYSTATE

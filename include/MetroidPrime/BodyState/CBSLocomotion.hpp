#ifndef _CBSLOCOMOTION
#define _CBSLOCOMOTION

#include "MetroidPrime/BodyState/CBodyState.hpp"

#include "rstl/pair.hpp"

class CBSLocomotion : public CBodyState {
protected:
  pas::ELocomotionType x4_locomotionType;
  float GetStartVelocityMagnitude(const CBodyController& bc) const;
  void ReStartBodyState(CBodyController& bc, bool maintainVel);
  float ComputeWeightPercentage(const rstl::pair<int, float>& a, const rstl::pair<int, float>& b, float f) const;

public:
  bool IsMoving() const override = 0;
  bool CanShoot() const { return true; }
  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController& bc);
  virtual bool IsPitchable() const { return false; }
  virtual float GetLocomotionSpeed(pas::ELocomotionType type, pas::ELocomotionAnim anim) const = 0;
  virtual float ApplyLocomotionPhysics(float dt, CBodyController& bc);
  virtual float UpdateLocomotionAnimation(float dt, float velMag, CBodyController& bc, bool init) = 0;
  virtual pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
};

#endif // _CBSLOCOMOTION

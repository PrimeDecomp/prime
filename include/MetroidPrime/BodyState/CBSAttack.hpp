#ifndef _CBSATTACK
#define _CBSATTACK

#include "MetroidPrime/BodyState/CBodyState.hpp"

#include "MetroidPrime/BodyState/CBodyStateCmdMgr.hpp"

#include "Kyoto/Math/CVector3f.hpp"

class CBSAttack : public CBodyState {
public:
  CBSAttack();
  
  bool CanShoot() const override { return false; }
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override;

private:
  pas::EAnimationState x4_nextState; // = pas::kAS_Invalid;
  CBCSlideCmd x8_slide;
  CVector3f x20_targetPos;
  float x2c_alignTargetPosStartTime; // = -1.f;
  float x30_alignTargetPosTime;      // = -1.f;
  float x34_curTime;                 // = 0.f;

  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
  void UpdatePhysicsActor(CBodyController& bc, float dt);
};

#endif // _CBSATTACK

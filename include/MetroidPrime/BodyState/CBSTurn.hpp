#ifndef _CBSTURN
#define _CBSTURN

#include "MetroidPrime/BodyState/CBodyState.hpp"

#include "Kyoto/Math/CVector2f.hpp"

class CBSTurn : public CBodyState {
public:
  CBSTurn();
  ~CBSTurn() override {}

  bool CanShoot() const override { return true; }
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override;

protected:
  float x4_rotateSpeed;
  CVector2f x8_dest;
  pas::ETurnDirection x10_turnDir;

  virtual pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);

  bool FacingDest(CBodyController& bc) const;
};

class CBSFlyerTurn : public CBSTurn {
public:
  CBSFlyerTurn();
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
};

#endif // _CBSTURN

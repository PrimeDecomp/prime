#ifndef _CBSHURLED
#define _CBSHURLED

#include "MetroidPrime/BodyState/CBodyState.hpp"

#include "Kyoto/Math/CVector3f.hpp"

class CBSHurled : public CBodyState {
public:
  CBSHurled();
  ~CBSHurled() override {};

  // CBodyState
  bool IsMoving() const override;
  bool ApplyHeadTracking() const override;
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController& bc) override;
  bool IsInAir(const CBodyController& bc) const override;

private:
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);
  void Recover(CStateManager& mgr, CBodyController& bc, pas::EHurledState state);
  void PlayStrikeWallAnimation(CBodyController& bc, CStateManager& mgr);
  void PlayLandAnimation(CBodyController& bc, CStateManager& mgr);
  bool ShouldStartStrikeWall(CBodyController& bc) const;
  bool ShouldStartLand(float dt, CBodyController& bc) const;

  pas::EHurledState x4_state;
  float x8_knockAngle;
  int xc_animSeries;
  float x10_rotateSpeed;
  float x14_remTime;
  float x18_curTime;
  mutable CVector3f x1c_lastTranslation;
  mutable float x28_landedDur;
  bool x2c_24_needsRecover : 1;
};

CHECK_SIZEOF(CBSHurled, 0x30)

#endif // _CBSHURLED

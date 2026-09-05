#ifndef _CTARGETRETICLES
#define _CTARGETRETICLES

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/vector.hpp"

class CActor;
class CMatrix3f;
class CModel;
class CScriptGrapplePoint;
class CStateManager;

enum EReticleState {
  kRS_Combat,
  kRS_Scan,
  kRS_XRay,
  kRS_Thermal,
  kRS_Four,
  kRS_Unspecified,
};

class CTargetReticleRenderState {
public:
  CTargetReticleRenderState(TUniqueId target, float radiusWorld, CVector3f positionWorld,
                            float factor, float minVpClampScale, bool orbitZoneIdlePosition);

  static void InterpolateWithClamp(const CTargetReticleRenderState& a,
                                   CTargetReticleRenderState& out,
                                   const CTargetReticleRenderState& b, float t);

  void SetTargetId(TUniqueId id) { x0_target = id; }
  void SetFactor(float factor) { x14_factor = factor; }
  void SetIsOrbitZoneIdlePosition(bool orbit) { x1c_orbitZoneIdlePosition = orbit; }
  void SetRadiusWorld(float radius) { x4_radiusWorld = radius; }
  void SetTargetPositionWorld(const CVector3f& position) { x8_positionWorld = position; }
  void SetMinViewportClampScale(float scale) { x18_minVpClampScale = scale; }

  TUniqueId GetTargetId() const { return x0_target; }
  float GetRadiusWorld() const { return x4_radiusWorld; }
  const CVector3f& GetTargetPositionWorld() const { return x8_positionWorld; }
  float GetFactor() const { return x14_factor; }
  float GetMinViewportClampScale() const { return x18_minVpClampScale; }
  bool GetIsOrbitZoneIdlePosition() const { return x1c_orbitZoneIdlePosition; }

private:
  TUniqueId x0_target;
  float x4_radiusWorld;
  CVector3f x8_positionWorld;
  float x14_factor;
  float x18_minVpClampScale;
  bool x1c_orbitZoneIdlePosition;
};

CHECK_SIZEOF(CTargetReticleRenderState, 0x20)

class CCompoundTargetReticle {
public:
  struct SOuterItemInfo {
    TCachedToken< CModel > x0_model;
    float xc_offshootBaseAngle;
    float x10_rotAng;
    float x14_baseAngle;
    float x18_offshootAngleDelta;

    explicit SOuterItemInfo(const char* modelName);
  };

  explicit CCompoundTargetReticle(const CStateManager& mgr);
  ~CCompoundTargetReticle();

  void SetLeadingOrientation(const CQuaternion& o) { x0_leadingOrientation = o; }
  bool CheckLoadComplete();
  EReticleState GetDesiredReticleState(const CStateManager& mgr) const;
  void Update(float dt, const CStateManager& mgr);
  void UpdateCurrLockOnGroup(float dt, const CStateManager& mgr);
  void UpdateNextLockOnGroup(float dt, const CStateManager& mgr);
  void UpdateOrbitZoneGroup(float dt, const CStateManager& mgr);
  void Draw(const CStateManager& mgr, bool hideLockon) const;
  void DrawGrappleGroup(const CMatrix3f& rot, const CStateManager& mgr, bool hideLockon) const;
  void DrawGrapplePoint(const CScriptGrapplePoint& point, float t, const CStateManager& mgr,
                        const CMatrix3f& rot, bool zEqual) const;
  void DrawCurrLockOnGroup(const CMatrix3f& rot, const CStateManager& mgr) const;
  void DrawNextLockOnGroup(const CMatrix3f& rot, const CStateManager& mgr) const;
  void DrawOrbitZoneGroup(const CMatrix3f& rot, const CStateManager& mgr) const;
  void UpdateTargetParameters(CTargetReticleRenderState& state, const CStateManager& mgr);
  float CalculateRadiusWorld(const CActor& actor, const CStateManager& mgr) const;
  CVector3f CalculatePositionWorld(const CActor& actor, const CStateManager& mgr) const;
  CVector3f CalculateOrbitZoneReticlePosition(const CStateManager& mgr, bool lag) const;
  static bool IsGrappleTarget(TUniqueId id, const CStateManager& mgr);
  static float CalculateClampedScale(CVector3f pos, float scale, float clampMin,
                                     float clampMax, const CStateManager& mgr);
  void Touch() const;

  TUniqueId GetTargetId() const { return xf0_targetId; }
  TUniqueId GetNextTargetId() const { return xf2_nextTargetId; }
  const CTargetReticleRenderState& GetCurrGroupInterp() const { return x10c_currGroupInterp; }
  const CTargetReticleRenderState& GetNextGroupInterp() const { return x174_nextGroupInterp; }
  bool GetIsOrbitZoneIdlePosition() const { return x10c_currGroupInterp.GetIsOrbitZoneIdlePosition(); }

private:
  CQuaternion x0_leadingOrientation;
  CQuaternion x10_laggingOrientation;
  EReticleState x20_prevState;
  EReticleState x24_nextState;
  mutable int x28_noDrawTicks;
  float x2c_overshootOffsetHalf;
  float x30_premultOvershootOffset;
  TCachedToken< CModel > x34_crosshairs;
  TCachedToken< CModel > x40_seeker;
  TCachedToken< CModel > x4c_lockConfirm;
  TCachedToken< CModel > x58_targetFlower;
  TCachedToken< CModel > x64_missileBracket;
  TCachedToken< CModel > x70_innerBeamIcon;
  TCachedToken< CModel > x7c_lockFire;
  TCachedToken< CModel > x88_lockDagger;
  TCachedToken< CModel > x94_grapple;
  TCachedToken< CModel > xa0_chargeTickFirst;
  TCachedToken< CModel > xac_xrayRetRing;
  TCachedToken< CModel > xb8_thermalReticle;
  SOuterItemInfo xc4_chargeGauge;
  rstl::vector< SOuterItemInfo > xe0_outerBeamIconSquares;
  TUniqueId xf0_targetId;
  TUniqueId xf2_nextTargetId;
  CVector3f xf4_targetPos;
  CVector3f x100_laggingTargetPos;
  CTargetReticleRenderState x10c_currGroupInterp;
  CTargetReticleRenderState x12c_currGroupA;
  CTargetReticleRenderState x14c_currGroupB;
  float x16c_currGroupDur;
  float x170_currGroupTimer;
  CTargetReticleRenderState x174_nextGroupInterp;
  CTargetReticleRenderState x194_nextGroupA;
  CTargetReticleRenderState x1b4_nextGroupB;
  float x1d4_nextGroupDur;
  float x1d8_nextGroupTimer;
  TUniqueId x1dc_grapplePoint0;
  TUniqueId x1de_grapplePoint1;
  float x1e0_grapplePoint0T;
  float x1e4_grapplePoint1T;
  float x1e8_crosshairsScale;
  float x1ec_seekerAngle;
  float x1f0_xrayRetAngle;
  bool x1f4_missileActive;
  float x1f8_missileBracketTimer;
  float x1fc_missileBracketScaleTimer;
  CPlayerState::EBeamId x200_beam;
  float x204_chargeGaugeOvershootTimer;
  float x208_lockonTimer;
  float x20c_unk;
  float x210_lockFireTimer;
  float x214_fullChargeFadeTimer;
  bool x218_beamShot;
  bool x219_missileShot;
  bool x21a_fullyCharged;
};

CHECK_SIZEOF(CCompoundTargetReticle, 0x21C)

class COrbitPointMarker {
public:
  COrbitPointMarker();
  ~COrbitPointMarker();

  bool CheckLoadComplete();
  void Update(float dt, const CStateManager& mgr);
  void Draw(const CStateManager& mgr) const;
  void ResetInterpolationTimer(float time);
  bool IsInterpolating() const { return x20_interpTimer > 0.f; }

private:
  float x0_zOffset;
  bool x4_camRelZPos;
  float x8_lagAzimuth;
  float xc_azimuth;
  CVector3f x10_lagTargetPos;
  bool x1c_lastFreeOrbit;
  float x20_interpTimer;
  float x24_curTime;
  TCachedToken< CModel > x28_orbitPointModel;
};

CHECK_SIZEOF(COrbitPointMarker, 0x34)

class CTargetingManager {
public:
  explicit CTargetingManager(const CStateManager& mgr);

  bool CheckLoadComplete();
  void Update(float dt, const CStateManager& mgr);
  void Draw(const CStateManager& mgr, bool hideLockon) const;
  void Touch() const;

  CCompoundTargetReticle& CompoundTargetReticle() { return x0_targetReticle; }
  const CCompoundTargetReticle& GetCompoundTargetReticle() const { return x0_targetReticle; }

private:
  CCompoundTargetReticle x0_targetReticle;
  COrbitPointMarker x21c_orbitPointMarker;
};

CHECK_SIZEOF(CTargetingManager, 0x250)

#endif // _CTARGETRETICLES

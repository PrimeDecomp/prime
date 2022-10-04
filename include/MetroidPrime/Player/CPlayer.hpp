#ifndef _CPLAYER_HPP
#define _CPLAYER_HPP

#include "types.h"

#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"
#include "MetroidPrime/Player/CPlayerEnergyDrain.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include "Kyoto/TReservedAverage.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/vector.hpp"

class CPlayerGun;
class CFailsafeTest;
class CMorphBall;
class CPlayerCameraBob;

namespace NPlayer {
enum EPlayerMovementState {
  kMS_OnGround,
  kMS_Jump,
  kMS_ApplyJump,
  kMS_Falling,
  kMS_FallingMorphed,
};
};

class CPlayer : public CPhysicsActor {
public:
  enum EPlayerOrbitState {
    kOS_NoOrbit,
    kOS_OrbitObject,
    kOS_OrbitPoint,
    kOS_OrbitCarcass,
    kOS_ForcedOrbitObject, // For CMetroidBeta attack
    kOS_Grapple,
  };
  enum ESurfaceRestraints {
    kSR_Normal,
    kSR_Air,
    kSR_Ice,
    kSR_Organic,
    kSR_Water,
    kSR_Lava,
    kSR_Phazon,
    kSR_Shrubbery,
  };
  enum EPlayerCameraState {
    kCS_FirstPerson,
    kCS_Ball,
    kCS_Two,
    kCS_Transitioning,
    kCS_Spawned,
  };
  enum EPlayerMorphBallState {
    kMS_Unmorphed,
    kMS_Morphed,
    kMS_Morphing,
    kMS_Unmorphing,
  };
  enum EPlayerOrbitType {
    kOT_Close,
    kOT_Far,
    kOT_Default,
  };
  enum EPlayerOrbitRequest {
    kOR_StopOrbit,
    kOR_Respawn,
    kOR_EnterMorphBall,
    kOR_Default,
    kOR_Four,
    kOR_Five,
    kOR_InvalidateTarget,
    kOR_BadVerticalAngle,
    kOR_ActivateOrbitSource,
    kOR_ProjectileCollide,
    kOR_Freeze,
    kOR_DamageOnGrapple,
    kOR_LostGrappleLineOfSight,
  };
  enum EPlayerZoneInfo {
    kZI_Targeting,
    kZI_Scan,
  };
  enum EPlayerZoneType {
    kZT_Always = -1,
    kZT_Box,
    kZT_Ellipse,
  };
  enum EPlayerScanState {
    kSS_NotScanning,
    kSS_Scanning,
    kSS_ScanComplete,
  };
  enum EGrappleState {
    kGS_None,
    kGS_Firing,
    kGS_Pull,
    kGS_Swinging,
    kGS_JumpOff,
  };
  enum EFootstepSfx {
    kFS_None,
    kFS_Left,
    kFS_Right,
  };
  enum EGunHolsterState {
    kGH_Holstered,
    kGH_Drawing,
    kGH_Drawn,
    kGH_Holstering,
  };

  // CEntity
  ~CPlayer() override;
  void Accept(IVisitor& visitor) override;
  void PreThink(f32 dt, CStateManager& mgr) override;
  void Think(f32 dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void PreRender(CStateManager&, const CFrustumPlanes&) override;
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override;
  void Render(const CStateManager&) const override;
  bool CanRenderUnsorted(const CStateManager&) const override;
  void CalculateRenderBounds() override;
  CHealthInfo* HealthInfo(CStateManager&) override;
  const CDamageVulnerability* GetDamageVulnerability() const override;
  const CDamageVulnerability* GetDamageVulnerability(const CVector3f&, const CVector3f&,
                                                     const CDamageInfo&) const override;
  rstl::optional_object< CAABox > GetTouchBounds() const override;
  void Touch(CActor&, CStateManager&) override;
  CVector3f GetAimPosition(const CStateManager&, float) const override;
  CVector3f GetHomingPosition(const CStateManager&, float) const override;
  void FluidFXThink(EFluidState, CScriptWater&, CStateManager&) override;

  // CPhysicsActor
  const CCollisionPrimitive* GetCollisionPrimitive() const override;
  CTransform4f GetPrimitiveTransform() const override;
  void CollidedWith(TUniqueId id, const CCollisionInfoList& list, CStateManager& mgr) override;
  f32 GetStepDownHeight() const override;
  f32 GetStepUpHeight() const override;
  f32 GetWeight() const override;

  // CPlayer
  virtual bool IsTransparent();

  CVector3f GetBallPosition() const;
  CTransform4f CreateTransformFromMovementDirection() const;
  EPlayerOrbitState GetOrbitState() const { return x304_orbitState; }
  const CVector3f& GetMovementDirection() const { return x50c_moveDir; }
  EPlayerMorphBallState GetMorphballTransitionState() const { return x2f8_morphBallState; }

  static float skDefaultHudFadeOutSpeed;
  static float skDefaultHudFadeInSpeed;
  void SetHudDisable(float staticTimer, float outSpeed = skDefaultHudFadeOutSpeed,
                     float inSpeed = skDefaultHudFadeInSpeed);

  void IncrementPhazon();
  void DecrementPhazon();
  // GetMovementDirection2D__7CPlayerCFv ??
  void AddOrbitDisableSource(CStateManager& mgr, TUniqueId addId);
  void RemoveOrbitDisableSource(TUniqueId uid);

private:
  struct CVisorSteam {
    f32 x0_curTargetAlpha;
    f32 x4_curAlphaInDur;
    f32 x8_curAlphaOutDur;
    CAssetId xc_tex;
    f32 x10_nextTargetAlpha;
    f32 x14_nextAlphaInDur;
    f32 x18_nextAlphaOutDur;
    CAssetId x1c_txtr;
    f32 x20_alpha;
    f32 x24_delayTimer;
    bool x28_affectsThermal;

  public:
    CVisorSteam(f32 targetAlpha, f32 alphaInDur, f32 alphaOutDur, CAssetId tex)
    : x0_curTargetAlpha(targetAlpha)
    , x4_curAlphaInDur(alphaInDur)
    , x8_curAlphaOutDur(alphaOutDur)
    , xc_tex(tex) {}
    CAssetId GetTextureId() const;
    void SetSteam(f32 targetAlpha, f32 alphaInDur, f32 alphaOutDur, CAssetId txtr,
                  bool affectsThermal);
    void Update(f32 dt);
    f32 GetAlpha() const { return x20_alpha; }
    bool AffectsThermal() const { return x28_affectsThermal; }
  };

  NPlayer::EPlayerMovementState x258_movementState;
  rstl::vector< CToken > x25c_ballTransitionsRes;
  TUniqueId x26c_attachedActor;
  f32 x270_attachedActorTime;
  CPlayerEnergyDrain x274_energyDrain;
  f32 x288_startingJumpTimeout;
  f32 x28c_sjTimer;
  f32 x290_minJumpTimeout;
  f32 x294_jumpCameraTimer;
  uint x298_jumpPresses;
  f32 x29c_fallCameraTimer;
  f32 x2a0_;
  bool x2a4_cancelCameraPitch;
  f32 x2a8_timeSinceJump;
  ESurfaceRestraints x2ac_surfaceRestraint;
  uint x2b0_outOfWaterTicks;
  rstl::reserved_vector< f32, 6 > x2b4_accelerationTable;
  uint x2d0_curAcceleration;
  f32 x2d4_accelerationChangeTimer;
  CAABox x2d8_fpBounds;
  f32 x2f0_ballTransHeight;
  EPlayerCameraState x2f4_cameraState;
  EPlayerMorphBallState x2f8_morphBallState;
  EPlayerMorphBallState x2fc_spawnedMorphBallState;
  f32 x300_fallingTime;
  EPlayerOrbitState x304_orbitState;
  EPlayerOrbitType x308_orbitType;
  EPlayerOrbitRequest x30c_orbitRequest;
  TUniqueId x310_orbitTargetId;
  CVector3f x314_orbitPoint;
  CVector3f x320_orbitVector;
  f32 x32c_orbitModeTimer;
  EPlayerZoneInfo x330_orbitZoneMode;
  EPlayerZoneType x334_orbitType;
  uint x338_;
  TUniqueId x33c_orbitNextTargetId;
  bool m_deferredOrbitObject;
  f32 x340_;
  rstl::vector< TUniqueId > x344_nearbyOrbitObjects;
  rstl::vector< TUniqueId > x354_onScreenOrbitObjects;
  rstl::vector< TUniqueId > x364_offScreenOrbitObjects;
  bool x374_orbitLockEstablished;
  f32 x378_orbitPreventionTimer;
  bool x37c_sidewaysDashing;
  f32 x380_strafeInputAtDash;
  f32 x384_dashTimer;
  f32 x388_dashButtonHoldTime;
  bool x38c_doneSidewaysDashing;
  uint x390_orbitSource;
  bool x394_orbitingEnemy;
  f32 x398_dashSpeedMultiplier;
  bool x39c_noStrafeDashBlend;
  f32 x3a0_dashDuration;
  f32 x3a4_strafeDashBlendDuration;
  EPlayerScanState x3a8_scanState;
  f32 x3ac_scanningTime;
  f32 x3b0_curScanTime;
  TUniqueId x3b4_scanningObject;
  EGrappleState x3b8_grappleState;
  f32 x3bc_grappleSwingTimer;
  CVector3f x3c0_grappleSwingAxis;
  f32 x3cc_;
  f32 x3d0_;
  f32 x3d4_;
  f32 x3d8_grappleJumpTimeout;
  bool x3dc_inFreeLook;
  bool x3dd_lookButtonHeld;
  bool x3de_lookAnalogHeld;
  f32 x3e0_curFreeLookCenteredTime;
  f32 x3e4_freeLookYawAngle;
  f32 x3e8_horizFreeLookAngleVel;
  f32 x3ec_freeLookPitchAngle;
  f32 x3f0_vertFreeLookAngleVel;
  TUniqueId x3f4_aimTarget;
  CVector3f x3f8_targetAimPosition;
  TReservedAverage< CVector3f, 10 > x404_aimTargetAverage;
  CVector3f x480_assistedTargetAim;
  f32 x48c_aimTargetTimer;
  rstl::single_ptr< CPlayerGun > x490_gun;
  f32 x494_gunAlpha;
  EGunHolsterState x498_gunHolsterState;
  f32 x49c_gunHolsterRemTime;
  rstl::single_ptr< CFailsafeTest > x4a0_failsafeTest;
  TReservedAverage< f32, 20 > x4a4_moveSpeedAvg;
  f32 x4f8_moveSpeed;
  f32 x4fc_flatMoveSpeed;
  CVector3f x500_lookDir;
  CVector3f x50c_moveDir;
  CVector3f x518_leaveMorphDir;
  CVector3f x524_lastPosForDirCalc;
  CVector3f x530_gunDir;
  f32 x53c_timeMoving;
  CVector3f x540_controlDir;
  CVector3f x54c_controlDirFlat;
  bool x558_wasDamaged;
  f32 x55c_damageAmt;
  f32 x560_prevDamageAmt;
  CVector3f x564_damageLocation;
  f32 x570_immuneTimer;
  f32 x574_morphTime;
  f32 x578_morphDuration;
  uint x57c_;
  uint x580_;
  int x584_ballTransitionAnim;
  f32 x588_alpha;
  f32 x58c_transitionVel;
  bool x590_leaveMorphballAllowed;
  TReservedAverage< CTransform4f, 4 > x594_transisionBeamXfs;
  TReservedAverage< CTransform4f, 4 > x658_transitionModelXfs;
  TReservedAverage< f32, 4 > x71c_transitionModelAlphas;
  rstl::vector< rstl::auto_ptr< CModelData > > x730_transitionModels;
  f32 x740_staticTimer;
  f32 x744_staticOutSpeed;
  f32 x748_staticInSpeed;
  f32 x74c_visorStaticAlpha;
  f32 x750_frozenTimeout;
  s32 x754_iceBreakJumps;
  f32 x758_frozenTimeoutBias;
  s32 x75c_additionalIceBreakJumps;
  bool x760_controlsFrozen;
  f32 x764_controlsFrozenTimeout;
  rstl::single_ptr< CMorphBall > x768_morphball;
  rstl::single_ptr< CPlayerCameraBob > x76c_cameraBob;
  CSfxHandle x770_damageLoopSfx;
  f32 x774_samusVoiceTimeout;
  CSfxHandle x778_dashSfx;
  CSfxHandle x77c_samusVoiceSfx;
  int x780_samusVoicePriority;
  f32 x784_damageSfxTimer;
  u16 x788_damageLoopSfxId;
  f32 x78c_footstepSfxTimer;
  EFootstepSfx x790_footstepSfxSel;
  CVector3f x794_lastVelocity;
  CVisorSteam x7a0_visorSteam;
  CPlayerState::EPlayerSuit x7cc_transitionSuit;
  rstl::auto_ptr< CAnimRes > x7d0_animRes;
  CVector3f x7d8_beamScale;
  bool x7e4_;
  uint x7e8_;
  CPlayerState::EBeamId x7ec_beam;
  rstl::single_ptr< CModelData > x7f0_ballTransitionBeamModel;
  CTransform4f x7f4_gunWorldXf;
  f32 x824_transitionFilterTimer;
  f32 x828_distanceUnderWater;
  bool x82c_inLava;
  TUniqueId x82e_ridingPlatform;
  TUniqueId x830_playerHint;
  uint x834_playerHintPriority;
  rstl::reserved_vector< rstl::pair< uint, TUniqueId >, 32 > x838_playerHints;
  rstl::reserved_vector< TUniqueId, 32 > x93c_playerHintsToRemove;
  rstl::reserved_vector< TUniqueId, 32 > x980_playerHintsToAdd;
  bool x9c4_24_visorChangeRequested : 1;
  bool x9c4_25_showCrosshairs : 1;
  bool x9c4_26_ : 1;
  bool x9c4_27_canEnterMorphBall : 1;
  bool x9c4_28_canLeaveMorphBall : 1;
  bool x9c4_29_spiderBallControlXY : 1;
  bool x9c4_30_controlDirOverride : 1;
  bool x9c4_31_inWaterMovement : 1;
  bool x9c5_24_ : 1;
  bool x9c5_25_splashUpdated : 1;
  bool x9c5_26_ : 1;
  bool x9c5_27_camSubmerged : 1;
  bool x9c5_28_slidingOnWall : 1;
  bool x9c5_29_hitWall : 1;
  bool x9c5_30_selectFluidBallSound : 1;
  bool x9c5_31_stepCameraZBiasDirty : 1;
  bool x9c6_24_extendTargetDistance : 1;
  bool x9c6_25_interpolatingControlDir : 1;
  bool x9c6_26_outOfBallLookAtHint : 1;
  bool x9c6_27_aimingAtProjectile : 1;
  bool x9c6_28_aligningGrappleSwingTurn : 1;
  bool x9c6_29_disableInput : 1;
  bool x9c6_30_newScanScanning : 1;
  bool x9c6_31_overrideRadarRadius : 1;
  bool x9c7_24_noDamageLoopSfx : 1;
  bool x9c7_25_outOfBallLookAtHintActor : 1;
  f32 x9c8_eyeZBias;
  f32 x9cc_stepCameraZBias;
  uint x9d0_bombJumpCount;
  s32 x9d4_bombJumpCheckDelayFrames;
  CVector3f x9d8_controlDirOverrideDir;
  rstl::reserved_vector< TUniqueId, 5 > x9e4_orbitDisableList;
  f32 x9f4_deathTime;
  f32 x9f8_controlDirInterpTime;
  f32 x9fc_controlDirInterpDur;
  TUniqueId xa00_deathPowerBomb;
  f32 xa04_preThinkDt;
  CAssetId xa08_steamTextureId;
  CAssetId xa0c_iceTextureId;
  uint xa10_envDmgCounter;
  f32 xa14_envDmgCameraShakeTimer;
  f32 xa18_phazonDamageLag;
  f32 xa1c_threatOverride;
  f32 xa20_radarXYRadiusOverride;
  f32 xa24_radarZRadiusOverride;
  f32 xa28_attachedActorStruggle;
  int xa2c_damageLoopSfxDelayTicks;
  f32 xa30_samusExhaustedVoiceTimer;
};
CHECK_SIZEOF(CPlayer, 0xa38)

#endif

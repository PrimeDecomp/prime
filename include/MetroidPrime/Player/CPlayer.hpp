#ifndef _CPLAYER
#define _CPLAYER

#include "rstl/reserved_vector.hpp"
#include "types.h"

#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"
#include "MetroidPrime/Player/CPlayerEnergyDrain.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include "Kyoto/TReservedAverage.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/vector.hpp"

class CPlayerGun;
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

class CPlayer : public CPhysicsActor, public TOneStatic< CPlayer > {
  struct CVisorSteam {
    float x0_curTargetAlpha;
    float x4_curAlphaInDur;
    float x8_curAlphaOutDur;
    CAssetId xc_tex;
    float x10_nextTargetAlpha;
    float x14_nextAlphaInDur;
    float x18_nextAlphaOutDur;
    CAssetId x1c_txtr;
    float x20_alpha;
    float x24_delayTimer;
    bool x28_affectsThermal;

  public:
    CVisorSteam();
    CVisorSteam(float targetAlpha, float alphaInDur, float alphaOutDur, CAssetId tex);
    // : x0_curTargetAlpha(targetAlpha)
    // , x4_curAlphaInDur(alphaInDur)
    // , x8_curAlphaOutDur(alphaOutDur)
    // , xc_tex(tex) {}
    CAssetId GetTextureId() const { return xc_tex; }
    void SetSteam(float targetAlpha, float alphaInDur, float alphaOutDur, CAssetId txtr,
                  bool affectsThermal);
    void Update(float dt);
    const float GetAlpha() const { return x20_alpha; }
    bool AffectsThermal() const { return x28_affectsThermal; }
  };

  class CPlayerStuckTracker {
  public:
    enum EPlayerState {
      kPS_Jump,
      kPS_StartingJump,
      kPS_Moving,
    };

    CPlayerStuckTracker();
    ~CPlayerStuckTracker();
    void AddState(EPlayerState, const CVector3f&, const CVector3f&, const CVector2f&);
    bool IsPlayerStuck();
    void ResetStats();

  private:
    rstl::reserved_vector< EPlayerState, 20 > x0_;
    rstl::reserved_vector< CVector3f, 20 > x54_;
    rstl::reserved_vector< CVector3f, 20 > x148_;
    rstl::reserved_vector< CVector2f, 20 > x23c_;
  };

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
  enum EOrbitBrokenType {
    kOB_StopOrbit,
    kOB_Respawn,
    kOB_EnterMorphBall,
    kOB_Default,
    kOB_Four,
    kOB_Five,
    kOB_InvalidateTarget,
    kOB_BadVerticalAngle,
    kOB_ActivateOrbitSource,
    kOB_ProjectileCollide,
    kOB_Freeze,
    kOB_DamageOnGrapple,
    kOB_LostGrappleLineOfSight,
  };

  CPlayer(TUniqueId uid, const CTransform4f& xf, const CAABox& aabb, CAssetId resId,
          const CVector3f& playerScale, float mass, float stepUp, float stepDown, float ballRadius,
          const CMaterialList& ml);

  // CEntity
  // ~CPlayer() override;
  void Accept(IVisitor& visitor) override;
  void PreThink(float dt, CStateManager& mgr) override;
  void Think(float dt, CStateManager& mgr) override;
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
  void CollidedWith(const TUniqueId& id, const CCollisionInfoList& list,
                    CStateManager& mgr) override;
  float GetStepDownHeight() const override;
  float GetStepUpHeight() const override;
  float GetWeight() const override;

  // CPlayer
  virtual bool IsTransparent();

  CVector3f GetBallPosition() const;
  CVector3f GetEyePosition() const;
  float GetEyeHeight() const;
  CTransform4f CreateTransformFromMovementDirection() const;
  EPlayerOrbitState GetOrbitState() const { return x304_orbitState; }
  const CVector3f& GetMovementDirection() const { return x50c_moveDir; }
  EPlayerMorphBallState GetMorphballTransitionState() const { return x2f8_morphBallState; }

  static float skDefaultHudFadeOutSpeed;
  static float skDefaultHudFadeInSpeed;
  void SetHudDisable(float staticTimer, float outSpeed = skDefaultHudFadeOutSpeed,
                     float inSpeed = skDefaultHudFadeInSpeed);

  void IncrementEnvironmentDamage(); // name?
  void DecrementEnvironmentDamage(); // name?
  // GetMovementDirection2D__7CPlayerCFv ??
  void SetOrbitTargetId(TUniqueId id, CStateManager& mgr);
  void TryToBreakOrbit(TUniqueId id, EOrbitBrokenType type, CStateManager& mgr);
  void BreakOrbit(EOrbitBrokenType type, CStateManager& mgr);
  void BreakGrapple(EOrbitBrokenType type, CStateManager& mgr);
  void AddOrbitDisableSource(CStateManager& mgr, TUniqueId addId);
  void RemoveOrbitDisableSource(TUniqueId uid);
  void SetAimTargetId(TUniqueId target);
  void DoSfxEffects(CSfxHandle sfx);
  bool GetFrozenState() const;
  void SetFrozenState(CStateManager& stateMgr, CAssetId steamTxtr, ushort sfx, CAssetId iceTxtr);
  void BreakFrozenState(CStateManager& mgr);
  void UpdateCinematicState(CStateManager& mgr);
  bool IsMorphBallTransitioning() const;
  void InitialiseAnimation();
  void LoadAnimationTokens();
  void HolsterGun(CStateManager& mgr);
  void ResetAimTargetPrediction(TUniqueId target);
  void ResetGun(CStateManager& mgr);
  void DrawGun(CStateManager& mgr);
  bool CheckPostGrapple() const;
  void UpdateGunState(const CFinalInput& input, CStateManager& mgr);
  void UpdateAimTargetPrediction(const CTransform4f& xf, CStateManager& mgr);
  void UpdateAssistedAiming(const CTransform4f& xf, CStateManager& mgr);
  void UpdateGunTransform(const CVector3f& gunPos, CStateManager& mgr);
  const CTransform4f& GetFirstPersonCameraTransform(CStateManager& mgr) const;
  void UpdateDebugCamera(CStateManager& mgr);
  void UpdateArmAndGunTransforms(float dt, CStateManager& mgr);
  void UpdateGrappleArmTransform(const CVector3f& offset, CStateManager& mgr, float dt);
  void ForceGunOrientation(const CTransform4f& xf, CStateManager& mgr);
  void Update(float dt, CStateManager& mgr);
  void UpdateMorphBallTransition(float dt, CStateManager& mgr);
  void UpdateAimTarget(CStateManager& mgr);
  void UpdateAimTargetTimer(float dt);
  void UpdateOrbitModeTimer(float dt);
  void UpdateOrbitPreventionTimer(float dt);
  void UpdateGunAlpha();
  void UpdateVisorTransition(float dt, CStateManager& mgr);
  void UpdatePlayerSounds(float dt);
  bool ShouldSampleFailsafe(CStateManager& mgr) const;
  bool IsEnergyLow(const CStateManager& mgr) const;
  const bool StartSamusVoiceSfx(ushort sfx, short vol, int prio);
  void UpdateVisorState(const CFinalInput& input, float dt, CStateManager& mgr);
  void UpdateCrosshairsState(const CFinalInput& input);
  ushort GetMaterialSoundUnderPlayer(CStateManager& mgr, const ushort* table, int length,
                                     ushort defId);
  void UpdateFootstepSounds(const CFinalInput& input, CStateManager& mgr, float dt);
  float JumpInput(const CFinalInput& input, CStateManager& mgr);
  float TurnInput(const CFinalInput& input) const;
  float StrafeInput(const CFinalInput& input) const;
  float ForwardInput(const CFinalInput& input, float turnInput) const;
  float GetActualFirstPersonMaxVelocity(float dt) const;
  const CScriptWater* GetVisorRunoffEffect(const CStateManager& mgr) const;
  void SetMorphBallState(EPlayerMorphBallState state, CStateManager& mgr);
  bool CanEnterMorphBallState(CStateManager& mgr, float dt) const;
  bool CanLeaveMorphBallState(CStateManager& mgr, CVector3f& pos) const;
  void LeaveMorphBallState(CStateManager& mgr);
  void EnterMorphBallState(CStateManager& mgr);
  void ResetBallCamera(CStateManager& mgr);
  void UpdateCameraState(CStateManager& mgr);
  void UpdateFreeLookState(const CFinalInput& input, float dt, CStateManager& mgr);
  void UpdateCameraTimers(float dt, const CFinalInput& input);
  void UpdateSubmerged(const CStateManager& mgr);
  bool CheckSubmerged();
  void SetMoveState(NPlayer::EPlayerMovementState state, CStateManager& mgr);
  void StartLandingControlFreeze(); // name?
  void EndLandingControlFreeze();   // name?
  void AdjustEyeOffset(CStateManager& mgr);
  void SetEyeOffset(float bias);
  float GetEyeOffset() const { return x9c8_eyeZBias; }
  void UpdateStepUpSmoothing(float dt);
  void UpdateEnvironmentDamageCameraShake(float dt, CStateManager& mgr);
  void UpdatePhazonDamage(float dt, CStateManager& mgr);
  void UpdateFreeLook(float dt);
  void UpdatePlayerHints(CStateManager& mgr);
  void UpdateBombJumpStuff();
  void UpdateTransitionFilter(float dt, CStateManager& mgr);
  void CalculatePlayerMovementDirection(float dt);
  void UpdatePlayerControlDirection(float dt, CStateManager& mgr);
  void UpdateFrozenState(const CFinalInput& input, CStateManager& mgr);
  void UpdateControlLostState(float dt, CStateManager& mgr);
  void ComputeMovement(const CFinalInput& input, CStateManager& mgr, float dt);
  void ProcessInput(const CFinalInput& input, CStateManager& mgr);
  void UpdateScanningState(const CFinalInput& input, CStateManager& mgr, float dt);
  bool IsUnderBetaMetroidAttack(CStateManager& mgr) const;
  void UpdateGrappleState(const CFinalInput& input, CStateManager& mgr);
  void ApplyGrappleForces(const CFinalInput& input, CStateManager& mgr, float dt);
  void ComputeFreeLook(const CFinalInput& input);
  void UpdateOrbitInput(const CFinalInput& input, CStateManager& mgr);
  void UpdateOrbitZone(CStateManager& mgr);
  void UpdateMorphBallState(float dt, const CFinalInput& input, CStateManager& mgr);
  void CalculateLeaveMorphBallDirection(const CFinalInput& input);
  void TransitionToMorphBallState(float dt, CStateManager& mgr);
  void TransitionFromMorphBallState(float dt, CStateManager& mgr);
  float GetMaximumPlayerPositiveVerticalVelocity(const CStateManager& mgr) const;
  CVector3f CalculateLeftStickEdgePosition(float strafeInput, float forwardInput) const;
  bool AttachActorToPlayer(TUniqueId id, bool disableGun);
  void DetachActorFromPlayer();
  void RenderReflectedPlayer(CStateManager& mgr);
  bool HasTransitionBeamModel() const;
  void RenderGun(const CStateManager& mgr, const CVector3f& pos) const;
  bool GetCombatMode() const;
  bool GetExplorationMode() const;
  void SetScanningState(EPlayerScanState state, CStateManager& mgr);
  void UpdateSlideShowUnlocking(CStateManager& mgr); // name?
  bool ValidateScanning(const CFinalInput& input, CStateManager& mgr) const;
  float GetTransitionAlpha(const CVector3f& camPos, float zNear) const;
  void TakeDamage(bool significant, const CVector3f& location, float damage, EWeaponType type,
                  CStateManager& mgr);
  bool WasDamaged() const;
  CVector3f GetDamageLocationWR() const;
  float GetPrevDamageAmount() const;
  float GetDamageAmount() const;
  bool ObjectInScanningRange(TUniqueId id, const CStateManager& mgr);
  void AsyncLoadSuit(CStateManager& mgr);
  bool IsPlayerDeadEnough() const;
  void SetControlDirectionInterpolation(float time);
  void ResetControlDirectionInterpolation();
  void DoThink(float dt, CStateManager& mgr);    // name?
  void DoPreThink(float dt, CStateManager& mgr); // name?
  void SetPlayerHitWallDuringMove();
  void DoPostCameraStuff(float dt, CStateManager& mgr); // name?
  float UpdateCameraBob(float dt, CStateManager& mgr);
  void UpdateOrbitTarget(CStateManager& mgr);
  void UpdateOrbitOrientation(CStateManager& mgr);
  bool IsTransparent() const;

  CPlayerGun* PlayerGun() { return x490_gun.get(); }
  const CPlayerGun* GetPlayerGun() const { return x490_gun.get(); }

  CMorphBall* MorphBall() { return x768_morphball.get(); }
  const CMorphBall* GetMorphBall() const { return x768_morphball.get(); }

  float GetStaticTimer() const { return x740_staticTimer; }

  ESurfaceRestraints GetCurrentSurfaceRestraint() const { return x2ac_surfaceRestraint; }
  ESurfaceRestraints GetSurfaceRestraint() const {
    return x2b0_outOfWaterTicks == 2 ? GetCurrentSurfaceRestraint() : kSR_Water;
  }

  TUniqueId GetOrbitTargetId() const { return x310_orbitTargetId; }
  const CVector3f& GetOrbitPoint() const { return x314_orbitPoint; }
  TUniqueId GetOrbitNextTargetId() const { return x33c_orbitNextTargetId; }
  TUniqueId GetScanningObjectId() const { return x3b4_scanningObject; }
  EGrappleState GetGrappleState() const { return x3b8_grappleState; }
  bool IsInFreeLook() const { return x3dc_inFreeLook; }
  bool IsLookButtonHeld() const { return x3dd_lookButtonHeld; }
  bool GetFreeLookStickState() const { return x3de_lookAnalogHeld; }
  TUniqueId GetAimTargetId() const { return x3f4_aimTarget; }
  EPlayerCameraState GetCameraState() const { return x2f4_cameraState; }
  void SetCameraState(EPlayerCameraState state, CStateManager& mgr);
  EGunHolsterState GetGunHolsterState() const { return x498_gunHolsterState; }
  NPlayer::EPlayerMovementState GetPlayerMovementState() const { return x258_movementState; }
  const CVector3f& GetAssistedTargetAim() const { return x480_assistedTargetAim; }
  // CPlayer::GetFlipSpiderBallControlY() const weak
  // CPlayer::GetFlipSpiderBallControlX() const weak

  bool IsInsideFluid() const { return x9c4_31_inWaterMovement; }

  void Teleport(const CTransform4f& xf, CStateManager& mgr, const bool resetBallCam);
  void SetSpawnedMorphBallState(const EPlayerMorphBallState state, CStateManager& mgr);
  const CVisorSteam& GetVisorSteam() const { return x7a0_visorSteam; }
  const float GetVisorSteamAlpha() const { return x7a0_visorSteam.GetAlpha(); }
  void SetVisorSteam(float targetAlpha, float alphaInDur, float alphaOutDir, CAssetId txtr,
                     bool affectsThermal);

  CVector3f GetDampedClampedVelocityWR() const;
  float GetAverageSpeed() const;
  float GetGravity() const;

  float GetAttachedActorStruggle() const;
  void SetAttachedActorStruggle(float struggle) { xa28_attachedActorStruggle = struggle; }

  // PlayerHint
  // bool SetAreaPlayerHint(const CScriptPlayerHint& hint, CStateManager& mgr);
  void AddToPlayerHintRemoveList(TUniqueId id, CStateManager& mgr);
  void AddToPlayerHintAddList(TUniqueId id, CStateManager& mgr);
  // void DeactivatePlayerHint(TUniqueId id, CStateManager& mgr);
  // void UpdatePlayerHints(CStateManager& mgr);

  static int SfxIdFromMaterial(const CMaterialList& mat, const ushort* idList, int tableLen,
                               ushort defId);

private:
  NPlayer::EPlayerMovementState x258_movementState;
  rstl::vector< CToken > x25c_ballTransitionsRes;
  TUniqueId x26c_attachedActor;
  float x270_attachedActorTime;
  CPlayerEnergyDrain x274_energyDrain;
  float x288_startingJumpTimeout;
  float x28c_sjTimer;
  float x290_minJumpTimeout;
  float x294_jumpCameraTimer;
  int x298_jumpPresses;
  float x29c_fallCameraTimer;
  float x2a0_;
  bool x2a4_cancelCameraPitch;
  float x2a8_timeSinceJump;
  ESurfaceRestraints x2ac_surfaceRestraint;
  int x2b0_outOfWaterTicks;
  rstl::reserved_vector< float, 6 > x2b4_accelerationTable;
  uint x2d0_curAcceleration;
  float x2d4_accelerationChangeTimer;
  CAABox x2d8_fpBounds;
  float x2f0_ballTransHeight;
  EPlayerCameraState x2f4_cameraState;
  EPlayerMorphBallState x2f8_morphBallState;
  EPlayerMorphBallState x2fc_spawnedMorphBallState;
  float x300_fallingTime;
  EPlayerOrbitState x304_orbitState;
  EPlayerOrbitType x308_orbitType;
  EOrbitBrokenType x30c_orbitBrokenType;
  TUniqueId x310_orbitTargetId;
  CVector3f x314_orbitPoint;
  CVector3f x320_orbitVector;
  float x32c_orbitModeTimer;
  EPlayerZoneInfo x330_orbitZoneMode;
  EPlayerZoneType x334_orbitType;
  uint x338_;
  TUniqueId x33c_orbitNextTargetId;
  bool m_deferredOrbitObject;
  float x340_;
  rstl::vector< TUniqueId > x344_nearbyOrbitObjects;
  rstl::vector< TUniqueId > x354_onScreenOrbitObjects;
  rstl::vector< TUniqueId > x364_offScreenOrbitObjects;
  bool x374_orbitLockEstablished;
  float x378_orbitPreventionTimer;
  bool x37c_sidewaysDashing;
  float x380_strafeInputAtDash;
  float x384_dashTimer;
  float x388_dashButtonHoldTime;
  bool x38c_doneSidewaysDashing;
  uint x390_orbitSource;
  bool x394_orbitingEnemy;
  float x398_dashSpeedMultiplier;
  bool x39c_noStrafeDashBlend;
  float x3a0_dashDuration;
  float x3a4_strafeDashBlendDuration;
  EPlayerScanState x3a8_scanState;
  float x3ac_scanningTime;
  float x3b0_curScanTime;
  TUniqueId x3b4_scanningObject;
  EGrappleState x3b8_grappleState;
  float x3bc_grappleSwingTimer;
  CVector3f x3c0_grappleSwingAxis;
  float x3cc_;
  float x3d0_;
  float x3d4_;
  float x3d8_grappleJumpTimeout;
  bool x3dc_inFreeLook;
  bool x3dd_lookButtonHeld;
  bool x3de_lookAnalogHeld;
  float x3e0_curFreeLookCenteredTime;
  float x3e4_freeLookYawAngle;
  float x3e8_horizFreeLookAngleVel;
  float x3ec_freeLookPitchAngle;
  float x3f0_vertFreeLookAngleVel;
  TUniqueId x3f4_aimTarget;
  CVector3f x3f8_targetAimPosition;
  TReservedAverage< CVector3f, 10 > x404_aimTargetAverage;
  CVector3f x480_assistedTargetAim;
  float x48c_aimTargetTimer;
  rstl::single_ptr< CPlayerGun > x490_gun;
  float x494_gunAlpha;
  EGunHolsterState x498_gunHolsterState;
  float x49c_gunHolsterRemTime;
  rstl::single_ptr< CPlayerStuckTracker > x4a0_playerStuckTracker;
  TReservedAverage< float, 20 > x4a4_moveSpeedAvg;
  float x4f8_moveSpeed;
  float x4fc_flatMoveSpeed;
  CVector3f x500_lookDir;
  CVector3f x50c_moveDir;
  CVector3f x518_leaveMorphDir;
  CVector3f x524_lastPosForDirCalc;
  CVector3f x530_gunDir;
  float x53c_timeMoving;
  CVector3f x540_controlDir;
  CVector3f x54c_controlDirFlat;
  bool x558_wasDamaged;
  float x55c_damageAmt;
  float x560_prevDamageAmt;
  CVector3f x564_damageLocation;
  float x570_immuneTimer;
  float x574_morphTime;
  float x578_morphDuration;
  uint x57c_;
  uint x580_;
  int x584_ballTransitionAnim;
  float x588_alpha;
  float x58c_transitionVel;
  bool x590_leaveMorphballAllowed;
  TReservedAverage< CTransform4f, 4 > x594_transisionBeamXfs;
  TReservedAverage< CTransform4f, 4 > x658_transitionModelXfs;
  TReservedAverage< float, 4 > x71c_transitionModelAlphas;
  rstl::vector< rstl::auto_ptr< CModelData > > x730_transitionModels;
  float x740_staticTimer;
  float x744_staticOutSpeed;
  float x748_staticInSpeed;
  float x74c_visorStaticAlpha;
  float x750_frozenTimeout;
  int x754_iceBreakJumps;
  float x758_frozenTimeoutBias;
  int x75c_additionalIceBreakJumps;
  bool x760_controlsFrozen;
  float x764_controlsFrozenTimeout;
  rstl::single_ptr< CMorphBall > x768_morphball;
  rstl::single_ptr< CPlayerCameraBob > x76c_cameraBob;
  CSfxHandle x770_damageLoopSfx;
  float x774_samusVoiceTimeout;
  CSfxHandle x778_dashSfx;
  CSfxHandle x77c_samusVoiceSfx;
  int x780_samusVoicePriority;
  float x784_damageSfxTimer;
  ushort x788_damageLoopSfxId;
  float x78c_footstepSfxTimer;
  EFootstepSfx x790_footstepSfxSel;
  CVector3f x794_lastVelocity;
  CVisorSteam x7a0_visorSteam;
  CPlayerState::EPlayerSuit x7cc_transitionSuit;
  CAnimRes x7d0_animRes;
  CPlayerState::EBeamId x7ec_beam;
  rstl::single_ptr< CModelData > x7f0_ballTransitionBeamModel;
  CTransform4f x7f4_gunWorldXf;
  float x824_transitionFilterTimer;
  float x828_distanceUnderWater;
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
  float x9c8_eyeZBias;
  float x9cc_stepCameraZBias;
  uint x9d0_bombJumpCount;
  int x9d4_bombJumpCheckDelayFrames;
  CVector3f x9d8_controlDirOverrideDir;
  rstl::reserved_vector< TUniqueId, 5 > x9e4_orbitDisableList;
  float x9f4_deathTime;
  float x9f8_controlDirInterpTime;
  float x9fc_controlDirInterpDur;
  TUniqueId xa00_deathPowerBomb;
  float xa04_preThinkDt;
  CAssetId xa08_steamTextureId;
  CAssetId xa0c_iceTextureId;
  int xa10_envDmgCounter;
  float xa14_envDmgCameraShakeTimer;
  float xa18_phazonDamageLag;
  float xa1c_threatOverride;
  float xa20_radarXYRadiusOverride;
  float xa24_radarZRadiusOverride;
  float xa28_attachedActorStruggle;
  int xa2c_damageLoopSfxDelayTicks;
  float xa30_samusExhaustedVoiceTimer;
};
CHECK_SIZEOF(CPlayer, 0xa38)

#endif // _CPLAYER

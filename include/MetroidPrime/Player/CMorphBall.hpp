#ifndef _CMORPHBALL
#define _CMORPHBALL

#include "Kyoto/TOneStatic.hpp"
#include "Kyoto/TReservedAverage.hpp"

#include "Collision/CCollidableSphere.hpp"
#include "Collision/CCollisionInfoList.hpp"

class CElementGen;
class CGenDescription;
class CModelData;
class CMorphBallShadow;
class CParticleSwoosh;
class CPlayer;
class CRainSplashGenerator;
class CStateManager;
class CSwooshDescription;
class CToken;
class CWorldShadow;

class CMorphBall : public TOneStatic< CMorphBall > {
public:
  enum EBallBoostState { kBBS_BoostAvailable, kBBS_BoostDisabled };
  enum ESpiderBallState { kSBS_Inactive, kSBS_Active };
  enum EBombJumpState { kBJS_BombJumpAvailable, kBJS_BombJumpDisabled };

  CMorphBall(CPlayer&, float);
  ~CMorphBall();

  float GetBallRadius() const;

  EBallBoostState GetBallBoostState() const;
  void SetBallBoostState(EBallBoostState state);
  EBombJumpState GetBombJumpState() const;
  void SetBombJumpState(EBombJumpState state);
  void LoadMorphBallModel(CStateManager& mgr);
  void Update(float dt, CStateManager& mgr);
  void StopSounds();
  void UpdateEffects(float dt, CStateManager& mgr);
  void SetBallLightActive(CStateManager& mgr, const bool active);
  // GetBallToWorld__10CMorphBallCFv global
  // GetBallRadius__10CMorphBallCFv global
  // TakeDamage__10CMorphBallFf global
  // IsProjectile__10CMorphBallCFv weak
  // LeaveMorphBallState__10CMorphBallFR13CStateManager global
  // LeaveBoosting__10CMorphBallFv global
  // CancelBoosting__10CMorphBallFv global
  // InSpiderMode__10CMorphBallCFv weak
  // SetAsProjectile__10CMorphBallFRC11CDamageInfoRC11CDamageInfo global
  // CollidedWith__10CMorphBallFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager global
  // SwitchToMarble__10CMorphBallFv global
  bool GetIsInHalfPipeMode() const;
  // DampLinearAndAngularVelocities__10CMorphBallFff global
  // IsClimbable__10CMorphBallCFRC14CCollisionInfo global
  // FluidFXThink__10CMorphBallFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager global
  // GetCollidableSphere__10CMorphBallCFv weak
  // DrawCollisionPrimitive__10CMorphBallCFv global
  // GetPrimitiveTransform__10CMorphBallCFv global
  // TouchModel__10CMorphBallCFRC13CStateManager global
  // Render__10CMorphBallCFRC13CStateManagerPC12CActorLights global
  // RenderDamageEffects__10CMorphBallCFRC13CStateManagerRC12CTransform4f global
  // RenderSpiderBallElectricalEffects__10CMorphBallCFv global
  // RenderEnergyDrainEffects__10CMorphBallCFRC13CStateManager global
  // RenderMorphBallTransitionFlash__10CMorphBallCFRC13CStateManager global
  // GetModel__10CMorphBallCFv weak
  // GetBallContactSurfaceNormal__10CMorphBallCFv weak
  // PreRender__10CMorphBallFR13CStateManagerRC14CFrustumPlanes global
  // IsInFrustum__10CMorphBallCFRC14CFrustumPlanes global
  // GetBallTouchRadius__10CMorphBallCFv global
  // Touch__10CMorphBallFR6CActorR13CStateManager global
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  // DeleteLight__10CMorphBallFR13CStateManager global
  // EnterMorphBallState__10CMorphBallFR13CStateManager
  // GetSwooshToWorld__10CMorphBallCFv global
  // IsMorphBallTransitionFlashValid__10CMorphBallCFv global
  // AddSpiderBallElectricalEffect__10CMorphBallFv global
  // UpdateSpiderBallElectricalEffects__10CMorphBallFv global
  // UpdateMorphBallTransitionFlash__10CMorphBallFf global
  // DisableHalfPipeStatus__10CMorphBallFv global
  // SetIsInHalfPipeMode__10CMorphBallFb global
  // SetIsInHalfPipeModeInAir__10CMorphBallFb global
  // SetTouchedHalfPipeRecently__10CMorphBallFb global
  // ResetMorphBallTransitionFlash__10CMorphBallFv global
  // CreateSpiderBallParticles__10CMorphBallFRC9CVector3fRC9CVector3f global
  ESpiderBallState GetSpiderBallState() const { return x187c_spiderBallState; }
  // GetMorphBallModel__10CMorphBallFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f global
  // LoadAnimationTokens__10CMorphBallFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator> global
  // IsBoosting__10CMorphBallCFv weak
  // GetBoostChargeTimer__10CMorphBallCFv weak
  // GetWallBumpCounter__10CMorphBallCFv weak
  // GetBallContactMaterials__10CMorphBallCFv weak
  void ComputeBallMovement(const CFinalInput&, CStateManager&, float);
  // ComputeBoostBallMovement__10CMorphBallFRC11CFinalInputRC13CStateManagerf global
  // IsMovementAllowed__10CMorphBallCFv global
  // EnterBoosting__10CMorphBallFv global
  // SwitchToTire__10CMorphBallFv global
  // ComputeMarioMovement__10CMorphBallFRC11CFinalInputR13CStateManagerf global
  // SetSpiderBallState__10CMorphBallFQ210CMorphBall16ESpiderBallState weak
  // UpdateSpiderBall__10CMorphBallFRC11CFinalInputR13CStateManagerf global
  // CheckForSwitchToSpiderBallSwinging__10CMorphBallCFR13CStateManager global
  // FindClosestSpiderBallWaypoint__10CMorphBallCFR13CStateManagerRC9CVector3fR9CVector3fR9CVector3fR9CVector3fRfR9CVector3fRbR12CTransform4f global
  // SetSpiderBallSwingingState__10CMorphBallFb global
  // ResetSpiderBallSwingControllerMovementTimer__10CMorphBallFv global
  // ApplySpiderBallSwingingForces__10CMorphBallFRC11CFinalInputR13CStateManagerf global
  // GetSpiderBallControllerMovement__10CMorphBallCFRC11CFinalInputbb global
  // UpdateSpiderBallSwingControllerMovementTimer__10CMorphBallFff global
  // GetSpiderBallSwingControllerMovementScalar__10CMorphBallCFv global
  // ApplySpiderBallRollForces__10CMorphBallFRC11CFinalInputR13CStateManagerf global
  // CalculateSpiderBallAttractionSurfaceForces__10CMorphBallCFRC11CFinalInputR13CStateManagerRC12CTransform4f global
  // ForwardInput__10CMorphBallCFRC11CFinalInput global
  // BallTurnInput__10CMorphBallCFRC11CFinalInput global
  // ComputeMaxSpeed__10CMorphBallCFv global
  bool GetIsInHalfPipeModeInAir() const;
  // GetTouchedHalfPipeRecently__10CMorphBallCFv global
  // ComputeLiftForces__10CMorphBallFRC9CVector3fRC9CVector3fRC13CStateManager global
  void UpdateBallDynamics(CStateManager&, float);
  // BallCloseToCollision__10CMorphBallCFRC13CStateManagerf global
  // UpdateHalfPipeStatus__10CMorphBallFR13CStateManagerf global
  // CalculateSurfaceToWorld__10CMorphBallCFRC9CVector3fRC9CVector3fRC9CVector3f global
  // UpdateMarbleDynamics__10CMorphBallFR13CStateManagerfRC9CVector3f global
  // SpinToSpeed__10CMorphBallFfRC9CVector3ff global
  // GetMinimumAlignmentSpeed__10CMorphBallCFv global
  // CalculateBallContactInfo__10CMorphBallCFR9CVector3fR9CVector3f global
  // CalculateSurfaceFriction__10CMorphBallCFv global
  // ApplyFriction__10CMorphBallFf global
  // ApplyGravity__10CMorphBallFR13CStateManager global
  void Land();
  void ResetMorphBallIceBreak();
  void StopParticleWakes();

private:
  struct CSpiderBallElectricityManager {
    uint x0_effectIdx;
    uint x4_lifetime;
    uint x8_curFrame;
    CSpiderBallElectricityManager(uint effectIdx, uint lifetime)
    : x0_effectIdx(effectIdx), x4_lifetime(lifetime) {}
  };

  CPlayer& x0_player;
  int x4_loadedModelId;
  uint x8_ballGlowColorIdx;
  float xc_radius;
  CVector3f x10_boostControlForce;
  CVector3f x1c_controlForce;
  bool x28_tireMode;
  float x2c_tireLeanAngle;
  float x30_ballTiltAngle;
  CCollidableSphere x38_collisionSphere;
  rstl::single_ptr< CModelData > x58_ballModel;
  uint x5c_ballModelShader;
  rstl::single_ptr< CModelData > x60_spiderBallGlassModel;
  uint x64_spiderBallGlassModelShader;
  rstl::single_ptr< CModelData > x68_lowPolyBallModel;
  uint x6c_lowPolyBallModelShader;
  rstl::single_ptr< CModelData > x70_frozenBallModel;
  CCollisionInfoList x74_collisionInfos;
  char xc78_[0x187c - 0xc78];
  ESpiderBallState x187c_spiderBallState;
  CVector3f x1880_playerToSpiderNormal;
  float x188c_spiderPullMovement;
  CVector3f x1890_spiderTrackPoint;
  CVector3f x189c_spiderInterpBetweenPoints;
  CVector3f x18a8_spiderBetweenPoints;
  float x18b4_linVelDamp;
  float x18b8_angVelDamp;
  bool x18bc_spiderNearby;
  bool x18bd_touchingSpider;
  bool x18be_spiderBallSwinging;
  bool x18bf_spiderSwingInAir;
  bool x18c0_isSpiderSurface;
  CTransform4f x18c4_spiderSurfaceTransform;
  float x18f4_spiderSurfacePivotAngle;
  float x18f8_spiderSurfacePivotTargetAngle;
  float x18fc_refPullVel;
  float x1900_playerToSpiderTrackDist;
  float x1904_swingControlDir;
  float x1908_swingControlTime;
  CVector2f x190c_normSpiderSurfaceForces;
  float x1914_spiderTrackForceMag;
  float x1918_spiderViewControlMag;
  float x191c_damageTimer;
  bool x1920_spiderForcesReset;
  CTransform4f x1924_surfaceToWorld;
  bool x1954_isProjectile;
  rstl::vector< CToken > x1958_animationTokens;
  TToken< CSwooshDescription > x1968_slowBlueTailSwoosh;
  TToken< CSwooshDescription > x1970_slowBlueTailSwoosh2;
  TToken< CSwooshDescription > x1978_jaggyTrail;
  TToken< CGenDescription > x1980_wallSpark;
  TToken< CGenDescription > x1988_ballInnerGlow;
  TToken< CGenDescription > x1990_spiderBallMagnetEffect;
  TToken< CGenDescription > x1998_boostBallGlow;
  TToken< CSwooshDescription > x19a0_spiderElectric;
  TToken< CGenDescription > x19a8_morphBallTransitionFlash;
  TToken< CGenDescription > x19b0_effect_morphBallIceBreak;
  rstl::single_ptr< CParticleSwoosh > x19b8_slowBlueTailSwooshGen;
  rstl::single_ptr< CParticleSwoosh > x19bc_slowBlueTailSwooshGen2;
  rstl::single_ptr< CParticleSwoosh > x19c0_slowBlueTailSwoosh2Gen;
  rstl::single_ptr< CParticleSwoosh > x19c4_slowBlueTailSwoosh2Gen2;
  rstl::single_ptr< CParticleSwoosh > x19c8_jaggyTrailGen;
  rstl::single_ptr< CElementGen > x19cc_wallSparkGen;
  rstl::single_ptr< CElementGen > x19d0_ballInnerGlowGen;
  rstl::single_ptr< CElementGen > x19d4_spiderBallMagnetEffectGen;
  rstl::single_ptr< CElementGen > x19d8_boostBallGlowGen;
  rstl::single_ptr< CElementGen > x19dc_morphBallTransitionFlashGen;
  rstl::single_ptr< CElementGen > x19e0_effect_morphBallIceBreakGen;
  rstl::reserved_vector< rstl::pair< rstl::single_ptr< CParticleSwoosh >, bool >, 48 >
      x19e4_spiderElectricGens;
  rstl::list< CSpiderBallElectricityManager > x1b68_activeSpiderElectricList;
  CRandom16 x1b80_rand;
  rstl::reserved_vector< TToken< CGenDescription >, 8 > x1b84_wakeEffects;
  rstl::reserved_vector< rstl::auto_ptr< CElementGen >, 8 > x1bc8_wakeEffectGens;
  int x1c0c_wakeEffectIdx;
  TUniqueId x1c10_ballInnerGlowLight;
  rstl::single_ptr< CWorldShadow > x1c14_worldShadow;
  rstl::single_ptr< CActorLights > x1c18_actorLights;
  rstl::single_ptr< CRainSplashGenerator > x1c1c_rainSplashGen;
  float x1c20_tireFactor;
  float x1c24_maxTireFactor;
  float x1c28_tireInterpSpeed;
  bool x1c2c_tireInterpolating;
  float x1c30_boostOverLightFactor;
  float x1c34_boostLightFactor;
  float x1c38_spiderLightFactor;
  TReservedAverage< CQuaternion, 5 > x1c3c_ballOrientAvg;
  TReservedAverage< CVector3f, 5 > x1c90_ballPosAvg;
  TReservedAverage< float, 15 > x1cd0_liftSpeedAvg;
  TReservedAverage< CVector3f, 15 > x1d10_liftControlForceAvg;
  uint x1dc8_failsafeCounter;
  CVector3f x1dcc_;
  CVector3f x1dd8_;
  bool x1de4_24_inBoost : 1;
  bool x1de4_25_boostEnabled : 1;
  float x1de8_boostChargeTime;
  float x1dec_timeNotInBoost;
  float x1df0_;
  float x1df4_boostDrainTime;
  bool x1df8_24_inHalfPipeMode : 1;
  bool x1df8_25_inHalfPipeModeInAir : 1;
  bool x1df8_26_touchedHalfPipeRecently : 1;
  bool x1df8_27_ballCloseToCollision : 1;
  float x1dfc_touchHalfPipeCooldown;
  float x1e00_disableControlCooldown;
  float x1e04_touchHalfPipeRecentCooldown;
  CVector3f x1e08_prevHalfPipeNormal;
  CVector3f x1e14_halfPipeNormal;
  uint x1e20_ballAnimIdx;
  CSfxHandle x1e24_boostSfxHandle;
  CSfxHandle x1e28_wallHitSfxHandle;
  CSfxHandle x1e2c_rollSfxHandle;
  CSfxHandle x1e30_spiderSfxHandle;
  ushort x1e34_rollSfx;
  ushort x1e36_landSfx;
  uint x1e38_wallSparkFrameCountdown;
  EBallBoostState x1e3c_boostState;
  EBombJumpState x1e40_bombJumpState;
  float x1e44_damageEffect;
  float x1e48_damageEffectDecaySpeed;
  float x1e4c_damageTime;
  rstl::single_ptr< CMorphBallShadow > x1e50_shadow;
};
CHECK_SIZEOF(CMorphBall, 0x1e58);

#endif // _CMORPHBALL

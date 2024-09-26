#include "MetroidPrime/Player/CPlayer.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CControlMapper.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/Player/CGrappleArm.hpp"
#include "MetroidPrime/Player/CMorphBall.hpp"
#include "MetroidPrime/Player/CPlayerCameraBob.hpp"
#include "MetroidPrime/Player/CPlayerGun.hpp"
#include "MetroidPrime/SFX/LavaWorld.h"
#include "MetroidPrime/SFX/MiscSamus.h"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayerGun.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayerRes.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Audio/CStreamAudioManager.hpp"
#include "Kyoto/Math/CRelAngle.hpp"

#include "Collision/CCollisionInfo.hpp"
#include "Collision/CRayCastResult.hpp"

#include "rstl/math.hpp"

static CVector3f testRayStart(0.f, 0.f, 0.f);
static CVector3f testRayNormal(0.f, 0.f, 1.f);
static CRayCastResult testRayResult;
static CCollisionInfo testBoxResult;
static CAABox testBox(CAABox::Identity());
typedef rstl::pair< CPlayerState::EItemType, ControlMapper::ECommands > TVisorToItemMapping;
static TVisorToItemMapping skVisorToItemMapping[4] = {
    TVisorToItemMapping(CPlayerState::kIT_CombatVisor, ControlMapper::kC_NoVisor),
    TVisorToItemMapping(CPlayerState::kIT_XRayVisor, ControlMapper::kC_XrayVisor),
    TVisorToItemMapping(CPlayerState::kIT_ThermalVisor, ControlMapper::kC_EnviroVisor),
    TVisorToItemMapping(CPlayerState::kIT_ScanVisor, ControlMapper::kC_ThermoVisor),
};

static const ushort skPlayerLandSfxSoft[24] = {
    0xFFFF,
    SFXsam_landstone_00,
    SFXsam_landmetl_00,
    SFXsam_landgrass_00,
    SFXsam_landice_00,
    0xFFFF,
    SFXsam_landgrate_00,
    SFXsam_landphazon_00,
    SFXsam_landdirt_00,
    SFXlav_landlava_00,
    SFXsam_landlavastone_00,
    SFXsam_landsnow_00,
    SFXsam_landmud_00,
    0xFFFF,
    SFXsam_landgrass_00,
    SFXsam_landmetl_00,
    SFXsam_landmetl_00,
    SFXsam_landdirt_00,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    SFXsam_landwood_00,
    SFXsam_b_landorg_00,
};

static const ushort skPlayerLandSfxHard[24] = {
    0xFFFF,
    SFXsam_landstone_02,
    SFXsam_b_landmetl_02,
    SFXsam_landgrass_02,
    SFXsam_landice_02,
    0xFFFF,
    SFXsam_landgrate_02,
    SFXsam_landphazon_02,
    SFXsam_landdirt_02,
    SFXlav_landlava_02,
    SFXsam_landlavastone_02,
    SFXsam_landsnow_02,
    SFXsam_landmud_02,
    0xFFFF,
    SFXsam_landgrass_02,
    SFXsam_b_landmetl_02,
    SFXsam_b_landmetl_02,
    SFXsam_landdirt_02,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    SFXsam_landwood_02,
    SFXsam_landorg_02,
};

static const ushort skLeftStepSounds[24] = {
    0xFFFF,
    SFXsam_wlkstone_00,
    SFXsam_wlkmetal_00,
    SFXsam_b_wlkgrass_00,
    SFXsam_wlkice_00,
    0xFFFF,
    SFXsam_wlkgrate_00,
    SFXsam_wlkphazon_00,
    SFXsam_wlkdirt_00,
    SFXlav_wlklava_00,
    SFXsam_wlklavastone_00,
    SFXsam_wlksnow_00,
    SFXsam_wlkmud_00,
    0xFFFF,
    SFXsam_b_wlkorg_00,
    SFXsam_wlkmetal_00,
    SFXsam_wlkmetal_00,
    SFXsam_wlkdirt_00,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    SFXsam_wlkwood_00,
    SFXsam_b_wlkorg_00,
};

static const ushort skRightStepSounds[24] = {
    0xFFFF,
    SFXsam_wlkstone_01,
    SFXsam_wlkmetal_01,
    SFXsam_b_wlkgrass_01,
    SFXsam_wlkice_01,
    0xFFFF,
    SFXsam_wlkgrate_01,
    SFXsam_wlkphazon_01,
    SFXsam_wlkdirt_01,
    SFXlav_wlklava_01,
    SFXsam_wlklavastone_01,
    SFXsam_wlksnow_01,
    SFXsam_wlkmud_01,
    0xFFFF,
    SFXsam_b_wlkorg_01,
    SFXsam_wlkmetal_01,
    SFXsam_wlkmetal_01,
    SFXsam_wlkdirt_01,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    SFXsam_wlkwood_01,
    SFXsam_b_wlkorg_01,
};

static const char* const kGunLocator = "GUN_LCTR";

CAnimRes MakePlayerAnimres(CAssetId resId, const CVector3f& scale) {
  return CAnimRes(resId, CAnimRes::kDefaultCharIdx, scale, 0, true);
}

CPlayer::CPlayer(TUniqueId uid, const CTransform4f& xf, const CAABox& aabb, CAssetId resId,
                 const CVector3f& playerScale, float mass, float stepUp, float stepDown,
                 float ballRadius, const CMaterialList& ml)
: CPhysicsActor(uid, true, rstl::string_l("CPlayer"),
                CEntityInfo(kInvalidAreaId, CEntity::NullConnectionList), xf,
                MakePlayerAnimres(resId, playerScale), ml, aabb, SMoverData(mass),
                CActorParameters::None(), stepUp, stepDown)
, x258_movementState(NPlayer::kMS_OnGround)
, x25c_ballTransitionsRes()
, x26c_attachedActor(kInvalidUniqueId)
, x270_attachedActorTime(0.f)
, x274_energyDrain(4)
, x288_startingJumpTimeout(0.f)
, x28c_sjTimer(0.f)
, x290_minJumpTimeout(0.f)
, x294_jumpCameraTimer(0.f)
, x298_jumpPresses(0)
, x29c_fallCameraTimer(0.f)
, x2a0_(0.f)
, x2a4_cancelCameraPitch(false)
, x2a8_timeSinceJump(1000.f)
, x2ac_surfaceRestraint(kSR_Normal)
, x2b0_outOfWaterTicks(2)
, x2b4_accelerationTable()
, x2d0_curAcceleration(1)
, x2d4_accelerationChangeTimer(0.f)
, x2d8_fpBounds(aabb)
, x2f0_ballTransHeight(1.f)
, x2f4_cameraState(kCS_FirstPerson)
, x2f8_morphBallState(kMS_Unmorphed)
, x2fc_spawnedMorphBallState(kMS_Unmorphed)
, x300_fallingTime(0.f)
, x304_orbitState(kOS_NoOrbit)
, x308_orbitType(kOT_Close)
, x30c_orbitRequest(kOR_Default)
, x310_orbitTargetId(kInvalidUniqueId)
, x314_orbitPoint(0.f, 0.f, 0.f)
, x320_orbitVector(0.f, 0.f, 0.f)
, x32c_orbitModeTimer(0.f)
, x330_orbitZoneMode(kZI_Targeting)
, x334_orbitType(kZT_Ellipse)
, x338_(1)
, x33c_orbitNextTargetId(kInvalidUniqueId)
, x340_(0.f)
, x344_nearbyOrbitObjects()
, x354_onScreenOrbitObjects()
, x364_offScreenOrbitObjects()
, x374_orbitLockEstablished(false)
, x378_orbitPreventionTimer(0.f)
, x37c_sidewaysDashing(false)
, x380_strafeInputAtDash(0.f)
, x384_dashTimer(0.f)
, x388_dashButtonHoldTime(0.f)
, x38c_doneSidewaysDashing(false)
, x390_orbitSource(2)
, x394_orbitingEnemy(false)
, x398_dashSpeedMultiplier(1.5f)
, x39c_noStrafeDashBlend(false)
, x3a0_dashDuration(0.5f)
, x3a4_strafeDashBlendDuration(0.449f)
, x3a8_scanState(kSS_NotScanning)
, x3ac_scanningTime(0.f)
, x3b0_curScanTime(0.f)
, x3b4_scanningObject(kInvalidUniqueId)
, x3b8_grappleState(kGS_None)
, x3bc_grappleSwingTimer(0.f)
, x3c0_grappleSwingAxis(0.f, 1.f, 0.f)
, x3cc_(0.f)
, x3d0_(0.f)
, x3d4_(0.f)
, x3d8_grappleJumpTimeout(0.f)
, x3dc_inFreeLook(false)
, x3dd_lookButtonHeld(false)
, x3de_lookAnalogHeld(false)
, x3e0_curFreeLookCenteredTime(0.f)
, x3e4_freeLookYawAngle(0.f)
, x3e8_horizFreeLookAngleVel(0.f)
, x3ec_freeLookPitchAngle(0.f)
, x3f0_vertFreeLookAngleVel(0.f)
, x3f4_aimTarget(kInvalidUniqueId)
, x3f8_targetAimPosition(CVector3f::Zero())
, x404_aimTargetAverage()
, x480_assistedTargetAim(CVector3f::Zero())
, x48c_aimTargetTimer(0.f)
, x490_gun(rs_new CPlayerGun(uid))
, x494_gunAlpha(1.f)
, x498_gunHolsterState(kGH_Drawn)
, x49c_gunHolsterRemTime(gpTweakPlayerGun->x40_gunNotFiringTime)
, x4a0_inputFilter(rs_new CInputFilter())
, x4a4_moveSpeedAvg()
, x4f8_moveSpeed(0.f)
, x4fc_flatMoveSpeed(0.f)
, x500_lookDir(GetTransform().GetColumn(kDY))
, x50c_moveDir(GetTransform().GetColumn(kDY))
, x518_leaveMorphDir(GetTransform().GetColumn(kDY))
, x524_lastPosForDirCalc(GetTransform().GetTranslation())
, x530_gunDir(GetTransform().GetColumn(kDY))
, x53c_timeMoving(0.f)
, x540_controlDir(GetTransform().GetColumn(kDY))
, x54c_controlDirFlat(GetTransform().GetColumn(kDY))
, x558_wasDamaged(false)
, x55c_damageAmt(0.f)
, x560_prevDamageAmt(0.f)
, x564_damageLocation(CVector3f::Zero())
, x570_immuneTimer(0.f)
, x574_morphTime(0.f)
, x578_morphDuration(0.f)
, x57c_(0)
, x580_(0)
, x584_ballTransitionAnim(-1)
, x588_alpha(1.f)
, x58c_transitionVel(0.f)
, x590_leaveMorphballAllowed(true)
, x594_transisionBeamXfs()
, x658_transitionModelXfs()
, x71c_transitionModelAlphas()
, x730_transitionModels()
, x740_staticTimer(0.f)
, x744_staticOutSpeed(0.f)
, x748_staticInSpeed(0.f)
, x74c_visorStaticAlpha(1.f)
, x750_frozenTimeout(0.f)
, x754_iceBreakJumps(0)
, x758_frozenTimeoutBias(0.f)
, x75c_additionalIceBreakJumps(0)
, x760_controlsFrozen(false)
, x764_controlsFrozenTimeout(0.f)
, x768_morphball()
, x76c_cameraBob(rs_new CPlayerCameraBob(CPlayerCameraBob::kCBT_One))
, x770_damageLoopSfx()
, x774_samusVoiceTimeout(0.f)
, x778_dashSfx()
, x77c_samusVoiceSfx()
, x780_samusVoicePriority(0)
, x784_damageSfxTimer(0.f)
, x788_damageLoopSfxId(0)
, x78c_footstepSfxTimer(0.f)
, x790_footstepSfxSel(kFS_None)
, x794_lastVelocity(CVector3f::Zero())
, x7a0_visorSteam(0.f, 0.f, 0.f, kInvalidAssetId)
, x7cc_transitionSuit(CPlayerState::kPS_Invalid)
, x7d0_animRes(resId, CAnimRes::kDefaultCharIdx, playerScale, 0, true)
, x7ec_beam(CPlayerState::kBI_Power)
, x7f0_ballTransitionBeamModel()
, x7f4_gunWorldXf(CTransform4f::Identity())
, x824_transitionFilterTimer(0.f)
, x828_distanceUnderWater(0.f)
, x82c_inLava(false)
, x82e_ridingPlatform(kInvalidUniqueId)
, x830_playerHint(kInvalidUniqueId)
, x834_playerHintPriority(1000)
, x838_playerHints()
, x93c_playerHintsToRemove()
, x980_playerHintsToAdd()
, x9c4_24_visorChangeRequested(false)
, x9c4_25_showCrosshairs(false)
, x9c4_26_(true)
, x9c4_27_canEnterMorphBall(true)
, x9c4_28_canLeaveMorphBall(true)
, x9c4_29_spiderBallControlXY(false)
, x9c4_30_controlDirOverride(false)
, x9c4_31_inWaterMovement(false)
, x9c5_24_(false)
, x9c5_25_splashUpdated(false)
, x9c5_26_(false)
, x9c5_27_camSubmerged(false)
, x9c5_28_slidingOnWall(false)
, x9c5_29_hitWall(false)
#if NONMATCHING
, x9c5_30_selectFluidBallSound(false)
#endif
, x9c5_31_stepCameraZBiasDirty(true)
, x9c6_24_extendTargetDistance(false)
, x9c6_25_interpolatingControlDir(false)
, x9c6_26_outOfBallLookAtHint(false)
, x9c6_27_aimingAtProjectile(false)
, x9c6_28_aligningGrappleSwingTurn(false)
, x9c6_29_disableInput(false)
#if NONMATCHING
, x9c6_30_newScanScanning(false)
#endif
, x9c6_31_overrideRadarRadius(false)
, x9c7_25_outOfBallLookAtHintActor(false)
#if NONMATCHING
, x9c7_24_noDamageLoopSfx(false)
#endif
, x9c8_eyeZBias(0.f)
, x9cc_stepCameraZBias(0.f)
, x9d0_bombJumpCount(0)
, x9d4_bombJumpCheckDelayFrames(0)
, x9d8_controlDirOverrideDir(0.f, 1.f, 0.f)
, x9e4_orbitDisableList()
, x9f4_deathTime(0.f)
, x9f8_controlDirInterpTime(0.f)
, x9fc_controlDirInterpDur(0.f)
, xa00_deathPowerBomb(kInvalidUniqueId)
, xa04_preThinkDt(0.f)
, xa08_steamTextureId(kInvalidAssetId)
#if NONMATCHING
, xa0c_iceTextureId(kInvalidAssetId)
#endif
, xa10_envDmgCounter(0)
, xa14_envDmgCameraShakeTimer(0.f)
, xa18_phazonDamageLag(0.f)
, xa1c_threatOverride(0.f)
, xa20_radarXYRadiusOverride(1.f)
, xa24_radarZRadiusOverride(1.f)
, xa28_attachedActorStruggle(0.f)
, xa2c_damageLoopSfxDelayTicks(2)
, xa30_samusExhaustedVoiceTimer(4.f) {
  CModelData ballTransitionBeamModelData(
      CStaticRes(gpTweakPlayerRes->GetBallTransitionBeamResId(x7ec_beam), playerScale));
  CModelData* ptr;
  if (ballTransitionBeamModelData.IsNull()) {
    ptr = nullptr;
  } else {
    ptr = rs_new CModelData(ballTransitionBeamModelData);
  }
  x7f0_ballTransitionBeamModel = ptr;
  x730_transitionModels.reserve(3);
  x768_morphball = rs_new CMorphBall(*this, ballRadius);
  SetInertiaTensorScalar(GetMass());
  SetLastNonCollidingState(GetMotionState());
  x490_gun->SetTransform(GetTransform());
  x490_gun->GetGrappleArm().SetTransform(GetTransform());
  InitialiseAnimation();
  CAABox bounds = GetModelData()->GetBounds(CTransform4f::Identity());
  x2f0_ballTransHeight = bounds.GetMaxPoint().GetZ() - bounds.GetMinPoint().GetZ();
  SetCalculateLighting(true);
  ActorLights()->SetCastShadows(true);
  x50c_moveDir.SetZ(0.f);
  if (x50c_moveDir.CanBeNormalized()) {
    x50c_moveDir.Normalize();
  }
  x2b4_accelerationTable.push_back(20.f);
  x2b4_accelerationTable.push_back(80.f);
  x2b4_accelerationTable.push_back(80.f);
  x2b4_accelerationTable.push_back(270.f);
  SetMaxVelocityAfterCollision(25.f);
  x354_onScreenOrbitObjects.reserve(64);
  x344_nearbyOrbitObjects.reserve(64);
  x364_offScreenOrbitObjects.reserve(64);
  ModelData()->SetScale(playerScale);
  x7f0_ballTransitionBeamModel->SetScale(playerScale);
  LoadAnimationTokens();
}

bool CPlayer::IsMorphBallTransitioning() const {
  switch (x2f8_morphBallState) {
  case kMS_Morphing:
  case kMS_Unmorphing:
    return true;
  default:
    return false;
  }
}

void CPlayer::HolsterGun(CStateManager& mgr) {
  if (x498_gunHolsterState == kGH_Holstered || x498_gunHolsterState == kGH_Holstering) {
    return;
  }

  float time = gpTweakPlayerGun->x3c_gunHolsterTime;
  if (x2f8_morphBallState == kMS_Morphing) {
    time = 0.1f;
  }
  if (x498_gunHolsterState == kGH_Drawing) {
    x49c_gunHolsterRemTime = time * (1.f - x49c_gunHolsterRemTime / 0.45f);
  } else {
    x49c_gunHolsterRemTime = time;
  }

  x498_gunHolsterState = kGH_Holstering;
  x490_gun->CancelFiring(mgr);
  SetAimTargetId(kInvalidUniqueId);
}

void CPlayer::ResetGun(CStateManager& mgr) {
  x498_gunHolsterState = kGH_Holstered;
  x49c_gunHolsterRemTime = 0.f;
  x490_gun->CancelFiring(mgr);
  SetAimTargetId(kInvalidUniqueId);
}

void CPlayer::DrawGun(CStateManager& mgr) {
  if (x498_gunHolsterState != kGH_Holstered || CheckPostGrapple()) {
    return;
  }

  x498_gunHolsterState = kGH_Drawing;
  x49c_gunHolsterRemTime = 0.45f;
  x490_gun->ResetIdle(mgr);
}

void CPlayer::UpdateGunState(const CFinalInput& input, CStateManager& mgr) {
  float dt = input.Time();
  switch (x498_gunHolsterState) {
  case kGH_Drawn: {
    bool needsHolster = false;
    if (gpTweakPlayer->GetGunButtonTogglesHolster()) {
      if (ControlMapper::GetPressInput(ControlMapper::kC_ToggleHolster, input)) {
        needsHolster = true;
      }
      if (!ControlMapper::GetDigitalInput(ControlMapper::kC_FireOrBomb, input) &&
          !ControlMapper::GetDigitalInput(ControlMapper::kC_MissileOrPowerBomb, input) &&
          gpTweakPlayer->x229_31_gunNotFiringHolstersGun) {
        x49c_gunHolsterRemTime -= dt;
        if (x49c_gunHolsterRemTime <= 0.f) {
          needsHolster = true;
        }
      }
    } else {
      if (!ControlMapper::GetDigitalInput(ControlMapper::kC_FireOrBomb, input) &&
          !ControlMapper::GetDigitalInput(ControlMapper::kC_MissileOrPowerBomb, input) &&
          x490_gun->IsFidgeting()) {
        if (gpTweakPlayer->x229_31_gunNotFiringHolstersGun) {
          x49c_gunHolsterRemTime -= dt;
        }
      } else {
        x49c_gunHolsterRemTime = gpTweakPlayerGun->x40_gunNotFiringTime;
      }
    }

    if (needsHolster) {
      HolsterGun(mgr);
    }
    break;
  }
  case kGH_Drawing: {
    if (x49c_gunHolsterRemTime > 0.f) {
      x49c_gunHolsterRemTime -= dt;
    } else {
      x498_gunHolsterState = kGH_Drawn;
      x49c_gunHolsterRemTime = gpTweakPlayerGun->x40_gunNotFiringTime;
    }
    break;
  }
  case kGH_Holstered: {
    bool needsDraw = false;
    if (ControlMapper::GetDigitalInput(ControlMapper::kC_FireOrBomb, input) ||
        ControlMapper::GetDigitalInput(ControlMapper::kC_MissileOrPowerBomb, input) ||
        x3b8_grappleState == kGS_None) {
      needsDraw = true;
    } else if (gpTweakPlayer->x229_30_gunButtonTogglesHolster &&
               ControlMapper::GetPressInput(ControlMapper::kC_ToggleHolster, input)) {
      needsDraw = true;
    }

    if (x3b8_grappleState != kGS_None ||
        mgr.GetPlayerState()->GetCurrentVisor() == CPlayerState::kPV_Scan ||
        mgr.GetPlayerState()->GetTransitioningVisor() == CPlayerState::kPV_Scan) {
      needsDraw = false;
    }

    if (needsDraw) {
      DrawGun(mgr);
    }
    break;
  }
  case kGH_Holstering:
    if (x49c_gunHolsterRemTime > 0.f) {
      x49c_gunHolsterRemTime -= dt;
    } else {
      x498_gunHolsterState = kGH_Holstered;
    }
    break;
  default:
    break;
  }
}

void CPlayer::SetAimTargetId(TUniqueId target) {
  if (target == kInvalidUniqueId || x3f4_aimTarget != target) {
    x404_aimTargetAverage.clear();
  }
  x3f4_aimTarget = target;
}

void CPlayer::UpdateAimTargetPrediction(const CTransform4f& xf, CStateManager& mgr) {
  if (GetAimTargetId() == kInvalidUniqueId) {
    return;
  }

  const CActor* target = TCastToConstPtr< CActor >(mgr.GetObjectById(GetAimTargetId()));
  if (!target) {
    return;
  }

  x9c6_27_aimingAtProjectile = TCastToConstPtr< CGameProjectile >(target) != nullptr;
  CVector3f instantTarget = target->GetAimPosition(mgr, 0.f);
  CVector3f gunToTarget = instantTarget - xf.GetTranslation();
  float timeToTarget = gunToTarget.Magnitude() / x490_gun->GetBeamVelocity();
  CVector3f predictTarget = target->GetAimPosition(mgr, timeToTarget);
  CVector3f predictOffset = predictTarget - instantTarget;
  x3f8_targetAimPosition = instantTarget;

  if (predictOffset.Magnitude() < 0.1f) {
    x404_aimTargetAverage.AddValue(CVector3f::Zero());
  } else {
    x404_aimTargetAverage.AddValue(predictTarget - instantTarget);
  }

  if (x404_aimTargetAverage.GetAverage() && !x9c6_27_aimingAtProjectile) {
    x480_assistedTargetAim = instantTarget + *x404_aimTargetAverage.GetAverage();
  } else {
    x480_assistedTargetAim = predictTarget;
  }
}

void CPlayer::UpdateAssistedAiming(const CTransform4f& xf, CStateManager& mgr) {
  CTransform4f assistXf = xf;
  if (const CActor* target = TCastToConstPtr< CActor >(mgr.GetObjectById(GetAimTargetId()))) {
    CVector3f gunToTarget = x480_assistedTargetAim - xf.GetTranslation();
    CVector3f gunToTargetFlat = gunToTarget.DropZ();
    float gunToTargetFlatMag = gunToTargetFlat.Magnitude();
    CVector3f gunDirFlat = xf.GetColumn(kDY);
    gunDirFlat.SetZ(0.f);
    float gunDirFlatMag = gunDirFlat.Magnitude();
    if (gunToTargetFlat.CanBeNormalized() && gunDirFlat.CanBeNormalized()) {
      gunToTargetFlat /= gunToTargetFlatMag;
      gunDirFlat /= gunDirFlatMag;
      float az1 = atan2f(gunToTarget.GetZ(), gunToTargetFlatMag);
      float az2 = atan2f(xf.GetColumn(kDY).GetZ(), gunDirFlatMag);
      float vAngleDelta = az1 - az2;
      bool hasVAngleDelta = true;
      if (!x9c6_27_aimingAtProjectile &&
          fabsf(vAngleDelta) > gpTweakPlayer->x268_aimAssistVerticalAngle) {
        if (gpTweakPlayer->x22a_28_assistedAimingIgnoreVertical) {
          vAngleDelta = 0.f;
          hasVAngleDelta = false;
        } else if (vAngleDelta > 0.f) {
          vAngleDelta = gpTweakPlayer->x268_aimAssistVerticalAngle;
        } else {
          vAngleDelta = -gpTweakPlayer->x268_aimAssistVerticalAngle;
        }
      }

      bool targetToLeft = CVector3f::Cross(gunDirFlat, gunToTargetFlat).GetZ() > 0.f;
      float hAngleDelta = acosf(CMath::Limit(CVector3f::Dot(gunToTargetFlat, gunDirFlat), 1.f));
      bool hasHAngleDelta = true;
      if (!x9c6_27_aimingAtProjectile &&
          fabsf(hAngleDelta) > gpTweakPlayer->x264_aimAssistHorizontalAngle) {
        hAngleDelta = gpTweakPlayer->x264_aimAssistHorizontalAngle;
        if (gpTweakPlayer->x22a_27_assistedAimingIgnoreHorizontal) {
          hAngleDelta = 0.f;
          hasHAngleDelta = false;
        }
      }

      if (targetToLeft) {
        hAngleDelta = -hAngleDelta;
      }
      if (!hasVAngleDelta || !hasHAngleDelta) {
        vAngleDelta = 0.f;
        hAngleDelta = 0.f;
      }

      gunToTarget = CVector3f(sinf(hAngleDelta) * cosf(vAngleDelta),
                              cosf(hAngleDelta) * cosf(vAngleDelta), sinf(vAngleDelta));
      gunToTarget = xf.Rotate(gunToTarget);
      assistXf = CTransform4f::LookAt(CVector3f::Zero(), gunToTarget);
    }
  }

  x490_gun->SetAssistAimTransform(assistXf);
}

void CPlayer::UpdateGunTransform(const CVector3f& gunPos, CStateManager& mgr) {
#if !NONMATCHING
  CTransform4f xf = GetTransform();
#endif
  float eyeHeight = GetEyeHeight();
  CTransform4f camXf = mgr.GetCameraManager()->GetCurrentCameraTransform(mgr);
  CTransform4f gunXf = camXf;

  CVector3f viewGunPos;
  if (x2f8_morphBallState == kMS_Morphing) {
    viewGunPos = camXf * CVector3f(gunPos - CVector3f(0.f, 0.f, eyeHeight));
  } else {
    viewGunPos = GetEyePosition() + camXf.Rotate(gunPos - CVector3f(0.f, 0.f, eyeHeight));
  }
  gunXf.SetTranslation(viewGunPos);

  CUnitVector3f rightDir(camXf.GetColumn(kDX));
  switch (x498_gunHolsterState) {
  case kGH_Drawing: {
    float liftAngle = CMath::Limit(x49c_gunHolsterRemTime / 0.45f, 1.f);
    if (liftAngle > 0.01f) {
      CQuaternion quat = CQuaternion::AxisAngle(
          rightDir, CRelAngle::FromRadians(-liftAngle * gpTweakPlayerGun->x44_fixedVerticalAim));
      gunXf = quat.BuildTransform4f() * camXf.GetRotation();
      gunXf.SetTranslation(viewGunPos);
    }
    break;
  }
  case kGH_Holstered: {
    CQuaternion quat = CQuaternion::AxisAngle(
        rightDir, CRelAngle::FromRadians(-gpTweakPlayerGun->x44_fixedVerticalAim));
    gunXf = quat.BuildTransform4f() * camXf.GetRotation();
    gunXf.SetTranslation(viewGunPos);
    break;
  }
  case kGH_Holstering: {
    float liftAngle =
        1.f - CMath::Limit(x49c_gunHolsterRemTime / gpTweakPlayerGun->x3c_gunHolsterTime, 1.f);
    if (x2f8_morphBallState == kMS_Morphing) {
      liftAngle = 1.f - CMath::Limit(x49c_gunHolsterRemTime / 0.1f, 1.f);
    }
    if (liftAngle > 0.01f) {
      CQuaternion quat = CQuaternion::AxisAngle(
          rightDir, CRelAngle::FromRadians(-liftAngle * gpTweakPlayerGun->x44_fixedVerticalAim));
      gunXf = quat.BuildTransform4f() * camXf.GetRotation();
      gunXf.SetTranslation(viewGunPos);
    }
    break;
  }
  default:
    break;
  }

  x490_gun->SetTransform(gunXf);
  CTransform4f out = gunXf;
  UpdateAimTargetPrediction(out, mgr);
  UpdateAssistedAiming(out, mgr);
}

const CTransform4f& CPlayer::GetFirstPersonCameraTransform(CStateManager& mgr) const {
  return mgr.GetCameraManager()->GetFirstPersonCamera()->GetGunFollowTransform();
}

void CPlayer::UpdateDebugCamera(CStateManager& mgr) {}

void CPlayer::UpdateArmAndGunTransforms(float dt, CStateManager& mgr) {
  CVector3f grappleOffset = CVector3f::Zero();
  CVector3f gunOffset;
  if (x2f8_morphBallState == kMS_Morphed) {
    gunOffset = CVector3f(0.f, 0.f, 0.6f);
  } else {
    gunOffset = gpTweakPlayerGun->x4c_gunPosition;
    grappleOffset = x490_gun->GetGrappleArm().IsArmMoving()
                        ? CVector3f::Zero()
                        : gpTweakPlayerGun->x64_grapplingArmPosition;
    gunOffset[kDZ] += GetEyeHeight();
    grappleOffset[kDZ] += GetEyeHeight();
  }

  UpdateGunTransform(gunOffset + x76c_cameraBob->GetGunBobTransformation().GetTranslation(), mgr);
  UpdateGrappleArmTransform(grappleOffset, mgr, dt);
}

void CPlayer::ForceGunOrientation(const CTransform4f& xf, CStateManager& mgr) {
  ResetGun(mgr);
  x530_gunDir = xf.GetColumn(kDY);
  x490_gun->SetTransform(xf);
  UpdateArmAndGunTransforms(0.01f, mgr);
}

void CPlayer::Update(float dt, CStateManager& mgr) {
  SetCoefficientOfRestitutionModifier(0.f);
  UpdateMorphBallTransition(dt, mgr);

  CPlayerState::EBeamId newBeam = mgr.GetPlayerState()->GetCurrentBeam();
  if (x7ec_beam != newBeam) {
    x7ec_beam = newBeam;
    CModelData modelData(CStaticRes(gpTweakPlayerRes->GetBallTransitionBeamResId(x7ec_beam),
                                    x7d0_animRes.GetScale()));
    CModelData* ptr;
    if (modelData.IsNull()) {
      ptr = nullptr;
    } else {
      ptr = rs_new CModelData(modelData);
    }
    x7f0_ballTransitionBeamModel = ptr;
  }

  if (!mgr.GetPlayerState()->IsAlive()) {
    if (!x9f4_deathTime) {
      CSfxManager::KillAll(CSfxManager::kSC_Game);
      CStreamAudioManager::StopAll();
      if (x2f8_morphBallState == kMS_Unmorphed) {
        ApplySubmergedPitchBend(CSfxManager::SfxStart(SFXsam_death));
      }
    }

    float prevDeathTime = x9f4_deathTime;
    x9f4_deathTime += dt;
    if (x2f8_morphBallState != kMS_Unmorphed) {
      if (x9f4_deathTime >= 1.f && prevDeathTime < 1.f) {
        xa00_deathPowerBomb = x490_gun->DropPowerBomb(mgr);
      }
      if (x9f4_deathTime >= 4.f && prevDeathTime < 4.f) {
        ApplySubmergedPitchBend(CSfxManager::SfxStart(SFXsam_death));
      }
    }
  }

  switch (x2f8_morphBallState) {
  case kMS_Unmorphed:
  case kMS_Morphing:
  case kMS_Unmorphing:
    CTransform4f gunXf = GetModelData()->GetScaledLocatorTransform(rstl::string_l(kGunLocator));
    x7f4_gunWorldXf = GetTransform() * gunXf;
    break;
  case kMS_Morphed:
    break;
  }

  if (x2f8_morphBallState == kMS_Unmorphed) {
    UpdateAimTargetTimer(dt);
    UpdateAimTarget(mgr);
    UpdateOrbitModeTimer(dt);
  }
  UpdateOrbitPreventionTimer(dt);
  if (x2f8_morphBallState == kMS_Morphed) {
    x768_morphball->Update(dt, mgr);
  } else {
    x768_morphball->StopSounds();
  }
  if (x2f8_morphBallState == kMS_Morphing || x2f8_morphBallState == kMS_Unmorphing) {
    x768_morphball->UpdateEffects(dt, mgr);
  }
  UpdateGunAlpha();
  UpdateDebugCamera(mgr);
  UpdateVisorTransition(dt, mgr);
  mgr.SetActorAreaId(*this, mgr.GetWorld()->GetCurrentAreaId());
  UpdatePlayerSounds(dt);
  if (x26c_attachedActor != kInvalidUniqueId) {
    x270_attachedActorTime += dt;
  }

  x740_staticTimer = rstl::max_val(0.f, x740_staticTimer - dt);
  if (x740_staticTimer > 0.f) {
    x74c_visorStaticAlpha = rstl::max_val(0.f, x74c_visorStaticAlpha - x744_staticOutSpeed * dt);
  } else {
    x74c_visorStaticAlpha = rstl::min_val(1.f, x74c_visorStaticAlpha + x748_staticInSpeed * dt);
  }

  x274_energyDrain.ProcessEnergyDrain(mgr, dt);
  x4a4_moveSpeedAvg.AddValue(x4f8_moveSpeed);

  mgr.PlayerState()->UpdateStaticInterference(mgr, dt);
  if (!ShouldSampleFailsafe(mgr)) {
    CPhysicsActor::Stop();
  }

  xa30_samusExhaustedVoiceTimer = IsEnergyLow(mgr) ? xa30_samusExhaustedVoiceTimer - dt : 4.f;

  if (!mgr.GetCameraManager()->IsInCinematicCamera() && xa30_samusExhaustedVoiceTimer <= 0.f) {
    StartSamusVoiceSfx(SFXsam_vox_exhausted, 127, 7);
    xa30_samusExhaustedVoiceTimer = 4.f;
  }
}

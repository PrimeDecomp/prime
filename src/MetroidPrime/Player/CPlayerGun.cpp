#include "MetroidPrime/Player/CPlayerGun.hpp"

#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CRainSplashGenerator.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/CWorldShadow.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Player/CGrappleArm.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Tweaks/CTweakGunRes.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayerGun.hpp"
#include "MetroidPrime/Weapons/CAuxWeapon.hpp"
#include "MetroidPrime/Weapons/CIceBeam.hpp"
#include "MetroidPrime/Weapons/CPhazonBeam.hpp"
#include "MetroidPrime/Weapons/CPlasmaBeam.hpp"
#include "MetroidPrime/Weapons/CPowerBeam.hpp"
#include "MetroidPrime/Weapons/CPowerBomb.hpp"
#include "MetroidPrime/Weapons/CWaveBeam.hpp"
#include "MetroidPrime/Weapons/GunController/CGunMotion.hpp"
#include "MetroidPrime/Weapons/WeaponTypes.hpp"
#include "MetroidPrime/SFX/Weapons.h"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "Collision/CMaterialFilter.hpp"
#include "Collision/CMaterialList.hpp"

#include "MetaRender/CCubeRenderer.hpp"

#include "math.h"

static float kVerticalAngleTable[3] = {-30.f, 0.f, 30.f};
static float kHorizontalAngleTable[3] = {30.f, 30.f, 30.f};
static float kVerticalVarianceTable[3] = {30.f, 30.f, 30.f};

static const CVector3f sGunScale(2.f, 2.f, 2.f);

static const uint skBeamAnimIds[4] = {
    0,
    1,
    2,
    1,
};

static const CPlayerState::EItemType skBeamArr[4] = {
    CPlayerState::kIT_PowerBeam,
    CPlayerState::kIT_IceBeam,
    CPlayerState::kIT_WaveBeam,
    CPlayerState::kIT_PlasmaBeam,
};

static const CPlayerState::EItemType skBeamComboArr[4] = {
    CPlayerState::kIT_SuperMissile,
    CPlayerState::kIT_IceSpreader,
    CPlayerState::kIT_Wavebuster,
    CPlayerState::kIT_Flamethrower,
};

// static ControlMapper::ECommands mBeamCtrlCmd[4] = {
//     ControlMapper::kC_PowerBeam,
//     ControlMapper::kC_IceBeam,
//     ControlMapper::kC_WaveBeam,
//     ControlMapper::kC_PlasmaBeam,
// };

// constexpr std::array<u16, 4> skFromMissileSound{
//     SFXwpn_from_missile_power,
//     SFXwpn_from_missile_ice,
//     SFXwpn_from_missile_wave,
//     SFXwpn_from_missile_plasma,
// };

// constexpr std::array<u16, 4> skFromBeamSound{
//     SFXsfx0000,
//     SFXwpn_from_beam_ice,
//     SFXwpn_from_beam_wave,
//     SFXwpn_from_beam_plasma,
// };

// constexpr std::array<u16, 4> skToMissileSound{
//     SFXwpn_to_missile_power,
//     SFXwpn_to_missile_ice,
//     SFXwpn_to_missile_wave,
//     SFXwpn_to_missile_plasma,
// };

// constexpr std::array<u16, 4> skIntoBeamSound{
//     SFXsfx0000,
//     SFXwpn_into_beam_ice,
//     SFXwpn_into_beam_wave,
//     SFXwpn_into_beam_plasma,
// };

static const float kChargeSpeed = 1.f / CPlayerState::GetMissileComboChargeFactor();
static const float kChargeFxStart = 1.f / CPlayerState::GetMissileComboChargeFactor();
static const float kChargeAnimStart = 0.25f / CPlayerState::GetMissileComboChargeFactor();
static const float kChargeStart = 0.025f / CPlayerState::GetMissileComboChargeFactor();

// constexpr std::array<u16, 4> skBeamChargeUpSound{
//     SFXwpn_chargeup_power,
//     SFXwpn_chargeup_ice,
//     SFXwpn_chargeup_wave,
//     SFXwpn_chargeup_plasma,
// };

static const CPlayerState::EItemType skItemArr[2] = {
    CPlayerState::kIT_Invalid,
    CPlayerState::kIT_Missiles,
};

// static const ushort skItemEmptySound[2] = {
//     SFXsfx0000,
//     SFXwpn_empty_action,
// };

static const float chargeShakeTbl[3] = {
    -0.001f,
    0.f,
    0.001f,
};

static const CMaterialFilter sAimFilter = CMaterialFilter::MakeIncludeExclude(
    CMaterialList(kMT_Solid), CMaterialList(kMT_ProjectilePassthrough));

static const CModelFlags kThermalFlags[4] = {
    CModelFlags(CModelFlags::kT_Opaque, CColor(1.f, 1.f, 1.f, 1.0f)),
    CModelFlags(CModelFlags::kT_Blend, CColor(0.f, 0.f, 0.f, 0.5f)),
    CModelFlags(CModelFlags::kT_Opaque, CColor(1.f, 1.f, 1.f, 1.0f)),
    CModelFlags(CModelFlags::kT_Opaque, CColor(1.f, 1.f, 1.f, 1.0f)),
};

static const CModelFlags kHandThermalFlag(CModelFlags::kT_Additive, CColor::White());

static const CModelFlags kHandHoloFlag((CModelFlags::ETrans)1, // TODO: ETrans 1?
                                       CColor(0.75f, 0.5f, 0.f, 1.f));

CPlayerGun::CPlayerGun(TUniqueId playerId)
: x0_lights(8, CVector3f::Zero(), 4, 4, false, false, false, 0.1)
, x2ec_lastFireButtonStates(0)
, x2f0_pressedFireButtonStates(0)
, x2f4_fireButtonStates(0)
, x2f8_stateFlags(0x1)
, x2fc_fidgetAnimBits(0)
, x300_remainingMissiles(0)
, x304_(0)
, x308_bombCount(3)
, x30c_rapidFireShots(0)
, x310_currentBeam(CPlayerState::kBI_Power)
, x314_nextBeam(CPlayerState::kBI_Power)
, x318_comboAmmoIdx(0)
, x31c_missileMode(kMM_Inactive)
, x320_currentAuxBeam(CPlayerState::kBI_Power)
, x324_idleState(kIS_Four)
, x328_animSfxPitch(0.f)
, x32c_chargePhase(kCP_NotCharging)
, x330_chargeState(kCS_Normal)
, x334_(0)
, x338_nextState(kNS_StatusQuo)
, x33c_phazonBeamState(kPBS_Inactive)
, x340_chargeBeamFactor(0.f)
, x344_comboXferTimer(0.f)
, x348_chargeCooldownTimer(0.f)
, x34c_shakeX(0.f)
, x350_shakeZ(0.f)
, x354_bombFuseTime(gpTweakPlayerGun->GetBombFuseTime())
, x358_bombDropDelayTime(gpTweakPlayerGun->GetBombDropDelayTime())
, x35c_bombTime(0.f)
, x360_(0.f)
, x364_gunStrikeCoolTimer(0.f)
, x368_idleWanderDelayTimer(0.f)
, x36c_(1.f)
, x370_gunMotionSpeedMult(1.f)
, x374_(0.f)
, x378_shotSmokeStartTimer(0.f)
, x37c_rapidFireShotsDecayTimer(0.f)
, x380_shotSmokeTimer(0.f)
, x384_gunStrikeDelayTimer(0.f)
, x388_enterFreeLookDelayTimer(0.f)
, x38c_muzzleEffectVisTimer(0.f)
, x390_cooldown(0.f)
, x394_damageTimer(0.f)
, x398_damageAmt(0.f)
, x39c_phazonMorphT(0.f)
, x3a0_missileExitTimer(0.f)
, x3dc_damageLocation(CVector3f::Zero())
, x3e8_xf(CTransform4f::Identity())
, x418_beamLocalXf(CTransform4f::Identity())
, x448_elbowWorldXf(CTransform4f::Identity())
, x478_assistAimXf(CTransform4f::Identity())
, x4a8_gunWorldXf(CTransform4f::Identity())
, x4d8_gunLocalXf(CTransform4f::Identity())
, x508_elbowLocalXf(CTransform4f::Identity())
, x538_playerId(playerId)
, x53a_powerBomb(kInvalidUniqueId)
, x53c_lightId(kInvalidUniqueId)
, x550_camBob(CPlayerCameraBob::kCBT_One, CPlayerCameraBob::GetCameraBobExtent(),
              CPlayerCameraBob::GetCameraBobPeriod())
, x658_(1)
, x65c_(0.f)
, x660_(0.f)
, x664_(0.f)
, x668_aimVerticalSpeed(gpTweakPlayerGun->GetAimVerticalSpeed())
, x66c_aimHorizontalSpeed(gpTweakPlayerGun->GetAimHorizontalSpeed())
, x678_morph(gpTweakPlayerGun->GetGunTransformTime(), gpTweakPlayerGun->GetHoloHoldTime())
, x6a0_motionState()
, x6c8_hologramClipCube(CVector3f(-0.29329199f, 0.f, -0.2481945f),
                        CVector3f(0.29329199f, 1.292392f, 0.2481945f))
, x6e0_rightHandModel(CAnimRes(gpTweakGunRes->xc_rightHand, 0, CVector3f(3.f, 3.f, 3.f), 0, true))
, x72c_currentBeam(nullptr)
, x730_outgoingBeam(nullptr)
, x734_loadingBeam(nullptr)
, x738_nextBeam(nullptr)
, x73c_gunMotion(new CGunMotion(gpTweakGunRes->x4_gunMotion, sGunScale))
, x740_grappleArm(new CGrappleArm(sGunScale))
, x744_auxWeapon(new CAuxWeapon(playerId))
, x748_rainSplashGenerator(new CRainSplashGenerator(sGunScale, 20, 2, 0.f, 0.125f))
, x74c_powerBeam(
      new CPowerBeam(gpTweakGunRes->x10_powerBeam, kWT_Power, playerId, kMT_Player, sGunScale))
, x750_iceBeam(new CIceBeam(gpTweakGunRes->x14_iceBeam, kWT_Ice, playerId, kMT_Player, sGunScale))
, x754_waveBeam(
      new CWaveBeam(gpTweakGunRes->x18_waveBeam, kWT_Wave, playerId, kMT_Player, sGunScale))
, x758_plasmaBeam(
      new CPlasmaBeam(gpTweakGunRes->x1c_plasmaBeam, kWT_Plasma, playerId, kMT_Player, sGunScale))
, x75c_phazonBeam(
      new CPhazonBeam(gpTweakGunRes->x20_phazonBeam, kWT_Phazon, playerId, kMT_Player, sGunScale))
, x760_selectableBeams(nullptr)
, x774_holoTransitionGen(
      new CElementGen(gpSimplePool->GetObj(SObjectTag('PART', gpTweakGunRes->x24_holoTransition))))
, x82c_shadow(new CWorldShadow(32, 32, true))
, x830_chargeRumbleHandle(-1)
, x832_24_coolingCharge(false)
, x832_25_chargeEffectVisible(false)
, x832_26_comboFiring(false)
, x832_27_chargeAnimStarted(false)
, x832_28_readyForShot(false)
, x832_29_lockedOn(false)
, x832_30_requestReturnToDefault(false)
, x832_31_inRestPose(true)
, x833_24_notFidgeting(true)
, x833_25_(false)
, x833_26_(false)
, x833_27_(false)
, x833_28_phazonBeamActive(false)
, x833_29_pointBlankWorldSurface(false)
, x833_30_canShowAuxMuzzleEffect(true)
, x833_31_inFreeLook(false)
, x834_24_charging(false)
, x834_25_gunMotionFidgeting(false)
, x834_26_animPlaying(false)
, x834_27_underwater(false)
, x834_28_requestImmediateRecharge(false)
, x834_29_frozen(false)
, x834_30_inBigStrike(false)
, x834_31_gunMotionInFidgetBasePosition(false)
, x835_24_canFirePhazon(false)
, x835_25_inPhazonBeam(false)
, x835_26_phazonBeamMorphing(false)
, x835_27_intoPhazonBeam(false)
, x835_28_bombReady(false)
, x835_29_powerBombReady(false)
, x835_30_inPhazonPool(false)
, x835_31_actorAttached(false) {

  x6e0_rightHandModel.SetSortThermal(true);
  kVerticalAngleTable[2] = gpTweakPlayerGun->GetUpLookAngle();
  kVerticalAngleTable[0] = gpTweakPlayerGun->GetDownLookAngle();
  kHorizontalAngleTable[1] = gpTweakPlayerGun->GetHorizontalSpread();
  kHorizontalAngleTable[2] = gpTweakPlayerGun->GetHighHorizontalSpread();
  kHorizontalAngleTable[0] = gpTweakPlayerGun->GetLowHorizontalSpread();
  kVerticalVarianceTable[1] = gpTweakPlayerGun->GetVerticalSpread();
  kVerticalVarianceTable[2] = gpTweakPlayerGun->GetHighVerticalSpread();
  kVerticalVarianceTable[0] = gpTweakPlayerGun->GetLowVerticalSpread();
  CMotionState::SetExtendDistance(gpTweakPlayerGun->GetGunExtendDistance());

  InitBeamData();
  InitBombData();
  InitMuzzleData();
  InitCTData();
  LoadHandAnimTokens();
  x550_camBob.SetPlayerVelocity(CVector3f::Zero());
  x550_camBob.SetBobMagnitude(0.f);
  x550_camBob.SetBobTimeScale(0.f);
}

CPlayerGun::~CPlayerGun() {}

void CPlayerGun::AddToRenderer(const CFrustumPlanes& frustum, const CStateManager&) const {
  rstl::optional_object< CModelData >& model = x72c_currentBeam->SolidModelData();
  if (model)
    model->RenderParticles(frustum);
}

void CPlayerGun::PreRender(CStateManager& mgr, const CFrustumPlanes& frustum,
                           const CVector3f& camPos) {
  const CPlayerState& playerState = *mgr.GetPlayerState();
  if (playerState.GetCurrentVisor() == CPlayerState::kPV_Scan)
    return;

  CPlayerState::EPlayerVisor activeVisor = playerState.GetActiveVisor(mgr);
  switch (activeVisor) {
  case CPlayerState::kPV_Thermal:
    float rgb =
        CMath::Clamp(0.6f, 0.5f * x380_shotSmokeTimer + 0.6f - x378_shotSmokeStartTimer, 1.f);
    x0_lights.BuildConstantAmbientLighting(CColor(rgb, rgb, rgb, 1.f));
    break;

  case CPlayerState::kPV_Combat: {
    CAABox aabb = x72c_currentBeam->GetBounds(CTransform4f::Translate(camPos) * x4a8_gunWorldXf);
    if (mgr.GetNextAreaId() != kInvalidAreaId) {
      x0_lights.SetFindShadowLight(true);
      x0_lights.SetShadowDynamicRangeThreshold(0.25f);
      x0_lights.BuildAreaLightList(mgr, mgr.GetWorld()->GetAreaAlways(mgr.GetNextAreaId()), aabb);
    }
    x0_lights.BuildDynamicLightList(mgr, aabb);
    if (x0_lights.HasShadowLight()) {
      if (x72c_currentBeam->IsLoaded()) {
        x82c_shadow->BuildLightShadowTexture(mgr, mgr.GetNextAreaId(),
                                             x0_lights.GetShadowLightIndex(), aabb, true, false);
      }
    } else {
      x82c_shadow->ResetBlur();
    }
    break;
  }
  default:
    break;
  }

  if (x740_grappleArm->GetActive())
    x740_grappleArm->PreRender(mgr, frustum, camPos);

  if (x678_morph.GetGunState() != CGunMorph::kGS_OutWipeDone ||
      activeVisor == CPlayerState::kPV_XRay)
    x6e0_rightHandModel.AnimationData()->PreRender();

  if (x833_28_phazonBeamActive)
    gpRender->AllocatePhazonSuitMaskTexture();
}

void CPlayerGun::TouchModel(const CStateManager&) const {}

CVector3f CPlayerGun::ConvertToScreenSpace(const CVector3f& pos, const CGameCamera&) const {
  return pos;
}

void CPlayerGun::DrawArm(const CStateManager&, const CVector3f&, const CModelFlags&) const {}

void CPlayerGun::Render(const CStateManager&, const CVector3f&, const CModelFlags&) const {}

void CPlayerGun::GetLctrWithShake(CTransform4f& xfOut, const CModelData&, const rstl::string&, bool,
                                  bool) {}

void CPlayerGun::PlayAnim(NWeaponTypes::EGunAnimType type, bool) {}

void CPlayerGun::Update(float, float, float, CStateManager&) {}

void CPlayerGun::ProcessInput(const CFinalInput&, CStateManager&) {}

void CPlayerGun::ProcessChargeState(int releasedStates, int pressedStates, CStateManager& mgr,
                                    float dt) {
  if ((releasedStates & 0x1) != 0) {
    ResetCharged(dt, mgr);
    return;
  }
  if ((pressedStates & 0x1) != 0) {
    if (x32c_chargePhase == kCP_NotCharging && (pressedStates & 0x1) != 0 &&
        x348_chargeCooldownTimer == 0.f && x832_28_readyForShot == 1) {
      UpdateNormalShotCycle(dt, mgr);
      x32c_chargePhase = kCP_ChargeRequested;
    }
  } else {
    const CPlayerState* state = mgr.GetPlayerState();
    if (state->HasPowerUp(CPlayerState::kIT_Missiles) && (pressedStates & 0x2) != 0) {
      if (x32c_chargePhase >= kCP_FxGrown) {
        if (state->HasPowerUp(skBeamComboArr[size_t(x310_currentBeam)]))
          ActivateCombo(mgr);
      } else if (x32c_chargePhase == kCP_NotCharging) {
        FireSecondary(dt, mgr);
      }
    }
  }
}

void CPlayerGun::ResetNormal(CStateManager& mgr) {
  Reset(mgr, false);
  x832_28_readyForShot = false;
}

void CPlayerGun::ResetCharged(float dt, CStateManager& mgr) {
  if (x832_26_comboFiring == true) {
    return;
  }

  if (x32c_chargePhase >= kCP_FxGrowing) {
    x833_30_canShowAuxMuzzleEffect = false;
    UpdateNormalShotCycle(dt, mgr);
    x832_24_coolingCharge = true;
    CancelCharge(mgr, true);
  } else if (x32c_chargePhase != kCP_NotCharging) {
    x320_currentAuxBeam = x310_currentBeam;
    x833_30_canShowAuxMuzzleEffect = true;
    x32c_chargePhase = kCP_ChargeDone;
  }
  StopChargeSound(mgr);
}

void CPlayerGun::ProcessNormalState(int releasedStates, int pressedStates, CStateManager& mgr,
                                    float dt) {
  if ((releasedStates & 0x1) != 0) {
    ResetNormal(mgr);
    return;
  }

  if ((pressedStates & 0x1) != 0 && x348_chargeCooldownTimer == 0.f &&
      x832_28_readyForShot == true) {
    UpdateNormalShotCycle(dt, mgr);
    return;
  }
  if ((pressedStates & 0x2) != 0) {
    FireSecondary(dt, mgr);
  }
}

bool CPlayerGun::ExitMissile() {
  if ((x2f8_stateFlags & 0x1) != 0x1) {
    if ((x2f8_stateFlags & 0x10) != 0x10 && x338_nextState != kNS_ExitMissile) {
      x338_nextState = kNS_ExitMissile;
      PlayAnim(NWeaponTypes::kGAT_FromMissile, false);
    }
    return false;
  }
  return true;
}

void CPlayerGun::UpdateNormalShotCycle(float, CStateManager&) {}

void CPlayerGun::FireSecondary(float, CStateManager&) {}

void CPlayerGun::DropBomb(CPlayerGun::EBWeapon, CStateManager&) {}

void CPlayerGun::ActivateCombo(CStateManager&) {}

void CPlayerGun::EnableChargeFx(CPlayerState::EChargeStage, CStateManager&) {}

void CPlayerGun::UpdateChargeState(float, CStateManager&) {}

void CPlayerGun::Reset(CStateManager& mgr, bool b1) {
  x72c_currentBeam->Reset(mgr);
  x832_25_chargeEffectVisible = false;
  x832_24_coolingCharge = false;
  x833_26_ = false;
  x348_chargeCooldownTimer = 0.f;
  SetGunLightActive(false, mgr);
  if ((x2f8_stateFlags & 0x10) != 0x10) {
    if (!b1 && (x2f8_stateFlags & 0x2) != 0x2) {
      if ((x2f8_stateFlags & 0x8) != 0x8) {
        x2f8_stateFlags |= 0x1;
        x2f8_stateFlags &= ~0x16;
      }
      x318_comboAmmoIdx = 0;
      x31c_missileMode = kMM_Inactive;
    }
  } else {
    x2f8_stateFlags &= ~0x7;
  }
}

void CPlayerGun::ResetCharge(CStateManager& mgr, bool resetBeam) {
  if (x32c_chargePhase != kCP_NotCharging)
    StopChargeSound(mgr);

  if ((x2f8_stateFlags & 0x8) != 0x8 && (x2f8_stateFlags & 0x10) != 0x10) {
    bool doResetBeam =
        mgr.GetPlayer()->GetMorphballTransitionState() == CPlayer::kMS_Morphed || resetBeam;
    if (x832_27_chargeAnimStarted || doResetBeam)
      PlayAnim(NWeaponTypes::kGAT_BasePosition, false);
    if (doResetBeam)
      x72c_currentBeam->EnableSecondaryFx(CGunWeapon::kSFT_None);
    if ((x2f8_stateFlags & 0x2) != 0x2 || x330_chargeState != kCS_Normal) {
      if ((x2f8_stateFlags & 0x8) != 0x8) {
        x2f8_stateFlags |= 0x1;
        x2f8_stateFlags &= ~0x16;
      }
      x318_comboAmmoIdx = 0;
      x31c_missileMode = kMM_Inactive;
    }
  }

  x32c_chargePhase = kCP_NotCharging;
  x330_chargeState = kCS_Normal;
  x320_currentAuxBeam = x310_currentBeam;
  x833_30_canShowAuxMuzzleEffect = true;
  x832_27_chargeAnimStarted = false;
  x832_26_comboFiring = false;
  x344_comboXferTimer = 0.f;
}

#define SFXwpn_morph_out_wipe 1774

void CPlayerGun::ResetBeamParams(CStateManager& mgr, const CPlayerState& playerState,
                                 bool playSelectionSfx) {
  StopContinuousBeam(mgr, true);
  if (playerState.ItemEnabled(CPlayerState::kIT_ChargeBeam)) {
    ResetCharge(mgr, false);
  }
  const CAnimPlaybackParms parms(skBeamAnimIds[size_t(x314_nextBeam)], -1, 1.f, true);
  x6e0_rightHandModel.AnimationData()->SetAnimation(parms, false);
  Reset(mgr, false);
  if (playSelectionSfx) {
    CSfxManager::SfxStart(SFXwpn_morph_out_wipe, 0x7f, 0x40, true, CSfxManager::kMaxPriority, false,
                          CSfxManager::kAllAreas);
  }
  x2ec_lastFireButtonStates &= ~0x1;
  x320_currentAuxBeam = x310_currentBeam;
  x833_30_canShowAuxMuzzleEffect = true;
}

void CPlayerGun::ChangeWeapon(const CPlayerState&, CStateManager&) {}

void CPlayerGun::StartPhazonBeamTransition(bool, CStateManager&, CPlayerState&) {}

void CPlayerGun::HandleWeaponChange(const CFinalInput&, CStateManager&) {}

void CPlayerGun::HandleBeamChange(const CFinalInput&, CStateManager&) {}

void CPlayerGun::SetPhazonBeamMorph(bool) {}

void CPlayerGun::HandlePhazonBeamChange(CStateManager&) {}

void CPlayerGun::InitBeamData() {
  x760_selectableBeams[0] = x74c_powerBeam.get();
  x760_selectableBeams[1] = x750_iceBeam.get();
  x760_selectableBeams[2] = x754_waveBeam.get();
  x760_selectableBeams[3] = x758_plasmaBeam.get();
  x72c_currentBeam = x760_selectableBeams[0];
  x738_nextBeam = x72c_currentBeam;
  x774_holoTransitionGen->SetParticleEmission(true);
}

void CPlayerGun::InitBombData() {
  for (int i = 0; i < 2; ++i)
    x784_bombEffects.push_back(rstl::reserved_vector< TLockedToken< CGenDescription >, 2 >());

  CToken obj1 = gpSimplePool->GetObj(SObjectTag('PART', gpTweakGunRes->x28_bombSet));
  CToken obj2 = gpSimplePool->GetObj(SObjectTag('PART', gpTweakGunRes->x2c_bombExplode));
  CToken obj3 = gpSimplePool->GetObj(SObjectTag('PART', gpTweakGunRes->x30_powerBombExplode));

  x784_bombEffects[0].push_back(obj1);
  x784_bombEffects[0].push_back(obj2);
  x784_bombEffects[1].push_back(obj3);
  x784_bombEffects[1].push_back(obj3);
}

void CPlayerGun::InitMuzzleData() {
  for (int i = 0; i < 5; ++i) {
    SObjectTag tag('PART', (i < 0 || 4 < i) ? kInvalidAssetId : gpTweakGunRes->xa4_auxMuzzle[i]);
    x7c0_auxMuzzleEffects.push_back(gpSimplePool->GetObj(tag));
    // TODO: not likely correct, maybe need improvements to auto_ptr
    x800_auxMuzzleGenerators.push_back(new CElementGen(x7c0_auxMuzzleEffects.back()));
    x800_auxMuzzleGenerators.back()->SetParticleEmission(false);
  }
}

void CPlayerGun::InitCTData() { x77c_comboXferGen = rstl::auto_ptr< CElementGen >(); }

float CPlayerGun::GetBeamVelocity() const {
  if (x72c_currentBeam->IsLoaded())
    return x72c_currentBeam->GetVelocityInfo().GetVelocity(int(x330_chargeState)).GetY();
  return 10.f;
}

TUniqueId CPlayerGun::GetTargetId(CStateManager& mgr) {
  TUniqueId ret = mgr.GetPlayer()->GetOrbitTargetId();
  if (x832_26_comboFiring && ret == kInvalidUniqueId && x310_currentBeam == CPlayerState::kBI_Wave)
    ret = mgr.GetPlayer()->GetOrbitNextTargetId();

  if (ret != kInvalidUniqueId) {
    const CActor* act = TCastToConstPtr< CActor >(mgr.GetObjectById(ret));
    if (act != nullptr) {
      if (!act->GetMaterialList().HasMaterial(kMT_Target)) {
        ret = kInvalidUniqueId;
      }
    }
  }

  return ret;
}

CPlayerGun::CGunMorph::CGunMorph(float gunTransformTime, float holoHoldTime)
: x0_yLerp(0.f)
, x4_gunTransformTime(CMath::Sign(gunTransformTime))
, x8_remTime(0.f)
, xc_speed(0.1f)
, x10_holoHoldTime(fabs(holoHoldTime))
, x14_remHoldTime(2.f)
, x18_transitionFactor(1.f)
, x1c_dir(kD_Done)
, x20_gunState(kGS_OutWipeDone)
, x24_24_morphing(false)
, x24_25_weaponChanged(false) {}

void CPlayerGun::CGunMorph::StartWipe(CPlayerGun::CGunMorph::EDir dir) {
  x14_remHoldTime = x10_holoHoldTime;
  if (dir == kD_In && x20_gunState == kGS_InWipeDone)
    return;

  if (x1c_dir != dir && x20_gunState != kGS_OutWipe) {
    x8_remTime = x4_gunTransformTime;
    xc_speed = 1.f / x4_gunTransformTime;
  } else if (x20_gunState != kGS_InWipe) {
    x8_remTime = x4_gunTransformTime - x8_remTime;
  }

  x1c_dir = dir;
  x20_gunState = x1c_dir == kD_In ? kGS_InWipe : kGS_OutWipe;
  x24_24_morphing = true;
}

CPlayerGun::CGunMorph::EMorphEvent CPlayerGun::CGunMorph::Update(float inY, float outY, float dt) {
  EMorphEvent ret = kME_None;

  switch (x20_gunState) {
  case kGS_InWipeDone:
    x14_remHoldTime -= dt;
    if (x14_remHoldTime <= 0.f && x24_25_weaponChanged) {
      StartWipe(kD_Out);
      x24_25_weaponChanged = false;
      x14_remHoldTime = 0.f;
      ret = kME_InWipeDone;
    }
    // explicitly no break

  case kGS_OutWipeDone:
  case kGS_InWipe:
  case kGS_OutWipe:
  default:
    if (x24_24_morphing) {
      float omt = x8_remTime * xc_speed;
      float t = 1.f - omt;
      if (x1c_dir == kD_In) {
        x0_yLerp = omt * outY + t * inY;
        x18_transitionFactor = omt;
      } else {
        x0_yLerp = omt * inY + t * outY;
        x18_transitionFactor = t;
      }

      if (x8_remTime <= 0.f) {
        x24_24_morphing = false;
        x8_remTime = 0.f;
        if (x1c_dir == kD_In) {
          x20_gunState = kGS_InWipeDone;
          x18_transitionFactor = 0.f;
        } else {
          x18_transitionFactor = 1.f;
          x20_gunState = kGS_OutWipeDone;
          x1c_dir = kD_Done;
          ret = kME_OutWipeDone;
        }
      } else {
        x8_remTime -= dt;
      }
    }
  }

  return ret;
}

void CPlayerGun::UpdateWeaponFire(float dt, CPlayerState& playerState, CStateManager& mgr) {
  u32 oldFiring = x2ec_lastFireButtonStates;
  x2ec_lastFireButtonStates = x2f4_fireButtonStates;
  u32 pressedStates = x2f4_fireButtonStates & (oldFiring ^ x2f4_fireButtonStates);
  x2f0_pressedFireButtonStates = pressedStates;
  u32 releasedStates = oldFiring & (oldFiring ^ x2f4_fireButtonStates);
  x832_28_readyForShot = false;

  CPlayer& player = *mgr.Player();
  if (!x832_24_coolingCharge && !x834_30_inBigStrike) {
    float coolDown = x72c_currentBeam->GetWeaponInfo().x0_coolDown;
    if ((pressedStates & 0x1) == 0) {
      if (x390_cooldown >= coolDown) {
        x390_cooldown = coolDown;
        if (player.GetMorphballTransitionState() == CPlayer::kMS_Unmorphed &&
            playerState.ItemEnabled(CPlayerState::kIT_ChargeBeam) &&
            player.GetGunHolsterState() == CPlayer::kGH_Drawn &&
            player.GetGrappleState() == CPlayer::kGS_None &&
            playerState.GetTransitioningVisor() != CPlayerState::kPV_Scan &&
            playerState.GetCurrentVisor() != CPlayerState::kPV_Scan &&
            (x2ec_lastFireButtonStates & 0x1) != 0 && x32c_chargePhase == kCP_NotCharging) {
          x832_28_readyForShot = true;
          pressedStates |= 0x1;
          x390_cooldown = 0.f;
        }
      }
    } else if (x390_cooldown >= coolDown) {
      x832_28_readyForShot = true;
      x390_cooldown = 0.f;
    }
    x390_cooldown += dt;
  }

  if (x834_28_requestImmediateRecharge)
    x834_28_requestImmediateRecharge = (x2ec_lastFireButtonStates & 0x1) != 0;

  if (player.GetMorphballTransitionState() == CPlayer::kMS_Morphed) {
    x835_28_bombReady = false;
    x835_29_powerBombReady = false;
    if (!x835_31_actorAttached) {
      x835_28_bombReady = true;
      if (x53a_powerBomb != kInvalidUniqueId && !mgr.CanCreateProjectile(x538_playerId, kWT_PowerBomb, 1)) {
        const CPowerBomb* pb = static_cast<const CPowerBomb*>(mgr.GetObjectById(x53a_powerBomb));
        if (pb && pb->GetCurTime() <= 4.25f) {
          x835_28_bombReady = false;
        } else {
          x53a_powerBomb = kInvalidUniqueId;
        }
      }
      if (((pressedStates & 0x1) != 0 || x32c_chargePhase != kCP_NotCharging) &&
          playerState.HasPowerUp(CPlayerState::kIT_MorphBallBombs)) {
        if (x835_28_bombReady)
          DropBomb(kBW_Bomb, mgr);
      } else if (playerState.HasPowerUp(CPlayerState::kIT_PowerBombs) &&
                 playerState.GetItemAmount(CPlayerState::kIT_PowerBombs) > 0) {
        x835_29_powerBombReady = mgr.CanCreateProjectile(x538_playerId, kWT_PowerBomb, 1) &&
                                 mgr.CanCreateProjectile(x538_playerId, kWT_Bomb, 1);
        if ((pressedStates & 0x2) != 0 && x835_29_powerBombReady)
          DropBomb(kBW_PowerBomb, mgr);
      }
    }
  } else if ((x2f8_stateFlags & 0x8) != 0x8 &&
             player.GetMorphballTransitionState() == CPlayer::kMS_Unmorphed) {
    if ((pressedStates & 0x2) != 0 && x318_comboAmmoIdx == 0 && (x2f8_stateFlags & 0x2) != 0x2 &&
        x32c_chargePhase == kCP_NotCharging) {
      u32 missileCount = playerState.GetItemAmount(CPlayerState::kIT_Missiles);
      if (x338_nextState != kNS_EnterMissile && x338_nextState != kNS_ExitMissile) {
        if (playerState.HasPowerUp(CPlayerState::kIT_Missiles) && missileCount > 0) {
          x300_remainingMissiles = missileCount;
          if (x300_remainingMissiles > 5)
            x300_remainingMissiles = 5;
          if (!x835_25_inPhazonBeam) {
            x2f8_stateFlags &= ~0x1;
            x2f8_stateFlags |= 0x6;
            x318_comboAmmoIdx = 1;
            x31c_missileMode = kMM_Active;
          }
          FireSecondary(dt, mgr);
        } else {
          if (!CSfxManager::IsPlaying(x2e4_invalidSfx)) {
            x2e4_invalidSfx = NWeaponTypes::play_sfx(SFXwpn_invalid_action, x834_27_underwater, false, 0x4a);
          } else {
            x2e4_invalidSfx.Clear();
          }
        }
      }
    } else {
      if (x3a4_fidget.GetState() == CFidget::kS_NoFidget) {
        if ((x2f8_stateFlags & 0x10) == 0x10 && x744_auxWeapon->IsComboFxActive(mgr)) {
          if (x2ec_lastFireButtonStates == 0 ||
              (x310_currentBeam == CPlayerState::kBI_Wave && x833_29_pointBlankWorldSurface)) {
            StopContinuousBeam(mgr, (x2f8_stateFlags & 0x8) == 0x8);
          }
        } else {
          if (mgr.GetPlayerState()->ItemEnabled(CPlayerState::kIT_ChargeBeam) &&
              x33c_phazonBeamState == kPBS_Inactive)
            ProcessChargeState(releasedStates, pressedStates, mgr, dt);
          else
            ProcessNormalState(releasedStates, pressedStates, mgr, dt);
        }
      }
    }
  }
}

void CPlayerGun::ResetIdle(CStateManager& mgr) {
  CFidget::EState fidgetState = x3a4_fidget.GetState();
  x370_gunMotionSpeedMult = 1.f;
  x550_camBob.SetState(CPlayerCameraBob::kCBS_GunFireNoBob, mgr);
  if (fidgetState != CFidget::kS_NoFidget) {
    if (fidgetState == CFidget::kS_Loading) {
      UnLoadFidget();
    }
    ReturnArmAndGunToDefault(mgr, true);
  }
  x3a4_fidget.ResetAll();
  ReturnToRestPose();
  if (x324_idleState != kIS_NotIdle)
    x324_idleState = kIS_NotIdle;
  if (!x740_grappleArm->GetActive())
    x834_26_animPlaying = false;
}

void CPlayerGun::UpdateGunIdle(bool inStrikeCooldown, float camBobT, float dt, CStateManager& mgr) {
  CPlayer& player = *mgr.Player();
  if (player.IsInFreeLook() && !x832_29_lockedOn && !x740_grappleArm->IsGrappling() &&
      x3a4_fidget.GetState() != CFidget::kS_HolsterBeam &&
      player.GetGunHolsterState() == CPlayer::kGH_Drawn && !x834_30_inBigStrike) {
    if ((x2f8_stateFlags & 0x8) != 0x8) {
      if (!x833_31_inFreeLook && !x834_26_animPlaying) {
        if (x388_enterFreeLookDelayTimer < 0.25f)
          x388_enterFreeLookDelayTimer += dt;
        if (x388_enterFreeLookDelayTimer >= 0.25f && !x740_grappleArm->IsSuitLoading()) {
          EnterFreeLook(mgr);
          x833_31_inFreeLook = true;
        }
      } else {
        x388_enterFreeLookDelayTimer = 0.f;
        if (x834_26_animPlaying)
          ResetIdle(mgr);
      }
    }
  } else {
    if (x833_31_inFreeLook) {
      if ((x2f8_stateFlags & 0x10) != 0x10) {
        x73c_gunMotion->ReturnToDefault(mgr);
        x740_grappleArm->ReturnToDefault(mgr, 0.f, false);
      }
      x833_31_inFreeLook = false;
    }
    x388_enterFreeLookDelayTimer = 0.f;
    if (player.GetMorphballTransitionState() != CPlayer::kMS_Morphed) {
      x833_24_notFidgeting =
          !(player.GetSurfaceRestraint() != CPlayer::kSR_Water &&
            mgr.GetPlayerState()->GetCurrentVisor() != CPlayerState::kPV_Scan &&
            (x2f4_fireButtonStates & 0x3) == 0 && x32c_chargePhase == kCP_NotCharging && !x832_29_lockedOn &&
            (x2f8_stateFlags & 0x8) != 0x8 && x364_gunStrikeCoolTimer <= 0.f &&
            player.GetPlayerMovementState() == NPlayer::kMS_OnGround && !player.IsInFreeLook() &&
            !player.GetFreeLookStickState() && player.GetOrbitState() == CPlayer::kOS_NoOrbit &&
            fabs(player.GetAngularVelocityOR().GetAngle()) <= 0.1f && camBobT <= 0.01f &&
            !mgr.GetCameraManager()->IsInCinematicCamera() &&
            player.GetGunHolsterState() == CPlayer::kGH_Drawn &&
            player.GetGrappleState() == CPlayer::kGS_None && !x834_30_inBigStrike && !x835_25_inPhazonBeam);
      if (x833_24_notFidgeting) {
        if (!x834_30_inBigStrike) {
          bool doWander = camBobT > 0.01f && (x2f4_fireButtonStates & 0x3) == 0;
          if (doWander) {
            x370_gunMotionSpeedMult = 1.f;
            x374_ = 0.f;
            if (x364_gunStrikeCoolTimer <= 0.f && x368_idleWanderDelayTimer <= 0.f) {
              x368_idleWanderDelayTimer = 8.f;
              x73c_gunMotion->PlayPasAnim(SamusGun::kAS_Wander, mgr, 0.f, false);
              x324_idleState = kIS_Wander;
              x550_camBob.SetState(CPlayerCameraBob::kCBS_Walk, mgr);
            }
            x368_idleWanderDelayTimer -= dt;
            x360_ -= dt;
          }
          if (!doWander || x834_26_animPlaying)
            ResetIdle(mgr);
        } else if (x394_damageTimer > 0.f) {
          x394_damageTimer -= dt;
        } else if (!x834_31_gunMotionInFidgetBasePosition) {
          x394_damageTimer = 0.f;
          x834_31_gunMotionInFidgetBasePosition = true;
          x73c_gunMotion->BasePosition(true);
        } else if (!x73c_gunMotion->GetModelData().GetAnimationData()->IsAnimTimeRemaining(0.001f, rstl::string_l("Whole Body"))) {
          x834_30_inBigStrike = false;
          x834_31_gunMotionInFidgetBasePosition = false;
        }
      } else {
        switch (x3a4_fidget.Update(x2ec_lastFireButtonStates, camBobT > 0.01f, inStrikeCooldown, dt, mgr)) {
        case CFidget::kS_NoFidget:
          if (x324_idleState != kIS_Idle) {
            x73c_gunMotion->PlayPasAnim(SamusGun::kAS_Idle, mgr, 0.f, false);
            x324_idleState = kIS_Idle;
          }
          x550_camBob.SetState(CPlayerCameraBob::kCBS_WalkNoBob, mgr);
          break;
        case CFidget::kS_MinorFidget:
        case CFidget::kS_MajorFidget:
        case CFidget::kS_HolsterBeam:
          if (x324_idleState != kIS_NotIdle) {
            x73c_gunMotion->BasePosition(false);
            x324_idleState = kIS_NotIdle;
          }
          AsyncLoadFidget(mgr);
          break;
        case CFidget::kS_Loading:
          if (IsFidgetLoaded())
            EnterFidget(mgr);
          break;
        case CFidget::kS_StillMinorFidget:
        case CFidget::kS_StillMajorFidget:
          x550_camBob.SetState(CPlayerCameraBob::kCBS_Walk, mgr);
          x833_24_notFidgeting = false;
          x834_26_animPlaying =
              x834_25_gunMotionFidgeting
                  ? x73c_gunMotion->IsAnimPlaying()
                  : x72c_currentBeam->GetSolidModelData().GetAnimationData()->IsAnimTimeRemaining(0.001f, rstl::string_l("Whole Body"));
          if (!x834_26_animPlaying) {
            x3a4_fidget.ResetMinor();
            ReturnToRestPose();
          }
          break;
        default:
          break;
        }
      }
      x550_camBob.Update(dt, mgr);
    }
  }
}


void CPlayerGun::CMotionState::Update(bool, float, CTransform4f&, CStateManager&) {}

void CPlayerGun::DamageRumble(const CVector3f&, const CStateManager&) {}

void CPlayerGun::TakeDamage(bool, bool, CStateManager&) {}

void CPlayerGun::StopChargeSound(CStateManager&) {}

void CPlayerGun::CancelFiring(CStateManager&) {}

void CPlayerGun::AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&) {}

void CPlayerGun::StopContinuousBeam(CStateManager&, bool) {}

void CPlayerGun::RenderEnergyDrainEffects(const CStateManager&) const {}

void CPlayerGun::DoUserAnimEvents(float, CStateManager&) {}

void CPlayerGun::DoUserAnimEvent(float, CStateManager&, const CInt32POINode&, EUserEventType) {}

void CPlayerGun::CancelCharge(CStateManager&, bool) {}

void CPlayerGun::EnterFreeLook(CStateManager&) {}

void CPlayerGun::EnterFidget(CStateManager&) {}

void CPlayerGun::UpdateLeftArmTransform(const CModelData&, const CStateManager&) {}

void CPlayerGun::ReturnArmAndGunToDefault(CStateManager&, bool) {}

void CPlayerGun::UpdateAuxWeapons(float, const CTransform4f&, CStateManager&) {}

void CPlayerGun::CancelLockOn() {}

void CPlayerGun::CreateGunLight(CStateManager&) {}

void CPlayerGun::DeleteGunLight(CStateManager&) {}

void CPlayerGun::UpdateGunLight(const CTransform4f&, CStateManager&) {}

void CPlayerGun::SetGunLightActive(bool, CStateManager&) {}

void CPlayerGun::LoadHandAnimTokens() {}

void CPlayerGun::ProcessPhazonGunMorph(float, CStateManager&) {}

void CPlayerGun::ProcessGunMorph(float, CStateManager&) {}

void CPlayerGun::AsyncLoadFidget(CStateManager&) {}

void CPlayerGun::UnLoadFidget() {}

bool CPlayerGun::IsFidgetLoaded() {
    return false;
}

void CPlayerGun::SetFidgetAnimBits(int, bool) {}

void CPlayerGun::AsyncLoadSuit(CStateManager&) {}

void CPlayerGun::ReturnToRestPose() {}

void CPlayerGun::DropPowerBomb(CStateManager&) const {}

void CPlayerGun::SetPhazonBeamFeedback(bool) {}

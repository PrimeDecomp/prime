#include "MetroidPrime/Player/CPlayerGun.hpp"

#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CRainSplashGenerator.hpp"
#include "MetroidPrime/CWorldShadow.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CGrappleArm.hpp"
#include "MetroidPrime/Tweaks/CTweakGunRes.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayerGun.hpp"
#include "MetroidPrime/Weapons/CAuxWeapon.hpp"
#include "MetroidPrime/Weapons/CIceBeam.hpp"
#include "MetroidPrime/Weapons/CPhazonBeam.hpp"
#include "MetroidPrime/Weapons/CPlasmaBeam.hpp"
#include "MetroidPrime/Weapons/CPowerBeam.hpp"
#include "MetroidPrime/Weapons/CWaveBeam.hpp"
#include "MetroidPrime/Weapons/GunController/CGunMotion.hpp"
#include "MetroidPrime/Weapons/WeaponTypes.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Particles/CElementGen.hpp"

#include "Collision/CMaterialFilter.hpp"
#include "Collision/CMaterialList.hpp"

#include "MetaRender/CCubeRenderer.hpp"

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
, x33c_phazonBeamState(kKBS_Inactive)
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

void CPlayerGun::PreRender(CStateManager& mgr, const CFrustumPlanes& frustum, const CVector3f& camPos) {
  const CPlayerState& playerState = *mgr.GetPlayerState();
  if (playerState.GetCurrentVisor() == CPlayerState::kPV_Scan)
    return;

  CPlayerState::EPlayerVisor activeVisor = playerState.GetActiveVisor(mgr);
  switch (activeVisor) {
  case CPlayerState::kPV_Thermal:
    float rgb = CMath::Clamp(0.6f, 0.5f * x380_shotSmokeTimer + 0.6f - x378_shotSmokeStartTimer, 1.f);
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
        x82c_shadow->BuildLightShadowTexture(mgr, mgr.GetNextAreaId(), x0_lights.GetShadowLightIndex(), aabb, true,
                                             false);
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

  if (x678_morph.GetGunState() != CGunMorph::kGS_OutWipeDone || activeVisor == CPlayerState::kPV_XRay)
    x6e0_rightHandModel.AnimationData()->PreRender();

  if (x833_28_phazonBeamActive)
    gpRender->AllocatePhazonSuitMaskTexture();
}

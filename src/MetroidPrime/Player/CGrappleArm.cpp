#include "MetroidPrime/Player/CGrappleArm.hpp"

#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CParticleSwoosh.hpp"

#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CRainSplashGenerator.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Tweaks/CTweakGunRes.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"
#include "MetroidPrime/Weapons/GunController/CGunController.hpp"
#include "MetroidPrime/Weapons/WeaponCommon.hpp"
static const char* kGrappleGear = "GrappleGear";
static const char* kGrapNoz1 = "GrapNoz1";
static const char* kGrapNoz2 = "GrapNoz2";
float CGrappleArm::kPhaseDelta = 0.875f;
float CGrappleArm::kAmplitudeX = 0.25f;
float CGrappleArm::kAmplitudeZ = 0.125f;
float CGrappleArm::kMetresPerSecond = 5.f;

CGrappleArm::CGrappleArm(const CVector3f& scale)
: x0_grappleArmModel(
      CAnimRes(gpTweakGunRes->x8_grappleArm, CAnimRes::kDefaultCharIdx, scale, 41, false))
, xa0_grappleGearModel(CStaticRes(NWeaponTypes::get_asset_id_from_name(kGrappleGear), scale))
, xec_grapNoz1Model(CStaticRes(NWeaponTypes::get_asset_id_from_name(kGrapNoz1), scale))
, x138_grapNoz2Model(CStaticRes(NWeaponTypes::get_asset_id_from_name(kGrapNoz2), scale))
, x184_grappleArm(gpSimplePool->GetObj(SObjectTag('ANCS', gpTweakGunRes->x8_grappleArm)))
, x220_xf(CTransform4f::Identity())
, x250_grapLocatorXf(CTransform4f::Identity())
, x280_grapNozLoc1Xf(CTransform4f::Identity())
, x2b0_grapNozLoc2Xf(CTransform4f::Identity())
, x2e0_auxXf(CTransform4f::Identity())
, x310_grapplePointPos(CVector3f::Zero())
, x31c_scale(scale)
, x334_animState(kAS_Done)
, x338_beamT(0.f)
, x33c_beamDist(0.f)
, x340_anglePhase(0.f)
, x344_xAmplitude(0.f)
, x348_yAmplitude(0.f)
, x34c_animSfx(-1, CSfxHandle())
, x354_grappleSegmentDesc(
      gpSimplePool->GetObj(SObjectTag('PART', gpTweakGunRes->xb4_grappleSegment)))
, x360_grappleClawDesc(gpSimplePool->GetObj(SObjectTag('PART', gpTweakGunRes->xb8_grappleClaw)))
, x36c_grappleHitDesc(gpSimplePool->GetObj(SObjectTag('PART', gpTweakGunRes->xbc_grappleHit)))
, x378_grappleMuzzleDesc(gpSimplePool->GetObj(SObjectTag('PART', gpTweakGunRes->xc0_grappleMuzzle)))
, x384_grappleSwooshDesc(gpSimplePool->GetObj(SObjectTag('SWHC', gpTweakGunRes->xc4_grappleSwoosh)))
, x390_grappleSegmentGen(rs_new CElementGen(x354_grappleSegmentDesc))
, x394_grappleClawGen(rs_new CElementGen(x360_grappleClawDesc))
, x398_grappleHitGen(rs_new CElementGen(x36c_grappleHitDesc))
, x39c_grappleMuzzleGen(rs_new CElementGen(x378_grappleMuzzleDesc))
, x3a0_grappleSwooshGen(rs_new CParticleSwoosh(x384_grappleSwooshDesc, 0))
, x3a4_rainSplashGenerator(rs_new CRainSplashGenerator(scale, 20, 2, 0.f, 0.125f))
, x3a8_loadedSuit(CPlayerState::kPS_Invalid)
, x3ac_pitchBend(8192)
, x3b0_rumbleHandle(-1)
, x3b2_24_active(false)
, x3b2_25_beamActive(false)
, x3b2_26_grappleHit(false)
, x3b2_27_armMoving(false)
, x3b2_28_isGrappling(false)
, x3b2_29_suitLoading(false) {
  x0_grappleArmModel->SetSortThermal(true);
  xa0_grappleGearModel.SetSortThermal(true);
  xec_grapNoz1Model.SetSortThermal(true);
  x138_grapNoz2Model.SetSortThermal(true);

  kPhaseDelta = gpTweakPlayer->GetGrappleBeamAnglePhaseDelta();
  kAmplitudeX = gpTweakPlayer->GetGrappleBeamXWaveAmplitude();
  kAmplitudeZ = gpTweakPlayer->GetGrappleBeamZWaveAmplitude();
  kMetresPerSecond = gpTweakPlayer->GetGrappleBeamSpeed();

  x39c_grappleMuzzleGen->SetParticleEmission(false);
  x390_grappleSegmentGen->SetParticleEmission(false);
  CParticleSwoosh* swoosh = x3a0_grappleSwooshGen.get();
  int count = 0;
  while (count < swoosh->GetSwooshCount() - 1) {
    x3a0_grappleSwooshGen->SetWarmUp();
    x3a0_grappleSwooshGen->Update(0.f);
    count++;
  }

  BuildSuitDependencyList();
  LoadAnimations();
}

CGrappleArm::~CGrappleArm() {}

void CGrappleArm::EnterFidget(CStateManager& mgr, int a, int b, int c) {
  if (x3b2_29_suitLoading) {
    return;
  }

  SetActive(true);
  SetIsArmMoving(true);
  SetAnimState(kAS_GunControllerAnimation);
  x328_gunController->EnterFidget(mgr, a, b, c);
}
void CGrappleArm::EnterComboFire(int a, CStateManager& mgr) {
  if (x3b2_29_suitLoading) {
    return;
  }

  SetActive(true);
  SetIsArmMoving(true);
  SetAnimState(kAS_GunControllerAnimation);
  x328_gunController->EnterComboFire(mgr, a);
}
void CGrappleArm::ReturnToDefault(CStateManager& mgr, float dt, bool setState) {
  if (IsSuitLoading()) {
    return;
  }

  x328_gunController->ReturnToDefault(mgr, dt, setState);
}

void CGrappleArm::EnterIdle(CStateManager& mgr) {
  if (IsSuitLoading()) {
    return;
  }
  x328_gunController->EnterIdle(mgr);
}

void CGrappleArm::EnterStruck(CStateManager& mgr, float angle, bool bigStrike, bool notInFreeLook) {
  if (IsSuitLoading()) {
    return;
  }

  if (IsGrappling()) {
    DisconnectGrappleBeam();
    x3b2_28_isGrappling = false;
  }

  if (!x3b2_27_armMoving) {
    x3b2_24_active = true;
    x3b2_27_armMoving = true;
    x334_animState = kAS_GunControllerAnimation;
  }

  x328_gunController->EnterStruck(mgr, angle, bigStrike, notInFreeLook);
}

#include "MetroidPrime/Player/CGrappleArm.hpp"

#include "Kyoto/Animation/CSkinnedModel.hpp"
#include "Kyoto/Animation/CVertexMorphEffect.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CDependencyGroup.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CParticleSwoosh.hpp"
#include "MetaRender/CCubeRenderer.hpp"

#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CRainSplashGenerator.hpp"
#include "MetroidPrime/CRumbleManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/Tweaks/CTweakGunRes.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"
#include "MetroidPrime/Weapons/GunController/CGunController.hpp"
#include "MetroidPrime/Weapons/WeaponCommon.hpp"

static const char* const kGrappleGear = "GrappleGear";
static const char* const kGrappleNoz1 = "GrapNoz1";
static const char* const kGrappleNoz2 = "GrapNoz2";
static const char* const kGearLocator = "grapLocator_SDK";
static const char* const kNoz1Locator = "gNozLoc1_SDK";
static const char* const kNoz2Locator = "gNozLoc1_SDK";
static const char* const kBeamNozzle = "LGBeam";

static const char* const kSuitDependencyNames[] = {
    "PowerSuit_DGRP",  "GravitySuit_DGRP", "VariaSuit_DGRP",   "PhazonSuit_DGRP",
    "FusionSuit_DGRP", "FusionSuitG_DGRP", "FusionSuitV_DGRP", "FusionSuitP_DGRP"};

static const CPlayerState::EPlayerSuit suitIndices[] = {
    CPlayerState::kPS_Power,       CPlayerState::kPS_Gravity,     CPlayerState::kPS_Varia,
    CPlayerState::kPS_Phazon,      CPlayerState::kPS_FusionPower, CPlayerState::kPS_FusionGravity,
    CPlayerState::kPS_FusionVaria, CPlayerState::kPS_FusionPhazon};

float CGrappleArm::kPhaseDelta = 0.875f;
float CGrappleArm::kAmplitudeX = 0.25f;
float CGrappleArm::kAmplitudeZ = 0.125f;
float CGrappleArm::kMetresPerSecond = 5.f;

CGrappleArm::CGrappleArm(const CVector3f& scale)
: x0_grappleArmModel(
      CAnimRes(gpTweakGunRes->x8_grappleArm, CAnimRes::kDefaultCharIdx, scale, 41, false))
, xa0_grappleGearModel(CStaticRes(NWeaponTypes::get_asset_id_from_name(kGrappleGear), scale))
, xec_grapNoz1Model(CStaticRes(NWeaponTypes::get_asset_id_from_name(kGrappleNoz1), scale))
, x138_grapNoz2Model(CStaticRes(NWeaponTypes::get_asset_id_from_name(kGrappleNoz2), scale))
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
, x348_zAmplitude(0.f)
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

void CGrappleArm::TouchModel(const CStateManager& mgr) const {
  if (CanRender()) {
    x0_grappleArmModel->Touch(mgr, 0);
    if (x50_grappleArmSkeletonModel) {
      x50_grappleArmSkeletonModel->Touch(mgr, 0);
    }

    if (mgr.GetPlayerState()->HasPowerUp(CPlayerState::kIT_GrappleBeam)) {
      xa0_grappleGearModel.Touch(mgr, 0);
      xec_grapNoz1Model.Touch(mgr, 0);
      x138_grapNoz2Model.Touch(mgr, 0);
    }
  }
}

void CGrappleArm::PreRender(CStateManager& mgr, const CFrustumPlanes& frustum,
                            const CVector3f& camPos) {
  if (CanRender()) {
    x0_grappleArmModel->AnimationData()->PreRender();
    if (x50_grappleArmSkeletonModel) {
      x50_grappleArmSkeletonModel->AnimationData()->PreRender();
    }
  }
}

void CGrappleArm::Render(const CStateManager& mgr, const CVector3f& pos, const CModelFlags& flags,
                         const CActorLights* lights) const {
  if (CanRender()) {
    const CTransform4f xf = CTransform4f::Translate(pos) * x220_xf * x2e0_auxXf;
    if (x50_grappleArmSkeletonModel) {
      RenderXRayModel(mgr, xf, flags);
    }
    const bool xray = mgr.GetPlayerState()->GetCurrentVisor() == CPlayerState::kPV_XRay;
    const CModelFlags useFlags = xray ? CModelFlags::AlphaBlended(0.25f) : flags;
    const CActorLights* useLights = xray ? nullptr : lights;
    if (x3a4_rainSplashGenerator.get() && x3a4_rainSplashGenerator->IsRaining()) {
      CSkinnedModel::SetPointGeneratorFunc(x3a4_rainSplashGenerator.get(), PointGenerator);
    }
    x0_grappleArmModel->Render(mgr, xf, useLights, useFlags);
    if (x3a4_rainSplashGenerator.get() && x3a4_rainSplashGenerator->IsRaining()) {
      CSkinnedModel::ClearPointGeneratorFunc();
      x3a4_rainSplashGenerator->Draw(xf);
    }
    if (mgr.GetPlayerState()->HasPowerUp(CPlayerState::kIT_GrappleBeam)) {
      xa0_grappleGearModel.Render(mgr, xf * x250_grapLocatorXf, useLights, useFlags);
      xec_grapNoz1Model.Render(mgr, xf * x280_grapNozLoc1Xf, useLights, useFlags);
      x138_grapNoz2Model.Render(mgr, xf * x2b0_grapNozLoc2Xf, useLights, useFlags);
    }
  }
}

void CGrappleArm::RenderGrappleBeam(const CStateManager& mgr, const CVector3f& pos) const {
  if (CanRender()) {
    const CTransform4f xf = CTransform4f::Translate(pos) * x220_xf;
    if (x3b2_25_beamActive) {
      if (x3b2_26_grappleHit) {
        x398_grappleHitGen->Render();
      }
      x394_grappleClawGen->Render();
      x3a0_grappleSwooshGen->Render();
      x390_grappleSegmentGen->Render();
      const CTransform4f viewMatrix = CGraphics::GetViewMatrix();
      CGraphics::SetViewPointMatrix(xf.GetInverse() * viewMatrix);
      gpRender->SetModelMatrix(CTransform4f::Identity());
      x39c_grappleMuzzleGen->Render();
      CGraphics::SetViewPointMatrix(viewMatrix);
    }
  }
}

void CGrappleArm::UpdateSwingAction(float swingT, float dt, CStateManager& mgr) {
  if (x3b2_29_suitLoading) {
    return;
  }
  if (x334_animState == kAS_FireGrapple) {
    DoUserAnimEvents(mgr);
  }
  const CTransform4f beamLoc =
      x0_grappleArmModel->GetScaledLocatorTransform(rstl::string_l(kBeamNozzle));
  const bool connected = UpdateGrappleBeam(dt, beamLoc, mgr);
  if ((swingT > 0.175f && swingT < 0.3f) || (swingT > 0.7f && swingT < 0.9f)) {
    if (!CSfxManager::IsPlaying(x330_swooshSfx)) {
      x330_swooshSfx = NWeaponTypes::play_sfx(0x5f8, false, false, 0x36);
      if (x3b0_rumbleHandle != -1) {
        mgr.GetRumbleManager()->StopRumble(x3b0_rumbleHandle);
      }
      x3b0_rumbleHandle =
          mgr.GetRumbleManager()->Rumble(mgr, kRFX_PlayerGrappleSwoosh, 1.f, kRP_Three);
    }
  }
  const CAnimData& animData = *x0_grappleArmModel->GetAnimationData();
  if (!animData.IsAnimTimeRemaining(dt, rstl::string_l("Whole Body"))) {
    switch (x334_animState) {
    case kAS_IntoGrapple:
    case kAS_Seven:
      SetAnimState(kAS_IntoGrappleIdle);
      break;
    case kAS_FireGrapple:
      if (connected) {
        SetAnimState(kAS_ConnectGrapple);
        x3b2_26_grappleHit = true;
        x398_grappleHitGen->SetParticleEmission(true);
        GrappleBeamConnected();
        if (x3b0_rumbleHandle != -1) {
          mgr.GetRumbleManager()->StopRumble(x3b0_rumbleHandle);
        }
      }
      break;
    case kAS_ConnectGrapple:
      if (x344_xAmplitude == 0.f) {
        SetAnimState(kAS_Connected);
      }
      break;
    case kAS_OutOfGrapple:
      if (x3b0_rumbleHandle != -1) {
        mgr.GetRumbleManager()->StopRumble(x3b0_rumbleHandle);
      }
      SetAnimState(kAS_Done);
      x3b2_24_active = false;
      break;
    default:
      break;
    }
  }
  if (x3b2_25_beamActive) {
    x39c_grappleMuzzleGen->SetTranslation(beamLoc.GetTranslation());
    x39c_grappleMuzzleGen->Update(dt);
    if (x3b2_26_grappleHit) {
      x3b2_26_grappleHit = !x398_grappleHitGen->IsSystemDeletable();
      x398_grappleHitGen->SetTranslation(x310_grapplePointPos);
      x398_grappleHitGen->Update(dt);
    }
  }
}

void CGrappleArm::UpdateArmMovement(float dt, CStateManager& mgr) {
  DoUserAnimEvents(mgr);
  switch (x328_gunController->Update(dt, mgr)) {
  case 1:
    ResetAuxParams(false);
    break;
  default:
    break;
  }
}

void CGrappleArm::Update(float swingT, float dt, CStateManager& mgr) {
  if (!CanRender()) {
    if (x3b2_29_suitLoading) {
      LoadSuitPoll();
    }
    return;
  }
  if (mgr.GetPlayerState()->GetCurrentVisor() == CPlayerState::kPV_XRay) {
    if (!x50_grappleArmSkeletonModel) {
      BuildXRayModel();
    }
  } else if (x50_grappleArmSkeletonModel) {
    x50_grappleArmSkeletonModel = rstl::optional_object< CModelData >();
  }
  float speed = 1.f;
  if (!x3b2_27_armMoving) {
    speed = mgr.GetPlayer()->GetPlayerMovementState() != NPlayer::kMS_OnGround &&
                    x334_animState != kAS_OutOfGrapple
                ? 4.f
                : 1.f;
  }
  x0_grappleArmModel->AdvanceAnimation(dt * speed, mgr, kInvalidAreaId, true);
  if (mgr.GetPlayerState()->HasPowerUp(CPlayerState::kIT_GrappleBeam)) {
    x250_grapLocatorXf =
        x0_grappleArmModel->GetScaledLocatorTransformDynamic(rstl::string_l(kGearLocator), nullptr);
    x280_grapNozLoc1Xf =
        x0_grappleArmModel->GetScaledLocatorTransform(rstl::string_l(kNoz1Locator));
    x2b0_grapNozLoc2Xf =
        x0_grappleArmModel->GetScaledLocatorTransform(rstl::string_l(kNoz2Locator));
  }
  if (x3b2_27_armMoving) {
    UpdateArmMovement(dt, mgr);
  } else {
    UpdateSwingAction(swingT, dt, mgr);
  }
  if (x3a4_rainSplashGenerator.get()) {
    x3a4_rainSplashGenerator->Update(dt, mgr);
  }
}

const bool CGrappleArm::UpdateGrappleBeam(float dt, const CTransform4f& beamLoc,
                                          CStateManager& mgr) {
  bool connected = false;
  const TUniqueId targetId = mgr.GetPlayer()->GetOrbitTargetId();
  const CActor* actor = TCastToConstPtr< CActor >(mgr.GetObjectById(targetId));
  x310_grapplePointPos = actor ? actor->GetTranslation() : x220_xf.GetTranslation();
  const CVector3f beamGunPos = (x220_xf * beamLoc).GetTranslation();
  const CVector3f beamAirPos = CVector3f::Lerp(beamGunPos, x310_grapplePointPos, x338_beamT);
  switch (x334_animState) {
  case kAS_Five:
    break;
  default:
    break;
  case kAS_FireGrapple:
  case kAS_Three: {
    const float distance = (x310_grapplePointPos - beamGunPos).Magnitude();
    x338_beamT = distance > 0.f ? x33c_beamDist / distance : 1.f;
    const float speed =
        mgr.GetPlayer()->GetPlayerMovementState() != NPlayer::kMS_OnGround ? 2.f : 1.f;
    x33c_beamDist += speed * (dt * kMetresPerSecond);
    if (!(x338_beamT < 1.f)) {
      x338_beamT = 1.f;
      connected = true;
    }
    break;
  }
  case kAS_ConnectGrapple: {
    const float delta = 4.f * dt;
    x344_xAmplitude -= delta;
    x348_zAmplitude -= delta;
    if (x344_xAmplitude < 0.f) {
      x344_xAmplitude = 0.f;
    }
    if (x348_zAmplitude < 0.f) {
      x348_zAmplitude = 0.f;
    }
    break;
  }
  }
  if (x3b2_25_beamActive) {
    x340_anglePhase += kPhaseDelta;
    UpdateGrappleBeamFX(beamGunPos, beamAirPos, mgr);
    x394_grappleClawGen->Update(dt);
    x390_grappleSegmentGen->Update(dt);
  }
  return connected;
}

void CGrappleArm::UpdateGrappleBeamFX(const CVector3f& beamGunPos, const CVector3f& beamAirPos,
                                      CStateManager& mgr) {
  x394_grappleClawGen->SetTranslation(beamAirPos);
  x390_grappleSegmentGen->SetParticleEmission(true);
  CVector3f segmentDelta = beamAirPos - beamGunPos;
  const int segmentCount = static_cast< int >(2.f * segmentDelta.Magnitude() + 1.f);
  CVector3f swooshDelta = segmentDelta;
  const float invCount = 1.f / float(segmentCount);
  segmentDelta *= invCount;
  swooshDelta *= 0.02f;
  CVector3f segmentPos = beamGunPos;
  const CTransform4f& rotation = x220_xf.GetRotation();
  for (int i = 0; i < segmentCount; ++i) {
    const float index = float(i);
    const float x = CMath::FastCosR(index + x340_anglePhase) * x344_xAmplitude;
    const float z = CMath::FastSinR(index) * x348_zAmplitude;
    x390_grappleSegmentGen->SetTranslation(
        segmentPos + (i > 0 ? rotation * CVector3f(x, 0.f, z) : CVector3f::Zero()));
    x390_grappleSegmentGen->ForceParticleCreation(1);
    segmentPos += segmentDelta;
  }
  x390_grappleSegmentGen->SetParticleEmission(false);
  CParticleSwoosh& swoosh = *x3a0_grappleSwooshGen;
  CVector3f swooshPos = beamGunPos;
  float previousRotation = swoosh.GetSwooshes()[swoosh.GetSwooshCount() - 1].mInitialRot;
  for (int i = 0; i < swoosh.GetSwooshCount(); ++i) {
    const float index = float(i);
    const float x = CMath::FastCosR(index + x340_anglePhase) * x344_xAmplitude;
    const float z = CMath::FastSinR(index) * x348_zAmplitude;
    const CVector3f offset = i > 0 ? rotation * CVector3f(x, 0.f, z) : CVector3f::Zero();
    CParticleSwoosh::SSwooshData& segment = swoosh.Swooshes()[i];
    segment.mTranslation = swooshPos + offset;
    swooshPos += swooshDelta;
    const float rotation = segment.mInitialRot;
    segment.mInitialRot = previousRotation;
    previousRotation = rotation;
  }
}

void CGrappleArm::Activate(bool active) {
  SetAnimState(active ? kAS_IntoGrapple : kAS_OutOfGrapple);
}

void CGrappleArm::SetAnimState(EArmState state) {
  if (x334_animState == state) {
    return;
  }
  CAnimData& animData = *x0_grappleArmModel->AnimationData();
  animData.EnableLooping(false);
  x3b2_28_isGrappling = true;
  switch (state) {
  case kAS_IntoGrapple: {
    ResetAuxParams(true);
    const CAnimPlaybackParms parms(0, -1, 1.f, true);
    animData.SetAnimation(parms, false);
    x3b2_25_beamActive = false;
    x3b2_24_active = true;
    break;
  }
  case kAS_IntoGrappleIdle: {
    animData.EnableLooping(true);
    const CAnimPlaybackParms parms(1, -1, 1.f, true);
    animData.SetAnimation(parms, false);
    break;
  }
  case kAS_FireGrapple: {
    const CAnimPlaybackParms parms(2, -1, 1.f, true);
    animData.SetAnimation(parms, false);
    break;
  }
  case kAS_ConnectGrapple: {
    const CAnimPlaybackParms parms(3, -1, 1.f, true);
    animData.SetAnimation(parms, false);
    break;
  }
  case kAS_Connected: {
    const CAnimPlaybackParms parms(3, -1, 1.f, true);
    animData.SetAnimation(parms, false);
    break;
  }
  case kAS_OutOfGrapple: {
    const CAnimPlaybackParms parms(4, -1, 1.f, true);
    animData.SetAnimation(parms, false);
    DisconnectGrappleBeam();
    break;
  }
  case kAS_Done:
    x3b2_28_isGrappling = false;
    break;
  default:
    break;
  }
  x334_animState = state;
}

void CGrappleArm::DoUserAnimEvents(CStateManager& mgr) {
  int aid = mgr.GetPlayer()->GetCurrentAreaId().Value();
  const CGameCamera& camera = mgr.GetCameraManager()->GetCurrentCamera(mgr);
  const CVector3f origin = x220_xf.GetTranslation();
  const CVector3f posToCam = camera.GetTranslation() - origin;
  int soundCount = 0;
  const CSoundPOINode* soundNodes =
      x0_grappleArmModel->AnimationData()->GetSoundPOIList(soundCount);
  if (soundCount > 0) {
    for (int i = 0; i < soundCount; ++i) {
      const CSoundPOINode& soundNode = soundNodes[i];
      const int charIdx = soundNode.GetCharacterIndex();
      if (soundNode.GetPoiType() == kPT_Sound &&
          (charIdx == -1 || charIdx == x0_grappleArmModel->AnimationData()->GetCharacterIndex())) {
        NWeaponTypes::do_sound_event(x34c_animSfx, x3ac_pitchBend, false, soundNode.GetSoundId(),
                                     soundNode.GetWeight(), soundNode.GetFlags(),
                                     soundNode.GetFallOff(), soundNode.GetMaxDistance(), 0x14,
                                     CAudioSys::kMaxVolume, posToCam, origin, aid, mgr);
      }
    }
  }
  int intCount = 0;
  const CInt32POINode* intNodes = x0_grappleArmModel->AnimationData()->GetInt32POIList(intCount);
  if (intCount > 0) {
    for (int i = 0; i < intCount; ++i) {
      const CInt32POINode& intNode = intNodes[i];
      switch (intNode.GetPoiType()) {
      case kPT_UserEvent:
        DoUserAnimEvent(mgr, intNode, static_cast< EUserEventType >(intNode.GetValue()));
        break;
      case kPT_SoundInt32:
        if (intNode.GetCharacterIndex() == -1 ||
            intNode.GetCharacterIndex() ==
                x0_grappleArmModel->AnimationData()->GetCharacterIndex()) {
          NWeaponTypes::do_sound_event(x34c_animSfx, x3ac_pitchBend, false, intNode.GetValue(),
                                       intNode.GetWeight(), intNode.GetFlags(), 0.1f, 150.f, 0x14,
                                       CAudioSys::kMaxVolume, posToCam, origin, aid, mgr);
        }
        break;
      default:
        break;
      }
    }
  }
}

void CGrappleArm::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node,
                                  EUserEventType type) {
  switch (type) {
  case kUE_Projectile:
    if (x3b2_27_armMoving) {
      return;
    }
    x3b2_25_beamActive = true;
    x398_grappleHitGen = rs_new CElementGen(x36c_grappleHitDesc);
    x39c_grappleMuzzleGen = rs_new CElementGen(x378_grappleMuzzleDesc);
    x338_beamT = 0.f;
    x33c_beamDist = 0.f;
    x340_anglePhase = 0.f;
    x344_xAmplitude = kAmplitudeX;
    x348_zAmplitude = kAmplitudeZ;
    x398_grappleHitGen->SetParticleEmission(false);
    x394_grappleClawGen->SetParticleEmission(true);
    NWeaponTypes::play_sfx(0x5f6, false, false, 0x36);
    mgr.GetRumbleManager()->Rumble(mgr, kRFX_PlayerGrappleFire, 1.f, kRP_Three);
    break;
  case kUE_Delete:
  case kUE_DamageOn:
    break;
  default:
    break;
  }
}

void CGrappleArm::GrappleBeamConnected() {
  if (!x32c_grappleLoopSfx) {
    x32c_grappleLoopSfx = NWeaponTypes::play_sfx(0x5f7, false, true, 0x36);
  }
}

void CGrappleArm::GrappleBeamDisconnected() {
  if (x32c_grappleLoopSfx) {
    CSfxManager::SfxStop(x32c_grappleLoopSfx);
    x32c_grappleLoopSfx.Clear();
  }
}

void CGrappleArm::LoadAnimations() {
  NWeaponTypes::get_token_vector(*x0_grappleArmModel->GetAnimationData(), 0, 42, x18c_anims, true);
  x0_grappleArmModel = rstl::optional_object< CModelData >();
}

void CGrappleArm::EnterFreeLook(int gunId, int setId, CStateManager& mgr) {
  if (x3b2_29_suitLoading) {
    return;
  }
  x3b2_24_active = true;
  x3b2_27_armMoving = true;
  x334_animState = kAS_GunControllerAnimation;
  x328_gunController->EnterFreeLook(mgr, gunId, setId);
}

void CGrappleArm::EnterFidget(CStateManager& mgr, int a, int b, int c) {
  if (x3b2_29_suitLoading) {
    return;
  }

  SetActive(true);
  SetIsArmMoving(true);
  x334_animState = kAS_GunControllerAnimation;
  x328_gunController->EnterFidget(mgr, a, b, c);
}

void CGrappleArm::EnterComboFire(int a, CStateManager& mgr) {
  if (x3b2_29_suitLoading) {
    return;
  }

  SetActive(true);
  SetIsArmMoving(true);
  x334_animState = kAS_GunControllerAnimation;
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

void CGrappleArm::ResetAuxParams(bool resetGunController) {
  x3b2_24_active = false;
  x3b2_27_armMoving = false;
  x334_animState = kAS_Done;
  x2e0_auxXf = CTransform4f::Identity();
  if (resetGunController) {
    x328_gunController->Reset();
  }
}

void CGrappleArm::AsyncLoadSuit(CStateManager& mgr) {

  const int suit = NWeaponTypes::get_current_suit(mgr);
  if (suit == x3a8_loadedSuit) {
    return;
  }
  x0_grappleArmModel = rstl::optional_object< CModelData >();
  x328_gunController = nullptr;
  x3b2_29_suitLoading = true;
  if (x3a8_loadedSuit != CPlayerState::kPS_Invalid) {
    NWeaponTypes::unlock_tokens(x19c_suitDeps[x3a8_loadedSuit]);
    x19c_suitDeps[x3a8_loadedSuit] = rstl::vector< CToken >();
  }
  if (suit < CPlayerState::kPS_Power || suit > CPlayerState::kPS_FusionPhazon) {
    x3a8_loadedSuit = CPlayerState::kPS_Power;
  } else {
    x3a8_loadedSuit = suitIndices[suit];
  }
  NWeaponTypes::lock_tokens(x19c_suitDeps[x3a8_loadedSuit]);
}

void CGrappleArm::LoadSuitPoll() {
  if (NWeaponTypes::are_tokens_ready(x19c_suitDeps[x3a8_loadedSuit])) {
    x0_grappleArmModel =
        CModelData(CAnimRes(gpTweakGunRes->x8_grappleArm, x3a8_loadedSuit, x31c_scale, 41, false));
    x0_grappleArmModel->SetSortThermal(true);
    x328_gunController = rs_new CGunController(*x0_grappleArmModel);
    x3b2_29_suitLoading = false;
  }
}

void CGrappleArm::BuildXRayModel() {
  x50_grappleArmSkeletonModel = CModelData(CAnimRes(
      gpTweakGunRes->x8_grappleArm, 8, x31c_scale,
      x328_gunController.get() == nullptr ? 41 : x328_gunController->GetCurAnimId(), false));
  x50_grappleArmSkeletonModel->SetSortThermal(true);
}

void CGrappleArm::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) {
  switch (msg) {
  case kSM_Registered:
    AsyncLoadSuit(mgr);
    break;
  default:
    break;
  }
}

void CGrappleArm::FillTokenVector(const rstl::vector< SObjectTag >& tags,
                                  rstl::vector< CToken >& objects) {
  objects.reserve(tags.size());
  for (AUTO(it, tags.begin()); it != tags.end(); ++it) {
    const CToken token = gpSimplePool->GetObj(*it);
    objects.push_back(token);
  }
}

void CGrappleArm::BuildSuitDependencyList() {

  x184_grappleArm.Lock();
  for (int i = 0; i < 8; ++i) {
    TLockedToken< CDependencyGroup > dep = gpSimplePool->GetObj(kSuitDependencyNames[i]);
    const rstl::vector< SObjectTag >& tags = dep->GetObjectTagVector();
    x19c_suitDeps.push_back(rstl::vector< CToken >());
    FillTokenVector(tags, x19c_suitDeps[i]);
  }
}

void CGrappleArm::RenderXRayModel(const CStateManager& mgr, const CTransform4f& xf,
                                  const CModelFlags& flags) const {
  const CVector3f& scale = CVector3f(x0_grappleArmModel->GetScale());
  CTransform4f modelMatrix(xf);
  modelMatrix *= CTransform4f::Scale(scale.GetX(), scale.GetY(), scale.GetZ());
  gpRender->SetModelMatrix(modelMatrix);
  CGraphics::DisableAllLights();
  gpRender->SetAmbientColor(CColor::White());
  x0_grappleArmModel->GetAnimationData()->Render(
      **x50_grappleArmSkeletonModel->GetAnimationData()->GetModelData(), flags,
      rstl::optional_object< CVertexMorphEffect >(), nullptr);
  gpRender->SetAmbientColor(CColor::White());
  CGraphics::DisableAllLights();
}

void CGrappleArm::PointGenerator(void* context, const CVector3f* vertices, const CVector3f* normals,
                                 int count) {
  if (context) {
    static_cast< CRainSplashGenerator* >(context)->GeneratePoints(vertices, normals, count);
  }
}

void CGrappleArm::DisconnectGrappleBeam() {
  x394_grappleClawGen->SetParticleEmission(false);
  x3b2_25_beamActive = false;
  GrappleBeamDisconnected();
}

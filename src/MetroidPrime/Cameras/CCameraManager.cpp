#include "MetroidPrime/Cameras/CCameraManager.hpp"

#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "MetroidPrime/ScriptObjects/CScriptCameraHint.hpp"
#include "MetroidPrime/Cameras/CCinematicCamera.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"
#include "MetroidPrime/Cameras/CInterpolationCamera.hpp"
#include "MetroidPrime/CExplosion.hpp"
#include "MetroidPrime/CFluidPlaneCPU.hpp"
#include "MetroidPrime/CRumbleManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerGun.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"
#include "MetroidPrime/SFX/Misc.h"
#include "MetroidPrime/Tweaks/CTweakGame.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"
#include "MetroidPrime/Weapons/CWeapon.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Input/CFinalInput.hpp"

#include "rstl/algorithm.hpp"
#include "rstl/math.hpp"

float CCameraManager::sFirstPersonFOV = 55.f;
float CCameraManager::sThirdPersonFOV = 60.f;
float CCameraManager::sNearPlane = 0.2f;
float CCameraManager::sFarPlane = 750.f;
float CCameraManager::sAspectRatio = 1.42f;
float CCameraManager::lbl_805A6BE4 = 100.f;
float CCameraManager::lbl_805A6BE8 = 127.f;

CCameraManager::CCameraManager(TUniqueId curCamera)
: x0_curCameraId(curCamera)
, x2c_lastShakeId(0)
, x30_shakeOffset(CVector3f::Zero())
, x74_fluidCounter(0)
, x78_fluidId(kInvalidUniqueId)
, x7c_fpCamera(nullptr)
, x80_ballCamera(nullptr)
, x84_rumbleId(0)
, x88_interpCamera(nullptr)
, x8c_(-1)
, x90_rumbleCooldown(0.f)
, x94_fogDensityFactor(1.f)
, x98_fogDensitySpeed(0.f)
, x9c_fogDensityFactorTarget(1.f)
, xa0_24_pendingRumble(false)
, xa0_25_rumbling(false)
, xa0_26_inWater(false)
, xa2_spindleCamId(kInvalidUniqueId)
, xa4_pathCamId(kInvalidUniqueId)
, xa6_camHintId(kInvalidUniqueId)
, xa8_hintPriority(1000)
, x3b8_24_(false)
, x3b8_25_(false)
, x3bc_curFov(sThirdPersonFOV) {
  CSfxManager::AddListener(CSfxManager::kSC_Game, CVector3f::Zero(), CVector3f::Zero(),
                           CVector3f(1.f, 0.f, 0.f), CVector3f(0.f, 0.f, 1.f), 50.f, 50.f, 1000.f,
                           1, CAudioSys::kMaxVolume);
  sAspectRatio = (float)CGraphics::GetViewport().mWidth / CGraphics::GetViewport().mHeight;
  sFirstPersonFOV = gpTweakGame->GetFirstPersonFOV();
}

float CCameraManager::DefaultThirdPersonFov() { return sThirdPersonFOV; }

float CCameraManager::DefaultFirstPersonFov() { return sFirstPersonFOV; }

float CCameraManager::DefaultNearPlane() { return sNearPlane; }

float CCameraManager::DefaultFarPlane() { return sFarPlane; }

float CCameraManager::DefaultAspect() { return sAspectRatio; }

void CCameraManager::CreateStandardCameras(CStateManager& mgr) {
  TUniqueId plId = mgr.GetPlayer()->GetUniqueId();
  CTransform4f xf = CTransform4f::Identity();
  xf.SetTranslation(mgr.GetPlayer()->GetEyePosition());
  TUniqueId fpId = mgr.AllocateUniqueId();

  x7c_fpCamera = rs_new CFirstPersonCamera(fpId, xf, plId, gpTweakPlayer->GetOrbitCameraSpeed(),
                                           DefaultFirstPersonFov(), DefaultNearPlane(),
                                           DefaultFarPlane(), DefaultAspect());
  mgr.AddObject(x7c_fpCamera);
  mgr.Player()->SetCameraState(CPlayer::kCS_FirstPerson, mgr);
  SetCurrentCameraId(fpId);
  TUniqueId ballId = mgr.AllocateUniqueId();
  x80_ballCamera = rs_new CBallCamera(ballId, plId, xf, DefaultThirdPersonFov(), DefaultNearPlane(),
                                      DefaultFarPlane(), DefaultAspect());
  mgr.AddObject(x80_ballCamera);

  TUniqueId interpId = mgr.AllocateUniqueId();
  x88_interpCamera = rs_new CInterpolationCamera(interpId, xf);
  mgr.AddObject(x88_interpCamera);
}

void CCameraManager::ThinkCameras(float dt, CStateManager& mgr) {
  CObjectList& objList = mgr.ObjectListById(kOL_GameCamera);
  int idx = objList.GetFirstObjectIndex();

  while (idx != -1) {
    CGameCamera* gc = static_cast< CGameCamera* >(objList[idx]);
    if (gc != nullptr) {
      gc->Think(dt, mgr);
      gc->UpdatePerspective(dt);
    }
    idx = objList.GetNextObjectIndex(idx);
  }

  if (!IsInCinematicCamera()) {
    return;
  }

  if (const CGameCamera* cam =
          TCastToConstPtr< CGameCamera >(mgr.GetObjectById(GetLastCineCameraId()))) {
    x3bc_curFov = cam->GetFov();
  }
}

void CCameraManager::ResetCameras(CStateManager& mgr) {
  CObjectList& objList = mgr.ObjectListById(kOL_GameCamera);

  CTransform4f xf = mgr.GetPlayer()->CreateTransformFromMovementDirection();
  xf.SetTranslation(mgr.GetPlayer()->GetEyePosition());

  int idx = objList.GetFirstObjectIndex();

  while (idx != -1) {
    CGameCamera* gc = static_cast< CGameCamera* >(objList[idx]);
    if (gc != nullptr) {
      gc->Reset(xf, mgr);
    }
    idx = objList.GetNextObjectIndex(idx);
  }
}

void CCameraManager::RenderCameras(const CStateManager& mgr) {
  const CObjectList& objList = mgr.GetObjectListById(kOL_GameCamera);
  int idx = objList.GetFirstObjectIndex();

  while (idx != -1) {
    static_cast< const CGameCamera* >(objList[idx])->Render(mgr);
    idx = objList.GetNextObjectIndex(idx);
  }
}

TUniqueId CCameraManager::GetCurrentCameraId() const {
  if (x4_cineCameras.empty()) {
    return x0_curCameraId;
  }

  return x4_cineCameras.back();
}

TUniqueId CCameraManager::GetLastCineCameraId() const {
  if (x4_cineCameras.empty()) {
    return kInvalidUniqueId;
  }

  return x4_cineCameras.back();
}

CGameCamera& CCameraManager::CurrentCamera(CStateManager& mgr) {
  return *static_cast< CGameCamera* >(mgr.ObjectById(GetCurrentCameraId()));
}

const CGameCamera& CCameraManager::GetCurrentCamera(const CStateManager& mgr) const {
  return *static_cast< const CGameCamera* >(mgr.GetObjectById(GetCurrentCameraId()));
}

const CGameCamera& CCameraManager::GetLastCineCamera(CStateManager& mgr) const {
  return *static_cast< const CGameCamera* >(mgr.GetObjectById(GetLastCineCameraId()));
}

void CCameraManager::SetCurrentCameraId(TUniqueId uid) { x0_curCameraId = uid; }

void CCameraManager::UpdateSfxListener(CStateManager& mgr) {
  CTransform4f xf = GetCurrentCameraTransform(mgr);

  CSfxManager::UpdateListener(xf.GetTranslation(), CVector3f::Zero(), xf.GetColumn(kDY),
                              xf.GetColumn(kDZ), CAudioSys::kMaxVolume);
}

void CCameraManager::UpdateRumble(float dt, CStateManager& mgr) {
  x30_shakeOffset = CVector3f::Zero();

  rstl::list< CCameraShakeData >::iterator it = x14_shakers.begin();
  while (it != x14_shakers.end()) {
    rstl::list< CCameraShakeData >::iterator curr = it;
    ++it;
    curr->Update(dt, mgr);
    if (curr->Done()) {
      x14_shakers.erase(curr);
    } else {
      x30_shakeOffset += curr->GetPoint();
    }
  }

  if (!x14_shakers.empty() && !xa0_25_rumbling && xa0_24_pendingRumble) {
    mgr.GetRumbleManager()->Rumble(mgr, kRFX_CameraShake, 1.f, kRP_Two);
    xa0_25_rumbling = true;
  }
  if (x90_rumbleCooldown > 0.f) {
    x90_rumbleCooldown -= dt;
  } else if (xa0_25_rumbling) {
    xa0_25_rumbling = xa0_24_pendingRumble = false;
  }

  if (mgr.GetPlayer()->GetCameraState() != CPlayer::kCS_FirstPerson && !IsInCinematicCamera()) {
    x30_shakeOffset = CVector3f::Zero();
  }
}

void CCameraManager::UpdateFog(float dt, CStateManager& mgr) {
  if (x98_fogDensitySpeed != 0.f) {
    x94_fogDensityFactor += dt * x98_fogDensitySpeed;
    if ((x98_fogDensitySpeed > 0.f) ? x94_fogDensityFactor > x9c_fogDensityFactorTarget
                                    : x94_fogDensityFactor < x9c_fogDensityFactorTarget) {
      x94_fogDensityFactor = x9c_fogDensityFactorTarget;
      x98_fogDensitySpeed = 0.f;
    }
  }

  CCameraFilterPass& pass = mgr.CameraFilterPass(CStateManager::kCFS_Four);
  if (x74_fluidCounter) {
    const CScriptWater* water = TCastToConstPtr< CScriptWater >(mgr.GetObjectById(GetFluidId()));
    const CGameCamera& camera = GetCurrentCamera(mgr);
    if (water) {
      const float near = camera.GetNearClipDistance();
      const float far = CalculateFogDensity(mgr, water);
      const CColor& color = water->GetUnderwaterFogColor();
      x3c_fog.SetFogExplicit(kRFM_PerspExp, color, CVector2f(near, far));
      if (mgr.GetPlayerState()->GetActiveVisor(mgr) == CPlayerState::kPV_Thermal) {
        pass.DisableFilter(0.f);
      } else {
        pass.SetFilter(CCameraFilterPass::kFT_Multiply, CCameraFilterPass::kFS_Fullscreen, 0.f,
                       color, kInvalidAssetId);
      }
    }
    xa0_26_inWater = true;
  } else if (xa0_26_inWater) {
    mgr.CameraManager()->x3c_fog.DisableFog();
    pass.DisableFilter(0.f);
    xa0_26_inWater = false;
  }

  x3c_fog.Update(dt);
}

float CCameraManager::CalculateFogDensity(CStateManager& mgr, const CScriptWater* water) {
  float density = 1.f - water->GetFluidPlane().GetAlpha();
  if (mgr.GetPlayerState()->HasPowerUp(CPlayerState::kIT_GravitySuit)) {
    density = density * gpTweakGame->GetGravityWaterFogDistanceRange() +
              gpTweakGame->GetGravityWaterFogDistanceBase();
  } else {
    density =
        density * gpTweakGame->GetWaterFogDistanceRange() + gpTweakGame->GetWaterFogDistanceBase();
  }
  return density * x94_fogDensityFactor;
}

void CCameraManager::SetFogDensity(float fogDensityTarget, float fogDensitySpeed) {
  x9c_fogDensityFactorTarget = fogDensityTarget;
  if (x9c_fogDensityFactorTarget < x94_fogDensityFactor) {
    x98_fogDensitySpeed = -fogDensitySpeed;
  } else {
    x98_fogDensitySpeed = fogDensitySpeed;
  }
}

void CCameraManager::Update(float dt, CStateManager& mgr) {
  UpdateCameraHints(dt, mgr);
  ThinkCameras(dt, mgr);
  UpdateSfxListener(mgr);
  UpdateRumble(dt, mgr);
  UpdateFog(dt, mgr);
}

void CCameraManager::SetInsideFluid(bool isInside, TUniqueId fluidId) {
  if (isInside) {
    ++x74_fluidCounter;
    x78_fluidId = fluidId;
  } else {
    --x74_fluidCounter;
  }
}

void CCameraManager::ProcessInput(const CFinalInput& input, CStateManager& mgr) {
  CObjectList& objList = mgr.ObjectListById(kOL_GameCamera);
  int idx = objList.GetFirstObjectIndex();
  while (idx != -1) {
    CGameCamera* camera = reinterpret_cast< CGameCamera* >(objList[idx]);
    if (camera != nullptr && camera->GetControllerNumber() == input.ControllerNumber()) {
      camera->ProcessInput(input, mgr);
    }
    idx = objList.GetNextObjectIndex(idx);
  }
}

void CCameraManager::AddCinemaCamera(TUniqueId uid, CStateManager& mgr) {
  if (x4_cineCameras.empty()) {
    EnterCinematic(mgr);
  }

  RemoveCinemaCamera(uid, mgr);
  x4_cineCameras.reserve(x4_cineCameras.size() + 1);
  x4_cineCameras.push_back(uid);

  if (CCinematicCamera* cam = TCastToPtr< CCinematicCamera >(mgr.ObjectById(uid))) {
    // Into player eye
    if ((cam->GetFlags() & 0x4) != 0) {
      float duration = cam->GetDuration();
      float time = 4.f;
      float delayTime = duration - 4.f;
      if (delayTime < 0.f) {
        delayTime = 0.f;
        time = duration;
      }
      cam->SetFovInterpolation(cam->GetFov(), sFirstPersonFOV, time, delayTime);
    }
  }
}

// TODO nonmatching
void CCameraManager::RemoveCinemaCamera(TUniqueId uid, CStateManager& mgr) {
  rstl::vector< TUniqueId >::iterator it =
      rstl::find(x4_cineCameras.begin(), x4_cineCameras.end(), uid);
  if (it != x4_cineCameras.end()) {
    x4_cineCameras.erase(it);
  }
}

// TODO nonmatching: regswap
void CCameraManager::EnterCinematic(CStateManager& mgr) {
  mgr.Player()->PlayerGun()->CancelFiring(mgr);
  mgr.Player()->UnFreeze(mgr);

  CObjectList& objList = mgr.ObjectListById(kOL_All);
  int idx = objList.GetFirstObjectIndex();
  while (idx != -1) {
    if (CExplosion* explosion = TCastToPtr< CExplosion >(objList[idx])) {
      mgr.DeleteObjectRequest(explosion->GetUniqueId());
    } else if (CWeapon* weapon = TCastToPtr< CWeapon >(objList[idx])) {
      if (weapon->GetActive() &&
          (weapon->GetAttribField() & kPA_KeepInCinematic) != kPA_KeepInCinematic) {
        CPatterned* patterned = TCastToPtr< CPatterned >(mgr.ObjectById(weapon->GetOwnerId()));
        CPlayer* player = TCastToPtr< CPlayer >(mgr.ObjectById(weapon->GetOwnerId()));
        if (patterned || player) {
          mgr.DeleteObjectRequest(weapon->GetUniqueId());
        }
      }
    }
    idx = objList.GetNextObjectIndex(idx);
  }
}

void CCameraManager::SkipCinematic(CStateManager& mgr) {
  CCinematicCamera* ent = static_cast< CCinematicCamera* >(mgr.ObjectById(GetCurrentCameraId()));
  while (ent) {
    ent->SetActive(false);
    ent->WasDeactivated(mgr);
    ent = TCastToPtr< CCinematicCamera >(&CurrentCamera(mgr));
  }
  mgr.Player()->UpdateCinematicState(mgr);
  x7c_fpCamera->SkipCinematic();
}

// TODO: nonmatching
int CCameraManager::AddCameraShaker(const CCameraShakeData& data, bool sfx) {
  CCameraShakeData shakeData = data;
  shakeData.SetId(++x2c_lastShakeId);
  x14_shakers.push_back(shakeData);
  if (xa0_24_pendingRumble != true) {
    xa0_24_pendingRumble = true;
    x90_rumbleCooldown = 0.5f;
  }
  float duration = data.GetDuration();
  if (sfx && duration > 0.f) {
    float component1 = data.GetSomething2();
    float component2 = data.GetSomething();
    if (component2 > component1) {
      component1 = component2;
    }
    float volF = CMath::Clamp(100.f, component1 * 9.f + 100.f, 127.f);
    uchar vol = static_cast< uchar >(volF);
    CSfxHandle sfxHandle;
    if (data.GetFlags() & 0x1) {
      CVector3f pos = data.GetSfxPos();
      sfxHandle =
          CSfxManager::AddEmitter(SFXamb_x_rumble_lp_00, pos, CVector3f::Zero(), vol, false, false);
    } else {
      sfxHandle =
          CSfxManager::SfxStart(SFXamb_x_rumble_lp_00, vol, 64, false, CSfxManager::kMedPriority);
    }
    CSfxManager::SetDuration(sfxHandle, duration);
  }
  return x2c_lastShakeId;
}

void CCameraManager::RemoveCameraShaker(int id) {
  rstl::list< CCameraShakeData >::iterator it = x14_shakers.begin();
  while (it != x14_shakers.end()) {
    if (it->GetId() == id) {
      x14_shakers.erase(it);
      return;
    }
    ++it;
  }
}

CTransform4f CCameraManager::GetCurrentCameraTransform(const CStateManager& mgr) const {
  return GetCurrentCamera(mgr).GetTransform() * CTransform4f::Translate(x30_shakeOffset);
}

CVector3f CCameraManager::GetGlobalCameraTranslation(const CStateManager& mgr) const {
  return GetCurrentCamera(mgr).GetTransform().Rotate(x30_shakeOffset);
}

bool CCameraManager::IsInCinematicCamera() const { return !x4_cineCameras.empty(); }

bool CCameraManager::IsInFirstPersonCamera() const {
  return x0_curCameraId == x7c_fpCamera->GetUniqueId();
}

bool CCameraManager::IsInterpolationCameraActive() const { return x88_interpCamera->GetActive(); }

bool CCameraManager::ShouldBypassInterpolationCamera() const { return false; }

void CCameraManager::SetPlayerCamera(CStateManager& mgr, TUniqueId uid) {
  if (!x88_interpCamera->GetActive()) {
    return;
  }
  x88_interpCamera->SetActive(false);
  x80_ballCamera->SkipFovInterpolation();
  if (!ShouldBypassInterpolationCamera()) {
    SetCurrentCameraId(uid);
  }
}

void CCameraManager::InterpolateToBallCamera(const CTransform4f& xf, TUniqueId camId,
                                             const CVector3f& lookPos, float maxTime,
                                             float positionSpeed, float rotationSpeed,
                                             bool sinusoidal, CStateManager& mgr) {
  if (IsInFirstPersonCamera()) {
    return;
  }
  x88_interpCamera->SetInterpolation(xf, lookPos, maxTime, positionSpeed, rotationSpeed, camId,
                                     sinusoidal, mgr);
  if (!ShouldBypassInterpolationCamera()) {
    SetCurrentCameraId(x88_interpCamera->GetUniqueId());
  }
}

void CCameraManager::SkipBallCameraCinematic(CStateManager& mgr) {
  if (IsInCinematicCamera()) {
    x80_ballCamera->TeleportCamera(GetLastCineCamera(mgr).GetTransform(), mgr);
    x80_ballCamera->SetFovInterpolation(GetLastCineCamera(mgr).GetFov(), x80_ballCamera->GetFov(),
                                        1.f, 0.f);
    SkipCinematic(mgr);
    SetCurrentCameraId(x80_ballCamera->GetUniqueId());
  }
}

void CCameraManager::ApplyCameraHint(const CScriptCameraHint& hint, CStateManager& mgr) {
  if (x80_ballCamera->GetState() == CBallCamera::kBCS_ToBall) {
    x80_ballCamera->SetState(CBallCamera::kBCS_Default);
    mgr.Player()->SetCameraState(CPlayer::kCS_Ball, mgr);
  }

  CScriptCameraHint* oldHint = TCastToPtr<CScriptCameraHint>(mgr.ObjectById(xa6_camHintId));
  xa6_camHintId = hint.GetUniqueId();
  xa8_hintPriority = hint.GetPriority();

  CTransform4f camXf = GetCurrentCameraTransform(mgr);
  x80_ballCamera->ApplyCameraHint(mgr);
}

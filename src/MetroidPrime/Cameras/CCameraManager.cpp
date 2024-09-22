#include "MetroidPrime/Cameras/CCameraManager.hpp"

#include "MetroidPrime/CFluidPlaneCPU.hpp"
#include "MetroidPrime/CRumbleManager.hpp"
#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "MetroidPrime/Cameras/CCinematicCamera.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"
#include "MetroidPrime/Cameras/CInterpolationCamera.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"
#include "MetroidPrime/Tweaks/CTweakGame.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Input/CFinalInput.hpp"

#include "rstl/algorithm.hpp"

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

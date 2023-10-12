#include "MetroidPrime/Cameras/CCameraManager.hpp"

#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/Cameras/CInterpolationCamera.hpp"

#include "MetroidPrime/CRumbleManager.hpp"

#include "MetroidPrime/Player/CPlayer.hpp"

#include "MetroidPrime/Tweaks/CTweakGame.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"

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
    (*it).Update(dt, mgr);
    if ((*it).GetCurTime() >= (*it).GetDuration()) {
      x14_shakers.erase(it);
      ++it;
      continue;
    }
    x30_shakeOffset += (*it).GetPoint();
    ++it;
  }

  if (!x14_shakers.empty() && !xa0_25_rumbling && xa0_24_pendingRumble) {
    mgr.GetRumbleManager()->Rumble(mgr, kRFX_CameraShake, 1.f, kRP_Two);
    xa0_25_rumbling = true;
  }
  if (x90_rumbleCooldown > 0.f) {
    x90_rumbleCooldown -= dt;
  } else if (xa0_25_rumbling) {
    xa0_24_pendingRumble = false;
    xa0_25_rumbling = false;
  }

  if (mgr.GetPlayer()->GetCameraState() != CPlayer::kCS_FirstPerson && !IsInCinematicCamera()) {
    x30_shakeOffset = CVector3f::Zero();
  }
}

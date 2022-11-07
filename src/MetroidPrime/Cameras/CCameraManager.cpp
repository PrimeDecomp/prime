#include "MetroidPrime/Cameras/CCameraManager.hpp"

#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/Cameras/CInterpolationCamera.hpp"

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

  x7c_fpCamera = new CFirstPersonCamera(fpId, xf, plId, gpTweakPlayer->GetOrbitCameraSpeed(),
                                        DefaultFirstPersonFov(), DefaultNearPlane(),
                                        DefaultFarPlane(), DefaultAspect());
  mgr.AddObject(x7c_fpCamera);
  mgr.Player()->SetCameraState(CPlayer::kCS_FirstPerson, mgr);
  SetCurrentCameraId(fpId);
  TUniqueId ballId = mgr.AllocateUniqueId();
  x80_ballCamera = new CBallCamera(ballId, plId, xf, DefaultThirdPersonFov(), DefaultNearPlane(),
                                   DefaultFarPlane(), DefaultAspect());
  mgr.AddObject(x80_ballCamera);

  TUniqueId interpId = mgr.AllocateUniqueId();
  x88_interpCamera = new CInterpolationCamera(interpId, xf);
  mgr.AddObject(x88_interpCamera);
}

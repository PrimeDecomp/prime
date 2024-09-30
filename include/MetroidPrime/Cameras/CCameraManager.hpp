#ifndef _CCAMERAMANAGER
#define _CCAMERAMANAGER

#include "types.h"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/Cameras/CCameraShakeData.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/list.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CBallCamera;
class CCameraShakeData;
class CFinalInput;
class CFirstPersonCamera;
class CGameCamera;
class CInterpolationCamera;
class CScriptCameraHint;
class CScriptWater;
class CStateManager;

#ifdef __MWERKS__
#pragma cpp_extensions on
#endif

class CCameraManager {
  static float sFirstPersonFOV;
  static float sThirdPersonFOV;
  static float sNearPlane;
  static float sFarPlane;
  static float sAspectRatio;
  static float lbl_805A6BE4;
  static float lbl_805A6BE8;

public:
  CCameraManager(TUniqueId curCamera = kInvalidUniqueId);

  void CreateCameras(CStateManager& mgr);
  void UpdateCameras(float dt, CStateManager& mgr);
  void ResetCameras(CStateManager& mgr);
  void Render(const CStateManager& mgr);
  TUniqueId GetCurrentCameraId() const;
  void SetCurrentCameraId(TUniqueId camId);

  CGameCamera& CurrentCamera(CStateManager& mgr);
  const CGameCamera& GetCurrentCamera(const CStateManager& mgr) const;
  const CGameCamera& GetCurrentCinematicCamera(CStateManager& mgr) const;
  TUniqueId GetCurrentCinematicCameraId() const;

  void Update(float dt, CStateManager& mgr);
  void UpdateAudioListener(CStateManager& mgr);
  void UpdateScreenShake(float dt, CStateManager& mgr);
  void UpdateFilters(float dt, CStateManager& mgr);
  void UpdateCameraHints(float dt, CStateManager& mgr);
  float GetWaterFarDistance(CStateManager& mgr, const CScriptWater* water);
  void SetWaterFogScale(float fogDensityTarget, float fogDensitySpeed);

  CFirstPersonCamera* FirstPersonCamera() const /* map */ { return x7c_fpCamera; }
  const CFirstPersonCamera* GetFirstPersonCamera() const { return x7c_fpCamera; }

  void SetPlayerCamera(CStateManager& mgr, TUniqueId newCamId);
  bool IsInCinematicCamera() const;
  void AddCinemaCamera(TUniqueId uid, CStateManager& mgr);
  void RemoveCinemaCamera(TUniqueId uid, CStateManager& mgr);
  void EnterCinematic(CStateManager& mgr);
  void StopCinematics(CStateManager& mgr);

  int AddCameraShaker(const CCameraShakeData& data, bool sfx);
  void RemoveCameraShaker(int id);
  CTransform4f GetCurrentCameraTransform(const CStateManager& mgr) const;
  CVector3f GetGlobalCameraTranslation(const CStateManager& mgr) const;
  bool IsInFirstPersonCamera() const;
  bool IsInterpolationCameraActive() const;
  bool ShouldBypassInterpolationCamera() const;
  void SetupInterpolation(const CTransform4f& xf, TUniqueId camId, CVector3f lookPos,
                               float maxTime, float positionSpeed, float rotationSpeed,
                               bool sinusoidal, CStateManager& mgr);
  void CinematicCut(CStateManager& mgr);
  void UseCameraHint(const CScriptCameraHint& hint, CStateManager& mgr);
  void NoCameraHintsLeft(CStateManager& mgr);
  void AddCameraHint(TUniqueId uid, CStateManager& mgr);
  void DeleteCameraHint(TUniqueId uid, CStateManager& mgr);
  void ReallyRemoveCameraHint(TUniqueId uid, CStateManager& mgr);
  // SetSpecialCameras__14CCameraManagerFR18CFirstPersonCameraR11CBallCamera
  void ResetCameraHint(CStateManager& mgr);

  void SetCurrentFov(float fov) { x3bc_curFov = fov; }

  int GetFluidCounter() const { return x74_fluidCounter; }
  TUniqueId GetFluidId() const { return x78_fluidId; }
  bool GetInsideFluid() const { return x74_fluidCounter == 0; }
  bool IsInsideFluid() const { return xa0_26_inWater; }
  // WasInsideFluid__14CCameraManagerCFv
  // SetWasInsideFluid__14CCameraManagerFb
  void SetInsideFluid(bool isInside, TUniqueId fluidId);

  void ProcessInput(const CFinalInput& input, CStateManager& mgr);

  void SetPathCamera(TUniqueId id, CStateManager& mgr);
  TUniqueId GetPathCameraId() const;
  void SetSpindleCamera(TUniqueId id, CStateManager& mgr);
  TUniqueId GetSpindleCameraId() const;

  CBallCamera* BallCamera() const { return x80_ballCamera; }
  const CBallCamera* GetBallCamera() const { return x80_ballCamera; }

  static float GetDefaultThirdPersonVerticalFOV();
  static float GetDefaultFirstPersonVerticalFOV();
  static float GetDefaultFirstPersonNearClipDistance();
  static float GetDefaultFirstPersonFarClipDistance();
  static float GetDefaultAspectRatio();

private:
  TUniqueId x0_curCameraId;
  rstl::vector< TUniqueId > x4_cineCameras;
  rstl::list< CCameraShakeData > x14_shakers;
  uint x2c_lastShakeId;
  CVector3f x30_shakeOffset;
  CGameArea::CAreaFog x3c_fog;
  int x74_fluidCounter;
  TUniqueId x78_fluidId;
  CFirstPersonCamera* x7c_fpCamera;
  CBallCamera* x80_ballCamera;
  int x84_rumbleId;
  CInterpolationCamera* x88_interpCamera;
  short x8c_;
  float x90_rumbleCooldown;
  float x94_fogDensityFactor;
  float x98_fogDensitySpeed;
  float x9c_fogDensityFactorTarget;
  union {
    struct {
      bool xa0_24_pendingRumble : 1;
      bool xa0_25_rumbling : 1;
      bool xa0_26_inWater : 1;
    };
    uchar xa0_flags;
  };

  TUniqueId xa2_spindleCamId;
  TUniqueId xa4_pathCamId;
  TUniqueId xa6_camHintId;
  int xa8_hintPriority;
  rstl::reserved_vector< rstl::pair< int, TUniqueId >, 64 > xac_cameraHints;
  rstl::reserved_vector< TUniqueId, 64 > x2b0_inactiveCameraHints;
  rstl::reserved_vector< TUniqueId, 64 > x334_activeCameraHints;
  bool x3b8_24_ : 1;
  bool x3b8_25_ : 1;
  float x3bc_curFov;
};
CHECK_SIZEOF(CCameraManager, 0x3c0)

#ifdef __MWERKS__
#pragma cpp_extensions reset
#endif

#endif // _CCAMERAMANAGER

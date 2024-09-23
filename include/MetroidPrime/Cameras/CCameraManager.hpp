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

  void CreateStandardCameras(CStateManager& mgr);
  void ThinkCameras(float dt, CStateManager& mgr);
  void ResetCameras(CStateManager& mgr);
  void RenderCameras(const CStateManager& mgr);
  TUniqueId GetCurrentCameraId() const;
  void SetCurrentCameraId(TUniqueId camId);

  CGameCamera& CurrentCamera(CStateManager& mgr);
  const CGameCamera& GetCurrentCamera(const CStateManager& mgr) const;
  const CGameCamera& GetLastCineCamera(CStateManager& mgr) const;
  TUniqueId GetLastCineCameraId() const;

  void Update(float dt, CStateManager& mgr);
  void UpdateSfxListener(CStateManager& mgr);
  void UpdateRumble(float dt, CStateManager& mgr);
  void UpdateFog(float dt, CStateManager& mgr);
  void UpdateCameraHints(float dt, CStateManager& mgr);
  float CalculateFogDensity(CStateManager& mgr, const CScriptWater* water);
  void SetFogDensity(float fogDensityTarget, float fogDensitySpeed);

  CFirstPersonCamera* FirstPersonCamera() const /* map */ { return x7c_fpCamera; }
  const CFirstPersonCamera* GetFirstPersonCamera() const { return x7c_fpCamera; }

  void SetPlayerCamera(CStateManager& mgr, TUniqueId newCamId);
  bool IsInCinematicCamera() const;
  void AddCinemaCamera(TUniqueId uid, CStateManager& mgr);
  void RemoveCinemaCamera(TUniqueId uid, CStateManager& mgr);
  void EnterCinematic(CStateManager& mgr);
  void SkipCinematic(CStateManager& mgr);

  int AddCameraShaker(const CCameraShakeData& data, bool sfx);
  void RemoveCameraShaker(int id);
  CTransform4f GetCurrentCameraTransform(const CStateManager& mgr) const;
  CVector3f GetGlobalCameraTranslation(const CStateManager& mgr) const;
  bool IsInFirstPersonCamera() const;
  bool IsInterpolationCameraActive() const;
  bool ShouldBypassInterpolationCamera() const;
  void InterpolateToBallCamera(const CTransform4f& xf, TUniqueId camId, const CVector3f& lookPos,
                               float maxTime, float positionSpeed, float rotationSpeed,
                               bool sinusoidal, CStateManager& mgr);
  void SkipBallCameraCinematic(CStateManager& mgr);
  void ApplyCameraHint(const CScriptCameraHint& hint, CStateManager& mgr);
  // SetSpecialCameras__14CCameraManagerFR18CFirstPersonCameraR11CBallCamera

  void SetCurrentFov(float fov) { x3bc_curFov = fov; }

  int GetFluidCounter() const { return x74_fluidCounter; }
  TUniqueId GetFluidId() const { return x78_fluidId; }
  // GetInsideFluid__14CCameraManagerCFv
  // WasInsideFluid__14CCameraManagerCFv
  // SetWasInsideFluid__14CCameraManagerFb
  void SetInsideFluid(bool isInside, TUniqueId fluidId);

  void ProcessInput(const CFinalInput& input, CStateManager& mgr);

  static float DefaultThirdPersonFov();
  static float DefaultFirstPersonFov();
  static float DefaultNearPlane();
  static float DefaultFarPlane();
  static float DefaultAspect();

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

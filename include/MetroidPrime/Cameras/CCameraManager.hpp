#ifndef _CCAMERAMANAGER
#define _CCAMERAMANAGER

#include "types.h"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Cameras/CCameraShakeData.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/list.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CBallCamera;
class CCameraShakeData;
class CFirstPersonCamera;
class CGameCamera;
class CInterpolationCamera;
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
  CCameraManager(TUniqueId curCamera);

  void CreateStandardCameras(CStateManager& mgr);
  void ThinkCameras(float dt, CStateManager& mgr);
  void ResetCameras(CStateManager& mgr);
  void RenderCameras(const CStateManager& mgr);
  TUniqueId GetCurrentCameraId() const;

  CGameCamera& CurrentCamera(CStateManager& mgr);
  const CGameCamera& GetCurrentCamera(const CStateManager& mgr) const;
  const CGameCamera& GetLastCineCamera(CStateManager& mgr) const;
  TUniqueId GetLastCineCameraId() const;

  void SetCurrentCameraId(TUniqueId camId);
  
  void UpdateSfxListener(CStateManager& mgr);
  void UpdateRumble(float dt, CStateManager& mgr);

  CFirstPersonCamera* FirstPersonCamera() const /* map */ { return x7c_fpCamera; }
  const CFirstPersonCamera* GetFirstPersonCamera() const { return x7c_fpCamera; }

  CTransform4f GetCurrentCameraTransform(const CStateManager& mgr) const;
  void SetPlayerCamera(CStateManager& mgr, TUniqueId newCamId);
  void SetFogDensity(float fogDensityTarget, float fogDensitySpeed);
  bool IsInCinematicCamera() const;

  
  void RemoveCameraShaker(int id);
  int AddCameraShaker(const CCameraShakeData& data, bool sfx);

  void SetCurrentFov(float fov) { x3bc_curFov = fov; }
  
  int GetFluidCounter() const { return x74_fluidCounter; }


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

#ifdef __MWERKS
#pragma cpp_extensions reset
#endif 
#endif // _CCAMERAMANAGER

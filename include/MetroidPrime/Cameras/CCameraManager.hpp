#ifndef _CCAMERAMANAGER_HPP
#define _CCAMERAMANAGER_HPP

#include "types.h"

#include "MetroidPrime/CAreaFog.hpp"
#include "MetroidPrime/TGameTypes.hpp"

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

class CCameraManager {
public:
  CGameCamera* GetCurrentCamera(CStateManager& mgr);

private:
  TUniqueId x0_curCameraId;
  rstl::vector< TUniqueId > x4_cineCameras;
  rstl::list< CCameraShakeData > x14_shakers;
  u32 x2c_lastShakeId;
  CVector3f x30_shakeOffset;
  CAreaFog x3c_fog;
  s32 x74_fluidCounter;
  TUniqueId x78_fluidId;
  CFirstPersonCamera* x7c_fpCamera;
  CBallCamera* x80_ballCamera;
  s32 x84_rumbleId;
  CInterpolationCamera* x88_interpCamera;
  s16 x8c_;
  f32 x90_rumbleCooldown;
  f32 x94_fogDensityFactor;
  f32 x98_fogDensitySpeed;
  f32 x9c_fogDensityFactorTarget;
  bool xa0_24_pendingRumble : 1;
  bool xa0_25_rumbling : 1;
  bool xa0_26_inWater : 1;
  TUniqueId xa2_spindleCamId;
  TUniqueId xa4_pathCamId;
  TUniqueId xa6_camHintId;
  s32 xa8_hintPriority;
  rstl::reserved_vector< rstl::pair< s32, TUniqueId >, 64 > xac_cameraHints;
  rstl::reserved_vector< TUniqueId, 64 > x2b0_inactiveCameraHints;
  rstl::reserved_vector< TUniqueId, 64 > x334_activeCameraHints;
  bool x3b8_24_ : 1;
  bool x3b8_25_ : 1;
  f32 x3bc_curFov;
};
CHECK_SIZEOF(CCameraManager, 0x3c0)

#endif
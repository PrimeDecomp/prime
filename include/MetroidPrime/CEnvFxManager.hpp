#ifndef _CENVFXMANAGER
#define _CENVFXMANAGER

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CGenDescription;
class CTexture;

class CVectorFixed8_8 {
private:
  s16 x;
  s16 y;
  s16 z;
};

class CEnvFxManagerGrid {
private:
  bool x0_24_blockDirty;
  CVector2i x4_position;             /* 8.8 fixed point */
  CVector2i xc_extent;               /* 8.8 fixed point */
  rstl::pair< bool, f32 > x14_block; /* Blocked-bool, Z-coordinate */
  rstl::vector< CVectorFixed8_8 > x1c_particles;
};

class CEnvFxManager {
public:
  static void Initialize();
  void SetFxDensity(s32, float);

private:
  CAABox x0_particleBounds;
  CVector3f x18_focusCellPosition;
  bool x24_enableSplash;
  f32 x28_firstSnowForce;
  int x2c_lastBlockedGridIdx;
  f32 x30_fxDensity;
  f32 x34_targetFxDensity;
  f32 x38_maxDensityDeltaSpeed;
  bool x3c_snowflakeTextureMipBlanked;
  TLockedToken< CTexture > x40_txtrEnvGradient;
  rstl::reserved_vector< CEnvFxManagerGrid, 64 > x50_grids;
  f32 xb54_baseSplashRate;
  TLockedToken< CGenDescription > xb58_envRainSplash;
  bool xb64_;
  TUniqueId xb68_envRainSplashId;
  bool xb6a_rainSoundActive;
  CSfxHandle xb6c_leftRainSound;
  CSfxHandle xb70_rightRainSound;
  TLockedToken< CTexture > xb74_txtrSnowFlake;
  bool xb80_;
  rstl::reserved_vector< CVector3f, 16 > xb84_snowZDeltas;
  TLockedToken< CTexture > xc48_underwaterFlake;
  bool xc54_;
};

#endif // _CENVFXMANAGER

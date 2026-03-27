#ifndef _CENVFXMANAGER
#define _CENVFXMANAGER

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CGenDescription;
class CStateManager;
class CTexture;
class CTransform4f;

enum EEnvFxType {
  kEFX_None,
  kEFX_Snow,
  kEFX_Rain,
  kEFX_UnderwaterFlake,
};

enum EPhazonType { kPT_None, kPT_Blue, kPT_Orange };

class CVectorFixed8_8 {
public:
  CVectorFixed8_8() : x(0), y(0), z(0) {}
  CVectorFixed8_8(short xi, short yi, short zi) : x(xi), y(yi), z(zi) {}

  short GetX() const { return x; }
  short GetY() const { return y; }
  short GetZ() const { return z; }

  CVectorFixed8_8& operator+=(const CVectorFixed8_8& rhs) {
    x += rhs.x;
    y += rhs.y;
    z += rhs.z;
    return *this;
  }

  CVectorFixed8_8& operator-=(const CVectorFixed8_8& rhs) {
    x -= rhs.x;
    y -= rhs.y;
    z -= rhs.z;
    return *this;
  }

  CVectorFixed8_8& operator=(const CVectorFixed8_8& rhs) {
    x = rhs.x;
    y = rhs.y;
    z = rhs.z;
    return *this;
  }

  CVectorFixed8_8 operator+(const CVectorFixed8_8& rhs) const {
    return CVectorFixed8_8(x + rhs.x, y + rhs.y, z + rhs.z);
  }

  CVectorFixed8_8 operator-(const CVectorFixed8_8& rhs) const {
    return CVectorFixed8_8(x - rhs.x, y - rhs.y, z - rhs.z);
  }

  static inline CVectorFixed8_8 FromCVector3f(const CVector3f& v);

  short x;
  short y;
  short z;
};
CHECK_SIZEOF(CVectorFixed8_8, 0x6);

inline short real_to_fixed8_8(float f) {
  return static_cast< short >(static_cast< int >(256.f * f));
}

inline float fixed8_8_to_real(short val) { return (1.f / 256.f) * static_cast< float >(val); }

inline CVectorFixed8_8 CVectorFixed8_8::FromCVector3f(const CVector3f& v) {
  return CVectorFixed8_8(real_to_fixed8_8(v.GetX()), real_to_fixed8_8(v.GetY()),
                         real_to_fixed8_8(v.GetZ()));
}

class CEnvFxManagerGrid {
  friend class CEnvFxManager;

public:
  CEnvFxManagerGrid(const CVector2i& position, const CVector2i& extent,
                    const rstl::vector< CVectorFixed8_8 >& initialParticles, int reserve);

  void Render(const CTransform4f& xf, const CTransform4f& invXf, const CTransform4f& camXf,
              float fxDensity, EEnvFxType fxType);

  void SetDirty(bool dirty) { x0_24_blockDirty = dirty; }
  bool IsDirty() const { return x0_24_blockDirty; }

  const CVector2i& GetStart() const { return x4_position; }
  void SetStart(const CVector2i& start) { x4_position = start; }

  rstl::pair< bool, float > GetVisibility() const { return x14_block; }
  void SetVisibility(rstl::pair< bool, float > vis) { x14_block = vis; }

  rstl::vector< CVectorFixed8_8 >& Particles() { return x1c_particles; }
  const rstl::vector< CVectorFixed8_8 >& Particles() const { return x1c_particles; }

private:
  void RenderSnowParticles(const CTransform4f& camXf);
  void RenderRainParticles(const CTransform4f& camXf);
  void RenderUnderwaterParticles(const CTransform4f& camXf);

  bool x0_24_blockDirty : 1;
  CVector2i x4_position;               /* 8.8 fixed point */
  CVector2i xc_extent;                 /* 8.8 fixed point */
  rstl::pair< bool, float > x14_block; /* Blocked-bool, Z-coordinate */
  rstl::vector< CVectorFixed8_8 > x1c_particles;
};
CHECK_SIZEOF(CEnvFxManagerGrid, 0x2c);

class CEnvFxManager {
public:
  CEnvFxManager();

  void Update(float dt, CStateManager& mgr);
  void Render(const CStateManager& mgr);
  static void Initialize();
  void SetFxDensity(int, float);
  void AreaLoaded();
  void AsyncLoadResources(CStateManager& mgr);
  void SetSplashRate(float f) { xb54_baseSplashRate = f; }
  bool IsSplashActive() const { return x24_enableSplash; }
  float GetRainMagnitude() const { return x30_fxDensity; }
  void Cleanup();

private:
  void SetSplashEffectRate(float rate, CStateManager& mgr);
  void UpdateRainSounds(CStateManager& mgr);
  CVector3f GetParticleBoundsToWorldScale() const;
  CTransform4f GetParticleBoundsToWorldTransform() const;
  void UpdateVisorSplash(CStateManager& mgr, float dt, const CTransform4f& camXf);
  void MoveWrapCells(int moveX, int moveY);
  void CalculateSnowForces(const CVectorFixed8_8& zVec,
                           rstl::reserved_vector< CVectorFixed8_8, 256 >& snowForces,
                           EEnvFxType type, const CVector3f& oopbtws, float dt);
  static void BuildBlockObjectList(rstl::reserved_vector< TUniqueId, 1024 >& list,
                                   CStateManager& mgr);
  void UpdateBlockedGrids(CStateManager& mgr, EEnvFxType type, const CTransform4f& camXf,
                          const CTransform4f& xf, const CTransform4f& invXf);
  void CreateNewParticles(EEnvFxType type);
  void UpdateSnowParticles(rstl::reserved_vector< CVectorFixed8_8, 256 >& snowForces);
  void UpdateRainParticles(const CVectorFixed8_8& zVec, const CVector3f& oopbtws, float dt);
  void UpdateUnderwaterParticles(const CVectorFixed8_8& zVec);
  void SetupSnowTevs(CStateManager& mgr);
  void SetupRainTevs();
  void SetupUnderwaterTevs(const CTransform4f& invXf, CStateManager& mgr);
  void SetupDefaultTevSwapMode();
  void BlankFirstSnowflakeMip(CTexture& tex);

  CAABox x0_particleBounds;
  CVector3f x18_focusCellPosition;
  bool x24_enableSplash;
  float x28_firstSnowForce;
  int x2c_lastBlockedGridIdx;
  float x30_fxDensity;
  float x34_targetFxDensity;
  float x38_maxDensityDeltaSpeed;
  bool x3c_snowflakeTextureMipBlanked;
  rstl::optional_object< TLockedToken< CTexture > > x40_txtrEnvGradient;
  rstl::reserved_vector< CEnvFxManagerGrid, 64 > x50_grids;
  float xb54_baseSplashRate;
  rstl::optional_object< TLockedToken< CGenDescription > > xb58_envRainSplash;
  TUniqueId xb68_envRainSplashId;
  bool xb6a_rainSoundActive;
  CSfxHandle xb6c_leftRainSound;
  CSfxHandle xb70_rightRainSound;
  rstl::optional_object< TLockedToken< CTexture > > xb74_txtrSnowFlake;
  rstl::reserved_vector< CVector3f, 16 > xb84_snowZDeltas;
  rstl::optional_object< TLockedToken< CTexture > > xc48_underwaterFlake;
};
CHECK_SIZEOF(CEnvFxManager, 0xc58);

#endif // _CENVFXMANAGER

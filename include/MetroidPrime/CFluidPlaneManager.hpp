#ifndef _CFLUIDPLANEMANAGER
#define _CFLUIDPLANEMANAGER

#include "types.h"

#include "MetroidPrime/CRippleManager.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

class CScriptWater;
class CStateManager;
class CVector3f;

#include "Kyoto/Math/CFrustumPlanes.hpp"
#include "MetroidPrime/CFluidUVMotion.hpp"
#include "MetroidPrime/CRippleManager.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"

class CScriptWater;
class CStateManager;
class CRipple;
class CTexture;
class CTransform4f;
class CRippleManager;


class CFluidPlaneCPURender {
public:
  enum ENormalMode {
    kNM_None,
    kNM_NoNormals,
    kNM_Normals,
    kNM_NBT
  };

  struct SHFieldSample {
    float height;
    signed char nx;
    signed char ny;
    signed char nz;
    unsigned char wavecapIntensity;
  };

  struct SPatchInfo {
    char x0_xSubdivs;
    char x1_ySubdivs;
    float x4_localMinX;
    float x8_localMinY;
    float xc_globalMinX;
    float x10_globalMinY;
    float x14_tileSize;
    float x18_rippleResolution;
    float x1c_tileHypRadius;
    float x20_ooTileSize;
    float x24_ooRippleResolution;
    short x28_tileX;
    short x2a_gridDimX;
    short x2c_gridDimY;
    short x2e_tileY;
    const bool* x30_gridFlags;
    uchar x34_redShift;
    uchar x35_greenShift;
    uchar x36_blueShift;
    uchar x37_normalMode;
    float x38_wavecapIntensityScale;

    SPatchInfo(const CVector3f& localMin, const CVector3f& localMax, const CVector3f& pos,
               float rippleResolution, float tileSize, float wavecapIntensityScale,
               int numSubdivisionsInHField, int normalMode, int redShift, int greenShift,
               uchar blueShift, int tileX, int gridDimX, int gridDimY, int tileY,
               const bool* gridFlags);
  };

  struct SRippleInfo {
    const CRipple* x0_ripple;
    int x4_fromX;
    int x8_toX;
    int xc_fromY;
    int x10_toY;
    int x14_gfromX;
    int x18_gtoX;
    int x1c_gfromY;
    int x20_gtoY;

    SRippleInfo(const CRipple& ripple, int fromX, int toX, int fromY, int toY)
    : x0_ripple(&ripple)
    , x14_gfromX(fromX)
    , x18_gtoX(toX)
    , x1c_gfromY(fromY)
    , x20_gtoY(toY) {}
  };

  static int numTilesInHField;
  static int numSubdivisionsInTile;
  static int numSubdivisionsInHField;
};

class CFluidPlane {
  static float kRippleIntensityRange;

public:
  enum EFluidType {
    kFT_NormalWater,
    kFT_PoisonWater,
    kFT_Lava,
    kFT_PhazonFluid,
    kFT_Four,
    kFT_ThickLava
  };

  CFluidPlane(const CAssetId texPattern1, const CAssetId texPattern2, CAssetId texColor,
              const float alpha, const EFluidType fluidType, const float rippleIntensity,
              const CFluidUVMotion& motion);
  virtual ~CFluidPlane();

  virtual void AddRipple(const float mag, const TUniqueId rippler, const CVector3f& center,
                         const CScriptWater& water, CStateManager& mgr);
  virtual void AddRipple(float intensity, TUniqueId rippler, const CVector3f& center,
                         const CVector3f& velocity, const CScriptWater& water, CStateManager& mgr,
                         const CVector3f& upVec);
  virtual void AddRipple(const CRipple& ripple, const CScriptWater& water, CStateManager& mgr);
  virtual void Render(const CStateManager& mgr, const CAABox&, const CFrustumPlanes&,
                      const CRippleManager&, const CVector3f&);
  virtual void Render(const CStateManager& mgr, float alpha, const CAABox& aabb,
                      const CTransform4f& xf, const CTransform4f& areaXf, bool noNormals,
                      const CFrustumPlanes& frustum,
                      const rstl::optional_object< CRippleManager >& rippleManager,
                      TUniqueId waterId, const bool* gridFlags, int gridDimX, int gridDimY,
                      const CVector3f& areaCenter) const {}

  void Update();

  float CalculateRippleIntensity(const float base) const;
  float GetRippleScaleFromKineticEnergy(float baseI, float velDot);

  float GetAlpha() const { return x40_alpha; }
  EFluidType GetFluidType() const { return x44_fluidType; }
  const CFluidUVMotion& GetUVMotion() const { return x4c_uvMotion; }
  const TLockedToken< CTexture >& GetTexturePattern1() const { return *x10_texPattern1; }
  bool HasTexturePattern1() const { return x10_texPattern1; }
  const TLockedToken< CTexture >& GetTexturePattern2() const { return *x20_texPattern2; }
  bool HasTexturePattern2() const { return x20_texPattern2; }
  const TLockedToken< CTexture >& GetColorTexture() const { return *x30_texColor; }
  bool HasColorTexture() const { return x30_texColor; }
  static const float GetRippleIntensityRange() { return kRippleIntensityRange; }

protected:
  void RenderStripWithRipples(const CFluidPlaneCPURender::SHFieldSample& heights,
                              const unsigned char& flags, float curY, int startYDiv,
                              const CFluidPlaneCPURender::SPatchInfo& info);

  CAssetId x4_texPattern1Id;
  CAssetId x8_texPattern2Id;
  CAssetId xc_texColorId;
  rstl::optional_object< TLockedToken< CTexture > > x10_texPattern1;
  rstl::optional_object< TLockedToken< CTexture > > x20_texPattern2;
  rstl::optional_object< TLockedToken< CTexture > > x30_texColor;
  float x40_alpha;
  EFluidType x44_fluidType;
  float x48_rippleIntensity;
  CFluidUVMotion x4c_uvMotion;
};
CHECK_SIZEOF(CFluidPlane, 0xA0);

extern const bool sRenderFog;

class CFluidPlaneManager {
public:
  class CFluidProfile {
  public:
    void Clear();

  private:
    float x0_;
    float x4_;
    float x8_;
    float xc_;
    float x10_;
  };

  class CSplashRecord {
  public:
    CSplashRecord(float time, TUniqueId id) : x0_time(time), x4_id(id) {}
    void SetTime(float t) { x0_time = t; }
    float GetTime() const { return x0_time; }
    TUniqueId GetUniqueId() const { return x4_id; }

  private:
    float x0_time;
    TUniqueId x4_id;
  };

  CFluidPlaneManager();

  void Update(float dt);
  void StartFrame(bool b) const;
  void EndFrame() const;

  void CreateSplash(TUniqueId splasher, CStateManager& mgr, const CScriptWater& water,
                    const CVector3f& pos, float factor, bool sfx);

  CRippleManager& RippleManager() { return x0_rippleManager; }
  const CRippleManager& GetRippleManager() const { return x0_rippleManager; }
  float GetLastSplashDeltaTime(TUniqueId uid) const;
  float GetLastRippleDeltaTime(TUniqueId uid) const;

  rstl::reserved_vector< CSplashRecord, 32 >& SplashRecords() { return x18_splashes; }
  const rstl::reserved_vector< CSplashRecord, 32 >& GetSplashRecords() const {
    return x18_splashes;
  }
  float GetTime() const { return x11c_uvT; }
  void SetTime(float t) { x11c_uvT = t; }

  float GetUVTime() const { return x11c_uvT; }

  static uint GetFreqTableIndex(float);
  static void SetupRippleMap();
  static CFluidProfile sProfile;

private:
  CRippleManager x0_rippleManager;
  rstl::reserved_vector< CSplashRecord, 32 > x18_splashes;
  float x11c_uvT;
  mutable bool x120_;
  mutable bool x121_;
};
CHECK_SIZEOF(CFluidPlaneManager, 0x124);

#endif // _CFLUIDPLANEMANAGER

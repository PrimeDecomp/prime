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

uint fn_8012f098();

class CFluidPlaneCPURender {
public:
  struct SPatchInfo {};
  struct SRippleInfo {};
  struct SHFieldSample {};
};

class CFluidPlane {
  static const float kRippleIntensityRange;

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
  virtual void Update();
  virtual void Render(const CStateManager& mgr, const CAABox&, const CFrustumPlanes&,
                      const CRippleManager&, const CVector3f&);

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

class CFluidPlaneManager {
public:
  CFluidPlaneManager();
  // TODO

  void CreateSplash(TUniqueId splasher, CStateManager& mgr, const CScriptWater& water,
                    const CVector3f& pos, float factor, bool sfx);

  CRippleManager& RippleManager() { return x0_rippleManager; }
  float GetLastSplashDeltaTime(TUniqueId uid) const;
  float GetLastRippleDeltaTime(TUniqueId uid) const;

  float GetUVTime() const { return x11c_uvT; }

private:
  class CSplashRecord {
    float x0_time;
    TUniqueId x4_id;
  };

  CRippleManager x0_rippleManager;
  rstl::reserved_vector< CSplashRecord, 32 > x18_splashes;
  float x11c_uvT;
  bool x120_;
  bool x121_;
};
CHECK_SIZEOF(CFluidPlaneManager, 0x124);

#endif // _CFLUIDPLANEMANAGER

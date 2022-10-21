#ifndef _CACTORPARAMETERS
#define _CACTORPARAMETERS

#include "types.h"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/pair.hpp"

class CActorLights;

class CLightParameters {
public:
  enum EShadowTesselation {
    kST_Invalid = -1,
    kST_Zero,
  };

  enum EWorldLightingOptions {
    kLO_Zero,
    kLO_NormalWorld,
    kLO_NoShadowCast,
    kLO_DisableWorld,
  };

  enum ELightRecalculationOptions {
    kLR_LargeFrameCount,
    kLR_EightFrames,
    kLR_FourFrames,
    kLR_OneFrame,
  };

  // CLightParameters() {
  //   // TODO
  // }

  virtual ~CLightParameters();

  const CColor& GetAmbientColor() const { return x18_noLightsAmbient; }
  bool ShouldMakeLights() const { return x1c_makeLights; }
  int GetMaxAreaLights() const { return x3c_maxAreaLights; }

  rstl::auto_ptr< CActorLights > MakeActorLights() const;

private:
  bool x4_castShadow;
  float x8_shadowScale;
  EShadowTesselation xc_shadowTesselation;
  float x10_shadowAlpha;
  float x14_maxShadowHeight;
  CColor x18_noLightsAmbient;
  bool x1c_makeLights;
  bool x1d_ambientChannelOverflow;
  EWorldLightingOptions x20_worldLightingOptions;
  ELightRecalculationOptions x24_lightRecalcOpts;
  int x28_layerIdx;
  CVector3f x2c_actorPosBias;
  int x38_maxDynamicLights;
  int x3c_maxAreaLights;
};
CHECK_SIZEOF(CLightParameters, 0x40)

class CScannableParameters {
public:
  CScannableParameters() {}
  CScannableParameters(CAssetId scanId) : x0_scanId(scanId) {}

  CAssetId GetScannableObject0() const { return x0_scanId; }

private:
  CAssetId x0_scanId;
};
CHECK_SIZEOF(CScannableParameters, 0x4)

class CVisorParameters {
public:
  CVisorParameters() {
    // TODO
  }
  CVisorParameters(uchar mask, bool b1, bool scanPassthrough)
  : x0_mask(mask), x0_4_b1(b1), x0_5_scanPassthrough(scanPassthrough) {}

  uchar GetMask() const { return x0_mask; }
  // TODO: GetIsBlockXRay__16CVisorParametersCFv?
  bool GetBool1() const { return x0_4_b1; }
  bool GetScanPassthrough() const { return x0_5_scanPassthrough; }

  static CVisorParameters None();

private:
  uint x0_mask : 4;
  uint x0_4_b1 : 1;
  uint x0_5_scanPassthrough : 1;
};
CHECK_SIZEOF(CVisorParameters, 0x4)

class CActorParameters {
public:
  // CActorParameters() {
  //   // TODO
  // }
  CActorParameters Scannable(const CScannableParameters& sParms) const;

  const CLightParameters& GetLighting() const { return x0_lightParams; }
  const CScannableParameters& GetScannable() const { return x40_scanParams; }
  const rstl::pair< CAssetId, CAssetId >& GetXRay() const { return x44_xrayAssets; }
  const rstl::pair< CAssetId, CAssetId >& GetInfra() const { return x4c_thermalAssets; }
  const CVisorParameters& GetVisorParameters() const { return x54_visorParams; }
  float GetThermalMag() const { return x64_thermalMag; }
  bool GetUseGlobalRenderTime() const { return x58_24_globalTimeProvider; }
  bool IsHotInThermal() const { return x58_25_thermalHeat; }
  bool ForceRenderUnsorted() const { return x58_26_renderUnsorted; }
  bool NoSortThermal() const { return x58_27_noSortThermal; }
  float GetFadeInTime() const { return x5c_fadeInTime; }
  float GetFadeOutTime() const { return x60_fadeOutTime; }

  static CActorParameters None();

private:
  CLightParameters x0_lightParams;
  CScannableParameters x40_scanParams;
  rstl::pair< CAssetId, CAssetId > x44_xrayAssets;
  rstl::pair< CAssetId, CAssetId > x4c_thermalAssets;
  CVisorParameters x54_visorParams;
  bool x58_24_globalTimeProvider : 1;
  bool x58_25_thermalHeat : 1;
  bool x58_26_renderUnsorted : 1;
  bool x58_27_noSortThermal : 1;
  float x5c_fadeInTime;
  float x60_fadeOutTime;
  float x64_thermalMag;
};
CHECK_SIZEOF(CActorParameters, 0x68)

#endif // _CACTORPARAMETERS

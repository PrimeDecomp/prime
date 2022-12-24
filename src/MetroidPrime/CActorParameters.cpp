#include "MetroidPrime/CActorParameters.hpp"

#include "MetroidPrime/CActorLights.hpp"

CActorParameters::CActorParameters()
: x0_lighting(CLightParameters::None())
, x40_scannable(kInvalidAssetId)
, x44_xrayAssets(0, 0)
, x4c_thermalAssets(0, 0)
, x54_visor(CVisorParameters::None())
, x58_24_useGlobalRenderTime(true)
, x58_25_thermalHeat(false)
, x58_27_noSortThermal(false)
, x5c_fadeInTime(0.f)
, x60_fadeOutTime(0.f)
, x64_thermalMag(0.f) {}

CActorParameters::CActorParameters(const CLightParameters& lightParms,
                                   const CScannableParameters& scanParms,
                                   const rstl::pair< CAssetId, CAssetId >& xrayAssets,
                                   const rstl::pair< CAssetId, CAssetId >& thermalAssets,
                                   const CVisorParameters& visorParms, bool globalTimeProvider,
                                   bool thermalHeat, bool renderUnsorted, bool noSortThermal,
                                   float fadeInTime, float fadeOutTime, float thermalMag)
: x0_lighting(lightParms)
, x40_scannable(scanParms)
, x44_xrayAssets(xrayAssets)
, x4c_thermalAssets(thermalAssets)
, x54_visor(visorParms)
, x58_24_useGlobalRenderTime(globalTimeProvider)
, x58_25_thermalHeat(thermalHeat)
, x58_26_forceRenderUnsorted(renderUnsorted)
, x58_27_noSortThermal(noSortThermal)
, x5c_fadeInTime(fadeInTime)
, x60_fadeOutTime(fadeOutTime)
, x64_thermalMag(thermalMag) {}

CActorParameters CActorParameters::Scannable(const CScannableParameters& sParms) const {
  CActorParameters result(*this);
  result.x40_scannable = sParms;
  return result;
}

CActorParameters CActorParameters::HotInThermal(bool hot) const {
  CActorParameters result(*this);
  result.x58_25_thermalHeat = hot;
  return result;
}

CActorParameters
CActorParameters::MakeDamageableTriggerActorParms(const CVisorParameters& visorParam) const {
  CActorParameters result(*this);
  result.x54_visor = visorParam;
  return result;
}

CLightParameters::CLightParameters(bool castShadow, float shadowScale,
                                   CLightParameters::EShadowTessellation shadowTess,
                                   float shadowAlpha, float maxShadowHeight,
                                   const CColor& ambientColor, bool makeLights,
                                   CLightParameters::EWorldLightingOptions useWorldLighting,
                                   CLightParameters::ELightRecalculationOptions lightRecalculation,
                                   const CVector3f& lightingPositionOffset, int maxDynamicLights,
                                   int maxAreaLights, bool ambChannelOverflow, int useLightSet)
: x4_castShadow(castShadow)
, x8_shadowScale(shadowScale)
, xc_shadowTesselation(shadowTess)
, x10_shadowAlpha(shadowAlpha)
, x14_maxShadowHeight(maxShadowHeight)
, x18_ambientColor(ambientColor)
, x1c_makeLights(makeLights)
, x1d_ambientChannelOverflow(ambChannelOverflow)
, x20_useWorldLighting(useWorldLighting)
, x24_lightRecalculation(lightRecalculation)
, x28_useLightSet(useLightSet)
, x2c_lightingPositionOffset(lightingPositionOffset)
, x38_maxDynamicLights(maxDynamicLights)
, x3c_maxAreaLights(maxAreaLights) {
  if (x38_maxDynamicLights > 4 || x38_maxDynamicLights == -1)
    x38_maxDynamicLights = 4;
  if (x3c_maxAreaLights > 4 || x3c_maxAreaLights == -1)
    x3c_maxAreaLights = 4;
}

CLightParameters::CLightParameters()
: x4_castShadow(false)
, x8_shadowScale(0.f)
, xc_shadowTesselation(kST_Zero)
, x10_shadowAlpha(0.f)
, x14_maxShadowHeight(0.f)
, x18_ambientColor(CColor::White())
, x1c_makeLights(false)
, x1d_ambientChannelOverflow(false)
, x20_useWorldLighting(kLO_Zero)
, x24_lightRecalculation(kLR_EightFrames)
, x28_useLightSet(0)
, x2c_lightingPositionOffset(CVector3f::Zero())
, x38_maxDynamicLights(4)
, x3c_maxAreaLights(4) {}

CLightParameters::~CLightParameters() {}

uint CLightParameters::GetFramesBetweenRecalculation(ELightRecalculationOptions opts) {
  switch (opts) {
  case kLR_Never:
    return 0x3FFFFFFF;
  case kLR_EightFrames:
    return 8;
  case kLR_FourFrames:
    return 4;
  case kLR_OneFrame:
    return 1;
  default:
    return 8;
  }
}

rstl::auto_ptr< CActorLights > CLightParameters::MakeActorLights() const {
  rstl::auto_ptr< CActorLights > result;
  if (x1c_makeLights) {
    result = new CActorLights(GetFramesBetweenRecalculation(x24_lightRecalculation),
                              x2c_lightingPositionOffset, x38_maxDynamicLights, x3c_maxAreaLights,
                              CActorLights::kDefaultPositionUpdateThreshold, x1d_ambientChannelOverflow, x28_useLightSet == 1,
                              x20_useWorldLighting == kLO_DisableWorld);
    if (x20_useWorldLighting == kLO_NoShadowCast) {
      result->SetCastShadows(false);
    }
    if (x3c_maxAreaLights == 0 && x1c_makeLights) {
      result->SetAmbientColor(x18_ambientColor);
    }
  }
  return result;
}

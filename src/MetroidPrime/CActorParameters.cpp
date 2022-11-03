#include "MetroidPrime/CActorParameters.hpp"

#include "MetroidPrime/CActorLights.hpp"

CActorParameters::CActorParameters()
: x0_lightParams(CLightParameters::None())
, x40_scanParams(kInvalidAssetId)
, x44_xrayAssets(0, 0)
, x4c_thermalAssets(0, 0)
, x54_visorParams()
, x58_24_globalTimeProvider(true)
, x58_25_thermalHeat(false)
, x58_27_noSortThermal(false)
, x5c_fadeInTime(0.f)
, x60_fadeOutTime(0.f)
, x64_thermalMag(0.f) {}

  CActorParameters::CActorParameters(const CLightParameters& lightParms, const CScannableParameters& scanParms,
                   const rstl::pair<CAssetId, CAssetId>& xrayAssets, const rstl::pair<CAssetId, CAssetId>& thermalAssets,
                   const CVisorParameters& visorParms, bool globalTimeProvider, bool thermalHeat, bool renderUnsorted,
                   bool noSortThermal, float fadeInTime, float fadeOutTime, float thermalMag)
  : x0_lightParams(lightParms)
  , x40_scanParams(scanParms)
  , x44_xrayAssets(xrayAssets)
  , x4c_thermalAssets(thermalAssets)
  , x54_visorParams(visorParms)
  , x58_24_globalTimeProvider(globalTimeProvider)
  , x58_25_thermalHeat(thermalHeat)
  , x58_26_renderUnsorted(renderUnsorted)
  , x58_27_noSortThermal(noSortThermal)
  , x5c_fadeInTime(fadeInTime)
  , x60_fadeOutTime(fadeOutTime)
  , x64_thermalMag(thermalMag) {}

CActorParameters CActorParameters::Scannable(const CScannableParameters& sParms) const {
  CActorParameters result(*this);
  result.x40_scanParams = sParms;
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
  result.x54_visorParams = visorParam;
  return result;
}

CLightParameters::CLightParameters(bool castShadow, float shadowScale,
                                   CLightParameters::EShadowTessellation shadowTess,
                                   float shadowAlpha, float maxShadowHeight,
                                   const CColor& noLightsAmbient, bool makeLights,
                                   CLightParameters::EWorldLightingOptions lightingOpts,
                                   CLightParameters::ELightRecalculationOptions lightRecalcOpts,
                                   const CVector3f& actorPosBias, int maxDynamicLights,
                                   int maxAreaLights, bool ambChannelOverflow, int layerIdx)
: x4_castShadow(castShadow)
, x8_shadowScale(shadowScale)
, xc_shadowTesselation(shadowTess)
, x10_shadowAlpha(shadowAlpha)
, x14_maxShadowHeight(maxShadowHeight)
, x18_noLightsAmbient(noLightsAmbient)
, x1c_makeLights(makeLights)
, x1d_ambientChannelOverflow(ambChannelOverflow)
, x20_worldLightingOptions(lightingOpts)
, x24_lightRecalcOpts(lightRecalcOpts)
, x28_layerIdx(layerIdx)
, x2c_actorPosBias(actorPosBias)
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
, x18_noLightsAmbient(CColor::White())
, x1c_makeLights(false)
, x1d_ambientChannelOverflow(false)
, x20_worldLightingOptions(kLO_Zero)
, x24_lightRecalcOpts(kLR_EightFrames)
, x28_layerIdx(0)
, x2c_actorPosBias(CVector3f::Zero())
, x38_maxDynamicLights(4)
, x3c_maxAreaLights(4) {}

CLightParameters::~CLightParameters() {}

uint CLightParameters::GetFramesBetweenRecalculation(ELightRecalculationOptions opts) {
  switch (opts) {
  case kLR_LargeFrameCount:
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
    result =
        new CActorLights(GetFramesBetweenRecalculation(x24_lightRecalcOpts), GetActorPosBias(),
                        x38_maxDynamicLights, x3c_maxAreaLights, x1d_ambientChannelOverflow,
                        x28_layerIdx == 1, x20_worldLightingOptions == kLO_DisableWorld, 0.1f);
    if (x20_worldLightingOptions == kLO_NoShadowCast) {
      result->SetCastShadows(false);
    }
    if (x3c_maxAreaLights == 0 && x1c_makeLights) {
      result->SetAmbientColor(x18_noLightsAmbient);
    }
  }
  return result;
}

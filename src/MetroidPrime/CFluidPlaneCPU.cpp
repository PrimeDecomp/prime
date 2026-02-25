#include "MetroidPrime/CFluidPlaneCPU.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Math/CMath.hpp"

#include "Kyoto/Alloc/CMemory.hpp"

static int kTableSize = 2048;

CFluidPlaneCPU::CTurbulence::CTurbulence(float speed, float distance, float freqMax, float freqMin,
                                         float phaseMax, float phaseMin, float amplitudeMax,
                                         float amplitudeMin)
: x0_speed(speed)
, x4_distance(distance)
, x8_freqMax(freqMax)
, xc_freqMin(freqMin)
, x10_phaseMax(phaseMax)
, x14_phaseMin(phaseMin)
, x18_amplitudeMax(amplitudeMax)
, x1c_amplitudeMin(amplitudeMin)
, x20_table(NULL)
, x24_tableCount(0)
, x28_heightSelPitch(0.f)
, x2c_ooTurbSpeed(1.f / x0_speed)
, x30_ooTurbDistance(1.f / x4_distance)
, x34_hasTurbulence(false) {
  if (x18_amplitudeMax == 0.f && x1c_amplitudeMin == 0.f) {
    return;
  }

  x24_tableCount = kTableSize;
  x28_heightSelPitch = (float)x24_tableCount;
  x20_table = rs_new float[x24_tableCount];

  float anglePitch = M_2PIF / x28_heightSelPitch;
  float freqConstant = 0.5f * (x8_freqMax + xc_freqMin);
  float freqLinear = 0.5f * (x8_freqMax - xc_freqMin);
  float phaseConstant = 0.5f * (x10_phaseMax + x14_phaseMin);
  float phaseLinear = 0.5f * (x10_phaseMax - x14_phaseMin);
  float amplitudeConstant = 0.5f * (x18_amplitudeMax + x1c_amplitudeMin);
  float amplitudeLinear = 0.5f * (x18_amplitudeMax - x1c_amplitudeMin);

  float curAng = 0.f;
  for (int i = 0; i < x24_tableCount; ++i, curAng += anglePitch) {
    float angCos = CMath::FastCosR(curAng);
    x20_table[i] =
        (amplitudeLinear * angCos + amplitudeConstant) *
        CMath::FastSinR((freqLinear * angCos + freqConstant) * curAng +
                        (phaseLinear * angCos + phaseConstant));
  }
  x34_hasTurbulence = true;
}

CFluidPlaneCPU::CTurbulence::~CTurbulence() { delete[] x20_table; }

CFluidPlaneCPU::CFluidPlaneCPU(uint patternMap1, uint patternMap2, uint colorMap, uint bumpMap,
                               uint envMap, uint envBumpMap, float unitsPerLightmapTexel,
                               uint lightmap, uint tileSubdivisions, EFluidType fluidType,
                               float tileSize, const CVector3f& bumpLightDir, float alpha,
                               const CFluidUVMotion& uvMotion, float bumpScale, float turbSpeed,
                               float turbDistance, float turbFreqMax, float turbFreqMin,
                               float turbPhaseMax, float turbPhaseMin, float turbAmplitudeMax,
                               float turbAmplitudeMin, float specularMin, float specularMax,
                               float reflectionBlend, float reflectionSize, float rippleIntensity)
: CFluidPlane(patternMap1, patternMap2, colorMap, alpha, fluidType, rippleIntensity, uvMotion)
, xa0_texIdBumpMap(bumpMap)
, xa4_texIdEnvMap(envMap)
, xa8_texIdEnvBumpMap(envBumpMap)
, xac_texIdLightmap(lightmap)
, xb0_bumpMap()
, xc0_envMap()
, xd0_envBumpMap()
, xe0_lightmap()
, xf0_bumpLightDir(bumpLightDir.AsNormalized())
, xfc_bumpScale(bumpScale)
, x100_tileSize(tileSize)
, x104_tileSubdivisions(tileSubdivisions & ~1u)
, x108_rippleResolution(tileSize / (float)x104_tileSubdivisions)
, x10c_specularMin(specularMin)
, x110_specularMax(specularMax)
, x114_reflectionBlend(reflectionBlend)
, x118_reflectionSize(reflectionSize)
, x11c_unitsPerLightmapTexel(unitsPerLightmapTexel)
, x120_turbulence(turbSpeed, turbDistance, turbFreqMax, turbFreqMin, turbPhaseMax, turbPhaseMin,
                  turbAmplitudeMax, turbAmplitudeMin) {
  if (gpResourceFactory->GetResourceTypeById(xa0_texIdBumpMap) == 'TXTR' &&
      (fluidType == kFT_Lava || fluidType == kFT_ThickLava)) {
    xb0_bumpMap = gpSimplePool->GetObj(SObjectTag('TXTR', xa0_texIdBumpMap));
  }
  if (gpResourceFactory->GetResourceTypeById(xa4_texIdEnvMap) == 'TXTR' &&
      fluidType == kFT_NormalWater) {
    xc0_envMap = gpSimplePool->GetObj(SObjectTag('TXTR', xa4_texIdEnvMap));
  }
  if (gpResourceFactory->GetResourceTypeById(xa8_texIdEnvBumpMap) == 'TXTR') {
    xd0_envBumpMap = gpSimplePool->GetObj(SObjectTag('TXTR', xa8_texIdEnvBumpMap));
  }
  if (gpResourceFactory->GetResourceTypeById(xac_texIdLightmap) == 'TXTR' &&
      fluidType != kFT_Lava && fluidType != kFT_ThickLava) {
    xe0_lightmap = gpSimplePool->GetObj(SObjectTag('TXTR', xac_texIdLightmap));
  }
}

CFluidPlaneCPU::~CFluidPlaneCPU() {}

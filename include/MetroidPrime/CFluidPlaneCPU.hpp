#ifndef _CFLUIDPLANECPU
#define _CFLUIDPLANECPU

#include "MetroidPrime/CFluidPlaneManager.hpp"

class CFluidUVMotion;

class CFluidPlaneCPU : public CFluidPlane {
public:
  class CTurbulence {
  public:
    static int kTableSize;

    CTurbulence(float speed, float distance, float freqMax, float freqMin, float phaseMax,
                float phaseMin, float amplitudeMax, float amplitudeMin);
    ~CTurbulence();

    float GetHeight(float sel) const {
      return x20_table[(x24_tableCount - 1) & int(sel * x28_heightSelPitch)];
    }
    float GetOODistance() const { return x30_ooTurbDistance; }
    float GetOOSpeed() const { return x2c_ooTurbSpeed; }
    bool HasTurbulence() const { return x34_hasTurbulence; }

  private:
    float x0_speed;
    float x4_distance;
    float x8_freqMax;
    float xc_freqMin;
    float x10_phaseMax;
    float x14_phaseMin;
    float x18_amplitudeMax;
    float x1c_amplitudeMin;
    float* x20_table;
    int x24_tableCount;
    float x28_heightSelPitch;
    float x2c_ooTurbSpeed;
    float x30_ooTurbDistance;
    bool x34_hasTurbulence;
  };

public:
  CFluidPlaneCPU(uint patternMap1, uint patternMap2, uint colorMap, uint bumpMap, uint envMap,
                 uint envBumpMap, float unitsPerLightmapTexel, uint lightmap,
                 uint tileSubdivisions, EFluidType fluidType, float tileSize,
                 const CVector3f& bumpLightDir, float alpha, const CFluidUVMotion& uvMotion,
                 float bumpScale, float turbSpeed, float turbDistance, float turbFreqMax,
                 float turbFreqMin, float turbPhaseMax, float turbPhaseMin,
                 float turbAmplitudeMax, float turbAmplitudeMin, float specularMin,
                 float specularMax, float reflectionBlend, float reflectionSize,
                 float rippleIntensity);
  ~CFluidPlaneCPU() {}

  void Render(const CStateManager& mgr, float alpha, const CAABox& aabb, const CTransform4f& xf,
              const CTransform4f& areaXf, bool noNormals, const CFrustumPlanes& frustum,
              const rstl::optional_object< CRippleManager >& rippleManager, TUniqueId waterId,
              const bool* gridFlags, int gridDimX, int gridDimY,
              const CVector3f& areaCenter) const override;

  void RenderSetup(const CStateManager& mgr, float alpha, const CTransform4f& xf,
                   const CTransform4f& areaXf, const CAABox& aabb, CScriptWater* water) const;
  void RenderCleanup() const;
  void CalculateLightmapMtx(const CTransform4f& areaXf, const CTransform4f& xf,
                             const CAABox& aabb, int idx);

  float GetReflectionBlend() const { return x114_reflectionBlend; }
  float GetSpecularMax() const { return x110_specularMax; }
  float GetSpecularMin() const { return x10c_specularMin; }
  float GetReflectionSize() const { return x118_reflectionSize; }
  float GetBumpScale() const { return xfc_bumpScale; }
  bool HasBumpMap() const { return xb0_bumpMap; }
  const TLockedToken< CTexture >& GetBumpMap() const { return *xb0_bumpMap; }
  bool HasEnvMap() const { return xc0_envMap; }
  const TLockedToken< CTexture >& GetEnvMap() const { return *xc0_envMap; }
  bool HasEnvBumpMap() const { return xd0_envBumpMap; }
  const TLockedToken< CTexture >& GetEnvBumpMap() const { return *xd0_envBumpMap; }
  bool HasLightMap() const { return xe0_lightmap; }
  const TLockedToken< CTexture >& GetLightMap() const { return *xe0_lightmap; }
  const CVector3f& GetBumpLightDir() const { return xf0_bumpLightDir; }
  float GetTileSize() const { return x100_tileSize; }
  int GetTileSubdivisions() const { return x104_tileSubdivisions; }
  float GetRippleResolution() const { return x108_rippleResolution; }
  float GetTurbulenceHeight(float sel) const { return x120_turbulence.GetHeight(sel); }
  float GetOOTurbulenceDistance() const { return x120_turbulence.GetOODistance(); }
  float GetOOTurbulenceSpeed() const { return x120_turbulence.GetOOSpeed(); }
  bool HasTurbulence() const { return x120_turbulence.HasTurbulence(); }

private:
  CAssetId xa0_texIdBumpMap;
  CAssetId xa4_texIdEnvMap;
  CAssetId xa8_texIdEnvBumpMap;
  CAssetId xac_texIdLightmap;
  rstl::optional_object< TLockedToken< CTexture > > xb0_bumpMap;
  rstl::optional_object< TLockedToken< CTexture > > xc0_envMap;
  rstl::optional_object< TLockedToken< CTexture > > xd0_envBumpMap;
  rstl::optional_object< TLockedToken< CTexture > > xe0_lightmap;
  CVector3f xf0_bumpLightDir;
  float xfc_bumpScale;
  float x100_tileSize;
  int x104_tileSubdivisions;
  float x108_rippleResolution;
  float x10c_specularMin;
  float x110_specularMax;
  float x114_reflectionBlend;
  float x118_reflectionSize;
  float x11c_unitsPerLightmapTexel;
  CTurbulence x120_turbulence;
};
CHECK_SIZEOF(CFluidPlaneCPU, 0x158)

#endif // _CFLUIDPLANECPU

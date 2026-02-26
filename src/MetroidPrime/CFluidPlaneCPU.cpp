#include "MetroidPrime/CFluidPlaneCPU.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Basics/CCast.hpp"

#include "rstl/math.hpp"

#include "MetroidPrime/CRipple.hpp"

#include "rstl/reserved_vector.hpp"

#include "dolphin/os/OSCache.h"

#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Graphics/CTexture.hpp"

#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"
#include "MetroidPrime/Tweaks/CTweakGame.hpp"

#include "dolphin/gx/GXBump.h"
#include "dolphin/gx/GXCull.h"
#include "dolphin/gx/GXTransform.h"
#include "dolphin/mtx.h"

#include <math.h>

extern "C" float* InitializeSineWave();
extern const bool sRenderBumpMaps;
extern const int sFluidEnvMapType;

struct STexMtx24 {
  float m[2][4];
};
struct SIndMtx23 {
  float m[2][3];
};
struct SEnvMtx34 {
  float m[3][4];
};
struct SFluidTexMtxTable {
  STexMtx24 pad;
  STexMtx24 color;
  STexMtx24 pattern1;
  STexMtx24 pattern2;
  SIndMtx23 ind;
  SEnvMtx34 env;
};
static const SFluidTexMtxTable kTexMtxTable = {};

static uchar sFluidSetupInitOnce;
static uchar sFluidSetupDone;
static int kMaxTilesInHField = 7;

int CFluidPlaneCPURender::numTilesInHField;
int CFluidPlaneCPURender::numSubdivisionsInTile;
int CFluidPlaneCPURender::numSubdivisionsInHField;

int CFluidPlaneCPU::CTurbulence::kTableSize = 2048;

// TODO: these are in CFluidPlaneRender
const float (&GetGlobalSineWave())[256];
bool PrepareRipple(const CRipple& ripple, const CFluidPlaneCPURender::SPatchInfo& info,
                   CFluidPlaneCPURender::SRippleInfo& rippleOut);
void ApplyRipples(const CRippleManager& rippleInfos,
                  CFluidPlaneCPURender::SHFieldSample (&heights)[45][45],
                  unsigned char (&flags)[9][9], const float (&sineTable)[256],
                  CFluidPlaneCPURender::SPatchInfo& info);

#ifdef __MWERKS__
static inline float fast_sqrt(register float x) {
  register float rsq;
  asm {
    ps_rsqrte rsq, x
    ps_mul rsq, rsq, x
  }
  return rsq;
}
#else
static inline float fast_sqrt(float x) { return sqrtf(x); }
#endif

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

  float freqConstant = 0.5f * (x8_freqMax + xc_freqMin);
  float freqLinear = 0.5f * (x8_freqMax - xc_freqMin);
  float phaseConstant = 0.5f * (x10_phaseMax + x14_phaseMin);
  float phaseLinear = 0.5f * (x10_phaseMax - x14_phaseMin);
  float amplitudeConstant = 0.5f * (x18_amplitudeMax + x1c_amplitudeMin);
  float amplitudeLinear = 0.5f * (x18_amplitudeMax - x1c_amplitudeMin);

  float curAng = 0.f;
  const float anglePitch = M_2PIF / x28_heightSelPitch;
  for (int i = 0; i < x24_tableCount; ++i, curAng += anglePitch) {
    float angCos = CMath::FastCosR(curAng);
    float freq = freqLinear * angCos + freqConstant;
    x20_table[i] = (amplitudeLinear * angCos + amplitudeConstant) *
                   CMath::FastSinR(freq * curAng + (phaseLinear * angCos + phaseConstant));
  }
  x34_hasTurbulence = true;
}

CFluidPlaneCPU::CTurbulence::~CTurbulence() { delete[] x20_table; }

void UpdatePatchWithNormals(const unsigned char* heights, const unsigned char* flags,
                            const CFluidPlaneCPURender::SPatchInfo& info) {
  typedef CFluidPlaneCPURender::SHFieldSample SHFieldSample;

  float* rowBase = (float*)(heights + 0x170);
  float tmp = 2.f * info.x18_rippleResolution;
  flags += 9;
  float normalScale = -tmp;
  float nz = 0.25f * tmp;

  int curGridY = (int)info.x2e_tileY * (int)info.x2a_gridDimX + (int)info.x28_tileX - 1;

  for (int i = 1; i <= (info.x1_ySubdivs + CFluidPlaneCPURender::numSubdivisionsInTile - 2) /
                           CFluidPlaneCPURender::numSubdivisionsInTile;
       ++i) {
    int yHi = i * CFluidPlaneCPURender::numSubdivisionsInTile + 1;
    static const int sZero = 0;
    int yStart = rstl::max_val< int >(sZero, yHi - CFluidPlaneCPURender::numSubdivisionsInTile);
    int yEnd = rstl::min_val< int >(yHi, info.x1_ySubdivs + 1);

    float* colBase = rowBase;
    const unsigned char* fPtr = flags + 1;
    for (int j = 1; j <= (info.x0_xSubdivs + CFluidPlaneCPURender::numSubdivisionsInTile - 2) /
                             CFluidPlaneCPURender::numSubdivisionsInTile;
         ++j, colBase += CFluidPlaneCPURender::numSubdivisionsInTile * 2, ++fPtr) {
      int xHi = j * CFluidPlaneCPURender::numSubdivisionsInTile + 1;
      int xEnd = rstl::min_val< int >(xHi, info.x0_xSubdivs + 1);
      int xStart = xHi - CFluidPlaneCPURender::numSubdivisionsInTile;

      if ((*fPtr & 0x1f) == 0x1f) {
        float* pRow = colBase;
        for (int k = yStart; k < yEnd; ++k, pRow += 90) {
          float* p = pRow;
          for (int l = xStart; l < xEnd; ++l, p += 2) {
            float dy = normalScale * (p[90] - p[-90]);
            float dx = normalScale * (p[2] - p[-2]);
            float mag = dy * dy + dx * dx + nz * nz;
            if (0.f != mag)
              mag = fast_sqrt(mag);
            float n = 63.f / mag;
            int wc = 0;
            ((SHFieldSample*)p)->nx = (signed char)(int)(n * dx);
            ((SHFieldSample*)p)->ny = (signed char)(int)(n * dy);
            ((SHFieldSample*)p)->nz = (signed char)(int)(n * nz);
            if (0.f < p[0]) {
              wc = (int)(p[0] * info.x38_wavecapIntensityScale);
              if (wc > 255)
                wc = 255;
            }
            ((SHFieldSample*)p)->wavecapIntensity = (unsigned char)wc;
          }
        }
      } else {
        if ((info.x30_gridFlags == NULL || info.x30_gridFlags[curGridY + j]) && i > 0 &&
            i < CFluidPlaneCPURender::numTilesInHField + 1 && j > 0 &&
            j < CFluidPlaneCPURender::numTilesInHField + 1) {
          int halfRow = (CFluidPlaneCPURender::numSubdivisionsInTile * 0x2d) / 2;
          int halfCol = CFluidPlaneCPURender::numSubdivisionsInTile / 2;
          float* p = colBase + halfCol * 2 + halfRow * 2;
          float dy = normalScale * (p[90] - p[-90]);
          float dx = normalScale * (p[2] - p[-2]);
          float mag = dy * dy + dx * dx + nz * nz;
          if (0.f != mag)
            mag = fast_sqrt(mag);
          int wc = 0;
          float n = 63.f / mag;
          ((SHFieldSample*)p)->nx = (signed char)(int)(n * dx);
          ((SHFieldSample*)p)->ny = (signed char)(int)(n * dy);
          ((SHFieldSample*)p)->nz = (signed char)(int)(n * nz);
          if (0.f < p[0]) {
            wc = (int)(p[0] * info.x38_wavecapIntensityScale);
            if (wc > 255)
              wc = 255;
          }
          ((SHFieldSample*)p)->wavecapIntensity = (unsigned char)wc;
        }

        if (j != 0 && i != 0) {
          if ((*fPtr & 2) == 0 && (fPtr[-10] & 1) == 0 && (*fPtr & 4) == 0 && (fPtr[-1] & 8) == 0) {
            // Corner only
            float* p = colBase;
            float dy = normalScale * (p[90] - p[-90]);
            float dx = normalScale * (p[2] - p[-2]);
            float mag = dy * dy + dx * dx + nz * nz;
            if (0.f != mag)
              mag = fast_sqrt(mag);
            int wc = 0;
            float n = 63.f / mag;
            ((SHFieldSample*)p)->nx = (signed char)(int)(n * dx);
            ((SHFieldSample*)p)->ny = (signed char)(int)(n * dy);
            ((SHFieldSample*)p)->nz = (signed char)(int)(n * nz);
            if (0.f < p[0]) {
              wc = (int)(p[0] * info.x38_wavecapIntensityScale);
              if (wc > 255)
                wc = 255;
            }
            ((SHFieldSample*)p)->wavecapIntensity = (unsigned char)wc;
          } else {
            // Row edge
            float* p = colBase;
            for (int l = xStart; l < xEnd; ++l, p += 2) {
              float dy = normalScale * (p[90] - p[-90]);
              float dx = normalScale * (p[2] - p[-2]);
              float mag = dy * dy + dx * dx + nz * nz;
              if (0.f != mag)
                mag = fast_sqrt(mag);
              float n = 63.f / mag;
              int wc = 0;
              ((SHFieldSample*)p)->nx = (signed char)(int)(n * dx);
              ((SHFieldSample*)p)->ny = (signed char)(int)(n * dy);
              ((SHFieldSample*)p)->nz = (signed char)(int)(n * nz);
              if (0.f < p[0]) {
                wc = (int)(p[0] * info.x38_wavecapIntensityScale);
                if (wc > 255)
                  wc = 255;
              }
              ((SHFieldSample*)p)->wavecapIntensity = (unsigned char)wc;
            }

            // Column edge
            float* q = colBase + 90;
            for (int k = yStart + 1; k < yEnd; ++k, q += 90) {
              float dy = normalScale * (q[90] - q[-90]);
              float dx = normalScale * (q[2] - q[-2]);
              float mag = dy * dy + dx * dx + nz * nz;
              if (0.f != mag)
                mag = fast_sqrt(mag);
              float n = 63.f / mag;
              int wc = 0;
              ((SHFieldSample*)q)->nx = (signed char)(int)(n * dx);
              ((SHFieldSample*)q)->ny = (signed char)(int)(n * dy);
              ((SHFieldSample*)q)->nz = (signed char)(int)(n * nz);
              if (0.f < q[0]) {
                wc = (int)(q[0] * info.x38_wavecapIntensityScale);
                if (wc > 255)
                  wc = 255;
              }
              ((SHFieldSample*)q)->wavecapIntensity = (unsigned char)wc;
            }
          }
        }
      }
    }
    curGridY += info.x2a_gridDimX;
    rowBase += CFluidPlaneCPURender::numSubdivisionsInTile * 90;
    flags += 9;
  }
}

void UpdatePatchNoNormals(const unsigned char* heights, const unsigned char* flags,
                          const CFluidPlaneCPURender::SPatchInfo& info) {
  typedef CFluidPlaneCPURender::SHFieldSample SHFieldSample;

  flags += 9;

  for (int i = 1; i <= (info.x1_ySubdivs + CFluidPlaneCPURender::numSubdivisionsInTile - 2) /
                           CFluidPlaneCPURender::numSubdivisionsInTile;
       ++i) {
    int yHi = i * CFluidPlaneCPURender::numSubdivisionsInTile + 1;
    static const int sYZero = 0;
    int yStart = rstl::max_val< int >(sYZero, yHi - CFluidPlaneCPURender::numSubdivisionsInTile);
    const int& yEnd = rstl::min_val< int >(yHi, info.x1_ySubdivs + 1);

    float* rowBase = (float*)heights + yStart * 90;
    const unsigned char* fPtr = flags + 1;
    for (int j = 1; j <= (info.x0_xSubdivs + CFluidPlaneCPURender::numSubdivisionsInTile - 2) /
                             CFluidPlaneCPURender::numSubdivisionsInTile;
         ++j, ++fPtr) {
      int xHi = j * CFluidPlaneCPURender::numSubdivisionsInTile + 1;
      static const int sXZero = 0;
      int xStart = rstl::max_val< int >(sXZero, xHi - CFluidPlaneCPURender::numSubdivisionsInTile);
      const int& xEnd = rstl::min_val< int >(xHi, info.x0_xSubdivs + 1);

      if ((*fPtr & 0x1f) == 0x1f) {
        float* pRow = rowBase;
        for (int k = yStart; k < yEnd; ++k, pRow += 90) {
          float* p = pRow + xStart * 2;
          for (int l = xStart; l < xEnd; ++l, p += 2) {
            int wc = 0;
            float scale = info.x38_wavecapIntensityScale;
            if (p[0] > 0.f) {
              wc = (int)(p[0] * scale);
              if (wc > 255)
                wc = 255;
            }
            ((SHFieldSample*)p)->wavecapIntensity = (unsigned char)wc;
          }
        }
      } else {
        if (i > 0 && i < CFluidPlaneCPURender::numTilesInHField + 1 && j > 0 &&
            j < CFluidPlaneCPURender::numTilesInHField + 1) {
          int half = CFluidPlaneCPURender::numSubdivisionsInTile / 2;
          float* p = (float*)heights + (yStart + half) * 90 + (xStart + half) * 2;
          float scale = info.x38_wavecapIntensityScale;
          int wc = 0;
          if (p[0] > 0.f) {
            wc = (int)(p[0] * scale);
            if (wc > 255)
              wc = 255;
          }
          ((SHFieldSample*)p)->wavecapIntensity = (unsigned char)wc;
        }

        if (i != 0) {
          float* p = rowBase + xStart * 2;
          for (int l = xStart; l < xEnd; ++l, p += 2) {
            int wc = 0;
            float scale = info.x38_wavecapIntensityScale;
            if (p[0] > 0.f) {
              wc = (int)(p[0] * scale);
              if (wc > 255)
                wc = 255;
            }
            ((SHFieldSample*)p)->wavecapIntensity = (unsigned char)wc;
          }
        }

        if (j != 0) {
          int k = yStart + 1;
          float* q = (float*)heights + k * 90 + xStart * 2;
          for (; k < yEnd; ++k, q += 90) {
            int wc = 0;
            float scale = info.x38_wavecapIntensityScale;
            if (q[0] > 0.f) {
              wc = (int)(q[0] * scale);
              if (wc > 255)
                wc = 255;
            }
            ((SHFieldSample*)q)->wavecapIntensity = (unsigned char)wc;
          }
        }
      }
    }
    flags += 9;
  }
}

void ApplyTurbulence(float time, CFluidPlaneCPURender::SHFieldSample (&heights)[45][45],
                     const unsigned char* flags, const float (&sineTable)[256],
                     const CFluidPlaneCPURender::SPatchInfo& info, const CFluidPlaneCPU& fluidPlane,
                     const CVector3f& areaCenter) {
  bool hasTurb = sRenderFog ? fluidPlane.HasTurbulence() : false;
  if (!hasTurb) {
    DCZeroRange(&heights, sizeof(heights));
    return;
  }

  float ooTurbSpeed = fluidPlane.GetOOTurbulenceSpeed();
  float rippleRes = info.x18_rippleResolution;
  float scaledT = time * ooTurbSpeed;
  float ooTurbDist = fluidPlane.GetOOTurbulenceDistance();
  float curY = (info.x8_localMinY - rippleRes) - areaCenter.GetY();
  int xDivs = (info.x0_xSubdivs + CFluidPlaneCPURender::numSubdivisionsInTile - 4) /
                  CFluidPlaneCPURender::numSubdivisionsInTile *
                  CFluidPlaneCPURender::numSubdivisionsInTile +
              2;
  int yDivs = (info.x1_ySubdivs + CFluidPlaneCPURender::numSubdivisionsInTile - 4) /
                  CFluidPlaneCPURender::numSubdivisionsInTile *
                  CFluidPlaneCPURender::numSubdivisionsInTile +
              2;
  for (int i = 0; i <= yDivs; ++i) {
    float curYSq = curY * curY;
    float curX = (info.x4_localMinX - rippleRes) - areaCenter.GetX();
    CFluidPlaneCPURender::SHFieldSample* row = &heights[i][0];
    for (int j = 0; j <= xDivs; ++j) {
      float distSq = curX * curX + curYSq;
      float dist;
      if (0.f == distSq) {
        dist = distSq;
      } else {
        dist = fast_sqrt(distSq);
      }
      float sel = ooTurbDist * dist;
      sel += scaledT;
      row[j].height = fluidPlane.GetTurbulenceHeight(sel);
      curX += info.x18_rippleResolution;
    }
    curY += info.x18_rippleResolution;
  }
}

bool UpdatePatch(float time, CFluidPlaneCPURender::SPatchInfo& info,
                 const CFluidPlaneCPU& fluidPlane, const CVector3f& areaCenter,
                 const CRippleManager& rippleManager, int fromX, int toX, int fromY, int toY) {
  typedef CFluidPlaneCPURender::SRippleInfo SRippleInfo;
  typedef CFluidPlaneCPURender::SHFieldSample SHFieldSample;

  const float (&sineTable)[256] = GetGlobalSineWave();

  DCZeroRange((void*)0xe0000040, 0x51);

  rstl::reserved_vector< SRippleInfo, 32 > rippleInfos;
  bool noRipples = true;

  if (*((const unsigned char*)&rippleManager + 0x18)) {
    const rstl::vector< CRipple >& ripples = rippleManager.GetRipples();
    for (const CRipple* ripple = ripples.data(); ripple != ripples.data() + ripples.size();
         ++ripple) {
      if (ripple->GetTime() >= ripple->GetTimeFalloff())
        continue;
      SRippleInfo rippleInfo(*ripple, fromX, toX, fromY, toY);
      if (PrepareRipple(*ripple, info, rippleInfo)) {
        rippleInfos.push_back(rippleInfo);
      }
    }
    if (!rippleInfos.empty()) {
      noRipples = false;
    }
  }

  if (noRipples) {
    return noRipples;
  }

  SHFieldSample(&heights)[45][45] = *(SHFieldSample(*)[45][45])0xe00000a0;

  ApplyTurbulence(time, heights, (unsigned char*)0xe0000040, sineTable, info, fluidPlane,
                  areaCenter);
  ApplyRipples(reinterpret_cast< const CRippleManager& >(rippleInfos), heights,
               *(unsigned char (*)[9][9])0xe0000040, sineTable, info);

  if ((int)info.x37_normalMode == 1) {
    UpdatePatchNoNormals((const unsigned char*)0xe00000a0, (const unsigned char*)0xe0000040, info);
  } else {
    UpdatePatchWithNormals((const unsigned char*)0xe00000a0, (const unsigned char*)0xe0000040,
                           info);
  }

  return noRipples;
}

void CFluidPlaneCPU::CalculateLightmapMtx(const CTransform4f& areaXf, const CTransform4f& xf,
                                          const CAABox& aabb, int idx) {
  int width = GetLightMap()->GetWidth();
  int height = GetLightMap()->GetHeight();

  CVector3f norm = areaXf.GetRow(kDZ).AsNormalized();
  CTransform4f toLocal = areaXf.GetRotation().GetQuickInverse();
  CAABox areaLocalAABB = aabb.GetTransformedAABox(toLocal);

  float scaleU = (areaLocalAABB.GetMaxPoint().GetX() - areaLocalAABB.GetMinPoint().GetX()) /
                 (width * x11c_unitsPerLightmapTexel);
  float scaleV = (areaLocalAABB.GetMaxPoint().GetY() - areaLocalAABB.GetMinPoint().GetY()) /
                 (height * x11c_unitsPerLightmapTexel);

  float f24 =
      (1.f + fmod(areaLocalAABB.GetMinPoint().GetX() + xf.Get03(), x11c_unitsPerLightmapTexel)) /
      width;
  float f23 =
      (2.f - fmod(areaLocalAABB.GetMaxPoint().GetX() + xf.Get03(), x11c_unitsPerLightmapTexel)) /
      width;
  float f29 =
      (1.f + fmod(areaLocalAABB.GetMinPoint().GetY() + xf.Get13(), x11c_unitsPerLightmapTexel)) /
      height;
  float f6 =
      (2.f - fmod(areaLocalAABB.GetMaxPoint().GetY() + xf.Get13(), x11c_unitsPerLightmapTexel)) /
      height;

  CTransform4f texMtx(
      (scaleU - f24 - f23) /
          (areaLocalAABB.GetMaxPoint().GetX() - areaLocalAABB.GetMinPoint().GetX()),
      0.f, 0.f,
      f24 + scaleU * -areaLocalAABB.GetMinPoint().GetX() /
                (areaLocalAABB.GetMaxPoint().GetX() - areaLocalAABB.GetMinPoint().GetX()),
      0.f,
      (-(scaleV - f29 - f6)) /
          (areaLocalAABB.GetMaxPoint().GetY() - areaLocalAABB.GetMinPoint().GetY()),
      0.f,
      scaleV * areaLocalAABB.GetMinPoint().GetY() /
              (areaLocalAABB.GetMaxPoint().GetY() - areaLocalAABB.GetMinPoint().GetY()) -
          f6,
      0.f, 0.f, 0.f, 0.f);

  CTransform4f result(texMtx * toLocal);
  float mtx[2][4] = {{result.Get00(), result.Get01(), result.Get02(), result.Get03()},
                     {result.Get10(), result.Get11(), result.Get12(), result.Get13()}};
  CGX::LoadTexMtxImm(mtx, idx, GX_MTX2x4);
}

void CFluidPlaneCPU::RenderSetup(const CStateManager& mgr, float alpha, const CTransform4f& xf,
                                 const CTransform4f& areaXf, const CAABox& aabb,
                                 CScriptWater* water) const {
  const SFluidTexMtxTable* tbl = &kTexMtxTable;

  if (!sRenderFog) {
    return;
  }

  bool hasBumpMap = false;
  bool hasDoubleLightmap = false;
  float uvT = mgr.GetFluidPlaneManager()->GetTime();
  if (HasBumpMap() && sRenderBumpMaps) {
    hasBumpMap = true;
  }
  uchar hasLightmap = HasLightMap();
  int envMapType;
  if (mgr.GetCameraManager()->GetFluidCounter() != 0) {
    envMapType = 0;
  } else {
    uchar hasEnv = HasEnvMap();
    envMapType = sFluidEnvMapType & ((-hasEnv | hasEnv) >> 31);
  }
  uchar hasEnvBumpMap = HasEnvBumpMap();

  InitializeSineWave();

  gpRender->SetModelMatrix(xf);

  const GXColor ambColor = {0, 0, 0, 0};
  const GXColor white = {0xff, 0xff, 0xff, 0xff};

  if (hasBumpMap) {
    CColor bumpLightColor(0.5f, 0.5f, 0.5f, 1.f);
    CLight bumpLight = CLight::BuildDirectional(GetBumpLightDir().AsNormalized(), bumpLightColor);
    CLight light(bumpLight);
    CGraphics::LoadLight(kLight3, light);
    CGX::SetNumChans(2);
    CGX::SetChanCtrl(CGX::Channel1, true, GX_SRC_REG, GX_SRC_REG, GX_LIGHT3, GX_DF_CLAMP,
                     GX_AF_SPOT);
    CGX::SetChanMatColor(CGX::Channel1, white);
    CGX::SetChanAmbColor(CGX::Channel1, ambColor);
    CGX::SetChanCtrl(CGX::Channel0, true, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_CLAMP,
                     GX_AF_SPOT);
    CGX::SetChanMatColor(CGX::Channel0, white);
    CGX::SetChanAmbColor(CGX::Channel0, ambColor);
  } else {
    CGX::SetNumChans(2);
    CGX::SetChanCtrl(CGX::Channel1, true, GX_SRC_REG, GX_SRC_REG,
                     (GXLightID)CGraphics::GetLightMask(), GX_DF_CLAMP, GX_AF_SPOT);
    const GXColor* matColor = &ambColor;
    if (CGraphics::GetLightMask() != 0) {
      matColor = &white;
    }
    CGX::SetChanMatColor(CGX::Channel1, *matColor);
    if (hasLightmap) {
      CGX::SetChanAmbColor(CGX::Channel1, ambColor);
    }
    CGX::SetChanCtrl(CGX::Channel0, true, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_CLAMP,
                     GX_AF_SPOT);
    CGX::SetChanMatColor(CGX::Channel0, white);
    CGX::SetChanAmbColor(CGX::Channel0, ambColor);
  }

  int nextTexMap = 0;
  int nextCoord = 0;

  int texMapIds[8];
  int texCoordIds[8];

  if (HasTexturePattern1()) {
    GetTexturePattern1()->Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
  } else {
    CCubeRenderer::That()->GetZeroTexture().Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
  }
  texMapIds[0] = nextTexMap;
  nextTexMap = 1;

  if (HasTexturePattern2()) {
    GetTexturePattern2()->Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
  } else {
    CCubeRenderer::That()->GetZeroTexture().Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
  }
  texMapIds[1] = nextTexMap;
  nextTexMap = 2;

  if (HasColorTexture()) {
    GetColorTexture()->Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
  } else {
    CCubeRenderer::That()->GetZeroTexture().Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
  }
  texMapIds[2] = nextTexMap;
  nextTexMap = 3;

  if (hasBumpMap) {
    texMapIds[3] = nextTexMap;
    GetBumpMap()->Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
    nextTexMap = 4;
  }

  if (envMapType != 0) {
    texMapIds[4] = nextTexMap;
    GetEnvMap()->Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
    nextTexMap += 1;
  }

  if (hasEnvBumpMap) {
    texMapIds[5] = nextTexMap;
    GetEnvBumpMap()->Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
    nextTexMap += 1;
  }

  float uvOffsets[3][2];
  GetUVMotion().CalculateFluidTextureOffset(uvT, uvOffsets);

  STexMtx24 colorMtx = tbl->color;
  colorMtx.m[0][0] = x4c_uvMotion.GetFluidLayerMotion(CFluidUVMotion::kFM_Circular).x14_uvScale;
  colorMtx.m[1][1] = x4c_uvMotion.GetFluidLayerMotion(CFluidUVMotion::kFM_Circular).x14_uvScale;
  colorMtx.m[0][3] = uvOffsets[1][0];
  colorMtx.m[1][3] = uvOffsets[1][1];

  STexMtx24 pattern1Mtx = tbl->pattern1;
  pattern1Mtx.m[0][0] = x4c_uvMotion.GetFluidLayerMotion(CFluidUVMotion::kFM_Oscillate).x14_uvScale;
  pattern1Mtx.m[1][1] = x4c_uvMotion.GetFluidLayerMotion(CFluidUVMotion::kFM_Oscillate).x14_uvScale;
  pattern1Mtx.m[0][3] = uvOffsets[2][0];
  pattern1Mtx.m[1][3] = uvOffsets[2][1];

  STexMtx24 pattern2Mtx = tbl->pattern2;
  pattern2Mtx.m[0][0] = x4c_uvMotion.GetFluidLayerMotion(CFluidUVMotion::kFM_Linear).x14_uvScale;
  pattern2Mtx.m[1][1] = x4c_uvMotion.GetFluidLayerMotion(CFluidUVMotion::kFM_Linear).x14_uvScale;
  pattern2Mtx.m[0][3] = uvOffsets[0][0];
  pattern2Mtx.m[1][3] = uvOffsets[0][1];

  GXLoadTexMtxImm(colorMtx.m, GX_TEXMTX0, GX_MTX2x4);
  GXLoadTexMtxImm(pattern1Mtx.m, GX_TEXMTX1, GX_MTX2x4);
  GXLoadTexMtxImm(pattern2Mtx.m, GX_TEXMTX2, GX_MTX2x4);

  int texMtx = GX_TEXMTX3;

  if (hasBumpMap) {
    float bumpScale = GetBumpScale();
    CTransform4f nrmMtxSrc(CGraphics::GetViewMatrix().GetRotation().GetQuickInverse());
    Mtx nrmMtx;
    nrmMtx[0][0] = nrmMtxSrc.Get00();
    nrmMtx[0][1] = nrmMtxSrc.Get01();
    nrmMtx[0][2] = nrmMtxSrc.Get02();
    nrmMtx[0][3] = nrmMtxSrc.Get03();
    nrmMtx[1][0] = nrmMtxSrc.Get10();
    nrmMtx[1][1] = nrmMtxSrc.Get11();
    nrmMtx[1][2] = nrmMtxSrc.Get12();
    nrmMtx[1][3] = nrmMtxSrc.Get13();
    nrmMtx[2][0] = nrmMtxSrc.Get20();
    nrmMtx[2][1] = nrmMtxSrc.Get21();
    nrmMtx[2][2] = nrmMtxSrc.Get22();
    nrmMtx[2][3] = nrmMtxSrc.Get23();
    MTXScaleApply(nrmMtx, nrmMtx, bumpScale, bumpScale, bumpScale);
    GXLoadNrmMtxImm(nrmMtx, GX_PNMTX0);
  }

  texCoordIds[0] = nextCoord;
  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_POS, GX_TEXMTX0, false, GX_PTIDENTITY);
  nextCoord = 1;
  texCoordIds[1] = nextCoord;
  CGX::SetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_POS, GX_TEXMTX1, false, GX_PTIDENTITY);
  nextCoord = 2;
  texCoordIds[2] = nextCoord;
  CGX::SetTexCoordGen(GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_POS, GX_TEXMTX2, false, GX_PTIDENTITY);
  nextCoord = 3;

  if (hasBumpMap) {
    texCoordIds[3] = nextCoord;
    CGX::SetTexCoordGen((GXTexCoordID)nextCoord, GX_TG_MTX2x4, GX_TG_POS, GX_TEXMTX0, false,
                        GX_PTIDENTITY);
    CGX::SetTexCoordGen((GXTexCoordID)(nextCoord + 1), GX_TG_BUMP3, GX_TG_TEXCOORD3, GX_IDENTITY,
                        false, GX_PTIDENTITY);
    nextCoord = 5;
  }

  if (hasEnvBumpMap) {
    float envBumpScale;
    if (envMapType != 0) {
      envBumpScale = 0.5f * (1.f - x118_reflectionSize);
    } else {
      envBumpScale = gpTweakGame->GetFluidEnvBumpScale() *
                     GetUVMotion().GetFluidLayerMotion(CFluidUVMotion::kFM_Linear).x14_uvScale;
    }

    Mtx envBumpMtx;
    if (envMapType == 0) {
      MTXIdentity(envBumpMtx);
    } else {
      MTXIdentity(envBumpMtx);
    }
    GXLoadTexMtxImm(envBumpMtx, GX_TEXMTX3, GX_MTX2x4);

    Mtx postMtx;
    MTXScale(postMtx, envBumpScale, -envBumpScale, 1.f);
    postMtx[0][3] = 0.5f;
    postMtx[1][3] = 0.5f;
    GXLoadTexMtxImm(postMtx, GX_PTTEXMTX0, GX_MTX3x4);

    texCoordIds[4] = nextCoord;
    int envBumpCoordIdx = nextCoord;
    CGX::SetTexCoordGen((GXTexCoordID)nextCoord, GX_TG_MTX2x4, GX_TG_NRM, GX_TEXMTX3, true,
                        GX_PTTEXMTX0);
    nextCoord += 1;
    texMtx = GX_TEXMTX4;

    float indScale = 0.5f * (envMapType != 0 ? x118_reflectionSize : 1.f);
    SIndMtx23 indMtx = tbl->ind;
    indMtx.m[0][0] = indScale;
    indMtx.m[1][1] = -indScale;
    GXSetIndTexMtx(GX_ITM_0, indMtx.m, 1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE0, GX_ITS_1, GX_ITS_1);
    GXSetIndTexOrder(GX_INDTEXSTAGE0, (GXTexCoordID)envBumpCoordIdx, (GXTexMapID)texMapIds[5]);
    CGX::SetNumIndStages(1);
  }

  if (envMapType != 0) {
    float envHeight = aabb.GetMaxPoint().GetZ() - aabb.GetMinPoint().GetZ();
    float envWidth = aabb.GetMaxPoint().GetX() - aabb.GetMinPoint().GetX();
    float maxDim;
    if (envWidth < envHeight) {
      maxDim = envWidth;
    } else {
      maxDim = envHeight;
    }
    float ooMaxDim = 1.f / maxDim;

    SEnvMtx34 envMtx = tbl->env;
    envMtx.m[0][0] = ooMaxDim;
    envMtx.m[1][1] = ooMaxDim;
    envMtx.m[0][3] = 0.5f + (-aabb.GetCenterPoint().GetX()) / maxDim;
    envMtx.m[1][3] = 0.5f + (-aabb.GetCenterPoint().GetY()) / maxDim;

    GXLoadTexMtxImm(envMtx.m, texMtx, GX_MTX2x4);
    texCoordIds[5] = nextCoord;
    CGX::SetTexCoordGen((GXTexCoordID)nextCoord, GX_TG_MTX2x4, GX_TG_POS, (GXTexMtx)texMtx, false,
                        GX_PTIDENTITY);
    nextCoord += 1;
    texMtx += 3;
  }

  if (hasLightmap) {
    TAreaId areaId = mgr.GetNextAreaId();
    float lightmapAlpha = 1.f;
    float darkLevel =
        mgr.GetWorld()->GetArea(areaId)->GetPostConstructed()->x1128_worldLightingLevel;

    const CScriptWater* nextWater = water->GetNextConnectedWater(mgr);

    if (fabs(water->GetMorphFactor() - 0.f) < FLT_EPSILON || nextWater == NULL ||
        !nextWater->GetFluidPlane().HasLightMap()) {
      texMapIds[6] = nextTexMap;
      GetLightMap()->Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
      const_cast< CFluidPlaneCPU* >(this)->CalculateLightmapMtx(areaXf, xf, aabb, texMtx);
      texCoordIds[6] = nextCoord;
      CGX::SetTexCoordGen((GXTexCoordID)nextCoord, GX_TG_MTX2x4, GX_TG_POS, (GXTexMtx)texMtx, false,
                          GX_PTIDENTITY);
      nextCoord += 1;
    } else if (nextWater != NULL && nextWater->GetFluidPlane().HasLightMap()) {
      if (fabs(water->GetMorphFactor() - 1.f) >= FLT_EPSILON) {
        texMapIds[6] = nextTexMap;
        GetLightMap()->Load((GXTexMapID)nextTexMap, CTexture::kCM_Repeat);
        const_cast< CFluidPlaneCPU* >(this)->CalculateLightmapMtx(areaXf, xf, aabb, texMtx);

        nextTexMap += 1;
        texMapIds[7] = nextTexMap;
        nextWater->GetFluidPlane().GetLightMap()->Load((GXTexMapID)nextTexMap,
                                                       CTexture::kCM_Repeat);
        const_cast< CFluidPlaneCPU& >(nextWater->GetFluidPlane())
            .CalculateLightmapMtx(areaXf, xf, aabb, texMtx + 3);
        texCoordIds[6] = nextCoord;
        CGX::SetTexCoordGen((GXTexCoordID)nextCoord, GX_TG_MTX2x4, GX_TG_POS, (GXTexMtx)texMtx,
                            false, GX_PTIDENTITY);
        texCoordIds[7] = nextCoord + 1;
        CGX::SetTexCoordGen((GXTexCoordID)(nextCoord + 1), GX_TG_MTX2x4, GX_TG_POS,
                            (GXTexMtx)(texMtx + 3), false, GX_PTIDENTITY);
        nextCoord += 2;

        float morphVal = darkLevel * water->GetMorphFactor();
        lightmapAlpha = (1.f - water->GetMorphFactor()) / (1.f - morphVal);
        CColor kColor3(morphVal, morphVal, morphVal, 1.f);
        CGX::SetTevKColor(GX_KCOLOR3, kColor3.GetGXColor());
        hasDoubleLightmap = true;
      } else {
        texMapIds[6] = nextTexMap;
        nextWater->GetFluidPlane().GetLightMap()->Load((GXTexMapID)nextTexMap,
                                                       CTexture::kCM_Repeat);
        const_cast< CFluidPlaneCPU& >(nextWater->GetFluidPlane())
            .CalculateLightmapMtx(areaXf, xf, aabb, texMtx);
        texCoordIds[6] = nextCoord;
        CGX::SetTexCoordGen((GXTexCoordID)nextCoord, GX_TG_MTX2x4, GX_TG_POS, (GXTexMtx)texMtx,
                            false, GX_PTIDENTITY);
        nextCoord += 1;
      }
    }
    float lightmapVal = lightmapAlpha * darkLevel;
    CColor kColor2(lightmapVal, lightmapVal, lightmapVal, 1.f);
    CGX::SetTevKColor(GX_KCOLOR2, kColor2.GetGXColor());
  }

  CVector3f upVec(0.f, 0.f, 1.f);
  CVector3f xfUp(xf.TransposeRotate(upVec));
  float xfUpX = xfUp.GetX();
  float xfUpY = xfUp.GetY();
  float xfUpZ = xfUp.GetZ();
  CVector3f camUp(0.f, 1.f, 0.f);
  CTransform4f invView(CGraphics::GetViewMatrix().GetQuickInverse());
  CVector3f viewUp(invView.TransposeRotate(camUp));
  float dot = xfUpX * viewUp.GetX() + xfUpY * viewUp.GetY() + xfUpZ * viewUp.GetZ();
  if (dot < 0.f) {
    dot = -dot;
  }
  float specular = (1.f - dot) * (GetSpecularMax() - GetSpecularMin()) + GetSpecularMin();
  float specularAlpha;
  if (envMapType == 2) {
    specularAlpha = 1.f;
  } else {
    specularAlpha = alpha;
  }
  CColor kColor0(specular, specular, specular, specularAlpha);
  CGX::SetTevKColor(GX_KCOLOR0, kColor0.GetGXColor());

  float reflBlend = GetReflectionBlend();
  CColor kColor1(reflBlend, reflBlend, reflBlend, 1.f);
  CGX::SetTevKColor(GX_KCOLOR1, kColor1.GetGXColor());

  CGX::SetNumTexGens((u8)nextCoord);

  int fluidType = GetFluidType();
  int nextStage = 0;

  switch (fluidType) {
  case kFT_Lava: {
    CGX::SetTevOrder(GX_TEVSTAGE0, (GXTexCoordID)texCoordIds[0], (GXTexMapID)texMapIds[0],
                     GX_COLOR0A0);
    CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_RASC);
    CGX::SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
    CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
    CGX::SetTevOrder(GX_TEVSTAGE1, (GXTexCoordID)texCoordIds[1], (GXTexMapID)texMapIds[1],
                     GX_COLOR0A0);
    CGX::SetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_RASC);
    CGX::SetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
    CGX::SetTevOrder(GX_TEVSTAGE2, (GXTexCoordID)texCoordIds[2], (GXTexMapID)texMapIds[2],
                     GX_COLOR_NULL);
    CGX::SetTevColorIn(GX_TEVSTAGE2, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_CPREV);
    CGX::SetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
    nextStage = 3;
    if (hasBumpMap) {
      CGX::SetTevOrder(GX_TEVSTAGE3, (GXTexCoordID)texCoordIds[3], (GXTexMapID)texMapIds[3],
                       GX_COLOR_NULL);
      CGX::SetTevColorIn(GX_TEVSTAGE3, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_HALF);
      CGX::SetTevColorOp(GX_TEVSTAGE3, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, false, GX_TEVREG0);
      CGX::SetTevOrder(GX_TEVSTAGE4, (GXTexCoordID)(texCoordIds[3] + 1), (GXTexMapID)texMapIds[3],
                       GX_COLOR_NULL);
      CGX::SetTevColorIn(GX_TEVSTAGE4, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_C0);
      CGX::SetTevColorOp(GX_TEVSTAGE4, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVREG0);
      CGX::SetTevOrder(GX_TEVSTAGE5, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
      CGX::SetTevColorIn(GX_TEVSTAGE5, GX_CC_ZERO, GX_CC_CPREV, GX_CC_C0, GX_CC_ZERO);
      CGX::SetTevColorOp(GX_TEVSTAGE5, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_2, true, GX_TEVPREV);
      nextStage = 6;
    }
    break;
  }
  case kFT_NormalWater:
  case kFT_PhazonFluid:
  case kFT_Four: {
    int curStage = 0;
    if (hasLightmap) {
      GXChannelID lightmapChan = GX_COLOR1A1;
      GXTevColorArg lightmapRasc = GX_CC_RASC;
      if (hasDoubleLightmap) {
        lightmapChan = GX_COLOR_NULL;
        lightmapRasc = GX_CC_ZERO;
      }
      CGX::SetTevOrder(GX_TEVSTAGE0, (GXTexCoordID)texCoordIds[6], (GXTexMapID)texMapIds[6],
                       lightmapChan);
      CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, lightmapRasc);
      CGX::SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVREG2);
      CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K2);
      curStage = 1;
      if (hasDoubleLightmap) {
        CGX::SetTevOrder(GX_TEVSTAGE1, (GXTexCoordID)texCoordIds[7], (GXTexMapID)texMapIds[7],
                         GX_COLOR1A1);
        CGX::SetTevColorIn(GX_TEVSTAGE1, GX_CC_C2, GX_CC_TEXC, GX_CC_KONST, GX_CC_RASC);
        CGX::SetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVREG2);
        CGX::SetTevKColorSel(GX_TEVSTAGE1, GX_TEV_KCSEL_K3);
        curStage = 2;
      }
    }
    CGX::SetTevOrder((GXTevStageID)curStage, (GXTexCoordID)texCoordIds[0], (GXTexMapID)texMapIds[0],
                     GX_COLOR1A1);
    CGX::SetTevColorIn((GXTevStageID)curStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_RASC);
    CGX::SetTevColorOp((GXTevStageID)curStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true,
                       GX_TEVPREV);
    CGX::SetTevKColorSel((GXTevStageID)curStage, GX_TEV_KCSEL_K0);
    CGX::SetTevOrder((GXTevStageID)(curStage + 1), (GXTexCoordID)texCoordIds[1],
                     (GXTexMapID)texMapIds[1], GX_COLOR0A0);
    CGX::SetTevColorIn((GXTevStageID)(curStage + 1), GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV,
                       GX_CC_RASC);
    CGX::SetTevColorOp((GXTevStageID)(curStage + 1), GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true,
                       GX_TEVPREV);
    CGX::SetTevOrder((GXTevStageID)(curStage + 2), (GXTexCoordID)texCoordIds[2],
                     (GXTexMapID)texMapIds[2], GX_COLOR1A1);
    GXTevColorArg colorRasc = GX_CC_RASC;
    if (hasLightmap) {
      colorRasc = GX_CC_C2;
    }
    CGX::SetTevColorIn((GXTevStageID)(curStage + 2), GX_CC_ZERO, GX_CC_TEXC, colorRasc,
                       GX_CC_CPREV);
    CGX::SetTevColorOp((GXTevStageID)(curStage + 2), GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true,
                       GX_TEVPREV);
    if (envMapType == 0 && hasEnvBumpMap) {
      CGX::SetTevIndirect((GXTevStageID)(curStage + 2), GX_INDTEXSTAGE0, GX_ITF_8, GX_ITB_STU,
                          GX_ITM_0, GX_ITW_OFF, GX_ITW_OFF, false, false, GX_ITBA_OFF);
    }
    nextStage = curStage + 3;
    if (envMapType > 0) {
      CGX::SetTevOrder((GXTevStageID)nextStage, (GXTexCoordID)texCoordIds[5],
                       (GXTexMapID)texMapIds[4], GX_COLOR_NULL);
      GXTevColorArg envD = GX_CC_TEXC;
      GXTevColorArg envC = GX_CC_ZERO;
      GXTevColorArg envB = GX_CC_ZERO;
      GXTevColorArg envA = GX_CC_ZERO;
      if (envMapType == 1) {
        envD = GX_CC_ZERO;
        envC = GX_CC_KONST;
        envB = GX_CC_TEXC;
        envA = GX_CC_CPREV;
      }
      CGX::SetTevColorIn((GXTevStageID)nextStage, envA, envB, envC, envD);
      CGX::SetTevColorOp((GXTevStageID)nextStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true,
                         GX_TEVPREV);
      CGX::SetTevKColorSel((GXTevStageID)nextStage, GX_TEV_KCSEL_K1);
      CGX::SetTevIndirect((GXTevStageID)nextStage, GX_INDTEXSTAGE0, GX_ITF_8, GX_ITB_STU, GX_ITM_0,
                          GX_ITW_OFF, GX_ITW_OFF, false, false, GX_ITBA_OFF);
      nextStage = curStage + 4;
    }
    break;
  }
  case kFT_PoisonWater: {
    if (hasLightmap) {
      GXChannelID lightmapChan = GX_COLOR1A1;
      GXTevColorArg lightmapRasc = GX_CC_RASC;
      if (hasDoubleLightmap) {
        lightmapChan = GX_COLOR_NULL;
        lightmapRasc = GX_CC_ZERO;
      }
      CGX::SetTevOrder(GX_TEVSTAGE0, (GXTexCoordID)texCoordIds[6], (GXTexMapID)texMapIds[6],
                       lightmapChan);
      CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, lightmapRasc);
      CGX::SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVREG2);
      CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K2);
      nextStage = 1;
      if (hasDoubleLightmap) {
        CGX::SetTevOrder(GX_TEVSTAGE1, (GXTexCoordID)texCoordIds[7], (GXTexMapID)texMapIds[7],
                         GX_COLOR1A1);
        CGX::SetTevColorIn(GX_TEVSTAGE1, GX_CC_C2, GX_CC_TEXC, GX_CC_KONST, GX_CC_RASC);
        CGX::SetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVREG2);
        CGX::SetTevKColorSel(GX_TEVSTAGE1, GX_TEV_KCSEL_K3);
        nextStage = 2;
      }
    }
    CGX::SetTevOrder((GXTevStageID)nextStage, (GXTexCoordID)texCoordIds[0],
                     (GXTexMapID)texMapIds[0], GX_COLOR1A1);
    CGX::SetTevColorIn((GXTevStageID)nextStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_RASC);
    CGX::SetTevColorOp((GXTevStageID)nextStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true,
                       GX_TEVPREV);
    CGX::SetTevKColorSel((GXTevStageID)nextStage, GX_TEV_KCSEL_K0);
    CGX::SetTevOrder((GXTevStageID)(nextStage + 1), (GXTexCoordID)texCoordIds[1],
                     (GXTexMapID)texMapIds[1], GX_COLOR0A0);
    CGX::SetTevColorIn((GXTevStageID)(nextStage + 1), GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV,
                       GX_CC_RASC);
    CGX::SetTevColorOp((GXTevStageID)(nextStage + 1), GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true,
                       GX_TEVPREV);
    CGX::SetTevOrder((GXTevStageID)(nextStage + 2), (GXTexCoordID)texCoordIds[2],
                     (GXTexMapID)texMapIds[2], GX_COLOR1A1);
    GXTevColorArg pColorRasc = GX_CC_RASC;
    if (hasLightmap) {
      pColorRasc = GX_CC_C2;
    }
    CGX::SetTevColorIn((GXTevStageID)(nextStage + 2), GX_CC_ZERO, GX_CC_TEXC, pColorRasc,
                       GX_CC_CPREV);
    CGX::SetTevColorOp((GXTevStageID)(nextStage + 2), GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true,
                       GX_TEVPREV);
    if (hasEnvBumpMap) {
      CGX::SetTevIndirect((GXTevStageID)(nextStage + 2), GX_INDTEXSTAGE0, GX_ITF_8, GX_ITB_STU,
                          GX_ITM_0, GX_ITW_OFF, GX_ITW_OFF, false, false, GX_ITBA_OFF);
    }
    nextStage += 3;
    break;
  }
  case kFT_ThickLava: {
    CGX::SetTevOrder(GX_TEVSTAGE0, (GXTexCoordID)texCoordIds[0], (GXTexMapID)texMapIds[0],
                     GX_COLOR0A0);
    CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_RASC);
    CGX::SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
    CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
    CGX::SetTevOrder(GX_TEVSTAGE1, (GXTexCoordID)texCoordIds[1], (GXTexMapID)texMapIds[1],
                     GX_COLOR0A0);
    CGX::SetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_RASC);
    CGX::SetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
    CGX::SetTevOrder(GX_TEVSTAGE2, (GXTexCoordID)texCoordIds[2], (GXTexMapID)texMapIds[2],
                     GX_COLOR_NULL);
    CGX::SetTevColorIn(GX_TEVSTAGE2, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_CPREV);
    CGX::SetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
    nextStage = 3;
    if (hasBumpMap) {
      CGX::SetTevOrder(GX_TEVSTAGE3, (GXTexCoordID)texCoordIds[3], (GXTexMapID)texMapIds[3],
                       GX_COLOR_NULL);
      CGX::SetTevColorIn(GX_TEVSTAGE3, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO);
      CGX::SetTevColorOp(GX_TEVSTAGE3, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_2, true, GX_TEVPREV);
      nextStage = 4;
    }
    break;
  }
  default: {
    if (!sFluidSetupInitOnce) {
      sFluidSetupDone = 0;
      sFluidSetupInitOnce = 1;
    }
    if (!sFluidSetupDone) {
      sFluidSetupDone = 1;
    }
    break;
  }
  }

  CGX::SetNumTevStages((u8)nextStage);
  int lastStage = nextStage - 1;
  CGX::SetTevAlphaIn((GXTevStageID)lastStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_KONST);
  CGX::SetTevAlphaOp((GXTevStageID)lastStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true,
                     GX_TEVPREV);
  CGX::SetTevKAlphaSel((GXTevStageID)lastStage, GX_TEV_KASEL_K0_A);

  if (mgr.GetThermalDrawFlag() != kTD_Hot) {
    GXBlendMode bm = (alpha == 1.f) ? GX_BM_NONE : GX_BM_BLEND;
    CGX::SetBlendMode(bm, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
  } else {
    CGX::SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_CLEAR);
  }

  CGX::SetZMode(true, GX_LEQUAL, false);
  CGX::SetAlphaCompare(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0);
  GXSetCullMode(GX_CULL_NONE);
}

CFluidPlaneCPURender::SPatchInfo::SPatchInfo(const CVector3f& localMin, const CVector3f& localMax,
                                             const CVector3f& pos, float rippleResolution,
                                             float tileSize, float wavecapIntensityScale,
                                             int numSubdivisionsInHField, int normalMode,
                                             int redShift, int greenShift, uchar blueShift,
                                             int tileX, int gridDimX, int gridDimY, int tileY,
                                             const bool* gridFlags) {
  short maxSubsX;
  short xSubs =
      CCast::FtoS(1.f + (localMax.GetX() - localMin.GetX()) / rippleResolution - FLT_EPSILON) + 2;
  maxSubsX = (short)(numSubdivisionsInHField + 2);
  x0_xSubdivs = rstl::min_val< short >(maxSubsX, xSubs);
  short maxSubsY;
  short ySubs =
      CCast::FtoS(1.f + (localMax.GetY() - localMin.GetY()) / rippleResolution - FLT_EPSILON) + 2;
  maxSubsY = (short)(numSubdivisionsInHField + 2);
  x1_ySubdivs = rstl::min_val< short >(maxSubsY, ySubs);
  float tileHypRadius = 0.25f * (tileSize * tileSize + tileSize * tileSize);
  x4_localMinX = localMin.GetX();
  x8_localMinY = localMin.GetY();
  xc_globalMinX = x4_localMinX + pos.GetX();
  x10_globalMinY = x8_localMinY + pos.GetY();
  x14_tileSize = tileSize;
  x18_rippleResolution = rippleResolution;
  if (0.f != tileHypRadius) {
    tileHypRadius = fast_sqrt(tileHypRadius);
  }
  x1c_tileHypRadius = tileHypRadius;
  x20_ooTileSize = 1.f / x14_tileSize;
  x24_ooRippleResolution = 1.f / x18_rippleResolution;
  x28_tileX = (short)tileX;
  x2a_gridDimX = (short)gridDimX;
  x2c_gridDimY = (short)gridDimY;
  x2e_tileY = (short)tileY;
  x30_gridFlags = gridFlags;
  x34_redShift = (uchar)redShift;
  x35_greenShift = (uchar)greenShift;
  x36_blueShift = (uchar)blueShift;
  x37_normalMode = (uchar)normalMode;
  x38_wavecapIntensityScale = wavecapIntensityScale;
}

extern void RenderPatch(const CFluidPlaneCPURender::SPatchInfo& info, bool noRipples);
bool UpdatePatch(float time, CFluidPlaneCPURender::SPatchInfo& info,
                 const CFluidPlaneCPU& fluidPlane, const CVector3f& areaCenter,
                 const CRippleManager& rippleManager, int fromX, int toX, int fromY, int toY);

void CFluidPlaneCPU::Render(const CStateManager& mgr, float alpha, const CAABox& aabb,
                            const CTransform4f& xf, const CTransform4f& areaXf, bool noNormals,
                            const CFrustumPlanes& frustum,
                            const rstl::optional_object< CRippleManager >& rippleManager,
                            TUniqueId waterId, const bool* gridFlags, int gridDimX, int gridDimY,
                            const CVector3f& areaCenter) const {
  if (!sRenderFog) {
    return;
  }

  TCastToPtr< CScriptWater > water(const_cast< CEntity* >(mgr.GetObjectById(waterId)));
  CScriptWater* waterPtr = water;
  RenderSetup(mgr, alpha, xf, areaXf, aabb, waterPtr);

  float time = mgr.GetFluidPlaneManager()->GetTime();
  CGX::ResetVtxDescv();

  int normalMode;
  if (HasBumpMap() && sRenderBumpMaps) {
    normalMode = CFluidPlaneCPURender::kNM_NBT;
  } else if (!noNormals) {
    normalMode = CFluidPlaneCPURender::kNM_Normals;
  } else {
    normalMode = CFluidPlaneCPURender::kNM_NoNormals;
  }

  CGX::SetVtxDesc(GX_VA_POS, GX_DIRECT);
  CGX::SetVtxDesc(GX_VA_CLR0, GX_DIRECT);

  switch (normalMode) {
  case CFluidPlaneCPURender::kNM_NBT:
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NBT, GX_CLR_RGBA, GX_RGB8, 6);
    GXSetVtxDesc(GX_VA_NBT, GX_DIRECT);
    break;
  case CFluidPlaneCPURender::kNM_Normals:
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_CLR_RGB, GX_RGB8, 6);
    CGX::SetVtxDesc(GX_VA_NRM, GX_DIRECT);
    break;
  default:
    break;
  }

  CFluidPlaneCPURender::numSubdivisionsInTile = x104_tileSubdivisions;
  float rippleResolution = x108_rippleResolution;
  float rippleResolutionRecip = 1.f / rippleResolution;
  int numTiles = 42 / CFluidPlaneCPURender::numSubdivisionsInTile;
  CFluidPlaneCPURender::numTilesInHField = rstl::min_val(numTiles, kMaxTilesInHField);
  CFluidPlaneCPURender::numSubdivisionsInHField =
      CFluidPlaneCPURender::numTilesInHField * CFluidPlaneCPURender::numSubdivisionsInTile;

  CVector3f centerPoint(aabb.GetCenterPoint());
  float centerY = centerPoint.GetY();
  CVector3f centerPoint2(aabb.GetCenterPoint());
  CVector2f aabbCenter(centerPoint2.GetX(), centerY);

  float aabbMinX = aabb.GetMinPoint().GetX();
  float aabbMinY = aabb.GetMinPoint().GetY();
  float aabbMinZ = aabb.GetMinPoint().GetZ();
  float aabbMaxX = aabb.GetMaxPoint().GetX();
  float aabbMaxY = aabb.GetMaxPoint().GetY();
  float aabbMaxZ = aabb.GetMaxPoint().GetZ();

  CVector2f ripplePitch(rippleResolution * CFluidPlaneCPURender::numSubdivisionsInHField,
                        rippleResolution * CFluidPlaneCPURender::numSubdivisionsInHField);

  int redShift = 0;
  int greenShift = 0;
  int blueShift = 0;
  float wavecapIntensityScale = gpTweakGame->GetWavecapIntensityNormal();

  switch (x44_fluidType) {
  case kFT_PoisonWater:
    wavecapIntensityScale = gpTweakGame->GetWavecapIntensityPoison();
    redShift = 1;
    blueShift = 1;
    break;
  case kFT_Lava:
  case kFT_ThickLava:
    wavecapIntensityScale = gpTweakGame->GetWavecapIntensityLava();
    blueShift = 8;
    greenShift = 8;
    break;
  default:
    break;
  }

  if (waterPtr != NULL) {
    const CGameCamera& camera = mgr.GetCameraManager()->GetCurrentCamera(mgr);
    CVector3f camPos(camera.GetTranslation());
    CVector3f upVec(0.f, 0.f, 1.f);
    upVec.Normalize();
    CAABox triggerBounds = waterPtr->GetTriggerBoundsWR();
    float upY = upVec.GetY();
    float upX = upVec.GetX();
    float upZ = upVec.GetZ();
    float maxZ = triggerBounds.GetMaxPoint().GetZ();
    float cameraPenetration =
        upY * camPos.GetY() + upX * camPos.GetX() + upZ * camPos.GetZ() - maxZ;
    bool inRange = false;
    if (cameraPenetration >= 0.5f || cameraPenetration < 0.f) {
      inRange = true;
    }
    float scale;
    if (inRange) {
      scale = 1.f;
    } else {
      scale = 2.f * cameraPenetration;
    }
    wavecapIntensityScale *= scale;
  }

  bool hasPatchDimX = false;
  if (waterPtr != NULL && waterPtr->GetPatchDimensionX() != 0) {
    hasPatchDimX = true;
  }
  int patchDimX;
  if (hasPatchDimX) {
    patchDimX = waterPtr->GetPatchDimensionX();
  } else {
    patchDimX = 128;
  }

  bool hasPatchDimY = false;
  if (waterPtr != NULL && waterPtr->GetPatchDimensionY() != 0) {
    hasPatchDimY = true;
  }
  int patchDimY;
  if (hasPatchDimY) {
    patchDimY = waterPtr->GetPatchDimensionY();
  } else {
    patchDimY = 128;
  }

  uchar blueShiftU = (uchar)blueShift;
  uchar greenShiftU = (uchar)greenShift;
  uchar redShiftU = (uchar)redShift;

  int tileY = 0;
  int i = 0;
  float curY = aabbMinY;
  while (curY < aabbMaxY && i < patchDimY) {
    float remDivsY = rippleResolutionRecip * (aabbMaxY - curY);
    int tileX = 0;
    int j = 0;
    float curX = aabbMinX;
    while (curX < aabbMaxX && j < patchDimX) {
      int renderFlags = waterPtr->GetPatchRenderFlags(j, i);
      if (renderFlags != 0) {
        short remDivsXS = CCast::FtoS(rippleResolutionRecip * (aabbMaxX - curX));
        short numSubsS = (short)CFluidPlaneCPURender::numSubdivisionsInHField;
        short xSubdivs = rstl::min_val< short >(numSubsS, remDivsXS);

        short remDivsYS = CCast::FtoS(remDivsY);
        short numSubsYS = (short)CFluidPlaneCPURender::numSubdivisionsInHField;
        short ySubdivs = rstl::min_val< short >(numSubsYS, remDivsYS);

        float localMaxX = rippleResolution * xSubdivs + curX;
        float localMaxY = rippleResolution * ySubdivs + curY;

        CVector3f localMax(localMaxX + xf.Get03(), localMaxY + xf.Get13(), aabbMaxZ + xf.Get23());
        CVector3f localMin(curX + xf.Get03(), curY + xf.Get13(), aabbMinZ + xf.Get23());

        CAABox testAABB(localMin, localMax);
        if (frustum.BoxInFrustumPlanes(testAABB)) {
          CVector3f pos(xf.Get03(), xf.Get13(), xf.Get23());
          CVector3f patchMin(curX, curY, aabbMinZ);
          CVector3f patchMax(localMaxX, localMaxY, aabbMaxZ);

          CFluidPlaneCPURender::SPatchInfo info(
              patchMin, patchMax, pos, rippleResolution, x100_tileSize, wavecapIntensityScale,
              CFluidPlaneCPURender::numSubdivisionsInHField, normalMode, redShiftU, greenShiftU,
              blueShiftU, tileX, gridDimX, gridDimY, tileY, gridFlags);

          CFluidPlaneCPURender::SPatchInfo& lcInfo =
              *reinterpret_cast< CFluidPlaneCPURender::SPatchInfo* >(0xe0000000);
          lcInfo = info;

          int fromX = ((-tileX | tileX) >> 31) & (2 - CFluidPlaneCPURender::numSubdivisionsInTile);
          int toX;
          if (tileX != gridDimX - 1) {
            toX = lcInfo.x0_xSubdivs + CFluidPlaneCPURender::numSubdivisionsInTile - 2;
          } else {
            toX = lcInfo.x0_xSubdivs;
          }

          int fromY = ((-tileY | tileY) >> 31) & (2 - CFluidPlaneCPURender::numSubdivisionsInTile);
          int toY;
          if (tileY != gridDimY - 1) {
            toY = lcInfo.x1_ySubdivs + CFluidPlaneCPURender::numSubdivisionsInTile - 2;
          } else {
            toY = lcInfo.x1_ySubdivs;
          }

          bool noRipples =
              UpdatePatch(time, lcInfo, *this, areaCenter, *rippleManager, fromX, toX, fromY, toY);
          RenderPatch(lcInfo, renderFlags == 1);
        }
      }
      curX += ripplePitch.GetX();
      j += 1;
      tileX += CFluidPlaneCPURender::numTilesInHField;
    }
    curY += ripplePitch.GetY();
    i += 1;
    tileY += CFluidPlaneCPURender::numTilesInHField;
  }

  GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NBT, GX_CLR_RGBA, GX_F32, 6);
  GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_CLR_RGB, GX_F32, 6);
  GXSetVtxDesc(GX_VA_NBT, GX_NONE);
  GXSetCullMode(GX_CULL_FRONT);
  RenderCleanup();
}

void CFluidPlaneCPU::RenderCleanup() const {
  if (!sRenderFog) {
    return;
  }

  LCQueueWait(0);

  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX3x4, GX_TG_TEX0, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX3x4, GX_TG_TEX1, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTexCoordGen(GX_TEXCOORD2, GX_TG_MTX3x4, GX_TG_TEX2, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTexCoordGen(GX_TEXCOORD3, GX_TG_MTX3x4, GX_TG_TEX3, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTexCoordGen(GX_TEXCOORD4, GX_TG_MTX3x4, GX_TG_TEX4, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTexCoordGen(GX_TEXCOORD5, GX_TG_MTX3x4, GX_TG_TEX5, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTexCoordGen(GX_TEXCOORD6, GX_TG_MTX3x4, GX_TG_TEX6, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);

  CGX::SetTevDirect(GX_TEVSTAGE3);
  CGX::SetTevDirect(GX_TEVSTAGE6);

  CGX::SetNumIndStages(0);

  CGX::ResetVtxDescv();

  float mtx[3][4];
  CTransform4f nrmMtx(CGraphics::GetViewMatrix().GetRotation().GetQuickInverse());
  mtx[0][0] = nrmMtx.Get00();
  mtx[0][1] = nrmMtx.Get01();
  mtx[0][2] = nrmMtx.Get02();
  mtx[0][3] = nrmMtx.Get03();
  mtx[1][0] = nrmMtx.Get10();
  mtx[1][1] = nrmMtx.Get11();
  mtx[1][2] = nrmMtx.Get12();
  mtx[1][3] = nrmMtx.Get13();
  mtx[2][0] = nrmMtx.Get20();
  mtx[2][1] = nrmMtx.Get21();
  mtx[2][2] = nrmMtx.Get22();
  mtx[2][3] = nrmMtx.Get23();
  GXLoadNrmMtxImm(mtx, GX_PNMTX0);

  CGX::SetChanCtrl(CGX::Channel1, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_CLAMP,
                   GX_AF_SPOT);
  CGX::SetNumChans(1);

  CGraphics::SetLightState(CGraphics::GetLightMask());
}

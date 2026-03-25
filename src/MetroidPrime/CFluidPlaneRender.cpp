#include "MetroidPrime/CFluidPlaneManager.hpp"

#include "MetroidPrime/CRipple.hpp"
#include "MetroidPrime/CRippleManager.hpp"

#include "Kyoto/Graphics/CGX.hpp"

#include "rstl/math.hpp"

#include <math.h>

#include "dolphin/gx/GXEnum.h"
#include "dolphin/gx/GXVert.h"
#include "dolphin/os/OSCache.h"

extern unsigned char sRippleValues[64][64];
extern unsigned char sRippleMins[64];
extern unsigned char sRippleMaxs[64];
static int sZeroX = 0;
static int sZeroY = 0;

static float sGlobalSineWave[256];
static bool sSineWaveInitialized;

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

float* InitializeSineWave() {
  if (!sSineWaveInitialized) {
    for (int i = 0; i < 256; ++i) {
      sGlobalSineWave[i] = static_cast< float >(sin(M_2PIF * (static_cast< float >(i) / 256)));
    }
    sSineWaveInitialized = true;
  }
  return sGlobalSineWave;
}

float* GetGlobalSineWave() { return sGlobalSineWave; }

bool PrepareRipple(const CRipple& ripple, const CFluidPlaneCPURender::SPatchInfo& info,
                   CFluidPlaneCPURender::SRippleInfo& rippleInfo) {
  int lifeIdx = static_cast< int >(
      64.f * (1.f - (ripple.GetTimeFalloff() - ripple.GetTime()) / ripple.GetTimeFalloff()));
  float scaledDist = ripple.GetDistFalloff() / 255.f;
  float centerX = info.x24_ooRippleResolution * (ripple.GetCenter().GetX() - info.xc_globalMinX);
  float centerY = info.x24_ooRippleResolution * (ripple.GetCenter().GetY() - info.x10_globalMinY);
  float dist = scaledDist * static_cast< float >(static_cast< int >(sRippleMaxs[lifeIdx]));
  dist = dist * dist;
  if (0.f == dist) {
    dist = dist;
  } else {
    dist = fast_sqrt(dist);
  }
  dist = info.x24_ooRippleResolution * dist + 1.f;

  int fromX = static_cast< int >(centerX - dist) - 1;
  int fromY = static_cast< int >(centerY - dist) - 1;
  int toX = static_cast< int >(centerX + dist) + 1;
  int toY = static_cast< int >(centerY + dist) + 1;

  rippleInfo.x4_fromX = rstl::max_val(fromX, sZeroX);
  rippleInfo.x8_toX =
      rstl::min_val(toX, static_cast< int >(static_cast< signed char >(info.x0_xSubdivs)));
  rippleInfo.xc_fromY = rstl::max_val(fromY, sZeroY);
  rippleInfo.x10_toY =
      rstl::min_val(toY, static_cast< int >(static_cast< signed char >(info.x1_ySubdivs)));

  rippleInfo.x14_gfromX = rstl::max_val(fromX, rippleInfo.x14_gfromX);
  rippleInfo.x18_gtoX = rstl::min_val(toX, rippleInfo.x18_gtoX);
  rippleInfo.x1c_gfromY = rstl::max_val(fromY, rippleInfo.x1c_gfromY);
  rippleInfo.x20_gtoY = rstl::min_val(toY, rippleInfo.x20_gtoY);

  if (rippleInfo.x14_gfromX > rippleInfo.x18_gtoX || rippleInfo.x1c_gfromY > rippleInfo.x20_gtoY) {
    return false;
  }
  return true;
}

void RenderTileWithRipplesNoNormals(float curY,
                                    const CFluidPlaneCPURender::SHFieldSample (&heights)[45][45],
                                    float startX, int startYDiv,
                                    const CFluidPlaneCPURender::SPatchInfo& info) {
  const CFluidPlaneCPURender::SHFieldSample* samples = heights[0];
  for (int numSubdivisions = CFluidPlaneCPURender::numSubdivisionsInTile; numSubdivisions > 0;
       --numSubdivisions) {
    CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, startYDiv << 1);
    float rippleRes = info.x18_rippleResolution;
    int count = startYDiv;
    float curX = curY;
    const CFluidPlaneCPURender::SHFieldSample* s = samples;
    for (; count != 0; --count, ++s, curX += rippleRes) {
      GXPosition3f32(curX, startX, s->height);
      GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                 static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                 static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
      GXPosition3f32(curX, startX + rippleRes, s[45].height);
      GXColor4u8(static_cast< u8 >(s[45].wavecapIntensity >> info.x34_redShift),
                 static_cast< u8 >(s[45].wavecapIntensity >> info.x35_greenShift),
                 static_cast< u8 >(s[45].wavecapIntensity >> info.x36_blueShift), 0xff);
    }
    CGX::End();
    samples += 45;
    startX += info.x18_rippleResolution;
  }
}

// fn_8026F5F4
static void RenderTileStripNormals(const CFluidPlaneCPURender::SHFieldSample* samples, float curX,
                                   float curY, float rippleRes, int count,
                                   const CFluidPlaneCPURender::SPatchInfo& info) {
  for (; count != 0; --count, ++samples, curX += rippleRes) {
    GXPosition3f32(curX, curY, samples->height);
    GXNormal3s8(samples->nx, samples->ny, samples->nz);
    GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
               static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
               static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
    GXPosition3f32(curX, curY + rippleRes, samples[45].height);
    GXNormal3s8(samples[45].nx, samples[45].ny, samples[45].nz);
    GXColor4u8(static_cast< u8 >(samples[45].wavecapIntensity >> info.x34_redShift),
               static_cast< u8 >(samples[45].wavecapIntensity >> info.x35_greenShift),
               static_cast< u8 >(samples[45].wavecapIntensity >> info.x36_blueShift), 0xff);
  }
}

void RenderTileWithRipplesNormals(float curY,
                                  const CFluidPlaneCPURender::SHFieldSample (&heights)[45][45],
                                  float startX, int startYDiv,
                                  const CFluidPlaneCPURender::SPatchInfo& info) {
  const CFluidPlaneCPURender::SHFieldSample* samples = heights[0];
  for (int numSubdivisions = CFluidPlaneCPURender::numSubdivisionsInTile; numSubdivisions > 0;
       --numSubdivisions) {
    CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, startYDiv << 1);
    RenderTileStripNormals(samples, curY, startX, info.x18_rippleResolution, startYDiv, info);
    CGX::End();
    samples += 45;
    startX += info.x18_rippleResolution;
  }
}

// fn_8026F408
static void RenderTileStripNBT(const CFluidPlaneCPURender::SHFieldSample* samples, float curX,
                               float curY, float rippleRes, int count,
                               const CFluidPlaneCPURender::SPatchInfo& info) {
  for (; count != 0; --count, ++samples, curX += rippleRes) {
    GXPosition3f32(curX, curY, samples->height);
    GXNormal3s8(samples->nx, samples->ny, samples->nz);
    GXNormal3s8(samples->nx, samples->nz, -samples->ny);
    GXNormal3s8(samples->nz, samples->ny, -samples->nx);
    GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
               static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
               static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
    GXPosition3f32(curX, curY + rippleRes, samples[45].height);
    GXNormal3s8(samples[45].nx, samples[45].ny, samples[45].nz);
    GXNormal3s8(samples[45].nx, samples[45].nz, -samples[45].ny);
    GXNormal3s8(samples[45].nz, samples[45].ny, -samples[45].nx);
    GXColor4u8(static_cast< u8 >(samples[45].wavecapIntensity >> info.x34_redShift),
               static_cast< u8 >(samples[45].wavecapIntensity >> info.x35_greenShift),
               static_cast< u8 >(samples[45].wavecapIntensity >> info.x36_blueShift), 0xff);
  }
}

void RenderTileWithRipplesNBT(float curY,
                              const CFluidPlaneCPURender::SHFieldSample (&heights)[45][45],
                              float startX, int startYDiv,
                              const CFluidPlaneCPURender::SPatchInfo& info) {
  const CFluidPlaneCPURender::SHFieldSample* samples = heights[0];
  for (int numSubdivisions = CFluidPlaneCPURender::numSubdivisionsInTile; numSubdivisions > 0;
       --numSubdivisions) {
    CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, startYDiv << 1);
    RenderTileStripNBT(samples, curY, startX, info.x18_rippleResolution, startYDiv, info);
    CGX::End();
    samples += 45;
    startX += info.x18_rippleResolution;
  }
}

// fn_8026F1AC
static void RenderStripEndNoNormals(const CFluidPlaneCPURender::SHFieldSample* samples,
                                    const CFluidPlaneCPURender::SPatchInfo& info, bool last,
                                    float curX, float curY, float endX) {
  if (last) {
    for (int i = 0; i <= CFluidPlaneCPURender::numSubdivisionsInTile; ++i) {
      GXPosition3f32(curX, curY, samples->height);
      GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
                 static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
                 static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
      samples += 45;
      curY += info.x18_rippleResolution;
    }
    return;
  }
  GXPosition3f32(curX, curY, samples->height);
  GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
  samples += CFluidPlaneCPURender::numSubdivisionsInTile * 45;
  GXPosition3f32(curX, curY + info.x14_tileSize, samples->height);
  GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
}

// fn_8026EF80
static void RenderStripEndNormals(const CFluidPlaneCPURender::SHFieldSample* samples,
                                  const CFluidPlaneCPURender::SPatchInfo& info, bool last,
                                  float curX, float curY, float endX) {
  if (last) {
    for (int i = 0; i <= CFluidPlaneCPURender::numSubdivisionsInTile; ++i) {
      GXPosition3f32(curX, curY, samples->height);
      GXNormal3s8(samples->nx, samples->ny, samples->nz);
      GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
                 static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
                 static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
      samples += 45;
      curY += info.x18_rippleResolution;
    }
    return;
  }
  GXPosition3f32(curX, curY, samples->height);
  GXNormal3s8(samples->nx, samples->ny, samples->nz);
  GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
  samples += CFluidPlaneCPURender::numSubdivisionsInTile * 45;
  GXPosition3f32(curX, curY + info.x14_tileSize, samples->height);
  GXNormal3s8(samples->nx, samples->ny, samples->nz);
  GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
}

// fn_8026ED84
static void RenderStripEndNBT(const CFluidPlaneCPURender::SHFieldSample* samples,
                              const CFluidPlaneCPURender::SPatchInfo& info, bool last, float curX,
                              float curY, float endX) {
  if (last) {
    for (int i = 0; i <= CFluidPlaneCPURender::numSubdivisionsInTile; ++i) {
      GXPosition3f32(curX, curY, samples->height);
      GXNormal3s8(samples->nx, samples->ny, samples->nz);
      GXNormal3s8(samples->nx, samples->nz, -samples->ny);
      GXNormal3s8(samples->nz, samples->ny, -samples->nx);
      GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
                 static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
                 static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
      samples += 45;
      curY += info.x18_rippleResolution;
    }
    return;
  }
  GXPosition3f32(curX, curY, samples->height);
  GXNormal3s8(samples->nx, samples->ny, samples->nz);
  GXNormal3s8(samples->nx, samples->nz, -samples->ny);
  GXNormal3s8(samples->nz, samples->ny, -samples->nx);
  GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
  samples += CFluidPlaneCPURender::numSubdivisionsInTile * 45;
  GXPosition3f32(curX, curY + info.x14_tileSize, samples->height);
  GXNormal3s8(samples->nx, samples->ny, samples->nz);
  GXNormal3s8(samples->nx, samples->nz, -samples->ny);
  GXNormal3s8(samples->nz, samples->ny, -samples->nx);
  GXColor4u8(static_cast< u8 >(samples->wavecapIntensity >> info.x34_redShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x35_greenShift),
             static_cast< u8 >(samples->wavecapIntensity >> info.x36_blueShift), 0xff);
}

void RenderStripWithRipples(const CFluidPlaneCPURender::SHFieldSample (&heights)[45][45],
                            const unsigned char (&flags)[9][9], int startYDiv, float curY,
                            const CFluidPlaneCPURender::SPatchInfo& info) {
  int numSubdivisions = CFluidPlaneCPURender::numSubdivisionsInTile;
  int iDiv = (startYDiv + numSubdivisions - 1) / numSubdivisions;
  const CFluidPlaneCPURender::SHFieldSample* heights_00 = &heights[startYDiv][1];
  float halfRes = info.x18_rippleResolution * static_cast< float >(numSubdivisions / 2);
  float centerY = halfRes + curY;
  float curX = info.x4_localMinX;
  int numSubTimesStride = numSubdivisions * 45;
  int centerOffset = numSubdivisions / 2 + numSubTimesStride / 2;
  int xSubdivs = static_cast< int >(static_cast< signed char >(info.x0_xSubdivs));
  int numTilesX = (xSubdivs + numSubdivisions - 4) / numSubdivisions;
  int gridOffset =
      static_cast< int >(info.x28_tileX) +
      static_cast< int >(info.x2a_gridDimX) * (static_cast< int >(info.x2e_tileY) + iDiv - 1);
  const unsigned char* flagsPtr = &flags[0][0] + iDiv * 9;
  int bottomStride = numSubTimesStride * 8;
  int rightStride = (numSubdivisions / 2 + numSubTimesStride / 2) * 8;
  int topStride = (numSubdivisions + numSubTimesStride) * 8;
  int sampleStride = numSubdivisions * 8;
  int tileIdx = 1;
  int xPos = 1;

  for (; xPos < xSubdivs - 2;) {
    const bool* gridFlags = info.x30_gridFlags;
    int numCombined = 1;

    if (gridFlags != NULL && reinterpret_cast< const char* >(gridFlags)[gridOffset] == 0) {
      goto nextTile;
    }

    {
      const unsigned char* flagByte = flagsPtr + tileIdx;
      if ((*flagByte & 0x1f) == 0x1f) {
        // Fully rippled tile - check for consecutive fully-rippled tiles
        const unsigned char* nextFlag = flagByte + 1;
        while (tileIdx + numCombined <= numTilesX) {
          if ((*nextFlag & 0x1f) != 0x1f) {
            break;
          }
          if (gridFlags != NULL) {
            if (reinterpret_cast< const char* >(gridFlags)[gridOffset + numCombined] == 0) {
              break;
            }
          }
          ++nextFlag;
          ++numCombined;
        }

        int numVerts = numCombined * numSubdivisions + 1;
        int normalMode = static_cast< int >(static_cast< signed char >(info.x37_normalMode));

        switch (normalMode) {
        case CFluidPlaneCPURender::kNM_None: {
          // Inline rendering for mode 0
          const CFluidPlaneCPURender::SHFieldSample* samples = heights_00;
          int subdivsLeft = numSubdivisions;
          float stripY = curY;
          for (; subdivsLeft > 0; --subdivsLeft) {
            CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, static_cast< ushort >(numVerts * 2));
            float rippleRes = info.x18_rippleResolution;
            float endY = stripY + rippleRes;
            float startX = curX;
            int count = numVerts;
            const CFluidPlaneCPURender::SHFieldSample* s = samples;
            if (count != 0) {
              for (; count != 0; --count) {
                GXPosition3f32(startX, stripY, s->height);
                GXPosition3f32(startX, endY, s[45].height);
                startX += rippleRes;
                ++s;
              }
            }
            CGX::End();
            samples += 45;
            stripY += info.x18_rippleResolution;
          }
          break;
        }
        case CFluidPlaneCPURender::kNM_NoNormals:
          RenderTileWithRipplesNoNormals(
              curX,
              reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample(&)[45][45] >(*heights_00),
              curY, numVerts, info);
          break;
        case CFluidPlaneCPURender::kNM_Normals:
          RenderTileWithRipplesNormals(
              curX,
              reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample(&)[45][45] >(*heights_00),
              curY, numVerts, info);
          break;
        case CFluidPlaneCPURender::kNM_NBT:
          RenderTileWithRipplesNBT(
              curX,
              reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample(&)[45][45] >(*heights_00),
              curY, numVerts, info);
          break;
        default:
          break;
        }
      } else {
        // Partial ripple - extract edge flags
        unsigned char below = flagByte[9];
        unsigned char left = flagByte[-1];
        unsigned char right = flagByte[1];
        unsigned char above = flagByte[-9];

        bool hasBelow = (below >> 1) & 1;
        bool isLeftEdge = (left >> 3) & 1;
        bool hasRight = (right >> 2) & 1;
        bool hasAbove = above & 1;

        int bottomCount = 1;
        if (hasBelow) {
          bottomCount = numSubdivisions;
        }
        int rightCount = 1;
        if (hasRight) {
          rightCount = numSubdivisions;
        }
        int aboveCount = 1;
        if (hasAbove) {
          aboveCount = numSubdivisions;
        }
        int leftCount = 1;
        if (isLeftEdge) {
          leftCount = numSubdivisions;
        }

        int totalVerts = bottomCount + 2 + rightCount + aboveCount + leftCount;

        if (totalVerts == 6 && (info.x37_normalMode == CFluidPlaneCPURender::kNM_Normals ||
                                info.x37_normalMode == CFluidPlaneCPURender::kNM_NBT)) {
          // Special strip mode - combine consecutive non-rippled non-edge tiles
          const unsigned char* nextFlag = flagByte + 1;
          while (tileIdx + numCombined <= numTilesX) {
            if ((*nextFlag & 0x1f) == 0x1f) {
              break;
            }
            if (gridFlags != NULL) {
              if (reinterpret_cast< const char* >(gridFlags)[gridOffset + numCombined] == 0) {
                break;
              }
            }
            if ((nextFlag[9] & 2) != 0) {
              break;
            }
            if ((nextFlag[1] & 4) != 0) {
              break;
            }
            if ((nextFlag[-9] & 1) != 0) {
              break;
            }
            ++nextFlag;
            ++numCombined;
          }

          int stripCount = numCombined + 1;
          CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, static_cast< ushort >(stripCount * 2));

          int normalMode = static_cast< int >(static_cast< signed char >(info.x37_normalMode));
          if (normalMode == CFluidPlaneCPURender::kNM_NBT) {
            int stride = CFluidPlaneCPURender::numSubdivisionsInTile;
            int strideBytes = stride * 8;
            const CFluidPlaneCPURender::SHFieldSample* topSamples = heights_00;
            int bottomOffset = stride * 0x168;
            const CFluidPlaneCPURender::SHFieldSample* bottomSamples =
                reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                    reinterpret_cast< const char* >(heights_00) + bottomOffset);
            float stripX = curX;
            for (int n = stripCount; n > 0; --n) {
              // Top vertex
              GXPosition3f32(stripX, curY, topSamples->height);
              GXNormal3s8(topSamples->nx, topSamples->ny, topSamples->nz);
              GXNormal3s8(topSamples->nx, topSamples->nz, -topSamples->ny);
              GXNormal3s8(topSamples->nz, topSamples->ny, -topSamples->nx);
              int wavecap = topSamples->wavecapIntensity;
              topSamples = reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                  reinterpret_cast< const char* >(topSamples) + strideBytes);
              GXColor4u8(static_cast< u8 >(wavecap >> info.x34_redShift),
                         static_cast< u8 >(wavecap >> info.x35_greenShift),
                         static_cast< u8 >(wavecap >> info.x36_blueShift), 0xff);
              // Bottom vertex
              GXPosition3f32(stripX, info.x14_tileSize + curY, bottomSamples->height);
              GXNormal3s8(bottomSamples->nx, bottomSamples->ny, bottomSamples->nz);
              GXNormal3s8(bottomSamples->nx, bottomSamples->nz, -bottomSamples->ny);
              GXNormal3s8(bottomSamples->nz, bottomSamples->ny, -bottomSamples->nx);
              wavecap = bottomSamples->wavecapIntensity;
              bottomSamples = reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                  reinterpret_cast< const char* >(bottomSamples) + strideBytes);
              GXColor4u8(static_cast< u8 >(wavecap >> info.x34_redShift),
                         static_cast< u8 >(wavecap >> info.x35_greenShift),
                         static_cast< u8 >(wavecap >> info.x36_blueShift), 0xff);
              stripX += info.x14_tileSize;
            }
          } else if (normalMode == CFluidPlaneCPURender::kNM_Normals) {
            int stride = CFluidPlaneCPURender::numSubdivisionsInTile;
            int strideBytes = stride * 8;
            const CFluidPlaneCPURender::SHFieldSample* topSamples = heights_00;
            int bottomOffset = stride * 0x168;
            const CFluidPlaneCPURender::SHFieldSample* bottomSamples =
                reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                    reinterpret_cast< const char* >(heights_00) + bottomOffset);
            float stripX = curX;
            for (int n = stripCount; n > 0; --n) {
              GXPosition3f32(stripX, curY, topSamples->height);
              GXNormal3s8(topSamples->nx, topSamples->ny, topSamples->nz);
              int wavecap = topSamples->wavecapIntensity;
              topSamples = reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                  reinterpret_cast< const char* >(topSamples) + strideBytes);
              GXColor4u8(static_cast< u8 >(wavecap >> info.x34_redShift),
                         static_cast< u8 >(wavecap >> info.x35_greenShift),
                         static_cast< u8 >(wavecap >> info.x36_blueShift), 0xff);
              GXPosition3f32(stripX, info.x14_tileSize + curY, bottomSamples->height);
              GXNormal3s8(bottomSamples->nx, bottomSamples->ny, bottomSamples->nz);
              wavecap = bottomSamples->wavecapIntensity;
              bottomSamples = reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                  reinterpret_cast< const char* >(bottomSamples) + strideBytes);
              GXColor4u8(static_cast< u8 >(wavecap >> info.x34_redShift),
                         static_cast< u8 >(wavecap >> info.x35_greenShift),
                         static_cast< u8 >(wavecap >> info.x36_blueShift), 0xff);
              stripX += info.x14_tileSize;
            }
          }
          CGX::End();
        } else {
          // Triangle fan rendering
          CGX::Begin(GX_TRIANGLEFAN, GX_VTXFMT0, static_cast< ushort >(totalVerts));

          int normalMode = static_cast< int >(static_cast< signed char >(info.x37_normalMode));

          switch (normalMode) {
          case CFluidPlaneCPURender::kNM_None: {
            // Center vertex
            float centerX = halfRes + curX;
            const CFluidPlaneCPURender::SHFieldSample* centerSample =
                reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                    reinterpret_cast< const char* >(heights_00) + rightStride);
            GXPosition3f32(centerX, centerY, centerSample->height);

            // Bottom edge (right to left along bottom)
            float endY = info.x14_tileSize + curY;
            {
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + topStride);
              float endX = info.x14_tileSize + curX;
              int count = 1;
              if (hasBelow) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(endX, endY, s->height);
                  endY -= info.x18_rippleResolution;
                  s -= 45;
                }
              }
            }

            // Right edge (bottom to top)
            {
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + sampleStride);
              float endX = info.x14_tileSize + curX;
              endY = info.x14_tileSize + curY;
              int count = 1;
              if (hasAbove) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(endX, endY, s->height);
                  endX -= info.x18_rippleResolution;
                  s--;
                }
              }
            }

            // Left edge check
            if (!isLeftEdge) {
              // Just two vertices
              GXPosition3f32(curX, curY, heights_00->height);
              GXPosition3f32(curX, curY + info.x14_tileSize,
                             heights_00[numSubdivisions * 45].height);
            } else {
              // Left edge (top to bottom)
              int count = numSubdivisions + 1;
              if (numSubdivisions >= 0) {
                const CFluidPlaneCPURender::SHFieldSample* s = heights_00;
                float y = curY;
                for (; count > 0; --count) {
                  GXPosition3f32(curX, y, s->height);
                  s += 45;
                  y += info.x18_rippleResolution;
                }
              }
            }
            break;
          }
          case CFluidPlaneCPURender::kNM_NoNormals: {
            // Center vertex with color
            const CFluidPlaneCPURender::SHFieldSample* centerSample =
                reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                    reinterpret_cast< const char* >(heights_00) + rightStride);
            float centerX = halfRes + curX;
            GXPosition3f32(centerX, centerY, centerSample->height);
            GXColor4u8(static_cast< u8 >(centerSample->wavecapIntensity >> info.x34_redShift),
                       static_cast< u8 >(centerSample->wavecapIntensity >> info.x35_greenShift),
                       static_cast< u8 >(centerSample->wavecapIntensity >> info.x36_blueShift),
                       0xff);

            // Bottom edge
            {
              float endY = info.x14_tileSize + curY;
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + bottomStride);
              float stripX = curX;
              int count = 1;
              if (hasBelow) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(stripX, endY, s->height);
                  GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
                  stripX += info.x18_rippleResolution;
                  ++s;
                }
              }
            }

            // Right edge
            {
              float endY = info.x14_tileSize + curY;
              float endX = info.x14_tileSize + curX;
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + topStride);
              int count = 1;
              if (hasRight) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(endX, endY, s->height);
                  GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
                  endY -= info.x18_rippleResolution;
                  s -= 45;
                }
              }
            }

            // Top edge
            {
              float endX = info.x14_tileSize + curX;
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + sampleStride);
              int count = 1;
              if (hasAbove) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(endX, curY, s->height);
                  GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
                  endX -= info.x18_rippleResolution;
                  --s;
                }
              }
            }

            // Left edge
            RenderStripEndNoNormals(heights_00, info, isLeftEdge, curX, curY, 0.f);
            break;
          }
          case CFluidPlaneCPURender::kNM_Normals: {
            // Center vertex with normals and color
            const CFluidPlaneCPURender::SHFieldSample* centerSample =
                reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                    reinterpret_cast< const char* >(heights_00) + rightStride);
            float centerX = halfRes + curX;
            GXPosition3f32(centerX, centerY, centerSample->height);
            GXNormal3s8(centerSample->nx, centerSample->ny, centerSample->nz);
            GXColor4u8(static_cast< u8 >(centerSample->wavecapIntensity >> info.x34_redShift),
                       static_cast< u8 >(centerSample->wavecapIntensity >> info.x35_greenShift),
                       static_cast< u8 >(centerSample->wavecapIntensity >> info.x36_blueShift),
                       0xff);

            // Bottom edge
            {
              float endY = info.x14_tileSize + curY;
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + bottomStride);
              float stripX = curX;
              int count = 1;
              if (hasBelow) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(stripX, endY, s->height);
                  GXNormal3s8(s->nx, s->ny, s->nz);
                  GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
                  stripX += info.x18_rippleResolution;
                  ++s;
                }
              }
            }

            // Right edge
            {
              float endY = info.x14_tileSize + curY;
              float endX = info.x14_tileSize + curX;
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + topStride);
              int count = 1;
              if (hasRight) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(endX, endY, s->height);
                  GXNormal3s8(s->nx, s->ny, s->nz);
                  GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
                  endY -= info.x18_rippleResolution;
                  s -= 45;
                }
              }
            }

            // Top edge
            {
              float endX = info.x14_tileSize + curX;
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + sampleStride);
              int count = 1;
              if (hasAbove) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(endX, curY, s->height);
                  GXNormal3s8(s->nx, s->ny, s->nz);
                  GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
                  endX -= info.x18_rippleResolution;
                  --s;
                }
              }
            }

            // Left edge
            RenderStripEndNormals(heights_00, info, isLeftEdge, curX, curY, 0.f);
            break;
          }
          case CFluidPlaneCPURender::kNM_NBT: {
            // Center vertex with NBT and color
            const CFluidPlaneCPURender::SHFieldSample* centerSample =
                reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                    reinterpret_cast< const char* >(heights_00) + rightStride);
            float centerX = halfRes + curX;
            GXPosition3f32(centerX, centerY, centerSample->height);
            {
              GXNormal3s8(centerSample->nx, centerSample->ny, centerSample->nz);
              // Binormal
              GXNormal3s8(centerSample->nx, centerSample->nz, -centerSample->ny);
              // Tangent
              GXNormal3s8(centerSample->nz, centerSample->ny, -centerSample->nx);
              GXColor4u8(static_cast< u8 >(centerSample->wavecapIntensity >> info.x34_redShift),
                         static_cast< u8 >(centerSample->wavecapIntensity >> info.x35_greenShift),
                         static_cast< u8 >(centerSample->wavecapIntensity >> info.x36_blueShift),
                         0xff);
            }

            // Bottom edge
            {
              float endY = info.x14_tileSize + curY;
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + bottomStride);
              float stripX = curX;
              int count = 1;
              if (hasBelow) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(stripX, endY, s->height);
                  GXNormal3s8(s->nx, s->ny, s->nz);
                  GXNormal3s8(s->nx, s->nz, -s->ny);
                  GXNormal3s8(s->nz, s->ny, -s->nx);
                  GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
                  stripX += info.x18_rippleResolution;
                  ++s;
                }
              }
            }

            // Right edge
            {
              float endY = info.x14_tileSize + curY;
              float endX = info.x14_tileSize + curX;
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + topStride);
              int count = 1;
              if (hasRight) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(endX, endY, s->height);
                  GXNormal3s8(s->nx, s->ny, s->nz);
                  GXNormal3s8(s->nx, s->nz, -s->ny);
                  GXNormal3s8(s->nz, s->ny, -s->nx);
                  GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
                  endY -= info.x18_rippleResolution;
                  s -= 45;
                }
              }
            }

            // Top edge
            {
              float endX = info.x14_tileSize + curX;
              const CFluidPlaneCPURender::SHFieldSample* s =
                  reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample* >(
                      reinterpret_cast< const char* >(heights_00) + sampleStride);
              int count = 1;
              if (hasAbove) {
                count = numSubdivisions;
              }
              if (count > 0) {
                for (; count > 0; --count) {
                  GXPosition3f32(endX, curY, s->height);
                  GXNormal3s8(s->nx, s->ny, s->nz);
                  GXNormal3s8(s->nx, s->nz, -s->ny);
                  GXNormal3s8(s->nz, s->ny, -s->nx);
                  GXColor4u8(static_cast< u8 >(s->wavecapIntensity >> info.x34_redShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x35_greenShift),
                             static_cast< u8 >(s->wavecapIntensity >> info.x36_blueShift), 0xff);
                  endX -= info.x18_rippleResolution;
                  --s;
                }
              }
            }

            // Left edge
            RenderStripEndNBT(heights_00, info, isLeftEdge, curX, curY, 0.f);
            break;
          }
          default:
            break;
          }
          CGX::End();
        }
      }
    }

  nextTile:
    tileIdx += numCombined;
    gridOffset += numCombined;
    xPos += CFluidPlaneCPURender::numSubdivisionsInTile * numCombined;
    heights_00 += CFluidPlaneCPURender::numSubdivisionsInTile * numCombined;
    curX += info.x14_tileSize * static_cast< float >(numCombined);
  }
}

void ApplyRipple(const CRipple& ripple, CFluidPlaneCPURender::SHFieldSample (&heights)[45][45],
                 unsigned char (&flags)[9][9], const float (&sineWave)[256],
                 CFluidPlaneCPURender::SPatchInfo& info) {
  typedef CFluidPlaneCPURender::SRippleInfo SRippleInfo;
  typedef CFluidPlaneCPURender::SHFieldSample SHFieldSample;

  const SRippleInfo& rippleInfo = reinterpret_cast< const SRippleInfo& >(ripple);
  const CRipple& rip = *rippleInfo.x0_ripple;

  float timeRatio = rip.GetTime() * rip.GetOoTimeFalloff();
  float distMul = (1.f / 255.f) * rip.GetDistFalloff();
  float lookupT = 256.f * (1.f - timeRatio * rip.GetOoTimeFalloff()) * rip.GetFrequency();
  int lifeIdx = static_cast< int >(64.f * timeRatio);

  float minDist = distMul * static_cast< float >(static_cast< int >(sRippleMins[lifeIdx]));
  float minDistSq = minDist * minDist;
  float minDistR = minDistSq;
  if (0.f == minDistSq) {
    minDistR = minDistR;
  } else {
    minDistR = fast_sqrt(minDistSq);
  }

  float maxDist = distMul * static_cast< float >(static_cast< int >(sRippleMaxs[lifeIdx]));
  float maxDistSq = maxDist * maxDist;
  float maxDistR = maxDistSq;
  if (0.f == maxDistSq) {
    maxDistR = maxDistR;
  } else {
    maxDistR = fast_sqrt(maxDistSq);
  }

  int subdivsInTile = CFluidPlaneCPURender::numSubdivisionsInTile;
  int subdivsM1 = subdivsInTile - 1;

  int fromY = (rippleInfo.x1c_gfromY + subdivsM1) / subdivsInTile;
  int fromX = (rippleInfo.x14_gfromX + subdivsM1) / subdivsInTile;
  int toY = (rippleInfo.x20_gtoY + subdivsM1) / subdivsInTile;
  int toX = (rippleInfo.x18_gtoX + subdivsM1) / subdivsInTile;

  float curY = (rip.GetCenter().GetY() - info.x10_globalMinY) -
               (0.5f * info.x14_tileSize + static_cast< float >(fromY - 1) * info.x14_tileSize);

  int curGridY =
      static_cast< int >(info.x2a_gridDimX) * (static_cast< int >(info.x2e_tileY) + fromY - 1);
  int startGridX = static_cast< int >(info.x28_tileX) + fromX - 1;
  int gridCells = static_cast< int >(info.x2a_gridDimX) * static_cast< int >(info.x2c_gridDimY);
  float distFalloff = 64.f * rip.GetOoDistFalloff();
  int curYDiv = rippleInfo.xc_fromY;

  bool hasGridFlags = info.x30_gridFlags != 0;

  unsigned char* flagsRowStart = &flags[fromY][fromX];

  for (int i = fromY; i <= toY; ++i, curY -= info.x14_tileSize) {
    int nextYDiv = (i + 1) * subdivsInTile;
    int curGridX = startGridX;
    int curXDiv = rippleInfo.x4_fromX;
    float curYSq = curY * curY;
    float curX = (rip.GetCenter().GetX() - info.xc_globalMinX) -
                 (0.5f * info.x14_tileSize + static_cast< float >(fromX - 1) * info.x14_tileSize);
    unsigned char* flagsBase = flagsRowStart;

    for (int j = fromX; j <= toX; ++j, curX -= info.x14_tileSize, ++curGridX, ++flagsBase) {
      float dist = curX * curX + curYSq;
      if (0.f == dist) {
        dist = dist;
      } else {
        dist = fast_sqrt(dist);
      }
      if (maxDistR < dist - info.x1c_tileHypRadius || minDistR > dist + info.x1c_tileHypRadius) {
        continue;
      }

      {
        bool addedRipple = false;
        int nextXDiv = (j + 1) * subdivsInTile;
        float curXMod = (rip.GetCenter().GetX() - info.xc_globalMinX) -
                        info.x18_rippleResolution * static_cast< float >(curXDiv);
        float curYMod = (rip.GetCenter().GetY() - info.x10_globalMinY) -
                        info.x18_rippleResolution * static_cast< float >(curYDiv);

        if (!hasGridFlags ||
            (curGridY >= 0 && curGridY < gridCells && curGridX >= 0 &&
             curGridX < static_cast< int >(info.x2a_gridDimX) &&
             reinterpret_cast< const char* >(info.x30_gridFlags)[curGridY + curGridX])) {
          SHFieldSample* rowSamples = &heights[curYDiv][0];
          int k = curYDiv;
          for (; k <= rstl::min_val(nextYDiv - 1, rippleInfo.x10_toY);
               ++k, curYMod -= info.x18_rippleResolution) {
            float tmpXMod = curXMod;
            float curYModSq = curYMod * curYMod;
            SHFieldSample* sample = rowSamples + curXDiv;
            int l = curXDiv;
            for (; l <= rstl::min_val(nextXDiv - 1, rippleInfo.x8_toX);
                 ++l, tmpXMod -= info.x18_rippleResolution, ++sample) {
              float divDistSq = tmpXMod * tmpXMod + curYModSq;
              if (divDistSq < minDistSq || divDistSq > maxDistSq) {
                continue;
              }
              float divDist = divDistSq;
              if (0.f == divDistSq) {
                divDist = divDistSq;
              } else {
                divDist = fast_sqrt(divDistSq);
              }
              int distIdx = static_cast< int >(divDist * distFalloff);
              u8 rippleV = sRippleValues[lifeIdx][distIdx];
              float height;
              if (rippleV != 0) {
                float phase = divDist * rip.GetLookupPhase() + lookupT;
                int sineIdx = static_cast< int >(phase) & 0xFF;
                height = static_cast< float >(static_cast< int >(rippleV)) *
                         rip.GetLookupAmplitude() * sineWave[sineIdx];
              } else {
                height = 0.f;
              }
              sample->height += height;
              addedRipple = true;
            }
            rowSamples += 45;
          }

          if (addedRipple) {
            *flagsBase = 0x1f;
          }
        } else {
          int yMin = nextYDiv - 1;
          int yMax = nextYDiv - subdivsInTile + 1;
          int xMin = nextXDiv - 1;
          int xMax = nextXDiv - subdivsInTile + 1;

          if (curGridX >= 0 && curGridX < static_cast< int >(info.x2a_gridDimX) &&
              curGridY - static_cast< int >(info.x2a_gridDimX) >= 0 &&
              !reinterpret_cast< const char* >(
                  info.x30_gridFlags)[curGridX + curGridY -
                                      static_cast< int >(info.x2a_gridDimX)]) {
            yMax -= 2;
          }
          if (curGridX >= 0 && curGridX < static_cast< int >(info.x2a_gridDimX) &&
              curGridY + static_cast< int >(info.x2a_gridDimX) < gridCells &&
              !reinterpret_cast< const char* >(
                  info.x30_gridFlags)[curGridX + curGridY +
                                      static_cast< int >(info.x2a_gridDimX)]) {
            yMin += 2;
          }
          if (curGridY >= 0 && curGridY < static_cast< int >(info.x2c_gridDimY) && curGridX > 0 &&
              !reinterpret_cast< const char* >(info.x30_gridFlags)[curGridY + curGridX - 1]) {
            xMax -= 2;
          }
          if (curGridY >= 0 && curGridY < static_cast< int >(info.x2c_gridDimY) &&
              curGridX + 1 < static_cast< int >(info.x2a_gridDimX) &&
              !reinterpret_cast< const char* >(info.x30_gridFlags)[curGridY + curGridX + 1]) {
            xMin += 2;
          }

          SHFieldSample* rowSamples = &heights[curYDiv][0];
          int k = curYDiv;
          for (; k <= rstl::min_val(nextYDiv - 1, rippleInfo.x10_toY);
               ++k, curYMod -= info.x18_rippleResolution) {
            float tmpXMod = curXMod;
            float curYModSq = curYMod * curYMod;
            SHFieldSample* sample = rowSamples + curXDiv;
            int l = curXDiv;
            for (; l <= rstl::min_val(nextXDiv - 1, rippleInfo.x8_toX);
                 ++l, tmpXMod -= info.x18_rippleResolution, ++sample) {
              if (k > yMax && k < yMin && l > xMax && l < xMin) {
                continue;
              }
              float divDistSq = tmpXMod * tmpXMod + curYModSq;
              if (divDistSq < minDistSq || divDistSq > maxDistSq) {
                continue;
              }
              float divDist = divDistSq;
              if (0.f == divDistSq) {
                divDist = divDistSq;
              } else {
                divDist = fast_sqrt(divDistSq);
              }
              int distIdx = static_cast< int >(divDist * distFalloff);
              u8 rippleV = sRippleValues[lifeIdx][distIdx];
              float height;
              if (rippleV != 0) {
                float phase = divDist * rip.GetLookupPhase() + lookupT;
                int sineIdx = static_cast< int >(phase) & 0xFF;
                height = static_cast< float >(static_cast< int >(rippleV)) *
                         rip.GetLookupAmplitude() * sineWave[sineIdx];
              } else {
                height = 0.f;
              }
              sample->height += height;
              addedRipple = true;
            }
            rowSamples += 45;
          }

          if (addedRipple) {
            *flagsBase = 0x0f;
          }
        }
        curXDiv = nextXDiv;
      }
    }
    curYDiv = nextYDiv;
    curGridY += static_cast< int >(info.x2a_gridDimX);
    flagsRowStart += 9;
  }
}

void ApplyRipples(const CRippleManager& rippleManager,
                  CFluidPlaneCPURender::SHFieldSample (&heights)[45][45],
                  unsigned char (&flags)[9][9], const float (&sineWave)[256],
                  CFluidPlaneCPURender::SPatchInfo& info) {
  LCQueueWait(0);

  typedef CFluidPlaneCPURender::SRippleInfo SRippleInfo;
  const rstl::reserved_vector< SRippleInfo, 32 >& ripples =
      reinterpret_cast< const rstl::reserved_vector< SRippleInfo, 32 >& >(rippleManager);
  rstl::reserved_vector< SRippleInfo, 32 >::const_iterator it = ripples.begin();
  for (; it != ripples.end(); ++it) {
    ApplyRipple(reinterpret_cast< const CRipple& >(*it), heights, flags, sineWave, info);
  }

  unsigned char* ptr;
  int count;

  count = CFluidPlaneCPURender::numTilesInHField;
  ptr = &flags[0][1];
  for (; count != 0; --count) {
    *ptr |= 1;
    ++ptr;
  }
  count = CFluidPlaneCPURender::numTilesInHField;
  ptr = &flags[1][0];
  for (; count != 0; --count) {
    *ptr |= 8;
    ptr += 9;
  }
  count = CFluidPlaneCPURender::numTilesInHField;
  ptr = &flags[0][count + 10];
  for (; count != 0; --count) {
    *ptr |= 4;
    ptr += 9;
  }
  count = CFluidPlaneCPURender::numTilesInHField;
  ptr = &flags[0][0] + (count + 1) * 9 + 1;
  for (; count != 0; --count) {
    *ptr |= 2;
    ++ptr;
  }
}

void RenderPatch(const CFluidPlaneCPURender::SPatchInfo& info, bool noRipples,
                 bool flaggedGridGen) {
  if (noRipples) {
    int ySubdivs = static_cast< int >(static_cast< signed char >(info.x1_ySubdivs));
    int xSubdivs = static_cast< int >(static_cast< signed char >(info.x0_xSubdivs));
    int normalMode = static_cast< int >(static_cast< signed char >(info.x37_normalMode));
    float localMinX = info.x4_localMinX;
    float localMinY = info.x8_localMinY;
    float endY = info.x18_rippleResolution * static_cast< float >(ySubdivs - 2) + localMinY;
    float endX = info.x18_rippleResolution * static_cast< float >(xSubdivs - 2) + localMinX;

    switch (normalMode) {
    case 0:
      CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, 4);
      GXPosition3f32(localMinX, localMinY, 0.f);
      GXPosition3f32(localMinX, endY, 0.f);
      GXPosition3f32(endX, localMinY, 0.f);
      GXPosition3f32(endX, endY, 0.f);
      CGX::End();
      break;
    case 1:
      CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, 4);
      GXPosition3f32(localMinX, localMinY, 0.f);
      GXColor4u8(0, 0, 0, 0xff);
      GXPosition3f32(localMinX, endY, 0.f);
      GXColor4u8(0, 0, 0, 0xff);
      GXPosition3f32(endX, localMinY, 0.f);
      GXColor4u8(0, 0, 0, 0xff);
      GXPosition3f32(endX, endY, 0.f);
      GXColor4u8(0, 0, 0, 0xff);
      CGX::End();
      break;
    case 2: {
      xSubdivs = (xSubdivs - 3) / CFluidPlaneCPURender::numSubdivisionsInTile;
      int numTilesXP1 = xSubdivs + 1;
      int gridOffset = static_cast< int >(info.x2e_tileY) * static_cast< int >(info.x2a_gridDimX) +
                       static_cast< int >(info.x28_tileX);
      ySubdivs = (ySubdivs - 3) / CFluidPlaneCPURender::numSubdivisionsInTile + 1;
      endY = localMinY;

      for (int iY = ySubdivs; iY > 0; --iY) {
        bool isFirstRow = (ySubdivs - iY) == 0;
        bool isLastRow = (1 - iY) == 0;
        endX = localMinX;
        int iX = 0;

        while (iX < numTilesXP1) {
          const bool* gridFlags = info.x30_gridFlags;
          if (gridFlags == NULL ||
              reinterpret_cast< const char* >(gridFlags)[gridOffset + iX] != 0) {
            bool isLeftEdge = iX == 0;
            bool isRightEdge = (numTilesXP1 - 1 - iX) == 0;

            if (isFirstRow || isLastRow || isLeftEdge || isRightEdge) {
              int totalVerts = (isLastRow ? CFluidPlaneCPURender::numSubdivisionsInTile : 1) + 2;
              totalVerts += (isRightEdge ? CFluidPlaneCPURender::numSubdivisionsInTile : 1);
              totalVerts += (isFirstRow ? CFluidPlaneCPURender::numSubdivisionsInTile : 1);
              totalVerts += (isLeftEdge ? CFluidPlaneCPURender::numSubdivisionsInTile : 1);

              CGX::Begin(GX_TRIANGLEFAN, GX_VTXFMT0, static_cast< ushort >(totalVerts));

              float halfTile = 0.5f * info.x14_tileSize;
              GXPosition3f32(endX + halfTile, endY + halfTile, 0.f);
              GXNormal3s8(0, 0, 0x3f);
              GXColor4u8(0, 0, 0, 0xff);

              {
                int count = isLastRow ? CFluidPlaneCPURender::numSubdivisionsInTile : 1;
                float edgeX = endX;
                for (int e = count; e > 0; --e) {
                  GXPosition3f32(edgeX, endY + info.x14_tileSize, 0.f);
                  GXNormal3s8(0, 0, 0x3f);
                  GXColor4u8(0, 0, 0, 0xff);
                  edgeX += info.x18_rippleResolution;
                }
              }

              {
                int count = isRightEdge ? CFluidPlaneCPURender::numSubdivisionsInTile : 1;
                float edgeY = endY + info.x14_tileSize;
                for (int e = count; e > 0; --e) {
                  GXPosition3f32(endX + info.x14_tileSize, edgeY, 0.f);
                  GXNormal3s8(0, 0, 0x3f);
                  GXColor4u8(0, 0, 0, 0xff);
                  edgeY -= info.x18_rippleResolution;
                }
              }

              {
                int count = isFirstRow ? CFluidPlaneCPURender::numSubdivisionsInTile : 1;
                float edgeX = endX + info.x14_tileSize;
                for (int e = count; e > 0; --e) {
                  GXPosition3f32(edgeX, endY, 0.f);
                  GXNormal3s8(0, 0, 0x3f);
                  GXColor4u8(0, 0, 0, 0xff);
                  edgeX -= info.x18_rippleResolution;
                }
              }

              {
                int count = isLeftEdge ? CFluidPlaneCPURender::numSubdivisionsInTile : 1;
                float edgeY = endY;
                for (int e = count; e > 0; --e) {
                  GXPosition3f32(endX, edgeY, 0.f);
                  GXNormal3s8(0, 0, 0x3f);
                  GXColor4u8(0, 0, 0, 0xff);
                  edgeY += info.x18_rippleResolution;
                }
              }

              GXPosition3f32(endX, endY + info.x14_tileSize, 0.f);
              GXNormal3s8(0, 0, 0x3f);
              GXColor4u8(0, 0, 0, 0xff);
              CGX::End();
              ++iX;
              endX += info.x14_tileSize;
            } else {
              int endIX = iX;
              do {
                ++endIX;
                if (numTilesXP1 <= endIX)
                  break;
              } while (gridFlags == NULL ||
                       reinterpret_cast< const char* >(gridFlags)[gridOffset + endIX] != 0);
              int runLen = (endIX - iX) + 1;
              CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, static_cast< ushort >(runLen * 2));
              if (runLen > 0) {
                do {
                  GXPosition3f32(endX, endY, 0.f);
                  GXNormal3s8(0, 0, 0x3f);
                  GXColor4u8(0, 0, 0, 0xff);
                  GXPosition3f32(endX, endY + info.x14_tileSize, 0.f);
                  GXNormal3s8(0, 0, 0x3f);
                  GXColor4u8(0, 0, 0, 0xff);
                  endX += info.x14_tileSize;
                  --runLen;
                } while (runLen != 0);
              }
              CGX::End();
              iX = endIX + 1;
              if (iX == numTilesXP1) {
                iX = endIX;
                endX -= info.x14_tileSize;
              }
            }
          } else {
            endX += info.x14_tileSize;
            ++iX;
            while (iX < numTilesXP1) {
              if (reinterpret_cast< const char* >(gridFlags)[gridOffset + iX] != 0) {
                break;
              }
              endX += info.x14_tileSize;
              ++iX;
            }
          }
        }
        endY += info.x14_tileSize;
        gridOffset += static_cast< int >(info.x2a_gridDimX);
      }
      break;
    }
    case 3: {
      if (flaggedGridGen || info.x30_gridFlags == NULL) {
        CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, 4);
        GXPosition3f32(localMinX, localMinY, 0.f);
        GXNormal3s8(0, 0, 0x3f); // Normal
        GXNormal3s8(0, 0x3f, 0); // Binormal
        GXNormal3s8(0x3f, 0, 0); // Tangent
        GXColor4u8(0, 0, 0, 0xff);
        GXPosition3f32(localMinX, endY, 0.f);
        GXNormal3s8(0, 0, 0x3f);
        GXNormal3s8(0, 0x3f, 0);
        GXNormal3s8(0x3f, 0, 0);
        GXColor4u8(0, 0, 0, 0xff);
        GXPosition3f32(endX, localMinY, 0.f);
        GXNormal3s8(0, 0, 0x3f);
        GXNormal3s8(0, 0x3f, 0);
        GXNormal3s8(0x3f, 0, 0);
        GXColor4u8(0, 0, 0, 0xff);
        GXPosition3f32(endX, endY, 0.f);
        GXNormal3s8(0, 0, 0x3f);
        GXNormal3s8(0, 0x3f, 0);
        GXNormal3s8(0x3f, 0, 0);
        GXColor4u8(0, 0, 0, 0xff);
        CGX::End();
      } else {
        int xSub = static_cast< int >(static_cast< signed char >(info.x0_xSubdivs));
        int ySub = static_cast< int >(static_cast< signed char >(info.x1_ySubdivs));
        int numTilesX = (xSub - 3) / CFluidPlaneCPURender::numSubdivisionsInTile + 1;
        int gridOffset = static_cast< int >(info.x28_tileX) +
                         static_cast< int >(info.x2e_tileY) * static_cast< int >(info.x2a_gridDimX);
        endY = localMinY;
        for (int iY = (ySub - 3) / CFluidPlaneCPURender::numSubdivisionsInTile + 1; iY > 0; --iY) {
          endX = localMinX;
          int iX = 0;
          while (iX < numTilesX) {
            const bool* gridFlags = info.x30_gridFlags;
            if (reinterpret_cast< const char* >(gridFlags)[iX + gridOffset] != 0) {
              int endIX = iX + 1;
              const char* ptr = reinterpret_cast< const char* >(gridFlags) + endIX + gridOffset;
              while (endIX < numTilesX && *ptr != 0) {
                ++endIX;
                ++ptr;
              }
              int runLen = (endIX - iX) + 1;
              CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, static_cast< ushort >(runLen * 2));
              for (int v = runLen; v > 0; --v) {
                GXPosition3f32(endX, endY, 0.f);
                GXNormal3s8(0, 0, 0x3f);
                GXNormal3s8(0, 0x3f, 0);
                GXNormal3s8(0x3f, 0, 0);
                GXColor4u8(0, 0, 0, 0xff);
                GXPosition3f32(endX, endY + info.x14_tileSize, 0.f);
                GXNormal3s8(0, 0, 0x3f);
                GXNormal3s8(0, 0x3f, 0);
                GXNormal3s8(0x3f, 0, 0);
                GXColor4u8(0, 0, 0, 0xff);
                endX += info.x14_tileSize;
              }
              CGX::End();
              iX = endIX + 1;
            } else {
              endX += info.x14_tileSize;
              ++iX;
              const char* ptr = reinterpret_cast< const char* >(gridFlags) + iX + gridOffset;
              while (iX < numTilesX && *ptr == 0) {
                endX += info.x14_tileSize;
                ++iX;
                ++ptr;
              }
            }
          }
          endY += info.x14_tileSize;
          gridOffset += static_cast< int >(info.x2a_gridDimX);
        }
      }
      break;
    }
    default:
      break;
    }
  } else {
    float curY = info.x8_localMinY;
    int startYDiv = 1;
    for (; startYDiv < static_cast< int >(static_cast< signed char >(info.x1_ySubdivs)) - 2;
         startYDiv += CFluidPlaneCPURender::numSubdivisionsInTile) {
      RenderStripWithRipples(
          *reinterpret_cast< const CFluidPlaneCPURender::SHFieldSample(*)[45][45] >(0xe00000a0),
          *reinterpret_cast< const unsigned char (*)[9][9] >(0xe0000040), startYDiv, curY, info);
      curY += info.x14_tileSize;
    }
  }
}

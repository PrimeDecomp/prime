#include "Kyoto/Particles/CUVElement.hpp"

#include "Kyoto/Graphics/CTexture.hpp"

#include "rstl/math.hpp"

CUVEConstant::CUVEConstant(TToken< CTexture > tex) : x4_tex(tex) {}

CUVEConstant::~CUVEConstant() {}

void CUVEConstant::GetValueUV(int frame, SUVElementSet& valOut) const {
  valOut.xMin = 0.f;
  valOut.yMin = 0.f;
  valOut.xMax = 1.f;
  valOut.yMax = 1.f;
}

TLockedToken< CTexture > CUVEConstant::GetValueTexture(int frame) const { return x4_tex; }

CUVEAnimTexture::CUVEAnimTexture(TToken< CTexture > tex, CIntElement* tileW, CIntElement* tileH,
                                 CIntElement* strideW, CIntElement* strideH,
                                 CIntElement* cycleFrames, bool loop)
: x4_tex(tex), x24_loop(loop) {
  int result = 0;
  tileW->GetValue(0, result);
  x10_tileW = result;
  delete tileW;

  tileH->GetValue(0, result);
  x14_tileH = result;
  delete tileH;

  strideW->GetValue(0, result);
  x18_strideW = result;
  delete strideW;

  strideH->GetValue(0, result);
  x1c_strideH = result;
  delete strideH;

  x28_cycleFrames = cycleFrames;

  const int width = int(x4_tex->GetWidth());
  const int height = int(x4_tex->GetHeight());
  const int xTiles = rstl::max_val(1, width / x18_strideW);
  const int yTiles = rstl::max_val(1, height / x1c_strideH);

  x20_tiles = xTiles * yTiles;
  x2c_uvElems.reserve(xTiles * yTiles);

  for (int y = yTiles - 1; y >= 0; --y) {
    for (int x = 0; x < xTiles; ++x) {
      SUVElementSet uvs;
      uvs.xMin = float(x18_strideW * x) / float(width);
      uvs.yMin = float(x1c_strideH * y) / float(height);
      uvs.xMax = float(x18_strideW * x + x10_tileW) / float(width);
      uvs.yMax = float(x1c_strideH * y + x14_tileH) / float(height);
      x2c_uvElems.push_back(uvs);
    }
  }
}

CUVEAnimTexture::~CUVEAnimTexture() { delete x28_cycleFrames; }

void CUVEAnimTexture::GetValueUV(int frame, SUVElementSet& valOut) const {
  int cv = 1;
  x28_cycleFrames->GetValue(frame, cv);
  float cvf =
      static_cast< float >(frame) / (static_cast< float >(cv) / static_cast< float >(x20_tiles));

  int tile;
  if (x24_loop) {
    tile = rstl::max_val(static_cast< int >(cvf), 0);
    if (tile >= x20_tiles) {
      tile = tile % x20_tiles;
    }
  } else {
    tile = static_cast< int >(cvf);
    if (static_cast< int >(cvf) >= x20_tiles) {
      tile = x20_tiles - 1;
    }
  }

  valOut = x2c_uvElems[tile];
}

TLockedToken< CTexture > CUVEAnimTexture::GetValueTexture(int frame) const { return x4_tex; }

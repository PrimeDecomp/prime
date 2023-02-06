#ifndef _CUVELEMENT
#define _CUVELEMENT

#include "types.h"

#include "Kyoto/Particles/IElement.hpp"
#include "Kyoto/TToken.hpp"

class CTexture;

class CUVEConstant : public CUVElement {
  TLockedToken< CTexture > x4_tex;

public:
  CUVEConstant(TToken< CTexture > tex);
  ~CUVEConstant();
  TLockedToken< CTexture > GetValueTexture(int frame) const;
  void GetValueUV(int frame, SUVElementSet& valOut) const;
  bool HasConstantTexture() const { return true; }
  bool HasConstantUV() const { return true; }
};

class CUVEAnimTexture : public CUVElement {
  TLockedToken< CTexture > x4_tex;
  int x10_tileW;
  int x14_tileH;
  int x18_strideW;
  int x1c_strideH;
  int x20_tiles;
  bool x24_loop;
  CIntElement* x28_cycleFrames;
  rstl::vector< SUVElementSet > x2c_uvElems;

public:
  CUVEAnimTexture(TToken< CTexture > tex, CIntElement* tileW, CIntElement* tileH,
                  CIntElement* strideW, CIntElement* strideH, CIntElement* cycleFrames, bool loop);
  ~CUVEAnimTexture();
  TLockedToken< CTexture > GetValueTexture(int frame) const;
  void GetValueUV(int frame, SUVElementSet& valOut) const;
  bool HasConstantTexture() const { return true; }
  bool HasConstantUV() const { return false; }
};

#endif // _CUVELEMENT

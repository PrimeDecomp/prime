#ifndef _CWORLDSHADOW_HPP
#define _CWORLDSHADOW_HPP

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

#include "rstl/single_ptr.hpp"

class CTexture;

class CWorldShadow {
  rstl::single_ptr<CTexture> x0_texture;
  CTransform4f x4_view;
  CTransform4f x34_model;
  float x64_objHalfExtent;
  CVector3f x68_objPos;
  CVector3f x74_lightPos;
  TAreaId x80_aid;
  s32 x84_lightIdx;
  bool x88_blurReset;

public:
  CWorldShadow(uint w, uint h, bool rgba8);
  ~CWorldShadow();
};
CHECK_SIZEOF(CWorldShadow, 0x8c)


#endif // _CWORLDSHADOW_HPP
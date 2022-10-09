#ifndef _CWORLDSHADOW
#define _CWORLDSHADOW

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/single_ptr.hpp"

class CTexture;

class CWorldShadow {
  rstl::single_ptr< CTexture > x0_texture;
  CTransform4f x4_view;
  CTransform4f x34_model;
  float x64_objHalfExtent;
  CVector3f x68_objPos;
  CVector3f x74_lightPos;
  TAreaId x80_aid;
  int x84_lightIdx;
  bool x88_blurReset;

public:
  CWorldShadow(uint w, uint h, bool rgba8);
  ~CWorldShadow();

  void EnableModelProjectedShadow(const CTransform4f& pos, uint lightIdx, float f1);
  void DisableModelProjectedShadow();
  void BuildLightShadowTexture(const CStateManager& mgr, TAreaId aid, uint lightIdx,
                               const CAABox& aabb, bool motionBlur, bool lighten);
  void ResetBlur();
};
CHECK_SIZEOF(CWorldShadow, 0x8c)

#endif // _CWORLDSHADOW

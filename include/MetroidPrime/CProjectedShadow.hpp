#ifndef _CPROJECTEDSHADOW
#define _CPROJECTEDSHADOW

#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CAABox.hpp"

class CStateManager;
class CModelData;
class SShadowDrawContext;

class CProjectedShadow {
public:
  CProjectedShadow(int, int, uchar);
  ~CProjectedShadow();

  void Render(const CStateManager&);
  void RenderShadowBuffer(CStateManager&, const CModelData&, const CTransform4f&, int,
                          const CVector3f&, float, float);

  void SetOpacity(float opacity) { x98_opacity = opacity; }

  CAABox sub_8029e214();
  void sub_8029dc98();
  void sub_8029d6c8();

  static void ModelDrawCallback(const float*, const float*, const SShadowDrawContext*);

private:
  CTexture x0_texture;
  CAABox x68_;
  bool x80_;
  uchar x81_persistent;
  float x84_;
  CVector3f x88_;
  float x94_zDistanceAdjust;
  float x98_opacity;
};
CHECK_SIZEOF(CProjectedShadow, 0x9c)

#endif // _CPROJECTEDSHADOW

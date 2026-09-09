#ifndef _CPROJECTEDSHADOW
#define _CPROJECTEDSHADOW

#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CAABox.hpp"

class CStateManager;
class CModelData;
struct SShadowDrawContext;

class CProjectedShadow {
public:
  CProjectedShadow(int, int, uchar);
  ~CProjectedShadow();

  void Render(const CStateManager&) const;
  void RenderShadowBuffer(CStateManager&, const CModelData&, const CTransform4f&, int,
                          const CVector3f&, float, float);

  void SetOpacity(float opacity) { x98_opacity = opacity; }

  void Disable();

  static void ModelDrawCallback(const float*, const float*, const SShadowDrawContext*);

private:
  void ExpandBoundsForTexture();

  CTexture x0_texture;
  CAABox x68_bounds;
  bool x80_enabled;
  uchar x81_persistent;
  float x84_scale;
  CVector3f x88_translation;
  float x94_zDistanceAdjust;
  float x98_opacity;
};
CHECK_SIZEOF(CProjectedShadow, 0x9c)

#endif // _CPROJECTEDSHADOW

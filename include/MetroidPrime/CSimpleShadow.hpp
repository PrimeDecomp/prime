#ifndef _CSIMPLESHADOW
#define _CSIMPLESHADOW

#include "types.h"

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/TToken.hpp"

class CAABox;
class CStateManager;
class CTexture;

class CSimpleShadow {
public:
  CSimpleShadow(float scale, float userAlpha, float maxObjHeight, float displacement);

  void Calculate(const CAABox& bounds, const CTransform4f& xf, const CStateManager& mgr);
  void Render(const CTexture* tex) const;
  const CTransform4f& GetTransform() const;
  void SetUserAlpha(float);
  float GetMaxObjectHeight() const;

  void SetAlwaysCalculateRadius(bool);
  CAABox GetBounds() const;
  CAABox GetMaxShadowBox(const CAABox& bounds) const;
  bool Valid() const;

private:
  CTransform4f x0_xf;
  float x30_scale;
  float x34_radius;
  float x38_userAlpha;
  float x3c_heightAlpha;
  float x40_maxObjHeight;
  float x44_displacement;
  bool x48_24_collision : 1;
  bool x48_25_alwaysCalculateRadius : 1;
  bool x48_26_radiusCalculated : 1;
};

#endif // _CSIMPLESHADOW

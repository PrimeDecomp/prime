#ifndef _CANIMPLAYBACKPARMS
#define _CANIMPLAYBACKPARMS

#include "types.h"

class CQuaternion;
class CTransform4f;
class CVector3f;

class CAnimPlaybackParms {
private:
  int x0_animA;
  int x4_animB;
  float x8_blendWeight;
  bool xc_animating;
  int x10_;
  const CVector3f* x14_targetPos;
  bool x18_useLocator;
  const CQuaternion* x1c_deltaOrient;
  const CTransform4f* x20_objectXf;
  const CVector3f* x24_objectScale;

public:
  CAnimPlaybackParms(const int animA, const int animB, const float blendWeight,
                     const bool animating)
  : x0_animA(animA)
  , x4_animB(animB)
  , x8_blendWeight(blendWeight)
  , xc_animating(animating)
  , x10_(0)
  , x14_targetPos(nullptr)
  , x18_useLocator(false)
  , x1c_deltaOrient(nullptr)
  , x20_objectXf(nullptr)
  , x24_objectScale(nullptr) {}

  CAnimPlaybackParms(int anim, const CQuaternion* deltaOrient, const CVector3f* targetPos,
                     const CTransform4f* xf, const CVector3f* scale, bool useLocator)
  : x0_animA(anim)
  , x4_animB(-1)
  , x8_blendWeight(1.f)
  , xc_animating(true)
  , x10_(0)
  , x14_targetPos(targetPos)
  , x18_useLocator(useLocator)
  , x1c_deltaOrient(deltaOrient)
  , x20_objectXf(xf)
  , x24_objectScale(scale) {}

  int GetAnimationId() const { return x0_animA; }
  int GetSecondAnimationId() const { return x4_animB; }
  float GetBlendFactor() const { return x8_blendWeight; }
  bool GetIsPlayAnimation() const { return xc_animating; }
  const CVector3f* GetTargetPos() const { return x14_targetPos; }
  bool GetIsUseLocator() const { return x18_useLocator; }
  const CQuaternion* GetDeltaOrient() const { return x1c_deltaOrient; }
  const CTransform4f* GetObjectXform() const { return x20_objectXf; }
  const CVector3f* GetObjectScale() const { return x24_objectScale; }

  void SetAnimationId(int id) { x0_animA = id; }
  void SetSecondAnimationId(int id) { x4_animB = id; }
  void SetBlendFactor(float f) { x8_blendWeight = f; }
};
CHECK_SIZEOF(CAnimPlaybackParms, 0x28)

#endif // _CANIMPLAYBACKPARMS

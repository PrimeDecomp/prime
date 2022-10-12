#ifndef _CCUBESURFACE
#define _CCUBESURFACE

#include "Kyoto/Math/CAABox.hpp"

class CCubeModel;
class CCubeSurface {
  struct SSurfaceData {
    CVector3f mCenter;
    uint mMaterialIndex;
    uint mDisplayListSizeAndNormalHint;
    CCubeModel* mParent;
    CCubeSurface* mNextSurface;
    uint mExtraSize;
    CVector3f mNormal;
    CAABox mBounds;
  };

  static const CVector3f skDefaultNormal;
  const SSurfaceData* x0_data;

  CAABox GetBounds() const;
private:
};
#endif // _CCUBESURFACE

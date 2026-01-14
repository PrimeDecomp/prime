#ifndef _CCUBESURFACE
#define _CCUBESURFACE

#include "Kyoto/Math/CAABox.hpp"

class CCubeModel;
class CCubeSurface {
public:
#pragma push
#pragma pack(1)
  struct SSurfaceData {
    CVector3f mCenter;
    uint mMaterialIndex;
    uint mDisplayListSizeAndNormalHint;
    CCubeModel* mParent;
    CCubeSurface* mNextSurface;
    uint mExtraSize;
    CVector3f mNormal;
    CAABox mBounds;
    uchar pad[7];
  };
#pragma pop

  static const CVector3f skDefaultNormal;
  SSurfaceData* x0_data;

  uint GetDisplayListSize() const { return x0_data->mDisplayListSizeAndNormalHint & 0x7fffffff; }
  const void* GetDisplayList() const {
    return reinterpret_cast< const uchar* >(x0_data) + GetSurfaceHeaderSize();
  }
  uint GetSurfaceHeaderSize() const { return (sizeof(SSurfaceData) + x0_data->mExtraSize) & ~31; }
  uint GetMaterialIndex() const { return x0_data->mMaterialIndex; }

  CAABox GetBounds() const;

private:
};
#endif // _CCUBESURFACE

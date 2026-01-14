#ifndef _CCUBESURFACE
#define _CCUBESURFACE

#include "Kyoto/Math/CAABox.hpp"

class CCubeModel;
class CCubeSurface {
public:
  CCubeSurface(void* ptr) { x0_rawdata = static_cast< uchar* >(ptr); }
#pragma push
#pragma pack(1)
  struct SSurfaceData {
    CVector3f mCenter;
    uint mMaterialIndex;
    uint mDisplayListSizeAndNormalHint;
    CCubeModel* mParent;
    void* mNextSurface;
    uint mExtraSize;
    CVector3f mNormal;
    CAABox mBounds;
    uchar pad[7];
  };
#pragma pop

  static const CVector3f skDefaultNormal;
  union {
    uchar* x0_rawdata;
    SSurfaceData* x0_data;
  };

  uint GetDisplayListSize() const { return x0_data->mDisplayListSizeAndNormalHint & 0x7fffffff; }
  const void* GetDisplayList() const {
    return reinterpret_cast< const SSurfaceData* >(x0_rawdata + GetSurfaceHeaderSize());
  }
  uint GetSurfaceHeaderSize() const { return (sizeof(SSurfaceData) + x0_data->mExtraSize) & ~31; }
  uint GetMaterialIndex() const { return x0_data->mMaterialIndex; }

  CAABox GetBounds() const;
  CCubeSurface GetNextSurface() const { return CCubeSurface(x0_data->mNextSurface); }

  bool IsValid() const { return x0_rawdata != nullptr; }

private:
};
#endif // _CCUBESURFACE

#ifndef _CSCANNABLEOBJECTINFO
#define _CSCANNABLEOBJECTINFO

#include "types.h"

#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/string.hpp"

class CInputStream;
class CScannableObjectInfo {
public:
  static const char* GetImagePaneName(uint pane);
  CScannableObjectInfo(CInputStream& in, uint version);

private:
  struct SBucket {
    CAssetId x0_texture;
    float x4_appearanceRange;
    uint x8_imagePos;
    CVector2i xc_size;
    float x14_interval;
    float x18_fadeDuration;
  };
  CAssetId x0_scannableObjectId;
  CAssetId x4_stringId;
  float x8_totalDownloadTime;
  uint xc_category;
  bool x10_important;
  rstl::reserved_vector< SBucket, 4 > x14_buckets;
};

#endif // _CSCANNABLEOBJECTINFO

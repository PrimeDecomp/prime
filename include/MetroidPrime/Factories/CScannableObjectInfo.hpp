#ifndef _CSCANNABLEOBJECTINFO
#define _CSCANNABLEOBJECTINFO

#include "types.h"

#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/string.hpp"

#include <Kyoto/CFactoryFnReturn.hpp>

class CInputStream;
class CScannableObjectInfo {
public:
  static const char* GetImagePaneName(uint pane);
  CScannableObjectInfo(CInputStream& in, CAssetId id);

  CAssetId GetScannableObjectId() const { return x0_scannableObjectId; }
  float GetTotalDownloadTime() const { return x8_totalDownloadTime; }

  void Load(CInputStream& in, uint version);

private:
  struct SBucket {
    CAssetId x0_texture;
    float x4_appearanceRange;
    int x8_imagePos;
    CVector2i xc_size;
    float x14_interval;
    float x18_fadeDuration;

    SBucket(CAssetId textureId, float appearanceRange, int imagePos, const CVector2i& size, float interval, float fadeDuration)
    : x0_texture(textureId), x4_appearanceRange(appearanceRange), x8_imagePos(imagePos), xc_size(size), x14_interval(interval), x18_fadeDuration(fadeDuration) {}
    SBucket(CInputStream& in, uint version)
    : x0_texture(in.ReadLong())
    , x4_appearanceRange(in.ReadFloat())
    , x8_imagePos(in.ReadLong())
    , xc_size(version == 1 ? CVector2i() : CVector2i(in))
    , x14_interval(version == 1 ? 0.f : in.ReadFloat())
    , x18_fadeDuration(version < 3 ? 0.f : in.ReadFloat()) {
    }
    CAssetId GetTextureId() const { return x0_texture; }
    void SetTextureId(const CAssetId textureId) { x0_texture = textureId; }

    float GetAppearanceRange() const { return x4_appearanceRange; }
    void SetAppearanceRange(const float range) { x4_appearanceRange = range; }

    int GetImagePosition() const { return x8_imagePos; }
    void SetImagePosition(int position) { x8_imagePos = position; }
  };
  CAssetId x0_scannableObjectId;
  CAssetId x4_stringId;
  float x8_totalDownloadTime;
  uint xc_category;
  bool x10_important;
  rstl::reserved_vector< SBucket, 4 > x14_buckets;
};

CFactoryFnReturn FScannableObjectInfoFactory(const SObjectTag& tag, CInputStream& in,
                                             const CVParamTransfer& xfer);

#endif // _CSCANNABLEOBJECTINFO

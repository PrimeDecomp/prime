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
  enum EPanelType {
    kPT_Invalid = -1,
    kPT_0,
    kPT_1,
    kPT_2,
    kPT_3,
    kPT_01,
    kPT_12,
    kPT_23,
    kPT_012,
    kPT_123,
    kPT_0123,
    kPT_4,
    kPT_5,
    kPT_6,
    kPT_7,
    kPT_45,
    kPT_56,
    kPT_67,
    kPT_456,
    kPT_567,
    kPT_4567
  };
  struct SBucket {
    CAssetId x0_texture;
    float x4_appearanceRange;
    EPanelType x8_imagePos;
    CVector2i xc_size;
    float x14_interval;
    float x18_fadeDuration;

    SBucket(CAssetId textureId, float appearanceRange, EPanelType imagePos, const CVector2i& size,
            float interval, float fadeDuration)
    : x0_texture(textureId)
    , x4_appearanceRange(appearanceRange)
    , x8_imagePos(imagePos)
    , xc_size(size)
    , x14_interval(interval)
    , x18_fadeDuration(fadeDuration) {}
    SBucket(CInputStream& in, uint version)
    : x0_texture(in.ReadLong())
    , x4_appearanceRange(in.ReadFloat())
    , x8_imagePos(static_cast< EPanelType >(in.ReadLong()))
    , xc_size(version == 1 ? CVector2i(0, 0) : CVector2i(in))
    , x14_interval(version == 1 ? 0.f : in.ReadFloat())
    , x18_fadeDuration(version < 3 ? 0.f : in.ReadFloat()) {}
    CAssetId GetTextureId() const { return x0_texture; }
    void SetTextureId(const CAssetId textureId) { x0_texture = textureId; }

    const float GetAppearanceRange() const { return x4_appearanceRange; }
    void SetAppearanceRange(const float range) { x4_appearanceRange = range; }

    EPanelType GetImagePosition() const { return x8_imagePos; }
    void SetImagePosition(EPanelType position) { x8_imagePos = position; }
  };

  static const char* GetImagePaneName(uint pane);
  CScannableObjectInfo(CInputStream& in, CAssetId id);

  CAssetId GetScannableObjectId() const { return x0_scannableObjectId; }
  CAssetId GetStringTableId() const { return x4_stringId; }
  const bool IsImportant() const { return x10_important; }
  int GetCategory() const { return static_cast< int >(xc_category); }
  float GetTotalDownloadTime() const { return x8_totalDownloadTime; }

  void Load(CInputStream& in, uint version);

  const SBucket& GetBucket(int bucket) const { return x14_buckets[bucket]; }

private:
  CAssetId x0_scannableObjectId;
  CAssetId x4_stringId;
  float x8_totalDownloadTime;
  uint xc_category;
  bool x10_important;
  rstl::reserved_vector< SBucket, 4 > x14_buckets;
};
CHECK_SIZEOF(CScannableObjectInfo, 0x88)

const CFactoryFnReturn FScannableObjectInfoFactory(const SObjectTag& tag, CInputStream& in,
                                             const CVParamTransfer& xfer);

#endif // _CSCANNABLEOBJECTINFO

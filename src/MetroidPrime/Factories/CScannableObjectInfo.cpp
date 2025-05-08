#include "MetroidPrime/Factories/CScannableObjectInfo.hpp"
#include "Kyoto/Math/CVector2i.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"

#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include <limits.h>

static const char kBasePaneName[] = "imagepane_pane";
static const char* const kPaneSufixes[] = {
    "0", "1", "2", "3", "01", "12", "23", "012", "123", "0123",
    "4", "5", "6", "7", "45", "56", "67", "456", "567", "4567",
};
const char* CScannableObjectInfo::GetImagePaneName(uint pane) {
  return CBasics::Stringize("%s%s", kBasePaneName, kPaneSufixes[pane]);
}

CScannableObjectInfo::CScannableObjectInfo(CInputStream& in, CAssetId id)
: x0_scannableObjectId(id)
, x4_stringId(-1)
, x8_totalDownloadTime(0.f)
, xc_category(0)
, x10_important(false) {
  Load(in, in.ReadLong());

  for (int i = 0; i < x14_buckets.size(); ++i) {
    x14_buckets[i].x4_appearanceRange *= x8_totalDownloadTime;
  }

  const float appearanceOffset = gpTweakGui->GetScanAppearanceDuration();
  for (int i = 0; i < x14_buckets.size(); ++i) {
    if (x14_buckets[i].GetImagePosition() == -1) {
      continue;
    }

    x8_totalDownloadTime += appearanceOffset;
    for (int j = i; j < x14_buckets.size(); j++) {
      x14_buckets[j].x4_appearanceRange += appearanceOffset;
    }
  }

  for (int i = 0; i < x14_buckets.size() - 1; ++i) {
    const int& pos = x14_buckets[i].x8_imagePos;
    for (int j = i + 1; j < x14_buckets.size(); ++j) {
      SBucket& bucket = x14_buckets[j];
      if (pos == bucket.x8_imagePos && pos != -1) {
        bucket.x8_imagePos = -1;
      }
    }
  }
}

void CScannableObjectInfo::Load(CInputStream& in, uint version) {
  in.ReadLong();
  in.ReadLong();
  x4_stringId = in.ReadLong();
  if (version < 4) {
    x8_totalDownloadTime = in.ReadFloat();
  } else {
    x8_totalDownloadTime = gpTweakGui->GetScanSpeed(in.ReadLong());
  }

  xc_category = in.ReadLong();

  if (version > 4) {
    x10_important = in.ReadBool();
  }

  for (int i = 0; i < x14_buckets.capacity(); ++i) {
    x14_buckets.push_back(SBucket(in, version));
  }
}
template <>
inline CFactoryFnReturn::CFactoryFnReturn(CScannableObjectInfo* ptr)
: obj(TToken< CScannableObjectInfo >::GetIObjObjectFor(rstl::auto_ptr< CScannableObjectInfo >(ptr))
          .release()) {}

CFactoryFnReturn FScannableObjectInfoFactory(const SObjectTag& tag, CInputStream& in,
                                             const CVParamTransfer& xfer) {
  return rs_new CScannableObjectInfo(in, tag.GetId());
}

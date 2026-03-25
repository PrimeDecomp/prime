#include "MetroidPrime/CBallFilter.hpp"

#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CollisionUtil.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

void CBallFilter::Filter(const CCollisionInfoList& in, CCollisionInfoList& out) const {
  CollisionUtil::AddAverageToFront(in, out);
}

// This is used by CNewFlameThrower, name unknown. Possibly its own TU, but it fits here for now.
namespace CollisionUtil {
void AccumulateCollisionInfo(const CCollisionInfoList& in, CCollisionInfoList& out) {
  for (int i = 0; i < in.GetCount(); ++i) {
    const CCollisionInfo* inInfo = &in[i];
    bool found = false;

    for (int j = 0; j < out.GetCount(); ++j) {
      CCollisionInfo& outInfo = out[j];
      if (close_enough(outInfo.GetPoint(), inInfo->GetPoint(), 0.1f) &&
          close_enough(outInfo.GetNormalLeft().AsNormalized(), inInfo->GetNormalLeft(), 1.2f)) {
        found = true;
        outInfo.Point() = (outInfo.GetPoint() + inInfo->GetPoint()) * 0.5f;
        outInfo.MaterialLeft().Add(inInfo->GetMaterialLeft());
        outInfo.MaterialLeft() = outInfo.GetMaterialRight().Union(inInfo->GetMaterialRight());
        outInfo.NormalLeft() = outInfo.NormalLeft() + inInfo->GetNormalLeft();
        break;
      }
    }

    if (!found) {
      out.Add(*inInfo, false);
    }
  }

  for (int i = 0; i < out.GetCount(); ++i) {
    CCollisionInfo& outInfo = out[i];
    outInfo.NormalLeft() = outInfo.GetNormalLeft().AsNormalized();
    outInfo.NormalRight() = -outInfo.GetNormalLeft();
  }
}
} // namespace CollisionUtil

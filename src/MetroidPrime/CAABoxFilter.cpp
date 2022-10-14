#include "MetroidPrime/CAABoxFilter.hpp"

#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CollisionUtil.hpp"

void CAABoxFilter::FilterBoxFloorCollisions(const CCollisionInfoList& in, CCollisionInfoList& out) {
  float minZ = 10000.f;

  for (CCollisionInfoList::const_iterator it = in.begin(); it != in.end(); ++it) {
    if (it->GetMaterialLeft().HasMaterial(kMT_Wall) && it->GetPoint().GetZ() < minZ) {
      minZ = it->GetPoint().GetZ();
    }
  }

  CCollisionInfoList temp;
  for (CCollisionInfoList::const_iterator it = in.begin(); it != in.end(); ++it) {
    if (it->GetMaterialLeft().HasMaterial(kMT_Floor)) {
      if (it->GetPoint().GetZ() < minZ) {
        temp.Add(*it, false);
      }
    } else {
      temp.Add(*it, false);
    }
  }
  CollisionUtil::AddAverageToFront(temp, out);
}

void CAABoxFilter::Filter(const CCollisionInfoList& in, CCollisionInfoList& out) const {
  FilterBoxFloorCollisions(in, out);
}

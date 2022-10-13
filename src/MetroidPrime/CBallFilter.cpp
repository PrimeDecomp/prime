#include "MetroidPrime/CBallFilter.hpp"

#include "Collision/CollisionUtil.hpp"

void CBallFilter::Filter(const CCollisionInfoList& in, CCollisionInfoList& out) const {
  CollisionUtil::AddAverageToFront(in, out);
}

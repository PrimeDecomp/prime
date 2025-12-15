#include "Kyoto/Animation/CMetaAnimPlay.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

rstl::rc_ptr< CAnimTreeNode >
CMetaAnimPlay::VGetAnimationTree(const CAnimSysContext& animSys,
                                 const CMetaAnimTreeBuildOrders& orders) const {}

void CMetaAnimPlay::GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const {
  // primsOut.insert(x4_primitive);
}

void CMetaAnimPlay::WriteAnimData(COutputStream& out) const {
  x4_primitive.PutTo(out);
  x1c_startTime.PutTo(out);
}

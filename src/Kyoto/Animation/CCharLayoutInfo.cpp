#include "Kyoto/Animation/CCharLayoutInfo.hpp"

#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CFactoryFnReturn FCharLayoutInfo(const SObjectTag& tag, CInputStream& in, const CVParamTransfer&) {
  return rs_new CCharLayoutInfo(in);
}

CCharLayoutInfo::CCharLayoutInfo(CInputStream& in)
: mNodes(rstl::auto_ptr< TSegIdMap< CCharLayoutNode > >(rs_new TSegIdMap< CCharLayoutNode >(in)))
, mSegIdList(in)
, mNameMap(in) {}


CCharLayoutNode::CCharLayoutNode(CInputStream& in)
: mParent(in), mReferenceStanceOffset(in), mConnectedParts(in) {}
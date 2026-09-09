#include "Kyoto/Animation/CCharLayoutInfo.hpp"

#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

const CFactoryFnReturn FCharLayoutInfo(const SObjectTag& tag, CInputStream& in, const CVParamTransfer&) {
  return rs_new CCharLayoutInfo(in);
}

CCharLayoutNode::CCharLayoutNode(CInputStream& in)
: mParent(in), mReferenceStanceOffset(in), mConnectedParts(in) {}

CCharLayoutInfo::CCharLayoutInfo(CInputStream& in)
: mNodes(rstl::ownership_transfer< TSegIdMap< CCharLayoutNode > >(
      rs_new TSegIdMap< CCharLayoutNode >(in)))
, mSegIdList(in)
, mNameMap(in) {}

CSegId CCharLayoutInfo::GetSegIdFromString(const rstl::string& bone) const {
  AUTO(it, mNameMap.find(bone));
  if (it != mNameMap.end()) {
    return it->second;
  }
  return CSegId::Invalid();
}

#include "Kyoto/Animation/CPOINode.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CInt32POINode::CInt32POINode(CInputStream& in)
: CPOINode(in), x38_val(in.ReadInt32()), x3c_lctrName(in) {}

CInt32POINode CInt32POINode::CopyNodeMinusStartTime(const CInt32POINode& node,
                                                    const CCharAnimTime& startTime) {
  return CInt32POINode(node.GetString(), node.GetPoiType(), node.GetTime() - startTime, node.GetIndex(),
                       node.GetSaveState(), node.GetWeight(), node.GetCharacterIndex(), node.GetFlags(),
                       node.GetValue(), node.GetLocatorName());
}

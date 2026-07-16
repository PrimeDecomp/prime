#include "Kyoto/Animation/CCharLayoutInfo.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CCharLayoutNode::CCharLayoutNode(CInputStream& in)
: mParent(in), mReferenceStanceOffset(in), mConnectedParts(in) {}


CCharLayoutInfo::CCharLayoutInfo(CInputStream& in) : mNodes(in) {}
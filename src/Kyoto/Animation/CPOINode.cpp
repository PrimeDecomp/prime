#include "Kyoto/Animation/CPOINode.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CPOINode::CPOINode(const rstl::string& name, ushort type, const CCharAnimTime& time, int index,
                   bool unique, float weight, int charIdx, int flags)
: x4_(1)
, x8_name(name)
, x18_type(type)
, x1c_time(time)
, x24_index(index)
, x28_unique(unique)
, x2c_weight(weight)
, x30_charIdx(charIdx)
, x34_flags(flags) {}

CPOINode::CPOINode(CInputStream& in)
: x4_(in.Get<ushort>())
, x8_name(in)
, x18_type(in.Get<ushort>())
, x1c_time(in)
, x24_index(in.Get<uint>())
, x28_unique(in.Get<bool>())
, x2c_weight(in.Get<float>())
, x30_charIdx(in.Get<int>())
, x34_flags(in.Get<int>()) {
  
}


bool CPOINode::operator>(const CPOINode& other) const {
  return x1c_time > other.x1c_time;
}

bool CPOINode::operator<(const CPOINode& other) const {
  return x1c_time < other.x1c_time;
}

int CPOINode::compare(const void* a, const void* b) {
  const CPOINode& aNode = *static_cast<const CPOINode*>(a);
  const CPOINode& bNode = *static_cast<const CPOINode*>(b);
  return aNode > bNode ? 1 : aNode < bNode ? -1 : 0;
}

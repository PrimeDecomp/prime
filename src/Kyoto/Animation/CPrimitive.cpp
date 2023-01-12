#include "Kyoto/Animation/CPrimitive.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CPrimitive::CPrimitive(CInputStream& in)
: x0_animId(in.Get< CAssetId >()), x4_animIdx(in.Get< int >()), x8_animName(in) {}

void CPrimitive::PutTo(COutputStream& out) const {
  out.Put(x0_animId);
  out.Put(x4_animIdx);
  out.Put(x8_animName);
}

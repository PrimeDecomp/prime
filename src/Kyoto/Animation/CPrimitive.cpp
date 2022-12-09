#include "Kyoto/Animation/CPrimitive.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CPrimitive::CPrimitive(CInputStream& in)
: x0_animId(in.Get<CAssetId>())
, x4_animIdx(in.Get<int>())
, x8_animName(in) {

}

#include "Kyoto/Animation/CAnimation.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Animation/CMetaAnimFactory.hpp"

CAnimation::CAnimation(CInputStream& in)
: x0_name(in)
, x10_anim(CMetaAnimFactory::CreateMetaAnim(in)) {
  
}

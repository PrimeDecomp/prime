#include "Kyoto/Animation/CMetaAnimFactory.hpp"
#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "Kyoto/Animation/CMetaAnimBlend.hpp"
#include "Kyoto/Animation/CMetaAnimPhaseBlend.hpp"
#include "Kyoto/Animation/CMetaAnimPlay.hpp"
#include "Kyoto/Animation/CMetaAnimRandom.hpp"
#include "Kyoto/Animation/CMetaAnimSequence.hpp"
#include "Kyoto/Animation/IMetaAnim.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

rstl::rc_ptr< IMetaAnim > CMetaAnimFactory::CreateMetaAnim(CInputStream& in) {
  EMetaAnimType type = static_cast< EMetaAnimType >(in.ReadLong());
  switch (type) {
  case kMAT_Play:
    return rs_new CMetaAnimPlay(in);
  case kMAT_Blend:
    return rs_new CMetaAnimBlend(in);
  case kMAT_PhaseBlend:
    return rs_new CMetaAnimPhaseBlend(in);
  case kMAT_Random:
    return rs_new CMetaAnimRandom(in);
  case kMAT_Sequence:
    return rs_new CMetaAnimSequence(in);
  default:
    return rstl::rc_ptr< IMetaAnim >();
  }
}

#include "Kyoto/Animation/CAnimCharacterSet.hpp"
#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#pragma inlin_max_size(1)
CAnimCharacterSet::CAnimCharacterSet(CInputStream& in)
: mVersion(in.Get< short >()), mCharacterSet(in), mAnimationSet(in) {}

CFactoryFnReturn FAnimCharacterSet(const SObjectTag& tag, CInputStream& in,
                                   const CVParamTransfer& xfer) {
  return rs_new CAnimCharacterSet(in);
}

#include "Kyoto/Animation/CAnimPOIData.hpp"

#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Animation/CParticlePOINode.hpp"
#include "Kyoto/Animation/CSoundPOINode.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "dolphin/types.h"
#include "rstl/vector.hpp"

CAnimPOIData::CAnimPOIData(CInputStream& in)
: mVersion(in.Get< uint >()), mBoolNodes(in), mInt32Nodes(in), mParticleNodes(in) {
  if (mVersion > 1) {
    mSoundNodes = in;
  }
}

const CFactoryFnReturn AnimPOIDataFactory(const SObjectTag& tag, CInputStream& in,
                                    const CVParamTransfer& xfer) {
  return rs_new CAnimPOIData(in);
}

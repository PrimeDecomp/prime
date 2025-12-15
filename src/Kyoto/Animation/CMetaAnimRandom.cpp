#include "Kyoto/Animation/CMetaAnimRandom.hpp"
#include "Kyoto/Animation/CAnimSysContext.hpp"
#include "Kyoto/Animation/CMetaAnimFactory.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"
#include "rstl/rc_ptr.hpp"

CMetaAnimRandom::CMetaAnimRandom(CInputStream& in) : x4_randomData(CreateRandomData(in)) {}

rstl::rc_ptr< CAnimTreeNode >
CMetaAnimRandom::VGetAnimationTree(const CAnimSysContext& animSys,
                                   const CMetaAnimTreeBuildOrders& orders) const {
  const int r = const_cast< CAnimSysContext& >(animSys).Random()->Range(1, 100);

  CMetaAnimRandom::RandomData::const_iterator rd = x4_randomData.begin();
  int found = 0;
  while (bool(!found)) {
    if (r <= rd->second) {
      found = 1;
    } else {
      rd++;
    }
  }

  return rd->first->GetAnimationTree(animSys, orders);
}

void CMetaAnimRandom::GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const {
  CMetaAnimRandom::RandomData::const_iterator it = x4_randomData.begin();
  CMetaAnimRandom::RandomData::const_iterator end = x4_randomData.end();
  for (; it != end; ++it)
    it->first->GetUniquePrimitives(primsOut);
}

void CMetaAnimRandom::WriteAnimData(COutputStream& out) const {
  CMetaAnimRandom::RandomData::const_iterator it = x4_randomData.begin();
  CMetaAnimRandom::RandomData::const_iterator end = x4_randomData.end();
  out.WriteLong(x4_randomData.size());
  while (it != end) {
    rstl::rc_ptr< IMetaAnim > anim = it->first;
    anim->PutTo(out);
    out.WriteLong(it->second);
    ++it;
  }
}

CMetaAnimRandom::RandomData CMetaAnimRandom::CreateRandomData(CInputStream& in) {
  CMetaAnimRandom::RandomData ret;
  int randCount = in.ReadLong();
  ret.reserve(randCount);

  for (int i = 0; i < randCount; ++i) {
    rstl::rc_ptr< IMetaAnim > metaAnim = CMetaAnimFactory::CreateMetaAnim(in);
    ret.push_back(rstl::pair< rstl::rc_ptr< IMetaAnim >, int >(metaAnim, in.ReadLong()));
  }

  return ret;
}

#include "Kyoto/Animation/CAnimationSet.hpp"
#include "Kyoto/Animation/CMetaTransFactory.hpp"

#pragma inline_max_size(240)
CAnimationSet::CAnimationSet(CInputStream& in)
: mTableCount(in.Get< short >())
, mAnimations(in)
, mTransitions(in)
, mDefaultTransition(CMetaTransFactory::CreateMetaTrans(in))
, mAdditiveAnimations(StreamAdditiveAnimInfoList(mTableCount, in))
, mDefaultAdditiveAnimation(StreamDefaultAdditiveAnimInfo(mTableCount, in))
, mHalfTransitions(StreamHalfTransitions(mTableCount, in))
, mAnimRes(StreamAnimResIdEventResIdList(mTableCount, in)) {}

rstl::vector< rstl::pair< uint, CAdditiveAnimationInfo > >
CAnimationSet::StreamAdditiveAnimInfoList(ushort tableCount, CInputStream& in) {
  if (tableCount > 1) {
    return rstl::vector< rstl::pair< uint, CAdditiveAnimationInfo > >(in);
  }

  return rstl::vector< rstl::pair< uint, CAdditiveAnimationInfo > >();
}
CAdditiveAnimationInfo CAnimationSet::StreamDefaultAdditiveAnimInfo(ushort tableCount,
                                                                    CInputStream& in) {
  if (tableCount > 1) {
    return CAdditiveAnimationInfo(in);
  }

  return CAdditiveAnimationInfo(0.f, 0.f);
}
rstl::vector< CHalfTransition > CAnimationSet::StreamHalfTransitions(ushort tableCount,
                                                                     CInputStream& in) {
  if (tableCount > 2) {
    return rstl::vector< CHalfTransition >(in);
  }

  return rstl::vector< CHalfTransition >();
}
rstl::vector< rstl::pair< int, int > >
CAnimationSet::StreamAnimResIdEventResIdList(ushort tableCount, CInputStream& in) {
  if (tableCount > 3) {
    return rstl::vector< rstl::pair< int, int > >(in);
  }

  return rstl::vector< rstl::pair< int, int > >();
}
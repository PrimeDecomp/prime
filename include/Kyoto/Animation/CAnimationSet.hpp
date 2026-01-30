#ifndef _CANIMATIONSET
#define _CANIMATIONSET
#include "Kyoto/Animation/CAdditiveAnimationInfo.hpp"
#include "Kyoto/Animation/CAnimation.hpp"
#include "Kyoto/Animation/CHalfTransition.hpp"
#include "Kyoto/Animation/CTransition.hpp"

class CInputStream;
class CAnimationSet {
public:
  typedef rstl::vector< CAnimation > AnimationList;
  typedef rstl::vector< CTransition > TransitionList;
  typedef rstl::vector< CHalfTransition > HalfTransitionList;
  typedef rstl::vector< rstl::pair< uint, CAdditiveAnimationInfo > > AdditiveAnimationList;
  typedef rstl::vector< rstl::pair< int, int > > AnimResidEventResIdList;

  CAnimationSet(CInputStream& in);

  static HalfTransitionList StreamHalfTransitions(ushort tableCount, CInputStream& in);
  static AnimResidEventResIdList StreamAnimResIdEventResIdList(ushort tableCount, CInputStream& in);
  static AdditiveAnimationList StreamAdditiveAnimInfoList(ushort tableCount, CInputStream& in);
  static CAdditiveAnimationInfo StreamDefaultAdditiveAnimInfo(ushort tableCount, CInputStream& in);

private:
  ushort mTableCount;
  AnimationList mAnimations;
  TransitionList mTransitions;
  rstl::rc_ptr< IMetaTrans > mDefaultTransition;
  AdditiveAnimationList mAdditiveAnimations;
  CAdditiveAnimationInfo mDefaultAdditiveAnimation;
  HalfTransitionList mHalfTransitions;
  AnimResidEventResIdList mAnimRes;
};
CHECK_SIZEOF(CAnimationSet, 0x60)

#endif // _CANIMATIONSET

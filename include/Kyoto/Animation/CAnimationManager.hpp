#ifndef _CANIMATIONMANAGER
#define _CANIMATIONMANAGER

#include "Kyoto/Animation/CAnimationDatabase.hpp"
#include "Kyoto/TToken.hpp"

class CMetaAnimTreeBuildOrders;
class CAnimTreeContext;
class CAnimationManager {
public:
  CAnimationManager(const TToken< CAnimationDatabase >& animDB, const CAnimSysContext& sysCtx)
  : x0_animDB(animDB), x8_sysCtx(sysCtx) {}

  rstl::rc_ptr< CAnimTreeNode > GetAnimationTree(uint a,
                                                 const CMetaAnimTreeBuildOrders& orders) const;

private:
  TToken< CAnimationDatabase > x0_animDB;
  const CAnimSysContext& x8_sysCtx;
};

#endif // _CANIMATIONMANAGER

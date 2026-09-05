#include "Kyoto/Animation/CTreeUtils.hpp"

#include "Kyoto/Animation/CAnimSysContext.hpp"
#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/CTransitionDatabase.hpp"
#include "Kyoto/Animation/IMetaTrans.hpp"

rstl::rc_ptr< CAnimTreeNode >
CTreeUtils::GetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                              const rstl::ncrc_ptr< CAnimTreeNode >& b,
                              const CAnimSysContext& animCtx) {
  CAnimTreeEffectiveContribution contribA = a->GetContributionOfHighestInfluence();
  CAnimTreeEffectiveContribution contribB = b->GetContributionOfHighestInfluence();
  const rstl::rc_ptr< IMetaTrans >& trans =
      animCtx.GetTransitionDatabase().NonConstCopy()->GetMetaTrans(
          contribA.GetAnimDatabaseIndex(), contribB.GetAnimDatabaseIndex());
  return trans->GetTransitionTree(a, b, animCtx);
}

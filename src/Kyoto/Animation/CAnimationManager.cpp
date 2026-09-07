#include "Kyoto/Animation/CAnimationManager.hpp"

#include "Kyoto/Animation/IMetaAnim.hpp"

rstl::ncrc_ptr< CAnimTreeNode >
CAnimationManager::GetAnimationTree(uint animIdx, const CMetaAnimTreeBuildOrders& orders) const {
  const rstl::rc_ptr< IMetaAnim >& anim = x0_animDB.NonConstCopy()->GetMetaAnim(animIdx);
  return anim->GetAnimationTree(x8_sysCtx, orders);
}

rstl::rc_ptr< IMetaAnim > CAnimationManager::GetMetaAnimation(uint animIdx) const {
  return x0_animDB.NonConstCopy()->GetMetaAnim(animIdx);
}

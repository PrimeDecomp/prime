#include "Kyoto/Animation/CTransitionManager.hpp"
#include "Kyoto/Animation/CTreeUtils.hpp"

rstl::rc_ptr< CAnimTreeNode >
CTransitionManager::GetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                      const rstl::ncrc_ptr< CAnimTreeNode >& b) const {

  return CTreeUtils::GetTransitionTree(a, b, x0_context);
}

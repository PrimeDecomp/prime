#include "Kyoto/Animation/CSequenceHelper.hpp"

#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/IMetaAnim.hpp"

CSequenceHelper::CSequenceHelper(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                 const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                 const CAnimSysContext& context)
: x0_context(context) {
  x10_nodes.reserve(2);
  x10_nodes.push_back(a);
  x10_nodes.push_back(b);
}

CSequenceHelper::CSequenceHelper(const rstl::vector< rstl::rc_ptr< IMetaAnim > >& anims,
                                 const CAnimSysContext& context)
: x0_context(context) {
  x10_nodes.reserve(anims.size());

  rstl::vector< rstl::rc_ptr< IMetaAnim > >::const_iterator it = anims.begin();
  rstl::vector< rstl::rc_ptr< IMetaAnim > >::const_iterator end = anims.end();
  for (; it != end; ++it) {
    x10_nodes.push_back(
        (*it)->GetAnimationTree(x0_context, CMetaAnimTreeBuildOrders::NoSpecialOrders()));
  }
}
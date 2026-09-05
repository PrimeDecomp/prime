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

  AUTO(it, anims.begin());
  AUTO(end, anims.end());
  for (; it != end; ++it) {
    const rstl::rc_ptr< IMetaAnim >& anim = *it;
    x10_nodes.push_back(
        anim->GetAnimationTree(context, CMetaAnimTreeBuildOrders::NoSpecialOrders()));
  }
}

CSequenceFundamentals CSequenceHelper::ComputeSequenceFundamentals() const {
  rstl::vector< CBoolPOINode > boolNodes;
  rstl::vector< CInt32POINode > int32Nodes;
  rstl::vector< CParticlePOINode > partNodes;
  rstl::vector< CSoundPOINode > soundNodes;
  if (x10_nodes.empty()) {
    rstl::ownership_transfer<IAnimReader> reader = x10_nodes.front()->Clone();;
    Cast(reader);
  }

  return CSequenceFundamentals(boolNodes, int32Nodes, partNodes, soundNodes);
}
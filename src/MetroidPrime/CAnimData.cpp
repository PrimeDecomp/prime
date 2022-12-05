#include "MetroidPrime/CAnimData.hpp"

#include "Kyoto/Animation/CAnimTreeNode.hpp"

#include "rstl/algorithm.hpp"

CAABox CAnimData::GetBoundingBox() const {
  const rstl::vector< rstl::pair< rstl::string, CAABox > >& aabbList =
      xc_charInfo.GetAnimBBoxList();

  if (aabbList.size() > 0) {
    CAnimTreeEffectiveContribution contrib = x1f8_animRoot->GetContributionOfHighestInfluence();
    rstl::string name = contrib.GetPrimitiveName();

    rstl::vector< rstl::pair< rstl::string, CAABox > >::const_iterator search =
        rstl::find_by_key(aabbList, rstl::string(name));
    if (search != aabbList.end()) {
      return search->second;
    }
  }
  return x108_aabb;
}

#include "MetroidPrime/CAnimationDatabaseGame.hpp"

#include "Kyoto/Animation/CAnimation.hpp"
#include "Kyoto/Animation/CPrimitive.hpp"
#include "Kyoto/Animation/IMetaAnim.hpp"

CAnimationDatabaseGame::CAnimationDatabaseGame(const rstl::vector< CAnimation >& anims) {
  rstl::vector< CAnimation >::const_iterator it = anims.begin(), end = anims.end();
  x10_anims.reserve(anims.size());
  for (; it != end; ++it)
    x10_anims.push_back(it->GetMetaAnim());
}

rstl::string CAnimationDatabaseGame::GetMetaAnimName(uint idx) const {
  return "Meta-animation name unavailable in Release mode.";
}

uint CAnimationDatabaseGame::GetNumMetaAnims() const { return x10_anims.size(); }

const rstl::rc_ptr< IMetaAnim >& CAnimationDatabaseGame::GetMetaAnim(uint idx) const {
  return x10_anims[idx];
}

void CAnimationDatabaseGame::GetAllUniquePrimitives(rstl::vector< CPrimitive >& primsOut) const {
  rstl::set< CPrimitive > primitives;
  uint animCount = x10_anims.size();
  for (uint i = 0; i < animCount; ++i) {
    x10_anims[i]->GetUniquePrimitives(primitives);
  }

  primsOut.reserve(primsOut.size() + primitives.size());
  primsOut.insert(primsOut.end(), primitives.begin(), primitives.end());
}

void CAnimationDatabaseGame::GetUniquePrimitivesFromMetaAnim(rstl::set< CPrimitive >& primsOut,
                                                             const rstl::string& name) const {}

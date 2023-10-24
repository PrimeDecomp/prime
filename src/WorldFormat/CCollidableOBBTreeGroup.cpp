
#include "Collision/CCollisionPrimitive.hpp"
#include <WorldFormat/CCollidableOBBTreeGroup.hpp>

#include <WorldFormat/CCollidableOBBTree.hpp>
#include <WorldFormat/COBBTree.hpp>

#include <Kyoto/CFactoryMgr.hpp>

#pragma inline_max_size(250)
CFactoryFnReturn FCollidableOBBTreeGroupFactory(const SObjectTag& tag, CInputStream& in,
                                                const CVParamTransfer& xfer) {
  return rs_new CCollidableOBBTreeGroupContainer(in);
}

CCollidableOBBTreeGroupContainer::CCollidableOBBTreeGroupContainer(CInputStream& in)
: x20_aabox(CAABox::MakeMaxInvertedBox()) {
  int obbCount = in.ReadInt32();
  x0_trees.reserve(obbCount);
  for (uint i = 0; i < obbCount; ++i) {
    x0_trees.push_back(rs_new COBBTree(in));
  }

  x10_aabbs.reserve(x0_trees.size());
  rstl::vector< rstl::auto_ptr< COBBTree > >::iterator it = x0_trees.begin();
  for (; it != x0_trees.end(); ++it) {
    CCollidableOBBTree tree(*it->get(), CMaterialList());
    CAABox box = tree.CalculateLocalAABox();
    x10_aabbs.push_back(box);
    x20_aabox.AccumulateBounds(box.GetMinPoint());
    x20_aabox.AccumulateBounds(box.GetMaxPoint());
  }
}


CCollisionPrimitive::Type CCollidableOBBTreeGroup::GetType() {
  return Type(SetStaticTableIndex, "CCollidableOBBTreeGroup");
}

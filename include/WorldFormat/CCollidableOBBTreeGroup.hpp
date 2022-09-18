#ifndef _CCOLLIDABLEOBBTREEGROUP_HPP
#define _CCOLLIDABLEOBBTREEGROUP_HPP

#include "types.h"

#include "Collision/CCollisionPrimitive.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/vector.hpp"

class COBBTree;

class CCollidableOBBTreeGroupContainer {
  friend class CCollidableOBBTreeGroup;
  rstl::vector< rstl::auto_ptr< COBBTree > > x0_trees;
  rstl::vector< CAABox > x10_aabbs;
  CAABox x20_aabox;

public:
  CCollidableOBBTreeGroupContainer(CInputStream& in);
  CCollidableOBBTreeGroupContainer(const CVector3f&, const CVector3f&);
};

class CCollidableOBBTreeGroup : public CCollisionPrimitive {
public:
  CCollidableOBBTreeGroup(CCollidableOBBTreeGroupContainer* container,
                          const CMaterialList& matList);

  u32 GetTableIndex() const override;
  CAABox CalculateAABox(const CTransform4f&) const override;
  CAABox CalculateLocalAABox() const override;
  FourCC GetPrimType() const override;
  ~CCollidableOBBTreeGroup() override {}
  CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const override;

private:
  CCollidableOBBTreeGroupContainer* x10_container;
};

#endif

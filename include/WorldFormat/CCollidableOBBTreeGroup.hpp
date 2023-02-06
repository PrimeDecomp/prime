#ifndef _CCOLLIDABLEOBBTREEGROUP
#define _CCOLLIDABLEOBBTREEGROUP

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

  uint GetTableIndex() const;
  CAABox CalculateAABox(const CTransform4f&) const;
  CAABox CalculateLocalAABox() const;
  FourCC GetPrimType() const;
  ~CCollidableOBBTreeGroup() {}
  CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const;

private:
  CCollidableOBBTreeGroupContainer* x10_container;
};

#endif // _CCOLLIDABLEOBBTREEGROUP

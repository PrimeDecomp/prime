#ifndef _CCOLLIDABLEOBBTREEGROUP
#define _CCOLLIDABLEOBBTREEGROUP

#include "types.h"

#include "Collision/CCollisionPrimitive.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/vector.hpp"

#include <Kyoto/CFactoryFnReturn.hpp>

class COBBTree;

class CCollidableOBBTreeGroupContainer {
public:
  CCollidableOBBTreeGroupContainer(CInputStream& in);
  CCollidableOBBTreeGroupContainer(const CVector3f&, const CVector3f&);

private:
  friend class CCollidableOBBTreeGroup;
  rstl::vector< rstl::auto_ptr< COBBTree > > x0_trees;
  rstl::vector< CAABox > x10_aabbs;
  CAABox x20_aabox;
};

class CCollidableOBBTreeGroup : public CCollisionPrimitive {
public:
  CCollidableOBBTreeGroup(CCollidableOBBTreeGroupContainer* container,
                          const CMaterialList& matList);

  uint GetTableIndex() const override;
  CAABox CalculateAABox(const CTransform4f&) const override;
  CAABox CalculateLocalAABox() const override;
  FourCC GetPrimType() const override;
  ~CCollidableOBBTreeGroup() override {}
  CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const override;

  static Type GetType();
  static void SetStaticTableIndex(uint);
private:
  CCollidableOBBTreeGroupContainer* x10_container;
};

CFactoryFnReturn FCollidableOBBTreeGroupFactory(const SObjectTag& tag, CInputStream& in,
                                                const CVParamTransfer& xfer);

#endif // _CCOLLIDABLEOBBTREEGROUP

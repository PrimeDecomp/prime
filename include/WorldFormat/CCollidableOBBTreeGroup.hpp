#ifndef _CCOLLIDABLEOBBTREEGROUP
#define _CCOLLIDABLEOBBTREEGROUP

#include "types.h"

#include "Collision/CCollisionPrimitive.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/vector.hpp"

#include "Kyoto/CFactoryFnReturn.hpp"

class COBBTree;

class CCollidableOBBTreeGroupContainer {
public:
  CCollidableOBBTreeGroupContainer(CInputStream& in);
  CCollidableOBBTreeGroupContainer(const CVector3f& extent, const CVector3f& center);

  int NumTrees() const { return x0_trees.size(); }

private:
  friend class CCollidableOBBTreeGroup;
  rstl::vector< rstl::auto_ptr< COBBTree > > x0_trees;
  rstl::vector< CAABox > x10_aabbs;
  CAABox x20_aabox;
};
CHECK_SIZEOF(CCollidableOBBTreeGroupContainer, 0x38)

class CCollidableOBBTreeGroup : public CCollisionPrimitive {
public:
  uint GetTableIndex() const override;
  CAABox CalculateAABox(const CTransform4f&) const override;
  CAABox CalculateLocalAABox() const override;
  FourCC GetPrimType() const override;
  ~CCollidableOBBTreeGroup() override {}
  CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const override;

  CCollidableOBBTreeGroup(CCollidableOBBTreeGroupContainer* container,
                          const CMaterialList& matList);

  const CCollidableOBBTreeGroupContainer* GetContainer() const { return x10_container; }
  COBBTree* GetOBBTreeAABox(int idx) const;

  static Type GetType();
  static void SetStaticTableIndex(uint);

  /* Sphere Collide */
  static bool SphereCollide(const CInternalCollisionStructure&, CCollisionInfoList&);
  static bool SphereCollideBoolean(const CInternalCollisionStructure&);
  static bool CollideMovingSphere(const CInternalCollisionStructure&, const CVector3f&, double&,
                                  CCollisionInfo&);
  /* AABox Collide */
  static bool AABoxCollide(const CInternalCollisionStructure&, CCollisionInfoList&);
  static bool AABoxCollideBoolean(const CInternalCollisionStructure&);
  static bool CollideMovingAABox(const CInternalCollisionStructure&, const CVector3f&, double&,
                                 CCollisionInfo&);

private:
  CCollidableOBBTreeGroupContainer* x10_container;
  static uint sTableIndex;
};
CHECK_SIZEOF(CCollidableOBBTreeGroup, 0x18)

CFactoryFnReturn FCollidableOBBTreeGroupFactory(const SObjectTag& tag, CInputStream& in,
                                                const CVParamTransfer& xfer);

#endif // _CCOLLIDABLEOBBTREEGROUP

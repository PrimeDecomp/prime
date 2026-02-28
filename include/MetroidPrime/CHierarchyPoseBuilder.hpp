#ifndef _CHIERARCHYPOSEBUILDER
#define _CHIERARCHYPOSEBUILDER

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Animation/CSegId.hpp"

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/construction_deferred.hpp"
#include "rstl/optional_object.hpp"

class CCharLayoutInfo;
class CPoseAsTransforms;
class CTransform4f;

template < typename T >
class TSegIdMap {
public:
  T& operator[](const CSegId& id) {
    return xd0_nodes[x8_indirectionMap[id.val() * 2 + 1].val()];
  }
  const T& operator[](const CSegId& id) const {
    return xd0_nodes[x8_indirectionMap[id.val() * 2 + 1].val()];
  }

private:
  CSegId x0_boneCount;
  CSegId x1_capacity;
  uint x4_maxCapacity;
  CSegId x8_indirectionMap[200];
  T* xd0_nodes;
  CSegId xd4_curPrevBone;
};
typedef TSegIdMap< void > unk_TSegIdMap;
CHECK_SIZEOF(unk_TSegIdMap, 0xd8)

class CLayoutDescription {
public:
  CLayoutDescription(const TLockedToken< CCharLayoutInfo >&);
  ~CLayoutDescription();

  class CScaledLayoutDescription {
  private:
    TCachedToken< CCharLayoutInfo > x0_layoutToken;
    float xc_scale;
    rstl::optional_object< CVector3f > x10_scaleVec;
  };

private:
  TCachedToken< CCharLayoutInfo > x0_layoutToken;
  rstl::optional_object< CScaledLayoutDescription > xc_scaled;
};
CHECK_SIZEOF(CLayoutDescription, 0x30)

class CHierarchyPoseBuilder {
public:
  CHierarchyPoseBuilder(const CLayoutDescription&);
  ~CHierarchyPoseBuilder();

  void BuildNoScale(CPoseAsTransforms&);
  void BuildTransform(const CSegId&, CTransform4f&) const;

  class CTreeNode {
  public:
    void SetRotation(const CQuaternion& rot) { x4_rotation = rot; }
    void SetOffset(const CVector3f& off) { x14_offset = off; }

  private:
    CSegId x0_child;
    CSegId x1_sibling;
    CQuaternion x4_rotation;
    CVector3f x14_offset;
  };

  void Insert(const CSegId& id, const CQuaternion& rot) {
    x38_treeMap[id].SetRotation(rot);
  }
  void Insert(const CSegId& id, const CVector3f& off) {
    x38_treeMap[id].SetOffset(off);
  }

private:
  CLayoutDescription x0_layoutDesc;
  rstl::construction_deferred< CSegId > x30_rootId;
  TSegIdMap< CTreeNode > x38_treeMap;
};
CHECK_SIZEOF(CHierarchyPoseBuilder, 0x110)

#endif // _CHIERARCHYPOSEBUILDER

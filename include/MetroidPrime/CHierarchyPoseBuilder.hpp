#ifndef _CHIERARCHYPOSEBUILDER_HPP
#define _CHIERARCHYPOSEBUILDER_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/construction_deferred.hpp"
#include "rstl/optional_object.hpp"

class CCharLayoutInfo;

template < typename T >
class TSegIdMap {
private:
  CSegId x0_boneCount;
  CSegId x1_capacity;
  u32 x4_maxCapacity;
  CSegId x8_indirectionMap[200];
  T* xd0_nodes;
  CSegId xd4_curPrevBone;
};
typedef TSegIdMap< void > unk_TSegIdMap;
CHECK_SIZEOF(unk_TSegIdMap, 0xd8)

class CLayoutDescription {
public:
  class CScaledLayoutDescription {
  private:
    TCachedToken< CCharLayoutInfo > x0_layoutToken;
    f32 xc_scale;
    rstl::optional_object< CVector3f > x10_scaleVec;
  };

private:
  TCachedToken< CCharLayoutInfo > x0_layoutToken;
  rstl::optional_object< CScaledLayoutDescription > xc_scaled;
};
CHECK_SIZEOF(CLayoutDescription, 0x30)

class CHierarchyPoseBuilder {
public:
  class CTreeNode {
  private:
    CSegId x0_child;
    CSegId x1_sibling;
    CQuaternion x4_rotation;
    CVector3f x14_offset;
  };

private:
  CLayoutDescription x0_layoutDesc;
  rstl::construction_deferred< CSegId > x30_rootId;
  TSegIdMap< CTreeNode > x38_treeMap;
};
CHECK_SIZEOF(CHierarchyPoseBuilder, 0x110)

#endif
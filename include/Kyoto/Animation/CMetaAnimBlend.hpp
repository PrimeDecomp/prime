#ifndef _CMETAANIMBLEND
#define _CMETAANIMBLEND

#include "Kyoto/Animation/IMetaAnim.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/vector.hpp"

class CMetaAnimBlend : public IMetaAnim {
  rstl::rc_ptr< IMetaAnim > x4_animA;
  rstl::rc_ptr< IMetaAnim > x8_animB;
  float xc_blend;
  bool x10_;

public:
  explicit CMetaAnimBlend(CInputStream& in);
  EMetaAnimType GetType() const override { return kMAT_Blend; }

  void GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const override;
  rstl::rc_ptr< CAnimTreeNode >
  VGetAnimationTree(const CAnimSysContext& animSys,
                    const CMetaAnimTreeBuildOrders& orders) const override;

  void WriteAnimData(COutputStream& out) const;
};

#endif // _CMETAANIMBLEND

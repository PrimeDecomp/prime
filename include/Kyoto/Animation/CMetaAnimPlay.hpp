#ifndef _CMETAANIMPLAY
#define _CMETAANIMPLAY

#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "Kyoto/Animation/CPrimitive.hpp"
#include "Kyoto/Animation/IMetaAnim.hpp"

class CMetaAnimPlay : public IMetaAnim {
  CPrimitive x4_primitive;
  CCharAnimTime x1c_startTime;

public:
  explicit CMetaAnimPlay(CInputStream& in) : x4_primitive(in), x1c_startTime(in) {}
  EMetaAnimType GetType() const override { return kMAT_Play; }

  void GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const override;
  rstl::rc_ptr< CAnimTreeNode >
  VGetAnimationTree(const CAnimSysContext& animSys,
                    const CMetaAnimTreeBuildOrders& orders) const override;

  void WriteAnimData(COutputStream& out) const;
};

#endif // _CMETAANIMPLAY

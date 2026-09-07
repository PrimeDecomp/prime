#ifndef _CMETAANIMBLEND
#define _CMETAANIMBLEND

#include "Kyoto/Animation/IMetaAnim.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/vector.hpp"

class CMetaAnimBlend : public IMetaAnim {
public:
  EMetaAnimType GetType() const override { return kMAT_Blend; }

  void GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const override;
  rstl::ncrc_ptr< CAnimTreeNode >
  VGetAnimationTree(const CAnimSysContext& animSys,
                    const CMetaAnimTreeBuildOrders& orders) const override;

  void WriteAnimData(COutputStream& out) const override;

  explicit CMetaAnimBlend(CInputStream& in);

private:
  rstl::rc_ptr< IMetaAnim > x4_animA;
  rstl::rc_ptr< IMetaAnim > x8_animB;
  float xc_blend;
  bool x10_characterSpaceBlend;
};
CHECK_SIZEOF(CMetaAnimBlend, 0x14)

#endif // _CMETAANIMBLEND

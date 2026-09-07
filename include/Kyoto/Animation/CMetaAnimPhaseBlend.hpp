#ifndef _CMETAANIMPHASEBLEND
#define _CMETAANIMPHASEBLEND

#include "Kyoto/Animation/IMetaAnim.hpp"
#include "rstl/rc_ptr.hpp"

class CMetaAnimPhaseBlend : public IMetaAnim {
public:
  ~CMetaAnimPhaseBlend() override {}
  EMetaAnimType GetType() const override { return kMAT_PhaseBlend; }
  void GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const override;
  rstl::ncrc_ptr< CAnimTreeNode >
  VGetAnimationTree(const CAnimSysContext& animSys,
                    const CMetaAnimTreeBuildOrders& orders) const override;
  void WriteAnimData(COutputStream& out) const override;

  explicit CMetaAnimPhaseBlend(CInputStream& in);

private:
  rstl::rc_ptr< IMetaAnim > x4_animA;
  rstl::rc_ptr< IMetaAnim > x8_animB;
  float xc_blend;
  bool x10_characterSpaceBlend;
};
CHECK_SIZEOF(CMetaAnimPhaseBlend, 0x14)

#endif // _CMETAANIMPHASEBLEND

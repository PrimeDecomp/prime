#ifndef _CMETAANIMSEQUENCE
#define _CMETAANIMSEQUENCE

#include "Kyoto/Animation/IMetaAnim.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/vector.hpp"

class CMetaAnimSequence : public IMetaAnim {
  rstl::vector< rstl::rc_ptr< IMetaAnim > > x4_sequence;
  static rstl::vector< rstl::rc_ptr< IMetaAnim > > CreateSequence(CInputStream& in);

public:
  explicit CMetaAnimSequence(CInputStream& in);
  EMetaAnimType GetType() const override { return kMAT_Sequence; }

  void GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const override;
  rstl::rc_ptr< CAnimTreeNode >
  VGetAnimationTree(const CAnimSysContext& animSys,
                    const CMetaAnimTreeBuildOrders& orders) const override;

  void WriteAnimData(COutputStream&) const;
};

#endif // _CMETAANIMSEQUENCE

#ifndef _CMETAANIMRANDOM
#define _CMETAANIMRANDOM

#include "Kyoto/Animation/IMetaAnim.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/vector.hpp"

class CMetaAnimRandom : public IMetaAnim {
  typedef rstl::vector< rstl::pair< rstl::rc_ptr< IMetaAnim >, int > > RandomData;
  RandomData x4_randomData;
  static RandomData CreateRandomData(CInputStream& in);

public:
  explicit CMetaAnimRandom(CInputStream& in);
  EMetaAnimType GetType() const override { return kMAT_Random; }

  void GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const override;
  rstl::rc_ptr< CAnimTreeNode >
  VGetAnimationTree(const CAnimSysContext& animSys,
                    const CMetaAnimTreeBuildOrders& orders) const override;

  void WriteAnimData(COutputStream& out) const;
};

#endif // _CMETAANIMRANDOM

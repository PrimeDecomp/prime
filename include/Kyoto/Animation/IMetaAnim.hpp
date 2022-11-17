#ifndef _IMETAANIM
#define _IMETAANIM

#include "rstl/rc_ptr.hpp"
#include "rstl/set.hpp"

enum EMetaAnimType { kMAT_Play, kMAT_Blend, kMAT_PhaseBlend, kMAT_Random, kMAT_Sequence };

class CAnimTreeNode;
class CPrimitive;
class CCharAnimTime;
class IAnimReader;
class CAnimSysContext;
class CMetaAnimTreeBuildOrders;
class CPreAdvanceIndicator;

class IMetaAnim {
public:
  virtual ~IMetaAnim();

  virtual rstl::rc_ptr< CAnimTreeNode >
  GetAnimationTree(const CAnimSysContext& animSys, const CMetaAnimTreeBuildOrders& orders) const;
  virtual void GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const = 0;
  virtual EMetaAnimType GetType() const = 0;
  virtual rstl::rc_ptr< CAnimTreeNode >
  VGetAnimationTree(const CAnimSysContext& animSys,
                    const CMetaAnimTreeBuildOrders& orders) const = 0;

  static void AdvanceAnim(IAnimReader& anim, const CCharAnimTime& dt);
  static CCharAnimTime GetTime(const CPreAdvanceIndicator& ind, const IAnimReader& anim);
};

#endif // _IMETAANIM

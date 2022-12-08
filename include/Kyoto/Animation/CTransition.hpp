#ifndef _CTRANSITION
#define _CTRANSITION

#include "rstl/rc_ptr.hpp"
#include "rstl/pair.hpp"


class IMetaTrans;
class CInputStream;
class CTransition {
  uint x0_id;
  uint x4_animA;
  uint x8_animB;
  rstl::rc_ptr<IMetaTrans> xc_trans;

public:
  explicit CTransition(CInputStream& in);
  u32 GetAnimA() const { return x4_animA; }
  u32 GetAnimB() const { return x8_animB; }
  rstl::pair<uint, uint> GetAnimPair() const { return rstl::pair<uint, uint>(x4_animA, x8_animB); }
  const rstl::rc_ptr<IMetaTrans>& GetMetaTrans() const { return xc_trans; }
};

#endif // _CTRANSITION

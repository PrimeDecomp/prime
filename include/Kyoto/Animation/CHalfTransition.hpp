#ifndef _CHALFTRANSITION
#define _CHALFTRANSITION

#include "rstl/rc_ptr.hpp"

class IMetaTrans;
class CInputStream;
class CHalfTransition {
public:
  explicit CHalfTransition(CInputStream& in);

private:
  uint x0_id;
  rstl::rc_ptr<IMetaTrans> x4_trans;
};

#endif // _CHALFTRANSITION

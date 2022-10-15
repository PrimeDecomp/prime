#ifndef _CSEGIDLIST
#define _CSEGIDLIST

#include "Kyoto/Animation/CSegId.hpp"
#include "rstl/vector.hpp"

class CInputStream;
class CSegIdList {
public:
  CSegIdList(CInputStream& in);
public:
  rstl::vector<CSegId> x0_segList;
};

#endif // _CSEGIDLIST

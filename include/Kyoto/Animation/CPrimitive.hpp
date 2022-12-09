#ifndef _CPRIMITIVE
#define _CPRIMITIVE

#include "Kyoto/SObjectTag.hpp"

#include "rstl/string.hpp"

class CInputStream;
class CPrimitive {
public:
  CPrimitive(CInputStream& in);
  CAssetId GetAnimResId() const { return x0_animId; }

private:
  CAssetId x0_animId;
  int x4_animIdx;
  rstl::string x8_animName;
};

#endif // _CPRIMITIVE

#ifndef _CPRIMITIVE
#define _CPRIMITIVE

#include "Kyoto/SObjectTag.hpp"

#include "rstl/string.hpp"

class CInputStream;
class COutputStream;
class CPrimitive {
public:
  CPrimitive(CInputStream& in);
  void PutTo(COutputStream& out) const;
  CAssetId GetAnimResId() const { return x0_animId; }

private:
  CAssetId x0_animId;
  int x4_animIdx;
  rstl::string x8_animName;
};

#endif // _CPRIMITIVE

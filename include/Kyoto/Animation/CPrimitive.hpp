#ifndef _CPRIMITIVE
#define _CPRIMITIVE

#include "Kyoto/SObjectTag.hpp"

#include "rstl/StringExtras.hpp"
#include "rstl/string.hpp"

class CInputStream;
class COutputStream;
class CPrimitive {
public:
  CPrimitive(CInputStream& in);
  void PutTo(COutputStream& out) const;
  const CAssetId GetAnimResId() const { return x0_animId; }
  CAssetId GetResourceId() const { return x0_animId; }
  uint GetAnimDatabaseIndex() const { return x4_animIdx; }
  const rstl::string& GetName() const { return x8_animName; }
  int Compare(const CPrimitive& other) const {
    return CStringExtras::CompareCaseInsensitive(x8_animName, other.x8_animName);
  }

private:
  CAssetId x0_animId;
  uint x4_animIdx;
  rstl::string x8_animName;
};

inline bool operator<(const CPrimitive& a, const CPrimitive& b) { return a.Compare(b) < 0; }

#endif // _CPRIMITIVE

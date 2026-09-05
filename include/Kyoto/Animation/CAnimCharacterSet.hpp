#ifndef _CANIMCHARACTERSET
#define _CANIMCHARACTERSET

#include "Kyoto/Animation/CAnimationSet.hpp"
#include "Kyoto/Animation/CCharacterSet.hpp"
#include "types.h"

class CAnimCharacterSet {
public:
  CAnimCharacterSet(CInputStream& in);

  const CCharacterSet& GetCharacterSet() const { return mCharacterSet; }
  const CAnimationSet& GetAnimationSet() const { return mAnimationSet; }

private:
  ushort mVersion;
  CCharacterSet mCharacterSet;
  CAnimationSet mAnimationSet;
};

CHECK_SIZEOF(CAnimCharacterSet, 0x78)

#endif // _CANIMCHARACTERSET

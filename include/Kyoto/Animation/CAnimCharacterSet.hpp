#ifndef _CANIMCHARACTERSET
#define _CANIMCHARACTERSET

#include "Kyoto/Animation/CAnimationSet.hpp"
#include "Kyoto/Animation/CCharacterSet.hpp"
#include "types.h"

class CAnimCharacterSet {
public:
  CAnimCharacterSet(CInputStream& in);

private:
  ushort mVersion;
  CCharacterSet mCharacterSet;
  CAnimationSet mAnimationSet;
};

#endif // _CANIMCHARACTERSET

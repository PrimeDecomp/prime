#ifndef _CANIMATIONPARAMETERS
#define _CANIMATIONPARAMETERS

#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

class CAnimationParameters {
  CAssetId x0_ancs;
  uint x4_charIdx;
  uint x8_defaultAnim;

public:
  CAnimationParameters(CAssetId ancs, uint charIdx, uint defaultAnim)
  : x0_ancs(ancs), x4_charIdx(charIdx), x8_defaultAnim(defaultAnim) {}

  CAnimationParameters(CInputStream& in)
  : x0_ancs(in.ReadLong()), x4_charIdx(in.ReadLong()), x8_defaultAnim(in.ReadLong()) {}

  CAssetId GetACSFile() const { return x0_ancs; }
  uint GetCharacter() const { return x4_charIdx; }
  uint GetInitialAnimation() const { return x8_defaultAnim; }
};


#endif // _CANIMATIONPARAMETERS

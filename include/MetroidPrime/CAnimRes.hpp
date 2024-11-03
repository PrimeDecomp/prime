#ifndef _CANIMRES
#define _CANIMRES

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CAnimRes {
private:
  CAssetId x0_ancsId;
  int x4_charIdx;
  CVector3f x8_scale;
  bool x14_canLoop;
  int x18_defaultAnim;

public:
  // CAnimRes()
  // : x4_charIdx(-1), x14_canLoop(false), x8_scale(????), x18_defaultAnim(-1) {}

  CAnimRes(CAssetId ancs, const int charIdx, const CVector3f& scale, int defaultAnim, bool loop)
  : x0_ancsId(ancs)
  , x4_charIdx(charIdx)
  , x8_scale(scale)
  , x14_canLoop(loop)
  , x18_defaultAnim(defaultAnim) {}

  CAssetId GetId() const { return x0_ancsId; }
  // or GetBodyType__8CAnimResCFv ?
  int GetCharacterNodeId() const { return x4_charIdx; }
  const CVector3f& GetScale() const { return x8_scale; }
  int GetDefaultAnim() const { return x18_defaultAnim; }
  bool CanLoop() const { return x14_canLoop; }

  static const int kDefaultCharIdx;
};
CHECK_SIZEOF(CAnimRes, 0x1c)

#endif // _CANIMRES

#ifndef _CANIMRES_HPP
#define _CANIMRES_HPP

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
};
CHECK_SIZEOF(CAnimRes, 0x1c)

#endif
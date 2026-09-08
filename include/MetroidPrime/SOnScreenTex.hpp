#ifndef _SONSCREENTEX
#define _SONSCREENTEX

#include "Kyoto/Math/CVector2i.hpp"
#include "types.h"

struct SOnScreenTex {
  CAssetId x0_id;
  CVector2i x4_extent;
  CVector2i xc_offset;

  SOnScreenTex() : x0_id(kInvalidAssetId), x4_extent(0, 0), xc_offset(0, 0) {}
};
CHECK_SIZEOF(SOnScreenTex, 0x14)

#endif

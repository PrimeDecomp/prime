#ifndef _CFLAMEINFO
#define _CFLAMEINFO

#include "Kyoto/SObjectTag.hpp"

class CInputStream;
class CFlameInfo {
  friend class CFlameThrower;
  s32 x0_propertyCount;
  s32 x4_attributes;
  CAssetId x8_flameFxId;
  s32 xc_length;
  float x10_;
  float x14_;
  float x18_;
  float x1c_;

public:
  CFlameInfo(s32 w1, s32 w2, CAssetId flameFxId, s32 w3, float f1, float f2, float f3)
  : x0_propertyCount(w1)
  , x4_attributes(w2)
  , x8_flameFxId(flameFxId)
  , xc_length(w3)
  , x10_(f1)
  , x18_(f2)
  , x1c_(f3) {}
  CFlameInfo(CInputStream& in);

  int GetAttributes() const { return x4_attributes; }
  int GetLength() const { return xc_length; }
  CAssetId GetFlameFxId() const { return x8_flameFxId; }
};
#endif

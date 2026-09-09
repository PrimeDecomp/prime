#ifndef _CWEAPONASSETINFO
#define _CWEAPONASSETINFO

#include "MetroidPrime/TGameTypes.hpp"

class CInputStream;

struct CWeaponAssetInfo {
  int count;
  CAssetId data[8];

  explicit CWeaponAssetInfo(CInputStream& in);

  CWeaponAssetInfo(const CWeaponAssetInfo& other) : count(other.count) {
    for (int i = 0; i < 8; ++i) {
      data[i] = other.data[i];
    }
  }

  explicit CWeaponAssetInfo(const CAssetId a = kInvalidAssetId, const CAssetId b = kInvalidAssetId,
                            const CAssetId c = kInvalidAssetId, const CAssetId d = kInvalidAssetId,
                            const CAssetId e = kInvalidAssetId, const CAssetId f = kInvalidAssetId,
                            const CAssetId g = kInvalidAssetId, const CAssetId h = kInvalidAssetId)
  : count(8) {
    data[0] = a;
    data[1] = b;
    data[2] = c;
    data[3] = d;
    data[4] = e;
    data[5] = f;
    data[6] = g;
    data[7] = h;
  }
};
CHECK_SIZEOF(CWeaponAssetInfo, 0x24)

#endif // _CWEAPONASSETINFO

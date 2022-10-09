#ifndef _CICEBEAM
#define _CICEBEAM

#include "types.h"

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CIceBeam : public CGunWeapon {
public:
  CIceBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
           EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CIceBeam();

private:
  uchar x21c_pad[0x30];
};
CHECK_SIZEOF(CIceBeam, 0x24c)

#endif // _CICEBEAM

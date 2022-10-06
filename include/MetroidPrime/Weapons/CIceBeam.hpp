#ifndef _CICEBEAM_HPP
#define _CICEBEAM_HPP

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CIceBeam : public CGunWeapon {
public:
  CIceBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
             EMaterialTypes playerMaterial, const CVector3f& scale);

private:
  u8 x21c_pad[0x30];
};
CHECK_SIZEOF(CIceBeam, 0x24c)

#endif // _CICEBEAM_HPP

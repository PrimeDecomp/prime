#ifndef _CPLASMABEAM_HPP
#define _CPLASMABEAM_HPP

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CPlasmaBeam : public CGunWeapon {
public:
  CPlasmaBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
             EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CPlasmaBeam();
private:
  u8 x21c_pad[0x24];
};
CHECK_SIZEOF(CPlasmaBeam, 0x240)

#endif // _CPLASMABEAM_HPP

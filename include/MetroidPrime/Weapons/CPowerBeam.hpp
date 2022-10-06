#ifndef _CPOWERBEAM_HPP
#define _CPOWERBEAM_HPP

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CPowerBeam : public CGunWeapon {
public:
  CPowerBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
             EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CPowerBeam();

private:
  u8 x21c_pad[0x2C];
};
CHECK_SIZEOF(CPowerBeam, 0x248)

#endif // _CPOWERBEAM_HPP

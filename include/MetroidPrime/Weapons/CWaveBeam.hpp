#ifndef _CWAVEBEAM_HPP
#define _CWAVEBEAM_HPP

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CWaveBeam : public CGunWeapon {
public:
  CWaveBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
             EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CWaveBeam();
private:
  u8 x21c_pad[0x40];
};
CHECK_SIZEOF(CWaveBeam, 0x25c)

#endif // _CWAVEBEAM_HPP

#ifndef _CPHAZONBEAM
#define _CPHAZONBEAM

#include "types.h"

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CPhazonBeam : public CGunWeapon {
public:
  CPhazonBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
              EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CPhazonBeam();

private:
  uchar x21c_pad[0x60];
};
CHECK_SIZEOF(CPhazonBeam, 0x27c)

#endif // _CPHAZONBEAM

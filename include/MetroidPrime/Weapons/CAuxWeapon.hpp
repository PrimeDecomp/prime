#ifndef _CAUXWEAPON_HPP
#define _CAUXWEAPON_HPP

#include "MetroidPrime/TGameTypes.hpp"

class CAuxWeapon {
public:
  explicit CAuxWeapon(TUniqueId playerId);

private:
  u8 x0_pad[0x84];
};
CHECK_SIZEOF(CAuxWeapon, 0x84)

#endif // _CAUXWEAPON_HPP

#ifndef _CAUXWEAPON
#define _CAUXWEAPON

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

class CAuxWeapon {
public:
  explicit CAuxWeapon(TUniqueId playerId);

  bool IsComboFxActive(const CStateManager& mgr) const;

private:
  u8 x0_pad[0x84];
};
CHECK_SIZEOF(CAuxWeapon, 0x84)

#endif // _CAUXWEAPON

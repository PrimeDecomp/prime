#ifndef _CWEAPONMGR
#define _CWEAPONMGR

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/map.hpp"
#include "rstl/reserved_vector.hpp"

class CWeaponMgr {
private:
  rstl::map< TUniqueId, rstl::reserved_vector< int, 15 > > x0_weapons;
};
CHECK_SIZEOF(CWeaponMgr, 0x14);

#endif // _CWEAPONMGR

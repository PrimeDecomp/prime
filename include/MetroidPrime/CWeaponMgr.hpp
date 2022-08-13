#ifndef _CWEAPONMANAGER_HPP
#define _CWEAPONMANAGER_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/map.hpp"
#include "rstl/reserved_vector.hpp"

class CWeaponMgr {
private:
  rstl::map< TUniqueId, rstl::reserved_vector< s32, 15 > > x0_weapons;
};
CHECK_SIZEOF(CWeaponMgr, 0x14);

#endif
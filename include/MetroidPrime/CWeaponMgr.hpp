#ifndef _CWEAPONMGR
#define _CWEAPONMGR

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Weapons/WeaponTypes.hpp"

#include "rstl/map.hpp"
#include "rstl/reserved_vector.hpp"

class CWeaponMgr {
public:
  typedef rstl::reserved_vector< int, 15 > Vec;

  CWeaponMgr();
  void Remove(TUniqueId);
  void IncrCount(TUniqueId, EWeaponType);
  void DecrCount(TUniqueId, EWeaponType);
  int GetNumActive(TUniqueId, EWeaponType) const;

  void Add(TUniqueId uid, EWeaponType type) {
    rstl::pair< TUniqueId, Vec > newIndex(uid, Vec(0));
    newIndex.second[type] += 1;
    x0_weapons.insert(newIndex);
  }

  Vec* GetIndex(TUniqueId uid) const {
    rstl::map< TUniqueId, Vec >::const_iterator iter = x0_weapons.find(uid);

    if (iter != x0_weapons.end()) {
      return const_cast<Vec*>(&iter->second);
    }
    return nullptr;
  }

private:
  rstl::map< TUniqueId, Vec > x0_weapons;
};
CHECK_SIZEOF(CWeaponMgr, 0x14);

#endif // _CWEAPONMGR

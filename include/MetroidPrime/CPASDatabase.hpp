#ifndef _CPASDATABASE_HPP
#define _CPASDATABASE_HPP

#include "types.h"

#include "MetroidPrime/CPASAnimState.hpp"

#include "rstl/vector.hpp"
#include "rstl/pair.hpp"

class CPASAnimParmData;
class CRandom16;

class CPASDatabase {
private:
  rstl::vector< CPASAnimState > x0_states;
  int x10_defaultState;

public:
  rstl::pair<float, int> FindBestAnimation(const CPASAnimParmData&, CRandom16&, int) const;
};
CHECK_SIZEOF(CPASDatabase, 0x14)

#endif

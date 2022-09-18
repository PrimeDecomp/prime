#ifndef _CPASDATABASE_HPP
#define _CPASDATABASE_HPP

#include "types.h"

#include "MetroidPrime/CPASAnimState.hpp"

#include "rstl/vector.hpp"

class CPASDatabase {
private:
  rstl::vector< CPASAnimState > x0_states;
  int x10_defaultState;
};
CHECK_SIZEOF(CPASDatabase, 0x14)

#endif

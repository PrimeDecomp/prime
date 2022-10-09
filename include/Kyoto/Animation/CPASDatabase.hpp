#ifndef _CPASDATABASE
#define _CPASDATABASE

#include "types.h"

#include "Kyoto/Animation/CPASAnimState.hpp"

#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

class CPASAnimParmData;
class CRandom16;

class CPASDatabase {
private:
  rstl::vector< CPASAnimState > x0_states;
  int x10_defaultState;

public:
  const CPASAnimState* GetAnimState(int) const;
  rstl::pair< float, int > FindBestAnimation(const CPASAnimParmData&, CRandom16&, int) const;
};
CHECK_SIZEOF(CPASDatabase, 0x14)

#endif // _CPASDATABASE

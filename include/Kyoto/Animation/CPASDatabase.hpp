#ifndef _CPASDATABASE
#define _CPASDATABASE

#include "types.h"

#include "Kyoto/Animation/CPASAnimState.hpp"

#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

class CPASAnimParmData;
class CRandom16;

class CPASDatabase {

public:
  bool HasState(int id) const;
  const CPASAnimState* GetAnimState(int) const;

  rstl::pair< float, int > FindBestAnimation(const CPASAnimParmData& data, int ignoreAnim) const;
  rstl::pair< float, int > FindBestAnimation(const CPASAnimParmData&, CRandom16&, int) const;

  size_t GetNumAnimStates() const;                           // { return x0_states.size(); }
  const CPASAnimState* GetAnimStateByIndex(int index) const; /* {
    if (index >= x0_states.size()) {
      return nullptr;
    }

    return &x0_states[index];
  }*/

  int GetDefaultState() const { return x10_defaultState; }
private:
  rstl::vector< CPASAnimState > x0_states;
  int x10_defaultState;
};
CHECK_SIZEOF(CPASDatabase, 0x14)

#endif // _CPASDATABASE

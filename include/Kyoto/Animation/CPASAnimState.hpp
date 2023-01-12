#ifndef _CPASANIMSTATE
#define _CPASANIMSTATE

#include "types.h"

#include "Kyoto/Animation/CPASAnimInfo.hpp"
#include "Kyoto/Animation/CPASAnimParm.hpp"
#include "Kyoto/Animation/CPASParmInfo.hpp"
#include "Kyoto/Animation/CharacterCommon.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CPASAnimState {
public:
  CPASAnimParm GetAnimParmData(int, unsigned int) const;

  pas::EAnimationState GetStateId() const { return x0_id; }
  bool HasAnims() const { return static_cast< uint >(x14_anims.size()) != 0; }

private:
  pas::EAnimationState x0_id;
  rstl::vector< CPASParmInfo > x4_parms;
  rstl::vector< CPASAnimInfo > x14_anims;
  rstl::vector< int > x24_selectionCache;
};
CHECK_SIZEOF(CPASAnimState, 0x34)

#endif // _CPASANIMSTATE

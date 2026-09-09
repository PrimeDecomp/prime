#ifndef _CPASANIMSTATE
#define _CPASANIMSTATE

#include "types.h"

#include "Kyoto/Animation/CPASAnimInfo.hpp"
#include "Kyoto/Animation/CPASAnimParm.hpp"
#include "Kyoto/Animation/CPASParmInfo.hpp"
#include "Kyoto/Animation/CharacterCommon.hpp"

#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CRandom16;

class CPASAnimState {
public:
  CPASAnimState(int id);
  CPASAnimState(CInputStream& in);

  CPASAnimParm GetAnimParmData(int, unsigned int) const;
  rstl::pair< float, int > FindBestAnimation(const rstl::reserved_vector< CPASAnimParm, 8 >& parms,
                                             CRandom16& random, int ignoreAnim) const;

  pas::EAnimationState GetStateId() const { return x0_id; }
  bool HasAnims() const { return static_cast< uint >(x14_anims.size()) != 0; }

  bool operator<(const CPASAnimState& rhs) const { return x0_id < rhs.x0_id; }

private:
  float ComputeExactMatchWeight(uint idx, const CPASAnimParm& parm,
                                CPASAnimParm::UParmValue value) const;
  float ComputePercentErrorWeight(uint idx, const CPASAnimParm& parm,
                                  CPASAnimParm::UParmValue value) const;
  float ComputeAngularPercentErrorWeight(uint idx, const CPASAnimParm& parm,
                                         CPASAnimParm::UParmValue value) const;
  int PickRandomAnimation(CRandom16& random) const;

  pas::EAnimationState x0_id;
  rstl::vector< CPASParmInfo > x4_parms;
  rstl::vector< CPASAnimInfo > x14_anims;
  mutable rstl::vector< int > x24_selectionCache;
};
CHECK_SIZEOF(CPASAnimState, 0x34)

#endif // _CPASANIMSTATE

#ifndef _CPASANIMPARMDATA
#define _CPASANIMPARMDATA

#include "Kyoto/Animation/CPASAnimState.hpp"

class CPASAnimParmData {
  pas::EAnimationState x0_stateId;
  rstl::reserved_vector< CPASAnimParm, 8 > x4_parms;

public:
  CPASAnimParmData(pas::EAnimationState stateId,
                   const CPASAnimParm& parm1 = CPASAnimParm::NoParameter(),
                   const CPASAnimParm& parm2 = CPASAnimParm::NoParameter(),
                   const CPASAnimParm& parm3 = CPASAnimParm::NoParameter(),
                   const CPASAnimParm& parm4 = CPASAnimParm::NoParameter(),
                   const CPASAnimParm& parm5 = CPASAnimParm::NoParameter(),
                   const CPASAnimParm& parm6 = CPASAnimParm::NoParameter(),
                   const CPASAnimParm& parm7 = CPASAnimParm::NoParameter(),
                   const CPASAnimParm& parm8 = CPASAnimParm::NoParameter());
  /*
  : x0_stateId(stateId) {
    x4_parms.push_back(parm1);
    x4_parms.push_back(parm2);
    x4_parms.push_back(parm3);
    x4_parms.push_back(parm4);
    x4_parms.push_back(parm5);
    x4_parms.push_back(parm6);
    x4_parms.push_back(parm7);
    x4_parms.push_back(parm8);
  }
  */
  ~CPASAnimParmData() {}

  pas::EAnimationState GetStateId() const { return x0_stateId; }
  const rstl::reserved_vector< CPASAnimParm, 8 >& GetAnimParmData() const { return x4_parms; }

  static CPASAnimParmData NoParameters(pas::EAnimationState stateId) {
    return CPASAnimParmData(stateId);
  }
};

#endif // _CPASANIMPARMDATA

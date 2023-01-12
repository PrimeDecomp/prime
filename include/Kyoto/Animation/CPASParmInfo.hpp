#ifndef _CPASPARMINFO
#define _CPASPARMINFO

#include "Kyoto/Animation/CPASAnimParm.hpp"

class CInputStream;
class CPASParmInfo {
public:
  enum EWeightFunction {
    kWF_Invalid = -1,
    kWF_ExactMatch,
    kWF_PercentError,
    kWF_AngularPercent,
    kWF_NoWeight,
  };

  CPASParmInfo(CInputStream& in);
private:
  CPASAnimParm::EParmType x0_type;
  EWeightFunction x4_weightFunction;
  float x8_weight;
  CPASAnimParm::UParmValue xc_min;
  CPASAnimParm::UParmValue x10_max;
};

#endif // _CPASPARMINFO

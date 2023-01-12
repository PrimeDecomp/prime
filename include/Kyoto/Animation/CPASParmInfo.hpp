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

  CPASAnimParm::EParmType GetParameterType() const { return x0_type; }
  EWeightFunction GetWeightFunction() const { return x4_weightFunction; }
  float GetWeight() const { return x8_weight; }
  CPASAnimParm::UParmValue GetParameterMinValue() const { return xc_min; }
  CPASAnimParm::UParmValue GetParameterMaxValue() const { return x10_max; }

private:
  CPASAnimParm::EParmType x0_type;
  EWeightFunction x4_weightFunction;
  float x8_weight;
  CPASAnimParm::UParmValue xc_min;
  CPASAnimParm::UParmValue x10_max;
};

#endif // _CPASPARMINFO

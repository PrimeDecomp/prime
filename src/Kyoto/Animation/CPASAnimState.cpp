#include "Kyoto/Animation/CPASAnimState.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "rstl/algorithm.hpp"
#include "rstl/math.hpp"

CPASAnimState::CPASAnimState(const int id) : x0_id(static_cast< pas::EAnimationState >(id)) {}

CPASAnimState::CPASAnimState(CInputStream& in) : x0_id(pas::kAS_Invalid) {
  x0_id = static_cast< pas::EAnimationState >(in.Get< int >());
  const uint parmCount = in.Get< uint >();
  const uint animCount = in.Get< uint >();

  x4_parms.reserve(parmCount);
  x14_anims.reserve(animCount);
  x24_selectionCache.reserve(animCount);

  for (uint i = 0; i < parmCount; i++) {
    x4_parms.push_back(CPASParmInfo(in));
  }

  rstl::reserved_vector< CPASAnimParm::UParmValue, 8 > parms;
  for (uint i = 0; i < animCount; i++) {
    int id = in.Get< int >();
    parms.clear();
    for (uint j = 0; j < parmCount; j++) {
      CPASAnimParm::UParmValue val;
      switch (x4_parms[j].GetParameterType()) {
      case CPASAnimParm::kPT_Int32:
        val.m_int = in.Get< int >();
        break;
      case CPASAnimParm::kPT_UInt32:
        val.m_uint = in.Get< uint >();
        break;
      case CPASAnimParm::kPT_Float:
        val.m_float = in.Get< float >();
        break;
      case CPASAnimParm::kPT_Bool:
        val.m_bool = in.Get< bool >();
        break;
      case CPASAnimParm::kPT_Enum:
        val.m_uint = in.Get< uint >();
        break;
      default:
        val.m_int = 0;
        break;
      }

      parms.push_back(val);
    }

    CPASAnimInfo animInfo(id, parms);
    rstl::vector< CPASAnimInfo >::iterator iter =
        rstl::lower_bound(x14_anims.begin(), x14_anims.end(), animInfo);
    x14_anims.insert(iter, animInfo);
  }
}

CPASAnimParm CPASAnimState::GetAnimParmData(int animId, uint parmIdx) const {
  AUTO(it, rstl::binary_find(x14_anims.begin(), x14_anims.end(), CPASAnimInfo(animId)));
  if (it != x14_anims.end()) {
    return it->GetAnimParmData(parmIdx, x4_parms[parmIdx].GetParameterType());
  }
  return CPASAnimParm::NoParameter();
}

rstl::pair< float, int >
CPASAnimState::FindBestAnimation(const rstl::reserved_vector< CPASAnimParm, 8 >& parms,
                                 CRandom16& random, int ignoreAnim) const {
  float weight = -1.f;
  x24_selectionCache.clear();
  if (HasAnims()) {
    for (AUTO(it, x14_anims.begin()); it != x14_anims.end(); ++it) {
      if (it->GetAnimId() == ignoreAnim) {
        continue;
      }

      float animWeight = x4_parms.size() > 0 ? 0.f : 1.f;
      int unweightedCount = 0;
      for (uint i = 0; i < x4_parms.size(); ++i) {
        const CPASAnimParm::UParmValue& value = it->GetAnimParmValue(i);
        const CPASParmInfo& info = x4_parms[i];
        const float parmWeight = info.GetParameterWeight();
        float computedWeight = 0.f;
        switch (info.GetWeightFunction()) {
        case CPASParmInfo::kWF_ExactMatch:
          computedWeight = ComputeExactMatchWeight(i, parms[i], value);
          break;
        case CPASParmInfo::kWF_PercentError:
          computedWeight = ComputePercentErrorWeight(i, parms[i], value);
          break;
        case CPASParmInfo::kWF_AngularPercent:
          computedWeight = ComputeAngularPercentErrorWeight(i, parms[i], value);
          break;
        case CPASParmInfo::kWF_NoWeight:
          ++unweightedCount;
          break;
        }
        animWeight += parmWeight * computedWeight;
      }

      if (unweightedCount == x4_parms.size()) {
        animWeight = 1.f;
      }
      if (animWeight > weight) {
        x24_selectionCache.clear();
        x24_selectionCache.push_back(it->GetAnimId());
        weight = animWeight;
      } else if (animWeight == weight) {
        x24_selectionCache.push_back(it->GetAnimId());
        weight = animWeight;
      }
    }
  }
  return rstl::pair< float, int >(weight, PickRandomAnimation(random));
}

float CPASAnimState::ComputeExactMatchWeight(uint idx, const CPASAnimParm& parm,
                                             CPASAnimParm::UParmValue value) const {
  float weight = 0.f;
  switch (parm.GetParameterType()) {
  case CPASAnimParm::kPT_Int32:
    weight = value.m_int == parm.GetInt32Value() ? 1.f : 0.f;
    break;
  case CPASAnimParm::kPT_UInt32:
    weight = value.m_uint == parm.GetUint32Value() ? 1.f : 0.f;
    break;
  case CPASAnimParm::kPT_Float:
    weight = CMath::AbsF(parm.GetReal32Value() - value.m_float) < FLT_EPSILON ? 1.f : 0.f;
    break;
  case CPASAnimParm::kPT_Bool:
    weight = value.m_bool == parm.GetBoolValue() ? 1.f : 0.f;
    break;
  case CPASAnimParm::kPT_Enum:
    weight = value.m_int == parm.GetEnumValue() ? 1.f : 0.f;
    break;
  }
  return weight;
}

float CPASAnimState::ComputePercentErrorWeight(uint idx, const CPASAnimParm& parm,
                                               CPASAnimParm::UParmValue value) const {
  float range = 0.f;
  float error = 0.f;
  switch (parm.GetParameterType()) {
  case CPASAnimParm::kPT_Int32:
    range = x4_parms[idx].GetParameterMaxValue().m_int - x4_parms[idx].GetParameterMinValue().m_int;
    error = CMath::AbsF(parm.GetInt32Value() - value.m_int);
    break;
  case CPASAnimParm::kPT_UInt32:
    range =
        x4_parms[idx].GetParameterMaxValue().m_uint - x4_parms[idx].GetParameterMinValue().m_uint;
    if (parm.GetUint32Value() > value.m_uint) {
      error = parm.GetUint32Value() - value.m_uint;
    } else {
      error = value.m_uint - parm.GetUint32Value();
    }
    break;
  case CPASAnimParm::kPT_Float:
    range =
        x4_parms[idx].GetParameterMaxValue().m_float - x4_parms[idx].GetParameterMinValue().m_float;
    error = CMath::AbsF(parm.GetReal32Value() - value.m_float);
    break;
  case CPASAnimParm::kPT_Bool:
    error = value.m_bool == parm.GetBoolValue() ? 0.f : 1.f;
    break;
  case CPASAnimParm::kPT_Enum:
    range = x4_parms[idx].GetParameterMaxValue().m_int - x4_parms[idx].GetParameterMinValue().m_int;
    error = CMath::AbsF(parm.GetEnumValue() - value.m_int);
    break;
  }
  if (range > FLT_EPSILON) {
    return 1.f - error / range;
  }
  return error < FLT_EPSILON ? 1.f : 0.f;
}

float CPASAnimState::ComputeAngularPercentErrorWeight(uint idx, const CPASAnimParm& parm,
                                                      CPASAnimParm::UParmValue value) const {
  float range = 0.f;
  float error = 0.f;
  switch (parm.GetParameterType()) {
  case CPASAnimParm::kPT_Int32:
    range = x4_parms[idx].GetParameterMaxValue().m_int - x4_parms[idx].GetParameterMinValue().m_int;
    error = CMath::AbsF(parm.GetInt32Value() - value.m_int);
    break;
  case CPASAnimParm::kPT_UInt32: {
    range =
        x4_parms[idx].GetParameterMaxValue().m_uint - x4_parms[idx].GetParameterMinValue().m_uint;
    const uint parmValue = parm.GetUint32Value();
    error = parmValue > value.m_uint ? parmValue - value.m_uint : value.m_uint - parmValue;
    break;
  }
  case CPASAnimParm::kPT_Float:
    range =
        x4_parms[idx].GetParameterMaxValue().m_float - x4_parms[idx].GetParameterMinValue().m_float;
    error = CMath::AbsF(parm.GetReal32Value() - value.m_float);
    break;
  case CPASAnimParm::kPT_Bool:
    error = value.m_bool == parm.GetBoolValue() ? 0.f : 1.f;
    break;
  case CPASAnimParm::kPT_Enum:
    range =
        x4_parms[idx].GetParameterMaxValue().m_int - x4_parms[idx].GetParameterMinValue().m_int + 1;
    error = CMath::AbsF(parm.GetEnumValue() - value.m_int);
    break;
  }
  if (range > FLT_EPSILON) {
    return rstl::min_val(
        rstl::max_val(1.f - (error > 0.5f * range ? range - error : error) / (0.5f * range), 0.f),
        1.f);
  }
  return error < FLT_EPSILON ? 1.f : 0.f;
}

int CPASAnimState::PickRandomAnimation(CRandom16& random) const {
  int anim = -1;
  switch (x24_selectionCache.size()) {
  case 0:
    break;
  case 1:
    anim = x24_selectionCache[0];
    break;
  default: {
    int idx = static_cast< int >(random.Float() * x24_selectionCache.size());
    if (idx == x24_selectionCache.size()) {
      --idx;
    }
    anim = x24_selectionCache[idx];
    break;
  }
  }
  return anim;
}

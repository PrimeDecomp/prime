#include "Kyoto/Animation/CPASParmInfo.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CPASParmInfo::CPASParmInfo(CInputStream& in)
: x0_type(CPASAnimParm::kPT_None)
, x4_weightFunction(kWF_Invalid)
, x8_weight(0.f)
, xc_min(CPASAnimParm::FromInt32(0).GetParameter())
, x10_max(CPASAnimParm::FromInt32(0).GetParameter()) {

  CPASAnimParm::EParmType type = CPASAnimParm::EParmType(in.ReadInt32());
  x0_type = type;
  x4_weightFunction = EWeightFunction(in.ReadInt32());
  x8_weight = in.ReadFloat();

  switch (type) {
  case CPASAnimParm::kPT_Int32:
    xc_min.m_int = in.ReadInt32();
    x10_max.m_int = in.ReadInt32();
    break;
  case CPASAnimParm::kPT_UInt32:
    xc_min.m_uint = in.ReadLong();
    x10_max.m_uint = in.ReadLong();
    break;
  case CPASAnimParm::kPT_Float:
    xc_min.m_float = in.ReadFloat();
    x10_max.m_float = in.ReadFloat();
    break;
  case CPASAnimParm::kPT_Bool:
    xc_min.m_bool = in.ReadBool();
    x10_max.m_bool = in.ReadBool();
    break;
  case CPASAnimParm::kPT_Enum:
    xc_min.m_int = in.ReadInt32();
    x10_max.m_int = in.ReadInt32();
    break;
  default:
    break;
  }
}

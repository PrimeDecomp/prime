#include "MetroidPrime/CHealthInfo.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CHealthInfo::CHealthInfo(CInputStream& in)
{
  in.ReadLong();
  x0_health = in.ReadFloat();
  x4_knockbackResistance = in.ReadFloat();
}

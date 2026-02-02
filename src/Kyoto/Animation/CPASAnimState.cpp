#include "Kyoto/Animation/CPASAnimState.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "rstl/algorithm.hpp"

CPASAnimState::CPASAnimState(const int id) : x0_id(static_cast< pas::EAnimationState >(id)) {}

CPASAnimState::CPASAnimState(CInputStream& in) : x0_id(pas::kAS_Invalid) {
  x0_id = static_cast<pas::EAnimationState>(in.Get<int>());
  const uint parmCount = in.Get< uint >();
  const uint animCount = in.Get< uint >();

  x4_parms.reserve(parmCount);
  x14_anims.reserve(animCount);
  x24_selectionCache.reserve(animCount);

  for (int i = 0; i < parmCount; i++) {
    x4_parms.push_back(in.Get< CPASParmInfo >());
  }

  for (int i = 0; i < animCount; i++) {
    int id = in.Get< int >();
    rstl::reserved_vector< CPASAnimParm::UParmValue, 8 > parms;
    for (int j = 0; j < parmCount; j++) {
      CPASAnimParm::UParmValue val;
      switch (x4_parms[i].GetParameterType()) {
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
    rstl::vector< CPASAnimInfo >::iterator iter = rstl::lower_bound(
        x14_anims.begin(), x14_anims.end(), animInfo, rstl::less< CPASAnimInfo >());
    x14_anims.insert(iter, animInfo);
  }
}
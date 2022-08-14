#ifndef _CPASANIMSTATE_HPP
#define _CPASANIMSTATE_HPP

#include "types.h"

#include "rstl/vector.hpp"

namespace pas {
enum EAnimationState {
  kAS_Invalid = -1,
  kAS_Fall = 0,
  kAS_Getup = 1,
  kAS_LieOnGround = 2,
  kAS_Step = 3,
  kAS_Death = 4,
  kAS_Locomotion = 5,
  kAS_KnockBack = 6,
  kAS_MeleeAttack = 7,
  kAS_Turn = 8,
  kAS_LoopAttack = 9,
  kAS_LoopReaction = 10,
  kAS_GroundHit = 11,
  kAS_Generate = 12,
  kAS_Jump = 13,
  kAS_Hurled = 14,
  kAS_Slide = 15,
  kAS_Taunt = 16,
  kAS_Scripted = 17,
  kAS_ProjectileAttack = 18,
  kAS_Cover = 19,
  kAS_WallHang = 20,
  kAS_AdditiveIdle = 21,
  kAS_AdditiveAim = 22,
  kAS_AdditiveFlinch = 23,
  kAS_AdditiveReaction = 24,
};
} // namespace pas

class CPASAnimParm {
public:
  enum EParmType {
    kPT_None = -1,
    kPT_Int32 = 0,
    kPT_UInt32 = 1,
    kPT_Float = 2,
    kPT_Bool = 3,
    kPT_Enum = 4,
  };
  union UParmValue {
    s32 m_int;
    u32 m_uint;
    f32 m_float;
    bool m_bool;
  };

private:
  UParmValue x0_value;
  EParmType x4_type;
};

class CPASParmInfo {
public:
  enum EWeightFunction {
    kWF_ExactMatch,
    kWF_PercentError,
    kWF_AngularPercent,
    kWF_NoWeight,
  };

private:
  CPASAnimParm::EParmType x0_type;
  EWeightFunction x4_weightFunction;
  float x8_weight;
  CPASAnimParm::UParmValue xc_min;
  CPASAnimParm::UParmValue x10_max;
};

class CPASAnimInfo {
private:
  u32 x0_id;
  rstl::reserved_vector< CPASAnimParm::UParmValue, 8 > x4_parms;
};

class CPASAnimState {
private:
  pas::EAnimationState x0_id;
  rstl::vector< CPASParmInfo > x4_parms;
  rstl::vector< CPASAnimInfo > x14_anims;
  rstl::vector< s32 > x24_selectionCache;
};
CHECK_SIZEOF(CPASAnimState, 0x34)

#endif
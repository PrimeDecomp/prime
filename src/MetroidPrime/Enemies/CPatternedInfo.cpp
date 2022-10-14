#include "MetroidPrime/Enemies/CPatternedInfo.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CPatternedInfo::CPatternedInfo(CInputStream& in, uint pcount)
: x0_mass(in.ReadFloat())
, x4_speed(in.ReadFloat())
, x8_turnSpeed(in.ReadFloat())
, xc_detectionRange(in.ReadFloat())
, x10_detectionHeightRange(in.ReadFloat())
, x14_dectectionAngle(in.ReadFloat())
, x18_minAttackRange(in.ReadFloat())
, x1c_maxAttackRange(in.ReadFloat())
, x20_averageAttackTime(in.ReadFloat())
, x24_attackTimeVariation(in.ReadFloat())
, x28_leashRadius(in.ReadFloat())
, x2c_playerLeashRadius(in.ReadFloat())
, x30_playerLeashTime(in.ReadFloat())
, x34_contactDamageInfo(in)
, x50_damageWaitTime(in.ReadFloat())
, x54_healthInfo(in)
, x5c_damageVulnerability(in)
, xc4_halfExtent(in.ReadFloat())
, xc8_height(in.ReadFloat())
, xcc_bodyOrigin(in)
, xd8_stepUpHeight(in.ReadFloat())
, xdc_xDamage(in.ReadFloat())
, xe0_frozenXDamage(in.ReadFloat())
, xe4_xDamageDelay(in.ReadFloat())
, xe8_deathSfx(CSfxManager::TranslateSFXID(in.ReadLong()))
, xec_animParams(in)
, xf8_active(in.ReadBool())
, xfc_stateMachineId(in.ReadLong())
, x100_intoFreezeDur(in.ReadFloat())
, x104_outofFreezeDur(in.ReadFloat())
, x108_freezeDur(in.ReadFloat())

, x10c_pathfindingIndex(in.ReadLong())

, x110_particle1Scale(in)
, x11c_particle1(in.ReadLong())
, x120_electric(in.ReadLong())
, x124_particle2Scale(pcount >= 0x24 ? CVector3f(in) : CVector3f::Zero())
, x130_particle2(pcount >= 0x25 ? in.ReadLong() : 0xffffffff)

, x134_iceShatterSfx(pcount >= 0x26 ? CSfxManager::TranslateSFXID(in.ReadLong())
                                    : CSfxManager::kInternalInvalidSfxId)

{}

rstl::pair< bool, uint > CPatternedInfo::HasCorrectParameterCount(CInputStream& in) {
  u32 pcount = in.ReadLong();
  return rstl::pair< bool, uint >((pcount >= 35 && pcount <= 38), pcount);
}

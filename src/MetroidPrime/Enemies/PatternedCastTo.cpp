#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "MetroidPrime/Enemies/CEnergyBall.hpp"
#include "MetroidPrime/Enemies/CFlickerBat.hpp"
#include "MetroidPrime/Enemies/CIceSheegoth.hpp"
#include "MetroidPrime/Enemies/CJellyZap.hpp"
#include "MetroidPrime/Enemies/CMetroid.hpp"
#include "MetroidPrime/Enemies/CMetroidBeta.hpp"
#include "MetroidPrime/Enemies/CMetroidPrimeExo.hpp"
#include "MetroidPrime/Enemies/CParasite.hpp"
#include "MetroidPrime/Enemies/CPuddleToad.hpp"
#include "MetroidPrime/Enemies/CSpacePirate.hpp"
#include "MetroidPrime/Enemies/CThardusRockProjectile.hpp"
#include "MetroidPrime/Enemies/CWarWasp.hpp"

#include "MetroidPrime/TCastTo.hpp"

class CEnergyBall;
CPatterned* CastPatternedCharacter(CPatterned::ECharacter character, CEntity* entity) {
  CPatterned* pat = TCastToPtr< CPatterned >(entity);

  if (pat && pat->GetCharacterType() == character) {
    return pat;
  }

  return nullptr;
}

template <>
TPatternedCast< CEnergyBall >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CEnergyBall* CPatterned::CastTo< CEnergyBall >(const TPatternedCast< CEnergyBall >& ent) {
  return static_cast< CEnergyBall* >(CastPatternedCharacter(CPatterned::kC_EnergyBall, ent.ent));
}

template <>
TPatternedCast< CFlickerBat >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CFlickerBat* CPatterned::CastTo< CFlickerBat >(const TPatternedCast< CFlickerBat >& ent) {
  return static_cast< CFlickerBat* >(CastPatternedCharacter(CPatterned::kC_FlickerBat, ent.ent));
}

template <>
TPatternedCast< CIceSheegoth >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CIceSheegoth* CPatterned::CastTo< CIceSheegoth >(const TPatternedCast< CIceSheegoth >& ent) {
  return static_cast< CIceSheegoth* >(CastPatternedCharacter(CPatterned::kC_IceSheegoth, ent.ent));
}

template <>
TPatternedCast< CJellyZap >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CJellyZap* CPatterned::CastTo< CJellyZap >(const TPatternedCast< CJellyZap >& ent) {
  return static_cast< CJellyZap* >(CastPatternedCharacter(CPatterned::kC_JellyZap, ent.ent));
}

template <>
TPatternedCast< CMetroid >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CMetroid* CPatterned::CastTo< CMetroid >(const TPatternedCast< CMetroid >& ent) {
  return static_cast< CMetroid* >(CastPatternedCharacter(CPatterned::kC_Metroid, ent.ent));
}

template <>
TPatternedCast< CMetroidBeta >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CMetroidBeta* CPatterned::CastTo< CMetroidBeta >(const TPatternedCast< CMetroidBeta >& ent) {
  return static_cast< CMetroidBeta* >(CastPatternedCharacter(CPatterned::kC_MetroidBeta, ent.ent));
}

template <>
TPatternedCast< CMetroidPrimeExo >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CMetroidPrimeExo* CPatterned::CastTo< CMetroidPrimeExo >(const TPatternedCast< CMetroidPrimeExo >& ent) {
  return static_cast< CMetroidPrimeExo* >(CastPatternedCharacter(CPatterned::kC_MetroidPrimeExo, ent.ent));
}

template <>
TPatternedCast< CParasite >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CParasite* CPatterned::CastTo< CParasite >(const TPatternedCast< CParasite >& ent) {
  return static_cast< CParasite* >(CastPatternedCharacter(CPatterned::kC_Parasite, ent.ent));
}

template <>
TPatternedCast< CPuddleToad >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CPuddleToad* CPatterned::CastTo< CPuddleToad >(const TPatternedCast< CPuddleToad >& ent) {
  return static_cast< CPuddleToad* >(CastPatternedCharacter(CPatterned::kC_PuddleToad, ent.ent));
}

template <>
TPatternedCast< CSpacePirate >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CSpacePirate* CPatterned::CastTo< CSpacePirate >(const TPatternedCast< CSpacePirate >& ent) {
  return static_cast< CSpacePirate* >(CastPatternedCharacter(CPatterned::kC_SpacePirate, ent.ent));
}

template <>
TPatternedCast< CThardusRockProjectile >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CThardusRockProjectile* CPatterned::CastTo< CThardusRockProjectile >(const TPatternedCast< CThardusRockProjectile >& ent) {
  return static_cast< CThardusRockProjectile* >(CastPatternedCharacter(CPatterned::kC_ThardusRockProjectile, ent.ent));
}

template <>
TPatternedCast< CWarWasp >::TPatternedCast(CEntity* ent) : ent(ent) {}
template <>
CWarWasp* CPatterned::CastTo< CWarWasp >(const TPatternedCast< CWarWasp >& ent) {
  return static_cast< CWarWasp* >(CastPatternedCharacter(CPatterned::kC_WarWasp, ent.ent));
}

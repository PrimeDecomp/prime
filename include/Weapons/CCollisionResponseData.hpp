#ifndef _COLLISIONRESPONSEDATA_HPP
#define _COLLISIONRESPONSEDATA_HPP

#include "MetroidPrime/ActorCommon.hpp"
#include "Weapons/CDecalDescription.hpp"
#include <rstl/optional_object.hpp>

class CCollisionResponseData {
public:
  rstl::optional_object< TLockedToken< CDecalDescription > >
  GetDecalDescription(EWeaponCollisionResponseTypes type) const;
  rstl::optional_object< TLockedToken< CGenDescription > >
  GetParticleDescription(EWeaponCollisionResponseTypes type) const;
  uint GetSoundEffectId(EWeaponCollisionResponseTypes type) const;
  float GetAudibleRange() const;
  float GetAudibleFallOff() const;
};
#endif

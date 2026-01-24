#ifndef _COLLISIONRESPONSEDATA_HPP
#define _COLLISIONRESPONSEDATA_HPP

#include "MetroidPrime/ActorCommon.hpp"
#include "Weapons/CDecalDescription.hpp"
#include <rstl/optional_object.hpp>

class CInputStream;
class CSimplePool;
class CCollisionResponseData {
public:
  CCollisionResponseData(CInputStream& in, CSimplePool* sp);
  bool CheckAndAddResourcesToResponse(FourCC clsId, CInputStream& in, CSimplePool* sp);
  bool CheckAndAddParticleSystemToResponse(uint clsId, CInputStream& in, CSimplePool* sp);
  bool CheckAndAddDecalToResponse(FourCC clsId, CInputStream& in, CSimplePool* sp);
  bool CheckAndAddSoundFXToResponse(FourCC clsId, CInputStream& in);

  bool AddParticleSystemToResponse(EWeaponCollisionResponseTypes type, CInputStream& in,
                                   CSimplePool* sp);
  rstl::optional_object< TLockedToken< CDecalDescription > >
  GetDecalDescription(EWeaponCollisionResponseTypes type) const;
  rstl::optional_object< TLockedToken< CGenDescription > >
  GetParticleDescription(EWeaponCollisionResponseTypes type) const;
  uint GetSoundEffectId(EWeaponCollisionResponseTypes type) const;

  float GetAudibleRange() const;
  float GetAudibleFallOff() const;

private:
  rstl::vector< rstl::optional_object< TLockedToken< CGenDescription > > > mGeneratorTokens;
  rstl::vector< int > mSoundEffectIds;
  rstl::vector< rstl::optional_object< TLockedToken< CDecalDescription > > > mDecalTokens;
  float mAudibleRange;
  float mAudibleFallOff;

  static const int kInvalidSFX;
  static const int skWorldMaterialTable;
};
#endif

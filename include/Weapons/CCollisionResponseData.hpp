#ifndef _COLLISIONRESPONSEDATA_HPP
#define _COLLISIONRESPONSEDATA_HPP

#include "MetroidPrime/ActorCommon.hpp"
#include "Weapons/CDecalDescription.hpp"
#include <rstl/optional_object.hpp>

class CInputStream;
class CSimplePool;
class CCollisionResponseData {
public:
  typedef rstl::vector< rstl::optional_object< TLockedToken< CGenDescription > > >
      GeneratorListType;
  typedef rstl::vector< rstl::optional_object< TLockedToken< CDecalDescription > > > DecalListType;
  typedef rstl::vector< int > SoundEffectIdListType;
  CCollisionResponseData(CInputStream& in, CSimplePool* sp);
  ~CCollisionResponseData();
  bool CheckAndAddResourcesToResponse(const FourCC clsId, CInputStream& in, CSimplePool* sp);
  bool CheckAndAddParticleSystemToResponse(const FourCC clsId, CInputStream& in, CSimplePool* sp);
  bool CheckAndAddDecalToResponse(const FourCC clsId, CInputStream& in, CSimplePool* sp);
  bool CheckAndAddSoundFXToResponse(const FourCC clsId, CInputStream& in);

  bool AddParticleSystemToResponse(EWeaponCollisionResponseTypes type, CInputStream& in,
                                   CSimplePool* sp);
  rstl::optional_object< TLockedToken< CDecalDescription > >
  GetDecalDescription(EWeaponCollisionResponseTypes type) const;
  rstl::optional_object< TLockedToken< CGenDescription > >
  GetParticleDescription(EWeaponCollisionResponseTypes type) const;
  uint GetSoundEffectId(EWeaponCollisionResponseTypes type) const;

  static EWeaponCollisionResponseTypes GetWorldCollisionResponseType(int idx);

  float GetAudibleRange() const;
  float GetAudibleFallOff() const;

  static bool ResponseTypeIsEnemyNormal(const EWeaponCollisionResponseTypes type);
  static bool ResponseTypeIsEnemySpecial(const EWeaponCollisionResponseTypes type);
  static bool ResponseTypeIsEnemyShielded(const EWeaponCollisionResponseTypes type);

private:
  GeneratorListType mGeneratorTokens;
  SoundEffectIdListType mSoundEffectIds;
  DecalListType mDecalTokens;
  float mAudibleRange;
  float mAudibleFallOff;

  static const int kInvalidSFX;
  static const EWeaponCollisionResponseTypes skWorldMaterialTable[];
};
#endif

#include "MetroidPrime/Enemies/CBurrower.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Particles/CElementGen.hpp"

const CDamageVulnerability CBurrower::skBombVulnerability =
    CDamageVulnerability(kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Normal, kVN_Normal,
                         kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                         kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect, kDT_None);

CBurrower::CBurrower(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                     const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
                     const CActorParameters& actParms, const CAssetId& jumpParticle,
                     const CAssetId& trailParticle, const CAssetId& projectile,
                     const CDamageInfo& projectileDamage, const CAssetId& visorParticle,
                     const uint visorSfx, const CAssetId& deathExplosionParticle)
: CPatterned(kC_Burrower, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Ground, kCT_One,
             kBT_Restricted, actParms, kCS_Small)
, x568_pathFindSearch(nullptr, 1, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x64c_projectileInfo(projectile, projectileDamage)
, x69c_attackTime(0.f)
, x6a0_lurkTimer(0.f)
, x6a4_invulnDamageTime(0.f)
, x6a8_lastDestObj(kInvalidUniqueId)
, x6aa_visorSfx(CSfxManager::TranslateSFXID(visorSfx))
, x6ac_24_doFacePlayer(false)
, x6ac_25_inAir(false) {
  SetDrawShadow(false);
  MakeThermalColdAndHot();
  x64c_projectileInfo.Token().Lock();

  if (jumpParticle != kInvalidAssetId) {
    TLockedToken< CGenDescription > desc =
        TLockedToken< CGenDescription >(gpSimplePool->GetObj(SObjectTag('PART', jumpParticle)));
    x674_jumpParticle = rs_new CElementGen(desc);
    x674_jumpParticle->SetGlobalScale(GetModelScale());
    x674_jumpParticle->SetParticleEmission(false);
  }
  
  if (trailParticle != kInvalidAssetId) {
    TLockedToken< CGenDescription > desc =
        TLockedToken< CGenDescription >(gpSimplePool->GetObj(SObjectTag('PART', trailParticle)));
    x678_trailParticle = rs_new CElementGen(desc);
    x678_trailParticle->SetGlobalScale(GetModelScale());
    x678_trailParticle->SetParticleEmission(false);
  }
  
  if (visorParticle != kInvalidAssetId) {
    x67c_visorParticle = gpSimplePool->GetObj(SObjectTag('PART', visorParticle));
  }
  
  if (deathExplosionParticle != kInvalidAssetId) {
    x68c_deathExplosionParticle = gpSimplePool->GetObj(SObjectTag('PART', deathExplosionParticle));
    x68c_deathExplosionParticle->Lock();
  }
}

CBurrower::~CBurrower() {}
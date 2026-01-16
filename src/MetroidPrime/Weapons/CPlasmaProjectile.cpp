#include "MetroidPrime/Weapons/CPlasmaProjectile.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Particles/CElectricDescription.hpp"

#include <Kyoto/Particles/CElementGen.hpp>

CPlasmaProjectile::CPlasmaProjectile(const TToken< CWeaponDescription >& wDesc,
                                     const rstl::string& name, EWeaponType wType,
                                     const CBeamInfo& bInfo, const CTransform4f& xf,
                                     const EMaterialTypes matType, const CDamageInfo& dInfo,
                                     const TUniqueId uid, const TAreaId aid, const TUniqueId owner,
                                     const CWeaponAssetInfo& res, const bool growingBeam,
                                     const EProjectileAttrib attribs)
: CBeamProjectile(wDesc, name, wType, xf, bInfo.GetLength(), bInfo.GetRadius(),
                  bInfo.GetTravelSpeed(), matType, dInfo, uid, aid, owner, attribs, growingBeam)
, x478_beamAttributes(bInfo.GetBeamAttributes())
, x47c_lifeTime(bInfo.GetLifeTime())
, x480_pulseSpeed(bInfo.GetPulseSpeed())
, x484_shutdownTime(bInfo.GetShutdownTime())
, x488_expansionSpeed(bInfo.GetExpansionSpeed())
, x48c_maxLength(bInfo.GetLength() * (1 / 32.f))
, x490_innerColor(bInfo.GetInnerColor())
, x494_outerColor(bInfo.GetOuterColor())
, x498_phazonDamage(CDamageInfo(CWeaponMode(kWT_None, false, false, false), 0.f, 0.f, 0.f, false))
, x4b4_expansionState(kES_Inactive)
, x4b8_beamWidth(0.f)
, x4bc_lifeTimer(0.f)
, x4c0_expansionT(0.f)
, x4c4_expansion(0.f)
, x4c8_beamAngle(0.f)
, x4cc_energyPulseStartY(0.f)
, x4d0_shutdownTimer(0.f)
, x4d4_contactPulseTimer(0.f)
, x4d8_energyPulseTimer(0.f)
, x4dc_playerEffectPulseTimer(0.f)
, x4e0_playerDamageDuration(0.f)
, x4e4_playerDamageTimer(0.f)
, x4e8_texture(gpSimplePool->GetObj(SObjectTag('TXTR', bInfo.GetTextureId())))
, x4f4_glowTexture(gpSimplePool->GetObj(SObjectTag('TXTR', bInfo.GetGlowTextureId())))
, x500_contactFxDesc(gpSimplePool->GetObj(SObjectTag('PART', bInfo.GetContactFXId())))
, x50c_pulseFxDesc(gpSimplePool->GetObj(SObjectTag('PART', bInfo.GetPulseFXId())))
, x518_contactGen(rs_new CElementGen(x500_contactFxDesc, CElementGen::kMOT_One))
, x51c_pulseGen(rs_new CElementGen(x50c_pulseFxDesc, CElementGen::kMOT_One))
, x524_freezeSteamTxtr(res.data[0])
, x528_freezeIceTxtr(res.data[1])
, x52c_visorElectric(res.data[2] != kInvalidAssetId
                         ? rstl::optional_object< TToken< CElectricDescription > >(
                               gpSimplePool->GetObj(SObjectTag('ELSC', res.data[2])))
                         : rstl::optional_object_null())
, x538_visorParticle(res.data[3] != kInvalidAssetId
                         ? rstl::optional_object< TToken< CGenDescription > >(
                               gpSimplePool->GetObj(SObjectTag('PART', res.data[3])))
                         : rstl::optional_object_null())
, x544_freezeSfx(CSfxManager::TranslateSFXID(res.data[4]))
, x546_electricSfx(CSfxManager::TranslateSFXID(res.data[5]))
, x548_24_(false)
, x548_25_enableEnergyPulse(true)
, x548_26_firing(false)
, x548_27_texturesLoaded(false)
, x548_28_drawOwnerFirst(growingBeam)
, x548_29_activePlayerPhazon(false) {
  x4e8_texture.Lock();
  x4f4_glowTexture.Lock();
  x518_contactGen->SetGlobalScale(
      CVector3f(bInfo.GetContactFxScale(), bInfo.GetContactFxScale(), bInfo.GetContactFxScale()));
  x51c_pulseGen->SetGlobalScale(
      CVector3f(bInfo.GetPulseFxScale(), bInfo.GetPulseFxScale(), bInfo.GetPulseFxScale()));
  x518_contactGen->SetParticleEmission(false);
  x51c_pulseGen->SetParticleEmission(false);
}
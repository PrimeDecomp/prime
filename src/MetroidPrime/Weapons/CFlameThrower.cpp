#include "MetroidPrime/Weapons/CFlameThrower.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"

const CVector3f CFlameThrower::kLightOffset = CVector3f(0.f, 3.f, 2.f);

CFlameThrower::CFlameThrower(const TToken< CWeaponDescription >& wDesc, const rstl::string& name,
                             const EWeaponType wType, const CFlameInfo& flameInfo,
                             const CTransform4f& xf, const EMaterialTypes matType,
                             const CDamageInfo& dInfo, const TUniqueId uid, const TAreaId aId,
                             const TUniqueId owner, EProjectileAttrib attribs,
                             const CAssetId playerSteamTxtr, const ushort playerHitSfx,
                             const CAssetId playerIceTxtr)
: CGameProjectile(true, wDesc, name, wType, xf, matType, dInfo, uid, aId, owner, kInvalidUniqueId,
                  attribs, false, CVector3f(1.f, 1.f, 1.f), rstl::optional_object_null(),
                  CSfxManager::kInternalInvalidSfxId, false)
, x2e8_(xf)
, x318_(CAABox::MakeNullBox())
, x330_(0.f)
, x334_(0.f)
, x338_flame(flameInfo.GetX10())
, x33c_flamethrowerDesc(gpSimplePool->GetObj(SObjectTag('PART', flameInfo.GetFlameFxId())))
, x34c_flameWarp(0.f, CVector3f::Zero(), false) {}
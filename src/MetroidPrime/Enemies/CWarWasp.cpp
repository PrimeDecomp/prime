#include "MetroidPrime/Enemies/CWarWasp.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Enemies/CPatternedInfo.hpp"
#include "MetroidPrime/TCastTo.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Particles/CGenDescription.hpp"
#include "Kyoto/SObjectTag.hpp"

CWarWasp::CWarWasp(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                   const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
                   CPatterned::EFlavorType flavor, CPatterned::EColliderType collider,
                   const CDamageInfo& dInfo, const CActorParameters& actParms,
                   CAssetId projectileWeapon, CDamageInfo projectileDamage,
                   CAssetId projectileVisorParticle, uint projectileVisorSfx)
: CPatterned(kC_WarWasp, uid, name, flavor, info, xf, mData, pInfo, kMT_Flyer, collider,
             kBT_Flyer, actParms, kKBV_Small)
, x568_stateProg(-1)
, x570_cSphere(CSphere(CVector3f(0.f, 0.f, 1.8f), 1.f), GetMaterialList())
, x590_pfSearch(NULL, 3, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x674_aiMgr(kInvalidUniqueId)
, x678_targetPos(CVector3f::Zero())
, x684_contactDamage(dInfo)
, x6a0_initialRot(CQuaternion::NoRotation())
, x6b0_circleBurstPos(CVector3f::Zero())
, x6bc_circleBurstDir(CVector3f(0.f, 0.f, 0.f))
, x6c8_circleBurstRight(CVector3f(0.f, 0.f, 0.f))
, x6d4_projectileInfo(projectileWeapon, projectileDamage)
, x6fc_initialSpeed(x3b4_speed)
, x700_attackRemTime(0.f)
, x704_dodgeDir(pas::kSD_Invalid)
, x708_circleAttackTeam(-1)
, x70c_initialCircleAttackTeam(-1)
, x710_initialCircleAttackTeamUnit(-1)
, x714_circleTelegraphSeekHeight(0.f)
, x718_circleBurstOffTotemAngle(1.5707964f)
, x72c_projectileVisorSfx(CSfxManager::TranslateSFXID(projectileVisorSfx))
, x72e_24_jumpBackRepeat(true)
, x72e_25_canApplyDamage(false)
, x72e_26_initiallyInactive(!pInfo.GetActive())
, x72e_27_teamMatesMelee(false)
, x72e_28_inProjectileAttack(false)
, x72e_29_pathObstructed(false)
, x72e_30_isRetreating(false)
, x72e_31_heardNoise(false) {
  if (flavor == kFT_Two) {
    x6d4_projectileInfo.Token().Lock();
  }
  UpdateTouchBounds();
  SetCoefficientOfRestitutionModifier(0.1f);
  if (projectileVisorParticle != kInvalidAssetId) {
    x71c_projectileVisorParticle = gpSimplePool->GetObj(SObjectTag('PART', projectileVisorParticle));
  }
  x328_29_noPatternShagging = true;
  x460_knockBackController.SetAnimationStateRange(kKBAS_KnockBack, kKBAS_KnockBack);
}

CWarWasp::~CWarWasp() {}

void CWarWasp::Accept(IVisitor& visitor) { visitor.Visit(*this); }

#include "MetroidPrime/Enemies/CWarWasp.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Enemies/CPatternedInfo.hpp"
#include "MetroidPrime/TCastTo.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Particles/CGenDescription.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Enemies/CTeamAiMgr.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

CWarWasp::CWarWasp(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                   const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
                   CPatterned::EFlavorType flavor, CPatterned::EColliderType collider,
                   const CDamageInfo& dInfo, const CActorParameters& actParms,
                   CAssetId projectileWeapon, CDamageInfo projectileDamage,
                   CAssetId projectileVisorParticle, uint projectileVisorSfx)
: CPatterned(kC_WarWasp, uid, name, flavor, info, xf, mData, pInfo, kMT_Flyer, collider, kBT_Flyer,
             actParms, kCS_Small)
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
    x71c_projectileVisorParticle =
        gpSimplePool->GetObj(SObjectTag('PART', projectileVisorParticle));
  }
  x328_29_noPatternShagging = true;
  x460_knockBackController.SetAnimationStateRange(kAR_KnockBack, kAR_KnockBack);
}

CWarWasp::~CWarWasp() {}

void CWarWasp::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CWarWasp::AcceptScriptMsg(const EScriptObjectMessage msg, const TUniqueId uid, CStateManager& mgr) {
  CPatterned::AcceptScriptMsg(msg, uid, mgr);
  switch (msg) {
  case kSM_Deleted:
  case kSM_Deactivate:
    SwarmRemove(mgr);
    break;
  case kSM_InitializedInArea: {
    if (x674_aiMgr == kInvalidUniqueId) {
      x674_aiMgr = CTeamAiMgr::GetTeamAiMgr(*this, mgr);
    }

    const TAreaId aid = GetCurrentAreaId();
    x590_pfSearch.SetArea(mgr.World()->GetAreaAlways(aid).GetPostConstructed()->x10bc_pathArea);
    if (!x6b0_circleBurstPos.IsNonZero()) {
      SetUpCircleBurstPoint(mgr);
    }
  } break;
  default:
    break;
  }
}

void CWarWasp::Death(CStateManager& mgr, const CVector3f& direction, const EScriptObjectState state) {
  CPatterned::Death(mgr, direction, state);
  x328_25_verticalMovement = false;
  AddMaterial(kMT_GroundCollider, mgr);
  SwarmRemove(mgr);
}

void CWarWasp::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  if (x700_attackRemTime > 0.f) {
    const CPlayer* player = mgr.GetPlayer();
    float multiplier = 1.f;
    if (player->GetMorphballTransitionState() == CPlayer::kMS_Unmorphed) {
      const CVector3f distance = GetTranslation() - player->GetTranslation();
      const CVector3f playerForward = player->GetTransform().GetForward();
      multiplier = 1.f - (CVector2f::GetAngleDiff(playerForward.ToVec2f(), distance.ToVec2f()) /
                          M_PIF * 0.666f);
    }

    x700_attackRemTime -= dt * multiplier;
  }

  ApplyDamage(mgr);
  CPatterned::Think(dt, mgr);
}

CProjectileInfo* CWarWasp::ProjectileInfo() { return &x6d4_projectileInfo; }

rstl::optional_object< CAABox > CWarWasp::GetTouchBounds() const {
  return x570_cSphere.CalculateAABox(GetTransform());
}

const CCollisionPrimitive* CWarWasp::GetCollisionPrimitive() const { return &x570_cSphere; }

void CWarWasp::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                               float dt) {}

bool CWarWasp::Listen(const CVector3f& pos, EListenNoiseType type) {
  switch (type) {
  case kLNT_PlayerFire:
  case kLNT_BombExplode:
  case kLNT_ProjectileExplode: {
    const CVector3f diff = GetTranslation() - pos;
    if (diff.MagSquared() < x3bc_detectionRange * x3bc_detectionRange) {
      x72e_31_heardNoise = true;
      return true;
    }
  } break;
  default:
    break;
  }

  return false;
}

CVector3f CWarWasp::GetOrigin(const CStateManager& mgr, const CTeamAiRole& role,
                              const CVector3f& aimPos) const {
  if (!x6b0_circleBurstPos.IsNonZero()) {
    const CVector3f ret = GetCloseInPos(mgr, aimPos);
    return ret;
  }
  return GetTranslation();
}

bool CWarWasp::PathShagged(CStateManager& mgr, float arg) {
  if (GetSearchPath()) {
    return GetSearchPath()->IsShagged();
  }
  return false;
}

bool CWarWasp::HearShot(CStateManager& mgr, float arg) {
  if (x72e_31_heardNoise || x400_24_hitByPlayerProjectile) {
    return true;
  }

  if (const CTeamAiMgr* teamMgr = TCastToConstPtr< CTeamAiMgr >(mgr.GetObjectById(x674_aiMgr))) {
    return teamMgr->GetNumRoles() != 0;
  }

  return false;
}
#include "MetroidPrime/Enemies/CThardusRockProjectile.hpp"

#include "Kyoto/Particles/CGenDescription.hpp"
#include "MetroidPrime/CCollisionActorManager.hpp"
#include "MetroidPrime/CExplosion.hpp"
#include "MetroidPrime/Enemies/CThardus.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

const CPatternedCollisionUtils::SSphereJointInfo CThardusRockProjectile::skJointInfoList[] = {
    {"Rock_01_Collision_LCTR", 1.5f},
};

CThardusRockProjectile::CThardusRockProjectile(const TUniqueId uid, const rstl::string& name,
                                               const CEntityInfo& info, const CTransform4f& xf,
                                               const CModelData& modelData,
                                               const CActorParameters& aParms,
                                               const CPatternedInfo& patternedInfo,
                                               const rstl::vector< CModelData >& mDataVec,
                                               const CAssetId stateMachine, const float f1)
: CPatterned(kC_ThardusRockProjectile, uid, name, kFT_Zero, info, xf, modelData, patternedInfo,
             kMT_Flyer, kCT_One, kBT_Flyer, aParms, kKBV_Medium)
, x568_(1.f)
, x570_(kInvalidUniqueId)
, x572_(false)
, mAnimState(kAS_Invalid)
, x57c_(mDataVec)
, mStateMachineId(stateMachine)
, x5a0_(0)
, x5a4_(true)
, mDelayTime(0.f)
, mAttackTime(0.f)
, x5b0_(0.f, 1.f, 0.f)
, x5bc_(true)
, x5c0_(f1)
, x5c4_(0)
, x5c8_(0)
, x5cc_(0)
, mThardusId(kInvalidUniqueId)
, x5d4_(0)
, x5d8_(0)
, x5dc_(false)
, x5dd_(false) {
  CMaterialList exclude = GetMaterialFilter().GetExcludeList();
  exclude.Add(CMaterialList(kMT_Player, kMT_Character, kMT_NoPlatformCollision));
  SetMaterialFilter(
      CMaterialFilter::MakeIncludeExclude(GetMaterialFilter().GetIncludeList(), exclude));
  x50c_baseDamageMag = 1.f;
}

void CThardusRockProjectile::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CThardusRockProjectile::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                             CStateManager& mgr) {}

void CThardusRockProjectile::Think(float dt, CStateManager& mgr) {}

void CThardusRockProjectile::GetUp(CStateManager& mgr, const EStateMsg msg, const float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    break;
  }
}

void CThardusRockProjectile::Patrol(CStateManager& mgr, const EStateMsg msg, const float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    break;
  }
}

void CThardusRockProjectile::LoopedAttack(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    break;
  }
}

void CThardusRockProjectile::Dead(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    break;
  }
}

void CThardusRockProjectile::Lurk(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    break;
  }
}

bool CThardusRockProjectile::ShouldMove(CStateManager& mgr, float arg) { return mAiState >= 1; }

bool CThardusRockProjectile::ShouldAttack(CStateManager& mgr, float arg) {
  if (GetStateMachineTime() > mAttackTime && mAiState != 3) {
    mAiState = 2;
    return true;
  }

  return false;
}

bool CThardusRockProjectile::HitSomething(CStateManager& mgr, float arg) { return x572_; }

bool CThardusRockProjectile::AnimOver(CStateManager& mgr, float arg) { return mAnimState == 3; }

bool CThardusRockProjectile::Delay(CStateManager& mgr, float arg) {
  return GetStateMachineTime() > mDelayTime;
}

void CThardusRockProjectile::InitializeCollisionManager(CStateManager& mgr) {}

void CThardusRockProjectile::SetMaterialProperties(
    rstl::single_ptr< CCollisionActorManager >& colMgr, CStateManager& mgr) {}

void CThardusRockProjectile::AddSphereCollisionList(
    const CPatternedCollisionUtils::SSphereJointInfo*, int,
    rstl::vector< CJointCollisionDescription >&) {}

void CThardusRockProjectile::UpdateDestroyableRockPositions(CStateManager& mgr) {}
void CThardusRockProjectile::UpdateDestroyableRockCollisionActors(CStateManager& mgr) {}

void CThardusRockProjectile::SetChildrenActive(CStateManager& mgr, bool active) {
  const int rockCount = mDestroyableRocks.size();
  for (uint i = 0; i < rockCount; i++) {
    const TUniqueId rockId = mDestroyableRocks[i];
    const TUniqueId colId = mCollisionManager->GetCollisionDescFromIndex(i).GetCollisionActorId();
    CEntity* rockAct = mgr.ObjectById(rockId);
    if (!rockAct) {
      continue;
    }
    CEntity* colAct = mgr.ObjectById(colId);
    if (!colAct) {
      continue;
    }

    rockAct->SetActive(active);
    colAct->SetActive(active);
  }
}

void CThardusRockProjectile::ModifyChildrenMaterial(CStateManager& mgr, EModifyMaterial modify,
                                                    EMaterialTypes material) {
  const int rockCount = mDestroyableRocks.size();
  for (uint i = 0; i < rockCount; i++) {
    TUniqueId rockId = mDestroyableRocks[i];
    TUniqueId colId = mCollisionManager->GetCollisionDescFromIndex(i).GetCollisionActorId();

    CActor* rockAct = TCastToPtr< CActor >(mgr.ObjectById(rockId));

    if (!rockAct) {
      continue;
    }
    CActor* colAct = TCastToPtr< CActor >(mgr.ObjectById(colId));
    if (!colAct) {
      continue;
    }
    switch (modify) {
    case kMM_Add:
      rockAct->AddMaterial(material, mgr);
      colAct->AddMaterial(material, mgr);
      break;
    case kMM_Remove:
      rockAct->RemoveMaterial(material, mgr);
      colAct->RemoveMaterial(material, mgr);
      break;
    }
  }
}

void CThardusRockProjectile::Render(const CStateManager& mgr) const { CPatterned::Render(mgr); }

void CThardusRockProjectile::AddGravity(CStateManager& mgr) {
  SetVerticalMovement(false);
  Stop();
  SetMomentumWR(CVector3f(0.f, 0.f, 2.f * -GetWeight()));
  mAiState = 3;
}

void CThardusRockProjectile::AddDeathEffects(CStateManager& mgr, const CVector3f& position) {
  if (mThardusId == kInvalidUniqueId) {
    return;
  }

  CThardus* thardus = static_cast< CThardus* >(mgr.ObjectById(mThardusId));
  if (!thardus) {
    return;
  }

  AddParticleEffect(mgr, x5c8_, position, CVector3f(GetModelData()->GetScale()), 0);
  thardus->ShakeScreen(mgr, position, 0.75f, 125.f, 1.f);
  const CPlayer* player = mgr.GetPlayer();
  const CVector3f diff = player->GetTranslation() - GetTranslation();
  const float widthTimes10 = GetModelData()->GetScale().GetX() * 10.f;

  if (diff.MagSquared() < widthTimes10 * widthTimes10) {
    mgr.ApplyDamage(GetUniqueId(), player->GetUniqueId(), GetUniqueId(),
                    CDamageInfo(CWeaponMode(kWT_AI), GetContactDamage().GetDamage() * 0.5f,
                                widthTimes10, GetContactDamage().GetKnockBackPower() * 0.5f),
                    CMaterialFilter::GetPassEverything(), diff.AsNormalized());
  }

  ProcessSoundEvent(x5d8_, 1.f, 0, 0.1f, 1000.f, 20, 127, CVector3f::Zero(), GetTranslation(),
                    mgr.GetNextAreaId().Value(), mgr, true);

  if (x5dd_) {
    thardus->StartTimedThermalFlash(mgr, 2.f, *this);
    SendScriptMsgs(kSS_Zero, mgr, kSM_None);
  }
}

void CThardusRockProjectile::AddParticleEffect(CStateManager& mgr, CAssetId particle,
                                               const CVector3f& position, const CVector3f& scale,
                                               int unk) {
  TUniqueId uid = mgr.AllocateUniqueId();
  char buf[1024];
  sprintf(buf, "ROCK_PROJECTILE_EFFECT-%u-%i", particle, uid.Value());

  CEntity* ent = rs_new CExplosion(
      TLockedToken< CGenDescription >(gpSimplePool->GetObj(SObjectTag('PART', particle))), uid,
      true, CEntityInfo(mgr.GetNextAreaId(), rstl::vector< SConnection >()), rstl::string(buf),
      CTransform4f(CMatrix3f::Identity(), position), unk, scale, CColor::White());

  mgr.AddObject(*ent);
}
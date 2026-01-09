#include "MetroidPrime/Weapons/CShockWave.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CCollisionActor.hpp"
#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/CGameLight.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include <Kyoto/CSimplePool.hpp>
#include <Kyoto/Particles/CElectricDescription.hpp>
#include <Kyoto/Particles/CElementGen.hpp>
#include <rstl/optional_object.hpp>

CShockWave::CShockWave(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                       const CTransform4f& xf, const TUniqueId parent, const CShockWaveInfo& data,
                       const float minActiveTime, const float knockback)
: CActor(uid, true, name, info, xf, CModelData::CModelDataNull(), CMaterialList(kMT_Projectile),
         CActorParameters::None(), kInvalidUniqueId)
, mParentId(parent)
, mDamageInfo(data.GetDamageInfo())
, mElementGenDesc(gpSimplePool->GetObj(SObjectTag('PART', data.GetParticleDescId())))
, mElementGen(rs_new CElementGen(mElementGenDesc))
, mShockWaveInfo(data)
, mRadius(data.GetInitialRadius())
, mExpansionSpeed(data.GetInitialExpansionSpeed())
, mActiveTime(0.f)
, mMinActiveTime(minActiveTime)
, mKnockBack(knockback)
, mTimeSinceHitPlayerInAir(0.f)
, mTimeSinceHitPlayer(0.f)
, mHitPlayerInAir(false)
, mHitPlayer(false)
, mElectricDesc(data.GetWeaponDescId() != kInvalidAssetId
                    ? rstl::optional_object< TToken< CElectricDescription > >(
                          gpSimplePool->GetObj(SObjectTag('ELSC', data.GetWeaponDescId())))
                    : rstl::optional_object_null())
, mLightId(kInvalidUniqueId) {
  mElementGen->SetParticleEmission(true);
  mElementGen->SetOrientation(GetTransform().GetRotation());
  mElementGen->SetGlobalTranslation(GetTranslation());
  SetThermalFlags(kTF_Hot);
}

void CShockWave::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CShockWave::Think(const float dt, CStateManager& mgr) {
  if (GetActive()) {

    mElementGen->Update(dt);
    mActiveTime += dt;
    mRadius += mExpansionSpeed * dt;
    mExpansionSpeed += dt * mShockWaveInfo.GetSpeedIncrease();
    mElementGen->SetExternalVar(0, mRadius);
    for (int i = 0; i < mElementGen->GetNumActiveChildParticles(); ++i) {
      CParticleGen* gen = mElementGen->GetActiveChildParticle(i);
      if (gen->Get4CharId() != 'PART') {
        continue;
      }

      static_cast< CElementGen* >(gen)->SetExternalVar(0, mRadius);
    }

    if (mHitPlayerInAir) {
      mTimeSinceHitPlayerInAir += dt;
      mHitPlayerInAir = false;
    }

    if (mHitPlayer) {
      mTimeSinceHitPlayer += dt;
      mHitPlayer = false;
    }
  }

  if (mElementGen->IsSystemDeletable() && mMinActiveTime > 0.f && mActiveTime >= mMinActiveTime) {
    mgr.DeleteObjectRequest(GetUniqueId());
    return;
  }

  if (mLightId == kInvalidUniqueId) {
    return;
  }

  CGameLight* light = TCastToPtr< CGameLight >(mgr.ObjectById(mLightId));
  if (!light) {
    return;
  }
  if (!GetActive()) {
    return;
  }
  light->SetLight(mElementGen->GetLight());
}

void CShockWave::Render(const CStateManager& mgr) const {
  CActor::Render(mgr);
  mElementGen->Render();
}

void CShockWave::AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const {
  CActor::AddToRenderer(frustum, mgr);
  gpRender->AddParticleGen(*mElementGen.get());
}

void CShockWave::Touch(CActor& actor, CStateManager& mgr) {
  if (mActiveTime >= mMinActiveTime) {
    return;
  }

  bool isParent = mParentId == actor.GetUniqueId();

  if (const CCollisionActor* colAct =
          TCastToConstPtr< CCollisionActor >(mgr.GetObjectById(actor.GetUniqueId()))) {
    isParent = colAct->GetOwnerId() == mParentId;
  }

  if (isParent) {
    return;
  }

  // TODO: Finish
}

rstl::optional_object< CAABox > CShockWave::GetTouchBounds() const {
  if (mRadius > 0.f) {
    CAABox bounds(CVector3f(-mRadius, -mRadius, 0.f), CVector3f(mRadius, mRadius, 1.f));
    return bounds.GetTransformedAABox(GetTransform());
  }

  return rstl::optional_object_null();
}

bool CShockWave::WasAlreadyDamaged(const TUniqueId uid) const {
  for (TEntityList::const_iterator it = mHitIds.begin(); it != mHitIds.end(); ++it) {
    if (*it == uid) {
      return true;
    }
  }

  return false;
}

void CShockWave::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) {
  switch (msg) {
  case kSM_Registered: {
    if (!mElementGen->SystemHasLight()) {
      break;
    }

    mLightId = mgr.AllocateUniqueId();
    CAssetId partId = mShockWaveInfo.GetParticleDescId();
    mgr.AddObject(rs_new CGameLight(mLightId, GetCurrentAreaId(), GetActive(),
                                    rstl::string_l("ShockWaveLight_") + GetDebugName(),
                                    GetTransform(), GetUniqueId(), mElementGen->GetLight(), partId,
                                    1, 0.f));
  } break;
  case kSM_Deleted: {
    if (mLightId == kInvalidUniqueId) {
      break;
    }
    mgr.DeleteObjectRequest(mLightId);
    mLightId = kInvalidUniqueId;
  } break;
  default:
    break;
  }

  CActor::AcceptScriptMsg(msg, sender, mgr);
  mgr.SendScriptMsgAlways(mLightId, sender, msg);
}

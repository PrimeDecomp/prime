#include "MetroidPrime/Enemies/CEyeBall.hpp"
#include "Collision/CMaterialList.hpp"
#include "Kyoto/Animation/CharacterCommon.hpp"
#include "MetroidPrime/ActorCommon.hpp"
#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/Enemies/CAiFuncMap.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/Enemies/CStateMachine.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Weapons/CBeamInfo.hpp"
#include "MetroidPrime/Weapons/CPlasmaProjectile.hpp"
#include "MetroidPrime/Weapons/CWeapon.hpp"
#include "MetroidPrime/Weapons/WeaponTypes.hpp"

#include <Kyoto/Animation/CInt32POINode.hpp>
#include <Kyoto/Audio/CSfxManager.hpp>

const char* CEyeBall::skEyeLocator = "Laser_LCTR";
const char* wholeBody = "Whole Body";

CEyeBall::CEyeBall(const TUniqueId uid, const rstl::string& name, const EFlavorType flavor,
                   const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
                   const CPatternedInfo& pInfo, const float attackDelay,
                   const float attackStartTime, const CAssetId wpscId, const CDamageInfo& dInfo,
                   const CAssetId beamContactFxId, const CAssetId beamPulseFxId,
                   const CAssetId beamTextureId, const CAssetId beamGlowTextureId, const uint anim0,
                   const uint anim1, const uint anim2, const uint anim3, const uint beamSfx,
                   const bool attackDisabled, const CActorParameters& actParams)
: CPatterned(kC_EyeBall, uid, name, flavor, info, xf, mData, pInfo, kMT_Flyer, kCT_Zero,
             kBT_Restricted, actParams, kKBV_Medium)
, mAttackDelay(attackDelay)
, mAttackStartTime(attackStartTime)
, mTargetPosition(CVector3f::Zero())
, mBoneTracking(*ModelData()->AnimationData(), rstl::string_l("Eye"), CMath::Deg2Rad(45.f),
                CMath::Deg2Rad(180.f), kBTF_NoParent)
, mProjectileInfo(wpscId, dInfo)
, mBeamContactFxId(beamContactFxId)
, mBeamPulseFxId(beamPulseFxId)
, mBeamTextureId(beamTextureId)
, mBeamGlowTextureId(beamGlowTextureId)
, mProjectileId(kInvalidUniqueId)
, mCurrentAnim(0)
, mBeamSfxId(CSfxManager::TranslateSFXID(beamSfx))
, mCanAttack(false)
, mPlayerInRange(false)
, mAlert(false)
, mAttackDisabled(attackDisabled)
, mFiringBeam(false) {
  mAnimIndices[0] = anim0;
  mAnimIndices[1] = anim1;
  mAnimIndices[2] = anim2;
  mAnimIndices[3] = anim3;
  GetKnockBackCtrl().SetAutoResetImpulse(false);
}

void CEyeBall::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CEyeBall::CreateBeam(CStateManager& mgr) {
  if (mProjectileId != kInvalidUniqueId) {
    return;
  }
  CBeamInfo beamInfo(1 | 2, mBeamContactFxId, mBeamPulseFxId, mBeamTextureId, mBeamGlowTextureId,
                     50, 0.05f, 1.f, 2.f, 20.f, 1.f, 1.f, 2.f, CColor(1.f, 1.f, 1.f, 0.f),
                     CColor(0.f, 1.f, 0.5f, 0.f), 150.f);

  mProjectileId = mgr.AllocateUniqueId();
  CEntity* proj = rs_new CPlasmaProjectile(
      mProjectileInfo.Token(), rstl::string_l("EyeBall_Beam"), kWT_AI, beamInfo,
      CTransform4f::Identity(), kMT_Character, mProjectileInfo.GetDamage(), mProjectileId,
      GetCurrentAreaId(), GetUniqueId(), kInvalidAssetId, false, CWeapon::kPA_KeepInCinematic);
  mgr.AddObject(*proj);
}

void CEyeBall::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) {
  bool skipForward = false;
  switch (msg) {
  case kSM_Damage: {
    if (const CGameProjectile* proj =
            TCastToConstPtr< CGameProjectile >(mgr.GetObjectById(sender))) {
      if (proj->GetOwnerId() == mgr.GetPlayer()->GetUniqueId()) {
        if (static_cast< CActor* >(this)->GetDamageVulnerability()->GetVulnerability(
                proj->GetCurrentDamageInfo().GetWeaponMode(), 0) != kVN_Deflect) {
          SetWasHit(true);
        }
      }
    }
    skipForward = true;
  } break;
  case kSM_InvulnDamage: {
    if (const CGameProjectile* proj =
            TCastToConstPtr< CGameProjectile >(mgr.GetObjectById(sender))) {
      if (proj->GetOwnerId() == mgr.GetPlayer()->GetUniqueId()) {
        if (static_cast< CActor* >(this)->GetDamageVulnerability()->GetVulnerability(
                proj->GetCurrentDamageInfo().GetWeaponMode(), 0) != kVN_Deflect) {
          SetWasHit(true);
        }
      }
    }
    skipForward = true;
  } break;
  case kSM_Alert:
    mAlert = true;
    break;
  case kSM_Registered:
    RemoveMaterial(kMT_Target, kMT_Orbit, mgr);
    BodyCtrl()->Activate(mgr);
    StateMachineState().SetDelay(0.f);
    SetDrawShadow(false);
    CreateBeam(mgr);
    break;
  case kSM_Deleted:
    if (mProjectileId != kInvalidUniqueId) {
      mgr.DeleteObjectRequest(mProjectileId);
      if (mBeamSfx) {
        CSfxManager::RemoveEmitter(mBeamSfx);
        mBeamSfx.Clear();
      }
    }
    mProjectileId = kInvalidUniqueId;
    break;
  default:
    break;
  }

  if (!skipForward) {
    CPatterned::AcceptScriptMsg(msg, sender, mgr);
  }
}

void CEyeBall::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node,
                               const EUserEventType event, const float dt) {
  bool skipForward = false;
  switch (event) {
  case kUE_DamageOn: {
    if (mCanAttack) {
      skipForward = true;
      CTransform4f xf = GetLctrTransform(node.GetLocatorName());
      FireBeam(mgr, xf);
    }
  } break;
  case kUE_DamageOff: {
    skipForward = true;
    ResetBeamState(mgr);
  } break;
  default:
    break;
  }
  if (!skipForward) {
    CPatterned::DoUserAnimEvent(mgr, node, event, dt);
  }
}

void CEyeBall::InActive(CStateManager& mgr, const EStateMsg msg, const float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    BodyCtrl()->SetLocomotionType(pas::kLT_Relaxed);
    break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    break;
  }
}

void CEyeBall::Active(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    SetWasHit(false);
    BodyCtrl()->SetLocomotionType(pas::kLT_Combat);
    mCanAttack = false;
  } break;
  case kStateMsg_Update: {
    const float time = StateMachineState().GetTime();
    if (time > mAttackStartTime) {
      mCanAttack = true;
    }
    UpdateAnimation();
  } break;
  case kStateMsg_Deactivate: {
    StateMachineState().SetDelay(mAttackDelay);

    if (CPlasmaProjectile* proj =
            static_cast< CPlasmaProjectile* >(mgr.ObjectById(mProjectileId))) {
      proj->ResetBeam(mgr, true);
    }

    mCanAttack = false;
    CSfxManager::RemoveEmitter(mBeamSfx);
    mBeamSfx.Clear();
  } break;
  }
}

void CEyeBall::PreRender(CStateManager& mgr, const CFrustumPlanes& frustum) {
  CPatterned::PreRender(mgr, frustum);
  CBodyController* controller = BodyCtrl();
  CModelData* mData = ModelData();
  mBoneTracking.PreRender(mgr, *AnimationData(), GetTransform(), mData->GetScale(), *controller);
}

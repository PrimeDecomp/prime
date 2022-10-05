#include "MetroidPrime/ScriptObjects/CScriptPickup.hpp"

#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CArtifactDoll.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerGun.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Tweaks/CTweakGame.hpp"

#include "MetroidPrime/HUD/CHUDMemoParms.hpp"
#include "MetroidPrime/HUD/CSamusHud.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Text/CStringTable.hpp"

#include "rstl/math.hpp"

CScriptPickup::CScriptPickup(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                             const CTransform4f& xf, const CModelData& mData,
                             const CActorParameters& aParams, const CAABox& aabb,
                             CPlayerState::EItemType itemType, int amount, int capacity,
                             CAssetId pickupEffect, float possibility, float lifeTime,
                             float fadeInTime, float startDelay, bool active)
: CPhysicsActor(uid, active, name, info, xf, mData, CMaterialList(), aabb,
                SMoverData(1.f, CVector3f::Zero(), CAxisAngle::Identity(), CVector3f::Zero(),
                           CAxisAngle::Identity()),
                aParams, 0.3f, 0.1f)
, x258_itemType(itemType)
, x25c_amount(amount)
, x260_capacity(capacity)
, x264_possibility(possibility)
, x268_fadeInTime(fadeInTime)
, x26c_lifeTime(lifeTime)
, x278_delayTimer(startDelay) {
  if (pickupEffect != kInvalidAssetId) {
    x27c_pickupParticleDesc = gpSimplePool->GetObj(SObjectTag('PART', pickupEffect));
  }

  if (!x64_modelData.null() && x64_modelData->GetAnimationData()) {
    x64_modelData->AnimationData()->SetAnimation(CAnimPlaybackParms(0, -1, 1.f, true), false);
  }

  if (x278_delayTimer != 0.f) {
    xb4_drawFlags = CModelFlags(CModelFlags::kT_Blend, 0, CModelFlags::kF_DepthCompare,
                                CColor(1.f, 1.f, 1.f, 0.f));
  }
}

CScriptPickup::~CScriptPickup() {}

void CScriptPickup::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  if (x278_delayTimer >= 0.f) {
    CPhysicsActor::Stop();
    x278_delayTimer -= dt;
    return;
  }

  x270_curTime += dt;
  if (x28c_25_inTractor && (x26c_lifeTime - x270_curTime) < 2.f) {
    x270_curTime = rstl::max_val(x270_curTime - 2.f * dt, x26c_lifeTime - 2.f - FLT_EPSILON);
  }

  CModelFlags drawFlags(CModelFlags::kT_Opaque, CColor(1.f, 1.f, 1.f, 1.f));

  if (x268_fadeInTime != 0.f) {
    if (x270_curTime < x268_fadeInTime) {
      drawFlags = CModelFlags(CModelFlags::kT_Blend, 0, CModelFlags::kF_DepthCompare,
                              CColor(1.f, 1.f, 1.f, x270_curTime / x268_fadeInTime));
    } else {
      x268_fadeInTime = 0.f;
    }
  } else if (x26c_lifeTime != 0.f) {
    float alpha = 1.f;
    if (x26c_lifeTime < 2.f) {
      alpha = 1.f - (x26c_lifeTime / x270_curTime);
    } else if ((x26c_lifeTime - x270_curTime) < 2.f) {
      alpha = (x26c_lifeTime - x270_curTime) * 0.5f;
    }

    drawFlags = CModelFlags(CModelFlags::kT_Blend, 0, CModelFlags::kF_DepthCompare,
                            CColor(1.f, 1.f, 1.f, alpha));
  }

  xb4_drawFlags = drawFlags;

  if (!x64_modelData.null() && x64_modelData->HasAnimation()) {
    SAdvancementDeltas deltas = UpdateAnimation(dt, mgr, true);
    MoveToOR(deltas.GetOffsetDelta(), dt);
    RotateToOR(deltas.GetOrientationDelta(), dt);
  }

  if (x28c_25_inTractor) {
    CVector3f posDelta =
        mgr.GetPlayer()->GetTranslation() + (CVector3f::Up() * 2.0) - GetTranslation();
    x274_tractorTime += dt;
    posDelta = posDelta.AsNormalized() * (20.f * (0.5f * rstl::min_val(2.f, x274_tractorTime)));

    if (x28c_26_enableTractorTest && (mgr.GetPlayer()->GetPlayerGun()->IsCharging()
                                          ? mgr.GetPlayer()->GetPlayerGun()->GetChargeBeamFactor()
                                          : 0.f) < CPlayerGun::GetTractorBeamFactor()) {
      x28c_26_enableTractorTest = false;
      x28c_25_inTractor = false;
      posDelta = CVector3f::Zero();
    }
    SetVelocityWR(posDelta);
  } else if (x28c_24_generated) {
    const float chargeFactor = mgr.GetPlayer()->GetPlayerGun()->IsCharging()
                                   ? mgr.GetPlayer()->GetPlayerGun()->GetChargeBeamFactor()
                                   : 0.f;

    if (chargeFactor > CPlayerGun::GetTractorBeamFactor()) {
      const CVector3f posDelta =
          GetTranslation() - mgr.GetCameraManager()->GetFirstPersonCamera()->GetTranslation();
      const float relFov = CRelAngle::FromDegrees(gpTweakGame->GetFirstPersonFOV()).AsRadians();
      if (CVector3f::Dot(
              mgr.GetCameraManager()->GetFirstPersonCamera()->GetTransform().GetForward(),
              posDelta.AsNormalized()) > cos(relFov) &&
          posDelta.MagSquared() < (30.f * 30.f)) {
        x28c_25_inTractor = true;
        x28c_26_enableTractorTest = true;
        x274_tractorTime = 0.f;
      }
    }
  }

  if (x26c_lifeTime != 0.f && x270_curTime > x26c_lifeTime) {
    mgr.FreeScriptObject(GetUniqueId());
  }
}

void CScriptPickup::Touch(CActor& act, CStateManager& mgr) {
  if (GetActive() && x278_delayTimer < 0.f && TCastToPtr< CPlayer >(act)) {
    if (x258_itemType >= CPlayerState::kIT_Truth && x258_itemType <= CPlayerState::kIT_Newborn) {
      const CAssetId id = CArtifactDoll::GetArtifactHeadScanFromItemType(x258_itemType);
      if (id != kInvalidAssetId) {
        mgr.PlayerState()->SetScanTime(id, 0.5f);
      }
    }

    /*if (x27c_pickupParticleDesc) {
      if (mgr.GetPlayerState()->GetActiveVisor(mgr) != CPlayerState::kPV_Thermal) {
        mgr.AddObject(new CExplosion(x27c_pickupParticleDesc, mgr.AllocateUniqueId(), true,
                                     CEntityInfo(GetAreaIdAlways(), CEntity::NullConnectionList,
    kInvalidEditorId), "Explosion - Pickup Effect", x34_transform, 0, zeus::skOne3f,
    zeus::skWhite));
      }
    }*/

    mgr.PlayerState()->InitializePowerUp(x258_itemType, x260_capacity);
    mgr.PlayerState()->IncrPickUp(x258_itemType, x25c_amount);
    mgr.FreeScriptObject(GetUniqueId());
    SendScriptMsgs(kSS_Arrived, mgr, kSM_None);

    if (x260_capacity > 0) {
      const int total = mgr.GetPlayerState()->GetTotalPickupCount();
      const int colRate = mgr.GetPlayerState()->CalculateItemCollectionRate();
      if (total == colRate) {
        CSystemOptions& opts = gpGameState->SystemOptions();
        mgr.QueueMessage(mgr.GetHUDMessageFrameCount() + 1,
                         gpResourceFactory
                             ->GetResourceIdByName(opts.GetAllItemsCollected()
                                                       ? "STRG_AllPickupsFound_2"
                                                       : "STRG_AllPickupsFound_1")
                             ->id,
                         0.f);
        opts.SetAllItemsCollected(true);
      }
    }

    if (x258_itemType == CPlayerState::kIT_PowerBombs &&
        gpGameState->SystemOptions().GetShowPowerBombAmmoMessage()) {
      gpGameState->SystemOptions().IncrementPowerBombAmmoCount();
      CSamusHud::DisplayHudMemo(rstl::wstring_l(gpStringTable->GetString(109)),
                                CHUDMemoParms(0.5f, true, false, false));
    }
  }
}

rstl::optional_object< CAABox > CScriptPickup::GetTouchBounds() const override {
  return CPhysicsActor::GetBoundingBox();
}

void CScriptPickup::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                    CStateManager& mgr) override {
  CPhysicsActor::AcceptScriptMsg(msg, uid, mgr);
}

void CScriptPickup::Render(const CStateManager& mgr) const override { CPhysicsActor::Render(mgr); }

void CScriptPickup::Accept(IVisitor& visitor) { visitor.Visit(*this); }

float CScriptPickup::GetPossibility() const { return x264_possibility; }

CPlayerState::EItemType CScriptPickup::GetItem() const { return x258_itemType; }

void CScriptPickup::SetSpawned() { x28c_24_generated = true; }

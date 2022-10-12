#include "MetroidPrime/ScriptObjects/CScriptTrigger.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

class CAi;

// #include "MetroidPrime/Camera/CGameCamera.hpp"
// #include "MetroidPrime/Weapon/CGameProjectile.hpp"
// #include "MetroidPrime/World/CActorParameters.hpp"
// #include "MetroidPrime/World/CPlayer.hpp"
// #include "TCastTo.hpp" // Generated file, do not modify include path

CScriptTrigger::CScriptTrigger(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                               const CVector3f& pos, const CAABox& bounds, const CDamageInfo& dInfo,
                               const CVector3f& forceField, ETriggerFlags triggerFlags, bool active,
                               bool deactivateOnEntered, bool deactivateOnExited)
: CActor(uid, active, name, info, CTransform4f::Translate(pos), CModelData::CModelDataNull(),
         CMaterialList(kMT_Trigger), CActorParameters::None(), kInvalidUniqueId)
, x100_damageInfo(dInfo)
, x11c_forceField(forceField)
, x128_forceMagnitude(forceField.Magnitude())
, x12c_flags(triggerFlags)
, x130_bounds(bounds)
, x148_26_deactivateOnEntered(deactivateOnEntered)
, x148_27_deactivateOnExited(deactivateOnExited)
, x148_24_detectCamera(false)
, x148_25_camSubmerged(false)
, x148_28_playerTriggerProc(false)
, x148_29_didPhazonDamage(false) {
  SetCallTouch(false);
}

void CScriptTrigger::Touch(CActor& act, CStateManager& mgr) {
  if (!act.GetActive() || act.GetMaterialList().HasMaterial(kMT_Trigger)) {
    return;
  }

  if (FindObject(act.GetUniqueId()) == nullptr) {
    ETriggerFlags testFlags = kTrF_None;
    const TCastToPtr< CPlayer > pl(act);
    if (pl) {
      if (x128_forceMagnitude > 0.f && (x12c_flags & kTrF_DetectPlayer) &&
          mgr.GetLastTriggerId() == kInvalidUniqueId) {
        mgr.SetLastTriggerId(x8_uid);
      }

      testFlags = static_cast< ETriggerFlags >(testFlags | kTrF_DetectPlayer);
      if (pl->GetMorphballTransitionState() == CPlayer::kMS_Unmorphed) {
        testFlags = static_cast< ETriggerFlags >(testFlags | kTrF_DetectUnmorphedPlayer);
      } else if (pl->GetMorphballTransitionState() == CPlayer::kMS_Morphed) {
        testFlags = static_cast< ETriggerFlags >(testFlags | kTrF_DetectMorphedPlayer);
      }
    } else if (TCastToPtr< CAi >(act)) {
      testFlags = static_cast< ETriggerFlags >(testFlags | kTrF_DetectAI);
    } else if (TCastToPtr< CGameProjectile >(act)) {
      testFlags = static_cast< ETriggerFlags >(testFlags | kTrF_DetectProjectiles1 |
                                               kTrF_DetectProjectiles2 | kTrF_DetectProjectiles3 |
                                               kTrF_DetectProjectiles4 | kTrF_DetectProjectiles5 |
                                               kTrF_DetectProjectiles6 | kTrF_DetectProjectiles7);
    } else if (const TCastToPtr< CWeapon > weap = act) {
      // if ((weap->GetAttribField() & kPA_Bombs) == kPA_Bombs) {
      //   testFlags = static_cast< ETriggerFlags >(testFlags | kTrF_DetectBombs);
      // } else if ((weap->GetAttribField() & kPA_PowerBombs) ==
      //            kPA_PowerBombs) {
      //   testFlags = static_cast< ETriggerFlags >(testFlags | kTrF_DetectPowerBombs);
      // }
    }

    if (testFlags & x12c_flags) {
      xe8_inhabitants.push_back(CObjectTracker(act.GetUniqueId()));
      InhabitantAdded(act, mgr);

      if (pl) {
        if (!x148_28_playerTriggerProc) {
          x148_28_playerTriggerProc = true;
          if (x148_29_didPhazonDamage) {
            mgr.Player()->DecrementPhazon();
            x148_29_didPhazonDamage = false;
          } else if (x100_damageInfo.GetDamage() > 0.f) {
            const CDamageVulnerability* dVuln = mgr.Player()->GetDamageVulnerability();
            if (dVuln->WeaponHurts(x100_damageInfo.GetWeaponMode(), false) &&
                x100_damageInfo.GetWeaponMode().GetType() == kWT_Phazon &&
                !mgr.GetPlayerState()->HasPowerUp(CPlayerState::kIT_PhazonSuit)) {
              pl->IncrementPhazon();
              x148_29_didPhazonDamage = true;
            }
          }
        }
      }

      SendScriptMsgs(kSS_Entered, mgr, kSM_None);

      if (x148_26_deactivateOnEntered) {
        mgr.SendScriptMsg(x8_uid, mgr.GetEditorIdForUniqueId(x8_uid), kSM_Deactivate, kSS_Entered);
        if (act.HealthInfo(mgr) && x100_damageInfo.GetDamage() > 0.f) {
          mgr.ApplyDamage(
              x8_uid, act.GetUniqueId(), x8_uid, x100_damageInfo,
              CMaterialFilter::MakeIncludeExclude(CMaterialList(kMT_Solid), CMaterialList(0ull)),
              CVector3f::Zero());
        }
      }

      if ((x12c_flags & kTrF_KillOnEnter) && act.HealthInfo(mgr)) {
        CHealthInfo* hInfo = act.HealthInfo(mgr);
        CWeaponMode weaponMode(kWT_Power, false, false, true);
        CDamageInfo info(weaponMode, 10.f * hInfo->GetHP(), 0, 0);
        mgr.ApplyDamage(x8_uid, act.GetUniqueId(), x8_uid,
                        info,
                        CMaterialFilter::MakeIncludeExclude(CMaterialList(kMT_Solid), CMaterialList(0ull)), CVector3f::Zero());
      }
    } else {
      InhabitantRejected(act, mgr);
    }
  }
}

rstl::optional_object< CAABox > CScriptTrigger::GetTouchBounds() const {
  if (x30_24_active) {
    return GetTriggerBoundsWR();
  }
  return rstl::optional_object< CAABox >();
}

CAABox CScriptTrigger::GetTriggerBoundsWR() const {
  return CAABox(x130_bounds.GetMinPoint() + x34_transform.GetTranslation(),
                x130_bounds.GetMaxPoint() + x34_transform.GetTranslation());
}

void CScriptTrigger::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  if (GetActive()) {
    if (msg == kSM_Deactivate) {
      xe8_inhabitants.clear();
      x148_25_camSubmerged = false;

      if (x148_28_playerTriggerProc) {
        x148_28_playerTriggerProc = false;
        if (x148_29_didPhazonDamage) {
          mgr.Player()->DecrementPhazon();
          x148_29_didPhazonDamage = false;
        }

        if (mgr.GetLastTriggerId() == x8_uid) {
          mgr.SetLastTriggerId(kInvalidUniqueId);
        }
      }
    } else if (msg == kSM_Deleted) {
      if (x148_28_playerTriggerProc) {
        x148_28_playerTriggerProc = false;
        if (x148_29_didPhazonDamage) {
          mgr.Player()->DecrementPhazon();
          x148_29_didPhazonDamage = false;
        }

        if (mgr.GetLastTriggerId() == x8_uid) {
          mgr.SetLastTriggerId(kInvalidUniqueId);
        }
      }
    }
  }

  CActor::AcceptScriptMsg(msg, uid, mgr);
}

void CScriptTrigger::Think(float dt, CStateManager& mgr) {
  if (GetActive()) {
    UpdateInhabitants(mgr);
  }
}

void CScriptTrigger::UpdateInhabitants(CStateManager& mgr) {
  bool sendInside = false;
  bool sendExited = false;
  rstl::list< CObjectTracker >::iterator nextIt;
  rstl::list< CObjectTracker >::iterator it = xe8_inhabitants.begin();
  for (; it != xe8_inhabitants.end(); it = nextIt) {
    nextIt = it;
    ++nextIt;
    if (const TCastToPtr< CActor > act = mgr.ObjectById(it->GetObjectId())) {
      bool playerValid = true;
      if (it->GetObjectId() == mgr.GetPlayer()->GetUniqueId()) {
        if (!(x12c_flags & kTrF_DetectPlayer) &&
            ((mgr.GetPlayer()->GetMorphballTransitionState() == CPlayer::kMS_Morphed &&
              (x12c_flags & kTrF_DetectUnmorphedPlayer)) ||
             (mgr.GetPlayer()->GetMorphballTransitionState() == CPlayer::kMS_Unmorphed &&
              (x12c_flags & kTrF_DetectMorphedPlayer)))) {
          playerValid = false;
        }
        if (!playerValid) {
          xe8_inhabitants.erase(it);
          sendExited = true;
          if (x148_28_playerTriggerProc) {
            x148_28_playerTriggerProc = false;
            if (x148_29_didPhazonDamage) {
              mgr.Player()->DecrementPhazon();
              x148_29_didPhazonDamage = false;
            }

            if (mgr.GetLastTriggerId() == GetUniqueId()) {
              mgr.SetLastTriggerId(kInvalidUniqueId);
            }
          }

          InhabitantExited(*act, mgr);
          continue;
        }
      }

      rstl::optional_object< CAABox > touchBounds = GetTouchBounds();
      rstl::optional_object< CAABox > actTouchBounds = act->GetTouchBounds();
      if (touchBounds && actTouchBounds && touchBounds->DoBoundsOverlap(*actTouchBounds)) {
        sendInside = true;
        InhabitantIdle(*act, mgr);
        if (act->HealthInfo(mgr) && x100_damageInfo.GetDamage() > 0.f) {
          CDamageInfo info(x100_damageInfo, 0.0f);
          mgr.ApplyDamage(
              GetUniqueId(), act->GetUniqueId(), GetUniqueId(), info,
              CMaterialFilter::MakeIncludeExclude(CMaterialList(kMT_Solid), CMaterialList()),
              CVector3f::Zero());
        }

        if (x128_forceMagnitude > 0.f) {
          if (TCastToPtr< CPhysicsActor > pact = *act) {
            float forceMult = 1.f;
            if ((x12c_flags & kTrF_UseBooleanIntersection)) {
              forceMult = touchBounds->GetBooleanIntersection(*actTouchBounds).GetVolume() /
                          actTouchBounds->GetVolume();
            }

            const CVector3f force = forceMult * x11c_forceField;
            if ((x12c_flags & kTrF_UseCollisionImpulses)) {
              pact->ApplyImpulseWR(force, CAxisAngle());
              pact->UseCollisionImpulses();
            } else {
              pact->ApplyForceWR(force, CAxisAngle());
            }
          }
        }
      } else {
        const TUniqueId tmpId = it->GetObjectId();
        xe8_inhabitants.erase(it);
        sendExited = true;
        if (mgr.GetPlayer()->GetUniqueId() == tmpId && x148_28_playerTriggerProc) {
          x148_28_playerTriggerProc = false;
          if (x148_29_didPhazonDamage) {
            mgr.Player()->DecrementPhazon();
            x148_29_didPhazonDamage = false;
          }

          if (mgr.GetLastTriggerId() == GetUniqueId())
            mgr.SetLastTriggerId(kInvalidUniqueId);
        }

        InhabitantExited(*act, mgr);
      }
    } else {
      const TUniqueId tmpId = it->GetObjectId();
      xe8_inhabitants.erase(it);
      if (mgr.GetPlayer()->GetUniqueId() == tmpId && x148_28_playerTriggerProc) {
        x148_28_playerTriggerProc = false;
        if (x148_29_didPhazonDamage) {
          mgr.Player()->DecrementPhazon();
          x148_29_didPhazonDamage = false;
        }

        if (mgr.GetLastTriggerId() == GetUniqueId()) {
          mgr.SetLastTriggerId(kInvalidUniqueId);
        }
      }
    }
  }

  if ((x12c_flags & kTrF_DetectCamera) || x148_24_detectCamera) {
    CGameCamera* cam = mgr.GetCameraManager()->GetCurrentCamera(mgr);
    const bool camInTrigger = GetTriggerBoundsWR().PointInside(cam->GetTranslation());
    if (x148_25_camSubmerged) {
      if (!camInTrigger) {
        x148_25_camSubmerged = false;
        if (x12c_flags & kTrF_DetectCamera) {
          sendExited = true;
          InhabitantExited(*cam, mgr);
        }
      } else {
        if (x12c_flags & kTrF_DetectCamera) {
          InhabitantIdle(*cam, mgr);
          sendInside = true;
        }
      }
    } else {
      if (camInTrigger) {
        x148_25_camSubmerged = true;
        if (x12c_flags & kTrF_DetectCamera) {
          InhabitantAdded(*cam, mgr);
          SendScriptMsgs(kSS_Entered, mgr, kSM_None);
        }
      }
    }
  }

  if (sendInside) {
    SendScriptMsgs(kSS_Inside, mgr, kSM_None);
  }

  if (sendExited) {
    SendScriptMsgs(kSS_Exited, mgr, kSM_None);
    if (x148_27_deactivateOnExited) {
      mgr.SendScriptMsg(GetUniqueId(), mgr.GetEditorIdForUniqueId(GetUniqueId()), kSM_Deactivate,
                        kSS_Exited);
    }
  }
}

void CScriptTrigger::Accept(IVisitor& visitor) { visitor.Visit(*this); }

const rstl::list< CScriptTrigger::CObjectTracker >& CScriptTrigger::GetInhabitants() const {
  return xe8_inhabitants;
}

const CScriptTrigger::CObjectTracker* CScriptTrigger::FindObject(TUniqueId id) {
  rstl::list< CObjectTracker >::const_iterator it = GetInhabitants().begin();
  for (; it != GetInhabitants().end(); ++it) {
    if (it->GetObjectId() == id) {
      return it.get_pointer();
    }
  }
  return nullptr;
}

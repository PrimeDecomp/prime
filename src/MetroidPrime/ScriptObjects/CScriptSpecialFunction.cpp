#include "MetroidPrime/ScriptObjects/CScriptSpecialFunction.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CEnvFxManager.hpp"
#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/ScriptObjects/CScriptPlatform.hpp"
#include "MetroidPrime/TCastTo.hpp"


#include "Collision/CMaterialFilter.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Math/CFrustumPlanes.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

#include "Runtime/w_fmod.h"
#include "rstl/math.hpp"


namespace rstl {
  static int string_find(const string& haystack, const string& needle, int) {
    // TODO: proper implementation
    return 0;
  }
}


CScriptSpecialFunction::CScriptSpecialFunction(
    TUniqueId uid, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf,
    ESpecialFunction func, const rstl::string& lcName, float f1, float f2, float f3, float f4,
    const CVector3f& vec, const CColor& col, bool active, const CDamageInfo& dInfo, s32 aId1,
    s32 aId2, CPlayerState::EItemType itemType, u16 sId1, u16 sId2, u16 sId3)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(),
         CActorParameters::None(), kInvalidUniqueId)
, xe8_function(func)
, xec_locatorName(lcName)
, xfc_float1(f1)
, x100_float2(f2)
, x104_float3(f3)
, x108_float4(f4)
, x10c_vector3f(vec)
, x118_color(col)
, x11c_damageInfo(dInfo)
, x13c_spinnerInitialXf(CTransform4f::Identity())
, x138_(0.f)
, x16c_(0.f)
, x170_sfx1(CSfxManager::TranslateSFXID(sId1))
, x172_sfx2(CSfxManager::TranslateSFXID(sId2))
, x174_sfx3(CSfxManager::TranslateSFXID(sId3))
, x180_(0.f)
, x184_(6, 0.f)
, x194_(0.f)
, x1a8_ringState(kRS_Stopped)
, x1ac_ringRotateTarget(CVector3f::Zero())
, x1b8_ringReverse(true)
, x1bc_areaSaveId(aId1)
, x1c0_layerIdx(aId2)
, x1c4_item(itemType)
, x1e4_24_spinnerInitializedXf(false)
, x1e4_25_spinnerCanMove(false)
, x1e4_26_sfx2Played(true)
, x1e4_27_sfx3Played(false)
// , x1e4_28_frustumEntered(false)
// , x1e4_29_frustumExited(false)
// , x1e4_30_(false)
, x1e4_31_inAreaDamage(false)
, x1e5_24_doSave(false)
, x1e5_25_playerInArea(false)
, x1e5_26_displayBillboard(false) {
  if (xe8_function == kSF_HUDTarget) {
    x1c8_touchBounds = CAABox(CVector3f(-1.f, -1.f, -1.f), CVector3f(1.f, 1.f, 1.f));
  }
}

void CScriptSpecialFunction::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  switch (xe8_function) {
  case kSF_PlayerFollowLocator:
    ThinkPlayerFollowLocator(dt, mgr);
    break;
  case kSF_SpinnerController:
    ThinkSpinnerController(dt, mgr, kSCM_Zero);
    break;
  case kSF_ShotSpinnerController:
    ThinkSpinnerController(dt, mgr, kSCM_One);
    break;
  case kSF_ObjectFollowLocator:
    ThinkObjectFollowLocator(dt, mgr);
    break;
  case kSF_ObjectFollowObject:
    ThinkObjectFollowObject(dt, mgr);
    break;
  case kSF_ChaffTarget:
    ThinkChaffTarget(dt, mgr);
    break;
  case kSF_ViewFrustumTester: {
    if (x1e4_28_frustumEntered) {
      x1e4_28_frustumEntered = false;
      SendScriptMsgs(kSS_Entered, mgr, kSM_None);
    }
    if (x1e4_29_frustumExited) {
      x1e4_29_frustumExited = false;
      SendScriptMsgs(kSS_Exited, mgr, kSM_None);
    }
    break;
  }
  case kSF_SaveStation:
    ThinkSaveStation(dt, mgr);
    break;
  case kSF_IntroBossRingController:
    ThinkIntroBossRingController(dt, mgr);
    break;
  case kSF_RainSimulator:
    ThinkRainSimulator(dt, mgr);
    break;
  case kSF_AreaDamage:
    ThinkAreaDamage(dt, mgr);
    break;
  case kSF_ScaleActor:
    ThinkActorScale(dt, mgr);
    break;
  case kSF_PlayerInAreaRelay:
    ThinkPlayerInArea(dt, mgr);
    break;
  case kSF_Billboard: {
    if (x1e8_.valid() && x1e8_.data().IsLoaded() && x1e5_26_displayBillboard) {
      SendScriptMsgs(kSS_MaxReached, mgr, kSM_None);
      x1e5_26_displayBillboard = false;
    }
    break;
  }
  default:
    break;
  }
}

void CScriptSpecialFunction::AddToRenderer(const CFrustumPlanes&, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  if (xe8_function == kSF_FogVolume && x1e4_30_) {
    EnsureRendered(mgr);
  }
}

void CScriptSpecialFunction::PreRender(CStateManager&, const CFrustumPlanes& frustum) {
  switch (xe8_function) {
  case kSF_FogVolume:
  case kSF_ViewFrustumTester: {
    if (!GetActive()) {
      break;
    }

    bool val;
    if (xe8_function == kSF_FogVolume) {
      CVector3f pos = GetTranslation();
      CVector3f max = pos + x10c_vector3f;
      max[kDZ] += xfc_float1;
      CAABox aabb(pos - x10c_vector3f, max);
      val = frustum.BoxInFrustumPlanes(aabb);
    } else {
      val = frustum.PointInFrustumPlanes(GetTranslation());
    }

    if (x1e4_30_ == val) {
      break;
    }
    if (val) {
      x1e4_28_frustumEntered = true;
    } else {
      x1e4_29_frustumExited = true;
    }
    x1e4_30_ = val;
    break;
  }
  }
}

// constexpr std::array fxTranslation{
//     ERumbleFxId::Twenty,    ERumbleFxId::One,         ERumbleFxId::TwentyOne,
//     ERumbleFxId::TwentyTwo, ERumbleFxId::TwentyThree, ERumbleFxId::Zero,
// };

void CScriptSpecialFunction::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                             CStateManager& mgr) {
  if (GetActive() && msg == kSM_Deactivate && xe8_function == kSF_Billboard) {
    mgr.SetPendingOnScreenTex(CAssetId(), CVector2i(0, 0), CVector2i(0, 0));
    if (x1e8_) {
      x1e8_.clear();
    }
    x1e5_26_displayBillboard = false;
  }
  CActor::AcceptScriptMsg(msg, uid, mgr);

  if (xe8_function == kSF_ChaffTarget && msg == kSM_InitializedInArea) {
    AddMaterial(kMT_Target, mgr);
  }

  if (GetActive()) {
    switch (xe8_function) {
    case kSF_HUDFadeIn: {
      if (msg == kSM_Action) {
        mgr.Player()->SetHudDisable(xfc_float1, 0.f, 0.5f);
      }
      break;
    }
    case kSF_EscapeSequence: {
      if (msg == kSM_Action && xfc_float1 >= 0.f) {
        mgr.ResetEscapeSequenceTimer(xfc_float1);
      }
      break;
    }
    case kSF_SpinnerController: {
      switch (msg) {
      case kSM_Stop: {
        x1e4_25_spinnerCanMove = false;
        break;
      }
      case kSM_Play: {
        x1e4_25_spinnerCanMove = true;
        mgr.Player()->SetAngularVelocityWR(CAxisAngle::Identity());
        break;
      }
      case kSM_Deactivate:
        DeleteEmitter(x178_sfxHandle);
        break;
      default:
        break;
      }
      break;
    }
    case kSF_ShotSpinnerController: {
      switch (msg) {
      case kSM_Increment: {

        x16c_ = CMath::Clamp(0.f, x16c_ + 1.f, 1.f);
        SendScriptMsgs(kSS_Play, mgr, kSM_None);
        break;
      }
      case kSM_SetToMax: {
        x16c_ = x104_float3;
        SendScriptMsgs(kSS_Play, mgr, kSM_None);
        break;
      }
      case kSM_SetToZero: {
        x16c_ = -0.5f * x104_float3;
        break;
      }
      default:
        break;
      }
      break;
    }
    case kSF_MapStation: {
      if (msg == kSM_Action) {
        // TODO
        // mgr.MapWorldInfo()->SetMapStationUsed(true);
        // mgr.GetWorld()->GetMapWorld()->RecalculateWorldSphere(*mgr.MapWorldInfo(),
        // *mgr.GetWorld());
      }
      break;
    }
    case kSF_MissileStation: {
      if (msg == kSM_Action) {
        CPlayerState& pState = *mgr.PlayerState();
        pState.ResetAndIncrPickUp(CPlayerState::kIT_Missiles,
                                  pState.GetItemCapacity(CPlayerState::kIT_Missiles));
      }
      break;
    }
    case kSF_PowerBombStation: {
      if (msg == kSM_Action) {
        CPlayerState& pState = *mgr.PlayerState();
        pState.ResetAndIncrPickUp(CPlayerState::kIT_PowerBombs,
                                  pState.GetItemCapacity(CPlayerState::kIT_PowerBombs));
      }
      break;
    }
    case kSF_SaveStation: {
      if (msg == kSM_Action) {
        mgr.PlayerState()->IncrPickUp(CPlayerState::kIT_EnergyTanks, 1);
        if (gpGameState->CardSerial() == 0) {
          SendScriptMsgs(kSS_Closed, mgr, kSM_None);
        } else {
          mgr.DeferStateTransition(kSMT_SaveGame);
          x1e5_24_doSave = true;
        }
      }
      break;
    }
    case kSF_IntroBossRingController: {
      if (x1a8_ringState != kRS_Breakup) {
        switch (msg) {
        case kSM_Play: {
          if (x1a8_ringState != kRS_Scramble) {
            RingScramble(mgr);
          }

          for (rstl::vector< SRingController >::iterator rc = x198_ringControllers.begin();
               rc != x198_ringControllers.end(); ++rc) {
            if (CActor* act = TCastToPtr< CActor >(mgr.ObjectById(rc->x0_id))) {
              rc->xc_ = act->GetTransform().GetForward();
            } else {
              rc->xc_ = CVector3f::Forward();
            }
          }

          x1a8_ringState = kRS_Breakup;
          break;
        }
        case kSM_SetToZero: {
          x1a8_ringState = kRS_Rotate;
          x1ac_ringRotateTarget = GetTranslation() - mgr.GetPlayer()->GetTranslation();
          x1ac_ringRotateTarget.SetZ(0.f);
          x1ac_ringRotateTarget.Normalize();
          break;
        }
        case kSM_Action: {
          RingScramble(mgr);
          break;
        }
        case kSM_InitializedInArea: {
          x198_ringControllers.reserve(3);

          for (rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
               conn != GetConnectionList().end(); ++conn) {
            if (conn->x0_state != kSS_Play || conn->x4_msg != kSM_Activate) {
              continue;
            }

            // GetIdListForScript seems very different between Ghidra and Metaforce
            // const auto search = mgr.GetIdListForScript(conn->x8_objId);

            rstl::pair< TUniqueId, TUniqueId >* it;
            if (CActor* act = TCastToPtr< CActor >(mgr.ObjectById(it->second))) {
              x198_ringControllers.push_back(SRingController(it->second, 0.f, false));
              act->RemoveMaterial(kMT_Occluder, mgr);
            }
          }

          // TODO: there's an actual sort symbol, so it's a templated sort somewhere
          // std::sort(x198_ringControllers.begin(), x198_ringControllers.end(),
          //           [&mgr](const SRingController& a, const SRingController& b) {
          //             const TCastToConstPtr<CActor> actA(mgr.GetObjectById(a.x0_id));
          //             const TCastToConstPtr<CActor> actB(mgr.GetObjectById(b.x0_id));
          //             if (actA && actB) {
          //               return actA->GetTranslation().z() < actB->GetTranslation().z();
          //             }
          //             return false;
          //           });

          for (rstl::vector< SRingController >::iterator rc = x198_ringControllers.begin();
               rc != x198_ringControllers.end(); ++rc) {
            rc->x4_rotateSpeed = (x1b8_ringReverse ? 1.f : -1.f) * xfc_float1;
            rc->x8_reachedTarget = false;
          }
          break;
        }
        default:
          break;
        }
      }
      break;
    }
    case kSF_RadialDamage: {
      if (msg == kSM_Action) {
        CMaterialList includeList(kMT_Solid);
        CMaterialList excudeList(0);
        CMaterialFilter filter(CMaterialFilter::MakeIncludeExclude(includeList, excudeList));

        CDamageInfo dInfo = x11c_damageInfo;
        dInfo.SetRadius(xfc_float1);
        mgr.ApplyDamageToWorld(GetUniqueId(), *this, GetTranslation(), dInfo, filter);
      }
      break;
    }
    case kSF_BossEnergyBar: {
      if (msg == kSM_Increment) {
        mgr.SetBossParams(uid, xfc_float1, u32(x100_float2) + 86);
      } else if (msg == kSM_Decrement) {
        mgr.SetBossParams(kInvalidUniqueId, 0.f, 0);
      }
      break;
    }
    case kSF_EndGame: {
      if (msg == kSM_Action) {
        switch (GetSpecialEnding(mgr)) {
        case 0:
          gpMain->SetFlowState(kFS_WinBad);
          break;
        case 1:
          gpMain->SetFlowState(kFS_WinGood);
          break;
        case 2:
          gpMain->SetFlowState(kFS_WinBest);
          break;
        }
        mgr.SetShouldQuitGame(true);
      }
      break;
    }
    case kSF_CinematicSkip: {
      if (msg == kSM_Increment) {
        if (ShouldSkipCinematic(mgr)) {
          mgr.SetSkipCinematicSpecialFunction(GetUniqueId());
        }
      } else if (msg == kSM_Decrement) {
        mgr.SetSkipCinematicSpecialFunction(kInvalidUniqueId);
        gpGameState->SystemOptions().SetCinematicState(
            rstl::pair< CAssetId, TEditorId >(mgr.GetWorld()->GetWorldAssetId(), GetEditorId()),
            true);
      }
      break;
    }
    case kSF_ScriptLayerController: {
      if (msg == kSM_Decrement || msg == kSM_Increment) {
        if (x1bc_areaSaveId != -1 && x1c0_layerIdx != -1) {
          TAreaId aId = mgr.GetWorld()->GetAreaIdForSaveId(x1bc_areaSaveId);
          rstl::rc_ptr< CScriptLayerManager > worldLayerState(NULL);

          if (aId != kInvalidAreaId) {
            // worldLayerState = mgr.WorldLayerState();
          } else {
            const rstl::pair< CAssetId, TAreaId > worldAreaPair =
                gpMemoryCard->GetAreaAndWorldIdForSaveId(x1bc_areaSaveId);

            if (worldAreaPair.first != kInvalidAssetId) {
              // worldLayerState = gpGameState->StateForWorld(worldAreaPair.first).GetLayerState();
              aId = worldAreaPair.second;
            }
          }

          if (aId != kInvalidAreaId) {
            // TODO
            // worldLayerState->SetLayerActive(aId, x1c0_layerIdx, msg == kSM_Increment);
          }
        }
      }
      /*
      For some bizarre reason ScriptLayerController drops into EnvFxDensityController
      */
    }
    case kSF_EnvFxDensityController: {
      if (msg == kSM_Action) {
        mgr.EnvFxManager()->SetFxDensity(s32(x100_float2), xfc_float1);
      }
      break;
    }
    case kSF_RumbleEffect:
      if (msg == kSM_Action) {
        const s32 rumbFx = s32(x100_float2);

        // Retro originally did not check the upper bounds, this could potentially cause a crash
        // with some runtimes, so let's make sure we're not out of bounds in either direction.
        // if (rumbFx < 0 || rumbFx >= 6) {
        //   break;
        // }

        // TODO: add fxTranslation
        // mgr.GetRumbleManager().Rumble(mgr, fxTranslation[rumbFx], 1.f, kRP_One);
      }
      break;
    case kSF_InventoryActivator: {
      if (msg == kSM_Action && mgr.GetPlayerState()->HasPowerUp(x1c4_item)) {
        SendScriptMsgs(kSS_Zero, mgr, kSM_None);
      }
      break;
    }
    case kSF_FusionRelay: {
      if (msg == kSM_Action && mgr.GetPlayerState()->GetIsFusionEnabled()) {
        SendScriptMsgs(kSS_Zero, mgr, kSM_None);
      }
      break;
    }
    case kSF_AreaDamage: {
      if ((msg == kSM_Deleted || msg == kSM_Deactivate) && x1e4_31_inAreaDamage) {
        x1e4_31_inAreaDamage = false;
        mgr.Player()->DecrementPhazon();
        mgr.SetIsFullThreat(false);
      }
      break;
    }
    case kSF_DropBomb: {
      if (msg == kSM_Action) {
        if (xfc_float1 >= 1.f) {
          // TODO: no CPlayerGun header
          // mgr.Player()->PlayerGun()->DropBomb(CPlayerGun::EBWeapon::PowerBomb, mgr);
        } else {
          // mgr.Player()->PlayerGun()->DropBomb(CPlayerGun::EBWeapon::Bomb, mgr);
        }
      }
      break;
    }
    case kSF_RedundantHintSystem: {
      CHintOptions& hintOptions = gpGameState->HintOptions();
      if (msg == kSM_Action) {
        hintOptions.ActivateContinueDelayHintTimer(xec_locatorName);
      } else if (msg == kSM_Increment) {
        hintOptions.ActivateImmediateHintTimer(xec_locatorName);
      } else if (msg == kSM_Decrement) {
        hintOptions.DelayHint(xec_locatorName);
      }
      break;
    }
    case kSF_Billboard: {
      if (msg == kSM_Increment) {
        const SObjectTag* objectTag =
            gpResourceFactory->GetResourceIdByName(xec_locatorName.data());
        const CAssetId assetId = objectTag ? objectTag->id : kInvalidAssetId;

        mgr.SetPendingOnScreenTex(assetId, CVector2i(int(x104_float3), int(x108_float4)),
                                  CVector2i(int(xfc_float1), int(x100_float2)));
        if (objectTag) {
          x1e8_ = gpSimplePool->GetObj(*objectTag);
          x1e5_26_displayBillboard = true;
        }
      } else if (msg == kSM_Decrement) {
        mgr.SetPendingOnScreenTex(kInvalidAssetId, CVector2i(int(x104_float3), int(x108_float4)),
                                  CVector2i(int(xfc_float1), int(x100_float2)));
        if (x1e8_)
          x1e8_.clear();
        x1e5_26_displayBillboard = false;
      }
      break;
    }
    case kSF_PlayerInAreaRelay: {
      if ((msg == kSM_Action || msg == kSM_SetToZero) &&
          GetAreaIdAlways() == mgr.GetPlayer()->GetAreaIdAlways()) {
        SendScriptMsgs(kSS_Zero, mgr, kSM_None);
      }
      break;
    }
    case kSF_HUDTarget: {
      if (msg == kSM_Increment) {
        AddMaterial(kMT_Target, kMT_RadarObject, mgr);
      } else if (msg == kSM_Decrement) {
        RemoveMaterial(kMT_Target, kMT_RadarObject, mgr);
      }
      break;
    }
    case kSF_FogFader: {
      if (msg == kSM_Increment) {
        mgr.CameraManager()->SetFogDensity(x100_float2, xfc_float1);
      } else if (msg == kSM_Decrement) {
        mgr.CameraManager()->SetFogDensity(x100_float2, 1.f);
      }
      break;
    }
    case kSF_EnterLogbook: {
      if (msg == kSM_Action) {
        mgr.DeferStateTransition(kSMT_LogBook);
      }
      break;
    }
    case kSF_Ending: {
      if (msg == kSM_Action && GetSpecialEnding(mgr) == u32(xfc_float1)) {
        SendScriptMsgs(kSS_Zero, mgr, kSM_None);
      }
      break;
    }
    default:
      break;
    }
  }
}

bool CScriptSpecialFunction::ShouldSkipCinematic(CStateManager& mgr) const {
  CAssetId mlvlId = mgr.GetWorld()->GetWorldAssetId();
  TEditorId cineId = GetEditorId();
  return gpGameState->SystemOptions().GetCinematicState(
      rstl::pair< CAssetId, TEditorId >(mlvlId, cineId));
}

void CScriptSpecialFunction::SkipCinematic(CStateManager& mgr) {
  SendScriptMsgs(kSS_Zero, mgr, kSM_None);
  mgr.SetSkipCinematicSpecialFunction(kInvalidUniqueId);
}

void CScriptSpecialFunction::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptSpecialFunction::RingScramble(CStateManager& mgr) {
  SendScriptMsgs(kSS_Zero, mgr, kSM_None);
  x1a8_ringState = kRS_Scramble;
  x1b8_ringReverse = !x1b8_ringReverse;
  float dir = x1b8_ringReverse ? 1.f : -1.f;
  for (int i = 0; i < x198_ringControllers.size(); ++i) {
    x198_ringControllers[i].x4_rotateSpeed =
        dir * mgr.GetActiveRandom()->Range(x100_float2, x104_float3);
    dir = -dir;
    x198_ringControllers[i].x8_reachedTarget = false;
  }
}

void CScriptSpecialFunction::ThinkSaveStation(float, CStateManager& mgr) {
  if (!x1e5_24_doSave) {
    return;
  }
  if (mgr.GetDeferredStateTransition() != kSMT_SaveGame) {
    x1e5_24_doSave = false;
    if (mgr.GetInSaveUI()) {
      SendScriptMsgs(kSS_MaxReached, mgr, kSM_None);
    } else {
      SendScriptMsgs(kSS_Zero, mgr, kSM_None);
    }
  }
}

void CScriptSpecialFunction::ThinkIntroBossRingController(float dt, CStateManager& mgr) {
  if (x1a8_ringState != kRS_Breakup) {
    for (int i = 0; i < x198_ringControllers.size(); ++i) {
      if (CActor* act = TCastToPtr< CActor >(mgr.ObjectById(x198_ringControllers[i].x0_id))) {
        CTransform4f newXf = act->GetTransform();
        newXf.RotateLocalZ(CRelAngle::FromDegrees(dt * x198_ringControllers[i].x4_rotateSpeed));
        act->SetTransform(newXf);
      }
    }
  }
  switch (x1a8_ringState) {
  case kRS_Scramble:
    break;
  case kRS_Breakup: {
    float minMag = 0.f;
    for (int i = 0; i < x198_ringControllers.size(); ++i) {
      if (CActor* act = TCastToPtr< CActor >(mgr.ObjectById(x198_ringControllers[i].x0_id))) {
        act->SetTranslation(act->GetTranslation() + act->GetTransform().GetForward() * 50.f * dt);
        minMag = rstl::min_val(minMag, act->GetTranslation().Magnitude());
      }
    }
    CalculateRenderBounds();
    if (minMag) {
      // Never actually happens
      for (int i = 0; i < x198_ringControllers.size(); ++i) {
        if (CEntity* ent = mgr.ObjectById(x198_ringControllers[i].x0_id)) {
          ent->SetActive(false);
        }
      }
      SetActive(false);
    }
    break;
  }
  case kRS_Rotate: {
    x1ac_ringRotateTarget =
        CQuaternion::AxisAngle(
            CUnitVector3f(0.f, 0.f, 1.f),
            CRelAngle::FromDegrees(xfc_float1 * (x1b8_ringReverse ? 1.f : -1.f) * dt))
            .Transform(x1ac_ringRotateTarget);
    bool allReachedTarget = true;
    for (int i = 0; i < x198_ringControllers.size(); ++i) {
      if (x198_ringControllers[i].x8_reachedTarget) {
        continue;
      }
      if (CActor* act = TCastToPtr< CActor >(mgr.ObjectById(x198_ringControllers[i].x0_id))) {
        CVector3f forward = act->GetTransform().GetForward();
        forward.SetZ(0.f);
        forward.Normalize();
        float f1 = CMath::Limit(CVector3f::Dot(forward, x1ac_ringRotateTarget), 1.f);
        float f2 = (xfc_float1 + CMath::AbsF(x198_ringControllers[i].x4_rotateSpeed)) / 30.f;
        if (CMath::ArcCosineR(f1) <= CMath::Deg2Rad(f2)) {
          CTransform4f newXf = CTransform4f::LookAt(CVector3f::Zero(), x1ac_ringRotateTarget);
          newXf.SetTranslation(act->GetTranslation());
          act->SetTransform(newXf);
          x198_ringControllers[i].x4_rotateSpeed = (x1b8_ringReverse ? 1.f : -1.f) * xfc_float1;
          x198_ringControllers[i].x8_reachedTarget = true;
        } else {
          allReachedTarget = false;
          break;
        }
      }
    }
    if (allReachedTarget) {
      SendScriptMsgs(kSS_MaxReached, mgr, kSM_None);
      x1a8_ringState = kRS_Stopped;
      for (int i = 0; i < x198_ringControllers.size(); ++i) {
        x198_ringControllers[i].x8_reachedTarget = false;
      }
    }
    break;
  }
  default:
    break;
  }
}

void CScriptSpecialFunction::ThinkPlayerFollowLocator(float, CStateManager& mgr) {
  for (rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
       conn != GetConnectionList().end(); ++conn) {
    if (conn->x0_state != kSS_Play || conn->x4_msg != kSM_Activate) {
      continue;
    }

    const CStateManager::TIdListResult& it = mgr.GetIdListForScript(conn->x8_objId);
    if (it.first != it.second) {
      if (const CActor* act = TCastToConstPtr< CActor >(mgr.GetObjectById(it.first->second))) {
        if (!act->HasAnimation()) {
          continue;
        }
        CTransform4f xf = act->GetTransform() * act->GetLocatorTransform(xec_locatorName);
        CPlayer* player = mgr.Player();
        player->SetTransform(xf);
        player->SetVelocityWR(CVector3f::Zero());
        player->SetAngularVelocityWR(CAxisAngle::Identity());
        player->ClearForcesAndTorques();
        return;
      }
    }
  }
}

void CScriptSpecialFunction::ThinkSpinnerController(float dt, CStateManager& mgr,
                                                    ESpinnerControllerMode mode) {
  // rstl::string_find is found in CScriptSpecialFunction.s as sub_80150d98
  const bool allowWrap = rstl::string_find(xec_locatorName, rstl::string_l("AllowWrap"), 0) != -1;
  const bool noBackward = rstl::string_find(xec_locatorName, rstl::string_l("NoBackward"), 0) != -1;
  const float pointOneByDt = 0.1f * dt;
  const float twoByDt = 2.f * dt;

  for (rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
       conn != GetConnectionList().end(); ++conn) {
    if (conn->x0_state != kSS_Play || conn->x4_msg != kSM_Activate) {
      continue;
    }

    const CStateManager::TIdListResult& it = mgr.GetIdListForScript(conn->x8_objId);
    if (it.first != it.second) {
      TUniqueId uid = it.first->second;
      if (CScriptPlatform* plat = TCastToPtr< CScriptPlatform >(mgr.ObjectById(uid))) {
        if (plat->HasModelData() && plat->GetModelData()->GetAnimationData()) {
          plat->SetControlledAnimation(true);
          if (!x1e4_24_spinnerInitializedXf) {
            x13c_spinnerInitialXf = plat->GetTransform();
            x1e4_24_spinnerInitializedXf = true;
          }

          float f28 = x138_;
          const float f29 = pointOneByDt * x100_float2;

          if (mode == kSCM_Zero) {
            if (x1e4_25_spinnerCanMove) {
              const CPlayer& pl = *mgr.GetPlayer();
              const CVector3f angVel = pl.GetAngularVelocityOR().GetVector();
              float mag = 0.f;
              if (angVel.CanBeNormalized()) {
                mag = angVel.Magnitude();
              }

              const float spinImpulse =
                  (pl.GetMorphballTransitionState() == CPlayer::kMS_Morphed ? 0.025f * mag : 0.f);
              if (spinImpulse >= x180_) {
                SendScriptMsgs(kSS_Play, mgr, kSM_None);
              }

              x180_ = spinImpulse;
              x138_ += 0.01f * spinImpulse * xfc_float1;

              if (!noBackward) {
                x138_ -= f29;
              }
            } else if (!noBackward) {
              x138_ = f28 - twoByDt;
            }
          } else if (mode == kSCM_One) {
            x138_ = (0.01f * x16c_) * xfc_float1 + f28;

            if (!noBackward) {
              x138_ -= f29;

              if (CMath::AbsF(x16c_) < dt) {
                x16c_ = 0.f;
              } else {
                x16c_ -= (dt * (x16c_ <= 0.f ? -1.f : 1.f));
              }
            }
          }

          if (allowWrap) {
            x138_ = fmod(x138_, 1.f);
            if (x138_ < 0.f) {
              x138_ += 1.f;
            }
          } else {
            x138_ = CMath::Clamp(0.f, x138_, 1.f);
          }

          bool r23 = true;
          f28 = x138_ - f28; // always 0?
          if (close_enough(x138_, 1.f, FLT_EPSILON)) {
            if (!x1e4_27_sfx3Played) {
              if (x174_sfx3 != 0xFFFF) {
                CSfxManager::AddEmitter(x174_sfx3, GetTranslation(), CVector3f::Zero(), true, false,
                                        0x7F, kInvalidAreaId.value);
              }

              x1e4_27_sfx3Played = true;
            }

            SendScriptMsgs(kSS_MaxReached, mgr, kSM_None);
            r23 = false;
          } else {
            x1e4_27_sfx3Played = false;
          }

          if (close_enough(x138_, 0.f, FLT_EPSILON)) {
            if (!x1e4_26_sfx2Played) {
              if (x172_sfx2 != 0xFFFF) {
                CSfxManager::AddEmitter(x172_sfx2, GetTranslation(), CVector3f::Zero(), true, false,
                                        0x7F, kInvalidAreaId.value);
              }

              x1e4_26_sfx2Played = true;
            }

            SendScriptMsgs(kSS_Zero, mgr, kSM_None);
            r23 = false;
          } else {
            x1e4_26_sfx2Played = false;
          }

          if (r23) {
            if (x170_sfx1 != 0xFFFF) {
              x184_.AddValue(0.f <= f28 ? 100 : 0x7f);
              const rstl::optional_object< float > avg = x184_.GetAverage();
              AddOrUpdateEmitter(0.f <= f28 ? x108_float4 : 1.f, x178_sfxHandle, x170_sfx1,
                                 GetTranslation(), avg.data());
            }
          } else {
            DeleteEmitter(x178_sfxHandle);
          }

          CAnimData* animData = plat->ModelData()->AnimationData();
          const float dur = animData->GetAnimationDuration(animData->GetDefaultAnimation()) * x138_;
          animData->SetPhase(0.f);
          animData->SetPlaybackRate(1.f);
          // Redundant copy is needed
          SAdvancementDeltas deltas = plat->UpdateAnimation(dur, mgr, true);
          plat->SetTransform(x13c_spinnerInitialXf * deltas.xc_rotDelta.BuildTransform4f(deltas.x0_posDelta));
        }
      }
    }
  }
}

void CScriptSpecialFunction::ThinkObjectFollowLocator(float, CStateManager& mgr) {
  TUniqueId followerAct = kInvalidUniqueId;
  TUniqueId followedAct = kInvalidUniqueId;
  for (rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
       conn != GetConnectionList().end(); ++conn) {
    if (conn->x0_state != kSS_Play ||
        (conn->x4_msg != kSM_Activate && conn->x4_msg != kSM_Deactivate)) {
      continue;
    }

    const CStateManager::TIdListResult& it = mgr.GetIdListForScript(conn->x8_objId);
    if (it.first != it.second) {
      TUniqueId uid = it.first->second;
      if (const CActor* act = TCastToConstPtr< CActor >(mgr.GetObjectById(uid))) {
        if (conn->x4_msg == kSM_Activate && act->HasAnimation()) {
          if (!act->GetActive()) {
            return;
          }
          followedAct = uid;
        } else if (conn->x4_msg == kSM_Deactivate) {
          followerAct = uid;
        }
      }
    }
  }

  if (followerAct != kInvalidUniqueId && followedAct != kInvalidUniqueId) {
    const CActor* fromAct = TCastToConstPtr< CActor >(mgr.GetObjectById(followedAct));
    CActor* toAct = TCastToPtr< CActor >(mgr.ObjectById(followerAct));
    if (fromAct && toAct) {
      CTransform4f xf =
          fromAct->GetTransform() * fromAct->GetScaledLocatorTransform(xec_locatorName);
      toAct->SetTransform(xf);
    }
  }
}

void CScriptSpecialFunction::ThinkObjectFollowObject(float, CStateManager& mgr) {
  TUniqueId followerAct = kInvalidUniqueId;
  TUniqueId followedAct = kInvalidUniqueId;
  for (rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
       conn != GetConnectionList().end(); ++conn) {
    if (conn->x0_state != kSS_Play ||
        (conn->x4_msg != kSM_Activate && conn->x4_msg != kSM_Deactivate)) {
      continue;
    }

    const CStateManager::TIdListResult& it = mgr.GetIdListForScript(conn->x8_objId);
    if (it.first != it.second) {
      TUniqueId uid = it.first->second;
      if (const CActor* act = TCastToConstPtr< CActor >(mgr.GetObjectById(uid))) {
        if (conn->x4_msg == kSM_Activate) {
          if (!act->GetActive()) {
            return;
          }
          followedAct = uid;
        } else if (conn->x4_msg == kSM_Deactivate) {
          followerAct = uid;
        }
      }
    }
  }

  const CActor* followed = TCastToConstPtr< CActor >(mgr.GetObjectById(followedAct));
  CActor* follower = TCastToPtr< CActor >(mgr.ObjectById(followerAct));
  if (follower && followed) {
    follower->SetTransform(followed->GetTransform());
  }
}

void CScriptSpecialFunction::Render(CStateManager& mgr) {
  if (xe8_function == kSF_FogVolume) {
    /* TODO
    const float z = mgr.IntegrateVisorFog(xfc_float1 * std::sin(CGraphics::GetSecondsMod900()));
    if (z > 0.f) {
      CVector3f max = GetTranslation() + x10c_vector3f;
      max.SetZ(max.GetZ() + z);
      const CAABox box(GetTranslation() - x10c_vector3f, max);
      const CTransform4f modelMtx = CTransform4f::Translate(box.center()) *
    CTransform4f::Scale(box.extents()); g_Renderer->SetModelMatrix(modelMtx);
      g_Renderer->RenderFogVolume(x118_color, zeus::CAABox(-1.f, 1.f), nullptr, nullptr);
    }
    */
  } else {
    CActor::Render(mgr);
  }
}

void CScriptSpecialFunction::ThinkChaffTarget(float dt, CStateManager& mgr) {
  /*
  const zeus::CAABox box(5.f - GetTranslation(), 5.f + GetTranslation());
  EntityList nearList;
  mgr.BuildNearList(nearList, box, CMaterialFilter::MakeInclude({kMT_Projectile}), nullptr);
  auto& filter = mgr.GetCameraFilterPass(7);

  for (const auto& uid : nearList) {
    if (const TCastToPtr<CEnergyProjectile> proj = mgr.ObjectById(uid)) {
      if (proj->GetHomingTargetId() == GetUniqueId()) {
        proj->Set3d0_26(true);
        if (mgr.GetPlayer().GetAreaIdAlways() == GetAreaIdAlways()) {
          mgr.GetPlayer().SetHudDisable(x100_float2, 0.5f, 2.5f);
          filter.SetFilter(EFilterType::Blend, EFilterShape::Fullscreen, 0.f, zeus::skWhite,
  CAssetId()); filter.DisableFilter(0.1f);
        }
      }
    }
  }

  x194_ = zeus::max(0.f, x194_ - dt);
  if (x194_ != 0.f && mgr.GetPlayer()->GetAreaIdAlways() == GetAreaIdAlways()) {
    float intfMag = x104_float3 * (0.5f + ((0.5f + x194_) / xfc_float1));
    if (x194_ < 1.f) {
      intfMag *= x194_;
    }

    mgr.GetPlayerState()->GetStaticInterference().AddSource(GetUniqueId(), intfMag, .5f);

    if (mgr.GetPlayerState()->GetCurrentVisor() != kPV_Scan) {
      mgr.GetPlayer()->AddOrbitDisableSource(mgr, GetUniqueId());
    } else {
      mgr.GetPlayer()->RemoveOrbitDisableSource(GetUniqueId());
    }
  }
  */
}

void CScriptSpecialFunction::ThinkRainSimulator(float, CStateManager& mgr) {
  if ((static_cast< float >(mgr.GetInputFrameIdx() % 3600)) / 3600.f < 0.5f) {
    SendScriptMsgs(kSS_MaxReached, mgr, kSM_None);
  } else {
    SendScriptMsgs(kSS_Zero, mgr, kSM_None);
  }
}

void CScriptSpecialFunction::ThinkAreaDamage(float dt, CStateManager& mgr) {
  const CPlayer* player = mgr.GetPlayer();
  bool inArea = player->GetAreaIdAlways() == GetAreaIdAlways();
  bool immune = mgr.GetPlayerState()->GetCurrentSuitRaw() > CPlayerState::kPS_Power;
  if (x1e4_31_inAreaDamage) {
    if (!inArea || immune) {
      x1e4_31_inAreaDamage = false;
      mgr.Player()->DecrementPhazon();
      SendScriptMsgs(kSS_Exited, mgr, kSM_None);
      mgr.SetIsFullThreat(false);
      return;
    }
  } else if (!inArea || immune) {
    return;
  } else {
    x1e4_31_inAreaDamage = true;
    mgr.Player()->IncrementPhazon();
    SendScriptMsgs(kSS_Entered, mgr, kSM_None);
    mgr.SetIsFullThreat(true);
  }

  CDamageInfo dInfo(CWeaponMode(kWT_Heat), xfc_float1 * dt, 0.f, 0.f, true);
  mgr.ApplyDamage(GetUniqueId(), player->GetUniqueId(), GetUniqueId(), dInfo,
                  CMaterialFilter::MakeIncludeExclude(CMaterialList(kMT_Solid), CMaterialList()),
                  CVector3f::Zero());
}

void CScriptSpecialFunction::ThinkActorScale(float dt, CStateManager& mgr) {
  const float deltaScale = dt * xfc_float1;
  const float f2 = x100_float2;

  for (rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
       conn != GetConnectionList().end(); ++conn) {
    if (conn->x0_state != kSS_Play || conn->x4_msg != kSM_Activate) {
      continue;
    }

    TUniqueId uid = mgr.GetIdForScript(conn->x8_objId);
    if (CActor* act = TCastToPtr< CActor >(mgr.ObjectById(uid))) {
      if (act->HasModelData()) {
        CVector3f scale = act->GetModelData()->GetScale();
        f32 x, y, z;
        if (deltaScale > 0.f) {
          x = CMath::Min(deltaScale + scale.GetX(), f2);
          y = CMath::Min(deltaScale + scale.GetY(), f2);
          z = CMath::Min(deltaScale + scale.GetZ(), f2);
        } else {
          x = CMath::Max(deltaScale + scale.GetX(), f2);
          y = CMath::Max(deltaScale + scale.GetY(), f2);
          z = CMath::Max(deltaScale + scale.GetZ(), f2);
        }
        act->ModelData()->SetScale(CVector3f(x, y, z));
      }
    }
  }
}

void CScriptSpecialFunction::ThinkPlayerInArea(float dt, CStateManager& mgr) {
  if (mgr.GetPlayer()->GetAreaIdAlways() == GetAreaIdAlways()) {
    if (x1e5_25_playerInArea) {
      return;
    }

    x1e5_25_playerInArea = true;
    SendScriptMsgs(kSS_Entered, mgr, kSM_None);
  } else if (x1e5_25_playerInArea) {
    x1e5_25_playerInArea = false;
    SendScriptMsgs(kSS_Exited, mgr, kSM_None);
  }
}

void CScriptSpecialFunction::DeleteEmitter(const CSfxHandle& handle) {
  if (!handle) {
    return;
  }

  CSfxManager::RemoveEmitter(handle);
}

u32 CScriptSpecialFunction::GetSpecialEnding(const CStateManager& mgr) const {
  const u32 rate = (mgr.GetPlayerState()->CalculateItemCollectionRate() * 100) /
                   mgr.GetPlayerState()->GetTotalPickupCount();
  if (rate < 75) {
    return 0;
  }
  if (rate < 100) {
    return 1;
  }
  return 2;
}

void CScriptSpecialFunction::AddOrUpdateEmitter(float pitch, CSfxHandle& handle, u16 id,
                                                const CVector3f& pos, uchar vol) {
  if (!handle) {
    handle = CSfxManager::AddEmitter(id, pos, CVector3f::Zero(), vol, true, true, 0x7f,
                                     kInvalidAreaId.value);
  } else {
    CSfxManager::UpdateEmitter(handle, pos, CVector3f::Zero(), vol);
    CSfxManager::PitchBend(handle, 8192.f * pitch + 8192.f);
  }
}

CScriptSpecialFunction::SRingController::SRingController(TUniqueId uid, float rotateSpeed,
                                                         bool reachedTarget)
: x0_id(uid)
, x4_rotateSpeed(rotateSpeed)
, x8_reachedTarget(reachedTarget)
, xc_(CVector3f::Zero()) {}

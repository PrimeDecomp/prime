#include "MetroidPrime/ScriptObjects/CScriptWorldTeleporter.hpp"

#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CMainFlow.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Player/CWorldTransManager.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CResFactory.hpp"

CScriptWorldTeleporter::CScriptWorldTeleporter(TUniqueId uid, const rstl::string& name,
                                               const CEntityInfo& info, bool active,
                                               CAssetId worldId, CAssetId areaId)
: CEntity(uid, info, active, name)
, x34_worldId(worldId)
, x38_areaId(areaId)
, x3c_type(kTT_NoTransition)
, x40_24_upElevator(false)
, x40_25_inTransition(false)
, x40_27_fadeWhite(false)
, x44_charFadeIn(0.1f)
, x48_charsPerSecond(8.0f)
, x4c_showDelay(0.0f)
, x50_playerAnim(kInvalidAssetId, -1, 0)
, x5c_playerScale(CVector3f::Zero())
, x68_platformModel(kInvalidAssetId)
, x6c_platformScale(CVector3f::Zero())
, x78_backgroundModel(kInvalidAssetId)
, x7c_backgroundScale(CVector3f::Zero())
, x88_soundId(CSfxManager::kInternalInvalidSfxId)
, x8a_volume(0)
, x8b_panning(0) 
{}

CScriptWorldTeleporter::CScriptWorldTeleporter(
    TUniqueId uid, const rstl::string& name, const CEntityInfo& info, bool active, CAssetId worldId,
    CAssetId areaId, CAssetId playerAncs, uint charIdx, uint defaultAnim,
    const CVector3f& playerScale, CAssetId platformModel, const CVector3f& platformScale,
    CAssetId backgroundModel, const CVector3f& backgroundScale, bool upElevator, ushort soundId,
    uchar volume, uchar panning)
: CEntity(uid, info, active, name)
, x34_worldId(worldId)
, x38_areaId(areaId)
, x3c_type(kTT_Elevator)
, x40_24_upElevator(upElevator)
, x40_25_inTransition(false)
, x40_27_fadeWhite(false)
, x44_charFadeIn(0.1f)
, x48_charsPerSecond(8.0f)
, x4c_showDelay(0.0f)
, x50_playerAnim(playerAncs, charIdx, defaultAnim)
, x5c_playerScale(playerScale)
, x68_platformModel(platformModel)
, x6c_platformScale(platformScale)
, x78_backgroundModel(backgroundModel)
, x7c_backgroundScale(backgroundScale)
, x88_soundId(CSfxManager::TranslateSFXID(soundId))
, x8a_volume(volume)
, x8b_panning(panning) {}

CScriptWorldTeleporter::CScriptWorldTeleporter(TUniqueId uid, const rstl::string& name,
                                               const CEntityInfo& info, bool active,
                                               CAssetId worldId, CAssetId areaId, ushort soundId,
                                               uchar volume, uchar panning, CAssetId fontId,
                                               CAssetId stringId, bool fadeWhite, float charFadeIn,
                                               float charsPerSecond, float showDelay)
: CEntity(uid, info, active, name)
, x34_worldId(worldId)
, x38_areaId(areaId)
, x3c_type(kTT_Text)
, x40_24_upElevator(false)
, x40_25_inTransition(false)
, x40_27_fadeWhite(fadeWhite)
, x44_charFadeIn(charFadeIn)
, x48_charsPerSecond(charsPerSecond)
, x4c_showDelay(showDelay)
, x50_playerAnim(kInvalidAssetId, -1, 0)
, x5c_playerScale(CVector3f::Zero())
, x68_platformModel(kInvalidAssetId)
, x6c_platformScale(CVector3f::Zero())
, x78_backgroundModel(kInvalidAssetId)
, x7c_backgroundScale(CVector3f::Zero())
, x88_soundId(CSfxManager::TranslateSFXID(soundId))
, x8a_volume(volume)
, x8b_panning(panning)
, x8c_fontId(fontId)
, x90_stringId(stringId) {}

CScriptWorldTeleporter::~CScriptWorldTeleporter() {}

void CScriptWorldTeleporter::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptWorldTeleporter::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                             CStateManager& mgr) {
  if (GetActive()) {
    CWorldTransManager* transMgr = mgr.WorldTransManager();
    switch (msg) {
    case kSM_SetToZero: {
      CWorld* world = mgr.World();
      world->SetLoadPauseState(true);
      CAssetId currentWorld = gpGameState->CurrentWorldAssetId();
      gpGameState->SetCurrentWorldId(x34_worldId);

      if (gpResourceFactory->GetResLoader().GetResourceTypeById(x34_worldId) == 'MLVL') {
        StartTransition(mgr);
        gpGameState->SetCurrentWorldId(x34_worldId);
        gpGameState->CurrentWorldState().SetDesiredAreaAssetId(x38_areaId);
        gpMain->SetRestartMode(CMain::kRM_None);
        mgr.QuitGame();
      } else {
        x40_25_inTransition = false;
        transMgr->DisableTransition();
        gpGameState->SetCurrentWorldId(currentWorld);
      }
      break;
    }
    case kSM_Play:
      StartTransition(mgr);
      transMgr->SetSfx(x88_soundId, x8a_volume, x8b_panning);
      transMgr->SfxStart();
      break;

    case kSM_Stop:
      x40_25_inTransition = false;
      transMgr->DisableTransition();
      transMgr->SfxStop();
      break;

    default:
      break;
    }
  }
  CEntity::AcceptScriptMsg(msg, uid, mgr);
}

void CScriptWorldTeleporter::StartTransition(CStateManager& mgr) {
  if (x40_25_inTransition) {
    return;
  }

  CWorldTransManager* transMgr = mgr.WorldTransManager();

  if (x3c_type == kTT_Elevator && x50_playerAnim.GetACSFile() != kInvalidAssetId &&
      x50_playerAnim.GetCharacter() != u32(-1)) {
    transMgr->EnableTransition(CAnimRes(x50_playerAnim.GetACSFile(), x50_playerAnim.GetCharacter(),
                                        x5c_playerScale, x50_playerAnim.GetInitialAnimation(),
                                        true),
                               x68_platformModel, x6c_platformScale, x78_backgroundModel,
                               x7c_backgroundScale, x40_24_upElevator);
    x40_25_inTransition = true;

  } else if (x3c_type == kTT_Text) {
    transMgr->EnableTransition(x8c_fontId, x90_stringId, 0, GetFadeWhite(), x44_charFadeIn,
                               x48_charsPerSecond, x4c_showDelay);
    x40_25_inTransition = true;

  } else {
    transMgr->DisableTransition();
  }
}

#include "MetroidPrime/ScriptObjects/CScriptSpawnPoint.hpp"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

CScriptSpawnPoint::CScriptSpawnPoint(
    TUniqueId uid, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf,
    const rstl::reserved_vector< int, int(CPlayerState::kIT_Max) >& itemCounts,
    const bool defaultSpawn, const bool active, const bool morphed)
: CEntity(uid, info, active, name)
, x34_xf(xf)
, x64_itemCounts(itemCounts)
, x10c_24_firstSpawn(defaultSpawn)
, x10c_25_morphed(morphed) {}

CScriptSpawnPoint::~CScriptSpawnPoint() {}

const CTransform4f& CScriptSpawnPoint::GetTransform() const { return x34_xf; }

int CScriptSpawnPoint::GetPowerup(const CPlayerState::EItemType& type) const {
  if (CPlayerState::kIT_Max <= type || type < 0) {
    return x64_itemCounts.front();
  }
  return x64_itemCounts[type];
}

void CScriptSpawnPoint::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                        CStateManager& stateMgr) {
  CEntity::AcceptScriptMsg(msg, objId, stateMgr);

  switch (msg) {
  case kSM_Reset:
    for (int i = 0; i < CPlayerState::kIT_Max; ++i) {
      const CPlayerState::EItemType e = CPlayerState::EItemType(i);
      stateMgr.PlayerState()->SetPowerUp(e, GetPowerup(e));
      stateMgr.PlayerState()->SetPickup(e, GetPowerup(e));
    }
  case kSM_SetToZero:
    if (GetActive()) {
      CPlayer* player = stateMgr.Player();
      TAreaId thisAreaId = GetCurrentAreaId();
      TAreaId nextAreaId = stateMgr.GetNextAreaId();

      if (thisAreaId != nextAreaId) {
        bool propagateAgain = false;

        CGameArea* area = stateMgr.World()->Area(thisAreaId);
        CGameArea::EOcclusionState occlusionState =
            area->IsLoaded() ? area->GetOcclusionState() : CGameArea::kOS_Occluded;

        if (occlusionState == CGameArea::kOS_Occluded) {
          while (!area->TryTakingOutOfARAM()) {
          }
          CWorld::PropogateAreaChain(CGameArea::kOS_Visible, area, stateMgr.World());
          propagateAgain = true;
        }

        stateMgr.SetCurrentAreaId(thisAreaId);
        stateMgr.SetActorAreaId(*player, thisAreaId);
        player->Teleport(x34_xf, stateMgr, true);
        player->SetSpawnedMorphBallState(
            x10c_25_morphed ? CPlayer::kMS_Morphed : CPlayer::kMS_Unmorphed, stateMgr);

        if (propagateAgain) {
          CWorld::PropogateAreaChain(CGameArea::kOS_Occluded, stateMgr.World()->Area(nextAreaId),
                                     stateMgr.World());
        }

      } else {
        player->Teleport(x34_xf, stateMgr, true);
        player->SetSpawnedMorphBallState(
            x10c_25_morphed ? CPlayer::kMS_Morphed : CPlayer::kMS_Unmorphed, stateMgr);
      }
      CEntity::SendScriptMsgs(kSS_Zero, stateMgr, kSM_None);
    }
  default:
    break;
  }
}

void CScriptSpawnPoint::Accept(IVisitor& visitor) { visitor.Visit(*this); }

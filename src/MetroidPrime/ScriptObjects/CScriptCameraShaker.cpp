#include "MetroidPrime/ScriptObjects/CScriptCameraShaker.hpp"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"


CScriptCameraShaker::CScriptCameraShaker(TUniqueId uid, const rstl::string& name,
                                         const CEntityInfo& info, bool active,
                                         const CCameraShakeData& shakeData)
: CEntity(uid, info, active, name), x34_shakeData(shakeData) {}

void CScriptCameraShaker::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                          CStateManager& stateMgr) {
  switch (msg) {
  case kSM_Action: {
    if (GetActive() && GetCurrentAreaId() != kInvalidAreaId) {
      const CGameArea& area = stateMgr.GetWorld()->GetAreaAlways(GetCurrentAreaId());
      CGameArea::EOcclusionState occState =
          area.IsLoaded() ? area.GetOcclusionState() : CGameArea::kOS_Occluded;
      if (occState != CGameArea::kOS_Occluded) {
        x34_shakeData.SetId(stateMgr.CameraManager()->AddCameraShaker(x34_shakeData, false));
      }
    }
    break;
  }
  case kSM_Deactivate: {
    if (GetActive())
      stateMgr.CameraManager()->RemoveCameraShaker(x34_shakeData.GetId());
    break;
  }
  default:
    break;
  }
  CEntity::AcceptScriptMsg(msg, objId, stateMgr);
}

void CScriptCameraShaker::Accept(IVisitor& visitor) { visitor.Visit(*this); }

CScriptCameraShaker::~CScriptCameraShaker() {}

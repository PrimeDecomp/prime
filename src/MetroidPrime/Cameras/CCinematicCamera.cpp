#include "MetroidPrime/Cameras/CCinematicCamera.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Player/CMorphBall.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CScriptActor.hpp"
#include "MetroidPrime/ScriptObjects/CScriptCameraWaypoint.hpp"
#include "MetroidPrime/TCastTo.hpp"

#include "rstl/algorithm.hpp"

CCinematicCamera::CCinematicCamera(const TUniqueId uid, const rstl::string& name,
                                   const CEntityInfo& info, const CTransform4f& xf,
                                   const bool active, const float shotDuration, const float fovy,
                                   const float znear, const float zfar, const float aspect,
                                   const uint flags)
: CGameCamera(uid, active, name, info, xf, fovy, znear, zfar, aspect, kInvalidUniqueId,
              (flags & 0x20) != 0, 0)
, x1e8_duration(shotDuration)
, x1ec_t(0.f)
, x1f0_origFovy(fovy)
, x1f4_passedViewPoint(0)
, x1f8_passedTarget(0)
, x1fc_origOrientation(CQuaternion::FromMatrix(xf))
, x20c_lookAtId(kInvalidUniqueId)
, x210_moveIntoEyePos(CVector3f::Zero())
, x21c_flags(flags)
, x220_24_(false) {}

CCinematicCamera::~CCinematicCamera() {}

void CCinematicCamera::Reset(const CTransform4f& xf, CStateManager& mgr) {}

void CCinematicCamera::Think(float dt, CStateManager& mgr) {}

void CCinematicCamera::ProcessInput(const CFinalInput& input, CStateManager& mgr) {}

void CCinematicCamera::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CCinematicCamera::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                       CStateManager& mgr) {}

void CCinematicCamera::SendArrivedMsg(TUniqueId reciever, CStateManager& mgr) const {
  mgr.SendScriptMsgAlways(reciever, GetUniqueId(), kSM_Arrived);
}

void CCinematicCamera::DeactivateSelf(CStateManager& mgr) {
  SetActive(false);
  SendScriptMsgs(kSS_Inactive, mgr, kSM_None);
  WasDeactivated(mgr);
}

void CCinematicCamera::WasDeactivated(CStateManager& mgr) {
  TUniqueId uid = GetUniqueId();
  mgr.CameraManager()->RemoveCinemaCamera(uid, mgr);
  mgr.Player()->MorphBall()->LoadMorphBallModel(mgr);

  if ((x21c_flags & 0x100) != 0) {
    mgr.SetCinematicPause(false);
  }

  x188_viewPoints = rstl::vector< CVector3f >();
  x198_viewOrientations = rstl::vector< CQuaternion >();
  x1a8_viewPointArrivals = rstl::vector< TUniqueId >();
  x1b8_targets = rstl::vector< CVector3f >();
  x1c8_targetArrivals = rstl::vector< TUniqueId >();
  x1d8_viewHFovs = rstl::vector< float >();
}

void CCinematicCamera::CalculateWaypoints(CStateManager& mgr) {
  const SConnection* firstVP = nullptr;
  const SConnection* firstTarget = nullptr;

  rstl::vector< SConnection >::const_iterator iter = GetConnectionList().begin();

  for (; iter != GetConnectionList().end(); ++iter) {
    if (iter->x0_state == kSS_CameraPath && iter->x4_msg == kSM_Activate) {
      firstVP = &*iter;
    } else if (iter->x0_state == kSS_CameraTarget && iter->x4_msg == kSM_Activate) {
      firstTarget = &*iter;
    }
  }

  x188_viewPoints.clear();
  x188_viewPoints.reserve(3);
  x198_viewOrientations.clear();
  x198_viewOrientations.reserve(3);
  x1a8_viewPointArrivals.clear();
  x1a8_viewPointArrivals.reserve(3);
  x1b8_targets.clear();
  x1b8_targets.reserve(3);
  x1c8_targetArrivals.clear();
  x1c8_targetArrivals.reserve(3);
  x1d8_viewHFovs.clear();
  x1d8_viewHFovs.reserve(3);

  x220_24_ = false;

  if ((x21c_flags & 0x2) != 0 && (x21c_flags & 0x200) == 0) {
    GenerateMoveOutofIntoPoints(true, mgr);
  }

  if (firstVP) {
    const CActor* wp =
        TCastToConstPtr< CActor >(mgr.GetObjectById(mgr.GetIdForScript(firstVP->x8_objId)));

    while (wp) {
      x188_viewPoints.reserve(x198_viewOrientations.size() + 1);
      x188_viewPoints.push_back(wp->GetTranslation());
      x198_viewOrientations.reserve(x198_viewOrientations.size() + 1);
      x198_viewOrientations.push_back(wp->GetRotation());

      if (const CScriptCameraWaypoint* cwp = TCastToConstPtr< CScriptCameraWaypoint >(wp)) {
        x1d8_viewHFovs.reserve(x1d8_viewHFovs.size() + 1);
        x1d8_viewHFovs.push_back(cwp->GetHFov());
      }

      rstl::vector< TUniqueId >::iterator search = rstl::find(
          x1a8_viewPointArrivals.begin(), x1a8_viewPointArrivals.end(), wp->GetUniqueId());

      if (search == x1a8_viewPointArrivals.end()) {
        x1a8_viewPointArrivals.reserve(x1a8_viewPointArrivals.size() + 1);
        x1a8_viewPointArrivals.push_back(wp->GetUniqueId());
        SConnection randConn(kSS_Active, kSM_UNKM0, kInvalidEditorId);
        if (PickRandomActiveConnection(wp->GetConnectionList(), randConn, mgr)) {
          wp = TCastToConstPtr< CActor >(mgr.GetObjectById(mgr.GetIdForScript(randConn.x8_objId)));
        } else {
          break;
        }
      } else {
        break;
      }
    }
  }

  if (firstTarget) {
    TUniqueId tgtId = mgr.GetIdForScript(firstTarget->x8_objId);
    const CActor* tgt = TCastToConstPtr< CActor >(mgr.GetObjectById(tgtId));
    while (tgt) {
      x1b8_targets.reserve(x1b8_targets.size() + 1);
      x1b8_targets.push_back(tgt->GetTranslation());
      rstl::vector< TUniqueId >::const_iterator search =
          rstl::find(x1c8_targetArrivals.begin(), x1c8_targetArrivals.end(), tgt->GetUniqueId());
      if (search == x1c8_targetArrivals.end()) {
        x1c8_targetArrivals.reserve(x1c8_targetArrivals.size() + 1);
        x1c8_targetArrivals.push_back(tgt->GetUniqueId());
        SConnection randConn(kSS_Active, kSM_UNKM0, kInvalidEditorId);
        if (PickRandomActiveConnection(tgt->GetConnectionList(), randConn, mgr)) {
          tgt = TCastToConstPtr< CActor >(mgr.GetObjectById(mgr.GetIdForScript(randConn.x8_objId)));
        } else {
          break;
        }
      } else {
        break;
      }
    }
  }

  if ((x21c_flags & 0x4) != 0 && (x21c_flags & 0x200) == 0) {
    GenerateMoveOutofIntoPoints(false, mgr);
  }
}

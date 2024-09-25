#include "MetroidPrime/Cameras/CPathCamera.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/TCastTo.hpp"
// #include "MetroidPrime/ScriptObjects/CScriptDoor.hpp"

CPathCamera::CPathCamera(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const CTransform4f& xf, bool active, float lengthExtent, float filterMag,
                         float filterProportion, float minEaseDist, float maxEaseDist, u32 flags,
                         EInitialSplinePosition initPos)
: CGameCamera(uid, active, name, info, xf, CCameraManager::GetDefaultThirdPersonVerticalFOV(),
              CCameraManager::GetDefaultFirstPersonNearClipDistance(),
              CCameraManager::GetDefaultFirstPersonFarClipDistance(),
              CCameraManager::GetDefaultAspectRatio(), kInvalidUniqueId, false, 0)
, x188_spline(flags & 1)
, x1d4_pos(0.f)
, x1d8_time(0.f)
, x1dc_lengthExtent(lengthExtent)
, x1e0_filterMag(filterMag)
, x1e4_filterProportion(filterProportion)
, x1e8_initPos(initPos)
, x1ec_flags(flags)
, x1f0_minEaseDist(minEaseDist)
, x1f4_maxEaseDist(maxEaseDist) {}

CPathCamera::~CPathCamera() {}

void CPathCamera::Reset(const CTransform4f&, CStateManager& mgr) {}

CTransform4f CPathCamera::MoveAlongSpline(float t, CStateManager& mgr) {
  return CTransform4f::Identity();
}

void CPathCamera::ClampToClosedDoor(CStateManager& mgr) {
  /*
  if (TCastToConstPtr<CScriptDoor> door =
          mgr.GetObjectById(mgr.GetCameraManager()->GetBallCamera()->GetTooCloseActorId())) {
    if (!door->IsOpen() && CBallCamera::IsBallNearDoor(GetTranslation(), mgr)) {
      x1d4_pos = (x1d4_pos > x1d8_time) ? x1d8_time - x1dc_lengthExtent : x1d8_time +
  x1dc_lengthExtent;
      SetTranslation(x188_spline.GetInterpolatedSplinePointByLength(x1d4_pos).origin);
    }
  }
  */
}

void CPathCamera::Think(float dt, CStateManager& mgr) {
#if 0
  if (!GetActive())
    return;

  if (mgr.GetCameraManager()->GetPathCameraId() != GetUniqueId())
    return;

  if (x188_spline.GetSize() <= 0)
    return;

  zeus::CTransform xf = GetTransform();
  zeus::CVector3f ballLook = mgr.GetCameraManager()->GetBallCamera()->GetLookPos();
  if ((x1ec_flags & 0x10)) {
    if (const CScriptCameraHint* hint = mgr.GetCameraManager()->GetCameraHint(mgr))
      ballLook.z() = hint->GetTranslation().z();
  }

  if (!mgr.GetPlayer().GetVelocity().canBeNormalized() && (ballLook - GetTranslation()).canBeNormalized()) {
    if (x1ec_flags & 4)
      SetTransform(x188_spline.GetInterpolatedSplinePointByLength(x1d4_pos));
    else
      SetTransform(zeus::lookAt(GetTranslation(), ballLook));
    return;
  }

  xf = MoveAlongSpline(dt, mgr);
  SetTranslation(xf.origin);

  if (x1ec_flags & 0x20)
    ClampToClosedDoor(mgr);

  CVector3f tmp = ballLook - GetTranslation();
  tmp.SetZ(0.f);
  if (tmp.CanBeNormalized())
    SetTransform(zeus::lookAt(GetTranslation(), ballLook));

  if (x1ec_flags & 4)
    SetTransform(xf);
#endif
}

void CPathCamera::ProcessInput(const CFinalInput&, CStateManager& mgr) {
  // Empty
}

void CPathCamera::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CPathCamera::Render(const CStateManager& mgr) const {}

void CPathCamera::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  CGameCamera::AcceptScriptMsg(msg, uid, mgr);

  if (!GetActive() || msg != kSM_InitializedInArea) {
    return;
  }
  x188_spline.Initialise(GetUniqueId(), GetConnectionList(), mgr);
}

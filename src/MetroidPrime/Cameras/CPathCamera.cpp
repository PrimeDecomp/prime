#include "MetroidPrime/Cameras/CPathCamera.hpp"

#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDoor.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"
#include "rstl/math.hpp"

static const CMaterialList kLineOfSightIncludeList = CMaterialList(kMT_Solid);
static const CMaterialList kLineOfSightExcludeList = CMaterialList(kMT_ProjectilePassthrough);
static const CMaterialFilter kLineOfSightFilter =
    CMaterialFilter::MakeIncludeExclude(kLineOfSightIncludeList, kLineOfSightExcludeList);
CPathCamera::CPathCamera(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const CTransform4f& xf, const bool active, const float lengthExtent,
                         const float filterMag, const float filterProportion,
                         const float minEaseDist, const float maxEaseDist, const uint flags,
                         const EInitialSplinePosition initPos)
: CGameCamera(uid, active, name, info, xf, CCameraManager::GetDefaultThirdPersonVerticalFOV(),
              CCameraManager::GetDefaultFirstPersonNearClipDistance(),
              CCameraManager::GetDefaultFirstPersonFarClipDistance(),
              CCameraManager::GetDefaultAspectRatio(), kInvalidUniqueId, false, 0)
, mSpline(flags & 1)
, mPos(0.f)
, mTime(0.f)
, mLengthExtent(lengthExtent)
, mFilterMag(filterMag)
, mFilterProportions(filterProportion)
, mInitialPosition(initPos)
, mFlags(flags)
, mMinEaseDist(minEaseDist)
, mMaxEaseDist(maxEaseDist) {}

CPathCamera::~CPathCamera() {}

void CPathCamera::Reset(const CTransform4f& xf, CStateManager& mgr) {
  CVector3f ballPos1(
      mgr.GetPlayer()->GetTranslation().GetX(), mgr.GetPlayer()->GetTranslation().GetY(),
      mgr.GetPlayer()->GetTranslation().GetZ() + gpTweakPlayer->GetPlayerBallHalfExtent());
  CVector3f ballPos = ballPos1;

  float closestLength = mSpline.FindClosestLengthOnSpline(0.f, ballPos);
  float closestLengthClamped = rstl::max_val(0.f, closestLength);
  CVector3f interpolatedPoint =
      mSpline.GetInterpolatedSplinePointByLength(closestLength).GetTranslation();

  CTransform4f ballTransform = mgr.GetCameraManager()->GetBallCamera()->GetTransform();
}

CTransform4f CPathCamera::MoveAlongSpline(float t, CStateManager& mgr) {
  return CTransform4f::Identity();
}

void CPathCamera::AvoidDoorCollisions(CStateManager& mgr) {

  if (const CScriptDoor* door = TCastToConstPtr< CScriptDoor >(
          mgr.GetObjectById(mgr.GetCameraManager()->GetBallCamera()->GetTooCloseActorId()))) {
    if (!door->IsOpen() && CBallCamera::CheckDoorProximity(GetTranslation(), mgr)) {
      float tmp = mTime + mLengthExtent;
      if (mPos > mTime) {
        tmp = mTime - mLengthExtent;
      }

      mPos = tmp;
      const CVector3f tmpVec = mSpline.GetInterpolatedSplinePointByLength(tmp).GetTranslation();
      SetTranslation(tmpVec);
    }
  }
}

void CPathCamera::Think(float dt, CStateManager& mgr) {
#if 0
  if (!GetActive())
    return;

  if (mgr.GetCameraManager()->GetPathCameraId() != GetUniqueId())
    return;

  if (mSpline.GetSize() <= 0)
    return;

  zeus::CTransform xf = GetTransform();
  zeus::CVector3f ballLook = mgr.GetCameraManager()->GetBallCamera()->GetLookPos();
  if ((mFlags & 0x10)) {
    if (const CScriptCameraHint* hint = mgr.GetCameraManager()->GetCameraHint(mgr))
      ballLook.z() = hint->GetTranslation().z();
  }

  if (!mgr.GetPlayer().GetVelocity().CanBeNormalized() && (ballLook - GetTranslation()).CanBeNormalized()) {
    if (mFlags & 4)
      SetTransform(mSpline.GetInterpolatedSplinePointByLength(mPos));
    else
      SetTransform(zeus::lookAt(GetTranslation(), ballLook));
    return;
  }

  xf = MoveAlongSpline(dt, mgr);
  SetTranslation(xf.origin);

  if (mFlags & 0x20)
    AvoidDoorCollisions(mgr);

  CVector3f tmp = ballLook - GetTranslation();
  tmp.SetZ(0.f);
  if (tmp.CanBeNormalized())
    SetTransform(zeus::lookAt(GetTranslation(), ballLook));

  if (mFlags & 4)
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
  mSpline.Initialise(GetUniqueId(), GetConnectionList(), mgr);
}

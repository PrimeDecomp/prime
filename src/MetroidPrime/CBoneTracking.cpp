#include "MetroidPrime/CBoneTracking.hpp"
#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/TGameTypes.hpp"

CBoneTracking::CBoneTracking(const CAnimData& animData, const rstl::string& bone,
                             float maxTrackingAngle, float angSpeed, EBoneTrackingFlags flags)
: x0_rotation(CQuaternion::NoRotation())
, x10_(0.f)
, x14_segId(animData.GetCharLayoutInfo()->GetSegIdFromString(bone))
, x18_time(0.f)
, x1c_maxTrackingAngle(maxTrackingAngle)
, x20_angSpeed(angSpeed)
, x34_target(kInvalidUniqueId)
, x36_24_active(false)
, x36_25_hasTrackedRotation(false)
, x36_26_noParent(flags & kBTF_NoParent)
, x36_27_noParentOrigin(flags & kBTF_NoParentOrigin)
, x36_28_noHorizontalAim(flags & kBTF_NoHorizontalAim)
, x36_29_parentIk(flags & kBTF_ParentIk) {}

void CBoneTracking::Update(float dt) { x18_time += dt; }

void CBoneTracking::PreRender(const CStateManager& mgr, CAnimData& animData, const CTransform4f& xf,
                              const CVector3f& scale, const CBodyController& controller) {
  CPatterned* patterned = TCastToPtr< CPatterned >(controller.GetOwner());
  PreRender(mgr, animData, xf, scale,
            controller.GetBodyStateInfo().ApplyHeadTracking() &&
                (!patterned || patterned->ApplyBoneTracking()));
}

void CBoneTracking::PreRender(const CStateManager& mgr, CAnimData& animData, const CTransform4f& xf,
                              const CVector3f& scale, const bool tracking) {}

void CBoneTracking::SetActive(bool v) { x36_24_active = v; }
void CBoneTracking::SetTarget(const TUniqueId target) { x34_target = target; }
void CBoneTracking::UnsetTarget() { x34_target = kInvalidUniqueId; }
void CBoneTracking::SetTargetPosition(const CVector3f& target) { x24_targetPosition = target; }
void CBoneTracking::SetNoHorizontalAim(const bool aim) { x36_28_noHorizontalAim = aim; }

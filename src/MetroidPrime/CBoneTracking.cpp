#include "MetroidPrime/CBoneTracking.hpp"
#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"

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
                              const CVector3f& scale, const bool tracking) {
  if (x14_segId != CSegId::Null()) {
    CHierarchyPoseBuilder& poseBuilder = animData.PoseBuilder();
    const CActor* target = TCastToConstPtr< CActor >(mgr.GetObjectById(x34_target));
    if (x36_24_active && tracking && (target || x24_targetPosition.valid())) {
      x36_25_hasTrackedRotation = true;
      const CCharLayoutInfo* layout = *poseBuilder.CharLayoutInfo();
      const CSegId bone = x36_26_noParent ? x14_segId : layout->GetOriginalParent(x14_segId);
      CTransform4f parentXf = CTransform4f::Identity();
      poseBuilder.BuildTransform(bone, parentXf);
      CVector3f position = parentXf.GetTranslation();
      if (x36_27_noParentOrigin && !x36_26_noParent) {
        CTransform4f boneXf = CTransform4f::Identity();
        poseBuilder.BuildTransform(x14_segId, boneXf);
        position = boneXf.GetTranslation();
      }
      parentXf.SetTranslation(CVector3f::ByElementMultiply(scale, position));
      CTransform4f finalXf = xf * parentXf;
      const CVector3f& targetPosition =
          target ? target->GetAimPosition(mgr, 0.f) : *x24_targetPosition;
      CVector3f localDir = finalXf.TransposeMultiply(targetPosition).AsNormalized();
      if (x36_28_noHorizontalAim) {
        const float horizontalMagnitude =
            CMath::SqrtF(localDir.GetX() * localDir.GetX() + localDir.GetY() * localDir.GetY());
        localDir = CVector3f(0.f, horizontalMagnitude, localDir.GetZ());
      }
      if (x36_29_parentIk) {
        const float negativeElevation = -parentXf.GetForward().GetZ();
        const CVector3f ikBase(0.f, CMath::SqrtF(1.f - negativeElevation * negativeElevation),
                               negativeElevation);
        float angle = CVector3f::GetAngleDiff(ikBase, localDir);
        angle = CMath::Min(angle, x1c_maxTrackingAngle);
        localDir = CVector3f::Slerp(ikBase, localDir, CRelAngle::FromRadians(angle));
      } else {
        float angle = CVector3f::GetAngleDiff(CVector3f::Forward(), localDir);
        angle = CMath::Min(angle, x1c_maxTrackingAngle);
        localDir = CVector3f::Slerp(CVector3f::Forward(), localDir, CRelAngle::FromRadians(angle));
      }
      const CVector3f currentDir = x0_rotation.Transform(CVector3f::Forward());
      const float angle = CVector3f::GetAngleDiff(currentDir, localDir);
      const float maxAngleDelta = x18_time * x20_angSpeed;
      const float clampedAngle = CMath::Min(angle, maxAngleDelta);
      if (clampedAngle > 1.e-5f) {
        const CVector3f& forward = CVector3f::Forward();
        const CQuaternion rotation =
            CQuaternion::LookAt(forward, localDir, CRelAngle::FromDegrees(360.f));
        x0_rotation = CQuaternion::SlerpLocal(x0_rotation, rotation, clampedAngle / angle);
      }
      poseBuilder.Insert(x14_segId, x0_rotation);
      animData.SetPoseBuilderValid(false);
    } else if (x36_25_hasTrackedRotation) {
      const CVector3f currentDir = x0_rotation.Transform(CVector3f::Forward());
      const CQuaternion rotation = poseBuilder.GetSegRotation(x14_segId);
      const CVector3f animationDir = rotation.Transform(CVector3f::Forward());
      const float angle = CVector3f::GetAngleDiff(currentDir, animationDir);
      const float maxAngleDelta = x18_time * x20_angSpeed;
      const float clampedAngle = CMath::Min(angle, maxAngleDelta);
      if (clampedAngle > 0.5f * maxAngleDelta) {
        x0_rotation = CQuaternion::SlerpLocal(x0_rotation, rotation, clampedAngle / angle);
        poseBuilder.Insert(x14_segId, x0_rotation);
        animData.SetPoseBuilderValid(false);
      } else {
        x36_25_hasTrackedRotation = false;
        x0_rotation = rotation;
      }
    } else {
      x0_rotation = poseBuilder.GetSegRotation(x14_segId);
    }
  }
  x18_time = 0.f;
}

void CBoneTracking::SetActive(bool v) { x36_24_active = v; }
void CBoneTracking::SetTarget(const TUniqueId target) { x34_target = target; }
void CBoneTracking::UnsetTarget() { x34_target = kInvalidUniqueId; }
void CBoneTracking::SetTargetPosition(const CVector3f& target) { x24_targetPosition = target; }
void CBoneTracking::SetNoHorizontalAim(const bool aim) { x36_28_noHorizontalAim = aim; }

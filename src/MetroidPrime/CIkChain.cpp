#include "MetroidPrime/CIkChain.hpp"

#include "MetroidPrime/CAnimData.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"

#pragma inline_max_size(250)

void CIkChain::Solve(CQuaternion& q1, CQuaternion& q2, const CVector3f& pos) {
  const float mag = pos.Magnitude();
  float secondCos =
      (x20_p1BoneLength * x20_p1BoneLength + mag * mag - x1c_p2p1Length * x1c_p2p1Length) /
      (2.f * mag * x20_p1BoneLength);
  secondCos = CMath::Clamp(-1.f, secondCos, 1.f);
  float secondAngle = acosf(secondCos);
  float firstCos =
      (x1c_p2p1Length * x1c_p2p1Length + (mag * mag - x20_p1BoneLength * x20_p1BoneLength)) /
      (2.f * mag * x1c_p2p1Length);
  firstCos = CMath::Clamp(-1.f, firstCos, 1.f);
  float firstAngle = acosf(firstCos);

  CVector3f boneDir = q2.Transform(x10_p1BoneDir);
  CVector3f axis = CVector3f::Cross(x4_p2p1Dir, boneDir);
  float axisMag = axis.Magnitude();
  axis *= 1.f / axisMag;
  axisMag = CMath::Min(axisMag, 1.f);
  float angle = static_cast< float >(asin(axisMag));
  if (CVector3f::Dot(x4_p2p1Dir, boneDir) < 0.f) {
    angle = M_PIF - angle;
  }
  CQuaternion rotation =
      CQuaternion::AxisAngle(CUnitVector3f(axis, CUnitVector3f::kN_No),
                             CRelAngle::FromRadians(firstAngle + secondAngle - angle));
  q2 = rotation * q2;

  CVector3f current =
      q1.Transform(x1c_p2p1Length * x4_p2p1Dir + x20_p1BoneLength * q2.Transform(x10_p1BoneDir));
  CVector3f target = (1.f / mag) * q1.Transform(pos);
  axis = CVector3f::Cross(current.AsNormalized(), target);
  axisMag = axis.Magnitude();
  axis *= 1.f / axisMag;
  axisMag = CMath::Min(axisMag, 1.f);
  angle = static_cast< float >(asin(axisMag));
  if (CVector3f::Dot(current, target) < 0.f) {
    angle = M_PIF - angle;
  }
  CQuaternion targetRotation = CQuaternion::AxisAngle(CUnitVector3f(axis, CUnitVector3f::kN_No),
                                                      CRelAngle::FromRadians(angle));
  q1 = targetRotation * q1;
}

void CIkChain::Activate(const CAnimData& data, CSegId bone, const CTransform4f& xf) {
  x0_bone = bone;
  const CHierarchyPoseBuilder& builder = data.GetPoseBuilder();
  x1_p1 = builder.CharLayoutInfo()->GetOriginalParent(x0_bone);
  if (x1_p1 != CSegId(2)) {
    x2_p2 = builder.CharLayoutInfo()->GetOriginalParent(x1_p1);
    x4_p2p1Dir = builder.CharLayoutInfo()->GetFromParentUnrotated(x1_p1);
    x1c_p2p1Length = x4_p2p1Dir.Magnitude();
    x4_p2p1Dir *= 1.f / x1c_p2p1Length;
    x10_p1BoneDir = builder.CharLayoutInfo()->GetFromParentUnrotated(x0_bone);
    x20_p1BoneLength = x10_p1BoneDir.Magnitude();
    x10_p1BoneDir *= 1.f / x20_p1BoneLength;
    x34_holdPos = xf.GetTranslation();
    x24_holdRot = CQuaternion::FromMatrix(xf);
    x44_24_activated = true;
  }
}

void CIkChain::PreRender(CAnimData& data, const CTransform4f& xf, const CVector3f& scale) {
  if (x40_time > 0.f) {
    CTransform4f p2Xf = data.GetLocatorTransform(x2_p2, nullptr);
    CVector3f localDelta = xf.TransposeMultiply(x34_holdPos);
    localDelta[kDX] /= scale[kDX];
    localDelta[kDY] /= scale[kDY];
    localDelta[kDZ] /= scale[kDZ];
    localDelta = p2Xf.TransposeMultiply(localDelta);
    CHierarchyPoseBuilder& builder = data.PoseBuilder();
    CQuaternion p2Rot = builder.GetSegRotation(x2_p2);
    CQuaternion p1Rot = builder.GetSegRotation(x1_p1);
    CQuaternion boneRot = builder.GetSegRotation(x0_bone);
    CQuaternion baseRot = CQuaternion::FromMatrix(xf * p2Xf) * p2Rot.BuildInverted();
    CQuaternion newP2Rot = p2Rot;
    CQuaternion newP1Rot = p1Rot;
    Solve(newP2Rot, newP1Rot, localDelta);
    CQuaternion rotation = baseRot * newP2Rot * newP1Rot;
    CQuaternion newBoneRot = rotation.BuildInverted() * x24_holdRot;
    if (x40_time < 1.f) {
      newP2Rot = CQuaternion::SlerpLocal(p2Rot, newP2Rot, x40_time);
      newP1Rot = CQuaternion::SlerpLocal(p1Rot, newP1Rot, x40_time);
      newBoneRot = CQuaternion::SlerpLocal(boneRot, newBoneRot, x40_time);
    }
    builder.Insert(x2_p2, newP2Rot);
    builder.Insert(x1_p1, newP1Rot);
    builder.Insert(x0_bone, newBoneRot);
    data.SetPoseBuilderValid(false);
  }
}

void CIkChain::Deactivate() { x44_24_activated = false; }

void CIkChain::Update(float dt) {
  if (x44_24_activated) {
    x40_time = CMath::Min(x40_time + dt, 1.f);
  } else {
    x40_time = CMath::Max(0.f, x40_time - dt);
  }
}

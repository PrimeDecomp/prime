#include "MetroidPrime/BodyState/CABSAim.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/BodyState/CBodyStateCmdMgr.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Math/CMath.hpp"

CABSAim::CABSAim()
: x4_needsIdle(false)
, x28_hWeight(0.f)
, x2c_hWeightVel(0.f)
, x30_vWeight(0.f)
, x34_vWeightVel(0.f) {}

void CABSAim::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCAdditiveAimCmd* cmd =
      static_cast< const CBCAdditiveAimCmd* >(bc.CommandMgr().GetCmd(kBSC_AdditiveAim));

  const CPASDatabase& db = bc.GetPASDatabase();
  const CPASAnimState* aimState = db.GetAnimState(pas::kAS_AdditiveAim);

  // Left, Right, Up, Down
  for (int i = 0; i < 4; ++i) {
    const CPASAnimParmData parms(pas::kAS_AdditiveAim, CPASAnimParm::FromEnum(i));
    const rstl::pair< float, int > best =
        bc.GetPASDatabase().FindBestAnimation(parms, *mgr.Random(), -1);
    x8_anims[i] = best.second;

    CPASAnimParm animParm(aimState->GetAnimParmData(x8_anims[i], 1));
    x18_angles[i] = CMath::Deg2Rev(animParm.GetReal32Value());
  }

  CAnimData& animData = *bc.GetOwner().AnimationData();
  x28_hWeight = -animData.GetAdditiveAnimationWeight(x8_anims[0]);
  x28_hWeight += animData.GetAdditiveAnimationWeight(x8_anims[1]);
  x30_vWeight = -animData.GetAdditiveAnimationWeight(x8_anims[3]);
  x30_vWeight += animData.GetAdditiveAnimationWeight(x8_anims[2]);

  x4_needsIdle = false;
  if (bc.CommandMgr().GetCmd(kBSC_AdditiveIdle))
    x4_needsIdle = true;
}

inline float GetVecAngle(const CVector3f& target) {
  return atan2f(target.GetZ(),
                CMath::SqrtF(target.GetY() * target.GetY() + target.GetX() * target.GetX()));
}

pas::EAnimationState CABSAim::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    CVector3f target = bc.CommandMgr().GetAdditiveTargetVector();
    if (target.CanBeNormalized()) {
      float hAngle =
          CMath::Clamp(-x18_angles[0], atan2f(target.GetX(), target.GetY()), x18_angles[1]);
      hAngle = hAngle * 0.63661975f;
      hAngle = (hAngle - x28_hWeight) * 0.25f / dt;
      hAngle = CMath::Clamp(-3.f, hAngle, 3.f);
      x2c_hWeightVel += dt * CMath::Clamp(-10.f, (hAngle - x2c_hWeightVel) / dt, 10.f);

      float vAngle = CMath::Clamp(-x18_angles[3], GetVecAngle(target), x18_angles[2]);
      vAngle = vAngle * 0.63661975f;
      vAngle = (vAngle - x30_vWeight) * 0.25f / dt;
      vAngle = CMath::Clamp(-3.f, vAngle, 3.f);
      x34_vWeightVel += dt * CMath::Clamp(-10.f, (vAngle - x34_vWeightVel) / dt, 10.f);

      float newHWeight = dt * x2c_hWeightVel + x28_hWeight;
      float newVWeight = dt * x34_vWeightVel + x30_vWeight;
      CAnimData& animData = *bc.GetOwner().AnimationData();

      if (newHWeight != x28_hWeight) {
        float absWeight = fabsf(newHWeight);
        if (fabsf(x28_hWeight) > 0.f && (x28_hWeight * newHWeight) <= 0.f)
          animData.DelAdditiveAnimation(x8_anims[x28_hWeight < 0.f ? 0 : 1]);
        if (absWeight > 0.f)
          animData.AddAdditiveAnimation(x8_anims[newHWeight < 0.f ? 0 : 1], absWeight, false,
                                        false);
      }

      if (newVWeight != x30_vWeight) {
        float absWeight = fabsf(newVWeight);
        if (fabsf(x30_vWeight) > 0.f && x30_vWeight * newVWeight <= 0.f)
          animData.DelAdditiveAnimation(x8_anims[x30_vWeight > 0.f ? 2 : 3]);
        if (absWeight > 0.f)
          animData.AddAdditiveAnimation(x8_anims[newVWeight > 0.f ? 2 : 3], absWeight, false,
                                        false);
      }

      x28_hWeight = newHWeight;
      x30_vWeight = newVWeight;
    }
  }
  return st;
}

void CABSAim::Shutdown(CBodyController& bc) {
  CAnimData& animData = *bc.GetOwner().AnimationData();

  if (x28_hWeight != 0.f)
    animData.DelAdditiveAnimation(x8_anims[x28_hWeight < 0.f ? 0 : 1]);
  if (x30_vWeight != 0.f)
    animData.DelAdditiveAnimation(x8_anims[x30_vWeight > 0.f ? 2 : 3]);
}

pas::EAnimationState CABSAim::GetBodyStateTransition(float dt, CBodyController& bc) {
  CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
  if (cmdMgr.GetCmd(kBSC_AdditiveReaction))
    return pas::kAS_AdditiveReaction;
  if (cmdMgr.GetCmd(kBSC_AdditiveFlinch))
    return pas::kAS_AdditiveFlinch;
  if (cmdMgr.GetCmd(kBSC_AdditiveIdle) || x4_needsIdle)
    return pas::kAS_AdditiveIdle;
  return pas::kAS_Invalid;
}

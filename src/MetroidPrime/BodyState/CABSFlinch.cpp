#include "MetroidPrime/BodyState/CABSFlinch.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CModelData.hpp"

#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

#include "math.h"

CABSFlinch::CABSFlinch() : x4_weight(1.f), x8_anim(0) {}

void CABSFlinch::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCAdditiveFlinchCmd* cmd =
      static_cast< const CBCAdditiveFlinchCmd* >(bc.CommandMgr().GetCmd(kBSC_AdditiveFlinch));
  x4_weight = cmd->GetWeight();

  const CPASDatabase& pasDB = bc.GetPASDatabase();

  CPASAnimParmData parms(pas::kAS_AdditiveFlinch);
  rstl::pair< float, int > best = pasDB.FindBestAnimation(parms, *mgr.Random(), -1);
  x8_anim = best.second;

  CAnimData& animData = *bc.GetOwner().ModelData()->AnimationData();
  animData.AddAdditiveAnimation(x8_anim, x4_weight, false, true);
}

pas::EAnimationState CABSFlinch::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    const CAnimData& animData = *bc.GetOwner().GetModelData()->GetAnimationData();
    CCharAnimTime rem = animData.GetAdditiveAnimationTree(x8_anim)->VGetTimeRemaining();
    if (close_enough(rem.GetSeconds(), 0.0f)) {
      st = pas::kAS_AdditiveIdle;
    }
  }
  return st;
}

void CABSFlinch::Shutdown(CBodyController& bc) {}

pas::EAnimationState CABSFlinch::GetBodyStateTransition(float dt, CBodyController& bc) const {
  CBodyStateCmdMgr& commandMgr = bc.CommandMgr();
  if (commandMgr.GetCmd(kBSC_AdditiveReaction))
    return pas::kAS_AdditiveReaction;

  return pas::kAS_Invalid;
}

CABSFlinch::~CABSFlinch() {}

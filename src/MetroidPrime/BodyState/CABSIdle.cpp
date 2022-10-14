#include "MetroidPrime/BodyState/CABSIdle.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"

pas::EAnimationState CABSIdle::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  return GetBodyStateTransition(dt, bc);
}

pas::EAnimationState CABSIdle::GetBodyStateTransition(float dt, CBodyController& bc) const {
  CBodyStateCmdMgr& commandMgr = bc.CommandMgr();
  if (commandMgr.GetCmd(kBSC_AdditiveReaction))
    return pas::kAS_AdditiveReaction;
  if (commandMgr.GetCmd(kBSC_AdditiveFlinch))
    return pas::kAS_AdditiveFlinch;
  if (commandMgr.GetCmd(kBSC_AdditiveAim))
    return pas::kAS_AdditiveAim;
  return pas::kAS_Invalid;
}

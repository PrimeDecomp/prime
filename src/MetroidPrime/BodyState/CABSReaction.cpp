#include "MetroidPrime/BodyState/CABSReaction.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Math/CloseEnough.hpp"


CABSReaction::CABSReaction()
: x4_weight(1.f), x8_anim(-1), xc_type(pas::kART_Invalid), x10_active(false) {}

void CABSReaction::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCAdditiveReactionCmd* cmd =
      static_cast< const CBCAdditiveReactionCmd* >(bc.CommandMgr().GetCmd(kBSC_AdditiveReaction));
  x4_weight = cmd->GetWeight();
  xc_type = cmd->GetType();
  x10_active = cmd->GetIsActive();

  CPASAnimParmData parms(pas::kAS_AdditiveReaction, CPASAnimParm::FromEnum(xc_type));
  rstl::pair< float, int > best = bc.GetPASDatabase().FindBestAnimation(parms, *mgr.Random(), -1);
  x8_anim = best.second;

  if (x8_anim != -1) {
    CAnimData& animData = *bc.GetOwner().ModelData()->AnimationData();
    animData.AddAdditiveAnimation(x8_anim, GetWeight(), IsActive(), false);
  }
}

pas::EAnimationState CABSReaction::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    if (x8_anim == -1)
      return pas::kAS_AdditiveIdle;

    CAnimData& animData = *bc.GetOwner().ModelData()->AnimationData();
    if (x10_active) {
      if (bc.CommandMgr().GetCmd(kBSC_StopReaction)) {
        StopAnimation(bc);
        st = pas::kAS_AdditiveIdle;
        bc.GetOwner().RemoveEmitter();
      }
    } else {
      if (animData.IsAdditiveAnimationAdded(x8_anim)) {
        CCharAnimTime rem = animData.GetAdditiveAnimationTree(x8_anim)->VGetTimeRemaining();
        if (close_enough(rem.GetSeconds(), 0.0f)) {
          StopAnimation(bc);
          st = pas::kAS_AdditiveIdle;
        }
      } else {
        st = pas::kAS_AdditiveIdle;
      }
    }
  }
  return st;
}

void CABSReaction::Shutdown(CBodyController& bc) override { StopAnimation(bc); }

bool CBodyController::HasIceBreakoutState() {
  // Inline function that ends here?
  CPASAnimParmData parms(pas::kAS_AdditiveReaction, CPASAnimParm::FromEnum(pas::kART_IceBreakout));
  const CPASDatabase& db = GetPASDatabase();
  rstl::pair< float, int > best = db.FindBestAnimation(parms, -1);
  return best.first > 0.f;
}

pas::EAnimationState CABSReaction::GetBodyStateTransition(float dt, CBodyController& bc) {
  CBodyStateCmdMgr& commandMgr = bc.CommandMgr();

  const CBCAdditiveReactionCmd* cmd =
      static_cast< const CBCAdditiveReactionCmd* >(bc.CommandMgr().GetCmd(kBSC_AdditiveReaction));
  if (cmd != nullptr && cmd->GetType() == pas::kART_IceBreakout)
    return pas::kAS_AdditiveReaction;

  return pas::kAS_Invalid;
}

void CABSReaction::StopAnimation(CBodyController& bc) {
  if (x8_anim != -1) {
    CAnimData& animData = *bc.GetOwner().ModelData()->AnimationData();
    animData.DelAdditiveAnimation(x8_anim);
    x8_anim = -1;
  }
}

CABSReaction::~CABSReaction() {}

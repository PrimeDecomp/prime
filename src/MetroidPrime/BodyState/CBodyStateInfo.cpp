#include "MetroidPrime/BodyState/CBodyStateInfo.hpp"

#include "MetroidPrime/BodyState/CABSAim.hpp"
#include "MetroidPrime/BodyState/CABSFlinch.hpp"
#include "MetroidPrime/BodyState/CABSIdle.hpp"
#include "MetroidPrime/BodyState/CABSReaction.hpp"
#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/BodyState/CBSLocomotion.hpp"
#include "MetroidPrime/BodyState/CBSSlide.hpp"

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CModelData.hpp"

#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

CBodyStateInfo::CBodyStateInfo(CActor& actor, EBodyType type)
: x14_state(pas::kAS_Invalid)
, x18_bodyController(nullptr)
, x2c_additiveState(pas::kAS_AdditiveIdle)
, x30_maxPitch(0.0f)
, x34_24_changeLocoAtEndOfAnimOnly(false)
{
  const CPASDatabase& pasDatabase =
      actor.GetModelData()->GetAnimationData()->GetCharacterInfo().GetPASDatabase();
  for (size_t i = 0; i < pasDatabase.GetNumAnimStates(); ++i) {
    const CPASAnimState* state = pasDatabase.GetAnimStateByIndex(i);
    CBodyState* bs;
    switch (type) {
    case kBT_BiPedal:
      bs = SetupBiPedalBodyStates(state->GetStateId(), actor);
      break;
    case kBT_Restricted:
      bs = SetupRestrictedBodyStates(state->GetStateId(), actor);
      break;
    case kBT_Flyer:
      bs = SetupFlyerBodyStates(state->GetStateId(), actor);
      break;
    case kBT_Pitchable:
      bs = SetupPitchableFlyerBodyStates(state->GetStateId(), actor);
      break;
    case kBT_WallWalker:
      bs = SetupWallWalkerBodyStates(state->GetStateId(), actor);
      break;
    case kBT_NewFlyer:
      bs = SetupNewFlyerBodyStates(state->GetStateId(), actor);
      break;
    case kBT_RestrictedFlyer:
      bs = SetupRestrictedFlyerBodyStates(state->GetStateId(), actor);
      break;
    default:
      bs = SetupRestrictedBodyStates(state->GetStateId(), actor);
      break;
    }

    if (bs)
      x0_stateMap.insert(rstl::pair< int, CBodyState* >(state->GetStateId(), bs));
  }

  x1c_additiveStates.reserve(4);
  x1c_additiveStates.push_back(rstl::pair< int, rstl::auto_ptr< CAdditiveBodyState > >(
      pas::kAS_AdditiveIdle, rs_new CABSIdle()));
  x1c_additiveStates.push_back(
      rstl::pair< int, rstl::auto_ptr< CAdditiveBodyState > >(pas::kAS_AdditiveAim, rs_new CABSAim()));
  x1c_additiveStates.push_back(rstl::pair< int, rstl::auto_ptr< CAdditiveBodyState > >(
      pas::kAS_AdditiveIdle, rs_new CABSFlinch()));
  x1c_additiveStates.push_back(rstl::pair< int, rstl::auto_ptr< CAdditiveBodyState > >(
      pas::kAS_AdditiveReaction, rs_new CABSReaction()));
}

CBodyStateInfo::~CBodyStateInfo() {
  for (rstl::map< int, CBodyState* >::const_iterator it = x0_stateMap.begin();
       it != x0_stateMap.end(); ++it) {
    delete it->second;
  }
}

void CBodyStateInfo::SetState(pas::EAnimationState s) {
  rstl::map< int, CBodyState* >::const_iterator search = x0_stateMap.find(s);
  if (search != x0_stateMap.end()) {
    x14_state = s;
  }
}

const CBodyState* CBodyStateInfo::GetCurrentState() const {
  rstl::map< int, CBodyState* >::const_iterator search = x0_stateMap.find(x14_state);
  // if (search == x0_stateMap.end())
  //   return nullptr;
  return search->second;
}

CBodyState* CBodyStateInfo::GetCurrentState() {
  rstl::map< int, CBodyState* >::const_iterator search = x0_stateMap.find(x14_state);
  // if (search == x0_stateMap.end())
  //   return nullptr;
  return search->second;
}

bool CBodyStateInfo::ApplyHeadTracking() const {
  if (x14_state != pas::kAS_Invalid)
    return GetCurrentState()->ApplyHeadTracking();
  return false;
}

void CBodyStateInfo::SetAdditiveState(pas::EAnimationState s) {
  for (int i = 0; i < x1c_additiveStates.size(); ++i) {
    if (s == x1c_additiveStates[i].first) {
      x2c_additiveState = s;
      return;
    }
  }
}

CAdditiveBodyState* CBodyStateInfo::GetCurrentAdditiveState() {
  CAdditiveBodyState* result = nullptr;
  for (int i = 0; i < x1c_additiveStates.size(); ++i) {
    const rstl::pair< int, rstl::auto_ptr< CAdditiveBodyState > >& it = x1c_additiveStates[i];
    if (x2c_additiveState == x1c_additiveStates[i].first) {
      result = x1c_additiveStates[i].second.get();
      break;
    }
  }
  return result;
}

float CBodyStateInfo::GetMaxSpeed() const {
  float ret = GetLocomotionSpeed(pas::kLA_Run);
  if (close_enough(ret, 0.f)) {
    for (int i = 0; i <= pas::kLA_StrafeDown; ++i) {
      float tmp = GetLocomotionSpeed(pas::ELocomotionAnim(i));
      if (tmp > ret)
        ret = tmp;
    }
  }
  return ret;
}

float CBodyStateInfo::GetLocomotionSpeed(pas::ELocomotionAnim anim) const {
  rstl::map< int, CBodyState* >::const_iterator search = x0_stateMap.find(pas::kAS_Locomotion);
  if (search != x0_stateMap.end() && search->second && x18_bodyController) {
    const CBSLocomotion& bs = static_cast< const CBSLocomotion& >(*search->second);
    return bs.GetLocomotionSpeed(x18_bodyController->GetLocomotionType(), anim);
  }
  return 0.f;
}

CBodyState* CBodyStateInfo::SetupBiPedalBodyStates(int stateId, CActor& actor) {
  switch (stateId) {
  // case pas::kAS_Fall:
  //   return rs_new CBSFall();
  // case pas::kAS_Getup:
  //   return rs_new CBSGetup();
  // case pas::kAS_LieOnGround:
  //   return rs_new CBSLieOnGround(actor);
  // case pas::kAS_Step:
  //   return rs_new CBSStep();
  // case pas::kAS_Death:
  //   return rs_new CBSDie();
  // case pas::kAS_Locomotion:
  //   return rs_new CBSBiPedLocomotion(actor);
  // case pas::kAS_KnockBack:
  //   return rs_new CBSKnockBack();
  // case pas::kAS_MeleeAttack:
  //   return rs_new CBSAttack();
  // case pas::kAS_ProjectileAttack:
  //   return rs_new CBSProjectileAttack();
  // case pas::kAS_LoopAttack:
  //   return rs_new CBSLoopAttack();
  // case pas::kAS_Turn:
  //   return rs_new CBSTurn();
  // case pas::kAS_LoopReaction:
  //   return rs_new CBSLoopReaction();
  // case pas::kAS_GroundHit:
  //   return rs_new CBSGroundHit();
  // case pas::kAS_Generate:
  //   return rs_new CBSGenerate();
  // case pas::kAS_Jump:
  //   return rs_new CBSJump();
  // case pas::kAS_Hurled:
  //   return rs_new CBSHurled();
  case pas::kAS_Slide:
    return rs_new CBSSlide();
  // case pas::kAS_Taunt:
  //   return rs_new CBSTaunt();
  // case pas::kAS_Scripted:
  //   return rs_new CBSScripted();
  // case pas::kAS_Cover:
  //   return rs_new CBSCover();
  // case pas::kAS_WallHang:
  //   return rs_new CBSWallHang();
  default:
    return nullptr;
  }
}

CBodyState* CBodyStateInfo::SetupRestrictedBodyStates(int stateId, CActor& actor) {
  return nullptr;
}

CBodyState* CBodyStateInfo::SetupFlyerBodyStates(int stateId, CActor& actor) { return nullptr; }

CBodyState* CBodyStateInfo::SetupPitchableFlyerBodyStates(int, CActor&) { return nullptr; }

CBodyState* CBodyStateInfo::SetupWallWalkerBodyStates(int stateId, CActor& actor) {
  return nullptr;
}

CBodyState* CBodyStateInfo::SetupNewFlyerBodyStates(int stateId, CActor& actor) { return nullptr; }

CBodyState* CBodyStateInfo::SetupRestrictedFlyerBodyStates(int stateId, CActor& actor) {
  return nullptr;
}

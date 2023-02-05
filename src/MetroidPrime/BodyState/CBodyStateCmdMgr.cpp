#include "MetroidPrime/BodyState/CBodyStateCmdMgr.hpp"

CBodyStateCmdMgr::CBodyStateCmdMgr()
: x0_move(CVector3f::Zero())
, xc_face(CVector3f::Zero())
, x18_target(CVector3f::Zero())
, x24_additiveTarget(CVector3f::Zero())
, x30_steeringMode(kSBM_Normal)
, x34_steeringSpeedMin(0.f)
, x38_steeringSpeedMax(1.f)
, x3c_steeringSpeed(0.f)
, x40_commandTable(nullptr)
, xb4_deliveredCmdMask(0)
, xb8_getup(pas::kGetup_Invalid)
, xc4_step(pas::kSD_Invalid, pas::kStep_Normal)
, xd4_die(kBSC_Die)
, xdc_knockDown(CVector3f::Zero(), pas::kS_Invalid)
, xf4_knockBack(CVector3f::Zero(), pas::kS_Invalid)
, x10c_meleeAttack(pas::kS_Invalid)
, x128_projectileAttack(pas::kS_Invalid, CVector3f::Zero(), false)
, x144_loopAttack(pas::kLAT_Invalid)
, x154_loopReaction(pas::kRT_Invalid)
, x160_loopHitReaction(pas::kRT_Invalid)
, x16c_exitState(kBSC_ExitState)
, x174_leanFromCover(kBSC_LeanFromCover)
, x17c_nextState(kBSC_NextState)
, x184_maintainVelocity(kBSC_MaintainVelocity)
, x18c_generate(pas::kGType_Invalid, -1)
, x1ac_hurled(CVector3f::Zero(), CVector3f::Zero(), false)
, x1d0_jump(CVector3f::Zero(), pas::kJT_Normal)
, x1f8_slide(pas::kSlide_Invalid, CVector3f::Zero())
, x210_taunt(pas::kTT_Invalid)
, x21c_scripted(-1, false, false, 0.f)
, x230_cover(pas::kCD_Invalid, CVector3f::Zero(), CVector3f::Forward())
, x254_wallHang(kInvalidUniqueId)
, x260_locomotion(kBSC_Locomotion)
, x268_additiveIdle(kBSC_AdditiveIdle)
, x278_additiveFlinch(0.f)
, x284_additiveReaction(pas::kART_Invalid, 0.f, false)
, x298_stopReaction(kBSC_StopReaction) {}

CBodyStateCmdMgr::~CBodyStateCmdMgr() {
  x0_move = CVector3f::Zero();
  xc_face = CVector3f::Zero();
  x18_target = CVector3f::Zero();
  x3c_steeringSpeed = 0.f;
  xb4_deliveredCmdMask = 0;
}

void CBodyStateCmdMgr::SetSteeringSpeedRange(float rmin, float rmax) {
  x34_steeringSpeedMin = rmin;
  x38_steeringSpeedMax = rmax;
}

void CBodyStateCmdMgr::DeliverCmd(const CBodyStateCmd& cmd) {
  DeliverCmd2(cmd.GetCommandId());
  *x40_commandTable[(uint)cmd.GetCommandId()] = cmd;
}

void CBodyStateCmdMgr::DeliverCmd(const CBCLocomotionCmd&) {
  
}

void CBodyStateCmdMgr::BlendSteeringCmds() {
  
}

void CBodyStateCmdMgr::Reset() {
  x0_move = CVector3f::Zero();
  xc_face = CVector3f::Zero();
  x18_target = CVector3f::Zero();
  x3c_steeringSpeed = 0.f;
  xb4_deliveredCmdMask = 0;
}

void CBodyStateCmdMgr::ClearLocomotionCmds() {
  x0_move = CVector3f::Zero();
  xc_face = CVector3f::Zero();
  x3c_steeringSpeed = 0.f;
}

const CBodyStateCmd* CBodyStateCmdMgr::GetCmd(EBodyStateCmd cmd) const {
  if (xb4_deliveredCmdMask & (1 << cmd)) {
    return x40_commandTable[cmd];
  }
  return nullptr;
}

CBodyStateCmd* CBodyStateCmdMgr::GetCmd(EBodyStateCmd cmd) {
  if (xb4_deliveredCmdMask & (1 << cmd)) {
    return x40_commandTable[cmd];
  }
  return nullptr;
}

void CBodyStateCmdMgr::DeliverCmd(EBodyStateCmd cmd) {
  xb4_deliveredCmdMask |= (1 << cmd);
}

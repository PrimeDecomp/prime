#include "MetroidPrime/BodyState/CBodyStateCmdMgr.hpp"

#include "Kyoto/Math/CloseEnough.hpp"
#include <float.h>

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
, x278_additiveFlinch(1.f)
, x284_additiveReaction(pas::kART_Invalid, 0.f, false)
, x298_stopReaction(kBSC_StopReaction) {
  x40_commandTable[kBSC_Getup] = &xb8_getup;
  x40_commandTable[kBSC_Step] = &xc4_step;
  x40_commandTable[kBSC_Die] = &xd4_die;
  x40_commandTable[kBSC_KnockDown] = &xdc_knockDown;
  x40_commandTable[kBSC_KnockBack] = &xf4_knockBack;
  x40_commandTable[kBSC_MeleeAttack] = &x10c_meleeAttack;
  x40_commandTable[kBSC_ProjectileAttack] = &x128_projectileAttack;
  x40_commandTable[kBSC_LoopAttack] = &x144_loopAttack;
  x40_commandTable[kBSC_LoopReaction] = &x154_loopReaction;
  x40_commandTable[kBSC_LoopHitReaction] = &x160_loopHitReaction;
  x40_commandTable[kBSC_ExitState] = &x16c_exitState;
  x40_commandTable[kBSC_LeanFromCover] = &x174_leanFromCover;
  x40_commandTable[kBSC_NextState] = &x17c_nextState;
  x40_commandTable[kBSC_MaintainVelocity] = &x184_maintainVelocity;
  x40_commandTable[kBSC_Generate] = &x18c_generate;
  x40_commandTable[kBSC_Hurled] = &x1ac_hurled;
  x40_commandTable[kBSC_Jump] = &x1d0_jump;
  x40_commandTable[kBSC_Slide] = &x1f8_slide;
  x40_commandTable[kBSC_Taunt] = &x210_taunt;
  x40_commandTable[kBSC_Scripted] = &x21c_scripted;
  x40_commandTable[kBSC_Cover] = &x230_cover;
  x40_commandTable[kBSC_WallHang] = &x254_wallHang;
  x40_commandTable[kBSC_Locomotion] = &x260_locomotion;
  x40_commandTable[kBSC_AdditiveIdle] = &x268_additiveIdle;
  x40_commandTable[kBSC_AdditiveAim] = &x270_additiveAim;
  x40_commandTable[kBSC_AdditiveFlinch] = &x278_additiveFlinch;
  x40_commandTable[kBSC_AdditiveReaction] = &x284_additiveReaction;
  x40_commandTable[kBSC_StopReaction] = &x298_stopReaction;
}

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
  DeliverCmd(cmd.GetCommandId());
  *x40_commandTable[(uint)cmd.GetCommandId()] = cmd;
}

void CBodyStateCmdMgr::DeliverCmd(const CBCLocomotionCmd& cmd) {
  if (!(cmd.GetWeight() > FLT_EPSILON)) {
    return;
  }
  x3c_steeringSpeed += cmd.GetWeight();
  x0_move += cmd.GetMoveVector() * cmd.GetWeight();
  xc_face += cmd.GetFaceVector() * cmd.GetWeight();
}

void CBodyStateCmdMgr::BlendSteeringCmds() {
  if (x3c_steeringSpeed > FLT_EPSILON) {
    const float weightScale = 1.f / x3c_steeringSpeed;
    xc_face *= weightScale;
    switch (x30_steeringMode) {
    case kSBM_Normal:
      x0_move *= weightScale;
      break;
    case kSBM_FullSpeed:
      if (!close_enough(x0_move, CVector3f::Zero(), 0.0001f)) {
        x0_move.Normalize();
        x0_move *= x38_steeringSpeedMax;
      }
      break;
    case kSBM_Clamped:
      x0_move *= weightScale;
      if (!close_enough(x0_move, CVector3f::Zero(), 0.0001f)) {
        const float speed = x0_move.Magnitude();
        if (speed < x34_steeringSpeedMin) {
          x0_move = x0_move.AsNormalized() * x34_steeringSpeedMin;
        } else if (speed > x38_steeringSpeedMax) {
          x0_move = x0_move.AsNormalized() * x38_steeringSpeedMax;
        }
      }
      break;
    }
  }
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

void CBodyStateCmdMgr::DeliverCmd(const EBodyStateCmd cmd) {
  xb4_deliveredCmdMask |= (1 << cmd);
}

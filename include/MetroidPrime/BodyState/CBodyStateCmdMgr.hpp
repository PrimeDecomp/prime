#ifndef _CBODYSTATECMDMGR
#define _CBODYSTATECMDMGR

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Animation/CharacterCommon.hpp"
#include "Kyoto/Math/CVector3f.hpp"

enum ESteeringBlendMode {
  kSBM_Normal,
  kSBM_FullSpeed,
  kSBM_Clamped,
};

class CBodyStateCmd {
public:
  CBodyStateCmd(EBodyStateCmd cmd) : x4_cmd(cmd) {}
  virtual ~CBodyStateCmd(){};

  EBodyStateCmd GetCommandId() const { return x4_cmd; }

private:
  EBodyStateCmd x4_cmd;
};

class CBCAdditiveFlinchCmd : public CBodyStateCmd {
public:
  CBCAdditiveFlinchCmd(float f) : CBodyStateCmd(kBSC_AdditiveFlinch), x8_weight(f) {}

  float GetWeight() const { return x8_weight; }

private:
  float x8_weight;
};

class CBCGenerateCmd : public CBodyStateCmd {
public:
  CBCGenerateCmd(pas::EGenerateType type, int animId)
  : CBodyStateCmd(kBSC_Generate)
  , x8_type(type)
  , xc_targetPos(0.f, 0.f, 0.f)
  , x18_animId(animId)
  , x1c_25_overrideAnim(animId != -1) {}

  CBCGenerateCmd(pas::EGenerateType type, const CVector3f& vec, bool targetTransform = false,
                 bool overrideAnim = false)
  : CBodyStateCmd(kBSC_Generate)
  , x8_type(type)
  , xc_targetPos(vec)
  , x18_animId(-1)
  , x1c_24_targetTransform(targetTransform)
  , x1c_25_overrideAnim(overrideAnim) {}

  pas::EGenerateType GetGenerateType() const { return x8_type; }
  const CVector3f& GetExitTargetPos() const { return xc_targetPos; }
  int GetSpecialAnimId() const { return x18_animId; }
  bool HasExitTargetPos() const { return x1c_24_targetTransform; }
  bool UseSpecialAnimId() const { return x1c_25_overrideAnim; }

private:
  pas::EGenerateType x8_type;
  CVector3f xc_targetPos;
  int x18_animId;
  uint x1c_24_targetTransform : 1;
  uint x1c_25_overrideAnim : 1;
};

//

class CBCScriptedCmd : public CBodyStateCmd {
public:
  CBCScriptedCmd(int i, bool b1, bool b2, float f)
  : CBodyStateCmd(kBSC_Scripted)
  , x8_anim(i)
  , xc_24_loopAnim(b1)
  , xc_25_timedLoop(b2)
  , x10_loopDur(f) {}

  int GetAnimId() const { return x8_anim; }
  bool IsLooped() const { return xc_24_loopAnim; }
  bool GetUseLoopDuration() const { return xc_25_timedLoop; }
  float GetLoopDuration() const { return x10_loopDur; }

private:
  int x8_anim;
  bool xc_24_loopAnim : 1;
  bool xc_25_timedLoop : 1;
  float x10_loopDur;
};

//

class CBCStepCmd : public CBodyStateCmd {
public:
  CBCStepCmd(pas::EStepDirection dir, pas::EStepType type)
  : CBodyStateCmd(kBSC_Step), x8_dir(dir), xc_type(type) {}

  pas::EStepDirection GetStepDirection() const { return x8_dir; }
  pas::EStepType GetStepType() const { return xc_type; }

private:
  pas::EStepDirection x8_dir;
  pas::EStepType xc_type;
};

//

class CBCTauntCmd : public CBodyStateCmd {
public:
  CBCTauntCmd(pas::ETauntType type) : CBodyStateCmd(kBSC_Taunt), x8_type(type) {}

  pas::ETauntType GetTauntType() const { return x8_type; }

private:
  pas::ETauntType x8_type;
};

//

class CBCGetupCmd : public CBodyStateCmd {
public:
  CBCGetupCmd(pas::EGetupType type) : CBodyStateCmd(kBSC_Getup), x8_type(type) {}

  pas::EGetupType GetGetupType() const { return x8_type; }

private:
  pas::EGetupType x8_type;
};

//

class CBCAdditiveReactionCmd : public CBodyStateCmd {
public:
  CBCAdditiveReactionCmd(pas::EAdditiveReactionType type, float weight, bool active)
  : CBodyStateCmd(kBSC_AdditiveReaction), x8_weight(weight), xc_type(type), x10_active(active) {}

  pas::EAdditiveReactionType GetType() const { return xc_type; }
  float GetWeight() const { return x8_weight; }
  bool GetIsActive() const { return x10_active; }

private:
  float x8_weight;
  pas::EAdditiveReactionType xc_type;
  bool x10_active;
};

//

class CBCSlideCmd : public CBodyStateCmd {
public:
  CBCSlideCmd(pas::ESlideType type, const CVector3f& dir)
  : CBodyStateCmd(kBSC_Slide), x8_type(type), xc_dir(dir) {}

  pas::ESlideType GetSlideType() const { return x8_type; }
  const CVector3f& GetSlideDirection() const { return xc_dir; }

private:
  pas::ESlideType x8_type;
  CVector3f xc_dir;
};

//

class CBCKnockDownCmd : public CBodyStateCmd {
public:
  CBCKnockDownCmd(const CVector3f& vec, pas::ESeverity severity)
  : CBodyStateCmd(kBSC_KnockDown), x8_dir(vec), x14_severity(severity) {}

  const CVector3f& GetHitDirection() const { return x8_dir; }
  pas::ESeverity GetHitSeverity() const { return x14_severity; }

private:
  CVector3f x8_dir;
  pas::ESeverity x14_severity;
};

//

class CBCKnockBackCmd : public CBodyStateCmd {
public:
  CBCKnockBackCmd(const CVector3f& vec, pas::ESeverity severity)
  : CBodyStateCmd(kBSC_KnockBack), x8_dir(vec), x14_severity(severity) {}

  const CVector3f& GetHitDirection() const { return x8_dir; }
  pas::ESeverity GetHitSeverity() const { return x14_severity; }

private:
  CVector3f x8_dir;
  pas::ESeverity x14_severity;
};

//

class CBCMeleeAttackCmd : public CBodyStateCmd {
public:
  CBCMeleeAttackCmd(pas::ESeverity severity)
  : CBodyStateCmd(kBSC_MeleeAttack)
  , x8_severity(severity)
  , xc_targetPos(0.f, 0.f, 0.f)
  , x18_hasTargetPos(false) {}

  CBCMeleeAttackCmd(pas::ESeverity severity, const CVector3f& target)
  : CBodyStateCmd(kBSC_MeleeAttack)
  , x8_severity(severity)
  , xc_targetPos(target)
  , x18_hasTargetPos(true) {}

  pas::ESeverity GetAttackSeverity() const { return x8_severity; }
  bool HasAttackTargetPos() const { return x18_hasTargetPos; }
  const CVector3f& GetAttackTargetPos() const { return xc_targetPos; }

private:
  pas::ESeverity x8_severity;
  CVector3f xc_targetPos;
  bool x18_hasTargetPos;
};

//

class CBCProjectileAttackCmd : public CBodyStateCmd {
public:
  CBCProjectileAttackCmd(pas::ESeverity severity, const CVector3f& vec, bool b)
  : CBodyStateCmd(kBSC_ProjectileAttack)
  , x8_severity(severity)
  , xc_target(vec)
  , x18_blendAnims(b) {}

  pas::ESeverity GetAttackSeverity() const { return x8_severity; }
  const CVector3f& GetTargetPosition() const { return xc_target; }
  bool BlendTwoClosest() const { return x18_blendAnims; }

private:
  pas::ESeverity x8_severity;
  CVector3f xc_target;
  bool x18_blendAnims;
};

//

class CBCLoopAttackCmd : public CBodyStateCmd {
public:
  CBCLoopAttackCmd(pas::ELoopAttackType type, bool waitForAnimOver = false)
  : CBodyStateCmd(kBSC_LoopAttack), x8_type(type), xc_waitForAnimOver(waitForAnimOver) {}

  pas::ELoopAttackType GetAttackType() const { return x8_type; }
  bool WaitForAnimOver() const { return xc_waitForAnimOver; }

private:
  pas::ELoopAttackType x8_type;
  bool xc_waitForAnimOver;
};

//

class CBCLoopReactionCmd : public CBodyStateCmd {
public:
  CBCLoopReactionCmd(pas::EReactionType type) : CBodyStateCmd(kBSC_LoopReaction), x8_type(type) {}

  pas::EReactionType GetReactionType() const { return x8_type; }

private:
  pas::EReactionType x8_type;
};

//

class CBCLoopHitReactionCmd : public CBodyStateCmd {
public:
  CBCLoopHitReactionCmd(pas::EReactionType type)
  : CBodyStateCmd(kBSC_LoopHitReaction), x8_type(type) {}

  pas::EReactionType GetReactionType() const { return x8_type; }

private:
  pas::EReactionType x8_type;
};

//

class CBCHurledCmd : public CBodyStateCmd {
public:
  CBCHurledCmd(const CVector3f& dir, const CVector3f& launchVel, bool startInLoop = false)
  : CBodyStateCmd(kBSC_Hurled)
  , x8_direction(dir)
  , x14_launchVel(launchVel)
  , x20_startInKnockLoop(startInLoop) {}

  const CVector3f& GetHitDirection() const { return x8_direction; }
  const CVector3f& GetLaunchVelocity() const { return x14_launchVel; }
  bool GetSkipLaunchState() const { return x20_startInKnockLoop; }
  void SetSkipLaunchState(bool s) { x20_startInKnockLoop = s; }

private:
  CVector3f x8_direction;
  CVector3f x14_launchVel;
  bool x20_startInKnockLoop;
};

//

class CBCJumpCmd : public CBodyStateCmd {
public:
  CBCJumpCmd(const CVector3f& wp1, pas::EJumpType type, bool startInLoop = false)
  : CBodyStateCmd(kBSC_Jump)
  , x8_type(type)
  , xc_waypoint1(wp1)
  , x18_waypoint2(0.f, 0.f, 0.f)
  , x24_24_wallJump(false)
  , x24_25_startInJumpLoop(startInLoop) {}

  CBCJumpCmd(const CVector3f& wp1, const CVector3f& wp2, pas::EJumpType type)
  : CBodyStateCmd(kBSC_Jump)
  , x8_type(type)
  , xc_waypoint1(wp1)
  , x18_waypoint2(wp2)
  , x24_24_wallJump(true)
  , x24_25_startInJumpLoop(false) {}

  pas::EJumpType GetJumpType() const { return x8_type; }
  const CVector3f& GetJumpTarget() const { return xc_waypoint1; }
  const CVector3f& GetSecondJumpTarget() const { return x18_waypoint2; }
  bool IsWallJump() const { return x24_24_wallJump; }
  bool StartInJumpLoop() const { return x24_25_startInJumpLoop; }

private:
  pas::EJumpType x8_type;
  CVector3f xc_waypoint1;
  CVector3f x18_waypoint2;
  bool x24_24_wallJump : 1;
  bool x24_25_startInJumpLoop : 1;
};

//

class CBCCoverCmd : public CBodyStateCmd {
public:
  CBCCoverCmd(pas::ECoverDirection dir, const CVector3f& v1, const CVector3f& v2)
  : CBodyStateCmd(kBSC_Cover), x8_dir(dir), xc_targetPos(v1), x18_alignDir(v2) {}

  pas::ECoverDirection GetDirection() const { return x8_dir; }
  const CVector3f& GetTarget() const { return xc_targetPos; }
  const CVector3f& GetAlignDirection() const { return x18_alignDir; }

private:
  pas::ECoverDirection x8_dir;
  CVector3f xc_targetPos;
  CVector3f x18_alignDir;
};

//

class CBCWallHangCmd : public CBodyStateCmd {
public:
  CBCWallHangCmd(TUniqueId uid) : CBodyStateCmd(kBSC_WallHang), x8_wpId(uid) {}

  TUniqueId GetTarget() const { return x8_wpId; }

private:
  TUniqueId x8_wpId;
};

//

class CBCAdditiveAimCmd : public CBodyStateCmd {
public:
  CBCAdditiveAimCmd() : CBodyStateCmd(kBSC_AdditiveAim) {}
};

//

class CBCLocomotionCmd {
public:
  CBCLocomotionCmd(const CVector3f& move, const CVector3f& face, float weight)
  : x0_move(move), xc_face(face), x18_weight(weight) {}

  const CVector3f& GetMoveVector() const { return x0_move; }
  const CVector3f& GetFaceVector() const { return xc_face; }
  float GetWeight() const { return x18_weight; }

private:
  CVector3f x0_move;
  CVector3f xc_face;
  float x18_weight;
};

//

class CBodyStateCmdMgr {
public:
  void ClearLocomotionCmds();
  void DeliverCmd(const CBCLocomotionCmd& cmd);
  void DeliverCmd(EBodyStateCmd cmd);

  void DeliverCmd(const CBCGenerateCmd& cmd) {
    DeliverCmd(kBSC_Generate);
    x18c_generate = cmd;
  }
  void DeliverCmd(const CBCKnockDownCmd& cmd) {
    DeliverCmd(kBSC_KnockDown);
    xdc_knockDown = cmd;
  }

  void DeliverTargetVector(const CVector3f& t) { x18_target = t; }

  CBodyStateCmd* GetCmd(EBodyStateCmd cmd);
  const CVector3f& GetMoveVector() const { return x0_move; }
  const CVector3f& GetTargetVector() const { return x18_target; }
  const CVector3f& GetAdditiveTargetVector() const { return x24_additiveTarget; }

private:
  CVector3f x0_move;
  CVector3f xc_face;
  CVector3f x18_target;
  CVector3f x24_additiveTarget;
  ESteeringBlendMode x30_steeringMode;
  float x34_steeringSpeedMin;
  float x38_steeringSpeedMax;
  float x3c_steeringSpeed;
  rstl::reserved_vector< CBodyStateCmd*, 28 > x40_commandTable;
  uint xb4_deliveredCmdMask;
  CBCGetupCmd xb8_getup;
  CBCStepCmd xc4_step;
  CBodyStateCmd xd4_die;
  CBCKnockDownCmd xdc_knockDown;
  CBCKnockBackCmd xf4_knockBack;
  CBCMeleeAttackCmd x10c_meleeAttack;
  CBCProjectileAttackCmd x128_projectileAttack;
  CBCLoopAttackCmd x144_loopAttack;
  CBCLoopReactionCmd x154_loopReaction;
  CBCLoopHitReactionCmd x160_loopHitReaction;
  CBodyStateCmd x16c_exitState;
  CBodyStateCmd x174_leanFromCover;
  CBodyStateCmd x17c_nextState;
  CBodyStateCmd x184_maintainVelocity;
  CBCGenerateCmd x18c_generate;
  CBCHurledCmd x1ac_hurled;
  CBCJumpCmd x1d0_jump;
  CBCSlideCmd x1f8_slide;
  CBCTauntCmd x210_taunt;
  CBCScriptedCmd x21c_scripted;
  CBCCoverCmd x230_cover;
  CBCWallHangCmd x254_wallHang;
  CBodyStateCmd x260_locomotion;
  CBodyStateCmd x268_additiveIdle;
  CBCAdditiveAimCmd x270_additiveAim;
  CBCAdditiveFlinchCmd x278_additiveFlinch;
  CBCAdditiveReactionCmd x284_additiveReaction;
  CBodyStateCmd x298_stopReaction;
};
CHECK_SIZEOF(CBodyStateCmdMgr, 0x2a0)

#endif // _CBODYSTATECMDMGR

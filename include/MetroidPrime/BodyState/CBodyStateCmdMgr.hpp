#ifndef _CBODYSTATECMDMGR
#define _CBODYSTATECMDMGR

// TODO: CharacterCommon
enum EBodyStateCmd {
  kBSC_Getup,
  kBSC_Step,
  kBSC_Die,
  kBSC_KnockDown,
  kBSC_KnockBack,
  kBSC_MeleeAttack,
  kBSC_ProjectileAttack,
  kBSC_LoopAttack,
  kBSC_LoopReaction,
  kBSC_LoopHitReaction,
  kBSC_ExitState,
  kBSC_LeanFromCover,
  kBSC_NextState,
  kBSC_MaintainVelocity,
  kBSC_Generate,
  kBSC_Hurled,
  kBSC_Jump,
  kBSC_Slide,
  kBSC_Taunt,
  kBSC_Scripted,
  kBSC_Cover,
  kBSC_WallHang,
  kBSC_Locomotion,
  kBSC_AdditiveIdle,
  kBSC_AdditiveAim,
  kBSC_AdditiveFlinch,
  kBSC_AdditiveReaction,
  kBSC_StopReaction
};

class CBodyStateCmd {
  EBodyStateCmd x4_cmd;

public:
  virtual ~CBodyStateCmd() {};
  explicit CBodyStateCmd(EBodyStateCmd cmd) : x4_cmd(cmd) {}
  EBodyStateCmd GetCommandId() const { return x4_cmd; }
};

class CBCAdditiveFlinchCmd : public CBodyStateCmd {
  float x8_weight;

public:
  float GetWeight() const { return x8_weight; }
};

class CBodyStateCmdMgr {
public:
  CBodyStateCmd* GetCmd(EBodyStateCmd cmd);
};

#endif // _CBODYSTATECMDMGR

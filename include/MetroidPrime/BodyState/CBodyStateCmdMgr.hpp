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

class CBodyStateCmd;

class CBodyStateCmdMgr {
public:
  CBodyStateCmd* GetCmd(EBodyStateCmd cmd);
};

#endif // _CBODYSTATECMDMGR

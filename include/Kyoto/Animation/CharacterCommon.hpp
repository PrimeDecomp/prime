#ifndef _CHARACTERCOMMON
#define _CHARACTERCOMMON

namespace pas {
enum ELocomotionType {
  kLT_Invalid = -1,
  kLT_Crouch = 0,
  kLT_Relaxed = 1,
  kLT_Lurk = 2,
  kLT_Combat = 3,
  kLT_Internal4 = 4,
  kLT_Internal5 = 5,
  kLT_Internal6 = 6,
  kLT_Internal7 = 7,
  kLT_Internal8 = 8,
  kLT_Internal9 = 9,
  kLT_Internal10 = 10,
  kLT_Internal11 = 11,
  kLT_Internal12 = 12,
  kLT_Internal13 = 13,
  kLT_Internal14 = 14
};

enum ELocomotionAnim {
  kLA_Invalid = -1,
  kLA_Idle,
  kLA_Walk,
  kLA_Run,
  kLA_BackUp,
  kLA_StrafeLeft,
  kLA_StrafeRight,
  kLA_StrafeUp,
  kLA_StrafeDown
};

enum EAnimationState {
  kAS_Invalid = -1,
  kAS_Fall = 0,
  kAS_Getup = 1,
  kAS_LieOnGround = 2,
  kAS_Step = 3,
  kAS_Death = 4,
  kAS_Locomotion = 5,
  kAS_KnockBack = 6,
  kAS_MeleeAttack = 7,
  kAS_Turn = 8,
  kAS_LoopAttack = 9,
  kAS_LoopReaction = 10,
  kAS_GroundHit = 11,
  kAS_Generate = 12,
  kAS_Jump = 13,
  kAS_Hurled = 14,
  kAS_Slide = 15,
  kAS_Taunt = 16,
  kAS_Scripted = 17,
  kAS_ProjectileAttack = 18,
  kAS_Cover = 19,
  kAS_WallHang = 20,
  kAS_AdditiveIdle = 21,
  kAS_AdditiveAim = 22,
  kAS_AdditiveFlinch = 23,
  kAS_AdditiveReaction = 24
};

enum EHurledState {
  kHS_Invalid = -1,
  kHS_KnockIntoAir,
  kHS_KnockLoop,
  kHS_KnockDown,
  kHS_StrikeWall,
  kHS_StrikeWallFallLoop,
  kHS_OutOfStrikeWall,
  kHS_Six,
  kHS_Seven
};

enum EFallState { kFS_Invalid = -1, kFS_Zero, kFS_One, kFS_Two };

enum EReactionType { kRT_Invalid = -1, kRT_Zero, kRT_One, kRT_Two, kRT_Three };

enum EAdditiveReactionType {
  kART_Invalid = -1,
  kART_Electrocution,
  kART_One,
  kART_Two,
  kART_IceBreakout,
  kART_Four,
  kART_Five,
  kART_Six,
  kART_Seven
};

enum EJumpType { kJT_Normal, kJT_One, kJT_Ambush };

enum EJumpState {
  kJS_Invalid = -1,
  kJS_IntoJump,
  kJS_AmbushJump,
  kJS_Loop,
  kJS_OutOfJump,
  kJS_WallBounceLeft,
  kJS_WallBounceRight
};

enum EStepDirection {
  kSD_Invalid = -1,
  kSD_Forward = 0,
  kSD_Backward = 1,
  kSD_Left = 2,
  kSD_Right = 3,
  kSD_Up = 4,
  kSD_Down = 5
};

enum EStepType { kStep_Normal = 0, kStep_Dodge = 1, kStep_BreakDodge = 2, kStep_RollDodge = 3 };

enum ESeverity {
  kS_Invalid = -1,
  kS_Zero = 0,
  kS_One = 1,
  kS_Two = 2,
  kS_Three = 3,
  kS_Four = 4,
  kS_Five = 5,
  kS_Six = 6,
  kS_Seven = 7,
  kS_Eight = 8
};

enum EGetupType { kGetup_Invalid = -1, kGetup_Zero = 0, kGetup_One = 1, kGetup_Two = 2 };

enum ELoopState { kLS_Invalid = -1, kLS_Begin, kLS_Loop, kLS_End };

enum ELoopAttackType { kLAT_Invalid = -1, kLAT_Zero, kLAT_One, kLAT_Two, kLAT_Three };

enum EGenerateType {
  kGType_Invalid = -1,
  kGType_Zero,
  kGType_One,
  kGType_Two,
  kGType_Three,
  kGType_Four,
  kGType_Five,
  kGType_Six,
  kGType_Seven,
  kGType_Eight
};

enum ESlideType { kSlide_Invalid = -1, kSlide_Zero = 0 };

enum ETauntType { kTT_Invalid = -1, kTT_Zero, kTT_One, kTT_Two };

enum ECoverState { kCS_Invalid = -1, kCS_IntoCover, kCS_Cover, kCS_Lean, kCS_OutOfCover };

enum ECoverDirection { kCD_Invalid = -1, kCD_Left, kCD_Right };

enum ETurnDirection { kTD_Invalid = -1, kTD_Right, kTD_Left };

enum EWallHangState {
  kWHS_Invalid = -1,
  kWHS_IntoJump,
  kWHS_JumpArc,
  kWHS_JumpAirLoop,
  kWHS_IntoWallHang,
  kWHS_WallHang,
  kWHS_Five,
  kWHS_OutOfWallHang,
  kWHS_OutOfWallHangTurn,
  kWHS_DetachJumpLoop,
  kWHS_DetachOutOfJump
};
} // namespace pas

enum EBodyType {
  kBT_Invalid,
  kBT_BiPedal,
  kBT_Restricted,
  kBT_Flyer,
  kBT_Pitchable,
  kBT_RestrictedFlyer,
  kBT_WallWalker,
  kBT_NewFlyer
};

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

#endif // _CHARACTERCOMMON

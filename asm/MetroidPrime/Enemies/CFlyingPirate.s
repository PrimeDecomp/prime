.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CFlyingPirate_cpp

.section .data
.balign 8

.global skBursts__13CFlyingPirate
skBursts__13CFlyingPirate:
	# ROM: 0x3E37E8
	.4byte lbl_803D2078
	.4byte lbl_803D2180
	.4byte lbl_803D2288
	.4byte lbl_803D2364
	.4byte 0

.global lbl_803E67FC
lbl_803E67FC:
	# ROM: 0x3E37FC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryGetUp__10CPatternedFR13CStateManageri

.global lbl_803E6808
lbl_803E6808:
	# ROM: 0x3E3808
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTurn__10CPatternedFR13CStateManageri

.global lbl_803E6814
lbl_803E6814:
	# ROM: 0x3E3814
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global lbl_803E6820
lbl_803E6820:
	# ROM: 0x3E3820
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTurn__10CPatternedFR13CStateManageri

.global lbl_803E682C
lbl_803E682C:
	# ROM: 0x3E382C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryDodge__10CPatternedFR13CStateManageri

.global lbl_803E6838
lbl_803E6838:
	# ROM: 0x3E3838
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryJump__10CPatternedFR13CStateManageri

.global lbl_803E6844
lbl_803E6844:
	# ROM: 0x3E3844
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTurn__10CPatternedFR13CStateManageri

.global lbl_803E6850
lbl_803E6850:
	# ROM: 0x3E3850
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global __vt__13CFlyingPirate
__vt__13CFlyingPirate:
	# ROM: 0x3E385C
	.4byte 0
	.4byte 0
	.4byte __dt__13CFlyingPirateFv
	.4byte Accept__13CFlyingPirateFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__13CFlyingPirateFfR13CStateManager
	.4byte AcceptScriptMsg__13CFlyingPirateF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__13CFlyingPirateFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__13CFlyingPirateCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__13CFlyingPirateFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__13CFlyingPirateFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
	.4byte KnockBack__13CFlyingPirateFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__13CFlyingPirateCFv
	.4byte Listen__13CFlyingPirateFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__13CFlyingPirateCFv
	.4byte Patrol__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte PathFind__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__3CAiFR13CStateManager9EStateMsgf
	.4byte Deactivate__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Attack__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Taunt__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Explode__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Dodge__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Retreat__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Cover__3CAiFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Growth__3CAiFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte Bounce__13CFlyingPirateFR13CStateManager9EStateMsgf
	.4byte PathFindEx__3CAiFR13CStateManager9EStateMsgf
	.4byte Dizzy__3CAiFR13CStateManager9EStateMsgf
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__3CAiFR13CStateManagerf
	.4byte Leash__10CPatternedFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__13CFlyingPirateFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__13CFlyingPirateFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__10CPatternedFR13CStateManagerf
	.4byte SpotPlayer__13CFlyingPirateFR13CStateManagerf
	.4byte PlayerSpot__10CPatternedFR13CStateManagerf
	.4byte PatternOver__13CFlyingPirateFR13CStateManagerf
	.4byte PatternShagged__10CPatternedFR13CStateManagerf
	.4byte HasAttackPattern__10CPatternedFR13CStateManagerf
	.4byte HasPatrolPath__10CPatternedFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__10CPatternedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__13CFlyingPirateFR13CStateManagerf
	.4byte ShouldAttack__13CFlyingPirateFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__13CFlyingPirateFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__13CFlyingPirateFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__13CFlyingPirateFR13CStateManagerf
	.4byte HearShot__13CFlyingPirateFR13CStateManagerf
	.4byte HearPlayer__13CFlyingPirateFR13CStateManagerf
	.4byte CoverCheck__13CFlyingPirateFR13CStateManagerf
	.4byte CoverFind__13CFlyingPirateFR13CStateManagerf
	.4byte CoverBlown__3CAiFR13CStateManagerf
	.4byte CoverNearlyBlown__3CAiFR13CStateManagerf
	.4byte CoveringFire__3CAiFR13CStateManagerf
	.4byte GotUp__3CAiFR13CStateManagerf
	.4byte LineOfSight__13CFlyingPirateFR13CStateManagerf
	.4byte AggressionCheck__13CFlyingPirateFR13CStateManagerf
	.4byte AttackOver__3CAiFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__13CFlyingPirateFR13CStateManagerf
	.4byte ShouldRetreat__13CFlyingPirateFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__13CFlyingPirateFR13CStateManagerf
	.4byte ShotAt__13CFlyingPirateFR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__3CAiFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__3CAiFR13CStateManagerf
	.4byte StartAttack__3CAiFR13CStateManagerf
	.4byte BreakAttack__3CAiFR13CStateManagerf
	.4byte ShouldStrafe__3CAiFR13CStateManagerf
	.4byte ShouldSpecialAttack__13CFlyingPirateFR13CStateManagerf
	.4byte LostInterest__3CAiFR13CStateManagerf
	.4byte CodeTrigger__10CPatternedFR13CStateManagerf
	.4byte BounceFind__3CAiFR13CStateManagerf
	.4byte Random__10CPatternedFR13CStateManagerf
	.4byte FixedRandom__10CPatternedFR13CStateManagerf
	.4byte IsDizzy__3CAiFR13CStateManagerf
	.4byte ShouldCallForBackup__3CAiFR13CStateManagerf
	.4byte Freeze__10CPatternedFRC9CVector3f13CUnitVector3ff
	.4byte KnockbackWhenFrozen__13CFlyingPirateCFv
	.4byte Explode__13CFlyingPirateFR13CStateManager
	.4byte MassiveFrozenDeath__10CPatternedFR13CStateManager
	.4byte Burn__10CPatternedFff
	.4byte Shock__10CPatternedFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte GetSearchPath__13CFlyingPirateFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__13CFlyingPirateCFv
	.4byte ProjectileInfo__13CFlyingPirateFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E6B28
lbl_803E6B28:
	# ROM: 0x3E3B28
	.4byte lbl_801FE368
	.4byte lbl_801FE340
	.4byte lbl_801FE354
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE14C
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE0E4
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE0C8
	.4byte lbl_801FE378
	.4byte lbl_801FDF64
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE378
	.4byte lbl_801FE158

.global __vt__20CFlyingPirateRagDoll
__vt__20CFlyingPirateRagDoll:
	# ROM: 0x3E3B98
	.4byte 0
	.4byte 0
	.4byte sub_801ffe50
	.4byte Update__20CFlyingPirateRagDollFR13CStateManagerf
	.4byte PreRender__20CFlyingPirateRagDollFRC9CVector3fR10CModelData
	.4byte 0

.section .sdata
.balign 8


.global lbl_805A7E80
lbl_805A7E80:
	# ROM: 0x3F5820
	.4byte 0x00000013

.global lbl_805A7E84
lbl_805A7E84:
	# ROM: 0x3F5824
	.4byte 0x00000021

.global lbl_805A7E88
lbl_805A7E88:
	# ROM: 0x3F5828
	.4byte 0x00000013
	.4byte 0

.global lbl_805A7E90
lbl_805A7E90:
	# ROM: 0x3F5830
	.4byte 0x00000013

.global lbl_805A7E94
lbl_805A7E94:
	# ROM: 0x3F5834
	.4byte 0x447A0000

.global lbl_805A7E98
lbl_805A7E98:
	# ROM: 0x3F5838
	.4byte 0x42FE0000

.global lbl_805A7E9C
lbl_805A7E9C:
	# ROM: 0x3F583C
	.4byte 0x00000013

.global lbl_805A7EA0
lbl_805A7EA0:
	# ROM: 0x3F5840
	.4byte 0x00000023

.global lbl_805A7EA4
lbl_805A7EA4:
	# ROM: 0x3F5844
	.4byte 0x00000013

.global lbl_805A7EA8
lbl_805A7EA8:
	# ROM: 0x3F5848
	.4byte 0x00000020

.global lbl_805A7EAC
lbl_805A7EAC:
	# ROM: 0x3F584C
	.4byte 0x00000012

.global lbl_805A7EB0
lbl_805A7EB0:
	# ROM: 0x3F5850
	.4byte 0x00000020

.global lbl_805A7EB4
lbl_805A7EB4:
	# ROM: 0x3F5854
	.4byte 0x00000012

.global lbl_805A7EB8
lbl_805A7EB8:
	# ROM: 0x3F5858
	.4byte 0x00000021

.global lbl_805A7EBC
lbl_805A7EBC:
	# ROM: 0x3F585C
	.4byte 0x00000020

.global lbl_805A7EC0
lbl_805A7EC0:
	# ROM: 0x3F5860
	.4byte 0x00000012

.global lbl_805A7EC4
lbl_805A7EC4:
	# ROM: 0x3F5864
	.4byte 0x00000020

.global lbl_805A7EC8
lbl_805A7EC8:
	# ROM: 0x3F5868
	.4byte 0x00000012

.global lbl_805A7ECC
lbl_805A7ECC:
	# ROM: 0x3F586C
	.float 1.0

.global lbl_805A7ED0
lbl_805A7ED0:
	# ROM: 0x3F5870
	.4byte 0x00000020

.global lbl_805A7ED4
lbl_805A7ED4:
	# ROM: 0x3F5874
	.4byte 0x00000012

.global lbl_805A7ED8
lbl_805A7ED8:
	# ROM: 0x3F5878
	.4byte 0x00000030

.global lbl_805A7EDC
lbl_805A7EDC:
	# ROM: 0x3F587C
	.4byte 0

.global lbl_805A7EE0
lbl_805A7EE0:
	# ROM: 0x3F5880
	.4byte 0

.global lbl_805A7EE4
lbl_805A7EE4:
	# ROM: 0x3F5884
	.4byte 0

.global lbl_805A7EE8
lbl_805A7EE8:
	# ROM: 0x3F5888
	.4byte 0

.global lbl_805A7EEC
lbl_805A7EEC:
	# ROM: 0x3F588C
	.float 1.0

.global lbl_805A7EF0
lbl_805A7EF0:
	# ROM: 0x3F5890
	.4byte 0x3FFFDF3B

.global lbl_805A7EF4
lbl_805A7EF4:
	# ROM: 0x3F5894
	.4byte 0x3EAA7EFA

.global lbl_805A7EF8
lbl_805A7EF8:
	# ROM: 0x3F5898
	.float 0.1
	.4byte 0

.section .bss
.balign 8

.lcomm lbl_8046C950, 0xFC, 4
.lcomm lbl_8046CA4C, 0xF4, 4
.comm lbl_80572078, 0x60, 4
.comm lbl_805720D8, 0x10, 4
.comm lbl_805720E8, 0x10, 4
.comm lbl_805720F8, 0x10, 4
.comm lbl_80572108, 0x10, 4
.comm lbl_80572118, 0x10, 4

.section .text, "ax"

.global FixedRandom__10CPatternedFR13CStateManagerf
FixedRandom__10CPatternedFR13CStateManagerf:
/* 801F40C8 001F1028  C0 23 03 3C */	lfs f1, 0x33c(r3)
/* 801F40CC 001F102C  C0 03 03 44 */	lfs f0, 0x344(r3)
/* 801F40D0 001F1030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F40D4 001F1034  7C 00 00 26 */	mfcr r0
/* 801F40D8 001F1038  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F40DC 001F103C  4E 80 00 20 */	blr

.global Random__10CPatternedFR13CStateManagerf
Random__10CPatternedFR13CStateManagerf:
/* 801F40E0 001F1040  C0 03 03 3C */	lfs f0, 0x33c(r3)
/* 801F40E4 001F1044  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801F40E8 001F1048  7C 00 00 26 */	mfcr r0
/* 801F40EC 001F104C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F40F0 001F1050  4E 80 00 20 */	blr

.global UpdatePatternDestPos__10CPatternedFR13CStateManager
UpdatePatternDestPos__10CPatternedFR13CStateManager:
/* 801F40F4 001F1054  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801F40F8 001F1058  7C 08 02 A6 */	mflr r0
/* 801F40FC 001F105C  90 01 00 84 */	stw r0, 0x84(r1)
/* 801F4100 001F1060  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801F4104 001F1064  7C 9F 23 78 */	mr r31, r4
/* 801F4108 001F1068  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801F410C 001F106C  7C 7E 1B 78 */	mr r30, r3
/* 801F4110 001F1070  80 63 03 9C */	lwz r3, 0x39c(r3)
/* 801F4114 001F1074  80 1E 03 90 */	lwz r0, 0x390(r30)
/* 801F4118 001F1078  7C 03 00 00 */	cmpw r3, r0
/* 801F411C 001F107C  40 80 01 78 */	bge lbl_801F4294
/* 801F4120 001F1080  C0 22 AF 20 */	lfs f1, lbl_805ACC40@sda21(r2)
/* 801F4124 001F1084  38 00 00 00 */	li r0, 0
/* 801F4128 001F1088  C0 1E 03 68 */	lfs f0, 0x368(r30)
/* 801F412C 001F108C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801F4130 001F1090  40 82 00 1C */	bne lbl_801F414C
/* 801F4134 001F1094  C0 1E 03 6C */	lfs f0, 0x36c(r30)
/* 801F4138 001F1098  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801F413C 001F109C  40 82 00 10 */	bne lbl_801F414C
/* 801F4140 001F10A0  C0 1E 03 70 */	lfs f0, 0x370(r30)
/* 801F4144 001F10A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801F4148 001F10A8  41 82 00 08 */	beq lbl_801F4150
lbl_801F414C:
/* 801F414C 001F10AC  38 00 00 01 */	li r0, 1
lbl_801F4150:
/* 801F4150 001F10B0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801F4154 001F10B4  41 82 01 2C */	beq lbl_801F4280
/* 801F4158 001F10B8  7F C4 F3 78 */	mr r4, r30
/* 801F415C 001F10BC  7F E5 FB 78 */	mr r5, r31
/* 801F4160 001F10C0  38 61 00 60 */	addi r3, r1, 0x60
/* 801F4164 001F10C4  48 00 0A DD */	bl FindPatternDir__10CPatternedFR13CStateManager
/* 801F4168 001F10C8  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 801F416C 001F10CC  7F C4 F3 78 */	mr r4, r30
/* 801F4170 001F10D0  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 801F4174 001F10D4  38 61 00 44 */	addi r3, r1, 0x44
/* 801F4178 001F10D8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801F417C 001F10DC  38 A1 00 6C */	addi r5, r1, 0x6c
/* 801F4180 001F10E0  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 801F4184 001F10E4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 801F4188 001F10E8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801F418C 001F10EC  48 00 08 91 */	bl FindPatternRotation__10CPatternedFRC9CVector3f
/* 801F4190 001F10F0  80 1E 03 9C */	lwz r0, 0x39c(r30)
/* 801F4194 001F10F4  38 61 00 54 */	addi r3, r1, 0x54
/* 801F4198 001F10F8  80 BE 03 98 */	lwz r5, 0x398(r30)
/* 801F419C 001F10FC  38 81 00 44 */	addi r4, r1, 0x44
/* 801F41A0 001F1100  1C 00 00 24 */	mulli r0, r0, 0x24
/* 801F41A4 001F1104  7C A5 02 14 */	add r5, r5, r0
/* 801F41A8 001F1108  48 11 D0 BD */	bl Transform__11CQuaternionCFRC9CVector3f
/* 801F41AC 001F110C  7F C3 F3 78 */	mr r3, r30
/* 801F41B0 001F1110  38 81 00 54 */	addi r4, r1, 0x54
/* 801F41B4 001F1114  4B E8 89 A9 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F41B8 001F1118  80 1E 03 7C */	lwz r0, 0x37c(r30)
/* 801F41BC 001F111C  2C 00 00 00 */	cmpwi r0, 0
/* 801F41C0 001F1120  41 82 00 08 */	beq lbl_801F41C8
/* 801F41C4 001F1124  48 00 00 D0 */	b lbl_801F4294
lbl_801F41C8:
/* 801F41C8 001F1128  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F41CC 001F112C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F41D0 001F1130  41 82 00 4C */	beq lbl_801F421C
/* 801F41D4 001F1134  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801F41D8 001F1138  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 801F41DC 001F113C  C0 3E 03 68 */	lfs f1, 0x368(r30)
/* 801F41E0 001F1140  EC 60 00 32 */	fmuls f3, f0, f0
/* 801F41E4 001F1144  C0 1E 03 6C */	lfs f0, 0x36c(r30)
/* 801F41E8 001F1148  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801F41EC 001F114C  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 801F41F0 001F1150  EC 21 00 72 */	fmuls f1, f1, f1
/* 801F41F4 001F1154  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F41F8 001F1158  C0 BE 03 70 */	lfs f5, 0x370(r30)
/* 801F41FC 001F115C  EC 84 01 32 */	fmuls f4, f4, f4
/* 801F4200 001F1160  EC 63 10 2A */	fadds f3, f3, f2
/* 801F4204 001F1164  EC 45 01 72 */	fmuls f2, f5, f5
/* 801F4208 001F1168  EC 01 00 2A */	fadds f0, f1, f0
/* 801F420C 001F116C  EC 24 18 2A */	fadds f1, f4, f3
/* 801F4210 001F1170  EC 02 00 2A */	fadds f0, f2, f0
/* 801F4214 001F1174  EC 21 00 24 */	fdivs f1, f1, f0
/* 801F4218 001F1178  48 00 00 30 */	b lbl_801F4248
lbl_801F421C:
/* 801F421C 001F117C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801F4220 001F1180  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 801F4224 001F1184  C0 3E 03 68 */	lfs f1, 0x368(r30)
/* 801F4228 001F1188  EC 60 00 32 */	fmuls f3, f0, f0
/* 801F422C 001F118C  C0 1E 03 6C */	lfs f0, 0x36c(r30)
/* 801F4230 001F1190  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801F4234 001F1194  EC 21 00 72 */	fmuls f1, f1, f1
/* 801F4238 001F1198  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F423C 001F119C  EC 43 10 2A */	fadds f2, f3, f2
/* 801F4240 001F11A0  EC 01 00 2A */	fadds f0, f1, f0
/* 801F4244 001F11A4  EC 22 00 24 */	fdivs f1, f2, f0
lbl_801F4248:
/* 801F4248 001F11A8  48 12 12 B9 */	bl SqrtF__5CMathFf
/* 801F424C 001F11AC  C0 7E 02 E4 */	lfs f3, 0x2e4(r30)
/* 801F4250 001F11B0  7F C3 F3 78 */	mr r3, r30
/* 801F4254 001F11B4  C0 5E 02 E8 */	lfs f2, 0x2e8(r30)
/* 801F4258 001F11B8  38 81 00 38 */	addi r4, r1, 0x38
/* 801F425C 001F11BC  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 801F4260 001F11C0  EC 61 00 F2 */	fmuls f3, f1, f3
/* 801F4264 001F11C4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801F4268 001F11C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F426C 001F11CC  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801F4270 001F11D0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801F4274 001F11D4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801F4278 001F11D8  4B E8 88 E5 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F427C 001F11DC  48 00 00 18 */	b lbl_801F4294
lbl_801F4280:
/* 801F4280 001F11E0  1C 03 00 24 */	mulli r0, r3, 0x24
/* 801F4284 001F11E4  80 9E 03 98 */	lwz r4, 0x398(r30)
/* 801F4288 001F11E8  7F C3 F3 78 */	mr r3, r30
/* 801F428C 001F11EC  7C 84 02 14 */	add r4, r4, r0
/* 801F4290 001F11F0  4B E8 88 CD */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_801F4294:
/* 801F4294 001F11F4  80 1E 03 74 */	lwz r0, 0x374(r30)
/* 801F4298 001F11F8  2C 00 00 01 */	cmpwi r0, 1
/* 801F429C 001F11FC  41 82 00 60 */	beq lbl_801F42FC
/* 801F42A0 001F1200  40 80 00 10 */	bge lbl_801F42B0
/* 801F42A4 001F1204  2C 00 00 00 */	cmpwi r0, 0
/* 801F42A8 001F1208  40 80 00 14 */	bge lbl_801F42BC
/* 801F42AC 001F120C  48 00 00 DC */	b lbl_801F4388
lbl_801F42B0:
/* 801F42B0 001F1210  2C 00 00 03 */	cmpwi r0, 3
/* 801F42B4 001F1214  40 80 00 D4 */	bge lbl_801F4388
/* 801F42B8 001F1218  48 00 00 84 */	b lbl_801F433C
lbl_801F42BC:
/* 801F42BC 001F121C  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 801F42C0 001F1220  7F C3 F3 78 */	mr r3, r30
/* 801F42C4 001F1224  C0 1E 03 54 */	lfs f0, 0x354(r30)
/* 801F42C8 001F1228  38 81 00 2C */	addi r4, r1, 0x2c
/* 801F42CC 001F122C  C0 7E 02 E8 */	lfs f3, 0x2e8(r30)
/* 801F42D0 001F1230  C0 5E 03 58 */	lfs f2, 0x358(r30)
/* 801F42D4 001F1234  EC 81 00 2A */	fadds f4, f1, f0
/* 801F42D8 001F1238  C0 3E 02 E0 */	lfs f1, 0x2e0(r30)
/* 801F42DC 001F123C  C0 1E 03 50 */	lfs f0, 0x350(r30)
/* 801F42E0 001F1240  EC 43 10 2A */	fadds f2, f3, f2
/* 801F42E4 001F1244  EC 01 00 2A */	fadds f0, f1, f0
/* 801F42E8 001F1248  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 801F42EC 001F124C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801F42F0 001F1250  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801F42F4 001F1254  4B E8 88 69 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F42F8 001F1258  48 00 00 90 */	b lbl_801F4388
lbl_801F42FC:
/* 801F42FC 001F125C  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 801F4300 001F1260  7F C3 F3 78 */	mr r3, r30
/* 801F4304 001F1264  C0 1E 03 60 */	lfs f0, 0x360(r30)
/* 801F4308 001F1268  38 81 00 20 */	addi r4, r1, 0x20
/* 801F430C 001F126C  C0 7E 02 E8 */	lfs f3, 0x2e8(r30)
/* 801F4310 001F1270  C0 5E 03 64 */	lfs f2, 0x364(r30)
/* 801F4314 001F1274  EC 81 00 2A */	fadds f4, f1, f0
/* 801F4318 001F1278  C0 3E 02 E0 */	lfs f1, 0x2e0(r30)
/* 801F431C 001F127C  C0 1E 03 5C */	lfs f0, 0x35c(r30)
/* 801F4320 001F1280  EC 43 10 2A */	fadds f2, f3, f2
/* 801F4324 001F1284  EC 01 00 2A */	fadds f0, f1, f0
/* 801F4328 001F1288  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801F432C 001F128C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801F4330 001F1290  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801F4334 001F1294  4B E8 88 29 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F4338 001F1298  48 00 00 50 */	b lbl_801F4388
lbl_801F433C:
/* 801F433C 001F129C  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801F4340 001F12A0  7F C3 F3 78 */	mr r3, r30
/* 801F4344 001F12A4  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 801F4348 001F12A8  38 81 00 14 */	addi r4, r1, 0x14
/* 801F434C 001F12AC  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 801F4350 001F12B0  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 801F4354 001F12B4  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 801F4358 001F12B8  EC 60 20 2A */	fadds f3, f0, f4
/* 801F435C 001F12BC  C0 3E 02 E8 */	lfs f1, 0x2e8(r30)
/* 801F4360 001F12C0  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 801F4364 001F12C4  EC 21 28 2A */	fadds f1, f1, f5
/* 801F4368 001F12C8  D0 41 00 08 */	stfs f2, 8(r1)
/* 801F436C 001F12CC  EC 00 10 2A */	fadds f0, f0, f2
/* 801F4370 001F12D0  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801F4374 001F12D4  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801F4378 001F12D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801F437C 001F12DC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801F4380 001F12E0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801F4384 001F12E4  4B E8 87 D9 */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_801F4388:
/* 801F4388 001F12E8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801F438C 001F12EC  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801F4390 001F12F0  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801F4394 001F12F4  7C 08 03 A6 */	mtlr r0
/* 801F4398 001F12F8  38 21 00 80 */	addi r1, r1, 0x80
/* 801F439C 001F12FC  4E 80 00 20 */	blr

.global SetupPattern__10CPatternedFR13CStateManager
SetupPattern__10CPatternedFR13CStateManager:
/* 801F43A0 001F1300  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 801F43A4 001F1304  7C 08 02 A6 */	mflr r0
/* 801F43A8 001F1308  90 01 01 64 */	stw r0, 0x164(r1)
/* 801F43AC 001F130C  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 801F43B0 001F1310  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 801F43B4 001F1314  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 801F43B8 001F1318  F3 C1 01 48 */	psq_st f30, 328(r1), 0, qr0
/* 801F43BC 001F131C  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 801F43C0 001F1320  F3 A1 01 38 */	psq_st f29, 312(r1), 0, qr0
/* 801F43C4 001F1324  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 801F43C8 001F1328  F3 81 01 28 */	psq_st f28, 296(r1), 0, qr0
/* 801F43CC 001F132C  DB 61 01 10 */	stfd f27, 0x110(r1)
/* 801F43D0 001F1330  F3 61 01 18 */	psq_st f27, 280(r1), 0, qr0
/* 801F43D4 001F1334  DB 41 01 00 */	stfd f26, 0x100(r1)
/* 801F43D8 001F1338  F3 41 01 08 */	psq_st f26, 264(r1), 0, qr0
/* 801F43DC 001F133C  DB 21 00 F0 */	stfd f25, 0xf0(r1)
/* 801F43E0 001F1340  F3 21 00 F8 */	psq_st f25, 248(r1), 0, qr0
/* 801F43E4 001F1344  DB 01 00 E0 */	stfd f24, 0xe0(r1)
/* 801F43E8 001F1348  F3 01 00 E8 */	psq_st f24, 232(r1), 0, qr0
/* 801F43EC 001F134C  DA E1 00 D0 */	stfd f23, 0xd0(r1)
/* 801F43F0 001F1350  F2 E1 00 D8 */	psq_st f23, 216(r1), 0, qr0
/* 801F43F4 001F1354  DA C1 00 C0 */	stfd f22, 0xc0(r1)
/* 801F43F8 001F1358  F2 C1 00 C8 */	psq_st f22, 200(r1), 0, qr0
/* 801F43FC 001F135C  DA A1 00 B0 */	stfd f21, 0xb0(r1)
/* 801F4400 001F1360  F2 A1 00 B8 */	psq_st f21, 184(r1), 0, qr0
/* 801F4404 001F1364  BF 01 00 90 */	stmw r24, 0x90(r1)
/* 801F4408 001F1368  7C 7C 1B 78 */	mr r28, r3
/* 801F440C 001F136C  7C 9D 23 78 */	mr r29, r4
/* 801F4410 001F1370  48 00 04 C5 */	bl GetDesiredAttackState__10CPatternedCFR13CStateManager
/* 801F4414 001F1374  7C 78 1B 78 */	mr r24, r3
/* 801F4418 001F1378  7F 84 E3 78 */	mr r4, r28
/* 801F441C 001F137C  7F A5 EB 78 */	mr r5, r29
/* 801F4420 001F1380  38 61 00 1C */	addi r3, r1, 0x1c
/* 801F4424 001F1384  7F 06 C3 78 */	mr r6, r24
/* 801F4428 001F1388  38 E0 00 06 */	li r7, 6
/* 801F442C 001F138C  48 00 0B 6D */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801F4430 001F1390  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 801F4434 001F1394  B0 1C 02 DC */	sth r0, 0x2dc(r28)
/* 801F4438 001F1398  A0 6D A3 8C */	lhz r3, kInvalidUniqueId@sda21(r13)
/* 801F443C 001F139C  A0 1C 02 DC */	lhz r0, 0x2dc(r28)
/* 801F4440 001F13A0  7C 03 00 40 */	cmplw r3, r0
/* 801F4444 001F13A4  40 82 00 2C */	bne lbl_801F4470
/* 801F4448 001F13A8  2C 18 00 0A */	cmpwi r24, 0xa
/* 801F444C 001F13AC  41 82 00 24 */	beq lbl_801F4470
/* 801F4450 001F13B0  7F 84 E3 78 */	mr r4, r28
/* 801F4454 001F13B4  7F A5 EB 78 */	mr r5, r29
/* 801F4458 001F13B8  38 61 00 18 */	addi r3, r1, 0x18
/* 801F445C 001F13BC  38 C0 00 0A */	li r6, 0xa
/* 801F4460 001F13C0  38 E0 00 06 */	li r7, 6
/* 801F4464 001F13C4  48 00 0B 35 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801F4468 001F13C8  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 801F446C 001F13CC  B0 1C 02 DC */	sth r0, 0x2dc(r28)
lbl_801F4470:
/* 801F4470 001F13D0  80 1C 03 90 */	lwz r0, 0x390(r28)
/* 801F4474 001F13D4  80 7C 03 98 */	lwz r3, 0x398(r28)
/* 801F4478 001F13D8  1C 00 00 24 */	mulli r0, r0, 0x24
/* 801F447C 001F13DC  90 61 00 24 */	stw r3, 0x24(r1)
/* 801F4480 001F13E0  7C 03 02 14 */	add r0, r3, r0
/* 801F4484 001F13E4  90 61 00 20 */	stw r3, 0x20(r1)
/* 801F4488 001F13E8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801F448C 001F13EC  90 01 00 28 */	stw r0, 0x28(r1)
/* 801F4490 001F13F0  48 00 00 08 */	b lbl_801F4498
lbl_801F4494:
/* 801F4494 001F13F4  38 63 00 24 */	addi r3, r3, 0x24
lbl_801F4498:
/* 801F4498 001F13F8  7C 03 00 40 */	cmplw r3, r0
/* 801F449C 001F13FC  40 82 FF F8 */	bne lbl_801F4494
/* 801F44A0 001F1400  38 00 00 00 */	li r0, 0
/* 801F44A4 001F1404  90 1C 03 90 */	stw r0, 0x390(r28)
/* 801F44A8 001F1408  A0 6D A3 8C */	lhz r3, kInvalidUniqueId@sda21(r13)
/* 801F44AC 001F140C  A0 1C 02 DC */	lhz r0, 0x2dc(r28)
/* 801F44B0 001F1410  7C 03 00 40 */	cmplw r3, r0
/* 801F44B4 001F1414  41 82 03 40 */	beq lbl_801F47F4
/* 801F44B8 001F1418  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 801F44BC 001F141C  7F 84 E3 78 */	mr r4, r28
/* 801F44C0 001F1420  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 801F44C4 001F1424  7F A5 EB 78 */	mr r5, r29
/* 801F44C8 001F1428  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801F44CC 001F142C  38 61 00 40 */	addi r3, r1, 0x40
/* 801F44D0 001F1430  D0 1C 03 50 */	stfs f0, 0x350(r28)
/* 801F44D4 001F1434  D0 3C 03 54 */	stfs f1, 0x354(r28)
/* 801F44D8 001F1438  D0 5C 03 58 */	stfs f2, 0x358(r28)
/* 801F44DC 001F143C  80 DD 08 4C */	lwz r6, 0x84c(r29)
/* 801F44E0 001F1440  C0 46 00 60 */	lfs f2, 0x60(r6)
/* 801F44E4 001F1444  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 801F44E8 001F1448  C0 06 00 40 */	lfs f0, 0x40(r6)
/* 801F44EC 001F144C  D0 1C 03 5C */	stfs f0, 0x35c(r28)
/* 801F44F0 001F1450  D0 3C 03 60 */	stfs f1, 0x360(r28)
/* 801F44F4 001F1454  D0 5C 03 64 */	stfs f2, 0x364(r28)
/* 801F44F8 001F1458  48 00 04 7D */	bl GetDestWaypoints__10CPatternedCFR13CStateManager
/* 801F44FC 001F145C  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 801F4500 001F1460  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 801F4504 001F1464  28 1E 00 00 */	cmplwi r30, 0
/* 801F4508 001F1468  41 82 02 EC */	beq lbl_801F47F4
/* 801F450C 001F146C  88 1E 00 F4 */	lbz r0, 0xf4(r30)
/* 801F4510 001F1470  28 1F 00 00 */	cmplwi r31, 0
/* 801F4514 001F1474  90 1C 03 74 */	stw r0, 0x374(r28)
/* 801F4518 001F1478  88 1E 00 F5 */	lbz r0, 0xf5(r30)
/* 801F451C 001F147C  90 1C 03 78 */	stw r0, 0x378(r28)
/* 801F4520 001F1480  88 1E 00 F6 */	lbz r0, 0xf6(r30)
/* 801F4524 001F1484  90 1C 03 7C */	stw r0, 0x37c(r28)
/* 801F4528 001F1488  41 82 00 38 */	beq lbl_801F4560
/* 801F452C 001F148C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801F4530 001F1490  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801F4534 001F1494  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 801F4538 001F1498  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801F453C 001F149C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F4540 001F14A0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801F4544 001F14A4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801F4548 001F14A8  EC 64 18 28 */	fsubs f3, f4, f3
/* 801F454C 001F14AC  D0 1C 03 68 */	stfs f0, 0x368(r28)
/* 801F4550 001F14B0  EC 02 08 28 */	fsubs f0, f2, f1
/* 801F4554 001F14B4  D0 7C 03 6C */	stfs f3, 0x36c(r28)
/* 801F4558 001F14B8  D0 1C 03 70 */	stfs f0, 0x370(r28)
/* 801F455C 001F14BC  48 00 00 20 */	b lbl_801F457C
lbl_801F4560:
/* 801F4560 001F14C0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F4564 001F14C4  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801F4568 001F14C8  D0 1C 03 68 */	stfs f0, 0x368(r28)
/* 801F456C 001F14CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F4570 001F14D0  D0 1C 03 6C */	stfs f0, 0x36c(r28)
/* 801F4574 001F14D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F4578 001F14D8  D0 1C 03 70 */	stfs f0, 0x370(r28)
lbl_801F457C:
/* 801F457C 001F14DC  3B 00 00 00 */	li r24, 0
/* 801F4580 001F14E0  7F C4 F3 78 */	mr r4, r30
lbl_801F4584:
/* 801F4584 001F14E4  7F A5 EB 78 */	mr r5, r29
/* 801F4588 001F14E8  38 61 00 10 */	addi r3, r1, 0x10
/* 801F458C 001F14EC  3B 18 00 01 */	addi r24, r24, 1
/* 801F4590 001F14F0  4B E8 2B A5 */	bl NextWaypoint__15CScriptWaypointCFRC13CStateManager
/* 801F4594 001F14F4  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 801F4598 001F14F8  7F A3 EB 78 */	mr r3, r29
/* 801F459C 001F14FC  38 81 00 14 */	addi r4, r1, 0x14
/* 801F45A0 001F1500  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801F45A4 001F1504  4B E5 7F D1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F45A8 001F1508  7C 64 1B 78 */	mr r4, r3
/* 801F45AC 001F150C  38 61 00 38 */	addi r3, r1, 0x38
/* 801F45B0 001F1510  4B EB 1F 9D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F45B4 001F1514  80 83 00 04 */	lwz r4, 4(r3)
/* 801F45B8 001F1518  28 04 00 00 */	cmplwi r4, 0
/* 801F45BC 001F151C  41 82 00 14 */	beq lbl_801F45D0
/* 801F45C0 001F1520  A0 64 00 08 */	lhz r3, 8(r4)
/* 801F45C4 001F1524  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801F45C8 001F1528  7C 03 00 40 */	cmplw r3, r0
/* 801F45CC 001F152C  40 82 FF B8 */	bne lbl_801F4584
lbl_801F45D0:
/* 801F45D0 001F1530  7F 04 C3 78 */	mr r4, r24
/* 801F45D4 001F1534  38 7C 03 8C */	addi r3, r28, 0x38c
/* 801F45D8 001F1538  48 00 2A D1 */	bl "reserve__Q24rstl63vector<Q210CPatterned12CPatternNode,Q24rstl17rmemory_allocator>Fi"
/* 801F45DC 001F153C  80 1C 03 74 */	lwz r0, 0x374(r28)
/* 801F45E0 001F1540  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F45E4 001F1544  C7 E3 66 A0 */	lfsu f31, sZeroVector__9CVector3f@l(r3)
/* 801F45E8 001F1548  2C 00 00 02 */	cmpwi r0, 2
/* 801F45EC 001F154C  C3 C3 00 04 */	lfs f30, 4(r3)
/* 801F45F0 001F1550  C3 A3 00 08 */	lfs f29, 8(r3)
/* 801F45F4 001F1554  41 82 00 38 */	beq lbl_801F462C
/* 801F45F8 001F1558  40 80 00 10 */	bge lbl_801F4608
/* 801F45FC 001F155C  2C 00 00 01 */	cmpwi r0, 1
/* 801F4600 001F1560  40 80 00 14 */	bge lbl_801F4614
/* 801F4604 001F1564  48 00 00 28 */	b lbl_801F462C
lbl_801F4608:
/* 801F4608 001F1568  2C 00 00 04 */	cmpwi r0, 4
/* 801F460C 001F156C  40 80 00 20 */	bge lbl_801F462C
/* 801F4610 001F1570  48 00 00 28 */	b lbl_801F4638
lbl_801F4614:
/* 801F4614 001F1574  28 1F 00 00 */	cmplwi r31, 0
/* 801F4618 001F1578  41 82 00 20 */	beq lbl_801F4638
/* 801F461C 001F157C  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 801F4620 001F1580  C3 DF 00 50 */	lfs f30, 0x50(r31)
/* 801F4624 001F1584  C3 BF 00 60 */	lfs f29, 0x60(r31)
/* 801F4628 001F1588  48 00 00 10 */	b lbl_801F4638
lbl_801F462C:
/* 801F462C 001F158C  C3 FE 00 40 */	lfs f31, 0x40(r30)
/* 801F4630 001F1590  C3 DE 00 50 */	lfs f30, 0x50(r30)
/* 801F4634 001F1594  C3 BE 00 60 */	lfs f29, 0x60(r30)
lbl_801F4638:
/* 801F4638 001F1598  7F DF F3 78 */	mr r31, r30
/* 801F463C 001F159C  C3 82 AF 20 */	lfs f28, lbl_805ACC40@sda21(r2)
lbl_801F4640:
/* 801F4640 001F15A0  80 7C 03 90 */	lwz r3, 0x390(r28)
/* 801F4644 001F15A4  80 1C 03 94 */	lwz r0, 0x394(r28)
/* 801F4648 001F15A8  7C 03 00 00 */	cmpw r3, r0
/* 801F464C 001F15AC  40 80 01 A8 */	bge lbl_801F47F4
/* 801F4650 001F15B0  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 801F4654 001F15B4  38 00 00 00 */	li r0, 0
/* 801F4658 001F15B8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801F465C 001F15BC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 801F4660 001F15C0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801F4664 001F15C4  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 801F4668 001F15C8  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 801F466C 001F15CC  C0 1C 03 68 */	lfs f0, 0x368(r28)
/* 801F4670 001F15D0  FC 1C 00 00 */	fcmpu cr0, f28, f0
/* 801F4674 001F15D4  40 82 00 1C */	bne lbl_801F4690
/* 801F4678 001F15D8  C0 1C 03 6C */	lfs f0, 0x36c(r28)
/* 801F467C 001F15DC  FC 1C 00 00 */	fcmpu cr0, f28, f0
/* 801F4680 001F15E0  40 82 00 10 */	bne lbl_801F4690
/* 801F4684 001F15E4  C0 1C 03 70 */	lfs f0, 0x370(r28)
/* 801F4688 001F15E8  FC 1C 00 00 */	fcmpu cr0, f28, f0
/* 801F468C 001F15EC  41 82 00 08 */	beq lbl_801F4694
lbl_801F4690:
/* 801F4690 001F15F0  38 00 00 01 */	li r0, 1
lbl_801F4694:
/* 801F4694 001F15F4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801F4698 001F15F8  41 82 00 64 */	beq lbl_801F46FC
/* 801F469C 001F15FC  7F 84 E3 78 */	mr r4, r28
/* 801F46A0 001F1600  7F A5 EB 78 */	mr r5, r29
/* 801F46A4 001F1604  38 61 00 64 */	addi r3, r1, 0x64
/* 801F46A8 001F1608  48 00 05 99 */	bl FindPatternDir__10CPatternedFR13CStateManager
/* 801F46AC 001F160C  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 801F46B0 001F1610  7F 84 E3 78 */	mr r4, r28
/* 801F46B4 001F1614  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 801F46B8 001F1618  38 61 00 48 */	addi r3, r1, 0x48
/* 801F46BC 001F161C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801F46C0 001F1620  38 A1 00 70 */	addi r5, r1, 0x70
/* 801F46C4 001F1624  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 801F46C8 001F1628  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801F46CC 001F162C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801F46D0 001F1630  48 00 03 4D */	bl FindPatternRotation__10CPatternedFRC9CVector3f
/* 801F46D4 001F1634  38 61 00 58 */	addi r3, r1, 0x58
/* 801F46D8 001F1638  38 81 00 48 */	addi r4, r1, 0x48
/* 801F46DC 001F163C  38 A1 00 7C */	addi r5, r1, 0x7c
/* 801F46E0 001F1640  48 11 CB 85 */	bl Transform__11CQuaternionCFRC9CVector3f
/* 801F46E4 001F1644  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 801F46E8 001F1648  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801F46EC 001F164C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801F46F0 001F1650  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 801F46F4 001F1654  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 801F46F8 001F1658  D0 01 00 84 */	stfs f0, 0x84(r1)
lbl_801F46FC:
/* 801F46FC 001F165C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 801F4700 001F1660  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801F4704 001F1664  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801F4708 001F1668  EF 22 F8 28 */	fsubs f25, f2, f31
/* 801F470C 001F166C  80 1C 03 90 */	lwz r0, 0x390(r28)
/* 801F4710 001F1670  EF 41 F0 28 */	fsubs f26, f1, f30
/* 801F4714 001F1674  80 BC 03 94 */	lwz r5, 0x394(r28)
/* 801F4718 001F1678  EF 60 E8 28 */	fsubs f27, f0, f29
/* 801F471C 001F167C  83 1F 00 EC */	lwz r24, 0xec(r31)
/* 801F4720 001F1680  7C 00 28 00 */	cmpw r0, r5
/* 801F4724 001F1684  C3 1F 00 E8 */	lfs f24, 0xe8(r31)
/* 801F4728 001F1688  C2 E1 00 7C */	lfs f23, 0x7c(r1)
/* 801F472C 001F168C  C2 C1 00 80 */	lfs f22, 0x80(r1)
/* 801F4730 001F1690  C2 A1 00 84 */	lfs f21, 0x84(r1)
/* 801F4734 001F1694  8B 3F 00 F7 */	lbz r25, 0xf7(r31)
/* 801F4738 001F1698  8B 5F 00 F8 */	lbz r26, 0xf8(r31)
/* 801F473C 001F169C  A3 7F 00 FA */	lhz r27, 0xfa(r31)
/* 801F4740 001F16A0  41 80 00 1C */	blt lbl_801F475C
/* 801F4744 001F16A4  2C 05 00 00 */	cmpwi r5, 0
/* 801F4748 001F16A8  38 7C 03 8C */	addi r3, r28, 0x38c
/* 801F474C 001F16AC  38 80 00 04 */	li r4, 4
/* 801F4750 001F16B0  41 82 00 08 */	beq lbl_801F4758
/* 801F4754 001F16B4  54 A4 08 3C */	slwi r4, r5, 1
lbl_801F4758:
/* 801F4758 001F16B8  48 00 29 51 */	bl "reserve__Q24rstl63vector<Q210CPatterned12CPatternNode,Q24rstl17rmemory_allocator>Fi"
lbl_801F475C:
/* 801F475C 001F16BC  80 1C 03 90 */	lwz r0, 0x390(r28)
/* 801F4760 001F16C0  80 7C 03 98 */	lwz r3, 0x398(r28)
/* 801F4764 001F16C4  1C 00 00 24 */	mulli r0, r0, 0x24
/* 801F4768 001F16C8  7C 63 02 15 */	add. r3, r3, r0
/* 801F476C 001F16CC  41 82 00 30 */	beq lbl_801F479C
/* 801F4770 001F16D0  D3 23 00 00 */	stfs f25, 0(r3)
/* 801F4774 001F16D4  D3 43 00 04 */	stfs f26, 4(r3)
/* 801F4778 001F16D8  D3 63 00 08 */	stfs f27, 8(r3)
/* 801F477C 001F16DC  D2 E3 00 0C */	stfs f23, 0xc(r3)
/* 801F4780 001F16E0  D2 C3 00 10 */	stfs f22, 0x10(r3)
/* 801F4784 001F16E4  D2 A3 00 14 */	stfs f21, 0x14(r3)
/* 801F4788 001F16E8  D3 03 00 18 */	stfs f24, 0x18(r3)
/* 801F478C 001F16EC  9B 23 00 1C */	stb r25, 0x1c(r3)
/* 801F4790 001F16F0  9B 43 00 1D */	stb r26, 0x1d(r3)
/* 801F4794 001F16F4  B3 63 00 1E */	sth r27, 0x1e(r3)
/* 801F4798 001F16F8  93 03 00 20 */	stw r24, 0x20(r3)
lbl_801F479C:
/* 801F479C 001F16FC  80 DC 03 90 */	lwz r6, 0x390(r28)
/* 801F47A0 001F1700  7F E4 FB 78 */	mr r4, r31
/* 801F47A4 001F1704  7F A5 EB 78 */	mr r5, r29
/* 801F47A8 001F1708  38 61 00 08 */	addi r3, r1, 8
/* 801F47AC 001F170C  38 06 00 01 */	addi r0, r6, 1
/* 801F47B0 001F1710  90 1C 03 90 */	stw r0, 0x390(r28)
/* 801F47B4 001F1714  4B E8 29 81 */	bl NextWaypoint__15CScriptWaypointCFRC13CStateManager
/* 801F47B8 001F1718  A0 01 00 08 */	lhz r0, 8(r1)
/* 801F47BC 001F171C  7F A3 EB 78 */	mr r3, r29
/* 801F47C0 001F1720  38 81 00 0C */	addi r4, r1, 0xc
/* 801F47C4 001F1724  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801F47C8 001F1728  4B E5 7D AD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F47CC 001F172C  7C 64 1B 78 */	mr r4, r3
/* 801F47D0 001F1730  38 61 00 30 */	addi r3, r1, 0x30
/* 801F47D4 001F1734  4B EB 1D 79 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F47D8 001F1738  83 E3 00 04 */	lwz r31, 4(r3)
/* 801F47DC 001F173C  28 1F 00 00 */	cmplwi r31, 0
/* 801F47E0 001F1740  41 82 00 14 */	beq lbl_801F47F4
/* 801F47E4 001F1744  A0 7F 00 08 */	lhz r3, 8(r31)
/* 801F47E8 001F1748  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801F47EC 001F174C  7C 03 00 40 */	cmplw r3, r0
/* 801F47F0 001F1750  40 82 FE 50 */	bne lbl_801F4640
lbl_801F47F4:
/* 801F47F4 001F1754  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 801F47F8 001F1758  38 60 00 00 */	li r3, 0
/* 801F47FC 001F175C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801F4800 001F1760  98 1C 04 00 */	stb r0, 0x400(r28)
/* 801F4804 001F1764  90 7C 03 9C */	stw r3, 0x39c(r28)
/* 801F4808 001F1768  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 801F480C 001F176C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F4810 001F1770  98 1C 03 28 */	stb r0, 0x328(r28)
/* 801F4814 001F1774  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 801F4818 001F1778  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 801F481C 001F177C  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801F4820 001F1780  D0 1C 02 EC */	stfs f0, 0x2ec(r28)
/* 801F4824 001F1784  D0 3C 02 F0 */	stfs f1, 0x2f0(r28)
/* 801F4828 001F1788  D0 5C 02 F4 */	stfs f2, 0x2f4(r28)
/* 801F482C 001F178C  80 1C 03 90 */	lwz r0, 0x390(r28)
/* 801F4830 001F1790  2C 00 00 00 */	cmpwi r0, 0
/* 801F4834 001F1794  41 82 00 34 */	beq lbl_801F4868
/* 801F4838 001F1798  80 7C 03 98 */	lwz r3, 0x398(r28)
/* 801F483C 001F179C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 801F4840 001F17A0  D0 1C 03 B0 */	stfs f0, 0x3b0(r28)
/* 801F4844 001F17A4  80 7C 03 98 */	lwz r3, 0x398(r28)
/* 801F4848 001F17A8  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 801F484C 001F17AC  90 1C 03 80 */	stw r0, 0x380(r28)
/* 801F4850 001F17B0  80 7C 03 98 */	lwz r3, 0x398(r28)
/* 801F4854 001F17B4  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 801F4858 001F17B8  90 1C 03 0C */	stw r0, 0x30c(r28)
/* 801F485C 001F17BC  80 7C 03 98 */	lwz r3, 0x398(r28)
/* 801F4860 001F17C0  A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 801F4864 001F17C4  90 1C 03 84 */	stw r0, 0x384(r28)
lbl_801F4868:
/* 801F4868 001F17C8  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 801F486C 001F17CC  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 801F4870 001F17D0  E3 C1 01 48 */	psq_l f30, 328(r1), 0, qr0
/* 801F4874 001F17D4  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 801F4878 001F17D8  E3 A1 01 38 */	psq_l f29, 312(r1), 0, qr0
/* 801F487C 001F17DC  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 801F4880 001F17E0  E3 81 01 28 */	psq_l f28, 296(r1), 0, qr0
/* 801F4884 001F17E4  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 801F4888 001F17E8  E3 61 01 18 */	psq_l f27, 280(r1), 0, qr0
/* 801F488C 001F17EC  CB 61 01 10 */	lfd f27, 0x110(r1)
/* 801F4890 001F17F0  E3 41 01 08 */	psq_l f26, 264(r1), 0, qr0
/* 801F4894 001F17F4  CB 41 01 00 */	lfd f26, 0x100(r1)
/* 801F4898 001F17F8  E3 21 00 F8 */	psq_l f25, 248(r1), 0, qr0
/* 801F489C 001F17FC  CB 21 00 F0 */	lfd f25, 0xf0(r1)
/* 801F48A0 001F1800  E3 01 00 E8 */	psq_l f24, 232(r1), 0, qr0
/* 801F48A4 001F1804  CB 01 00 E0 */	lfd f24, 0xe0(r1)
/* 801F48A8 001F1808  E2 E1 00 D8 */	psq_l f23, 216(r1), 0, qr0
/* 801F48AC 001F180C  CA E1 00 D0 */	lfd f23, 0xd0(r1)
/* 801F48B0 001F1810  E2 C1 00 C8 */	psq_l f22, 200(r1), 0, qr0
/* 801F48B4 001F1814  CA C1 00 C0 */	lfd f22, 0xc0(r1)
/* 801F48B8 001F1818  E2 A1 00 B8 */	psq_l f21, 184(r1), 0, qr0
/* 801F48BC 001F181C  CA A1 00 B0 */	lfd f21, 0xb0(r1)
/* 801F48C0 001F1820  BB 01 00 90 */	lmw r24, 0x90(r1)
/* 801F48C4 001F1824  80 01 01 64 */	lwz r0, 0x164(r1)
/* 801F48C8 001F1828  7C 08 03 A6 */	mtlr r0
/* 801F48CC 001F182C  38 21 01 60 */	addi r1, r1, 0x160
/* 801F48D0 001F1830  4E 80 00 20 */	blr

.global GetDesiredAttackState__10CPatternedCFR13CStateManager
GetDesiredAttackState__10CPatternedCFR13CStateManager:
/* 801F48D4 001F1834  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F48D8 001F1838  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801F48DC 001F183C  C1 23 00 50 */	lfs f9, 0x50(r3)
/* 801F48E0 001F1840  C0 64 00 50 */	lfs f3, 0x50(r4)
/* 801F48E4 001F1844  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801F48E8 001F1848  C0 A3 00 40 */	lfs f5, 0x40(r3)
/* 801F48EC 001F184C  EC E9 18 28 */	fsubs f7, f9, f3
/* 801F48F0 001F1850  C1 04 00 60 */	lfs f8, 0x60(r4)
/* 801F48F4 001F1854  EC 85 00 28 */	fsubs f4, f5, f0
/* 801F48F8 001F1858  C1 43 00 60 */	lfs f10, 0x60(r3)
/* 801F48FC 001F185C  EC 27 01 F2 */	fmuls f1, f7, f7
/* 801F4900 001F1860  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801F4904 001F1864  EC CA 40 28 */	fsubs f6, f10, f8
/* 801F4908 001F1868  C1 63 02 FC */	lfs f11, 0x2fc(r3)
/* 801F490C 001F186C  EC 44 01 32 */	fmuls f2, f4, f4
/* 801F4910 001F1870  D0 01 00 08 */	stfs f0, 8(r1)
/* 801F4914 001F1874  EC 66 01 B2 */	fmuls f3, f6, f6
/* 801F4918 001F1878  EC 0B 02 F2 */	fmuls f0, f11, f11
/* 801F491C 001F187C  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 801F4920 001F1880  EC 22 08 2A */	fadds f1, f2, f1
/* 801F4924 001F1884  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 801F4928 001F1888  EC 23 08 2A */	fadds f1, f3, f1
/* 801F492C 001F188C  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 801F4930 001F1890  D1 41 00 1C */	stfs f10, 0x1c(r1)
/* 801F4934 001F1894  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F4938 001F1898  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 801F493C 001F189C  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 801F4940 001F18A0  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 801F4944 001F18A4  40 80 00 0C */	bge lbl_801F4950
/* 801F4948 001F18A8  38 60 00 0C */	li r3, 0xc
/* 801F494C 001F18AC  48 00 00 20 */	b lbl_801F496C
lbl_801F4950:
/* 801F4950 001F18B0  C0 03 03 00 */	lfs f0, 0x300(r3)
/* 801F4954 001F18B4  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F4958 001F18B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F495C 001F18BC  40 81 00 0C */	ble lbl_801F4968
/* 801F4960 001F18C0  38 60 00 0B */	li r3, 0xb
/* 801F4964 001F18C4  48 00 00 08 */	b lbl_801F496C
lbl_801F4968:
/* 801F4968 001F18C8  38 60 00 0A */	li r3, 0xa
lbl_801F496C:
/* 801F496C 001F18CC  38 21 00 30 */	addi r1, r1, 0x30
/* 801F4970 001F18D0  4E 80 00 20 */	blr

.global GetDestWaypoints__10CPatternedCFR13CStateManager
GetDestWaypoints__10CPatternedCFR13CStateManager:
/* 801F4974 001F18D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F4978 001F18D8  7C 08 02 A6 */	mflr r0
/* 801F497C 001F18DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F4980 001F18E0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801F4984 001F18E4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801F4988 001F18E8  7C BE 2B 78 */	mr r30, r5
/* 801F498C 001F18EC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801F4990 001F18F0  7C 7D 1B 78 */	mr r29, r3
/* 801F4994 001F18F4  7F C3 F3 78 */	mr r3, r30
/* 801F4998 001F18F8  A0 04 02 DC */	lhz r0, 0x2dc(r4)
/* 801F499C 001F18FC  38 81 00 10 */	addi r4, r1, 0x10
/* 801F49A0 001F1900  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F49A4 001F1904  4B E5 7B D1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F49A8 001F1908  7C 64 1B 78 */	mr r4, r3
/* 801F49AC 001F190C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801F49B0 001F1910  4B EB 1B 9D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F49B4 001F1914  83 E3 00 04 */	lwz r31, 4(r3)
/* 801F49B8 001F1918  38 00 00 00 */	li r0, 0
/* 801F49BC 001F191C  28 1F 00 00 */	cmplwi r31, 0
/* 801F49C0 001F1920  41 82 00 38 */	beq lbl_801F49F8
/* 801F49C4 001F1924  7F E4 FB 78 */	mr r4, r31
/* 801F49C8 001F1928  7F C5 F3 78 */	mr r5, r30
/* 801F49CC 001F192C  38 61 00 08 */	addi r3, r1, 8
/* 801F49D0 001F1930  4B E8 26 DD */	bl FollowWaypoint__15CScriptWaypointCFR13CStateManager
/* 801F49D4 001F1934  A0 01 00 08 */	lhz r0, 8(r1)
/* 801F49D8 001F1938  7F C3 F3 78 */	mr r3, r30
/* 801F49DC 001F193C  38 81 00 0C */	addi r4, r1, 0xc
/* 801F49E0 001F1940  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801F49E4 001F1944  4B E5 7B 91 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F49E8 001F1948  7C 64 1B 78 */	mr r4, r3
/* 801F49EC 001F194C  38 61 00 14 */	addi r3, r1, 0x14
/* 801F49F0 001F1950  4B EB 1B 5D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F49F4 001F1954  80 03 00 04 */	lwz r0, 4(r3)
lbl_801F49F8:
/* 801F49F8 001F1958  93 FD 00 00 */	stw r31, 0(r29)
/* 801F49FC 001F195C  90 1D 00 04 */	stw r0, 4(r29)
/* 801F4A00 001F1960  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801F4A04 001F1964  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801F4A08 001F1968  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801F4A0C 001F196C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801F4A10 001F1970  7C 08 03 A6 */	mtlr r0
/* 801F4A14 001F1974  38 21 00 40 */	addi r1, r1, 0x40
/* 801F4A18 001F1978  4E 80 00 20 */	blr

.global FindPatternRotation__10CPatternedFRC9CVector3f
FindPatternRotation__10CPatternedFRC9CVector3f:
/* 801F4A1C 001F197C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801F4A20 001F1980  7C 08 02 A6 */	mflr r0
/* 801F4A24 001F1984  90 01 01 04 */	stw r0, 0x104(r1)
/* 801F4A28 001F1988  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 801F4A2C 001F198C  7C BF 2B 78 */	mr r31, r5
/* 801F4A30 001F1990  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 801F4A34 001F1994  7C 9E 23 78 */	mr r30, r4
/* 801F4A38 001F1998  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 801F4A3C 001F199C  7C 7D 1B 78 */	mr r29, r3
/* 801F4A40 001F19A0  38 61 00 CC */	addi r3, r1, 0xcc
/* 801F4A44 001F19A4  C0 05 00 00 */	lfs f0, 0(r5)
/* 801F4A48 001F19A8  C0 45 00 04 */	lfs f2, 4(r5)
/* 801F4A4C 001F19AC  C0 25 00 08 */	lfs f1, 8(r5)
/* 801F4A50 001F19B0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 801F4A54 001F19B4  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F4A58 001F19B8  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 801F4A5C 001F19BC  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 801F4A60 001F19C0  C0 24 03 68 */	lfs f1, 0x368(r4)
/* 801F4A64 001F19C4  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 801F4A68 001F19C8  C0 24 03 6C */	lfs f1, 0x36c(r4)
/* 801F4A6C 001F19CC  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 801F4A70 001F19D0  C0 24 03 70 */	lfs f1, 0x370(r4)
/* 801F4A74 001F19D4  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 801F4A78 001F19D8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 801F4A7C 001F19DC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 801F4A80 001F19E0  48 11 FE 79 */	bl Normalize__9CVector3fFv
/* 801F4A84 001F19E4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801F4A88 001F19E8  48 11 FE 71 */	bl Normalize__9CVector3fFv
/* 801F4A8C 001F19EC  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 801F4A90 001F19F0  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 801F4A94 001F19F4  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 801F4A98 001F19F8  EC A2 00 28 */	fsubs f5, f2, f0
/* 801F4A9C 001F19FC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 801F4AA0 001F1A00  C0 41 00 D4 */	lfs f2, 0xd4(r1)
/* 801F4AA4 001F1A04  EC 61 00 28 */	fsubs f3, f1, f0
/* 801F4AA8 001F1A08  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 801F4AAC 001F1A0C  EC 25 01 72 */	fmuls f1, f5, f5
/* 801F4AB0 001F1A10  EC 82 00 28 */	fsubs f4, f2, f0
/* 801F4AB4 001F1A14  C0 02 AF 24 */	lfs f0, lbl_805ACC44@sda21(r2)
/* 801F4AB8 001F1A18  EC 43 00 F2 */	fmuls f2, f3, f3
/* 801F4ABC 001F1A1C  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 801F4AC0 001F1A20  EC 64 01 32 */	fmuls f3, f4, f4
/* 801F4AC4 001F1A24  EC 22 08 2A */	fadds f1, f2, f1
/* 801F4AC8 001F1A28  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 801F4ACC 001F1A2C  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 801F4AD0 001F1A30  EC 23 08 2A */	fadds f1, f3, f1
/* 801F4AD4 001F1A34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F4AD8 001F1A38  40 81 00 20 */	ble lbl_801F4AF8
/* 801F4ADC 001F1A3C  C0 02 AF 28 */	lfs f0, lbl_805ACC48@sda21(r2)
/* 801F4AE0 001F1A40  38 61 00 94 */	addi r3, r1, 0x94
/* 801F4AE4 001F1A44  38 81 00 08 */	addi r4, r1, 8
/* 801F4AE8 001F1A48  D0 01 00 08 */	stfs f0, 8(r1)
/* 801F4AEC 001F1A4C  48 11 C6 0D */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 801F4AF0 001F1A50  38 61 00 94 */	addi r3, r1, 0x94
/* 801F4AF4 001F1A54  48 00 00 18 */	b lbl_801F4B0C
lbl_801F4AF8:
/* 801F4AF8 001F1A58  38 61 00 84 */	addi r3, r1, 0x84
/* 801F4AFC 001F1A5C  38 81 00 CC */	addi r4, r1, 0xcc
/* 801F4B00 001F1A60  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 801F4B04 001F1A64  48 11 CF B5 */	bl ShortestRotationArc__11CQuaternionFRC9CVector3fRC9CVector3f
/* 801F4B08 001F1A68  38 61 00 84 */	addi r3, r1, 0x84
lbl_801F4B0C:
/* 801F4B0C 001F1A6C  C0 63 00 00 */	lfs f3, 0(r3)
/* 801F4B10 001F1A70  D0 61 00 BC */	stfs f3, 0xbc(r1)
/* 801F4B14 001F1A74  C0 43 00 04 */	lfs f2, 4(r3)
/* 801F4B18 001F1A78  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 801F4B1C 001F1A7C  C0 23 00 08 */	lfs f1, 8(r3)
/* 801F4B20 001F1A80  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 801F4B24 001F1A84  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801F4B28 001F1A88  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 801F4B2C 001F1A8C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F4B30 001F1A90  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F4B34 001F1A94  41 82 00 D0 */	beq lbl_801F4C04
/* 801F4B38 001F1A98  FC A0 00 50 */	fneg f5, f0
/* 801F4B3C 001F1A9C  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F4B40 001F1AA0  FC 80 08 50 */	fneg f4, f1
/* 801F4B44 001F1AA4  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 801F4B48 001F1AA8  FC 20 10 50 */	fneg f1, f2
/* 801F4B4C 001F1AAC  38 61 00 64 */	addi r3, r1, 0x64
/* 801F4B50 001F1AB0  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 801F4B54 001F1AB4  38 81 00 BC */	addi r4, r1, 0xbc
/* 801F4B58 001F1AB8  38 A1 00 54 */	addi r5, r1, 0x54
/* 801F4B5C 001F1ABC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801F4B60 001F1AC0  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 801F4B64 001F1AC4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801F4B68 001F1AC8  C0 1E 03 68 */	lfs f0, 0x368(r30)
/* 801F4B6C 001F1ACC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801F4B70 001F1AD0  C0 1E 03 6C */	lfs f0, 0x36c(r30)
/* 801F4B74 001F1AD4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801F4B78 001F1AD8  C0 1E 03 70 */	lfs f0, 0x370(r30)
/* 801F4B7C 001F1ADC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801F4B80 001F1AE0  48 11 C6 21 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 801F4B84 001F1AE4  38 61 00 74 */	addi r3, r1, 0x74
/* 801F4B88 001F1AE8  38 81 00 64 */	addi r4, r1, 0x64
/* 801F4B8C 001F1AEC  38 A1 00 44 */	addi r5, r1, 0x44
/* 801F4B90 001F1AF0  48 11 C6 11 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 801F4B94 001F1AF4  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 801F4B98 001F1AF8  7F E4 FB 78 */	mr r4, r31
/* 801F4B9C 001F1AFC  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 801F4BA0 001F1B00  38 61 00 0C */	addi r3, r1, 0xc
/* 801F4BA4 001F1B04  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 801F4BA8 001F1B08  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 801F4BAC 001F1B0C  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801F4BB0 001F1B10  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801F4BB4 001F1B14  48 11 FC 9D */	bl AsNormalized__9CVector3fCFv
/* 801F4BB8 001F1B18  38 61 00 18 */	addi r3, r1, 0x18
/* 801F4BBC 001F1B1C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 801F4BC0 001F1B20  48 11 FC 91 */	bl AsNormalized__9CVector3fCFv
/* 801F4BC4 001F1B24  38 61 00 24 */	addi r3, r1, 0x24
/* 801F4BC8 001F1B28  38 81 00 18 */	addi r4, r1, 0x18
/* 801F4BCC 001F1B2C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801F4BD0 001F1B30  48 11 CE E9 */	bl ShortestRotationArc__11CQuaternionFRC9CVector3fRC9CVector3f
/* 801F4BD4 001F1B34  38 61 00 34 */	addi r3, r1, 0x34
/* 801F4BD8 001F1B38  38 81 00 24 */	addi r4, r1, 0x24
/* 801F4BDC 001F1B3C  38 A1 00 BC */	addi r5, r1, 0xbc
/* 801F4BE0 001F1B40  48 11 C5 C1 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 801F4BE4 001F1B44  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801F4BE8 001F1B48  80 81 00 38 */	lwz r4, 0x38(r1)
/* 801F4BEC 001F1B4C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 801F4BF0 001F1B50  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801F4BF4 001F1B54  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 801F4BF8 001F1B58  90 81 00 C0 */	stw r4, 0xc0(r1)
/* 801F4BFC 001F1B5C  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 801F4C00 001F1B60  90 01 00 C8 */	stw r0, 0xc8(r1)
lbl_801F4C04:
/* 801F4C04 001F1B64  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 801F4C08 001F1B68  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801F4C0C 001F1B6C  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 801F4C10 001F1B70  D0 1D 00 04 */	stfs f0, 4(r29)
/* 801F4C14 001F1B74  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 801F4C18 001F1B78  D0 1D 00 08 */	stfs f0, 8(r29)
/* 801F4C1C 001F1B7C  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 801F4C20 001F1B80  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 801F4C24 001F1B84  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 801F4C28 001F1B88  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 801F4C2C 001F1B8C  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 801F4C30 001F1B90  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801F4C34 001F1B94  7C 08 03 A6 */	mtlr r0
/* 801F4C38 001F1B98  38 21 01 00 */	addi r1, r1, 0x100
/* 801F4C3C 001F1B9C  4E 80 00 20 */	blr

.global FindPatternDir__10CPatternedFR13CStateManager
FindPatternDir__10CPatternedFR13CStateManager:
/* 801F4C40 001F1BA0  80 04 03 78 */	lwz r0, 0x378(r4)
/* 801F4C44 001F1BA4  3C C0 80 5A */	lis r6, sZeroVector__9CVector3f@ha
/* 801F4C48 001F1BA8  C4 86 66 A0 */	lfsu f4, sZeroVector__9CVector3f@l(r6)
/* 801F4C4C 001F1BAC  2C 00 00 02 */	cmpwi r0, 2
/* 801F4C50 001F1BB0  C0 46 00 04 */	lfs f2, 4(r6)
/* 801F4C54 001F1BB4  C0 06 00 08 */	lfs f0, 8(r6)
/* 801F4C58 001F1BB8  41 82 00 78 */	beq lbl_801F4CD0
/* 801F4C5C 001F1BBC  40 80 00 14 */	bge lbl_801F4C70
/* 801F4C60 001F1BC0  2C 00 00 00 */	cmpwi r0, 0
/* 801F4C64 001F1BC4  41 82 00 40 */	beq lbl_801F4CA4
/* 801F4C68 001F1BC8  40 80 00 14 */	bge lbl_801F4C7C
/* 801F4C6C 001F1BCC  48 00 00 90 */	b lbl_801F4CFC
lbl_801F4C70:
/* 801F4C70 001F1BD0  2C 00 00 04 */	cmpwi r0, 4
/* 801F4C74 001F1BD4  40 80 00 88 */	bge lbl_801F4CFC
/* 801F4C78 001F1BD8  48 00 00 78 */	b lbl_801F4CF0
lbl_801F4C7C:
/* 801F4C7C 001F1BDC  C0 24 03 5C */	lfs f1, 0x35c(r4)
/* 801F4C80 001F1BE0  C0 04 03 50 */	lfs f0, 0x350(r4)
/* 801F4C84 001F1BE4  C0 64 03 60 */	lfs f3, 0x360(r4)
/* 801F4C88 001F1BE8  C0 44 03 54 */	lfs f2, 0x354(r4)
/* 801F4C8C 001F1BEC  EC 81 00 28 */	fsubs f4, f1, f0
/* 801F4C90 001F1BF0  C0 24 03 64 */	lfs f1, 0x364(r4)
/* 801F4C94 001F1BF4  C0 04 03 58 */	lfs f0, 0x358(r4)
/* 801F4C98 001F1BF8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801F4C9C 001F1BFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F4CA0 001F1C00  48 00 00 5C */	b lbl_801F4CFC
lbl_801F4CA4:
/* 801F4CA4 001F1C04  80 A5 08 4C */	lwz r5, 0x84c(r5)
/* 801F4CA8 001F1C08  C0 04 03 50 */	lfs f0, 0x350(r4)
/* 801F4CAC 001F1C0C  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 801F4CB0 001F1C10  C0 65 00 50 */	lfs f3, 0x50(r5)
/* 801F4CB4 001F1C14  C0 44 03 54 */	lfs f2, 0x354(r4)
/* 801F4CB8 001F1C18  EC 81 00 28 */	fsubs f4, f1, f0
/* 801F4CBC 001F1C1C  C0 25 00 60 */	lfs f1, 0x60(r5)
/* 801F4CC0 001F1C20  C0 04 03 58 */	lfs f0, 0x358(r4)
/* 801F4CC4 001F1C24  EC 43 10 28 */	fsubs f2, f3, f2
/* 801F4CC8 001F1C28  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F4CCC 001F1C2C  48 00 00 30 */	b lbl_801F4CFC
lbl_801F4CD0:
/* 801F4CD0 001F1C30  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 801F4CD4 001F1C34  C0 44 00 38 */	lfs f2, 0x38(r4)
/* 801F4CD8 001F1C38  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 801F4CDC 001F1C3C  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 801F4CE0 001F1C40  FC 80 10 50 */	fneg f4, f2
/* 801F4CE4 001F1C44  FC 40 08 50 */	fneg f2, f1
/* 801F4CE8 001F1C48  FC 00 00 50 */	fneg f0, f0
/* 801F4CEC 001F1C4C  48 00 00 10 */	b lbl_801F4CFC
lbl_801F4CF0:
/* 801F4CF0 001F1C50  C0 84 00 38 */	lfs f4, 0x38(r4)
/* 801F4CF4 001F1C54  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 801F4CF8 001F1C58  C0 04 00 58 */	lfs f0, 0x58(r4)
lbl_801F4CFC:
/* 801F4CFC 001F1C5C  D0 83 00 00 */	stfs f4, 0(r3)
/* 801F4D00 001F1C60  D0 43 00 04 */	stfs f2, 4(r3)
/* 801F4D04 001F1C64  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F4D08 001F1C68  4E 80 00 20 */	blr

.global GetStepDirection__10CPatternedFRC9CVector3f
GetStepDirection__10CPatternedFRC9CVector3f:
/* 801F4D0C 001F1C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F4D10 001F1C70  7C 08 02 A6 */	mflr r0
/* 801F4D14 001F1C74  7C 66 1B 78 */	mr r6, r3
/* 801F4D18 001F1C78  7C 85 23 78 */	mr r5, r4
/* 801F4D1C 001F1C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F4D20 001F1C80  38 61 00 08 */	addi r3, r1, 8
/* 801F4D24 001F1C84  38 86 00 34 */	addi r4, r6, 0x34
/* 801F4D28 001F1C88  48 11 DC FD */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801F4D2C 001F1C8C  C0 41 00 08 */	lfs f2, 8(r1)
/* 801F4D30 001F1C90  3C 60 80 5A */	lis r3, sForwardVector__9CVector3f@ha
/* 801F4D34 001F1C94  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801F4D38 001F1C98  38 83 67 24 */	addi r4, r3, sForwardVector__9CVector3f@l
/* 801F4D3C 001F1C9C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801F4D40 001F1CA0  38 61 00 14 */	addi r3, r1, 0x14
/* 801F4D44 001F1CA4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801F4D48 001F1CA8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801F4D4C 001F1CAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801F4D50 001F1CB0  48 11 F8 E1 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 801F4D54 001F1CB4  C0 02 AF 2C */	lfs f0, lbl_805ACC4C@sda21(r2)
/* 801F4D58 001F1CB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F4D5C 001F1CBC  40 80 00 0C */	bge lbl_801F4D68
/* 801F4D60 001F1CC0  38 60 00 00 */	li r3, 0
/* 801F4D64 001F1CC4  48 00 00 5C */	b lbl_801F4DC0
lbl_801F4D68:
/* 801F4D68 001F1CC8  C0 02 AF 30 */	lfs f0, lbl_805ACC50@sda21(r2)
/* 801F4D6C 001F1CCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F4D70 001F1CD0  40 81 00 0C */	ble lbl_801F4D7C
/* 801F4D74 001F1CD4  38 60 00 01 */	li r3, 1
/* 801F4D78 001F1CD8  48 00 00 48 */	b lbl_801F4DC0
lbl_801F4D7C:
/* 801F4D7C 001F1CDC  3C 60 80 5A */	lis r3, sRightVector__9CVector3f@ha
/* 801F4D80 001F1CE0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801F4D84 001F1CE4  38 63 67 18 */	addi r3, r3, sRightVector__9CVector3f@l
/* 801F4D88 001F1CE8  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 801F4D8C 001F1CEC  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F4D90 001F1CF0  C0 43 00 00 */	lfs f2, 0(r3)
/* 801F4D94 001F1CF4  EC 21 00 32 */	fmuls f1, f1, f0
/* 801F4D98 001F1CF8  C0 A1 00 1C */	lfs f5, 0x1c(r1)
/* 801F4D9C 001F1CFC  C0 83 00 08 */	lfs f4, 8(r3)
/* 801F4DA0 001F1D00  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F4DA4 001F1D04  EC 23 08 BA */	fmadds f1, f3, f2, f1
/* 801F4DA8 001F1D08  EC 25 09 3A */	fmadds f1, f5, f4, f1
/* 801F4DAC 001F1D0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F4DB0 001F1D10  40 81 00 0C */	ble lbl_801F4DBC
/* 801F4DB4 001F1D14  38 60 00 03 */	li r3, 3
/* 801F4DB8 001F1D18  48 00 00 08 */	b lbl_801F4DC0
lbl_801F4DBC:
/* 801F4DBC 001F1D1C  38 60 00 02 */	li r3, 2
lbl_801F4DC0:
/* 801F4DC0 001F1D20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F4DC4 001F1D24  7C 08 03 A6 */	mtlr r0
/* 801F4DC8 001F1D28  38 21 00 20 */	addi r1, r1, 0x20
/* 801F4DCC 001F1D2C  4E 80 00 20 */	blr

.global IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f:
/* 801F4DD0 001F1D30  94 21 F7 10 */	stwu r1, -0x8f0(r1)
/* 801F4DD4 001F1D34  7C 08 02 A6 */	mflr r0
/* 801F4DD8 001F1D38  90 01 08 F4 */	stw r0, 0x8f4(r1)
/* 801F4DDC 001F1D3C  DB E1 08 E0 */	stfd f31, 0x8e0(r1)
/* 801F4DE0 001F1D40  F3 E1 08 E8 */	psq_st f31, -1816(r1), 0, qr0
/* 801F4DE4 001F1D44  BF 61 08 CC */	stmw r27, 0x8cc(r1)
/* 801F4DE8 001F1D48  38 00 00 00 */	li r0, 0
/* 801F4DEC 001F1D4C  80 ED 92 C4 */	lwz r7, lbl_805A7E84@sda21(r13)
/* 801F4DF0 001F1D50  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801F4DF4 001F1D54  7C 7B 1B 78 */	mr r27, r3
/* 801F4DF8 001F1D58  7C 9C 23 78 */	mr r28, r4
/* 801F4DFC 001F1D5C  7C BD 2B 78 */	mr r29, r5
/* 801F4E00 001F1D60  7C DE 33 78 */	mr r30, r6
/* 801F4E04 001F1D64  7C E5 3B 78 */	mr r5, r7
/* 801F4E08 001F1D68  3B E0 00 00 */	li r31, 0
/* 801F4E0C 001F1D6C  38 60 00 00 */	li r3, 0
/* 801F4E10 001F1D70  38 80 00 01 */	li r4, 1
/* 801F4E14 001F1D74  48 19 50 E1 */	bl __shl2i
/* 801F4E18 001F1D78  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801F4E1C 001F1D7C  38 A0 00 01 */	li r5, 1
/* 801F4E20 001F1D80  C0 1D 00 04 */	lfs f0, 4(r29)
/* 801F4E24 001F1D84  38 00 00 00 */	li r0, 0
/* 801F4E28 001F1D88  C0 7E 00 08 */	lfs f3, 8(r30)
/* 801F4E2C 001F1D8C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 801F4E30 001F1D90  EC 81 00 28 */	fsubs f4, f1, f0
/* 801F4E34 001F1D94  C0 3E 00 00 */	lfs f1, 0(r30)
/* 801F4E38 001F1D98  C0 1D 00 00 */	lfs f0, 0(r29)
/* 801F4E3C 001F1D9C  EC 43 10 28 */	fsubs f2, f3, f2
/* 801F4E40 001F1DA0  90 61 00 78 */	stw r3, 0x78(r1)
/* 801F4E44 001F1DA4  38 61 00 24 */	addi r3, r1, 0x24
/* 801F4E48 001F1DA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F4E4C 001F1DAC  90 A1 00 58 */	stw r5, 0x58(r1)
/* 801F4E50 001F1DB0  90 81 00 7C */	stw r4, 0x7c(r1)
/* 801F4E54 001F1DB4  90 01 00 84 */	stw r0, 0x84(r1)
/* 801F4E58 001F1DB8  90 01 00 80 */	stw r0, 0x80(r1)
/* 801F4E5C 001F1DBC  90 A1 00 88 */	stw r5, 0x88(r1)
/* 801F4E60 001F1DC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801F4E64 001F1DC4  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801F4E68 001F1DC8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801F4E6C 001F1DCC  48 11 F8 8D */	bl CanBeNormalized__9CVector3fCFv
/* 801F4E70 001F1DD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F4E74 001F1DD4  41 82 00 B0 */	beq lbl_801F4F24
/* 801F4E78 001F1DD8  38 61 00 0C */	addi r3, r1, 0xc
/* 801F4E7C 001F1DDC  38 81 00 24 */	addi r4, r1, 0x24
/* 801F4E80 001F1DE0  48 11 F9 D1 */	bl AsNormalized__9CVector3fCFv
/* 801F4E84 001F1DE4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801F4E88 001F1DE8  38 61 00 24 */	addi r3, r1, 0x24
/* 801F4E8C 001F1DEC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801F4E90 001F1DF0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801F4E94 001F1DF4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801F4E98 001F1DF8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801F4E9C 001F1DFC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801F4EA0 001F1E00  48 11 FA 19 */	bl Magnitude__9CVector3fCFv
/* 801F4EA4 001F1E04  FF E0 08 90 */	fmr f31, f1
/* 801F4EA8 001F1E08  7F 83 E3 78 */	mr r3, r28
/* 801F4EAC 001F1E0C  7F A5 EB 78 */	mr r5, r29
/* 801F4EB0 001F1E10  7F 68 DB 78 */	mr r8, r27
/* 801F4EB4 001F1E14  38 81 00 C0 */	addi r4, r1, 0xc0
/* 801F4EB8 001F1E18  38 C1 00 18 */	addi r6, r1, 0x18
/* 801F4EBC 001F1E1C  38 E1 00 78 */	addi r7, r1, 0x78
/* 801F4EC0 001F1E20  4B E5 78 19 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC9CVector3fRC9CVector3ffRC15CMaterialFilterPC6CActor"
/* 801F4EC4 001F1E24  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F4EC8 001F1E28  38 60 00 00 */	li r3, 0
/* 801F4ECC 001F1E2C  80 AD 92 C8 */	lwz r5, lbl_805A7E88@sda21(r13)
/* 801F4ED0 001F1E30  38 80 00 01 */	li r4, 1
/* 801F4ED4 001F1E34  B0 01 00 08 */	sth r0, 8(r1)
/* 801F4ED8 001F1E38  48 19 50 1D */	bl __shl2i
/* 801F4EDC 001F1E3C  39 40 00 01 */	li r10, 1
/* 801F4EE0 001F1E40  38 00 00 00 */	li r0, 0
/* 801F4EE4 001F1E44  90 81 00 64 */	stw r4, 0x64(r1)
/* 801F4EE8 001F1E48  FC 20 F8 90 */	fmr f1, f31
/* 801F4EEC 001F1E4C  7F 84 E3 78 */	mr r4, r28
/* 801F4EF0 001F1E50  7F A6 EB 78 */	mr r6, r29
/* 801F4EF4 001F1E54  90 61 00 60 */	stw r3, 0x60(r1)
/* 801F4EF8 001F1E58  38 61 00 90 */	addi r3, r1, 0x90
/* 801F4EFC 001F1E5C  38 A1 00 08 */	addi r5, r1, 8
/* 801F4F00 001F1E60  91 41 00 40 */	stw r10, 0x40(r1)
/* 801F4F04 001F1E64  38 E1 00 18 */	addi r7, r1, 0x18
/* 801F4F08 001F1E68  39 01 00 60 */	addi r8, r1, 0x60
/* 801F4F0C 001F1E6C  39 21 00 C0 */	addi r9, r1, 0xc0
/* 801F4F10 001F1E70  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801F4F14 001F1E74  90 01 00 68 */	stw r0, 0x68(r1)
/* 801F4F18 001F1E78  91 41 00 70 */	stw r10, 0x70(r1)
/* 801F4F1C 001F1E7C  4B E5 80 A9 */	bl "RayWorldIntersection__13CStateManagerCFR9TUniqueIdRC9CVector3fRC9CVector3ffRC15CMaterialFilterRCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 801F4F20 001F1E80  8B E1 00 B0 */	lbz r31, 0xb0(r1)
lbl_801F4F24:
/* 801F4F24 001F1E84  80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 801F4F28 001F1E88  38 60 00 00 */	li r3, 0
/* 801F4F2C 001F1E8C  2C 05 00 00 */	cmpwi r5, 0
/* 801F4F30 001F1E90  40 81 00 40 */	ble lbl_801F4F70
/* 801F4F34 001F1E94  2C 05 00 08 */	cmpwi r5, 8
/* 801F4F38 001F1E98  38 85 FF F8 */	addi r4, r5, -8
/* 801F4F3C 001F1E9C  40 81 00 20 */	ble lbl_801F4F5C
/* 801F4F40 001F1EA0  38 04 00 07 */	addi r0, r4, 7
/* 801F4F44 001F1EA4  54 00 E8 FE */	srwi r0, r0, 3
/* 801F4F48 001F1EA8  7C 09 03 A6 */	mtctr r0
/* 801F4F4C 001F1EAC  2C 04 00 00 */	cmpwi r4, 0
/* 801F4F50 001F1EB0  40 81 00 0C */	ble lbl_801F4F5C
lbl_801F4F54:
/* 801F4F54 001F1EB4  38 63 00 08 */	addi r3, r3, 8
/* 801F4F58 001F1EB8  42 00 FF FC */	bdnz lbl_801F4F54
lbl_801F4F5C:
/* 801F4F5C 001F1EBC  7C 03 28 50 */	subf r0, r3, r5
/* 801F4F60 001F1EC0  7C 09 03 A6 */	mtctr r0
/* 801F4F64 001F1EC4  7C 03 28 00 */	cmpw r3, r5
/* 801F4F68 001F1EC8  40 80 00 08 */	bge lbl_801F4F70
lbl_801F4F6C:
/* 801F4F6C 001F1ECC  42 00 00 00 */	bdnz lbl_801F4F6C
lbl_801F4F70:
/* 801F4F70 001F1ED0  38 00 00 00 */	li r0, 0
/* 801F4F74 001F1ED4  7F E3 FB 78 */	mr r3, r31
/* 801F4F78 001F1ED8  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801F4F7C 001F1EDC  E3 E1 08 E8 */	psq_l f31, -1816(r1), 0, qr0
/* 801F4F80 001F1EE0  CB E1 08 E0 */	lfd f31, 0x8e0(r1)
/* 801F4F84 001F1EE4  BB 61 08 CC */	lmw r27, 0x8cc(r1)
/* 801F4F88 001F1EE8  80 01 08 F4 */	lwz r0, 0x8f4(r1)
/* 801F4F8C 001F1EEC  7C 08 03 A6 */	mtlr r0
/* 801F4F90 001F1EF0  38 21 08 F0 */	addi r1, r1, 0x8f0
/* 801F4F94 001F1EF4  4E 80 00 20 */	blr

.global GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState:
/* 801F4F98 001F1EF8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801F4F9C 001F1EFC  7C 08 02 A6 */	mflr r0
/* 801F4FA0 001F1F00  90 01 00 54 */	stw r0, 0x54(r1)
/* 801F4FA4 001F1F04  38 00 00 00 */	li r0, 0
/* 801F4FA8 001F1F08  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 801F4FAC 001F1F0C  7C 9A 23 78 */	mr r26, r4
/* 801F4FB0 001F1F10  7C 79 1B 78 */	mr r25, r3
/* 801F4FB4 001F1F14  7C BB 2B 78 */	mr r27, r5
/* 801F4FB8 001F1F18  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F4FBC 001F1F1C  7C DC 33 78 */	mr r28, r6
/* 801F4FC0 001F1F20  7C FD 3B 78 */	mr r29, r7
/* 801F4FC4 001F1F24  3B C1 00 1C */	addi r30, r1, 0x1c
/* 801F4FC8 001F1F28  83 E4 00 2C */	lwz r31, 0x2c(r4)
/* 801F4FCC 001F1F2C  48 00 00 94 */	b lbl_801F5060
lbl_801F4FD0:
/* 801F4FD0 001F1F30  80 1F 00 00 */	lwz r0, 0(r31)
/* 801F4FD4 001F1F34  7C 1C 00 00 */	cmpw r28, r0
/* 801F4FD8 001F1F38  40 82 00 84 */	bne lbl_801F505C
/* 801F4FDC 001F1F3C  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F4FE0 001F1F40  7C 1D 00 00 */	cmpw r29, r0
/* 801F4FE4 001F1F44  40 82 00 78 */	bne lbl_801F505C
/* 801F4FE8 001F1F48  80 1F 00 08 */	lwz r0, 8(r31)
/* 801F4FEC 001F1F4C  7F 64 DB 78 */	mr r4, r27
/* 801F4FF0 001F1F50  38 61 00 0C */	addi r3, r1, 0xc
/* 801F4FF4 001F1F54  38 A1 00 14 */	addi r5, r1, 0x14
/* 801F4FF8 001F1F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F4FFC 001F1F5C  4B E5 2F 21 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801F5000 001F1F60  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801F5004 001F1F64  7F 63 DB 78 */	mr r3, r27
/* 801F5008 001F1F68  38 81 00 08 */	addi r4, r1, 8
/* 801F500C 001F1F6C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F5010 001F1F70  B0 01 00 08 */	sth r0, 8(r1)
/* 801F5014 001F1F74  4B E5 75 91 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F5018 001F1F78  28 03 00 00 */	cmplwi r3, 0
/* 801F501C 001F1F7C  41 82 00 40 */	beq lbl_801F505C
/* 801F5020 001F1F80  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801F5024 001F1F84  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F5028 001F1F88  41 82 00 34 */	beq lbl_801F505C
/* 801F502C 001F1F8C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801F5030 001F1F90  54 00 08 3C */	slwi r0, r0, 1
/* 801F5034 001F1F94  7C 7E 02 15 */	add. r3, r30, r0
/* 801F5038 001F1F98  41 82 00 0C */	beq lbl_801F5044
/* 801F503C 001F1F9C  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 801F5040 001F1FA0  B0 03 00 00 */	sth r0, 0(r3)
lbl_801F5044:
/* 801F5044 001F1FA4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801F5048 001F1FA8  38 63 00 01 */	addi r3, r3, 1
/* 801F504C 001F1FAC  20 03 00 08 */	subfic r0, r3, 8
/* 801F5050 001F1FB0  90 61 00 18 */	stw r3, 0x18(r1)
/* 801F5054 001F1FB4  2C 00 00 00 */	cmpwi r0, 0
/* 801F5058 001F1FB8  40 81 00 20 */	ble lbl_801F5078
lbl_801F505C:
/* 801F505C 001F1FBC  3B FF 00 0C */	addi r31, r31, 0xc
lbl_801F5060:
/* 801F5060 001F1FC0  80 1A 00 24 */	lwz r0, 0x24(r26)
/* 801F5064 001F1FC4  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 801F5068 001F1FC8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801F506C 001F1FCC  7C 03 02 14 */	add r0, r3, r0
/* 801F5070 001F1FD0  7C 1F 00 40 */	cmplw r31, r0
/* 801F5074 001F1FD4  40 82 FF 5C */	bne lbl_801F4FD0
lbl_801F5078:
/* 801F5078 001F1FD8  83 41 00 18 */	lwz r26, 0x18(r1)
/* 801F507C 001F1FDC  2C 1A 00 00 */	cmpwi r26, 0
/* 801F5080 001F1FE0  41 82 00 7C */	beq lbl_801F50FC
/* 801F5084 001F1FE4  80 7B 09 00 */	lwz r3, 0x900(r27)
/* 801F5088 001F1FE8  48 11 D4 99 */	bl Next__9CRandom16Fv
/* 801F508C 001F1FEC  7C 03 D3 D6 */	divw r0, r3, r26
/* 801F5090 001F1FF0  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801F5094 001F1FF4  38 80 00 00 */	li r4, 0
/* 801F5098 001F1FF8  2C 05 00 00 */	cmpwi r5, 0
/* 801F509C 001F1FFC  7C 00 D1 D6 */	mullw r0, r0, r26
/* 801F50A0 001F2000  7C 00 18 50 */	subf r0, r0, r3
/* 801F50A4 001F2004  54 00 08 3C */	slwi r0, r0, 1
/* 801F50A8 001F2008  7C 1E 02 2E */	lhzx r0, r30, r0
/* 801F50AC 001F200C  B0 19 00 00 */	sth r0, 0(r25)
/* 801F50B0 001F2010  40 81 00 40 */	ble lbl_801F50F0
/* 801F50B4 001F2014  2C 05 00 08 */	cmpwi r5, 8
/* 801F50B8 001F2018  38 65 FF F8 */	addi r3, r5, -8
/* 801F50BC 001F201C  40 81 00 20 */	ble lbl_801F50DC
/* 801F50C0 001F2020  38 03 00 07 */	addi r0, r3, 7
/* 801F50C4 001F2024  54 00 E8 FE */	srwi r0, r0, 3
/* 801F50C8 001F2028  7C 09 03 A6 */	mtctr r0
/* 801F50CC 001F202C  2C 03 00 00 */	cmpwi r3, 0
/* 801F50D0 001F2030  40 81 00 0C */	ble lbl_801F50DC
lbl_801F50D4:
/* 801F50D4 001F2034  38 84 00 08 */	addi r4, r4, 8
/* 801F50D8 001F2038  42 00 FF FC */	bdnz lbl_801F50D4
lbl_801F50DC:
/* 801F50DC 001F203C  7C 04 28 50 */	subf r0, r4, r5
/* 801F50E0 001F2040  7C 09 03 A6 */	mtctr r0
/* 801F50E4 001F2044  7C 04 28 00 */	cmpw r4, r5
/* 801F50E8 001F2048  40 80 00 08 */	bge lbl_801F50F0
lbl_801F50EC:
/* 801F50EC 001F204C  42 00 00 00 */	bdnz lbl_801F50EC
lbl_801F50F0:
/* 801F50F0 001F2050  38 00 00 00 */	li r0, 0
/* 801F50F4 001F2054  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F50F8 001F2058  48 00 00 60 */	b lbl_801F5158
lbl_801F50FC:
/* 801F50FC 001F205C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801F5100 001F2060  38 60 00 00 */	li r3, 0
/* 801F5104 001F2064  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F5108 001F2068  2C 05 00 00 */	cmpwi r5, 0
/* 801F510C 001F206C  B0 19 00 00 */	sth r0, 0(r25)
/* 801F5110 001F2070  40 81 00 40 */	ble lbl_801F5150
/* 801F5114 001F2074  2C 05 00 08 */	cmpwi r5, 8
/* 801F5118 001F2078  38 85 FF F8 */	addi r4, r5, -8
/* 801F511C 001F207C  40 81 00 20 */	ble lbl_801F513C
/* 801F5120 001F2080  38 04 00 07 */	addi r0, r4, 7
/* 801F5124 001F2084  54 00 E8 FE */	srwi r0, r0, 3
/* 801F5128 001F2088  7C 09 03 A6 */	mtctr r0
/* 801F512C 001F208C  2C 04 00 00 */	cmpwi r4, 0
/* 801F5130 001F2090  40 81 00 0C */	ble lbl_801F513C
lbl_801F5134:
/* 801F5134 001F2094  38 63 00 08 */	addi r3, r3, 8
/* 801F5138 001F2098  42 00 FF FC */	bdnz lbl_801F5134
lbl_801F513C:
/* 801F513C 001F209C  7C 03 28 50 */	subf r0, r3, r5
/* 801F5140 001F20A0  7C 09 03 A6 */	mtctr r0
/* 801F5144 001F20A4  7C 03 28 00 */	cmpw r3, r5
/* 801F5148 001F20A8  40 80 00 08 */	bge lbl_801F5150
lbl_801F514C:
/* 801F514C 001F20AC  42 00 00 00 */	bdnz lbl_801F514C
lbl_801F5150:
/* 801F5150 001F20B0  38 00 00 00 */	li r0, 0
/* 801F5154 001F20B4  90 01 00 18 */	stw r0, 0x18(r1)
lbl_801F5158:
/* 801F5158 001F20B8  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 801F515C 001F20BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801F5160 001F20C0  7C 08 03 A6 */	mtlr r0
/* 801F5164 001F20C4  38 21 00 50 */	addi r1, r1, 0x50
/* 801F5168 001F20C8  4E 80 00 20 */	blr

.global UpdateActorKeyframe__10CPatternedFR13CStateManager
UpdateActorKeyframe__10CPatternedFR13CStateManager:
/* 801F516C 001F20CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801F5170 001F20D0  7C 08 02 A6 */	mflr r0
/* 801F5174 001F20D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801F5178 001F20D8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801F517C 001F20DC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801F5180 001F20E0  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801F5184 001F20E4  7C 9D 23 78 */	mr r29, r4
/* 801F5188 001F20E8  38 81 00 18 */	addi r4, r1, 0x18
/* 801F518C 001F20EC  93 81 00 40 */	stw r28, 0x40(r1)
/* 801F5190 001F20F0  7C 7C 1B 78 */	mr r28, r3
/* 801F5194 001F20F4  A0 03 02 DC */	lhz r0, 0x2dc(r3)
/* 801F5198 001F20F8  7F A3 EB 78 */	mr r3, r29
/* 801F519C 001F20FC  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801F51A0 001F2100  4B E5 74 05 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F51A4 001F2104  7C 64 1B 78 */	mr r4, r3
/* 801F51A8 001F2108  38 61 00 24 */	addi r3, r1, 0x24
/* 801F51AC 001F210C  4B EB 13 A1 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F51B0 001F2110  83 E3 00 04 */	lwz r31, 4(r3)
/* 801F51B4 001F2114  28 1F 00 00 */	cmplwi r31, 0
/* 801F51B8 001F2118  41 82 00 B8 */	beq lbl_801F5270
/* 801F51BC 001F211C  83 DF 00 2C */	lwz r30, 0x2c(r31)
/* 801F51C0 001F2120  48 00 00 98 */	b lbl_801F5258
lbl_801F51C4:
/* 801F51C4 001F2124  80 1E 00 00 */	lwz r0, 0(r30)
/* 801F51C8 001F2128  2C 00 00 01 */	cmpwi r0, 1
/* 801F51CC 001F212C  40 82 00 88 */	bne lbl_801F5254
/* 801F51D0 001F2130  80 1E 00 04 */	lwz r0, 4(r30)
/* 801F51D4 001F2134  2C 00 00 13 */	cmpwi r0, 0x13
/* 801F51D8 001F2138  40 82 00 7C */	bne lbl_801F5254
/* 801F51DC 001F213C  80 1E 00 08 */	lwz r0, 8(r30)
/* 801F51E0 001F2140  7F A4 EB 78 */	mr r4, r29
/* 801F51E4 001F2144  38 61 00 14 */	addi r3, r1, 0x14
/* 801F51E8 001F2148  38 A1 00 20 */	addi r5, r1, 0x20
/* 801F51EC 001F214C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801F51F0 001F2150  4B E5 2D 2D */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801F51F4 001F2154  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801F51F8 001F2158  7F A3 EB 78 */	mr r3, r29
/* 801F51FC 001F215C  38 81 00 10 */	addi r4, r1, 0x10
/* 801F5200 001F2160  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801F5204 001F2164  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F5208 001F2168  4B E5 73 6D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F520C 001F216C  7C 64 1B 78 */	mr r4, r3
/* 801F5210 001F2170  38 61 00 2C */	addi r3, r1, 0x2c
/* 801F5214 001F2174  4B EB 68 45 */	bl "__ct__34TCastToPtr<20CScriptActorKeyframe>FP7CEntity"
/* 801F5218 001F2178  80 63 00 04 */	lwz r3, 4(r3)
/* 801F521C 001F217C  28 03 00 00 */	cmplwi r3, 0
/* 801F5220 001F2180  41 82 00 34 */	beq lbl_801F5254
/* 801F5224 001F2184  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801F5228 001F2188  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F522C 001F218C  41 82 00 28 */	beq lbl_801F5254
/* 801F5230 001F2190  88 03 00 44 */	lbz r0, 0x44(r3)
/* 801F5234 001F2194  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F5238 001F2198  41 82 00 1C */	beq lbl_801F5254
/* 801F523C 001F219C  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801F5240 001F21A0  7F A5 EB 78 */	mr r5, r29
/* 801F5244 001F21A4  38 81 00 0C */	addi r4, r1, 0xc
/* 801F5248 001F21A8  B0 01 00 08 */	sth r0, 8(r1)
/* 801F524C 001F21AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801F5250 001F21B0  4B F0 90 91 */	bl UpdateEntity__20CScriptActorKeyframeF9TUniqueIdR13CStateManager
lbl_801F5254:
/* 801F5254 001F21B4  3B DE 00 0C */	addi r30, r30, 0xc
lbl_801F5258:
/* 801F5258 001F21B8  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801F525C 001F21BC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F5260 001F21C0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801F5264 001F21C4  7C 03 02 14 */	add r0, r3, r0
/* 801F5268 001F21C8  7C 1E 00 40 */	cmplw r30, r0
/* 801F526C 001F21CC  40 82 FF 58 */	bne lbl_801F51C4
lbl_801F5270:
/* 801F5270 001F21D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801F5274 001F21D4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801F5278 001F21D8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801F527C 001F21DC  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801F5280 001F21E0  83 81 00 40 */	lwz r28, 0x40(r1)
/* 801F5284 001F21E4  7C 08 03 A6 */	mtlr r0
/* 801F5288 001F21E8  38 21 00 50 */	addi r1, r1, 0x50
/* 801F528C 001F21EC  4E 80 00 20 */	blr

.global UpdateDest__10CPatternedFR13CStateManager
UpdateDest__10CPatternedFR13CStateManager:
/* 801F5290 001F21F0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801F5294 001F21F4  7C 08 02 A6 */	mflr r0
/* 801F5298 001F21F8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801F529C 001F21FC  BF 61 00 AC */	stmw r27, 0xac(r1)
/* 801F52A0 001F2200  7C 7B 1B 78 */	mr r27, r3
/* 801F52A4 001F2204  7C 9C 23 78 */	mr r28, r4
/* 801F52A8 001F2208  88 03 03 28 */	lbz r0, 0x328(r3)
/* 801F52AC 001F220C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F52B0 001F2210  41 82 03 2C */	beq lbl_801F55DC
/* 801F52B4 001F2214  A0 7B 02 DC */	lhz r3, 0x2dc(r27)
/* 801F52B8 001F2218  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F52BC 001F221C  7C 03 00 40 */	cmplw r3, r0
/* 801F52C0 001F2220  41 82 03 1C */	beq lbl_801F55DC
/* 801F52C4 001F2224  A0 1B 02 DC */	lhz r0, 0x2dc(r27)
/* 801F52C8 001F2228  7F 83 E3 78 */	mr r3, r28
/* 801F52CC 001F222C  38 81 00 24 */	addi r4, r1, 0x24
/* 801F52D0 001F2230  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801F52D4 001F2234  4B E5 72 A1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F52D8 001F2238  7C 64 1B 78 */	mr r4, r3
/* 801F52DC 001F223C  38 61 00 44 */	addi r3, r1, 0x44
/* 801F52E0 001F2240  4B EB 12 6D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F52E4 001F2244  83 E3 00 04 */	lwz r31, 4(r3)
/* 801F52E8 001F2248  28 1F 00 00 */	cmplwi r31, 0
/* 801F52EC 001F224C  41 82 02 F0 */	beq lbl_801F55DC
/* 801F52F0 001F2250  7F 63 DB 78 */	mr r3, r27
/* 801F52F4 001F2254  7F 84 E3 78 */	mr r4, r28
/* 801F52F8 001F2258  4B FF FE 75 */	bl UpdateActorKeyframe__10CPatternedFR13CStateManager
/* 801F52FC 001F225C  7F E4 FB 78 */	mr r4, r31
/* 801F5300 001F2260  7F 85 E3 78 */	mr r5, r28
/* 801F5304 001F2264  38 61 00 20 */	addi r3, r1, 0x20
/* 801F5308 001F2268  4B E8 1E 2D */	bl NextWaypoint__15CScriptWaypointCFRC13CStateManager
/* 801F530C 001F226C  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 801F5310 001F2270  B0 1B 02 DC */	sth r0, 0x2dc(r27)
/* 801F5314 001F2274  A0 7B 02 DC */	lhz r3, 0x2dc(r27)
/* 801F5318 001F2278  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F531C 001F227C  7C 03 00 40 */	cmplw r3, r0
/* 801F5320 001F2280  41 82 02 9C */	beq lbl_801F55BC
/* 801F5324 001F2284  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 801F5328 001F2288  38 A0 00 00 */	li r5, 0
/* 801F532C 001F228C  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 801F5330 001F2290  7F 83 E3 78 */	mr r3, r28
/* 801F5334 001F2294  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 801F5338 001F2298  38 81 00 1C */	addi r4, r1, 0x1c
/* 801F533C 001F229C  D0 1B 02 EC */	stfs f0, 0x2ec(r27)
/* 801F5340 001F22A0  D0 3B 02 F0 */	stfs f1, 0x2f0(r27)
/* 801F5344 001F22A4  D0 5B 02 F4 */	stfs f2, 0x2f4(r27)
/* 801F5348 001F22A8  88 1B 03 28 */	lbz r0, 0x328(r27)
/* 801F534C 001F22AC  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801F5350 001F22B0  98 1B 03 28 */	stb r0, 0x328(r27)
/* 801F5354 001F22B4  A0 1B 02 DC */	lhz r0, 0x2dc(r27)
/* 801F5358 001F22B8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801F535C 001F22BC  4B E5 72 49 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F5360 001F22C0  7C 64 1B 78 */	mr r4, r3
/* 801F5364 001F22C4  38 61 00 3C */	addi r3, r1, 0x3c
/* 801F5368 001F22C8  4B EB 11 E5 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F536C 001F22CC  83 C3 00 04 */	lwz r30, 4(r3)
/* 801F5370 001F22D0  28 1E 00 00 */	cmplwi r30, 0
/* 801F5374 001F22D4  41 82 02 48 */	beq lbl_801F55BC
/* 801F5378 001F22D8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 801F537C 001F22DC  D0 1B 03 B0 */	stfs f0, 0x3b0(r27)
/* 801F5380 001F22E0  88 1F 00 F8 */	lbz r0, 0xf8(r31)
/* 801F5384 001F22E4  90 1B 03 0C */	stw r0, 0x30c(r27)
/* 801F5388 001F22E8  A0 7F 00 FA */	lhz r3, 0xfa(r31)
/* 801F538C 001F22EC  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 801F5390 001F22F0  41 82 00 F0 */	beq lbl_801F5480
/* 801F5394 001F22F4  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 801F5398 001F22F8  38 A0 00 00 */	li r5, 0
/* 801F539C 001F22FC  39 06 AA 68 */	addi r8, r6, lbl_803DAA68@l
/* 801F53A0 001F2300  88 81 00 A4 */	lbz r4, 0xa4(r1)
/* 801F53A4 001F2304  50 A4 3E 30 */	rlwimi r4, r5, 7, 0x18, 0x18
/* 801F53A8 001F2308  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F53AC 001F230C  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801F53B0 001F2310  3C C0 80 3E */	lis r6, lbl_803DA9FC@ha
/* 801F53B4 001F2314  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 801F53B8 001F2318  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801F53BC 001F231C  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801F53C0 001F2320  38 E0 00 10 */	li r7, 0x10
/* 801F53C4 001F2324  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 801F53C8 001F2328  38 C6 A9 FC */	addi r6, r6, lbl_803DA9FC@l
/* 801F53CC 001F232C  81 3B 04 50 */	lwz r9, 0x450(r27)
/* 801F53D0 001F2330  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 801F53D4 001F2334  98 81 00 A4 */	stb r4, 0xa4(r1)
/* 801F53D8 001F2338  38 80 00 10 */	li r4, 0x10
/* 801F53DC 001F233C  C0 23 00 04 */	lfs f1, 4(r3)
/* 801F53E0 001F2340  3B C9 00 04 */	addi r30, r9, 4
/* 801F53E4 001F2344  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F53E8 001F2348  7F C3 F3 78 */	mr r3, r30
/* 801F53EC 001F234C  91 01 00 80 */	stw r8, 0x80(r1)
/* 801F53F0 001F2350  90 E1 00 84 */	stw r7, 0x84(r1)
/* 801F53F4 001F2354  90 C1 00 80 */	stw r6, 0x80(r1)
/* 801F53F8 001F2358  90 A1 00 88 */	stw r5, 0x88(r1)
/* 801F53FC 001F235C  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 801F5400 001F2360  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 801F5404 001F2364  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 801F5408 001F2368  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801F540C 001F236C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801F5410 001F2370  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801F5414 001F2374  98 01 00 A4 */	stb r0, 0xa4(r1)
/* 801F5418 001F2378  4B F3 C0 21 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801F541C 001F237C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801F5420 001F2380  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 801F5424 001F2384  38 83 A9 FC */	addi r4, r3, lbl_803DA9FC@l
/* 801F5428 001F2388  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F542C 001F238C  90 1E 01 D4 */	stw r0, 0x1d4(r30)
/* 801F5430 001F2390  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801F5434 001F2394  80 A1 00 88 */	lwz r5, 0x88(r1)
/* 801F5438 001F2398  80 61 00 8C */	lwz r3, 0x8c(r1)
/* 801F543C 001F239C  90 BE 01 D8 */	stw r5, 0x1d8(r30)
/* 801F5440 001F23A0  80 A1 00 90 */	lwz r5, 0x90(r1)
/* 801F5444 001F23A4  90 7E 01 DC */	stw r3, 0x1dc(r30)
/* 801F5448 001F23A8  80 61 00 94 */	lwz r3, 0x94(r1)
/* 801F544C 001F23AC  90 BE 01 E0 */	stw r5, 0x1e0(r30)
/* 801F5450 001F23B0  80 A1 00 98 */	lwz r5, 0x98(r1)
/* 801F5454 001F23B4  90 7E 01 E4 */	stw r3, 0x1e4(r30)
/* 801F5458 001F23B8  80 61 00 9C */	lwz r3, 0x9c(r1)
/* 801F545C 001F23BC  90 BE 01 E8 */	stw r5, 0x1e8(r30)
/* 801F5460 001F23C0  80 A1 00 A0 */	lwz r5, 0xa0(r1)
/* 801F5464 001F23C4  90 7E 01 EC */	stw r3, 0x1ec(r30)
/* 801F5468 001F23C8  88 61 00 A4 */	lbz r3, 0xa4(r1)
/* 801F546C 001F23CC  90 BE 01 F0 */	stw r5, 0x1f0(r30)
/* 801F5470 001F23D0  90 81 00 80 */	stw r4, 0x80(r1)
/* 801F5474 001F23D4  98 7E 01 F4 */	stb r3, 0x1f4(r30)
/* 801F5478 001F23D8  90 01 00 80 */	stw r0, 0x80(r1)
/* 801F547C 001F23DC  48 00 01 40 */	b lbl_801F55BC
lbl_801F5480:
/* 801F5480 001F23E0  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 801F5484 001F23E4  41 82 01 38 */	beq lbl_801F55BC
/* 801F5488 001F23E8  7F C4 F3 78 */	mr r4, r30
/* 801F548C 001F23EC  7F 85 E3 78 */	mr r5, r28
/* 801F5490 001F23F0  38 61 00 18 */	addi r3, r1, 0x18
/* 801F5494 001F23F4  4B E8 1C A1 */	bl NextWaypoint__15CScriptWaypointCFRC13CStateManager
/* 801F5498 001F23F8  A0 61 00 18 */	lhz r3, 0x18(r1)
/* 801F549C 001F23FC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F54A0 001F2400  B0 61 00 28 */	sth r3, 0x28(r1)
/* 801F54A4 001F2404  7C 03 00 40 */	cmplw r3, r0
/* 801F54A8 001F2408  41 82 01 14 */	beq lbl_801F55BC
/* 801F54AC 001F240C  B0 61 00 14 */	sth r3, 0x14(r1)
/* 801F54B0 001F2410  7F 83 E3 78 */	mr r3, r28
/* 801F54B4 001F2414  38 81 00 14 */	addi r4, r1, 0x14
/* 801F54B8 001F2418  4B E5 70 ED */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F54BC 001F241C  7C 64 1B 78 */	mr r4, r3
/* 801F54C0 001F2420  38 61 00 34 */	addi r3, r1, 0x34
/* 801F54C4 001F2424  4B EB 10 89 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F54C8 001F2428  81 03 00 04 */	lwz r8, 4(r3)
/* 801F54CC 001F242C  28 08 00 00 */	cmplwi r8, 0
/* 801F54D0 001F2430  41 82 00 EC */	beq lbl_801F55BC
/* 801F54D4 001F2434  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F54D8 001F2438  88 A1 00 7C */	lbz r5, 0x7c(r1)
/* 801F54DC 001F243C  38 00 00 01 */	li r0, 1
/* 801F54E0 001F2440  80 FB 04 50 */	lwz r7, 0x450(r27)
/* 801F54E4 001F2444  50 05 3E 30 */	rlwimi r5, r0, 7, 0x18, 0x18
/* 801F54E8 001F2448  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 801F54EC 001F244C  C0 48 00 60 */	lfs f2, 0x60(r8)
/* 801F54F0 001F2450  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 801F54F4 001F2454  C0 28 00 50 */	lfs f1, 0x50(r8)
/* 801F54F8 001F2458  38 C0 00 00 */	li r6, 0
/* 801F54FC 001F245C  C0 08 00 40 */	lfs f0, 0x40(r8)
/* 801F5500 001F2460  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 801F5504 001F2464  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 801F5508 001F2468  39 00 00 10 */	li r8, 0x10
/* 801F550C 001F246C  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801F5510 001F2470  3B A7 00 04 */	addi r29, r7, 4
/* 801F5514 001F2474  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 801F5518 001F2478  38 E3 A9 FC */	addi r7, r3, lbl_803DA9FC@l
/* 801F551C 001F247C  90 81 00 58 */	stw r4, 0x58(r1)
/* 801F5520 001F2480  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 801F5524 001F2484  7F A3 EB 78 */	mr r3, r29
/* 801F5528 001F2488  38 80 00 10 */	li r4, 0x10
/* 801F552C 001F248C  98 A1 00 7C */	stb r5, 0x7c(r1)
/* 801F5530 001F2490  91 01 00 5C */	stw r8, 0x5c(r1)
/* 801F5534 001F2494  90 E1 00 58 */	stw r7, 0x58(r1)
/* 801F5538 001F2498  90 C1 00 60 */	stw r6, 0x60(r1)
/* 801F553C 001F249C  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 801F5540 001F24A0  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 801F5544 001F24A4  D0 A1 00 6C */	stfs f5, 0x6c(r1)
/* 801F5548 001F24A8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801F554C 001F24AC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801F5550 001F24B0  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 801F5554 001F24B4  98 01 00 7C */	stb r0, 0x7c(r1)
/* 801F5558 001F24B8  4B F3 BE E1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801F555C 001F24BC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 801F5560 001F24C0  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 801F5564 001F24C4  38 83 A9 FC */	addi r4, r3, lbl_803DA9FC@l
/* 801F5568 001F24C8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F556C 001F24CC  90 1D 01 D4 */	stw r0, 0x1d4(r29)
/* 801F5570 001F24D0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801F5574 001F24D4  80 A1 00 60 */	lwz r5, 0x60(r1)
/* 801F5578 001F24D8  80 61 00 64 */	lwz r3, 0x64(r1)
/* 801F557C 001F24DC  90 BD 01 D8 */	stw r5, 0x1d8(r29)
/* 801F5580 001F24E0  80 A1 00 68 */	lwz r5, 0x68(r1)
/* 801F5584 001F24E4  90 7D 01 DC */	stw r3, 0x1dc(r29)
/* 801F5588 001F24E8  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 801F558C 001F24EC  90 BD 01 E0 */	stw r5, 0x1e0(r29)
/* 801F5590 001F24F0  80 A1 00 70 */	lwz r5, 0x70(r1)
/* 801F5594 001F24F4  90 7D 01 E4 */	stw r3, 0x1e4(r29)
/* 801F5598 001F24F8  80 61 00 74 */	lwz r3, 0x74(r1)
/* 801F559C 001F24FC  90 BD 01 E8 */	stw r5, 0x1e8(r29)
/* 801F55A0 001F2500  80 A1 00 78 */	lwz r5, 0x78(r1)
/* 801F55A4 001F2504  90 7D 01 EC */	stw r3, 0x1ec(r29)
/* 801F55A8 001F2508  88 61 00 7C */	lbz r3, 0x7c(r1)
/* 801F55AC 001F250C  90 BD 01 F0 */	stw r5, 0x1f0(r29)
/* 801F55B0 001F2510  90 81 00 58 */	stw r4, 0x58(r1)
/* 801F55B4 001F2514  98 7D 01 F4 */	stb r3, 0x1f4(r29)
/* 801F55B8 001F2518  90 01 00 58 */	stw r0, 0x58(r1)
lbl_801F55BC:
/* 801F55BC 001F251C  A0 1B 00 08 */	lhz r0, 8(r27)
/* 801F55C0 001F2520  7F 83 E3 78 */	mr r3, r28
/* 801F55C4 001F2524  7F E4 FB 78 */	mr r4, r31
/* 801F55C8 001F2528  38 A1 00 10 */	addi r5, r1, 0x10
/* 801F55CC 001F252C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801F55D0 001F2530  38 C0 00 02 */	li r6, 2
/* 801F55D4 001F2534  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F55D8 001F2538  4B E4 E8 F9 */	bl SendScriptMsg__13CStateManagerFP7CEntity9TUniqueId20EScriptObjectMessage
lbl_801F55DC:
/* 801F55DC 001F253C  A0 7B 02 DC */	lhz r3, 0x2dc(r27)
/* 801F55E0 001F2540  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F55E4 001F2544  7C 03 00 40 */	cmplw r3, r0
/* 801F55E8 001F2548  41 82 00 54 */	beq lbl_801F563C
/* 801F55EC 001F254C  A0 1B 02 DC */	lhz r0, 0x2dc(r27)
/* 801F55F0 001F2550  7F 83 E3 78 */	mr r3, r28
/* 801F55F4 001F2554  38 81 00 08 */	addi r4, r1, 8
/* 801F55F8 001F2558  B0 01 00 08 */	sth r0, 8(r1)
/* 801F55FC 001F255C  4B E5 6F A9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F5600 001F2560  7C 64 1B 78 */	mr r4, r3
/* 801F5604 001F2564  38 61 00 2C */	addi r3, r1, 0x2c
/* 801F5608 001F2568  4B EB A6 89 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801F560C 001F256C  80 A3 00 04 */	lwz r5, 4(r3)
/* 801F5610 001F2570  28 05 00 00 */	cmplwi r5, 0
/* 801F5614 001F2574  41 82 00 28 */	beq lbl_801F563C
/* 801F5618 001F2578  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 801F561C 001F257C  7F 63 DB 78 */	mr r3, r27
/* 801F5620 001F2580  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 801F5624 001F2584  38 81 00 4C */	addi r4, r1, 0x4c
/* 801F5628 001F2588  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801F562C 001F258C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801F5630 001F2590  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801F5634 001F2594  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 801F5638 001F2598  4B E8 75 25 */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_801F563C:
/* 801F563C 001F259C  BB 61 00 AC */	lmw r27, 0xac(r1)
/* 801F5640 001F25A0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801F5644 001F25A4  7C 08 03 A6 */	mtlr r0
/* 801F5648 001F25A8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801F564C 001F25AC  4E 80 00 20 */	blr

.global ApproachDest__10CPatternedFR13CStateManager
ApproachDest__10CPatternedFR13CStateManager:
/* 801F5650 001F25B0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801F5654 001F25B4  7C 08 02 A6 */	mflr r0
/* 801F5658 001F25B8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801F565C 001F25BC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 801F5660 001F25C0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 801F5664 001F25C4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 801F5668 001F25C8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 801F566C 001F25CC  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 801F5670 001F25D0  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 801F5674 001F25D4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801F5678 001F25D8  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 801F567C 001F25DC  7C 7F 1B 78 */	mr r31, r3
/* 801F5680 001F25E0  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801F5684 001F25E4  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 801F5688 001F25E8  7C 9E 23 78 */	mr r30, r4
/* 801F568C 001F25EC  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 801F5690 001F25F0  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801F5694 001F25F4  EC 40 18 28 */	fsubs f2, f0, f3
/* 801F5698 001F25F8  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 801F569C 001F25FC  EF A1 18 28 */	fsubs f29, f1, f3
/* 801F56A0 001F2600  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 801F56A4 001F2604  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801F56A8 001F2608  EC 60 20 28 */	fsubs f3, f0, f4
/* 801F56AC 001F260C  EF C1 20 28 */	fsubs f30, f1, f4
/* 801F56B0 001F2610  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 801F56B4 001F2614  C0 1F 02 E0 */	lfs f0, 0x2e0(r31)
/* 801F56B8 001F2618  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801F56BC 001F261C  EC 00 28 28 */	fsubs f0, f0, f5
/* 801F56C0 001F2620  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 801F56C4 001F2624  EF E1 28 28 */	fsubs f31, f1, f5
/* 801F56C8 001F2628  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801F56CC 001F262C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801F56D0 001F2630  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 801F56D4 001F2634  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F56D8 001F2638  40 82 00 0C */	bne lbl_801F56E4
/* 801F56DC 001F263C  C3 A2 AF 20 */	lfs f29, lbl_805ACC40@sda21(r2)
/* 801F56E0 001F2640  D3 A1 00 2C */	stfs f29, 0x2c(r1)
lbl_801F56E4:
/* 801F56E4 001F2644  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 801F56E8 001F2648  C0 1F 02 F0 */	lfs f0, 0x2f0(r31)
/* 801F56EC 001F264C  C0 7F 02 E0 */	lfs f3, 0x2e0(r31)
/* 801F56F0 001F2650  C0 5F 02 EC */	lfs f2, 0x2ec(r31)
/* 801F56F4 001F2654  EC 81 00 28 */	fsubs f4, f1, f0
/* 801F56F8 001F2658  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 801F56FC 001F265C  EC 63 10 28 */	fsubs f3, f3, f2
/* 801F5700 001F2660  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 801F5704 001F2664  C0 3F 02 F4 */	lfs f1, 0x2f4(r31)
/* 801F5708 001F2668  EC 04 01 72 */	fmuls f0, f4, f5
/* 801F570C 001F266C  C0 C1 00 24 */	lfs f6, 0x24(r1)
/* 801F5710 001F2670  EC 42 08 28 */	fsubs f2, f2, f1
/* 801F5714 001F2674  EC 23 01 BA */	fmadds f1, f3, f6, f0
/* 801F5718 001F2678  C0 E1 00 2C */	lfs f7, 0x2c(r1)
/* 801F571C 001F267C  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F5720 001F2680  EC 22 09 FA */	fmadds f1, f2, f7, f1
/* 801F5724 001F2684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F5728 001F2688  4C 40 13 82 */	cror 2, 0, 2
/* 801F572C 001F268C  40 82 00 18 */	bne lbl_801F5744
/* 801F5730 001F2690  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 801F5734 001F2694  38 60 00 01 */	li r3, 1
/* 801F5738 001F2698  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F573C 001F269C  98 1F 03 28 */	stb r0, 0x328(r31)
/* 801F5740 001F26A0  48 00 00 2C */	b lbl_801F576C
lbl_801F5744:
/* 801F5744 001F26A4  EC 25 01 72 */	fmuls f1, f5, f5
/* 801F5748 001F26A8  C0 02 88 F4 */	lfs f0, lbl_805AA614@sda21(r2)
/* 801F574C 001F26AC  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F5750 001F26B0  EC 26 09 BA */	fmadds f1, f6, f6, f1
/* 801F5754 001F26B4  EC 27 09 FA */	fmadds f1, f7, f7, f1
/* 801F5758 001F26B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F575C 001F26BC  40 80 00 10 */	bge lbl_801F576C
/* 801F5760 001F26C0  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 801F5764 001F26C4  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801F5768 001F26C8  D0 41 00 2C */	stfs f2, 0x2c(r1)
lbl_801F576C:
/* 801F576C 001F26CC  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 801F5770 001F26D0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F5774 001F26D4  40 82 02 CC */	bne lbl_801F5A40
/* 801F5778 001F26D8  38 61 00 24 */	addi r3, r1, 0x24
/* 801F577C 001F26DC  48 11 EF 7D */	bl CanBeNormalized__9CVector3fCFv
/* 801F5780 001F26E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F5784 001F26E4  41 82 00 0C */	beq lbl_801F5790
/* 801F5788 001F26E8  38 61 00 24 */	addi r3, r1, 0x24
/* 801F578C 001F26EC  48 11 F1 6D */	bl Normalize__9CVector3fFv
lbl_801F5790:
/* 801F5790 001F26F0  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 801F5794 001F26F4  2C 00 00 02 */	cmpwi r0, 2
/* 801F5798 001F26F8  41 82 00 28 */	beq lbl_801F57C0
/* 801F579C 001F26FC  40 80 00 A4 */	bge lbl_801F5840
/* 801F57A0 001F2700  2C 00 00 00 */	cmpwi r0, 0
/* 801F57A4 001F2704  41 82 00 0C */	beq lbl_801F57B0
/* 801F57A8 001F2708  48 00 00 98 */	b lbl_801F5840
/* 801F57AC 001F270C  48 00 00 94 */	b lbl_801F5840
lbl_801F57B0:
/* 801F57B0 001F2710  C3 E1 00 24 */	lfs f31, 0x24(r1)
/* 801F57B4 001F2714  C3 C1 00 28 */	lfs f30, 0x28(r1)
/* 801F57B8 001F2718  C3 A1 00 2C */	lfs f29, 0x2c(r1)
/* 801F57BC 001F271C  48 00 00 84 */	b lbl_801F5840
lbl_801F57C0:
/* 801F57C0 001F2720  80 7F 03 9C */	lwz r3, 0x39c(r31)
/* 801F57C4 001F2724  2C 03 00 00 */	cmpwi r3, 0
/* 801F57C8 001F2728  41 82 00 30 */	beq lbl_801F57F8
/* 801F57CC 001F272C  80 1F 03 90 */	lwz r0, 0x390(r31)
/* 801F57D0 001F2730  7C 03 00 00 */	cmpw r3, r0
/* 801F57D4 001F2734  40 80 00 24 */	bge lbl_801F57F8
/* 801F57D8 001F2738  1C 63 00 24 */	mulli r3, r3, 0x24
/* 801F57DC 001F273C  80 1F 03 98 */	lwz r0, 0x398(r31)
/* 801F57E0 001F2740  38 63 00 0C */	addi r3, r3, 0xc
/* 801F57E4 001F2744  7C 60 1A 14 */	add r3, r0, r3
/* 801F57E8 001F2748  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801F57EC 001F274C  C3 C3 00 04 */	lfs f30, 4(r3)
/* 801F57F0 001F2750  C3 A3 00 08 */	lfs f29, 8(r3)
/* 801F57F4 001F2754  48 00 00 4C */	b lbl_801F5840
lbl_801F57F8:
/* 801F57F8 001F2758  A0 7F 02 DC */	lhz r3, 0x2dc(r31)
/* 801F57FC 001F275C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F5800 001F2760  7C 03 00 40 */	cmplw r3, r0
/* 801F5804 001F2764  41 82 00 3C */	beq lbl_801F5840
/* 801F5808 001F2768  A0 1F 02 DC */	lhz r0, 0x2dc(r31)
/* 801F580C 001F276C  7F C3 F3 78 */	mr r3, r30
/* 801F5810 001F2770  38 81 00 08 */	addi r4, r1, 8
/* 801F5814 001F2774  B0 01 00 08 */	sth r0, 8(r1)
/* 801F5818 001F2778  4B E5 6D 8D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F581C 001F277C  7C 64 1B 78 */	mr r4, r3
/* 801F5820 001F2780  38 61 00 0C */	addi r3, r1, 0xc
/* 801F5824 001F2784  4B EB 0D 29 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F5828 001F2788  80 63 00 04 */	lwz r3, 4(r3)
/* 801F582C 001F278C  28 03 00 00 */	cmplwi r3, 0
/* 801F5830 001F2790  41 82 00 10 */	beq lbl_801F5840
/* 801F5834 001F2794  C3 E3 00 38 */	lfs f31, 0x38(r3)
/* 801F5838 001F2798  C3 C3 00 48 */	lfs f30, 0x48(r3)
/* 801F583C 001F279C  C3 A3 00 58 */	lfs f29, 0x58(r3)
lbl_801F5840:
/* 801F5840 001F27A0  D3 FF 03 1C */	stfs f31, 0x31c(r31)
/* 801F5844 001F27A4  7F E3 FB 78 */	mr r3, r31
/* 801F5848 001F27A8  D3 DF 03 20 */	stfs f30, 0x320(r31)
/* 801F584C 001F27AC  D3 BF 03 24 */	stfs f29, 0x324(r31)
/* 801F5850 001F27B0  C0 7F 03 B0 */	lfs f3, 0x3b0(r31)
/* 801F5854 001F27B4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801F5858 001F27B8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801F585C 001F27BC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801F5860 001F27C0  EC 03 00 32 */	fmuls f0, f3, f0
/* 801F5864 001F27C4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801F5868 001F27C8  EC 23 00 72 */	fmuls f1, f3, f1
/* 801F586C 001F27CC  D0 1F 03 10 */	stfs f0, 0x310(r31)
/* 801F5870 001F27D0  D0 5F 03 14 */	stfs f2, 0x314(r31)
/* 801F5874 001F27D4  D0 3F 03 18 */	stfs f1, 0x318(r31)
/* 801F5878 001F27D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801F587C 001F27DC  81 8C 02 94 */	lwz r12, 0x294(r12)
/* 801F5880 001F27E0  7D 89 03 A6 */	mtctr r12
/* 801F5884 001F27E4  4E 80 04 21 */	bctrl
/* 801F5888 001F27E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F588C 001F27EC  40 82 00 50 */	bne lbl_801F58DC
/* 801F5890 001F27F0  C0 3F 03 10 */	lfs f1, 0x310(r31)
/* 801F5894 001F27F4  38 81 00 84 */	addi r4, r1, 0x84
/* 801F5898 001F27F8  C0 02 AF 34 */	lfs f0, lbl_805ACC54@sda21(r2)
/* 801F589C 001F27FC  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 801F58A0 001F2800  C0 3F 03 14 */	lfs f1, 0x314(r31)
/* 801F58A4 001F2804  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 801F58A8 001F2808  C0 3F 03 18 */	lfs f1, 0x318(r31)
/* 801F58AC 001F280C  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 801F58B0 001F2810  C0 3F 03 1C */	lfs f1, 0x31c(r31)
/* 801F58B4 001F2814  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 801F58B8 001F2818  C0 3F 03 20 */	lfs f1, 0x320(r31)
/* 801F58BC 001F281C  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 801F58C0 001F2820  C0 3F 03 24 */	lfs f1, 0x324(r31)
/* 801F58C4 001F2824  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 801F58C8 001F2828  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 801F58CC 001F282C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F58D0 001F2830  38 63 00 04 */	addi r3, r3, 4
/* 801F58D4 001F2834  4B F3 BE 45 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801F58D8 001F2838  48 00 01 E8 */	b lbl_801F5AC0
lbl_801F58DC:
/* 801F58DC 001F283C  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 801F58E0 001F2840  28 00 00 00 */	cmplwi r0, 0
/* 801F58E4 001F2844  41 82 00 18 */	beq lbl_801F58FC
/* 801F58E8 001F2848  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F58EC 001F284C  38 80 00 03 */	li r4, 3
/* 801F58F0 001F2850  4B F4 52 C5 */	bl HasBodyState__15CBodyControllerCFQ23pas15EAnimationState
/* 801F58F4 001F2854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F58F8 001F2858  40 82 00 54 */	bne lbl_801F594C
lbl_801F58FC:
/* 801F58FC 001F285C  C0 3F 03 10 */	lfs f1, 0x310(r31)
/* 801F5900 001F2860  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F5904 001F2864  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 801F5908 001F2868  38 81 00 68 */	addi r4, r1, 0x68
/* 801F590C 001F286C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801F5910 001F2870  C0 02 AF 34 */	lfs f0, lbl_805ACC54@sda21(r2)
/* 801F5914 001F2874  C0 3F 03 14 */	lfs f1, 0x314(r31)
/* 801F5918 001F2878  C0 43 00 04 */	lfs f2, 4(r3)
/* 801F591C 001F287C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 801F5920 001F2880  C0 23 00 08 */	lfs f1, 8(r3)
/* 801F5924 001F2884  C0 9F 03 18 */	lfs f4, 0x318(r31)
/* 801F5928 001F2888  D0 81 00 70 */	stfs f4, 0x70(r1)
/* 801F592C 001F288C  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 801F5930 001F2890  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 801F5934 001F2894  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 801F5938 001F2898  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801F593C 001F289C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F5940 001F28A0  38 63 00 04 */	addi r3, r3, 4
/* 801F5944 001F28A4  4B F3 BD D5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801F5948 001F28A8  48 00 01 78 */	b lbl_801F5AC0
lbl_801F594C:
/* 801F594C 001F28AC  7F E3 FB 78 */	mr r3, r31
/* 801F5950 001F28B0  38 9F 03 10 */	addi r4, r31, 0x310
/* 801F5954 001F28B4  4B FF F3 B9 */	bl GetStepDirection__10CPatternedFRC9CVector3f
/* 801F5958 001F28B8  2C 03 00 00 */	cmpwi r3, 0
/* 801F595C 001F28BC  41 82 00 78 */	beq lbl_801F59D4
/* 801F5960 001F28C0  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801F5964 001F28C4  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801F5968 001F28C8  38 05 AA 68 */	addi r0, r5, lbl_803DAA68@l
/* 801F596C 001F28CC  3C A0 80 3E */	lis r5, lbl_803DA9E4@ha
/* 801F5970 001F28D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F5974 001F28D4  38 A5 A9 E4 */	addi r5, r5, lbl_803DA9E4@l
/* 801F5978 001F28D8  38 C0 00 01 */	li r6, 1
/* 801F597C 001F28DC  38 00 00 00 */	li r0, 0
/* 801F5980 001F28E0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801F5984 001F28E4  3B C4 00 04 */	addi r30, r4, 4
/* 801F5988 001F28E8  38 80 00 01 */	li r4, 1
/* 801F598C 001F28EC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801F5990 001F28F0  7F C3 F3 78 */	mr r3, r30
/* 801F5994 001F28F4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801F5998 001F28F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 801F599C 001F28FC  4B F3 BA 9D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801F59A0 001F2900  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801F59A4 001F2904  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801F59A8 001F2908  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 801F59AC 001F290C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F59B0 001F2910  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 801F59B4 001F2914  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801F59B8 001F2918  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801F59BC 001F291C  90 81 00 14 */	stw r4, 0x14(r1)
/* 801F59C0 001F2920  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801F59C4 001F2924  90 BE 00 CC */	stw r5, 0xcc(r30)
/* 801F59C8 001F2928  90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 801F59CC 001F292C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F59D0 001F2930  48 00 00 50 */	b lbl_801F5A20
lbl_801F59D4:
/* 801F59D4 001F2934  C0 3F 03 10 */	lfs f1, 0x310(r31)
/* 801F59D8 001F2938  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F59DC 001F293C  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 801F59E0 001F2940  38 81 00 4C */	addi r4, r1, 0x4c
/* 801F59E4 001F2944  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801F59E8 001F2948  C0 02 AF 34 */	lfs f0, lbl_805ACC54@sda21(r2)
/* 801F59EC 001F294C  C0 3F 03 14 */	lfs f1, 0x314(r31)
/* 801F59F0 001F2950  C0 43 00 04 */	lfs f2, 4(r3)
/* 801F59F4 001F2954  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801F59F8 001F2958  C0 23 00 08 */	lfs f1, 8(r3)
/* 801F59FC 001F295C  C0 9F 03 18 */	lfs f4, 0x318(r31)
/* 801F5A00 001F2960  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 801F5A04 001F2964  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 801F5A08 001F2968  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801F5A0C 001F296C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801F5A10 001F2970  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801F5A14 001F2974  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F5A18 001F2978  38 63 00 04 */	addi r3, r3, 4
/* 801F5A1C 001F297C  4B F3 BC FD */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801F5A20:
/* 801F5A20 001F2980  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F5A24 001F2984  C0 1F 03 1C */	lfs f0, 0x31c(r31)
/* 801F5A28 001F2988  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801F5A2C 001F298C  C0 1F 03 20 */	lfs f0, 0x320(r31)
/* 801F5A30 001F2990  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801F5A34 001F2994  C0 1F 03 24 */	lfs f0, 0x324(r31)
/* 801F5A38 001F2998  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801F5A3C 001F299C  48 00 00 84 */	b lbl_801F5AC0
lbl_801F5A40:
/* 801F5A40 001F29A0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F5A44 001F29A4  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801F5A48 001F29A8  4B F3 E4 65 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 801F5A4C 001F29AC  FF A0 08 90 */	fmr f29, f1
/* 801F5A50 001F29B0  C0 02 AF 38 */	lfs f0, lbl_805ACC58@sda21(r2)
/* 801F5A54 001F29B4  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801F5A58 001F29B8  40 81 00 68 */	ble lbl_801F5AC0
/* 801F5A5C 001F29BC  38 7F 01 38 */	addi r3, r31, 0x138
/* 801F5A60 001F29C0  48 11 EE 59 */	bl Magnitude__9CVector3fCFv
/* 801F5A64 001F29C4  EC 81 E8 24 */	fdivs f4, f1, f29
/* 801F5A68 001F29C8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 801F5A6C 001F29CC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 801F5A70 001F29D0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F5A74 001F29D4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 801F5A78 001F29D8  38 81 00 30 */	addi r4, r1, 0x30
/* 801F5A7C 001F29DC  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 801F5A80 001F29E0  EC C4 00 B2 */	fmuls f6, f4, f2
/* 801F5A84 001F29E4  EC A4 00 72 */	fmuls f5, f4, f1
/* 801F5A88 001F29E8  EC 84 00 32 */	fmuls f4, f4, f0
/* 801F5A8C 001F29EC  C0 43 00 04 */	lfs f2, 4(r3)
/* 801F5A90 001F29F0  C0 23 00 08 */	lfs f1, 8(r3)
/* 801F5A94 001F29F4  C0 02 AF 34 */	lfs f0, lbl_805ACC54@sda21(r2)
/* 801F5A98 001F29F8  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 801F5A9C 001F29FC  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 801F5AA0 001F2A00  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 801F5AA4 001F2A04  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801F5AA8 001F2A08  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801F5AAC 001F2A0C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 801F5AB0 001F2A10  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801F5AB4 001F2A14  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F5AB8 001F2A18  38 63 00 04 */	addi r3, r3, 4
/* 801F5ABC 001F2A1C  4B F3 BC 5D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801F5AC0:
/* 801F5AC0 001F2A20  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 801F5AC4 001F2A24  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 801F5AC8 001F2A28  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 801F5ACC 001F2A2C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 801F5AD0 001F2A30  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 801F5AD4 001F2A34  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 801F5AD8 001F2A38  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801F5ADC 001F2A3C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801F5AE0 001F2A40  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 801F5AE4 001F2A44  7C 08 03 A6 */	mtlr r0
/* 801F5AE8 001F2A48  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801F5AEC 001F2A4C  4E 80 00 20 */	blr

.global CodeTrigger__10CPatternedFR13CStateManagerf
CodeTrigger__10CPatternedFR13CStateManagerf:
/* 801F5AF0 001F2A50  88 03 03 48 */	lbz r0, 0x348(r3)
/* 801F5AF4 001F2A54  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 801F5AF8 001F2A58  4E 80 00 20 */	blr

.global FixedDelay__10CPatternedFR13CStateManagerf
FixedDelay__10CPatternedFR13CStateManagerf:
/* 801F5AFC 001F2A5C  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 801F5B00 001F2A60  C0 03 03 40 */	lfs f0, 0x340(r3)
/* 801F5B04 001F2A64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F5B08 001F2A68  7C 00 00 26 */	mfcr r0
/* 801F5B0C 001F2A6C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801F5B10 001F2A70  4E 80 00 20 */	blr

.global RandomDelay__10CPatternedFR13CStateManagerf
RandomDelay__10CPatternedFR13CStateManagerf:
/* 801F5B14 001F2A74  C0 03 03 3C */	lfs f0, 0x33c(r3)
/* 801F5B18 001F2A78  C0 43 03 38 */	lfs f2, 0x338(r3)
/* 801F5B1C 001F2A7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F5B20 001F2A80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F5B24 001F2A84  7C 00 00 26 */	mfcr r0
/* 801F5B28 001F2A88  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801F5B2C 001F2A8C  4E 80 00 20 */	blr

.global Delay__10CPatternedFR13CStateManagerf
Delay__10CPatternedFR13CStateManagerf:
/* 801F5B30 001F2A90  C0 03 03 38 */	lfs f0, 0x338(r3)
/* 801F5B34 001F2A94  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801F5B38 001F2A98  7C 00 00 26 */	mfcr r0
/* 801F5B3C 001F2A9C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801F5B40 001F2AA0  4E 80 00 20 */	blr

.global PatrolPathOver__10CPatternedFR13CStateManagerf
PatrolPathOver__10CPatternedFR13CStateManagerf:
/* 801F5B44 001F2AA4  A0 63 02 DC */	lhz r3, 0x2dc(r3)
/* 801F5B48 001F2AA8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F5B4C 001F2AAC  7C 03 00 50 */	subf r0, r3, r0
/* 801F5B50 001F2AB0  7C 00 00 34 */	cntlzw r0, r0
/* 801F5B54 001F2AB4  54 03 D9 7E */	srwi r3, r0, 5
/* 801F5B58 001F2AB8  4E 80 00 20 */	blr

.global Stuck__10CPatternedFR13CStateManagerf
Stuck__10CPatternedFR13CStateManagerf:
/* 801F5B5C 001F2ABC  C0 23 04 F0 */	lfs f1, 0x4f0(r3)
/* 801F5B60 001F2AC0  C0 02 AF 3C */	lfs f0, lbl_805ACC5C@sda21(r2)
/* 801F5B64 001F2AC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F5B68 001F2AC8  7C 00 00 26 */	mfcr r0
/* 801F5B6C 001F2ACC  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801F5B70 001F2AD0  4E 80 00 20 */	blr

.global AnimOver__10CPatternedFR13CStateManagerf
AnimOver__10CPatternedFR13CStateManagerf:
/* 801F5B74 001F2AD4  80 03 03 2C */	lwz r0, 0x32c(r3)
/* 801F5B78 001F2AD8  20 00 00 03 */	subfic r0, r0, 3
/* 801F5B7C 001F2ADC  7C 00 00 34 */	cntlzw r0, r0
/* 801F5B80 001F2AE0  54 03 D9 7E */	srwi r3, r0, 5
/* 801F5B84 001F2AE4  4E 80 00 20 */	blr

.global InPosition__10CPatternedFR13CStateManagerf
InPosition__10CPatternedFR13CStateManagerf:
/* 801F5B88 001F2AE8  88 03 03 28 */	lbz r0, 0x328(r3)
/* 801F5B8C 001F2AEC  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 801F5B90 001F2AF0  4E 80 00 20 */	blr

.global HasPatrolPath__10CPatternedFR13CStateManagerf
HasPatrolPath__10CPatternedFR13CStateManagerf:
/* 801F5B94 001F2AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F5B98 001F2AF8  7C 08 02 A6 */	mflr r0
/* 801F5B9C 001F2AFC  7C 85 23 78 */	mr r5, r4
/* 801F5BA0 001F2B00  7C 64 1B 78 */	mr r4, r3
/* 801F5BA4 001F2B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F5BA8 001F2B08  38 61 00 08 */	addi r3, r1, 8
/* 801F5BAC 001F2B0C  38 C0 00 0D */	li r6, 0xd
/* 801F5BB0 001F2B10  38 E0 00 06 */	li r7, 6
/* 801F5BB4 001F2B14  4B FF F3 E5 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801F5BB8 001F2B18  A0 81 00 08 */	lhz r4, 8(r1)
/* 801F5BBC 001F2B1C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F5BC0 001F2B20  7C 64 00 50 */	subf r3, r4, r0
/* 801F5BC4 001F2B24  7C 00 20 50 */	subf r0, r0, r4
/* 801F5BC8 001F2B28  7C 60 03 78 */	or r0, r3, r0
/* 801F5BCC 001F2B2C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F5BD0 001F2B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F5BD4 001F2B34  7C 08 03 A6 */	mtlr r0
/* 801F5BD8 001F2B38  38 21 00 10 */	addi r1, r1, 0x10
/* 801F5BDC 001F2B3C  4E 80 00 20 */	blr

.global Attacked__10CPatternedFR13CStateManagerf
Attacked__10CPatternedFR13CStateManagerf:
/* 801F5BE0 001F2B40  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801F5BE4 001F2B44  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 801F5BE8 001F2B48  7C 03 00 D0 */	neg r0, r3
/* 801F5BEC 001F2B4C  7C 00 1B 78 */	or r0, r0, r3
/* 801F5BF0 001F2B50  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F5BF4 001F2B54  4E 80 00 20 */	blr

.global PatternShagged__10CPatternedFR13CStateManagerf
PatternShagged__10CPatternedFR13CStateManagerf:
/* 801F5BF8 001F2B58  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801F5BFC 001F2B5C  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 801F5C00 001F2B60  7C 03 00 D0 */	neg r0, r3
/* 801F5C04 001F2B64  7C 00 1B 78 */	or r0, r0, r3
/* 801F5C08 001F2B68  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F5C0C 001F2B6C  4E 80 00 20 */	blr

.global PatternOver__10CPatternedFR13CStateManagerf
PatternOver__10CPatternedFR13CStateManagerf:
/* 801F5C10 001F2B70  80 A3 03 9C */	lwz r5, 0x39c(r3)
/* 801F5C14 001F2B74  80 03 03 90 */	lwz r0, 0x390(r3)
/* 801F5C18 001F2B78  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 801F5C1C 001F2B7C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F5C20 001F2B80  7C 00 28 10 */	subfc r0, r0, r5
/* 801F5C24 001F2B84  7C 64 19 14 */	adde r3, r4, r3
/* 801F5C28 001F2B88  4E 80 00 20 */	blr

.global HasRetreatPattern__10CPatternedFR13CStateManagerf
HasRetreatPattern__10CPatternedFR13CStateManagerf:
/* 801F5C2C 001F2B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F5C30 001F2B90  7C 08 02 A6 */	mflr r0
/* 801F5C34 001F2B94  7C 85 23 78 */	mr r5, r4
/* 801F5C38 001F2B98  7C 64 1B 78 */	mr r4, r3
/* 801F5C3C 001F2B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F5C40 001F2BA0  38 61 00 08 */	addi r3, r1, 8
/* 801F5C44 001F2BA4  38 C0 00 0C */	li r6, 0xc
/* 801F5C48 001F2BA8  38 E0 00 06 */	li r7, 6
/* 801F5C4C 001F2BAC  4B FF F3 4D */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801F5C50 001F2BB0  A0 81 00 08 */	lhz r4, 8(r1)
/* 801F5C54 001F2BB4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F5C58 001F2BB8  7C 64 00 50 */	subf r3, r4, r0
/* 801F5C5C 001F2BBC  7C 00 20 50 */	subf r0, r0, r4
/* 801F5C60 001F2BC0  7C 60 03 78 */	or r0, r3, r0
/* 801F5C64 001F2BC4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F5C68 001F2BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F5C6C 001F2BCC  7C 08 03 A6 */	mtlr r0
/* 801F5C70 001F2BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 801F5C74 001F2BD4  4E 80 00 20 */	blr

.global HasAttackPattern__10CPatternedFR13CStateManagerf
HasAttackPattern__10CPatternedFR13CStateManagerf:
/* 801F5C78 001F2BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F5C7C 001F2BDC  7C 08 02 A6 */	mflr r0
/* 801F5C80 001F2BE0  7C 85 23 78 */	mr r5, r4
/* 801F5C84 001F2BE4  7C 64 1B 78 */	mr r4, r3
/* 801F5C88 001F2BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F5C8C 001F2BEC  38 61 00 08 */	addi r3, r1, 8
/* 801F5C90 001F2BF0  38 C0 00 0A */	li r6, 0xa
/* 801F5C94 001F2BF4  38 E0 00 06 */	li r7, 6
/* 801F5C98 001F2BF8  4B FF F3 01 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801F5C9C 001F2BFC  A0 81 00 08 */	lhz r4, 8(r1)
/* 801F5CA0 001F2C00  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F5CA4 001F2C04  7C 64 00 50 */	subf r3, r4, r0
/* 801F5CA8 001F2C08  7C 00 20 50 */	subf r0, r0, r4
/* 801F5CAC 001F2C0C  7C 60 03 78 */	or r0, r3, r0
/* 801F5CB0 001F2C10  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F5CB4 001F2C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F5CB8 001F2C18  7C 08 03 A6 */	mtlr r0
/* 801F5CBC 001F2C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F5CC0 001F2C20  4E 80 00 20 */	blr

.global NoPathNodes__10CPatternedFR13CStateManagerf
NoPathNodes__10CPatternedFR13CStateManagerf:
/* 801F5CC4 001F2C24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F5CC8 001F2C28  7C 08 02 A6 */	mflr r0
/* 801F5CCC 001F2C2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F5CD0 001F2C30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F5CD4 001F2C34  7C 7F 1B 78 */	mr r31, r3
/* 801F5CD8 001F2C38  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5CDC 001F2C3C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5CE0 001F2C40  7D 89 03 A6 */	mtctr r12
/* 801F5CE4 001F2C44  4E 80 04 21 */	bctrl
/* 801F5CE8 001F2C48  28 03 00 00 */	cmplwi r3, 0
/* 801F5CEC 001F2C4C  41 82 00 48 */	beq lbl_801F5D34
/* 801F5CF0 001F2C50  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801F5CF4 001F2C54  7F E3 FB 78 */	mr r3, r31
/* 801F5CF8 001F2C58  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801F5CFC 001F2C5C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801F5D00 001F2C60  D0 01 00 08 */	stfs f0, 8(r1)
/* 801F5D04 001F2C64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801F5D08 001F2C68  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801F5D0C 001F2C6C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801F5D10 001F2C70  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5D14 001F2C74  7D 89 03 A6 */	mtctr r12
/* 801F5D18 001F2C78  4E 80 04 21 */	bctrl
/* 801F5D1C 001F2C7C  38 81 00 08 */	addi r4, r1, 8
/* 801F5D20 001F2C80  4B FD 0E 15 */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 801F5D24 001F2C84  7C 03 00 D0 */	neg r0, r3
/* 801F5D28 001F2C88  7C 00 1B 78 */	or r0, r0, r3
/* 801F5D2C 001F2C8C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F5D30 001F2C90  48 00 00 08 */	b lbl_801F5D38
lbl_801F5D34:
/* 801F5D34 001F2C94  38 60 00 01 */	li r3, 1
lbl_801F5D38:
/* 801F5D38 001F2C98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F5D3C 001F2C9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F5D40 001F2CA0  7C 08 03 A6 */	mtlr r0
/* 801F5D44 001F2CA4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F5D48 001F2CA8  4E 80 00 20 */	blr

.global PathShagged__10CPatternedFR13CStateManagerf
PathShagged__10CPatternedFR13CStateManagerf:
/* 801F5D4C 001F2CAC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801F5D50 001F2CB0  7C 08 02 A6 */	mflr r0
/* 801F5D54 001F2CB4  90 01 00 74 */	stw r0, 0x74(r1)
/* 801F5D58 001F2CB8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801F5D5C 001F2CBC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801F5D60 001F2CC0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801F5D64 001F2CC4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801F5D68 001F2CC8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 801F5D6C 001F2CCC  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 801F5D70 001F2CD0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801F5D74 001F2CD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5D78 001F2CD8  7C 7F 1B 78 */	mr r31, r3
/* 801F5D7C 001F2CDC  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5D80 001F2CE0  7D 89 03 A6 */	mtctr r12
/* 801F5D84 001F2CE4  4E 80 04 21 */	bctrl
/* 801F5D88 001F2CE8  28 03 00 00 */	cmplwi r3, 0
/* 801F5D8C 001F2CEC  41 82 01 24 */	beq lbl_801F5EB0
/* 801F5D90 001F2CF0  7F E3 FB 78 */	mr r3, r31
/* 801F5D94 001F2CF4  81 9F 00 00 */	lwz r12, 0(r31)
/* 801F5D98 001F2CF8  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5D9C 001F2CFC  7D 89 03 A6 */	mtctr r12
/* 801F5DA0 001F2D00  4E 80 04 21 */	bctrl
/* 801F5DA4 001F2D04  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801F5DA8 001F2D08  2C 00 00 00 */	cmpwi r0, 0
/* 801F5DAC 001F2D0C  41 82 00 0C */	beq lbl_801F5DB8
/* 801F5DB0 001F2D10  38 60 00 01 */	li r3, 1
/* 801F5DB4 001F2D14  48 00 01 00 */	b lbl_801F5EB4
lbl_801F5DB8:
/* 801F5DB8 001F2D18  7F E3 FB 78 */	mr r3, r31
/* 801F5DBC 001F2D1C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801F5DC0 001F2D20  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5DC4 001F2D24  7D 89 03 A6 */	mtctr r12
/* 801F5DC8 001F2D28  4E 80 04 21 */	bctrl
/* 801F5DCC 001F2D2C  80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 801F5DD0 001F2D30  2C 00 00 00 */	cmpwi r0, 0
/* 801F5DD4 001F2D34  40 81 00 DC */	ble lbl_801F5EB0
/* 801F5DD8 001F2D38  88 1F 04 01 */	lbz r0, 0x401(r31)
/* 801F5DDC 001F2D3C  54 00 D7 BF */	rlwinm. r0, r0, 0x1a, 0x1e, 0x1f
/* 801F5DE0 001F2D40  40 82 00 D0 */	bne lbl_801F5EB0
/* 801F5DE4 001F2D44  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801F5DE8 001F2D48  C0 A2 AF 40 */	lfs f5, lbl_805ACC60@sda21(r2)
/* 801F5DEC 001F2D4C  38 83 66 F4 */	addi r4, r3, sUpVector__9CVector3f@l
/* 801F5DF0 001F2D50  C0 DF 00 40 */	lfs f6, 0x40(r31)
/* 801F5DF4 001F2D54  C0 44 00 00 */	lfs f2, 0(r4)
/* 801F5DF8 001F2D58  7F E3 FB 78 */	mr r3, r31
/* 801F5DFC 001F2D5C  C0 24 00 04 */	lfs f1, 4(r4)
/* 801F5E00 001F2D60  C0 04 00 08 */	lfs f0, 8(r4)
/* 801F5E04 001F2D64  EC 85 00 B2 */	fmuls f4, f5, f2
/* 801F5E08 001F2D68  EC 45 00 72 */	fmuls f2, f5, f1
/* 801F5E0C 001F2D6C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801F5E10 001F2D70  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801F5E14 001F2D74  EC 05 00 32 */	fmuls f0, f5, f0
/* 801F5E18 001F2D78  EF A6 20 2A */	fadds f29, f6, f4
/* 801F5E1C 001F2D7C  EF C3 10 2A */	fadds f30, f3, f2
/* 801F5E20 001F2D80  EF E1 00 2A */	fadds f31, f1, f0
/* 801F5E24 001F2D84  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 801F5E28 001F2D88  D3 A1 00 20 */	stfs f29, 0x20(r1)
/* 801F5E2C 001F2D8C  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 801F5E30 001F2D90  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 801F5E34 001F2D94  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801F5E38 001F2D98  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801F5E3C 001F2D9C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801F5E40 001F2DA0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5E44 001F2DA4  7D 89 03 A6 */	mtctr r12
/* 801F5E48 001F2DA8  4E 80 04 21 */	bctrl
/* 801F5E4C 001F2DAC  38 81 00 20 */	addi r4, r1, 0x20
/* 801F5E50 001F2DB0  38 A1 00 14 */	addi r5, r1, 0x14
/* 801F5E54 001F2DB4  4B FD 5F 59 */	bl GetSplinePoint__15CPathFindSearchCFR9CVector3fRC9CVector3f
/* 801F5E58 001F2DB8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801F5E5C 001F2DBC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801F5E60 001F2DC0  EC 61 F0 28 */	fsubs f3, f1, f30
/* 801F5E64 001F2DC4  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801F5E68 001F2DC8  EC 20 E8 28 */	fsubs f1, f0, f29
/* 801F5E6C 001F2DCC  C0 A2 88 F4 */	lfs f5, lbl_805AA614@sda21(r2)
/* 801F5E70 001F2DD0  EC 82 F8 28 */	fsubs f4, f2, f31
/* 801F5E74 001F2DD4  C0 02 AF 44 */	lfs f0, lbl_805ACC64@sda21(r2)
/* 801F5E78 001F2DD8  EC 41 00 72 */	fmuls f2, f1, f1
/* 801F5E7C 001F2DDC  D0 21 00 08 */	stfs f1, 8(r1)
/* 801F5E80 001F2DE0  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801F5E84 001F2DE4  EC 00 01 72 */	fmuls f0, f0, f5
/* 801F5E88 001F2DE8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801F5E8C 001F2DEC  EC 64 01 32 */	fmuls f3, f4, f4
/* 801F5E90 001F2DF0  EC 22 08 2A */	fadds f1, f2, f1
/* 801F5E94 001F2DF4  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 801F5E98 001F2DF8  EC 00 01 72 */	fmuls f0, f0, f5
/* 801F5E9C 001F2DFC  EC 23 08 2A */	fadds f1, f3, f1
/* 801F5EA0 001F2E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F5EA4 001F2E04  40 81 00 0C */	ble lbl_801F5EB0
/* 801F5EA8 001F2E08  38 60 00 01 */	li r3, 1
/* 801F5EAC 001F2E0C  48 00 00 08 */	b lbl_801F5EB4
lbl_801F5EB0:
/* 801F5EB0 001F2E10  38 60 00 00 */	li r3, 0
lbl_801F5EB4:
/* 801F5EB4 001F2E14  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801F5EB8 001F2E18  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801F5EBC 001F2E1C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801F5EC0 001F2E20  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801F5EC4 001F2E24  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 801F5EC8 001F2E28  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 801F5ECC 001F2E2C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801F5ED0 001F2E30  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801F5ED4 001F2E34  7C 08 03 A6 */	mtlr r0
/* 801F5ED8 001F2E38  38 21 00 70 */	addi r1, r1, 0x70
/* 801F5EDC 001F2E3C  4E 80 00 20 */	blr

.global PathFound__10CPatternedFR13CStateManagerf
PathFound__10CPatternedFR13CStateManagerf:
/* 801F5EE0 001F2E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F5EE4 001F2E44  7C 08 02 A6 */	mflr r0
/* 801F5EE8 001F2E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F5EEC 001F2E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F5EF0 001F2E50  3B E0 00 00 */	li r31, 0
/* 801F5EF4 001F2E54  93 C1 00 08 */	stw r30, 8(r1)
/* 801F5EF8 001F2E58  7C 7E 1B 78 */	mr r30, r3
/* 801F5EFC 001F2E5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5F00 001F2E60  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5F04 001F2E64  7D 89 03 A6 */	mtctr r12
/* 801F5F08 001F2E68  4E 80 04 21 */	bctrl
/* 801F5F0C 001F2E6C  28 03 00 00 */	cmplwi r3, 0
/* 801F5F10 001F2E70  41 82 00 28 */	beq lbl_801F5F38
/* 801F5F14 001F2E74  7F C3 F3 78 */	mr r3, r30
/* 801F5F18 001F2E78  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F5F1C 001F2E7C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5F20 001F2E80  7D 89 03 A6 */	mtctr r12
/* 801F5F24 001F2E84  4E 80 04 21 */	bctrl
/* 801F5F28 001F2E88  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801F5F2C 001F2E8C  2C 00 00 00 */	cmpwi r0, 0
/* 801F5F30 001F2E90  40 82 00 08 */	bne lbl_801F5F38
/* 801F5F34 001F2E94  3B E0 00 01 */	li r31, 1
lbl_801F5F38:
/* 801F5F38 001F2E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F5F3C 001F2E9C  7F E3 FB 78 */	mr r3, r31
/* 801F5F40 001F2EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F5F44 001F2EA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F5F48 001F2EA8  7C 08 03 A6 */	mtlr r0
/* 801F5F4C 001F2EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 801F5F50 001F2EB0  4E 80 00 20 */	blr

.global PathOver__10CPatternedFR13CStateManagerf
PathOver__10CPatternedFR13CStateManagerf:
/* 801F5F54 001F2EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F5F58 001F2EB8  7C 08 02 A6 */	mflr r0
/* 801F5F5C 001F2EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F5F60 001F2EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F5F64 001F2EC4  93 C1 00 08 */	stw r30, 8(r1)
/* 801F5F68 001F2EC8  7C 7E 1B 78 */	mr r30, r3
/* 801F5F6C 001F2ECC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5F70 001F2ED0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5F74 001F2ED4  7D 89 03 A6 */	mtctr r12
/* 801F5F78 001F2ED8  4E 80 04 21 */	bctrl
/* 801F5F7C 001F2EDC  28 03 00 00 */	cmplwi r3, 0
/* 801F5F80 001F2EE0  41 82 00 70 */	beq lbl_801F5FF0
/* 801F5F84 001F2EE4  88 7E 03 28 */	lbz r3, 0x328(r30)
/* 801F5F88 001F2EE8  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801F5F8C 001F2EEC  40 82 00 0C */	bne lbl_801F5F98
/* 801F5F90 001F2EF0  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 801F5F94 001F2EF4  41 82 00 5C */	beq lbl_801F5FF0
lbl_801F5F98:
/* 801F5F98 001F2EF8  7F C3 F3 78 */	mr r3, r30
/* 801F5F9C 001F2EFC  3B E0 00 00 */	li r31, 0
/* 801F5FA0 001F2F00  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F5FA4 001F2F04  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5FA8 001F2F08  7D 89 03 A6 */	mtctr r12
/* 801F5FAC 001F2F0C  4E 80 04 21 */	bctrl
/* 801F5FB0 001F2F10  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801F5FB4 001F2F14  2C 00 00 00 */	cmpwi r0, 0
/* 801F5FB8 001F2F18  40 82 00 30 */	bne lbl_801F5FE8
/* 801F5FBC 001F2F1C  7F C3 F3 78 */	mr r3, r30
/* 801F5FC0 001F2F20  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F5FC4 001F2F24  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F5FC8 001F2F28  7D 89 03 A6 */	mtctr r12
/* 801F5FCC 001F2F2C  4E 80 04 21 */	bctrl
/* 801F5FD0 001F2F30  80 83 00 04 */	lwz r4, 4(r3)
/* 801F5FD4 001F2F34  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 801F5FD8 001F2F38  38 04 FF FF */	addi r0, r4, -1
/* 801F5FDC 001F2F3C  7C 03 00 00 */	cmpw r3, r0
/* 801F5FE0 001F2F40  41 80 00 08 */	blt lbl_801F5FE8
/* 801F5FE4 001F2F44  3B E0 00 01 */	li r31, 1
lbl_801F5FE8:
/* 801F5FE8 001F2F48  7F E3 FB 78 */	mr r3, r31
/* 801F5FEC 001F2F4C  48 00 00 08 */	b lbl_801F5FF4
lbl_801F5FF0:
/* 801F5FF0 001F2F50  38 60 00 00 */	li r3, 0
lbl_801F5FF4:
/* 801F5FF4 001F2F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F5FF8 001F2F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F5FFC 001F2F5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F6000 001F2F60  7C 08 03 A6 */	mtlr r0
/* 801F6004 001F2F64  38 21 00 10 */	addi r1, r1, 0x10
/* 801F6008 001F2F68  4E 80 00 20 */	blr

.global Landed__10CPatternedFR13CStateManagerf
Landed__10CPatternedFR13CStateManagerf:
/* 801F600C 001F2F6C  88 03 03 28 */	lbz r0, 0x328(r3)
/* 801F6010 001F2F70  38 80 00 00 */	li r4, 0
/* 801F6014 001F2F74  54 05 E7 FF */	rlwinm. r5, r0, 0x1c, 0x1f, 0x1f
/* 801F6018 001F2F78  41 82 00 10 */	beq lbl_801F6028
/* 801F601C 001F2F7C  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801F6020 001F2F80  40 82 00 08 */	bne lbl_801F6028
/* 801F6024 001F2F84  38 80 00 01 */	li r4, 1
lbl_801F6028:
/* 801F6028 001F2F88  88 03 03 28 */	lbz r0, 0x328(r3)
/* 801F602C 001F2F8C  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 801F6030 001F2F90  98 03 03 28 */	stb r0, 0x328(r3)
/* 801F6034 001F2F94  7C 83 23 78 */	mr r3, r4
/* 801F6038 001F2F98  4E 80 00 20 */	blr

.global PlayerSpot__10CPatternedFR13CStateManagerf
PlayerSpot__10CPatternedFR13CStateManagerf:
/* 801F603C 001F2F9C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801F6040 001F2FA0  7C 08 02 A6 */	mflr r0
/* 801F6044 001F2FA4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801F6048 001F2FA8  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 801F604C 001F2FAC  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 801F6050 001F2FB0  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 801F6054 001F2FB4  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 801F6058 001F2FB8  7C 9F 23 78 */	mr r31, r4
/* 801F605C 001F2FBC  7C 7E 1B 78 */	mr r30, r3
/* 801F6060 001F2FC0  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801F6064 001F2FC4  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 801F6068 001F2FC8  2C 00 00 00 */	cmpwi r0, 0
/* 801F606C 001F2FCC  40 82 01 6C */	bne lbl_801F61D8
/* 801F6070 001F2FD0  81 84 00 00 */	lwz r12, 0(r4)
/* 801F6074 001F2FD4  7F E5 FB 78 */	mr r5, r31
/* 801F6078 001F2FD8  38 61 00 20 */	addi r3, r1, 0x20
/* 801F607C 001F2FDC  C0 22 AF 20 */	lfs f1, lbl_805ACC40@sda21(r2)
/* 801F6080 001F2FE0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801F6084 001F2FE4  7D 89 03 A6 */	mtctr r12
/* 801F6088 001F2FE8  4E 80 04 21 */	bctrl
/* 801F608C 001F2FEC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801F6090 001F2FF0  7F C4 F3 78 */	mr r4, r30
/* 801F6094 001F2FF4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801F6098 001F2FF8  38 61 00 68 */	addi r3, r1, 0x68
/* 801F609C 001F2FFC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801F60A0 001F3000  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801F60A4 001F3004  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801F60A8 001F3008  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801F60AC 001F300C  4B F2 48 81 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801F60B0 001F3010  38 61 00 14 */	addi r3, r1, 0x14
/* 801F60B4 001F3014  38 81 00 68 */	addi r4, r1, 0x68
/* 801F60B8 001F3018  48 14 15 55 */	bl GetCenterPoint__6CAABoxCFv
/* 801F60BC 001F301C  C0 A1 00 14 */	lfs f5, 0x14(r1)
/* 801F60C0 001F3020  38 61 00 2C */	addi r3, r1, 0x2c
/* 801F60C4 001F3024  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 801F60C8 001F3028  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 801F60CC 001F302C  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 801F60D0 001F3030  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 801F60D4 001F3034  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801F60D8 001F3038  EC 44 10 28 */	fsubs f2, f4, f2
/* 801F60DC 001F303C  EC 23 08 28 */	fsubs f1, f3, f1
/* 801F60E0 001F3040  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 801F60E4 001F3044  EC 05 00 28 */	fsubs f0, f5, f0
/* 801F60E8 001F3048  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801F60EC 001F304C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801F60F0 001F3050  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801F60F4 001F3054  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801F60F8 001F3058  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801F60FC 001F305C  48 11 E7 BD */	bl Magnitude__9CVector3fCFv
/* 801F6100 001F3060  FF E0 08 90 */	fmr f31, f1
/* 801F6104 001F3064  C0 62 AF 34 */	lfs f3, lbl_805ACC54@sda21(r2)
/* 801F6108 001F3068  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 801F610C 001F306C  38 61 00 08 */	addi r3, r1, 8
/* 801F6110 001F3070  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801F6114 001F3074  38 A1 00 38 */	addi r5, r1, 0x38
/* 801F6118 001F3078  EC A3 F8 24 */	fdivs f5, f3, f31
/* 801F611C 001F307C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801F6120 001F3080  EC 64 01 72 */	fmuls f3, f4, f5
/* 801F6124 001F3084  EC 22 01 72 */	fmuls f1, f2, f5
/* 801F6128 001F3088  EC 00 01 72 */	fmuls f0, f0, f5
/* 801F612C 001F308C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 801F6130 001F3090  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801F6134 001F3094  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801F6138 001F3098  80 9F 08 70 */	lwz r4, 0x870(r31)
/* 801F613C 001F309C  80 84 00 7C */	lwz r4, 0x7c(r4)
/* 801F6140 001F30A0  4B E6 77 51 */	bl ConvertToScreenSpace__11CGameCameraCFRC9CVector3f
/* 801F6144 001F30A4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801F6148 001F30A8  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F614C 001F30AC  C0 41 00 08 */	lfs f2, 8(r1)
/* 801F6150 001F30B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F6154 001F30B4  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 801F6158 001F30B8  40 81 00 80 */	ble lbl_801F61D8
/* 801F615C 001F30BC  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801F6160 001F30C0  C0 22 AF 34 */	lfs f1, lbl_805ACC54@sda21(r2)
/* 801F6164 001F30C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801F6168 001F30C8  40 80 00 70 */	bge lbl_801F61D8
/* 801F616C 001F30CC  EC 03 00 F2 */	fmuls f0, f3, f3
/* 801F6170 001F30D0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801F6174 001F30D4  40 80 00 64 */	bge lbl_801F61D8
/* 801F6178 001F30D8  80 AD 92 C0 */	lwz r5, lbl_805A7E80@sda21(r13)
/* 801F617C 001F30DC  38 60 00 00 */	li r3, 0
/* 801F6180 001F30E0  38 80 00 01 */	li r4, 1
/* 801F6184 001F30E4  48 19 3D 71 */	bl __shl2i
/* 801F6188 001F30E8  39 00 00 01 */	li r8, 1
/* 801F618C 001F30EC  38 00 00 00 */	li r0, 0
/* 801F6190 001F30F0  90 81 00 84 */	stw r4, 0x84(r1)
/* 801F6194 001F30F4  FC 20 F8 90 */	fmr f1, f31
/* 801F6198 001F30F8  7F E4 FB 78 */	mr r4, r31
/* 801F619C 001F30FC  38 A1 00 44 */	addi r5, r1, 0x44
/* 801F61A0 001F3100  90 61 00 80 */	stw r3, 0x80(r1)
/* 801F61A4 001F3104  38 61 00 98 */	addi r3, r1, 0x98
/* 801F61A8 001F3108  38 C1 00 2C */	addi r6, r1, 0x2c
/* 801F61AC 001F310C  91 01 00 60 */	stw r8, 0x60(r1)
/* 801F61B0 001F3110  38 E1 00 80 */	addi r7, r1, 0x80
/* 801F61B4 001F3114  90 01 00 8C */	stw r0, 0x8c(r1)
/* 801F61B8 001F3118  90 01 00 88 */	stw r0, 0x88(r1)
/* 801F61BC 001F311C  91 01 00 90 */	stw r8, 0x90(r1)
/* 801F61C0 001F3120  4B E5 6D D9 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 801F61C4 001F3124  88 01 00 B8 */	lbz r0, 0xb8(r1)
/* 801F61C8 001F3128  28 00 00 00 */	cmplwi r0, 0
/* 801F61CC 001F312C  40 82 00 0C */	bne lbl_801F61D8
/* 801F61D0 001F3130  38 60 00 01 */	li r3, 1
/* 801F61D4 001F3134  48 00 00 08 */	b lbl_801F61DC
lbl_801F61D8:
/* 801F61D8 001F3138  38 60 00 00 */	li r3, 0
lbl_801F61DC:
/* 801F61DC 001F313C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 801F61E0 001F3140  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801F61E4 001F3144  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 801F61E8 001F3148  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 801F61EC 001F314C  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 801F61F0 001F3150  7C 08 03 A6 */	mtlr r0
/* 801F61F4 001F3154  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801F61F8 001F3158  4E 80 00 20 */	blr

.global SpotPlayer__10CPatternedFR13CStateManagerf
SpotPlayer__10CPatternedFR13CStateManagerf:
/* 801F61FC 001F315C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F6200 001F3160  7C 08 02 A6 */	mflr r0
/* 801F6204 001F3164  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F6208 001F3168  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801F620C 001F316C  3B E0 00 00 */	li r31, 0
/* 801F6210 001F3170  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801F6214 001F3174  7C 9E 23 78 */	mr r30, r4
/* 801F6218 001F3178  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801F621C 001F317C  7C 7D 1B 78 */	mr r29, r3
/* 801F6220 001F3180  7F A4 EB 78 */	mr r4, r29
/* 801F6224 001F3184  38 61 00 14 */	addi r3, r1, 0x14
/* 801F6228 001F3188  4B E8 68 A9 */	bl GetGunEyePos__10CPatternedCFv
/* 801F622C 001F318C  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 801F6230 001F3190  7F C5 F3 78 */	mr r5, r30
/* 801F6234 001F3194  38 61 00 20 */	addi r3, r1, 0x20
/* 801F6238 001F3198  C0 22 AF 20 */	lfs f1, lbl_805ACC40@sda21(r2)
/* 801F623C 001F319C  81 84 00 00 */	lwz r12, 0(r4)
/* 801F6240 001F31A0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801F6244 001F31A4  7D 89 03 A6 */	mtctr r12
/* 801F6248 001F31A8  4E 80 04 21 */	bctrl
/* 801F624C 001F31AC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801F6250 001F31B0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801F6254 001F31B4  C0 DD 00 48 */	lfs f6, 0x48(r29)
/* 801F6258 001F31B8  EC 81 00 28 */	fsubs f4, f1, f0
/* 801F625C 001F31BC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801F6260 001F31C0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801F6264 001F31C4  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 801F6268 001F31C8  EC A1 00 28 */	fsubs f5, f1, f0
/* 801F626C 001F31CC  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 801F6270 001F31D0  EC 04 01 B2 */	fmuls f0, f4, f6
/* 801F6274 001F31D4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801F6278 001F31D8  C0 FD 00 58 */	lfs f7, 0x58(r29)
/* 801F627C 001F31DC  EC 63 08 28 */	fsubs f3, f3, f1
/* 801F6280 001F31E0  EC 25 00 BA */	fmadds f1, f5, f2, f0
/* 801F6284 001F31E4  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F6288 001F31E8  D0 41 00 08 */	stfs f2, 8(r1)
/* 801F628C 001F31EC  EC 43 09 FA */	fmadds f2, f3, f7, f1
/* 801F6290 001F31F0  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 801F6294 001F31F4  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 801F6298 001F31F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F629C 001F31FC  40 81 00 28 */	ble lbl_801F62C4
/* 801F62A0 001F3200  EC 24 01 32 */	fmuls f1, f4, f4
/* 801F62A4 001F3204  C0 1D 03 C4 */	lfs f0, 0x3c4(r29)
/* 801F62A8 001F3208  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801F62AC 001F320C  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 801F62B0 001F3210  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 801F62B4 001F3214  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F62B8 001F3218  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F62BC 001F321C  7C 00 00 26 */	mfcr r0
/* 801F62C0 001F3220  54 1F 17 FE */	rlwinm r31, r0, 2, 0x1f, 0x1f
lbl_801F62C4:
/* 801F62C4 001F3224  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801F62C8 001F3228  7F E3 FB 78 */	mr r3, r31
/* 801F62CC 001F322C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801F62D0 001F3230  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801F62D4 001F3234  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801F62D8 001F3238  7C 08 03 A6 */	mtlr r0
/* 801F62DC 001F323C  38 21 00 40 */	addi r1, r1, 0x40
/* 801F62E0 001F3240  4E 80 00 20 */	blr

.global Leash__10CPatternedFR13CStateManagerf
Leash__10CPatternedFR13CStateManagerf:
/* 801F62E4 001F3244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F62E8 001F3248  C0 23 03 D4 */	lfs f1, 0x3d4(r3)
/* 801F62EC 001F324C  C0 03 03 D0 */	lfs f0, 0x3d0(r3)
/* 801F62F0 001F3250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F62F4 001F3254  7C 00 00 26 */	mfcr r0
/* 801F62F8 001F3258  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 801F62FC 001F325C  41 82 00 64 */	beq lbl_801F6360
/* 801F6300 001F3260  C0 43 03 A4 */	lfs f2, 0x3a4(r3)
/* 801F6304 001F3264  38 00 00 00 */	li r0, 0
/* 801F6308 001F3268  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801F630C 001F326C  C0 23 03 A0 */	lfs f1, 0x3a0(r3)
/* 801F6310 001F3270  EC 82 00 28 */	fsubs f4, f2, f0
/* 801F6314 001F3274  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801F6318 001F3278  C0 63 03 A8 */	lfs f3, 0x3a8(r3)
/* 801F631C 001F327C  EC 41 00 28 */	fsubs f2, f1, f0
/* 801F6320 001F3280  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801F6324 001F3284  EC 04 01 32 */	fmuls f0, f4, f4
/* 801F6328 001F3288  EC 63 08 28 */	fsubs f3, f3, f1
/* 801F632C 001F328C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801F6330 001F3290  EC 22 00 B2 */	fmuls f1, f2, f2
/* 801F6334 001F3294  D0 41 00 08 */	stfs f2, 8(r1)
/* 801F6338 001F3298  EC 43 00 F2 */	fmuls f2, f3, f3
/* 801F633C 001F329C  EC 01 00 2A */	fadds f0, f1, f0
/* 801F6340 001F32A0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801F6344 001F32A4  EC 22 00 2A */	fadds f1, f2, f0
/* 801F6348 001F32A8  41 82 00 18 */	beq lbl_801F6360
/* 801F634C 001F32AC  C0 03 03 C8 */	lfs f0, 0x3c8(r3)
/* 801F6350 001F32B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F6354 001F32B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F6358 001F32B8  40 81 00 08 */	ble lbl_801F6360
/* 801F635C 001F32BC  38 00 00 01 */	li r0, 1
lbl_801F6360:
/* 801F6360 001F32C0  7C 03 03 78 */	mr r3, r0
/* 801F6364 001F32C4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6368 001F32C8  4E 80 00 20 */	blr

.global InDetectionRange__10CPatternedFR13CStateManagerf
InDetectionRange__10CPatternedFR13CStateManagerf:
/* 801F636C 001F32CC  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801F6370 001F32D0  38 00 00 00 */	li r0, 0
/* 801F6374 001F32D4  C0 03 03 BC */	lfs f0, 0x3bc(r3)
/* 801F6378 001F32D8  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801F637C 001F32DC  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801F6380 001F32E0  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F6384 001F32E4  C0 84 00 40 */	lfs f4, 0x40(r4)
/* 801F6388 001F32E8  EC A2 08 28 */	fsubs f5, f2, f1
/* 801F638C 001F32EC  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801F6390 001F32F0  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 801F6394 001F32F4  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801F6398 001F32F8  EC 84 08 28 */	fsubs f4, f4, f1
/* 801F639C 001F32FC  EC 25 01 72 */	fmuls f1, f5, f5
/* 801F63A0 001F3300  EC 43 10 28 */	fsubs f2, f3, f2
/* 801F63A4 001F3304  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 801F63A8 001F3308  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801F63AC 001F330C  EC 22 08 2A */	fadds f1, f2, f1
/* 801F63B0 001F3310  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F63B4 001F3314  40 80 00 28 */	bge lbl_801F63DC
/* 801F63B8 001F3318  C0 23 03 C0 */	lfs f1, 0x3c0(r3)
/* 801F63BC 001F331C  38 00 00 01 */	li r0, 1
/* 801F63C0 001F3320  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F63C4 001F3324  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F63C8 001F3328  40 81 00 14 */	ble lbl_801F63DC
/* 801F63CC 001F332C  EC 01 00 72 */	fmuls f0, f1, f1
/* 801F63D0 001F3330  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F63D4 001F3334  7C 00 00 26 */	mfcr r0
/* 801F63D8 001F3338  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_801F63DC:
/* 801F63DC 001F333C  7C 03 03 78 */	mr r3, r0
/* 801F63E0 001F3340  4E 80 00 20 */	blr

.global InMaxRange__10CPatternedFR13CStateManagerf
InMaxRange__10CPatternedFR13CStateManagerf:
/* 801F63E4 001F3344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F63E8 001F3348  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801F63EC 001F334C  C0 03 03 00 */	lfs f0, 0x300(r3)
/* 801F63F0 001F3350  C0 E4 00 50 */	lfs f7, 0x50(r4)
/* 801F63F4 001F3354  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801F63F8 001F3358  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F63FC 001F335C  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 801F6400 001F3360  EC C7 08 28 */	fsubs f6, f7, f1
/* 801F6404 001F3364  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801F6408 001F3368  C1 04 00 60 */	lfs f8, 0x60(r4)
/* 801F640C 001F336C  EC 82 08 28 */	fsubs f4, f2, f1
/* 801F6410 001F3370  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801F6414 001F3374  D0 41 00 08 */	stfs f2, 8(r1)
/* 801F6418 001F3378  EC A8 18 28 */	fsubs f5, f8, f3
/* 801F641C 001F337C  EC 26 01 B2 */	fmuls f1, f6, f6
/* 801F6420 001F3380  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 801F6424 001F3384  EC 44 01 32 */	fmuls f2, f4, f4
/* 801F6428 001F3388  EC 65 01 72 */	fmuls f3, f5, f5
/* 801F642C 001F338C  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 801F6430 001F3390  EC 22 08 2A */	fadds f1, f2, f1
/* 801F6434 001F3394  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801F6438 001F3398  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 801F643C 001F339C  EC 23 08 2A */	fadds f1, f3, f1
/* 801F6440 001F33A0  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 801F6444 001F33A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F6448 001F33A8  7C 00 00 26 */	mfcr r0
/* 801F644C 001F33AC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F6450 001F33B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6454 001F33B4  4E 80 00 20 */	blr

.global TooClose__10CPatternedFR13CStateManagerf
TooClose__10CPatternedFR13CStateManagerf:
/* 801F6458 001F33B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F645C 001F33BC  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801F6460 001F33C0  C0 03 02 FC */	lfs f0, 0x2fc(r3)
/* 801F6464 001F33C4  C0 E4 00 50 */	lfs f7, 0x50(r4)
/* 801F6468 001F33C8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801F646C 001F33CC  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F6470 001F33D0  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 801F6474 001F33D4  EC C7 08 28 */	fsubs f6, f7, f1
/* 801F6478 001F33D8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801F647C 001F33DC  C1 04 00 60 */	lfs f8, 0x60(r4)
/* 801F6480 001F33E0  EC 82 08 28 */	fsubs f4, f2, f1
/* 801F6484 001F33E4  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801F6488 001F33E8  D0 41 00 08 */	stfs f2, 8(r1)
/* 801F648C 001F33EC  EC A8 18 28 */	fsubs f5, f8, f3
/* 801F6490 001F33F0  EC 26 01 B2 */	fmuls f1, f6, f6
/* 801F6494 001F33F4  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 801F6498 001F33F8  EC 44 01 32 */	fmuls f2, f4, f4
/* 801F649C 001F33FC  EC 65 01 72 */	fmuls f3, f5, f5
/* 801F64A0 001F3400  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 801F64A4 001F3404  EC 22 08 2A */	fadds f1, f2, f1
/* 801F64A8 001F3408  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801F64AC 001F340C  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 801F64B0 001F3410  EC 23 08 2A */	fadds f1, f3, f1
/* 801F64B4 001F3414  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 801F64B8 001F3418  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F64BC 001F341C  7C 00 00 26 */	mfcr r0
/* 801F64C0 001F3420  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F64C4 001F3424  38 21 00 20 */	addi r1, r1, 0x20
/* 801F64C8 001F3428  4E 80 00 20 */	blr

.global InRange__10CPatternedFR13CStateManagerf
InRange__10CPatternedFR13CStateManagerf:
/* 801F64CC 001F342C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F64D0 001F3430  C0 42 AF 48 */	lfs f2, lbl_805ACC68@sda21(r2)
/* 801F64D4 001F3434  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801F64D8 001F3438  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801F64DC 001F343C  C1 44 00 50 */	lfs f10, 0x50(r4)
/* 801F64E0 001F3440  C0 E4 00 40 */	lfs f7, 0x40(r4)
/* 801F64E4 001F3444  ED 2A 00 28 */	fsubs f9, f10, f0
/* 801F64E8 001F3448  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801F64EC 001F344C  C1 64 00 60 */	lfs f11, 0x60(r4)
/* 801F64F0 001F3450  EC C7 00 28 */	fsubs f6, f7, f0
/* 801F64F4 001F3454  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801F64F8 001F3458  C0 23 02 FC */	lfs f1, 0x2fc(r3)
/* 801F64FC 001F345C  ED 0B 00 28 */	fsubs f8, f11, f0
/* 801F6500 001F3460  C0 03 03 00 */	lfs f0, 0x300(r3)
/* 801F6504 001F3464  EC 86 01 B2 */	fmuls f4, f6, f6
/* 801F6508 001F3468  EC 01 00 2A */	fadds f0, f1, f0
/* 801F650C 001F346C  D0 E1 00 08 */	stfs f7, 8(r1)
/* 801F6510 001F3470  EC 69 02 72 */	fmuls f3, f9, f9
/* 801F6514 001F3474  EC A8 02 32 */	fmuls f5, f8, f8
/* 801F6518 001F3478  D1 41 00 0C */	stfs f10, 0xc(r1)
/* 801F651C 001F347C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801F6520 001F3480  EC 24 18 2A */	fadds f1, f4, f3
/* 801F6524 001F3484  D1 61 00 10 */	stfs f11, 0x10(r1)
/* 801F6528 001F3488  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F652C 001F348C  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 801F6530 001F3490  EC 25 08 2A */	fadds f1, f5, f1
/* 801F6534 001F3494  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 801F6538 001F3498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F653C 001F349C  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 801F6540 001F34A0  7C 00 00 26 */	mfcr r0
/* 801F6544 001F34A4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F6548 001F34A8  38 21 00 20 */	addi r1, r1, 0x20
/* 801F654C 001F34AC  4E 80 00 20 */	blr

.global OffLine__10CPatternedFR13CStateManagerf
OffLine__10CPatternedFR13CStateManagerf:
/* 801F6550 001F34B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801F6554 001F34B4  7C 08 02 A6 */	mflr r0
/* 801F6558 001F34B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 801F655C 001F34BC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801F6560 001F34C0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801F6564 001F34C4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801F6568 001F34C8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 801F656C 001F34CC  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 801F6570 001F34D0  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 801F6574 001F34D4  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 801F6578 001F34D8  F3 81 00 28 */	psq_st f28, 40(r1), 0, qr0
/* 801F657C 001F34DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F6580 001F34E0  7C 7F 1B 78 */	mr r31, r3
/* 801F6584 001F34E4  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F6588 001F34E8  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801F658C 001F34EC  FF 80 08 90 */	fmr f28, f1
/* 801F6590 001F34F0  C0 63 02 F0 */	lfs f3, 0x2f0(r3)
/* 801F6594 001F34F4  C0 23 02 E4 */	lfs f1, 0x2e4(r3)
/* 801F6598 001F34F8  EF C2 18 28 */	fsubs f30, f2, f3
/* 801F659C 001F34FC  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 801F65A0 001F3500  EC A1 18 28 */	fsubs f5, f1, f3
/* 801F65A4 001F3504  C0 63 02 EC */	lfs f3, 0x2ec(r3)
/* 801F65A8 001F3508  C0 23 02 E0 */	lfs f1, 0x2e0(r3)
/* 801F65AC 001F350C  EF A2 18 28 */	fsubs f29, f2, f3
/* 801F65B0 001F3510  EC 41 18 28 */	fsubs f2, f1, f3
/* 801F65B4 001F3514  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 801F65B8 001F3518  EC 25 07 B2 */	fmuls f1, f5, f30
/* 801F65BC 001F351C  C0 C3 02 F4 */	lfs f6, 0x2f4(r3)
/* 801F65C0 001F3520  C0 63 02 E8 */	lfs f3, 0x2e8(r3)
/* 801F65C4 001F3524  EF E4 30 28 */	fsubs f31, f4, f6
/* 801F65C8 001F3528  EC 63 30 28 */	fsubs f3, f3, f6
/* 801F65CC 001F352C  D0 41 00 08 */	stfs f2, 8(r1)
/* 801F65D0 001F3530  EC 22 0F 7A */	fmadds f1, f2, f29, f1
/* 801F65D4 001F3534  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 801F65D8 001F3538  EC 23 0F FA */	fmadds f1, f3, f31, f1
/* 801F65DC 001F353C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801F65E0 001F3540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F65E4 001F3544  4C 40 13 82 */	cror 2, 0, 2
/* 801F65E8 001F3548  40 82 00 14 */	bne lbl_801F65FC
/* 801F65EC 001F354C  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 801F65F0 001F3550  EC 1D 07 7A */	fmadds f0, f29, f29, f0
/* 801F65F4 001F3554  EC 5F 07 FA */	fmadds f2, f31, f31, f0
/* 801F65F8 001F3558  48 00 00 90 */	b lbl_801F6688
lbl_801F65FC:
/* 801F65FC 001F355C  38 61 00 08 */	addi r3, r1, 8
/* 801F6600 001F3560  48 11 E2 F9 */	bl Normalize__9CVector3fFv
/* 801F6604 001F3564  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 801F6608 001F3568  C1 41 00 08 */	lfs f10, 8(r1)
/* 801F660C 001F356C  EC 45 07 B2 */	fmuls f2, f5, f30
/* 801F6610 001F3570  C1 61 00 10 */	lfs f11, 0x10(r1)
/* 801F6614 001F3574  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801F6618 001F3578  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 801F661C 001F357C  EC 4A 17 7A */	fmadds f2, f10, f29, f2
/* 801F6620 001F3580  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 801F6624 001F3584  EC E1 00 28 */	fsubs f7, f1, f0
/* 801F6628 001F3588  C0 1F 02 E0 */	lfs f0, 0x2e0(r31)
/* 801F662C 001F358C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 801F6630 001F3590  ED 2B 17 FA */	fmadds f9, f11, f31, f2
/* 801F6634 001F3594  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 801F6638 001F3598  ED 04 00 28 */	fsubs f8, f4, f0
/* 801F663C 001F359C  EC 25 01 F2 */	fmuls f1, f5, f7
/* 801F6640 001F35A0  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F6644 001F35A4  EC A9 01 72 */	fmuls f5, f9, f5
/* 801F6648 001F35A8  EC C9 02 B2 */	fmuls f6, f9, f10
/* 801F664C 001F35AC  EC 89 02 F2 */	fmuls f4, f9, f11
/* 801F6650 001F35B0  ED 3E 28 28 */	fsubs f9, f30, f5
/* 801F6654 001F35B4  EC BD 30 28 */	fsubs f5, f29, f6
/* 801F6658 001F35B8  EC 63 10 28 */	fsubs f3, f3, f2
/* 801F665C 001F35BC  EC 49 02 72 */	fmuls f2, f9, f9
/* 801F6660 001F35C0  EC 2A 0A 3A */	fmadds f1, f10, f8, f1
/* 801F6664 001F35C4  EC 9F 20 28 */	fsubs f4, f31, f4
/* 801F6668 001F35C8  EC 45 11 7A */	fmadds f2, f5, f5, f2
/* 801F666C 001F35CC  EC 2B 08 FA */	fmadds f1, f11, f3, f1
/* 801F6670 001F35D0  EC 44 11 3A */	fmadds f2, f4, f4, f2
/* 801F6674 001F35D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F6678 001F35D8  40 81 00 10 */	ble lbl_801F6688
/* 801F667C 001F35DC  EC 07 01 F2 */	fmuls f0, f7, f7
/* 801F6680 001F35E0  EC 08 02 3A */	fmadds f0, f8, f8, f0
/* 801F6684 001F35E4  EC 43 00 FA */	fmadds f2, f3, f3, f0
lbl_801F6688:
/* 801F6688 001F35E8  EC 1C 07 32 */	fmuls f0, f28, f28
/* 801F668C 001F35EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F6690 001F35F0  7C 00 00 26 */	mfcr r0
/* 801F6694 001F35F4  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801F6698 001F35F8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801F669C 001F35FC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801F66A0 001F3600  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 801F66A4 001F3604  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801F66A8 001F3608  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 801F66AC 001F360C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 801F66B0 001F3610  E3 81 00 28 */	psq_l f28, 40(r1), 0, qr0
/* 801F66B4 001F3614  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 801F66B8 001F3618  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801F66BC 001F361C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F66C0 001F3620  7C 08 03 A6 */	mtlr r0
/* 801F66C4 001F3624  38 21 00 60 */	addi r1, r1, 0x60
/* 801F66C8 001F3628  4E 80 00 20 */	blr

.global PathFind__10CPatternedFR13CStateManager9EStateMsgf
PathFind__10CPatternedFR13CStateManager9EStateMsgf:
/* 801F66CC 001F362C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801F66D0 001F3630  7C 08 02 A6 */	mflr r0
/* 801F66D4 001F3634  90 01 00 64 */	stw r0, 0x64(r1)
/* 801F66D8 001F3638  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801F66DC 001F363C  7C 9F 23 78 */	mr r31, r4
/* 801F66E0 001F3640  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801F66E4 001F3644  7C 7E 1B 78 */	mr r30, r3
/* 801F66E8 001F3648  93 A1 00 54 */	stw r29, 0x54(r1)
/* 801F66EC 001F364C  7C BD 2B 78 */	mr r29, r5
/* 801F66F0 001F3650  81 83 00 00 */	lwz r12, 0(r3)
/* 801F66F4 001F3654  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F66F8 001F3658  7D 89 03 A6 */	mtctr r12
/* 801F66FC 001F365C  4E 80 04 21 */	bctrl
/* 801F6700 001F3660  28 03 00 00 */	cmplwi r3, 0
/* 801F6704 001F3664  41 82 02 A4 */	beq lbl_801F69A8
/* 801F6708 001F3668  2C 1D 00 01 */	cmpwi r29, 1
/* 801F670C 001F366C  41 82 00 DC */	beq lbl_801F67E8
/* 801F6710 001F3670  40 80 02 98 */	bge lbl_801F69A8
/* 801F6714 001F3674  2C 1D 00 00 */	cmpwi r29, 0
/* 801F6718 001F3678  40 80 00 0C */	bge lbl_801F6724
/* 801F671C 001F367C  48 00 02 8C */	b lbl_801F69A8
/* 801F6720 001F3680  48 00 02 88 */	b lbl_801F69A8
lbl_801F6724:
/* 801F6724 001F3684  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801F6728 001F3688  7F C3 F3 78 */	mr r3, r30
/* 801F672C 001F368C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801F6730 001F3690  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801F6734 001F3694  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801F6738 001F3698  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801F673C 001F369C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801F6740 001F36A0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F6744 001F36A4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F6748 001F36A8  7D 89 03 A6 */	mtctr r12
/* 801F674C 001F36AC  4E 80 04 21 */	bctrl
/* 801F6750 001F36B0  38 81 00 20 */	addi r4, r1, 0x20
/* 801F6754 001F36B4  38 BE 02 E0 */	addi r5, r30, 0x2e0
/* 801F6758 001F36B8  4B FD 15 15 */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 801F675C 001F36BC  2C 03 00 00 */	cmpwi r3, 0
/* 801F6760 001F36C0  40 82 02 48 */	bne lbl_801F69A8
/* 801F6764 001F36C4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801F6768 001F36C8  7F C3 F3 78 */	mr r3, r30
/* 801F676C 001F36CC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801F6770 001F36D0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801F6774 001F36D4  D0 1E 02 EC */	stfs f0, 0x2ec(r30)
/* 801F6778 001F36D8  D0 3E 02 F0 */	stfs f1, 0x2f0(r30)
/* 801F677C 001F36DC  D0 5E 02 F4 */	stfs f2, 0x2f4(r30)
/* 801F6780 001F36E0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F6784 001F36E4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F6788 001F36E8  7D 89 03 A6 */	mtctr r12
/* 801F678C 001F36EC  4E 80 04 21 */	bctrl
/* 801F6790 001F36F0  80 A3 00 C8 */	lwz r5, 0xc8(r3)
/* 801F6794 001F36F4  80 03 00 04 */	lwz r0, 4(r3)
/* 801F6798 001F36F8  38 85 00 01 */	addi r4, r5, 1
/* 801F679C 001F36FC  7C 04 00 00 */	cmpw r4, r0
/* 801F67A0 001F3700  40 80 00 14 */	bge lbl_801F67B4
/* 801F67A4 001F3704  1C 04 00 0C */	mulli r0, r4, 0xc
/* 801F67A8 001F3708  7C 83 02 14 */	add r4, r3, r0
/* 801F67AC 001F370C  38 84 00 08 */	addi r4, r4, 8
/* 801F67B0 001F3710  48 00 00 10 */	b lbl_801F67C0
lbl_801F67B4:
/* 801F67B4 001F3714  1C 05 00 0C */	mulli r0, r5, 0xc
/* 801F67B8 001F3718  7C 83 02 14 */	add r4, r3, r0
/* 801F67BC 001F371C  38 84 00 08 */	addi r4, r4, 8
lbl_801F67C0:
/* 801F67C0 001F3720  7F C3 F3 78 */	mr r3, r30
/* 801F67C4 001F3724  4B E8 63 99 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F67C8 001F3728  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F67CC 001F372C  38 60 00 00 */	li r3, 0
/* 801F67D0 001F3730  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F67D4 001F3734  7F C3 F3 78 */	mr r3, r30
/* 801F67D8 001F3738  98 1E 03 28 */	stb r0, 0x328(r30)
/* 801F67DC 001F373C  7F E4 FB 78 */	mr r4, r31
/* 801F67E0 001F3740  4B FF EE 71 */	bl ApproachDest__10CPatternedFR13CStateManager
/* 801F67E4 001F3744  48 00 01 C4 */	b lbl_801F69A8
lbl_801F67E8:
/* 801F67E8 001F3748  7F C3 F3 78 */	mr r3, r30
/* 801F67EC 001F374C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F67F0 001F3750  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F67F4 001F3754  7D 89 03 A6 */	mtctr r12
/* 801F67F8 001F3758  4E 80 04 21 */	bctrl
/* 801F67FC 001F375C  80 83 00 04 */	lwz r4, 4(r3)
/* 801F6800 001F3760  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 801F6804 001F3764  38 04 FF FF */	addi r0, r4, -1
/* 801F6808 001F3768  7C 03 00 00 */	cmpw r3, r0
/* 801F680C 001F376C  40 80 01 9C */	bge lbl_801F69A8
/* 801F6810 001F3770  88 7E 03 28 */	lbz r3, 0x328(r30)
/* 801F6814 001F3774  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801F6818 001F3778  40 82 00 0C */	bne lbl_801F6824
/* 801F681C 001F377C  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 801F6820 001F3780  41 82 00 24 */	beq lbl_801F6844
lbl_801F6824:
/* 801F6824 001F3784  88 9E 04 01 */	lbz r4, 0x401(r30)
/* 801F6828 001F3788  54 83 D7 BE */	rlwinm r3, r4, 0x1a, 0x1e, 0x1f
/* 801F682C 001F378C  38 03 00 01 */	addi r0, r3, 1
/* 801F6830 001F3790  50 04 36 32 */	rlwimi r4, r0, 6, 0x18, 0x19
/* 801F6834 001F3794  98 9E 04 01 */	stb r4, 0x401(r30)
/* 801F6838 001F3798  88 7E 04 01 */	lbz r3, 0x401(r30)
/* 801F683C 001F379C  50 63 06 32 */	rlwimi r3, r3, 0, 0x18, 0x19
/* 801F6840 001F37A0  98 7E 04 01 */	stb r3, 0x401(r30)
lbl_801F6844:
/* 801F6844 001F37A4  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801F6848 001F37A8  C0 A2 AF 40 */	lfs f5, lbl_805ACC60@sda21(r2)
/* 801F684C 001F37AC  38 A3 66 F4 */	addi r5, r3, sUpVector__9CVector3f@l
/* 801F6850 001F37B0  C0 DE 00 50 */	lfs f6, 0x50(r30)
/* 801F6854 001F37B4  C0 45 00 04 */	lfs f2, 4(r5)
/* 801F6858 001F37B8  7F C3 F3 78 */	mr r3, r30
/* 801F685C 001F37BC  C0 25 00 08 */	lfs f1, 8(r5)
/* 801F6860 001F37C0  7F E4 FB 78 */	mr r4, r31
/* 801F6864 001F37C4  C0 05 00 00 */	lfs f0, 0(r5)
/* 801F6868 001F37C8  EC 85 00 B2 */	fmuls f4, f5, f2
/* 801F686C 001F37CC  EC 45 00 72 */	fmuls f2, f5, f1
/* 801F6870 001F37D0  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801F6874 001F37D4  EC 05 00 32 */	fmuls f0, f5, f0
/* 801F6878 001F37D8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801F687C 001F37DC  EC 86 20 2A */	fadds f4, f6, f4
/* 801F6880 001F37E0  EC 63 10 2A */	fadds f3, f3, f2
/* 801F6884 001F37E4  EC 41 00 2A */	fadds f2, f1, f0
/* 801F6888 001F37E8  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801F688C 001F37EC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801F6890 001F37F0  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801F6894 001F37F4  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 801F6898 001F37F8  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 801F689C 001F37FC  EC A0 10 28 */	fsubs f5, f0, f2
/* 801F68A0 001F3800  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 801F68A4 001F3804  EC 21 20 28 */	fsubs f1, f1, f4
/* 801F68A8 001F3808  EC 00 18 28 */	fsubs f0, f0, f3
/* 801F68AC 001F380C  EC 42 28 28 */	fsubs f2, f2, f5
/* 801F68B0 001F3810  EC 24 08 28 */	fsubs f1, f4, f1
/* 801F68B4 001F3814  EC 03 00 28 */	fsubs f0, f3, f0
/* 801F68B8 001F3818  D0 5E 02 EC */	stfs f2, 0x2ec(r30)
/* 801F68BC 001F381C  D0 3E 02 F0 */	stfs f1, 0x2f0(r30)
/* 801F68C0 001F3820  D0 1E 02 F4 */	stfs f0, 0x2f4(r30)
/* 801F68C4 001F3824  4B FF ED 8D */	bl ApproachDest__10CPatternedFR13CStateManager
/* 801F68C8 001F3828  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 801F68CC 001F382C  7F C3 F3 78 */	mr r3, r30
/* 801F68D0 001F3830  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 801F68D4 001F3834  C0 C4 00 04 */	lfs f6, 4(r4)
/* 801F68D8 001F3838  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 801F68DC 001F383C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 801F68E0 001F3840  EC 46 00 B2 */	fmuls f2, f6, f2
/* 801F68E4 001F3844  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 801F68E8 001F3848  EC 86 00 72 */	fmuls f4, f6, f1
/* 801F68EC 001F384C  C0 A1 00 3C */	lfs f5, 0x3c(r1)
/* 801F68F0 001F3850  EC 06 00 32 */	fmuls f0, f6, f0
/* 801F68F4 001F3854  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 801F68F8 001F3858  C0 E4 00 00 */	lfs f7, 0(r4)
/* 801F68FC 001F385C  EC A5 20 2A */	fadds f5, f5, f4
/* 801F6900 001F3860  C0 84 00 08 */	lfs f4, 8(r4)
/* 801F6904 001F3864  EC 43 10 2A */	fadds f2, f3, f2
/* 801F6908 001F3868  EC 01 00 2A */	fadds f0, f1, f0
/* 801F690C 001F386C  D0 E1 00 14 */	stfs f7, 0x14(r1)
/* 801F6910 001F3870  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 801F6914 001F3874  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801F6918 001F3878  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801F691C 001F387C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F6920 001F3880  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 801F6924 001F3884  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F6928 001F3888  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 801F692C 001F388C  D0 E1 00 08 */	stfs f7, 8(r1)
/* 801F6930 001F3890  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 801F6934 001F3894  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 801F6938 001F3898  7D 89 03 A6 */	mtctr r12
/* 801F693C 001F389C  4E 80 04 21 */	bctrl
/* 801F6940 001F38A0  C0 22 88 F4 */	lfs f1, lbl_805AA614@sda21(r2)
/* 801F6944 001F38A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 801F6948 001F38A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801F694C 001F38AC  38 A1 00 38 */	addi r5, r1, 0x38
/* 801F6950 001F38B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 801F6954 001F38B4  4B FD 52 45 */	bl GetSplinePointWithLookahead__15CPathFindSearchCFR9CVector3fRC9CVector3ff
/* 801F6958 001F38B8  7F C3 F3 78 */	mr r3, r30
/* 801F695C 001F38BC  38 81 00 2C */	addi r4, r1, 0x2c
/* 801F6960 001F38C0  4B E8 61 FD */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F6964 001F38C4  7F C3 F3 78 */	mr r3, r30
/* 801F6968 001F38C8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F696C 001F38CC  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F6970 001F38D0  7D 89 03 A6 */	mtctr r12
/* 801F6974 001F38D4  4E 80 04 21 */	bctrl
/* 801F6978 001F38D8  38 81 00 38 */	addi r4, r1, 0x38
/* 801F697C 001F38DC  4B FD 56 C9 */	bl SegmentOver__15CPathFindSearchCFRC9CVector3f
/* 801F6980 001F38E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F6984 001F38E4  41 82 00 24 */	beq lbl_801F69A8
/* 801F6988 001F38E8  7F C3 F3 78 */	mr r3, r30
/* 801F698C 001F38EC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F6990 001F38F0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F6994 001F38F4  7D 89 03 A6 */	mtctr r12
/* 801F6998 001F38F8  4E 80 04 21 */	bctrl
/* 801F699C 001F38FC  80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 801F69A0 001F3900  38 04 00 01 */	addi r0, r4, 1
/* 801F69A4 001F3904  90 03 00 C8 */	stw r0, 0xc8(r3)
lbl_801F69A8:
/* 801F69A8 001F3908  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801F69AC 001F390C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801F69B0 001F3910  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801F69B4 001F3914  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 801F69B8 001F3918  7C 08 03 A6 */	mtlr r0
/* 801F69BC 001F391C  38 21 00 60 */	addi r1, r1, 0x60
/* 801F69C0 001F3920  4E 80 00 20 */	blr

.global Dead__10CPatternedFR13CStateManager9EStateMsgf
Dead__10CPatternedFR13CStateManager9EStateMsgf:
/* 801F69C4 001F3924  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F69C8 001F3928  7C 08 02 A6 */	mflr r0
/* 801F69CC 001F392C  2C 05 00 01 */	cmpwi r5, 1
/* 801F69D0 001F3930  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F69D4 001F3934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F69D8 001F3938  7C 9F 23 78 */	mr r31, r4
/* 801F69DC 001F393C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F69E0 001F3940  7C 7E 1B 78 */	mr r30, r3
/* 801F69E4 001F3944  41 82 00 34 */	beq lbl_801F6A18
/* 801F69E8 001F3948  40 80 00 DC */	bge lbl_801F6AC4
/* 801F69EC 001F394C  2C 05 00 00 */	cmpwi r5, 0
/* 801F69F0 001F3950  40 80 00 08 */	bge lbl_801F69F8
/* 801F69F4 001F3954  48 00 00 D0 */	b lbl_801F6AC4
lbl_801F69F8:
/* 801F69F8 001F3958  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F69FC 001F395C  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801F6A00 001F3960  D0 1E 03 1C */	stfs f0, 0x31c(r30)
/* 801F6A04 001F3964  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F6A08 001F3968  D0 1E 03 20 */	stfs f0, 0x320(r30)
/* 801F6A0C 001F396C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F6A10 001F3970  D0 1E 03 24 */	stfs f0, 0x324(r30)
/* 801F6A14 001F3974  48 00 00 B0 */	b lbl_801F6AC4
lbl_801F6A18:
/* 801F6A18 001F3978  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F6A1C 001F397C  38 00 00 02 */	li r0, 2
/* 801F6A20 001F3980  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801F6A24 001F3984  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F6A28 001F3988  38 81 00 08 */	addi r4, r1, 8
/* 801F6A2C 001F398C  90 61 00 08 */	stw r3, 8(r1)
/* 801F6A30 001F3990  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801F6A34 001F3994  38 63 00 04 */	addi r3, r3, 4
/* 801F6A38 001F3998  4B F3 AD 81 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801F6A3C 001F399C  34 01 00 08 */	addic. r0, r1, 8
/* 801F6A40 001F39A0  41 82 00 10 */	beq lbl_801F6A50
/* 801F6A44 001F39A4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F6A48 001F39A8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801F6A4C 001F39AC  90 01 00 08 */	stw r0, 8(r1)
lbl_801F6A50:
/* 801F6A50 001F39B0  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801F6A54 001F39B4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801F6A58 001F39B8  40 82 00 6C */	bne lbl_801F6AC4
/* 801F6A5C 001F39BC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801F6A60 001F39C0  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801F6A64 001F39C4  4B F3 D6 15 */	bl GetCurrentState__14CBodyStateInfoCFv
/* 801F6A68 001F39C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F6A6C 001F39CC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801F6A70 001F39D0  7D 89 03 A6 */	mtctr r12
/* 801F6A74 001F39D4  4E 80 04 21 */	bctrl
/* 801F6A78 001F39D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F6A7C 001F39DC  41 82 00 48 */	beq lbl_801F6AC4
/* 801F6A80 001F39E0  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801F6A84 001F39E4  38 60 00 01 */	li r3, 1
/* 801F6A88 001F39E8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801F6A8C 001F39EC  C0 02 AF 4C */	lfs f0, lbl_805ACC6C@sda21(r2)
/* 801F6A90 001F39F0  98 1E 04 00 */	stb r0, 0x400(r30)
/* 801F6A94 001F39F4  7F C3 F3 78 */	mr r3, r30
/* 801F6A98 001F39F8  7F E8 FB 78 */	mr r8, r31
/* 801F6A9C 001F39FC  38 80 00 21 */	li r4, 0x21
/* 801F6AA0 001F3A00  D0 1E 03 E8 */	stfs f0, 0x3e8(r30)
/* 801F6AA4 001F3A04  38 A0 00 13 */	li r5, 0x13
/* 801F6AA8 001F3A08  38 C0 00 28 */	li r6, 0x28
/* 801F6AAC 001F3A0C  38 E0 00 29 */	li r7, 0x29
/* 801F6AB0 001F3A10  4B E5 D2 39 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 801F6AB4 001F3A14  7F C3 F3 78 */	mr r3, r30
/* 801F6AB8 001F3A18  7F E5 FB 78 */	mr r5, r31
/* 801F6ABC 001F3A1C  38 80 00 12 */	li r4, 0x12
/* 801F6AC0 001F3A20  4B E5 D8 91 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_801F6AC4:
/* 801F6AC4 001F3A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F6AC8 001F3A28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F6ACC 001F3A2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F6AD0 001F3A30  7C 08 03 A6 */	mtlr r0
/* 801F6AD4 001F3A34  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6AD8 001F3A38  4E 80 00 20 */	blr

.global TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf:
/* 801F6ADC 001F3A3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F6AE0 001F3A40  7C 08 02 A6 */	mflr r0
/* 801F6AE4 001F3A44  2C 05 00 00 */	cmpwi r5, 0
/* 801F6AE8 001F3A48  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F6AEC 001F3A4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F6AF0 001F3A50  7C 7F 1B 78 */	mr r31, r3
/* 801F6AF4 001F3A54  41 82 00 08 */	beq lbl_801F6AFC
/* 801F6AF8 001F3A58  48 00 00 5C */	b lbl_801F6B54
lbl_801F6AFC:
/* 801F6AFC 001F3A5C  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 801F6B00 001F3A60  A0 05 00 08 */	lhz r0, 8(r5)
/* 801F6B04 001F3A64  B0 1F 02 DC */	sth r0, 0x2dc(r31)
/* 801F6B08 001F3A68  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 801F6B0C 001F3A6C  38 81 00 08 */	addi r4, r1, 8
/* 801F6B10 001F3A70  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 801F6B14 001F3A74  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 801F6B18 001F3A78  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801F6B1C 001F3A7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801F6B20 001F3A80  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801F6B24 001F3A84  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801F6B28 001F3A88  4B E8 60 35 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F6B2C 001F3A8C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801F6B30 001F3A90  38 60 00 00 */	li r3, 0
/* 801F6B34 001F3A94  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801F6B38 001F3A98  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801F6B3C 001F3A9C  D0 1F 02 EC */	stfs f0, 0x2ec(r31)
/* 801F6B40 001F3AA0  D0 3F 02 F0 */	stfs f1, 0x2f0(r31)
/* 801F6B44 001F3AA4  D0 5F 02 F4 */	stfs f2, 0x2f4(r31)
/* 801F6B48 001F3AA8  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 801F6B4C 001F3AAC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F6B50 001F3AB0  98 1F 03 28 */	stb r0, 0x328(r31)
lbl_801F6B54:
/* 801F6B54 001F3AB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F6B58 001F3AB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F6B5C 001F3ABC  7C 08 03 A6 */	mtlr r0
/* 801F6B60 001F3AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6B64 001F3AC4  4E 80 00 20 */	blr

.global TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf:
/* 801F6B68 001F3AC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F6B6C 001F3ACC  7C 08 02 A6 */	mflr r0
/* 801F6B70 001F3AD0  2C 05 00 00 */	cmpwi r5, 0
/* 801F6B74 001F3AD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F6B78 001F3AD8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F6B7C 001F3ADC  7C 9F 23 78 */	mr r31, r4
/* 801F6B80 001F3AE0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F6B84 001F3AE4  7C 7E 1B 78 */	mr r30, r3
/* 801F6B88 001F3AE8  41 82 00 08 */	beq lbl_801F6B90
/* 801F6B8C 001F3AEC  48 00 00 9C */	b lbl_801F6C28
lbl_801F6B90:
/* 801F6B90 001F3AF0  7F C4 F3 78 */	mr r4, r30
/* 801F6B94 001F3AF4  7F E5 FB 78 */	mr r5, r31
/* 801F6B98 001F3AF8  38 61 00 0C */	addi r3, r1, 0xc
/* 801F6B9C 001F3AFC  38 C0 00 0D */	li r6, 0xd
/* 801F6BA0 001F3B00  38 E0 00 06 */	li r7, 6
/* 801F6BA4 001F3B04  4B FF E3 F5 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801F6BA8 001F3B08  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801F6BAC 001F3B0C  7F E3 FB 78 */	mr r3, r31
/* 801F6BB0 001F3B10  38 81 00 08 */	addi r4, r1, 8
/* 801F6BB4 001F3B14  B0 1E 02 DC */	sth r0, 0x2dc(r30)
/* 801F6BB8 001F3B18  A0 1E 02 DC */	lhz r0, 0x2dc(r30)
/* 801F6BBC 001F3B1C  B0 01 00 08 */	sth r0, 8(r1)
/* 801F6BC0 001F3B20  4B E5 59 E5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F6BC4 001F3B24  7C 64 1B 78 */	mr r4, r3
/* 801F6BC8 001F3B28  38 61 00 10 */	addi r3, r1, 0x10
/* 801F6BCC 001F3B2C  4B EB 90 C5 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801F6BD0 001F3B30  80 A3 00 04 */	lwz r5, 4(r3)
/* 801F6BD4 001F3B34  28 05 00 00 */	cmplwi r5, 0
/* 801F6BD8 001F3B38  41 82 00 28 */	beq lbl_801F6C00
/* 801F6BDC 001F3B3C  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 801F6BE0 001F3B40  7F C3 F3 78 */	mr r3, r30
/* 801F6BE4 001F3B44  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 801F6BE8 001F3B48  38 81 00 18 */	addi r4, r1, 0x18
/* 801F6BEC 001F3B4C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801F6BF0 001F3B50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801F6BF4 001F3B54  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801F6BF8 001F3B58  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801F6BFC 001F3B5C  4B E8 5F 61 */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_801F6C00:
/* 801F6C00 001F3B60  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801F6C04 001F3B64  38 60 00 00 */	li r3, 0
/* 801F6C08 001F3B68  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801F6C0C 001F3B6C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801F6C10 001F3B70  D0 1E 02 EC */	stfs f0, 0x2ec(r30)
/* 801F6C14 001F3B74  D0 3E 02 F0 */	stfs f1, 0x2f0(r30)
/* 801F6C18 001F3B78  D0 5E 02 F4 */	stfs f2, 0x2f4(r30)
/* 801F6C1C 001F3B7C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F6C20 001F3B80  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F6C24 001F3B84  98 1E 03 28 */	stb r0, 0x328(r30)
lbl_801F6C28:
/* 801F6C28 001F3B88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F6C2C 001F3B8C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F6C30 001F3B90  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F6C34 001F3B94  7C 08 03 A6 */	mtlr r0
/* 801F6C38 001F3B98  38 21 00 30 */	addi r1, r1, 0x30
/* 801F6C3C 001F3B9C  4E 80 00 20 */	blr

.global FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
FollowPattern__10CPatternedFR13CStateManager9EStateMsgf:
/* 801F6C40 001F3BA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F6C44 001F3BA4  7C 08 02 A6 */	mflr r0
/* 801F6C48 001F3BA8  2C 05 00 01 */	cmpwi r5, 1
/* 801F6C4C 001F3BAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F6C50 001F3BB0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801F6C54 001F3BB4  7C 9F 23 78 */	mr r31, r4
/* 801F6C58 001F3BB8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801F6C5C 001F3BBC  7C 7E 1B 78 */	mr r30, r3
/* 801F6C60 001F3BC0  41 82 00 90 */	beq lbl_801F6CF0
/* 801F6C64 001F3BC4  40 80 00 10 */	bge lbl_801F6C74
/* 801F6C68 001F3BC8  2C 05 00 00 */	cmpwi r5, 0
/* 801F6C6C 001F3BCC  40 80 00 14 */	bge lbl_801F6C80
/* 801F6C70 001F3BD0  48 00 01 EC */	b lbl_801F6E5C
lbl_801F6C74:
/* 801F6C74 001F3BD4  2C 05 00 03 */	cmpwi r5, 3
/* 801F6C78 001F3BD8  40 80 01 E4 */	bge lbl_801F6E5C
/* 801F6C7C 001F3BDC  48 00 01 9C */	b lbl_801F6E18
lbl_801F6C80:
/* 801F6C80 001F3BE0  4B FF D7 21 */	bl SetupPattern__10CPatternedFR13CStateManager
/* 801F6C84 001F3BE4  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F6C88 001F3BE8  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801F6C8C 001F3BEC  40 82 00 38 */	bne lbl_801F6CC4
/* 801F6C90 001F3BF0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801F6C94 001F3BF4  7F C3 F3 78 */	mr r3, r30
/* 801F6C98 001F3BF8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801F6C9C 001F3BFC  7F E4 FB 78 */	mr r4, r31
/* 801F6CA0 001F3C00  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801F6CA4 001F3C04  38 A1 00 24 */	addi r5, r1, 0x24
/* 801F6CA8 001F3C08  38 DE 02 E0 */	addi r6, r30, 0x2e0
/* 801F6CAC 001F3C0C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801F6CB0 001F3C10  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801F6CB4 001F3C14  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801F6CB8 001F3C18  4B FF E1 19 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801F6CBC 001F3C1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F6CC0 001F3C20  40 82 00 14 */	bne lbl_801F6CD4
lbl_801F6CC4:
/* 801F6CC4 001F3C24  7F C3 F3 78 */	mr r3, r30
/* 801F6CC8 001F3C28  7F E4 FB 78 */	mr r4, r31
/* 801F6CCC 001F3C2C  4B FF E9 85 */	bl ApproachDest__10CPatternedFR13CStateManager
/* 801F6CD0 001F3C30  48 00 01 8C */	b lbl_801F6E5C
lbl_801F6CD4:
/* 801F6CD4 001F3C34  80 1E 03 90 */	lwz r0, 0x390(r30)
/* 801F6CD8 001F3C38  38 60 00 01 */	li r3, 1
/* 801F6CDC 001F3C3C  90 1E 03 9C */	stw r0, 0x39c(r30)
/* 801F6CE0 001F3C40  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801F6CE4 001F3C44  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801F6CE8 001F3C48  98 1E 04 00 */	stb r0, 0x400(r30)
/* 801F6CEC 001F3C4C  48 00 01 70 */	b lbl_801F6E5C
lbl_801F6CF0:
/* 801F6CF0 001F3C50  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F6CF4 001F3C54  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F6CF8 001F3C58  41 82 01 0C */	beq lbl_801F6E04
/* 801F6CFC 001F3C5C  80 BE 03 9C */	lwz r5, 0x39c(r30)
/* 801F6D00 001F3C60  38 05 00 01 */	addi r0, r5, 1
/* 801F6D04 001F3C64  90 1E 03 9C */	stw r0, 0x39c(r30)
/* 801F6D08 001F3C68  4B FF D3 ED */	bl UpdatePatternDestPos__10CPatternedFR13CStateManager
/* 801F6D0C 001F3C6C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F6D10 001F3C70  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801F6D14 001F3C74  40 82 00 54 */	bne lbl_801F6D68
/* 801F6D18 001F3C78  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801F6D1C 001F3C7C  7F C3 F3 78 */	mr r3, r30
/* 801F6D20 001F3C80  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801F6D24 001F3C84  7F E4 FB 78 */	mr r4, r31
/* 801F6D28 001F3C88  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801F6D2C 001F3C8C  38 A1 00 18 */	addi r5, r1, 0x18
/* 801F6D30 001F3C90  38 DE 02 E0 */	addi r6, r30, 0x2e0
/* 801F6D34 001F3C94  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801F6D38 001F3C98  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801F6D3C 001F3C9C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801F6D40 001F3CA0  4B FF E0 91 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801F6D44 001F3CA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F6D48 001F3CA8  41 82 00 20 */	beq lbl_801F6D68
/* 801F6D4C 001F3CAC  80 1E 03 90 */	lwz r0, 0x390(r30)
/* 801F6D50 001F3CB0  38 60 00 01 */	li r3, 1
/* 801F6D54 001F3CB4  90 1E 03 9C */	stw r0, 0x39c(r30)
/* 801F6D58 001F3CB8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801F6D5C 001F3CBC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801F6D60 001F3CC0  98 1E 04 00 */	stb r0, 0x400(r30)
/* 801F6D64 001F3CC4  48 00 00 A4 */	b lbl_801F6E08
lbl_801F6D68:
/* 801F6D68 001F3CC8  80 7E 03 9C */	lwz r3, 0x39c(r30)
/* 801F6D6C 001F3CCC  80 1E 03 90 */	lwz r0, 0x390(r30)
/* 801F6D70 001F3CD0  7C 03 00 00 */	cmpw r3, r0
/* 801F6D74 001F3CD4  40 80 00 94 */	bge lbl_801F6E08
/* 801F6D78 001F3CD8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801F6D7C 001F3CDC  38 60 00 00 */	li r3, 0
/* 801F6D80 001F3CE0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801F6D84 001F3CE4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801F6D88 001F3CE8  D0 1E 02 EC */	stfs f0, 0x2ec(r30)
/* 801F6D8C 001F3CEC  D0 3E 02 F0 */	stfs f1, 0x2f0(r30)
/* 801F6D90 001F3CF0  D0 5E 02 F4 */	stfs f2, 0x2f4(r30)
/* 801F6D94 001F3CF4  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F6D98 001F3CF8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F6D9C 001F3CFC  98 1E 03 28 */	stb r0, 0x328(r30)
/* 801F6DA0 001F3D00  80 1E 03 9C */	lwz r0, 0x39c(r30)
/* 801F6DA4 001F3D04  80 9E 03 98 */	lwz r4, 0x398(r30)
/* 801F6DA8 001F3D08  1C 60 00 24 */	mulli r3, r0, 0x24
/* 801F6DAC 001F3D0C  38 03 00 18 */	addi r0, r3, 0x18
/* 801F6DB0 001F3D10  7C 04 04 2E */	lfsx f0, r4, r0
/* 801F6DB4 001F3D14  D0 1E 03 B0 */	stfs f0, 0x3b0(r30)
/* 801F6DB8 001F3D18  80 1E 03 9C */	lwz r0, 0x39c(r30)
/* 801F6DBC 001F3D1C  80 9E 03 98 */	lwz r4, 0x398(r30)
/* 801F6DC0 001F3D20  1C 60 00 24 */	mulli r3, r0, 0x24
/* 801F6DC4 001F3D24  38 03 00 1C */	addi r0, r3, 0x1c
/* 801F6DC8 001F3D28  7C 04 00 AE */	lbzx r0, r4, r0
/* 801F6DCC 001F3D2C  90 1E 03 80 */	stw r0, 0x380(r30)
/* 801F6DD0 001F3D30  80 1E 03 9C */	lwz r0, 0x39c(r30)
/* 801F6DD4 001F3D34  80 9E 03 98 */	lwz r4, 0x398(r30)
/* 801F6DD8 001F3D38  1C 60 00 24 */	mulli r3, r0, 0x24
/* 801F6DDC 001F3D3C  38 03 00 1D */	addi r0, r3, 0x1d
/* 801F6DE0 001F3D40  7C 04 00 AE */	lbzx r0, r4, r0
/* 801F6DE4 001F3D44  90 1E 03 0C */	stw r0, 0x30c(r30)
/* 801F6DE8 001F3D48  80 1E 03 9C */	lwz r0, 0x39c(r30)
/* 801F6DEC 001F3D4C  80 9E 03 98 */	lwz r4, 0x398(r30)
/* 801F6DF0 001F3D50  1C 60 00 24 */	mulli r3, r0, 0x24
/* 801F6DF4 001F3D54  38 03 00 1E */	addi r0, r3, 0x1e
/* 801F6DF8 001F3D58  7C 04 02 2E */	lhzx r0, r4, r0
/* 801F6DFC 001F3D5C  90 1E 03 84 */	stw r0, 0x384(r30)
/* 801F6E00 001F3D60  48 00 00 08 */	b lbl_801F6E08
lbl_801F6E04:
/* 801F6E04 001F3D64  4B FF D2 F1 */	bl UpdatePatternDestPos__10CPatternedFR13CStateManager
lbl_801F6E08:
/* 801F6E08 001F3D68  7F C3 F3 78 */	mr r3, r30
/* 801F6E0C 001F3D6C  7F E4 FB 78 */	mr r4, r31
/* 801F6E10 001F3D70  4B FF E8 41 */	bl ApproachDest__10CPatternedFR13CStateManager
/* 801F6E14 001F3D74  48 00 00 48 */	b lbl_801F6E5C
lbl_801F6E18:
/* 801F6E18 001F3D78  80 1E 03 90 */	lwz r0, 0x390(r30)
/* 801F6E1C 001F3D7C  80 7E 03 98 */	lwz r3, 0x398(r30)
/* 801F6E20 001F3D80  1C 00 00 24 */	mulli r0, r0, 0x24
/* 801F6E24 001F3D84  90 61 00 0C */	stw r3, 0xc(r1)
/* 801F6E28 001F3D88  7C 03 02 14 */	add r0, r3, r0
/* 801F6E2C 001F3D8C  90 61 00 08 */	stw r3, 8(r1)
/* 801F6E30 001F3D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F6E34 001F3D94  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F6E38 001F3D98  48 00 00 08 */	b lbl_801F6E40
lbl_801F6E3C:
/* 801F6E3C 001F3D9C  38 63 00 24 */	addi r3, r3, 0x24
lbl_801F6E40:
/* 801F6E40 001F3DA0  7C 03 00 40 */	cmplw r3, r0
/* 801F6E44 001F3DA4  40 82 FF F8 */	bne lbl_801F6E3C
/* 801F6E48 001F3DA8  38 60 00 00 */	li r3, 0
/* 801F6E4C 001F3DAC  90 7E 03 90 */	stw r3, 0x390(r30)
/* 801F6E50 001F3DB0  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801F6E54 001F3DB4  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801F6E58 001F3DB8  98 1E 04 00 */	stb r0, 0x400(r30)
lbl_801F6E5C:
/* 801F6E5C 001F3DBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801F6E60 001F3DC0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801F6E64 001F3DC4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801F6E68 001F3DC8  7C 08 03 A6 */	mtlr r0
/* 801F6E6C 001F3DCC  38 21 00 40 */	addi r1, r1, 0x40
/* 801F6E70 001F3DD0  4E 80 00 20 */	blr

.global Patrol__10CPatternedFR13CStateManager9EStateMsgf
Patrol__10CPatternedFR13CStateManager9EStateMsgf:
/* 801F6E74 001F3DD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F6E78 001F3DD8  7C 08 02 A6 */	mflr r0
/* 801F6E7C 001F3DDC  2C 05 00 01 */	cmpwi r5, 1
/* 801F6E80 001F3DE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F6E84 001F3DE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F6E88 001F3DE8  7C 9F 23 78 */	mr r31, r4
/* 801F6E8C 001F3DEC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F6E90 001F3DF0  7C 7E 1B 78 */	mr r30, r3
/* 801F6E94 001F3DF4  41 82 00 EC */	beq lbl_801F6F80
/* 801F6E98 001F3DF8  40 80 00 10 */	bge lbl_801F6EA8
/* 801F6E9C 001F3DFC  2C 05 00 00 */	cmpwi r5, 0
/* 801F6EA0 001F3E00  40 80 00 14 */	bge lbl_801F6EB4
/* 801F6EA4 001F3E04  48 00 01 E8 */	b lbl_801F708C
lbl_801F6EA8:
/* 801F6EA8 001F3E08  2C 05 00 03 */	cmpwi r5, 3
/* 801F6EAC 001F3E0C  40 80 01 E0 */	bge lbl_801F708C
/* 801F6EB0 001F3E10  48 00 01 CC */	b lbl_801F707C
lbl_801F6EB4:
/* 801F6EB4 001F3E14  A0 7E 03 AC */	lhz r3, 0x3ac(r30)
/* 801F6EB8 001F3E18  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F6EBC 001F3E1C  7C 03 00 40 */	cmplw r3, r0
/* 801F6EC0 001F3E20  40 82 00 84 */	bne lbl_801F6F44
/* 801F6EC4 001F3E24  7F C4 F3 78 */	mr r4, r30
/* 801F6EC8 001F3E28  7F E5 FB 78 */	mr r5, r31
/* 801F6ECC 001F3E2C  38 61 00 10 */	addi r3, r1, 0x10
/* 801F6ED0 001F3E30  38 C0 00 0D */	li r6, 0xd
/* 801F6ED4 001F3E34  38 E0 00 06 */	li r7, 6
/* 801F6ED8 001F3E38  4B FF E0 C1 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801F6EDC 001F3E3C  A0 61 00 10 */	lhz r3, 0x10(r1)
/* 801F6EE0 001F3E40  38 00 00 00 */	li r0, 0
/* 801F6EE4 001F3E44  C0 02 AF 34 */	lfs f0, lbl_805ACC54@sda21(r2)
/* 801F6EE8 001F3E48  B0 7E 02 DC */	sth r3, 0x2dc(r30)
/* 801F6EEC 001F3E4C  90 1E 03 0C */	stw r0, 0x30c(r30)
/* 801F6EF0 001F3E50  D0 1E 03 B0 */	stfs f0, 0x3b0(r30)
/* 801F6EF4 001F3E54  A0 7E 02 DC */	lhz r3, 0x2dc(r30)
/* 801F6EF8 001F3E58  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F6EFC 001F3E5C  7C 03 00 40 */	cmplw r3, r0
/* 801F6F00 001F3E60  41 82 00 48 */	beq lbl_801F6F48
/* 801F6F04 001F3E64  A0 1E 02 DC */	lhz r0, 0x2dc(r30)
/* 801F6F08 001F3E68  7F E3 FB 78 */	mr r3, r31
/* 801F6F0C 001F3E6C  38 81 00 0C */	addi r4, r1, 0xc
/* 801F6F10 001F3E70  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801F6F14 001F3E74  4B E5 56 91 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F6F18 001F3E78  7C 64 1B 78 */	mr r4, r3
/* 801F6F1C 001F3E7C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801F6F20 001F3E80  4B EA F6 2D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F6F24 001F3E84  80 63 00 04 */	lwz r3, 4(r3)
/* 801F6F28 001F3E88  28 03 00 00 */	cmplwi r3, 0
/* 801F6F2C 001F3E8C  41 82 00 1C */	beq lbl_801F6F48
/* 801F6F30 001F3E90  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 801F6F34 001F3E94  90 1E 03 0C */	stw r0, 0x30c(r30)
/* 801F6F38 001F3E98  C0 03 00 E8 */	lfs f0, 0xe8(r3)
/* 801F6F3C 001F3E9C  D0 1E 03 B0 */	stfs f0, 0x3b0(r30)
/* 801F6F40 001F3EA0  48 00 00 08 */	b lbl_801F6F48
lbl_801F6F44:
/* 801F6F44 001F3EA4  B0 7E 02 DC */	sth r3, 0x2dc(r30)
lbl_801F6F48:
/* 801F6F48 001F3EA8  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801F6F4C 001F3EAC  38 60 00 00 */	li r3, 0
/* 801F6F50 001F3EB0  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801F6F54 001F3EB4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801F6F58 001F3EB8  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F6F5C 001F3EBC  D0 3E 02 EC */	stfs f1, 0x2ec(r30)
/* 801F6F60 001F3EC0  D0 5E 02 F0 */	stfs f2, 0x2f0(r30)
/* 801F6F64 001F3EC4  D0 7E 02 F4 */	stfs f3, 0x2f4(r30)
/* 801F6F68 001F3EC8  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F6F6C 001F3ECC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F6F70 001F3ED0  98 1E 03 28 */	stb r0, 0x328(r30)
/* 801F6F74 001F3ED4  90 7E 02 D8 */	stw r3, 0x2d8(r30)
/* 801F6F78 001F3ED8  D0 1E 02 F8 */	stfs f0, 0x2f8(r30)
/* 801F6F7C 001F3EDC  48 00 01 10 */	b lbl_801F708C
lbl_801F6F80:
/* 801F6F80 001F3EE0  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 801F6F84 001F3EE4  2C 00 00 01 */	cmpwi r0, 1
/* 801F6F88 001F3EE8  41 82 00 B8 */	beq lbl_801F7040
/* 801F6F8C 001F3EEC  40 80 00 10 */	bge lbl_801F6F9C
/* 801F6F90 001F3EF0  2C 00 00 00 */	cmpwi r0, 0
/* 801F6F94 001F3EF4  40 80 00 14 */	bge lbl_801F6FA8
/* 801F6F98 001F3EF8  48 00 00 F4 */	b lbl_801F708C
lbl_801F6F9C:
/* 801F6F9C 001F3EFC  2C 00 00 03 */	cmpwi r0, 3
/* 801F6FA0 001F3F00  40 80 00 EC */	bge lbl_801F708C
/* 801F6FA4 001F3F04  48 00 00 BC */	b lbl_801F7060
lbl_801F6FA8:
/* 801F6FA8 001F3F08  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F6FAC 001F3F0C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F6FB0 001F3F10  41 82 00 5C */	beq lbl_801F700C
/* 801F6FB4 001F3F14  A0 7E 02 DC */	lhz r3, 0x2dc(r30)
/* 801F6FB8 001F3F18  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F6FBC 001F3F1C  7C 03 00 40 */	cmplw r3, r0
/* 801F6FC0 001F3F20  41 82 00 4C */	beq lbl_801F700C
/* 801F6FC4 001F3F24  A0 1E 02 DC */	lhz r0, 0x2dc(r30)
/* 801F6FC8 001F3F28  7F E3 FB 78 */	mr r3, r31
/* 801F6FCC 001F3F2C  38 81 00 08 */	addi r4, r1, 8
/* 801F6FD0 001F3F30  B0 01 00 08 */	sth r0, 8(r1)
/* 801F6FD4 001F3F34  4B E5 55 D1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F6FD8 001F3F38  7C 64 1B 78 */	mr r4, r3
/* 801F6FDC 001F3F3C  38 61 00 14 */	addi r3, r1, 0x14
/* 801F6FE0 001F3F40  4B EA F5 6D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F6FE4 001F3F44  80 63 00 04 */	lwz r3, 4(r3)
/* 801F6FE8 001F3F48  28 03 00 00 */	cmplwi r3, 0
/* 801F6FEC 001F3F4C  41 82 00 20 */	beq lbl_801F700C
/* 801F6FF0 001F3F50  C0 23 00 F0 */	lfs f1, 0xf0(r3)
/* 801F6FF4 001F3F54  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F6FF8 001F3F58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F6FFC 001F3F5C  40 81 00 10 */	ble lbl_801F700C
/* 801F7000 001F3F60  D0 3E 02 F8 */	stfs f1, 0x2f8(r30)
/* 801F7004 001F3F64  38 00 00 01 */	li r0, 1
/* 801F7008 001F3F68  90 1E 02 D8 */	stw r0, 0x2d8(r30)
lbl_801F700C:
/* 801F700C 001F3F6C  A0 7E 02 DC */	lhz r3, 0x2dc(r30)
/* 801F7010 001F3F70  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F7014 001F3F74  7C 03 00 40 */	cmplw r3, r0
/* 801F7018 001F3F78  40 82 00 0C */	bne lbl_801F7024
/* 801F701C 001F3F7C  38 00 00 02 */	li r0, 2
/* 801F7020 001F3F80  90 1E 02 D8 */	stw r0, 0x2d8(r30)
lbl_801F7024:
/* 801F7024 001F3F84  7F C3 F3 78 */	mr r3, r30
/* 801F7028 001F3F88  7F E4 FB 78 */	mr r4, r31
/* 801F702C 001F3F8C  4B FF E2 65 */	bl UpdateDest__10CPatternedFR13CStateManager
/* 801F7030 001F3F90  7F C3 F3 78 */	mr r3, r30
/* 801F7034 001F3F94  7F E4 FB 78 */	mr r4, r31
/* 801F7038 001F3F98  4B FF E6 19 */	bl ApproachDest__10CPatternedFR13CStateManager
/* 801F703C 001F3F9C  48 00 00 50 */	b lbl_801F708C
lbl_801F7040:
/* 801F7040 001F3FA0  C0 3E 02 F8 */	lfs f1, 0x2f8(r30)
/* 801F7044 001F3FA4  C0 02 AF 20 */	lfs f0, lbl_805ACC40@sda21(r2)
/* 801F7048 001F3FA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F704C 001F3FAC  4C 40 13 82 */	cror 2, 0, 2
/* 801F7050 001F3FB0  40 82 00 3C */	bne lbl_801F708C
/* 801F7054 001F3FB4  38 00 00 00 */	li r0, 0
/* 801F7058 001F3FB8  90 1E 02 D8 */	stw r0, 0x2d8(r30)
/* 801F705C 001F3FBC  48 00 00 30 */	b lbl_801F708C
lbl_801F7060:
/* 801F7060 001F3FC0  A0 7E 02 DC */	lhz r3, 0x2dc(r30)
/* 801F7064 001F3FC4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F7068 001F3FC8  7C 03 00 40 */	cmplw r3, r0
/* 801F706C 001F3FCC  41 82 00 20 */	beq lbl_801F708C
/* 801F7070 001F3FD0  38 00 00 00 */	li r0, 0
/* 801F7074 001F3FD4  90 1E 02 D8 */	stw r0, 0x2d8(r30)
/* 801F7078 001F3FD8  48 00 00 14 */	b lbl_801F708C
lbl_801F707C:
/* 801F707C 001F3FDC  A0 7E 02 DC */	lhz r3, 0x2dc(r30)
/* 801F7080 001F3FE0  38 00 FF FF */	li r0, -1
/* 801F7084 001F3FE4  B0 7E 03 AC */	sth r3, 0x3ac(r30)
/* 801F7088 001F3FE8  90 1E 02 D8 */	stw r0, 0x2d8(r30)
lbl_801F708C:
/* 801F708C 001F3FEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F7090 001F3FF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F7094 001F3FF4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F7098 001F3FF8  7C 08 03 A6 */	mtlr r0
/* 801F709C 001F3FFC  38 21 00 30 */	addi r1, r1, 0x30
/* 801F70A0 001F4000  4E 80 00 20 */	blr

.global Start__10CPatternedFR13CStateManager9EStateMsgf
Start__10CPatternedFR13CStateManager9EStateMsgf:
/* 801F70A4 001F4004  4E 80 00 20 */	blr

.global "reserve__Q24rstl63vector<Q210CPatterned12CPatternNode,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl63vector<Q210CPatterned12CPatternNode,Q24rstl17rmemory_allocator>Fi":
/* 801F70A8 001F4008  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F70AC 001F400C  7C 08 02 A6 */	mflr r0
/* 801F70B0 001F4010  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F70B4 001F4014  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F70B8 001F4018  7C 9F 23 78 */	mr r31, r4
/* 801F70BC 001F401C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F70C0 001F4020  7C 7E 1B 78 */	mr r30, r3
/* 801F70C4 001F4024  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801F70C8 001F4028  80 03 00 08 */	lwz r0, 8(r3)
/* 801F70CC 001F402C  7C 1F 00 00 */	cmpw r31, r0
/* 801F70D0 001F4030  40 81 00 FC */	ble lbl_801F71CC
/* 801F70D4 001F4034  1C 7F 00 24 */	mulli r3, r31, 0x24
/* 801F70D8 001F4038  2C 03 00 00 */	cmpwi r3, 0
/* 801F70DC 001F403C  40 82 00 0C */	bne lbl_801F70E8
/* 801F70E0 001F4040  3B A0 00 00 */	li r29, 0
/* 801F70E4 001F4044  48 00 00 18 */	b lbl_801F70FC
lbl_801F70E8:
/* 801F70E8 001F4048  3C 80 80 3D */	lis r4, lbl_803D2070@ha
/* 801F70EC 001F404C  38 A0 00 00 */	li r5, 0
/* 801F70F0 001F4050  38 84 20 70 */	addi r4, r4, lbl_803D2070@l
/* 801F70F4 001F4054  48 11 E7 25 */	bl __nwa__FUlPCcPCc
/* 801F70F8 001F4058  7C 7D 1B 78 */	mr r29, r3
lbl_801F70FC:
/* 801F70FC 001F405C  80 1E 00 04 */	lwz r0, 4(r30)
/* 801F7100 001F4060  7F A4 EB 78 */	mr r4, r29
/* 801F7104 001F4064  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 801F7108 001F4068  1C 00 00 24 */	mulli r0, r0, 0x24
/* 801F710C 001F406C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801F7110 001F4070  7C 65 02 14 */	add r3, r5, r0
/* 801F7114 001F4074  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801F7118 001F4078  90 61 00 08 */	stw r3, 8(r1)
/* 801F711C 001F407C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801F7120 001F4080  48 00 00 6C */	b lbl_801F718C
lbl_801F7124:
/* 801F7124 001F4084  28 04 00 00 */	cmplwi r4, 0
/* 801F7128 001F4088  41 82 00 5C */	beq lbl_801F7184
/* 801F712C 001F408C  C0 05 00 00 */	lfs f0, 0(r5)
/* 801F7130 001F4090  D0 04 00 00 */	stfs f0, 0(r4)
/* 801F7134 001F4094  C0 05 00 04 */	lfs f0, 4(r5)
/* 801F7138 001F4098  D0 04 00 04 */	stfs f0, 4(r4)
/* 801F713C 001F409C  C0 05 00 08 */	lfs f0, 8(r5)
/* 801F7140 001F40A0  D0 04 00 08 */	stfs f0, 8(r4)
/* 801F7144 001F40A4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 801F7148 001F40A8  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801F714C 001F40AC  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 801F7150 001F40B0  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 801F7154 001F40B4  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 801F7158 001F40B8  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 801F715C 001F40BC  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 801F7160 001F40C0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 801F7164 001F40C4  88 05 00 1C */	lbz r0, 0x1c(r5)
/* 801F7168 001F40C8  98 04 00 1C */	stb r0, 0x1c(r4)
/* 801F716C 001F40CC  88 05 00 1D */	lbz r0, 0x1d(r5)
/* 801F7170 001F40D0  98 04 00 1D */	stb r0, 0x1d(r4)
/* 801F7174 001F40D4  A0 05 00 1E */	lhz r0, 0x1e(r5)
/* 801F7178 001F40D8  B0 04 00 1E */	sth r0, 0x1e(r4)
/* 801F717C 001F40DC  80 05 00 20 */	lwz r0, 0x20(r5)
/* 801F7180 001F40E0  90 04 00 20 */	stw r0, 0x20(r4)
lbl_801F7184:
/* 801F7184 001F40E4  38 84 00 24 */	addi r4, r4, 0x24
/* 801F7188 001F40E8  38 A5 00 24 */	addi r5, r5, 0x24
lbl_801F718C:
/* 801F718C 001F40EC  7C 05 18 40 */	cmplw r5, r3
/* 801F7190 001F40F0  40 82 FF 94 */	bne lbl_801F7124
/* 801F7194 001F40F4  80 1E 00 04 */	lwz r0, 4(r30)
/* 801F7198 001F40F8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801F719C 001F40FC  1C 00 00 24 */	mulli r0, r0, 0x24
/* 801F71A0 001F4100  7C 64 1B 78 */	mr r4, r3
/* 801F71A4 001F4104  7C 03 02 14 */	add r0, r3, r0
/* 801F71A8 001F4108  48 00 00 08 */	b lbl_801F71B0
lbl_801F71AC:
/* 801F71AC 001F410C  38 84 00 24 */	addi r4, r4, 0x24
lbl_801F71B0:
/* 801F71B0 001F4110  7C 04 00 40 */	cmplw r4, r0
/* 801F71B4 001F4114  40 82 FF F8 */	bne lbl_801F71AC
/* 801F71B8 001F4118  28 03 00 00 */	cmplwi r3, 0
/* 801F71BC 001F411C  41 82 00 08 */	beq lbl_801F71C4
/* 801F71C0 001F4120  48 11 E7 71 */	bl Free__7CMemoryFPCv
lbl_801F71C4:
/* 801F71C4 001F4124  93 BE 00 0C */	stw r29, 0xc(r30)
/* 801F71C8 001F4128  93 FE 00 08 */	stw r31, 8(r30)
lbl_801F71CC:
/* 801F71CC 001F412C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F71D0 001F4130  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F71D4 001F4134  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F71D8 001F4138  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801F71DC 001F413C  7C 08 03 A6 */	mtlr r0
/* 801F71E0 001F4140  38 21 00 30 */	addi r1, r1, 0x30
/* 801F71E4 001F4144  4E 80 00 20 */	blr

.global __dt__13CFlyingPirateFv
__dt__13CFlyingPirateFv:
/* 801F71E8 001F4148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F71EC 001F414C  7C 08 02 A6 */	mflr r0
/* 801F71F0 001F4150  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F71F4 001F4154  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F71F8 001F4158  7C 9F 23 78 */	mr r31, r4
/* 801F71FC 001F415C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F7200 001F4160  7C 7E 1B 79 */	or. r30, r3, r3
/* 801F7204 001F4164  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801F7208 001F4168  93 81 00 10 */	stw r28, 0x10(r1)
/* 801F720C 001F416C  41 82 02 34 */	beq lbl_801F7440
/* 801F7210 001F4170  3C 60 80 3E */	lis r3, __vt__13CFlyingPirate@ha
/* 801F7214 001F4174  34 1E 08 9C */	addic. r0, r30, 0x89c
/* 801F7218 001F4178  38 03 68 5C */	addi r0, r3, __vt__13CFlyingPirate@l
/* 801F721C 001F417C  90 1E 00 00 */	stw r0, 0(r30)
/* 801F7220 001F4180  41 82 00 10 */	beq lbl_801F7230
/* 801F7224 001F4184  80 7E 08 9C */	lwz r3, 0x89c(r30)
/* 801F7228 001F4188  38 80 00 01 */	li r4, 1
/* 801F722C 001F418C  48 00 8C DD */	bl __dt__20CFlyingPirateRagDollFv
lbl_801F7230:
/* 801F7230 001F4190  34 1E 08 64 */	addic. r0, r30, 0x864
/* 801F7234 001F4194  41 82 00 58 */	beq lbl_801F728C
/* 801F7238 001F4198  80 BE 08 64 */	lwz r5, 0x864(r30)
/* 801F723C 001F419C  38 60 00 00 */	li r3, 0
/* 801F7240 001F41A0  2C 05 00 00 */	cmpwi r5, 0
/* 801F7244 001F41A4  40 81 00 40 */	ble lbl_801F7284
/* 801F7248 001F41A8  2C 05 00 08 */	cmpwi r5, 8
/* 801F724C 001F41AC  38 85 FF F8 */	addi r4, r5, -8
/* 801F7250 001F41B0  40 81 00 20 */	ble lbl_801F7270
/* 801F7254 001F41B4  38 04 00 07 */	addi r0, r4, 7
/* 801F7258 001F41B8  54 00 E8 FE */	srwi r0, r0, 3
/* 801F725C 001F41BC  7C 09 03 A6 */	mtctr r0
/* 801F7260 001F41C0  2C 04 00 00 */	cmpwi r4, 0
/* 801F7264 001F41C4  40 81 00 0C */	ble lbl_801F7270
lbl_801F7268:
/* 801F7268 001F41C8  38 63 00 08 */	addi r3, r3, 8
/* 801F726C 001F41CC  42 00 FF FC */	bdnz lbl_801F7268
lbl_801F7270:
/* 801F7270 001F41D0  7C 03 28 50 */	subf r0, r3, r5
/* 801F7274 001F41D4  7C 09 03 A6 */	mtctr r0
/* 801F7278 001F41D8  7C 03 28 00 */	cmpw r3, r5
/* 801F727C 001F41DC  40 80 00 08 */	bge lbl_801F7284
lbl_801F7280:
/* 801F7280 001F41E0  42 00 00 00 */	bdnz lbl_801F7280
lbl_801F7284:
/* 801F7284 001F41E4  38 00 00 00 */	li r0, 0
/* 801F7288 001F41E8  90 1E 08 64 */	stw r0, 0x864(r30)
lbl_801F728C:
/* 801F728C 001F41EC  34 1E 07 EC */	addic. r0, r30, 0x7ec
/* 801F7290 001F41F0  41 82 00 60 */	beq lbl_801F72F0
/* 801F7294 001F41F4  34 1E 08 08 */	addic. r0, r30, 0x808
/* 801F7298 001F41F8  41 82 00 58 */	beq lbl_801F72F0
/* 801F729C 001F41FC  80 BE 08 08 */	lwz r5, 0x808(r30)
/* 801F72A0 001F4200  38 60 00 00 */	li r3, 0
/* 801F72A4 001F4204  2C 05 00 00 */	cmpwi r5, 0
/* 801F72A8 001F4208  40 81 00 40 */	ble lbl_801F72E8
/* 801F72AC 001F420C  2C 05 00 08 */	cmpwi r5, 8
/* 801F72B0 001F4210  38 85 FF F8 */	addi r4, r5, -8
/* 801F72B4 001F4214  40 81 00 20 */	ble lbl_801F72D4
/* 801F72B8 001F4218  38 04 00 07 */	addi r0, r4, 7
/* 801F72BC 001F421C  54 00 E8 FE */	srwi r0, r0, 3
/* 801F72C0 001F4220  7C 09 03 A6 */	mtctr r0
/* 801F72C4 001F4224  2C 04 00 00 */	cmpwi r4, 0
/* 801F72C8 001F4228  40 81 00 0C */	ble lbl_801F72D4
lbl_801F72CC:
/* 801F72CC 001F422C  38 63 00 08 */	addi r3, r3, 8
/* 801F72D0 001F4230  42 00 FF FC */	bdnz lbl_801F72CC
lbl_801F72D4:
/* 801F72D4 001F4234  7C 03 28 50 */	subf r0, r3, r5
/* 801F72D8 001F4238  7C 09 03 A6 */	mtctr r0
/* 801F72DC 001F423C  7C 03 28 00 */	cmpw r3, r5
/* 801F72E0 001F4240  40 80 00 08 */	bge lbl_801F72E8
lbl_801F72E4:
/* 801F72E4 001F4244  42 00 00 00 */	bdnz lbl_801F72E4
lbl_801F72E8:
/* 801F72E8 001F4248  38 00 00 00 */	li r0, 0
/* 801F72EC 001F424C  90 1E 08 08 */	stw r0, 0x808(r30)
lbl_801F72F0:
/* 801F72F0 001F4250  34 1E 07 A0 */	addic. r0, r30, 0x7a0
/* 801F72F4 001F4254  41 82 00 14 */	beq lbl_801F7308
/* 801F72F8 001F4258  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 801F72FC 001F425C  41 82 00 0C */	beq lbl_801F7308
/* 801F7300 001F4260  38 00 00 00 */	li r0, 0
/* 801F7304 001F4264  98 1E 07 D0 */	stb r0, 0x7d0(r30)
lbl_801F7308:
/* 801F7308 001F4268  34 1E 06 A8 */	addic. r0, r30, 0x6a8
/* 801F730C 001F426C  41 82 00 60 */	beq lbl_801F736C
/* 801F7310 001F4270  34 1E 06 AC */	addic. r0, r30, 0x6ac
/* 801F7314 001F4274  41 82 00 58 */	beq lbl_801F736C
/* 801F7318 001F4278  80 BE 06 AC */	lwz r5, 0x6ac(r30)
/* 801F731C 001F427C  38 60 00 00 */	li r3, 0
/* 801F7320 001F4280  2C 05 00 00 */	cmpwi r5, 0
/* 801F7324 001F4284  40 81 00 40 */	ble lbl_801F7364
/* 801F7328 001F4288  2C 05 00 08 */	cmpwi r5, 8
/* 801F732C 001F428C  38 85 FF F8 */	addi r4, r5, -8
/* 801F7330 001F4290  40 81 00 20 */	ble lbl_801F7350
/* 801F7334 001F4294  38 04 00 07 */	addi r0, r4, 7
/* 801F7338 001F4298  54 00 E8 FE */	srwi r0, r0, 3
/* 801F733C 001F429C  7C 09 03 A6 */	mtctr r0
/* 801F7340 001F42A0  2C 04 00 00 */	cmpwi r4, 0
/* 801F7344 001F42A4  40 81 00 0C */	ble lbl_801F7350
lbl_801F7348:
/* 801F7348 001F42A8  38 63 00 08 */	addi r3, r3, 8
/* 801F734C 001F42AC  42 00 FF FC */	bdnz lbl_801F7348
lbl_801F7350:
/* 801F7350 001F42B0  7C 03 28 50 */	subf r0, r3, r5
/* 801F7354 001F42B4  7C 09 03 A6 */	mtctr r0
/* 801F7358 001F42B8  7C 03 28 00 */	cmpw r3, r5
/* 801F735C 001F42BC  40 80 00 08 */	bge lbl_801F7364
lbl_801F7360:
/* 801F7360 001F42C0  42 00 00 00 */	bdnz lbl_801F7360
lbl_801F7364:
/* 801F7364 001F42C4  38 00 00 00 */	li r0, 0
/* 801F7368 001F42C8  90 1E 06 AC */	stw r0, 0x6ac(r30)
lbl_801F736C:
/* 801F736C 001F42CC  34 1E 06 84 */	addic. r0, r30, 0x684
/* 801F7370 001F42D0  41 82 00 60 */	beq lbl_801F73D0
/* 801F7374 001F42D4  3B 9E 06 88 */	addi r28, r30, 0x688
/* 801F7378 001F42D8  3B A0 00 00 */	li r29, 0
/* 801F737C 001F42DC  48 00 00 40 */	b lbl_801F73BC
lbl_801F7380:
/* 801F7380 001F42E0  28 1C 00 00 */	cmplwi r28, 0
/* 801F7384 001F42E4  41 82 00 30 */	beq lbl_801F73B4
/* 801F7388 001F42E8  88 1C 00 00 */	lbz r0, 0(r28)
/* 801F738C 001F42EC  28 00 00 00 */	cmplwi r0, 0
/* 801F7390 001F42F0  41 82 00 24 */	beq lbl_801F73B4
/* 801F7394 001F42F4  80 7C 00 04 */	lwz r3, 4(r28)
/* 801F7398 001F42F8  28 03 00 00 */	cmplwi r3, 0
/* 801F739C 001F42FC  41 82 00 18 */	beq lbl_801F73B4
/* 801F73A0 001F4300  81 83 00 00 */	lwz r12, 0(r3)
/* 801F73A4 001F4304  38 80 00 01 */	li r4, 1
/* 801F73A8 001F4308  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F73AC 001F430C  7D 89 03 A6 */	mtctr r12
/* 801F73B0 001F4310  4E 80 04 21 */	bctrl
lbl_801F73B4:
/* 801F73B4 001F4314  3B 9C 00 08 */	addi r28, r28, 8
/* 801F73B8 001F4318  3B BD 00 01 */	addi r29, r29, 1
lbl_801F73BC:
/* 801F73BC 001F431C  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 801F73C0 001F4320  7C 1D 00 00 */	cmpw r29, r0
/* 801F73C4 001F4324  41 80 FF BC */	blt lbl_801F7380
/* 801F73C8 001F4328  38 00 00 00 */	li r0, 0
/* 801F73CC 001F432C  90 1E 06 84 */	stw r0, 0x684(r30)
lbl_801F73D0:
/* 801F73D0 001F4330  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 801F73D4 001F4334  41 82 00 44 */	beq lbl_801F7418
/* 801F73D8 001F4338  3B 9E 06 60 */	addi r28, r30, 0x660
/* 801F73DC 001F433C  3B A0 00 00 */	li r29, 0
/* 801F73E0 001F4340  48 00 00 24 */	b lbl_801F7404
lbl_801F73E4:
/* 801F73E4 001F4344  28 1C 00 00 */	cmplwi r28, 0
/* 801F73E8 001F4348  41 82 00 14 */	beq lbl_801F73FC
/* 801F73EC 001F434C  41 82 00 10 */	beq lbl_801F73FC
/* 801F73F0 001F4350  7F 83 E3 78 */	mr r3, r28
/* 801F73F4 001F4354  38 80 00 00 */	li r4, 0
/* 801F73F8 001F4358  48 14 9A 49 */	bl __dt__6CTokenFv
lbl_801F73FC:
/* 801F73FC 001F435C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 801F7400 001F4360  3B BD 00 01 */	addi r29, r29, 1
lbl_801F7404:
/* 801F7404 001F4364  80 1E 06 5C */	lwz r0, 0x65c(r30)
/* 801F7408 001F4368  7C 1D 00 00 */	cmpw r29, r0
/* 801F740C 001F436C  41 80 FF D8 */	blt lbl_801F73E4
/* 801F7410 001F4370  38 00 00 00 */	li r0, 0
/* 801F7414 001F4374  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_801F7418:
/* 801F7418 001F4378  38 7E 05 68 */	addi r3, r30, 0x568
/* 801F741C 001F437C  38 80 FF FF */	li r4, -1
/* 801F7420 001F4380  48 00 00 45 */	bl sub_801f7464
/* 801F7424 001F4384  7F C3 F3 78 */	mr r3, r30
/* 801F7428 001F4388  38 80 00 00 */	li r4, 0
/* 801F742C 001F438C  4B E8 01 45 */	bl __dt__10CPatternedFv
/* 801F7430 001F4390  7F E0 07 35 */	extsh. r0, r31
/* 801F7434 001F4394  40 81 00 0C */	ble lbl_801F7440
/* 801F7438 001F4398  7F C3 F3 78 */	mr r3, r30
/* 801F743C 001F439C  48 11 E4 F5 */	bl Free__7CMemoryFPCv
lbl_801F7440:
/* 801F7440 001F43A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F7444 001F43A4  7F C3 F3 78 */	mr r3, r30
/* 801F7448 001F43A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F744C 001F43AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F7450 001F43B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801F7454 001F43B4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801F7458 001F43B8  7C 08 03 A6 */	mtlr r0
/* 801F745C 001F43BC  38 21 00 20 */	addi r1, r1, 0x20
/* 801F7460 001F43C0  4E 80 00 20 */	blr

.global sub_801f7464
sub_801f7464:
/* 801F7464 001F43C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F7468 001F43C8  7C 08 02 A6 */	mflr r0
/* 801F746C 001F43CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F7470 001F43D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F7474 001F43D4  7C 9F 23 78 */	mr r31, r4
/* 801F7478 001F43D8  93 C1 00 08 */	stw r30, 8(r1)
/* 801F747C 001F43DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 801F7480 001F43E0  41 82 00 9C */	beq lbl_801F751C
/* 801F7484 001F43E4  34 1E 00 90 */	addic. r0, r30, 0x90
/* 801F7488 001F43E8  41 82 00 18 */	beq lbl_801F74A0
/* 801F748C 001F43EC  34 1E 00 90 */	addic. r0, r30, 0x90
/* 801F7490 001F43F0  41 82 00 10 */	beq lbl_801F74A0
/* 801F7494 001F43F4  38 7E 00 90 */	addi r3, r30, 0x90
/* 801F7498 001F43F8  38 80 00 00 */	li r4, 0
/* 801F749C 001F43FC  48 14 99 A5 */	bl __dt__6CTokenFv
lbl_801F74A0:
/* 801F74A0 001F4400  34 1E 00 60 */	addic. r0, r30, 0x60
/* 801F74A4 001F4404  41 82 00 20 */	beq lbl_801F74C4
/* 801F74A8 001F4408  34 1E 00 60 */	addic. r0, r30, 0x60
/* 801F74AC 001F440C  41 82 00 18 */	beq lbl_801F74C4
/* 801F74B0 001F4410  34 1E 00 60 */	addic. r0, r30, 0x60
/* 801F74B4 001F4414  41 82 00 10 */	beq lbl_801F74C4
/* 801F74B8 001F4418  38 7E 00 60 */	addi r3, r30, 0x60
/* 801F74BC 001F441C  38 80 00 00 */	li r4, 0
/* 801F74C0 001F4420  48 14 99 81 */	bl __dt__6CTokenFv
lbl_801F74C4:
/* 801F74C4 001F4424  34 1E 00 38 */	addic. r0, r30, 0x38
/* 801F74C8 001F4428  41 82 00 20 */	beq lbl_801F74E8
/* 801F74CC 001F442C  34 1E 00 38 */	addic. r0, r30, 0x38
/* 801F74D0 001F4430  41 82 00 18 */	beq lbl_801F74E8
/* 801F74D4 001F4434  34 1E 00 38 */	addic. r0, r30, 0x38
/* 801F74D8 001F4438  41 82 00 10 */	beq lbl_801F74E8
/* 801F74DC 001F443C  38 7E 00 38 */	addi r3, r30, 0x38
/* 801F74E0 001F4440  38 80 00 00 */	li r4, 0
/* 801F74E4 001F4444  48 14 99 5D */	bl __dt__6CTokenFv
lbl_801F74E8:
/* 801F74E8 001F4448  34 1E 00 0C */	addic. r0, r30, 0xc
/* 801F74EC 001F444C  41 82 00 20 */	beq lbl_801F750C
/* 801F74F0 001F4450  34 1E 00 0C */	addic. r0, r30, 0xc
/* 801F74F4 001F4454  41 82 00 18 */	beq lbl_801F750C
/* 801F74F8 001F4458  34 1E 00 0C */	addic. r0, r30, 0xc
/* 801F74FC 001F445C  41 82 00 10 */	beq lbl_801F750C
/* 801F7500 001F4460  38 7E 00 0C */	addi r3, r30, 0xc
/* 801F7504 001F4464  38 80 00 00 */	li r4, 0
/* 801F7508 001F4468  48 14 99 39 */	bl __dt__6CTokenFv
lbl_801F750C:
/* 801F750C 001F446C  7F E0 07 35 */	extsh. r0, r31
/* 801F7510 001F4470  40 81 00 0C */	ble lbl_801F751C
/* 801F7514 001F4474  7F C3 F3 78 */	mr r3, r30
/* 801F7518 001F4478  48 11 E4 19 */	bl Free__7CMemoryFPCv
lbl_801F751C:
/* 801F751C 001F447C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F7520 001F4480  7F C3 F3 78 */	mr r3, r30
/* 801F7524 001F4484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F7528 001F4488  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F752C 001F448C  7C 08 03 A6 */	mtlr r0
/* 801F7530 001F4490  38 21 00 10 */	addi r1, r1, 0x10
/* 801F7534 001F4494  4E 80 00 20 */	blr

.global GetSearchPath__13CFlyingPirateFv
GetSearchPath__13CFlyingPirateFv:
/* 801F7538 001F4498  38 63 06 A8 */	addi r3, r3, 0x6a8
/* 801F753C 001F449C  4E 80 00 20 */	blr

.global IsListening__13CFlyingPirateCFv
IsListening__13CFlyingPirateCFv:
/* 801F7540 001F44A0  38 60 00 01 */	li r3, 1
/* 801F7544 001F44A4  4E 80 00 20 */	blr

.global GetGravityConstant__13CFlyingPirateCFv
GetGravityConstant__13CFlyingPirateCFv:
/* 801F7548 001F44A8  88 03 06 A0 */	lbz r0, 0x6a0(r3)
/* 801F754C 001F44AC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F7550 001F44B0  41 82 00 0C */	beq lbl_801F755C
/* 801F7554 001F44B4  C0 22 AF 58 */	lfs f1, lbl_805ACC78@sda21(r2)
/* 801F7558 001F44B8  4E 80 00 20 */	blr
lbl_801F755C:
/* 801F755C 001F44BC  C0 22 AF 54 */	lfs f1, lbl_805ACC74@sda21(r2)
/* 801F7560 001F44C0  4E 80 00 20 */	blr

.global KnockbackWhenFrozen__13CFlyingPirateCFv
KnockbackWhenFrozen__13CFlyingPirateCFv:
/* 801F7564 001F44C4  38 60 00 00 */	li r3, 0
/* 801F7568 001F44C8  4E 80 00 20 */	blr

.global Think__13CFlyingPirateFfR13CStateManager
Think__13CFlyingPirateFfR13CStateManager:
/* 801F756C 001F44CC  94 21 FD 50 */	stwu r1, -0x2b0(r1)
/* 801F7570 001F44D0  7C 08 02 A6 */	mflr r0
/* 801F7574 001F44D4  90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 801F7578 001F44D8  DB E1 02 A0 */	stfd f31, 0x2a0(r1)
/* 801F757C 001F44DC  F3 E1 02 A8 */	psq_st f31, 680(r1), 0, qr0
/* 801F7580 001F44E0  DB C1 02 90 */	stfd f30, 0x290(r1)
/* 801F7584 001F44E4  F3 C1 02 98 */	psq_st f30, 664(r1), 0, qr0
/* 801F7588 001F44E8  BF 41 02 78 */	stmw r26, 0x278(r1)
/* 801F758C 001F44EC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801F7590 001F44F0  7C 7F 1B 78 */	mr r31, r3
/* 801F7594 001F44F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 801F7598 001F44F8  7C 9E 23 78 */	mr r30, r4
/* 801F759C 001F44FC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F75A0 001F4500  41 82 0F 24 */	beq lbl_801F84C4
/* 801F75A4 001F4504  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F75A8 001F4508  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801F75AC 001F450C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F75B0 001F4510  40 82 00 30 */	bne lbl_801F75E0
/* 801F75B4 001F4514  4B F4 37 3D */	bl Activate__15CBodyControllerFR13CStateManager
/* 801F75B8 001F4518  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801F75BC 001F451C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F75C0 001F4520  41 82 00 20 */	beq lbl_801F75E0
/* 801F75C4 001F4524  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F75C8 001F4528  38 80 00 03 */	li r4, 3
/* 801F75CC 001F452C  4B F4 34 0D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801F75D0 001F4530  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 801F75D4 001F4534  38 60 00 01 */	li r3, 1
/* 801F75D8 001F4538  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801F75DC 001F453C  98 1F 03 28 */	stb r0, 0x328(r31)
lbl_801F75E0:
/* 801F75E0 001F4540  80 7E 08 70 */	lwz r3, 0x870(r30)
/* 801F75E4 001F4544  4B E1 33 1D */	bl IsInCinematicCamera__14CCameraManagerCFv
/* 801F75E8 001F4548  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F75EC 001F454C  7C 7D 1B 78 */	mr r29, r3
/* 801F75F0 001F4550  41 82 00 7C */	beq lbl_801F766C
/* 801F75F4 001F4554  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 801F75F8 001F4558  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F75FC 001F455C  40 82 00 70 */	bne lbl_801F766C
/* 801F7600 001F4560  7F E3 FB 78 */	mr r3, r31
/* 801F7604 001F4564  7F C5 F3 78 */	mr r5, r30
/* 801F7608 001F4568  38 80 00 30 */	li r4, 0x30
/* 801F760C 001F456C  4B E5 C9 75 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801F7610 001F4570  7F E3 FB 78 */	mr r3, r31
/* 801F7614 001F4574  4B E5 C2 A9 */	bl GetMaterialFilter__6CActorCFv
/* 801F7618 001F4578  83 83 00 00 */	lwz r28, 0(r3)
/* 801F761C 001F457C  83 63 00 04 */	lwz r27, 4(r3)
/* 801F7620 001F4580  7F E3 FB 78 */	mr r3, r31
/* 801F7624 001F4584  4B E5 C2 99 */	bl GetMaterialFilter__6CActorCFv
/* 801F7628 001F4588  3C 80 FF FF */	lis r4, 0xFFFEFFFF@ha
/* 801F762C 001F458C  38 C0 FF FF */	li r6, -1
/* 801F7630 001F4590  38 A4 FF FF */	addi r5, r4, 0xFFFEFFFF@l
/* 801F7634 001F4594  38 00 00 03 */	li r0, 3
/* 801F7638 001F4598  7F 66 30 38 */	and r6, r27, r6
/* 801F763C 001F459C  38 81 02 28 */	addi r4, r1, 0x228
/* 801F7640 001F45A0  7F 85 28 38 */	and r5, r28, r5
/* 801F7644 001F45A4  90 C1 02 2C */	stw r6, 0x22c(r1)
/* 801F7648 001F45A8  90 A1 02 28 */	stw r5, 0x228(r1)
/* 801F764C 001F45AC  80 A3 00 08 */	lwz r5, 8(r3)
/* 801F7650 001F45B0  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 801F7654 001F45B4  7F E3 FB 78 */	mr r3, r31
/* 801F7658 001F45B8  90 C1 02 34 */	stw r6, 0x234(r1)
/* 801F765C 001F45BC  90 A1 02 30 */	stw r5, 0x230(r1)
/* 801F7660 001F45C0  90 01 02 38 */	stw r0, 0x238(r1)
/* 801F7664 001F45C4  4B E5 C2 3D */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 801F7668 001F45C8  48 00 00 90 */	b lbl_801F76F8
lbl_801F766C:
/* 801F766C 001F45CC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801F7670 001F45D0  40 82 00 88 */	bne lbl_801F76F8
/* 801F7674 001F45D4  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 801F7678 001F45D8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F767C 001F45DC  41 82 00 7C */	beq lbl_801F76F8
/* 801F7680 001F45E0  7F E3 FB 78 */	mr r3, r31
/* 801F7684 001F45E4  7F C5 F3 78 */	mr r5, r30
/* 801F7688 001F45E8  38 80 00 30 */	li r4, 0x30
/* 801F768C 001F45EC  4B E5 CC C5 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801F7690 001F45F0  7F E3 FB 78 */	mr r3, r31
/* 801F7694 001F45F4  4B E5 C2 29 */	bl GetMaterialFilter__6CActorCFv
/* 801F7698 001F45F8  80 AD 93 18 */	lwz r5, lbl_805A7ED8@sda21(r13)
/* 801F769C 001F45FC  7C 7C 1B 78 */	mr r28, r3
/* 801F76A0 001F4600  38 60 00 00 */	li r3, 0
/* 801F76A4 001F4604  38 80 00 01 */	li r4, 1
/* 801F76A8 001F4608  48 19 28 4D */	bl __shl2i
/* 801F76AC 001F460C  7C 7B 1B 78 */	mr r27, r3
/* 801F76B0 001F4610  7C 9A 23 78 */	mr r26, r4
/* 801F76B4 001F4614  7F E3 FB 78 */	mr r3, r31
/* 801F76B8 001F4618  4B E5 C2 05 */	bl GetMaterialFilter__6CActorCFv
/* 801F76BC 001F461C  80 83 00 00 */	lwz r4, 0(r3)
/* 801F76C0 001F4620  38 00 00 03 */	li r0, 3
/* 801F76C4 001F4624  80 C3 00 04 */	lwz r6, 4(r3)
/* 801F76C8 001F4628  7F E3 FB 78 */	mr r3, r31
/* 801F76CC 001F462C  7C 85 DB 78 */	or r5, r4, r27
/* 801F76D0 001F4630  38 81 02 10 */	addi r4, r1, 0x210
/* 801F76D4 001F4634  7C C6 D3 78 */	or r6, r6, r26
/* 801F76D8 001F4638  90 A1 02 10 */	stw r5, 0x210(r1)
/* 801F76DC 001F463C  90 C1 02 14 */	stw r6, 0x214(r1)
/* 801F76E0 001F4640  80 BC 00 08 */	lwz r5, 8(r28)
/* 801F76E4 001F4644  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 801F76E8 001F4648  90 C1 02 1C */	stw r6, 0x21c(r1)
/* 801F76EC 001F464C  90 A1 02 18 */	stw r5, 0x218(r1)
/* 801F76F0 001F4650  90 01 02 20 */	stw r0, 0x220(r1)
/* 801F76F4 001F4654  4B E5 C1 AD */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
lbl_801F76F8:
/* 801F76F8 001F4658  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 801F76FC 001F465C  53 A0 3E 30 */	rlwimi r0, r29, 7, 0x18, 0x18
/* 801F7700 001F4660  3B 5F 06 88 */	addi r26, r31, 0x688
/* 801F7704 001F4664  3B 60 00 00 */	li r27, 0
/* 801F7708 001F4668  98 1F 06 A1 */	stb r0, 0x6a1(r31)
/* 801F770C 001F466C  48 00 00 24 */	b lbl_801F7730
lbl_801F7710:
/* 801F7710 001F4670  80 7A 00 04 */	lwz r3, 4(r26)
/* 801F7714 001F4674  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F7718 001F4678  81 83 00 00 */	lwz r12, 0(r3)
/* 801F771C 001F467C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F7720 001F4680  7D 89 03 A6 */	mtctr r12
/* 801F7724 001F4684  4E 80 04 21 */	bctrl
/* 801F7728 001F4688  3B 5A 00 08 */	addi r26, r26, 8
/* 801F772C 001F468C  3B 7B 00 01 */	addi r27, r27, 1
lbl_801F7730:
/* 801F7730 001F4690  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 801F7734 001F4694  7C 1B 00 00 */	cmpw r27, r0
/* 801F7738 001F4698  41 80 FF D8 */	blt lbl_801F7710
/* 801F773C 001F469C  C0 3F 07 8C */	lfs f1, 0x78c(r31)
/* 801F7740 001F46A0  38 81 00 3C */	addi r4, r1, 0x3c
/* 801F7744 001F46A4  C0 01 00 08 */	lfs f0, 8(r1)
/* 801F7748 001F46A8  38 6D 93 1C */	addi r3, r13, lbl_805A7EDC@sda21
/* 801F774C 001F46AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F7750 001F46B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801F7754 001F46B4  4B E5 7F DD */	bl "Max<f>__5CMathFRCfRCf"
/* 801F7758 001F46B8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801F775C 001F46BC  D0 1F 07 8C */	stfs f0, 0x78c(r31)
/* 801F7760 001F46C0  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F7764 001F46C4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F7768 001F46C8  41 82 00 F4 */	beq lbl_801F785C
/* 801F776C 001F46CC  C0 1F 08 54 */	lfs f0, 0x854(r31)
/* 801F7770 001F46D0  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F7774 001F46D4  EC 00 08 2A */	fadds f0, f0, f1
/* 801F7778 001F46D8  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 801F777C 001F46DC  C0 1F 08 58 */	lfs f0, 0x858(r31)
/* 801F7780 001F46E0  EC 00 08 2A */	fadds f0, f0, f1
/* 801F7784 001F46E4  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 801F7788 001F46E8  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801F778C 001F46EC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801F7790 001F46F0  41 82 00 1C */	beq lbl_801F77AC
/* 801F7794 001F46F4  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F7798 001F46F8  38 60 00 00 */	li r3, 0
/* 801F779C 001F46FC  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 801F77A0 001F4700  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801F77A4 001F4704  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801F77A8 001F4708  98 1F 06 A0 */	stb r0, 0x6a0(r31)
lbl_801F77AC:
/* 801F77AC 001F470C  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F77B0 001F4710  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F77B4 001F4714  41 82 00 1C */	beq lbl_801F77D0
/* 801F77B8 001F4718  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F77BC 001F471C  38 60 00 00 */	li r3, 0
/* 801F77C0 001F4720  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 801F77C4 001F4724  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F77C8 001F4728  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F77CC 001F472C  98 1F 04 00 */	stb r0, 0x400(r31)
lbl_801F77D0:
/* 801F77D0 001F4730  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801F77D4 001F4734  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F77D8 001F4738  40 82 00 84 */	bne lbl_801F785C
/* 801F77DC 001F473C  A0 BF 00 C4 */	lhz r5, 0xc4(r31)
/* 801F77E0 001F4740  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F77E4 001F4744  7C 05 00 40 */	cmplw r5, r0
/* 801F77E8 001F4748  41 82 00 74 */	beq lbl_801F785C
/* 801F77EC 001F474C  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 801F77F0 001F4750  7F C3 F3 78 */	mr r3, r30
/* 801F77F4 001F4754  38 81 00 18 */	addi r4, r1, 0x18
/* 801F77F8 001F4758  B0 A1 00 18 */	sth r5, 0x18(r1)
/* 801F77FC 001F475C  4B E5 4D A9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F7800 001F4760  7C 64 1B 78 */	mr r4, r3
/* 801F7804 001F4764  38 61 00 58 */	addi r3, r1, 0x58
/* 801F7808 001F4768  4B EA F0 59 */	bl "__ct__26TCastToPtr<12CScriptWater>FP7CEntity"
/* 801F780C 001F476C  80 83 00 04 */	lwz r4, 4(r3)
/* 801F7810 001F4770  28 04 00 00 */	cmplwi r4, 0
/* 801F7814 001F4774  41 82 00 48 */	beq lbl_801F785C
/* 801F7818 001F4778  C3 FF 00 60 */	lfs f31, 0x60(r31)
/* 801F781C 001F477C  38 61 01 DC */	addi r3, r1, 0x1dc
/* 801F7820 001F4780  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801F7824 001F4784  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801F7828 001F4788  D0 21 01 68 */	stfs f1, 0x168(r1)
/* 801F782C 001F478C  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 801F7830 001F4790  D3 E1 01 6C */	stfs f31, 0x16c(r1)
/* 801F7834 001F4794  4B E7 EE 99 */	bl GetTriggerBoundsWR__14CScriptTriggerCFv
/* 801F7838 001F4798  C0 02 AF 64 */	lfs f0, lbl_805ACC84@sda21(r2)
/* 801F783C 001F479C  C0 21 01 F0 */	lfs f1, 0x1f0(r1)
/* 801F7840 001F47A0  EC 00 F8 2A */	fadds f0, f0, f31
/* 801F7844 001F47A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F7848 001F47A8  40 81 00 14 */	ble lbl_801F785C
/* 801F784C 001F47AC  88 1F 04 01 */	lbz r0, 0x401(r31)
/* 801F7850 001F47B0  38 60 00 01 */	li r3, 1
/* 801F7854 001F47B4  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801F7858 001F47B8  98 1F 04 01 */	stb r0, 0x401(r31)
lbl_801F785C:
/* 801F785C 001F47BC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F7860 001F47C0  4B F4 28 6D */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 801F7864 001F47C4  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F7868 001F47C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801F786C 001F47CC  40 82 03 4C */	bne lbl_801F7BB8
/* 801F7870 001F47D0  C0 3F 08 6C */	lfs f1, 0x86c(r31)
/* 801F7874 001F47D4  38 81 00 38 */	addi r4, r1, 0x38
/* 801F7878 001F47D8  C0 01 00 08 */	lfs f0, 8(r1)
/* 801F787C 001F47DC  38 6D 93 20 */	addi r3, r13, lbl_805A7EE0@sda21
/* 801F7880 001F47E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F7884 001F47E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801F7888 001F47E8  4B E5 7E A9 */	bl "Max<f>__5CMathFRCfRCf"
/* 801F788C 001F47EC  C0 23 00 00 */	lfs f1, 0(r3)
/* 801F7890 001F47F0  38 81 00 34 */	addi r4, r1, 0x34
/* 801F7894 001F47F4  C0 01 00 08 */	lfs f0, 8(r1)
/* 801F7898 001F47F8  38 6D 93 24 */	addi r3, r13, lbl_805A7EE4@sda21
/* 801F789C 001F47FC  D0 3F 08 6C */	stfs f1, 0x86c(r31)
/* 801F78A0 001F4800  C0 3F 08 60 */	lfs f1, 0x860(r31)
/* 801F78A4 001F4804  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F78A8 001F4808  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801F78AC 001F480C  4B E5 7E 85 */	bl "Max<f>__5CMathFRCfRCf"
/* 801F78B0 001F4810  C0 23 00 00 */	lfs f1, 0(r3)
/* 801F78B4 001F4814  38 81 00 30 */	addi r4, r1, 0x30
/* 801F78B8 001F4818  C0 01 00 08 */	lfs f0, 8(r1)
/* 801F78BC 001F481C  38 6D 93 28 */	addi r3, r13, lbl_805A7EE8@sda21
/* 801F78C0 001F4820  D0 3F 08 60 */	stfs f1, 0x860(r31)
/* 801F78C4 001F4824  C0 3F 08 88 */	lfs f1, 0x888(r31)
/* 801F78C8 001F4828  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F78CC 001F482C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801F78D0 001F4830  4B E5 7E 61 */	bl "Max<f>__5CMathFRCfRCf"
/* 801F78D4 001F4834  C0 03 00 00 */	lfs f0, 0(r3)
/* 801F78D8 001F4838  D0 1F 08 88 */	stfs f0, 0x888(r31)
/* 801F78DC 001F483C  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801F78E0 001F4840  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801F78E4 001F4844  41 82 00 18 */	beq lbl_801F78FC
/* 801F78E8 001F4848  C0 3F 07 D8 */	lfs f1, 0x7d8(r31)
/* 801F78EC 001F484C  C0 01 00 08 */	lfs f0, 8(r1)
/* 801F78F0 001F4850  EC 01 00 2A */	fadds f0, f1, f0
/* 801F78F4 001F4854  D0 1F 07 D8 */	stfs f0, 0x7d8(r31)
/* 801F78F8 001F4858  48 00 00 0C */	b lbl_801F7904
lbl_801F78FC:
/* 801F78FC 001F485C  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F7900 001F4860  D0 1F 07 D8 */	stfs f0, 0x7d8(r31)
lbl_801F7904:
/* 801F7904 001F4864  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F7908 001F4868  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F790C 001F486C  41 82 00 10 */	beq lbl_801F791C
/* 801F7910 001F4870  7F E3 FB 78 */	mr r3, r31
/* 801F7914 001F4874  7F C4 F3 78 */	mr r4, r30
/* 801F7918 001F4878  48 00 5B 35 */	bl CheckForProjectiles__13CFlyingPirateFR13CStateManager
lbl_801F791C:
/* 801F791C 001F487C  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801F7920 001F4880  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F7924 001F4884  40 82 02 94 */	bne lbl_801F7BB8
/* 801F7928 001F4888  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F792C 001F488C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F7930 001F4890  41 82 00 60 */	beq lbl_801F7990
/* 801F7934 001F4894  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F7938 001F4898  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801F793C 001F489C  4B F3 C7 3D */	bl GetCurrentState__14CBodyStateInfoCFv
/* 801F7940 001F48A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7944 001F48A4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801F7948 001F48A8  7D 89 03 A6 */	mtctr r12
/* 801F794C 001F48AC  4E 80 04 21 */	bctrl
/* 801F7950 001F48B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F7954 001F48B4  41 82 02 64 */	beq lbl_801F7BB8
/* 801F7958 001F48B8  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801F795C 001F48BC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801F7960 001F48C0  41 82 02 58 */	beq lbl_801F7BB8
/* 801F7964 001F48C4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F7968 001F48C8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801F796C 001F48CC  2C 00 00 12 */	cmpwi r0, 0x12
/* 801F7970 001F48D0  41 82 02 48 */	beq lbl_801F7BB8
/* 801F7974 001F48D4  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 801F7978 001F48D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801F797C 001F48DC  40 82 02 3C */	bne lbl_801F7BB8
/* 801F7980 001F48E0  C0 23 03 24 */	lfs f1, 0x324(r3)
/* 801F7984 001F48E4  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F7988 001F48E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F798C 001F48EC  41 81 02 2C */	bgt lbl_801F7BB8
lbl_801F7990:
/* 801F7990 001F48F0  80 1F 07 EC */	lwz r0, 0x7ec(r31)
/* 801F7994 001F48F4  2C 00 FF FF */	cmpwi r0, -1
/* 801F7998 001F48F8  41 82 02 20 */	beq lbl_801F7BB8
/* 801F799C 001F48FC  C0 5F 07 E4 */	lfs f2, 0x7e4(r31)
/* 801F79A0 001F4900  C0 01 00 08 */	lfs f0, 8(r1)
/* 801F79A4 001F4904  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801F79A8 001F4908  EC 02 00 28 */	fsubs f0, f2, f0
/* 801F79AC 001F490C  D0 1F 07 E4 */	stfs f0, 0x7e4(r31)
/* 801F79B0 001F4910  C0 1F 07 E4 */	lfs f0, 0x7e4(r31)
/* 801F79B4 001F4914  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801F79B8 001F4918  40 80 01 A4 */	bge lbl_801F7B5C
/* 801F79BC 001F491C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801F79C0 001F4920  7F E3 FB 78 */	mr r3, r31
/* 801F79C4 001F4924  80 1F 07 EC */	lwz r0, 0x7ec(r31)
/* 801F79C8 001F4928  7F C4 F3 78 */	mr r4, r30
/* 801F79CC 001F492C  81 8C 01 B0 */	lwz r12, 0x1b0(r12)
/* 801F79D0 001F4930  54 1A 00 3C */	rlwinm r26, r0, 0, 0, 0x1e
/* 801F79D4 001F4934  7D 89 03 A6 */	mtctr r12
/* 801F79D8 001F4938  4E 80 04 21 */	bctrl
/* 801F79DC 001F493C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F79E0 001F4940  40 82 00 08 */	bne lbl_801F79E8
/* 801F79E4 001F4944  3B 5A 00 01 */	addi r26, r26, 1
lbl_801F79E8:
/* 801F79E8 001F4948  93 5F 07 EC */	stw r26, 0x7ec(r31)
/* 801F79EC 001F494C  7F C4 F3 78 */	mr r4, r30
/* 801F79F0 001F4950  38 7F 07 EC */	addi r3, r31, 0x7ec
/* 801F79F4 001F4954  4B FB 5A 31 */	bl Start__10CBurstFireFR13CStateManager
/* 801F79F8 001F4958  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F79FC 001F495C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F7A00 001F4960  41 82 01 54 */	beq lbl_801F7B54
/* 801F7A04 001F4964  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801F7A08 001F4968  48 11 AA D5 */	bl Float__9CRandom16Fv
/* 801F7A0C 001F496C  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 801F7A10 001F4970  7F C5 F3 78 */	mr r5, r30
/* 801F7A14 001F4974  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 801F7A18 001F4978  38 61 01 34 */	addi r3, r1, 0x134
/* 801F7A1C 001F497C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801F7A20 001F4980  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801F7A24 001F4984  D0 1F 07 E4 */	stfs f0, 0x7e4(r31)
/* 801F7A28 001F4988  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 801F7A2C 001F498C  81 84 00 00 */	lwz r12, 0(r4)
/* 801F7A30 001F4990  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801F7A34 001F4994  7D 89 03 A6 */	mtctr r12
/* 801F7A38 001F4998  4E 80 04 21 */	bctrl
/* 801F7A3C 001F499C  7F E4 FB 78 */	mr r4, r31
/* 801F7A40 001F49A0  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 801F7A44 001F49A4  4B F2 2E E9 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801F7A48 001F49A8  38 61 01 40 */	addi r3, r1, 0x140
/* 801F7A4C 001F49AC  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 801F7A50 001F49B0  48 13 FB BD */	bl GetCenterPoint__6CAABoxCFv
/* 801F7A54 001F49B4  C0 21 01 40 */	lfs f1, 0x140(r1)
/* 801F7A58 001F49B8  38 61 01 58 */	addi r3, r1, 0x158
/* 801F7A5C 001F49BC  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 801F7A60 001F49C0  38 81 01 4C */	addi r4, r1, 0x14c
/* 801F7A64 001F49C4  C0 61 01 44 */	lfs f3, 0x144(r1)
/* 801F7A68 001F49C8  C0 41 01 38 */	lfs f2, 0x138(r1)
/* 801F7A6C 001F49CC  EC 81 00 28 */	fsubs f4, f1, f0
/* 801F7A70 001F49D0  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 801F7A74 001F49D4  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 801F7A78 001F49D8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801F7A7C 001F49DC  D0 81 01 4C */	stfs f4, 0x14c(r1)
/* 801F7A80 001F49E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F7A84 001F49E4  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 801F7A88 001F49E8  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 801F7A8C 001F49EC  48 11 CD C5 */	bl AsNormalized__9CVector3fCFv
/* 801F7A90 001F49F0  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801F7A94 001F49F4  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 801F7A98 001F49F8  C0 83 00 48 */	lfs f4, 0x48(r3)
/* 801F7A9C 001F49FC  C0 63 00 38 */	lfs f3, 0x38(r3)
/* 801F7AA0 001F4A00  EC 00 01 32 */	fmuls f0, f0, f4
/* 801F7AA4 001F4A04  C0 21 01 58 */	lfs f1, 0x158(r1)
/* 801F7AA8 001F4A08  C0 A3 00 58 */	lfs f5, 0x58(r3)
/* 801F7AAC 001F4A0C  C0 41 01 60 */	lfs f2, 0x160(r1)
/* 801F7AB0 001F4A10  EC 21 00 FA */	fmadds f1, f1, f3, f0
/* 801F7AB4 001F4A14  C0 02 AF 68 */	lfs f0, lbl_805ACC88@sda21(r2)
/* 801F7AB8 001F4A18  D0 61 01 28 */	stfs f3, 0x128(r1)
/* 801F7ABC 001F4A1C  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 801F7AC0 001F4A20  D0 81 01 2C */	stfs f4, 0x12c(r1)
/* 801F7AC4 001F4A24  D0 A1 01 30 */	stfs f5, 0x130(r1)
/* 801F7AC8 001F4A28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F7ACC 001F4A2C  40 80 00 90 */	bge lbl_801F7B5C
/* 801F7AD0 001F4A30  83 9E 08 38 */	lwz r28, 0x838(r30)
/* 801F7AD4 001F4A34  AB 5C 20 08 */	lha r26, 0x2008(r28)
/* 801F7AD8 001F4A38  48 00 00 70 */	b lbl_801F7B48
lbl_801F7ADC:
/* 801F7ADC 001F4A3C  7F 83 E3 78 */	mr r3, r28
/* 801F7AE0 001F4A40  7F 44 D3 78 */	mr r4, r26
/* 801F7AE4 001F4A44  4B E1 81 F9 */	bl __vc__11CObjectListCFi
/* 801F7AE8 001F4A48  7C 64 1B 78 */	mr r4, r3
/* 801F7AEC 001F4A4C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801F7AF0 001F4A50  4B EA D8 E1 */	bl sub_800a53d0
/* 801F7AF4 001F4A54  4B EA D8 B1 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 801F7AF8 001F4A58  28 03 00 00 */	cmplwi r3, 0
/* 801F7AFC 001F4A5C  41 82 00 30 */	beq lbl_801F7B2C
/* 801F7B00 001F4A60  88 03 06 37 */	lbz r0, 0x637(r3)
/* 801F7B04 001F4A64  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F7B08 001F4A68  41 82 00 24 */	beq lbl_801F7B2C
/* 801F7B0C 001F4A6C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F7B10 001F4A70  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F7B14 001F4A74  7C 03 00 00 */	cmpw r3, r0
/* 801F7B18 001F4A78  40 82 00 14 */	bne lbl_801F7B2C
/* 801F7B1C 001F4A7C  C0 3F 07 E4 */	lfs f1, 0x7e4(r31)
/* 801F7B20 001F4A80  C0 02 AF 6C */	lfs f0, lbl_805ACC8C@sda21(r2)
/* 801F7B24 001F4A84  EC 01 00 2A */	fadds f0, f1, f0
/* 801F7B28 001F4A88  D0 1F 07 E4 */	stfs f0, 0x7e4(r31)
lbl_801F7B2C:
/* 801F7B2C 001F4A8C  2C 1A FF FF */	cmpwi r26, -1
/* 801F7B30 001F4A90  41 82 00 14 */	beq lbl_801F7B44
/* 801F7B34 001F4A94  57 43 18 38 */	slwi r3, r26, 3
/* 801F7B38 001F4A98  38 03 00 08 */	addi r0, r3, 8
/* 801F7B3C 001F4A9C  7F 5C 02 AE */	lhax r26, r28, r0
/* 801F7B40 001F4AA0  48 00 00 08 */	b lbl_801F7B48
lbl_801F7B44:
/* 801F7B44 001F4AA4  3B 40 FF FF */	li r26, -1
lbl_801F7B48:
/* 801F7B48 001F4AA8  2C 1A FF FF */	cmpwi r26, -1
/* 801F7B4C 001F4AAC  40 82 FF 90 */	bne lbl_801F7ADC
/* 801F7B50 001F4AB0  48 00 00 0C */	b lbl_801F7B5C
lbl_801F7B54:
/* 801F7B54 001F4AB4  C0 02 AF 70 */	lfs f0, lbl_805ACC90@sda21(r2)
/* 801F7B58 001F4AB8  D0 1F 07 E4 */	stfs f0, 0x7e4(r31)
lbl_801F7B5C:
/* 801F7B5C 001F4ABC  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F7B60 001F4AC0  7F C4 F3 78 */	mr r4, r30
/* 801F7B64 001F4AC4  38 7F 07 EC */	addi r3, r31, 0x7ec
/* 801F7B68 001F4AC8  4B FB 57 ED */	bl Update__10CBurstFireFR13CStateManagerf
/* 801F7B6C 001F4ACC  88 1F 08 00 */	lbz r0, 0x800(r31)
/* 801F7B70 001F4AD0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F7B74 001F4AD4  41 82 00 44 */	beq lbl_801F7BB8
/* 801F7B78 001F4AD8  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F7B7C 001F4ADC  7F E3 FB 78 */	mr r3, r31
/* 801F7B80 001F4AE0  7F C4 F3 78 */	mr r4, r30
/* 801F7B84 001F4AE4  48 00 0F AD */	bl FireProjectile__13CFlyingPirateFR13CStateManagerRC9CVector3f
/* 801F7B88 001F4AE8  C3 FF 06 3C */	lfs f31, 0x63c(r31)
/* 801F7B8C 001F4AEC  C3 DF 06 38 */	lfs f30, 0x638(r31)
/* 801F7B90 001F4AF0  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801F7B94 001F4AF4  48 11 A9 49 */	bl Float__9CRandom16Fv
/* 801F7B98 001F4AF8  C0 02 AF 74 */	lfs f0, lbl_805ACC94@sda21(r2)
/* 801F7B9C 001F4AFC  C0 5F 07 F4 */	lfs f2, 0x7f4(r31)
/* 801F7BA0 001F4B00  EC 21 00 28 */	fsubs f1, f1, f0
/* 801F7BA4 001F4B04  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F7BA8 001F4B08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F7BAC 001F4B0C  EC 1F F0 7A */	fmadds f0, f31, f1, f30
/* 801F7BB0 001F4B10  40 81 00 08 */	ble lbl_801F7BB8
/* 801F7BB4 001F4B14  D0 1F 07 F4 */	stfs f0, 0x7f4(r31)
lbl_801F7BB8:
/* 801F7BB8 001F4B18  80 9F 08 9C */	lwz r4, 0x89c(r31)
/* 801F7BBC 001F4B1C  7C 83 00 34 */	cntlzw r3, r4
/* 801F7BC0 001F4B20  54 60 DE 3F */	rlwinm. r0, r3, 0x1b, 0x18, 0x1f
/* 801F7BC4 001F4B24  54 7D D9 7E */	srwi r29, r3, 5
/* 801F7BC8 001F4B28  40 82 00 10 */	bne lbl_801F7BD8
/* 801F7BCC 001F4B2C  88 04 00 68 */	lbz r0, 0x68(r4)
/* 801F7BD0 001F4B30  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801F7BD4 001F4B34  40 82 06 5C */	bne lbl_801F8230
lbl_801F7BD8:
/* 801F7BD8 001F4B38  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F7BDC 001F4B3C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F7BE0 001F4B40  41 82 01 04 */	beq lbl_801F7CE4
/* 801F7BE4 001F4B44  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 801F7BE8 001F4B48  88 06 03 00 */	lbz r0, 0x300(r6)
/* 801F7BEC 001F4B4C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801F7BF0 001F4B50  40 82 00 F4 */	bne lbl_801F7CE4
/* 801F7BF4 001F4B54  C0 26 03 24 */	lfs f1, 0x324(r6)
/* 801F7BF8 001F4B58  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F7BFC 001F4B5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F7C00 001F4B60  41 81 00 E4 */	bgt lbl_801F7CE4
/* 801F7C04 001F4B64  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801F7C08 001F4B68  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801F7C0C 001F4B6C  41 82 00 D8 */	beq lbl_801F7CE4
/* 801F7C10 001F4B70  28 04 00 00 */	cmplwi r4, 0
/* 801F7C14 001F4B74  40 82 00 D0 */	bne lbl_801F7CE4
/* 801F7C18 001F4B78  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801F7C1C 001F4B7C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F7C20 001F4B80  40 82 00 C4 */	bne lbl_801F7CE4
/* 801F7C24 001F4B84  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801F7C28 001F4B88  3C 60 80 3E */	lis r3, lbl_803E061C@ha
/* 801F7C2C 001F4B8C  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801F7C30 001F4B90  38 A0 00 18 */	li r5, 0x18
/* 801F7C34 001F4B94  90 01 00 68 */	stw r0, 0x68(r1)
/* 801F7C38 001F4B98  38 03 06 1C */	addi r0, r3, lbl_803E061C@l
/* 801F7C3C 001F4B9C  3B 86 00 04 */	addi r28, r6, 4
/* 801F7C40 001F4BA0  38 80 00 18 */	li r4, 0x18
/* 801F7C44 001F4BA4  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 801F7C48 001F4BA8  7F 83 E3 78 */	mr r3, r28
/* 801F7C4C 001F4BAC  90 01 00 68 */	stw r0, 0x68(r1)
/* 801F7C50 001F4BB0  4B F3 97 E9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801F7C54 001F4BB4  3C 60 80 3E */	lis r3, lbl_803E061C@ha
/* 801F7C58 001F4BB8  80 C1 00 6C */	lwz r6, 0x6c(r1)
/* 801F7C5C 001F4BBC  38 03 06 1C */	addi r0, r3, lbl_803E061C@l
/* 801F7C60 001F4BC0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F7C64 001F4BC4  90 01 00 68 */	stw r0, 0x68(r1)
/* 801F7C68 001F4BC8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801F7C6C 001F4BCC  7F E4 FB 78 */	mr r4, r31
/* 801F7C70 001F4BD0  7F C5 F3 78 */	mr r5, r30
/* 801F7C74 001F4BD4  90 DC 02 74 */	stw r6, 0x274(r28)
/* 801F7C78 001F4BD8  38 61 01 10 */	addi r3, r1, 0x110
/* 801F7C7C 001F4BDC  90 01 00 68 */	stw r0, 0x68(r1)
/* 801F7C80 001F4BE0  48 00 4C 15 */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801F7C84 001F4BE4  C0 21 01 18 */	lfs f1, 0x118(r1)
/* 801F7C88 001F4BE8  38 9F 00 34 */	addi r4, r31, 0x34
/* 801F7C8C 001F4BEC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801F7C90 001F4BF0  38 61 01 1C */	addi r3, r1, 0x11c
/* 801F7C94 001F4BF4  C0 61 01 14 */	lfs f3, 0x114(r1)
/* 801F7C98 001F4BF8  38 A1 00 70 */	addi r5, r1, 0x70
/* 801F7C9C 001F4BFC  EC 81 00 28 */	fsubs f4, f1, f0
/* 801F7CA0 001F4C00  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 801F7CA4 001F4C04  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801F7CA8 001F4C08  C0 21 01 10 */	lfs f1, 0x110(r1)
/* 801F7CAC 001F4C0C  EC 43 10 28 */	fsubs f2, f3, f2
/* 801F7CB0 001F4C10  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 801F7CB4 001F4C14  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F7CB8 001F4C18  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 801F7CBC 001F4C1C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801F7CC0 001F4C20  48 11 AD 65 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801F7CC4 001F4C24  C0 21 01 20 */	lfs f1, 0x120(r1)
/* 801F7CC8 001F4C28  C0 41 01 24 */	lfs f2, 0x124(r1)
/* 801F7CCC 001F4C2C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F7CD0 001F4C30  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 801F7CD4 001F4C34  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 801F7CD8 001F4C38  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 801F7CDC 001F4C3C  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 801F7CE0 001F4C40  48 00 00 34 */	b lbl_801F7D14
lbl_801F7CE4:
/* 801F7CE4 001F4C44  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F7CE8 001F4C48  38 00 00 17 */	li r0, 0x17
/* 801F7CEC 001F4C4C  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801F7CF0 001F4C50  90 01 00 64 */	stw r0, 0x64(r1)
/* 801F7CF4 001F4C54  38 81 00 60 */	addi r4, r1, 0x60
/* 801F7CF8 001F4C58  90 61 00 60 */	stw r3, 0x60(r1)
/* 801F7CFC 001F4C5C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F7D00 001F4C60  38 63 00 04 */	addi r3, r3, 4
/* 801F7D04 001F4C64  4B F3 9A B5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801F7D08 001F4C68  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F7D0C 001F4C6C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801F7D10 001F4C70  90 01 00 60 */	stw r0, 0x60(r1)
lbl_801F7D14:
/* 801F7D14 001F4C74  C0 3F 08 70 */	lfs f1, 0x870(r31)
/* 801F7D18 001F4C78  C0 1F 08 74 */	lfs f0, 0x874(r31)
/* 801F7D1C 001F4C7C  EC 41 00 72 */	fmuls f2, f1, f1
/* 801F7D20 001F4C80  C0 7F 08 78 */	lfs f3, 0x878(r31)
/* 801F7D24 001F4C84  EC 20 00 32 */	fmuls f1, f0, f0
/* 801F7D28 001F4C88  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F7D2C 001F4C8C  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801F7D30 001F4C90  EC 22 08 2A */	fadds f1, f2, f1
/* 801F7D34 001F4C94  EC 23 08 2A */	fadds f1, f3, f1
/* 801F7D38 001F4C98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F7D3C 001F4C9C  40 81 00 8C */	ble lbl_801F7DC8
/* 801F7D40 001F4CA0  38 7F 08 70 */	addi r3, r31, 0x870
/* 801F7D44 001F4CA4  48 11 CB 75 */	bl Magnitude__9CVector3fCFv
/* 801F7D48 001F4CA8  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801F7D4C 001F4CAC  C0 5F 08 7C */	lfs f2, 0x87c(r31)
/* 801F7D50 001F4CB0  ED 00 08 24 */	fdivs f8, f0, f1
/* 801F7D54 001F4CB4  C0 1F 08 80 */	lfs f0, 0x880(r31)
/* 801F7D58 001F4CB8  C0 7F 08 84 */	lfs f3, 0x884(r31)
/* 801F7D5C 001F4CBC  C0 FF 08 70 */	lfs f7, 0x870(r31)
/* 801F7D60 001F4CC0  C0 DF 08 74 */	lfs f6, 0x874(r31)
/* 801F7D64 001F4CC4  C0 BF 08 78 */	lfs f5, 0x878(r31)
/* 801F7D68 001F4CC8  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801F7D6C 001F4CCC  C0 82 AF 60 */	lfs f4, lbl_805ACC80@sda21(r2)
/* 801F7D70 001F4CD0  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F7D74 001F4CD4  C1 22 AF 6C */	lfs f9, lbl_805ACC8C@sda21(r2)
/* 801F7D78 001F4CD8  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801F7D7C 001F4CDC  EC E8 01 F2 */	fmuls f7, f8, f7
/* 801F7D80 001F4CE0  EC 02 00 2A */	fadds f0, f2, f0
/* 801F7D84 001F4CE4  EC C8 01 B2 */	fmuls f6, f8, f6
/* 801F7D88 001F4CE8  EC A8 01 72 */	fmuls f5, f8, f5
/* 801F7D8C 001F4CEC  EC 03 00 2A */	fadds f0, f3, f0
/* 801F7D90 001F4CF0  FC 04 00 00 */	fcmpu cr0, f4, f0
/* 801F7D94 001F4CF4  40 82 00 0C */	bne lbl_801F7DA0
/* 801F7D98 001F4CF8  C0 02 AF 7C */	lfs f0, lbl_805ACC9C@sda21(r2)
/* 801F7D9C 001F4CFC  ED 29 00 32 */	fmuls f9, f9, f0
lbl_801F7DA0:
/* 801F7DA0 001F4D00  EC 09 00 72 */	fmuls f0, f9, f1
/* 801F7DA4 001F4D04  C0 41 00 08 */	lfs f2, 8(r1)
/* 801F7DA8 001F4D08  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F7DAC 001F4D0C  EC 02 08 3C */	fnmsubs f0, f2, f0, f1
/* 801F7DB0 001F4D10  EC 40 01 F2 */	fmuls f2, f0, f7
/* 801F7DB4 001F4D14  EC 20 01 B2 */	fmuls f1, f0, f6
/* 801F7DB8 001F4D18  EC 00 01 72 */	fmuls f0, f0, f5
/* 801F7DBC 001F4D1C  D0 5F 08 70 */	stfs f2, 0x870(r31)
/* 801F7DC0 001F4D20  D0 3F 08 74 */	stfs f1, 0x874(r31)
/* 801F7DC4 001F4D24  D0 1F 08 78 */	stfs f0, 0x878(r31)
lbl_801F7DC8:
/* 801F7DC8 001F4D28  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F7DCC 001F4D2C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F7DD0 001F4D30  41 82 00 6C */	beq lbl_801F7E3C
/* 801F7DD4 001F4D34  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F7DD8 001F4D38  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801F7DDC 001F4D3C  2C 00 00 0A */	cmpwi r0, 0xa
/* 801F7DE0 001F4D40  41 82 00 5C */	beq lbl_801F7E3C
/* 801F7DE4 001F4D44  2C 00 00 0E */	cmpwi r0, 0xe
/* 801F7DE8 001F4D48  41 82 00 54 */	beq lbl_801F7E3C
/* 801F7DEC 001F4D4C  2C 00 00 02 */	cmpwi r0, 2
/* 801F7DF0 001F4D50  41 82 00 4C */	beq lbl_801F7E3C
/* 801F7DF4 001F4D54  2C 00 00 01 */	cmpwi r0, 1
/* 801F7DF8 001F4D58  41 82 00 44 */	beq lbl_801F7E3C
/* 801F7DFC 001F4D5C  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 801F7E00 001F4D60  C0 5F 08 74 */	lfs f2, 0x874(r31)
/* 801F7E04 001F4D64  C0 3F 08 78 */	lfs f1, 0x878(r31)
/* 801F7E08 001F4D68  C0 1F 08 70 */	lfs f0, 0x870(r31)
/* 801F7E0C 001F4D6C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801F7E10 001F4D70  EC 23 00 72 */	fmuls f1, f3, f1
/* 801F7E14 001F4D74  EC 03 00 32 */	fmuls f0, f3, f0
/* 801F7E18 001F4D78  D0 41 01 08 */	stfs f2, 0x108(r1)
/* 801F7E1C 001F4D7C  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 801F7E20 001F4D80  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 801F7E24 001F4D84  4B E2 37 11 */	bl Identity__10CAxisAngleFv
/* 801F7E28 001F4D88  7C 65 1B 78 */	mr r5, r3
/* 801F7E2C 001F4D8C  7F E3 FB 78 */	mr r3, r31
/* 801F7E30 001F4D90  38 81 01 04 */	addi r4, r1, 0x104
/* 801F7E34 001F4D94  4B F2 45 65 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 801F7E38 001F4D98  48 00 00 38 */	b lbl_801F7E70
lbl_801F7E3C:
/* 801F7E3C 001F4D9C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F7E40 001F4DA0  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801F7E44 001F4DA4  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 801F7E48 001F4DA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F7E4C 001F4DAC  D0 1F 08 74 */	stfs f0, 0x874(r31)
/* 801F7E50 001F4DB0  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F7E54 001F4DB4  D0 1F 08 78 */	stfs f0, 0x878(r31)
/* 801F7E58 001F4DB8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801F7E5C 001F4DBC  D0 1F 08 7C */	stfs f0, 0x87c(r31)
/* 801F7E60 001F4DC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F7E64 001F4DC4  D0 1F 08 80 */	stfs f0, 0x880(r31)
/* 801F7E68 001F4DC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F7E6C 001F4DCC  D0 1F 08 84 */	stfs f0, 0x884(r31)
lbl_801F7E70:
/* 801F7E70 001F4DD0  7F E4 FB 78 */	mr r4, r31
/* 801F7E74 001F4DD4  38 61 00 2C */	addi r3, r1, 0x2c
/* 801F7E78 001F4DD8  4B E5 B4 A1 */	bl GetSfxHandle__6CActorCFv
/* 801F7E7C 001F4DDC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801F7E80 001F4DE0  28 00 00 00 */	cmplwi r0, 0
/* 801F7E84 001F4DE4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801F7E88 001F4DE8  41 82 00 84 */	beq lbl_801F7F0C
/* 801F7E8C 001F4DEC  38 9F 08 98 */	addi r4, r31, 0x898
/* 801F7E90 001F4DF0  38 6D 93 2C */	addi r3, r13, lbl_805A7EEC@sda21
/* 801F7E94 001F4DF4  38 AD 93 30 */	addi r5, r13, lbl_805A7EF0@sda21
/* 801F7E98 001F4DF8  4B E1 44 1D */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801F7E9C 001F4DFC  C0 23 00 00 */	lfs f1, 0(r3)
/* 801F7EA0 001F4E00  38 61 00 28 */	addi r3, r1, 0x28
/* 801F7EA4 001F4E04  C0 01 00 08 */	lfs f0, 8(r1)
/* 801F7EA8 001F4E08  38 81 00 48 */	addi r4, r1, 0x48
/* 801F7EAC 001F4E0C  D0 3F 08 98 */	stfs f1, 0x898(r31)
/* 801F7EB0 001F4E10  38 A1 00 08 */	addi r5, r1, 8
/* 801F7EB4 001F4E14  FC 00 00 50 */	fneg f0, f0
/* 801F7EB8 001F4E18  C0 5F 08 98 */	lfs f2, 0x898(r31)
/* 801F7EBC 001F4E1C  C0 3F 08 94 */	lfs f1, 0x894(r31)
/* 801F7EC0 001F4E20  EC 22 08 28 */	fsubs f1, f2, f1
/* 801F7EC4 001F4E24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801F7EC8 001F4E28  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801F7ECC 001F4E2C  4B E1 43 E9 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801F7ED0 001F4E30  C0 43 00 00 */	lfs f2, 0(r3)
/* 801F7ED4 001F4E34  38 61 00 24 */	addi r3, r1, 0x24
/* 801F7ED8 001F4E38  C0 22 AF 80 */	lfs f1, lbl_805ACCA0@sda21(r2)
/* 801F7EDC 001F4E3C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 801F7EE0 001F4E40  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801F7EE4 001F4E44  C0 1F 08 94 */	lfs f0, 0x894(r31)
/* 801F7EE8 001F4E48  EC 00 10 2A */	fadds f0, f0, f2
/* 801F7EEC 001F4E4C  D0 1F 08 94 */	stfs f0, 0x894(r31)
/* 801F7EF0 001F4E50  C0 1F 08 94 */	lfs f0, 0x894(r31)
/* 801F7EF4 001F4E54  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F7EF8 001F4E58  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F7EFC 001F4E5C  FC 00 00 1E */	fctiwz f0, f0
/* 801F7F00 001F4E60  D8 01 02 70 */	stfd f0, 0x270(r1)
/* 801F7F04 001F4E64  80 81 02 74 */	lwz r4, 0x274(r1)
/* 801F7F08 001F4E68  48 0F 0F A5 */	bl PitchBend__11CSfxManagerF10CSfxHandlei
lbl_801F7F0C:
/* 801F7F0C 001F4E6C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F7F10 001F4E70  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801F7F14 001F4E74  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 801F7F18 001F4E78  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F7F1C 001F4E7C  C0 45 00 00 */	lfs f2, 0(r5)
/* 801F7F20 001F4E80  7F E3 FB 78 */	mr r3, r31
/* 801F7F24 001F4E84  7F C4 F3 78 */	mr r4, r30
/* 801F7F28 001F4E88  D0 5F 08 7C */	stfs f2, 0x87c(r31)
/* 801F7F2C 001F4E8C  C0 45 00 04 */	lfs f2, 4(r5)
/* 801F7F30 001F4E90  D0 5F 08 80 */	stfs f2, 0x880(r31)
/* 801F7F34 001F4E94  C0 45 00 08 */	lfs f2, 8(r5)
/* 801F7F38 001F4E98  D0 5F 08 84 */	stfs f2, 0x884(r31)
/* 801F7F3C 001F4E9C  D0 1F 08 98 */	stfs f0, 0x898(r31)
/* 801F7F40 001F4EA0  4B E8 1B D9 */	bl Think__10CPatternedFfR13CStateManager
/* 801F7F44 001F4EA4  C0 1F 08 7C */	lfs f0, 0x87c(r31)
/* 801F7F48 001F4EA8  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 801F7F4C 001F4EAC  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 801F7F50 001F4EB0  C0 1F 08 80 */	lfs f0, 0x880(r31)
/* 801F7F54 001F4EB4  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 801F7F58 001F4EB8  C0 1F 08 84 */	lfs f0, 0x884(r31)
/* 801F7F5C 001F4EBC  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 801F7F60 001F4EC0  48 11 C7 99 */	bl CanBeNormalized__9CVector3fCFv
/* 801F7F64 001F4EC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F7F68 001F4EC8  41 82 00 0C */	beq lbl_801F7F74
/* 801F7F6C 001F4ECC  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 801F7F70 001F4ED0  48 11 C9 89 */	bl Normalize__9CVector3fFv
lbl_801F7F74:
/* 801F7F74 001F4ED4  38 7F 08 7C */	addi r3, r31, 0x87c
/* 801F7F78 001F4ED8  48 11 C9 41 */	bl Magnitude__9CVector3fCFv
/* 801F7F7C 001F4EDC  C0 02 AF 84 */	lfs f0, lbl_805ACCA4@sda21(r2)
/* 801F7F80 001F4EE0  38 61 00 20 */	addi r3, r1, 0x20
/* 801F7F84 001F4EE4  38 8D 93 34 */	addi r4, r13, lbl_805A7EF4@sda21
/* 801F7F88 001F4EE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801F7F8C 001F4EEC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801F7F90 001F4EF0  4B E8 5E 51 */	bl "Min<f>__5CMathFRCfRCf"
/* 801F7F94 001F4EF4  C0 63 00 00 */	lfs f3, 0(r3)
/* 801F7F98 001F4EF8  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801F7F9C 001F4EFC  C0 41 01 BC */	lfs f2, 0x1bc(r1)
/* 801F7FA0 001F4F00  38 83 66 F4 */	addi r4, r3, sUpVector__9CVector3f@l
/* 801F7FA4 001F4F04  C0 21 01 C0 */	lfs f1, 0x1c0(r1)
/* 801F7FA8 001F4F08  38 61 00 F8 */	addi r3, r1, 0xf8
/* 801F7FAC 001F4F0C  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 801F7FB0 001F4F10  EC A3 00 B2 */	fmuls f5, f3, f2
/* 801F7FB4 001F4F14  EC 83 00 72 */	fmuls f4, f3, f1
/* 801F7FB8 001F4F18  C0 44 00 04 */	lfs f2, 4(r4)
/* 801F7FBC 001F4F1C  EC 63 00 32 */	fmuls f3, f3, f0
/* 801F7FC0 001F4F20  C0 24 00 08 */	lfs f1, 8(r4)
/* 801F7FC4 001F4F24  C0 04 00 00 */	lfs f0, 0(r4)
/* 801F7FC8 001F4F28  EC 42 28 2A */	fadds f2, f2, f5
/* 801F7FCC 001F4F2C  EC 21 20 2A */	fadds f1, f1, f4
/* 801F7FD0 001F4F30  D0 61 00 E0 */	stfs f3, 0xe0(r1)
/* 801F7FD4 001F4F34  EC 00 18 2A */	fadds f0, f0, f3
/* 801F7FD8 001F4F38  38 81 00 EC */	addi r4, r1, 0xec
/* 801F7FDC 001F4F3C  D0 A1 00 E4 */	stfs f5, 0xe4(r1)
/* 801F7FE0 001F4F40  D0 81 00 E8 */	stfs f4, 0xe8(r1)
/* 801F7FE4 001F4F44  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 801F7FE8 001F4F48  D0 41 00 F0 */	stfs f2, 0xf0(r1)
/* 801F7FEC 001F4F4C  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 801F7FF0 001F4F50  48 11 C8 61 */	bl AsNormalized__9CVector3fCFv
/* 801F7FF4 001F4F54  C0 41 00 F8 */	lfs f2, 0xf8(r1)
/* 801F7FF8 001F4F58  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 801F7FFC 001F4F5C  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 801F8000 001F4F60  38 81 01 AC */	addi r4, r1, 0x1ac
/* 801F8004 001F4F64  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 801F8008 001F4F68  D0 41 01 AC */	stfs f2, 0x1ac(r1)
/* 801F800C 001F4F6C  D0 21 01 B0 */	stfs f1, 0x1b0(r1)
/* 801F8010 001F4F70  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 801F8014 001F4F74  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 801F8018 001F4F78  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 801F801C 001F4F7C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 801F8020 001F4F80  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 801F8024 001F4F84  D0 21 01 A4 */	stfs f1, 0x1a4(r1)
/* 801F8028 001F4F88  D0 41 01 A8 */	stfs f2, 0x1a8(r1)
/* 801F802C 001F4F8C  48 11 C6 05 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 801F8030 001F4F90  FC 20 0A 10 */	fabs f1, f1
/* 801F8034 001F4F94  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F8038 001F4F98  FC 20 08 18 */	frsp f1, f1
/* 801F803C 001F4F9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F8040 001F4FA0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 801F8044 001F4FA4  40 81 01 CC */	ble lbl_801F8210
/* 801F8048 001F4FA8  C0 42 AF 8C */	lfs f2, lbl_805ACCAC@sda21(r2)
/* 801F804C 001F4FAC  38 61 00 44 */	addi r3, r1, 0x44
/* 801F8050 001F4FB0  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F8054 001F4FB4  38 81 00 40 */	addi r4, r1, 0x40
/* 801F8058 001F4FB8  C0 02 AF 90 */	lfs f0, lbl_805ACCB0@sda21(r2)
/* 801F805C 001F4FBC  EC 22 00 72 */	fmuls f1, f2, f1
/* 801F8060 001F4FC0  C0 42 AF 88 */	lfs f2, lbl_805ACCA8@sda21(r2)
/* 801F8064 001F4FC4  EC 01 00 24 */	fdivs f0, f1, f0
/* 801F8068 001F4FC8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801F806C 001F4FCC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801F8070 001F4FD0  4B E8 5D 71 */	bl "Min<f>__5CMathFRCfRCf"
/* 801F8074 001F4FD4  C1 03 00 00 */	lfs f8, 0(r3)
/* 801F8078 001F4FD8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 801F807C 001F4FDC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 801F8080 001F4FE0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 801F8084 001F4FE4  C0 21 01 B0 */	lfs f1, 0x1b0(r1)
/* 801F8088 001F4FE8  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 801F808C 001F4FEC  EC E2 40 28 */	fsubs f7, f2, f8
/* 801F8090 001F4FF0  C0 61 01 A0 */	lfs f3, 0x1a0(r1)
/* 801F8094 001F4FF4  EC A8 00 72 */	fmuls f5, f8, f1
/* 801F8098 001F4FF8  C0 41 01 A4 */	lfs f2, 0x1a4(r1)
/* 801F809C 001F4FFC  EC 88 00 32 */	fmuls f4, f8, f0
/* 801F80A0 001F5000  C0 21 01 A8 */	lfs f1, 0x1a8(r1)
/* 801F80A4 001F5004  EC C7 00 B2 */	fmuls f6, f7, f2
/* 801F80A8 001F5008  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 801F80AC 001F500C  EC 47 00 72 */	fmuls f2, f7, f1
/* 801F80B0 001F5010  D0 A1 00 C0 */	stfs f5, 0xc0(r1)
/* 801F80B4 001F5014  EC 67 00 F2 */	fmuls f3, f7, f3
/* 801F80B8 001F5018  EC 28 00 32 */	fmuls f1, f8, f0
/* 801F80BC 001F501C  EC E5 30 2A */	fadds f7, f5, f6
/* 801F80C0 001F5020  D0 C1 00 B4 */	stfs f6, 0xb4(r1)
/* 801F80C4 001F5024  EC A4 10 2A */	fadds f5, f4, f2
/* 801F80C8 001F5028  EC 01 18 2A */	fadds f0, f1, f3
/* 801F80CC 001F502C  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 801F80D0 001F5030  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 801F80D4 001F5034  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 801F80D8 001F5038  D0 81 00 C4 */	stfs f4, 0xc4(r1)
/* 801F80DC 001F503C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 801F80E0 001F5040  D0 E1 00 CC */	stfs f7, 0xcc(r1)
/* 801F80E4 001F5044  D0 A1 00 D0 */	stfs f5, 0xd0(r1)
/* 801F80E8 001F5048  48 11 C7 69 */	bl AsNormalized__9CVector3fCFv
/* 801F80EC 001F504C  C0 E1 00 D4 */	lfs f7, 0xd4(r1)
/* 801F80F0 001F5050  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801F80F4 001F5054  C0 C1 00 D8 */	lfs f6, 0xd8(r1)
/* 801F80F8 001F5058  38 81 00 98 */	addi r4, r1, 0x98
/* 801F80FC 001F505C  C0 A1 00 DC */	lfs f5, 0xdc(r1)
/* 801F8100 001F5060  D0 E1 01 94 */	stfs f7, 0x194(r1)
/* 801F8104 001F5064  D0 C1 01 98 */	stfs f6, 0x198(r1)
/* 801F8108 001F5068  D0 A1 01 9C */	stfs f5, 0x19c(r1)
/* 801F810C 001F506C  C1 3F 00 58 */	lfs f9, 0x58(r31)
/* 801F8110 001F5070  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 801F8114 001F5074  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 801F8118 001F5078  EC 26 02 72 */	fmuls f1, f6, f9
/* 801F811C 001F507C  EC 47 01 32 */	fmuls f2, f7, f4
/* 801F8120 001F5080  EC 05 00 F2 */	fmuls f0, f5, f3
/* 801F8124 001F5084  EC 84 09 78 */	fmsubs f4, f4, f5, f1
/* 801F8128 001F5088  ED 03 11 B8 */	fmsubs f8, f3, f6, f2
/* 801F812C 001F508C  EC 69 01 F8 */	fmsubs f3, f9, f7, f0
/* 801F8130 001F5090  EC 04 01 B2 */	fmuls f0, f4, f6
/* 801F8134 001F5094  D0 81 01 88 */	stfs f4, 0x188(r1)
/* 801F8138 001F5098  EC 28 01 F2 */	fmuls f1, f8, f7
/* 801F813C 001F509C  EC 43 01 72 */	fmuls f2, f3, f5
/* 801F8140 001F50A0  D0 61 01 8C */	stfs f3, 0x18c(r1)
/* 801F8144 001F50A4  EC 07 00 F8 */	fmsubs f0, f7, f3, f0
/* 801F8148 001F50A8  EC 25 09 38 */	fmsubs f1, f5, f4, f1
/* 801F814C 001F50AC  D1 01 01 90 */	stfs f8, 0x190(r1)
/* 801F8150 001F50B0  EC 46 12 38 */	fmsubs f2, f6, f8, f2
/* 801F8154 001F50B4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801F8158 001F50B8  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801F815C 001F50BC  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801F8160 001F50C0  48 11 C6 F1 */	bl AsNormalized__9CVector3fCFv
/* 801F8164 001F50C4  C0 A1 00 A4 */	lfs f5, 0xa4(r1)
/* 801F8168 001F50C8  38 61 02 40 */	addi r3, r1, 0x240
/* 801F816C 001F50CC  C0 81 00 A8 */	lfs f4, 0xa8(r1)
/* 801F8170 001F50D0  38 81 01 88 */	addi r4, r1, 0x188
/* 801F8174 001F50D4  C0 61 00 AC */	lfs f3, 0xac(r1)
/* 801F8178 001F50D8  38 A1 01 7C */	addi r5, r1, 0x17c
/* 801F817C 001F50DC  C0 C1 01 98 */	lfs f6, 0x198(r1)
/* 801F8180 001F50E0  38 C1 01 94 */	addi r6, r1, 0x194
/* 801F8184 001F50E4  C0 E1 01 9C */	lfs f7, 0x19c(r1)
/* 801F8188 001F50E8  38 E1 00 8C */	addi r7, r1, 0x8c
/* 801F818C 001F50EC  C1 01 01 94 */	lfs f8, 0x194(r1)
/* 801F8190 001F50F0  EC 26 00 F2 */	fmuls f1, f6, f3
/* 801F8194 001F50F4  EC 07 01 72 */	fmuls f0, f7, f5
/* 801F8198 001F50F8  D0 A1 01 7C */	stfs f5, 0x17c(r1)
/* 801F819C 001F50FC  EC 48 01 32 */	fmuls f2, f8, f4
/* 801F81A0 001F5100  EC 24 09 F8 */	fmsubs f1, f4, f7, f1
/* 801F81A4 001F5104  D0 81 01 80 */	stfs f4, 0x180(r1)
/* 801F81A8 001F5108  EC 03 02 38 */	fmsubs f0, f3, f8, f0
/* 801F81AC 001F510C  EC 45 11 B8 */	fmsubs f2, f5, f6, f2
/* 801F81B0 001F5110  D0 61 01 84 */	stfs f3, 0x184(r1)
/* 801F81B4 001F5114  D0 21 01 88 */	stfs f1, 0x188(r1)
/* 801F81B8 001F5118  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 801F81BC 001F511C  D0 41 01 90 */	stfs f2, 0x190(r1)
/* 801F81C0 001F5120  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801F81C4 001F5124  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801F81C8 001F5128  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801F81CC 001F512C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801F81D0 001F5130  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 801F81D4 001F5134  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 801F81D8 001F5138  48 11 AC 85 */	bl __ct__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3f_0
/* 801F81DC 001F513C  38 7F 00 34 */	addi r3, r31, 0x34
/* 801F81E0 001F5140  38 81 02 40 */	addi r4, r1, 0x240
/* 801F81E4 001F5144  48 11 A9 5D */	bl __as__12CTransform4fFRC12CTransform4f
/* 801F81E8 001F5148  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 801F81EC 001F514C  38 60 00 01 */	li r3, 1
/* 801F81F0 001F5150  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801F81F4 001F5154  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 801F81F8 001F5158  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 801F81FC 001F515C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801F8200 001F5160  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 801F8204 001F5164  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 801F8208 001F5168  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801F820C 001F516C  98 1F 00 E4 */	stb r0, 0xe4(r31)
lbl_801F8210:
/* 801F8210 001F5170  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F8214 001F5174  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801F8218 001F5178  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801F821C 001F517C  40 82 00 30 */	bne lbl_801F824C
/* 801F8220 001F5180  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F8224 001F5184  38 7F 07 A0 */	addi r3, r31, 0x7a0
/* 801F8228 001F5188  4B F7 D7 81 */	bl Update__13CBoneTrackingFf
/* 801F822C 001F518C  48 00 00 20 */	b lbl_801F824C
lbl_801F8230:
/* 801F8230 001F5190  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F8234 001F5194  7F E3 FB 78 */	mr r3, r31
/* 801F8238 001F5198  7F C4 F3 78 */	mr r4, r30
/* 801F823C 001F519C  4B E8 24 51 */	bl UpdateAlphaDelta__10CPatternedFfR13CStateManager
/* 801F8240 001F51A0  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F8244 001F51A4  7F E3 FB 78 */	mr r3, r31
/* 801F8248 001F51A8  4B E8 23 71 */	bl UpdateDamageColor__10CPatternedFf
lbl_801F824C:
/* 801F824C 001F51AC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801F8250 001F51B0  40 82 02 74 */	bne lbl_801F84C4
/* 801F8254 001F51B4  80 7F 08 9C */	lwz r3, 0x89c(r31)
/* 801F8258 001F51B8  88 03 00 68 */	lbz r0, 0x68(r3)
/* 801F825C 001F51BC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801F8260 001F51C0  40 82 00 A8 */	bne lbl_801F8308
/* 801F8264 001F51C4  7F E3 FB 78 */	mr r3, r31
/* 801F8268 001F51C8  38 80 00 01 */	li r4, 1
/* 801F826C 001F51CC  4B E5 B1 81 */	bl SetMuted__6CActorFb
/* 801F8270 001F51D0  7F E3 FB 78 */	mr r3, r31
/* 801F8274 001F51D4  38 80 00 00 */	li r4, 0
/* 801F8278 001F51D8  4B E5 B1 75 */	bl SetMuted__6CActorFb
/* 801F827C 001F51DC  80 7F 08 9C */	lwz r3, 0x89c(r31)
/* 801F8280 001F51E0  7F C4 F3 78 */	mr r4, r30
/* 801F8284 001F51E4  38 BF 00 34 */	addi r5, r31, 0x34
/* 801F8288 001F51E8  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 801F828C 001F51EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8290 001F51F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F8294 001F51F4  7D 89 03 A6 */	mtctr r12
/* 801F8298 001F51F8  4E 80 04 21 */	bctrl
/* 801F829C 001F51FC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801F82A0 001F5200  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 801F82A4 001F5204  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801F82A8 001F5208  38 83 66 70 */	addi r4, r3, sIdentity__12CTransform4f@l
/* 801F82AC 001F520C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801F82B0 001F5210  38 7F 00 34 */	addi r3, r31, 0x34
/* 801F82B4 001F5214  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 801F82B8 001F5218  D0 21 01 74 */	stfs f1, 0x174(r1)
/* 801F82BC 001F521C  D0 41 01 78 */	stfs f2, 0x178(r1)
/* 801F82C0 001F5220  48 11 A8 81 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801F82C4 001F5224  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 801F82C8 001F5228  38 A0 00 01 */	li r5, 1
/* 801F82CC 001F522C  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 801F82D0 001F5230  7F E3 FB 78 */	mr r3, r31
/* 801F82D4 001F5234  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 801F82D8 001F5238  38 81 01 70 */	addi r4, r1, 0x170
/* 801F82DC 001F523C  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 801F82E0 001F5240  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 801F82E4 001F5244  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 801F82E8 001F5248  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 801F82EC 001F524C  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 801F82F0 001F5250  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 801F82F4 001F5254  4B E5 AB 99 */	bl SetTranslation__6CActorFRC9CVector3f
/* 801F82F8 001F5258  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F82FC 001F525C  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801F8300 001F5260  4B F4 25 8D */	bl SetPlaybackRate__15CBodyControllerFf
/* 801F8304 001F5264  48 00 00 94 */	b lbl_801F8398
lbl_801F8308:
/* 801F8308 001F5268  A0 BF 00 C4 */	lhz r5, 0xc4(r31)
/* 801F830C 001F526C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F8310 001F5270  C3 C2 AF 94 */	lfs f30, lbl_805ACCB4@sda21(r2)
/* 801F8314 001F5274  7C 05 00 40 */	cmplw r5, r0
/* 801F8318 001F5278  41 82 00 3C */	beq lbl_801F8354
/* 801F831C 001F527C  B0 A1 00 0C */	sth r5, 0xc(r1)
/* 801F8320 001F5280  7F C3 F3 78 */	mr r3, r30
/* 801F8324 001F5284  38 81 00 10 */	addi r4, r1, 0x10
/* 801F8328 001F5288  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 801F832C 001F528C  4B E5 42 79 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F8330 001F5290  7C 64 1B 78 */	mr r4, r3
/* 801F8334 001F5294  38 61 00 50 */	addi r3, r1, 0x50
/* 801F8338 001F5298  4B EA E5 29 */	bl "__ct__26TCastToPtr<12CScriptWater>FP7CEntity"
/* 801F833C 001F529C  80 83 00 04 */	lwz r4, 4(r3)
/* 801F8340 001F52A0  28 04 00 00 */	cmplwi r4, 0
/* 801F8344 001F52A4  41 82 00 10 */	beq lbl_801F8354
/* 801F8348 001F52A8  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 801F834C 001F52AC  4B E7 E3 81 */	bl GetTriggerBoundsWR__14CScriptTriggerCFv
/* 801F8350 001F52B0  C3 C1 01 D8 */	lfs f30, 0x1d8(r1)
lbl_801F8354:
/* 801F8354 001F52B4  83 9F 08 9C */	lwz r28, 0x89c(r31)
/* 801F8358 001F52B8  7F E3 FB 78 */	mr r3, r31
/* 801F835C 001F52BC  4B E8 07 2D */	bl CalcDyingThinkRate__10CPatternedFv
/* 801F8360 001F52C0  81 9C 00 00 */	lwz r12, 0(r28)
/* 801F8364 001F52C4  FC 40 F0 90 */	fmr f2, f30
/* 801F8368 001F52C8  C0 01 00 08 */	lfs f0, 8(r1)
/* 801F836C 001F52CC  7F 83 E3 78 */	mr r3, r28
/* 801F8370 001F52D0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F8374 001F52D4  7F C4 F3 78 */	mr r4, r30
/* 801F8378 001F52D8  EC 20 00 72 */	fmuls f1, f0, f1
/* 801F837C 001F52DC  7D 89 03 A6 */	mtctr r12
/* 801F8380 001F52E0  4E 80 04 21 */	bctrl
/* 801F8384 001F52E4  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801F8388 001F52E8  7F C5 F3 78 */	mr r5, r30
/* 801F838C 001F52EC  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F8390 001F52F0  38 9F 00 34 */	addi r4, r31, 0x34
/* 801F8394 001F52F4  4B F1 D1 F9 */	bl AdvanceParticles__10CModelDataFRC12CTransform4ffR13CStateManager
lbl_801F8398:
/* 801F8398 001F52F8  80 7F 08 9C */	lwz r3, 0x89c(r31)
/* 801F839C 001F52FC  88 03 00 68 */	lbz r0, 0x68(r3)
/* 801F83A0 001F5300  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F83A4 001F5304  41 82 00 6C */	beq lbl_801F8410
/* 801F83A8 001F5308  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F83AC 001F530C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801F83B0 001F5310  40 82 00 60 */	bne lbl_801F8410
/* 801F83B4 001F5314  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801F83B8 001F5318  38 60 00 01 */	li r3, 1
/* 801F83BC 001F531C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801F83C0 001F5320  C0 02 AF 98 */	lfs f0, lbl_805ACCB8@sda21(r2)
/* 801F83C4 001F5324  98 1F 04 00 */	stb r0, 0x400(r31)
/* 801F83C8 001F5328  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F83CC 001F532C  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 801F83D0 001F5330  D0 1F 03 E8 */	stfs f0, 0x3e8(r31)
/* 801F83D4 001F5334  7F E3 FB 78 */	mr r3, r31
/* 801F83D8 001F5338  4B F2 28 C9 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 801F83DC 001F533C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F83E0 001F5340  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801F83E4 001F5344  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 801F83E8 001F5348  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F83EC 001F534C  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 801F83F0 001F5350  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F83F4 001F5354  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 801F83F8 001F5358  C0 03 00 00 */	lfs f0, 0(r3)
/* 801F83FC 001F535C  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 801F8400 001F5360  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F8404 001F5364  D0 1F 08 74 */	stfs f0, 0x874(r31)
/* 801F8408 001F5368  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F840C 001F536C  D0 1F 08 78 */	stfs f0, 0x878(r31)
lbl_801F8410:
/* 801F8410 001F5370  80 1F 08 9C */	lwz r0, 0x89c(r31)
/* 801F8414 001F5374  28 00 00 00 */	cmplwi r0, 0
/* 801F8418 001F5378  41 82 00 AC */	beq lbl_801F84C4
/* 801F841C 001F537C  C0 5F 08 8C */	lfs f2, 0x88c(r31)
/* 801F8420 001F5380  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F8424 001F5384  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F8428 001F5388  7C 00 00 26 */	mfcr r0
/* 801F842C 001F538C  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F8430 001F5390  C0 02 AF 64 */	lfs f0, lbl_805ACC84@sda21(r2)
/* 801F8434 001F5394  54 1A 17 FE */	rlwinm r26, r0, 2, 0x1f, 0x1f
/* 801F8438 001F5398  EC 22 08 28 */	fsubs f1, f2, f1
/* 801F843C 001F539C  D0 3F 08 8C */	stfs f1, 0x88c(r31)
/* 801F8440 001F53A0  C0 3F 08 8C */	lfs f1, 0x88c(r31)
/* 801F8444 001F53A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F8448 001F53A8  40 80 00 7C */	bge lbl_801F84C4
/* 801F844C 001F53AC  80 7F 08 9C */	lwz r3, 0x89c(r31)
/* 801F8450 001F53B0  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 801F8454 001F53B4  2C 00 00 02 */	cmpwi r0, 2
/* 801F8458 001F53B8  40 81 00 18 */	ble lbl_801F8470
/* 801F845C 001F53BC  38 9F 08 8C */	addi r4, r31, 0x88c
/* 801F8460 001F53C0  38 6D 93 38 */	addi r3, r13, lbl_805A7EF8@sda21
/* 801F8464 001F53C4  4B E8 59 7D */	bl "Min<f>__5CMathFRCfRCf"
/* 801F8468 001F53C8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801F846C 001F53CC  D0 1F 08 8C */	stfs f0, 0x88c(r31)
lbl_801F8470:
/* 801F8470 001F53D0  28 1A 00 00 */	cmplwi r26, 0
/* 801F8474 001F53D4  41 82 00 50 */	beq lbl_801F84C4
/* 801F8478 001F53D8  C0 3F 08 8C */	lfs f1, 0x88c(r31)
/* 801F847C 001F53DC  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F8480 001F53E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F8484 001F53E4  4C 40 13 82 */	cror 2, 0, 2
/* 801F8488 001F53E8  40 82 00 3C */	bne lbl_801F84C4
/* 801F848C 001F53EC  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 801F8490 001F53F0  38 61 00 7C */	addi r3, r1, 0x7c
/* 801F8494 001F53F4  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 801F8498 001F53F8  4B E0 C8 21 */	bl string_l__4rstlFPCc
/* 801F849C 001F53FC  7F E3 FB 78 */	mr r3, r31
/* 801F84A0 001F5400  4B EA A4 59 */	bl GetStateMachine__3CAiFv
/* 801F84A4 001F5404  7C 66 1B 78 */	mr r6, r3
/* 801F84A8 001F5408  7F C4 F3 78 */	mr r4, r30
/* 801F84AC 001F540C  7F E5 FB 78 */	mr r5, r31
/* 801F84B0 001F5410  38 7F 03 30 */	addi r3, r31, 0x330
/* 801F84B4 001F5414  38 E1 00 7C */	addi r7, r1, 0x7c
/* 801F84B8 001F5418  4B E8 77 4D */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801F84BC 001F541C  38 61 00 7C */	addi r3, r1, 0x7c
/* 801F84C0 001F5420  48 14 56 21 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801F84C4:
/* 801F84C4 001F5424  E3 E1 02 A8 */	psq_l f31, 680(r1), 0, qr0
/* 801F84C8 001F5428  CB E1 02 A0 */	lfd f31, 0x2a0(r1)
/* 801F84CC 001F542C  E3 C1 02 98 */	psq_l f30, 664(r1), 0, qr0
/* 801F84D0 001F5430  CB C1 02 90 */	lfd f30, 0x290(r1)
/* 801F84D4 001F5434  BB 41 02 78 */	lmw r26, 0x278(r1)
/* 801F84D8 001F5438  80 01 02 B4 */	lwz r0, 0x2b4(r1)
/* 801F84DC 001F543C  7C 08 03 A6 */	mtlr r0
/* 801F84E0 001F5440  38 21 02 B0 */	addi r1, r1, 0x2b0
/* 801F84E4 001F5444  4E 80 00 20 */	blr

.global PreRender__13CFlyingPirateFR13CStateManagerRC14CFrustumPlanes
PreRender__13CFlyingPirateFR13CStateManagerRC14CFrustumPlanes:
/* 801F84E8 001F5448  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F84EC 001F544C  7C 08 02 A6 */	mflr r0
/* 801F84F0 001F5450  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F84F4 001F5454  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F84F8 001F5458  7C BF 2B 78 */	mr r31, r5
/* 801F84FC 001F545C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F8500 001F5460  7C 9E 23 78 */	mr r30, r4
/* 801F8504 001F5464  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801F8508 001F5468  7C 7D 1B 78 */	mr r29, r3
/* 801F850C 001F546C  80 63 08 9C */	lwz r3, 0x89c(r3)
/* 801F8510 001F5470  28 03 00 00 */	cmplwi r3, 0
/* 801F8514 001F5474  41 82 00 40 */	beq lbl_801F8554
/* 801F8518 001F5478  88 03 00 68 */	lbz r0, 0x68(r3)
/* 801F851C 001F547C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801F8520 001F5480  41 82 00 34 */	beq lbl_801F8554
/* 801F8524 001F5484  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 801F8528 001F5488  38 81 00 14 */	addi r4, r1, 0x14
/* 801F852C 001F548C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 801F8530 001F5490  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801F8534 001F5494  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801F8538 001F5498  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801F853C 001F549C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801F8540 001F54A0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801F8544 001F54A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8548 001F54A8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801F854C 001F54AC  7D 89 03 A6 */	mtctr r12
/* 801F8550 001F54B0  4E 80 04 21 */	bctrl
lbl_801F8554:
/* 801F8554 001F54B4  7F A3 EB 78 */	mr r3, r29
/* 801F8558 001F54B8  7F C4 F3 78 */	mr r4, r30
/* 801F855C 001F54BC  7F E5 FB 78 */	mr r5, r31
/* 801F8560 001F54C0  4B E7 FD 7D */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 801F8564 001F54C4  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 801F8568 001F54C8  7F C4 F3 78 */	mr r4, r30
/* 801F856C 001F54CC  81 1D 04 50 */	lwz r8, 0x450(r29)
/* 801F8570 001F54D0  38 7D 07 A0 */	addi r3, r29, 0x7a0
/* 801F8574 001F54D4  C0 05 00 00 */	lfs f0, 0(r5)
/* 801F8578 001F54D8  38 DD 00 34 */	addi r6, r29, 0x34
/* 801F857C 001F54DC  38 E1 00 08 */	addi r7, r1, 8
/* 801F8580 001F54E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 801F8584 001F54E4  C0 05 00 04 */	lfs f0, 4(r5)
/* 801F8588 001F54E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801F858C 001F54EC  C0 05 00 08 */	lfs f0, 8(r5)
/* 801F8590 001F54F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801F8594 001F54F4  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 801F8598 001F54F8  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 801F859C 001F54FC  4B F7 D3 75 */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 801F85A0 001F5500  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F85A4 001F5504  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F85A8 001F5508  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F85AC 001F550C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801F85B0 001F5510  7C 08 03 A6 */	mtlr r0
/* 801F85B4 001F5514  38 21 00 30 */	addi r1, r1, 0x30
/* 801F85B8 001F5518  4E 80 00 20 */	blr

.global AddToRenderer__13CFlyingPirateCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__13CFlyingPirateCFRC14CFrustumPlanesRC13CStateManager:
/* 801F85BC 001F551C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F85C0 001F5520  7C 08 02 A6 */	mflr r0
/* 801F85C4 001F5524  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F85C8 001F5528  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 801F85CC 001F552C  7C 7A 1B 78 */	mr r26, r3
/* 801F85D0 001F5530  7C 9B 23 78 */	mr r27, r4
/* 801F85D4 001F5534  7C BC 2B 78 */	mr r28, r5
/* 801F85D8 001F5538  3B A0 00 00 */	li r29, 0
/* 801F85DC 001F553C  3B DA 06 88 */	addi r30, r26, 0x688
/* 801F85E0 001F5540  48 00 00 5C */	b lbl_801F863C
lbl_801F85E4:
/* 801F85E4 001F5544  83 FE 00 04 */	lwz r31, 4(r30)
/* 801F85E8 001F5548  38 61 00 08 */	addi r3, r1, 8
/* 801F85EC 001F554C  7F E4 FB 78 */	mr r4, r31
/* 801F85F0 001F5550  81 9F 00 00 */	lwz r12, 0(r31)
/* 801F85F4 001F5554  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801F85F8 001F5558  7D 89 03 A6 */	mtctr r12
/* 801F85FC 001F555C  4E 80 04 21 */	bctrl
/* 801F8600 001F5560  7F 63 DB 78 */	mr r3, r27
/* 801F8604 001F5564  38 81 00 08 */	addi r4, r1, 8
/* 801F8608 001F5568  48 14 CB 81 */	bl "BoxInFrustumPlanes__14CFrustumPlanesCFRCQ24rstl24optional_object<6CAABox>"
/* 801F860C 001F556C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F8610 001F5570  38 60 00 00 */	li r3, 0
/* 801F8614 001F5574  98 61 00 20 */	stb r3, 0x20(r1)
/* 801F8618 001F5578  41 82 00 1C */	beq lbl_801F8634
/* 801F861C 001F557C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 801F8620 001F5580  7F E4 FB 78 */	mr r4, r31
/* 801F8624 001F5584  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8628 001F5588  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801F862C 001F558C  7D 89 03 A6 */	mtctr r12
/* 801F8630 001F5590  4E 80 04 21 */	bctrl
lbl_801F8634:
/* 801F8634 001F5594  3B DE 00 08 */	addi r30, r30, 8
/* 801F8638 001F5598  3B BD 00 01 */	addi r29, r29, 1
lbl_801F863C:
/* 801F863C 001F559C  80 1A 06 84 */	lwz r0, 0x684(r26)
/* 801F8640 001F55A0  7C 1D 00 00 */	cmpw r29, r0
/* 801F8644 001F55A4  41 80 FF A0 */	blt lbl_801F85E4
/* 801F8648 001F55A8  7F 43 D3 78 */	mr r3, r26
/* 801F864C 001F55AC  7F 64 DB 78 */	mr r4, r27
/* 801F8650 001F55B0  7F 85 E3 78 */	mr r5, r28
/* 801F8654 001F55B4  4B E7 F2 65 */	bl AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
/* 801F8658 001F55B8  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 801F865C 001F55BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801F8660 001F55C0  7C 08 03 A6 */	mtlr r0
/* 801F8664 001F55C4  38 21 00 40 */	addi r1, r1, 0x40
/* 801F8668 001F55C8  4E 80 00 20 */	blr

.global CalculateRenderBounds__13CFlyingPirateFv
CalculateRenderBounds__13CFlyingPirateFv:
/* 801F866C 001F55CC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801F8670 001F55D0  7C 08 02 A6 */	mflr r0
/* 801F8674 001F55D4  90 01 00 64 */	stw r0, 0x64(r1)
/* 801F8678 001F55D8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801F867C 001F55DC  7C 7F 1B 78 */	mr r31, r3
/* 801F8680 001F55E0  80 83 08 9C */	lwz r4, 0x89c(r3)
/* 801F8684 001F55E4  28 04 00 00 */	cmplwi r4, 0
/* 801F8688 001F55E8  41 82 00 C4 */	beq lbl_801F874C
/* 801F868C 001F55EC  88 04 00 68 */	lbz r0, 0x68(r4)
/* 801F8690 001F55F0  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801F8694 001F55F4  41 82 00 B8 */	beq lbl_801F874C
/* 801F8698 001F55F8  38 61 00 38 */	addi r3, r1, 0x38
/* 801F869C 001F55FC  48 01 41 BD */	bl CalculateRenderBounds__8CRagDollCFv
/* 801F86A0 001F5600  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 801F86A4 001F5604  38 61 00 20 */	addi r3, r1, 0x20
/* 801F86A8 001F5608  C0 62 AF 9C */	lfs f3, lbl_805ACCBC@sda21(r2)
/* 801F86AC 001F560C  38 81 00 14 */	addi r4, r1, 0x14
/* 801F86B0 001F5610  C0 26 00 00 */	lfs f1, 0(r6)
/* 801F86B4 001F5614  38 A1 00 08 */	addi r5, r1, 8
/* 801F86B8 001F5618  C0 06 00 04 */	lfs f0, 4(r6)
/* 801F86BC 001F561C  C0 46 00 08 */	lfs f2, 8(r6)
/* 801F86C0 001F5620  ED 03 00 72 */	fmuls f8, f3, f1
/* 801F86C4 001F5624  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 801F86C8 001F5628  EC E3 00 32 */	fmuls f7, f3, f0
/* 801F86CC 001F562C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801F86D0 001F5630  EC C3 00 B2 */	fmuls f6, f3, f2
/* 801F86D4 001F5634  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 801F86D8 001F5638  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801F86DC 001F563C  EC A1 40 2A */	fadds f5, f1, f8
/* 801F86E0 001F5640  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801F86E4 001F5644  EC 80 38 2A */	fadds f4, f0, f7
/* 801F86E8 001F5648  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801F86EC 001F564C  EC 63 30 2A */	fadds f3, f3, f6
/* 801F86F0 001F5650  EC 42 40 28 */	fsubs f2, f2, f8
/* 801F86F4 001F5654  EC 21 38 28 */	fsubs f1, f1, f7
/* 801F86F8 001F5658  D0 A1 00 08 */	stfs f5, 8(r1)
/* 801F86FC 001F565C  EC 00 30 28 */	fsubs f0, f0, f6
/* 801F8700 001F5660  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801F8704 001F5664  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801F8708 001F5668  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801F870C 001F566C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801F8710 001F5670  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801F8714 001F5674  48 13 FD F5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801F8718 001F5678  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801F871C 001F567C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F8720 001F5680  90 7F 00 9C */	stw r3, 0x9c(r31)
/* 801F8724 001F5684  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 801F8728 001F5688  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801F872C 001F568C  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 801F8730 001F5690  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801F8734 001F5694  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801F8738 001F5698  90 7F 00 A8 */	stw r3, 0xa8(r31)
/* 801F873C 001F569C  90 1F 00 AC */	stw r0, 0xac(r31)
/* 801F8740 001F56A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F8744 001F56A4  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 801F8748 001F56A8  48 00 00 0C */	b lbl_801F8754
lbl_801F874C:
/* 801F874C 001F56AC  7F E3 FB 78 */	mr r3, r31
/* 801F8750 001F56B0  4B E5 C9 85 */	bl CalculateRenderBounds__6CActorFv
lbl_801F8754:
/* 801F8754 001F56B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801F8758 001F56B8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801F875C 001F56BC  7C 08 03 A6 */	mtlr r0
/* 801F8760 001F56C0  38 21 00 60 */	addi r1, r1, 0x60
/* 801F8764 001F56C4  4E 80 00 20 */	blr

.global DoUserAnimEvent__13CFlyingPirateFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__13CFlyingPirateFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 801F8768 001F56C8  94 21 FE 00 */	stwu r1, -0x200(r1)
/* 801F876C 001F56CC  7C 08 02 A6 */	mflr r0
/* 801F8770 001F56D0  90 01 02 04 */	stw r0, 0x204(r1)
/* 801F8774 001F56D4  DB E1 01 F0 */	stfd f31, 0x1f0(r1)
/* 801F8778 001F56D8  F3 E1 01 F8 */	psq_st f31, 504(r1), 0, qr0
/* 801F877C 001F56DC  BE E1 01 CC */	stmw r23, 0x1cc(r1)
/* 801F8780 001F56E0  7C DB 33 78 */	mr r27, r6
/* 801F8784 001F56E4  FF E0 08 90 */	fmr f31, f1
/* 801F8788 001F56E8  2C 1B 00 0B */	cmpwi r27, 0xb
/* 801F878C 001F56EC  7C 78 1B 78 */	mr r24, r3
/* 801F8790 001F56F0  7C 99 23 78 */	mr r25, r4
/* 801F8794 001F56F4  7C BA 2B 78 */	mr r26, r5
/* 801F8798 001F56F8  38 00 00 00 */	li r0, 0
/* 801F879C 001F56FC  41 82 02 D4 */	beq lbl_801F8A70
/* 801F87A0 001F5700  40 80 00 10 */	bge lbl_801F87B0
/* 801F87A4 001F5704  2C 1B 00 00 */	cmpwi r27, 0
/* 801F87A8 001F5708  41 82 00 14 */	beq lbl_801F87BC
/* 801F87AC 001F570C  48 00 03 48 */	b lbl_801F8AF4
lbl_801F87B0:
/* 801F87B0 001F5710  2C 1B 00 13 */	cmpwi r27, 0x13
/* 801F87B4 001F5714  41 82 02 BC */	beq lbl_801F8A70
/* 801F87B8 001F5718  48 00 03 3C */	b lbl_801F8AF4
lbl_801F87BC:
/* 801F87BC 001F571C  88 18 06 A1 */	lbz r0, 0x6a1(r24)
/* 801F87C0 001F5720  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801F87C4 001F5724  41 82 00 0C */	beq lbl_801F87D0
/* 801F87C8 001F5728  3B F8 05 C8 */	addi r31, r24, 0x5c8
/* 801F87CC 001F572C  48 00 00 08 */	b lbl_801F87D4
lbl_801F87D0:
/* 801F87D0 001F5730  3B F8 05 A0 */	addi r31, r24, 0x5a0
lbl_801F87D4:
/* 801F87D4 001F5734  80 1F 00 08 */	lwz r0, 8(r31)
/* 801F87D8 001F5738  28 00 00 00 */	cmplwi r0, 0
/* 801F87DC 001F573C  41 82 00 0C */	beq lbl_801F87E8
/* 801F87E0 001F5740  38 60 00 01 */	li r3, 1
/* 801F87E4 001F5744  48 00 00 3C */	b lbl_801F8820
lbl_801F87E8:
/* 801F87E8 001F5748  88 1F 00 04 */	lbz r0, 4(r31)
/* 801F87EC 001F574C  28 00 00 00 */	cmplwi r0, 0
/* 801F87F0 001F5750  41 82 00 2C */	beq lbl_801F881C
/* 801F87F4 001F5754  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F87F8 001F5758  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801F87FC 001F575C  28 00 00 00 */	cmplwi r0, 0
/* 801F8800 001F5760  41 82 00 1C */	beq lbl_801F881C
/* 801F8804 001F5764  7F E3 FB 78 */	mr r3, r31
/* 801F8808 001F5768  48 14 86 05 */	bl GetObj__6CTokenFv
/* 801F880C 001F576C  80 03 00 04 */	lwz r0, 4(r3)
/* 801F8810 001F5770  38 60 00 01 */	li r3, 1
/* 801F8814 001F5774  90 1F 00 08 */	stw r0, 8(r31)
/* 801F8818 001F5778  48 00 00 08 */	b lbl_801F8820
lbl_801F881C:
/* 801F881C 001F577C  38 60 00 00 */	li r3, 0
lbl_801F8820:
/* 801F8820 001F5780  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F8824 001F5784  41 82 02 44 */	beq lbl_801F8A68
/* 801F8828 001F5788  A0 18 00 08 */	lhz r0, 8(r24)
/* 801F882C 001F578C  7F 23 CB 78 */	mr r3, r25
/* 801F8830 001F5790  38 81 00 50 */	addi r4, r1, 0x50
/* 801F8834 001F5794  38 A0 00 09 */	li r5, 9
/* 801F8838 001F5798  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 801F883C 001F579C  38 C0 00 10 */	li r6, 0x10
/* 801F8840 001F57A0  B0 01 00 50 */	sth r0, 0x50(r1)
/* 801F8844 001F57A4  4B E4 CE ED */	bl CanCreateProjectile__13CStateManagerCF9TUniqueId11EWeaponTypei
/* 801F8848 001F57A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F884C 001F57AC  41 82 02 1C */	beq lbl_801F8A68
/* 801F8850 001F57B0  7F 04 C3 78 */	mr r4, r24
/* 801F8854 001F57B4  38 61 00 90 */	addi r3, r1, 0x90
/* 801F8858 001F57B8  38 BA 00 3C */	addi r5, r26, 0x3c
/* 801F885C 001F57BC  4B E8 01 1D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801F8860 001F57C0  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801F8864 001F57C4  38 81 00 90 */	addi r4, r1, 0x90
/* 801F8868 001F57C8  48 11 A3 0D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801F886C 001F57CC  3C 60 80 3D */	lis r3, lbl_803D247C@ha
/* 801F8870 001F57D0  3A E0 00 00 */	li r23, 0
/* 801F8874 001F57D4  38 83 24 7C */	addi r4, r3, lbl_803D247C@l
/* 801F8878 001F57D8  38 60 03 D8 */	li r3, 0x3d8
/* 801F887C 001F57DC  38 84 00 08 */	addi r4, r4, 8
/* 801F8880 001F57E0  38 A0 00 00 */	li r5, 0
/* 801F8884 001F57E4  48 11 CF E9 */	bl __nw__FUlPCcPCc
/* 801F8888 001F57E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 801F888C 001F57EC  41 82 00 E4 */	beq lbl_801F8970
/* 801F8890 001F57F0  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801F8894 001F57F4  38 00 00 00 */	li r0, 0
/* 801F8898 001F57F8  98 01 00 8C */	stb r0, 0x8c(r1)
/* 801F889C 001F57FC  3B A1 00 80 */	addi r29, r1, 0x80
/* 801F88A0 001F5800  3B 81 00 74 */	addi r28, r1, 0x74
/* 801F88A4 001F5804  3A E0 00 01 */	li r23, 1
/* 801F88A8 001F5808  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801F88AC 001F580C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801F88B0 001F5810  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801F88B4 001F5814  88 18 06 A1 */	lbz r0, 0x6a1(r24)
/* 801F88B8 001F5818  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801F88BC 001F581C  41 82 00 10 */	beq lbl_801F88CC
/* 801F88C0 001F5820  A0 18 08 5C */	lhz r0, 0x85c(r24)
/* 801F88C4 001F5824  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801F88C8 001F5828  48 00 00 14 */	b lbl_801F88DC
lbl_801F88CC:
/* 801F88CC 001F582C  80 79 08 4C */	lwz r3, 0x84c(r25)
/* 801F88D0 001F5830  A0 03 00 08 */	lhz r0, 8(r3)
/* 801F88D4 001F5834  B0 01 00 44 */	sth r0, 0x44(r1)
/* 801F88D8 001F5838  B0 01 00 30 */	sth r0, 0x30(r1)
lbl_801F88DC:
/* 801F88DC 001F583C  A0 01 00 30 */	lhz r0, 0x30(r1)
/* 801F88E0 001F5840  7F 24 CB 78 */	mr r4, r25
/* 801F88E4 001F5844  38 61 00 34 */	addi r3, r1, 0x34
/* 801F88E8 001F5848  B0 01 00 48 */	sth r0, 0x48(r1)
/* 801F88EC 001F584C  A0 B8 00 08 */	lhz r5, 8(r24)
/* 801F88F0 001F5850  B0 A1 00 40 */	sth r5, 0x40(r1)
/* 801F88F4 001F5854  80 18 00 04 */	lwz r0, 4(r24)
/* 801F88F8 001F5858  B0 A1 00 3C */	sth r5, 0x3c(r1)
/* 801F88FC 001F585C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801F8900 001F5860  90 01 00 58 */	stw r0, 0x58(r1)
/* 801F8904 001F5864  4B E5 47 D9 */	bl AllocateUniqueId__13CStateManagerFv
/* 801F8908 001F5868  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 801F890C 001F586C  38 A1 00 58 */	addi r5, r1, 0x58
/* 801F8910 001F5870  38 81 00 40 */	addi r4, r1, 0x40
/* 801F8914 001F5874  39 01 00 48 */	addi r8, r1, 0x48
/* 801F8918 001F5878  B0 01 00 38 */	sth r0, 0x38(r1)
/* 801F891C 001F587C  39 60 00 00 */	li r11, 0
/* 801F8920 001F5880  A0 02 C5 FC */	lhz r0, lbl_805AE31C@sda21(r2)
/* 801F8924 001F5884  7F C3 F3 78 */	mr r3, r30
/* 801F8928 001F5888  90 A1 00 08 */	stw r5, 8(r1)
/* 801F892C 001F588C  7F E5 FB 78 */	mr r5, r31
/* 801F8930 001F5890  38 E1 00 C0 */	addi r7, r1, 0xc0
/* 801F8934 001F5894  39 3F 00 0C */	addi r9, r31, 0xc
/* 801F8938 001F5898  90 81 00 0C */	stw r4, 0xc(r1)
/* 801F893C 001F589C  39 41 00 38 */	addi r10, r1, 0x38
/* 801F8940 001F58A0  38 80 00 01 */	li r4, 1
/* 801F8944 001F58A4  38 C0 00 09 */	li r6, 9
/* 801F8948 001F58A8  91 01 00 10 */	stw r8, 0x10(r1)
/* 801F894C 001F58AC  39 00 00 21 */	li r8, 0x21
/* 801F8950 001F58B0  91 61 00 14 */	stw r11, 0x14(r1)
/* 801F8954 001F58B4  91 61 00 18 */	stw r11, 0x18(r1)
/* 801F8958 001F58B8  93 81 00 1C */	stw r28, 0x1c(r1)
/* 801F895C 001F58BC  93 A1 00 20 */	stw r29, 0x20(r1)
/* 801F8960 001F58C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F8964 001F58C4  91 61 00 28 */	stw r11, 0x28(r1)
/* 801F8968 001F58C8  48 01 CD 31 */	bl "__ct__17CEnergyProjectileFbRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId9TUniqueIdUibRC9CVector3fRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sb"
/* 801F896C 001F58CC  7C 7E 1B 78 */	mr r30, r3
lbl_801F8970:
/* 801F8970 001F58D0  7E E0 07 75 */	extsb. r0, r23
/* 801F8974 001F58D4  41 82 00 30 */	beq lbl_801F89A4
/* 801F8978 001F58D8  88 01 00 8C */	lbz r0, 0x8c(r1)
/* 801F897C 001F58DC  28 00 00 00 */	cmplwi r0, 0
/* 801F8980 001F58E0  41 82 00 1C */	beq lbl_801F899C
/* 801F8984 001F58E4  34 61 00 80 */	addic. r3, r1, 0x80
/* 801F8988 001F58E8  41 82 00 14 */	beq lbl_801F899C
/* 801F898C 001F58EC  28 03 00 00 */	cmplwi r3, 0
/* 801F8990 001F58F0  41 82 00 0C */	beq lbl_801F899C
/* 801F8994 001F58F4  38 80 00 00 */	li r4, 0
/* 801F8998 001F58F8  48 14 84 A9 */	bl __dt__6CTokenFv
lbl_801F899C:
/* 801F899C 001F58FC  38 00 00 00 */	li r0, 0
/* 801F89A0 001F5900  98 01 00 8C */	stb r0, 0x8c(r1)
lbl_801F89A4:
/* 801F89A4 001F5904  28 1E 00 00 */	cmplwi r30, 0
/* 801F89A8 001F5908  41 82 00 C0 */	beq lbl_801F8A68
/* 801F89AC 001F590C  7F 23 CB 78 */	mr r3, r25
/* 801F89B0 001F5910  7F C4 F3 78 */	mr r4, r30
/* 801F89B4 001F5914  4B E5 43 41 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 801F89B8 001F5918  88 18 06 A1 */	lbz r0, 0x6a1(r24)
/* 801F89BC 001F591C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801F89C0 001F5920  40 82 00 A8 */	bne lbl_801F8A68
/* 801F89C4 001F5924  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801F89C8 001F5928  38 61 00 F0 */	addi r3, r1, 0xf0
/* 801F89CC 001F592C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801F89D0 001F5930  38 81 00 68 */	addi r4, r1, 0x68
/* 801F89D4 001F5934  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801F89D8 001F5938  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 801F89DC 001F593C  C0 22 AF A0 */	lfs f1, lbl_805ACCC0@sda21(r2)
/* 801F89E0 001F5940  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 801F89E4 001F5944  80 C1 00 5C */	lwz r6, 0x5c(r1)
/* 801F89E8 001F5948  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801F89EC 001F594C  80 A1 00 60 */	lwz r5, 0x60(r1)
/* 801F89F0 001F5950  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801F89F4 001F5954  90 C1 00 68 */	stw r6, 0x68(r1)
/* 801F89F8 001F5958  C0 42 AF 6C */	lfs f2, lbl_805ACC8C@sda21(r2)
/* 801F89FC 001F595C  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 801F8A00 001F5960  C0 62 AF A4 */	lfs f3, lbl_805ACCC4@sda21(r2)
/* 801F8A04 001F5964  90 01 00 70 */	stw r0, 0x70(r1)
/* 801F8A08 001F5968  4B F6 4B BD */	bl BuildPatternedExplodeShakeData__16CCameraShakeDataFRC9CVector3ffff
/* 801F8A0C 001F596C  7F C3 F3 78 */	mr r3, r30
/* 801F8A10 001F5970  38 81 00 F0 */	addi r4, r1, 0xf0
/* 801F8A14 001F5974  48 01 B0 B9 */	bl SetCameraShake__17CEnergyProjectileFRC16CCameraShakeData
/* 801F8A18 001F5978  34 81 01 70 */	addic. r4, r1, 0x170
/* 801F8A1C 001F597C  41 82 00 10 */	beq lbl_801F8A2C
/* 801F8A20 001F5980  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801F8A24 001F5984  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801F8A28 001F5988  90 04 00 00 */	stw r0, 0(r4)
lbl_801F8A2C:
/* 801F8A2C 001F598C  34 81 01 34 */	addic. r4, r1, 0x134
/* 801F8A30 001F5990  41 82 00 10 */	beq lbl_801F8A40
/* 801F8A34 001F5994  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801F8A38 001F5998  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801F8A3C 001F599C  90 04 00 00 */	stw r0, 0(r4)
lbl_801F8A40:
/* 801F8A40 001F59A0  34 81 00 F8 */	addic. r4, r1, 0xf8
/* 801F8A44 001F59A4  41 82 00 10 */	beq lbl_801F8A54
/* 801F8A48 001F59A8  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801F8A4C 001F59AC  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801F8A50 001F59B0  90 04 00 00 */	stw r0, 0(r4)
lbl_801F8A54:
/* 801F8A54 001F59B4  88 18 06 A0 */	lbz r0, 0x6a0(r24)
/* 801F8A58 001F59B8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F8A5C 001F59BC  41 82 00 0C */	beq lbl_801F8A68
/* 801F8A60 001F59C0  C0 18 06 58 */	lfs f0, 0x658(r24)
/* 801F8A64 001F59C4  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
lbl_801F8A68:
/* 801F8A68 001F59C8  38 00 00 01 */	li r0, 1
/* 801F8A6C 001F59CC  48 00 00 88 */	b lbl_801F8AF4
lbl_801F8A70:
/* 801F8A70 001F59D0  80 18 08 9C */	lwz r0, 0x89c(r24)
/* 801F8A74 001F59D4  28 00 00 00 */	cmplwi r0, 0
/* 801F8A78 001F59D8  40 82 00 78 */	bne lbl_801F8AF0
/* 801F8A7C 001F59DC  7F 03 C3 78 */	mr r3, r24
/* 801F8A80 001F59E0  7F 24 CB 78 */	mr r4, r25
/* 801F8A84 001F59E4  81 98 00 00 */	lwz r12, 0(r24)
/* 801F8A88 001F59E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801F8A8C 001F59EC  7D 89 03 A6 */	mtctr r12
/* 801F8A90 001F59F0  4E 80 04 21 */	bctrl
/* 801F8A94 001F59F4  C0 23 00 00 */	lfs f1, 0(r3)
/* 801F8A98 001F59F8  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F8A9C 001F59FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F8AA0 001F5A00  4C 40 13 82 */	cror 2, 0, 2
/* 801F8AA4 001F5A04  40 82 00 4C */	bne lbl_801F8AF0
/* 801F8AA8 001F5A08  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 801F8AAC 001F5A0C  38 60 00 B4 */	li r3, 0xb4
/* 801F8AB0 001F5A10  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 801F8AB4 001F5A14  38 A0 00 00 */	li r5, 0
/* 801F8AB8 001F5A18  38 84 00 08 */	addi r4, r4, 8
/* 801F8ABC 001F5A1C  48 11 CD B1 */	bl __nw__FUlPCcPCc
/* 801F8AC0 001F5A20  7C 77 1B 79 */	or. r23, r3, r3
/* 801F8AC4 001F5A24  41 82 00 1C */	beq lbl_801F8AE0
/* 801F8AC8 001F5A28  A0 D8 06 30 */	lhz r6, 0x630(r24)
/* 801F8ACC 001F5A2C  7F 24 CB 78 */	mr r4, r25
/* 801F8AD0 001F5A30  A0 F8 06 32 */	lhz r7, 0x632(r24)
/* 801F8AD4 001F5A34  7F 05 C3 78 */	mr r5, r24
/* 801F8AD8 001F5A38  48 00 74 A5 */	bl __ct__20CFlyingPirateRagDollFR13CStateManagerP13CFlyingPiratefUsUs
/* 801F8ADC 001F5A3C  7C 77 1B 78 */	mr r23, r3
lbl_801F8AE0:
/* 801F8AE0 001F5A40  80 78 08 9C */	lwz r3, 0x89c(r24)
/* 801F8AE4 001F5A44  38 80 00 01 */	li r4, 1
/* 801F8AE8 001F5A48  48 00 74 21 */	bl __dt__20CFlyingPirateRagDollFv
/* 801F8AEC 001F5A4C  92 F8 08 9C */	stw r23, 0x89c(r24)
lbl_801F8AF0:
/* 801F8AF0 001F5A50  38 00 00 01 */	li r0, 1
lbl_801F8AF4:
/* 801F8AF4 001F5A54  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801F8AF8 001F5A58  40 82 00 1C */	bne lbl_801F8B14
/* 801F8AFC 001F5A5C  FC 20 F8 90 */	fmr f1, f31
/* 801F8B00 001F5A60  7F 03 C3 78 */	mr r3, r24
/* 801F8B04 001F5A64  7F 24 CB 78 */	mr r4, r25
/* 801F8B08 001F5A68  7F 45 D3 78 */	mr r5, r26
/* 801F8B0C 001F5A6C  7F 66 DB 78 */	mr r6, r27
/* 801F8B10 001F5A70  4B E8 03 A1 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_801F8B14:
/* 801F8B14 001F5A74  E3 E1 01 F8 */	psq_l f31, 504(r1), 0, qr0
/* 801F8B18 001F5A78  CB E1 01 F0 */	lfd f31, 0x1f0(r1)
/* 801F8B1C 001F5A7C  BA E1 01 CC */	lmw r23, 0x1cc(r1)
/* 801F8B20 001F5A80  80 01 02 04 */	lwz r0, 0x204(r1)
/* 801F8B24 001F5A84  7C 08 03 A6 */	mtlr r0
/* 801F8B28 001F5A88  38 21 02 00 */	addi r1, r1, 0x200
/* 801F8B2C 001F5A8C  4E 80 00 20 */	blr

.global FireProjectile__13CFlyingPirateFR13CStateManagerRC9CVector3f
FireProjectile__13CFlyingPirateFR13CStateManagerRC9CVector3f:
/* 801F8B30 001F5A90  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 801F8B34 001F5A94  7C 08 02 A6 */	mflr r0
/* 801F8B38 001F5A98  90 01 02 54 */	stw r0, 0x254(r1)
/* 801F8B3C 001F5A9C  DB E1 02 40 */	stfd f31, 0x240(r1)
/* 801F8B40 001F5AA0  F3 E1 02 48 */	psq_st f31, 584(r1), 0, qr0
/* 801F8B44 001F5AA4  93 E1 02 3C */	stw r31, 0x23c(r1)
/* 801F8B48 001F5AA8  93 C1 02 38 */	stw r30, 0x238(r1)
/* 801F8B4C 001F5AAC  93 A1 02 34 */	stw r29, 0x234(r1)
/* 801F8B50 001F5AB0  93 81 02 30 */	stw r28, 0x230(r1)
/* 801F8B54 001F5AB4  FF E0 08 90 */	fmr f31, f1
/* 801F8B58 001F5AB8  7C 7D 1B 78 */	mr r29, r3
/* 801F8B5C 001F5ABC  7C 9E 23 78 */	mr r30, r4
/* 801F8B60 001F5AC0  38 61 01 50 */	addi r3, r1, 0x150
/* 801F8B64 001F5AC4  7F A4 EB 78 */	mr r4, r29
/* 801F8B68 001F5AC8  38 BD 07 E0 */	addi r5, r29, 0x7e0
/* 801F8B6C 001F5ACC  3B E0 00 00 */	li r31, 0
/* 801F8B70 001F5AD0  4B E7 FD 49 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801F8B74 001F5AD4  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 801F8B78 001F5AD8  38 81 01 50 */	addi r4, r1, 0x150
/* 801F8B7C 001F5ADC  48 11 9F F9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801F8B80 001F5AE0  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 801F8B84 001F5AE4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F8B88 001F5AE8  40 82 00 80 */	bne lbl_801F8C08
/* 801F8B8C 001F5AEC  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801F8B90 001F5AF0  39 60 00 00 */	li r11, 0
/* 801F8B94 001F5AF4  99 61 01 04 */	stb r11, 0x104(r1)
/* 801F8B98 001F5AF8  38 01 00 EC */	addi r0, r1, 0xec
/* 801F8B9C 001F5AFC  A1 42 C5 FC */	lhz r10, lbl_805AE31C@sda21(r2)
/* 801F8BA0 001F5B00  7F A3 EB 78 */	mr r3, r29
/* 801F8BA4 001F5B04  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 801F8BA8 001F5B08  7F C5 F3 78 */	mr r5, r30
/* 801F8BAC 001F5B0C  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 801F8BB0 001F5B10  39 21 00 F8 */	addi r9, r1, 0xf8
/* 801F8BB4 001F5B14  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 801F8BB8 001F5B18  38 C0 00 08 */	li r6, 8
/* 801F8BBC 001F5B1C  38 E0 00 00 */	li r7, 0
/* 801F8BC0 001F5B20  39 00 00 00 */	li r8, 0
/* 801F8BC4 001F5B24  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 801F8BC8 001F5B28  91 61 00 08 */	stw r11, 8(r1)
/* 801F8BCC 001F5B2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F8BD0 001F5B30  4B E7 EE 29 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 801F8BD4 001F5B34  88 01 01 04 */	lbz r0, 0x104(r1)
/* 801F8BD8 001F5B38  28 00 00 00 */	cmplwi r0, 0
/* 801F8BDC 001F5B3C  41 82 00 1C */	beq lbl_801F8BF8
/* 801F8BE0 001F5B40  34 61 00 F8 */	addic. r3, r1, 0xf8
/* 801F8BE4 001F5B44  41 82 00 14 */	beq lbl_801F8BF8
/* 801F8BE8 001F5B48  28 03 00 00 */	cmplwi r3, 0
/* 801F8BEC 001F5B4C  41 82 00 0C */	beq lbl_801F8BF8
/* 801F8BF0 001F5B50  38 80 00 00 */	li r4, 0
/* 801F8BF4 001F5B54  48 14 82 4D */	bl __dt__6CTokenFv
lbl_801F8BF8:
/* 801F8BF8 001F5B58  38 00 00 00 */	li r0, 0
/* 801F8BFC 001F5B5C  3B E0 00 01 */	li r31, 1
/* 801F8C00 001F5B60  98 01 01 04 */	stb r0, 0x104(r1)
/* 801F8C04 001F5B64  48 00 03 20 */	b lbl_801F8F24
lbl_801F8C08:
/* 801F8C08 001F5B68  A0 1D 07 E8 */	lhz r0, 0x7e8(r29)
/* 801F8C0C 001F5B6C  7F C3 F3 78 */	mr r3, r30
/* 801F8C10 001F5B70  38 81 00 10 */	addi r4, r1, 0x10
/* 801F8C14 001F5B74  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F8C18 001F5B78  4B E5 39 8D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F8C1C 001F5B7C  7C 64 1B 78 */	mr r4, r3
/* 801F8C20 001F5B80  38 61 00 18 */	addi r3, r1, 0x18
/* 801F8C24 001F5B84  4B EB 70 6D */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801F8C28 001F5B88  80 63 00 04 */	lwz r3, 4(r3)
/* 801F8C2C 001F5B8C  28 03 00 00 */	cmplwi r3, 0
/* 801F8C30 001F5B90  41 82 02 F4 */	beq lbl_801F8F24
/* 801F8C34 001F5B94  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801F8C38 001F5B98  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801F8C3C 001F5B9C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801F8C40 001F5BA0  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 801F8C44 001F5BA4  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 801F8C48 001F5BA8  D0 41 01 1C */	stfs f2, 0x11c(r1)
/* 801F8C4C 001F5BAC  83 9E 08 4C */	lwz r28, 0x84c(r30)
/* 801F8C50 001F5BB0  A0 7D 07 E8 */	lhz r3, 0x7e8(r29)
/* 801F8C54 001F5BB4  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801F8C58 001F5BB8  7C 03 00 40 */	cmplw r3, r0
/* 801F8C5C 001F5BBC  40 82 00 88 */	bne lbl_801F8CE4
/* 801F8C60 001F5BC0  C0 21 01 BC */	lfs f1, 0x1bc(r1)
/* 801F8C64 001F5BC4  7F 84 E3 78 */	mr r4, r28
/* 801F8C68 001F5BC8  C0 41 01 CC */	lfs f2, 0x1cc(r1)
/* 801F8C6C 001F5BCC  7F C5 F3 78 */	mr r5, r30
/* 801F8C70 001F5BD0  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 801F8C74 001F5BD4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801F8C78 001F5BD8  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 801F8C7C 001F5BDC  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801F8C80 001F5BE0  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 801F8C84 001F5BE4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 801F8C88 001F5BE8  81 9C 00 00 */	lwz r12, 0(r28)
/* 801F8C8C 001F5BEC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801F8C90 001F5BF0  7D 89 03 A6 */	mtctr r12
/* 801F8C94 001F5BF4  4E 80 04 21 */	bctrl
/* 801F8C98 001F5BF8  7F A3 EB 78 */	mr r3, r29
/* 801F8C9C 001F5BFC  81 9D 00 00 */	lwz r12, 0(r29)
/* 801F8CA0 001F5C00  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 801F8CA4 001F5C04  7D 89 03 A6 */	mtctr r12
/* 801F8CA8 001F5C08  4E 80 04 21 */	bctrl
/* 801F8CAC 001F5C0C  FC 20 F8 90 */	fmr f1, f31
/* 801F8CB0 001F5C10  7C 64 1B 78 */	mr r4, r3
/* 801F8CB4 001F5C14  7F 87 E3 78 */	mr r7, r28
/* 801F8CB8 001F5C18  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801F8CBC 001F5C1C  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 801F8CC0 001F5C20  38 C1 00 C8 */	addi r6, r1, 0xc8
/* 801F8CC4 001F5C24  39 00 00 01 */	li r8, 1
/* 801F8CC8 001F5C28  48 02 32 25 */	bl PredictInterceptPos__15CProjectileInfoFRC9CVector3fRC9CVector3fRC7CPlayerbf
/* 801F8CCC 001F5C2C  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 801F8CD0 001F5C30  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 801F8CD4 001F5C34  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 801F8CD8 001F5C38  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 801F8CDC 001F5C3C  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 801F8CE0 001F5C40  D0 01 01 1C */	stfs f0, 0x11c(r1)
lbl_801F8CE4:
/* 801F8CE4 001F5C44  C0 41 01 DC */	lfs f2, 0x1dc(r1)
/* 801F8CE8 001F5C48  38 61 01 08 */	addi r3, r1, 0x108
/* 801F8CEC 001F5C4C  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 801F8CF0 001F5C50  C0 81 01 CC */	lfs f4, 0x1cc(r1)
/* 801F8CF4 001F5C54  C0 21 01 18 */	lfs f1, 0x118(r1)
/* 801F8CF8 001F5C58  EC 40 10 28 */	fsubs f2, f0, f2
/* 801F8CFC 001F5C5C  C0 61 01 BC */	lfs f3, 0x1bc(r1)
/* 801F8D00 001F5C60  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 801F8D04 001F5C64  EC 21 20 28 */	fsubs f1, f1, f4
/* 801F8D08 001F5C68  D0 41 01 10 */	stfs f2, 0x110(r1)
/* 801F8D0C 001F5C6C  EC 00 18 28 */	fsubs f0, f0, f3
/* 801F8D10 001F5C70  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 801F8D14 001F5C74  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 801F8D18 001F5C78  48 11 BB A1 */	bl Magnitude__9CVector3fCFv
/* 801F8D1C 001F5C7C  FF E0 08 90 */	fmr f31, f1
/* 801F8D20 001F5C80  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801F8D24 001F5C84  C0 A1 01 0C */	lfs f5, 0x10c(r1)
/* 801F8D28 001F5C88  C0 C1 01 08 */	lfs f6, 0x108(r1)
/* 801F8D2C 001F5C8C  EC E0 F8 24 */	fdivs f7, f0, f31
/* 801F8D30 001F5C90  C0 81 01 10 */	lfs f4, 0x110(r1)
/* 801F8D34 001F5C94  C0 21 01 C4 */	lfs f1, 0x1c4(r1)
/* 801F8D38 001F5C98  C0 41 01 B4 */	lfs f2, 0x1b4(r1)
/* 801F8D3C 001F5C9C  C0 61 01 D4 */	lfs f3, 0x1d4(r1)
/* 801F8D40 001F5CA0  C0 02 AF A8 */	lfs f0, lbl_805ACCC8@sda21(r2)
/* 801F8D44 001F5CA4  EC A5 01 F2 */	fmuls f5, f5, f7
/* 801F8D48 001F5CA8  EC C6 01 F2 */	fmuls f6, f6, f7
/* 801F8D4C 001F5CAC  EC 84 01 F2 */	fmuls f4, f4, f7
/* 801F8D50 001F5CB0  EC 21 01 72 */	fmuls f1, f1, f5
/* 801F8D54 001F5CB4  D0 A1 01 0C */	stfs f5, 0x10c(r1)
/* 801F8D58 001F5CB8  D0 C1 01 08 */	stfs f6, 0x108(r1)
/* 801F8D5C 001F5CBC  EC 22 09 BA */	fmadds f1, f2, f6, f1
/* 801F8D60 001F5CC0  D0 81 01 10 */	stfs f4, 0x110(r1)
/* 801F8D64 001F5CC4  EC 23 09 3A */	fmadds f1, f3, f4, f1
/* 801F8D68 001F5CC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F8D6C 001F5CCC  41 81 00 1C */	bgt lbl_801F8D88
/* 801F8D70 001F5CD0  C0 02 AF AC */	lfs f0, lbl_805ACCCC@sda21(r2)
/* 801F8D74 001F5CD4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801F8D78 001F5CD8  40 80 01 AC */	bge lbl_801F8F24
/* 801F8D7C 001F5CDC  C0 02 AF 74 */	lfs f0, lbl_805ACC94@sda21(r2)
/* 801F8D80 001F5CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F8D84 001F5CE4  40 81 01 A0 */	ble lbl_801F8F24
lbl_801F8D88:
/* 801F8D88 001F5CE8  38 00 00 00 */	li r0, 0
/* 801F8D8C 001F5CEC  80 AD 93 10 */	lwz r5, lbl_805A7ED0@sda21(r13)
/* 801F8D90 001F5CF0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801F8D94 001F5CF4  38 60 00 00 */	li r3, 0
/* 801F8D98 001F5CF8  38 80 00 01 */	li r4, 1
/* 801F8D9C 001F5CFC  90 01 00 68 */	stw r0, 0x68(r1)
/* 801F8DA0 001F5D00  48 19 11 55 */	bl __shl2i
/* 801F8DA4 001F5D04  80 01 00 68 */	lwz r0, 0x68(r1)
/* 801F8DA8 001F5D08  80 C1 00 6C */	lwz r6, 0x6c(r1)
/* 801F8DAC 001F5D0C  7C 00 1B 78 */	or r0, r0, r3
/* 801F8DB0 001F5D10  80 AD 93 14 */	lwz r5, lbl_805A7ED4@sda21(r13)
/* 801F8DB4 001F5D14  7C C4 23 78 */	or r4, r6, r4
/* 801F8DB8 001F5D18  90 01 00 68 */	stw r0, 0x68(r1)
/* 801F8DBC 001F5D1C  38 60 00 00 */	li r3, 0
/* 801F8DC0 001F5D20  90 81 00 6C */	stw r4, 0x6c(r1)
/* 801F8DC4 001F5D24  38 80 00 01 */	li r4, 1
/* 801F8DC8 001F5D28  48 19 11 2D */	bl __shl2i
/* 801F8DCC 001F5D2C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 801F8DD0 001F5D30  38 A1 00 BC */	addi r5, r1, 0xbc
/* 801F8DD4 001F5D34  80 E1 00 6C */	lwz r7, 0x6c(r1)
/* 801F8DD8 001F5D38  38 C1 01 14 */	addi r6, r1, 0x114
/* 801F8DDC 001F5D3C  7C 00 1B 78 */	or r0, r0, r3
/* 801F8DE0 001F5D40  C0 41 01 BC */	lfs f2, 0x1bc(r1)
/* 801F8DE4 001F5D44  7C E4 23 78 */	or r4, r7, r4
/* 801F8DE8 001F5D48  C0 21 01 CC */	lfs f1, 0x1cc(r1)
/* 801F8DEC 001F5D4C  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 801F8DF0 001F5D50  7F A3 EB 78 */	mr r3, r29
/* 801F8DF4 001F5D54  90 81 00 6C */	stw r4, 0x6c(r1)
/* 801F8DF8 001F5D58  7F C4 F3 78 */	mr r4, r30
/* 801F8DFC 001F5D5C  38 E1 00 68 */	addi r7, r1, 0x68
/* 801F8E00 001F5D60  90 01 00 68 */	stw r0, 0x68(r1)
/* 801F8E04 001F5D64  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 801F8E08 001F5D68  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 801F8E0C 001F5D6C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801F8E10 001F5D70  48 00 45 B5 */	bl LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801F8E14 001F5D74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F8E18 001F5D78  41 82 01 0C */	beq lbl_801F8F24
/* 801F8E1C 001F5D7C  FC 20 F8 90 */	fmr f1, f31
/* 801F8E20 001F5D80  C0 42 AF AC */	lfs f2, lbl_805ACCCC@sda21(r2)
/* 801F8E24 001F5D84  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801F8E28 001F5D88  38 9D 07 EC */	addi r4, r29, 0x7ec
/* 801F8E2C 001F5D8C  4B FB 43 19 */	bl GetDistanceCompensatedError__10CBurstFireCFff
/* 801F8E30 001F5D90  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801F8E34 001F5D94  38 9D 00 34 */	addi r4, r29, 0x34
/* 801F8E38 001F5D98  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 801F8E3C 001F5D9C  48 11 9C 45 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 801F8E40 001F5DA0  C0 61 01 14 */	lfs f3, 0x114(r1)
/* 801F8E44 001F5DA4  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801F8E48 001F5DA8  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 801F8E4C 001F5DAC  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 801F8E50 001F5DB0  C0 21 01 18 */	lfs f1, 0x118(r1)
/* 801F8E54 001F5DB4  38 61 01 20 */	addi r3, r1, 0x120
/* 801F8E58 001F5DB8  EC C3 10 2A */	fadds f6, f3, f2
/* 801F8E5C 001F5DBC  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 801F8E60 001F5DC0  C0 81 01 1C */	lfs f4, 0x11c(r1)
/* 801F8E64 001F5DC4  38 81 00 98 */	addi r4, r1, 0x98
/* 801F8E68 001F5DC8  EC A1 00 2A */	fadds f5, f1, f0
/* 801F8E6C 001F5DCC  C0 61 00 B8 */	lfs f3, 0xb8(r1)
/* 801F8E70 001F5DD0  EC 64 18 2A */	fadds f3, f4, f3
/* 801F8E74 001F5DD4  C0 41 01 BC */	lfs f2, 0x1bc(r1)
/* 801F8E78 001F5DD8  C0 21 01 CC */	lfs f1, 0x1cc(r1)
/* 801F8E7C 001F5DDC  38 A1 01 14 */	addi r5, r1, 0x114
/* 801F8E80 001F5DE0  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 801F8E84 001F5DE4  D0 C1 01 14 */	stfs f6, 0x114(r1)
/* 801F8E88 001F5DE8  D0 A1 01 18 */	stfs f5, 0x118(r1)
/* 801F8E8C 001F5DEC  D0 61 01 1C */	stfs f3, 0x11c(r1)
/* 801F8E90 001F5DF0  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801F8E94 001F5DF4  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801F8E98 001F5DF8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801F8E9C 001F5DFC  48 11 AC 75 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801F8EA0 001F5E00  38 61 01 80 */	addi r3, r1, 0x180
/* 801F8EA4 001F5E04  38 81 01 20 */	addi r4, r1, 0x120
/* 801F8EA8 001F5E08  48 11 9C CD */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801F8EAC 001F5E0C  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801F8EB0 001F5E10  39 60 00 00 */	li r11, 0
/* 801F8EB4 001F5E14  99 61 00 94 */	stb r11, 0x94(r1)
/* 801F8EB8 001F5E18  38 01 00 7C */	addi r0, r1, 0x7c
/* 801F8EBC 001F5E1C  A1 42 C5 FC */	lhz r10, lbl_805AE31C@sda21(r2)
/* 801F8EC0 001F5E20  7F A3 EB 78 */	mr r3, r29
/* 801F8EC4 001F5E24  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801F8EC8 001F5E28  7F C5 F3 78 */	mr r5, r30
/* 801F8ECC 001F5E2C  38 81 01 80 */	addi r4, r1, 0x180
/* 801F8ED0 001F5E30  39 21 00 88 */	addi r9, r1, 0x88
/* 801F8ED4 001F5E34  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801F8ED8 001F5E38  38 C0 00 08 */	li r6, 8
/* 801F8EDC 001F5E3C  38 E0 00 00 */	li r7, 0
/* 801F8EE0 001F5E40  39 00 00 00 */	li r8, 0
/* 801F8EE4 001F5E44  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801F8EE8 001F5E48  91 61 00 08 */	stw r11, 8(r1)
/* 801F8EEC 001F5E4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F8EF0 001F5E50  4B E7 EB 09 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 801F8EF4 001F5E54  88 01 00 94 */	lbz r0, 0x94(r1)
/* 801F8EF8 001F5E58  28 00 00 00 */	cmplwi r0, 0
/* 801F8EFC 001F5E5C  41 82 00 1C */	beq lbl_801F8F18
/* 801F8F00 001F5E60  34 61 00 88 */	addic. r3, r1, 0x88
/* 801F8F04 001F5E64  41 82 00 14 */	beq lbl_801F8F18
/* 801F8F08 001F5E68  28 03 00 00 */	cmplwi r3, 0
/* 801F8F0C 001F5E6C  41 82 00 0C */	beq lbl_801F8F18
/* 801F8F10 001F5E70  38 80 00 00 */	li r4, 0
/* 801F8F14 001F5E74  48 14 7F 2D */	bl __dt__6CTokenFv
lbl_801F8F18:
/* 801F8F18 001F5E78  38 00 00 00 */	li r0, 0
/* 801F8F1C 001F5E7C  3B E0 00 01 */	li r31, 1
/* 801F8F20 001F5E80  98 01 00 94 */	stb r0, 0x94(r1)
lbl_801F8F24:
/* 801F8F24 001F5E84  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801F8F28 001F5E88  41 82 01 6C */	beq lbl_801F9094
/* 801F8F2C 001F5E8C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801F8F30 001F5E90  4B F4 15 25 */	bl GetPASDatabase__15CBodyControllerCFv
/* 801F8F34 001F5E94  7C 60 1B 78 */	mr r0, r3
/* 801F8F38 001F5E98  38 61 00 28 */	addi r3, r1, 0x28
/* 801F8F3C 001F5E9C  7C 1C 03 78 */	mr r28, r0
/* 801F8F40 001F5EA0  48 0E A1 3D */	bl NoParameter__12CPASAnimParmFv
/* 801F8F44 001F5EA4  38 61 00 30 */	addi r3, r1, 0x30
/* 801F8F48 001F5EA8  48 0E A1 35 */	bl NoParameter__12CPASAnimParmFv
/* 801F8F4C 001F5EAC  38 61 00 38 */	addi r3, r1, 0x38
/* 801F8F50 001F5EB0  48 0E A1 2D */	bl NoParameter__12CPASAnimParmFv
/* 801F8F54 001F5EB4  38 61 00 40 */	addi r3, r1, 0x40
/* 801F8F58 001F5EB8  48 0E A1 25 */	bl NoParameter__12CPASAnimParmFv
/* 801F8F5C 001F5EBC  38 61 00 48 */	addi r3, r1, 0x48
/* 801F8F60 001F5EC0  48 0E A1 1D */	bl NoParameter__12CPASAnimParmFv
/* 801F8F64 001F5EC4  38 61 00 50 */	addi r3, r1, 0x50
/* 801F8F68 001F5EC8  48 0E A1 15 */	bl NoParameter__12CPASAnimParmFv
/* 801F8F6C 001F5ECC  38 61 00 58 */	addi r3, r1, 0x58
/* 801F8F70 001F5ED0  48 0E A1 0D */	bl NoParameter__12CPASAnimParmFv
/* 801F8F74 001F5ED4  38 61 00 60 */	addi r3, r1, 0x60
/* 801F8F78 001F5ED8  38 80 00 02 */	li r4, 2
/* 801F8F7C 001F5EDC  48 0E A0 09 */	bl FromEnum__12CPASAnimParmFi
/* 801F8F80 001F5EE0  38 61 00 30 */	addi r3, r1, 0x30
/* 801F8F84 001F5EE4  38 01 00 28 */	addi r0, r1, 0x28
/* 801F8F88 001F5EE8  90 61 00 08 */	stw r3, 8(r1)
/* 801F8F8C 001F5EEC  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 801F8F90 001F5EF0  38 A1 00 60 */	addi r5, r1, 0x60
/* 801F8F94 001F5EF4  38 C1 00 58 */	addi r6, r1, 0x58
/* 801F8F98 001F5EF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F8F9C 001F5EFC  38 E1 00 50 */	addi r7, r1, 0x50
/* 801F8FA0 001F5F00  39 01 00 48 */	addi r8, r1, 0x48
/* 801F8FA4 001F5F04  39 21 00 40 */	addi r9, r1, 0x40
/* 801F8FA8 001F5F08  39 41 00 38 */	addi r10, r1, 0x38
/* 801F8FAC 001F5F0C  38 80 00 18 */	li r4, 0x18
/* 801F8FB0 001F5F10  4B E8 43 15 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801F8FB4 001F5F14  80 DE 09 00 */	lwz r6, 0x900(r30)
/* 801F8FB8 001F5F18  7F 84 E3 78 */	mr r4, r28
/* 801F8FBC 001F5F1C  38 61 00 20 */	addi r3, r1, 0x20
/* 801F8FC0 001F5F20  38 A1 01 E0 */	addi r5, r1, 0x1e0
/* 801F8FC4 001F5F24  38 E0 FF FF */	li r7, -1
/* 801F8FC8 001F5F28  48 0E C0 99 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 801F8FCC 001F5F2C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801F8FD0 001F5F30  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F8FD4 001F5F34  80 81 00 24 */	lwz r4, 0x24(r1)
/* 801F8FD8 001F5F38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F8FDC 001F5F3C  40 81 00 1C */	ble lbl_801F8FF8
/* 801F8FE0 001F5F40  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 801F8FE4 001F5F44  38 A0 00 00 */	li r5, 0
/* 801F8FE8 001F5F48  C0 22 AF 78 */	lfs f1, lbl_805ACC98@sda21(r2)
/* 801F8FEC 001F5F4C  38 C0 00 01 */	li r6, 1
/* 801F8FF0 001F5F50  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801F8FF4 001F5F54  4B E3 11 DD */	bl AddAdditiveAnimation__9CAnimDataFUifbb
lbl_801F8FF8:
/* 801F8FF8 001F5F58  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 801F8FFC 001F5F5C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F9000 001F5F60  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801F9004 001F5F64  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 801F9008 001F5F68  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801F900C 001F5F6C  38 61 00 14 */	addi r3, r1, 0x14
/* 801F9010 001F5F70  A9 22 C5 FA */	lha r9, lbl_805AE31A@sda21(r2)
/* 801F9014 001F5F74  38 A1 00 70 */	addi r5, r1, 0x70
/* 801F9018 001F5F78  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801F901C 001F5F7C  38 E0 00 01 */	li r7, 1
/* 801F9020 001F5F80  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 801F9024 001F5F84  39 00 00 00 */	li r8, 0
/* 801F9028 001F5F88  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801F902C 001F5F8C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 801F9030 001F5F90  A0 9D 05 9C */	lhz r4, 0x59c(r29)
/* 801F9034 001F5F94  48 0F 12 7D */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 801F9038 001F5F98  34 A1 01 E4 */	addic. r5, r1, 0x1e4
/* 801F903C 001F5F9C  41 82 00 58 */	beq lbl_801F9094
/* 801F9040 001F5FA0  80 C5 00 00 */	lwz r6, 0(r5)
/* 801F9044 001F5FA4  38 60 00 00 */	li r3, 0
/* 801F9048 001F5FA8  2C 06 00 00 */	cmpwi r6, 0
/* 801F904C 001F5FAC  40 81 00 40 */	ble lbl_801F908C
/* 801F9050 001F5FB0  2C 06 00 08 */	cmpwi r6, 8
/* 801F9054 001F5FB4  38 86 FF F8 */	addi r4, r6, -8
/* 801F9058 001F5FB8  40 81 00 20 */	ble lbl_801F9078
/* 801F905C 001F5FBC  38 04 00 07 */	addi r0, r4, 7
/* 801F9060 001F5FC0  54 00 E8 FE */	srwi r0, r0, 3
/* 801F9064 001F5FC4  7C 09 03 A6 */	mtctr r0
/* 801F9068 001F5FC8  2C 04 00 00 */	cmpwi r4, 0
/* 801F906C 001F5FCC  40 81 00 0C */	ble lbl_801F9078
lbl_801F9070:
/* 801F9070 001F5FD0  38 63 00 08 */	addi r3, r3, 8
/* 801F9074 001F5FD4  42 00 FF FC */	bdnz lbl_801F9070
lbl_801F9078:
/* 801F9078 001F5FD8  7C 03 30 50 */	subf r0, r3, r6
/* 801F907C 001F5FDC  7C 09 03 A6 */	mtctr r0
/* 801F9080 001F5FE0  7C 03 30 00 */	cmpw r3, r6
/* 801F9084 001F5FE4  40 80 00 08 */	bge lbl_801F908C
lbl_801F9088:
/* 801F9088 001F5FE8  42 00 00 00 */	bdnz lbl_801F9088
lbl_801F908C:
/* 801F908C 001F5FEC  38 00 00 00 */	li r0, 0
/* 801F9090 001F5FF0  90 05 00 00 */	stw r0, 0(r5)
lbl_801F9094:
/* 801F9094 001F5FF4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 801F9098 001F5FF8  E3 E1 02 48 */	psq_l f31, 584(r1), 0, qr0
/* 801F909C 001F5FFC  80 01 02 54 */	lwz r0, 0x254(r1)
/* 801F90A0 001F6000  CB E1 02 40 */	lfd f31, 0x240(r1)
/* 801F90A4 001F6004  83 E1 02 3C */	lwz r31, 0x23c(r1)
/* 801F90A8 001F6008  83 C1 02 38 */	lwz r30, 0x238(r1)
/* 801F90AC 001F600C  83 A1 02 34 */	lwz r29, 0x234(r1)
/* 801F90B0 001F6010  83 81 02 30 */	lwz r28, 0x230(r1)
/* 801F90B4 001F6014  7C 08 03 A6 */	mtlr r0
/* 801F90B8 001F6018  38 21 02 50 */	addi r1, r1, 0x250
/* 801F90BC 001F601C  4E 80 00 20 */	blr

.global ProjectileInfo__13CFlyingPirateFv
ProjectileInfo__13CFlyingPirateFv:
/* 801F90C0 001F6020  38 63 05 74 */	addi r3, r3, 0x574
/* 801F90C4 001F6024  4E 80 00 20 */	blr

.global ShouldRetreat__13CFlyingPirateFR13CStateManagerf
ShouldRetreat__13CFlyingPirateFR13CStateManagerf:
/* 801F90C8 001F6028  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801F90CC 001F602C  7C 08 02 A6 */	mflr r0
/* 801F90D0 001F6030  90 01 00 54 */	stw r0, 0x54(r1)
/* 801F90D4 001F6034  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801F90D8 001F6038  3B E0 00 00 */	li r31, 0
/* 801F90DC 001F603C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801F90E0 001F6040  7C 7E 1B 78 */	mr r30, r3
/* 801F90E4 001F6044  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801F90E8 001F6048  7C 9D 23 78 */	mr r29, r4
/* 801F90EC 001F604C  88 03 06 A2 */	lbz r0, 0x6a2(r3)
/* 801F90F0 001F6050  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801F90F4 001F6054  41 82 01 34 */	beq lbl_801F9228
/* 801F90F8 001F6058  7F C4 F3 78 */	mr r4, r30
/* 801F90FC 001F605C  7F A5 EB 78 */	mr r5, r29
/* 801F9100 001F6060  38 61 00 14 */	addi r3, r1, 0x14
/* 801F9104 001F6064  38 C0 00 0D */	li r6, 0xd
/* 801F9108 001F6068  38 E0 00 06 */	li r7, 6
/* 801F910C 001F606C  4B FF BE 8D */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801F9110 001F6070  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801F9114 001F6074  7F A3 EB 78 */	mr r3, r29
/* 801F9118 001F6078  38 81 00 10 */	addi r4, r1, 0x10
/* 801F911C 001F607C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801F9120 001F6080  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F9124 001F6084  4B E5 34 81 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F9128 001F6088  7C 64 1B 78 */	mr r4, r3
/* 801F912C 001F608C  38 61 00 24 */	addi r3, r1, 0x24
/* 801F9130 001F6090  4B EA D4 1D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F9134 001F6094  80 03 00 04 */	lwz r0, 4(r3)
/* 801F9138 001F6098  28 00 00 00 */	cmplwi r0, 0
/* 801F913C 001F609C  7C 05 03 78 */	mr r5, r0
/* 801F9140 001F60A0  40 82 00 44 */	bne lbl_801F9184
/* 801F9144 001F60A4  7F C4 F3 78 */	mr r4, r30
/* 801F9148 001F60A8  7F A5 EB 78 */	mr r5, r29
/* 801F914C 001F60AC  38 61 00 0C */	addi r3, r1, 0xc
/* 801F9150 001F60B0  38 C0 00 0C */	li r6, 0xc
/* 801F9154 001F60B4  38 E0 00 06 */	li r7, 6
/* 801F9158 001F60B8  4B FF BE 41 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801F915C 001F60BC  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801F9160 001F60C0  7F A3 EB 78 */	mr r3, r29
/* 801F9164 001F60C4  38 81 00 08 */	addi r4, r1, 8
/* 801F9168 001F60C8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801F916C 001F60CC  B0 01 00 08 */	sth r0, 8(r1)
/* 801F9170 001F60D0  4B E5 34 35 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F9174 001F60D4  7C 64 1B 78 */	mr r4, r3
/* 801F9178 001F60D8  38 61 00 1C */	addi r3, r1, 0x1c
/* 801F917C 001F60DC  4B EA D3 D1 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801F9180 001F60E0  80 A3 00 04 */	lwz r5, 4(r3)
lbl_801F9184:
/* 801F9184 001F60E4  28 05 00 00 */	cmplwi r5, 0
/* 801F9188 001F60E8  41 82 00 A0 */	beq lbl_801F9228
/* 801F918C 001F60EC  88 7E 06 A2 */	lbz r3, 0x6a2(r30)
/* 801F9190 001F60F0  38 00 00 00 */	li r0, 0
/* 801F9194 001F60F4  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 801F9198 001F60F8  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 801F919C 001F60FC  98 7E 06 A2 */	stb r3, 0x6a2(r30)
/* 801F91A0 001F6100  7F C3 F3 78 */	mr r3, r30
/* 801F91A4 001F6104  38 81 00 2C */	addi r4, r1, 0x2c
/* 801F91A8 001F6108  3B E0 00 01 */	li r31, 1
/* 801F91AC 001F610C  B0 1E 02 DC */	sth r0, 0x2dc(r30)
/* 801F91B0 001F6110  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 801F91B4 001F6114  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 801F91B8 001F6118  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801F91BC 001F611C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801F91C0 001F6120  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801F91C4 001F6124  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801F91C8 001F6128  4B E8 39 95 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F91CC 001F612C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801F91D0 001F6130  38 80 00 00 */	li r4, 0
/* 801F91D4 001F6134  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801F91D8 001F6138  38 60 00 01 */	li r3, 1
/* 801F91DC 001F613C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801F91E0 001F6140  D0 1E 02 EC */	stfs f0, 0x2ec(r30)
/* 801F91E4 001F6144  D0 3E 02 F0 */	stfs f1, 0x2f0(r30)
/* 801F91E8 001F6148  D0 5E 02 F4 */	stfs f2, 0x2f4(r30)
/* 801F91EC 001F614C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F91F0 001F6150  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801F91F4 001F6154  98 1E 03 28 */	stb r0, 0x328(r30)
/* 801F91F8 001F6158  88 1E 06 A1 */	lbz r0, 0x6a1(r30)
/* 801F91FC 001F615C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801F9200 001F6160  98 1E 06 A1 */	stb r0, 0x6a1(r30)
/* 801F9204 001F6164  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 801F9208 001F6168  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 801F920C 001F616C  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 801F9210 001F6170  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 801F9214 001F6174  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 801F9218 001F6178  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 801F921C 001F617C  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801F9220 001F6180  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801F9224 001F6184  98 1E 04 00 */	stb r0, 0x400(r30)
lbl_801F9228:
/* 801F9228 001F6188  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801F922C 001F618C  7F E3 FB 78 */	mr r3, r31
/* 801F9230 001F6190  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801F9234 001F6194  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801F9238 001F6198  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801F923C 001F619C  7C 08 03 A6 */	mtlr r0
/* 801F9240 001F61A0  38 21 00 50 */	addi r1, r1, 0x50
/* 801F9244 001F61A4  4E 80 00 20 */	blr

.global Deactivate__13CFlyingPirateFR13CStateManager9EStateMsgf
Deactivate__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801F9248 001F61A8  2C 05 00 00 */	cmpwi r5, 0
/* 801F924C 001F61AC  4C 82 00 20 */	bnelr
/* 801F9250 001F61B0  88 03 04 01 */	lbz r0, 0x401(r3)
/* 801F9254 001F61B4  38 80 00 01 */	li r4, 1
/* 801F9258 001F61B8  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 801F925C 001F61BC  98 03 04 01 */	stb r0, 0x401(r3)
/* 801F9260 001F61C0  4E 80 00 20 */	blr

.global Explode__13CFlyingPirateFR13CStateManager9EStateMsgf
Explode__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801F9264 001F61C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9268 001F61C8  7C 08 02 A6 */	mflr r0
/* 801F926C 001F61CC  2C 05 00 01 */	cmpwi r5, 1
/* 801F9270 001F61D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9274 001F61D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F9278 001F61D8  7C 9F 23 78 */	mr r31, r4
/* 801F927C 001F61DC  93 C1 00 08 */	stw r30, 8(r1)
/* 801F9280 001F61E0  7C 7E 1B 78 */	mr r30, r3
/* 801F9284 001F61E4  41 82 00 74 */	beq lbl_801F92F8
/* 801F9288 001F61E8  40 80 00 84 */	bge lbl_801F930C
/* 801F928C 001F61EC  2C 05 00 00 */	cmpwi r5, 0
/* 801F9290 001F61F0  40 80 00 0C */	bge lbl_801F929C
/* 801F9294 001F61F4  48 00 00 78 */	b lbl_801F930C
/* 801F9298 001F61F8  48 00 00 74 */	b lbl_801F930C
lbl_801F929C:
/* 801F929C 001F61FC  7F E8 FB 78 */	mr r8, r31
/* 801F92A0 001F6200  38 80 00 28 */	li r4, 0x28
/* 801F92A4 001F6204  38 A0 00 29 */	li r5, 0x29
/* 801F92A8 001F6208  38 C0 00 25 */	li r6, 0x25
/* 801F92AC 001F620C  38 E0 00 13 */	li r7, 0x13
/* 801F92B0 001F6210  4B E5 AA 39 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 801F92B4 001F6214  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F92B8 001F6218  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801F92BC 001F621C  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 801F92C0 001F6220  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F92C4 001F6224  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 801F92C8 001F6228  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F92CC 001F622C  D0 1E 01 58 */	stfs f0, 0x158(r30)
/* 801F92D0 001F6230  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801F92D4 001F6234  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801F92D8 001F6238  40 82 00 34 */	bne lbl_801F930C
/* 801F92DC 001F623C  7F C3 F3 78 */	mr r3, r30
/* 801F92E0 001F6240  7F E4 FB 78 */	mr r4, r31
/* 801F92E4 001F6244  81 9E 00 00 */	lwz r12, 0(r30)
/* 801F92E8 001F6248  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 801F92EC 001F624C  7D 89 03 A6 */	mtctr r12
/* 801F92F0 001F6250  4E 80 04 21 */	bctrl
/* 801F92F4 001F6254  48 00 00 18 */	b lbl_801F930C
lbl_801F92F8:
/* 801F92F8 001F6258  C0 3E 03 38 */	lfs f1, 0x338(r30)
/* 801F92FC 001F625C  C0 02 AF B0 */	lfs f0, lbl_805ACCD0@sda21(r2)
/* 801F9300 001F6260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F9304 001F6264  40 81 00 08 */	ble lbl_801F930C
/* 801F9308 001F6268  4B E7 F6 F9 */	bl DeathDelete__10CPatternedFR13CStateManager
lbl_801F930C:
/* 801F930C 001F626C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9310 001F6270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9314 001F6274  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F9318 001F6278  7C 08 03 A6 */	mtlr r0
/* 801F931C 001F627C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9320 001F6280  4E 80 00 20 */	blr

.global AnimOver__13CFlyingPirateFR13CStateManagerf
AnimOver__13CFlyingPirateFR13CStateManagerf:
/* 801F9324 001F6284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9328 001F6288  7C 08 02 A6 */	mflr r0
/* 801F932C 001F628C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9330 001F6290  80 A3 04 50 */	lwz r5, 0x450(r3)
/* 801F9334 001F6294  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 801F9338 001F6298  2C 00 00 04 */	cmpwi r0, 4
/* 801F933C 001F629C  40 82 00 0C */	bne lbl_801F9348
/* 801F9340 001F62A0  38 60 00 01 */	li r3, 1
/* 801F9344 001F62A4  48 00 00 08 */	b lbl_801F934C
lbl_801F9348:
/* 801F9348 001F62A8  4B FF C8 2D */	bl AnimOver__10CPatternedFR13CStateManagerf
lbl_801F934C:
/* 801F934C 001F62AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9350 001F62B0  7C 08 03 A6 */	mtlr r0
/* 801F9354 001F62B4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9358 001F62B8  4E 80 00 20 */	blr

.global Dead__13CFlyingPirateFR13CStateManager9EStateMsgf
Dead__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801F935C 001F62BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F9360 001F62C0  7C 08 02 A6 */	mflr r0
/* 801F9364 001F62C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F9368 001F62C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F936C 001F62CC  7C BF 2B 78 */	mr r31, r5
/* 801F9370 001F62D0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F9374 001F62D4  7C 9E 23 78 */	mr r30, r4
/* 801F9378 001F62D8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801F937C 001F62DC  7C 7D 1B 78 */	mr r29, r3
/* 801F9380 001F62E0  4B FF D6 45 */	bl Dead__10CPatternedFR13CStateManager9EStateMsgf
/* 801F9384 001F62E4  2C 1F 00 00 */	cmpwi r31, 0
/* 801F9388 001F62E8  41 82 00 0C */	beq lbl_801F9394
/* 801F938C 001F62EC  41 80 00 5C */	blt lbl_801F93E8
/* 801F9390 001F62F0  48 00 00 58 */	b lbl_801F93E8
lbl_801F9394:
/* 801F9394 001F62F4  38 7D 07 A0 */	addi r3, r29, 0x7a0
/* 801F9398 001F62F8  38 80 00 00 */	li r4, 0
/* 801F939C 001F62FC  4B F7 BE 89 */	bl SetActive__13CBoneTrackingFb
/* 801F93A0 001F6300  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 801F93A4 001F6304  3C 60 80 57 */	lis r3, lbl_80572118@ha
/* 801F93A8 001F6308  38 83 21 18 */	addi r4, r3, lbl_80572118@l
/* 801F93AC 001F630C  7F C6 F3 78 */	mr r6, r30
/* 801F93B0 001F6310  80 65 00 10 */	lwz r3, 0x10(r5)
/* 801F93B4 001F6314  38 A0 00 00 */	li r5, 0
/* 801F93B8 001F6318  4B E3 1A 09 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 801F93BC 001F631C  A1 1D 00 08 */	lhz r8, 8(r29)
/* 801F93C0 001F6320  7F C4 F3 78 */	mr r4, r30
/* 801F93C4 001F6324  38 A1 00 10 */	addi r5, r1, 0x10
/* 801F93C8 001F6328  38 C1 00 0C */	addi r6, r1, 0xc
/* 801F93CC 001F632C  B1 01 00 0C */	sth r8, 0xc(r1)
/* 801F93D0 001F6330  38 60 00 01 */	li r3, 1
/* 801F93D4 001F6334  38 E0 00 01 */	li r7, 1
/* 801F93D8 001F6338  A0 1D 08 90 */	lhz r0, 0x890(r29)
/* 801F93DC 001F633C  B1 01 00 08 */	sth r8, 8(r1)
/* 801F93E0 001F6340  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F93E4 001F6344  48 04 0A ED */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
lbl_801F93E8:
/* 801F93E8 001F6348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F93EC 001F634C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F93F0 001F6350  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F93F4 001F6354  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801F93F8 001F6358  7C 08 03 A6 */	mtlr r0
/* 801F93FC 001F635C  38 21 00 30 */	addi r1, r1, 0x30
/* 801F9400 001F6360  4E 80 00 20 */	blr

.global Enraged__13CFlyingPirateFR13CStateManager9EStateMsgf
Enraged__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801F9404 001F6364  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801F9408 001F6368  7C 08 02 A6 */	mflr r0
/* 801F940C 001F636C  90 01 00 84 */	stw r0, 0x84(r1)
/* 801F9410 001F6370  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801F9414 001F6374  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801F9418 001F6378  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801F941C 001F637C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 801F9420 001F6380  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 801F9424 001F6384  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 801F9428 001F6388  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801F942C 001F638C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801F9430 001F6390  2C 05 00 01 */	cmpwi r5, 1
/* 801F9434 001F6394  7C 7E 1B 78 */	mr r30, r3
/* 801F9438 001F6398  7C 85 23 78 */	mr r5, r4
/* 801F943C 001F639C  41 82 00 08 */	beq lbl_801F9444
/* 801F9440 001F63A0  48 00 01 08 */	b lbl_801F9548
lbl_801F9444:
/* 801F9444 001F63A4  C0 5E 06 2C */	lfs f2, 0x62c(r30)
/* 801F9448 001F63A8  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801F944C 001F63AC  3B E3 66 F4 */	addi r31, r3, sUpVector__9CVector3f@l
/* 801F9450 001F63B0  C0 02 AF B4 */	lfs f0, lbl_805ACCD4@sda21(r2)
/* 801F9454 001F63B4  EC A1 00 B2 */	fmuls f5, f1, f2
/* 801F9458 001F63B8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 801F945C 001F63BC  C0 9F 00 04 */	lfs f4, 4(r31)
/* 801F9460 001F63C0  7F C4 F3 78 */	mr r4, r30
/* 801F9464 001F63C4  C0 7F 00 08 */	lfs f3, 8(r31)
/* 801F9468 001F63C8  38 61 00 08 */	addi r3, r1, 8
/* 801F946C 001F63CC  EC A1 01 72 */	fmuls f5, f1, f5
/* 801F9470 001F63D0  EC 25 00 B2 */	fmuls f1, f5, f2
/* 801F9474 001F63D4  EC 85 01 32 */	fmuls f4, f5, f4
/* 801F9478 001F63D8  EC 45 00 F2 */	fmuls f2, f5, f3
/* 801F947C 001F63DC  D0 3E 08 7C */	stfs f1, 0x87c(r30)
/* 801F9480 001F63E0  D0 9E 08 80 */	stfs f4, 0x880(r30)
/* 801F9484 001F63E4  D0 5E 08 84 */	stfs f2, 0x884(r30)
/* 801F9488 001F63E8  D0 1E 08 98 */	stfs f0, 0x898(r30)
/* 801F948C 001F63EC  C0 3E 08 70 */	lfs f1, 0x870(r30)
/* 801F9490 001F63F0  C0 1E 08 7C */	lfs f0, 0x87c(r30)
/* 801F9494 001F63F4  EC 01 00 2A */	fadds f0, f1, f0
/* 801F9498 001F63F8  D0 1E 08 70 */	stfs f0, 0x870(r30)
/* 801F949C 001F63FC  C0 3E 08 74 */	lfs f1, 0x874(r30)
/* 801F94A0 001F6400  C0 1E 08 80 */	lfs f0, 0x880(r30)
/* 801F94A4 001F6404  EC 01 00 2A */	fadds f0, f1, f0
/* 801F94A8 001F6408  D0 1E 08 74 */	stfs f0, 0x874(r30)
/* 801F94AC 001F640C  C0 3E 08 78 */	lfs f1, 0x878(r30)
/* 801F94B0 001F6410  C0 1E 08 84 */	lfs f0, 0x884(r30)
/* 801F94B4 001F6414  EC 01 00 2A */	fadds f0, f1, f0
/* 801F94B8 001F6418  D0 1E 08 78 */	stfs f0, 0x878(r30)
/* 801F94BC 001F641C  C3 BE 00 60 */	lfs f29, 0x60(r30)
/* 801F94C0 001F6420  C3 DE 00 50 */	lfs f30, 0x50(r30)
/* 801F94C4 001F6424  C3 FE 00 40 */	lfs f31, 0x40(r30)
/* 801F94C8 001F6428  48 00 33 CD */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801F94CC 001F642C  C0 41 00 08 */	lfs f2, 8(r1)
/* 801F94D0 001F6430  38 61 00 20 */	addi r3, r1, 0x20
/* 801F94D4 001F6434  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801F94D8 001F6438  38 81 00 14 */	addi r4, r1, 0x14
/* 801F94DC 001F643C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801F94E0 001F6440  EC 42 F8 28 */	fsubs f2, f2, f31
/* 801F94E4 001F6444  EC 21 F0 28 */	fsubs f1, f1, f30
/* 801F94E8 001F6448  EC 00 E8 28 */	fsubs f0, f0, f29
/* 801F94EC 001F644C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801F94F0 001F6450  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801F94F4 001F6454  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801F94F8 001F6458  48 11 B3 59 */	bl AsNormalized__9CVector3fCFv
/* 801F94FC 001F645C  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801F9500 001F6460  C0 BF 00 04 */	lfs f5, 4(r31)
/* 801F9504 001F6464  C0 9F 00 08 */	lfs f4, 8(r31)
/* 801F9508 001F6468  38 81 00 2C */	addi r4, r1, 0x2c
/* 801F950C 001F646C  C0 C3 66 F4 */	lfs f6, sUpVector__9CVector3f@l(r3)
/* 801F9510 001F6470  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 801F9514 001F6474  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801F9518 001F6478  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801F951C 001F647C  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801F9520 001F6480  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 801F9524 001F6484  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 801F9528 001F6488  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 801F952C 001F648C  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 801F9530 001F6490  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801F9534 001F6494  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801F9538 001F6498  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801F953C 001F649C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801F9540 001F64A0  38 63 00 04 */	addi r3, r3, 4
/* 801F9544 001F64A4  4B F3 81 D5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801F9548:
/* 801F9548 001F64A8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801F954C 001F64AC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801F9550 001F64B0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 801F9554 001F64B4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801F9558 001F64B8  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 801F955C 001F64BC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801F9560 001F64C0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801F9564 001F64C4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801F9568 001F64C8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801F956C 001F64CC  7C 08 03 A6 */	mtlr r0
/* 801F9570 001F64D0  38 21 00 80 */	addi r1, r1, 0x80
/* 801F9574 001F64D4  4E 80 00 20 */	blr

.global AggressionCheck__13CFlyingPirateFR13CStateManagerf
AggressionCheck__13CFlyingPirateFR13CStateManagerf:
/* 801F9578 001F64D8  88 03 06 A2 */	lbz r0, 0x6a2(r3)
/* 801F957C 001F64DC  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 801F9580 001F64E0  4E 80 00 20 */	blr

.global Stuck__13CFlyingPirateFR13CStateManagerf
Stuck__13CFlyingPirateFR13CStateManagerf:
/* 801F9584 001F64E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9588 001F64E8  7C 08 02 A6 */	mflr r0
/* 801F958C 001F64EC  C0 02 AF 74 */	lfs f0, lbl_805ACC94@sda21(r2)
/* 801F9590 001F64F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F9594 001F64F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F9598 001F64F8  3B E0 00 00 */	li r31, 0
/* 801F959C 001F64FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F95A0 001F6500  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801F95A4 001F6504  7C 7D 1B 78 */	mr r29, r3
/* 801F95A8 001F6508  C0 43 03 38 */	lfs f2, 0x338(r3)
/* 801F95AC 001F650C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F95B0 001F6510  40 81 00 44 */	ble lbl_801F95F4
/* 801F95B4 001F6514  3B C0 00 01 */	li r30, 1
/* 801F95B8 001F6518  4B FF C5 A5 */	bl Stuck__10CPatternedFR13CStateManagerf
/* 801F95BC 001F651C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F95C0 001F6520  40 82 00 28 */	bne lbl_801F95E8
/* 801F95C4 001F6524  7F A3 EB 78 */	mr r3, r29
/* 801F95C8 001F6528  81 9D 00 00 */	lwz r12, 0(r29)
/* 801F95CC 001F652C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801F95D0 001F6530  7D 89 03 A6 */	mtctr r12
/* 801F95D4 001F6534  4E 80 04 21 */	bctrl
/* 801F95D8 001F6538  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801F95DC 001F653C  2C 00 00 00 */	cmpwi r0, 0
/* 801F95E0 001F6540  40 82 00 08 */	bne lbl_801F95E8
/* 801F95E4 001F6544  3B C0 00 00 */	li r30, 0
lbl_801F95E8:
/* 801F95E8 001F6548  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801F95EC 001F654C  41 82 00 08 */	beq lbl_801F95F4
/* 801F95F0 001F6550  3B E0 00 01 */	li r31, 1
lbl_801F95F4:
/* 801F95F4 001F6554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F95F8 001F6558  7F E3 FB 78 */	mr r3, r31
/* 801F95FC 001F655C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F9600 001F6560  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F9604 001F6564  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801F9608 001F6568  7C 08 03 A6 */	mtlr r0
/* 801F960C 001F656C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F9610 001F6570  4E 80 00 20 */	blr

.global ShouldMove__13CFlyingPirateFR13CStateManagerf
ShouldMove__13CFlyingPirateFR13CStateManagerf:
/* 801F9614 001F6574  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801F9618 001F6578  7C 08 02 A6 */	mflr r0
/* 801F961C 001F657C  90 01 00 84 */	stw r0, 0x84(r1)
/* 801F9620 001F6580  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801F9624 001F6584  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801F9628 001F6588  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801F962C 001F658C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 801F9630 001F6590  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 801F9634 001F6594  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 801F9638 001F6598  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 801F963C 001F659C  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 801F9640 001F65A0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801F9644 001F65A4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801F9648 001F65A8  7C 9F 23 78 */	mr r31, r4
/* 801F964C 001F65AC  7C 7E 1B 78 */	mr r30, r3
/* 801F9650 001F65B0  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 801F9654 001F65B4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801F9658 001F65B8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801F965C 001F65BC  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801F9660 001F65C0  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801F9664 001F65C4  EF 81 00 28 */	fsubs f28, f1, f0
/* 801F9668 001F65C8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801F966C 001F65CC  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801F9670 001F65D0  EF A3 10 28 */	fsubs f29, f3, f2
/* 801F9674 001F65D4  80 64 09 00 */	lwz r3, 0x900(r4)
/* 801F9678 001F65D8  EF C1 00 28 */	fsubs f30, f1, f0
/* 801F967C 001F65DC  48 11 8E 61 */	bl Float__9CRandom16Fv
/* 801F9680 001F65E0  C0 02 AF 74 */	lfs f0, lbl_805ACC94@sda21(r2)
/* 801F9684 001F65E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F9688 001F65E8  40 80 00 1C */	bge lbl_801F96A4
/* 801F968C 001F65EC  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801F9690 001F65F0  C0 22 AF B8 */	lfs f1, lbl_805ACCD8@sda21(r2)
/* 801F9694 001F65F4  C0 42 AF BC */	lfs f2, lbl_805ACCDC@sda21(r2)
/* 801F9698 001F65F8  48 11 8E AD */	bl Range__9CRandom16Fff
/* 801F969C 001F65FC  FF E0 08 90 */	fmr f31, f1
/* 801F96A0 001F6600  48 00 00 18 */	b lbl_801F96B8
lbl_801F96A4:
/* 801F96A4 001F6604  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801F96A8 001F6608  C0 22 AF C0 */	lfs f1, lbl_805ACCE0@sda21(r2)
/* 801F96AC 001F660C  C0 42 AF C4 */	lfs f2, lbl_805ACCE4@sda21(r2)
/* 801F96B0 001F6610  48 11 8E 95 */	bl Range__9CRandom16Fff
/* 801F96B4 001F6614  FF E0 08 90 */	fmr f31, f1
lbl_801F96B8:
/* 801F96B8 001F6618  3C 80 80 5A */	lis r4, sUpVector__9CVector3f@ha
/* 801F96BC 001F661C  38 61 00 20 */	addi r3, r1, 0x20
/* 801F96C0 001F6620  38 A4 66 F4 */	addi r5, r4, sUpVector__9CVector3f@l
/* 801F96C4 001F6624  38 81 00 14 */	addi r4, r1, 0x14
/* 801F96C8 001F6628  C0 65 00 04 */	lfs f3, 4(r5)
/* 801F96CC 001F662C  C0 85 00 08 */	lfs f4, 8(r5)
/* 801F96D0 001F6630  C0 A5 00 00 */	lfs f5, 0(r5)
/* 801F96D4 001F6634  EC 43 07 B2 */	fmuls f2, f3, f30
/* 801F96D8 001F6638  EC 24 07 32 */	fmuls f1, f4, f28
/* 801F96DC 001F663C  EC 05 07 72 */	fmuls f0, f5, f29
/* 801F96E0 001F6640  EC 5D 11 38 */	fmsubs f2, f29, f4, f2
/* 801F96E4 001F6644  EC 3E 09 78 */	fmsubs f1, f30, f5, f1
/* 801F96E8 001F6648  EC 1C 00 F8 */	fmsubs f0, f28, f3, f0
/* 801F96EC 001F664C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801F96F0 001F6650  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801F96F4 001F6654  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801F96F8 001F6658  48 11 B1 59 */	bl AsNormalized__9CVector3fCFv
/* 801F96FC 001F665C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801F9700 001F6660  7F C3 F3 78 */	mr r3, r30
/* 801F9704 001F6664  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801F9708 001F6668  38 81 00 2C */	addi r4, r1, 0x2c
/* 801F970C 001F666C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801F9710 001F6670  EC 9F 00 B2 */	fmuls f4, f31, f2
/* 801F9714 001F6674  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 801F9718 001F6678  EC 5F 00 72 */	fmuls f2, f31, f1
/* 801F971C 001F667C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801F9720 001F6680  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801F9724 001F6684  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801F9728 001F6688  EC 85 20 2A */	fadds f4, f5, f4
/* 801F972C 001F668C  EC 43 10 2A */	fadds f2, f3, f2
/* 801F9730 001F6690  EC 01 00 2A */	fadds f0, f1, f0
/* 801F9734 001F6694  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 801F9738 001F6698  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801F973C 001F669C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801F9740 001F66A0  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801F9744 001F66A4  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 801F9748 001F66A8  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 801F974C 001F66AC  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 801F9750 001F66B0  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 801F9754 001F66B4  EC 03 00 2A */	fadds f0, f3, f0
/* 801F9758 001F66B8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801F975C 001F66BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 801F9760 001F66C0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801F9764 001F66C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801F9768 001F66C8  4B E8 33 F5 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F976C 001F66CC  88 1E 06 A1 */	lbz r0, 0x6a1(r30)
/* 801F9770 001F66D0  38 60 00 01 */	li r3, 1
/* 801F9774 001F66D4  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801F9778 001F66D8  38 60 00 01 */	li r3, 1
/* 801F977C 001F66DC  98 1E 06 A1 */	stb r0, 0x6a1(r30)
/* 801F9780 001F66E0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801F9784 001F66E4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801F9788 001F66E8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 801F978C 001F66EC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801F9790 001F66F0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 801F9794 001F66F4  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801F9798 001F66F8  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 801F979C 001F66FC  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 801F97A0 001F6700  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801F97A4 001F6704  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801F97A8 001F6708  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801F97AC 001F670C  7C 08 03 A6 */	mtlr r0
/* 801F97B0 001F6710  38 21 00 80 */	addi r1, r1, 0x80
/* 801F97B4 001F6714  4E 80 00 20 */	blr

.global ProjectileAttack__13CFlyingPirateFR13CStateManager9EStateMsgf
ProjectileAttack__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801F97B8 001F6718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F97BC 001F671C  7C 08 02 A6 */	mflr r0
/* 801F97C0 001F6720  2C 05 00 01 */	cmpwi r5, 1
/* 801F97C4 001F6724  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F97C8 001F6728  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F97CC 001F672C  7C 7F 1B 78 */	mr r31, r3
/* 801F97D0 001F6730  41 82 00 38 */	beq lbl_801F9808
/* 801F97D4 001F6734  40 80 00 10 */	bge lbl_801F97E4
/* 801F97D8 001F6738  2C 05 00 00 */	cmpwi r5, 0
/* 801F97DC 001F673C  40 80 00 14 */	bge lbl_801F97F0
/* 801F97E0 001F6740  48 00 00 78 */	b lbl_801F9858
lbl_801F97E4:
/* 801F97E4 001F6744  2C 05 00 03 */	cmpwi r5, 3
/* 801F97E8 001F6748  40 80 00 70 */	bge lbl_801F9858
/* 801F97EC 001F674C  48 00 00 58 */	b lbl_801F9844
lbl_801F97F0:
/* 801F97F0 001F6750  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 801F97F4 001F6754  38 60 00 01 */	li r3, 1
/* 801F97F8 001F6758  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801F97FC 001F675C  98 1F 06 A1 */	stb r0, 0x6a1(r31)
/* 801F9800 001F6760  90 7F 03 2C */	stw r3, 0x32c(r31)
/* 801F9804 001F6764  48 00 00 54 */	b lbl_801F9858
lbl_801F9808:
/* 801F9808 001F6768  3C A0 80 3E */	lis r5, lbl_803E6850@ha
/* 801F980C 001F676C  38 C1 00 08 */	addi r6, r1, 8
/* 801F9810 001F6770  39 45 68 50 */	addi r10, r5, lbl_803E6850@l
/* 801F9814 001F6774  38 A0 00 12 */	li r5, 0x12
/* 801F9818 001F6778  81 2A 00 00 */	lwz r9, 0(r10)
/* 801F981C 001F677C  38 E0 00 00 */	li r7, 0
/* 801F9820 001F6780  81 0A 00 04 */	lwz r8, 4(r10)
/* 801F9824 001F6784  80 0A 00 08 */	lwz r0, 8(r10)
/* 801F9828 001F6788  91 21 00 08 */	stw r9, 8(r1)
/* 801F982C 001F678C  91 01 00 0C */	stw r8, 0xc(r1)
/* 801F9830 001F6790  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F9834 001F6794  4B E8 2F 81 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801F9838 001F6798  7F E3 FB 78 */	mr r3, r31
/* 801F983C 001F679C  48 00 45 09 */	bl sub_801fdd44
/* 801F9840 001F67A0  48 00 00 18 */	b lbl_801F9858
lbl_801F9844:
/* 801F9844 001F67A4  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 801F9848 001F67A8  38 60 00 00 */	li r3, 0
/* 801F984C 001F67AC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801F9850 001F67B0  98 1F 06 A1 */	stb r0, 0x6a1(r31)
/* 801F9854 001F67B4  90 7F 03 2C */	stw r3, 0x32c(r31)
lbl_801F9858:
/* 801F9858 001F67B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F985C 001F67BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F9860 001F67C0  7C 08 03 A6 */	mtlr r0
/* 801F9864 001F67C4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F9868 001F67C8  4E 80 00 20 */	blr

.global Walk__13CFlyingPirateFR13CStateManager9EStateMsgf
Walk__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801F986C 001F67CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801F9870 001F67D0  7C 08 02 A6 */	mflr r0
/* 801F9874 001F67D4  2C 05 00 01 */	cmpwi r5, 1
/* 801F9878 001F67D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801F987C 001F67DC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801F9880 001F67E0  7C 9F 23 78 */	mr r31, r4
/* 801F9884 001F67E4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801F9888 001F67E8  7C 7E 1B 78 */	mr r30, r3
/* 801F988C 001F67EC  41 82 00 30 */	beq lbl_801F98BC
/* 801F9890 001F67F0  40 80 00 10 */	bge lbl_801F98A0
/* 801F9894 001F67F4  2C 05 00 00 */	cmpwi r5, 0
/* 801F9898 001F67F8  40 80 00 14 */	bge lbl_801F98AC
/* 801F989C 001F67FC  48 00 01 5C */	b lbl_801F99F8
lbl_801F98A0:
/* 801F98A0 001F6800  2C 05 00 03 */	cmpwi r5, 3
/* 801F98A4 001F6804  40 80 01 54 */	bge lbl_801F99F8
/* 801F98A8 001F6808  48 00 01 10 */	b lbl_801F99B8
lbl_801F98AC:
/* 801F98AC 001F680C  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801F98B0 001F6810  38 A0 00 00 */	li r5, 0
/* 801F98B4 001F6814  48 00 43 35 */	bl sub_801fdbe8
/* 801F98B8 001F6818  48 00 01 40 */	b lbl_801F99F8
lbl_801F98BC:
/* 801F98BC 001F681C  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 801F98C0 001F6820  2C 00 00 00 */	cmpwi r0, 0
/* 801F98C4 001F6824  41 82 00 34 */	beq lbl_801F98F8
/* 801F98C8 001F6828  3C A0 80 3E */	lis r5, lbl_803E6844@ha
/* 801F98CC 001F682C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 801F98D0 001F6830  39 45 68 44 */	addi r10, r5, lbl_803E6844@l
/* 801F98D4 001F6834  38 A0 00 08 */	li r5, 8
/* 801F98D8 001F6838  81 2A 00 00 */	lwz r9, 0(r10)
/* 801F98DC 001F683C  38 E0 00 00 */	li r7, 0
/* 801F98E0 001F6840  81 0A 00 04 */	lwz r8, 4(r10)
/* 801F98E4 001F6844  80 0A 00 08 */	lwz r0, 8(r10)
/* 801F98E8 001F6848  91 21 00 2C */	stw r9, 0x2c(r1)
/* 801F98EC 001F684C  91 01 00 30 */	stw r8, 0x30(r1)
/* 801F98F0 001F6850  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F98F4 001F6854  4B E8 2E C1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
lbl_801F98F8:
/* 801F98F8 001F6858  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 801F98FC 001F685C  2C 00 00 02 */	cmpwi r0, 2
/* 801F9900 001F6860  41 82 00 F8 */	beq lbl_801F99F8
/* 801F9904 001F6864  7F C4 F3 78 */	mr r4, r30
/* 801F9908 001F6868  7F E5 FB 78 */	mr r5, r31
/* 801F990C 001F686C  38 61 00 20 */	addi r3, r1, 0x20
/* 801F9910 001F6870  48 00 2F 85 */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801F9914 001F6874  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801F9918 001F6878  38 61 00 08 */	addi r3, r1, 8
/* 801F991C 001F687C  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F9920 001F6880  38 81 00 38 */	addi r4, r1, 0x38
/* 801F9924 001F6884  D0 3E 02 E0 */	stfs f1, 0x2e0(r30)
/* 801F9928 001F6888  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801F992C 001F688C  D0 3E 02 E4 */	stfs f1, 0x2e4(r30)
/* 801F9930 001F6890  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801F9934 001F6894  D0 3E 02 E8 */	stfs f1, 0x2e8(r30)
/* 801F9938 001F6898  C0 5E 02 E8 */	lfs f2, 0x2e8(r30)
/* 801F993C 001F689C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801F9940 001F68A0  C0 9E 02 E4 */	lfs f4, 0x2e4(r30)
/* 801F9944 001F68A4  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801F9948 001F68A8  EC A2 08 28 */	fsubs f5, f2, f1
/* 801F994C 001F68AC  C0 5E 02 E0 */	lfs f2, 0x2e0(r30)
/* 801F9950 001F68B0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801F9954 001F68B4  EC 64 18 28 */	fsubs f3, f4, f3
/* 801F9958 001F68B8  EC 22 08 28 */	fsubs f1, f2, f1
/* 801F995C 001F68BC  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 801F9960 001F68C0  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801F9964 001F68C4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801F9968 001F68C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801F996C 001F68CC  48 11 AE E5 */	bl AsNormalized__9CVector3fCFv
/* 801F9970 001F68D0  C0 9E 00 48 */	lfs f4, 0x48(r30)
/* 801F9974 001F68D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801F9978 001F68D8  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 801F997C 001F68DC  EC 04 00 32 */	fmuls f0, f4, f0
/* 801F9980 001F68E0  C0 21 00 08 */	lfs f1, 8(r1)
/* 801F9984 001F68E4  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 801F9988 001F68E8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801F998C 001F68EC  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 801F9990 001F68F0  C0 02 AF C8 */	lfs f0, lbl_805ACCE8@sda21(r2)
/* 801F9994 001F68F4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 801F9998 001F68F8  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 801F999C 001F68FC  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 801F99A0 001F6900  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 801F99A4 001F6904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F99A8 001F6908  40 80 00 50 */	bge lbl_801F99F8
/* 801F99AC 001F690C  38 00 00 01 */	li r0, 1
/* 801F99B0 001F6910  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801F99B4 001F6914  48 00 00 44 */	b lbl_801F99F8
lbl_801F99B8:
/* 801F99B8 001F6918  38 00 00 00 */	li r0, 0
/* 801F99BC 001F691C  38 80 00 03 */	li r4, 3
/* 801F99C0 001F6920  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801F99C4 001F6924  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801F99C8 001F6928  4B F4 10 11 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801F99CC 001F692C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F99D0 001F6930  38 60 00 01 */	li r3, 1
/* 801F99D4 001F6934  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801F99D8 001F6938  98 1E 03 28 */	stb r0, 0x328(r30)
/* 801F99DC 001F693C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F99E0 001F6940  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801F99E4 001F6944  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 801F99E8 001F6948  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F99EC 001F694C  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 801F99F0 001F6950  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F99F4 001F6954  D0 1E 01 58 */	stfs f0, 0x158(r30)
lbl_801F99F8:
/* 801F99F8 001F6958  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801F99FC 001F695C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801F9A00 001F6960  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801F9A04 001F6964  7C 08 03 A6 */	mtlr r0
/* 801F9A08 001F6968  38 21 00 50 */	addi r1, r1, 0x50
/* 801F9A0C 001F696C  4E 80 00 20 */	blr

.global Land__13CFlyingPirateFR13CStateManager9EStateMsgf
Land__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801F9A10 001F6970  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9A14 001F6974  7C 08 02 A6 */	mflr r0
/* 801F9A18 001F6978  2C 05 00 01 */	cmpwi r5, 1
/* 801F9A1C 001F697C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F9A20 001F6980  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F9A24 001F6984  7C 9F 23 78 */	mr r31, r4
/* 801F9A28 001F6988  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F9A2C 001F698C  7C 7E 1B 78 */	mr r30, r3
/* 801F9A30 001F6990  41 82 00 48 */	beq lbl_801F9A78
/* 801F9A34 001F6994  40 80 00 10 */	bge lbl_801F9A44
/* 801F9A38 001F6998  2C 05 00 00 */	cmpwi r5, 0
/* 801F9A3C 001F699C  40 80 00 14 */	bge lbl_801F9A50
/* 801F9A40 001F69A0  48 00 00 A8 */	b lbl_801F9AE8
lbl_801F9A44:
/* 801F9A44 001F69A4  2C 05 00 03 */	cmpwi r5, 3
/* 801F9A48 001F69A8  40 80 00 A0 */	bge lbl_801F9AE8
/* 801F9A4C 001F69AC  48 00 00 78 */	b lbl_801F9AC4
lbl_801F9A50:
/* 801F9A50 001F69B0  38 00 00 01 */	li r0, 1
/* 801F9A54 001F69B4  38 A0 00 01 */	li r5, 1
/* 801F9A58 001F69B8  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801F9A5C 001F69BC  48 00 3E 69 */	bl sub_801fd8c4
/* 801F9A60 001F69C0  C0 22 AF 78 */	lfs f1, lbl_805ACC98@sda21(r2)
/* 801F9A64 001F69C4  7F C3 F3 78 */	mr r3, r30
/* 801F9A68 001F69C8  7F E4 FB 78 */	mr r4, r31
/* 801F9A6C 001F69CC  38 A0 00 01 */	li r5, 1
/* 801F9A70 001F69D0  48 00 41 79 */	bl sub_801fdbe8
/* 801F9A74 001F69D4  48 00 00 74 */	b lbl_801F9AE8
lbl_801F9A78:
/* 801F9A78 001F69D8  3C A0 80 3E */	lis r5, lbl_803E6838@ha
/* 801F9A7C 001F69DC  38 C1 00 08 */	addi r6, r1, 8
/* 801F9A80 001F69E0  39 45 68 38 */	addi r10, r5, lbl_803E6838@l
/* 801F9A84 001F69E4  38 A0 00 0D */	li r5, 0xd
/* 801F9A88 001F69E8  81 2A 00 00 */	lwz r9, 0(r10)
/* 801F9A8C 001F69EC  38 E0 00 00 */	li r7, 0
/* 801F9A90 001F69F0  81 0A 00 04 */	lwz r8, 4(r10)
/* 801F9A94 001F69F4  80 0A 00 08 */	lwz r0, 8(r10)
/* 801F9A98 001F69F8  91 21 00 08 */	stw r9, 8(r1)
/* 801F9A9C 001F69FC  91 01 00 0C */	stw r8, 0xc(r1)
/* 801F9AA0 001F6A00  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F9AA4 001F6A04  4B E8 2D 11 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801F9AA8 001F6A08  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 801F9AAC 001F6A0C  2C 00 00 02 */	cmpwi r0, 2
/* 801F9AB0 001F6A10  40 82 00 38 */	bne lbl_801F9AE8
/* 801F9AB4 001F6A14  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801F9AB8 001F6A18  38 80 00 01 */	li r4, 1
/* 801F9ABC 001F6A1C  4B F4 0F 1D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801F9AC0 001F6A20  48 00 00 28 */	b lbl_801F9AE8
lbl_801F9AC4:
/* 801F9AC4 001F6A24  38 00 00 00 */	li r0, 0
/* 801F9AC8 001F6A28  38 A0 00 00 */	li r5, 0
/* 801F9ACC 001F6A2C  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801F9AD0 001F6A30  48 00 3D F5 */	bl sub_801fd8c4
/* 801F9AD4 001F6A34  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801F9AD8 001F6A38  7F C3 F3 78 */	mr r3, r30
/* 801F9ADC 001F6A3C  7F E4 FB 78 */	mr r4, r31
/* 801F9AE0 001F6A40  38 A0 00 00 */	li r5, 0
/* 801F9AE4 001F6A44  48 00 41 05 */	bl sub_801fdbe8
lbl_801F9AE8:
/* 801F9AE8 001F6A48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F9AEC 001F6A4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F9AF0 001F6A50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F9AF4 001F6A54  7C 08 03 A6 */	mtlr r0
/* 801F9AF8 001F6A58  38 21 00 20 */	addi r1, r1, 0x20
/* 801F9AFC 001F6A5C  4E 80 00 20 */	blr

.global InPosition__13CFlyingPirateFR13CStateManagerf
InPosition__13CFlyingPirateFR13CStateManagerf:
/* 801F9B00 001F6A60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9B04 001F6A64  7C 08 02 A6 */	mflr r0
/* 801F9B08 001F6A68  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F9B0C 001F6A6C  38 A1 00 08 */	addi r5, r1, 8
/* 801F9B10 001F6A70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F9B14 001F6A74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F9B18 001F6A78  7C 7E 1B 78 */	mr r30, r3
/* 801F9B1C 001F6A7C  A0 03 06 A4 */	lhz r0, 0x6a4(r3)
/* 801F9B20 001F6A80  B0 01 00 08 */	sth r0, 8(r1)
/* 801F9B24 001F6A84  4B E8 2D 89 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 801F9B28 001F6A88  28 03 00 00 */	cmplwi r3, 0
/* 801F9B2C 001F6A8C  41 82 00 64 */	beq lbl_801F9B90
/* 801F9B30 001F6A90  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801F9B34 001F6A94  3B E0 00 00 */	li r31, 0
/* 801F9B38 001F6A98  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801F9B3C 001F6A9C  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 801F9B40 001F6AA0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801F9B44 001F6AA4  EC A1 00 28 */	fsubs f5, f1, f0
/* 801F9B48 001F6AA8  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F9B4C 001F6AAC  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 801F9B50 001F6AB0  EC 64 18 28 */	fsubs f3, f4, f3
/* 801F9B54 001F6AB4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801F9B58 001F6AB8  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 801F9B5C 001F6ABC  EC 02 08 28 */	fsubs f0, f2, f1
/* 801F9B60 001F6AC0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801F9B64 001F6AC4  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 801F9B68 001F6AC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801F9B6C 001F6ACC  40 80 00 1C */	bge lbl_801F9B88
/* 801F9B70 001F6AD0  38 61 00 0C */	addi r3, r1, 0xc
/* 801F9B74 001F6AD4  48 11 AD 45 */	bl Magnitude__9CVector3fCFv
/* 801F9B78 001F6AD8  C0 02 AF CC */	lfs f0, lbl_805ACCEC@sda21(r2)
/* 801F9B7C 001F6ADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F9B80 001F6AE0  40 80 00 08 */	bge lbl_801F9B88
/* 801F9B84 001F6AE4  3B E0 00 01 */	li r31, 1
lbl_801F9B88:
/* 801F9B88 001F6AE8  7F E3 FB 78 */	mr r3, r31
/* 801F9B8C 001F6AEC  48 00 00 08 */	b lbl_801F9B94
lbl_801F9B90:
/* 801F9B90 001F6AF0  38 60 00 01 */	li r3, 1
lbl_801F9B94:
/* 801F9B94 001F6AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F9B98 001F6AF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F9B9C 001F6AFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F9BA0 001F6B00  7C 08 03 A6 */	mtlr r0
/* 801F9BA4 001F6B04  38 21 00 20 */	addi r1, r1, 0x20
/* 801F9BA8 001F6B08  4E 80 00 20 */	blr

.global Landed__13CFlyingPirateFR13CStateManagerf
Landed__13CFlyingPirateFR13CStateManagerf:
/* 801F9BAC 001F6B0C  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801F9BB0 001F6B10  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801F9BB4 001F6B14  20 00 00 02 */	subfic r0, r0, 2
/* 801F9BB8 001F6B18  7C 00 00 34 */	cntlzw r0, r0
/* 801F9BBC 001F6B1C  54 03 D9 7E */	srwi r3, r0, 5
/* 801F9BC0 001F6B20  4E 80 00 20 */	blr

.global Jump__13CFlyingPirateFR13CStateManager9EStateMsgf
Jump__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801F9BC4 001F6B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9BC8 001F6B28  7C 08 02 A6 */	mflr r0
/* 801F9BCC 001F6B2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F9BD0 001F6B30  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801F9BD4 001F6B34  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 801F9BD8 001F6B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F9BDC 001F6B3C  93 C1 00 08 */	stw r30, 8(r1)
/* 801F9BE0 001F6B40  2C 05 00 01 */	cmpwi r5, 1
/* 801F9BE4 001F6B44  7C 7E 1B 78 */	mr r30, r3
/* 801F9BE8 001F6B48  7C 9F 23 78 */	mr r31, r4
/* 801F9BEC 001F6B4C  41 82 00 F0 */	beq lbl_801F9CDC
/* 801F9BF0 001F6B50  40 80 00 10 */	bge lbl_801F9C00
/* 801F9BF4 001F6B54  2C 05 00 00 */	cmpwi r5, 0
/* 801F9BF8 001F6B58  40 80 00 14 */	bge lbl_801F9C0C
/* 801F9BFC 001F6B5C  48 00 00 E0 */	b lbl_801F9CDC
lbl_801F9C00:
/* 801F9C00 001F6B60  2C 05 00 03 */	cmpwi r5, 3
/* 801F9C04 001F6B64  40 80 00 D8 */	bge lbl_801F9CDC
/* 801F9C08 001F6B68  48 00 00 A8 */	b lbl_801F9CB0
lbl_801F9C0C:
/* 801F9C0C 001F6B6C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801F9C10 001F6B70  38 80 00 03 */	li r4, 3
/* 801F9C14 001F6B74  4B F4 0D C5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801F9C18 001F6B78  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 801F9C1C 001F6B7C  38 60 00 01 */	li r3, 1
/* 801F9C20 001F6B80  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801F9C24 001F6B84  7F C3 F3 78 */	mr r3, r30
/* 801F9C28 001F6B88  98 1E 03 28 */	stb r0, 0x328(r30)
/* 801F9C2C 001F6B8C  7F E5 FB 78 */	mr r5, r31
/* 801F9C30 001F6B90  38 80 00 25 */	li r4, 0x25
/* 801F9C34 001F6B94  4B E5 A3 4D */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801F9C38 001F6B98  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801F9C3C 001F6B9C  C0 02 AF D0 */	lfs f0, lbl_805ACCF0@sda21(r2)
/* 801F9C40 001F6BA0  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 801F9C44 001F6BA4  C0 22 AF 78 */	lfs f1, lbl_805ACC98@sda21(r2)
/* 801F9C48 001F6BA8  C0 46 00 00 */	lfs f2, 0(r6)
/* 801F9C4C 001F6BAC  7F C3 F3 78 */	mr r3, r30
/* 801F9C50 001F6BB0  7F E4 FB 78 */	mr r4, r31
/* 801F9C54 001F6BB4  38 A0 00 01 */	li r5, 1
/* 801F9C58 001F6BB8  D0 5E 01 50 */	stfs f2, 0x150(r30)
/* 801F9C5C 001F6BBC  C0 46 00 04 */	lfs f2, 4(r6)
/* 801F9C60 001F6BC0  D0 5E 01 54 */	stfs f2, 0x154(r30)
/* 801F9C64 001F6BC4  C0 46 00 08 */	lfs f2, 8(r6)
/* 801F9C68 001F6BC8  D0 5E 01 58 */	stfs f2, 0x158(r30)
/* 801F9C6C 001F6BCC  D0 1E 08 88 */	stfs f0, 0x888(r30)
/* 801F9C70 001F6BD0  48 00 3F 79 */	bl sub_801fdbe8
/* 801F9C74 001F6BD4  7F C3 F3 78 */	mr r3, r30
/* 801F9C78 001F6BD8  7F E4 FB 78 */	mr r4, r31
/* 801F9C7C 001F6BDC  38 A0 00 01 */	li r5, 1
/* 801F9C80 001F6BE0  48 00 3C 45 */	bl sub_801fd8c4
/* 801F9C84 001F6BE4  C3 FE 06 54 */	lfs f31, 0x654(r30)
/* 801F9C88 001F6BE8  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801F9C8C 001F6BEC  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801F9C90 001F6BF0  C0 42 AF D4 */	lfs f2, lbl_805ACCF4@sda21(r2)
/* 801F9C94 001F6BF4  48 11 88 B1 */	bl Range__9CRandom16Fff
/* 801F9C98 001F6BF8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 801F9C9C 001F6BFC  7C 60 00 26 */	mfcr r3
/* 801F9CA0 001F6C00  88 1E 06 A2 */	lbz r0, 0x6a2(r30)
/* 801F9CA4 001F6C04  50 60 46 30 */	rlwimi r0, r3, 8, 0x18, 0x18
/* 801F9CA8 001F6C08  98 1E 06 A2 */	stb r0, 0x6a2(r30)
/* 801F9CAC 001F6C0C  48 00 00 30 */	b lbl_801F9CDC
lbl_801F9CB0:
/* 801F9CB0 001F6C10  C0 22 AF 74 */	lfs f1, lbl_805ACC94@sda21(r2)
/* 801F9CB4 001F6C14  38 A0 00 01 */	li r5, 1
/* 801F9CB8 001F6C18  48 00 3F 31 */	bl sub_801fdbe8
/* 801F9CBC 001F6C1C  7F C3 F3 78 */	mr r3, r30
/* 801F9CC0 001F6C20  7F E4 FB 78 */	mr r4, r31
/* 801F9CC4 001F6C24  38 A0 00 00 */	li r5, 0
/* 801F9CC8 001F6C28  48 00 3B FD */	bl sub_801fd8c4
/* 801F9CCC 001F6C2C  88 1E 06 A2 */	lbz r0, 0x6a2(r30)
/* 801F9CD0 001F6C30  38 60 00 00 */	li r3, 0
/* 801F9CD4 001F6C34  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F9CD8 001F6C38  98 1E 06 A2 */	stb r0, 0x6a2(r30)
lbl_801F9CDC:
/* 801F9CDC 001F6C3C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 801F9CE0 001F6C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F9CE4 001F6C44  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801F9CE8 001F6C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9CEC 001F6C4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F9CF0 001F6C50  7C 08 03 A6 */	mtlr r0
/* 801F9CF4 001F6C54  38 21 00 20 */	addi r1, r1, 0x20
/* 801F9CF8 001F6C58  4E 80 00 20 */	blr

.global ShouldSpecialAttack__13CFlyingPirateFR13CStateManagerf
ShouldSpecialAttack__13CFlyingPirateFR13CStateManagerf:
/* 801F9CFC 001F6C5C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801F9D00 001F6C60  7C 08 02 A6 */	mflr r0
/* 801F9D04 001F6C64  90 01 00 64 */	stw r0, 0x64(r1)
/* 801F9D08 001F6C68  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801F9D0C 001F6C6C  7C 7F 1B 78 */	mr r31, r3
/* 801F9D10 001F6C70  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801F9D14 001F6C74  93 A1 00 54 */	stw r29, 0x54(r1)
/* 801F9D18 001F6C78  7C 9D 23 78 */	mr r29, r4
/* 801F9D1C 001F6C7C  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 801F9D20 001F6C80  2C 00 00 01 */	cmpwi r0, 1
/* 801F9D24 001F6C84  40 82 01 3C */	bne lbl_801F9E60
/* 801F9D28 001F6C88  A0 7F 08 5C */	lhz r3, 0x85c(r31)
/* 801F9D2C 001F6C8C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F9D30 001F6C90  7C 03 00 40 */	cmplw r3, r0
/* 801F9D34 001F6C94  41 82 01 2C */	beq lbl_801F9E60
/* 801F9D38 001F6C98  C0 3F 08 60 */	lfs f1, 0x860(r31)
/* 801F9D3C 001F6C9C  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F9D40 001F6CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F9D44 001F6CA4  4C 40 13 82 */	cror 2, 0, 2
/* 801F9D48 001F6CA8  40 82 01 18 */	bne lbl_801F9E60
/* 801F9D4C 001F6CAC  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 801F9D50 001F6CB0  48 11 87 8D */	bl Float__9CRandom16Fv
/* 801F9D54 001F6CB4  C0 02 AF C0 */	lfs f0, lbl_805ACCE0@sda21(r2)
/* 801F9D58 001F6CB8  EC 00 00 7A */	fmadds f0, f0, f1, f0
/* 801F9D5C 001F6CBC  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 801F9D60 001F6CC0  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 801F9D64 001F6CC4  4B F8 42 59 */	bl CheckOrbitDisableSourceList__7CPlayerCFv
/* 801F9D68 001F6CC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F9D6C 001F6CCC  40 82 00 F4 */	bne lbl_801F9E60
/* 801F9D70 001F6CD0  A0 1F 08 5C */	lhz r0, 0x85c(r31)
/* 801F9D74 001F6CD4  7F A3 EB 78 */	mr r3, r29
/* 801F9D78 001F6CD8  38 81 00 14 */	addi r4, r1, 0x14
/* 801F9D7C 001F6CDC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801F9D80 001F6CE0  4B E5 28 25 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F9D84 001F6CE4  7C 64 1B 78 */	mr r4, r3
/* 801F9D88 001F6CE8  38 61 00 18 */	addi r3, r1, 0x18
/* 801F9D8C 001F6CEC  4B EB 5F 05 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801F9D90 001F6CF0  83 C3 00 04 */	lwz r30, 4(r3)
/* 801F9D94 001F6CF4  28 1E 00 00 */	cmplwi r30, 0
/* 801F9D98 001F6CF8  41 82 00 C8 */	beq lbl_801F9E60
/* 801F9D9C 001F6CFC  A0 7F 08 90 */	lhz r3, 0x890(r31)
/* 801F9DA0 001F6D00  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801F9DA4 001F6D04  7C 03 00 40 */	cmplw r3, r0
/* 801F9DA8 001F6D08  41 82 00 34 */	beq lbl_801F9DDC
/* 801F9DAC 001F6D0C  A0 FF 00 08 */	lhz r7, 8(r31)
/* 801F9DB0 001F6D10  7F A4 EB 78 */	mr r4, r29
/* 801F9DB4 001F6D14  38 A1 00 10 */	addi r5, r1, 0x10
/* 801F9DB8 001F6D18  38 C1 00 0C */	addi r6, r1, 0xc
/* 801F9DBC 001F6D1C  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 801F9DC0 001F6D20  38 60 00 01 */	li r3, 1
/* 801F9DC4 001F6D24  A0 1F 08 90 */	lhz r0, 0x890(r31)
/* 801F9DC8 001F6D28  B0 E1 00 08 */	sth r7, 8(r1)
/* 801F9DCC 001F6D2C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F9DD0 001F6D30  48 04 02 21 */	bl AddAttacker__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueId
/* 801F9DD4 001F6D34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F9DD8 001F6D38  41 82 00 88 */	beq lbl_801F9E60
lbl_801F9DDC:
/* 801F9DDC 001F6D3C  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 801F9DE0 001F6D40  C0 FE 00 60 */	lfs f7, 0x60(r30)
/* 801F9DE4 001F6D44  38 A3 67 00 */	addi r5, r3, sDownVector__9CVector3f@l
/* 801F9DE8 001F6D48  C0 DE 00 50 */	lfs f6, 0x50(r30)
/* 801F9DEC 001F6D4C  C0 42 AF C0 */	lfs f2, lbl_805ACCE0@sda21(r2)
/* 801F9DF0 001F6D50  7F E3 FB 78 */	mr r3, r31
/* 801F9DF4 001F6D54  C0 05 00 08 */	lfs f0, 8(r5)
/* 801F9DF8 001F6D58  38 81 00 38 */	addi r4, r1, 0x38
/* 801F9DFC 001F6D5C  C0 25 00 00 */	lfs f1, 0(r5)
/* 801F9E00 001F6D60  EC 82 00 32 */	fmuls f4, f2, f0
/* 801F9E04 001F6D64  C0 05 00 04 */	lfs f0, 4(r5)
/* 801F9E08 001F6D68  EC 62 00 72 */	fmuls f3, f2, f1
/* 801F9E0C 001F6D6C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801F9E10 001F6D70  EC 42 00 32 */	fmuls f2, f2, f0
/* 801F9E14 001F6D74  D0 C1 00 30 */	stfs f6, 0x30(r1)
/* 801F9E18 001F6D78  EC A7 20 2A */	fadds f5, f7, f4
/* 801F9E1C 001F6D7C  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801F9E20 001F6D80  EC C6 10 2A */	fadds f6, f6, f2
/* 801F9E24 001F6D84  EC 01 18 2A */	fadds f0, f1, f3
/* 801F9E28 001F6D88  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801F9E2C 001F6D8C  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801F9E30 001F6D90  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801F9E34 001F6D94  D0 E1 00 34 */	stfs f7, 0x34(r1)
/* 801F9E38 001F6D98  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801F9E3C 001F6D9C  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 801F9E40 001F6DA0  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 801F9E44 001F6DA4  4B E8 2D 19 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801F9E48 001F6DA8  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 801F9E4C 001F6DAC  38 60 00 01 */	li r3, 1
/* 801F9E50 001F6DB0  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801F9E54 001F6DB4  38 60 00 01 */	li r3, 1
/* 801F9E58 001F6DB8  98 1F 06 A1 */	stb r0, 0x6a1(r31)
/* 801F9E5C 001F6DBC  48 00 00 08 */	b lbl_801F9E64
lbl_801F9E60:
/* 801F9E60 001F6DC0  38 60 00 00 */	li r3, 0
lbl_801F9E64:
/* 801F9E64 001F6DC4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801F9E68 001F6DC8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801F9E6C 001F6DCC  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801F9E70 001F6DD0  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 801F9E74 001F6DD4  7C 08 03 A6 */	mtlr r0
/* 801F9E78 001F6DD8  38 21 00 60 */	addi r1, r1, 0x60
/* 801F9E7C 001F6DDC  4E 80 00 20 */	blr

.global Attacked__13CFlyingPirateFR13CStateManagerf
Attacked__13CFlyingPirateFR13CStateManagerf:
/* 801F9E80 001F6DE0  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F9E84 001F6DE4  C0 43 08 54 */	lfs f2, 0x854(r3)
/* 801F9E88 001F6DE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801F9E8C 001F6DEC  41 82 00 08 */	beq lbl_801F9E94
/* 801F9E90 001F6DF0  48 00 00 08 */	b lbl_801F9E98
lbl_801F9E94:
/* 801F9E94 001F6DF4  C0 22 AF 74 */	lfs f1, lbl_805ACC94@sda21(r2)
lbl_801F9E98:
/* 801F9E98 001F6DF8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801F9E9C 001F6DFC  7C 00 00 26 */	mfcr r0
/* 801F9EA0 001F6E00  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F9EA4 001F6E04  4E 80 00 20 */	blr

.global ShotAt__13CFlyingPirateFR13CStateManagerf
ShotAt__13CFlyingPirateFR13CStateManagerf:
/* 801F9EA8 001F6E08  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801F9EAC 001F6E0C  C0 43 08 58 */	lfs f2, 0x858(r3)
/* 801F9EB0 001F6E10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801F9EB4 001F6E14  41 82 00 08 */	beq lbl_801F9EBC
/* 801F9EB8 001F6E18  48 00 00 08 */	b lbl_801F9EC0
lbl_801F9EBC:
/* 801F9EBC 001F6E1C  C0 22 AF 74 */	lfs f1, lbl_805ACC94@sda21(r2)
lbl_801F9EC0:
/* 801F9EC0 001F6E20  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801F9EC4 001F6E24  7C 00 00 26 */	mfcr r0
/* 801F9EC8 001F6E28  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F9ECC 001F6E2C  4E 80 00 20 */	blr

.global Dodge__13CFlyingPirateFR13CStateManager9EStateMsgf
Dodge__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801F9ED0 001F6E30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9ED4 001F6E34  7C 08 02 A6 */	mflr r0
/* 801F9ED8 001F6E38  2C 05 00 01 */	cmpwi r5, 1
/* 801F9EDC 001F6E3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F9EE0 001F6E40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F9EE4 001F6E44  7C 9F 23 78 */	mr r31, r4
/* 801F9EE8 001F6E48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F9EEC 001F6E4C  7C 7E 1B 78 */	mr r30, r3
/* 801F9EF0 001F6E50  41 82 00 74 */	beq lbl_801F9F64
/* 801F9EF4 001F6E54  40 80 00 10 */	bge lbl_801F9F04
/* 801F9EF8 001F6E58  2C 05 00 00 */	cmpwi r5, 0
/* 801F9EFC 001F6E5C  40 80 00 14 */	bge lbl_801F9F10
/* 801F9F00 001F6E60  48 00 00 E4 */	b lbl_801F9FE4
lbl_801F9F04:
/* 801F9F04 001F6E64  2C 05 00 03 */	cmpwi r5, 3
/* 801F9F08 001F6E68  40 80 00 DC */	bge lbl_801F9FE4
/* 801F9F0C 001F6E6C  48 00 00 C4 */	b lbl_801F9FD0
lbl_801F9F10:
/* 801F9F10 001F6E70  38 00 00 01 */	li r0, 1
/* 801F9F14 001F6E74  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801F9F18 001F6E78  C0 3E 08 50 */	lfs f1, 0x850(r30)
/* 801F9F1C 001F6E7C  48 00 2A 69 */	bl GetDodgeDirection__13CFlyingPirateFR13CStateManagerf
/* 801F9F20 001F6E80  90 7E 08 4C */	stw r3, 0x84c(r30)
/* 801F9F24 001F6E84  80 1E 08 4C */	lwz r0, 0x84c(r30)
/* 801F9F28 001F6E88  2C 00 FF FF */	cmpwi r0, -1
/* 801F9F2C 001F6E8C  40 82 00 20 */	bne lbl_801F9F4C
/* 801F9F30 001F6E90  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801F9F34 001F6E94  48 11 85 ED */	bl Next__9CRandom16Fv
/* 801F9F38 001F6E98  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 801F9F3C 001F6E9C  38 60 00 03 */	li r3, 3
/* 801F9F40 001F6EA0  41 82 00 08 */	beq lbl_801F9F48
/* 801F9F44 001F6EA4  38 60 00 02 */	li r3, 2
lbl_801F9F48:
/* 801F9F48 001F6EA8  90 7E 08 4C */	stw r3, 0x84c(r30)
lbl_801F9F4C:
/* 801F9F4C 001F6EAC  C0 22 AF 78 */	lfs f1, lbl_805ACC98@sda21(r2)
/* 801F9F50 001F6EB0  7F C3 F3 78 */	mr r3, r30
/* 801F9F54 001F6EB4  7F E4 FB 78 */	mr r4, r31
/* 801F9F58 001F6EB8  38 A0 00 01 */	li r5, 1
/* 801F9F5C 001F6EBC  48 00 3C 8D */	bl sub_801fdbe8
/* 801F9F60 001F6EC0  48 00 00 84 */	b lbl_801F9FE4
lbl_801F9F64:
/* 801F9F64 001F6EC4  3C A0 80 3E */	lis r5, lbl_803E682C@ha
/* 801F9F68 001F6EC8  38 C1 00 0C */	addi r6, r1, 0xc
/* 801F9F6C 001F6ECC  39 25 68 2C */	addi r9, r5, lbl_803E682C@l
/* 801F9F70 001F6ED0  38 A0 00 03 */	li r5, 3
/* 801F9F74 001F6ED4  81 09 00 00 */	lwz r8, 0(r9)
/* 801F9F78 001F6ED8  80 E9 00 04 */	lwz r7, 4(r9)
/* 801F9F7C 001F6EDC  80 09 00 08 */	lwz r0, 8(r9)
/* 801F9F80 001F6EE0  91 01 00 0C */	stw r8, 0xc(r1)
/* 801F9F84 001F6EE4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 801F9F88 001F6EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9F8C 001F6EEC  80 FE 08 4C */	lwz r7, 0x84c(r30)
/* 801F9F90 001F6EF0  4B E8 28 25 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801F9F94 001F6EF4  7F C3 F3 78 */	mr r3, r30
/* 801F9F98 001F6EF8  7F E4 FB 78 */	mr r4, r31
/* 801F9F9C 001F6EFC  48 00 31 C9 */	bl UpdateCantSeePlayer__13CFlyingPirateFR13CStateManager
/* 801F9FA0 001F6F00  C0 22 AF 64 */	lfs f1, lbl_805ACC84@sda21(r2)
/* 801F9FA4 001F6F04  38 81 00 08 */	addi r4, r1, 8
/* 801F9FA8 001F6F08  C0 1E 03 38 */	lfs f0, 0x338(r30)
/* 801F9FAC 001F6F0C  38 6D 93 0C */	addi r3, r13, lbl_805A7ECC@sda21
/* 801F9FB0 001F6F10  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F9FB4 001F6F14  D0 01 00 08 */	stfs f0, 8(r1)
/* 801F9FB8 001F6F18  4B E5 57 79 */	bl "Max<f>__5CMathFRCfRCf"
/* 801F9FBC 001F6F1C  C0 03 00 00 */	lfs f0, 0(r3)
/* 801F9FC0 001F6F20  7F C3 F3 78 */	mr r3, r30
/* 801F9FC4 001F6F24  D0 1E 08 98 */	stfs f0, 0x898(r30)
/* 801F9FC8 001F6F28  48 00 3D 7D */	bl sub_801fdd44
/* 801F9FCC 001F6F2C  48 00 00 18 */	b lbl_801F9FE4
lbl_801F9FD0:
/* 801F9FD0 001F6F30  38 60 00 00 */	li r3, 0
/* 801F9FD4 001F6F34  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 801F9FD8 001F6F38  88 1E 06 A1 */	lbz r0, 0x6a1(r30)
/* 801F9FDC 001F6F3C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801F9FE0 001F6F40  98 1E 06 A1 */	stb r0, 0x6a1(r30)
lbl_801F9FE4:
/* 801F9FE4 001F6F44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F9FE8 001F6F48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F9FEC 001F6F4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F9FF0 001F6F50  7C 08 03 A6 */	mtlr r0
/* 801F9FF4 001F6F54  38 21 00 20 */	addi r1, r1, 0x20
/* 801F9FF8 001F6F58  4E 80 00 20 */	blr

.global ShouldDodge__13CFlyingPirateFR13CStateManagerf
ShouldDodge__13CFlyingPirateFR13CStateManagerf:
/* 801F9FFC 001F6F5C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801FA000 001F6F60  7C 08 02 A6 */	mflr r0
/* 801FA004 001F6F64  90 01 00 64 */	stw r0, 0x64(r1)
/* 801FA008 001F6F68  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801FA00C 001F6F6C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801FA010 001F6F70  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801FA014 001F6F74  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 801FA018 001F6F78  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 801FA01C 001F6F7C  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 801FA020 001F6F80  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801FA024 001F6F84  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801FA028 001F6F88  88 03 06 A1 */	lbz r0, 0x6a1(r3)
/* 801FA02C 001F6F8C  7C 7E 1B 78 */	mr r30, r3
/* 801FA030 001F6F90  7C 85 23 78 */	mr r5, r4
/* 801FA034 001F6F94  54 03 EF FF */	rlwinm. r3, r0, 0x1d, 0x1f, 0x1f
/* 801FA038 001F6F98  7C 7F 1B 78 */	mr r31, r3
/* 801FA03C 001F6F9C  40 82 00 9C */	bne lbl_801FA0D8
/* 801FA040 001F6FA0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FA044 001F6FA4  40 82 00 94 */	bne lbl_801FA0D8
/* 801FA048 001F6FA8  C3 BE 00 60 */	lfs f29, 0x60(r30)
/* 801FA04C 001F6FAC  7F C4 F3 78 */	mr r4, r30
/* 801FA050 001F6FB0  C3 DE 00 50 */	lfs f30, 0x50(r30)
/* 801FA054 001F6FB4  38 61 00 14 */	addi r3, r1, 0x14
/* 801FA058 001F6FB8  C3 FE 00 40 */	lfs f31, 0x40(r30)
/* 801FA05C 001F6FBC  48 00 28 39 */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801FA060 001F6FC0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801FA064 001F6FC4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801FA068 001F6FC8  EC 60 F0 28 */	fsubs f3, f0, f30
/* 801FA06C 001F6FCC  C0 BE 00 48 */	lfs f5, 0x48(r30)
/* 801FA070 001F6FD0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801FA074 001F6FD4  EC 81 F8 28 */	fsubs f4, f1, f31
/* 801FA078 001F6FD8  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 801FA07C 001F6FDC  EC 23 01 72 */	fmuls f1, f3, f5
/* 801FA080 001F6FE0  C0 DE 00 58 */	lfs f6, 0x58(r30)
/* 801FA084 001F6FE4  EC 60 E8 28 */	fsubs f3, f0, f29
/* 801FA088 001F6FE8  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FA08C 001F6FEC  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 801FA090 001F6FF0  D0 41 00 08 */	stfs f2, 8(r1)
/* 801FA094 001F6FF4  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 801FA098 001F6FF8  EC 23 09 BA */	fmadds f1, f3, f6, f1
/* 801FA09C 001F6FFC  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 801FA0A0 001F7000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FA0A4 001F7004  40 81 00 34 */	ble lbl_801FA0D8
/* 801FA0A8 001F7008  C0 1E 08 54 */	lfs f0, 0x854(r30)
/* 801FA0AC 001F700C  C0 22 AF D8 */	lfs f1, lbl_805ACCF8@sda21(r2)
/* 801FA0B0 001F7010  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801FA0B4 001F7014  41 80 00 10 */	blt lbl_801FA0C4
/* 801FA0B8 001F7018  C0 1E 08 58 */	lfs f0, 0x858(r30)
/* 801FA0BC 001F701C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801FA0C0 001F7020  40 80 00 18 */	bge lbl_801FA0D8
lbl_801FA0C4:
/* 801FA0C4 001F7024  C0 3E 07 D8 */	lfs f1, 0x7d8(r30)
/* 801FA0C8 001F7028  C0 02 AF 74 */	lfs f0, lbl_805ACC94@sda21(r2)
/* 801FA0CC 001F702C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FA0D0 001F7030  40 80 00 08 */	bge lbl_801FA0D8
/* 801FA0D4 001F7034  3B E0 00 01 */	li r31, 1
lbl_801FA0D8:
/* 801FA0D8 001F7038  7F E3 FB 78 */	mr r3, r31
/* 801FA0DC 001F703C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801FA0E0 001F7040  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801FA0E4 001F7044  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 801FA0E8 001F7048  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801FA0EC 001F704C  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 801FA0F0 001F7050  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 801FA0F4 001F7054  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801FA0F8 001F7058  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801FA0FC 001F705C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801FA100 001F7060  7C 08 03 A6 */	mtlr r0
/* 801FA104 001F7064  38 21 00 60 */	addi r1, r1, 0x60
/* 801FA108 001F7068  4E 80 00 20 */	blr

.global TurnAround__13CFlyingPirateFR13CStateManager9EStateMsgf
TurnAround__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FA10C 001F706C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801FA110 001F7070  7C 08 02 A6 */	mflr r0
/* 801FA114 001F7074  2C 05 00 01 */	cmpwi r5, 1
/* 801FA118 001F7078  90 01 00 54 */	stw r0, 0x54(r1)
/* 801FA11C 001F707C  7C 80 23 78 */	mr r0, r4
/* 801FA120 001F7080  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801FA124 001F7084  7C 7F 1B 78 */	mr r31, r3
/* 801FA128 001F7088  41 82 00 D4 */	beq lbl_801FA1FC
/* 801FA12C 001F708C  40 80 00 10 */	bge lbl_801FA13C
/* 801FA130 001F7090  2C 05 00 00 */	cmpwi r5, 0
/* 801FA134 001F7094  40 80 00 14 */	bge lbl_801FA148
/* 801FA138 001F7098  48 00 01 00 */	b lbl_801FA238
lbl_801FA13C:
/* 801FA13C 001F709C  2C 05 00 03 */	cmpwi r5, 3
/* 801FA140 001F70A0  40 80 00 F8 */	bge lbl_801FA238
/* 801FA144 001F70A4  48 00 00 EC */	b lbl_801FA230
lbl_801FA148:
/* 801FA148 001F70A8  7F E4 FB 78 */	mr r4, r31
/* 801FA14C 001F70AC  7C 05 03 78 */	mr r5, r0
/* 801FA150 001F70B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 801FA154 001F70B4  48 00 27 41 */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801FA158 001F70B8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801FA15C 001F70BC  38 61 00 14 */	addi r3, r1, 0x14
/* 801FA160 001F70C0  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FA164 001F70C4  38 81 00 38 */	addi r4, r1, 0x38
/* 801FA168 001F70C8  D0 3F 02 E0 */	stfs f1, 0x2e0(r31)
/* 801FA16C 001F70CC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 801FA170 001F70D0  D0 3F 02 E4 */	stfs f1, 0x2e4(r31)
/* 801FA174 001F70D4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801FA178 001F70D8  D0 3F 02 E8 */	stfs f1, 0x2e8(r31)
/* 801FA17C 001F70DC  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 801FA180 001F70E0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801FA184 001F70E4  C0 9F 02 E4 */	lfs f4, 0x2e4(r31)
/* 801FA188 001F70E8  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801FA18C 001F70EC  EC A2 08 28 */	fsubs f5, f2, f1
/* 801FA190 001F70F0  C0 5F 02 E0 */	lfs f2, 0x2e0(r31)
/* 801FA194 001F70F4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801FA198 001F70F8  EC 64 18 28 */	fsubs f3, f4, f3
/* 801FA19C 001F70FC  EC 22 08 28 */	fsubs f1, f2, f1
/* 801FA1A0 001F7100  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 801FA1A4 001F7104  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801FA1A8 001F7108  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801FA1AC 001F710C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801FA1B0 001F7110  48 11 A6 A1 */	bl AsNormalized__9CVector3fCFv
/* 801FA1B4 001F7114  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 801FA1B8 001F7118  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801FA1BC 001F711C  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 801FA1C0 001F7120  EC 04 00 32 */	fmuls f0, f4, f0
/* 801FA1C4 001F7124  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801FA1C8 001F7128  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 801FA1CC 001F712C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801FA1D0 001F7130  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 801FA1D4 001F7134  C0 02 AF C8 */	lfs f0, lbl_805ACCE8@sda21(r2)
/* 801FA1D8 001F7138  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801FA1DC 001F713C  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 801FA1E0 001F7140  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801FA1E4 001F7144  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 801FA1E8 001F7148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FA1EC 001F714C  40 80 00 4C */	bge lbl_801FA238
/* 801FA1F0 001F7150  38 00 00 01 */	li r0, 1
/* 801FA1F4 001F7154  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 801FA1F8 001F7158  48 00 00 40 */	b lbl_801FA238
lbl_801FA1FC:
/* 801FA1FC 001F715C  3C A0 80 3E */	lis r5, lbl_803E6820@ha
/* 801FA200 001F7160  38 C1 00 08 */	addi r6, r1, 8
/* 801FA204 001F7164  39 45 68 20 */	addi r10, r5, lbl_803E6820@l
/* 801FA208 001F7168  38 A0 00 08 */	li r5, 8
/* 801FA20C 001F716C  81 2A 00 00 */	lwz r9, 0(r10)
/* 801FA210 001F7170  38 E0 00 00 */	li r7, 0
/* 801FA214 001F7174  81 0A 00 04 */	lwz r8, 4(r10)
/* 801FA218 001F7178  80 0A 00 08 */	lwz r0, 8(r10)
/* 801FA21C 001F717C  91 21 00 08 */	stw r9, 8(r1)
/* 801FA220 001F7180  91 01 00 0C */	stw r8, 0xc(r1)
/* 801FA224 001F7184  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FA228 001F7188  4B E8 25 8D */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801FA22C 001F718C  48 00 00 0C */	b lbl_801FA238
lbl_801FA230:
/* 801FA230 001F7190  38 00 00 00 */	li r0, 0
/* 801FA234 001F7194  90 1F 03 2C */	stw r0, 0x32c(r31)
lbl_801FA238:
/* 801FA238 001F7198  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801FA23C 001F719C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801FA240 001F71A0  7C 08 03 A6 */	mtlr r0
/* 801FA244 001F71A4  38 21 00 50 */	addi r1, r1, 0x50
/* 801FA248 001F71A8  4E 80 00 20 */	blr

.global Retreat__13CFlyingPirateFR13CStateManager9EStateMsgf
Retreat__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FA24C 001F71AC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 801FA250 001F71B0  7C 08 02 A6 */	mflr r0
/* 801FA254 001F71B4  90 01 01 24 */	stw r0, 0x124(r1)
/* 801FA258 001F71B8  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 801FA25C 001F71BC  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 801FA260 001F71C0  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 801FA264 001F71C4  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 801FA268 001F71C8  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 801FA26C 001F71CC  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, qr0
/* 801FA270 001F71D0  93 E1 00 EC */	stw r31, 0xec(r1)
/* 801FA274 001F71D4  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 801FA278 001F71D8  FF A0 08 90 */	fmr f29, f1
/* 801FA27C 001F71DC  2C 05 00 01 */	cmpwi r5, 1
/* 801FA280 001F71E0  7C 7E 1B 78 */	mr r30, r3
/* 801FA284 001F71E4  7C 9F 23 78 */	mr r31, r4
/* 801FA288 001F71E8  41 82 02 94 */	beq lbl_801FA51C
/* 801FA28C 001F71EC  40 80 05 50 */	bge lbl_801FA7DC
/* 801FA290 001F71F0  2C 05 00 00 */	cmpwi r5, 0
/* 801FA294 001F71F4  40 80 00 0C */	bge lbl_801FA2A0
/* 801FA298 001F71F8  48 00 05 44 */	b lbl_801FA7DC
/* 801FA29C 001F71FC  48 00 05 40 */	b lbl_801FA7DC
lbl_801FA2A0:
/* 801FA2A0 001F7200  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801FA2A4 001F7204  38 61 00 98 */	addi r3, r1, 0x98
/* 801FA2A8 001F7208  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801FA2AC 001F720C  38 81 00 8C */	addi r4, r1, 0x8c
/* 801FA2B0 001F7210  C3 C5 00 50 */	lfs f30, 0x50(r5)
/* 801FA2B4 001F7214  C3 A5 00 60 */	lfs f29, 0x60(r5)
/* 801FA2B8 001F7218  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801FA2BC 001F721C  EC 5E 00 28 */	fsubs f2, f30, f0
/* 801FA2C0 001F7220  C3 E5 00 40 */	lfs f31, 0x40(r5)
/* 801FA2C4 001F7224  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FA2C8 001F7228  EC 3D 08 28 */	fsubs f1, f29, f1
/* 801FA2CC 001F722C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 801FA2D0 001F7230  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 801FA2D4 001F7234  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 801FA2D8 001F7238  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801FA2DC 001F723C  48 11 A5 75 */	bl AsNormalized__9CVector3fCFv
/* 801FA2E0 001F7240  C0 DE 02 FC */	lfs f6, 0x2fc(r30)
/* 801FA2E4 001F7244  7F C3 F3 78 */	mr r3, r30
/* 801FA2E8 001F7248  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 801FA2EC 001F724C  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 801FA2F0 001F7250  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 801FA2F4 001F7254  EC 86 00 B2 */	fmuls f4, f6, f2
/* 801FA2F8 001F7258  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 801FA2FC 001F725C  EC 46 00 72 */	fmuls f2, f6, f1
/* 801FA300 001F7260  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801FA304 001F7264  EC 06 00 32 */	fmuls f0, f6, f0
/* 801FA308 001F7268  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801FA30C 001F726C  EC 85 20 28 */	fsubs f4, f5, f4
/* 801FA310 001F7270  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FA314 001F7274  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FA318 001F7278  D0 81 00 C0 */	stfs f4, 0xc0(r1)
/* 801FA31C 001F727C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 801FA320 001F7280  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 801FA324 001F7284  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 801FA328 001F7288  EC 1D 00 2A */	fadds f0, f29, f0
/* 801FA32C 001F728C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801FA330 001F7290  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA334 001F7294  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA338 001F7298  7D 89 03 A6 */	mtctr r12
/* 801FA33C 001F729C  4E 80 04 21 */	bctrl
/* 801FA340 001F72A0  38 81 00 BC */	addi r4, r1, 0xbc
/* 801FA344 001F72A4  4B FC C7 F1 */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 801FA348 001F72A8  2C 03 00 02 */	cmpwi r3, 2
/* 801FA34C 001F72AC  40 82 01 80 */	bne lbl_801FA4CC
/* 801FA350 001F72B0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FA354 001F72B4  7F C3 F3 78 */	mr r3, r30
/* 801FA358 001F72B8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FA35C 001F72BC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FA360 001F72C0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801FA364 001F72C4  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 801FA368 001F72C8  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 801FA36C 001F72CC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA370 001F72D0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA374 001F72D4  7D 89 03 A6 */	mtctr r12
/* 801FA378 001F72D8  4E 80 04 21 */	bctrl
/* 801FA37C 001F72DC  38 81 00 80 */	addi r4, r1, 0x80
/* 801FA380 001F72E0  38 A1 00 BC */	addi r5, r1, 0xbc
/* 801FA384 001F72E4  4B FC CD 79 */	bl FindClosestReachablePoint__15CPathFindSearchCFRC9CVector3fR9CVector3f
/* 801FA388 001F72E8  C0 41 00 C4 */	lfs f2, 0xc4(r1)
/* 801FA38C 001F72EC  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 801FA390 001F72F0  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 801FA394 001F72F4  EC 42 08 2A */	fadds f2, f2, f1
/* 801FA398 001F72F8  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 801FA39C 001F72FC  EC DE 00 28 */	fsubs f6, f30, f0
/* 801FA3A0 001F7300  C0 02 AF 9C */	lfs f0, lbl_805ACCBC@sda21(r2)
/* 801FA3A4 001F7304  EC 9F 08 28 */	fsubs f4, f31, f1
/* 801FA3A8 001F7308  EC BD 10 28 */	fsubs f5, f29, f2
/* 801FA3AC 001F730C  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 801FA3B0 001F7310  EC 26 01 B2 */	fmuls f1, f6, f6
/* 801FA3B4 001F7314  EC 44 01 32 */	fmuls f2, f4, f4
/* 801FA3B8 001F7318  C0 FE 02 FC */	lfs f7, 0x2fc(r30)
/* 801FA3BC 001F731C  EC 65 01 72 */	fmuls f3, f5, f5
/* 801FA3C0 001F7320  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 801FA3C4 001F7324  EC 22 08 2A */	fadds f1, f2, f1
/* 801FA3C8 001F7328  EC 00 01 F2 */	fmuls f0, f0, f7
/* 801FA3CC 001F732C  D0 C1 00 78 */	stfs f6, 0x78(r1)
/* 801FA3D0 001F7330  EC 23 08 2A */	fadds f1, f3, f1
/* 801FA3D4 001F7334  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 801FA3D8 001F7338  EC 00 01 F2 */	fmuls f0, f0, f7
/* 801FA3DC 001F733C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FA3E0 001F7340  40 80 00 EC */	bge lbl_801FA4CC
/* 801FA3E4 001F7344  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801FA3E8 001F7348  38 61 00 68 */	addi r3, r1, 0x68
/* 801FA3EC 001F734C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801FA3F0 001F7350  38 81 00 5C */	addi r4, r1, 0x5c
/* 801FA3F4 001F7354  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FA3F8 001F7358  EC 5E 10 28 */	fsubs f2, f30, f2
/* 801FA3FC 001F735C  EC 3D 08 28 */	fsubs f1, f29, f1
/* 801FA400 001F7360  EC 1F 00 28 */	fsubs f0, f31, f0
/* 801FA404 001F7364  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 801FA408 001F7368  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801FA40C 001F736C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801FA410 001F7370  48 11 A4 41 */	bl AsNormalized__9CVector3fCFv
/* 801FA414 001F7374  C0 DE 02 FC */	lfs f6, 0x2fc(r30)
/* 801FA418 001F7378  7F C3 F3 78 */	mr r3, r30
/* 801FA41C 001F737C  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 801FA420 001F7380  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 801FA424 001F7384  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801FA428 001F7388  EC 86 00 B2 */	fmuls f4, f6, f2
/* 801FA42C 001F738C  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 801FA430 001F7390  EC 46 00 72 */	fmuls f2, f6, f1
/* 801FA434 001F7394  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801FA438 001F7398  EC 06 00 32 */	fmuls f0, f6, f0
/* 801FA43C 001F739C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801FA440 001F73A0  EC 85 20 2A */	fadds f4, f5, f4
/* 801FA444 001F73A4  EC 43 10 2A */	fadds f2, f3, f2
/* 801FA448 001F73A8  EC 01 00 2A */	fadds f0, f1, f0
/* 801FA44C 001F73AC  D0 81 00 C0 */	stfs f4, 0xc0(r1)
/* 801FA450 001F73B0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 801FA454 001F73B4  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 801FA458 001F73B8  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 801FA45C 001F73BC  EC 1D 00 2A */	fadds f0, f29, f0
/* 801FA460 001F73C0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801FA464 001F73C4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA468 001F73C8  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA46C 001F73CC  7D 89 03 A6 */	mtctr r12
/* 801FA470 001F73D0  4E 80 04 21 */	bctrl
/* 801FA474 001F73D4  38 81 00 BC */	addi r4, r1, 0xbc
/* 801FA478 001F73D8  4B FC C6 BD */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 801FA47C 001F73DC  2C 03 00 02 */	cmpwi r3, 2
/* 801FA480 001F73E0  40 82 00 4C */	bne lbl_801FA4CC
/* 801FA484 001F73E4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FA488 001F73E8  7F C3 F3 78 */	mr r3, r30
/* 801FA48C 001F73EC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FA490 001F73F0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FA494 001F73F4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801FA498 001F73F8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801FA49C 001F73FC  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801FA4A0 001F7400  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA4A4 001F7404  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA4A8 001F7408  7D 89 03 A6 */	mtctr r12
/* 801FA4AC 001F740C  4E 80 04 21 */	bctrl
/* 801FA4B0 001F7410  38 81 00 50 */	addi r4, r1, 0x50
/* 801FA4B4 001F7414  38 A1 00 BC */	addi r5, r1, 0xbc
/* 801FA4B8 001F7418  4B FC CC 45 */	bl FindClosestReachablePoint__15CPathFindSearchCFRC9CVector3fR9CVector3f
/* 801FA4BC 001F741C  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 801FA4C0 001F7420  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 801FA4C4 001F7424  EC 01 00 2A */	fadds f0, f1, f0
/* 801FA4C8 001F7428  D0 01 00 C4 */	stfs f0, 0xc4(r1)
lbl_801FA4CC:
/* 801FA4CC 001F742C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FA4D0 001F7430  7F C3 F3 78 */	mr r3, r30
/* 801FA4D4 001F7434  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FA4D8 001F7438  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FA4DC 001F743C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801FA4E0 001F7440  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801FA4E4 001F7444  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801FA4E8 001F7448  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA4EC 001F744C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA4F0 001F7450  7D 89 03 A6 */	mtctr r12
/* 801FA4F4 001F7454  4E 80 04 21 */	bctrl
/* 801FA4F8 001F7458  38 81 00 44 */	addi r4, r1, 0x44
/* 801FA4FC 001F745C  38 A1 00 BC */	addi r5, r1, 0xbc
/* 801FA500 001F7460  4B FC D7 6D */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 801FA504 001F7464  C0 22 AF 74 */	lfs f1, lbl_805ACC94@sda21(r2)
/* 801FA508 001F7468  7F C3 F3 78 */	mr r3, r30
/* 801FA50C 001F746C  7F E4 FB 78 */	mr r4, r31
/* 801FA510 001F7470  38 A0 00 01 */	li r5, 1
/* 801FA514 001F7474  48 00 36 D5 */	bl sub_801fdbe8
/* 801FA518 001F7478  48 00 02 C4 */	b lbl_801FA7DC
lbl_801FA51C:
/* 801FA51C 001F747C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801FA520 001F7480  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 801FA524 001F7484  C0 24 00 04 */	lfs f1, 4(r4)
/* 801FA528 001F7488  C0 04 00 08 */	lfs f0, 8(r4)
/* 801FA52C 001F748C  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 801FA530 001F7490  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801FA534 001F7494  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801FA538 001F7498  81 83 00 00 */	lwz r12, 0(r3)
/* 801FA53C 001F749C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA540 001F74A0  7D 89 03 A6 */	mtctr r12
/* 801FA544 001F74A4  4E 80 04 21 */	bctrl
/* 801FA548 001F74A8  80 83 00 04 */	lwz r4, 4(r3)
/* 801FA54C 001F74AC  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 801FA550 001F74B0  38 04 FF FF */	addi r0, r4, -1
/* 801FA554 001F74B4  7C 03 00 00 */	cmpw r3, r0
/* 801FA558 001F74B8  40 80 00 F0 */	bge lbl_801FA648
/* 801FA55C 001F74BC  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801FA560 001F74C0  7F C3 F3 78 */	mr r3, r30
/* 801FA564 001F74C4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 801FA568 001F74C8  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801FA56C 001F74CC  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 801FA570 001F74D0  EC A4 00 2A */	fadds f5, f4, f0
/* 801FA574 001F74D4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801FA578 001F74D8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 801FA57C 001F74DC  EC 43 10 2A */	fadds f2, f3, f2
/* 801FA580 001F74E0  EC 01 00 2A */	fadds f0, f1, f0
/* 801FA584 001F74E4  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 801FA588 001F74E8  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 801FA58C 001F74EC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 801FA590 001F74F0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801FA594 001F74F4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801FA598 001F74F8  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801FA59C 001F74FC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA5A0 001F7500  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA5A4 001F7504  7D 89 03 A6 */	mtctr r12
/* 801FA5A8 001F7508  4E 80 04 21 */	bctrl
/* 801FA5AC 001F750C  C0 22 AF 7C */	lfs f1, lbl_805ACC9C@sda21(r2)
/* 801FA5B0 001F7510  38 81 00 A4 */	addi r4, r1, 0xa4
/* 801FA5B4 001F7514  38 A1 00 38 */	addi r5, r1, 0x38
/* 801FA5B8 001F7518  4B FD 15 E1 */	bl GetSplinePointWithLookahead__15CPathFindSearchCFR9CVector3fRC9CVector3ff
/* 801FA5BC 001F751C  7F C3 F3 78 */	mr r3, r30
/* 801FA5C0 001F7520  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA5C4 001F7524  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA5C8 001F7528  7D 89 03 A6 */	mtctr r12
/* 801FA5CC 001F752C  4E 80 04 21 */	bctrl
/* 801FA5D0 001F7530  38 81 00 A4 */	addi r4, r1, 0xa4
/* 801FA5D4 001F7534  4B FD 1A 71 */	bl SegmentOver__15CPathFindSearchCFRC9CVector3f
/* 801FA5D8 001F7538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FA5DC 001F753C  41 82 00 24 */	beq lbl_801FA600
/* 801FA5E0 001F7540  7F C3 F3 78 */	mr r3, r30
/* 801FA5E4 001F7544  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA5E8 001F7548  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA5EC 001F754C  7D 89 03 A6 */	mtctr r12
/* 801FA5F0 001F7550  4E 80 04 21 */	bctrl
/* 801FA5F4 001F7554  80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 801FA5F8 001F7558  38 04 00 01 */	addi r0, r4, 1
/* 801FA5FC 001F755C  90 03 00 C8 */	stw r0, 0xc8(r3)
lbl_801FA600:
/* 801FA600 001F7560  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 801FA604 001F7564  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801FA608 001F7568  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801FA60C 001F756C  C0 61 00 AC */	lfs f3, 0xac(r1)
/* 801FA610 001F7570  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FA614 001F7574  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FA618 001F7578  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FA61C 001F757C  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 801FA620 001F7580  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FA624 001F7584  D0 81 00 B4 */	stfs f4, 0xb4(r1)
/* 801FA628 001F7588  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FA62C 001F758C  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 801FA630 001F7590  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 801FA634 001F7594  48 11 A0 C5 */	bl CanBeNormalized__9CVector3fCFv
/* 801FA638 001F7598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FA63C 001F759C  41 82 00 0C */	beq lbl_801FA648
/* 801FA640 001F75A0  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801FA644 001F75A4  48 11 A2 B5 */	bl Normalize__9CVector3fFv
lbl_801FA648:
/* 801FA648 001F75A8  7F C4 F3 78 */	mr r4, r30
/* 801FA64C 001F75AC  7F E5 FB 78 */	mr r5, r31
/* 801FA650 001F75B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 801FA654 001F75B4  48 00 28 A5 */	bl AvoidActors__13CFlyingPirateFR13CStateManager
/* 801FA658 001F75B8  C0 A2 AF 7C */	lfs f5, lbl_805ACC9C@sda21(r2)
/* 801FA65C 001F75BC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801FA660 001F75C0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801FA664 001F75C4  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 801FA668 001F75C8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 801FA66C 001F75CC  EC C5 00 32 */	fmuls f6, f5, f0
/* 801FA670 001F75D0  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 801FA674 001F75D4  EC 65 00 B2 */	fmuls f3, f5, f2
/* 801FA678 001F75D8  C0 81 00 B0 */	lfs f4, 0xb0(r1)
/* 801FA67C 001F75DC  EC 25 00 72 */	fmuls f1, f5, f1
/* 801FA680 001F75E0  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 801FA684 001F75E4  EC 64 18 2A */	fadds f3, f4, f3
/* 801FA688 001F75E8  EC 22 08 2A */	fadds f1, f2, f1
/* 801FA68C 001F75EC  EC 00 30 2A */	fadds f0, f0, f6
/* 801FA690 001F75F0  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 801FA694 001F75F4  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801FA698 001F75F8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801FA69C 001F75FC  48 11 A0 5D */	bl CanBeNormalized__9CVector3fCFv
/* 801FA6A0 001F7600  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FA6A4 001F7604  41 82 00 0C */	beq lbl_801FA6B0
/* 801FA6A8 001F7608  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801FA6AC 001F760C  48 11 A2 4D */	bl Normalize__9CVector3fFv
lbl_801FA6B0:
/* 801FA6B0 001F7610  C0 3E 08 58 */	lfs f1, 0x858(r30)
/* 801FA6B4 001F7614  C0 02 AF 64 */	lfs f0, lbl_805ACC84@sda21(r2)
/* 801FA6B8 001F7618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FA6BC 001F761C  40 80 00 0C */	bge lbl_801FA6C8
/* 801FA6C0 001F7620  C0 42 AF CC */	lfs f2, lbl_805ACCEC@sda21(r2)
/* 801FA6C4 001F7624  48 00 00 08 */	b lbl_801FA6CC
lbl_801FA6C8:
/* 801FA6C8 001F7628  C0 42 AF 78 */	lfs f2, lbl_805ACC98@sda21(r2)
lbl_801FA6CC:
/* 801FA6CC 001F762C  C0 3E 06 2C */	lfs f1, 0x62c(r30)
/* 801FA6D0 001F7630  7F C4 F3 78 */	mr r4, r30
/* 801FA6D4 001F7634  C0 02 AF B4 */	lfs f0, lbl_805ACCD4@sda21(r2)
/* 801FA6D8 001F7638  7F E5 FB 78 */	mr r5, r31
/* 801FA6DC 001F763C  EC 82 00 72 */	fmuls f4, f2, f1
/* 801FA6E0 001F7640  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 801FA6E4 001F7644  C0 61 00 B4 */	lfs f3, 0xb4(r1)
/* 801FA6E8 001F7648  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801FA6EC 001F764C  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 801FA6F0 001F7650  38 61 00 08 */	addi r3, r1, 8
/* 801FA6F4 001F7654  EC 9D 01 32 */	fmuls f4, f29, f4
/* 801FA6F8 001F7658  EC 9D 01 32 */	fmuls f4, f29, f4
/* 801FA6FC 001F765C  EC 24 00 72 */	fmuls f1, f4, f1
/* 801FA700 001F7660  EC 64 00 F2 */	fmuls f3, f4, f3
/* 801FA704 001F7664  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801FA708 001F7668  D0 3E 08 7C */	stfs f1, 0x87c(r30)
/* 801FA70C 001F766C  D0 7E 08 80 */	stfs f3, 0x880(r30)
/* 801FA710 001F7670  D0 5E 08 84 */	stfs f2, 0x884(r30)
/* 801FA714 001F7674  D0 1E 08 98 */	stfs f0, 0x898(r30)
/* 801FA718 001F7678  C0 3E 08 70 */	lfs f1, 0x870(r30)
/* 801FA71C 001F767C  C0 1E 08 7C */	lfs f0, 0x87c(r30)
/* 801FA720 001F7680  EC 01 00 2A */	fadds f0, f1, f0
/* 801FA724 001F7684  D0 1E 08 70 */	stfs f0, 0x870(r30)
/* 801FA728 001F7688  C0 3E 08 74 */	lfs f1, 0x874(r30)
/* 801FA72C 001F768C  C0 1E 08 80 */	lfs f0, 0x880(r30)
/* 801FA730 001F7690  EC 01 00 2A */	fadds f0, f1, f0
/* 801FA734 001F7694  D0 1E 08 74 */	stfs f0, 0x874(r30)
/* 801FA738 001F7698  C0 3E 08 78 */	lfs f1, 0x878(r30)
/* 801FA73C 001F769C  C0 1E 08 84 */	lfs f0, 0x884(r30)
/* 801FA740 001F76A0  EC 01 00 2A */	fadds f0, f1, f0
/* 801FA744 001F76A4  D0 1E 08 78 */	stfs f0, 0x878(r30)
/* 801FA748 001F76A8  C3 FE 00 60 */	lfs f31, 0x60(r30)
/* 801FA74C 001F76AC  C3 DE 00 50 */	lfs f30, 0x50(r30)
/* 801FA750 001F76B0  C3 BE 00 40 */	lfs f29, 0x40(r30)
/* 801FA754 001F76B4  48 00 21 41 */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801FA758 001F76B8  C0 41 00 08 */	lfs f2, 8(r1)
/* 801FA75C 001F76BC  38 61 00 20 */	addi r3, r1, 0x20
/* 801FA760 001F76C0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801FA764 001F76C4  38 81 00 14 */	addi r4, r1, 0x14
/* 801FA768 001F76C8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801FA76C 001F76CC  EC 42 E8 28 */	fsubs f2, f2, f29
/* 801FA770 001F76D0  EC 21 F0 28 */	fsubs f1, f1, f30
/* 801FA774 001F76D4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801FA778 001F76D8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801FA77C 001F76DC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801FA780 001F76E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801FA784 001F76E4  48 11 A0 CD */	bl AsNormalized__9CVector3fCFv
/* 801FA788 001F76E8  C0 C1 00 B0 */	lfs f6, 0xb0(r1)
/* 801FA78C 001F76EC  38 81 00 C8 */	addi r4, r1, 0xc8
/* 801FA790 001F76F0  C0 A1 00 B4 */	lfs f5, 0xb4(r1)
/* 801FA794 001F76F4  C0 81 00 B8 */	lfs f4, 0xb8(r1)
/* 801FA798 001F76F8  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 801FA79C 001F76FC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801FA7A0 001F7700  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801FA7A4 001F7704  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801FA7A8 001F7708  D0 C1 00 C8 */	stfs f6, 0xc8(r1)
/* 801FA7AC 001F770C  D0 A1 00 CC */	stfs f5, 0xcc(r1)
/* 801FA7B0 001F7710  D0 81 00 D0 */	stfs f4, 0xd0(r1)
/* 801FA7B4 001F7714  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 801FA7B8 001F7718  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 801FA7BC 001F771C  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 801FA7C0 001F7720  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 801FA7C4 001F7724  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801FA7C8 001F7728  38 63 00 04 */	addi r3, r3, 4
/* 801FA7CC 001F772C  4B F3 6F 4D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801FA7D0 001F7730  7F C3 F3 78 */	mr r3, r30
/* 801FA7D4 001F7734  7F E4 FB 78 */	mr r4, r31
/* 801FA7D8 001F7738  48 00 29 8D */	bl UpdateCantSeePlayer__13CFlyingPirateFR13CStateManager
lbl_801FA7DC:
/* 801FA7DC 001F773C  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 801FA7E0 001F7740  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 801FA7E4 001F7744  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 801FA7E8 001F7748  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 801FA7EC 001F774C  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, qr0
/* 801FA7F0 001F7750  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 801FA7F4 001F7754  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 801FA7F8 001F7758  80 01 01 24 */	lwz r0, 0x124(r1)
/* 801FA7FC 001F775C  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 801FA800 001F7760  7C 08 03 A6 */	mtlr r0
/* 801FA804 001F7764  38 21 01 20 */	addi r1, r1, 0x120
/* 801FA808 001F7768  4E 80 00 20 */	blr

.global PathFind__13CFlyingPirateFR13CStateManager9EStateMsgf
PathFind__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FA80C 001F776C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 801FA810 001F7770  7C 08 02 A6 */	mflr r0
/* 801FA814 001F7774  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 801FA818 001F7778  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 801FA81C 001F777C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 801FA820 001F7780  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 801FA824 001F7784  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 801FA828 001F7788  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 801FA82C 001F778C  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, qr0
/* 801FA830 001F7790  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 801FA834 001F7794  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 801FA838 001F7798  FF E0 08 90 */	fmr f31, f1
/* 801FA83C 001F779C  2C 05 00 01 */	cmpwi r5, 1
/* 801FA840 001F77A0  7C 7E 1B 78 */	mr r30, r3
/* 801FA844 001F77A4  7C 9F 23 78 */	mr r31, r4
/* 801FA848 001F77A8  41 82 01 C8 */	beq lbl_801FAA10
/* 801FA84C 001F77AC  40 80 00 10 */	bge lbl_801FA85C
/* 801FA850 001F77B0  2C 05 00 00 */	cmpwi r5, 0
/* 801FA854 001F77B4  40 80 00 14 */	bge lbl_801FA868
/* 801FA858 001F77B8  48 00 04 AC */	b lbl_801FAD04
lbl_801FA85C:
/* 801FA85C 001F77BC  2C 05 00 03 */	cmpwi r5, 3
/* 801FA860 001F77C0  40 80 04 A4 */	bge lbl_801FAD04
/* 801FA864 001F77C4  48 00 04 90 */	b lbl_801FACF4
lbl_801FA868:
/* 801FA868 001F77C8  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801FA86C 001F77CC  7F E5 FB 78 */	mr r5, r31
/* 801FA870 001F77D0  38 61 00 6C */	addi r3, r1, 0x6c
/* 801FA874 001F77D4  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FA878 001F77D8  81 84 00 00 */	lwz r12, 0(r4)
/* 801FA87C 001F77DC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801FA880 001F77E0  7D 89 03 A6 */	mtctr r12
/* 801FA884 001F77E4  4E 80 04 21 */	bctrl
/* 801FA888 001F77E8  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 801FA88C 001F77EC  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 801FA890 001F77F0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 801FA894 001F77F4  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 801FA898 001F77F8  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 801FA89C 001F77FC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 801FA8A0 001F7800  88 1E 06 A1 */	lbz r0, 0x6a1(r30)
/* 801FA8A4 001F7804  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801FA8A8 001F7808  41 82 00 20 */	beq lbl_801FA8C8
/* 801FA8AC 001F780C  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 801FA8B0 001F7810  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 801FA8B4 001F7814  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 801FA8B8 001F7818  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 801FA8BC 001F781C  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 801FA8C0 001F7820  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 801FA8C4 001F7824  48 00 00 3C */	b lbl_801FA900
lbl_801FA8C8:
/* 801FA8C8 001F7828  A0 1E 06 A4 */	lhz r0, 0x6a4(r30)
/* 801FA8CC 001F782C  7F C3 F3 78 */	mr r3, r30
/* 801FA8D0 001F7830  7F E4 FB 78 */	mr r4, r31
/* 801FA8D4 001F7834  38 A1 00 08 */	addi r5, r1, 8
/* 801FA8D8 001F7838  B0 01 00 08 */	sth r0, 8(r1)
/* 801FA8DC 001F783C  4B E8 1F D1 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 801FA8E0 001F7840  28 03 00 00 */	cmplwi r3, 0
/* 801FA8E4 001F7844  41 82 00 1C */	beq lbl_801FA900
/* 801FA8E8 001F7848  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801FA8EC 001F784C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801FA8F0 001F7850  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801FA8F4 001F7854  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 801FA8F8 001F7858  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 801FA8FC 001F785C  D0 41 00 98 */	stfs f2, 0x98(r1)
lbl_801FA900:
/* 801FA900 001F7860  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FA904 001F7864  7F C3 F3 78 */	mr r3, r30
/* 801FA908 001F7868  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FA90C 001F786C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FA910 001F7870  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801FA914 001F7874  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801FA918 001F7878  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 801FA91C 001F787C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA920 001F7880  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA924 001F7884  7D 89 03 A6 */	mtctr r12
/* 801FA928 001F7888  4E 80 04 21 */	bctrl
/* 801FA92C 001F788C  38 81 00 60 */	addi r4, r1, 0x60
/* 801FA930 001F7890  38 A1 00 90 */	addi r5, r1, 0x90
/* 801FA934 001F7894  4B FC D3 39 */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 801FA938 001F7898  2C 03 00 00 */	cmpwi r3, 0
/* 801FA93C 001F789C  41 82 00 BC */	beq lbl_801FA9F8
/* 801FA940 001F78A0  7F C3 F3 78 */	mr r3, r30
/* 801FA944 001F78A4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA948 001F78A8  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA94C 001F78AC  7D 89 03 A6 */	mtctr r12
/* 801FA950 001F78B0  4E 80 04 21 */	bctrl
/* 801FA954 001F78B4  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801FA958 001F78B8  2C 00 00 03 */	cmpwi r0, 3
/* 801FA95C 001F78BC  41 82 00 24 */	beq lbl_801FA980
/* 801FA960 001F78C0  7F C3 F3 78 */	mr r3, r30
/* 801FA964 001F78C4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA968 001F78C8  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA96C 001F78CC  7D 89 03 A6 */	mtctr r12
/* 801FA970 001F78D0  4E 80 04 21 */	bctrl
/* 801FA974 001F78D4  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801FA978 001F78D8  2C 00 00 04 */	cmpwi r0, 4
/* 801FA97C 001F78DC  40 82 00 7C */	bne lbl_801FA9F8
lbl_801FA980:
/* 801FA980 001F78E0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FA984 001F78E4  7F C3 F3 78 */	mr r3, r30
/* 801FA988 001F78E8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FA98C 001F78EC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FA990 001F78F0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801FA994 001F78F4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 801FA998 001F78F8  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801FA99C 001F78FC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA9A0 001F7900  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA9A4 001F7904  7D 89 03 A6 */	mtctr r12
/* 801FA9A8 001F7908  4E 80 04 21 */	bctrl
/* 801FA9AC 001F790C  38 81 00 54 */	addi r4, r1, 0x54
/* 801FA9B0 001F7910  38 A1 00 90 */	addi r5, r1, 0x90
/* 801FA9B4 001F7914  4B FC C7 49 */	bl FindClosestReachablePoint__15CPathFindSearchCFRC9CVector3fR9CVector3f
/* 801FA9B8 001F7918  2C 03 00 00 */	cmpwi r3, 0
/* 801FA9BC 001F791C  40 82 00 3C */	bne lbl_801FA9F8
/* 801FA9C0 001F7920  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FA9C4 001F7924  7F C3 F3 78 */	mr r3, r30
/* 801FA9C8 001F7928  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FA9CC 001F792C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FA9D0 001F7930  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801FA9D4 001F7934  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801FA9D8 001F7938  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801FA9DC 001F793C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FA9E0 001F7940  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FA9E4 001F7944  7D 89 03 A6 */	mtctr r12
/* 801FA9E8 001F7948  4E 80 04 21 */	bctrl
/* 801FA9EC 001F794C  38 81 00 48 */	addi r4, r1, 0x48
/* 801FA9F0 001F7950  38 A1 00 90 */	addi r5, r1, 0x90
/* 801FA9F4 001F7954  4B FC D2 79 */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
lbl_801FA9F8:
/* 801FA9F8 001F7958  C0 22 AF 74 */	lfs f1, lbl_805ACC94@sda21(r2)
/* 801FA9FC 001F795C  7F C3 F3 78 */	mr r3, r30
/* 801FAA00 001F7960  7F E4 FB 78 */	mr r4, r31
/* 801FAA04 001F7964  38 A0 00 01 */	li r5, 1
/* 801FAA08 001F7968  48 00 31 E1 */	bl sub_801fdbe8
/* 801FAA0C 001F796C  48 00 02 F8 */	b lbl_801FAD04
lbl_801FAA10:
/* 801FAA10 001F7970  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801FAA14 001F7974  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 801FAA18 001F7978  C0 24 00 04 */	lfs f1, 4(r4)
/* 801FAA1C 001F797C  C0 04 00 08 */	lfs f0, 8(r4)
/* 801FAA20 001F7980  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 801FAA24 001F7984  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 801FAA28 001F7988  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801FAA2C 001F798C  81 83 00 00 */	lwz r12, 0(r3)
/* 801FAA30 001F7990  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FAA34 001F7994  7D 89 03 A6 */	mtctr r12
/* 801FAA38 001F7998  4E 80 04 21 */	bctrl
/* 801FAA3C 001F799C  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801FAA40 001F79A0  2C 00 00 00 */	cmpwi r0, 0
/* 801FAA44 001F79A4  40 82 01 18 */	bne lbl_801FAB5C
/* 801FAA48 001F79A8  7F C3 F3 78 */	mr r3, r30
/* 801FAA4C 001F79AC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FAA50 001F79B0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FAA54 001F79B4  7D 89 03 A6 */	mtctr r12
/* 801FAA58 001F79B8  4E 80 04 21 */	bctrl
/* 801FAA5C 001F79BC  80 83 00 04 */	lwz r4, 4(r3)
/* 801FAA60 001F79C0  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 801FAA64 001F79C4  38 04 FF FF */	addi r0, r4, -1
/* 801FAA68 001F79C8  7C 03 00 00 */	cmpw r3, r0
/* 801FAA6C 001F79CC  40 80 00 F0 */	bge lbl_801FAB5C
/* 801FAA70 001F79D0  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801FAA74 001F79D4  7F C3 F3 78 */	mr r3, r30
/* 801FAA78 001F79D8  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 801FAA7C 001F79DC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801FAA80 001F79E0  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 801FAA84 001F79E4  EC A4 00 2A */	fadds f5, f4, f0
/* 801FAA88 001F79E8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801FAA8C 001F79EC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 801FAA90 001F79F0  EC 43 10 2A */	fadds f2, f3, f2
/* 801FAA94 001F79F4  EC 01 00 2A */	fadds f0, f1, f0
/* 801FAA98 001F79F8  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 801FAA9C 001F79FC  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 801FAAA0 001F7A00  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801FAAA4 001F7A04  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801FAAA8 001F7A08  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 801FAAAC 001F7A0C  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 801FAAB0 001F7A10  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FAAB4 001F7A14  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FAAB8 001F7A18  7D 89 03 A6 */	mtctr r12
/* 801FAABC 001F7A1C  4E 80 04 21 */	bctrl
/* 801FAAC0 001F7A20  C0 22 AF 7C */	lfs f1, lbl_805ACC9C@sda21(r2)
/* 801FAAC4 001F7A24  38 81 00 78 */	addi r4, r1, 0x78
/* 801FAAC8 001F7A28  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801FAACC 001F7A2C  4B FD 10 CD */	bl GetSplinePointWithLookahead__15CPathFindSearchCFR9CVector3fRC9CVector3ff
/* 801FAAD0 001F7A30  7F C3 F3 78 */	mr r3, r30
/* 801FAAD4 001F7A34  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FAAD8 001F7A38  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FAADC 001F7A3C  7D 89 03 A6 */	mtctr r12
/* 801FAAE0 001F7A40  4E 80 04 21 */	bctrl
/* 801FAAE4 001F7A44  38 81 00 78 */	addi r4, r1, 0x78
/* 801FAAE8 001F7A48  4B FD 15 5D */	bl SegmentOver__15CPathFindSearchCFRC9CVector3f
/* 801FAAEC 001F7A4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FAAF0 001F7A50  41 82 00 24 */	beq lbl_801FAB14
/* 801FAAF4 001F7A54  7F C3 F3 78 */	mr r3, r30
/* 801FAAF8 001F7A58  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FAAFC 001F7A5C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801FAB00 001F7A60  7D 89 03 A6 */	mtctr r12
/* 801FAB04 001F7A64  4E 80 04 21 */	bctrl
/* 801FAB08 001F7A68  80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 801FAB0C 001F7A6C  38 04 00 01 */	addi r0, r4, 1
/* 801FAB10 001F7A70  90 03 00 C8 */	stw r0, 0xc8(r3)
lbl_801FAB14:
/* 801FAB14 001F7A74  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 801FAB18 001F7A78  38 61 00 84 */	addi r3, r1, 0x84
/* 801FAB1C 001F7A7C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801FAB20 001F7A80  C0 61 00 80 */	lfs f3, 0x80(r1)
/* 801FAB24 001F7A84  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FAB28 001F7A88  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FAB2C 001F7A8C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FAB30 001F7A90  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 801FAB34 001F7A94  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FAB38 001F7A98  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 801FAB3C 001F7A9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FAB40 001F7AA0  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 801FAB44 001F7AA4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801FAB48 001F7AA8  48 11 9B B1 */	bl CanBeNormalized__9CVector3fCFv
/* 801FAB4C 001F7AAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FAB50 001F7AB0  41 82 00 0C */	beq lbl_801FAB5C
/* 801FAB54 001F7AB4  38 61 00 84 */	addi r3, r1, 0x84
/* 801FAB58 001F7AB8  48 11 9D A1 */	bl Normalize__9CVector3fFv
lbl_801FAB5C:
/* 801FAB5C 001F7ABC  7F C4 F3 78 */	mr r4, r30
/* 801FAB60 001F7AC0  7F E5 FB 78 */	mr r5, r31
/* 801FAB64 001F7AC4  38 61 00 30 */	addi r3, r1, 0x30
/* 801FAB68 001F7AC8  48 00 23 91 */	bl AvoidActors__13CFlyingPirateFR13CStateManager
/* 801FAB6C 001F7ACC  C0 A2 AF 7C */	lfs f5, lbl_805ACC9C@sda21(r2)
/* 801FAB70 001F7AD0  38 61 00 84 */	addi r3, r1, 0x84
/* 801FAB74 001F7AD4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801FAB78 001F7AD8  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801FAB7C 001F7ADC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801FAB80 001F7AE0  EC C5 00 32 */	fmuls f6, f5, f0
/* 801FAB84 001F7AE4  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 801FAB88 001F7AE8  EC 65 00 B2 */	fmuls f3, f5, f2
/* 801FAB8C 001F7AEC  C0 81 00 84 */	lfs f4, 0x84(r1)
/* 801FAB90 001F7AF0  EC 25 00 72 */	fmuls f1, f5, f1
/* 801FAB94 001F7AF4  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 801FAB98 001F7AF8  EC 64 18 2A */	fadds f3, f4, f3
/* 801FAB9C 001F7AFC  EC 22 08 2A */	fadds f1, f2, f1
/* 801FABA0 001F7B00  EC 00 30 2A */	fadds f0, f0, f6
/* 801FABA4 001F7B04  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 801FABA8 001F7B08  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 801FABAC 001F7B0C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801FABB0 001F7B10  48 11 9B 49 */	bl CanBeNormalized__9CVector3fCFv
/* 801FABB4 001F7B14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FABB8 001F7B18  41 82 00 0C */	beq lbl_801FABC4
/* 801FABBC 001F7B1C  38 61 00 84 */	addi r3, r1, 0x84
/* 801FABC0 001F7B20  48 11 9D 39 */	bl Normalize__9CVector3fFv
lbl_801FABC4:
/* 801FABC4 001F7B24  C0 3E 08 58 */	lfs f1, 0x858(r30)
/* 801FABC8 001F7B28  C0 02 AF 64 */	lfs f0, lbl_805ACC84@sda21(r2)
/* 801FABCC 001F7B2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FABD0 001F7B30  40 80 00 0C */	bge lbl_801FABDC
/* 801FABD4 001F7B34  C0 42 AF CC */	lfs f2, lbl_805ACCEC@sda21(r2)
/* 801FABD8 001F7B38  48 00 00 08 */	b lbl_801FABE0
lbl_801FABDC:
/* 801FABDC 001F7B3C  C0 42 AF 78 */	lfs f2, lbl_805ACC98@sda21(r2)
lbl_801FABE0:
/* 801FABE0 001F7B40  C0 3E 06 2C */	lfs f1, 0x62c(r30)
/* 801FABE4 001F7B44  7F C4 F3 78 */	mr r4, r30
/* 801FABE8 001F7B48  C0 02 AF B4 */	lfs f0, lbl_805ACCD4@sda21(r2)
/* 801FABEC 001F7B4C  7F E5 FB 78 */	mr r5, r31
/* 801FABF0 001F7B50  EC 82 00 72 */	fmuls f4, f2, f1
/* 801FABF4 001F7B54  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 801FABF8 001F7B58  C0 61 00 88 */	lfs f3, 0x88(r1)
/* 801FABFC 001F7B5C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801FAC00 001F7B60  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 801FAC04 001F7B64  38 61 00 0C */	addi r3, r1, 0xc
/* 801FAC08 001F7B68  EC 9F 01 32 */	fmuls f4, f31, f4
/* 801FAC0C 001F7B6C  EC 9F 01 32 */	fmuls f4, f31, f4
/* 801FAC10 001F7B70  EC 24 00 72 */	fmuls f1, f4, f1
/* 801FAC14 001F7B74  EC 64 00 F2 */	fmuls f3, f4, f3
/* 801FAC18 001F7B78  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801FAC1C 001F7B7C  D0 3E 08 7C */	stfs f1, 0x87c(r30)
/* 801FAC20 001F7B80  D0 7E 08 80 */	stfs f3, 0x880(r30)
/* 801FAC24 001F7B84  D0 5E 08 84 */	stfs f2, 0x884(r30)
/* 801FAC28 001F7B88  D0 1E 08 98 */	stfs f0, 0x898(r30)
/* 801FAC2C 001F7B8C  C0 3E 08 70 */	lfs f1, 0x870(r30)
/* 801FAC30 001F7B90  C0 1E 08 7C */	lfs f0, 0x87c(r30)
/* 801FAC34 001F7B94  EC 01 00 2A */	fadds f0, f1, f0
/* 801FAC38 001F7B98  D0 1E 08 70 */	stfs f0, 0x870(r30)
/* 801FAC3C 001F7B9C  C0 3E 08 74 */	lfs f1, 0x874(r30)
/* 801FAC40 001F7BA0  C0 1E 08 80 */	lfs f0, 0x880(r30)
/* 801FAC44 001F7BA4  EC 01 00 2A */	fadds f0, f1, f0
/* 801FAC48 001F7BA8  D0 1E 08 74 */	stfs f0, 0x874(r30)
/* 801FAC4C 001F7BAC  C0 3E 08 78 */	lfs f1, 0x878(r30)
/* 801FAC50 001F7BB0  C0 1E 08 84 */	lfs f0, 0x884(r30)
/* 801FAC54 001F7BB4  EC 01 00 2A */	fadds f0, f1, f0
/* 801FAC58 001F7BB8  D0 1E 08 78 */	stfs f0, 0x878(r30)
/* 801FAC5C 001F7BBC  C3 BE 00 60 */	lfs f29, 0x60(r30)
/* 801FAC60 001F7BC0  C3 DE 00 50 */	lfs f30, 0x50(r30)
/* 801FAC64 001F7BC4  C3 FE 00 40 */	lfs f31, 0x40(r30)
/* 801FAC68 001F7BC8  48 00 1C 2D */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801FAC6C 001F7BCC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801FAC70 001F7BD0  38 61 00 24 */	addi r3, r1, 0x24
/* 801FAC74 001F7BD4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801FAC78 001F7BD8  38 81 00 18 */	addi r4, r1, 0x18
/* 801FAC7C 001F7BDC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801FAC80 001F7BE0  EC 42 F8 28 */	fsubs f2, f2, f31
/* 801FAC84 001F7BE4  EC 21 F0 28 */	fsubs f1, f1, f30
/* 801FAC88 001F7BE8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 801FAC8C 001F7BEC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801FAC90 001F7BF0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801FAC94 001F7BF4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801FAC98 001F7BF8  48 11 9B B9 */	bl AsNormalized__9CVector3fCFv
/* 801FAC9C 001F7BFC  C0 C1 00 84 */	lfs f6, 0x84(r1)
/* 801FACA0 001F7C00  38 81 00 9C */	addi r4, r1, 0x9c
/* 801FACA4 001F7C04  C0 A1 00 88 */	lfs f5, 0x88(r1)
/* 801FACA8 001F7C08  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 801FACAC 001F7C0C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 801FACB0 001F7C10  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801FACB4 001F7C14  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801FACB8 001F7C18  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801FACBC 001F7C1C  D0 C1 00 9C */	stfs f6, 0x9c(r1)
/* 801FACC0 001F7C20  D0 A1 00 A0 */	stfs f5, 0xa0(r1)
/* 801FACC4 001F7C24  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 801FACC8 001F7C28  D0 61 00 A8 */	stfs f3, 0xa8(r1)
/* 801FACCC 001F7C2C  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 801FACD0 001F7C30  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 801FACD4 001F7C34  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801FACD8 001F7C38  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801FACDC 001F7C3C  38 63 00 04 */	addi r3, r3, 4
/* 801FACE0 001F7C40  4B F3 6A 39 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801FACE4 001F7C44  7F C3 F3 78 */	mr r3, r30
/* 801FACE8 001F7C48  7F E4 FB 78 */	mr r4, r31
/* 801FACEC 001F7C4C  48 00 24 79 */	bl UpdateCantSeePlayer__13CFlyingPirateFR13CStateManager
/* 801FACF0 001F7C50  48 00 00 14 */	b lbl_801FAD04
lbl_801FACF4:
/* 801FACF4 001F7C54  88 1E 06 A1 */	lbz r0, 0x6a1(r30)
/* 801FACF8 001F7C58  38 60 00 00 */	li r3, 0
/* 801FACFC 001F7C5C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801FAD00 001F7C60  98 1E 06 A1 */	stb r0, 0x6a1(r30)
lbl_801FAD04:
/* 801FAD04 001F7C64  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 801FAD08 001F7C68  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 801FAD0C 001F7C6C  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 801FAD10 001F7C70  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 801FAD14 001F7C74  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, qr0
/* 801FAD18 001F7C78  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 801FAD1C 001F7C7C  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 801FAD20 001F7C80  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 801FAD24 001F7C84  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 801FAD28 001F7C88  7C 08 03 A6 */	mtlr r0
/* 801FAD2C 001F7C8C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 801FAD30 001F7C90  4E 80 00 20 */	blr

.global InRange__13CFlyingPirateFR13CStateManagerf
InRange__13CFlyingPirateFR13CStateManagerf:
/* 801FAD34 001F7C94  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801FAD38 001F7C98  38 00 00 00 */	li r0, 0
/* 801FAD3C 001F7C9C  C0 03 02 FC */	lfs f0, 0x2fc(r3)
/* 801FAD40 001F7CA0  C0 84 00 60 */	lfs f4, 0x60(r4)
/* 801FAD44 001F7CA4  C0 64 00 50 */	lfs f3, 0x50(r4)
/* 801FAD48 001F7CA8  FC 20 22 10 */	fabs f1, f4
/* 801FAD4C 001F7CAC  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 801FAD50 001F7CB0  FC 20 08 18 */	frsp f1, f1
/* 801FAD54 001F7CB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FAD58 001F7CB8  40 80 00 24 */	bge lbl_801FAD7C
/* 801FAD5C 001F7CBC  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801FAD60 001F7CC0  C0 03 03 00 */	lfs f0, 0x300(r3)
/* 801FAD64 001F7CC4  EC 00 00 32 */	fmuls f0, f0, f0
/* 801FAD68 001F7CC8  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801FAD6C 001F7CCC  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 801FAD70 001F7CD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FAD74 001F7CD4  40 80 00 08 */	bge lbl_801FAD7C
/* 801FAD78 001F7CD8  38 00 00 01 */	li r0, 1
lbl_801FAD7C:
/* 801FAD7C 001F7CDC  7C 03 03 78 */	mr r3, r0
/* 801FAD80 001F7CE0  4E 80 00 20 */	blr

.global LineOfSight__13CFlyingPirateFR13CStateManagerf
LineOfSight__13CFlyingPirateFR13CStateManagerf:
/* 801FAD84 001F7CE4  88 03 06 A0 */	lbz r0, 0x6a0(r3)
/* 801FAD88 001F7CE8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 801FAD8C 001F7CEC  7C 00 00 34 */	cntlzw r0, r0
/* 801FAD90 001F7CF0  54 03 D9 7E */	srwi r3, r0, 5
/* 801FAD94 001F7CF4  4E 80 00 20 */	blr

.global SpotPlayer__13CFlyingPirateFR13CStateManagerf
SpotPlayer__13CFlyingPirateFR13CStateManagerf:
/* 801FAD98 001F7CF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801FAD9C 001F7CFC  7C 08 02 A6 */	mflr r0
/* 801FADA0 001F7D00  90 01 00 44 */	stw r0, 0x44(r1)
/* 801FADA4 001F7D04  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801FADA8 001F7D08  7C 9F 23 78 */	mr r31, r4
/* 801FADAC 001F7D0C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801FADB0 001F7D10  7C 7E 1B 78 */	mr r30, r3
/* 801FADB4 001F7D14  7F C4 F3 78 */	mr r4, r30
/* 801FADB8 001F7D18  38 61 00 14 */	addi r3, r1, 0x14
/* 801FADBC 001F7D1C  4B E8 1D 15 */	bl GetGunEyePos__10CPatternedCFv
/* 801FADC0 001F7D20  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801FADC4 001F7D24  7F E5 FB 78 */	mr r5, r31
/* 801FADC8 001F7D28  38 61 00 20 */	addi r3, r1, 0x20
/* 801FADCC 001F7D2C  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FADD0 001F7D30  81 84 00 00 */	lwz r12, 0(r4)
/* 801FADD4 001F7D34  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801FADD8 001F7D38  7D 89 03 A6 */	mtctr r12
/* 801FADDC 001F7D3C  4E 80 04 21 */	bctrl
/* 801FADE0 001F7D40  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801FADE4 001F7D44  38 61 00 2C */	addi r3, r1, 0x2c
/* 801FADE8 001F7D48  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801FADEC 001F7D4C  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 801FADF0 001F7D50  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801FADF4 001F7D54  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FADF8 001F7D58  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801FADFC 001F7D5C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801FAE00 001F7D60  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FAE04 001F7D64  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 801FAE08 001F7D68  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FAE0C 001F7D6C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801FAE10 001F7D70  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801FAE14 001F7D74  48 11 9A A5 */	bl Magnitude__9CVector3fCFv
/* 801FAE18 001F7D78  C0 BE 00 48 */	lfs f5, 0x48(r30)
/* 801FAE1C 001F7D7C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801FAE20 001F7D80  C0 9E 00 38 */	lfs f4, 0x38(r30)
/* 801FAE24 001F7D84  EC 00 01 72 */	fmuls f0, f0, f5
/* 801FAE28 001F7D88  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 801FAE2C 001F7D8C  C0 FE 03 C4 */	lfs f7, 0x3c4(r30)
/* 801FAE30 001F7D90  C0 DE 00 58 */	lfs f6, 0x58(r30)
/* 801FAE34 001F7D94  EC 42 01 3A */	fmadds f2, f2, f4, f0
/* 801FAE38 001F7D98  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 801FAE3C 001F7D9C  EC 01 01 F2 */	fmuls f0, f1, f7
/* 801FAE40 001F7DA0  D0 81 00 08 */	stfs f4, 8(r1)
/* 801FAE44 001F7DA4  EC 23 11 BA */	fmadds f1, f3, f6, f2
/* 801FAE48 001F7DA8  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 801FAE4C 001F7DAC  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 801FAE50 001F7DB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FAE54 001F7DB4  7C 00 00 26 */	mfcr r0
/* 801FAE58 001F7DB8  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801FAE5C 001F7DBC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801FAE60 001F7DC0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801FAE64 001F7DC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801FAE68 001F7DC8  7C 08 03 A6 */	mtlr r0
/* 801FAE6C 001F7DCC  38 21 00 40 */	addi r1, r1, 0x40
/* 801FAE70 001F7DD0  4E 80 00 20 */	blr

.global Attack__13CFlyingPirateFR13CStateManager9EStateMsgf
Attack__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FAE74 001F7DD4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801FAE78 001F7DD8  7C 08 02 A6 */	mflr r0
/* 801FAE7C 001F7DDC  90 01 00 64 */	stw r0, 0x64(r1)
/* 801FAE80 001F7DE0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801FAE84 001F7DE4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801FAE88 001F7DE8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801FAE8C 001F7DEC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801FAE90 001F7DF0  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801FAE94 001F7DF4  FF E0 08 90 */	fmr f31, f1
/* 801FAE98 001F7DF8  2C 05 00 01 */	cmpwi r5, 1
/* 801FAE9C 001F7DFC  7C 7F 1B 78 */	mr r31, r3
/* 801FAEA0 001F7E00  7C 9D 23 78 */	mr r29, r4
/* 801FAEA4 001F7E04  41 82 00 94 */	beq lbl_801FAF38
/* 801FAEA8 001F7E08  40 80 00 10 */	bge lbl_801FAEB8
/* 801FAEAC 001F7E0C  2C 05 00 00 */	cmpwi r5, 0
/* 801FAEB0 001F7E10  40 80 00 14 */	bge lbl_801FAEC4
/* 801FAEB4 001F7E14  48 00 01 40 */	b lbl_801FAFF4
lbl_801FAEB8:
/* 801FAEB8 001F7E18  2C 05 00 03 */	cmpwi r5, 3
/* 801FAEBC 001F7E1C  40 80 01 38 */	bge lbl_801FAFF4
/* 801FAEC0 001F7E20  48 00 01 20 */	b lbl_801FAFE0
lbl_801FAEC4:
/* 801FAEC4 001F7E24  38 00 00 01 */	li r0, 1
/* 801FAEC8 001F7E28  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 801FAECC 001F7E2C  88 1F 06 A2 */	lbz r0, 0x6a2(r31)
/* 801FAED0 001F7E30  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FAED4 001F7E34  40 82 01 20 */	bne lbl_801FAFF4
/* 801FAED8 001F7E38  C0 3F 08 58 */	lfs f1, 0x858(r31)
/* 801FAEDC 001F7E3C  C0 02 AF 7C */	lfs f0, lbl_805ACC9C@sda21(r2)
/* 801FAEE0 001F7E40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FAEE4 001F7E44  40 80 00 14 */	bge lbl_801FAEF8
/* 801FAEE8 001F7E48  C0 22 AF 64 */	lfs f1, lbl_805ACC84@sda21(r2)
/* 801FAEEC 001F7E4C  C0 1F 06 50 */	lfs f0, 0x650(r31)
/* 801FAEF0 001F7E50  EF E1 00 32 */	fmuls f31, f1, f0
/* 801FAEF4 001F7E54  48 00 00 08 */	b lbl_801FAEFC
lbl_801FAEF8:
/* 801FAEF8 001F7E58  C3 FF 06 50 */	lfs f31, 0x650(r31)
lbl_801FAEFC:
/* 801FAEFC 001F7E5C  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 801FAF00 001F7E60  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FAF04 001F7E64  C0 42 AF D4 */	lfs f2, lbl_805ACCF4@sda21(r2)
/* 801FAF08 001F7E68  48 11 76 3D */	bl Range__9CRandom16Fff
/* 801FAF0C 001F7E6C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 801FAF10 001F7E70  7C 60 00 26 */	mfcr r3
/* 801FAF14 001F7E74  88 1F 06 A2 */	lbz r0, 0x6a2(r31)
/* 801FAF18 001F7E78  54 64 0F FE */	srwi r4, r3, 0x1f
/* 801FAF1C 001F7E7C  38 60 00 01 */	li r3, 1
/* 801FAF20 001F7E80  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801FAF24 001F7E84  98 1F 06 A2 */	stb r0, 0x6a2(r31)
/* 801FAF28 001F7E88  88 1F 06 A2 */	lbz r0, 0x6a2(r31)
/* 801FAF2C 001F7E8C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801FAF30 001F7E90  98 1F 06 A2 */	stb r0, 0x6a2(r31)
/* 801FAF34 001F7E94  48 00 00 C0 */	b lbl_801FAFF4
lbl_801FAF38:
/* 801FAF38 001F7E98  3C A0 80 3E */	lis r5, lbl_803E6814@ha
/* 801FAF3C 001F7E9C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 801FAF40 001F7EA0  39 45 68 14 */	addi r10, r5, lbl_803E6814@l
/* 801FAF44 001F7EA4  38 A0 00 12 */	li r5, 0x12
/* 801FAF48 001F7EA8  81 2A 00 00 */	lwz r9, 0(r10)
/* 801FAF4C 001F7EAC  38 E0 00 01 */	li r7, 1
/* 801FAF50 001F7EB0  81 0A 00 04 */	lwz r8, 4(r10)
/* 801FAF54 001F7EB4  80 0A 00 08 */	lwz r0, 8(r10)
/* 801FAF58 001F7EB8  91 21 00 2C */	stw r9, 0x2c(r1)
/* 801FAF5C 001F7EBC  91 01 00 30 */	stw r8, 0x30(r1)
/* 801FAF60 001F7EC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FAF64 001F7EC4  4B E8 18 51 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801FAF68 001F7EC8  80 BD 08 4C */	lwz r5, 0x84c(r29)
/* 801FAF6C 001F7ECC  38 61 00 20 */	addi r3, r1, 0x20
/* 801FAF70 001F7ED0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801FAF74 001F7ED4  38 81 00 14 */	addi r4, r1, 0x14
/* 801FAF78 001F7ED8  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 801FAF7C 001F7EDC  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 801FAF80 001F7EE0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 801FAF84 001F7EE4  EC 25 00 28 */	fsubs f1, f5, f0
/* 801FAF88 001F7EE8  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801FAF8C 001F7EEC  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 801FAF90 001F7EF0  EC 44 10 28 */	fsubs f2, f4, f2
/* 801FAF94 001F7EF4  D0 01 00 08 */	stfs f0, 8(r1)
/* 801FAF98 001F7EF8  EC 00 18 28 */	fsubs f0, f0, f3
/* 801FAF9C 001F7EFC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801FAFA0 001F7F00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801FAFA4 001F7F04  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801FAFA8 001F7F08  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801FAFAC 001F7F0C  83 DF 04 50 */	lwz r30, 0x450(r31)
/* 801FAFB0 001F7F10  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801FAFB4 001F7F14  48 11 98 9D */	bl AsNormalized__9CVector3fCFv
/* 801FAFB8 001F7F18  FC 20 F8 90 */	fmr f1, f31
/* 801FAFBC 001F7F1C  7F C3 F3 78 */	mr r3, r30
/* 801FAFC0 001F7F20  38 81 00 20 */	addi r4, r1, 0x20
/* 801FAFC4 001F7F24  4B F3 F6 E1 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 801FAFC8 001F7F28  7F E3 FB 78 */	mr r3, r31
/* 801FAFCC 001F7F2C  48 00 2D 79 */	bl sub_801fdd44
/* 801FAFD0 001F7F30  7F E3 FB 78 */	mr r3, r31
/* 801FAFD4 001F7F34  7F A4 EB 78 */	mr r4, r29
/* 801FAFD8 001F7F38  48 00 21 8D */	bl UpdateCantSeePlayer__13CFlyingPirateFR13CStateManager
/* 801FAFDC 001F7F3C  48 00 00 18 */	b lbl_801FAFF4
lbl_801FAFE0:
/* 801FAFE0 001F7F40  38 60 00 00 */	li r3, 0
/* 801FAFE4 001F7F44  90 7F 03 2C */	stw r3, 0x32c(r31)
/* 801FAFE8 001F7F48  88 1F 06 A2 */	lbz r0, 0x6a2(r31)
/* 801FAFEC 001F7F4C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801FAFF0 001F7F50  98 1F 06 A2 */	stb r0, 0x6a2(r31)
lbl_801FAFF4:
/* 801FAFF4 001F7F54  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801FAFF8 001F7F58  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801FAFFC 001F7F5C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801FB000 001F7F60  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801FB004 001F7F64  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801FB008 001F7F68  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801FB00C 001F7F6C  7C 08 03 A6 */	mtlr r0
/* 801FB010 001F7F70  38 21 00 60 */	addi r1, r1, 0x60
/* 801FB014 001F7F74  4E 80 00 20 */	blr

.global ShouldAttack__13CFlyingPirateFR13CStateManagerf
ShouldAttack__13CFlyingPirateFR13CStateManagerf:
/* 801FB018 001F7F78  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801FB01C 001F7F7C  7C 08 02 A6 */	mflr r0
/* 801FB020 001F7F80  90 01 00 54 */	stw r0, 0x54(r1)
/* 801FB024 001F7F84  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801FB028 001F7F88  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801FB02C 001F7F8C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801FB030 001F7F90  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801FB034 001F7F94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801FB038 001F7F98  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801FB03C 001F7F9C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801FB040 001F7FA0  7C 7D 1B 78 */	mr r29, r3
/* 801FB044 001F7FA4  7C 9E 23 78 */	mr r30, r4
/* 801FB048 001F7FA8  A0 C3 00 08 */	lhz r6, 8(r3)
/* 801FB04C 001F7FAC  7F C3 F3 78 */	mr r3, r30
/* 801FB050 001F7FB0  38 81 00 1C */	addi r4, r1, 0x1c
/* 801FB054 001F7FB4  38 A1 00 18 */	addi r5, r1, 0x18
/* 801FB058 001F7FB8  B0 C1 00 18 */	sth r6, 0x18(r1)
/* 801FB05C 001F7FBC  3B E0 00 00 */	li r31, 0
/* 801FB060 001F7FC0  A0 1D 08 90 */	lhz r0, 0x890(r29)
/* 801FB064 001F7FC4  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 801FB068 001F7FC8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801FB06C 001F7FCC  48 03 F1 15 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 801FB070 001F7FD0  28 03 00 00 */	cmplwi r3, 0
/* 801FB074 001F7FD4  41 82 00 10 */	beq lbl_801FB084
/* 801FB078 001F7FD8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801FB07C 001F7FDC  2C 00 00 02 */	cmpwi r0, 2
/* 801FB080 001F7FE0  40 82 00 E8 */	bne lbl_801FB168
lbl_801FB084:
/* 801FB084 001F7FE4  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801FB088 001F7FE8  A0 9D 07 E8 */	lhz r4, 0x7e8(r29)
/* 801FB08C 001F7FEC  A0 03 00 08 */	lhz r0, 8(r3)
/* 801FB090 001F7FF0  7C 04 00 40 */	cmplw r4, r0
/* 801FB094 001F7FF4  40 82 00 D4 */	bne lbl_801FB168
/* 801FB098 001F7FF8  C0 3D 08 6C */	lfs f1, 0x86c(r29)
/* 801FB09C 001F7FFC  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FB0A0 001F8000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FB0A4 001F8004  4C 40 13 82 */	cror 2, 0, 2
/* 801FB0A8 001F8008  41 82 00 14 */	beq lbl_801FB0BC
/* 801FB0AC 001F800C  C0 3D 08 54 */	lfs f1, 0x854(r29)
/* 801FB0B0 001F8010  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801FB0B4 001F8014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FB0B8 001F8018  40 80 00 B0 */	bge lbl_801FB168
lbl_801FB0BC:
/* 801FB0BC 001F801C  7F A3 EB 78 */	mr r3, r29
/* 801FB0C0 001F8020  7F C4 F3 78 */	mr r4, r30
/* 801FB0C4 001F8024  48 00 15 E1 */	bl CanFireMissiles__13CFlyingPirateFR13CStateManager
/* 801FB0C8 001F8028  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB0CC 001F802C  41 82 00 9C */	beq lbl_801FB168
/* 801FB0D0 001F8030  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801FB0D4 001F8034  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 801FB0D8 001F8038  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801FB0DC 001F803C  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 801FB0E0 001F8040  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FB0E4 001F8044  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801FB0E8 001F8048  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801FB0EC 001F804C  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 801FB0F0 001F8050  EC 63 00 28 */	fsubs f3, f3, f0
/* 801FB0F4 001F8054  EC 04 01 32 */	fmuls f0, f4, f4
/* 801FB0F8 001F8058  EC 22 08 28 */	fsubs f1, f2, f1
/* 801FB0FC 001F805C  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 801FB100 001F8060  EC 21 00 72 */	fmuls f1, f1, f1
/* 801FB104 001F8064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FB108 001F8068  40 80 00 60 */	bge lbl_801FB168
/* 801FB10C 001F806C  A0 7D 08 90 */	lhz r3, 0x890(r29)
/* 801FB110 001F8070  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FB114 001F8074  7C 03 00 40 */	cmplw r3, r0
/* 801FB118 001F8078  41 82 00 34 */	beq lbl_801FB14C
/* 801FB11C 001F807C  A0 FD 00 08 */	lhz r7, 8(r29)
/* 801FB120 001F8080  7F C4 F3 78 */	mr r4, r30
/* 801FB124 001F8084  38 A1 00 10 */	addi r5, r1, 0x10
/* 801FB128 001F8088  38 C1 00 0C */	addi r6, r1, 0xc
/* 801FB12C 001F808C  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 801FB130 001F8090  38 60 00 01 */	li r3, 1
/* 801FB134 001F8094  A0 1D 08 90 */	lhz r0, 0x890(r29)
/* 801FB138 001F8098  B0 E1 00 08 */	sth r7, 8(r1)
/* 801FB13C 001F809C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801FB140 001F80A0  48 03 EE B1 */	bl AddAttacker__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueId
/* 801FB144 001F80A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB148 001F80A8  41 82 00 20 */	beq lbl_801FB168
lbl_801FB14C:
/* 801FB14C 001F80AC  C3 FD 06 28 */	lfs f31, 0x628(r29)
/* 801FB150 001F80B0  3B E0 00 01 */	li r31, 1
/* 801FB154 001F80B4  C3 DD 06 24 */	lfs f30, 0x624(r29)
/* 801FB158 001F80B8  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801FB15C 001F80BC  48 11 73 81 */	bl Float__9CRandom16Fv
/* 801FB160 001F80C0  EC 1F F0 7A */	fmadds f0, f31, f1, f30
/* 801FB164 001F80C4  D0 1D 08 6C */	stfs f0, 0x86c(r29)
lbl_801FB168:
/* 801FB168 001F80C8  7F E3 FB 78 */	mr r3, r31
/* 801FB16C 001F80CC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801FB170 001F80D0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801FB174 001F80D4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801FB178 001F80D8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801FB17C 001F80DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801FB180 001F80E0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801FB184 001F80E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801FB188 001F80E8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801FB18C 001F80EC  7C 08 03 A6 */	mtlr r0
/* 801FB190 001F80F0  38 21 00 50 */	addi r1, r1, 0x50
/* 801FB194 001F80F4  4E 80 00 20 */	blr

.global CoverFind__13CFlyingPirateFR13CStateManagerf
CoverFind__13CFlyingPirateFR13CStateManagerf:
/* 801FB198 001F80F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801FB19C 001F80FC  7C 08 02 A6 */	mflr r0
/* 801FB1A0 001F8100  90 01 00 74 */	stw r0, 0x74(r1)
/* 801FB1A4 001F8104  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801FB1A8 001F8108  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801FB1AC 001F810C  BF 21 00 44 */	stmw r25, 0x44(r1)
/* 801FB1B0 001F8110  C0 03 05 68 */	lfs f0, 0x568(r3)
/* 801FB1B4 001F8114  7C 7C 1B 78 */	mr r28, r3
/* 801FB1B8 001F8118  83 64 08 40 */	lwz r27, 0x840(r4)
/* 801FB1BC 001F811C  7C 9D 23 78 */	mr r29, r4
/* 801FB1C0 001F8120  EF E0 00 32 */	fmuls f31, f0, f0
/* 801FB1C4 001F8124  3B E0 00 00 */	li r31, 0
/* 801FB1C8 001F8128  AB 3B 20 08 */	lha r25, 0x2008(r27)
/* 801FB1CC 001F812C  3B C0 00 00 */	li r30, 0
/* 801FB1D0 001F8130  48 00 00 F0 */	b lbl_801FB2C0
lbl_801FB1D4:
/* 801FB1D4 001F8134  7F 63 DB 78 */	mr r3, r27
/* 801FB1D8 001F8138  7F 24 CB 78 */	mr r4, r25
/* 801FB1DC 001F813C  4B E1 4B 01 */	bl __vc__11CObjectListCFi
/* 801FB1E0 001F8140  7C 64 1B 78 */	mr r4, r3
/* 801FB1E4 001F8144  38 61 00 18 */	addi r3, r1, 0x18
/* 801FB1E8 001F8148  4B EA F8 45 */	bl "__ct__31TCastToPtr<17CScriptCoverPoint>FP7CEntity"
/* 801FB1EC 001F814C  83 43 00 04 */	lwz r26, 4(r3)
/* 801FB1F0 001F8150  28 1A 00 00 */	cmplwi r26, 0
/* 801FB1F4 001F8154  41 82 00 B0 */	beq lbl_801FB2A4
/* 801FB1F8 001F8158  88 1A 00 30 */	lbz r0, 0x30(r26)
/* 801FB1FC 001F815C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801FB200 001F8160  41 82 00 A4 */	beq lbl_801FB2A4
/* 801FB204 001F8164  7F 43 D3 78 */	mr r3, r26
/* 801FB208 001F8168  4B F3 23 ED */	bl ShouldLandHere__17CScriptCoverPointCFv
/* 801FB20C 001F816C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB210 001F8170  41 82 00 94 */	beq lbl_801FB2A4
/* 801FB214 001F8174  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801FB218 001F8178  7F 43 D3 78 */	mr r3, r26
/* 801FB21C 001F817C  38 81 00 14 */	addi r4, r1, 0x14
/* 801FB220 001F8180  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801FB224 001F8184  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801FB228 001F8188  4B F3 21 ED */	bl GetInUse__17CScriptCoverPointCF9TUniqueId
/* 801FB22C 001F818C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB230 001F8190  40 82 00 74 */	bne lbl_801FB2A4
/* 801FB234 001F8194  80 7A 00 04 */	lwz r3, 4(r26)
/* 801FB238 001F8198  80 1C 00 04 */	lwz r0, 4(r28)
/* 801FB23C 001F819C  7C 03 00 00 */	cmpw r3, r0
/* 801FB240 001F81A0  40 82 00 64 */	bne lbl_801FB2A4
/* 801FB244 001F81A4  C0 DC 00 50 */	lfs f6, 0x50(r28)
/* 801FB248 001F81A8  C0 1A 00 50 */	lfs f0, 0x50(r26)
/* 801FB24C 001F81AC  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 801FB250 001F81B0  EC A6 00 28 */	fsubs f5, f6, f0
/* 801FB254 001F81B4  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 801FB258 001F81B8  C0 FC 00 60 */	lfs f7, 0x60(r28)
/* 801FB25C 001F81BC  EC 61 00 28 */	fsubs f3, f1, f0
/* 801FB260 001F81C0  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 801FB264 001F81C4  EC 05 01 72 */	fmuls f0, f5, f5
/* 801FB268 001F81C8  EC 87 10 28 */	fsubs f4, f7, f2
/* 801FB26C 001F81CC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801FB270 001F81D0  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801FB274 001F81D4  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 801FB278 001F81D8  EC 44 01 32 */	fmuls f2, f4, f4
/* 801FB27C 001F81DC  EC 01 00 2A */	fadds f0, f1, f0
/* 801FB280 001F81E0  D0 E1 00 30 */	stfs f7, 0x30(r1)
/* 801FB284 001F81E4  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 801FB288 001F81E8  EC 02 00 2A */	fadds f0, f2, f0
/* 801FB28C 001F81EC  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 801FB290 001F81F0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801FB294 001F81F4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801FB298 001F81F8  40 80 00 0C */	bge lbl_801FB2A4
/* 801FB29C 001F81FC  FF E0 00 90 */	fmr f31, f0
/* 801FB2A0 001F8200  7F 5E D3 78 */	mr r30, r26
lbl_801FB2A4:
/* 801FB2A4 001F8204  2C 19 FF FF */	cmpwi r25, -1
/* 801FB2A8 001F8208  41 82 00 14 */	beq lbl_801FB2BC
/* 801FB2AC 001F820C  57 23 18 38 */	slwi r3, r25, 3
/* 801FB2B0 001F8210  38 03 00 08 */	addi r0, r3, 8
/* 801FB2B4 001F8214  7F 3B 02 AE */	lhax r25, r27, r0
/* 801FB2B8 001F8218  48 00 00 08 */	b lbl_801FB2C0
lbl_801FB2BC:
/* 801FB2BC 001F821C  3B 20 FF FF */	li r25, -1
lbl_801FB2C0:
/* 801FB2C0 001F8220  2C 19 FF FF */	cmpwi r25, -1
/* 801FB2C4 001F8224  40 82 FF 10 */	bne lbl_801FB1D4
/* 801FB2C8 001F8228  28 1E 00 00 */	cmplwi r30, 0
/* 801FB2CC 001F822C  41 82 00 5C */	beq lbl_801FB328
/* 801FB2D0 001F8230  7F 83 E3 78 */	mr r3, r28
/* 801FB2D4 001F8234  7F A4 EB 78 */	mr r4, r29
/* 801FB2D8 001F8238  38 BC 06 A4 */	addi r5, r28, 0x6a4
/* 801FB2DC 001F823C  4B E8 15 81 */	bl ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId
/* 801FB2E0 001F8240  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801FB2E4 001F8244  7F A3 EB 78 */	mr r3, r29
/* 801FB2E8 001F8248  38 81 00 0C */	addi r4, r1, 0xc
/* 801FB2EC 001F824C  B0 01 00 08 */	sth r0, 8(r1)
/* 801FB2F0 001F8250  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801FB2F4 001F8254  4B E5 12 81 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801FB2F8 001F8258  7C 64 1B 78 */	mr r4, r3
/* 801FB2FC 001F825C  38 61 00 20 */	addi r3, r1, 0x20
/* 801FB300 001F8260  4B EA F7 2D */	bl "__ct__31TCastToPtr<17CScriptCoverPoint>FP7CEntity"
/* 801FB304 001F8264  80 83 00 04 */	lwz r4, 4(r3)
/* 801FB308 001F8268  28 04 00 00 */	cmplwi r4, 0
/* 801FB30C 001F826C  41 82 00 1C */	beq lbl_801FB328
/* 801FB310 001F8270  7F 83 E3 78 */	mr r3, r28
/* 801FB314 001F8274  38 BC 06 A4 */	addi r5, r28, 0x6a4
/* 801FB318 001F8278  4B E8 14 FD */	bl SetCoverPoint__10CPatternedFP17CScriptCoverPointR9TUniqueId
/* 801FB31C 001F827C  A0 1C 06 A4 */	lhz r0, 0x6a4(r28)
/* 801FB320 001F8280  3B E0 00 01 */	li r31, 1
/* 801FB324 001F8284  B0 1C 06 A6 */	sth r0, 0x6a6(r28)
lbl_801FB328:
/* 801FB328 001F8288  7F E3 FB 78 */	mr r3, r31
/* 801FB32C 001F828C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801FB330 001F8290  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801FB334 001F8294  BB 21 00 44 */	lmw r25, 0x44(r1)
/* 801FB338 001F8298  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801FB33C 001F829C  7C 08 03 A6 */	mtlr r0
/* 801FB340 001F82A0  38 21 00 70 */	addi r1, r1, 0x70
/* 801FB344 001F82A4  4E 80 00 20 */	blr

.global CoverCheck__13CFlyingPirateFR13CStateManagerf
CoverCheck__13CFlyingPirateFR13CStateManagerf:
/* 801FB348 001F82A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FB34C 001F82AC  7C 08 02 A6 */	mflr r0
/* 801FB350 001F82B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FB354 001F82B4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801FB358 001F82B8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 801FB35C 001F82BC  C0 03 08 88 */	lfs f0, 0x888(r3)
/* 801FB360 001F82C0  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FB364 001F82C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801FB368 001F82C8  4C 40 13 82 */	cror 2, 0, 2
/* 801FB36C 001F82CC  40 82 00 2C */	bne lbl_801FB398
/* 801FB370 001F82D0  C0 02 AF D0 */	lfs f0, lbl_805ACCF0@sda21(r2)
/* 801FB374 001F82D4  C0 42 AF D4 */	lfs f2, lbl_805ACCF4@sda21(r2)
/* 801FB378 001F82D8  D0 03 08 88 */	stfs f0, 0x888(r3)
/* 801FB37C 001F82DC  C3 E3 06 34 */	lfs f31, 0x634(r3)
/* 801FB380 001F82E0  80 64 09 00 */	lwz r3, 0x900(r4)
/* 801FB384 001F82E4  48 11 71 C1 */	bl Range__9CRandom16Fff
/* 801FB388 001F82E8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 801FB38C 001F82EC  7C 00 00 26 */	mfcr r0
/* 801FB390 001F82F0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801FB394 001F82F4  48 00 00 08 */	b lbl_801FB39C
lbl_801FB398:
/* 801FB398 001F82F8  38 60 00 00 */	li r3, 0
lbl_801FB39C:
/* 801FB39C 001F82FC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 801FB3A0 001F8300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FB3A4 001F8304  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801FB3A8 001F8308  7C 08 03 A6 */	mtlr r0
/* 801FB3AC 001F830C  38 21 00 20 */	addi r1, r1, 0x20
/* 801FB3B0 001F8310  4E 80 00 20 */	blr

.global Lurk__13CFlyingPirateFR13CStateManager9EStateMsgf
Lurk__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FB3B4 001F8314  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801FB3B8 001F8318  7C 08 02 A6 */	mflr r0
/* 801FB3BC 001F831C  2C 05 00 01 */	cmpwi r5, 1
/* 801FB3C0 001F8320  90 01 00 64 */	stw r0, 0x64(r1)
/* 801FB3C4 001F8324  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801FB3C8 001F8328  7C 7F 1B 78 */	mr r31, r3
/* 801FB3CC 001F832C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801FB3D0 001F8330  7C 9E 23 78 */	mr r30, r4
/* 801FB3D4 001F8334  41 82 00 A4 */	beq lbl_801FB478
/* 801FB3D8 001F8338  40 80 00 10 */	bge lbl_801FB3E8
/* 801FB3DC 001F833C  2C 05 00 00 */	cmpwi r5, 0
/* 801FB3E0 001F8340  40 80 00 14 */	bge lbl_801FB3F4
/* 801FB3E4 001F8344  48 00 01 BC */	b lbl_801FB5A0
lbl_801FB3E8:
/* 801FB3E8 001F8348  2C 05 00 03 */	cmpwi r5, 3
/* 801FB3EC 001F834C  40 80 01 B4 */	bge lbl_801FB5A0
/* 801FB3F0 001F8350  48 00 01 90 */	b lbl_801FB580
lbl_801FB3F4:
/* 801FB3F4 001F8354  38 BF 06 A4 */	addi r5, r31, 0x6a4
/* 801FB3F8 001F8358  4B E8 14 65 */	bl ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId
/* 801FB3FC 001F835C  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 801FB400 001F8360  38 60 00 01 */	li r3, 1
/* 801FB404 001F8364  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801FB408 001F8368  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FB40C 001F836C  98 1F 06 A0 */	stb r0, 0x6a0(r31)
/* 801FB410 001F8370  38 00 00 00 */	li r0, 0
/* 801FB414 001F8374  7F C4 F3 78 */	mr r4, r30
/* 801FB418 001F8378  38 A1 00 10 */	addi r5, r1, 0x10
/* 801FB41C 001F837C  D0 1F 07 D8 */	stfs f0, 0x7d8(r31)
/* 801FB420 001F8380  38 C1 00 0C */	addi r6, r1, 0xc
/* 801FB424 001F8384  38 60 00 01 */	li r3, 1
/* 801FB428 001F8388  38 E0 00 01 */	li r7, 1
/* 801FB42C 001F838C  90 1F 07 DC */	stw r0, 0x7dc(r31)
/* 801FB430 001F8390  A1 1F 00 08 */	lhz r8, 8(r31)
/* 801FB434 001F8394  B1 01 00 0C */	sth r8, 0xc(r1)
/* 801FB438 001F8398  A0 1F 08 90 */	lhz r0, 0x890(r31)
/* 801FB43C 001F839C  B1 01 00 08 */	sth r8, 8(r1)
/* 801FB440 001F83A0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801FB444 001F83A4  48 03 EA 8D */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
/* 801FB448 001F83A8  C0 02 AF 7C */	lfs f0, lbl_805ACC9C@sda21(r2)
/* 801FB44C 001F83AC  7F E3 FB 78 */	mr r3, r31
/* 801FB450 001F83B0  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FB454 001F83B4  7F C4 F3 78 */	mr r4, r30
/* 801FB458 001F83B8  D0 1F 03 40 */	stfs f0, 0x340(r31)
/* 801FB45C 001F83BC  38 A0 00 01 */	li r5, 1
/* 801FB460 001F83C0  48 00 27 89 */	bl sub_801fdbe8
/* 801FB464 001F83C4  88 1F 06 A2 */	lbz r0, 0x6a2(r31)
/* 801FB468 001F83C8  38 60 00 00 */	li r3, 0
/* 801FB46C 001F83CC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801FB470 001F83D0  98 1F 06 A2 */	stb r0, 0x6a2(r31)
/* 801FB474 001F83D4  48 00 01 2C */	b lbl_801FB5A0
lbl_801FB478:
/* 801FB478 001F83D8  48 00 1C ED */	bl UpdateCantSeePlayer__13CFlyingPirateFR13CStateManager
/* 801FB47C 001F83DC  80 1F 03 2C */	lwz r0, 0x32c(r31)
/* 801FB480 001F83E0  2C 00 00 00 */	cmpwi r0, 0
/* 801FB484 001F83E4  41 82 00 3C */	beq lbl_801FB4C0
/* 801FB488 001F83E8  3C 80 80 3E */	lis r4, lbl_803E6808@ha
/* 801FB48C 001F83EC  7F E3 FB 78 */	mr r3, r31
/* 801FB490 001F83F0  38 E4 68 08 */	addi r7, r4, lbl_803E6808@l
/* 801FB494 001F83F4  7F C4 F3 78 */	mr r4, r30
/* 801FB498 001F83F8  81 27 00 00 */	lwz r9, 0(r7)
/* 801FB49C 001F83FC  38 C1 00 38 */	addi r6, r1, 0x38
/* 801FB4A0 001F8400  81 07 00 04 */	lwz r8, 4(r7)
/* 801FB4A4 001F8404  38 A0 00 08 */	li r5, 8
/* 801FB4A8 001F8408  80 07 00 08 */	lwz r0, 8(r7)
/* 801FB4AC 001F840C  38 E0 00 00 */	li r7, 0
/* 801FB4B0 001F8410  91 21 00 38 */	stw r9, 0x38(r1)
/* 801FB4B4 001F8414  91 01 00 3C */	stw r8, 0x3c(r1)
/* 801FB4B8 001F8418  90 01 00 40 */	stw r0, 0x40(r1)
/* 801FB4BC 001F841C  4B E8 12 F9 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
lbl_801FB4C0:
/* 801FB4C0 001F8420  80 1F 03 2C */	lwz r0, 0x32c(r31)
/* 801FB4C4 001F8424  2C 00 00 02 */	cmpwi r0, 2
/* 801FB4C8 001F8428  41 82 00 D8 */	beq lbl_801FB5A0
/* 801FB4CC 001F842C  7F E4 FB 78 */	mr r4, r31
/* 801FB4D0 001F8430  7F C5 F3 78 */	mr r5, r30
/* 801FB4D4 001F8434  38 61 00 2C */	addi r3, r1, 0x2c
/* 801FB4D8 001F8438  48 00 13 BD */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801FB4DC 001F843C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801FB4E0 001F8440  38 61 00 14 */	addi r3, r1, 0x14
/* 801FB4E4 001F8444  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FB4E8 001F8448  38 81 00 44 */	addi r4, r1, 0x44
/* 801FB4EC 001F844C  D0 3F 02 E0 */	stfs f1, 0x2e0(r31)
/* 801FB4F0 001F8450  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 801FB4F4 001F8454  D0 3F 02 E4 */	stfs f1, 0x2e4(r31)
/* 801FB4F8 001F8458  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801FB4FC 001F845C  D0 3F 02 E8 */	stfs f1, 0x2e8(r31)
/* 801FB500 001F8460  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 801FB504 001F8464  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801FB508 001F8468  C0 9F 02 E4 */	lfs f4, 0x2e4(r31)
/* 801FB50C 001F846C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801FB510 001F8470  EC A2 08 28 */	fsubs f5, f2, f1
/* 801FB514 001F8474  C0 5F 02 E0 */	lfs f2, 0x2e0(r31)
/* 801FB518 001F8478  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801FB51C 001F847C  EC 64 18 28 */	fsubs f3, f4, f3
/* 801FB520 001F8480  EC 22 08 28 */	fsubs f1, f2, f1
/* 801FB524 001F8484  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 801FB528 001F8488  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 801FB52C 001F848C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 801FB530 001F8490  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801FB534 001F8494  48 11 93 1D */	bl AsNormalized__9CVector3fCFv
/* 801FB538 001F8498  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 801FB53C 001F849C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801FB540 001F84A0  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 801FB544 001F84A4  EC 04 00 32 */	fmuls f0, f4, f0
/* 801FB548 001F84A8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801FB54C 001F84AC  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 801FB550 001F84B0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801FB554 001F84B4  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 801FB558 001F84B8  C0 02 AF C8 */	lfs f0, lbl_805ACCE8@sda21(r2)
/* 801FB55C 001F84BC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801FB560 001F84C0  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 801FB564 001F84C4  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801FB568 001F84C8  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 801FB56C 001F84CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FB570 001F84D0  40 80 00 30 */	bge lbl_801FB5A0
/* 801FB574 001F84D4  38 00 00 01 */	li r0, 1
/* 801FB578 001F84D8  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 801FB57C 001F84DC  48 00 00 24 */	b lbl_801FB5A0
lbl_801FB580:
/* 801FB580 001F84E0  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 801FB584 001F84E4  38 60 00 00 */	li r3, 0
/* 801FB588 001F84E8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801FB58C 001F84EC  98 1F 06 A1 */	stb r0, 0x6a1(r31)
/* 801FB590 001F84F0  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 801FB594 001F84F4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801FB598 001F84F8  98 1F 06 A1 */	stb r0, 0x6a1(r31)
/* 801FB59C 001F84FC  90 7F 03 2C */	stw r3, 0x32c(r31)
lbl_801FB5A0:
/* 801FB5A0 001F8500  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801FB5A4 001F8504  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801FB5A8 001F8508  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801FB5AC 001F850C  7C 08 03 A6 */	mtlr r0
/* 801FB5B0 001F8510  38 21 00 60 */	addi r1, r1, 0x60
/* 801FB5B4 001F8514  4E 80 00 20 */	blr

.global Bounce__13CFlyingPirateFR13CStateManager9EStateMsgf
Bounce__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FB5B8 001F8518  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801FB5BC 001F851C  7C 08 02 A6 */	mflr r0
/* 801FB5C0 001F8520  2C 05 00 01 */	cmpwi r5, 1
/* 801FB5C4 001F8524  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FB5C8 001F8528  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801FB5CC 001F852C  7C 7F 1B 78 */	mr r31, r3
/* 801FB5D0 001F8530  41 82 00 44 */	beq lbl_801FB614
/* 801FB5D4 001F8534  40 80 01 24 */	bge lbl_801FB6F8
/* 801FB5D8 001F8538  2C 05 00 00 */	cmpwi r5, 0
/* 801FB5DC 001F853C  40 80 00 0C */	bge lbl_801FB5E8
/* 801FB5E0 001F8540  48 00 01 18 */	b lbl_801FB6F8
/* 801FB5E4 001F8544  48 00 01 14 */	b lbl_801FB6F8
lbl_801FB5E8:
/* 801FB5E8 001F8548  A1 1F 00 08 */	lhz r8, 8(r31)
/* 801FB5EC 001F854C  38 A1 00 10 */	addi r5, r1, 0x10
/* 801FB5F0 001F8550  38 C1 00 0C */	addi r6, r1, 0xc
/* 801FB5F4 001F8554  38 60 00 01 */	li r3, 1
/* 801FB5F8 001F8558  B1 01 00 0C */	sth r8, 0xc(r1)
/* 801FB5FC 001F855C  38 E0 00 01 */	li r7, 1
/* 801FB600 001F8560  A0 1F 08 90 */	lhz r0, 0x890(r31)
/* 801FB604 001F8564  B1 01 00 08 */	sth r8, 8(r1)
/* 801FB608 001F8568  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801FB60C 001F856C  48 03 E8 C5 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
/* 801FB610 001F8570  48 00 00 E8 */	b lbl_801FB6F8
lbl_801FB614:
/* 801FB614 001F8574  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801FB618 001F8578  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801FB61C 001F857C  2C 00 00 05 */	cmpwi r0, 5
/* 801FB620 001F8580  41 82 00 C8 */	beq lbl_801FB6E8
/* 801FB624 001F8584  40 80 00 10 */	bge lbl_801FB634
/* 801FB628 001F8588  2C 00 00 02 */	cmpwi r0, 2
/* 801FB62C 001F858C  41 82 00 5C */	beq lbl_801FB688
/* 801FB630 001F8590  48 00 00 C8 */	b lbl_801FB6F8
lbl_801FB634:
/* 801FB634 001F8594  2C 00 00 0E */	cmpwi r0, 0xe
/* 801FB638 001F8598  41 82 00 08 */	beq lbl_801FB640
/* 801FB63C 001F859C  48 00 00 BC */	b lbl_801FB6F8
lbl_801FB640:
/* 801FB640 001F85A0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801FB644 001F85A4  38 00 00 0A */	li r0, 0xa
/* 801FB648 001F85A8  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 801FB64C 001F85AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 801FB650 001F85B0  38 64 00 04 */	addi r3, r4, 4
/* 801FB654 001F85B4  38 81 00 14 */	addi r4, r1, 0x14
/* 801FB658 001F85B8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801FB65C 001F85BC  4B F3 61 5D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801FB660 001F85C0  34 01 00 14 */	addic. r0, r1, 0x14
/* 801FB664 001F85C4  41 82 00 10 */	beq lbl_801FB674
/* 801FB668 001F85C8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801FB66C 001F85CC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801FB670 001F85D0  90 01 00 14 */	stw r0, 0x14(r1)
lbl_801FB674:
/* 801FB674 001F85D4  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 801FB678 001F85D8  38 60 00 01 */	li r3, 1
/* 801FB67C 001F85DC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801FB680 001F85E0  98 1F 03 28 */	stb r0, 0x328(r31)
/* 801FB684 001F85E4  48 00 00 74 */	b lbl_801FB6F8
lbl_801FB688:
/* 801FB688 001F85E8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801FB68C 001F85EC  38 A0 00 00 */	li r5, 0
/* 801FB690 001F85F0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801FB694 001F85F4  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801FB698 001F85F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801FB69C 001F85FC  38 03 AA 20 */	addi r0, r3, lbl_803DAA20@l
/* 801FB6A0 001F8600  3B E4 00 04 */	addi r31, r4, 4
/* 801FB6A4 001F8604  38 80 00 00 */	li r4, 0
/* 801FB6A8 001F8608  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801FB6AC 001F860C  7F E3 FB 78 */	mr r3, r31
/* 801FB6B0 001F8610  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801FB6B4 001F8614  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801FB6B8 001F8618  4B F3 5D 81 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801FB6BC 001F861C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801FB6C0 001F8620  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801FB6C4 001F8624  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 801FB6C8 001F8628  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801FB6CC 001F862C  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 801FB6D0 001F8630  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801FB6D4 001F8634  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801FB6D8 001F8638  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801FB6DC 001F863C  90 7F 00 C0 */	stw r3, 0xc0(r31)
/* 801FB6E0 001F8640  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801FB6E4 001F8644  48 00 00 14 */	b lbl_801FB6F8
lbl_801FB6E8:
/* 801FB6E8 001F8648  88 1F 03 48 */	lbz r0, 0x348(r31)
/* 801FB6EC 001F864C  38 60 00 01 */	li r3, 1
/* 801FB6F0 001F8650  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801FB6F4 001F8654  98 1F 03 48 */	stb r0, 0x348(r31)
lbl_801FB6F8:
/* 801FB6F8 001F8658  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801FB6FC 001F865C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801FB700 001F8660  7C 08 03 A6 */	mtlr r0
/* 801FB704 001F8664  38 21 00 30 */	addi r1, r1, 0x30
/* 801FB708 001F8668  4E 80 00 20 */	blr

.global GetUp__13CFlyingPirateFR13CStateManager9EStateMsgf
GetUp__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FB70C 001F866C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801FB710 001F8670  7C 08 02 A6 */	mflr r0
/* 801FB714 001F8674  2C 05 00 01 */	cmpwi r5, 1
/* 801FB718 001F8678  90 01 00 44 */	stw r0, 0x44(r1)
/* 801FB71C 001F867C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801FB720 001F8680  7C 9F 23 78 */	mr r31, r4
/* 801FB724 001F8684  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801FB728 001F8688  7C 7E 1B 78 */	mr r30, r3
/* 801FB72C 001F868C  41 82 00 54 */	beq lbl_801FB780
/* 801FB730 001F8690  40 80 00 10 */	bge lbl_801FB740
/* 801FB734 001F8694  2C 05 00 00 */	cmpwi r5, 0
/* 801FB738 001F8698  40 80 00 14 */	bge lbl_801FB74C
/* 801FB73C 001F869C  48 00 00 E8 */	b lbl_801FB824
lbl_801FB740:
/* 801FB740 001F86A0  2C 05 00 03 */	cmpwi r5, 3
/* 801FB744 001F86A4  40 80 00 E0 */	bge lbl_801FB824
/* 801FB748 001F86A8  48 00 00 D4 */	b lbl_801FB81C
lbl_801FB74C:
/* 801FB74C 001F86AC  38 00 00 01 */	li r0, 1
/* 801FB750 001F86B0  38 A1 00 10 */	addi r5, r1, 0x10
/* 801FB754 001F86B4  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801FB758 001F86B8  38 C1 00 0C */	addi r6, r1, 0xc
/* 801FB75C 001F86BC  38 60 00 01 */	li r3, 1
/* 801FB760 001F86C0  38 E0 00 01 */	li r7, 1
/* 801FB764 001F86C4  A1 1E 00 08 */	lhz r8, 8(r30)
/* 801FB768 001F86C8  B1 01 00 0C */	sth r8, 0xc(r1)
/* 801FB76C 001F86CC  A0 1E 08 90 */	lhz r0, 0x890(r30)
/* 801FB770 001F86D0  B1 01 00 08 */	sth r8, 8(r1)
/* 801FB774 001F86D4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801FB778 001F86D8  48 03 E7 59 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
/* 801FB77C 001F86DC  48 00 00 A8 */	b lbl_801FB824
lbl_801FB780:
/* 801FB780 001F86E0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801FB784 001F86E4  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801FB788 001F86E8  2C 00 00 02 */	cmpwi r0, 2
/* 801FB78C 001F86EC  40 82 00 54 */	bne lbl_801FB7E0
/* 801FB790 001F86F0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FB794 001F86F4  38 7E 06 A8 */	addi r3, r30, 0x6a8
/* 801FB798 001F86F8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FB79C 001F86FC  38 81 00 2C */	addi r4, r1, 0x2c
/* 801FB7A0 001F8700  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FB7A4 001F8704  38 A1 00 20 */	addi r5, r1, 0x20
/* 801FB7A8 001F8708  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801FB7AC 001F870C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801FB7B0 001F8710  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801FB7B4 001F8714  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801FB7B8 001F8718  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801FB7BC 001F871C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801FB7C0 001F8720  4B FC C4 AD */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 801FB7C4 001F8724  2C 03 00 02 */	cmpwi r3, 2
/* 801FB7C8 001F8728  40 82 00 18 */	bne lbl_801FB7E0
/* 801FB7CC 001F872C  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 801FB7D0 001F8730  38 60 00 01 */	li r3, 1
/* 801FB7D4 001F8734  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801FB7D8 001F8738  98 1E 04 01 */	stb r0, 0x401(r30)
/* 801FB7DC 001F873C  48 00 00 48 */	b lbl_801FB824
lbl_801FB7E0:
/* 801FB7E0 001F8740  3C 80 80 3E */	lis r4, lbl_803E67FC@ha
/* 801FB7E4 001F8744  7F C3 F3 78 */	mr r3, r30
/* 801FB7E8 001F8748  38 E4 67 FC */	addi r7, r4, lbl_803E67FC@l
/* 801FB7EC 001F874C  7F E4 FB 78 */	mr r4, r31
/* 801FB7F0 001F8750  81 27 00 00 */	lwz r9, 0(r7)
/* 801FB7F4 001F8754  38 C1 00 14 */	addi r6, r1, 0x14
/* 801FB7F8 001F8758  81 07 00 04 */	lwz r8, 4(r7)
/* 801FB7FC 001F875C  38 A0 00 01 */	li r5, 1
/* 801FB800 001F8760  80 07 00 08 */	lwz r0, 8(r7)
/* 801FB804 001F8764  38 E0 00 00 */	li r7, 0
/* 801FB808 001F8768  91 21 00 14 */	stw r9, 0x14(r1)
/* 801FB80C 001F876C  91 01 00 18 */	stw r8, 0x18(r1)
/* 801FB810 001F8770  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801FB814 001F8774  4B E8 0F A1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801FB818 001F8778  48 00 00 0C */	b lbl_801FB824
lbl_801FB81C:
/* 801FB81C 001F877C  38 00 00 00 */	li r0, 0
/* 801FB820 001F8780  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_801FB824:
/* 801FB824 001F8784  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801FB828 001F8788  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801FB82C 001F878C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801FB830 001F8790  7C 08 03 A6 */	mtlr r0
/* 801FB834 001F8794  38 21 00 40 */	addi r1, r1, 0x40
/* 801FB838 001F8798  4E 80 00 20 */	blr

.global Taunt__13CFlyingPirateFR13CStateManager9EStateMsgf
Taunt__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FB83C 001F879C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801FB840 001F87A0  7C 08 02 A6 */	mflr r0
/* 801FB844 001F87A4  2C 05 00 01 */	cmpwi r5, 1
/* 801FB848 001F87A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801FB84C 001F87AC  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 801FB850 001F87B0  7C 7E 1B 78 */	mr r30, r3
/* 801FB854 001F87B4  7C 9F 23 78 */	mr r31, r4
/* 801FB858 001F87B8  41 82 01 A0 */	beq lbl_801FB9F8
/* 801FB85C 001F87BC  40 80 00 10 */	bge lbl_801FB86C
/* 801FB860 001F87C0  2C 05 00 00 */	cmpwi r5, 0
/* 801FB864 001F87C4  40 80 00 14 */	bge lbl_801FB878
/* 801FB868 001F87C8  48 00 01 90 */	b lbl_801FB9F8
lbl_801FB86C:
/* 801FB86C 001F87CC  2C 05 00 03 */	cmpwi r5, 3
/* 801FB870 001F87D0  40 80 01 88 */	bge lbl_801FB9F8
/* 801FB874 001F87D4  48 00 01 50 */	b lbl_801FB9C4
lbl_801FB878:
/* 801FB878 001F87D8  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 801FB87C 001F87DC  38 60 00 01 */	li r3, 1
/* 801FB880 001F87E0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801FB884 001F87E4  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 801FB888 001F87E8  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 801FB88C 001F87EC  38 80 00 01 */	li r4, 1
/* 801FB890 001F87F0  4B F7 99 95 */	bl SetActive__13CBoneTrackingFb
/* 801FB894 001F87F4  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801FB898 001F87F8  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 801FB89C 001F87FC  38 81 00 0C */	addi r4, r1, 0xc
/* 801FB8A0 001F8800  A0 05 00 08 */	lhz r0, 8(r5)
/* 801FB8A4 001F8804  B0 01 00 08 */	sth r0, 8(r1)
/* 801FB8A8 001F8808  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801FB8AC 001F880C  4B F7 99 6D */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 801FB8B0 001F8810  83 BF 08 38 */	lwz r29, 0x838(r31)
/* 801FB8B4 001F8814  3B 80 00 00 */	li r28, 0
/* 801FB8B8 001F8818  AB 7D 20 08 */	lha r27, 0x2008(r29)
/* 801FB8BC 001F881C  48 00 00 D0 */	b lbl_801FB98C
lbl_801FB8C0:
/* 801FB8C0 001F8820  7F A3 EB 78 */	mr r3, r29
/* 801FB8C4 001F8824  7F 64 DB 78 */	mr r4, r27
/* 801FB8C8 001F8828  4B E1 44 15 */	bl __vc__11CObjectListCFi
/* 801FB8CC 001F882C  7C 64 1B 78 */	mr r4, r3
/* 801FB8D0 001F8830  38 61 00 10 */	addi r3, r1, 0x10
/* 801FB8D4 001F8834  4B EA 9A FD */	bl sub_800a53d0
/* 801FB8D8 001F8838  4B EA 9A CD */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 801FB8DC 001F883C  28 03 00 00 */	cmplwi r3, 0
/* 801FB8E0 001F8840  41 82 00 90 */	beq lbl_801FB970
/* 801FB8E4 001F8844  88 03 06 37 */	lbz r0, 0x637(r3)
/* 801FB8E8 001F8848  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FB8EC 001F884C  40 82 00 84 */	bne lbl_801FB970
/* 801FB8F0 001F8850  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801FB8F4 001F8854  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FB8F8 001F8858  41 82 00 78 */	beq lbl_801FB970
/* 801FB8FC 001F885C  80 83 00 04 */	lwz r4, 4(r3)
/* 801FB900 001F8860  80 1E 00 04 */	lwz r0, 4(r30)
/* 801FB904 001F8864  7C 04 00 00 */	cmpw r4, r0
/* 801FB908 001F8868  40 82 00 68 */	bne lbl_801FB970
/* 801FB90C 001F886C  C0 E3 00 50 */	lfs f7, 0x50(r3)
/* 801FB910 001F8870  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801FB914 001F8874  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 801FB918 001F8878  EC C7 00 28 */	fsubs f6, f7, f0
/* 801FB91C 001F887C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FB920 001F8880  C1 03 00 60 */	lfs f8, 0x60(r3)
/* 801FB924 001F8884  EC 83 00 28 */	fsubs f4, f3, f0
/* 801FB928 001F8888  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801FB92C 001F888C  EC 26 01 B2 */	fmuls f1, f6, f6
/* 801FB930 001F8890  EC A8 00 28 */	fsubs f5, f8, f0
/* 801FB934 001F8894  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 801FB938 001F8898  EC 44 01 32 */	fmuls f2, f4, f4
/* 801FB93C 001F889C  EC 00 00 32 */	fmuls f0, f0, f0
/* 801FB940 001F88A0  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801FB944 001F88A4  EC 65 01 72 */	fmuls f3, f5, f5
/* 801FB948 001F88A8  EC 22 08 2A */	fadds f1, f2, f1
/* 801FB94C 001F88AC  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 801FB950 001F88B0  D1 01 00 28 */	stfs f8, 0x28(r1)
/* 801FB954 001F88B4  EC 23 08 2A */	fadds f1, f3, f1
/* 801FB958 001F88B8  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801FB95C 001F88BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FB960 001F88C0  D0 C1 00 30 */	stfs f6, 0x30(r1)
/* 801FB964 001F88C4  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 801FB968 001F88C8  40 80 00 08 */	bge lbl_801FB970
/* 801FB96C 001F88CC  3B 80 00 01 */	li r28, 1
lbl_801FB970:
/* 801FB970 001F88D0  2C 1B FF FF */	cmpwi r27, -1
/* 801FB974 001F88D4  41 82 00 14 */	beq lbl_801FB988
/* 801FB978 001F88D8  57 63 18 38 */	slwi r3, r27, 3
/* 801FB97C 001F88DC  38 03 00 08 */	addi r0, r3, 8
/* 801FB980 001F88E0  7F 7D 02 AE */	lhax r27, r29, r0
/* 801FB984 001F88E4  48 00 00 08 */	b lbl_801FB98C
lbl_801FB988:
/* 801FB988 001F88E8  3B 60 FF FF */	li r27, -1
lbl_801FB98C:
/* 801FB98C 001F88EC  2C 1B FF FF */	cmpwi r27, -1
/* 801FB990 001F88F0  40 82 FF 30 */	bne lbl_801FB8C0
/* 801FB994 001F88F4  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801FB998 001F88F8  7C 00 00 34 */	cntlzw r0, r0
/* 801FB99C 001F88FC  54 00 D9 7E */	srwi r0, r0, 5
/* 801FB9A0 001F8900  90 1E 07 9C */	stw r0, 0x79c(r30)
/* 801FB9A4 001F8904  A0 7E 07 E8 */	lhz r3, 0x7e8(r30)
/* 801FB9A8 001F8908  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FB9AC 001F890C  7C 03 00 40 */	cmplw r3, r0
/* 801FB9B0 001F8910  40 82 00 48 */	bne lbl_801FB9F8
/* 801FB9B4 001F8914  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801FB9B8 001F8918  A0 03 00 08 */	lhz r0, 8(r3)
/* 801FB9BC 001F891C  B0 1E 07 E8 */	sth r0, 0x7e8(r30)
/* 801FB9C0 001F8920  48 00 00 38 */	b lbl_801FB9F8
lbl_801FB9C4:
/* 801FB9C4 001F8924  80 1E 07 9C */	lwz r0, 0x79c(r30)
/* 801FB9C8 001F8928  2C 00 00 00 */	cmpwi r0, 0
/* 801FB9CC 001F892C  40 82 00 2C */	bne lbl_801FB9F8
/* 801FB9D0 001F8930  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FB9D4 001F8934  7F E3 FB 78 */	mr r3, r31
/* 801FB9D8 001F8938  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FB9DC 001F893C  38 81 00 14 */	addi r4, r1, 0x14
/* 801FB9E0 001F8940  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FB9E4 001F8944  38 A0 00 00 */	li r5, 0
/* 801FB9E8 001F8948  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801FB9EC 001F894C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801FB9F0 001F8950  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801FB9F4 001F8954  4B E4 CD 91 */	bl InformListeners__13CStateManagerFRC9CVector3f16EListenNoiseType
lbl_801FB9F8:
/* 801FB9F8 001F8958  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 801FB9FC 001F895C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801FBA00 001F8960  7C 08 03 A6 */	mtlr r0
/* 801FBA04 001F8964  38 21 00 50 */	addi r1, r1, 0x50
/* 801FBA08 001F8968  4E 80 00 20 */	blr

.global HearPlayer__13CFlyingPirateFR13CStateManagerf
HearPlayer__13CFlyingPirateFR13CStateManagerf:
/* 801FBA0C 001F896C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801FBA10 001F8970  38 00 00 00 */	li r0, 0
/* 801FBA14 001F8974  C0 02 AF B0 */	lfs f0, lbl_805ACCD0@sda21(r2)
/* 801FBA18 001F8978  C0 44 01 38 */	lfs f2, 0x138(r4)
/* 801FBA1C 001F897C  C0 24 01 3C */	lfs f1, 0x13c(r4)
/* 801FBA20 001F8980  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801FBA24 001F8984  C0 64 01 40 */	lfs f3, 0x140(r4)
/* 801FBA28 001F8988  EC 21 00 72 */	fmuls f1, f1, f1
/* 801FBA2C 001F898C  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801FBA30 001F8990  EC 22 08 2A */	fadds f1, f2, f1
/* 801FBA34 001F8994  EC 23 08 2A */	fadds f1, f3, f1
/* 801FBA38 001F8998  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FBA3C 001F899C  40 81 00 48 */	ble lbl_801FBA84
/* 801FBA40 001F89A0  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801FBA44 001F89A4  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801FBA48 001F89A8  C0 43 05 6C */	lfs f2, 0x56c(r3)
/* 801FBA4C 001F89AC  EC A1 00 28 */	fsubs f5, f1, f0
/* 801FBA50 001F89B0  C0 84 00 40 */	lfs f4, 0x40(r4)
/* 801FBA54 001F89B4  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801FBA58 001F89B8  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801FBA5C 001F89BC  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 801FBA60 001F89C0  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801FBA64 001F89C4  EC 84 08 28 */	fsubs f4, f4, f1
/* 801FBA68 001F89C8  EC 25 01 72 */	fmuls f1, f5, f5
/* 801FBA6C 001F89CC  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FBA70 001F89D0  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 801FBA74 001F89D4  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801FBA78 001F89D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FBA7C 001F89DC  40 80 00 08 */	bge lbl_801FBA84
/* 801FBA80 001F89E0  38 00 00 01 */	li r0, 1
lbl_801FBA84:
/* 801FBA84 001F89E4  7C 03 03 78 */	mr r3, r0
/* 801FBA88 001F89E8  4E 80 00 20 */	blr

.global HearShot__13CFlyingPirateFR13CStateManagerf
HearShot__13CFlyingPirateFR13CStateManagerf:
/* 801FBA8C 001F89EC  88 A3 06 A0 */	lbz r5, 0x6a0(r3)
/* 801FBA90 001F89F0  38 00 00 00 */	li r0, 0
/* 801FBA94 001F89F4  54 A4 DF FE */	rlwinm r4, r5, 0x1b, 0x1f, 0x1f
/* 801FBA98 001F89F8  50 05 2E B4 */	rlwimi r5, r0, 5, 0x1a, 0x1a
/* 801FBA9C 001F89FC  98 A3 06 A0 */	stb r5, 0x6a0(r3)
/* 801FBAA0 001F8A00  7C 83 23 78 */	mr r3, r4
/* 801FBAA4 001F8A04  4E 80 00 20 */	blr

.global PatternOver__13CFlyingPirateFR13CStateManagerf
PatternOver__13CFlyingPirateFR13CStateManagerf:
/* 801FBAA8 001F8A08  A0 63 02 DC */	lhz r3, 0x2dc(r3)
/* 801FBAAC 001F8A0C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FBAB0 001F8A10  7C 03 00 50 */	subf r0, r3, r0
/* 801FBAB4 001F8A14  7C 00 00 34 */	cntlzw r0, r0
/* 801FBAB8 001F8A18  54 03 D9 7E */	srwi r3, r0, 5
/* 801FBABC 001F8A1C  4E 80 00 20 */	blr

.global TargetPatrol__13CFlyingPirateFR13CStateManager9EStateMsgf
TargetPatrol__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FBAC0 001F8A20  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801FBAC4 001F8A24  7C 08 02 A6 */	mflr r0
/* 801FBAC8 001F8A28  90 01 00 94 */	stw r0, 0x94(r1)
/* 801FBACC 001F8A2C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801FBAD0 001F8A30  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 801FBAD4 001F8A34  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801FBAD8 001F8A38  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 801FBADC 001F8A3C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 801FBAE0 001F8A40  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 801FBAE4 001F8A44  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 801FBAE8 001F8A48  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 801FBAEC 001F8A4C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801FBAF0 001F8A50  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801FBAF4 001F8A54  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801FBAF8 001F8A58  FF E0 08 90 */	fmr f31, f1
/* 801FBAFC 001F8A5C  7C 7F 1B 78 */	mr r31, r3
/* 801FBB00 001F8A60  7C 9D 23 78 */	mr r29, r4
/* 801FBB04 001F8A64  7C BE 2B 78 */	mr r30, r5
/* 801FBB08 001F8A68  4B FF B3 6D */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 801FBB0C 001F8A6C  2C 1E 00 01 */	cmpwi r30, 1
/* 801FBB10 001F8A70  41 82 00 9C */	beq lbl_801FBBAC
/* 801FBB14 001F8A74  40 80 01 FC */	bge lbl_801FBD10
/* 801FBB18 001F8A78  2C 1E 00 00 */	cmpwi r30, 0
/* 801FBB1C 001F8A7C  40 80 00 08 */	bge lbl_801FBB24
/* 801FBB20 001F8A80  48 00 01 F0 */	b lbl_801FBD10
lbl_801FBB24:
/* 801FBB24 001F8A84  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801FBB28 001F8A88  38 00 00 00 */	li r0, 0
/* 801FBB2C 001F8A8C  7F E4 FB 78 */	mr r4, r31
/* 801FBB30 001F8A90  7F A5 EB 78 */	mr r5, r29
/* 801FBB34 001F8A94  90 03 00 34 */	stw r0, 0x34(r3)
/* 801FBB38 001F8A98  38 61 00 0C */	addi r3, r1, 0xc
/* 801FBB3C 001F8A9C  38 C0 00 0A */	li r6, 0xa
/* 801FBB40 001F8AA0  38 E0 00 06 */	li r7, 6
/* 801FBB44 001F8AA4  4B FF 94 55 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801FBB48 001F8AA8  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801FBB4C 001F8AAC  B0 1F 02 DC */	sth r0, 0x2dc(r31)
/* 801FBB50 001F8AB0  A0 7F 02 DC */	lhz r3, 0x2dc(r31)
/* 801FBB54 001F8AB4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FBB58 001F8AB8  7C 03 00 40 */	cmplw r3, r0
/* 801FBB5C 001F8ABC  41 82 00 3C */	beq lbl_801FBB98
/* 801FBB60 001F8AC0  B0 61 00 08 */	sth r3, 8(r1)
/* 801FBB64 001F8AC4  7F A3 EB 78 */	mr r3, r29
/* 801FBB68 001F8AC8  38 81 00 08 */	addi r4, r1, 8
/* 801FBB6C 001F8ACC  4B E5 0A 39 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801FBB70 001F8AD0  7C 64 1B 78 */	mr r4, r3
/* 801FBB74 001F8AD4  38 61 00 14 */	addi r3, r1, 0x14
/* 801FBB78 001F8AD8  4B EA A9 D5 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801FBB7C 001F8ADC  80 63 00 04 */	lwz r3, 4(r3)
/* 801FBB80 001F8AE0  28 03 00 00 */	cmplwi r3, 0
/* 801FBB84 001F8AE4  41 82 00 14 */	beq lbl_801FBB98
/* 801FBB88 001F8AE8  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 801FBB8C 001F8AEC  90 1F 03 0C */	stw r0, 0x30c(r31)
/* 801FBB90 001F8AF0  C0 03 00 E8 */	lfs f0, 0xe8(r3)
/* 801FBB94 001F8AF4  D0 1F 03 B0 */	stfs f0, 0x3b0(r31)
lbl_801FBB98:
/* 801FBB98 001F8AF8  A0 1F 02 DC */	lhz r0, 0x2dc(r31)
/* 801FBB9C 001F8AFC  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FBBA0 001F8B00  B0 1F 08 A0 */	sth r0, 0x8a0(r31)
/* 801FBBA4 001F8B04  D0 1F 08 A4 */	stfs f0, 0x8a4(r31)
/* 801FBBA8 001F8B08  48 00 01 68 */	b lbl_801FBD10
lbl_801FBBAC:
/* 801FBBAC 001F8B0C  A0 7F 02 DC */	lhz r3, 0x2dc(r31)
/* 801FBBB0 001F8B10  A0 1F 08 A0 */	lhz r0, 0x8a0(r31)
/* 801FBBB4 001F8B14  7C 03 00 40 */	cmplw r3, r0
/* 801FBBB8 001F8B18  41 82 00 10 */	beq lbl_801FBBC8
/* 801FBBBC 001F8B1C  B0 7F 08 A0 */	sth r3, 0x8a0(r31)
/* 801FBBC0 001F8B20  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FBBC4 001F8B24  D0 1F 08 A4 */	stfs f0, 0x8a4(r31)
lbl_801FBBC8:
/* 801FBBC8 001F8B28  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 801FBBCC 001F8B2C  2C 00 00 00 */	cmpwi r0, 0
/* 801FBBD0 001F8B30  40 82 00 E0 */	bne lbl_801FBCB0
/* 801FBBD4 001F8B34  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 801FBBD8 001F8B38  38 61 00 34 */	addi r3, r1, 0x34
/* 801FBBDC 001F8B3C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801FBBE0 001F8B40  38 81 00 28 */	addi r4, r1, 0x28
/* 801FBBE4 001F8B44  C0 7F 02 E8 */	lfs f3, 0x2e8(r31)
/* 801FBBE8 001F8B48  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801FBBEC 001F8B4C  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FBBF0 001F8B50  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 801FBBF4 001F8B54  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801FBBF8 001F8B58  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FBBFC 001F8B5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FBC00 001F8B60  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801FBC04 001F8B64  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801FBC08 001F8B68  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801FBC0C 001F8B6C  48 11 8C 45 */	bl AsNormalized__9CVector3fCFv
/* 801FBC10 001F8B70  C0 5F 03 B0 */	lfs f2, 0x3b0(r31)
/* 801FBC14 001F8B74  38 7F 08 A4 */	addi r3, r31, 0x8a4
/* 801FBC18 001F8B78  C0 3F 06 2C */	lfs f1, 0x62c(r31)
/* 801FBC1C 001F8B7C  38 81 00 10 */	addi r4, r1, 0x10
/* 801FBC20 001F8B80  C0 1F 08 A4 */	lfs f0, 0x8a4(r31)
/* 801FBC24 001F8B84  EC 22 00 72 */	fmuls f1, f2, f1
/* 801FBC28 001F8B88  C3 A1 00 34 */	lfs f29, 0x34(r1)
/* 801FBC2C 001F8B8C  C3 C1 00 38 */	lfs f30, 0x38(r1)
/* 801FBC30 001F8B90  C3 81 00 3C */	lfs f28, 0x3c(r1)
/* 801FBC34 001F8B94  EC 1F 00 7A */	fmadds f0, f31, f1, f0
/* 801FBC38 001F8B98  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801FBC3C 001F8B9C  D0 1F 08 A4 */	stfs f0, 0x8a4(r31)
/* 801FBC40 001F8BA0  4B E8 21 A1 */	bl "Min<f>__5CMathFRCfRCf"
/* 801FBC44 001F8BA4  C0 03 00 00 */	lfs f0, 0(r3)
/* 801FBC48 001F8BA8  C0 22 AF B4 */	lfs f1, lbl_805ACCD4@sda21(r2)
/* 801FBC4C 001F8BAC  D0 1F 08 A4 */	stfs f0, 0x8a4(r31)
/* 801FBC50 001F8BB0  C0 1F 08 A4 */	lfs f0, 0x8a4(r31)
/* 801FBC54 001F8BB4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801FBC58 001F8BB8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801FBC5C 001F8BBC  EC 60 07 72 */	fmuls f3, f0, f29
/* 801FBC60 001F8BC0  EC 40 07 B2 */	fmuls f2, f0, f30
/* 801FBC64 001F8BC4  EC 00 07 32 */	fmuls f0, f0, f28
/* 801FBC68 001F8BC8  D0 7F 08 7C */	stfs f3, 0x87c(r31)
/* 801FBC6C 001F8BCC  D0 5F 08 80 */	stfs f2, 0x880(r31)
/* 801FBC70 001F8BD0  D0 1F 08 84 */	stfs f0, 0x884(r31)
/* 801FBC74 001F8BD4  C0 1F 03 B0 */	lfs f0, 0x3b0(r31)
/* 801FBC78 001F8BD8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801FBC7C 001F8BDC  D0 1F 08 98 */	stfs f0, 0x898(r31)
/* 801FBC80 001F8BE0  C0 3F 08 70 */	lfs f1, 0x870(r31)
/* 801FBC84 001F8BE4  C0 1F 08 7C */	lfs f0, 0x87c(r31)
/* 801FBC88 001F8BE8  EC 01 00 2A */	fadds f0, f1, f0
/* 801FBC8C 001F8BEC  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 801FBC90 001F8BF0  C0 3F 08 74 */	lfs f1, 0x874(r31)
/* 801FBC94 001F8BF4  C0 1F 08 80 */	lfs f0, 0x880(r31)
/* 801FBC98 001F8BF8  EC 01 00 2A */	fadds f0, f1, f0
/* 801FBC9C 001F8BFC  D0 1F 08 74 */	stfs f0, 0x874(r31)
/* 801FBCA0 001F8C00  C0 3F 08 78 */	lfs f1, 0x878(r31)
/* 801FBCA4 001F8C04  C0 1F 08 84 */	lfs f0, 0x884(r31)
/* 801FBCA8 001F8C08  EC 01 00 2A */	fadds f0, f1, f0
/* 801FBCAC 001F8C0C  D0 1F 08 78 */	stfs f0, 0x878(r31)
lbl_801FBCB0:
/* 801FBCB0 001F8C10  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 801FBCB4 001F8C14  2C 00 00 01 */	cmpwi r0, 1
/* 801FBCB8 001F8C18  41 82 00 08 */	beq lbl_801FBCC0
/* 801FBCBC 001F8C1C  48 00 00 48 */	b lbl_801FBD04
lbl_801FBCC0:
/* 801FBCC0 001F8C20  C3 BF 00 60 */	lfs f29, 0x60(r31)
/* 801FBCC4 001F8C24  7F E4 FB 78 */	mr r4, r31
/* 801FBCC8 001F8C28  C3 DF 00 50 */	lfs f30, 0x50(r31)
/* 801FBCCC 001F8C2C  7F A5 EB 78 */	mr r5, r29
/* 801FBCD0 001F8C30  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 801FBCD4 001F8C34  38 61 00 1C */	addi r3, r1, 0x1c
/* 801FBCD8 001F8C38  48 00 0B BD */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801FBCDC 001F8C3C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801FBCE0 001F8C40  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801FBCE4 001F8C44  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801FBCE8 001F8C48  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801FBCEC 001F8C4C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801FBCF0 001F8C50  EC 42 F0 28 */	fsubs f2, f2, f30
/* 801FBCF4 001F8C54  EC 21 E8 28 */	fsubs f1, f1, f29
/* 801FBCF8 001F8C58  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801FBCFC 001F8C5C  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 801FBD00 001F8C60  D0 23 00 24 */	stfs f1, 0x24(r3)
lbl_801FBD04:
/* 801FBD04 001F8C64  7F E3 FB 78 */	mr r3, r31
/* 801FBD08 001F8C68  7F A4 EB 78 */	mr r4, r29
/* 801FBD0C 001F8C6C  48 00 14 59 */	bl UpdateCantSeePlayer__13CFlyingPirateFR13CStateManager
lbl_801FBD10:
/* 801FBD10 001F8C70  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 801FBD14 001F8C74  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801FBD18 001F8C78  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 801FBD1C 001F8C7C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801FBD20 001F8C80  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 801FBD24 001F8C84  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 801FBD28 001F8C88  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 801FBD2C 001F8C8C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 801FBD30 001F8C90  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801FBD34 001F8C94  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801FBD38 001F8C98  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801FBD3C 001F8C9C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801FBD40 001F8CA0  7C 08 03 A6 */	mtlr r0
/* 801FBD44 001F8CA4  38 21 00 90 */	addi r1, r1, 0x90
/* 801FBD48 001F8CA8  4E 80 00 20 */	blr

.global Patrol__13CFlyingPirateFR13CStateManager9EStateMsgf
Patrol__13CFlyingPirateFR13CStateManager9EStateMsgf:
/* 801FBD4C 001F8CAC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801FBD50 001F8CB0  7C 08 02 A6 */	mflr r0
/* 801FBD54 001F8CB4  90 01 00 84 */	stw r0, 0x84(r1)
/* 801FBD58 001F8CB8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801FBD5C 001F8CBC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801FBD60 001F8CC0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801FBD64 001F8CC4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 801FBD68 001F8CC8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 801FBD6C 001F8CCC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 801FBD70 001F8CD0  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 801FBD74 001F8CD4  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 801FBD78 001F8CD8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801FBD7C 001F8CDC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801FBD80 001F8CE0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801FBD84 001F8CE4  88 03 06 A0 */	lbz r0, 0x6a0(r3)
/* 801FBD88 001F8CE8  FF E0 08 90 */	fmr f31, f1
/* 801FBD8C 001F8CEC  7C 7D 1B 78 */	mr r29, r3
/* 801FBD90 001F8CF0  7C 9E 23 78 */	mr r30, r4
/* 801FBD94 001F8CF4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801FBD98 001F8CF8  7C BF 2B 78 */	mr r31, r5
/* 801FBD9C 001F8CFC  41 82 01 C0 */	beq lbl_801FBF5C
/* 801FBDA0 001F8D00  4B FF B0 D5 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 801FBDA4 001F8D04  2C 1F 00 01 */	cmpwi r31, 1
/* 801FBDA8 001F8D08  41 82 00 40 */	beq lbl_801FBDE8
/* 801FBDAC 001F8D0C  40 80 00 10 */	bge lbl_801FBDBC
/* 801FBDB0 001F8D10  2C 1F 00 00 */	cmpwi r31, 0
/* 801FBDB4 001F8D14  40 80 00 14 */	bge lbl_801FBDC8
/* 801FBDB8 001F8D18  48 00 01 A4 */	b lbl_801FBF5C
lbl_801FBDBC:
/* 801FBDBC 001F8D1C  2C 1F 00 03 */	cmpwi r31, 3
/* 801FBDC0 001F8D20  40 80 01 9C */	bge lbl_801FBF5C
/* 801FBDC4 001F8D24  48 00 01 8C */	b lbl_801FBF50
lbl_801FBDC8:
/* 801FBDC8 001F8D28  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801FBDCC 001F8D2C  38 00 00 01 */	li r0, 1
/* 801FBDD0 001F8D30  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FBDD4 001F8D34  90 03 00 34 */	stw r0, 0x34(r3)
/* 801FBDD8 001F8D38  A0 1D 02 DC */	lhz r0, 0x2dc(r29)
/* 801FBDDC 001F8D3C  B0 1D 08 A0 */	sth r0, 0x8a0(r29)
/* 801FBDE0 001F8D40  D0 1D 08 A4 */	stfs f0, 0x8a4(r29)
/* 801FBDE4 001F8D44  48 00 01 78 */	b lbl_801FBF5C
lbl_801FBDE8:
/* 801FBDE8 001F8D48  A0 7D 02 DC */	lhz r3, 0x2dc(r29)
/* 801FBDEC 001F8D4C  A0 1D 08 A0 */	lhz r0, 0x8a0(r29)
/* 801FBDF0 001F8D50  7C 03 00 40 */	cmplw r3, r0
/* 801FBDF4 001F8D54  41 82 00 10 */	beq lbl_801FBE04
/* 801FBDF8 001F8D58  B0 7D 08 A0 */	sth r3, 0x8a0(r29)
/* 801FBDFC 001F8D5C  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FBE00 001F8D60  D0 1D 08 A4 */	stfs f0, 0x8a4(r29)
lbl_801FBE04:
/* 801FBE04 001F8D64  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 801FBE08 001F8D68  2C 00 00 00 */	cmpwi r0, 0
/* 801FBE0C 001F8D6C  40 82 00 E0 */	bne lbl_801FBEEC
/* 801FBE10 001F8D70  C0 3D 02 E4 */	lfs f1, 0x2e4(r29)
/* 801FBE14 001F8D74  38 61 00 24 */	addi r3, r1, 0x24
/* 801FBE18 001F8D78  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 801FBE1C 001F8D7C  38 81 00 18 */	addi r4, r1, 0x18
/* 801FBE20 001F8D80  C0 7D 02 E8 */	lfs f3, 0x2e8(r29)
/* 801FBE24 001F8D84  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 801FBE28 001F8D88  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FBE2C 001F8D8C  C0 3D 02 E0 */	lfs f1, 0x2e0(r29)
/* 801FBE30 001F8D90  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801FBE34 001F8D94  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FBE38 001F8D98  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FBE3C 001F8D9C  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 801FBE40 001F8DA0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801FBE44 001F8DA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801FBE48 001F8DA8  48 11 8A 09 */	bl AsNormalized__9CVector3fCFv
/* 801FBE4C 001F8DAC  C0 5D 03 B0 */	lfs f2, 0x3b0(r29)
/* 801FBE50 001F8DB0  38 7D 08 A4 */	addi r3, r29, 0x8a4
/* 801FBE54 001F8DB4  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 801FBE58 001F8DB8  38 81 00 08 */	addi r4, r1, 8
/* 801FBE5C 001F8DBC  C0 1D 08 A4 */	lfs f0, 0x8a4(r29)
/* 801FBE60 001F8DC0  EC 22 00 72 */	fmuls f1, f2, f1
/* 801FBE64 001F8DC4  C3 A1 00 24 */	lfs f29, 0x24(r1)
/* 801FBE68 001F8DC8  C3 C1 00 28 */	lfs f30, 0x28(r1)
/* 801FBE6C 001F8DCC  C3 81 00 2C */	lfs f28, 0x2c(r1)
/* 801FBE70 001F8DD0  EC 1F 00 7A */	fmadds f0, f31, f1, f0
/* 801FBE74 001F8DD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 801FBE78 001F8DD8  D0 1D 08 A4 */	stfs f0, 0x8a4(r29)
/* 801FBE7C 001F8DDC  4B E8 1F 65 */	bl "Min<f>__5CMathFRCfRCf"
/* 801FBE80 001F8DE0  C0 03 00 00 */	lfs f0, 0(r3)
/* 801FBE84 001F8DE4  C0 22 AF B4 */	lfs f1, lbl_805ACCD4@sda21(r2)
/* 801FBE88 001F8DE8  D0 1D 08 A4 */	stfs f0, 0x8a4(r29)
/* 801FBE8C 001F8DEC  C0 1D 08 A4 */	lfs f0, 0x8a4(r29)
/* 801FBE90 001F8DF0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801FBE94 001F8DF4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801FBE98 001F8DF8  EC 60 07 72 */	fmuls f3, f0, f29
/* 801FBE9C 001F8DFC  EC 40 07 B2 */	fmuls f2, f0, f30
/* 801FBEA0 001F8E00  EC 00 07 32 */	fmuls f0, f0, f28
/* 801FBEA4 001F8E04  D0 7D 08 7C */	stfs f3, 0x87c(r29)
/* 801FBEA8 001F8E08  D0 5D 08 80 */	stfs f2, 0x880(r29)
/* 801FBEAC 001F8E0C  D0 1D 08 84 */	stfs f0, 0x884(r29)
/* 801FBEB0 001F8E10  C0 1D 03 B0 */	lfs f0, 0x3b0(r29)
/* 801FBEB4 001F8E14  EC 01 00 32 */	fmuls f0, f1, f0
/* 801FBEB8 001F8E18  D0 1D 08 98 */	stfs f0, 0x898(r29)
/* 801FBEBC 001F8E1C  C0 3D 08 70 */	lfs f1, 0x870(r29)
/* 801FBEC0 001F8E20  C0 1D 08 7C */	lfs f0, 0x87c(r29)
/* 801FBEC4 001F8E24  EC 01 00 2A */	fadds f0, f1, f0
/* 801FBEC8 001F8E28  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 801FBECC 001F8E2C  C0 3D 08 74 */	lfs f1, 0x874(r29)
/* 801FBED0 001F8E30  C0 1D 08 80 */	lfs f0, 0x880(r29)
/* 801FBED4 001F8E34  EC 01 00 2A */	fadds f0, f1, f0
/* 801FBED8 001F8E38  D0 1D 08 74 */	stfs f0, 0x874(r29)
/* 801FBEDC 001F8E3C  C0 3D 08 78 */	lfs f1, 0x878(r29)
/* 801FBEE0 001F8E40  C0 1D 08 84 */	lfs f0, 0x884(r29)
/* 801FBEE4 001F8E44  EC 01 00 2A */	fadds f0, f1, f0
/* 801FBEE8 001F8E48  D0 1D 08 78 */	stfs f0, 0x878(r29)
lbl_801FBEEC:
/* 801FBEEC 001F8E4C  80 1D 03 0C */	lwz r0, 0x30c(r29)
/* 801FBEF0 001F8E50  2C 00 00 01 */	cmpwi r0, 1
/* 801FBEF4 001F8E54  41 82 00 08 */	beq lbl_801FBEFC
/* 801FBEF8 001F8E58  48 00 00 48 */	b lbl_801FBF40
lbl_801FBEFC:
/* 801FBEFC 001F8E5C  C3 BD 00 60 */	lfs f29, 0x60(r29)
/* 801FBF00 001F8E60  7F A4 EB 78 */	mr r4, r29
/* 801FBF04 001F8E64  C3 DD 00 50 */	lfs f30, 0x50(r29)
/* 801FBF08 001F8E68  7F C5 F3 78 */	mr r5, r30
/* 801FBF0C 001F8E6C  C3 FD 00 40 */	lfs f31, 0x40(r29)
/* 801FBF10 001F8E70  38 61 00 0C */	addi r3, r1, 0xc
/* 801FBF14 001F8E74  48 00 09 81 */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801FBF18 001F8E78  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801FBF1C 001F8E7C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801FBF20 001F8E80  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801FBF24 001F8E84  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801FBF28 001F8E88  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801FBF2C 001F8E8C  EC 42 F0 28 */	fsubs f2, f2, f30
/* 801FBF30 001F8E90  EC 21 E8 28 */	fsubs f1, f1, f29
/* 801FBF34 001F8E94  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801FBF38 001F8E98  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 801FBF3C 001F8E9C  D0 23 00 24 */	stfs f1, 0x24(r3)
lbl_801FBF40:
/* 801FBF40 001F8EA0  7F A3 EB 78 */	mr r3, r29
/* 801FBF44 001F8EA4  7F C4 F3 78 */	mr r4, r30
/* 801FBF48 001F8EA8  48 00 12 1D */	bl UpdateCantSeePlayer__13CFlyingPirateFR13CStateManager
/* 801FBF4C 001F8EAC  48 00 00 10 */	b lbl_801FBF5C
lbl_801FBF50:
/* 801FBF50 001F8EB0  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801FBF54 001F8EB4  38 00 00 00 */	li r0, 0
/* 801FBF58 001F8EB8  90 03 00 34 */	stw r0, 0x34(r3)
lbl_801FBF5C:
/* 801FBF5C 001F8EBC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801FBF60 001F8EC0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801FBF64 001F8EC4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 801FBF68 001F8EC8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801FBF6C 001F8ECC  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 801FBF70 001F8ED0  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801FBF74 001F8ED4  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 801FBF78 001F8ED8  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 801FBF7C 001F8EDC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801FBF80 001F8EE0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801FBF84 001F8EE4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801FBF88 001F8EE8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801FBF8C 001F8EEC  7C 08 03 A6 */	mtlr r0
/* 801FBF90 001F8EF0  38 21 00 80 */	addi r1, r1, 0x80
/* 801FBF94 001F8EF4  4E 80 00 20 */	blr

.global Explode__13CFlyingPirateFR13CStateManager
Explode__13CFlyingPirateFR13CStateManager:
/* 801FBF98 001F8EF8  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 801FBF9C 001F8EFC  7C 08 02 A6 */	mflr r0
/* 801FBFA0 001F8F00  3C A0 80 3D */	lis r5, lbl_803D247C@ha
/* 801FBFA4 001F8F04  90 01 01 94 */	stw r0, 0x194(r1)
/* 801FBFA8 001F8F08  BF 61 01 7C */	stmw r27, 0x17c(r1)
/* 801FBFAC 001F8F0C  7C 7E 1B 78 */	mr r30, r3
/* 801FBFB0 001F8F10  38 65 24 7C */	addi r3, r5, lbl_803D247C@l
/* 801FBFB4 001F8F14  7C 9F 23 78 */	mr r31, r4
/* 801FBFB8 001F8F18  38 83 00 08 */	addi r4, r3, 8
/* 801FBFBC 001F8F1C  3B 80 00 00 */	li r28, 0
/* 801FBFC0 001F8F20  3B 60 00 00 */	li r27, 0
/* 801FBFC4 001F8F24  38 60 01 00 */	li r3, 0x100
/* 801FBFC8 001F8F28  38 A0 00 00 */	li r5, 0
/* 801FBFCC 001F8F2C  48 11 98 A1 */	bl __nw__FUlPCcPCc
/* 801FBFD0 001F8F30  7C 7D 1B 79 */	or. r29, r3, r3
/* 801FBFD4 001F8F34  41 82 00 A8 */	beq lbl_801FC07C
/* 801FBFD8 001F8F38  C0 02 AF B4 */	lfs f0, lbl_805ACCD4@sda21(r2)
/* 801FBFDC 001F8F3C  3C 60 80 3D */	lis r3, lbl_803D247C@ha
/* 801FBFE0 001F8F40  38 83 24 7C */	addi r4, r3, lbl_803D247C@l
/* 801FBFE4 001F8F44  38 61 00 48 */	addi r3, r1, 0x48
/* 801FBFE8 001F8F48  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801FBFEC 001F8F4C  38 84 00 0F */	addi r4, r4, 0xf
/* 801FBFF0 001F8F50  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801FBFF4 001F8F54  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801FBFF8 001F8F58  4B E0 8C C1 */	bl string_l__4rstlFPCc
/* 801FBFFC 001F8F5C  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 801FC000 001F8F60  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 801FC004 001F8F64  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 801FC008 001F8F68  38 81 00 34 */	addi r4, r1, 0x34
/* 801FC00C 001F8F6C  90 01 00 38 */	stw r0, 0x38(r1)
/* 801FC010 001F8F70  38 61 00 80 */	addi r3, r1, 0x80
/* 801FC014 001F8F74  38 C1 00 38 */	addi r6, r1, 0x38
/* 801FC018 001F8F78  3B 80 00 01 */	li r28, 1
/* 801FC01C 001F8F7C  80 1E 00 04 */	lwz r0, 4(r30)
/* 801FC020 001F8F80  90 01 00 30 */	stw r0, 0x30(r1)
/* 801FC024 001F8F84  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FC028 001F8F88  4B E5 54 5D */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 801FC02C 001F8F8C  7F E4 FB 78 */	mr r4, r31
/* 801FC030 001F8F90  38 61 00 18 */	addi r3, r1, 0x18
/* 801FC034 001F8F94  3B 60 00 01 */	li r27, 1
/* 801FC038 001F8F98  4B E5 10 A5 */	bl AllocateUniqueId__13CStateManagerFv
/* 801FC03C 001F8F9C  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 801FC040 001F8FA0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801FC044 001F8FA4  48 14 DF 69 */	bl White__6CColorFv
/* 801FC048 001F8FA8  38 01 00 58 */	addi r0, r1, 0x58
/* 801FC04C 001F8FAC  38 9E 05 F8 */	addi r4, r30, 0x5f8
/* 801FC050 001F8FB0  90 01 00 08 */	stw r0, 8(r1)
/* 801FC054 001F8FB4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801FC058 001F8FB8  38 E1 00 80 */	addi r7, r1, 0x80
/* 801FC05C 001F8FBC  39 01 00 48 */	addi r8, r1, 0x48
/* 801FC060 001F8FC0  90 61 00 0C */	stw r3, 0xc(r1)
/* 801FC064 001F8FC4  7F A3 EB 78 */	mr r3, r29
/* 801FC068 001F8FC8  39 3E 00 34 */	addi r9, r30, 0x34
/* 801FC06C 001F8FCC  38 C0 00 01 */	li r6, 1
/* 801FC070 001F8FD0  39 40 00 00 */	li r10, 0
/* 801FC074 001F8FD4  4B E5 EA 85 */	bl "__ct__10CExplosionFRC31TLockedToken<15CGenDescription>9TUniqueIdbRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4fUiRC9CVector3fRC6CColor"
/* 801FC078 001F8FD8  7C 7D 1B 78 */	mr r29, r3
lbl_801FC07C:
/* 801FC07C 001F8FDC  7F 60 07 75 */	extsb. r0, r27
/* 801FC080 001F8FE0  41 82 00 44 */	beq lbl_801FC0C4
/* 801FC084 001F8FE4  80 01 00 88 */	lwz r0, 0x88(r1)
/* 801FC088 001F8FE8  80 61 00 90 */	lwz r3, 0x90(r1)
/* 801FC08C 001F8FEC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801FC090 001F8FF0  90 61 00 24 */	stw r3, 0x24(r1)
/* 801FC094 001F8FF4  7C 64 1B 78 */	mr r4, r3
/* 801FC098 001F8FF8  7C 03 02 14 */	add r0, r3, r0
/* 801FC09C 001F8FFC  90 61 00 20 */	stw r3, 0x20(r1)
/* 801FC0A0 001F9000  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801FC0A4 001F9004  90 01 00 28 */	stw r0, 0x28(r1)
/* 801FC0A8 001F9008  48 00 00 08 */	b lbl_801FC0B0
lbl_801FC0AC:
/* 801FC0AC 001F900C  38 84 00 0C */	addi r4, r4, 0xc
lbl_801FC0B0:
/* 801FC0B0 001F9010  7C 04 00 40 */	cmplw r4, r0
/* 801FC0B4 001F9014  40 82 FF F8 */	bne lbl_801FC0AC
/* 801FC0B8 001F9018  28 03 00 00 */	cmplwi r3, 0
/* 801FC0BC 001F901C  41 82 00 08 */	beq lbl_801FC0C4
/* 801FC0C0 001F9020  48 11 98 71 */	bl Free__7CMemoryFPCv
lbl_801FC0C4:
/* 801FC0C4 001F9024  7F 80 07 75 */	extsb. r0, r28
/* 801FC0C8 001F9028  41 82 00 0C */	beq lbl_801FC0D4
/* 801FC0CC 001F902C  38 61 00 48 */	addi r3, r1, 0x48
/* 801FC0D0 001F9030  48 14 1A 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801FC0D4:
/* 801FC0D4 001F9034  28 1D 00 00 */	cmplwi r29, 0
/* 801FC0D8 001F9038  41 82 00 D8 */	beq lbl_801FC1B0
/* 801FC0DC 001F903C  7F E3 FB 78 */	mr r3, r31
/* 801FC0E0 001F9040  7F A4 EB 78 */	mr r4, r29
/* 801FC0E4 001F9044  4B E5 0A 31 */	bl AddObject__13CStateManagerFR7CEntity
/* 801FC0E8 001F9048  80 AD 92 D0 */	lwz r5, lbl_805A7E90@sda21(r13)
/* 801FC0EC 001F904C  38 60 00 00 */	li r3, 0
/* 801FC0F0 001F9050  38 80 00 01 */	li r4, 1
/* 801FC0F4 001F9054  48 18 DE 01 */	bl __shl2i
/* 801FC0F8 001F9058  39 20 00 00 */	li r9, 0
/* 801FC0FC 001F905C  38 00 00 03 */	li r0, 3
/* 801FC100 001F9060  90 81 00 6C */	stw r4, 0x6c(r1)
/* 801FC104 001F9064  7F C5 F3 78 */	mr r5, r30
/* 801FC108 001F9068  38 81 00 14 */	addi r4, r1, 0x14
/* 801FC10C 001F906C  38 C1 00 3C */	addi r6, r1, 0x3c
/* 801FC110 001F9070  90 61 00 68 */	stw r3, 0x68(r1)
/* 801FC114 001F9074  7F E3 FB 78 */	mr r3, r31
/* 801FC118 001F9078  38 FE 06 04 */	addi r7, r30, 0x604
/* 801FC11C 001F907C  39 01 00 68 */	addi r8, r1, 0x68
/* 801FC120 001F9080  91 21 00 74 */	stw r9, 0x74(r1)
/* 801FC124 001F9084  91 21 00 70 */	stw r9, 0x70(r1)
/* 801FC128 001F9088  90 01 00 78 */	stw r0, 0x78(r1)
/* 801FC12C 001F908C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FC130 001F9090  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FC134 001F9094  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FC138 001F9098  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801FC13C 001F909C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801FC140 001F90A0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801FC144 001F90A4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801FC148 001F90A8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801FC14C 001F90AC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801FC150 001F90B0  4B E4 CB 5D */	bl ApplyDamageToWorld__13CStateManagerF9TUniqueIdRC6CActorRC9CVector3fRC11CDamageInfoRC15CMaterialFilter
/* 801FC154 001F90B4  C0 22 AF 74 */	lfs f1, lbl_805ACC94@sda21(r2)
/* 801FC158 001F90B8  38 61 00 98 */	addi r3, r1, 0x98
/* 801FC15C 001F90BC  C0 42 AF A0 */	lfs f2, lbl_805ACCC0@sda21(r2)
/* 801FC160 001F90C0  4B F6 17 D9 */	bl BuildPatternedExplodeShakeData__16CCameraShakeDataFff
/* 801FC164 001F90C4  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 801FC168 001F90C8  38 81 00 98 */	addi r4, r1, 0x98
/* 801FC16C 001F90CC  38 A0 00 01 */	li r5, 1
/* 801FC170 001F90D0  4B E0 E8 B1 */	bl AddCameraShaker__14CCameraManagerFRC16CCameraShakeDatab
/* 801FC174 001F90D4  34 81 01 18 */	addic. r4, r1, 0x118
/* 801FC178 001F90D8  41 82 00 10 */	beq lbl_801FC188
/* 801FC17C 001F90DC  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801FC180 001F90E0  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801FC184 001F90E4  90 04 00 00 */	stw r0, 0(r4)
lbl_801FC188:
/* 801FC188 001F90E8  34 81 00 DC */	addic. r4, r1, 0xdc
/* 801FC18C 001F90EC  41 82 00 10 */	beq lbl_801FC19C
/* 801FC190 001F90F0  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801FC194 001F90F4  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801FC198 001F90F8  90 04 00 00 */	stw r0, 0(r4)
lbl_801FC19C:
/* 801FC19C 001F90FC  34 81 00 A0 */	addic. r4, r1, 0xa0
/* 801FC1A0 001F9100  41 82 00 10 */	beq lbl_801FC1B0
/* 801FC1A4 001F9104  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801FC1A8 001F9108  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801FC1AC 001F910C  90 04 00 00 */	stw r0, 0(r4)
lbl_801FC1B0:
/* 801FC1B0 001F9110  7F C3 F3 78 */	mr r3, r30
/* 801FC1B4 001F9114  7F E4 FB 78 */	mr r4, r31
/* 801FC1B8 001F9118  4B E7 EB 31 */	bl MassiveDeath__10CPatternedFR13CStateManager
/* 801FC1BC 001F911C  BB 61 01 7C */	lmw r27, 0x17c(r1)
/* 801FC1C0 001F9120  80 01 01 94 */	lwz r0, 0x194(r1)
/* 801FC1C4 001F9124  7C 08 03 A6 */	mtlr r0
/* 801FC1C8 001F9128  38 21 01 90 */	addi r1, r1, 0x190
/* 801FC1CC 001F912C  4E 80 00 20 */	blr

.global KnockBack__13CFlyingPirateFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__13CFlyingPirateFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 801FC1D0 001F9130  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801FC1D4 001F9134  7C 08 02 A6 */	mflr r0
/* 801FC1D8 001F9138  90 01 01 14 */	stw r0, 0x114(r1)
/* 801FC1DC 001F913C  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 801FC1E0 001F9140  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 801FC1E4 001F9144  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 801FC1E8 001F9148  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 801FC1EC 001F914C  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 801FC1F0 001F9150  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 801FC1F4 001F9154  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 801FC1F8 001F9158  F3 81 00 D8 */	psq_st f28, 216(r1), 0, qr0
/* 801FC1FC 001F915C  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 801FC200 001F9160  F3 61 00 C8 */	psq_st f27, 200(r1), 0, qr0
/* 801FC204 001F9164  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 801FC208 001F9168  F3 41 00 B8 */	psq_st f26, 184(r1), 0, qr0
/* 801FC20C 001F916C  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 801FC210 001F9170  F3 21 00 A8 */	psq_st f25, 168(r1), 0, qr0
/* 801FC214 001F9174  BF 41 00 88 */	stmw r26, 0x88(r1)
/* 801FC218 001F9178  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801FC21C 001F917C  FF 60 08 90 */	fmr f27, f1
/* 801FC220 001F9180  7C 7A 1B 78 */	mr r26, r3
/* 801FC224 001F9184  7C 9B 23 78 */	mr r27, r4
/* 801FC228 001F9188  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FC22C 001F918C  7C BC 2B 78 */	mr r28, r5
/* 801FC230 001F9190  7C DD 33 78 */	mr r29, r6
/* 801FC234 001F9194  7C FE 3B 78 */	mr r30, r7
/* 801FC238 001F9198  7D 1F 43 78 */	mr r31, r8
/* 801FC23C 001F919C  41 82 00 1C */	beq lbl_801FC258
/* 801FC240 001F91A0  88 1A 03 28 */	lbz r0, 0x328(r26)
/* 801FC244 001F91A4  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 801FC248 001F91A8  7C 00 00 34 */	cntlzw r0, r0
/* 801FC24C 001F91AC  54 00 D9 7E */	srwi r0, r0, 5
/* 801FC250 001F91B0  90 1A 04 DC */	stw r0, 0x4dc(r26)
/* 801FC254 001F91B4  48 00 02 54 */	b lbl_801FC4A8
lbl_801FC258:
/* 801FC258 001F91B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC25C 001F91BC  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 801FC260 001F91C0  7D 89 03 A6 */	mtctr r12
/* 801FC264 001F91C4  4E 80 04 21 */	bctrl
/* 801FC268 001F91C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC26C 001F91CC  40 82 02 3C */	bne lbl_801FC4A8
/* 801FC270 001F91D0  C3 3A 06 20 */	lfs f25, 0x620(r26)
/* 801FC274 001F91D4  80 7C 09 00 */	lwz r3, 0x900(r28)
/* 801FC278 001F91D8  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FC27C 001F91DC  C0 42 AF D4 */	lfs f2, lbl_805ACCF4@sda21(r2)
/* 801FC280 001F91E0  48 11 62 C5 */	bl Range__9CRandom16Fff
/* 801FC284 001F91E4  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 801FC288 001F91E8  40 80 00 34 */	bge lbl_801FC2BC
/* 801FC28C 001F91EC  88 1A 06 A1 */	lbz r0, 0x6a1(r26)
/* 801FC290 001F91F0  38 60 00 01 */	li r3, 1
/* 801FC294 001F91F4  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801FC298 001F91F8  98 1A 06 A1 */	stb r0, 0x6a1(r26)
/* 801FC29C 001F91FC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801FC2A0 001F9200  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801FC2A4 001F9204  D0 1A 01 50 */	stfs f0, 0x150(r26)
/* 801FC2A8 001F9208  C0 03 00 04 */	lfs f0, 4(r3)
/* 801FC2AC 001F920C  D0 1A 01 54 */	stfs f0, 0x154(r26)
/* 801FC2B0 001F9210  C0 03 00 08 */	lfs f0, 8(r3)
/* 801FC2B4 001F9214  D0 1A 01 58 */	stfs f0, 0x158(r26)
/* 801FC2B8 001F9218  48 00 00 48 */	b lbl_801FC300
lbl_801FC2BC:
/* 801FC2BC 001F921C  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FC2C0 001F9220  7F 43 D3 78 */	mr r3, r26
/* 801FC2C4 001F9224  7F 84 E3 78 */	mr r4, r28
/* 801FC2C8 001F9228  38 A0 00 00 */	li r5, 0
/* 801FC2CC 001F922C  48 00 19 1D */	bl sub_801fdbe8
/* 801FC2D0 001F9230  7F 43 D3 78 */	mr r3, r26
/* 801FC2D4 001F9234  C3 3A 00 E8 */	lfs f25, 0xe8(r26)
/* 801FC2D8 001F9238  81 9A 00 00 */	lwz r12, 0(r26)
/* 801FC2DC 001F923C  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 801FC2E0 001F9240  7D 89 03 A6 */	mtctr r12
/* 801FC2E4 001F9244  4E 80 04 21 */	bctrl
/* 801FC2E8 001F9248  FC 20 08 50 */	fneg f1, f1
/* 801FC2EC 001F924C  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FC2F0 001F9250  D0 1A 01 50 */	stfs f0, 0x150(r26)
/* 801FC2F4 001F9254  EC 21 06 72 */	fmuls f1, f1, f25
/* 801FC2F8 001F9258  D0 1A 01 54 */	stfs f0, 0x154(r26)
/* 801FC2FC 001F925C  D0 3A 01 58 */	stfs f1, 0x158(r26)
lbl_801FC300:
/* 801FC300 001F9260  38 7A 04 60 */	addi r3, r26, 0x460
/* 801FC304 001F9264  38 80 00 03 */	li r4, 3
/* 801FC308 001F9268  38 A0 00 03 */	li r5, 3
/* 801FC30C 001F926C  48 03 7A 89 */	bl SetAnimationStateRange__20CKnockBackControllerF24EKnockBackAnimationState24EKnockBackAnimationState
/* 801FC310 001F9270  88 1A 03 28 */	lbz r0, 0x328(r26)
/* 801FC314 001F9274  38 60 00 00 */	li r3, 0
/* 801FC318 001F9278  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801FC31C 001F927C  7F 44 D3 78 */	mr r4, r26
/* 801FC320 001F9280  98 1A 03 28 */	stb r0, 0x328(r26)
/* 801FC324 001F9284  7F 85 E3 78 */	mr r5, r28
/* 801FC328 001F9288  38 61 00 14 */	addi r3, r1, 0x14
/* 801FC32C 001F928C  38 C0 00 0C */	li r6, 0xc
/* 801FC330 001F9290  38 E0 00 08 */	li r7, 8
/* 801FC334 001F9294  4B FF 8C 65 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 801FC338 001F9298  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 801FC33C 001F929C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FC340 001F92A0  B0 61 00 18 */	sth r3, 0x18(r1)
/* 801FC344 001F92A4  7C 03 00 40 */	cmplw r3, r0
/* 801FC348 001F92A8  41 82 00 20 */	beq lbl_801FC368
/* 801FC34C 001F92AC  B0 61 00 10 */	sth r3, 0x10(r1)
/* 801FC350 001F92B0  7F 83 E3 78 */	mr r3, r28
/* 801FC354 001F92B4  38 81 00 10 */	addi r4, r1, 0x10
/* 801FC358 001F92B8  4B E5 02 4D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801FC35C 001F92BC  7C 64 1B 78 */	mr r4, r3
/* 801FC360 001F92C0  38 61 00 24 */	addi r3, r1, 0x24
/* 801FC364 001F92C4  4B EB 39 2D */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
lbl_801FC368:
/* 801FC368 001F92C8  80 9C 08 4C */	lwz r4, 0x84c(r28)
/* 801FC36C 001F92CC  7F 85 E3 78 */	mr r5, r28
/* 801FC370 001F92D0  38 61 00 6C */	addi r3, r1, 0x6c
/* 801FC374 001F92D4  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FC378 001F92D8  81 84 00 00 */	lwz r12, 0(r4)
/* 801FC37C 001F92DC  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801FC380 001F92E0  7D 89 03 A6 */	mtctr r12
/* 801FC384 001F92E4  4E 80 04 21 */	bctrl
/* 801FC388 001F92E8  C3 81 00 6C */	lfs f28, 0x6c(r1)
/* 801FC38C 001F92EC  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801FC390 001F92F0  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 801FC394 001F92F4  38 A3 66 F4 */	addi r5, r3, sUpVector__9CVector3f@l
/* 801FC398 001F92F8  C3 C1 00 70 */	lfs f30, 0x70(r1)
/* 801FC39C 001F92FC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801FC3A0 001F9300  C0 1A 00 50 */	lfs f0, 0x50(r26)
/* 801FC3A4 001F9304  EF FC 08 28 */	fsubs f31, f28, f1
/* 801FC3A8 001F9308  C3 A1 00 74 */	lfs f29, 0x74(r1)
/* 801FC3AC 001F930C  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 801FC3B0 001F9310  C0 3A 00 60 */	lfs f1, 0x60(r26)
/* 801FC3B4 001F9314  EF 3E 00 28 */	fsubs f25, f30, f0
/* 801FC3B8 001F9318  C0 A5 00 08 */	lfs f5, 8(r5)
/* 801FC3BC 001F931C  EF 5D 08 28 */	fsubs f26, f29, f1
/* 801FC3C0 001F9320  C0 C5 00 00 */	lfs f6, 0(r5)
/* 801FC3C4 001F9324  C0 85 00 04 */	lfs f4, 4(r5)
/* 801FC3C8 001F9328  EC 05 07 F2 */	fmuls f0, f5, f31
/* 801FC3CC 001F932C  EC 66 06 72 */	fmuls f3, f6, f25
/* 801FC3D0 001F9330  C0 22 AF DC */	lfs f1, lbl_805ACCFC@sda21(r2)
/* 801FC3D4 001F9334  EC 44 06 B2 */	fmuls f2, f4, f26
/* 801FC3D8 001F9338  38 61 00 78 */	addi r3, r1, 0x78
/* 801FC3DC 001F933C  EC 7F 19 38 */	fmsubs f3, f31, f4, f3
/* 801FC3E0 001F9340  EC 1A 01 B8 */	fmsubs f0, f26, f6, f0
/* 801FC3E4 001F9344  EC 59 11 78 */	fmsubs f2, f25, f5, f2
/* 801FC3E8 001F9348  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 801FC3EC 001F934C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 801FC3F0 001F9350  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801FC3F4 001F9354  48 11 3B 71 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 801FC3F8 001F9358  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC3FC 001F935C  41 82 00 3C */	beq lbl_801FC438
/* 801FC400 001F9360  3C 60 80 5A */	lis r3, sForwardVector__9CVector3f@ha
/* 801FC404 001F9364  38 63 67 24 */	addi r3, r3, sForwardVector__9CVector3f@l
/* 801FC408 001F9368  C0 63 00 04 */	lfs f3, 4(r3)
/* 801FC40C 001F936C  C0 83 00 08 */	lfs f4, 8(r3)
/* 801FC410 001F9370  C0 A3 00 00 */	lfs f5, 0(r3)
/* 801FC414 001F9374  EC 23 06 B2 */	fmuls f1, f3, f26
/* 801FC418 001F9378  EC 04 07 F2 */	fmuls f0, f4, f31
/* 801FC41C 001F937C  EC 45 06 72 */	fmuls f2, f5, f25
/* 801FC420 001F9380  EC 39 09 38 */	fmsubs f1, f25, f4, f1
/* 801FC424 001F9384  EC 1A 01 78 */	fmsubs f0, f26, f5, f0
/* 801FC428 001F9388  EC 5F 10 F8 */	fmsubs f2, f31, f3, f2
/* 801FC42C 001F938C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 801FC430 001F9390  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801FC434 001F9394  D0 41 00 80 */	stfs f2, 0x80(r1)
lbl_801FC438:
/* 801FC438 001F9398  38 61 00 60 */	addi r3, r1, 0x60
/* 801FC43C 001F939C  38 81 00 78 */	addi r4, r1, 0x78
/* 801FC440 001F93A0  48 11 84 11 */	bl AsNormalized__9CVector3fCFv
/* 801FC444 001F93A4  80 7C 09 00 */	lwz r3, 0x900(r28)
/* 801FC448 001F93A8  C0 22 AF E0 */	lfs f1, lbl_805ACD00@sda21(r2)
/* 801FC44C 001F93AC  C0 42 AF E4 */	lfs f2, lbl_805ACD04@sda21(r2)
/* 801FC450 001F93B0  48 11 60 F5 */	bl Range__9CRandom16Fff
/* 801FC454 001F93B4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801FC458 001F93B8  7F 43 D3 78 */	mr r3, r26
/* 801FC45C 001F93BC  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 801FC460 001F93C0  38 81 00 54 */	addi r4, r1, 0x54
/* 801FC464 001F93C4  EC 81 00 32 */	fmuls f4, f1, f0
/* 801FC468 001F93C8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801FC46C 001F93CC  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801FC470 001F93D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 801FC474 001F93D4  EC 7D 20 2A */	fadds f3, f29, f4
/* 801FC478 001F93D8  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 801FC47C 001F93DC  EC 1C 10 2A */	fadds f0, f28, f2
/* 801FC480 001F93E0  EC 9E 08 2A */	fadds f4, f30, f1
/* 801FC484 001F93E4  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 801FC488 001F93E8  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 801FC48C 001F93EC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801FC490 001F93F0  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 801FC494 001F93F4  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 801FC498 001F93F8  4B E8 06 C5 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801FC49C 001F93FC  38 7A 07 A0 */	addi r3, r26, 0x7a0
/* 801FC4A0 001F9400  38 80 00 00 */	li r4, 0
/* 801FC4A4 001F9404  4B F7 8D 81 */	bl SetActive__13CBoneTrackingFb
lbl_801FC4A8:
/* 801FC4A8 001F9408  FC 20 D8 90 */	fmr f1, f27
/* 801FC4AC 001F940C  7F 43 D3 78 */	mr r3, r26
/* 801FC4B0 001F9410  7F 64 DB 78 */	mr r4, r27
/* 801FC4B4 001F9414  7F 85 E3 78 */	mr r5, r28
/* 801FC4B8 001F9418  7F A6 EB 78 */	mr r6, r29
/* 801FC4BC 001F941C  7F C7 F3 78 */	mr r7, r30
/* 801FC4C0 001F9420  7F E8 FB 78 */	mr r8, r31
/* 801FC4C4 001F9424  4B E7 E2 B9 */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 801FC4C8 001F9428  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 801FC4CC 001F942C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FC4D0 001F9430  41 82 00 D0 */	beq lbl_801FC5A0
/* 801FC4D4 001F9434  80 1A 04 64 */	lwz r0, 0x464(r26)
/* 801FC4D8 001F9438  2C 00 00 03 */	cmpwi r0, 3
/* 801FC4DC 001F943C  41 82 00 08 */	beq lbl_801FC4E4
/* 801FC4E0 001F9440  48 00 01 78 */	b lbl_801FC658
lbl_801FC4E4:
/* 801FC4E4 001F9444  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 801FC4E8 001F9448  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801FC4EC 001F944C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801FC4F0 001F9450  40 82 00 48 */	bne lbl_801FC538
/* 801FC4F4 001F9454  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 801FC4F8 001F9458  38 61 00 44 */	addi r3, r1, 0x44
/* 801FC4FC 001F945C  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 801FC500 001F9460  38 84 00 10 */	addi r4, r4, 0x10
/* 801FC504 001F9464  4B E0 87 B5 */	bl string_l__4rstlFPCc
/* 801FC508 001F9468  7F 43 D3 78 */	mr r3, r26
/* 801FC50C 001F946C  4B EA 63 ED */	bl GetStateMachine__3CAiFv
/* 801FC510 001F9470  7C 66 1B 78 */	mr r6, r3
/* 801FC514 001F9474  7F 84 E3 78 */	mr r4, r28
/* 801FC518 001F9478  7F 45 D3 78 */	mr r5, r26
/* 801FC51C 001F947C  38 7A 03 30 */	addi r3, r26, 0x330
/* 801FC520 001F9480  38 E1 00 44 */	addi r7, r1, 0x44
/* 801FC524 001F9484  4B E8 36 E1 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801FC528 001F9488  38 61 00 44 */	addi r3, r1, 0x44
/* 801FC52C 001F948C  48 14 15 B5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801FC530 001F9490  C0 1A 05 F0 */	lfs f0, 0x5f0(r26)
/* 801FC534 001F9494  D0 1A 03 40 */	stfs f0, 0x340(r26)
lbl_801FC538:
/* 801FC538 001F9498  88 1A 06 A1 */	lbz r0, 0x6a1(r26)
/* 801FC53C 001F949C  38 A0 00 00 */	li r5, 0
/* 801FC540 001F94A0  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 801FC544 001F94A4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801FC548 001F94A8  98 1A 06 A1 */	stb r0, 0x6a1(r26)
/* 801FC54C 001F94AC  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 801FC550 001F94B0  80 02 C6 00 */	lwz r0, lbl_805AE320@sda21(r2)
/* 801FC554 001F94B4  38 61 00 20 */	addi r3, r1, 0x20
/* 801FC558 001F94B8  88 9A 03 28 */	lbz r4, 0x328(r26)
/* 801FC55C 001F94BC  50 A4 36 72 */	rlwimi r4, r5, 6, 0x19, 0x19
/* 801FC560 001F94C0  A9 42 C5 FA */	lha r10, lbl_805AE31A@sda21(r2)
/* 801FC564 001F94C4  38 A1 00 38 */	addi r5, r1, 0x38
/* 801FC568 001F94C8  98 9A 03 28 */	stb r4, 0x328(r26)
/* 801FC56C 001F94CC  38 E0 00 7F */	li r7, 0x7f
/* 801FC570 001F94D0  39 00 00 01 */	li r8, 1
/* 801FC574 001F94D4  39 20 00 00 */	li r9, 0
/* 801FC578 001F94D8  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 801FC57C 001F94DC  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 801FC580 001F94E0  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 801FC584 001F94E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801FC588 001F94E8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801FC58C 001F94EC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801FC590 001F94F0  90 01 00 08 */	stw r0, 8(r1)
/* 801FC594 001F94F4  A0 9A 06 4C */	lhz r4, 0x64c(r26)
/* 801FC598 001F94F8  48 0E DC 21 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fUcbbsi
/* 801FC59C 001F94FC  48 00 00 BC */	b lbl_801FC658
lbl_801FC5A0:
/* 801FC5A0 001F9500  80 1A 04 64 */	lwz r0, 0x464(r26)
/* 801FC5A4 001F9504  2C 00 00 03 */	cmpwi r0, 3
/* 801FC5A8 001F9508  41 82 00 08 */	beq lbl_801FC5B0
/* 801FC5AC 001F950C  48 00 00 AC */	b lbl_801FC658
lbl_801FC5B0:
/* 801FC5B0 001F9510  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 801FC5B4 001F9514  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801FC5B8 001F9518  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 801FC5BC 001F951C  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 801FC5C0 001F9520  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 801FC5C4 001F9524  38 61 00 1C */	addi r3, r1, 0x1c
/* 801FC5C8 001F9528  80 02 C6 00 */	lwz r0, lbl_805AE320@sda21(r2)
/* 801FC5CC 001F952C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801FC5D0 001F9530  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801FC5D4 001F9534  38 E0 00 7F */	li r7, 0x7f
/* 801FC5D8 001F9538  A9 42 C5 FA */	lha r10, lbl_805AE31A@sda21(r2)
/* 801FC5DC 001F953C  39 00 00 01 */	li r8, 1
/* 801FC5E0 001F9540  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801FC5E4 001F9544  39 20 00 00 */	li r9, 0
/* 801FC5E8 001F9548  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801FC5EC 001F954C  90 01 00 08 */	stw r0, 8(r1)
/* 801FC5F0 001F9550  A0 9A 06 4E */	lhz r4, 0x64e(r26)
/* 801FC5F4 001F9554  48 0E DB C5 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fUcbbsi
/* 801FC5F8 001F9558  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 801FC5FC 001F955C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801FC600 001F9560  41 82 00 58 */	beq lbl_801FC658
/* 801FC604 001F9564  88 1A 06 A1 */	lbz r0, 0x6a1(r26)
/* 801FC608 001F9568  38 60 00 00 */	li r3, 0
/* 801FC60C 001F956C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801FC610 001F9570  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FC614 001F9574  98 1A 06 A1 */	stb r0, 0x6a1(r26)
/* 801FC618 001F9578  7F 43 D3 78 */	mr r3, r26
/* 801FC61C 001F957C  7F 84 E3 78 */	mr r4, r28
/* 801FC620 001F9580  38 A0 00 00 */	li r5, 0
/* 801FC624 001F9584  48 00 15 C5 */	bl sub_801fdbe8
/* 801FC628 001F9588  7F 43 D3 78 */	mr r3, r26
/* 801FC62C 001F958C  C3 3A 00 E8 */	lfs f25, 0xe8(r26)
/* 801FC630 001F9590  81 9A 00 00 */	lwz r12, 0(r26)
/* 801FC634 001F9594  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 801FC638 001F9598  7D 89 03 A6 */	mtctr r12
/* 801FC63C 001F959C  4E 80 04 21 */	bctrl
/* 801FC640 001F95A0  FC 20 08 50 */	fneg f1, f1
/* 801FC644 001F95A4  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FC648 001F95A8  D0 1A 01 50 */	stfs f0, 0x150(r26)
/* 801FC64C 001F95AC  EC 21 06 72 */	fmuls f1, f1, f25
/* 801FC650 001F95B0  D0 1A 01 54 */	stfs f0, 0x154(r26)
/* 801FC654 001F95B4  D0 3A 01 58 */	stfs f1, 0x158(r26)
lbl_801FC658:
/* 801FC658 001F95B8  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 801FC65C 001F95BC  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 801FC660 001F95C0  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 801FC664 001F95C4  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 801FC668 001F95C8  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 801FC66C 001F95CC  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 801FC670 001F95D0  E3 81 00 D8 */	psq_l f28, 216(r1), 0, qr0
/* 801FC674 001F95D4  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 801FC678 001F95D8  E3 61 00 C8 */	psq_l f27, 200(r1), 0, qr0
/* 801FC67C 001F95DC  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 801FC680 001F95E0  E3 41 00 B8 */	psq_l f26, 184(r1), 0, qr0
/* 801FC684 001F95E4  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 801FC688 001F95E8  E3 21 00 A8 */	psq_l f25, 168(r1), 0, qr0
/* 801FC68C 001F95EC  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 801FC690 001F95F0  BB 41 00 88 */	lmw r26, 0x88(r1)
/* 801FC694 001F95F4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801FC698 001F95F8  7C 08 03 A6 */	mtlr r0
/* 801FC69C 001F95FC  38 21 01 10 */	addi r1, r1, 0x110
/* 801FC6A0 001F9600  4E 80 00 20 */	blr

.global CanFireMissiles__13CFlyingPirateFR13CStateManager
CanFireMissiles__13CFlyingPirateFR13CStateManager:
/* 801FC6A4 001F9604  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 801FC6A8 001F9608  7C 08 02 A6 */	mflr r0
/* 801FC6AC 001F960C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801FC6B0 001F9610  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 801FC6B4 001F9614  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 801FC6B8 001F9618  BF 61 00 AC */	stmw r27, 0xac(r1)
/* 801FC6BC 001F961C  7C 7B 1B 78 */	mr r27, r3
/* 801FC6C0 001F9620  C3 E2 AF 7C */	lfs f31, lbl_805ACC9C@sda21(r2)
/* 801FC6C4 001F9624  7C 9C 23 78 */	mr r28, r4
/* 801FC6C8 001F9628  3B C0 00 01 */	li r30, 1
/* 801FC6CC 001F962C  3B FB 08 68 */	addi r31, r27, 0x868
/* 801FC6D0 001F9630  3B A0 00 00 */	li r29, 0
lbl_801FC6D4:
/* 801FC6D4 001F9634  7F 64 DB 78 */	mr r4, r27
/* 801FC6D8 001F9638  7F E5 FB 78 */	mr r5, r31
/* 801FC6DC 001F963C  38 61 00 3C */	addi r3, r1, 0x3c
/* 801FC6E0 001F9640  4B E7 C1 D9 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801FC6E4 001F9644  38 61 00 6C */	addi r3, r1, 0x6c
/* 801FC6E8 001F9648  38 81 00 3C */	addi r4, r1, 0x3c
/* 801FC6EC 001F964C  48 11 64 89 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801FC6F0 001F9650  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 801FC6F4 001F9654  38 00 00 00 */	li r0, 0
/* 801FC6F8 001F9658  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 801FC6FC 001F965C  38 60 00 00 */	li r3, 0
/* 801FC700 001F9660  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 801FC704 001F9664  EC 9F 00 B2 */	fmuls f4, f31, f2
/* 801FC708 001F9668  C0 A1 00 88 */	lfs f5, 0x88(r1)
/* 801FC70C 001F966C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801FC710 001F9670  EC 5F 00 72 */	fmuls f2, f31, f1
/* 801FC714 001F9674  C0 61 00 98 */	lfs f3, 0x98(r1)
/* 801FC718 001F9678  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 801FC71C 001F967C  EC 85 20 2A */	fadds f4, f5, f4
/* 801FC720 001F9680  80 AD 92 FC */	lwz r5, lbl_805A7EBC@sda21(r13)
/* 801FC724 001F9684  EC 43 10 2A */	fadds f2, f3, f2
/* 801FC728 001F9688  EC 01 00 2A */	fadds f0, f1, f0
/* 801FC72C 001F968C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC730 001F9690  38 80 00 01 */	li r4, 1
/* 801FC734 001F9694  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 801FC738 001F9698  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801FC73C 001F969C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801FC740 001F96A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FC744 001F96A4  48 18 D7 B1 */	bl __shl2i
/* 801FC748 001F96A8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801FC74C 001F96AC  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 801FC750 001F96B0  7C 00 1B 78 */	or r0, r0, r3
/* 801FC754 001F96B4  80 AD 93 00 */	lwz r5, lbl_805A7EC0@sda21(r13)
/* 801FC758 001F96B8  7C C4 23 78 */	or r4, r6, r4
/* 801FC75C 001F96BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FC760 001F96C0  38 60 00 00 */	li r3, 0
/* 801FC764 001F96C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 801FC768 001F96C8  38 80 00 01 */	li r4, 1
/* 801FC76C 001F96CC  48 18 D7 89 */	bl __shl2i
/* 801FC770 001F96D0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801FC774 001F96D4  38 A1 00 24 */	addi r5, r1, 0x24
/* 801FC778 001F96D8  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 801FC77C 001F96DC  38 C1 00 30 */	addi r6, r1, 0x30
/* 801FC780 001F96E0  7C 00 1B 78 */	or r0, r0, r3
/* 801FC784 001F96E4  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 801FC788 001F96E8  7C E4 23 78 */	or r4, r7, r4
/* 801FC78C 001F96EC  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 801FC790 001F96F0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 801FC794 001F96F4  7F 63 DB 78 */	mr r3, r27
/* 801FC798 001F96F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 801FC79C 001F96FC  7F 84 E3 78 */	mr r4, r28
/* 801FC7A0 001F9700  38 E1 00 10 */	addi r7, r1, 0x10
/* 801FC7A4 001F9704  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FC7A8 001F9708  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801FC7AC 001F970C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801FC7B0 001F9710  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801FC7B4 001F9714  48 00 0C 11 */	bl LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801FC7B8 001F9718  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC7BC 001F971C  41 82 00 90 */	beq lbl_801FC84C
/* 801FC7C0 001F9720  38 00 00 00 */	li r0, 0
/* 801FC7C4 001F9724  80 AD 93 04 */	lwz r5, lbl_805A7EC4@sda21(r13)
/* 801FC7C8 001F9728  90 01 00 0C */	stw r0, 0xc(r1)
/* 801FC7CC 001F972C  38 60 00 00 */	li r3, 0
/* 801FC7D0 001F9730  38 80 00 01 */	li r4, 1
/* 801FC7D4 001F9734  90 01 00 08 */	stw r0, 8(r1)
/* 801FC7D8 001F9738  48 18 D7 1D */	bl __shl2i
/* 801FC7DC 001F973C  80 01 00 08 */	lwz r0, 8(r1)
/* 801FC7E0 001F9740  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 801FC7E4 001F9744  7C 00 1B 78 */	or r0, r0, r3
/* 801FC7E8 001F9748  80 AD 93 08 */	lwz r5, lbl_805A7EC8@sda21(r13)
/* 801FC7EC 001F974C  7C C4 23 78 */	or r4, r6, r4
/* 801FC7F0 001F9750  90 01 00 08 */	stw r0, 8(r1)
/* 801FC7F4 001F9754  38 60 00 00 */	li r3, 0
/* 801FC7F8 001F9758  90 81 00 0C */	stw r4, 0xc(r1)
/* 801FC7FC 001F975C  38 80 00 01 */	li r4, 1
/* 801FC800 001F9760  48 18 D6 F5 */	bl __shl2i
/* 801FC804 001F9764  80 01 00 08 */	lwz r0, 8(r1)
/* 801FC808 001F9768  7F 85 E3 78 */	mr r5, r28
/* 801FC80C 001F976C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 801FC810 001F9770  7C 00 1B 78 */	or r0, r0, r3
/* 801FC814 001F9774  38 61 00 18 */	addi r3, r1, 0x18
/* 801FC818 001F9778  7C C6 23 78 */	or r6, r6, r4
/* 801FC81C 001F977C  90 01 00 08 */	stw r0, 8(r1)
/* 801FC820 001F9780  7F 64 DB 78 */	mr r4, r27
/* 801FC824 001F9784  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801FC828 001F9788  48 00 00 6D */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801FC82C 001F978C  7F 63 DB 78 */	mr r3, r27
/* 801FC830 001F9790  7F 84 E3 78 */	mr r4, r28
/* 801FC834 001F9794  38 A1 00 30 */	addi r5, r1, 0x30
/* 801FC838 001F9798  38 C1 00 18 */	addi r6, r1, 0x18
/* 801FC83C 001F979C  38 E1 00 08 */	addi r7, r1, 8
/* 801FC840 001F97A0  48 00 0B 85 */	bl LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801FC844 001F97A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC848 001F97A8  40 82 00 1C */	bne lbl_801FC864
lbl_801FC84C:
/* 801FC84C 001F97AC  88 1B 06 A1 */	lbz r0, 0x6a1(r27)
/* 801FC850 001F97B0  38 60 00 01 */	li r3, 1
/* 801FC854 001F97B4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801FC858 001F97B8  3B C0 00 00 */	li r30, 0
/* 801FC85C 001F97BC  98 1B 06 A1 */	stb r0, 0x6a1(r27)
/* 801FC860 001F97C0  48 00 00 14 */	b lbl_801FC874
lbl_801FC864:
/* 801FC864 001F97C4  3B BD 00 01 */	addi r29, r29, 1
/* 801FC868 001F97C8  3B FF 00 01 */	addi r31, r31, 1
/* 801FC86C 001F97CC  2C 1D 00 02 */	cmpwi r29, 2
/* 801FC870 001F97D0  41 80 FE 64 */	blt lbl_801FC6D4
lbl_801FC874:
/* 801FC874 001F97D4  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 801FC878 001F97D8  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 801FC87C 001F97DC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 801FC880 001F97E0  BB 61 00 AC */	lmw r27, 0xac(r1)
/* 801FC884 001F97E4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801FC888 001F97E8  7C 08 03 A6 */	mtlr r0
/* 801FC88C 001F97EC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 801FC890 001F97F0  4E 80 00 20 */	blr

.global GetTargetPos__13CFlyingPirateFR13CStateManager
GetTargetPos__13CFlyingPirateFR13CStateManager:
/* 801FC894 001F97F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801FC898 001F97F8  7C 08 02 A6 */	mflr r0
/* 801FC89C 001F97FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FC8A0 001F9800  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801FC8A4 001F9804  7C BF 2B 78 */	mr r31, r5
/* 801FC8A8 001F9808  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801FC8AC 001F980C  7C 9E 23 78 */	mr r30, r4
/* 801FC8B0 001F9810  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801FC8B4 001F9814  7C 7D 1B 78 */	mr r29, r3
/* 801FC8B8 001F9818  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 801FC8BC 001F981C  A0 7E 07 E8 */	lhz r3, 0x7e8(r30)
/* 801FC8C0 001F9820  A0 04 00 08 */	lhz r0, 8(r4)
/* 801FC8C4 001F9824  7C 03 00 40 */	cmplw r3, r0
/* 801FC8C8 001F9828  41 82 00 80 */	beq lbl_801FC948
/* 801FC8CC 001F982C  A0 1E 07 E8 */	lhz r0, 0x7e8(r30)
/* 801FC8D0 001F9830  7F E3 FB 78 */	mr r3, r31
/* 801FC8D4 001F9834  38 81 00 10 */	addi r4, r1, 0x10
/* 801FC8D8 001F9838  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801FC8DC 001F983C  4B E4 FC C9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801FC8E0 001F9840  7C 64 1B 78 */	mr r4, r3
/* 801FC8E4 001F9844  38 61 00 14 */	addi r3, r1, 0x14
/* 801FC8E8 001F9848  4B EB 33 A9 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801FC8EC 001F984C  80 63 00 04 */	lwz r3, 4(r3)
/* 801FC8F0 001F9850  28 03 00 00 */	cmplwi r3, 0
/* 801FC8F4 001F9854  41 82 00 2C */	beq lbl_801FC920
/* 801FC8F8 001F9858  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801FC8FC 001F985C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801FC900 001F9860  41 82 00 20 */	beq lbl_801FC920
/* 801FC904 001F9864  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801FC908 001F9868  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801FC90C 001F986C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801FC910 001F9870  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801FC914 001F9874  D0 3D 00 04 */	stfs f1, 4(r29)
/* 801FC918 001F9878  D0 5D 00 08 */	stfs f2, 8(r29)
/* 801FC91C 001F987C  48 00 00 4C */	b lbl_801FC968
lbl_801FC920:
/* 801FC920 001F9880  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801FC924 001F9884  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 801FC928 001F9888  38 81 00 0C */	addi r4, r1, 0xc
/* 801FC92C 001F988C  A0 05 00 08 */	lhz r0, 8(r5)
/* 801FC930 001F9890  B0 01 00 08 */	sth r0, 8(r1)
/* 801FC934 001F9894  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801FC938 001F9898  4B F7 88 E1 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 801FC93C 001F989C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801FC940 001F98A0  A0 03 00 08 */	lhz r0, 8(r3)
/* 801FC944 001F98A4  B0 1E 07 E8 */	sth r0, 0x7e8(r30)
lbl_801FC948:
/* 801FC948 001F98A8  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801FC94C 001F98AC  7F A3 EB 78 */	mr r3, r29
/* 801FC950 001F98B0  7F E5 FB 78 */	mr r5, r31
/* 801FC954 001F98B4  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FC958 001F98B8  81 84 00 00 */	lwz r12, 0(r4)
/* 801FC95C 001F98BC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801FC960 001F98C0  7D 89 03 A6 */	mtctr r12
/* 801FC964 001F98C4  4E 80 04 21 */	bctrl
lbl_801FC968:
/* 801FC968 001F98C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801FC96C 001F98CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801FC970 001F98D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801FC974 001F98D4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801FC978 001F98D8  7C 08 03 A6 */	mtlr r0
/* 801FC97C 001F98DC  38 21 00 30 */	addi r1, r1, 0x30
/* 801FC980 001F98E0  4E 80 00 20 */	blr

.global GetDodgeDirection__13CFlyingPirateFR13CStateManagerf
GetDodgeDirection__13CFlyingPirateFR13CStateManagerf:
/* 801FC984 001F98E4  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 801FC988 001F98E8  7C 08 02 A6 */	mflr r0
/* 801FC98C 001F98EC  90 01 01 74 */	stw r0, 0x174(r1)
/* 801FC990 001F98F0  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 801FC994 001F98F4  F3 E1 01 68 */	psq_st f31, 360(r1), 0, qr0
/* 801FC998 001F98F8  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 801FC99C 001F98FC  F3 C1 01 58 */	psq_st f30, 344(r1), 0, qr0
/* 801FC9A0 001F9900  BE E1 01 2C */	stmw r23, 0x12c(r1)
/* 801FC9A4 001F9904  FF C0 08 90 */	fmr f30, f1
/* 801FC9A8 001F9908  83 04 08 38 */	lwz r24, 0x838(r4)
/* 801FC9AC 001F990C  7C 9A 23 78 */	mr r26, r4
/* 801FC9B0 001F9910  7C 79 1B 78 */	mr r25, r3
/* 801FC9B4 001F9914  AA F8 20 08 */	lha r23, 0x2008(r24)
/* 801FC9B8 001F9918  3B E0 00 01 */	li r31, 1
/* 801FC9BC 001F991C  EF FE 07 B2 */	fmuls f31, f30, f30
/* 801FC9C0 001F9920  3B C0 00 01 */	li r30, 1
/* 801FC9C4 001F9924  3B A0 00 01 */	li r29, 1
/* 801FC9C8 001F9928  3B 80 00 01 */	li r28, 1
/* 801FC9CC 001F992C  3B 60 FF FF */	li r27, -1
/* 801FC9D0 001F9930  48 00 01 94 */	b lbl_801FCB64
lbl_801FC9D4:
/* 801FC9D4 001F9934  7F 03 C3 78 */	mr r3, r24
/* 801FC9D8 001F9938  7E E4 BB 78 */	mr r4, r23
/* 801FC9DC 001F993C  4B E1 33 01 */	bl __vc__11CObjectListCFi
/* 801FC9E0 001F9940  7C 64 1B 78 */	mr r4, r3
/* 801FC9E4 001F9944  38 61 00 08 */	addi r3, r1, 8
/* 801FC9E8 001F9948  4B EA FC FD */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 801FC9EC 001F994C  80 83 00 04 */	lwz r4, 4(r3)
/* 801FC9F0 001F9950  28 04 00 00 */	cmplwi r4, 0
/* 801FC9F4 001F9954  41 82 01 54 */	beq lbl_801FCB48
/* 801FC9F8 001F9958  7C 04 C8 40 */	cmplw r4, r25
/* 801FC9FC 001F995C  41 82 01 4C */	beq lbl_801FCB48
/* 801FCA00 001F9960  80 64 00 04 */	lwz r3, 4(r4)
/* 801FCA04 001F9964  80 19 00 04 */	lwz r0, 4(r25)
/* 801FCA08 001F9968  7C 03 00 00 */	cmpw r3, r0
/* 801FCA0C 001F996C  40 82 01 3C */	bne lbl_801FCB48
/* 801FCA10 001F9970  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801FCA14 001F9974  C0 19 00 50 */	lfs f0, 0x50(r25)
/* 801FCA18 001F9978  C0 64 00 40 */	lfs f3, 0x40(r4)
/* 801FCA1C 001F997C  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FCA20 001F9980  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 801FCA24 001F9984  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801FCA28 001F9988  EC A3 00 28 */	fsubs f5, f3, f0
/* 801FCA2C 001F998C  C0 39 00 60 */	lfs f1, 0x60(r25)
/* 801FCA30 001F9990  EC 04 01 32 */	fmuls f0, f4, f4
/* 801FCA34 001F9994  EC 62 08 28 */	fsubs f3, f2, f1
/* 801FCA38 001F9998  EC 05 01 7A */	fmadds f0, f5, f5, f0
/* 801FCA3C 001F999C  ED 03 00 FA */	fmadds f8, f3, f3, f0
/* 801FCA40 001F99A0  FC 08 F8 40 */	fcmpo cr0, f8, f31
/* 801FCA44 001F99A4  40 80 01 04 */	bge lbl_801FCB48
/* 801FCA48 001F99A8  C0 D9 00 44 */	lfs f6, 0x44(r25)
/* 801FCA4C 001F99AC  C0 59 00 34 */	lfs f2, 0x34(r25)
/* 801FCA50 001F99B0  EC 24 01 B2 */	fmuls f1, f4, f6
/* 801FCA54 001F99B4  C0 F9 00 54 */	lfs f7, 0x54(r25)
/* 801FCA58 001F99B8  C0 02 AF E8 */	lfs f0, lbl_805ACD08@sda21(r2)
/* 801FCA5C 001F99BC  D0 41 00 F0 */	stfs f2, 0xf0(r1)
/* 801FCA60 001F99C0  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 801FCA64 001F99C4  ED 20 02 32 */	fmuls f9, f0, f8
/* 801FCA68 001F99C8  D0 C1 00 F4 */	stfs f6, 0xf4(r1)
/* 801FCA6C 001F99CC  EC 43 09 FA */	fmadds f2, f3, f7, f1
/* 801FCA70 001F99D0  D0 E1 00 F8 */	stfs f7, 0xf8(r1)
/* 801FCA74 001F99D4  FC 02 48 40 */	fcmpo cr0, f2, f9
/* 801FCA78 001F99D8  41 81 00 1C */	bgt lbl_801FCA94
/* 801FCA7C 001F99DC  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FCA80 001F99E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801FCA84 001F99E4  40 81 00 18 */	ble lbl_801FCA9C
/* 801FCA88 001F99E8  C0 02 AF 7C */	lfs f0, lbl_805ACC9C@sda21(r2)
/* 801FCA8C 001F99EC  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 801FCA90 001F99F0  40 80 00 0C */	bge lbl_801FCA9C
lbl_801FCA94:
/* 801FCA94 001F99F4  3B C0 00 00 */	li r30, 0
/* 801FCA98 001F99F8  48 00 00 34 */	b lbl_801FCACC
lbl_801FCA9C:
/* 801FCA9C 001F99FC  FC 00 40 50 */	fneg f0, f8
/* 801FCAA0 001F9A00  C0 22 AF E8 */	lfs f1, lbl_805ACD08@sda21(r2)
/* 801FCAA4 001F9A04  EC 01 00 32 */	fmuls f0, f1, f0
/* 801FCAA8 001F9A08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801FCAAC 001F9A0C  41 80 00 1C */	blt lbl_801FCAC8
/* 801FCAB0 001F9A10  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FCAB4 001F9A14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801FCAB8 001F9A18  40 80 00 14 */	bge lbl_801FCACC
/* 801FCABC 001F9A1C  C0 02 AF 7C */	lfs f0, lbl_805ACC9C@sda21(r2)
/* 801FCAC0 001F9A20  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 801FCAC4 001F9A24  40 80 00 08 */	bge lbl_801FCACC
lbl_801FCAC8:
/* 801FCAC8 001F9A28  3B E0 00 00 */	li r31, 0
lbl_801FCACC:
/* 801FCACC 001F9A2C  C0 59 00 4C */	lfs f2, 0x4c(r25)
/* 801FCAD0 001F9A30  C0 39 00 3C */	lfs f1, 0x3c(r25)
/* 801FCAD4 001F9A34  EC 04 00 B2 */	fmuls f0, f4, f2
/* 801FCAD8 001F9A38  C0 99 00 5C */	lfs f4, 0x5c(r25)
/* 801FCADC 001F9A3C  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 801FCAE0 001F9A40  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 801FCAE4 001F9A44  D0 41 00 E8 */	stfs f2, 0xe8(r1)
/* 801FCAE8 001F9A48  D0 81 00 EC */	stfs f4, 0xec(r1)
/* 801FCAEC 001F9A4C  EC 43 01 3A */	fmadds f2, f3, f4, f0
/* 801FCAF0 001F9A50  FC 02 48 40 */	fcmpo cr0, f2, f9
/* 801FCAF4 001F9A54  41 81 00 1C */	bgt lbl_801FCB10
/* 801FCAF8 001F9A58  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FCAFC 001F9A5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801FCB00 001F9A60  40 81 00 18 */	ble lbl_801FCB18
/* 801FCB04 001F9A64  C0 02 AF 7C */	lfs f0, lbl_805ACC9C@sda21(r2)
/* 801FCB08 001F9A68  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 801FCB0C 001F9A6C  40 80 00 0C */	bge lbl_801FCB18
lbl_801FCB10:
/* 801FCB10 001F9A70  3B A0 00 00 */	li r29, 0
/* 801FCB14 001F9A74  48 00 00 34 */	b lbl_801FCB48
lbl_801FCB18:
/* 801FCB18 001F9A78  FC 00 40 50 */	fneg f0, f8
/* 801FCB1C 001F9A7C  C0 22 AF E8 */	lfs f1, lbl_805ACD08@sda21(r2)
/* 801FCB20 001F9A80  EC 01 00 32 */	fmuls f0, f1, f0
/* 801FCB24 001F9A84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801FCB28 001F9A88  41 80 00 1C */	blt lbl_801FCB44
/* 801FCB2C 001F9A8C  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FCB30 001F9A90  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801FCB34 001F9A94  40 80 00 14 */	bge lbl_801FCB48
/* 801FCB38 001F9A98  C0 02 AF 7C */	lfs f0, lbl_805ACC9C@sda21(r2)
/* 801FCB3C 001F9A9C  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 801FCB40 001F9AA0  40 80 00 08 */	bge lbl_801FCB48
lbl_801FCB44:
/* 801FCB44 001F9AA4  3B 80 00 00 */	li r28, 0
lbl_801FCB48:
/* 801FCB48 001F9AA8  2C 17 FF FF */	cmpwi r23, -1
/* 801FCB4C 001F9AAC  41 82 00 14 */	beq lbl_801FCB60
/* 801FCB50 001F9AB0  56 E3 18 38 */	slwi r3, r23, 3
/* 801FCB54 001F9AB4  38 03 00 08 */	addi r0, r3, 8
/* 801FCB58 001F9AB8  7E F8 02 AE */	lhax r23, r24, r0
/* 801FCB5C 001F9ABC  48 00 00 08 */	b lbl_801FCB64
lbl_801FCB60:
/* 801FCB60 001F9AC0  3A E0 FF FF */	li r23, -1
lbl_801FCB64:
/* 801FCB64 001F9AC4  2C 17 FF FF */	cmpwi r23, -1
/* 801FCB68 001F9AC8  40 82 FE 6C */	bne lbl_801FC9D4
/* 801FCB6C 001F9ACC  7F 24 CB 78 */	mr r4, r25
/* 801FCB70 001F9AD0  38 61 01 08 */	addi r3, r1, 0x108
/* 801FCB74 001F9AD4  4B F1 DD B9 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801FCB78 001F9AD8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801FCB7C 001F9ADC  38 81 01 08 */	addi r4, r1, 0x108
/* 801FCB80 001F9AE0  48 13 AA 8D */	bl GetCenterPoint__6CAABoxCFv
/* 801FCB84 001F9AE4  C0 81 00 D8 */	lfs f4, 0xd8(r1)
/* 801FCB88 001F9AE8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801FCB8C 001F9AEC  C0 61 00 DC */	lfs f3, 0xdc(r1)
/* 801FCB90 001F9AF0  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 801FCB94 001F9AF4  D0 81 00 FC */	stfs f4, 0xfc(r1)
/* 801FCB98 001F9AF8  D0 61 01 00 */	stfs f3, 0x100(r1)
/* 801FCB9C 001F9AFC  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 801FCBA0 001F9B00  41 82 00 7C */	beq lbl_801FCC1C
/* 801FCBA4 001F9B04  38 00 00 00 */	li r0, 0
/* 801FCBA8 001F9B08  7F 23 CB 78 */	mr r3, r25
/* 801FCBAC 001F9B0C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801FCBB0 001F9B10  7F 44 D3 78 */	mr r4, r26
/* 801FCBB4 001F9B14  38 A1 00 FC */	addi r5, r1, 0xfc
/* 801FCBB8 001F9B18  38 C1 00 CC */	addi r6, r1, 0xcc
/* 801FCBBC 001F9B1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 801FCBC0 001F9B20  38 E1 00 28 */	addi r7, r1, 0x28
/* 801FCBC4 001F9B24  C0 F9 00 54 */	lfs f7, 0x54(r25)
/* 801FCBC8 001F9B28  C0 39 00 44 */	lfs f1, 0x44(r25)
/* 801FCBCC 001F9B2C  C0 19 00 34 */	lfs f0, 0x34(r25)
/* 801FCBD0 001F9B30  EC BE 01 F2 */	fmuls f5, f30, f7
/* 801FCBD4 001F9B34  EC DE 00 72 */	fmuls f6, f30, f1
/* 801FCBD8 001F9B38  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 801FCBDC 001F9B3C  EC 3E 00 32 */	fmuls f1, f30, f0
/* 801FCBE0 001F9B40  EC 42 28 2A */	fadds f2, f2, f5
/* 801FCBE4 001F9B44  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801FCBE8 001F9B48  EC 63 30 2A */	fadds f3, f3, f6
/* 801FCBEC 001F9B4C  EC 04 08 2A */	fadds f0, f4, f1
/* 801FCBF0 001F9B50  D0 E1 00 BC */	stfs f7, 0xbc(r1)
/* 801FCBF4 001F9B54  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 801FCBF8 001F9B58  D0 C1 00 C4 */	stfs f6, 0xc4(r1)
/* 801FCBFC 001F9B5C  D0 A1 00 C8 */	stfs f5, 0xc8(r1)
/* 801FCC00 001F9B60  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 801FCC04 001F9B64  D0 61 00 D0 */	stfs f3, 0xd0(r1)
/* 801FCC08 001F9B68  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 801FCC0C 001F9B6C  48 00 07 B9 */	bl LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801FCC10 001F9B70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FCC14 001F9B74  40 82 00 08 */	bne lbl_801FCC1C
/* 801FCC18 001F9B78  3B C0 00 00 */	li r30, 0
lbl_801FCC1C:
/* 801FCC1C 001F9B7C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801FCC20 001F9B80  41 82 00 88 */	beq lbl_801FCCA8
/* 801FCC24 001F9B84  38 00 00 00 */	li r0, 0
/* 801FCC28 001F9B88  C0 41 01 00 */	lfs f2, 0x100(r1)
/* 801FCC2C 001F9B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FCC30 001F9B90  7F 23 CB 78 */	mr r3, r25
/* 801FCC34 001F9B94  C0 21 01 04 */	lfs f1, 0x104(r1)
/* 801FCC38 001F9B98  7F 44 D3 78 */	mr r4, r26
/* 801FCC3C 001F9B9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801FCC40 001F9BA0  38 A1 00 FC */	addi r5, r1, 0xfc
/* 801FCC44 001F9BA4  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 801FCC48 001F9BA8  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 801FCC4C 001F9BAC  C0 F9 00 54 */	lfs f7, 0x54(r25)
/* 801FCC50 001F9BB0  38 E1 00 20 */	addi r7, r1, 0x20
/* 801FCC54 001F9BB4  C0 79 00 44 */	lfs f3, 0x44(r25)
/* 801FCC58 001F9BB8  C0 99 00 34 */	lfs f4, 0x34(r25)
/* 801FCC5C 001F9BBC  EC BE 01 F2 */	fmuls f5, f30, f7
/* 801FCC60 001F9BC0  EC DE 00 F2 */	fmuls f6, f30, f3
/* 801FCC64 001F9BC4  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 801FCC68 001F9BC8  EC 7E 01 32 */	fmuls f3, f30, f4
/* 801FCC6C 001F9BCC  EC 21 28 28 */	fsubs f1, f1, f5
/* 801FCC70 001F9BD0  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 801FCC74 001F9BD4  EC 42 30 28 */	fsubs f2, f2, f6
/* 801FCC78 001F9BD8  EC 00 18 28 */	fsubs f0, f0, f3
/* 801FCC7C 001F9BDC  D0 E1 00 98 */	stfs f7, 0x98(r1)
/* 801FCC80 001F9BE0  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 801FCC84 001F9BE4  D0 C1 00 A0 */	stfs f6, 0xa0(r1)
/* 801FCC88 001F9BE8  D0 A1 00 A4 */	stfs f5, 0xa4(r1)
/* 801FCC8C 001F9BEC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801FCC90 001F9BF0  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 801FCC94 001F9BF4  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 801FCC98 001F9BF8  48 00 07 2D */	bl LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801FCC9C 001F9BFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FCCA0 001F9C00  40 82 00 08 */	bne lbl_801FCCA8
/* 801FCCA4 001F9C04  3B E0 00 00 */	li r31, 0
lbl_801FCCA8:
/* 801FCCA8 001F9C08  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801FCCAC 001F9C0C  41 82 00 88 */	beq lbl_801FCD34
/* 801FCCB0 001F9C10  38 00 00 00 */	li r0, 0
/* 801FCCB4 001F9C14  C0 41 01 00 */	lfs f2, 0x100(r1)
/* 801FCCB8 001F9C18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801FCCBC 001F9C1C  7F 23 CB 78 */	mr r3, r25
/* 801FCCC0 001F9C20  C0 21 01 04 */	lfs f1, 0x104(r1)
/* 801FCCC4 001F9C24  7F 44 D3 78 */	mr r4, r26
/* 801FCCC8 001F9C28  90 01 00 18 */	stw r0, 0x18(r1)
/* 801FCCCC 001F9C2C  38 A1 00 FC */	addi r5, r1, 0xfc
/* 801FCCD0 001F9C30  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 801FCCD4 001F9C34  38 C1 00 84 */	addi r6, r1, 0x84
/* 801FCCD8 001F9C38  C0 F9 00 5C */	lfs f7, 0x5c(r25)
/* 801FCCDC 001F9C3C  38 E1 00 18 */	addi r7, r1, 0x18
/* 801FCCE0 001F9C40  C0 79 00 4C */	lfs f3, 0x4c(r25)
/* 801FCCE4 001F9C44  C0 99 00 3C */	lfs f4, 0x3c(r25)
/* 801FCCE8 001F9C48  EC BE 01 F2 */	fmuls f5, f30, f7
/* 801FCCEC 001F9C4C  EC DE 00 F2 */	fmuls f6, f30, f3
/* 801FCCF0 001F9C50  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 801FCCF4 001F9C54  EC 7E 01 32 */	fmuls f3, f30, f4
/* 801FCCF8 001F9C58  EC 21 28 2A */	fadds f1, f1, f5
/* 801FCCFC 001F9C5C  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 801FCD00 001F9C60  EC 42 30 2A */	fadds f2, f2, f6
/* 801FCD04 001F9C64  EC 00 18 2A */	fadds f0, f0, f3
/* 801FCD08 001F9C68  D0 E1 00 74 */	stfs f7, 0x74(r1)
/* 801FCD0C 001F9C6C  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 801FCD10 001F9C70  D0 C1 00 7C */	stfs f6, 0x7c(r1)
/* 801FCD14 001F9C74  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 801FCD18 001F9C78  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801FCD1C 001F9C7C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 801FCD20 001F9C80  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 801FCD24 001F9C84  48 00 06 A1 */	bl LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801FCD28 001F9C88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FCD2C 001F9C8C  40 82 00 08 */	bne lbl_801FCD34
/* 801FCD30 001F9C90  3B A0 00 00 */	li r29, 0
lbl_801FCD34:
/* 801FCD34 001F9C94  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801FCD38 001F9C98  41 82 00 88 */	beq lbl_801FCDC0
/* 801FCD3C 001F9C9C  38 00 00 00 */	li r0, 0
/* 801FCD40 001F9CA0  C0 41 01 00 */	lfs f2, 0x100(r1)
/* 801FCD44 001F9CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FCD48 001F9CA8  7F 23 CB 78 */	mr r3, r25
/* 801FCD4C 001F9CAC  C0 21 01 04 */	lfs f1, 0x104(r1)
/* 801FCD50 001F9CB0  7F 44 D3 78 */	mr r4, r26
/* 801FCD54 001F9CB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FCD58 001F9CB8  38 A1 00 FC */	addi r5, r1, 0xfc
/* 801FCD5C 001F9CBC  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 801FCD60 001F9CC0  38 C1 00 60 */	addi r6, r1, 0x60
/* 801FCD64 001F9CC4  C0 F9 00 5C */	lfs f7, 0x5c(r25)
/* 801FCD68 001F9CC8  38 E1 00 10 */	addi r7, r1, 0x10
/* 801FCD6C 001F9CCC  C0 79 00 4C */	lfs f3, 0x4c(r25)
/* 801FCD70 001F9CD0  C0 99 00 3C */	lfs f4, 0x3c(r25)
/* 801FCD74 001F9CD4  EC BE 01 F2 */	fmuls f5, f30, f7
/* 801FCD78 001F9CD8  EC DE 00 F2 */	fmuls f6, f30, f3
/* 801FCD7C 001F9CDC  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801FCD80 001F9CE0  EC 7E 01 32 */	fmuls f3, f30, f4
/* 801FCD84 001F9CE4  EC 21 28 28 */	fsubs f1, f1, f5
/* 801FCD88 001F9CE8  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 801FCD8C 001F9CEC  EC 42 30 28 */	fsubs f2, f2, f6
/* 801FCD90 001F9CF0  EC 00 18 28 */	fsubs f0, f0, f3
/* 801FCD94 001F9CF4  D0 E1 00 50 */	stfs f7, 0x50(r1)
/* 801FCD98 001F9CF8  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 801FCD9C 001F9CFC  D0 C1 00 58 */	stfs f6, 0x58(r1)
/* 801FCDA0 001F9D00  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 801FCDA4 001F9D04  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801FCDA8 001F9D08  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 801FCDAC 001F9D0C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801FCDB0 001F9D10  48 00 06 15 */	bl LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801FCDB4 001F9D14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FCDB8 001F9D18  40 82 00 08 */	bne lbl_801FCDC0
/* 801FCDBC 001F9D1C  3B 80 00 00 */	li r28, 0
lbl_801FCDC0:
/* 801FCDC0 001F9D20  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801FCDC4 001F9D24  40 82 00 0C */	bne lbl_801FCDD0
/* 801FCDC8 001F9D28  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801FCDCC 001F9D2C  41 82 00 38 */	beq lbl_801FCE04
lbl_801FCDD0:
/* 801FCDD0 001F9D30  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801FCDD4 001F9D34  40 82 00 0C */	bne lbl_801FCDE0
/* 801FCDD8 001F9D38  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801FCDDC 001F9D3C  41 82 00 28 */	beq lbl_801FCE04
lbl_801FCDE0:
/* 801FCDE0 001F9D40  80 7A 09 00 */	lwz r3, 0x900(r26)
/* 801FCDE4 001F9D44  48 11 57 3D */	bl Next__9CRandom16Fv
/* 801FCDE8 001F9D48  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 801FCDEC 001F9D4C  41 82 00 10 */	beq lbl_801FCDFC
/* 801FCDF0 001F9D50  3B E0 00 00 */	li r31, 0
/* 801FCDF4 001F9D54  3B C0 00 00 */	li r30, 0
/* 801FCDF8 001F9D58  48 00 00 0C */	b lbl_801FCE04
lbl_801FCDFC:
/* 801FCDFC 001F9D5C  3B A0 00 00 */	li r29, 0
/* 801FCE00 001F9D60  3B 80 00 00 */	li r28, 0
lbl_801FCE04:
/* 801FCE04 001F9D64  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801FCE08 001F9D68  41 82 00 28 */	beq lbl_801FCE30
/* 801FCE0C 001F9D6C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801FCE10 001F9D70  41 82 00 20 */	beq lbl_801FCE30
/* 801FCE14 001F9D74  80 7A 09 00 */	lwz r3, 0x900(r26)
/* 801FCE18 001F9D78  48 11 57 09 */	bl Next__9CRandom16Fv
/* 801FCE1C 001F9D7C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 801FCE20 001F9D80  41 82 00 0C */	beq lbl_801FCE2C
/* 801FCE24 001F9D84  3B E0 00 00 */	li r31, 0
/* 801FCE28 001F9D88  48 00 00 08 */	b lbl_801FCE30
lbl_801FCE2C:
/* 801FCE2C 001F9D8C  3B C0 00 00 */	li r30, 0
lbl_801FCE30:
/* 801FCE30 001F9D90  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801FCE34 001F9D94  41 82 00 60 */	beq lbl_801FCE94
/* 801FCE38 001F9D98  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801FCE3C 001F9D9C  41 82 00 58 */	beq lbl_801FCE94
/* 801FCE40 001F9DA0  C0 59 00 60 */	lfs f2, 0x60(r25)
/* 801FCE44 001F9DA4  7F 24 CB 78 */	mr r4, r25
/* 801FCE48 001F9DA8  C0 39 00 50 */	lfs f1, 0x50(r25)
/* 801FCE4C 001F9DAC  7F 45 D3 78 */	mr r5, r26
/* 801FCE50 001F9DB0  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 801FCE54 001F9DB4  38 61 00 3C */	addi r3, r1, 0x3c
/* 801FCE58 001F9DB8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801FCE5C 001F9DBC  C3 D9 05 F4 */	lfs f30, 0x5f4(r25)
/* 801FCE60 001F9DC0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801FCE64 001F9DC4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801FCE68 001F9DC8  4B FF FA 2D */	bl GetTargetPos__13CFlyingPirateFR13CStateManager
/* 801FCE6C 001F9DCC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801FCE70 001F9DD0  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 801FCE74 001F9DD4  EC 20 F0 2A */	fadds f1, f0, f30
/* 801FCE78 001F9DD8  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FCE7C 001F9DDC  EC 22 08 28 */	fsubs f1, f2, f1
/* 801FCE80 001F9DE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FCE84 001F9DE4  40 81 00 0C */	ble lbl_801FCE90
/* 801FCE88 001F9DE8  3B 80 00 00 */	li r28, 0
/* 801FCE8C 001F9DEC  48 00 00 08 */	b lbl_801FCE94
lbl_801FCE90:
/* 801FCE90 001F9DF0  3B A0 00 00 */	li r29, 0
lbl_801FCE94:
/* 801FCE94 001F9DF4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801FCE98 001F9DF8  41 82 00 0C */	beq lbl_801FCEA4
/* 801FCE9C 001F9DFC  3B 60 00 04 */	li r27, 4
/* 801FCEA0 001F9E00  48 00 00 30 */	b lbl_801FCED0
lbl_801FCEA4:
/* 801FCEA4 001F9E04  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801FCEA8 001F9E08  41 82 00 0C */	beq lbl_801FCEB4
/* 801FCEAC 001F9E0C  3B 60 00 05 */	li r27, 5
/* 801FCEB0 001F9E10  48 00 00 20 */	b lbl_801FCED0
lbl_801FCEB4:
/* 801FCEB4 001F9E14  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801FCEB8 001F9E18  41 82 00 0C */	beq lbl_801FCEC4
/* 801FCEBC 001F9E1C  3B 60 00 02 */	li r27, 2
/* 801FCEC0 001F9E20  48 00 00 10 */	b lbl_801FCED0
lbl_801FCEC4:
/* 801FCEC4 001F9E24  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801FCEC8 001F9E28  41 82 00 08 */	beq lbl_801FCED0
/* 801FCECC 001F9E2C  3B 60 00 03 */	li r27, 3
lbl_801FCED0:
/* 801FCED0 001F9E30  7F 63 DB 78 */	mr r3, r27
/* 801FCED4 001F9E34  E3 E1 01 68 */	psq_l f31, 360(r1), 0, qr0
/* 801FCED8 001F9E38  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 801FCEDC 001F9E3C  E3 C1 01 58 */	psq_l f30, 344(r1), 0, qr0
/* 801FCEE0 001F9E40  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 801FCEE4 001F9E44  BA E1 01 2C */	lmw r23, 0x12c(r1)
/* 801FCEE8 001F9E48  80 01 01 74 */	lwz r0, 0x174(r1)
/* 801FCEEC 001F9E4C  7C 08 03 A6 */	mtlr r0
/* 801FCEF0 001F9E50  38 21 01 70 */	addi r1, r1, 0x170
/* 801FCEF4 001F9E54  4E 80 00 20 */	blr

.global AvoidActors__13CFlyingPirateFR13CStateManager
AvoidActors__13CFlyingPirateFR13CStateManager:
/* 801FCEF8 001F9E58  94 21 F7 20 */	stwu r1, -0x8e0(r1)
/* 801FCEFC 001F9E5C  7C 08 02 A6 */	mflr r0
/* 801FCF00 001F9E60  90 01 08 E4 */	stw r0, 0x8e4(r1)
/* 801FCF04 001F9E64  DB E1 08 D0 */	stfd f31, 0x8d0(r1)
/* 801FCF08 001F9E68  F3 E1 08 D8 */	psq_st f31, -1832(r1), 0, qr0
/* 801FCF0C 001F9E6C  DB C1 08 C0 */	stfd f30, 0x8c0(r1)
/* 801FCF10 001F9E70  F3 C1 08 C8 */	psq_st f30, -1848(r1), 0, qr0
/* 801FCF14 001F9E74  DB A1 08 B0 */	stfd f29, 0x8b0(r1)
/* 801FCF18 001F9E78  F3 A1 08 B8 */	psq_st f29, -1864(r1), 0, qr0
/* 801FCF1C 001F9E7C  BF 61 08 9C */	stmw r27, 0x89c(r1)
/* 801FCF20 001F9E80  7C 9C 23 78 */	mr r28, r4
/* 801FCF24 001F9E84  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801FCF28 001F9E88  C0 9C 00 50 */	lfs f4, 0x50(r28)
/* 801FCF2C 001F9E8C  7C 7B 1B 78 */	mr r27, r3
/* 801FCF30 001F9E90  C0 62 AF EC */	lfs f3, lbl_805ACD0C@sda21(r2)
/* 801FCF34 001F9E94  7C BD 2B 78 */	mr r29, r5
/* 801FCF38 001F9E98  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 801FCF3C 001F9E9C  38 61 00 78 */	addi r3, r1, 0x78
/* 801FCF40 001F9EA0  C7 E4 66 A0 */	lfsu f31, sZeroVector__9CVector3f@l(r4)
/* 801FCF44 001F9EA4  EC C4 18 2A */	fadds f6, f4, f3
/* 801FCF48 001F9EA8  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801FCF4C 001F9EAC  EC A2 18 2A */	fadds f5, f2, f3
/* 801FCF50 001F9EB0  EC 84 18 28 */	fsubs f4, f4, f3
/* 801FCF54 001F9EB4  C3 C4 00 04 */	lfs f30, 4(r4)
/* 801FCF58 001F9EB8  EC 20 18 2A */	fadds f1, f0, f3
/* 801FCF5C 001F9EBC  EC 42 18 28 */	fsubs f2, f2, f3
/* 801FCF60 001F9EC0  C3 A4 00 08 */	lfs f29, 8(r4)
/* 801FCF64 001F9EC4  EC 00 18 28 */	fsubs f0, f0, f3
/* 801FCF68 001F9EC8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 801FCF6C 001F9ECC  38 81 00 50 */	addi r4, r1, 0x50
/* 801FCF70 001F9ED0  38 A1 00 44 */	addi r5, r1, 0x44
/* 801FCF74 001F9ED4  D0 C1 00 48 */	stfs f6, 0x48(r1)
/* 801FCF78 001F9ED8  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 801FCF7C 001F9EDC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801FCF80 001F9EE0  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 801FCF84 001F9EE4  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801FCF88 001F9EE8  48 13 B5 81 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801FCF8C 001F9EEC  38 00 00 00 */	li r0, 0
/* 801FCF90 001F9EF0  80 AD 92 F8 */	lwz r5, lbl_805A7EB8@sda21(r13)
/* 801FCF94 001F9EF4  90 01 00 90 */	stw r0, 0x90(r1)
/* 801FCF98 001F9EF8  38 60 00 00 */	li r3, 0
/* 801FCF9C 001F9EFC  38 80 00 01 */	li r4, 1
/* 801FCFA0 001F9F00  48 18 CF 55 */	bl __shl2i
/* 801FCFA4 001F9F04  39 00 00 00 */	li r8, 0
/* 801FCFA8 001F9F08  38 00 00 01 */	li r0, 1
/* 801FCFAC 001F9F0C  90 81 00 64 */	stw r4, 0x64(r1)
/* 801FCFB0 001F9F10  7F 87 E3 78 */	mr r7, r28
/* 801FCFB4 001F9F14  38 81 00 90 */	addi r4, r1, 0x90
/* 801FCFB8 001F9F18  38 A1 00 78 */	addi r5, r1, 0x78
/* 801FCFBC 001F9F1C  90 61 00 60 */	stw r3, 0x60(r1)
/* 801FCFC0 001F9F20  7F A3 EB 78 */	mr r3, r29
/* 801FCFC4 001F9F24  38 C1 00 60 */	addi r6, r1, 0x60
/* 801FCFC8 001F9F28  91 01 00 6C */	stw r8, 0x6c(r1)
/* 801FCFCC 001F9F2C  91 01 00 68 */	stw r8, 0x68(r1)
/* 801FCFD0 001F9F30  90 01 00 70 */	stw r0, 0x70(r1)
/* 801FCFD4 001F9F34  4B E4 F7 4D */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 801FCFD8 001F9F38  3B E1 00 94 */	addi r31, r1, 0x94
/* 801FCFDC 001F9F3C  3B C0 00 00 */	li r30, 0
/* 801FCFE0 001F9F40  48 00 00 80 */	b lbl_801FD060
lbl_801FCFE4:
/* 801FCFE4 001F9F44  A0 1F 00 00 */	lhz r0, 0(r31)
/* 801FCFE8 001F9F48  7F A3 EB 78 */	mr r3, r29
/* 801FCFEC 001F9F4C  38 81 00 08 */	addi r4, r1, 8
/* 801FCFF0 001F9F50  B0 01 00 08 */	sth r0, 8(r1)
/* 801FCFF4 001F9F54  4B E4 F5 B1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801FCFF8 001F9F58  7C 64 1B 78 */	mr r4, r3
/* 801FCFFC 001F9F5C  38 61 00 0C */	addi r3, r1, 0xc
/* 801FD000 001F9F60  4B EB 2C 91 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801FD004 001F9F64  80 83 00 04 */	lwz r4, 4(r3)
/* 801FD008 001F9F68  28 04 00 00 */	cmplwi r4, 0
/* 801FD00C 001F9F6C  41 82 00 4C */	beq lbl_801FD058
/* 801FD010 001F9F70  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 801FD014 001F9F74  7F 85 E3 78 */	mr r5, r28
/* 801FD018 001F9F78  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801FD01C 001F9F7C  38 61 00 38 */	addi r3, r1, 0x38
/* 801FD020 001F9F80  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801FD024 001F9F84  38 9C 04 5C */	addi r4, r28, 0x45c
/* 801FD028 001F9F88  C0 22 AF D0 */	lfs f1, lbl_805ACCF0@sda21(r2)
/* 801FD02C 001F9F8C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 801FD030 001F9F90  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801FD034 001F9F94  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801FD038 001F9F98  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 801FD03C 001F9F9C  4B F4 18 B5 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801FD040 001F9FA0  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801FD044 001F9FA4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801FD048 001F9FA8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801FD04C 001F9FAC  EF FF 10 2A */	fadds f31, f31, f2
/* 801FD050 001F9FB0  EF DE 08 2A */	fadds f30, f30, f1
/* 801FD054 001F9FB4  EF BD 00 2A */	fadds f29, f29, f0
lbl_801FD058:
/* 801FD058 001F9FB8  3B FF 00 02 */	addi r31, r31, 2
/* 801FD05C 001F9FBC  3B DE 00 01 */	addi r30, r30, 1
lbl_801FD060:
/* 801FD060 001F9FC0  80 01 00 90 */	lwz r0, 0x90(r1)
/* 801FD064 001F9FC4  7C 1E 00 00 */	cmpw r30, r0
/* 801FD068 001F9FC8  41 80 FF 7C */	blt lbl_801FCFE4
/* 801FD06C 001F9FCC  80 FD 08 4C */	lwz r7, 0x84c(r29)
/* 801FD070 001F9FD0  7F 85 E3 78 */	mr r5, r28
/* 801FD074 001F9FD4  C0 9C 00 50 */	lfs f4, 0x50(r28)
/* 801FD078 001F9FD8  38 61 00 20 */	addi r3, r1, 0x20
/* 801FD07C 001F9FDC  C0 27 00 50 */	lfs f1, 0x50(r7)
/* 801FD080 001F9FE0  38 9C 04 5C */	addi r4, r28, 0x45c
/* 801FD084 001F9FE4  C0 BC 00 40 */	lfs f5, 0x40(r28)
/* 801FD088 001F9FE8  38 C1 00 14 */	addi r6, r1, 0x14
/* 801FD08C 001F9FEC  C0 07 00 40 */	lfs f0, 0x40(r7)
/* 801FD090 001F9FF0  EC 21 20 28 */	fsubs f1, f1, f4
/* 801FD094 001F9FF4  C0 7C 00 60 */	lfs f3, 0x60(r28)
/* 801FD098 001F9FF8  EC 00 28 28 */	fsubs f0, f0, f5
/* 801FD09C 001F9FFC  C0 42 AF 60 */	lfs f2, lbl_805ACC80@sda21(r2)
/* 801FD0A0 001FA000  EC 84 08 2A */	fadds f4, f4, f1
/* 801FD0A4 001FA004  C0 22 AF F0 */	lfs f1, lbl_805ACD10@sda21(r2)
/* 801FD0A8 001FA008  EC 43 10 2A */	fadds f2, f3, f2
/* 801FD0AC 001FA00C  EC 05 00 2A */	fadds f0, f5, f0
/* 801FD0B0 001FA010  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 801FD0B4 001FA014  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801FD0B8 001FA018  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801FD0BC 001FA01C  4B F4 18 35 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801FD0C0 001FA020  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801FD0C4 001FA024  38 60 00 00 */	li r3, 0
/* 801FD0C8 001FA028  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801FD0CC 001FA02C  EF FF 00 2A */	fadds f31, f31, f0
/* 801FD0D0 001FA030  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801FD0D4 001FA034  EF DE 08 2A */	fadds f30, f30, f1
/* 801FD0D8 001FA038  EF BD 00 2A */	fadds f29, f29, f0
/* 801FD0DC 001FA03C  D3 FB 00 00 */	stfs f31, 0(r27)
/* 801FD0E0 001FA040  D3 DB 00 04 */	stfs f30, 4(r27)
/* 801FD0E4 001FA044  D3 BB 00 08 */	stfs f29, 8(r27)
/* 801FD0E8 001FA048  80 A1 00 90 */	lwz r5, 0x90(r1)
/* 801FD0EC 001FA04C  2C 05 00 00 */	cmpwi r5, 0
/* 801FD0F0 001FA050  40 81 00 40 */	ble lbl_801FD130
/* 801FD0F4 001FA054  2C 05 00 08 */	cmpwi r5, 8
/* 801FD0F8 001FA058  38 85 FF F8 */	addi r4, r5, -8
/* 801FD0FC 001FA05C  40 81 00 20 */	ble lbl_801FD11C
/* 801FD100 001FA060  38 04 00 07 */	addi r0, r4, 7
/* 801FD104 001FA064  54 00 E8 FE */	srwi r0, r0, 3
/* 801FD108 001FA068  7C 09 03 A6 */	mtctr r0
/* 801FD10C 001FA06C  2C 04 00 00 */	cmpwi r4, 0
/* 801FD110 001FA070  40 81 00 0C */	ble lbl_801FD11C
lbl_801FD114:
/* 801FD114 001FA074  38 63 00 08 */	addi r3, r3, 8
/* 801FD118 001FA078  42 00 FF FC */	bdnz lbl_801FD114
lbl_801FD11C:
/* 801FD11C 001FA07C  7C 03 28 50 */	subf r0, r3, r5
/* 801FD120 001FA080  7C 09 03 A6 */	mtctr r0
/* 801FD124 001FA084  7C 03 28 00 */	cmpw r3, r5
/* 801FD128 001FA088  40 80 00 08 */	bge lbl_801FD130
lbl_801FD12C:
/* 801FD12C 001FA08C  42 00 00 00 */	bdnz lbl_801FD12C
lbl_801FD130:
/* 801FD130 001FA090  38 00 00 00 */	li r0, 0
/* 801FD134 001FA094  90 01 00 90 */	stw r0, 0x90(r1)
/* 801FD138 001FA098  E3 E1 08 D8 */	psq_l f31, -1832(r1), 0, qr0
/* 801FD13C 001FA09C  CB E1 08 D0 */	lfd f31, 0x8d0(r1)
/* 801FD140 001FA0A0  E3 C1 08 C8 */	psq_l f30, -1848(r1), 0, qr0
/* 801FD144 001FA0A4  CB C1 08 C0 */	lfd f30, 0x8c0(r1)
/* 801FD148 001FA0A8  E3 A1 08 B8 */	psq_l f29, -1864(r1), 0, qr0
/* 801FD14C 001FA0AC  CB A1 08 B0 */	lfd f29, 0x8b0(r1)
/* 801FD150 001FA0B0  BB 61 08 9C */	lmw r27, 0x89c(r1)
/* 801FD154 001FA0B4  80 01 08 E4 */	lwz r0, 0x8e4(r1)
/* 801FD158 001FA0B8  7C 08 03 A6 */	mtlr r0
/* 801FD15C 001FA0BC  38 21 08 E0 */	addi r1, r1, 0x8e0
/* 801FD160 001FA0C0  4E 80 00 20 */	blr

.global UpdateCantSeePlayer__13CFlyingPirateFR13CStateManager
UpdateCantSeePlayer__13CFlyingPirateFR13CStateManager:
/* 801FD164 001FA0C4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801FD168 001FA0C8  7C 08 02 A6 */	mflr r0
/* 801FD16C 001FA0CC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801FD170 001FA0D0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801FD174 001FA0D4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 801FD178 001FA0D8  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801FD17C 001FA0DC  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 801FD180 001FA0E0  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 801FD184 001FA0E4  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 801FD188 001FA0E8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801FD18C 001FA0EC  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801FD190 001FA0F0  93 A1 00 74 */	stw r29, 0x74(r1)
/* 801FD194 001FA0F4  7C 7D 1B 78 */	mr r29, r3
/* 801FD198 001FA0F8  3C 60 92 49 */	lis r3, 0x92492493@ha
/* 801FD19C 001FA0FC  80 BD 07 DC */	lwz r5, 0x7dc(r29)
/* 801FD1A0 001FA100  38 03 24 93 */	addi r0, r3, 0x92492493@l
/* 801FD1A4 001FA104  7C 9E 23 78 */	mr r30, r4
/* 801FD1A8 001FA108  7C 00 28 96 */	mulhw r0, r0, r5
/* 801FD1AC 001FA10C  7C 00 2A 14 */	add r0, r0, r5
/* 801FD1B0 001FA110  7C 00 16 70 */	srawi r0, r0, 2
/* 801FD1B4 001FA114  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801FD1B8 001FA118  7C 00 1A 14 */	add r0, r0, r3
/* 801FD1BC 001FA11C  1C 00 00 07 */	mulli r0, r0, 7
/* 801FD1C0 001FA120  7C 00 28 51 */	subf. r0, r0, r5
/* 801FD1C4 001FA124  40 82 01 C0 */	bne lbl_801FD384
/* 801FD1C8 001FA128  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 801FD1CC 001FA12C  7F C5 F3 78 */	mr r5, r30
/* 801FD1D0 001FA130  38 61 00 54 */	addi r3, r1, 0x54
/* 801FD1D4 001FA134  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FD1D8 001FA138  81 84 00 00 */	lwz r12, 0(r4)
/* 801FD1DC 001FA13C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801FD1E0 001FA140  7D 89 03 A6 */	mtctr r12
/* 801FD1E4 001FA144  4E 80 04 21 */	bctrl
/* 801FD1E8 001FA148  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 801FD1EC 001FA14C  7F A4 EB 78 */	mr r4, r29
/* 801FD1F0 001FA150  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 801FD1F4 001FA154  38 61 00 48 */	addi r3, r1, 0x48
/* 801FD1F8 001FA158  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801FD1FC 001FA15C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 801FD200 001FA160  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801FD204 001FA164  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801FD208 001FA168  4B E7 F8 C9 */	bl GetGunEyePos__10CPatternedCFv
/* 801FD20C 001FA16C  38 00 00 00 */	li r0, 0
/* 801FD210 001FA170  80 AD 92 E8 */	lwz r5, lbl_805A7EA8@sda21(r13)
/* 801FD214 001FA174  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FD218 001FA178  3B E0 00 01 */	li r31, 1
/* 801FD21C 001FA17C  C3 A1 00 48 */	lfs f29, 0x48(r1)
/* 801FD220 001FA180  38 60 00 00 */	li r3, 0
/* 801FD224 001FA184  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FD228 001FA188  38 80 00 01 */	li r4, 1
/* 801FD22C 001FA18C  C3 E1 00 4C */	lfs f31, 0x4c(r1)
/* 801FD230 001FA190  C3 C1 00 50 */	lfs f30, 0x50(r1)
/* 801FD234 001FA194  48 18 CC C1 */	bl __shl2i
/* 801FD238 001FA198  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801FD23C 001FA19C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 801FD240 001FA1A0  7C 00 1B 78 */	or r0, r0, r3
/* 801FD244 001FA1A4  80 AD 92 EC */	lwz r5, lbl_805A7EAC@sda21(r13)
/* 801FD248 001FA1A8  7C C4 23 78 */	or r4, r6, r4
/* 801FD24C 001FA1AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FD250 001FA1B0  38 60 00 00 */	li r3, 0
/* 801FD254 001FA1B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 801FD258 001FA1B8  38 80 00 01 */	li r4, 1
/* 801FD25C 001FA1BC  48 18 CC 99 */	bl __shl2i
/* 801FD260 001FA1C0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801FD264 001FA1C4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801FD268 001FA1C8  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 801FD26C 001FA1CC  38 C1 00 60 */	addi r6, r1, 0x60
/* 801FD270 001FA1D0  7C 00 1B 78 */	or r0, r0, r3
/* 801FD274 001FA1D4  7F A3 EB 78 */	mr r3, r29
/* 801FD278 001FA1D8  7C E8 23 78 */	or r8, r7, r4
/* 801FD27C 001FA1DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FD280 001FA1E0  7F C4 F3 78 */	mr r4, r30
/* 801FD284 001FA1E4  38 E1 00 10 */	addi r7, r1, 0x10
/* 801FD288 001FA1E8  91 01 00 14 */	stw r8, 0x14(r1)
/* 801FD28C 001FA1EC  C0 9D 00 54 */	lfs f4, 0x54(r29)
/* 801FD290 001FA1F0  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 801FD294 001FA1F4  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 801FD298 001FA1F8  EC 5E 20 28 */	fsubs f2, f30, f4
/* 801FD29C 001FA1FC  EC 7F 00 28 */	fsubs f3, f31, f0
/* 801FD2A0 001FA200  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801FD2A4 001FA204  EC 1D 08 28 */	fsubs f0, f29, f1
/* 801FD2A8 001FA208  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801FD2AC 001FA20C  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801FD2B0 001FA210  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801FD2B4 001FA214  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801FD2B8 001FA218  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801FD2BC 001FA21C  48 00 01 09 */	bl LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801FD2C0 001FA220  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD2C4 001FA224  41 82 00 B4 */	beq lbl_801FD378
/* 801FD2C8 001FA228  38 00 00 00 */	li r0, 0
/* 801FD2CC 001FA22C  80 AD 92 F0 */	lwz r5, lbl_805A7EB0@sda21(r13)
/* 801FD2D0 001FA230  90 01 00 0C */	stw r0, 0xc(r1)
/* 801FD2D4 001FA234  38 60 00 00 */	li r3, 0
/* 801FD2D8 001FA238  38 80 00 01 */	li r4, 1
/* 801FD2DC 001FA23C  90 01 00 08 */	stw r0, 8(r1)
/* 801FD2E0 001FA240  48 18 CC 15 */	bl __shl2i
/* 801FD2E4 001FA244  80 01 00 08 */	lwz r0, 8(r1)
/* 801FD2E8 001FA248  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 801FD2EC 001FA24C  7C 00 1B 78 */	or r0, r0, r3
/* 801FD2F0 001FA250  80 AD 92 F4 */	lwz r5, lbl_805A7EB4@sda21(r13)
/* 801FD2F4 001FA254  7C C4 23 78 */	or r4, r6, r4
/* 801FD2F8 001FA258  90 01 00 08 */	stw r0, 8(r1)
/* 801FD2FC 001FA25C  38 60 00 00 */	li r3, 0
/* 801FD300 001FA260  90 81 00 0C */	stw r4, 0xc(r1)
/* 801FD304 001FA264  38 80 00 01 */	li r4, 1
/* 801FD308 001FA268  48 18 CB ED */	bl __shl2i
/* 801FD30C 001FA26C  80 01 00 08 */	lwz r0, 8(r1)
/* 801FD310 001FA270  38 A1 00 18 */	addi r5, r1, 0x18
/* 801FD314 001FA274  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 801FD318 001FA278  38 C1 00 60 */	addi r6, r1, 0x60
/* 801FD31C 001FA27C  7C 00 1B 78 */	or r0, r0, r3
/* 801FD320 001FA280  7F A3 EB 78 */	mr r3, r29
/* 801FD324 001FA284  7C E8 23 78 */	or r8, r7, r4
/* 801FD328 001FA288  90 01 00 08 */	stw r0, 8(r1)
/* 801FD32C 001FA28C  7F C4 F3 78 */	mr r4, r30
/* 801FD330 001FA290  38 E1 00 08 */	addi r7, r1, 8
/* 801FD334 001FA294  91 01 00 0C */	stw r8, 0xc(r1)
/* 801FD338 001FA298  C0 9D 00 54 */	lfs f4, 0x54(r29)
/* 801FD33C 001FA29C  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 801FD340 001FA2A0  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 801FD344 001FA2A4  EC 5E 20 2A */	fadds f2, f30, f4
/* 801FD348 001FA2A8  EC 7F 00 2A */	fadds f3, f31, f0
/* 801FD34C 001FA2AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801FD350 001FA2B0  EC 1D 08 2A */	fadds f0, f29, f1
/* 801FD354 001FA2B4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801FD358 001FA2B8  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801FD35C 001FA2BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801FD360 001FA2C0  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 801FD364 001FA2C4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801FD368 001FA2C8  48 00 00 5D */	bl LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801FD36C 001FA2CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD370 001FA2D0  41 82 00 08 */	beq lbl_801FD378
/* 801FD374 001FA2D4  3B E0 00 00 */	li r31, 0
lbl_801FD378:
/* 801FD378 001FA2D8  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 801FD37C 001FA2DC  53 E0 07 FE */	rlwimi r0, r31, 0, 0x1f, 0x1f
/* 801FD380 001FA2E0  98 1D 06 A0 */	stb r0, 0x6a0(r29)
lbl_801FD384:
/* 801FD384 001FA2E4  80 7D 07 DC */	lwz r3, 0x7dc(r29)
/* 801FD388 001FA2E8  38 03 00 01 */	addi r0, r3, 1
/* 801FD38C 001FA2EC  90 1D 07 DC */	stw r0, 0x7dc(r29)
/* 801FD390 001FA2F0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 801FD394 001FA2F4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801FD398 001FA2F8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 801FD39C 001FA2FC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801FD3A0 001FA300  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 801FD3A4 001FA304  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 801FD3A8 001FA308  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801FD3AC 001FA30C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801FD3B0 001FA310  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801FD3B4 001FA314  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 801FD3B8 001FA318  7C 08 03 A6 */	mtlr r0
/* 801FD3BC 001FA31C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801FD3C0 001FA320  4E 80 00 20 */	blr

.global LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f
LineOfSightTest__13CFlyingPirateFR13CStateManagerRC9CVector3fRC9CVector3f:
/* 801FD3C4 001FA324  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801FD3C8 001FA328  7C 08 02 A6 */	mflr r0
/* 801FD3CC 001FA32C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801FD3D0 001FA330  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 801FD3D4 001FA334  7C 7B 1B 78 */	mr r27, r3
/* 801FD3D8 001FA338  7C 9C 23 78 */	mr r28, r4
/* 801FD3DC 001FA33C  7C BD 2B 78 */	mr r29, r5
/* 801FD3E0 001FA340  7C DE 33 78 */	mr r30, r6
/* 801FD3E4 001FA344  7C FF 3B 78 */	mr r31, r7
/* 801FD3E8 001FA348  38 60 00 00 */	li r3, 0
/* 801FD3EC 001FA34C  38 80 00 01 */	li r4, 1
/* 801FD3F0 001FA350  80 0D 92 E4 */	lwz r0, lbl_805A7EA4@sda21(r13)
/* 801FD3F4 001FA354  7C 05 03 78 */	mr r5, r0
/* 801FD3F8 001FA358  48 18 CA FD */	bl __shl2i
/* 801FD3FC 001FA35C  81 1F 00 00 */	lwz r8, 0(r31)
/* 801FD400 001FA360  38 00 00 03 */	li r0, 3
/* 801FD404 001FA364  81 3F 00 04 */	lwz r9, 4(r31)
/* 801FD408 001FA368  7F C5 F3 78 */	mr r5, r30
/* 801FD40C 001FA36C  90 81 00 24 */	stw r4, 0x24(r1)
/* 801FD410 001FA370  7F A4 EB 78 */	mr r4, r29
/* 801FD414 001FA374  7F 67 DB 78 */	mr r7, r27
/* 801FD418 001FA378  38 C1 00 20 */	addi r6, r1, 0x20
/* 801FD41C 001FA37C  90 61 00 20 */	stw r3, 0x20(r1)
/* 801FD420 001FA380  7F 83 E3 78 */	mr r3, r28
/* 801FD424 001FA384  90 01 00 18 */	stw r0, 0x18(r1)
/* 801FD428 001FA388  91 21 00 2C */	stw r9, 0x2c(r1)
/* 801FD42C 001FA38C  91 01 00 28 */	stw r8, 0x28(r1)
/* 801FD430 001FA390  90 01 00 30 */	stw r0, 0x30(r1)
/* 801FD434 001FA394  4B E4 FA 09 */	bl RayCollideWorld__13CStateManagerFRC9CVector3fRC9CVector3fRC15CMaterialFilterPC6CActor
/* 801FD438 001FA398  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 801FD43C 001FA39C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801FD440 001FA3A0  7C 08 03 A6 */	mtlr r0
/* 801FD444 001FA3A4  38 21 00 50 */	addi r1, r1, 0x50
/* 801FD448 001FA3A8  4E 80 00 20 */	blr

.global CheckForProjectiles__13CFlyingPirateFR13CStateManager
CheckForProjectiles__13CFlyingPirateFR13CStateManager:
/* 801FD44C 001FA3AC  94 21 F7 00 */	stwu r1, -0x900(r1)
/* 801FD450 001FA3B0  7C 08 02 A6 */	mflr r0
/* 801FD454 001FA3B4  90 01 09 04 */	stw r0, 0x904(r1)
/* 801FD458 001FA3B8  DB E1 08 F0 */	stfd f31, 0x8f0(r1)
/* 801FD45C 001FA3BC  F3 E1 08 F8 */	psq_st f31, -1800(r1), 0, qr0
/* 801FD460 001FA3C0  DB C1 08 E0 */	stfd f30, 0x8e0(r1)
/* 801FD464 001FA3C4  F3 C1 08 E8 */	psq_st f30, -1816(r1), 0, qr0
/* 801FD468 001FA3C8  DB A1 08 D0 */	stfd f29, 0x8d0(r1)
/* 801FD46C 001FA3CC  F3 A1 08 D8 */	psq_st f29, -1832(r1), 0, qr0
/* 801FD470 001FA3D0  BF 61 08 BC */	stmw r27, 0x8bc(r1)
/* 801FD474 001FA3D4  88 03 06 A0 */	lbz r0, 0x6a0(r3)
/* 801FD478 001FA3D8  7C 7E 1B 78 */	mr r30, r3
/* 801FD47C 001FA3DC  7C 9F 23 78 */	mr r31, r4
/* 801FD480 001FA3E0  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801FD484 001FA3E4  41 82 02 A0 */	beq lbl_801FD724
/* 801FD488 001FA3E8  80 DF 08 4C */	lwz r6, 0x84c(r31)
/* 801FD48C 001FA3EC  38 61 00 90 */	addi r3, r1, 0x90
/* 801FD490 001FA3F0  C0 A2 AF E4 */	lfs f5, lbl_805ACD04@sda21(r2)
/* 801FD494 001FA3F4  38 81 00 38 */	addi r4, r1, 0x38
/* 801FD498 001FA3F8  C0 E6 00 60 */	lfs f7, 0x60(r6)
/* 801FD49C 001FA3FC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801FD4A0 001FA400  C0 C6 00 50 */	lfs f6, 0x50(r6)
/* 801FD4A4 001FA404  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 801FD4A8 001FA408  EC 07 28 2A */	fadds f0, f7, f5
/* 801FD4AC 001FA40C  EC 66 28 2A */	fadds f3, f6, f5
/* 801FD4B0 001FA410  EC 81 28 2A */	fadds f4, f1, f5
/* 801FD4B4 001FA414  EC 41 28 28 */	fsubs f2, f1, f5
/* 801FD4B8 001FA418  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801FD4BC 001FA41C  EC 26 28 28 */	fsubs f1, f6, f5
/* 801FD4C0 001FA420  EC 07 28 28 */	fsubs f0, f7, f5
/* 801FD4C4 001FA424  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801FD4C8 001FA428  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 801FD4CC 001FA42C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801FD4D0 001FA430  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801FD4D4 001FA434  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801FD4D8 001FA438  48 13 B0 31 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801FD4DC 001FA43C  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 801FD4E0 001FA440  38 C0 00 00 */	li r6, 0
/* 801FD4E4 001FA444  50 C0 0F BC */	rlwimi r0, r6, 1, 0x1e, 0x1e
/* 801FD4E8 001FA448  38 60 00 00 */	li r3, 0
/* 801FD4EC 001FA44C  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 801FD4F0 001FA450  38 80 00 01 */	li r4, 1
/* 801FD4F4 001FA454  80 AD 92 E0 */	lwz r5, lbl_805A7EA0@sda21(r13)
/* 801FD4F8 001FA458  90 C1 00 A8 */	stw r6, 0xa8(r1)
/* 801FD4FC 001FA45C  48 18 C9 F9 */	bl __shl2i
/* 801FD500 001FA460  39 00 00 00 */	li r8, 0
/* 801FD504 001FA464  38 00 00 01 */	li r0, 1
/* 801FD508 001FA468  90 81 00 7C */	stw r4, 0x7c(r1)
/* 801FD50C 001FA46C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 801FD510 001FA470  38 A1 00 90 */	addi r5, r1, 0x90
/* 801FD514 001FA474  38 C1 00 78 */	addi r6, r1, 0x78
/* 801FD518 001FA478  90 61 00 78 */	stw r3, 0x78(r1)
/* 801FD51C 001FA47C  7F E3 FB 78 */	mr r3, r31
/* 801FD520 001FA480  38 E0 00 00 */	li r7, 0
/* 801FD524 001FA484  91 01 00 84 */	stw r8, 0x84(r1)
/* 801FD528 001FA488  91 01 00 80 */	stw r8, 0x80(r1)
/* 801FD52C 001FA48C  90 01 00 88 */	stw r0, 0x88(r1)
/* 801FD530 001FA490  4B E4 F1 F1 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 801FD534 001FA494  3B A1 00 AC */	addi r29, r1, 0xac
/* 801FD538 001FA498  3B 80 00 00 */	li r28, 0
/* 801FD53C 001FA49C  48 00 01 7C */	b lbl_801FD6B8
lbl_801FD540:
/* 801FD540 001FA4A0  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801FD544 001FA4A4  7F E3 FB 78 */	mr r3, r31
/* 801FD548 001FA4A8  38 81 00 08 */	addi r4, r1, 8
/* 801FD54C 001FA4AC  B0 01 00 08 */	sth r0, 8(r1)
/* 801FD550 001FA4B0  4B E4 F0 55 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801FD554 001FA4B4  7C 64 1B 78 */	mr r4, r3
/* 801FD558 001FA4B8  38 61 00 0C */	addi r3, r1, 0xc
/* 801FD55C 001FA4BC  4B EB 01 B1 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 801FD560 001FA4C0  83 63 00 04 */	lwz r27, 4(r3)
/* 801FD564 001FA4C4  28 1B 00 00 */	cmplwi r27, 0
/* 801FD568 001FA4C8  41 82 01 48 */	beq lbl_801FD6B0
/* 801FD56C 001FA4CC  C3 BB 00 60 */	lfs f29, 0x60(r27)
/* 801FD570 001FA4D0  7F C4 F3 78 */	mr r4, r30
/* 801FD574 001FA4D4  C3 DB 00 50 */	lfs f30, 0x50(r27)
/* 801FD578 001FA4D8  38 61 00 5C */	addi r3, r1, 0x5c
/* 801FD57C 001FA4DC  C3 FB 00 40 */	lfs f31, 0x40(r27)
/* 801FD580 001FA4E0  4B F1 D3 AD */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801FD584 001FA4E4  38 61 00 20 */	addi r3, r1, 0x20
/* 801FD588 001FA4E8  38 81 00 5C */	addi r4, r1, 0x5c
/* 801FD58C 001FA4EC  48 13 A0 81 */	bl GetCenterPoint__6CAABoxCFv
/* 801FD590 001FA4F0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801FD594 001FA4F4  38 61 00 50 */	addi r3, r1, 0x50
/* 801FD598 001FA4F8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801FD59C 001FA4FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801FD5A0 001FA500  EC 42 F0 28 */	fsubs f2, f2, f30
/* 801FD5A4 001FA504  EC 21 E8 28 */	fsubs f1, f1, f29
/* 801FD5A8 001FA508  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801FD5AC 001FA50C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 801FD5B0 001FA510  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801FD5B4 001FA514  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 801FD5B8 001FA518  48 11 71 D5 */	bl IsMagnitudeSafe__9CVector3fCFv
/* 801FD5BC 001FA51C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD5C0 001FA520  41 82 00 D4 */	beq lbl_801FD694
/* 801FD5C4 001FA524  C0 9E 00 48 */	lfs f4, 0x48(r30)
/* 801FD5C8 001FA528  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 801FD5CC 001FA52C  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 801FD5D0 001FA530  EC 04 00 32 */	fmuls f0, f4, f0
/* 801FD5D4 001FA534  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 801FD5D8 001FA538  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 801FD5DC 001FA53C  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 801FD5E0 001FA540  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 801FD5E4 001FA544  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FD5E8 001FA548  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 801FD5EC 001FA54C  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 801FD5F0 001FA550  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 801FD5F4 001FA554  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 801FD5F8 001FA558  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FD5FC 001FA55C  40 80 00 A8 */	bge lbl_801FD6A4
/* 801FD600 001FA560  38 61 00 50 */	addi r3, r1, 0x50
/* 801FD604 001FA564  48 11 72 F5 */	bl Normalize__9CVector3fFv
/* 801FD608 001FA568  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 801FD60C 001FA56C  38 61 00 44 */	addi r3, r1, 0x44
/* 801FD610 001FA570  C0 1B 02 9C */	lfs f0, 0x29c(r27)
/* 801FD614 001FA574  C0 7B 00 60 */	lfs f3, 0x60(r27)
/* 801FD618 001FA578  C0 5B 02 A0 */	lfs f2, 0x2a0(r27)
/* 801FD61C 001FA57C  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FD620 001FA580  C0 3B 00 40 */	lfs f1, 0x40(r27)
/* 801FD624 001FA584  C0 1B 02 98 */	lfs f0, 0x298(r27)
/* 801FD628 001FA588  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FD62C 001FA58C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FD630 001FA590  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 801FD634 001FA594  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801FD638 001FA598  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801FD63C 001FA59C  48 11 71 51 */	bl IsMagnitudeSafe__9CVector3fCFv
/* 801FD640 001FA5A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD644 001FA5A4  41 82 00 60 */	beq lbl_801FD6A4
/* 801FD648 001FA5A8  38 61 00 44 */	addi r3, r1, 0x44
/* 801FD64C 001FA5AC  48 11 72 AD */	bl Normalize__9CVector3fFv
/* 801FD650 001FA5B0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 801FD654 001FA5B4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 801FD658 001FA5B8  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 801FD65C 001FA5BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801FD660 001FA5C0  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 801FD664 001FA5C4  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 801FD668 001FA5C8  C0 61 00 58 */	lfs f3, 0x58(r1)
/* 801FD66C 001FA5CC  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 801FD670 001FA5D0  C0 02 AF F4 */	lfs f0, lbl_805ACD14@sda21(r2)
/* 801FD674 001FA5D4  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 801FD678 001FA5D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FD67C 001FA5DC  40 81 00 28 */	ble lbl_801FD6A4
/* 801FD680 001FA5E0  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 801FD684 001FA5E4  38 60 00 01 */	li r3, 1
/* 801FD688 001FA5E8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801FD68C 001FA5EC  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 801FD690 001FA5F0  48 00 00 14 */	b lbl_801FD6A4
lbl_801FD694:
/* 801FD694 001FA5F4  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 801FD698 001FA5F8  38 60 00 01 */	li r3, 1
/* 801FD69C 001FA5FC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801FD6A0 001FA600  98 1E 06 A0 */	stb r0, 0x6a0(r30)
lbl_801FD6A4:
/* 801FD6A4 001FA604  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 801FD6A8 001FA608  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801FD6AC 001FA60C  40 82 00 18 */	bne lbl_801FD6C4
lbl_801FD6B0:
/* 801FD6B0 001FA610  3B BD 00 02 */	addi r29, r29, 2
/* 801FD6B4 001FA614  3B 9C 00 01 */	addi r28, r28, 1
lbl_801FD6B8:
/* 801FD6B8 001FA618  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 801FD6BC 001FA61C  7C 1C 00 00 */	cmpw r28, r0
/* 801FD6C0 001FA620  41 80 FE 80 */	blt lbl_801FD540
lbl_801FD6C4:
/* 801FD6C4 001FA624  38 60 00 00 */	li r3, 0
/* 801FD6C8 001FA628  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 801FD6CC 001FA62C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801FD6D0 001FA630  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 801FD6D4 001FA634  80 A1 00 A8 */	lwz r5, 0xa8(r1)
/* 801FD6D8 001FA638  2C 05 00 00 */	cmpwi r5, 0
/* 801FD6DC 001FA63C  40 81 00 40 */	ble lbl_801FD71C
/* 801FD6E0 001FA640  2C 05 00 08 */	cmpwi r5, 8
/* 801FD6E4 001FA644  38 85 FF F8 */	addi r4, r5, -8
/* 801FD6E8 001FA648  40 81 00 20 */	ble lbl_801FD708
/* 801FD6EC 001FA64C  38 04 00 07 */	addi r0, r4, 7
/* 801FD6F0 001FA650  54 00 E8 FE */	srwi r0, r0, 3
/* 801FD6F4 001FA654  7C 09 03 A6 */	mtctr r0
/* 801FD6F8 001FA658  2C 04 00 00 */	cmpwi r4, 0
/* 801FD6FC 001FA65C  40 81 00 0C */	ble lbl_801FD708
lbl_801FD700:
/* 801FD700 001FA660  38 63 00 08 */	addi r3, r3, 8
/* 801FD704 001FA664  42 00 FF FC */	bdnz lbl_801FD700
lbl_801FD708:
/* 801FD708 001FA668  7C 03 28 50 */	subf r0, r3, r5
/* 801FD70C 001FA66C  7C 09 03 A6 */	mtctr r0
/* 801FD710 001FA670  7C 03 28 00 */	cmpw r3, r5
/* 801FD714 001FA674  40 80 00 08 */	bge lbl_801FD71C
lbl_801FD718:
/* 801FD718 001FA678  42 00 00 00 */	bdnz lbl_801FD718
lbl_801FD71C:
/* 801FD71C 001FA67C  38 00 00 00 */	li r0, 0
/* 801FD720 001FA680  90 01 00 A8 */	stw r0, 0xa8(r1)
lbl_801FD724:
/* 801FD724 001FA684  E3 E1 08 F8 */	psq_l f31, -1800(r1), 0, qr0
/* 801FD728 001FA688  CB E1 08 F0 */	lfd f31, 0x8f0(r1)
/* 801FD72C 001FA68C  E3 C1 08 E8 */	psq_l f30, -1816(r1), 0, qr0
/* 801FD730 001FA690  CB C1 08 E0 */	lfd f30, 0x8e0(r1)
/* 801FD734 001FA694  E3 A1 08 D8 */	psq_l f29, -1832(r1), 0, qr0
/* 801FD738 001FA698  CB A1 08 D0 */	lfd f29, 0x8d0(r1)
/* 801FD73C 001FA69C  BB 61 08 BC */	lmw r27, 0x8bc(r1)
/* 801FD740 001FA6A0  80 01 09 04 */	lwz r0, 0x904(r1)
/* 801FD744 001FA6A4  7C 08 03 A6 */	mtlr r0
/* 801FD748 001FA6A8  38 21 09 00 */	addi r1, r1, 0x900
/* 801FD74C 001FA6AC  4E 80 00 20 */	blr

.global sub_801fd750
sub_801fd750:
/* 801FD750 001FA6B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801FD754 001FA6B4  7C 08 02 A6 */	mflr r0
/* 801FD758 001FA6B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FD75C 001FA6BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801FD760 001FA6C0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801FD764 001FA6C4  7C 7E 1B 78 */	mr r30, r3
/* 801FD768 001FA6C8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FD76C 001FA6CC  A0 63 08 90 */	lhz r3, 0x890(r3)
/* 801FD770 001FA6D0  7C 03 00 40 */	cmplw r3, r0
/* 801FD774 001FA6D4  41 82 00 70 */	beq lbl_801FD7E4
/* 801FD778 001FA6D8  A0 1E 08 90 */	lhz r0, 0x890(r30)
/* 801FD77C 001FA6DC  7C 83 23 78 */	mr r3, r4
/* 801FD780 001FA6E0  38 81 00 18 */	addi r4, r1, 0x18
/* 801FD784 001FA6E4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801FD788 001FA6E8  4B E4 ED ED */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801FD78C 001FA6EC  7C 64 1B 78 */	mr r4, r3
/* 801FD790 001FA6F0  38 61 00 1C */	addi r3, r1, 0x1c
/* 801FD794 001FA6F4  4B EA 9D E1 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801FD798 001FA6F8  83 E3 00 04 */	lwz r31, 4(r3)
/* 801FD79C 001FA6FC  28 1F 00 00 */	cmplwi r31, 0
/* 801FD7A0 001FA700  41 82 00 44 */	beq lbl_801FD7E4
/* 801FD7A4 001FA704  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801FD7A8 001FA708  7F E3 FB 78 */	mr r3, r31
/* 801FD7AC 001FA70C  38 81 00 14 */	addi r4, r1, 0x14
/* 801FD7B0 001FA710  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801FD7B4 001FA714  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801FD7B8 001FA718  48 03 B8 39 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 801FD7BC 001FA71C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD7C0 001FA720  41 82 00 24 */	beq lbl_801FD7E4
/* 801FD7C4 001FA724  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801FD7C8 001FA728  7F E3 FB 78 */	mr r3, r31
/* 801FD7CC 001FA72C  38 81 00 0C */	addi r4, r1, 0xc
/* 801FD7D0 001FA730  B0 01 00 08 */	sth r0, 8(r1)
/* 801FD7D4 001FA734  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801FD7D8 001FA738  48 03 BD 1D */	bl RemoveTeamAiRole__10CTeamAiMgrF9TUniqueId
/* 801FD7DC 001FA73C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FD7E0 001FA740  B0 1E 08 90 */	sth r0, 0x890(r30)
lbl_801FD7E4:
/* 801FD7E4 001FA744  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801FD7E8 001FA748  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801FD7EC 001FA74C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801FD7F0 001FA750  7C 08 03 A6 */	mtlr r0
/* 801FD7F4 001FA754  38 21 00 30 */	addi r1, r1, 0x30
/* 801FD7F8 001FA758  4E 80 00 20 */	blr

.global sub_801fd7fc
sub_801fd7fc:
/* 801FD7FC 001FA75C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FD800 001FA760  7C 08 02 A6 */	mflr r0
/* 801FD804 001FA764  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FD808 001FA768  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FD80C 001FA76C  7C 9F 23 78 */	mr r31, r4
/* 801FD810 001FA770  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801FD814 001FA774  7C 7E 1B 78 */	mr r30, r3
/* 801FD818 001FA778  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FD81C 001FA77C  A0 63 08 90 */	lhz r3, 0x890(r3)
/* 801FD820 001FA780  7C 03 00 40 */	cmplw r3, r0
/* 801FD824 001FA784  40 82 00 1C */	bne lbl_801FD840
/* 801FD828 001FA788  7F C4 F3 78 */	mr r4, r30
/* 801FD82C 001FA78C  7F E5 FB 78 */	mr r5, r31
/* 801FD830 001FA790  38 61 00 0C */	addi r3, r1, 0xc
/* 801FD834 001FA794  48 03 C9 B5 */	bl GetTeamAiMgr__10CTeamAiMgrF3CAiRC13CStateManager
/* 801FD838 001FA798  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801FD83C 001FA79C  B0 1E 08 90 */	sth r0, 0x890(r30)
lbl_801FD840:
/* 801FD840 001FA7A0  A0 7E 08 90 */	lhz r3, 0x890(r30)
/* 801FD844 001FA7A4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FD848 001FA7A8  7C 03 00 40 */	cmplw r3, r0
/* 801FD84C 001FA7AC  41 82 00 44 */	beq lbl_801FD890
/* 801FD850 001FA7B0  A0 1E 08 90 */	lhz r0, 0x890(r30)
/* 801FD854 001FA7B4  7F E3 FB 78 */	mr r3, r31
/* 801FD858 001FA7B8  38 81 00 08 */	addi r4, r1, 8
/* 801FD85C 001FA7BC  B0 01 00 08 */	sth r0, 8(r1)
/* 801FD860 001FA7C0  4B E4 ED 15 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801FD864 001FA7C4  7C 64 1B 78 */	mr r4, r3
/* 801FD868 001FA7C8  38 61 00 10 */	addi r3, r1, 0x10
/* 801FD86C 001FA7CC  4B EA 9D 09 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801FD870 001FA7D0  80 63 00 04 */	lwz r3, 4(r3)
/* 801FD874 001FA7D4  28 03 00 00 */	cmplwi r3, 0
/* 801FD878 001FA7D8  41 82 00 18 */	beq lbl_801FD890
/* 801FD87C 001FA7DC  7F C4 F3 78 */	mr r4, r30
/* 801FD880 001FA7E0  38 A0 00 02 */	li r5, 2
/* 801FD884 001FA7E4  38 C0 00 03 */	li r6, 3
/* 801FD888 001FA7E8  38 E0 FF FF */	li r7, -1
/* 801FD88C 001FA7EC  48 03 BF 21 */	bl AssignTeamAiRole__10CTeamAiMgrFRC3CAiiii
lbl_801FD890:
/* 801FD890 001FA7F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FD894 001FA7F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FD898 001FA7F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801FD89C 001FA7FC  7C 08 03 A6 */	mtlr r0
/* 801FD8A0 001FA800  38 21 00 20 */	addi r1, r1, 0x20
/* 801FD8A4 001FA804  4E 80 00 20 */	blr

.global GetOrigin__13CFlyingPirateCFv
GetOrigin__13CFlyingPirateCFv:
/* 801FD8A8 001FA808  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801FD8AC 001FA80C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801FD8B0 001FA810  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801FD8B4 001FA814  D0 03 00 00 */	stfs f0, 0(r3)
/* 801FD8B8 001FA818  D0 23 00 04 */	stfs f1, 4(r3)
/* 801FD8BC 001FA81C  D0 43 00 08 */	stfs f2, 8(r3)
/* 801FD8C0 001FA820  4E 80 00 20 */	blr

.global sub_801fd8c4
sub_801fd8c4:
/* 801FD8C4 001FA824  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801FD8C8 001FA828  7C 08 02 A6 */	mflr r0
/* 801FD8CC 001FA82C  90 01 01 04 */	stw r0, 0x104(r1)
/* 801FD8D0 001FA830  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 801FD8D4 001FA834  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 801FD8D8 001FA838  93 E1 00 EC */	stw r31, 0xec(r1)
/* 801FD8DC 001FA83C  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 801FD8E0 001FA840  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 801FD8E4 001FA844  93 81 00 E0 */	stw r28, 0xe0(r1)
/* 801FD8E8 001FA848  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 801FD8EC 001FA84C  7C 7E 1B 78 */	mr r30, r3
/* 801FD8F0 001FA850  7C 9F 23 78 */	mr r31, r4
/* 801FD8F4 001FA854  41 82 02 78 */	beq lbl_801FDB6C
/* 801FD8F8 001FA858  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 801FD8FC 001FA85C  2C 00 00 00 */	cmpwi r0, 0
/* 801FD900 001FA860  41 82 02 4C */	beq lbl_801FDB4C
/* 801FD904 001FA864  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801FD908 001FA868  38 A1 00 08 */	addi r5, r1, 8
/* 801FD90C 001FA86C  C0 02 AF E4 */	lfs f0, lbl_805ACD04@sda21(r2)
/* 801FD910 001FA870  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801FD914 001FA874  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801FD918 001FA878  EF E3 00 28 */	fsubs f31, f3, f0
/* 801FD91C 001FA87C  A0 1E 06 A4 */	lhz r0, 0x6a4(r30)
/* 801FD920 001FA880  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801FD924 001FA884  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801FD928 001FA888  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 801FD92C 001FA88C  B0 01 00 08 */	sth r0, 8(r1)
/* 801FD930 001FA890  4B E7 EF 7D */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 801FD934 001FA894  28 03 00 00 */	cmplwi r3, 0
/* 801FD938 001FA898  41 82 00 24 */	beq lbl_801FD95C
/* 801FD93C 001FA89C  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801FD940 001FA8A0  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801FD944 001FA8A4  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801FD948 001FA8A8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801FD94C 001FA8AC  EF E3 00 28 */	fsubs f31, f3, f0
/* 801FD950 001FA8B0  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801FD954 001FA8B4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801FD958 001FA8B8  D0 61 00 50 */	stfs f3, 0x50(r1)
lbl_801FD95C:
/* 801FD95C 001FA8BC  80 AD 92 DC */	lwz r5, lbl_805A7E9C@sda21(r13)
/* 801FD960 001FA8C0  38 60 00 00 */	li r3, 0
/* 801FD964 001FA8C4  38 80 00 01 */	li r4, 1
/* 801FD968 001FA8C8  48 18 C5 8D */	bl __shl2i
/* 801FD96C 001FA8CC  39 00 00 00 */	li r8, 0
/* 801FD970 001FA8D0  38 00 00 01 */	li r0, 1
/* 801FD974 001FA8D4  90 81 00 64 */	stw r4, 0x64(r1)
/* 801FD978 001FA8D8  3C 80 80 5A */	lis r4, sDownVector__9CVector3f@ha
/* 801FD97C 001FA8DC  38 C4 67 00 */	addi r6, r4, sDownVector__9CVector3f@l
/* 801FD980 001FA8E0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801FD984 001FA8E4  90 61 00 60 */	stw r3, 0x60(r1)
/* 801FD988 001FA8E8  7F E4 FB 78 */	mr r4, r31
/* 801FD98C 001FA8EC  38 61 00 78 */	addi r3, r1, 0x78
/* 801FD990 001FA8F0  38 E1 00 60 */	addi r7, r1, 0x60
/* 801FD994 001FA8F4  91 01 00 6C */	stw r8, 0x6c(r1)
/* 801FD998 001FA8F8  91 01 00 68 */	stw r8, 0x68(r1)
/* 801FD99C 001FA8FC  90 01 00 70 */	stw r0, 0x70(r1)
/* 801FD9A0 001FA900  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801FD9A4 001FA904  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801FD9A8 001FA908  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FD9AC 001FA90C  EC 23 F8 28 */	fsubs f1, f3, f31
/* 801FD9B0 001FA910  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801FD9B4 001FA914  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801FD9B8 001FA918  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 801FD9BC 001FA91C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801FD9C0 001FA920  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801FD9C4 001FA924  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 801FD9C8 001FA928  4B E4 F5 D1 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 801FD9CC 001FA92C  88 61 00 98 */	lbz r3, 0x98(r1)
/* 801FD9D0 001FA930  38 00 00 01 */	li r0, 1
/* 801FD9D4 001FA934  C0 E1 00 78 */	lfs f7, 0x78(r1)
/* 801FD9D8 001FA938  C0 C1 00 7C */	lfs f6, 0x7c(r1)
/* 801FD9DC 001FA93C  28 03 00 00 */	cmplwi r3, 0
/* 801FD9E0 001FA940  C0 A1 00 80 */	lfs f5, 0x80(r1)
/* 801FD9E4 001FA944  C0 81 00 84 */	lfs f4, 0x84(r1)
/* 801FD9E8 001FA948  C0 61 00 88 */	lfs f3, 0x88(r1)
/* 801FD9EC 001FA94C  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 801FD9F0 001FA950  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 801FD9F4 001FA954  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 801FD9F8 001FA958  80 A1 00 A0 */	lwz r5, 0xa0(r1)
/* 801FD9FC 001FA95C  80 E1 00 A4 */	lwz r7, 0xa4(r1)
/* 801FDA00 001FA960  D0 E1 00 A8 */	stfs f7, 0xa8(r1)
/* 801FDA04 001FA964  D0 C1 00 AC */	stfs f6, 0xac(r1)
/* 801FDA08 001FA968  D0 A1 00 B0 */	stfs f5, 0xb0(r1)
/* 801FDA0C 001FA96C  D0 81 00 B4 */	stfs f4, 0xb4(r1)
/* 801FDA10 001FA970  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 801FDA14 001FA974  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 801FDA18 001FA978  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 801FDA1C 001FA97C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801FDA20 001FA980  98 61 00 C8 */	stb r3, 0xc8(r1)
/* 801FDA24 001FA984  90 E1 00 D4 */	stw r7, 0xd4(r1)
/* 801FDA28 001FA988  90 A1 00 D0 */	stw r5, 0xd0(r1)
/* 801FDA2C 001FA98C  41 82 00 C4 */	beq lbl_801FDAF0
/* 801FDA30 001FA990  38 60 00 10 */	li r3, 0x10
/* 801FDA34 001FA994  38 C0 00 00 */	li r6, 0
/* 801FDA38 001FA998  7C E4 18 38 */	and r4, r7, r3
/* 801FDA3C 001FA99C  7C A3 30 38 */	and r3, r5, r6
/* 801FDA40 001FA9A0  7C 84 32 78 */	xor r4, r4, r6
/* 801FDA44 001FA9A4  7C 63 32 78 */	xor r3, r3, r6
/* 801FDA48 001FA9A8  7C 83 1B 79 */	or. r3, r4, r3
/* 801FDA4C 001FA9AC  41 82 00 08 */	beq lbl_801FDA54
/* 801FDA50 001FA9B0  38 C0 00 01 */	li r6, 1
lbl_801FDA54:
/* 801FDA54 001FA9B4  54 C3 06 3F */	clrlwi. r3, r6, 0x18
/* 801FDA58 001FA9B8  40 82 00 24 */	bne lbl_801FDA7C
/* 801FDA5C 001FA9BC  38 60 08 00 */	li r3, 0x800
/* 801FDA60 001FA9C0  38 C0 00 00 */	li r6, 0
/* 801FDA64 001FA9C4  7C E3 18 38 */	and r3, r7, r3
/* 801FDA68 001FA9C8  7C A5 30 38 */	and r5, r5, r6
/* 801FDA6C 001FA9CC  7C 64 32 78 */	xor r4, r3, r6
/* 801FDA70 001FA9D0  7C A3 32 78 */	xor r3, r5, r6
/* 801FDA74 001FA9D4  7C 83 1B 79 */	or. r3, r4, r3
/* 801FDA78 001FA9D8  41 82 00 0C */	beq lbl_801FDA84
lbl_801FDA7C:
/* 801FDA7C 001FA9DC  38 00 00 02 */	li r0, 2
/* 801FDA80 001FA9E0  48 00 00 50 */	b lbl_801FDAD0
lbl_801FDA84:
/* 801FDA84 001FA9E4  38 80 01 00 */	li r4, 0x100
/* 801FDA88 001FA9E8  7C A3 32 78 */	xor r3, r5, r6
/* 801FDA8C 001FA9EC  7C E4 20 38 */	and r4, r7, r4
/* 801FDA90 001FA9F0  7C 84 32 78 */	xor r4, r4, r6
/* 801FDA94 001FA9F4  7C 83 1B 79 */	or. r3, r4, r3
/* 801FDA98 001FA9F8  40 82 00 34 */	bne lbl_801FDACC
/* 801FDA9C 001FA9FC  38 80 10 00 */	li r4, 0x1000
/* 801FDAA0 001FAA00  7C A3 32 78 */	xor r3, r5, r6
/* 801FDAA4 001FAA04  7C E4 20 38 */	and r4, r7, r4
/* 801FDAA8 001FAA08  7C 84 32 78 */	xor r4, r4, r6
/* 801FDAAC 001FAA0C  7C 83 1B 79 */	or. r3, r4, r3
/* 801FDAB0 001FAA10  40 82 00 1C */	bne lbl_801FDACC
/* 801FDAB4 001FAA14  3C 80 00 02 */	lis r4, 2
/* 801FDAB8 001FAA18  7C A3 32 78 */	xor r3, r5, r6
/* 801FDABC 001FAA1C  7C E4 20 38 */	and r4, r7, r4
/* 801FDAC0 001FAA20  7C 84 32 78 */	xor r4, r4, r6
/* 801FDAC4 001FAA24  7C 83 1B 79 */	or. r3, r4, r3
/* 801FDAC8 001FAA28  41 82 00 08 */	beq lbl_801FDAD0
lbl_801FDACC:
/* 801FDACC 001FAA2C  38 00 00 00 */	li r0, 0
lbl_801FDAD0:
/* 801FDAD0 001FAA30  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801FDAD4 001FAA34  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 801FDAD8 001FAA38  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801FDADC 001FAA3C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801FDAE0 001FAA40  EF E3 00 28 */	fsubs f31, f3, f0
/* 801FDAE4 001FAA44  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801FDAE8 001FAA48  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801FDAEC 001FAA4C  D0 61 00 2C */	stfs f3, 0x2c(r1)
lbl_801FDAF0:
/* 801FDAF0 001FAA50  54 00 18 38 */	slwi r0, r0, 3
/* 801FDAF4 001FAA54  38 80 00 01 */	li r4, 1
/* 801FDAF8 001FAA58  7F BE 02 14 */	add r29, r30, r0
/* 801FDAFC 001FAA5C  80 7D 06 8C */	lwz r3, 0x68c(r29)
/* 801FDB00 001FAA60  81 83 00 00 */	lwz r12, 0(r3)
/* 801FDB04 001FAA64  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801FDB08 001FAA68  7D 89 03 A6 */	mtctr r12
/* 801FDB0C 001FAA6C  4E 80 04 21 */	bctrl
/* 801FDB10 001FAA70  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801FDB14 001FAA74  38 81 00 18 */	addi r4, r1, 0x18
/* 801FDB18 001FAA78  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801FDB1C 001FAA7C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801FDB20 001FAA80  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801FDB24 001FAA84  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801FDB28 001FAA88  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801FDB2C 001FAA8C  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 801FDB30 001FAA90  80 7D 06 8C */	lwz r3, 0x68c(r29)
/* 801FDB34 001FAA94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801FDB38 001FAA98  81 83 00 00 */	lwz r12, 0(r3)
/* 801FDB3C 001FAA9C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801FDB40 001FAAA0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801FDB44 001FAAA4  7D 89 03 A6 */	mtctr r12
/* 801FDB48 001FAAA8  4E 80 04 21 */	bctrl
lbl_801FDB4C:
/* 801FDB4C 001FAAAC  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 801FDB50 001FAAB0  3C 60 80 57 */	lis r3, lbl_80572108@ha
/* 801FDB54 001FAAB4  38 83 21 08 */	addi r4, r3, lbl_80572108@l
/* 801FDB58 001FAAB8  7F E6 FB 78 */	mr r6, r31
/* 801FDB5C 001FAABC  80 65 00 10 */	lwz r3, 0x10(r5)
/* 801FDB60 001FAAC0  38 A0 00 01 */	li r5, 1
/* 801FDB64 001FAAC4  4B E2 D2 5D */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 801FDB68 001FAAC8  48 00 00 58 */	b lbl_801FDBC0
lbl_801FDB6C:
/* 801FDB6C 001FAACC  3B BE 06 88 */	addi r29, r30, 0x688
/* 801FDB70 001FAAD0  3B 80 00 00 */	li r28, 0
/* 801FDB74 001FAAD4  48 00 00 24 */	b lbl_801FDB98
lbl_801FDB78:
/* 801FDB78 001FAAD8  80 7D 00 04 */	lwz r3, 4(r29)
/* 801FDB7C 001FAADC  38 80 00 00 */	li r4, 0
/* 801FDB80 001FAAE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801FDB84 001FAAE4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801FDB88 001FAAE8  7D 89 03 A6 */	mtctr r12
/* 801FDB8C 001FAAEC  4E 80 04 21 */	bctrl
/* 801FDB90 001FAAF0  3B BD 00 08 */	addi r29, r29, 8
/* 801FDB94 001FAAF4  3B 9C 00 01 */	addi r28, r28, 1
lbl_801FDB98:
/* 801FDB98 001FAAF8  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 801FDB9C 001FAAFC  7C 1C 00 00 */	cmpw r28, r0
/* 801FDBA0 001FAB00  41 80 FF D8 */	blt lbl_801FDB78
/* 801FDBA4 001FAB04  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 801FDBA8 001FAB08  3C 60 80 57 */	lis r3, lbl_80572108@ha
/* 801FDBAC 001FAB0C  38 83 21 08 */	addi r4, r3, lbl_80572108@l
/* 801FDBB0 001FAB10  7F E6 FB 78 */	mr r6, r31
/* 801FDBB4 001FAB14  80 65 00 10 */	lwz r3, 0x10(r5)
/* 801FDBB8 001FAB18  38 A0 00 00 */	li r5, 0
/* 801FDBBC 001FAB1C  4B E2 D2 05 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
lbl_801FDBC0:
/* 801FDBC0 001FAB20  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 801FDBC4 001FAB24  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801FDBC8 001FAB28  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 801FDBCC 001FAB2C  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 801FDBD0 001FAB30  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 801FDBD4 001FAB34  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 801FDBD8 001FAB38  83 81 00 E0 */	lwz r28, 0xe0(r1)
/* 801FDBDC 001FAB3C  7C 08 03 A6 */	mtlr r0
/* 801FDBE0 001FAB40  38 21 01 00 */	addi r1, r1, 0x100
/* 801FDBE4 001FAB44  4E 80 00 20 */	blr

.global sub_801fdbe8
sub_801fdbe8:
/* 801FDBE8 001FAB48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801FDBEC 001FAB4C  7C 08 02 A6 */	mflr r0
/* 801FDBF0 001FAB50  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FDBF4 001FAB54  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801FDBF8 001FAB58  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801FDBFC 001FAB5C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 801FDC00 001FAB60  7C 7C 1B 78 */	mr r28, r3
/* 801FDC04 001FAB64  3C 60 80 57 */	lis r3, lbl_80572078@ha
/* 801FDC08 001FAB68  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 801FDC0C 001FAB6C  3B 63 20 78 */	addi r27, r3, lbl_80572078@l
/* 801FDC10 001FAB70  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 801FDC14 001FAB74  FF E0 08 90 */	fmr f31, f1
/* 801FDC18 001FAB78  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FDC1C 001FAB7C  7C 9D 23 78 */	mr r29, r4
/* 801FDC20 001FAB80  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 801FDC24 001FAB84  7C BE 2B 78 */	mr r30, r5
/* 801FDC28 001FAB88  41 82 00 0C */	beq lbl_801FDC34
/* 801FDC2C 001FAB8C  3C 60 80 57 */	lis r3, lbl_805720D8@ha
/* 801FDC30 001FAB90  3B 63 20 D8 */	addi r27, r3, lbl_805720D8@l
lbl_801FDC34:
/* 801FDC34 001FAB94  88 1C 06 A2 */	lbz r0, 0x6a2(r28)
/* 801FDC38 001FAB98  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 801FDC3C 001FAB9C  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 801FDC40 001FABA0  7C 03 00 40 */	cmplw r3, r0
/* 801FDC44 001FABA4  41 82 00 48 */	beq lbl_801FDC8C
/* 801FDC48 001FABA8  7F E3 FB 78 */	mr r3, r31
/* 801FDC4C 001FABAC  7F 64 DB 78 */	mr r4, r27
/* 801FDC50 001FABB0  7F C5 F3 78 */	mr r5, r30
/* 801FDC54 001FABB4  7F A6 EB 78 */	mr r6, r29
/* 801FDC58 001FABB8  4B E2 D1 69 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 801FDC5C 001FABBC  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 801FDC60 001FABC0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FDC64 001FABC4  41 82 00 1C */	beq lbl_801FDC80
/* 801FDC68 001FABC8  3C 80 80 57 */	lis r4, lbl_805720E8@ha
/* 801FDC6C 001FABCC  7F E3 FB 78 */	mr r3, r31
/* 801FDC70 001FABD0  38 84 20 E8 */	addi r4, r4, lbl_805720E8@l
/* 801FDC74 001FABD4  7F C5 F3 78 */	mr r5, r30
/* 801FDC78 001FABD8  7F A6 EB 78 */	mr r6, r29
/* 801FDC7C 001FABDC  4B E2 D1 45 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
lbl_801FDC80:
/* 801FDC80 001FABE0  88 1C 06 A2 */	lbz r0, 0x6a2(r28)
/* 801FDC84 001FABE4  53 C0 2E B4 */	rlwimi r0, r30, 5, 0x1a, 0x1a
/* 801FDC88 001FABE8  98 1C 06 A2 */	stb r0, 0x6a2(r28)
lbl_801FDC8C:
/* 801FDC8C 001FABEC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801FDC90 001FABF0  41 82 00 3C */	beq lbl_801FDCCC
/* 801FDC94 001FABF4  C0 22 AF FC */	lfs f1, lbl_805ACD1C@sda21(r2)
/* 801FDC98 001FABF8  7F E3 FB 78 */	mr r3, r31
/* 801FDC9C 001FABFC  C0 02 AF F8 */	lfs f0, lbl_805ACD18@sda21(r2)
/* 801FDCA0 001FAC00  7F 64 DB 78 */	mr r4, r27
/* 801FDCA4 001FAC04  38 A0 00 00 */	li r5, 0
/* 801FDCA8 001FAC08  EC 21 07 FA */	fmadds f1, f1, f31, f0
/* 801FDCAC 001FAC0C  4B E2 C8 91 */	bl "SetParticleCEXTValue__CAnimDataFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>if"
/* 801FDCB0 001FAC10  C0 22 B0 04 */	lfs f1, lbl_805ACD24@sda21(r2)
/* 801FDCB4 001FAC14  7F E3 FB 78 */	mr r3, r31
/* 801FDCB8 001FAC18  C0 02 B0 00 */	lfs f0, lbl_805ACD20@sda21(r2)
/* 801FDCBC 001FAC1C  7F 64 DB 78 */	mr r4, r27
/* 801FDCC0 001FAC20  38 A0 00 01 */	li r5, 1
/* 801FDCC4 001FAC24  EC 21 07 FA */	fmadds f1, f1, f31, f0
/* 801FDCC8 001FAC28  4B E2 C8 75 */	bl "SetParticleCEXTValue__CAnimDataFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>if"
lbl_801FDCCC:
/* 801FDCCC 001FAC2C  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 801FDCD0 001FAC30  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FDCD4 001FAC34  40 82 00 54 */	bne lbl_801FDD28
/* 801FDCD8 001FAC38  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801FDCDC 001FAC3C  3B C0 00 00 */	li r30, 0
/* 801FDCE0 001FAC40  41 82 00 14 */	beq lbl_801FDCF4
/* 801FDCE4 001FAC44  C0 02 AF C8 */	lfs f0, lbl_805ACCE8@sda21(r2)
/* 801FDCE8 001FAC48  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801FDCEC 001FAC4C  40 81 00 08 */	ble lbl_801FDCF4
/* 801FDCF0 001FAC50  3B C0 00 01 */	li r30, 1
lbl_801FDCF4:
/* 801FDCF4 001FAC54  88 1C 06 A2 */	lbz r0, 0x6a2(r28)
/* 801FDCF8 001FAC58  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 801FDCFC 001FAC5C  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 801FDD00 001FAC60  7C 05 00 40 */	cmplw r5, r0
/* 801FDD04 001FAC64  41 82 00 24 */	beq lbl_801FDD28
/* 801FDD08 001FAC68  3C 80 80 57 */	lis r4, lbl_805720F8@ha
/* 801FDD0C 001FAC6C  7F E3 FB 78 */	mr r3, r31
/* 801FDD10 001FAC70  38 84 20 F8 */	addi r4, r4, lbl_805720F8@l
/* 801FDD14 001FAC74  7F A6 EB 78 */	mr r6, r29
/* 801FDD18 001FAC78  4B E2 D0 A9 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 801FDD1C 001FAC7C  88 1C 06 A2 */	lbz r0, 0x6a2(r28)
/* 801FDD20 001FAC80  53 C0 26 F6 */	rlwimi r0, r30, 4, 0x1b, 0x1b
/* 801FDD24 001FAC84  98 1C 06 A2 */	stb r0, 0x6a2(r28)
lbl_801FDD28:
/* 801FDD28 001FAC88  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 801FDD2C 001FAC8C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801FDD30 001FAC90  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 801FDD34 001FAC94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801FDD38 001FAC98  7C 08 03 A6 */	mtlr r0
/* 801FDD3C 001FAC9C  38 21 00 30 */	addi r1, r1, 0x30
/* 801FDD40 001FACA0  4E 80 00 20 */	blr

.global sub_801fdd44
sub_801fdd44:
/* 801FDD44 001FACA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FDD48 001FACA8  7C 08 02 A6 */	mflr r0
/* 801FDD4C 001FACAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FDD50 001FACB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FDD54 001FACB4  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801FDD58 001FACB8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801FDD5C 001FACBC  2C 00 00 02 */	cmpwi r0, 2
/* 801FDD60 001FACC0  40 82 00 60 */	bne lbl_801FDDC0
/* 801FDD64 001FACC4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801FDD68 001FACC8  38 A0 00 00 */	li r5, 0
/* 801FDD6C 001FACCC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801FDD70 001FACD0  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801FDD74 001FACD4  90 01 00 08 */	stw r0, 8(r1)
/* 801FDD78 001FACD8  38 03 AA 20 */	addi r0, r3, lbl_803DAA20@l
/* 801FDD7C 001FACDC  3B E4 00 04 */	addi r31, r4, 4
/* 801FDD80 001FACE0  38 80 00 00 */	li r4, 0
/* 801FDD84 001FACE4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801FDD88 001FACE8  7F E3 FB 78 */	mr r3, r31
/* 801FDD8C 001FACEC  90 01 00 08 */	stw r0, 8(r1)
/* 801FDD90 001FACF0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801FDD94 001FACF4  4B F3 36 A5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801FDD98 001FACF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801FDD9C 001FACFC  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801FDDA0 001FAD00  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 801FDDA4 001FAD04  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801FDDA8 001FAD08  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 801FDDAC 001FAD0C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801FDDB0 001FAD10  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801FDDB4 001FAD14  90 81 00 08 */	stw r4, 8(r1)
/* 801FDDB8 001FAD18  90 7F 00 C0 */	stw r3, 0xc0(r31)
/* 801FDDBC 001FAD1C  90 01 00 08 */	stw r0, 8(r1)
lbl_801FDDC0:
/* 801FDDC0 001FAD20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FDDC4 001FAD24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FDDC8 001FAD28  7C 08 03 A6 */	mtlr r0
/* 801FDDCC 001FAD2C  38 21 00 20 */	addi r1, r1, 0x20
/* 801FDDD0 001FAD30  4E 80 00 20 */	blr

.global Listen__13CFlyingPirateFRC9CVector3f16EListenNoiseType
Listen__13CFlyingPirateFRC9CVector3f16EListenNoiseType:
/* 801FDDD4 001FAD34  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801FDDD8 001FAD38  38 C0 00 00 */	li r6, 0
/* 801FDDDC 001FAD3C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FDDE0 001FAD40  41 82 00 90 */	beq lbl_801FDE70
/* 801FDDE4 001FAD44  C0 24 00 04 */	lfs f1, 4(r4)
/* 801FDDE8 001FAD48  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801FDDEC 001FAD4C  C0 43 05 6C */	lfs f2, 0x56c(r3)
/* 801FDDF0 001FAD50  EC A1 00 28 */	fsubs f5, f1, f0
/* 801FDDF4 001FAD54  C0 84 00 00 */	lfs f4, 0(r4)
/* 801FDDF8 001FAD58  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 801FDDFC 001FAD5C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801FDE00 001FAD60  C0 44 00 08 */	lfs f2, 8(r4)
/* 801FDE04 001FAD64  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801FDE08 001FAD68  EC 64 18 28 */	fsubs f3, f4, f3
/* 801FDE0C 001FAD6C  EC 42 08 28 */	fsubs f2, f2, f1
/* 801FDE10 001FAD70  EC 25 01 72 */	fmuls f1, f5, f5
/* 801FDE14 001FAD74  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801FDE18 001FAD78  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 801FDE1C 001FAD7C  EC 22 08 2A */	fadds f1, f2, f1
/* 801FDE20 001FAD80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FDE24 001FAD84  40 80 00 34 */	bge lbl_801FDE58
/* 801FDE28 001FAD88  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FDE2C 001FAD8C  C0 23 03 C0 */	lfs f1, 0x3c0(r3)
/* 801FDE30 001FAD90  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801FDE34 001FAD94  41 82 00 10 */	beq lbl_801FDE44
/* 801FDE38 001FAD98  EC 01 00 72 */	fmuls f0, f1, f1
/* 801FDE3C 001FAD9C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801FDE40 001FADA0  40 80 00 18 */	bge lbl_801FDE58
lbl_801FDE44:
/* 801FDE44 001FADA4  88 03 06 A0 */	lbz r0, 0x6a0(r3)
/* 801FDE48 001FADA8  38 80 00 01 */	li r4, 1
/* 801FDE4C 001FADAC  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 801FDE50 001FADB0  38 C0 00 01 */	li r6, 1
/* 801FDE54 001FADB4  98 03 06 A0 */	stb r0, 0x6a0(r3)
lbl_801FDE58:
/* 801FDE58 001FADB8  2C 05 00 00 */	cmpwi r5, 0
/* 801FDE5C 001FADBC  40 82 00 14 */	bne lbl_801FDE70
/* 801FDE60 001FADC0  88 03 06 A0 */	lbz r0, 0x6a0(r3)
/* 801FDE64 001FADC4  38 80 00 01 */	li r4, 1
/* 801FDE68 001FADC8  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 801FDE6C 001FADCC  98 03 06 A0 */	stb r0, 0x6a0(r3)
lbl_801FDE70:
/* 801FDE70 001FADD0  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 801FDE74 001FADD4  4E 80 00 20 */	blr

.global AcceptScriptMsg__13CFlyingPirateF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__13CFlyingPirateF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801FDE78 001FADD8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801FDE7C 001FADDC  7C 08 02 A6 */	mflr r0
/* 801FDE80 001FADE0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801FDE84 001FADE4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801FDE88 001FADE8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 801FDE8C 001FADEC  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801FDE90 001FADF0  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 801FDE94 001FADF4  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 801FDE98 001FADF8  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 801FDE9C 001FADFC  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801FDEA0 001FAE00  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801FDEA4 001FAE04  93 A1 00 84 */	stw r29, 0x84(r1)
/* 801FDEA8 001FAE08  93 81 00 80 */	stw r28, 0x80(r1)
/* 801FDEAC 001FAE0C  7C 9C 23 78 */	mr r28, r4
/* 801FDEB0 001FAE10  7C 7D 1B 78 */	mr r29, r3
/* 801FDEB4 001FAE14  2C 1C 00 15 */	cmpwi r28, 0x15
/* 801FDEB8 001FAE18  7C BF 2B 78 */	mr r31, r5
/* 801FDEBC 001FAE1C  7C DE 33 78 */	mr r30, r6
/* 801FDEC0 001FAE20  41 82 00 2C */	beq lbl_801FDEEC
/* 801FDEC4 001FAE24  40 80 00 1C */	bge lbl_801FDEE0
/* 801FDEC8 001FAE28  2C 1C 00 04 */	cmpwi r28, 4
/* 801FDECC 001FAE2C  41 82 00 4C */	beq lbl_801FDF18
/* 801FDED0 001FAE30  40 80 00 54 */	bge lbl_801FDF24
/* 801FDED4 001FAE34  2C 1C 00 01 */	cmpwi r28, 1
/* 801FDED8 001FAE38  41 82 00 34 */	beq lbl_801FDF0C
/* 801FDEDC 001FAE3C  48 00 00 48 */	b lbl_801FDF24
lbl_801FDEE0:
/* 801FDEE0 001FAE40  2C 1C 00 22 */	cmpwi r28, 0x22
/* 801FDEE4 001FAE44  41 82 00 34 */	beq lbl_801FDF18
/* 801FDEE8 001FAE48  48 00 00 3C */	b lbl_801FDF24
lbl_801FDEEC:
/* 801FDEEC 001FAE4C  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 801FDEF0 001FAE50  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801FDEF4 001FAE54  41 82 00 30 */	beq lbl_801FDF24
/* 801FDEF8 001FAE58  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 801FDEFC 001FAE5C  38 60 00 01 */	li r3, 1
/* 801FDF00 001FAE60  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801FDF04 001FAE64  98 1D 04 00 */	stb r0, 0x400(r29)
/* 801FDF08 001FAE68  48 00 00 1C */	b lbl_801FDF24
lbl_801FDF0C:
/* 801FDF0C 001FAE6C  7F C4 F3 78 */	mr r4, r30
/* 801FDF10 001FAE70  4B FF F8 ED */	bl sub_801fd7fc
/* 801FDF14 001FAE74  48 00 00 10 */	b lbl_801FDF24
lbl_801FDF18:
/* 801FDF18 001FAE78  7F A3 EB 78 */	mr r3, r29
/* 801FDF1C 001FAE7C  7F C4 F3 78 */	mr r4, r30
/* 801FDF20 001FAE80  4B FF F8 31 */	bl sub_801fd750
lbl_801FDF24:
/* 801FDF24 001FAE84  A0 1F 00 00 */	lhz r0, 0(r31)
/* 801FDF28 001FAE88  7F A3 EB 78 */	mr r3, r29
/* 801FDF2C 001FAE8C  7F 84 E3 78 */	mr r4, r28
/* 801FDF30 001FAE90  7F C6 F3 78 */	mr r6, r30
/* 801FDF34 001FAE94  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801FDF38 001FAE98  38 A1 00 20 */	addi r5, r1, 0x20
/* 801FDF3C 001FAE9C  4B E7 EC 3D */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801FDF40 001FAEA0  38 1C FF F3 */	addi r0, r28, -13
/* 801FDF44 001FAEA4  28 00 00 1B */	cmplwi r0, 0x1b
/* 801FDF48 001FAEA8  41 81 04 30 */	bgt lbl_801FE378
/* 801FDF4C 001FAEAC  3C 60 80 3E */	lis r3, lbl_803E6B28@ha
/* 801FDF50 001FAEB0  54 00 10 3A */	slwi r0, r0, 2
/* 801FDF54 001FAEB4  38 63 6B 28 */	addi r3, r3, lbl_803E6B28@l
/* 801FDF58 001FAEB8  7C 03 00 2E */	lwzx r0, r3, r0
/* 801FDF5C 001FAEBC  7C 09 03 A6 */	mtctr r0
/* 801FDF60 001FAEC0  4E 80 04 20 */	bctr
.global lbl_801FDF64
lbl_801FDF64:
/* 801FDF64 001FAEC4  83 FD 00 2C */	lwz r31, 0x2c(r29)
/* 801FDF68 001FAEC8  48 00 00 CC */	b lbl_801FE034
lbl_801FDF6C:
/* 801FDF6C 001FAECC  80 7F 00 00 */	lwz r3, 0(r31)
/* 801FDF70 001FAED0  2C 03 00 0C */	cmpwi r3, 0xc
/* 801FDF74 001FAED4  40 82 00 60 */	bne lbl_801FDFD4
/* 801FDF78 001FAED8  80 1F 00 08 */	lwz r0, 8(r31)
/* 801FDF7C 001FAEDC  7F C4 F3 78 */	mr r4, r30
/* 801FDF80 001FAEE0  38 61 00 1C */	addi r3, r1, 0x1c
/* 801FDF84 001FAEE4  38 A1 00 34 */	addi r5, r1, 0x34
/* 801FDF88 001FAEE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FDF8C 001FAEEC  4B E4 9F 91 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801FDF90 001FAEF0  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 801FDF94 001FAEF4  7F C3 F3 78 */	mr r3, r30
/* 801FDF98 001FAEF8  38 81 00 18 */	addi r4, r1, 0x18
/* 801FDF9C 001FAEFC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801FDFA0 001FAF00  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801FDFA4 001FAF04  4B E4 E5 D1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801FDFA8 001FAF08  7C 64 1B 78 */	mr r4, r3
/* 801FDFAC 001FAF0C  38 61 00 50 */	addi r3, r1, 0x50
/* 801FDFB0 001FAF10  4B EA CA 7D */	bl "__ct__31TCastToPtr<17CScriptCoverPoint>FP7CEntity"
/* 801FDFB4 001FAF14  80 63 00 04 */	lwz r3, 4(r3)
/* 801FDFB8 001FAF18  28 03 00 00 */	cmplwi r3, 0
/* 801FDFBC 001FAF1C  41 82 00 74 */	beq lbl_801FE030
/* 801FDFC0 001FAF20  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801FDFC4 001FAF24  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801FDFC8 001FAF28  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801FDFCC 001FAF2C  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 801FDFD0 001FAF30  48 00 00 60 */	b lbl_801FE030
lbl_801FDFD4:
/* 801FDFD4 001FAF34  2C 03 00 0D */	cmpwi r3, 0xd
/* 801FDFD8 001FAF38  40 82 00 24 */	bne lbl_801FDFFC
/* 801FDFDC 001FAF3C  80 1F 00 04 */	lwz r0, 4(r31)
/* 801FDFE0 001FAF40  2C 00 00 06 */	cmpwi r0, 6
/* 801FDFE4 001FAF44  40 82 00 18 */	bne lbl_801FDFFC
/* 801FDFE8 001FAF48  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 801FDFEC 001FAF4C  38 60 00 01 */	li r3, 1
/* 801FDFF0 001FAF50  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801FDFF4 001FAF54  98 1D 06 A0 */	stb r0, 0x6a0(r29)
/* 801FDFF8 001FAF58  48 00 00 38 */	b lbl_801FE030
lbl_801FDFFC:
/* 801FDFFC 001FAF5C  2C 03 00 0A */	cmpwi r3, 0xa
/* 801FE000 001FAF60  40 82 00 30 */	bne lbl_801FE030
/* 801FE004 001FAF64  80 1F 00 04 */	lwz r0, 4(r31)
/* 801FE008 001FAF68  2C 00 00 13 */	cmpwi r0, 0x13
/* 801FE00C 001FAF6C  40 82 00 24 */	bne lbl_801FE030
/* 801FE010 001FAF70  80 1F 00 08 */	lwz r0, 8(r31)
/* 801FE014 001FAF74  7F C4 F3 78 */	mr r4, r30
/* 801FE018 001FAF78  38 61 00 0C */	addi r3, r1, 0xc
/* 801FE01C 001FAF7C  38 A1 00 30 */	addi r5, r1, 0x30
/* 801FE020 001FAF80  90 01 00 30 */	stw r0, 0x30(r1)
/* 801FE024 001FAF84  4B E4 9E F9 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801FE028 001FAF88  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801FE02C 001FAF8C  B0 1D 08 5C */	sth r0, 0x85c(r29)
lbl_801FE030:
/* 801FE030 001FAF90  3B FF 00 0C */	addi r31, r31, 0xc
lbl_801FE034:
/* 801FE034 001FAF94  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 801FE038 001FAF98  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 801FE03C 001FAF9C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801FE040 001FAFA0  7C 03 02 14 */	add r0, r3, r0
/* 801FE044 001FAFA4  7C 1F 00 40 */	cmplw r31, r0
/* 801FE048 001FAFA8  40 82 FF 24 */	bne lbl_801FDF6C
/* 801FE04C 001FAFAC  80 BD 00 04 */	lwz r5, 4(r29)
/* 801FE050 001FAFB0  80 9E 08 50 */	lwz r4, 0x850(r30)
/* 801FE054 001FAFB4  54 A3 18 38 */	slwi r3, r5, 3
/* 801FE058 001FAFB8  90 A1 00 28 */	stw r5, 0x28(r1)
/* 801FE05C 001FAFBC  80 84 00 20 */	lwz r4, 0x20(r4)
/* 801FE060 001FAFC0  38 03 00 04 */	addi r0, r3, 4
/* 801FE064 001FAFC4  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 801FE068 001FAFC8  7C 64 00 2E */	lwzx r3, r4, r0
/* 801FE06C 001FAFCC  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 801FE070 001FAFD0  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 801FE074 001FAFD4  90 1D 06 A8 */	stw r0, 0x6a8(r29)
/* 801FE078 001FAFD8  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 801FE07C 001FAFDC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801FE080 001FAFE0  41 82 00 10 */	beq lbl_801FE090
/* 801FE084 001FAFE4  7F A3 EB 78 */	mr r3, r29
/* 801FE088 001FAFE8  7F C4 F3 78 */	mr r4, r30
/* 801FE08C 001FAFEC  4B FF F7 71 */	bl sub_801fd7fc
lbl_801FE090:
/* 801FE090 001FAFF0  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 801FE094 001FAFF4  7F A3 EB 78 */	mr r3, r29
/* 801FE098 001FAFF8  C0 22 AF 60 */	lfs f1, lbl_805ACC80@sda21(r2)
/* 801FE09C 001FAFFC  7F C4 F3 78 */	mr r4, r30
/* 801FE0A0 001FB000  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 801FE0A4 001FB004  4B FF FB 45 */	bl sub_801fdbe8
/* 801FE0A8 001FB008  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 801FE0AC 001FB00C  3C 60 80 57 */	lis r3, lbl_80572118@ha
/* 801FE0B0 001FB010  38 83 21 18 */	addi r4, r3, lbl_80572118@l
/* 801FE0B4 001FB014  7F C6 F3 78 */	mr r6, r30
/* 801FE0B8 001FB018  80 65 00 10 */	lwz r3, 0x10(r5)
/* 801FE0BC 001FB01C  38 A0 00 01 */	li r5, 1
/* 801FE0C0 001FB020  4B E2 CD 01 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 801FE0C4 001FB024  48 00 02 B4 */	b lbl_801FE378
.global lbl_801FE0C8
lbl_801FE0C8:
/* 801FE0C8 001FB028  C3 BD 06 28 */	lfs f29, 0x628(r29)
/* 801FE0CC 001FB02C  C3 DD 06 24 */	lfs f30, 0x624(r29)
/* 801FE0D0 001FB030  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801FE0D4 001FB034  48 11 44 09 */	bl Float__9CRandom16Fv
/* 801FE0D8 001FB038  EC 1D F0 7A */	fmadds f0, f29, f1, f30
/* 801FE0DC 001FB03C  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 801FE0E0 001FB040  48 00 02 98 */	b lbl_801FE378
.global lbl_801FE0E4
lbl_801FE0E4:
/* 801FE0E4 001FB044  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801FE0E8 001FB048  4B F3 BF E5 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 801FE0EC 001FB04C  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FE0F0 001FB050  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801FE0F4 001FB054  40 82 00 4C */	bne lbl_801FE140
/* 801FE0F8 001FB058  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 801FE0FC 001FB05C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801FE100 001FB060  40 82 00 40 */	bne lbl_801FE140
/* 801FE104 001FB064  88 1D 06 A1 */	lbz r0, 0x6a1(r29)
/* 801FE108 001FB068  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801FE10C 001FB06C  40 82 00 34 */	bne lbl_801FE140
/* 801FE110 001FB070  7F A3 EB 78 */	mr r3, r29
/* 801FE114 001FB074  C3 BD 00 E8 */	lfs f29, 0xe8(r29)
/* 801FE118 001FB078  81 9D 00 00 */	lwz r12, 0(r29)
/* 801FE11C 001FB07C  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 801FE120 001FB080  7D 89 03 A6 */	mtctr r12
/* 801FE124 001FB084  4E 80 04 21 */	bctrl
/* 801FE128 001FB088  FC 20 08 50 */	fneg f1, f1
/* 801FE12C 001FB08C  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FE130 001FB090  D0 1D 01 50 */	stfs f0, 0x150(r29)
/* 801FE134 001FB094  EC 21 07 72 */	fmuls f1, f1, f29
/* 801FE138 001FB098  D0 1D 01 54 */	stfs f0, 0x154(r29)
/* 801FE13C 001FB09C  D0 3D 01 58 */	stfs f1, 0x158(r29)
lbl_801FE140:
/* 801FE140 001FB0A0  38 00 00 00 */	li r0, 0
/* 801FE144 001FB0A4  90 1D 07 EC */	stw r0, 0x7ec(r29)
/* 801FE148 001FB0A8  48 00 02 30 */	b lbl_801FE378
.global lbl_801FE14C
lbl_801FE14C:
/* 801FE14C 001FB0AC  38 00 00 02 */	li r0, 2
/* 801FE150 001FB0B0  90 1D 07 EC */	stw r0, 0x7ec(r29)
/* 801FE154 001FB0B4  48 00 02 24 */	b lbl_801FE378
.global lbl_801FE158
lbl_801FE158:
/* 801FE158 001FB0B8  A0 1D 06 A4 */	lhz r0, 0x6a4(r29)
/* 801FE15C 001FB0BC  7F A3 EB 78 */	mr r3, r29
/* 801FE160 001FB0C0  7F C4 F3 78 */	mr r4, r30
/* 801FE164 001FB0C4  38 A1 00 08 */	addi r5, r1, 8
/* 801FE168 001FB0C8  B0 01 00 08 */	sth r0, 8(r1)
/* 801FE16C 001FB0CC  4B E7 E7 41 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 801FE170 001FB0D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801FE174 001FB0D4  41 82 02 04 */	beq lbl_801FE378
/* 801FE178 001FB0D8  88 1D 03 28 */	lbz r0, 0x328(r29)
/* 801FE17C 001FB0DC  38 60 00 00 */	li r3, 0
/* 801FE180 001FB0E0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801FE184 001FB0E4  7F A3 EB 78 */	mr r3, r29
/* 801FE188 001FB0E8  98 1D 03 28 */	stb r0, 0x328(r29)
/* 801FE18C 001FB0EC  81 9D 00 00 */	lwz r12, 0(r29)
/* 801FE190 001FB0F0  C3 BD 00 E8 */	lfs f29, 0xe8(r29)
/* 801FE194 001FB0F4  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 801FE198 001FB0F8  7D 89 03 A6 */	mtctr r12
/* 801FE19C 001FB0FC  4E 80 04 21 */	bctrl
/* 801FE1A0 001FB100  FC 40 E8 50 */	fneg f2, f29
/* 801FE1A4 001FB104  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FE1A8 001FB108  7F A3 EB 78 */	mr r3, r29
/* 801FE1AC 001FB10C  7F C5 F3 78 */	mr r5, r30
/* 801FE1B0 001FB110  D0 1D 01 50 */	stfs f0, 0x150(r29)
/* 801FE1B4 001FB114  38 80 00 25 */	li r4, 0x25
/* 801FE1B8 001FB118  EC 22 00 72 */	fmuls f1, f2, f1
/* 801FE1BC 001FB11C  D0 1D 01 54 */	stfs f0, 0x154(r29)
/* 801FE1C0 001FB120  D0 3D 01 58 */	stfs f1, 0x158(r29)
/* 801FE1C4 001FB124  4B E5 61 8D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801FE1C8 001FB128  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801FE1CC 001FB12C  7F A3 EB 78 */	mr r3, r29
/* 801FE1D0 001FB130  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801FE1D4 001FB134  38 81 00 60 */	addi r4, r1, 0x60
/* 801FE1D8 001FB138  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801FE1DC 001FB13C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801FE1E0 001FB140  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801FE1E4 001FB144  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 801FE1E8 001FB148  4B E7 E9 75 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801FE1EC 001FB14C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801FE1F0 001FB150  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 801FE1F4 001FB154  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 801FE1F8 001FB158  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 801FE1FC 001FB15C  EF C1 00 28 */	fsubs f30, f1, f0
/* 801FE200 001FB160  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FE204 001FB164  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 801FE208 001FB168  EF E4 18 28 */	fsubs f31, f4, f3
/* 801FE20C 001FB16C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801FE210 001FB170  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801FE214 001FB174  EF A2 08 28 */	fsubs f29, f2, f1
/* 801FE218 001FB178  40 80 01 60 */	bge lbl_801FE378
/* 801FE21C 001FB17C  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 801FE220 001FB180  7F A3 EB 78 */	mr r3, r29
/* 801FE224 001FB184  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801FE228 001FB188  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 801FE22C 001FB18C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801FE230 001FB190  C0 1D 01 40 */	lfs f0, 0x140(r29)
/* 801FE234 001FB194  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801FE238 001FB198  81 9D 00 00 */	lwz r12, 0(r29)
/* 801FE23C 001FB19C  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 801FE240 001FB1A0  7D 89 03 A6 */	mtctr r12
/* 801FE244 001FB1A4  4E 80 04 21 */	bctrl
/* 801FE248 001FB1A8  C0 02 AF 64 */	lfs f0, lbl_805ACC84@sda21(r2)
/* 801FE24C 001FB1AC  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 801FE250 001FB1B0  EC 40 00 72 */	fmuls f2, f0, f1
/* 801FE254 001FB1B4  C0 62 AF 60 */	lfs f3, lbl_805ACC80@sda21(r2)
/* 801FE258 001FB1B8  EC 04 01 32 */	fmuls f0, f4, f4
/* 801FE25C 001FB1BC  EC 42 07 BC */	fnmsubs f2, f2, f30, f0
/* 801FE260 001FB1C0  FC 03 10 00 */	fcmpu cr0, f3, f2
/* 801FE264 001FB1C4  40 82 00 08 */	bne lbl_801FE26C
/* 801FE268 001FB1C8  48 00 00 10 */	b lbl_801FE278
lbl_801FE26C:
/* 801FE26C 001FB1CC  FC 00 10 34 */	frsqrte f0, f2
/* 801FE270 001FB1D0  FC 62 00 32 */	fmul f3, f2, f0
/* 801FE274 001FB1D4  FC 60 18 18 */	frsp f3, f3
lbl_801FE278:
/* 801FE278 001FB1D8  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 801FE27C 001FB1DC  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FE280 001FB1E0  FC 40 10 50 */	fneg f2, f2
/* 801FE284 001FB1E4  EC 42 18 2A */	fadds f2, f2, f3
/* 801FE288 001FB1E8  EF C2 08 24 */	fdivs f30, f2, f1
/* 801FE28C 001FB1EC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801FE290 001FB1F0  40 81 00 E8 */	ble lbl_801FE378
/* 801FE294 001FB1F4  FC 20 F8 90 */	fmr f1, f31
/* 801FE298 001FB1F8  38 61 00 40 */	addi r3, r1, 0x40
/* 801FE29C 001FB1FC  FC 40 E8 90 */	fmr f2, f29
/* 801FE2A0 001FB200  48 11 5F 61 */	bl __ct__9CVector2fFff
/* 801FE2A4 001FB204  38 61 00 48 */	addi r3, r1, 0x48
/* 801FE2A8 001FB208  38 81 00 40 */	addi r4, r1, 0x40
/* 801FE2AC 001FB20C  48 11 5D D5 */	bl AsNormalized__9CVector2fCFv
/* 801FE2B0 001FB210  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 801FE2B4 001FB214  FC 20 F8 90 */	fmr f1, f31
/* 801FE2B8 001FB218  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801FE2BC 001FB21C  FC 40 E8 90 */	fmr f2, f29
/* 801FE2C0 001FB220  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 801FE2C4 001FB224  38 61 00 38 */	addi r3, r1, 0x38
/* 801FE2C8 001FB228  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801FE2CC 001FB22C  48 11 5F 35 */	bl __ct__9CVector2fFff
/* 801FE2D0 001FB230  38 61 00 38 */	addi r3, r1, 0x38
/* 801FE2D4 001FB234  48 11 5E 21 */	bl Magnitude__9CVector2fCFv
/* 801FE2D8 001FB238  EC 41 F0 24 */	fdivs f2, f1, f30
/* 801FE2DC 001FB23C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 801FE2E0 001FB240  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801FE2E4 001FB244  7F A3 EB 78 */	mr r3, r29
/* 801FE2E8 001FB248  38 81 00 6C */	addi r4, r1, 0x6c
/* 801FE2EC 001FB24C  EC 22 00 72 */	fmuls f1, f2, f1
/* 801FE2F0 001FB250  EC 02 00 32 */	fmuls f0, f2, f0
/* 801FE2F4 001FB254  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 801FE2F8 001FB258  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801FE2FC 001FB25C  4B F1 C9 A5 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 801FE300 001FB260  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801FE304 001FB264  C4 23 66 A0 */	lfsu f1, sZeroVector__9CVector3f@l(r3)
/* 801FE308 001FB268  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801FE30C 001FB26C  D0 3D 08 70 */	stfs f1, 0x870(r29)
/* 801FE310 001FB270  C0 23 00 04 */	lfs f1, 4(r3)
/* 801FE314 001FB274  D0 3D 08 74 */	stfs f1, 0x874(r29)
/* 801FE318 001FB278  C0 23 00 08 */	lfs f1, 8(r3)
/* 801FE31C 001FB27C  D0 3D 08 78 */	stfs f1, 0x878(r29)
/* 801FE320 001FB280  C0 23 00 00 */	lfs f1, 0(r3)
/* 801FE324 001FB284  D0 3D 08 7C */	stfs f1, 0x87c(r29)
/* 801FE328 001FB288  C0 23 00 04 */	lfs f1, 4(r3)
/* 801FE32C 001FB28C  D0 3D 08 80 */	stfs f1, 0x880(r29)
/* 801FE330 001FB290  C0 23 00 08 */	lfs f1, 8(r3)
/* 801FE334 001FB294  D0 3D 08 84 */	stfs f1, 0x884(r29)
/* 801FE338 001FB298  D0 1D 08 98 */	stfs f0, 0x898(r29)
/* 801FE33C 001FB29C  48 00 00 3C */	b lbl_801FE378
.global lbl_801FE340
lbl_801FE340:
/* 801FE340 001FB2A0  88 1D 06 A1 */	lbz r0, 0x6a1(r29)
/* 801FE344 001FB2A4  38 60 00 00 */	li r3, 0
/* 801FE348 001FB2A8  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801FE34C 001FB2AC  98 1D 06 A1 */	stb r0, 0x6a1(r29)
/* 801FE350 001FB2B0  48 00 00 28 */	b lbl_801FE378
.global lbl_801FE354
lbl_801FE354:
/* 801FE354 001FB2B4  88 1D 06 A1 */	lbz r0, 0x6a1(r29)
/* 801FE358 001FB2B8  38 60 00 01 */	li r3, 1
/* 801FE35C 001FB2BC  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801FE360 001FB2C0  98 1D 06 A1 */	stb r0, 0x6a1(r29)
/* 801FE364 001FB2C4  48 00 00 14 */	b lbl_801FE378
.global lbl_801FE368
lbl_801FE368:
/* 801FE368 001FB2C8  88 1D 06 A2 */	lbz r0, 0x6a2(r29)
/* 801FE36C 001FB2CC  38 60 00 01 */	li r3, 1
/* 801FE370 001FB2D0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801FE374 001FB2D4  98 1D 06 A2 */	stb r0, 0x6a2(r29)
.global lbl_801FE378
lbl_801FE378:
/* 801FE378 001FB2D8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 801FE37C 001FB2DC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801FE380 001FB2E0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 801FE384 001FB2E4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 801FE388 001FB2E8  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 801FE38C 001FB2EC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 801FE390 001FB2F0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801FE394 001FB2F4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801FE398 001FB2F8  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 801FE39C 001FB2FC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801FE3A0 001FB300  83 81 00 80 */	lwz r28, 0x80(r1)
/* 801FE3A4 001FB304  7C 08 03 A6 */	mtlr r0
/* 801FE3A8 001FB308  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801FE3AC 001FB30C  4E 80 00 20 */	blr

.global Accept__13CFlyingPirateFR8IVisitor
Accept__13CFlyingPirateFR8IVisitor:
/* 801FE3B0 001FB310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FE3B4 001FB314  7C 08 02 A6 */	mflr r0
/* 801FE3B8 001FB318  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FE3BC 001FB31C  7C 60 1B 78 */	mr r0, r3
/* 801FE3C0 001FB320  7C 83 23 78 */	mr r3, r4
/* 801FE3C4 001FB324  81 84 00 00 */	lwz r12, 0(r4)
/* 801FE3C8 001FB328  7C 04 03 78 */	mr r4, r0
/* 801FE3CC 001FB32C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801FE3D0 001FB330  7D 89 03 A6 */	mtctr r12
/* 801FE3D4 001FB334  4E 80 04 21 */	bctrl
/* 801FE3D8 001FB338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FE3DC 001FB33C  7C 08 03 A6 */	mtlr r0
/* 801FE3E0 001FB340  38 21 00 10 */	addi r1, r1, 0x10
/* 801FE3E4 001FB344  4E 80 00 20 */	blr

.global "__ct__13CFlyingPirateF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoffUiUiRC11CDamageInfoUsUiRC11CDamageInfoUiffUiRC11CDamageInfoifffUsUs"
"__ct__13CFlyingPirateF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoffUiUiRC11CDamageInfoUsUiRC11CDamageInfoUiffUiRC11CDamageInfoifffUsUs":
/* 801FE3E8 001FB348  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 801FE3EC 001FB34C  7C 08 02 A6 */	mflr r0
/* 801FE3F0 001FB350  7C EC 3B 78 */	mr r12, r7
/* 801FE3F4 001FB354  39 60 00 01 */	li r11, 1
/* 801FE3F8 001FB358  90 01 01 94 */	stw r0, 0x194(r1)
/* 801FE3FC 001FB35C  38 E0 00 00 */	li r7, 0
/* 801FE400 001FB360  BF 01 01 70 */	stmw r24, 0x170(r1)
/* 801FE404 001FB364  7D 5B 53 78 */	mr r27, r10
/* 801FE408 001FB368  7C DC 33 78 */	mr r28, r6
/* 801FE40C 001FB36C  7D 0A 43 78 */	mr r10, r8
/* 801FE410 001FB370  7C A6 2B 78 */	mr r6, r5
/* 801FE414 001FB374  83 21 01 98 */	lwz r25, 0x198(r1)
/* 801FE418 001FB378  83 01 01 9C */	lwz r24, 0x19c(r1)
/* 801FE41C 001FB37C  7C 7A 1B 78 */	mr r26, r3
/* 801FE420 001FB380  7F 88 E3 78 */	mr r8, r28
/* 801FE424 001FB384  38 A1 00 30 */	addi r5, r1, 0x30
/* 801FE428 001FB388  A0 04 00 00 */	lhz r0, 0(r4)
/* 801FE42C 001FB38C  38 80 00 00 */	li r4, 0
/* 801FE430 001FB390  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801FE434 001FB394  38 00 00 07 */	li r0, 7
/* 801FE438 001FB398  93 61 00 08 */	stw r27, 8(r1)
/* 801FE43C 001FB39C  90 81 00 0C */	stw r4, 0xc(r1)
/* 801FE440 001FB3A0  38 80 00 0E */	li r4, 0xe
/* 801FE444 001FB3A4  91 61 00 10 */	stw r11, 0x10(r1)
/* 801FE448 001FB3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FE44C 001FB3AC  91 21 00 18 */	stw r9, 0x18(r1)
/* 801FE450 001FB3B0  7D 89 63 78 */	mr r9, r12
/* 801FE454 001FB3B4  91 61 00 1C */	stw r11, 0x1c(r1)
/* 801FE458 001FB3B8  4B E7 EF F9 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 801FE45C 001FB3BC  3C 60 80 3E */	lis r3, __vt__13CFlyingPirate@ha
/* 801FE460 001FB3C0  7F 24 CB 78 */	mr r4, r25
/* 801FE464 001FB3C4  38 03 68 5C */	addi r0, r3, __vt__13CFlyingPirate@l
/* 801FE468 001FB3C8  7F 05 C3 78 */	mr r5, r24
/* 801FE46C 001FB3CC  90 1A 00 00 */	stw r0, 0(r26)
/* 801FE470 001FB3D0  38 7A 05 68 */	addi r3, r26, 0x568
/* 801FE474 001FB3D4  48 00 07 F9 */	bl sub_801fec6c
/* 801FE478 001FB3D8  38 00 00 00 */	li r0, 0
/* 801FE47C 001FB3DC  38 C0 00 01 */	li r6, 1
/* 801FE480 001FB3E0  90 1A 06 5C */	stw r0, 0x65c(r26)
/* 801FE484 001FB3E4  38 7A 06 A8 */	addi r3, r26, 0x6a8
/* 801FE488 001FB3E8  38 80 00 00 */	li r4, 0
/* 801FE48C 001FB3EC  90 1A 06 84 */	stw r0, 0x684(r26)
/* 801FE490 001FB3F0  80 FA 05 70 */	lwz r7, 0x570(r26)
/* 801FE494 001FB3F4  88 BA 06 A0 */	lbz r5, 0x6a0(r26)
/* 801FE498 001FB3F8  50 E5 3E 30 */	rlwimi r5, r7, 7, 0x18, 0x18
/* 801FE49C 001FB3FC  98 BA 06 A0 */	stb r5, 0x6a0(r26)
/* 801FE4A0 001FB400  80 FA 05 70 */	lwz r7, 0x570(r26)
/* 801FE4A4 001FB404  88 BA 06 A0 */	lbz r5, 0x6a0(r26)
/* 801FE4A8 001FB408  50 E5 2E 72 */	rlwimi r5, r7, 5, 0x19, 0x19
/* 801FE4AC 001FB40C  98 BA 06 A0 */	stb r5, 0x6a0(r26)
/* 801FE4B0 001FB410  88 BA 06 A0 */	lbz r5, 0x6a0(r26)
/* 801FE4B4 001FB414  50 05 2E B4 */	rlwimi r5, r0, 5, 0x1a, 0x1a
/* 801FE4B8 001FB418  98 BA 06 A0 */	stb r5, 0x6a0(r26)
/* 801FE4BC 001FB41C  88 BA 06 A0 */	lbz r5, 0x6a0(r26)
/* 801FE4C0 001FB420  50 05 26 F6 */	rlwimi r5, r0, 4, 0x1b, 0x1b
/* 801FE4C4 001FB424  98 BA 06 A0 */	stb r5, 0x6a0(r26)
/* 801FE4C8 001FB428  88 BA 06 A0 */	lbz r5, 0x6a0(r26)
/* 801FE4CC 001FB42C  50 05 1F 38 */	rlwimi r5, r0, 3, 0x1c, 0x1c
/* 801FE4D0 001FB430  98 BA 06 A0 */	stb r5, 0x6a0(r26)
/* 801FE4D4 001FB434  88 BA 06 A0 */	lbz r5, 0x6a0(r26)
/* 801FE4D8 001FB438  50 05 17 7A */	rlwimi r5, r0, 2, 0x1d, 0x1d
/* 801FE4DC 001FB43C  98 BA 06 A0 */	stb r5, 0x6a0(r26)
/* 801FE4E0 001FB440  88 BA 06 A0 */	lbz r5, 0x6a0(r26)
/* 801FE4E4 001FB444  50 05 0F BC */	rlwimi r5, r0, 1, 0x1e, 0x1e
/* 801FE4E8 001FB448  98 BA 06 A0 */	stb r5, 0x6a0(r26)
/* 801FE4EC 001FB44C  88 BA 06 A0 */	lbz r5, 0x6a0(r26)
/* 801FE4F0 001FB450  50 C5 07 FE */	rlwimi r5, r6, 0, 0x1f, 0x1f
/* 801FE4F4 001FB454  98 BA 06 A0 */	stb r5, 0x6a0(r26)
/* 801FE4F8 001FB458  88 BA 06 A1 */	lbz r5, 0x6a1(r26)
/* 801FE4FC 001FB45C  50 05 3E 30 */	rlwimi r5, r0, 7, 0x18, 0x18
/* 801FE500 001FB460  98 BA 06 A1 */	stb r5, 0x6a1(r26)
/* 801FE504 001FB464  88 BA 06 A1 */	lbz r5, 0x6a1(r26)
/* 801FE508 001FB468  50 05 36 72 */	rlwimi r5, r0, 6, 0x19, 0x19
/* 801FE50C 001FB46C  98 BA 06 A1 */	stb r5, 0x6a1(r26)
/* 801FE510 001FB470  88 BA 06 A1 */	lbz r5, 0x6a1(r26)
/* 801FE514 001FB474  50 05 2E B4 */	rlwimi r5, r0, 5, 0x1a, 0x1a
/* 801FE518 001FB478  98 BA 06 A1 */	stb r5, 0x6a1(r26)
/* 801FE51C 001FB47C  88 BA 06 A1 */	lbz r5, 0x6a1(r26)
/* 801FE520 001FB480  50 05 1F 38 */	rlwimi r5, r0, 3, 0x1c, 0x1c
/* 801FE524 001FB484  98 BA 06 A1 */	stb r5, 0x6a1(r26)
/* 801FE528 001FB488  88 BA 06 A1 */	lbz r5, 0x6a1(r26)
/* 801FE52C 001FB48C  50 05 17 7A */	rlwimi r5, r0, 2, 0x1d, 0x1d
/* 801FE530 001FB490  98 BA 06 A1 */	stb r5, 0x6a1(r26)
/* 801FE534 001FB494  88 BA 06 A1 */	lbz r5, 0x6a1(r26)
/* 801FE538 001FB498  50 05 0F BC */	rlwimi r5, r0, 1, 0x1e, 0x1e
/* 801FE53C 001FB49C  98 BA 06 A1 */	stb r5, 0x6a1(r26)
/* 801FE540 001FB4A0  88 BA 06 A1 */	lbz r5, 0x6a1(r26)
/* 801FE544 001FB4A4  50 05 07 FE */	rlwimi r5, r0, 0, 0x1f, 0x1f
/* 801FE548 001FB4A8  98 BA 06 A1 */	stb r5, 0x6a1(r26)
/* 801FE54C 001FB4AC  88 BA 06 A2 */	lbz r5, 0x6a2(r26)
/* 801FE550 001FB4B0  50 05 3E 30 */	rlwimi r5, r0, 7, 0x18, 0x18
/* 801FE554 001FB4B4  98 BA 06 A2 */	stb r5, 0x6a2(r26)
/* 801FE558 001FB4B8  88 BA 06 A2 */	lbz r5, 0x6a2(r26)
/* 801FE55C 001FB4BC  50 05 36 72 */	rlwimi r5, r0, 6, 0x19, 0x19
/* 801FE560 001FB4C0  98 BA 06 A2 */	stb r5, 0x6a2(r26)
/* 801FE564 001FB4C4  88 BA 06 A2 */	lbz r5, 0x6a2(r26)
/* 801FE568 001FB4C8  50 05 2E B4 */	rlwimi r5, r0, 5, 0x1a, 0x1a
/* 801FE56C 001FB4CC  98 BA 06 A2 */	stb r5, 0x6a2(r26)
/* 801FE570 001FB4D0  88 BA 06 A2 */	lbz r5, 0x6a2(r26)
/* 801FE574 001FB4D4  50 05 26 F6 */	rlwimi r5, r0, 4, 0x1b, 0x1b
/* 801FE578 001FB4D8  98 BA 06 A2 */	stb r5, 0x6a2(r26)
/* 801FE57C 001FB4DC  88 BA 06 A2 */	lbz r5, 0x6a2(r26)
/* 801FE580 001FB4E0  50 05 1F 38 */	rlwimi r5, r0, 3, 0x1c, 0x1c
/* 801FE584 001FB4E4  98 BA 06 A2 */	stb r5, 0x6a2(r26)
/* 801FE588 001FB4E8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FE58C 001FB4EC  B0 1A 06 A4 */	sth r0, 0x6a4(r26)
/* 801FE590 001FB4F0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FE594 001FB4F4  B0 1A 06 A6 */	sth r0, 0x6a6(r26)
/* 801FE598 001FB4F8  88 1A 06 A0 */	lbz r0, 0x6a0(r26)
/* 801FE59C 001FB4FC  80 DB 01 0C */	lwz r6, 0x10c(r27)
/* 801FE5A0 001FB500  54 05 D7 FE */	rlwinm r5, r0, 0x1a, 0x1f, 0x1f
/* 801FE5A4 001FB504  C0 3B 00 C4 */	lfs f1, 0xc4(r27)
/* 801FE5A8 001FB508  7C 05 00 D0 */	neg r0, r5
/* 801FE5AC 001FB50C  C0 5B 00 C8 */	lfs f2, 0xc8(r27)
/* 801FE5B0 001FB510  7C 00 2B 78 */	or r0, r0, r5
/* 801FE5B4 001FB514  54 05 0F FE */	srwi r5, r0, 0x1f
/* 801FE5B8 001FB518  38 A5 00 03 */	addi r5, r5, 3
/* 801FE5BC 001FB51C  4B FC A7 D9 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 801FE5C0 001FB520  38 00 00 00 */	li r0, 0
/* 801FE5C4 001FB524  3C 60 80 3D */	lis r3, lbl_803D247C@ha
/* 801FE5C8 001FB528  90 1A 07 90 */	stw r0, 0x790(r26)
/* 801FE5CC 001FB52C  38 83 24 7C */	addi r4, r3, lbl_803D247C@l
/* 801FE5D0 001FB530  38 A0 00 FF */	li r5, 0xff
/* 801FE5D4 001FB534  38 00 FF FF */	li r0, -1
/* 801FE5D8 001FB538  C0 1B 00 54 */	lfs f0, 0x54(r27)
/* 801FE5DC 001FB53C  38 61 01 18 */	addi r3, r1, 0x118
/* 801FE5E0 001FB540  38 84 00 19 */	addi r4, r4, 0x19
/* 801FE5E4 001FB544  D0 1A 07 94 */	stfs f0, 0x794(r26)
/* 801FE5E8 001FB548  98 BA 07 98 */	stb r5, 0x798(r26)
/* 801FE5EC 001FB54C  90 1A 07 9C */	stw r0, 0x79c(r26)
/* 801FE5F0 001FB550  4B E0 66 C9 */	bl string_l__4rstlFPCc
/* 801FE5F4 001FB554  80 9A 00 64 */	lwz r4, 0x64(r26)
/* 801FE5F8 001FB558  38 7A 07 A0 */	addi r3, r26, 0x7a0
/* 801FE5FC 001FB55C  C0 22 B0 08 */	lfs f1, lbl_805ACD28@sda21(r2)
/* 801FE600 001FB560  38 A1 01 18 */	addi r5, r1, 0x118
/* 801FE604 001FB564  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801FE608 001FB568  38 C0 00 00 */	li r6, 0
/* 801FE60C 001FB56C  C0 42 AF 8C */	lfs f2, lbl_805ACCAC@sda21(r2)
/* 801FE610 001FB570  4B F7 73 A9 */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 801FE614 001FB574  38 61 01 18 */	addi r3, r1, 0x118
/* 801FE618 001FB578  48 13 F4 C9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801FE61C 001FB57C  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FE620 001FB580  3C 60 80 3E */	lis r3, skBursts__13CFlyingPirate@ha
/* 801FE624 001FB584  38 83 67 E8 */	addi r4, r3, skBursts__13CFlyingPirate@l
/* 801FE628 001FB588  38 00 00 FF */	li r0, 0xff
/* 801FE62C 001FB58C  D0 1A 07 D8 */	stfs f0, 0x7d8(r26)
/* 801FE630 001FB590  38 60 00 00 */	li r3, 0
/* 801FE634 001FB594  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801FE638 001FB598  38 A0 00 00 */	li r5, 0
/* 801FE63C 001FB59C  90 7A 07 DC */	stw r3, 0x7dc(r26)
/* 801FE640 001FB5A0  38 7A 07 EC */	addi r3, r26, 0x7ec
/* 801FE644 001FB5A4  98 1A 07 E0 */	stb r0, 0x7e0(r26)
/* 801FE648 001FB5A8  D0 1A 07 E4 */	stfs f0, 0x7e4(r26)
/* 801FE64C 001FB5AC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FE650 001FB5B0  B0 1A 07 E8 */	sth r0, 0x7e8(r26)
/* 801FE654 001FB5B4  4B FA EE B1 */	bl __ct__10CBurstFireFPPC6SBursti
/* 801FE658 001FB5B8  38 00 FF FF */	li r0, -1
/* 801FE65C 001FB5BC  3C 60 80 3D */	lis r3, lbl_803D247C@ha
/* 801FE660 001FB5C0  90 1A 08 4C */	stw r0, 0x84c(r26)
/* 801FE664 001FB5C4  38 83 24 7C */	addi r4, r3, lbl_803D247C@l
/* 801FE668 001FB5C8  C0 82 AF 7C */	lfs f4, lbl_805ACC9C@sda21(r2)
/* 801FE66C 001FB5CC  38 C0 00 00 */	li r6, 0
/* 801FE670 001FB5D0  C0 02 B0 0C */	lfs f0, lbl_805ACD2C@sda21(r2)
/* 801FE674 001FB5D4  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 801FE678 001FB5D8  D0 9A 08 50 */	stfs f4, 0x850(r26)
/* 801FE67C 001FB5DC  38 61 01 08 */	addi r3, r1, 0x108
/* 801FE680 001FB5E0  C0 42 AF C0 */	lfs f2, lbl_805ACCE0@sda21(r2)
/* 801FE684 001FB5E4  38 84 00 19 */	addi r4, r4, 0x19
/* 801FE688 001FB5E8  D0 1A 08 54 */	stfs f0, 0x854(r26)
/* 801FE68C 001FB5EC  C0 62 AF 60 */	lfs f3, lbl_805ACC80@sda21(r2)
/* 801FE690 001FB5F0  D0 1A 08 58 */	stfs f0, 0x858(r26)
/* 801FE694 001FB5F4  C0 22 AF D0 */	lfs f1, lbl_805ACCF0@sda21(r2)
/* 801FE698 001FB5F8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FE69C 001FB5FC  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801FE6A0 001FB600  B0 1A 08 5C */	sth r0, 0x85c(r26)
/* 801FE6A4 001FB604  D0 5A 08 60 */	stfs f2, 0x860(r26)
/* 801FE6A8 001FB608  90 DA 08 64 */	stw r6, 0x864(r26)
/* 801FE6AC 001FB60C  D0 7A 08 6C */	stfs f3, 0x86c(r26)
/* 801FE6B0 001FB610  C4 45 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r5)
/* 801FE6B4 001FB614  D0 5A 08 70 */	stfs f2, 0x870(r26)
/* 801FE6B8 001FB618  C0 45 00 04 */	lfs f2, 4(r5)
/* 801FE6BC 001FB61C  D0 5A 08 74 */	stfs f2, 0x874(r26)
/* 801FE6C0 001FB620  C0 45 00 08 */	lfs f2, 8(r5)
/* 801FE6C4 001FB624  D0 5A 08 78 */	stfs f2, 0x878(r26)
/* 801FE6C8 001FB628  C0 45 00 00 */	lfs f2, 0(r5)
/* 801FE6CC 001FB62C  D0 5A 08 7C */	stfs f2, 0x87c(r26)
/* 801FE6D0 001FB630  C0 45 00 04 */	lfs f2, 4(r5)
/* 801FE6D4 001FB634  D0 5A 08 80 */	stfs f2, 0x880(r26)
/* 801FE6D8 001FB638  C0 45 00 08 */	lfs f2, 8(r5)
/* 801FE6DC 001FB63C  D0 5A 08 84 */	stfs f2, 0x884(r26)
/* 801FE6E0 001FB640  D0 3A 08 88 */	stfs f1, 0x888(r26)
/* 801FE6E4 001FB644  D0 9A 08 8C */	stfs f4, 0x88c(r26)
/* 801FE6E8 001FB648  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FE6EC 001FB64C  B0 1A 08 90 */	sth r0, 0x890(r26)
/* 801FE6F0 001FB650  D0 1A 08 94 */	stfs f0, 0x894(r26)
/* 801FE6F4 001FB654  D0 1A 08 98 */	stfs f0, 0x898(r26)
/* 801FE6F8 001FB658  90 DA 08 9C */	stw r6, 0x89c(r26)
/* 801FE6FC 001FB65C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801FE700 001FB660  B0 1A 08 A0 */	sth r0, 0x8a0(r26)
/* 801FE704 001FB664  D0 7A 08 A4 */	stfs f3, 0x8a4(r26)
/* 801FE708 001FB668  80 BA 00 64 */	lwz r5, 0x64(r26)
/* 801FE70C 001FB66C  83 05 00 10 */	lwz r24, 0x10(r5)
/* 801FE710 001FB670  4B E0 65 A9 */	bl string_l__4rstlFPCc
/* 801FE714 001FB674  7F 04 C3 78 */	mr r4, r24
/* 801FE718 001FB678  38 61 00 2C */	addi r3, r1, 0x2c
/* 801FE71C 001FB67C  38 A1 01 08 */	addi r5, r1, 0x108
/* 801FE720 001FB680  4B E3 01 19 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801FE724 001FB684  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 801FE728 001FB688  38 61 01 08 */	addi r3, r1, 0x108
/* 801FE72C 001FB68C  98 1A 07 98 */	stb r0, 0x798(r26)
/* 801FE730 001FB690  48 13 F3 B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801FE734 001FB694  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 801FE738 001FB698  38 61 00 F8 */	addi r3, r1, 0xf8
/* 801FE73C 001FB69C  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 801FE740 001FB6A0  38 84 00 20 */	addi r4, r4, 0x20
/* 801FE744 001FB6A4  4B E0 65 75 */	bl string_l__4rstlFPCc
/* 801FE748 001FB6A8  7F 04 C3 78 */	mr r4, r24
/* 801FE74C 001FB6AC  38 61 00 28 */	addi r3, r1, 0x28
/* 801FE750 001FB6B0  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 801FE754 001FB6B4  4B E3 00 E5 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801FE758 001FB6B8  88 01 00 28 */	lbz r0, 0x28(r1)
/* 801FE75C 001FB6BC  38 61 00 F8 */	addi r3, r1, 0xf8
/* 801FE760 001FB6C0  98 1A 07 E0 */	stb r0, 0x7e0(r26)
/* 801FE764 001FB6C4  48 13 F3 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801FE768 001FB6C8  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 801FE76C 001FB6CC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 801FE770 001FB6D0  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 801FE774 001FB6D4  38 84 00 2B */	addi r4, r4, 0x2b
/* 801FE778 001FB6D8  4B E0 65 41 */	bl string_l__4rstlFPCc
/* 801FE77C 001FB6DC  7F 04 C3 78 */	mr r4, r24
/* 801FE780 001FB6E0  38 61 00 24 */	addi r3, r1, 0x24
/* 801FE784 001FB6E4  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 801FE788 001FB6E8  4B E3 00 B1 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801FE78C 001FB6EC  38 7A 08 64 */	addi r3, r26, 0x864
/* 801FE790 001FB6F0  80 1A 08 64 */	lwz r0, 0x864(r26)
/* 801FE794 001FB6F4  7C 63 02 14 */	add r3, r3, r0
/* 801FE798 001FB6F8  34 63 00 04 */	addic. r3, r3, 4
/* 801FE79C 001FB6FC  41 82 00 0C */	beq lbl_801FE7A8
/* 801FE7A0 001FB700  88 01 00 24 */	lbz r0, 0x24(r1)
/* 801FE7A4 001FB704  98 03 00 00 */	stb r0, 0(r3)
lbl_801FE7A8:
/* 801FE7A8 001FB708  80 9A 08 64 */	lwz r4, 0x864(r26)
/* 801FE7AC 001FB70C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 801FE7B0 001FB710  38 04 00 01 */	addi r0, r4, 1
/* 801FE7B4 001FB714  90 1A 08 64 */	stw r0, 0x864(r26)
/* 801FE7B8 001FB718  48 13 F3 29 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801FE7BC 001FB71C  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 801FE7C0 001FB720  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801FE7C4 001FB724  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 801FE7C8 001FB728  38 84 00 3A */	addi r4, r4, 0x3a
/* 801FE7CC 001FB72C  4B E0 64 ED */	bl string_l__4rstlFPCc
/* 801FE7D0 001FB730  7F 04 C3 78 */	mr r4, r24
/* 801FE7D4 001FB734  38 61 00 20 */	addi r3, r1, 0x20
/* 801FE7D8 001FB738  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 801FE7DC 001FB73C  4B E3 00 5D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801FE7E0 001FB740  38 7A 08 64 */	addi r3, r26, 0x864
/* 801FE7E4 001FB744  80 1A 08 64 */	lwz r0, 0x864(r26)
/* 801FE7E8 001FB748  7C 63 02 14 */	add r3, r3, r0
/* 801FE7EC 001FB74C  34 63 00 04 */	addic. r3, r3, 4
/* 801FE7F0 001FB750  41 82 00 0C */	beq lbl_801FE7FC
/* 801FE7F4 001FB754  88 01 00 20 */	lbz r0, 0x20(r1)
/* 801FE7F8 001FB758  98 03 00 00 */	stb r0, 0(r3)
lbl_801FE7FC:
/* 801FE7FC 001FB75C  80 9A 08 64 */	lwz r4, 0x864(r26)
/* 801FE800 001FB760  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801FE804 001FB764  38 04 00 01 */	addi r0, r4, 1
/* 801FE808 001FB768  90 1A 08 64 */	stw r0, 0x864(r26)
/* 801FE80C 001FB76C  48 13 F2 D5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801FE810 001FB770  38 61 00 74 */	addi r3, r1, 0x74
/* 801FE814 001FB774  48 0E 48 69 */	bl NoParameter__12CPASAnimParmFv
/* 801FE818 001FB778  38 61 00 7C */	addi r3, r1, 0x7c
/* 801FE81C 001FB77C  48 0E 48 61 */	bl NoParameter__12CPASAnimParmFv
/* 801FE820 001FB780  38 61 00 84 */	addi r3, r1, 0x84
/* 801FE824 001FB784  48 0E 48 59 */	bl NoParameter__12CPASAnimParmFv
/* 801FE828 001FB788  38 61 00 8C */	addi r3, r1, 0x8c
/* 801FE82C 001FB78C  48 0E 48 51 */	bl NoParameter__12CPASAnimParmFv
/* 801FE830 001FB790  38 61 00 94 */	addi r3, r1, 0x94
/* 801FE834 001FB794  48 0E 48 49 */	bl NoParameter__12CPASAnimParmFv
/* 801FE838 001FB798  38 61 00 9C */	addi r3, r1, 0x9c
/* 801FE83C 001FB79C  48 0E 48 41 */	bl NoParameter__12CPASAnimParmFv
/* 801FE840 001FB7A0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801FE844 001FB7A4  38 80 00 01 */	li r4, 1
/* 801FE848 001FB7A8  48 0E 47 3D */	bl FromEnum__12CPASAnimParmFi
/* 801FE84C 001FB7AC  38 61 00 AC */	addi r3, r1, 0xac
/* 801FE850 001FB7B0  38 80 00 03 */	li r4, 3
/* 801FE854 001FB7B4  48 0E 47 31 */	bl FromEnum__12CPASAnimParmFi
/* 801FE858 001FB7B8  38 61 00 7C */	addi r3, r1, 0x7c
/* 801FE85C 001FB7BC  38 01 00 74 */	addi r0, r1, 0x74
/* 801FE860 001FB7C0  90 61 00 08 */	stw r3, 8(r1)
/* 801FE864 001FB7C4  38 61 01 28 */	addi r3, r1, 0x128
/* 801FE868 001FB7C8  38 A1 00 AC */	addi r5, r1, 0xac
/* 801FE86C 001FB7CC  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 801FE870 001FB7D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801FE874 001FB7D4  38 E1 00 9C */	addi r7, r1, 0x9c
/* 801FE878 001FB7D8  39 01 00 94 */	addi r8, r1, 0x94
/* 801FE87C 001FB7DC  39 21 00 8C */	addi r9, r1, 0x8c
/* 801FE880 001FB7E0  39 41 00 84 */	addi r10, r1, 0x84
/* 801FE884 001FB7E4  38 80 00 03 */	li r4, 3
/* 801FE888 001FB7E8  4B E7 EA 3D */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801FE88C 001FB7EC  83 1A 00 64 */	lwz r24, 0x64(r26)
/* 801FE890 001FB7F0  7F 43 D3 78 */	mr r3, r26
/* 801FE894 001FB7F4  38 81 01 28 */	addi r4, r1, 0x128
/* 801FE898 001FB7F8  4B E7 E1 69 */	bl func_8007CA00
/* 801FE89C 001FB7FC  C0 18 00 00 */	lfs f0, 0(r24)
/* 801FE8A0 001FB800  EC 00 00 72 */	fmuls f0, f0, f1
/* 801FE8A4 001FB804  D0 1A 08 50 */	stfs f0, 0x850(r26)
/* 801FE8A8 001FB808  80 9A 06 40 */	lwz r4, 0x640(r26)
/* 801FE8AC 001FB80C  3C 04 00 01 */	addis r0, r4, 1
/* 801FE8B0 001FB810  28 00 FF FF */	cmplwi r0, 0xffff
/* 801FE8B4 001FB814  41 82 03 34 */	beq lbl_801FEBE8
/* 801FE8B8 001FB818  80 7A 06 44 */	lwz r3, 0x644(r26)
/* 801FE8BC 001FB81C  3C 03 00 01 */	addis r0, r3, 1
/* 801FE8C0 001FB820  28 00 FF FF */	cmplwi r0, 0xffff
/* 801FE8C4 001FB824  41 82 03 24 */	beq lbl_801FEBE8
/* 801FE8C8 001FB828  80 7A 06 48 */	lwz r3, 0x648(r26)
/* 801FE8CC 001FB82C  3C 03 00 01 */	addis r0, r3, 1
/* 801FE8D0 001FB830  28 00 FF FF */	cmplwi r0, 0xffff
/* 801FE8D4 001FB834  41 82 03 14 */	beq lbl_801FEBE8
/* 801FE8D8 001FB838  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801FE8DC 001FB83C  90 81 00 70 */	stw r4, 0x70(r1)
/* 801FE8E0 001FB840  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801FE8E4 001FB844  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801FE8E8 001FB848  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801FE8EC 001FB84C  38 61 00 64 */	addi r3, r1, 0x64
/* 801FE8F0 001FB850  38 A1 00 6C */	addi r5, r1, 0x6c
/* 801FE8F4 001FB854  81 84 00 00 */	lwz r12, 0(r4)
/* 801FE8F8 001FB858  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FE8FC 001FB85C  7D 89 03 A6 */	mtctr r12
/* 801FE900 001FB860  4E 80 04 21 */	bctrl
/* 801FE904 001FB864  3B 01 00 CC */	addi r24, r1, 0xcc
/* 801FE908 001FB868  38 81 00 64 */	addi r4, r1, 0x64
/* 801FE90C 001FB86C  7F 03 C3 78 */	mr r3, r24
/* 801FE910 001FB870  48 14 25 99 */	bl __ct__6CTokenFRC6CToken
/* 801FE914 001FB874  7F 03 C3 78 */	mr r3, r24
/* 801FE918 001FB878  48 14 24 F5 */	bl GetObj__6CTokenFv
/* 801FE91C 001FB87C  80 03 00 04 */	lwz r0, 4(r3)
/* 801FE920 001FB880  38 7A 06 5C */	addi r3, r26, 0x65c
/* 801FE924 001FB884  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801FE928 001FB888  80 1A 06 5C */	lwz r0, 0x65c(r26)
/* 801FE92C 001FB88C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801FE930 001FB890  7F 23 02 14 */	add r25, r3, r0
/* 801FE934 001FB894  37 39 00 04 */	addic. r25, r25, 4
/* 801FE938 001FB898  41 82 00 20 */	beq lbl_801FE958
/* 801FE93C 001FB89C  7F 23 CB 78 */	mr r3, r25
/* 801FE940 001FB8A0  7F 04 C3 78 */	mr r4, r24
/* 801FE944 001FB8A4  48 14 25 65 */	bl __ct__6CTokenFRC6CToken
/* 801FE948 001FB8A8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801FE94C 001FB8AC  7F 23 CB 78 */	mr r3, r25
/* 801FE950 001FB8B0  90 19 00 08 */	stw r0, 8(r25)
/* 801FE954 001FB8B4  48 14 24 31 */	bl Lock__6CTokenFv
lbl_801FE958:
/* 801FE958 001FB8B8  80 BA 06 5C */	lwz r5, 0x65c(r26)
/* 801FE95C 001FB8BC  38 61 00 CC */	addi r3, r1, 0xcc
/* 801FE960 001FB8C0  38 80 00 00 */	li r4, 0
/* 801FE964 001FB8C4  38 05 00 01 */	addi r0, r5, 1
/* 801FE968 001FB8C8  90 1A 06 5C */	stw r0, 0x65c(r26)
/* 801FE96C 001FB8CC  48 14 24 D5 */	bl __dt__6CTokenFv
/* 801FE970 001FB8D0  38 61 00 64 */	addi r3, r1, 0x64
/* 801FE974 001FB8D4  38 80 FF FF */	li r4, -1
/* 801FE978 001FB8D8  48 14 24 C9 */	bl __dt__6CTokenFv
/* 801FE97C 001FB8DC  80 DA 06 44 */	lwz r6, 0x644(r26)
/* 801FE980 001FB8E0  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801FE984 001FB8E4  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801FE988 001FB8E8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801FE98C 001FB8EC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801FE990 001FB8F0  38 61 00 54 */	addi r3, r1, 0x54
/* 801FE994 001FB8F4  38 A1 00 5C */	addi r5, r1, 0x5c
/* 801FE998 001FB8F8  90 C1 00 60 */	stw r6, 0x60(r1)
/* 801FE99C 001FB8FC  81 84 00 00 */	lwz r12, 0(r4)
/* 801FE9A0 001FB900  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FE9A4 001FB904  7D 89 03 A6 */	mtctr r12
/* 801FE9A8 001FB908  4E 80 04 21 */	bctrl
/* 801FE9AC 001FB90C  3B 01 00 C0 */	addi r24, r1, 0xc0
/* 801FE9B0 001FB910  38 81 00 54 */	addi r4, r1, 0x54
/* 801FE9B4 001FB914  7F 03 C3 78 */	mr r3, r24
/* 801FE9B8 001FB918  48 14 24 F1 */	bl __ct__6CTokenFRC6CToken
/* 801FE9BC 001FB91C  7F 03 C3 78 */	mr r3, r24
/* 801FE9C0 001FB920  48 14 24 4D */	bl GetObj__6CTokenFv
/* 801FE9C4 001FB924  80 03 00 04 */	lwz r0, 4(r3)
/* 801FE9C8 001FB928  38 7A 06 5C */	addi r3, r26, 0x65c
/* 801FE9CC 001FB92C  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 801FE9D0 001FB930  80 1A 06 5C */	lwz r0, 0x65c(r26)
/* 801FE9D4 001FB934  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801FE9D8 001FB938  7F 23 02 14 */	add r25, r3, r0
/* 801FE9DC 001FB93C  37 39 00 04 */	addic. r25, r25, 4
/* 801FE9E0 001FB940  41 82 00 20 */	beq lbl_801FEA00
/* 801FE9E4 001FB944  7F 23 CB 78 */	mr r3, r25
/* 801FE9E8 001FB948  7F 04 C3 78 */	mr r4, r24
/* 801FE9EC 001FB94C  48 14 24 BD */	bl __ct__6CTokenFRC6CToken
/* 801FE9F0 001FB950  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 801FE9F4 001FB954  7F 23 CB 78 */	mr r3, r25
/* 801FE9F8 001FB958  90 19 00 08 */	stw r0, 8(r25)
/* 801FE9FC 001FB95C  48 14 23 89 */	bl Lock__6CTokenFv
lbl_801FEA00:
/* 801FEA00 001FB960  80 BA 06 5C */	lwz r5, 0x65c(r26)
/* 801FEA04 001FB964  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801FEA08 001FB968  38 80 00 00 */	li r4, 0
/* 801FEA0C 001FB96C  38 05 00 01 */	addi r0, r5, 1
/* 801FEA10 001FB970  90 1A 06 5C */	stw r0, 0x65c(r26)
/* 801FEA14 001FB974  48 14 24 2D */	bl __dt__6CTokenFv
/* 801FEA18 001FB978  38 61 00 54 */	addi r3, r1, 0x54
/* 801FEA1C 001FB97C  38 80 FF FF */	li r4, -1
/* 801FEA20 001FB980  48 14 24 21 */	bl __dt__6CTokenFv
/* 801FEA24 001FB984  80 DA 06 48 */	lwz r6, 0x648(r26)
/* 801FEA28 001FB988  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801FEA2C 001FB98C  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801FEA30 001FB990  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801FEA34 001FB994  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801FEA38 001FB998  38 61 00 44 */	addi r3, r1, 0x44
/* 801FEA3C 001FB99C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 801FEA40 001FB9A0  90 C1 00 50 */	stw r6, 0x50(r1)
/* 801FEA44 001FB9A4  81 84 00 00 */	lwz r12, 0(r4)
/* 801FEA48 001FB9A8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FEA4C 001FB9AC  7D 89 03 A6 */	mtctr r12
/* 801FEA50 001FB9B0  4E 80 04 21 */	bctrl
/* 801FEA54 001FB9B4  3B 01 00 B4 */	addi r24, r1, 0xb4
/* 801FEA58 001FB9B8  38 81 00 44 */	addi r4, r1, 0x44
/* 801FEA5C 001FB9BC  7F 03 C3 78 */	mr r3, r24
/* 801FEA60 001FB9C0  48 14 24 49 */	bl __ct__6CTokenFRC6CToken
/* 801FEA64 001FB9C4  7F 03 C3 78 */	mr r3, r24
/* 801FEA68 001FB9C8  48 14 23 A5 */	bl GetObj__6CTokenFv
/* 801FEA6C 001FB9CC  80 03 00 04 */	lwz r0, 4(r3)
/* 801FEA70 001FB9D0  38 7A 06 5C */	addi r3, r26, 0x65c
/* 801FEA74 001FB9D4  90 01 00 BC */	stw r0, 0xbc(r1)
/* 801FEA78 001FB9D8  80 1A 06 5C */	lwz r0, 0x65c(r26)
/* 801FEA7C 001FB9DC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801FEA80 001FB9E0  7F 23 02 14 */	add r25, r3, r0
/* 801FEA84 001FB9E4  37 39 00 04 */	addic. r25, r25, 4
/* 801FEA88 001FB9E8  41 82 00 20 */	beq lbl_801FEAA8
/* 801FEA8C 001FB9EC  7F 23 CB 78 */	mr r3, r25
/* 801FEA90 001FB9F0  7F 04 C3 78 */	mr r4, r24
/* 801FEA94 001FB9F4  48 14 24 15 */	bl __ct__6CTokenFRC6CToken
/* 801FEA98 001FB9F8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 801FEA9C 001FB9FC  7F 23 CB 78 */	mr r3, r25
/* 801FEAA0 001FBA00  90 19 00 08 */	stw r0, 8(r25)
/* 801FEAA4 001FBA04  48 14 22 E1 */	bl Lock__6CTokenFv
lbl_801FEAA8:
/* 801FEAA8 001FBA08  80 BA 06 5C */	lwz r5, 0x65c(r26)
/* 801FEAAC 001FBA0C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801FEAB0 001FBA10  38 80 00 00 */	li r4, 0
/* 801FEAB4 001FBA14  38 05 00 01 */	addi r0, r5, 1
/* 801FEAB8 001FBA18  90 1A 06 5C */	stw r0, 0x65c(r26)
/* 801FEABC 001FBA1C  48 14 23 85 */	bl __dt__6CTokenFv
/* 801FEAC0 001FBA20  38 61 00 44 */	addi r3, r1, 0x44
/* 801FEAC4 001FBA24  38 80 FF FF */	li r4, -1
/* 801FEAC8 001FBA28  48 14 23 79 */	bl __dt__6CTokenFv
/* 801FEACC 001FBA2C  3B C0 00 00 */	li r30, 0
/* 801FEAD0 001FBA30  3C 60 80 3D */	lis r3, lbl_803D247C@ha
/* 801FEAD4 001FBA34  7F DD F3 78 */	mr r29, r30
/* 801FEAD8 001FBA38  3B 9A 06 84 */	addi r28, r26, 0x684
/* 801FEADC 001FBA3C  3B E3 24 7C */	addi r31, r3, lbl_803D247C@l
/* 801FEAE0 001FBA40  3B 60 00 00 */	li r27, 0
/* 801FEAE4 001FBA44  48 00 00 F8 */	b lbl_801FEBDC
lbl_801FEAE8:
/* 801FEAE8 001FBA48  38 9F 00 08 */	addi r4, r31, 8
/* 801FEAEC 001FBA4C  3B 20 00 00 */	li r25, 0
/* 801FEAF0 001FBA50  38 60 03 40 */	li r3, 0x340
/* 801FEAF4 001FBA54  38 A0 00 00 */	li r5, 0
/* 801FEAF8 001FBA58  48 11 6D 75 */	bl __nw__FUlPCcPCc
/* 801FEAFC 001FBA5C  7C 78 1B 79 */	or. r24, r3, r3
/* 801FEB00 001FBA60  41 82 00 30 */	beq lbl_801FEB30
/* 801FEB04 001FBA64  7C 9A F2 14 */	add r4, r26, r30
/* 801FEB08 001FBA68  38 61 00 3C */	addi r3, r1, 0x3c
/* 801FEB0C 001FBA6C  38 84 06 60 */	addi r4, r4, 0x660
/* 801FEB10 001FBA70  48 14 23 99 */	bl __ct__6CTokenFRC6CToken
/* 801FEB14 001FBA74  7F 03 C3 78 */	mr r3, r24
/* 801FEB18 001FBA78  38 81 00 3C */	addi r4, r1, 0x3c
/* 801FEB1C 001FBA7C  3B 20 00 01 */	li r25, 1
/* 801FEB20 001FBA80  38 A0 00 00 */	li r5, 0
/* 801FEB24 001FBA84  38 C0 00 01 */	li r6, 1
/* 801FEB28 001FBA88  48 12 08 B9 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801FEB2C 001FBA8C  7C 78 1B 78 */	mr r24, r3
lbl_801FEB30:
/* 801FEB30 001FBA90  80 1C 00 00 */	lwz r0, 0(r28)
/* 801FEB34 001FBA94  7C 78 00 D0 */	neg r3, r24
/* 801FEB38 001FBA98  7C 63 C3 78 */	or r3, r3, r24
/* 801FEB3C 001FBA9C  93 01 00 38 */	stw r24, 0x38(r1)
/* 801FEB40 001FBAA0  54 00 18 38 */	slwi r0, r0, 3
/* 801FEB44 001FBAA4  7C 9C 02 14 */	add r4, r28, r0
/* 801FEB48 001FBAA8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 801FEB4C 001FBAAC  34 84 00 04 */	addic. r4, r4, 4
/* 801FEB50 001FBAB0  98 01 00 34 */	stb r0, 0x34(r1)
/* 801FEB54 001FBAB4  41 82 00 14 */	beq lbl_801FEB68
/* 801FEB58 001FBAB8  98 04 00 00 */	stb r0, 0(r4)
/* 801FEB5C 001FBABC  38 00 00 00 */	li r0, 0
/* 801FEB60 001FBAC0  93 04 00 04 */	stw r24, 4(r4)
/* 801FEB64 001FBAC4  98 01 00 34 */	stb r0, 0x34(r1)
lbl_801FEB68:
/* 801FEB68 001FBAC8  80 7A 06 84 */	lwz r3, 0x684(r26)
/* 801FEB6C 001FBACC  88 01 00 34 */	lbz r0, 0x34(r1)
/* 801FEB70 001FBAD0  38 63 00 01 */	addi r3, r3, 1
/* 801FEB74 001FBAD4  28 00 00 00 */	cmplwi r0, 0
/* 801FEB78 001FBAD8  90 7A 06 84 */	stw r3, 0x684(r26)
/* 801FEB7C 001FBADC  41 82 00 24 */	beq lbl_801FEBA0
/* 801FEB80 001FBAE0  80 61 00 38 */	lwz r3, 0x38(r1)
/* 801FEB84 001FBAE4  28 03 00 00 */	cmplwi r3, 0
/* 801FEB88 001FBAE8  41 82 00 18 */	beq lbl_801FEBA0
/* 801FEB8C 001FBAEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801FEB90 001FBAF0  38 80 00 01 */	li r4, 1
/* 801FEB94 001FBAF4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801FEB98 001FBAF8  7D 89 03 A6 */	mtctr r12
/* 801FEB9C 001FBAFC  4E 80 04 21 */	bctrl
lbl_801FEBA0:
/* 801FEBA0 001FBB00  7F 20 07 75 */	extsb. r0, r25
/* 801FEBA4 001FBB04  41 82 00 10 */	beq lbl_801FEBB4
/* 801FEBA8 001FBB08  38 61 00 3C */	addi r3, r1, 0x3c
/* 801FEBAC 001FBB0C  38 80 00 00 */	li r4, 0
/* 801FEBB0 001FBB10  48 14 22 91 */	bl __dt__6CTokenFv
lbl_801FEBB4:
/* 801FEBB4 001FBB14  7C 7A EA 14 */	add r3, r26, r29
/* 801FEBB8 001FBB18  38 80 00 00 */	li r4, 0
/* 801FEBBC 001FBB1C  80 63 06 8C */	lwz r3, 0x68c(r3)
/* 801FEBC0 001FBB20  81 83 00 00 */	lwz r12, 0(r3)
/* 801FEBC4 001FBB24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801FEBC8 001FBB28  7D 89 03 A6 */	mtctr r12
/* 801FEBCC 001FBB2C  4E 80 04 21 */	bctrl
/* 801FEBD0 001FBB30  3B DE 00 0C */	addi r30, r30, 0xc
/* 801FEBD4 001FBB34  3B BD 00 08 */	addi r29, r29, 8
/* 801FEBD8 001FBB38  3B 7B 00 01 */	addi r27, r27, 1
lbl_801FEBDC:
/* 801FEBDC 001FBB3C  80 1A 06 5C */	lwz r0, 0x65c(r26)
/* 801FEBE0 001FBB40  7C 1B 00 00 */	cmpw r27, r0
/* 801FEBE4 001FBB44  41 80 FF 04 */	blt lbl_801FEAE8
lbl_801FEBE8:
/* 801FEBE8 001FBB48  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 801FEBEC 001FBB4C  38 60 00 01 */	li r3, 1
/* 801FEBF0 001FBB50  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801FEBF4 001FBB54  34 A1 01 2C */	addic. r5, r1, 0x12c
/* 801FEBF8 001FBB58  98 1A 04 E2 */	stb r0, 0x4e2(r26)
/* 801FEBFC 001FBB5C  41 82 00 58 */	beq lbl_801FEC54
/* 801FEC00 001FBB60  80 C5 00 00 */	lwz r6, 0(r5)
/* 801FEC04 001FBB64  38 60 00 00 */	li r3, 0
/* 801FEC08 001FBB68  2C 06 00 00 */	cmpwi r6, 0
/* 801FEC0C 001FBB6C  40 81 00 40 */	ble lbl_801FEC4C
/* 801FEC10 001FBB70  2C 06 00 08 */	cmpwi r6, 8
/* 801FEC14 001FBB74  38 86 FF F8 */	addi r4, r6, -8
/* 801FEC18 001FBB78  40 81 00 20 */	ble lbl_801FEC38
/* 801FEC1C 001FBB7C  38 04 00 07 */	addi r0, r4, 7
/* 801FEC20 001FBB80  54 00 E8 FE */	srwi r0, r0, 3
/* 801FEC24 001FBB84  7C 09 03 A6 */	mtctr r0
/* 801FEC28 001FBB88  2C 04 00 00 */	cmpwi r4, 0
/* 801FEC2C 001FBB8C  40 81 00 0C */	ble lbl_801FEC38
lbl_801FEC30:
/* 801FEC30 001FBB90  38 63 00 08 */	addi r3, r3, 8
/* 801FEC34 001FBB94  42 00 FF FC */	bdnz lbl_801FEC30
lbl_801FEC38:
/* 801FEC38 001FBB98  7C 03 30 50 */	subf r0, r3, r6
/* 801FEC3C 001FBB9C  7C 09 03 A6 */	mtctr r0
/* 801FEC40 001FBBA0  7C 03 30 00 */	cmpw r3, r6
/* 801FEC44 001FBBA4  40 80 00 08 */	bge lbl_801FEC4C
lbl_801FEC48:
/* 801FEC48 001FBBA8  42 00 00 00 */	bdnz lbl_801FEC48
lbl_801FEC4C:
/* 801FEC4C 001FBBAC  38 00 00 00 */	li r0, 0
/* 801FEC50 001FBBB0  90 05 00 00 */	stw r0, 0(r5)
lbl_801FEC54:
/* 801FEC54 001FBBB4  7F 43 D3 78 */	mr r3, r26
/* 801FEC58 001FBBB8  BB 01 01 70 */	lmw r24, 0x170(r1)
/* 801FEC5C 001FBBBC  80 01 01 94 */	lwz r0, 0x194(r1)
/* 801FEC60 001FBBC0  7C 08 03 A6 */	mtlr r0
/* 801FEC64 001FBBC4  38 21 01 90 */	addi r1, r1, 0x190
/* 801FEC68 001FBBC8  4E 80 00 20 */	blr

.global sub_801fec6c
sub_801fec6c:
/* 801FEC6C 001FBBCC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801FEC70 001FBBD0  7C 08 02 A6 */	mflr r0
/* 801FEC74 001FBBD4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801FEC78 001FBBD8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801FEC7C 001FBBDC  7C BF 2B 78 */	mr r31, r5
/* 801FEC80 001FBBE0  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801FEC84 001FBBE4  7C 9E 23 78 */	mr r30, r4
/* 801FEC88 001FBBE8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801FEC8C 001FBBEC  7C 7D 1B 78 */	mr r29, r3
/* 801FEC90 001FBBF0  7F C3 F3 78 */	mr r3, r30
/* 801FEC94 001FBBF4  93 81 00 40 */	stw r28, 0x40(r1)
/* 801FEC98 001FBBF8  48 13 FF 91 */	bl ReadFloat__12CInputStreamFv
/* 801FEC9C 001FBBFC  D0 3D 00 00 */	stfs f1, 0(r29)
/* 801FECA0 001FBC00  7F C3 F3 78 */	mr r3, r30
/* 801FECA4 001FBC04  48 13 FF 85 */	bl ReadFloat__12CInputStreamFv
/* 801FECA8 001FBC08  D0 3D 00 04 */	stfs f1, 4(r29)
/* 801FECAC 001FBC0C  7F C3 F3 78 */	mr r3, r30
/* 801FECB0 001FBC10  48 13 FF D5 */	bl ReadLong__12CInputStreamFv
/* 801FECB4 001FBC14  90 7D 00 08 */	stw r3, 8(r29)
/* 801FECB8 001FBC18  7F C4 F3 78 */	mr r4, r30
/* 801FECBC 001FBC1C  38 7D 00 0C */	addi r3, r29, 0xc
/* 801FECC0 001FBC20  48 01 D3 51 */	bl sub_8021c010
/* 801FECC4 001FBC24  7F C3 F3 78 */	mr r3, r30
/* 801FECC8 001FBC28  48 13 FF BD */	bl ReadLong__12CInputStreamFv
/* 801FECCC 001FBC2C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 801FECD0 001FBC30  48 0E 9C E1 */	bl TranslateSFXID__11CSfxManagerFUs
/* 801FECD4 001FBC34  B0 7D 00 34 */	sth r3, 0x34(r29)
/* 801FECD8 001FBC38  7F C4 F3 78 */	mr r4, r30
/* 801FECDC 001FBC3C  38 7D 00 38 */	addi r3, r29, 0x38
/* 801FECE0 001FBC40  48 01 D3 31 */	bl sub_8021c010
/* 801FECE4 001FBC44  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801FECE8 001FBC48  38 A0 00 00 */	li r5, 0
/* 801FECEC 001FBC4C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801FECF0 001FBC50  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FECF4 001FBC54  98 01 00 0C */	stb r0, 0xc(r1)
/* 801FECF8 001FBC58  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801FECFC 001FBC5C  50 A3 36 72 */	rlwimi r3, r5, 6, 0x19, 0x19
/* 801FED00 001FBC60  38 C0 FF FF */	li r6, -1
/* 801FED04 001FBC64  88 01 00 38 */	lbz r0, 0x38(r1)
/* 801FED08 001FBC68  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801FED0C 001FBC6C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 801FED10 001FBC70  98 61 00 0C */	stb r3, 0xc(r1)
/* 801FED14 001FBC74  50 A4 2E B4 */	rlwimi r4, r5, 5, 0x1a, 0x1a
/* 801FED18 001FBC78  7F C3 F3 78 */	mr r3, r30
/* 801FED1C 001FBC7C  90 C1 00 08 */	stw r6, 8(r1)
/* 801FED20 001FBC80  98 81 00 0C */	stb r4, 0xc(r1)
/* 801FED24 001FBC84  90 C1 00 20 */	stw r6, 0x20(r1)
/* 801FED28 001FBC88  98 81 00 24 */	stb r4, 0x24(r1)
/* 801FED2C 001FBC8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801FED30 001FBC90  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801FED34 001FBC94  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801FED38 001FBC98  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801FED3C 001FBC9C  98 01 00 38 */	stb r0, 0x38(r1)
/* 801FED40 001FBCA0  48 13 FF 45 */	bl ReadLong__12CInputStreamFv
/* 801FED44 001FBCA4  7C 64 1B 78 */	mr r4, r3
/* 801FED48 001FBCA8  38 7D 00 60 */	addi r3, r29, 0x60
/* 801FED4C 001FBCAC  38 A1 00 20 */	addi r5, r1, 0x20
/* 801FED50 001FBCB0  48 01 D3 59 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 801FED54 001FBCB4  7F C3 F3 78 */	mr r3, r30
/* 801FED58 001FBCB8  48 13 FE D1 */	bl ReadFloat__12CInputStreamFv
/* 801FED5C 001FBCBC  D0 3D 00 88 */	stfs f1, 0x88(r29)
/* 801FED60 001FBCC0  7F C3 F3 78 */	mr r3, r30
/* 801FED64 001FBCC4  48 13 FE C5 */	bl ReadFloat__12CInputStreamFv
/* 801FED68 001FBCC8  D0 3D 00 8C */	stfs f1, 0x8c(r29)
/* 801FED6C 001FBCCC  7F C3 F3 78 */	mr r3, r30
/* 801FED70 001FBCD0  48 13 FF 15 */	bl ReadLong__12CInputStreamFv
/* 801FED74 001FBCD4  3C 80 50 41 */	lis r4, 0x50415254@ha
/* 801FED78 001FBCD8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801FED7C 001FBCDC  38 04 52 54 */	addi r0, r4, 0x50415254@l
/* 801FED80 001FBCE0  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801FED84 001FBCE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801FED88 001FBCE8  38 61 00 10 */	addi r3, r1, 0x10
/* 801FED8C 001FBCEC  38 A1 00 18 */	addi r5, r1, 0x18
/* 801FED90 001FBCF0  81 84 00 00 */	lwz r12, 0(r4)
/* 801FED94 001FBCF4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FED98 001FBCF8  7D 89 03 A6 */	mtctr r12
/* 801FED9C 001FBCFC  4E 80 04 21 */	bctrl
/* 801FEDA0 001FBD00  3B 9D 00 90 */	addi r28, r29, 0x90
/* 801FEDA4 001FBD04  38 81 00 10 */	addi r4, r1, 0x10
/* 801FEDA8 001FBD08  7F 83 E3 78 */	mr r3, r28
/* 801FEDAC 001FBD0C  48 14 20 FD */	bl __ct__6CTokenFRC6CToken
/* 801FEDB0 001FBD10  7F 83 E3 78 */	mr r3, r28
/* 801FEDB4 001FBD14  48 14 20 59 */	bl GetObj__6CTokenFv
/* 801FEDB8 001FBD18  80 03 00 04 */	lwz r0, 4(r3)
/* 801FEDBC 001FBD1C  38 61 00 10 */	addi r3, r1, 0x10
/* 801FEDC0 001FBD20  38 80 FF FF */	li r4, -1
/* 801FEDC4 001FBD24  90 1C 00 08 */	stw r0, 8(r28)
/* 801FEDC8 001FBD28  48 14 20 79 */	bl __dt__6CTokenFv
/* 801FEDCC 001FBD2C  7F C4 F3 78 */	mr r4, r30
/* 801FEDD0 001FBD30  38 7D 00 9C */	addi r3, r29, 0x9c
/* 801FEDD4 001FBD34  4B EC 47 8D */	bl __ct__11CDamageInfoFR12CInputStream
/* 801FEDD8 001FBD38  7F C3 F3 78 */	mr r3, r30
/* 801FEDDC 001FBD3C  48 13 FE 4D */	bl ReadFloat__12CInputStreamFv
/* 801FEDE0 001FBD40  D0 3D 00 B8 */	stfs f1, 0xb8(r29)
/* 801FEDE4 001FBD44  7F C3 F3 78 */	mr r3, r30
/* 801FEDE8 001FBD48  48 13 FE 41 */	bl ReadFloat__12CInputStreamFv
/* 801FEDEC 001FBD4C  D0 3D 00 BC */	stfs f1, 0xbc(r29)
/* 801FEDF0 001FBD50  7F C3 F3 78 */	mr r3, r30
/* 801FEDF4 001FBD54  48 13 FE 35 */	bl ReadFloat__12CInputStreamFv
/* 801FEDF8 001FBD58  D0 3D 00 C0 */	stfs f1, 0xc0(r29)
/* 801FEDFC 001FBD5C  7F C3 F3 78 */	mr r3, r30
/* 801FEE00 001FBD60  48 13 FE 29 */	bl ReadFloat__12CInputStreamFv
/* 801FEE04 001FBD64  D0 3D 00 C4 */	stfs f1, 0xc4(r29)
/* 801FEE08 001FBD68  7F C3 F3 78 */	mr r3, r30
/* 801FEE0C 001FBD6C  48 13 FE 79 */	bl ReadLong__12CInputStreamFv
/* 801FEE10 001FBD70  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 801FEE14 001FBD74  48 0E 9B 9D */	bl TranslateSFXID__11CSfxManagerFUs
/* 801FEE18 001FBD78  B0 7D 00 C8 */	sth r3, 0xc8(r29)
/* 801FEE1C 001FBD7C  7F C3 F3 78 */	mr r3, r30
/* 801FEE20 001FBD80  48 13 FE 65 */	bl ReadLong__12CInputStreamFv
/* 801FEE24 001FBD84  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 801FEE28 001FBD88  48 0E 9B 89 */	bl TranslateSFXID__11CSfxManagerFUs
/* 801FEE2C 001FBD8C  B0 7D 00 CA */	sth r3, 0xca(r29)
/* 801FEE30 001FBD90  7F C3 F3 78 */	mr r3, r30
/* 801FEE34 001FBD94  48 13 FD F5 */	bl ReadFloat__12CInputStreamFv
/* 801FEE38 001FBD98  D0 3D 00 CC */	stfs f1, 0xcc(r29)
/* 801FEE3C 001FBD9C  7F C3 F3 78 */	mr r3, r30
/* 801FEE40 001FBDA0  48 13 FD E9 */	bl ReadFloat__12CInputStreamFv
/* 801FEE44 001FBDA4  D0 3D 00 D0 */	stfs f1, 0xd0(r29)
/* 801FEE48 001FBDA8  7F C3 F3 78 */	mr r3, r30
/* 801FEE4C 001FBDAC  48 13 FD DD */	bl ReadFloat__12CInputStreamFv
/* 801FEE50 001FBDB0  D0 3D 00 D4 */	stfs f1, 0xd4(r29)
/* 801FEE54 001FBDB4  7F C3 F3 78 */	mr r3, r30
/* 801FEE58 001FBDB8  48 13 FE 2D */	bl ReadLong__12CInputStreamFv
/* 801FEE5C 001FBDBC  90 7D 00 D8 */	stw r3, 0xd8(r29)
/* 801FEE60 001FBDC0  7F C3 F3 78 */	mr r3, r30
/* 801FEE64 001FBDC4  48 13 FE 21 */	bl ReadLong__12CInputStreamFv
/* 801FEE68 001FBDC8  90 7D 00 DC */	stw r3, 0xdc(r29)
/* 801FEE6C 001FBDCC  7F C3 F3 78 */	mr r3, r30
/* 801FEE70 001FBDD0  48 13 FE 15 */	bl ReadLong__12CInputStreamFv
/* 801FEE74 001FBDD4  90 7D 00 E0 */	stw r3, 0xe0(r29)
/* 801FEE78 001FBDD8  7F C3 F3 78 */	mr r3, r30
/* 801FEE7C 001FBDDC  48 13 FE 09 */	bl ReadLong__12CInputStreamFv
/* 801FEE80 001FBDE0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 801FEE84 001FBDE4  48 0E 9B 2D */	bl TranslateSFXID__11CSfxManagerFUs
/* 801FEE88 001FBDE8  B0 7D 00 E4 */	sth r3, 0xe4(r29)
/* 801FEE8C 001FBDEC  7F C3 F3 78 */	mr r3, r30
/* 801FEE90 001FBDF0  48 13 FD F5 */	bl ReadLong__12CInputStreamFv
/* 801FEE94 001FBDF4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 801FEE98 001FBDF8  48 0E 9B 19 */	bl TranslateSFXID__11CSfxManagerFUs
/* 801FEE9C 001FBDFC  B0 7D 00 E6 */	sth r3, 0xe6(r29)
/* 801FEEA0 001FBE00  7F C3 F3 78 */	mr r3, r30
/* 801FEEA4 001FBE04  48 13 FD 85 */	bl ReadFloat__12CInputStreamFv
/* 801FEEA8 001FBE08  D0 3D 00 E8 */	stfs f1, 0xe8(r29)
/* 801FEEAC 001FBE0C  7F C3 F3 78 */	mr r3, r30
/* 801FEEB0 001FBE10  48 13 FD 79 */	bl ReadFloat__12CInputStreamFv
/* 801FEEB4 001FBE14  2C 1F 00 23 */	cmpwi r31, 0x23
/* 801FEEB8 001FBE18  D0 3D 00 EC */	stfs f1, 0xec(r29)
/* 801FEEBC 001FBE1C  40 81 00 10 */	ble lbl_801FEECC
/* 801FEEC0 001FBE20  7F C3 F3 78 */	mr r3, r30
/* 801FEEC4 001FBE24  48 13 FD 65 */	bl ReadFloat__12CInputStreamFv
/* 801FEEC8 001FBE28  48 00 00 08 */	b lbl_801FEED0
lbl_801FEECC:
/* 801FEECC 001FBE2C  C0 22 AF EC */	lfs f1, lbl_805ACD0C@sda21(r2)
lbl_801FEED0:
/* 801FEED0 001FBE30  D0 3D 00 F0 */	stfs f1, 0xf0(r29)
/* 801FEED4 001FBE34  38 7D 00 0C */	addi r3, r29, 0xc
/* 801FEED8 001FBE38  48 14 1E AD */	bl Lock__6CTokenFv
/* 801FEEDC 001FBE3C  38 7D 00 38 */	addi r3, r29, 0x38
/* 801FEEE0 001FBE40  48 14 1E A5 */	bl Lock__6CTokenFv
/* 801FEEE4 001FBE44  38 7D 00 60 */	addi r3, r29, 0x60
/* 801FEEE8 001FBE48  48 14 1E 9D */	bl Lock__6CTokenFv
/* 801FEEEC 001FBE4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801FEEF0 001FBE50  7F A3 EB 78 */	mr r3, r29
/* 801FEEF4 001FBE54  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801FEEF8 001FBE58  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801FEEFC 001FBE5C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801FEF00 001FBE60  83 81 00 40 */	lwz r28, 0x40(r1)
/* 801FEF04 001FBE64  7C 08 03 A6 */	mtlr r0
/* 801FEF08 001FBE68  38 21 00 50 */	addi r1, r1, 0x50
/* 801FEF0C 001FBE6C  4E 80 00 20 */	blr

.global PreRender__20CFlyingPirateRagDollFRC9CVector3fR10CModelData
PreRender__20CFlyingPirateRagDollFRC9CVector3fR10CModelData:
/* 801FEF10 001FBE70  94 21 FD A0 */	stwu r1, -0x260(r1)
/* 801FEF14 001FBE74  7C 08 02 A6 */	mflr r0
/* 801FEF18 001FBE78  90 01 02 64 */	stw r0, 0x264(r1)
/* 801FEF1C 001FBE7C  BF 21 02 44 */	stmw r25, 0x244(r1)
/* 801FEF20 001FBE80  7C 7A 1B 78 */	mr r26, r3
/* 801FEF24 001FBE84  7C 9B 23 78 */	mr r27, r4
/* 801FEF28 001FBE88  7C BD 2B 78 */	mr r29, r5
/* 801FEF2C 001FBE8C  88 03 00 68 */	lbz r0, 0x68(r3)
/* 801FEF30 001FBE90  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FEF34 001FBE94  40 82 06 68 */	bne lbl_801FF59C
/* 801FEF38 001FBE98  83 FD 00 10 */	lwz r31, 0x10(r29)
/* 801FEF3C 001FBE9C  3C 60 80 5A */	lis r3, sNoRotation__11CQuaternion@ha
/* 801FEF40 001FBEA0  38 63 66 60 */	addi r3, r3, sNoRotation__11CQuaternion@l
/* 801FEF44 001FBEA4  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 801FEF48 001FBEA8  3B DF 02 FC */	addi r30, r31, 0x2fc
/* 801FEF4C 001FBEAC  3B 9E 00 40 */	addi r28, r30, 0x40
/* 801FEF50 001FBEB0  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 801FEF54 001FBEB4  48 00 00 70 */	b lbl_801FEFC4
lbl_801FEF58:
/* 801FEF58 001FBEB8  80 DF 00 D4 */	lwz r6, 0xd4(r31)
/* 801FEF5C 001FBEBC  88 05 00 00 */	lbz r0, 0(r5)
/* 801FEF60 001FBEC0  81 06 00 00 */	lwz r8, 0(r6)
/* 801FEF64 001FBEC4  54 07 0D FC */	rlwinm r7, r0, 1, 0x17, 0x1e
/* 801FEF68 001FBEC8  7C C8 3A 14 */	add r6, r8, r7
/* 801FEF6C 001FBECC  81 08 00 D0 */	lwz r8, 0xd0(r8)
/* 801FEF70 001FBED0  88 06 00 09 */	lbz r0, 9(r6)
/* 801FEF74 001FBED4  54 06 2C F4 */	rlwinm r6, r0, 5, 0x13, 0x1a
/* 801FEF78 001FBED8  38 06 00 14 */	addi r0, r6, 0x14
/* 801FEF7C 001FBEDC  7C 08 00 2E */	lwzx r0, r8, r0
/* 801FEF80 001FBEE0  2C 00 00 01 */	cmpwi r0, 1
/* 801FEF84 001FBEE4  40 81 00 3C */	ble lbl_801FEFC0
/* 801FEF88 001FBEE8  38 07 00 01 */	addi r0, r7, 1
/* 801FEF8C 001FBEEC  3C C0 80 5A */	lis r6, sNoRotation__11CQuaternion@ha
/* 801FEF90 001FBEF0  7C 1C 00 AE */	lbzx r0, r28, r0
/* 801FEF94 001FBEF4  80 FE 01 08 */	lwz r7, 0x108(r30)
/* 801FEF98 001FBEF8  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 801FEF9C 001FBEFC  C0 06 66 60 */	lfs f0, sNoRotation__11CQuaternion@l(r6)
/* 801FEFA0 001FBF00  7C E7 02 14 */	add r7, r7, r0
/* 801FEFA4 001FBF04  D0 07 00 04 */	stfs f0, 4(r7)
/* 801FEFA8 001FBF08  80 C3 00 04 */	lwz r6, 4(r3)
/* 801FEFAC 001FBF0C  80 03 00 08 */	lwz r0, 8(r3)
/* 801FEFB0 001FBF10  90 C7 00 08 */	stw r6, 8(r7)
/* 801FEFB4 001FBF14  90 07 00 0C */	stw r0, 0xc(r7)
/* 801FEFB8 001FBF18  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801FEFBC 001FBF1C  90 07 00 10 */	stw r0, 0x10(r7)
lbl_801FEFC0:
/* 801FEFC0 001FBF20  38 A5 00 01 */	addi r5, r5, 1
lbl_801FEFC4:
/* 801FEFC4 001FBF24  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 801FEFC8 001FBF28  80 04 00 0C */	lwz r0, 0xc(r4)
/* 801FEFCC 001FBF2C  7C 06 02 14 */	add r0, r6, r0
/* 801FEFD0 001FBF30  7C 05 00 40 */	cmplw r5, r0
/* 801FEFD4 001FBF34  40 82 FF 84 */	bne lbl_801FEF58
/* 801FEFD8 001FBF38  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 801FEFDC 001FBF3C  38 61 01 74 */	addi r3, r1, 0x174
/* 801FEFE0 001FBF40  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 801FEFE4 001FBF44  38 84 00 49 */	addi r4, r4, 0x49
/* 801FEFE8 001FBF48  4B E0 5C D1 */	bl string_l__4rstlFPCc
/* 801FEFEC 001FBF4C  7F E4 FB 78 */	mr r4, r31
/* 801FEFF0 001FBF50  38 61 00 08 */	addi r3, r1, 8
/* 801FEFF4 001FBF54  38 A1 01 74 */	addi r5, r1, 0x174
/* 801FEFF8 001FBF58  4B E2 F8 41 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801FEFFC 001FBF5C  8B 21 00 08 */	lbz r25, 8(r1)
/* 801FF000 001FBF60  38 61 01 74 */	addi r3, r1, 0x174
/* 801FF004 001FBF64  48 13 EA DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801FF008 001FBF68  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 801FF00C 001FBF6C  57 20 0D FC */	rlwinm r0, r25, 1, 0x17, 0x1e
/* 801FF010 001FBF70  C0 7D 00 00 */	lfs f3, 0(r29)
/* 801FF014 001FBF74  7F 3C 02 14 */	add r25, r28, r0
/* 801FF018 001FBF78  C0 85 02 04 */	lfs f4, 0x204(r5)
/* 801FF01C 001FBF7C  38 61 01 50 */	addi r3, r1, 0x150
/* 801FF020 001FBF80  C0 45 02 C4 */	lfs f2, 0x2c4(r5)
/* 801FF024 001FBF84  38 81 01 44 */	addi r4, r1, 0x144
/* 801FF028 001FBF88  88 19 00 01 */	lbz r0, 1(r25)
/* 801FF02C 001FBF8C  EC A4 10 2A */	fadds f5, f4, f2
/* 801FF030 001FBF90  C0 C2 AF 74 */	lfs f6, lbl_805ACC94@sda21(r2)
/* 801FF034 001FBF94  C0 25 02 08 */	lfs f1, 0x208(r5)
/* 801FF038 001FBF98  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 801FF03C 001FBF9C  C0 05 02 C8 */	lfs f0, 0x2c8(r5)
/* 801FF040 001FBFA0  EC A6 01 72 */	fmuls f5, f6, f5
/* 801FF044 001FBFA4  EC 81 00 2A */	fadds f4, f1, f0
/* 801FF048 001FBFA8  C0 1B 00 00 */	lfs f0, 0(r27)
/* 801FF04C 001FBFAC  C0 45 02 0C */	lfs f2, 0x20c(r5)
/* 801FF050 001FBFB0  EC A5 00 28 */	fsubs f5, f5, f0
/* 801FF054 001FBFB4  C0 1B 00 04 */	lfs f0, 4(r27)
/* 801FF058 001FBFB8  EC E6 01 32 */	fmuls f7, f6, f4
/* 801FF05C 001FBFBC  C0 25 02 CC */	lfs f1, 0x2cc(r5)
/* 801FF060 001FBFC0  80 BE 01 08 */	lwz r5, 0x108(r30)
/* 801FF064 001FBFC4  EC E7 00 28 */	fsubs f7, f7, f0
/* 801FF068 001FBFC8  C0 9B 00 08 */	lfs f4, 8(r27)
/* 801FF06C 001FBFCC  EC 05 18 24 */	fdivs f0, f5, f3
/* 801FF070 001FBFD0  7C A5 02 14 */	add r5, r5, r0
/* 801FF074 001FBFD4  D0 61 01 5C */	stfs f3, 0x15c(r1)
/* 801FF078 001FBFD8  D0 61 01 68 */	stfs f3, 0x168(r1)
/* 801FF07C 001FBFDC  EC 22 08 2A */	fadds f1, f2, f1
/* 801FF080 001FBFE0  C0 5D 00 04 */	lfs f2, 4(r29)
/* 801FF084 001FBFE4  D0 41 01 60 */	stfs f2, 0x160(r1)
/* 801FF088 001FBFE8  ED 06 00 72 */	fmuls f8, f6, f1
/* 801FF08C 001FBFEC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 801FF090 001FBFF0  D0 41 01 6C */	stfs f2, 0x16c(r1)
/* 801FF094 001FBFF4  ED 08 20 28 */	fsubs f8, f8, f4
/* 801FF098 001FBFF8  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 801FF09C 001FBFFC  EC 87 10 24 */	fdivs f4, f7, f2
/* 801FF0A0 001FC000  D0 21 01 64 */	stfs f1, 0x164(r1)
/* 801FF0A4 001FC004  D0 21 01 70 */	stfs f1, 0x170(r1)
/* 801FF0A8 001FC008  EC 08 08 24 */	fdivs f0, f8, f1
/* 801FF0AC 001FC00C  D0 85 00 18 */	stfs f4, 0x18(r5)
/* 801FF0B0 001FC010  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 801FF0B4 001FC014  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 801FF0B8 001FC018  C0 25 00 88 */	lfs f1, 0x88(r5)
/* 801FF0BC 001FC01C  C0 05 01 48 */	lfs f0, 0x148(r5)
/* 801FF0C0 001FC020  C0 65 00 8C */	lfs f3, 0x8c(r5)
/* 801FF0C4 001FC024  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FF0C8 001FC028  C0 45 01 4C */	lfs f2, 0x14c(r5)
/* 801FF0CC 001FC02C  C0 25 00 84 */	lfs f1, 0x84(r5)
/* 801FF0D0 001FC030  C0 05 01 44 */	lfs f0, 0x144(r5)
/* 801FF0D4 001FC034  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FF0D8 001FC038  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FF0DC 001FC03C  D0 81 01 E8 */	stfs f4, 0x1e8(r1)
/* 801FF0E0 001FC040  D0 41 01 EC */	stfs f2, 0x1ec(r1)
/* 801FF0E4 001FC044  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 801FF0E8 001FC048  C0 25 02 08 */	lfs f1, 0x208(r5)
/* 801FF0EC 001FC04C  C0 05 02 C8 */	lfs f0, 0x2c8(r5)
/* 801FF0F0 001FC050  C0 45 02 0C */	lfs f2, 0x20c(r5)
/* 801FF0F4 001FC054  EC A1 00 2A */	fadds f5, f1, f0
/* 801FF0F8 001FC058  C0 05 02 CC */	lfs f0, 0x2cc(r5)
/* 801FF0FC 001FC05C  C0 25 02 04 */	lfs f1, 0x204(r5)
/* 801FF100 001FC060  EC 82 00 2A */	fadds f4, f2, f0
/* 801FF104 001FC064  C0 05 02 C4 */	lfs f0, 0x2c4(r5)
/* 801FF108 001FC068  ED 06 01 72 */	fmuls f8, f6, f5
/* 801FF10C 001FC06C  EC 61 00 2A */	fadds f3, f1, f0
/* 801FF110 001FC070  C0 05 00 08 */	lfs f0, 8(r5)
/* 801FF114 001FC074  EC E6 01 32 */	fmuls f7, f6, f4
/* 801FF118 001FC078  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 801FF11C 001FC07C  ED 20 40 28 */	fsubs f9, f0, f8
/* 801FF120 001FC080  EC 46 00 F2 */	fmuls f2, f6, f3
/* 801FF124 001FC084  C0 05 00 04 */	lfs f0, 4(r5)
/* 801FF128 001FC088  EC 21 38 28 */	fsubs f1, f1, f7
/* 801FF12C 001FC08C  D0 61 01 2C */	stfs f3, 0x12c(r1)
/* 801FF130 001FC090  EC 00 10 28 */	fsubs f0, f0, f2
/* 801FF134 001FC094  D0 A1 01 30 */	stfs f5, 0x130(r1)
/* 801FF138 001FC098  D0 81 01 34 */	stfs f4, 0x134(r1)
/* 801FF13C 001FC09C  D0 41 01 38 */	stfs f2, 0x138(r1)
/* 801FF140 001FC0A0  D1 01 01 3C */	stfs f8, 0x13c(r1)
/* 801FF144 001FC0A4  D0 E1 01 40 */	stfs f7, 0x140(r1)
/* 801FF148 001FC0A8  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 801FF14C 001FC0AC  D1 21 01 48 */	stfs f9, 0x148(r1)
/* 801FF150 001FC0B0  D0 21 01 4C */	stfs f1, 0x14c(r1)
/* 801FF154 001FC0B4  48 11 56 FD */	bl AsNormalized__9CVector3fCFv
/* 801FF158 001FC0B8  C0 A1 01 50 */	lfs f5, 0x150(r1)
/* 801FF15C 001FC0BC  38 61 01 20 */	addi r3, r1, 0x120
/* 801FF160 001FC0C0  C0 81 01 54 */	lfs f4, 0x154(r1)
/* 801FF164 001FC0C4  38 81 01 14 */	addi r4, r1, 0x114
/* 801FF168 001FC0C8  C0 61 01 58 */	lfs f3, 0x158(r1)
/* 801FF16C 001FC0CC  C0 C1 01 E8 */	lfs f6, 0x1e8(r1)
/* 801FF170 001FC0D0  C0 E1 01 EC */	lfs f7, 0x1ec(r1)
/* 801FF174 001FC0D4  C1 01 01 E4 */	lfs f8, 0x1e4(r1)
/* 801FF178 001FC0D8  EC 46 00 F2 */	fmuls f2, f6, f3
/* 801FF17C 001FC0DC  EC 27 01 72 */	fmuls f1, f7, f5
/* 801FF180 001FC0E0  D0 A1 01 D8 */	stfs f5, 0x1d8(r1)
/* 801FF184 001FC0E4  EC 08 01 32 */	fmuls f0, f8, f4
/* 801FF188 001FC0E8  EC 44 11 F8 */	fmsubs f2, f4, f7, f2
/* 801FF18C 001FC0EC  D0 81 01 DC */	stfs f4, 0x1dc(r1)
/* 801FF190 001FC0F0  EC 23 0A 38 */	fmsubs f1, f3, f8, f1
/* 801FF194 001FC0F4  EC 05 01 B8 */	fmsubs f0, f5, f6, f0
/* 801FF198 001FC0F8  D0 61 01 E0 */	stfs f3, 0x1e0(r1)
/* 801FF19C 001FC0FC  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 801FF1A0 001FC100  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 801FF1A4 001FC104  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 801FF1A8 001FC108  48 11 56 A9 */	bl AsNormalized__9CVector3fCFv
/* 801FF1AC 001FC10C  C0 A1 01 20 */	lfs f5, 0x120(r1)
/* 801FF1B0 001FC110  38 61 02 14 */	addi r3, r1, 0x214
/* 801FF1B4 001FC114  C0 81 01 24 */	lfs f4, 0x124(r1)
/* 801FF1B8 001FC118  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 801FF1BC 001FC11C  C0 61 01 28 */	lfs f3, 0x128(r1)
/* 801FF1C0 001FC120  38 A1 01 CC */	addi r5, r1, 0x1cc
/* 801FF1C4 001FC124  C0 C1 01 DC */	lfs f6, 0x1dc(r1)
/* 801FF1C8 001FC128  38 C1 01 D8 */	addi r6, r1, 0x1d8
/* 801FF1CC 001FC12C  C0 E1 01 E0 */	lfs f7, 0x1e0(r1)
/* 801FF1D0 001FC130  C1 01 01 D8 */	lfs f8, 0x1d8(r1)
/* 801FF1D4 001FC134  EC 26 00 F2 */	fmuls f1, f6, f3
/* 801FF1D8 001FC138  EC 07 01 72 */	fmuls f0, f7, f5
/* 801FF1DC 001FC13C  D0 A1 01 CC */	stfs f5, 0x1cc(r1)
/* 801FF1E0 001FC140  EC 48 01 32 */	fmuls f2, f8, f4
/* 801FF1E4 001FC144  EC 24 09 F8 */	fmsubs f1, f4, f7, f1
/* 801FF1E8 001FC148  D0 81 01 D0 */	stfs f4, 0x1d0(r1)
/* 801FF1EC 001FC14C  EC 03 02 38 */	fmsubs f0, f3, f8, f0
/* 801FF1F0 001FC150  EC 45 11 B8 */	fmsubs f2, f5, f6, f2
/* 801FF1F4 001FC154  D0 61 01 D4 */	stfs f3, 0x1d4(r1)
/* 801FF1F8 001FC158  D0 21 01 E4 */	stfs f1, 0x1e4(r1)
/* 801FF1FC 001FC15C  D0 01 01 E8 */	stfs f0, 0x1e8(r1)
/* 801FF200 001FC160  D0 41 01 EC */	stfs f2, 0x1ec(r1)
/* 801FF204 001FC164  48 11 14 79 */	bl __ct__9CMatrix3fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801FF208 001FC168  C1 01 02 14 */	lfs f8, 0x214(r1)
/* 801FF20C 001FC16C  38 61 01 04 */	addi r3, r1, 0x104
/* 801FF210 001FC170  C0 E1 02 20 */	lfs f7, 0x220(r1)
/* 801FF214 001FC174  38 81 01 F0 */	addi r4, r1, 0x1f0
/* 801FF218 001FC178  C0 C1 02 2C */	lfs f6, 0x22c(r1)
/* 801FF21C 001FC17C  C0 A1 02 18 */	lfs f5, 0x218(r1)
/* 801FF220 001FC180  C0 81 02 24 */	lfs f4, 0x224(r1)
/* 801FF224 001FC184  C0 61 02 30 */	lfs f3, 0x230(r1)
/* 801FF228 001FC188  C0 41 02 1C */	lfs f2, 0x21c(r1)
/* 801FF22C 001FC18C  C0 21 02 28 */	lfs f1, 0x228(r1)
/* 801FF230 001FC190  C0 01 02 34 */	lfs f0, 0x234(r1)
/* 801FF234 001FC194  D1 01 01 F0 */	stfs f8, 0x1f0(r1)
/* 801FF238 001FC198  D0 E1 01 F4 */	stfs f7, 0x1f4(r1)
/* 801FF23C 001FC19C  D0 C1 01 F8 */	stfs f6, 0x1f8(r1)
/* 801FF240 001FC1A0  D0 A1 01 FC */	stfs f5, 0x1fc(r1)
/* 801FF244 001FC1A4  D0 81 02 00 */	stfs f4, 0x200(r1)
/* 801FF248 001FC1A8  D0 61 02 04 */	stfs f3, 0x204(r1)
/* 801FF24C 001FC1AC  D0 41 02 08 */	stfs f2, 0x208(r1)
/* 801FF250 001FC1B0  D0 21 02 0C */	stfs f1, 0x20c(r1)
/* 801FF254 001FC1B4  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 801FF258 001FC1B8  48 11 2F 29 */	bl FromMatrix__11CQuaternionFRC9CMatrix3f
/* 801FF25C 001FC1BC  C0 61 01 04 */	lfs f3, 0x104(r1)
/* 801FF260 001FC1C0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 801FF264 001FC1C4  C0 41 01 08 */	lfs f2, 0x108(r1)
/* 801FF268 001FC1C8  C0 21 01 0C */	lfs f1, 0x10c(r1)
/* 801FF26C 001FC1CC  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 801FF270 001FC1D0  D0 61 01 BC */	stfs f3, 0x1bc(r1)
/* 801FF274 001FC1D4  D0 41 01 C0 */	stfs f2, 0x1c0(r1)
/* 801FF278 001FC1D8  D0 21 01 C4 */	stfs f1, 0x1c4(r1)
/* 801FF27C 001FC1DC  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 801FF280 001FC1E0  88 19 00 01 */	lbz r0, 1(r25)
/* 801FF284 001FC1E4  80 9E 01 08 */	lwz r4, 0x108(r30)
/* 801FF288 001FC1E8  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 801FF28C 001FC1EC  7C A4 02 14 */	add r5, r4, r0
/* 801FF290 001FC1F0  D0 65 00 04 */	stfs f3, 4(r5)
/* 801FF294 001FC1F4  80 81 01 C0 */	lwz r4, 0x1c0(r1)
/* 801FF298 001FC1F8  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 801FF29C 001FC1FC  90 85 00 08 */	stw r4, 8(r5)
/* 801FF2A0 001FC200  90 05 00 0C */	stw r0, 0xc(r5)
/* 801FF2A4 001FC204  80 01 01 C8 */	lwz r0, 0x1c8(r1)
/* 801FF2A8 001FC208  90 05 00 10 */	stw r0, 0x10(r5)
/* 801FF2AC 001FC20C  83 BF 00 D4 */	lwz r29, 0xd4(r31)
/* 801FF2B0 001FC210  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 801FF2B4 001FC214  7F A4 EB 78 */	mr r4, r29
/* 801FF2B8 001FC218  38 A5 00 40 */	addi r5, r5, 0x40
/* 801FF2BC 001FC21C  4B F2 C6 E5 */	bl GetFromParentUnrotated__15CCharLayoutInfoCFRC6CSegId
/* 801FF2C0 001FC220  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 801FF2C4 001FC224  38 61 00 EC */	addi r3, r1, 0xec
/* 801FF2C8 001FC228  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 801FF2CC 001FC22C  38 81 00 DC */	addi r4, r1, 0xdc
/* 801FF2D0 001FC230  C0 41 01 00 */	lfs f2, 0x100(r1)
/* 801FF2D4 001FC234  38 A1 01 A4 */	addi r5, r1, 0x1a4
/* 801FF2D8 001FC238  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 801FF2DC 001FC23C  C0 01 01 C8 */	lfs f0, 0x1c8(r1)
/* 801FF2E0 001FC240  D0 21 01 B4 */	stfs f1, 0x1b4(r1)
/* 801FF2E4 001FC244  C0 21 01 C4 */	lfs f1, 0x1c4(r1)
/* 801FF2E8 001FC248  FD 00 00 50 */	fneg f8, f0
/* 801FF2EC 001FC24C  D0 41 01 B8 */	stfs f2, 0x1b8(r1)
/* 801FF2F0 001FC250  C0 01 01 C0 */	lfs f0, 0x1c0(r1)
/* 801FF2F4 001FC254  FC E0 08 50 */	fneg f7, f1
/* 801FF2F8 001FC258  80 DA 00 10 */	lwz r6, 0x10(r26)
/* 801FF2FC 001FC25C  FC C0 00 50 */	fneg f6, f0
/* 801FF300 001FC260  C0 01 01 BC */	lfs f0, 0x1bc(r1)
/* 801FF304 001FC264  C0 46 00 48 */	lfs f2, 0x48(r6)
/* 801FF308 001FC268  C0 26 00 08 */	lfs f1, 8(r6)
/* 801FF30C 001FC26C  C0 86 00 4C */	lfs f4, 0x4c(r6)
/* 801FF310 001FC270  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 801FF314 001FC274  EC A2 08 28 */	fsubs f5, f2, f1
/* 801FF318 001FC278  C0 46 00 44 */	lfs f2, 0x44(r6)
/* 801FF31C 001FC27C  C0 26 00 04 */	lfs f1, 4(r6)
/* 801FF320 001FC280  EC 64 18 28 */	fsubs f3, f4, f3
/* 801FF324 001FC284  EC 22 08 28 */	fsubs f1, f2, f1
/* 801FF328 001FC288  D0 A1 01 A8 */	stfs f5, 0x1a8(r1)
/* 801FF32C 001FC28C  D0 61 01 AC */	stfs f3, 0x1ac(r1)
/* 801FF330 001FC290  D0 21 01 A4 */	stfs f1, 0x1a4(r1)
/* 801FF334 001FC294  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 801FF338 001FC298  D0 C1 00 E0 */	stfs f6, 0xe0(r1)
/* 801FF33C 001FC29C  D0 E1 00 E4 */	stfs f7, 0xe4(r1)
/* 801FF340 001FC2A0  D1 01 00 E8 */	stfs f8, 0xe8(r1)
/* 801FF344 001FC2A4  48 11 1F 21 */	bl Transform__11CQuaternionCFRC9CVector3f
/* 801FF348 001FC2A8  C0 41 00 EC */	lfs f2, 0xec(r1)
/* 801FF34C 001FC2AC  38 61 00 CC */	addi r3, r1, 0xcc
/* 801FF350 001FC2B0  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 801FF354 001FC2B4  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 801FF358 001FC2B8  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 801FF35C 001FC2BC  38 A1 01 A4 */	addi r5, r1, 0x1a4
/* 801FF360 001FC2C0  D0 41 01 A4 */	stfs f2, 0x1a4(r1)
/* 801FF364 001FC2C4  D0 21 01 A8 */	stfs f1, 0x1a8(r1)
/* 801FF368 001FC2C8  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 801FF36C 001FC2CC  48 11 27 4D */	bl ShortestRotationArc__11CQuaternionFRC9CVector3fRC9CVector3f
/* 801FF370 001FC2D0  80 7A 00 10 */	lwz r3, 0x10(r26)
/* 801FF374 001FC2D4  7F 44 D3 78 */	mr r4, r26
/* 801FF378 001FC2D8  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 801FF37C 001FC2DC  7F C5 F3 78 */	mr r5, r30
/* 801FF380 001FC2E0  88 03 00 40 */	lbz r0, 0x40(r3)
/* 801FF384 001FC2E4  7F A6 EB 78 */	mr r6, r29
/* 801FF388 001FC2E8  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 801FF38C 001FC2EC  38 61 00 BC */	addi r3, r1, 0xbc
/* 801FF390 001FC2F0  54 07 08 3C */	slwi r7, r0, 1
/* 801FF394 001FC2F4  C0 41 00 CC */	lfs f2, 0xcc(r1)
/* 801FF398 001FC2F8  38 07 00 01 */	addi r0, r7, 1
/* 801FF39C 001FC2FC  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 801FF3A0 001FC300  7C 1C 00 AE */	lbzx r0, r28, r0
/* 801FF3A4 001FC304  39 21 01 BC */	addi r9, r1, 0x1bc
/* 801FF3A8 001FC308  81 1E 01 08 */	lwz r8, 0x108(r30)
/* 801FF3AC 001FC30C  38 E0 00 02 */	li r7, 2
/* 801FF3B0 001FC310  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 801FF3B4 001FC314  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 801FF3B8 001FC318  7D 68 02 14 */	add r11, r8, r0
/* 801FF3BC 001FC31C  D0 21 01 9C */	stfs f1, 0x19c(r1)
/* 801FF3C0 001FC320  80 01 01 98 */	lwz r0, 0x198(r1)
/* 801FF3C4 001FC324  39 00 00 03 */	li r8, 3
/* 801FF3C8 001FC328  D0 4B 00 04 */	stfs f2, 4(r11)
/* 801FF3CC 001FC32C  81 41 01 9C */	lwz r10, 0x19c(r1)
/* 801FF3D0 001FC330  90 0B 00 08 */	stw r0, 8(r11)
/* 801FF3D4 001FC334  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 801FF3D8 001FC338  80 01 01 A0 */	lwz r0, 0x1a0(r1)
/* 801FF3DC 001FC33C  91 4B 00 0C */	stw r10, 0xc(r11)
/* 801FF3E0 001FC340  D0 41 01 94 */	stfs f2, 0x194(r1)
/* 801FF3E4 001FC344  90 0B 00 10 */	stw r0, 0x10(r11)
/* 801FF3E8 001FC348  48 00 D5 75 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 801FF3EC 001FC34C  C0 61 00 BC */	lfs f3, 0xbc(r1)
/* 801FF3F0 001FC350  38 61 00 9C */	addi r3, r1, 0x9c
/* 801FF3F4 001FC354  C0 41 00 C0 */	lfs f2, 0xc0(r1)
/* 801FF3F8 001FC358  38 81 01 BC */	addi r4, r1, 0x1bc
/* 801FF3FC 001FC35C  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 801FF400 001FC360  38 A1 01 84 */	addi r5, r1, 0x184
/* 801FF404 001FC364  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 801FF408 001FC368  D0 61 01 84 */	stfs f3, 0x184(r1)
/* 801FF40C 001FC36C  D0 41 01 88 */	stfs f2, 0x188(r1)
/* 801FF410 001FC370  D0 21 01 8C */	stfs f1, 0x18c(r1)
/* 801FF414 001FC374  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 801FF418 001FC378  48 11 1D 89 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 801FF41C 001FC37C  7F 44 D3 78 */	mr r4, r26
/* 801FF420 001FC380  7F C5 F3 78 */	mr r5, r30
/* 801FF424 001FC384  7F A6 EB 78 */	mr r6, r29
/* 801FF428 001FC388  38 61 00 AC */	addi r3, r1, 0xac
/* 801FF42C 001FC38C  39 21 00 9C */	addi r9, r1, 0x9c
/* 801FF430 001FC390  38 E0 00 03 */	li r7, 3
/* 801FF434 001FC394  39 00 00 04 */	li r8, 4
/* 801FF438 001FC398  48 00 D5 25 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 801FF43C 001FC39C  7F 44 D3 78 */	mr r4, r26
/* 801FF440 001FC3A0  7F C5 F3 78 */	mr r5, r30
/* 801FF444 001FC3A4  7F A6 EB 78 */	mr r6, r29
/* 801FF448 001FC3A8  38 61 00 8C */	addi r3, r1, 0x8c
/* 801FF44C 001FC3AC  39 21 01 BC */	addi r9, r1, 0x1bc
/* 801FF450 001FC3B0  38 E0 00 05 */	li r7, 5
/* 801FF454 001FC3B4  39 00 00 06 */	li r8, 6
/* 801FF458 001FC3B8  48 00 D5 05 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 801FF45C 001FC3BC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 801FF460 001FC3C0  38 61 00 6C */	addi r3, r1, 0x6c
/* 801FF464 001FC3C4  80 E1 00 90 */	lwz r7, 0x90(r1)
/* 801FF468 001FC3C8  38 81 01 BC */	addi r4, r1, 0x1bc
/* 801FF46C 001FC3CC  80 C1 00 94 */	lwz r6, 0x94(r1)
/* 801FF470 001FC3D0  38 A1 01 84 */	addi r5, r1, 0x184
/* 801FF474 001FC3D4  80 01 00 98 */	lwz r0, 0x98(r1)
/* 801FF478 001FC3D8  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 801FF47C 001FC3DC  90 E1 01 88 */	stw r7, 0x188(r1)
/* 801FF480 001FC3E0  90 C1 01 8C */	stw r6, 0x18c(r1)
/* 801FF484 001FC3E4  90 01 01 90 */	stw r0, 0x190(r1)
/* 801FF488 001FC3E8  48 11 1D 19 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 801FF48C 001FC3EC  7F 44 D3 78 */	mr r4, r26
/* 801FF490 001FC3F0  7F C5 F3 78 */	mr r5, r30
/* 801FF494 001FC3F4  7F A6 EB 78 */	mr r6, r29
/* 801FF498 001FC3F8  38 61 00 7C */	addi r3, r1, 0x7c
/* 801FF49C 001FC3FC  39 21 00 6C */	addi r9, r1, 0x6c
/* 801FF4A0 001FC400  38 E0 00 06 */	li r7, 6
/* 801FF4A4 001FC404  39 00 00 07 */	li r8, 7
/* 801FF4A8 001FC408  48 00 D4 B5 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 801FF4AC 001FC40C  7F 44 D3 78 */	mr r4, r26
/* 801FF4B0 001FC410  7F C5 F3 78 */	mr r5, r30
/* 801FF4B4 001FC414  7F A6 EB 78 */	mr r6, r29
/* 801FF4B8 001FC418  38 61 00 5C */	addi r3, r1, 0x5c
/* 801FF4BC 001FC41C  39 21 01 BC */	addi r9, r1, 0x1bc
/* 801FF4C0 001FC420  38 E0 00 08 */	li r7, 8
/* 801FF4C4 001FC424  39 00 00 09 */	li r8, 9
/* 801FF4C8 001FC428  48 00 D4 95 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 801FF4CC 001FC42C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801FF4D0 001FC430  38 61 00 3C */	addi r3, r1, 0x3c
/* 801FF4D4 001FC434  80 E1 00 60 */	lwz r7, 0x60(r1)
/* 801FF4D8 001FC438  38 81 01 BC */	addi r4, r1, 0x1bc
/* 801FF4DC 001FC43C  80 C1 00 64 */	lwz r6, 0x64(r1)
/* 801FF4E0 001FC440  38 A1 01 84 */	addi r5, r1, 0x184
/* 801FF4E4 001FC444  80 01 00 68 */	lwz r0, 0x68(r1)
/* 801FF4E8 001FC448  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 801FF4EC 001FC44C  90 E1 01 88 */	stw r7, 0x188(r1)
/* 801FF4F0 001FC450  90 C1 01 8C */	stw r6, 0x18c(r1)
/* 801FF4F4 001FC454  90 01 01 90 */	stw r0, 0x190(r1)
/* 801FF4F8 001FC458  48 11 1C A9 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 801FF4FC 001FC45C  7F 44 D3 78 */	mr r4, r26
/* 801FF500 001FC460  7F C5 F3 78 */	mr r5, r30
/* 801FF504 001FC464  7F A6 EB 78 */	mr r6, r29
/* 801FF508 001FC468  38 61 00 4C */	addi r3, r1, 0x4c
/* 801FF50C 001FC46C  39 21 00 3C */	addi r9, r1, 0x3c
/* 801FF510 001FC470  38 E0 00 09 */	li r7, 9
/* 801FF514 001FC474  39 00 00 0A */	li r8, 0xa
/* 801FF518 001FC478  48 00 D4 45 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 801FF51C 001FC47C  7F 44 D3 78 */	mr r4, r26
/* 801FF520 001FC480  7F C5 F3 78 */	mr r5, r30
/* 801FF524 001FC484  7F A6 EB 78 */	mr r6, r29
/* 801FF528 001FC488  38 61 00 2C */	addi r3, r1, 0x2c
/* 801FF52C 001FC48C  39 21 01 BC */	addi r9, r1, 0x1bc
/* 801FF530 001FC490  38 E0 00 0B */	li r7, 0xb
/* 801FF534 001FC494  39 00 00 0C */	li r8, 0xc
/* 801FF538 001FC498  48 00 D4 25 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 801FF53C 001FC49C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801FF540 001FC4A0  38 61 00 0C */	addi r3, r1, 0xc
/* 801FF544 001FC4A4  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 801FF548 001FC4A8  38 81 01 BC */	addi r4, r1, 0x1bc
/* 801FF54C 001FC4AC  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 801FF550 001FC4B0  38 A1 01 84 */	addi r5, r1, 0x184
/* 801FF554 001FC4B4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801FF558 001FC4B8  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 801FF55C 001FC4BC  90 E1 01 88 */	stw r7, 0x188(r1)
/* 801FF560 001FC4C0  90 C1 01 8C */	stw r6, 0x18c(r1)
/* 801FF564 001FC4C4  90 01 01 90 */	stw r0, 0x190(r1)
/* 801FF568 001FC4C8  48 11 1C 39 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 801FF56C 001FC4CC  7F 44 D3 78 */	mr r4, r26
/* 801FF570 001FC4D0  7F C5 F3 78 */	mr r5, r30
/* 801FF574 001FC4D4  7F A6 EB 78 */	mr r6, r29
/* 801FF578 001FC4D8  38 61 00 1C */	addi r3, r1, 0x1c
/* 801FF57C 001FC4DC  39 21 00 0C */	addi r9, r1, 0xc
/* 801FF580 001FC4E0  38 E0 00 0C */	li r7, 0xc
/* 801FF584 001FC4E4  39 00 00 0D */	li r8, 0xd
/* 801FF588 001FC4E8  48 00 D3 D5 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 801FF58C 001FC4EC  88 1F 02 20 */	lbz r0, 0x220(r31)
/* 801FF590 001FC4F0  38 60 00 00 */	li r3, 0
/* 801FF594 001FC4F4  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801FF598 001FC4F8  98 1F 02 20 */	stb r0, 0x220(r31)
lbl_801FF59C:
/* 801FF59C 001FC4FC  BB 21 02 44 */	lmw r25, 0x244(r1)
/* 801FF5A0 001FC500  80 01 02 64 */	lwz r0, 0x264(r1)
/* 801FF5A4 001FC504  7C 08 03 A6 */	mtlr r0
/* 801FF5A8 001FC508  38 21 02 60 */	addi r1, r1, 0x260
/* 801FF5AC 001FC50C  4E 80 00 20 */	blr

.global Update__20CFlyingPirateRagDollFR13CStateManagerf
Update__20CFlyingPirateRagDollFR13CStateManagerf:
/* 801FF5B0 001FC510  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 801FF5B4 001FC514  7C 08 02 A6 */	mflr r0
/* 801FF5B8 001FC518  90 01 01 34 */	stw r0, 0x134(r1)
/* 801FF5BC 001FC51C  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 801FF5C0 001FC520  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 801FF5C4 001FC524  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 801FF5C8 001FC528  F3 C1 01 18 */	psq_st f30, 280(r1), 0, qr0
/* 801FF5CC 001FC52C  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 801FF5D0 001FC530  F3 A1 01 08 */	psq_st f29, 264(r1), 0, qr0
/* 801FF5D4 001FC534  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 801FF5D8 001FC538  F3 81 00 F8 */	psq_st f28, 248(r1), 0, qr0
/* 801FF5DC 001FC53C  93 E1 00 EC */	stw r31, 0xec(r1)
/* 801FF5E0 001FC540  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 801FF5E4 001FC544  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 801FF5E8 001FC548  88 03 00 68 */	lbz r0, 0x68(r3)
/* 801FF5EC 001FC54C  FF A0 08 90 */	fmr f29, f1
/* 801FF5F0 001FC550  FF C0 10 90 */	fmr f30, f2
/* 801FF5F4 001FC554  7C 7E 1B 78 */	mr r30, r3
/* 801FF5F8 001FC558  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801FF5FC 001FC55C  7C 9F 23 78 */	mr r31, r4
/* 801FF600 001FC560  40 82 07 EC */	bne lbl_801FFDEC
/* 801FF604 001FC564  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 801FF608 001FC568  88 03 06 A1 */	lbz r0, 0x6a1(r3)
/* 801FF60C 001FC56C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801FF610 001FC570  41 82 03 EC */	beq lbl_801FF9FC
/* 801FF614 001FC574  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 801FF618 001FC578  38 61 00 94 */	addi r3, r1, 0x94
/* 801FF61C 001FC57C  38 81 00 88 */	addi r4, r1, 0x88
/* 801FF620 001FC580  EC 00 E8 28 */	fsubs f0, f0, f29
/* 801FF624 001FC584  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 801FF628 001FC588  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 801FF62C 001FC58C  80 BE 00 6C */	lwz r5, 0x6c(r30)
/* 801FF630 001FC590  C0 06 03 88 */	lfs f0, 0x388(r6)
/* 801FF634 001FC594  C0 25 02 E4 */	lfs f1, 0x2e4(r5)
/* 801FF638 001FC598  C0 65 02 E8 */	lfs f3, 0x2e8(r5)
/* 801FF63C 001FC59C  C0 46 03 8C */	lfs f2, 0x38c(r6)
/* 801FF640 001FC5A0  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FF644 001FC5A4  C0 25 02 E0 */	lfs f1, 0x2e0(r5)
/* 801FF648 001FC5A8  C0 06 03 84 */	lfs f0, 0x384(r6)
/* 801FF64C 001FC5AC  EC 43 10 28 */	fsubs f2, f3, f2
/* 801FF650 001FC5B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FF654 001FC5B4  D0 81 00 8C */	stfs f4, 0x8c(r1)
/* 801FF658 001FC5B8  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 801FF65C 001FC5BC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801FF660 001FC5C0  48 11 51 F1 */	bl AsNormalized__9CVector3fCFv
/* 801FF664 001FC5C4  C0 02 B0 14 */	lfs f0, lbl_805ACD34@sda21(r2)
/* 801FF668 001FC5C8  38 61 00 7C */	addi r3, r1, 0x7c
/* 801FF66C 001FC5CC  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 801FF670 001FC5D0  38 9E 00 74 */	addi r4, r30, 0x74
/* 801FF674 001FC5D4  EC 00 07 72 */	fmuls f0, f0, f29
/* 801FF678 001FC5D8  C0 22 B0 10 */	lfs f1, lbl_805ACD30@sda21(r2)
/* 801FF67C 001FC5DC  C0 61 00 98 */	lfs f3, 0x98(r1)
/* 801FF680 001FC5E0  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 801FF684 001FC5E4  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 801FF688 001FC5E8  38 C1 00 3C */	addi r6, r1, 0x3c
/* 801FF68C 001FC5EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801FF690 001FC5F0  D0 81 00 D0 */	stfs f4, 0xd0(r1)
/* 801FF694 001FC5F4  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 801FF698 001FC5F8  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 801FF69C 001FC5FC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801FF6A0 001FC600  48 11 52 B5 */	bl Slerp__9CVector3fFRC9CVector3fRC9CVector3fRC9CRelAngle
/* 801FF6A4 001FC604  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 801FF6A8 001FC608  C0 62 AF C4 */	lfs f3, lbl_805ACCE4@sda21(r2)
/* 801FF6AC 001FC60C  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 801FF6B0 001FC610  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FF6B4 001FC614  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 801FF6B8 001FC618  D0 3E 00 78 */	stfs f1, 0x78(r30)
/* 801FF6BC 001FC61C  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 801FF6C0 001FC620  D0 3E 00 7C */	stfs f1, 0x7c(r30)
/* 801FF6C4 001FC624  D0 7E 00 70 */	stfs f3, 0x70(r30)
/* 801FF6C8 001FC628  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 801FF6CC 001FC62C  C0 9E 00 70 */	lfs f4, 0x70(r30)
/* 801FF6D0 001FC630  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 801FF6D4 001FC634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FF6D8 001FC638  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 801FF6DC 001FC63C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 801FF6E0 001FC640  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801FF6E4 001FC644  EC 24 00 72 */	fmuls f1, f4, f1
/* 801FF6E8 001FC648  EC 04 00 32 */	fmuls f0, f4, f0
/* 801FF6EC 001FC64C  40 81 00 3C */	ble lbl_801FF728
/* 801FF6F0 001FC650  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801FF6F4 001FC654  EC A3 00 B2 */	fmuls f5, f3, f2
/* 801FF6F8 001FC658  EC 83 00 72 */	fmuls f4, f3, f1
/* 801FF6FC 001FC65C  C0 C3 03 A0 */	lfs f6, 0x3a0(r3)
/* 801FF700 001FC660  EC 63 00 32 */	fmuls f3, f3, f0
/* 801FF704 001FC664  EC A6 28 2A */	fadds f5, f6, f5
/* 801FF708 001FC668  D0 A3 03 A0 */	stfs f5, 0x3a0(r3)
/* 801FF70C 001FC66C  C0 A3 03 A4 */	lfs f5, 0x3a4(r3)
/* 801FF710 001FC670  EC 85 20 2A */	fadds f4, f5, f4
/* 801FF714 001FC674  D0 83 03 A4 */	stfs f4, 0x3a4(r3)
/* 801FF718 001FC678  C0 83 03 A8 */	lfs f4, 0x3a8(r3)
/* 801FF71C 001FC67C  EC 64 18 2A */	fadds f3, f4, f3
/* 801FF720 001FC680  D0 63 03 A8 */	stfs f3, 0x3a8(r3)
/* 801FF724 001FC684  48 00 00 3C */	b lbl_801FF760
lbl_801FF728:
/* 801FF728 001FC688  C0 62 B0 18 */	lfs f3, lbl_805ACD38@sda21(r2)
/* 801FF72C 001FC68C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801FF730 001FC690  EC A3 00 B2 */	fmuls f5, f3, f2
/* 801FF734 001FC694  C0 C3 03 A0 */	lfs f6, 0x3a0(r3)
/* 801FF738 001FC698  EC 83 00 72 */	fmuls f4, f3, f1
/* 801FF73C 001FC69C  EC 63 00 32 */	fmuls f3, f3, f0
/* 801FF740 001FC6A0  EC A6 28 2A */	fadds f5, f6, f5
/* 801FF744 001FC6A4  D0 A3 03 A0 */	stfs f5, 0x3a0(r3)
/* 801FF748 001FC6A8  C0 A3 03 A4 */	lfs f5, 0x3a4(r3)
/* 801FF74C 001FC6AC  EC 85 20 2A */	fadds f4, f5, f4
/* 801FF750 001FC6B0  D0 83 03 A4 */	stfs f4, 0x3a4(r3)
/* 801FF754 001FC6B4  C0 83 03 A8 */	lfs f4, 0x3a8(r3)
/* 801FF758 001FC6B8  EC 64 18 2A */	fadds f3, f4, f3
/* 801FF75C 001FC6BC  D0 63 03 A8 */	stfs f3, 0x3a8(r3)
lbl_801FF760:
/* 801FF760 001FC6C0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801FF764 001FC6C4  FD 00 10 50 */	fneg f8, f2
/* 801FF768 001FC6C8  C0 82 B0 1C */	lfs f4, lbl_805ACD3C@sda21(r2)
/* 801FF76C 001FC6CC  FC E0 08 50 */	fneg f7, f1
/* 801FF770 001FC6D0  C0 63 01 20 */	lfs f3, 0x120(r3)
/* 801FF774 001FC6D4  FC C0 00 50 */	fneg f6, f0
/* 801FF778 001FC6D8  ED 24 00 B2 */	fmuls f9, f4, f2
/* 801FF77C 001FC6DC  EC A3 40 2A */	fadds f5, f3, f8
/* 801FF780 001FC6E0  EC 64 00 72 */	fmuls f3, f4, f1
/* 801FF784 001FC6E4  EC 84 00 32 */	fmuls f4, f4, f0
/* 801FF788 001FC6E8  D0 A3 01 20 */	stfs f5, 0x120(r3)
/* 801FF78C 001FC6EC  C0 A3 01 24 */	lfs f5, 0x124(r3)
/* 801FF790 001FC6F0  EC A5 38 2A */	fadds f5, f5, f7
/* 801FF794 001FC6F4  D0 A3 01 24 */	stfs f5, 0x124(r3)
/* 801FF798 001FC6F8  C0 A3 01 28 */	lfs f5, 0x128(r3)
/* 801FF79C 001FC6FC  EC A5 30 2A */	fadds f5, f5, f6
/* 801FF7A0 001FC700  D0 A3 01 28 */	stfs f5, 0x128(r3)
/* 801FF7A4 001FC704  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801FF7A8 001FC708  C0 A3 01 E0 */	lfs f5, 0x1e0(r3)
/* 801FF7AC 001FC70C  EC A5 40 2A */	fadds f5, f5, f8
/* 801FF7B0 001FC710  D0 A3 01 E0 */	stfs f5, 0x1e0(r3)
/* 801FF7B4 001FC714  C0 A3 01 E4 */	lfs f5, 0x1e4(r3)
/* 801FF7B8 001FC718  EC A5 38 2A */	fadds f5, f5, f7
/* 801FF7BC 001FC71C  D0 A3 01 E4 */	stfs f5, 0x1e4(r3)
/* 801FF7C0 001FC720  C0 A3 01 E8 */	lfs f5, 0x1e8(r3)
/* 801FF7C4 001FC724  EC A5 30 2A */	fadds f5, f5, f6
/* 801FF7C8 001FC728  D0 A3 01 E8 */	stfs f5, 0x1e8(r3)
/* 801FF7CC 001FC72C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801FF7D0 001FC730  C0 A3 02 A0 */	lfs f5, 0x2a0(r3)
/* 801FF7D4 001FC734  EC A5 48 2A */	fadds f5, f5, f9
/* 801FF7D8 001FC738  D0 A3 02 A0 */	stfs f5, 0x2a0(r3)
/* 801FF7DC 001FC73C  C0 A3 02 A4 */	lfs f5, 0x2a4(r3)
/* 801FF7E0 001FC740  EC A5 18 2A */	fadds f5, f5, f3
/* 801FF7E4 001FC744  D0 A3 02 A4 */	stfs f5, 0x2a4(r3)
/* 801FF7E8 001FC748  C0 A3 02 A8 */	lfs f5, 0x2a8(r3)
/* 801FF7EC 001FC74C  EC A5 20 2A */	fadds f5, f5, f4
/* 801FF7F0 001FC750  D0 A3 02 A8 */	stfs f5, 0x2a8(r3)
/* 801FF7F4 001FC754  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801FF7F8 001FC758  C0 A3 02 A0 */	lfs f5, 0x2a0(r3)
/* 801FF7FC 001FC75C  EC A5 48 2A */	fadds f5, f5, f9
/* 801FF800 001FC760  D0 A3 02 A0 */	stfs f5, 0x2a0(r3)
/* 801FF804 001FC764  C0 A3 02 A4 */	lfs f5, 0x2a4(r3)
/* 801FF808 001FC768  EC 65 18 2A */	fadds f3, f5, f3
/* 801FF80C 001FC76C  D0 63 02 A4 */	stfs f3, 0x2a4(r3)
/* 801FF810 001FC770  C0 63 02 A8 */	lfs f3, 0x2a8(r3)
/* 801FF814 001FC774  EC 63 20 2A */	fadds f3, f3, f4
/* 801FF818 001FC778  D0 63 02 A8 */	stfs f3, 0x2a8(r3)
/* 801FF81C 001FC77C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801FF820 001FC780  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801FF824 001FC784  EC 43 10 2A */	fadds f2, f3, f2
/* 801FF828 001FC788  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 801FF82C 001FC78C  C0 43 00 64 */	lfs f2, 0x64(r3)
/* 801FF830 001FC790  EC 22 08 2A */	fadds f1, f2, f1
/* 801FF834 001FC794  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 801FF838 001FC798  C0 23 00 68 */	lfs f1, 0x68(r3)
/* 801FF83C 001FC79C  EC 01 00 2A */	fadds f0, f1, f0
/* 801FF840 001FC7A0  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 801FF844 001FC7A4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801FF848 001FC7A8  C1 63 00 84 */	lfs f11, 0x84(r3)
/* 801FF84C 001FC7AC  C1 03 01 44 */	lfs f8, 0x144(r3)
/* 801FF850 001FC7B0  C0 03 02 08 */	lfs f0, 0x208(r3)
/* 801FF854 001FC7B4  C1 43 00 88 */	lfs f10, 0x88(r3)
/* 801FF858 001FC7B8  EF 88 58 28 */	fsubs f28, f8, f11
/* 801FF85C 001FC7BC  C0 23 02 04 */	lfs f1, 0x204(r3)
/* 801FF860 001FC7C0  C0 63 01 48 */	lfs f3, 0x148(r3)
/* 801FF864 001FC7C4  ED 80 50 28 */	fsubs f12, f0, f10
/* 801FF868 001FC7C8  C0 03 02 0C */	lfs f0, 0x20c(r3)
/* 801FF86C 001FC7CC  EC A1 58 28 */	fsubs f5, f1, f11
/* 801FF870 001FC7D0  C1 23 00 8C */	lfs f9, 0x8c(r3)
/* 801FF874 001FC7D4  ED A3 50 28 */	fsubs f13, f3, f10
/* 801FF878 001FC7D8  C0 43 01 4C */	lfs f2, 0x14c(r3)
/* 801FF87C 001FC7DC  EC 80 48 28 */	fsubs f4, f0, f9
/* 801FF880 001FC7E0  EC C2 48 28 */	fsubs f6, f2, f9
/* 801FF884 001FC7E4  EC 04 07 32 */	fmuls f0, f4, f28
/* 801FF888 001FC7E8  EC 2C 01 B2 */	fmuls f1, f12, f6
/* 801FF88C 001FC7EC  EC C6 01 78 */	fmsubs f6, f6, f5, f0
/* 801FF890 001FC7F0  EC ED 09 38 */	fmsubs f7, f13, f4, f1
/* 801FF894 001FC7F4  D0 C1 00 C8 */	stfs f6, 0xc8(r1)
/* 801FF898 001FC7F8  D0 E1 00 C4 */	stfs f7, 0xc4(r1)
/* 801FF89C 001FC7FC  EC A5 03 72 */	fmuls f5, f5, f13
/* 801FF8A0 001FC800  C0 82 AF 9C */	lfs f4, lbl_805ACCBC@sda21(r2)
/* 801FF8A4 001FC804  EC 6A 18 28 */	fsubs f3, f10, f3
/* 801FF8A8 001FC808  C0 22 B0 20 */	lfs f1, lbl_805ACD40@sda21(r2)
/* 801FF8AC 001FC80C  EC 49 10 28 */	fsubs f2, f9, f2
/* 801FF8B0 001FC810  38 61 00 38 */	addi r3, r1, 0x38
/* 801FF8B4 001FC814  EC 0B 40 28 */	fsubs f0, f11, f8
/* 801FF8B8 001FC818  38 8D 92 D4 */	addi r4, r13, lbl_805A7E94@sda21
/* 801FF8BC 001FC81C  EC BC 2B 38 */	fmsubs f5, f28, f12, f5
/* 801FF8C0 001FC820  ED 24 00 F2 */	fmuls f9, f4, f3
/* 801FF8C4 001FC824  ED 04 00 B2 */	fmuls f8, f4, f2
/* 801FF8C8 001FC828  EC 64 00 32 */	fmuls f3, f4, f0
/* 801FF8CC 001FC82C  D0 A1 00 CC */	stfs f5, 0xcc(r1)
/* 801FF8D0 001FC830  EC 46 48 2A */	fadds f2, f6, f9
/* 801FF8D4 001FC834  EC 05 40 2A */	fadds f0, f5, f8
/* 801FF8D8 001FC838  EC 67 18 2A */	fadds f3, f7, f3
/* 801FF8DC 001FC83C  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 801FF8E0 001FC840  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 801FF8E4 001FC844  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 801FF8E8 001FC848  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 801FF8EC 001FC84C  EC 01 07 7A */	fmadds f0, f1, f29, f0
/* 801FF8F0 001FC850  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801FF8F4 001FC854  4B E7 E4 ED */	bl "Min<f>__5CMathFRCfRCf"
/* 801FF8F8 001FC858  C0 03 00 00 */	lfs f0, 0(r3)
/* 801FF8FC 001FC85C  38 61 00 70 */	addi r3, r1, 0x70
/* 801FF900 001FC860  38 81 00 C4 */	addi r4, r1, 0xc4
/* 801FF904 001FC864  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 801FF908 001FC868  48 11 4F 49 */	bl AsNormalized__9CVector3fCFv
/* 801FF90C 001FC86C  C0 9E 00 80 */	lfs f4, 0x80(r30)
/* 801FF910 001FC870  38 61 00 34 */	addi r3, r1, 0x34
/* 801FF914 001FC874  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 801FF918 001FC878  38 81 00 64 */	addi r4, r1, 0x64
/* 801FF91C 001FC87C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 801FF920 001FC880  38 A1 00 58 */	addi r5, r1, 0x58
/* 801FF924 001FC884  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 801FF928 001FC888  EC 64 00 B2 */	fmuls f3, f4, f2
/* 801FF92C 001FC88C  EC 44 00 32 */	fmuls f2, f4, f0
/* 801FF930 001FC890  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FF934 001FC894  EC 24 00 72 */	fmuls f1, f4, f1
/* 801FF938 001FC898  38 C0 00 7F */	li r6, 0x7f
/* 801FF93C 001FC89C  D0 61 00 CC */	stfs f3, 0xcc(r1)
/* 801FF940 001FC8A0  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 801FF944 001FC8A4  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 801FF948 001FC8A8  80 FE 00 10 */	lwz r7, 0x10(r30)
/* 801FF94C 001FC8AC  C0 27 00 A0 */	lfs f1, 0xa0(r7)
/* 801FF950 001FC8B0  EC 21 10 2A */	fadds f1, f1, f2
/* 801FF954 001FC8B4  D0 27 00 A0 */	stfs f1, 0xa0(r7)
/* 801FF958 001FC8B8  C0 47 00 A4 */	lfs f2, 0xa4(r7)
/* 801FF95C 001FC8BC  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 801FF960 001FC8C0  EC 22 08 2A */	fadds f1, f2, f1
/* 801FF964 001FC8C4  D0 27 00 A4 */	stfs f1, 0xa4(r7)
/* 801FF968 001FC8C8  C0 47 00 A8 */	lfs f2, 0xa8(r7)
/* 801FF96C 001FC8CC  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 801FF970 001FC8D0  EC 22 08 2A */	fadds f1, f2, f1
/* 801FF974 001FC8D4  D0 27 00 A8 */	stfs f1, 0xa8(r7)
/* 801FF978 001FC8D8  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 801FF97C 001FC8DC  80 FE 00 10 */	lwz r7, 0x10(r30)
/* 801FF980 001FC8E0  C0 81 00 CC */	lfs f4, 0xcc(r1)
/* 801FF984 001FC8E4  FC 20 08 50 */	fneg f1, f1
/* 801FF988 001FC8E8  C0 47 01 60 */	lfs f2, 0x160(r7)
/* 801FF98C 001FC8EC  C0 61 00 C8 */	lfs f3, 0xc8(r1)
/* 801FF990 001FC8F0  FC 80 20 50 */	fneg f4, f4
/* 801FF994 001FC8F4  EC 22 08 2A */	fadds f1, f2, f1
/* 801FF998 001FC8F8  FC 40 18 50 */	fneg f2, f3
/* 801FF99C 001FC8FC  D0 27 01 60 */	stfs f1, 0x160(r7)
/* 801FF9A0 001FC900  C0 27 01 64 */	lfs f1, 0x164(r7)
/* 801FF9A4 001FC904  EC 21 10 2A */	fadds f1, f1, f2
/* 801FF9A8 001FC908  D0 27 01 64 */	stfs f1, 0x164(r7)
/* 801FF9AC 001FC90C  C0 27 01 68 */	lfs f1, 0x168(r7)
/* 801FF9B0 001FC910  EC 21 20 2A */	fadds f1, f1, f4
/* 801FF9B4 001FC914  D0 27 01 68 */	stfs f1, 0x168(r7)
/* 801FF9B8 001FC918  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 801FF9BC 001FC91C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 801FF9C0 001FC920  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801FF9C4 001FC924  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 801FF9C8 001FC928  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801FF9CC 001FC92C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801FF9D0 001FC930  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801FF9D4 001FC934  80 FE 00 6C */	lwz r7, 0x6c(r30)
/* 801FF9D8 001FC938  C0 47 00 60 */	lfs f2, 0x60(r7)
/* 801FF9DC 001FC93C  C0 27 00 50 */	lfs f1, 0x50(r7)
/* 801FF9E0 001FC940  C0 07 00 40 */	lfs f0, 0x40(r7)
/* 801FF9E4 001FC944  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801FF9E8 001FC948  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801FF9EC 001FC94C  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 801FF9F0 001FC950  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 801FF9F4 001FC954  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FF9F8 001FC958  48 0E A4 B9 */	bl UpdateEmitter__11CSfxManagerF10CSfxHandleRC9CVector3fRC9CVector3fUc
lbl_801FF9FC:
/* 801FF9FC 001FC95C  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801FFA00 001FC960  3B A1 00 C0 */	addi r29, r1, 0xc0
/* 801FFA04 001FC964  C0 62 AF 9C */	lfs f3, lbl_805ACCBC@sda21(r2)
/* 801FFA08 001FC968  38 61 00 30 */	addi r3, r1, 0x30
/* 801FFA0C 001FC96C  C0 45 02 08 */	lfs f2, 0x208(r5)
/* 801FFA10 001FC970  38 81 00 2C */	addi r4, r1, 0x2c
/* 801FFA14 001FC974  C0 25 02 C8 */	lfs f1, 0x2c8(r5)
/* 801FFA18 001FC978  C0 05 02 0C */	lfs f0, 0x20c(r5)
/* 801FFA1C 001FC97C  ED 43 00 B2 */	fmuls f10, f3, f2
/* 801FFA20 001FC980  C0 A5 02 CC */	lfs f5, 0x2cc(r5)
/* 801FFA24 001FC984  ED 23 00 72 */	fmuls f9, f3, f1
/* 801FFA28 001FC988  C0 25 02 04 */	lfs f1, 0x204(r5)
/* 801FFA2C 001FC98C  EC C3 00 32 */	fmuls f6, f3, f0
/* 801FFA30 001FC990  C0 05 02 C4 */	lfs f0, 0x2c4(r5)
/* 801FFA34 001FC994  EC 83 01 72 */	fmuls f4, f3, f5
/* 801FFA38 001FC998  C1 02 AF 74 */	lfs f8, lbl_805ACC94@sda21(r2)
/* 801FFA3C 001FC99C  C0 E5 00 08 */	lfs f7, 8(r5)
/* 801FFA40 001FC9A0  EC 43 00 72 */	fmuls f2, f3, f1
/* 801FFA44 001FC9A4  EC 23 00 32 */	fmuls f1, f3, f0
/* 801FFA48 001FC9A8  C0 65 00 0C */	lfs f3, 0xc(r5)
/* 801FFA4C 001FC9AC  C0 05 00 04 */	lfs f0, 4(r5)
/* 801FFA50 001FC9B0  ED 2A 48 2A */	fadds f9, f10, f9
/* 801FFA54 001FC9B4  EC E8 01 F2 */	fmuls f7, f8, f7
/* 801FFA58 001FC9B8  EC 86 20 2A */	fadds f4, f6, f4
/* 801FFA5C 001FC9BC  EC 68 00 F2 */	fmuls f3, f8, f3
/* 801FFA60 001FC9C0  EC C9 38 2A */	fadds f6, f9, f7
/* 801FFA64 001FC9C4  EC 22 08 2A */	fadds f1, f2, f1
/* 801FFA68 001FC9C8  EC 08 00 32 */	fmuls f0, f8, f0
/* 801FFA6C 001FC9CC  EC 44 18 2A */	fadds f2, f4, f3
/* 801FFA70 001FC9D0  D0 C1 00 BC */	stfs f6, 0xbc(r1)
/* 801FFA74 001FC9D4  EC 01 00 2A */	fadds f0, f1, f0
/* 801FFA78 001FC9D8  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 801FFA7C 001FC9DC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801FFA80 001FC9E0  C0 05 02 D0 */	lfs f0, 0x2d0(r5)
/* 801FFA84 001FC9E4  EC 05 00 28 */	fsubs f0, f5, f0
/* 801FFA88 001FC9E8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801FFA8C 001FC9EC  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801FFA90 001FC9F0  C0 25 02 0C */	lfs f1, 0x20c(r5)
/* 801FFA94 001FC9F4  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 801FFA98 001FC9F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FFA9C 001FC9FC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801FFAA0 001FCA00  4B E7 E3 41 */	bl "Min<f>__5CMathFRCfRCf"
/* 801FFAA4 001FCA04  C0 03 00 00 */	lfs f0, 0(r3)
/* 801FFAA8 001FCA08  7F A4 EB 78 */	mr r4, r29
/* 801FFAAC 001FCA0C  38 61 00 28 */	addi r3, r1, 0x28
/* 801FFAB0 001FCA10  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 801FFAB4 001FCA14  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801FFAB8 001FCA18  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 801FFABC 001FCA1C  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 801FFAC0 001FCA20  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FFAC4 001FCA24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801FFAC8 001FCA28  4B E7 E3 19 */	bl "Min<f>__5CMathFRCfRCf"
/* 801FFACC 001FCA2C  C0 03 00 00 */	lfs f0, 0(r3)
/* 801FFAD0 001FCA30  FC 20 E8 90 */	fmr f1, f29
/* 801FFAD4 001FCA34  FC 40 F0 90 */	fmr f2, f30
/* 801FFAD8 001FCA38  7F C3 F3 78 */	mr r3, r30
/* 801FFADC 001FCA3C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 801FFAE0 001FCA40  7F E4 FB 78 */	mr r4, r31
/* 801FFAE4 001FCA44  48 00 D8 F1 */	bl Update__8CRagDollFR13CStateManagerff
/* 801FFAE8 001FCA48  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801FFAEC 001FCA4C  3B A1 00 B4 */	addi r29, r1, 0xb4
/* 801FFAF0 001FCA50  C0 62 AF 9C */	lfs f3, lbl_805ACCBC@sda21(r2)
/* 801FFAF4 001FCA54  38 61 00 24 */	addi r3, r1, 0x24
/* 801FFAF8 001FCA58  C0 45 02 08 */	lfs f2, 0x208(r5)
/* 801FFAFC 001FCA5C  38 81 00 20 */	addi r4, r1, 0x20
/* 801FFB00 001FCA60  C0 25 02 C8 */	lfs f1, 0x2c8(r5)
/* 801FFB04 001FCA64  C0 05 02 0C */	lfs f0, 0x20c(r5)
/* 801FFB08 001FCA68  ED 43 00 B2 */	fmuls f10, f3, f2
/* 801FFB0C 001FCA6C  C0 A5 02 CC */	lfs f5, 0x2cc(r5)
/* 801FFB10 001FCA70  ED 23 00 72 */	fmuls f9, f3, f1
/* 801FFB14 001FCA74  C0 25 02 04 */	lfs f1, 0x204(r5)
/* 801FFB18 001FCA78  EC C3 00 32 */	fmuls f6, f3, f0
/* 801FFB1C 001FCA7C  C0 05 02 C4 */	lfs f0, 0x2c4(r5)
/* 801FFB20 001FCA80  EC 83 01 72 */	fmuls f4, f3, f5
/* 801FFB24 001FCA84  C1 02 AF 74 */	lfs f8, lbl_805ACC94@sda21(r2)
/* 801FFB28 001FCA88  C0 E5 00 08 */	lfs f7, 8(r5)
/* 801FFB2C 001FCA8C  EC 43 00 72 */	fmuls f2, f3, f1
/* 801FFB30 001FCA90  EC 23 00 32 */	fmuls f1, f3, f0
/* 801FFB34 001FCA94  C0 65 00 0C */	lfs f3, 0xc(r5)
/* 801FFB38 001FCA98  C0 05 00 04 */	lfs f0, 4(r5)
/* 801FFB3C 001FCA9C  ED 2A 48 2A */	fadds f9, f10, f9
/* 801FFB40 001FCAA0  EC E8 01 F2 */	fmuls f7, f8, f7
/* 801FFB44 001FCAA4  EC 86 20 2A */	fadds f4, f6, f4
/* 801FFB48 001FCAA8  EC 68 00 F2 */	fmuls f3, f8, f3
/* 801FFB4C 001FCAAC  EC C9 38 2A */	fadds f6, f9, f7
/* 801FFB50 001FCAB0  EC 22 08 2A */	fadds f1, f2, f1
/* 801FFB54 001FCAB4  EC 08 00 32 */	fmuls f0, f8, f0
/* 801FFB58 001FCAB8  EC 44 18 2A */	fadds f2, f4, f3
/* 801FFB5C 001FCABC  D0 C1 00 B0 */	stfs f6, 0xb0(r1)
/* 801FFB60 001FCAC0  EC 01 00 2A */	fadds f0, f1, f0
/* 801FFB64 001FCAC4  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 801FFB68 001FCAC8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 801FFB6C 001FCACC  C0 05 02 D0 */	lfs f0, 0x2d0(r5)
/* 801FFB70 001FCAD0  EC 05 00 28 */	fsubs f0, f5, f0
/* 801FFB74 001FCAD4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801FFB78 001FCAD8  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801FFB7C 001FCADC  C0 25 02 0C */	lfs f1, 0x20c(r5)
/* 801FFB80 001FCAE0  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 801FFB84 001FCAE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FFB88 001FCAE8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801FFB8C 001FCAEC  4B E7 E2 55 */	bl "Min<f>__5CMathFRCfRCf"
/* 801FFB90 001FCAF0  C0 03 00 00 */	lfs f0, 0(r3)
/* 801FFB94 001FCAF4  7F A4 EB 78 */	mr r4, r29
/* 801FFB98 001FCAF8  38 61 00 1C */	addi r3, r1, 0x1c
/* 801FFB9C 001FCAFC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801FFBA0 001FCB00  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801FFBA4 001FCB04  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 801FFBA8 001FCB08  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 801FFBAC 001FCB0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FFBB0 001FCB10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801FFBB4 001FCB14  4B E7 E2 2D */	bl "Min<f>__5CMathFRCfRCf"
/* 801FFBB8 001FCB18  C0 02 AF 78 */	lfs f0, lbl_805ACC98@sda21(r2)
/* 801FFBBC 001FCB1C  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 801FFBC0 001FCB20  C0 A3 00 00 */	lfs f5, 0(r3)
/* 801FFBC4 001FCB24  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 801FFBC8 001FCB28  EC C0 E8 24 */	fdivs f6, f0, f29
/* 801FFBCC 001FCB2C  C0 41 00 C0 */	lfs f2, 0xc0(r1)
/* 801FFBD0 001FCB30  C0 81 00 B0 */	lfs f4, 0xb0(r1)
/* 801FFBD4 001FCB34  C0 61 00 BC */	lfs f3, 0xbc(r1)
/* 801FFBD8 001FCB38  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 801FFBDC 001FCB3C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 801FFBE0 001FCB40  EC 64 18 28 */	fsubs f3, f4, f3
/* 801FFBE4 001FCB44  D0 A1 00 B4 */	stfs f5, 0xb4(r1)
/* 801FFBE8 001FCB48  EC 01 00 28 */	fsubs f0, f1, f0
/* 801FFBEC 001FCB4C  EC 45 10 28 */	fsubs f2, f5, f2
/* 801FFBF0 001FCB50  EC 66 00 F2 */	fmuls f3, f6, f3
/* 801FFBF4 001FCB54  EC 06 00 32 */	fmuls f0, f6, f0
/* 801FFBF8 001FCB58  EC 26 00 B2 */	fmuls f1, f6, f2
/* 801FFBFC 001FCB5C  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 801FFC00 001FCB60  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801FFC04 001FCB64  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 801FFC08 001FCB68  83 BE 00 6C */	lwz r29, 0x6c(r30)
/* 801FFC0C 001FCB6C  38 7D 00 34 */	addi r3, r29, 0x34
/* 801FFC10 001FCB70  48 11 2F 31 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801FFC14 001FCB74  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 801FFC18 001FCB78  38 60 00 01 */	li r3, 1
/* 801FFC1C 001FCB7C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801FFC20 001FCB80  38 81 00 AC */	addi r4, r1, 0xac
/* 801FFC24 001FCB84  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 801FFC28 001FCB88  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 801FFC2C 001FCB8C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801FFC30 001FCB90  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 801FFC34 001FCB94  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 801FFC38 001FCB98  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801FFC3C 001FCB9C  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 801FFC40 001FCBA0  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 801FFC44 001FCBA4  4B E5 32 49 */	bl SetTranslation__6CActorFRC9CVector3f
/* 801FFC48 001FCBA8  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 801FFC4C 001FCBAC  38 81 00 A0 */	addi r4, r1, 0xa0
/* 801FFC50 001FCBB0  4B F1 B0 51 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 801FFC54 001FCBB4  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 801FFC58 001FCBB8  88 03 06 A1 */	lbz r0, 0x6a1(r3)
/* 801FFC5C 001FCBBC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801FFC60 001FCBC0  41 82 00 64 */	beq lbl_801FFCC4
/* 801FFC64 001FCBC4  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 801FFC68 001FCBC8  C0 03 02 E4 */	lfs f0, 0x2e4(r3)
/* 801FFC6C 001FCBCC  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 801FFC70 001FCBD0  EC A1 00 28 */	fsubs f5, f1, f0
/* 801FFC74 001FCBD4  C0 23 02 E0 */	lfs f1, 0x2e0(r3)
/* 801FFC78 001FCBD8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 801FFC7C 001FCBDC  EC 62 08 28 */	fsubs f3, f2, f1
/* 801FFC80 001FCBE0  C0 81 00 B4 */	lfs f4, 0xb4(r1)
/* 801FFC84 001FCBE4  C0 43 02 E8 */	lfs f2, 0x2e8(r3)
/* 801FFC88 001FCBE8  EC 05 00 32 */	fmuls f0, f5, f0
/* 801FFC8C 001FCBEC  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 801FFC90 001FCBF0  EC 84 10 28 */	fsubs f4, f4, f2
/* 801FFC94 001FCBF4  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 801FFC98 001FCBF8  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 801FFC9C 001FCBFC  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FFCA0 001FCC00  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801FFCA4 001FCC04  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 801FFCA8 001FCC08  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 801FFCAC 001FCC0C  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 801FFCB0 001FCC10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FFCB4 001FCC14  40 81 00 10 */	ble lbl_801FFCC4
/* 801FFCB8 001FCC18  C0 02 AF 74 */	lfs f0, lbl_805ACC94@sda21(r2)
/* 801FFCBC 001FCC1C  EC 00 07 72 */	fmuls f0, f0, f29
/* 801FFCC0 001FCC20  D0 03 08 8C */	stfs f0, 0x88c(r3)
lbl_801FFCC4:
/* 801FFCC4 001FCC24  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 801FFCC8 001FCC28  C0 02 AF 64 */	lfs f0, lbl_805ACC84@sda21(r2)
/* 801FFCCC 001FCC2C  EC 21 E8 28 */	fsubs f1, f1, f29
/* 801FFCD0 001FCC30  D0 3E 00 8C */	stfs f1, 0x8c(r30)
/* 801FFCD4 001FCC34  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 801FFCD8 001FCC38  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 801FFCDC 001FCC3C  40 81 01 38 */	ble lbl_801FFE14
/* 801FFCE0 001FCC40  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 801FFCE4 001FCC44  C0 02 AF 60 */	lfs f0, lbl_805ACC80@sda21(r2)
/* 801FFCE8 001FCC48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FFCEC 001FCC4C  40 80 01 28 */	bge lbl_801FFE14
/* 801FFCF0 001FCC50  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 801FFCF4 001FCC54  88 1E 00 B0 */	lbz r0, 0xb0(r30)
/* 801FFCF8 001FCC58  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801FFCFC 001FCC5C  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 801FFD00 001FCC60  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801FFD04 001FCC64  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 801FFD08 001FCC68  EC 81 00 28 */	fsubs f4, f1, f0
/* 801FFD0C 001FCC6C  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 801FFD10 001FCC70  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801FFD14 001FCC74  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 801FFD18 001FCC78  EC 63 10 28 */	fsubs f3, f3, f2
/* 801FFD1C 001FCC7C  EC 41 00 28 */	fsubs f2, f1, f0
/* 801FFD20 001FCC80  40 82 00 1C */	bne lbl_801FFD3C
/* 801FFD24 001FCC84  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801FFD28 001FCC88  C0 02 AF B0 */	lfs f0, lbl_805ACCD0@sda21(r2)
/* 801FFD2C 001FCC8C  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 801FFD30 001FCC90  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801FFD34 001FCC94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FFD38 001FCC98  40 81 00 DC */	ble lbl_801FFE14
lbl_801FFD3C:
/* 801FFD3C 001FCC9C  C0 02 AF D0 */	lfs f0, lbl_805ACCF0@sda21(r2)
/* 801FFD40 001FCCA0  38 61 00 18 */	addi r3, r1, 0x18
/* 801FFD44 001FCCA4  38 8D 92 D8 */	addi r4, r13, lbl_805A7E98@sda21
/* 801FFD48 001FCCA8  EC 00 01 72 */	fmuls f0, f0, f5
/* 801FFD4C 001FCCAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801FFD50 001FCCB0  4B E7 E0 91 */	bl "Min<f>__5CMathFRCfRCf"
/* 801FFD54 001FCCB4  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 801FFD58 001FCCB8  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801FFD5C 001FCCBC  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801FFD60 001FCCC0  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801FFD64 001FCCC4  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801FFD68 001FCCC8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801FFD6C 001FCCCC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 801FFD70 001FCCD0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 801FFD74 001FCCD4  F3 E1 A0 10 */	psq_st f31, 16(r1), 1, qr2
/* 801FFD78 001FCCD8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801FFD7C 001FCCDC  80 02 C6 00 */	lwz r0, lbl_805AE320@sda21(r2)
/* 801FFD80 001FCCE0  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 801FFD84 001FCCE4  88 E1 00 10 */	lbz r7, 0x10(r1)
/* 801FFD88 001FCCE8  38 61 00 14 */	addi r3, r1, 0x14
/* 801FFD8C 001FCCEC  90 01 00 08 */	stw r0, 8(r1)
/* 801FFD90 001FCCF0  38 A1 00 40 */	addi r5, r1, 0x40
/* 801FFD94 001FCCF4  A9 42 C5 FA */	lha r10, lbl_805AE31A@sda21(r2)
/* 801FFD98 001FCCF8  39 00 00 01 */	li r8, 1
/* 801FFD9C 001FCCFC  A0 9E 00 88 */	lhz r4, 0x88(r30)
/* 801FFDA0 001FCD00  39 20 00 00 */	li r9, 0
/* 801FFDA4 001FCD04  48 0E A4 15 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fUcbbsi
/* 801FFDA8 001FCD08  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801FFDAC 001FCD0C  48 11 27 31 */	bl Float__9CRandom16Fv
/* 801FFDB0 001FCD10  C0 02 B0 24 */	lfs f0, lbl_805ACD44@sda21(r2)
/* 801FFDB4 001FCD14  38 60 00 00 */	li r3, 0
/* 801FFDB8 001FCD18  EC 00 00 7A */	fmadds f0, f0, f1, f0
/* 801FFDBC 001FCD1C  D0 1E 00 8C */	stfs f0, 0x8c(r30)
/* 801FFDC0 001FCD20  88 1E 00 B0 */	lbz r0, 0xb0(r30)
/* 801FFDC4 001FCD24  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801FFDC8 001FCD28  98 1E 00 B0 */	stb r0, 0xb0(r30)
/* 801FFDCC 001FCD2C  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 801FFDD0 001FCD30  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801FFDD4 001FCD34  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801FFDD8 001FCD38  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801FFDDC 001FCD3C  D0 1E 00 90 */	stfs f0, 0x90(r30)
/* 801FFDE0 001FCD40  D0 3E 00 94 */	stfs f1, 0x94(r30)
/* 801FFDE4 001FCD44  D0 5E 00 98 */	stfs f2, 0x98(r30)
/* 801FFDE8 001FCD48  48 00 00 2C */	b lbl_801FFE14
lbl_801FFDEC:
/* 801FFDEC 001FCD4C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801FFDF0 001FCD50  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 801FFDF4 001FCD54  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801FFDF8 001FCD58  D0 04 01 50 */	stfs f0, 0x150(r4)
/* 801FFDFC 001FCD5C  C0 03 00 04 */	lfs f0, 4(r3)
/* 801FFE00 001FCD60  D0 04 01 54 */	stfs f0, 0x154(r4)
/* 801FFE04 001FCD64  C0 03 00 08 */	lfs f0, 8(r3)
/* 801FFE08 001FCD68  D0 04 01 58 */	stfs f0, 0x158(r4)
/* 801FFE0C 001FCD6C  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 801FFE10 001FCD70  4B F1 B5 69 */	bl Stop__13CPhysicsActorFv
lbl_801FFE14:
/* 801FFE14 001FCD74  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 801FFE18 001FCD78  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 801FFE1C 001FCD7C  E3 C1 01 18 */	psq_l f30, 280(r1), 0, qr0
/* 801FFE20 001FCD80  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 801FFE24 001FCD84  E3 A1 01 08 */	psq_l f29, 264(r1), 0, qr0
/* 801FFE28 001FCD88  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 801FFE2C 001FCD8C  E3 81 00 F8 */	psq_l f28, 248(r1), 0, qr0
/* 801FFE30 001FCD90  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 801FFE34 001FCD94  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 801FFE38 001FCD98  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 801FFE3C 001FCD9C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 801FFE40 001FCDA0  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 801FFE44 001FCDA4  7C 08 03 A6 */	mtlr r0
/* 801FFE48 001FCDA8  38 21 01 30 */	addi r1, r1, 0x130
/* 801FFE4C 001FCDAC  4E 80 00 20 */	blr

.global sub_801ffe50
sub_801ffe50:
/* 801FFE50 001FCDB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801FFE54 001FCDB4  7C 08 02 A6 */	mflr r0
/* 801FFE58 001FCDB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FFE5C 001FCDBC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801FFE60 001FCDC0  7C DF 33 78 */	mr r31, r6
/* 801FFE64 001FCDC4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801FFE68 001FCDC8  7C BE 2B 78 */	mr r30, r5
/* 801FFE6C 001FCDCC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801FFE70 001FCDD0  7C 9D 23 78 */	mr r29, r4
/* 801FFE74 001FCDD4  93 81 00 20 */	stw r28, 0x20(r1)
/* 801FFE78 001FCDD8  7C 7C 1B 78 */	mr r28, r3
/* 801FFE7C 001FCDDC  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 801FFE80 001FCDE0  88 04 06 A1 */	lbz r0, 0x6a1(r4)
/* 801FFE84 001FCDE4  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801FFE88 001FCDE8  41 82 00 4C */	beq lbl_801FFED4
/* 801FFE8C 001FCDEC  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801FFE90 001FCDF0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801FFE94 001FCDF4  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801FFE98 001FCDF8  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 801FFE9C 001FCDFC  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801FFEA0 001FCE00  38 61 00 08 */	addi r3, r1, 8
/* 801FFEA4 001FCE04  A9 22 C5 FA */	lha r9, lbl_805AE31A@sda21(r2)
/* 801FFEA8 001FCE08  38 A1 00 0C */	addi r5, r1, 0xc
/* 801FFEAC 001FCE0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801FFEB0 001FCE10  38 E0 00 01 */	li r7, 1
/* 801FFEB4 001FCE14  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 801FFEB8 001FCE18  39 00 00 01 */	li r8, 1
/* 801FFEBC 001FCE1C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801FFEC0 001FCE20  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801FFEC4 001FCE24  A0 9C 00 9C */	lhz r4, 0x9c(r28)
/* 801FFEC8 001FCE28  48 0E A3 E9 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 801FFECC 001FCE2C  80 01 00 08 */	lwz r0, 8(r1)
/* 801FFED0 001FCE30  90 1C 00 A0 */	stw r0, 0xa0(r28)
lbl_801FFED4:
/* 801FFED4 001FCE34  7F 83 E3 78 */	mr r3, r28
/* 801FFED8 001FCE38  7F A4 EB 78 */	mr r4, r29
/* 801FFEDC 001FCE3C  7F C5 F3 78 */	mr r5, r30
/* 801FFEE0 001FCE40  7F E6 FB 78 */	mr r6, r31
/* 801FFEE4 001FCE44  48 00 E7 F1 */	bl Prime__8CRagDollFR13CStateManagerRC12CTransform4fR10CModelData
/* 801FFEE8 001FCE48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801FFEEC 001FCE4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801FFEF0 001FCE50  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801FFEF4 001FCE54  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801FFEF8 001FCE58  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801FFEFC 001FCE5C  7C 08 03 A6 */	mtlr r0
/* 801FFF00 001FCE60  38 21 00 30 */	addi r1, r1, 0x30
/* 801FFF04 001FCE64  4E 80 00 20 */	blr

.global __dt__20CFlyingPirateRagDollFv
__dt__20CFlyingPirateRagDollFv:
/* 801FFF08 001FCE68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FFF0C 001FCE6C  7C 08 02 A6 */	mflr r0
/* 801FFF10 001FCE70  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FFF14 001FCE74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FFF18 001FCE78  7C 9F 23 78 */	mr r31, r4
/* 801FFF1C 001FCE7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801FFF20 001FCE80  7C 7E 1B 79 */	or. r30, r3, r3
/* 801FFF24 001FCE84  41 82 00 3C */	beq lbl_801FFF60
/* 801FFF28 001FCE88  3C 80 80 3E */	lis r4, __vt__20CFlyingPirateRagDoll@ha
/* 801FFF2C 001FCE8C  38 61 00 08 */	addi r3, r1, 8
/* 801FFF30 001FCE90  38 04 6B 98 */	addi r0, r4, __vt__20CFlyingPirateRagDoll@l
/* 801FFF34 001FCE94  90 1E 00 00 */	stw r0, 0(r30)
/* 801FFF38 001FCE98  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 801FFF3C 001FCE9C  90 01 00 08 */	stw r0, 8(r1)
/* 801FFF40 001FCEA0  48 0E 9F 45 */	bl RemoveEmitter__11CSfxManagerF10CSfxHandle
/* 801FFF44 001FCEA4  7F C3 F3 78 */	mr r3, r30
/* 801FFF48 001FCEA8  38 80 00 00 */	li r4, 0
/* 801FFF4C 001FCEAC  4B F2 08 D1 */	bl __dt__8CRagDollFv
/* 801FFF50 001FCEB0  7F E0 07 35 */	extsh. r0, r31
/* 801FFF54 001FCEB4  40 81 00 0C */	ble lbl_801FFF60
/* 801FFF58 001FCEB8  7F C3 F3 78 */	mr r3, r30
/* 801FFF5C 001FCEBC  48 11 59 D5 */	bl Free__7CMemoryFPCv
lbl_801FFF60:
/* 801FFF60 001FCEC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FFF64 001FCEC4  7F C3 F3 78 */	mr r3, r30
/* 801FFF68 001FCEC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FFF6C 001FCECC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801FFF70 001FCED0  7C 08 03 A6 */	mtlr r0
/* 801FFF74 001FCED4  38 21 00 20 */	addi r1, r1, 0x20
/* 801FFF78 001FCED8  4E 80 00 20 */	blr

.global __ct__20CFlyingPirateRagDollFR13CStateManagerP13CFlyingPiratefUsUs
__ct__20CFlyingPirateRagDollFR13CStateManagerP13CFlyingPiratefUsUs:
/* 801FFF7C 001FCEDC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801FFF80 001FCEE0  7C 08 02 A6 */	mflr r0
/* 801FFF84 001FCEE4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801FFF88 001FCEE8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801FFF8C 001FCEEC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 801FFF90 001FCEF0  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801FFF94 001FCEF4  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 801FFF98 001FCEF8  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 801FFF9C 001FCEFC  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 801FFFA0 001FCF00  BF 21 00 74 */	stmw r25, 0x74(r1)
/* 801FFFA4 001FCF04  7C BF 2B 78 */	mr r31, r5
/* 801FFFA8 001FCF08  7C 7D 1B 78 */	mr r29, r3
/* 801FFFAC 001FCF0C  7F E3 FB 78 */	mr r3, r31
/* 801FFFB0 001FCF10  7C 9E 23 78 */	mr r30, r4
/* 801FFFB4 001FCF14  81 9F 00 00 */	lwz r12, 0(r31)
/* 801FFFB8 001FCF18  7C DA 33 78 */	mr r26, r6
/* 801FFFBC 001FCF1C  7C F9 3B 78 */	mr r25, r7
/* 801FFFC0 001FCF20  C3 A2 AF 5C */	lfs f29, lbl_805ACC7C@sda21(r2)
/* 801FFFC4 001FCF24  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 801FFFC8 001FCF28  7D 89 03 A6 */	mtctr r12
/* 801FFFCC 001FCF2C  4E 80 04 21 */	bctrl
/* 801FFFD0 001FCF30  FC 20 08 50 */	fneg f1, f1
/* 801FFFD4 001FCF34  C0 62 AF EC */	lfs f3, lbl_805ACD0C@sda21(r2)
/* 801FFFD8 001FCF38  FC 40 E8 50 */	fneg f2, f29
/* 801FFFDC 001FCF3C  7F A3 EB 78 */	mr r3, r29
/* 801FFFE0 001FCF40  38 80 00 00 */	li r4, 0
/* 801FFFE4 001FCF44  48 00 E8 ED */	bl __ct__8CRagDollFfffUi
/* 801FFFE8 001FCF48  3C 60 80 3E */	lis r3, __vt__20CFlyingPirateRagDoll@ha
/* 801FFFEC 001FCF4C  3C 80 80 5A */	lis r4, sUpVector__9CVector3f@ha
/* 801FFFF0 001FCF50  38 03 6B 98 */	addi r0, r3, __vt__20CFlyingPirateRagDoll@l
/* 801FFFF4 001FCF54  C0 42 AF 60 */	lfs f2, lbl_805ACC80@sda21(r2)
/* 801FFFF8 001FCF58  90 1D 00 00 */	stw r0, 0(r29)
/* 801FFFFC 001FCF5C  39 24 66 F4 */	addi r9, r4, sUpVector__9CVector3f@l
/* 80200000 001FCF60  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80200004 001FCF64  C0 02 AF E4 */	lfs f0, lbl_805ACD04@sda21(r2)
/* 80200008 001FCF68  93 FD 00 6C */	stw r31, 0x6c(r29)
/* 8020000C 001FCF6C  39 03 66 A0 */	addi r8, r3, sZeroVector__9CVector3f@l
/* 80200010 001FCF70  38 00 00 00 */	li r0, 0
/* 80200014 001FCF74  38 60 00 01 */	li r3, 1
/* 80200018 001FCF78  D0 5D 00 70 */	stfs f2, 0x70(r29)
/* 8020001C 001FCF7C  7F C7 F3 78 */	mr r7, r30
/* 80200020 001FCF80  38 80 00 13 */	li r4, 0x13
/* 80200024 001FCF84  38 A0 00 30 */	li r5, 0x30
/* 80200028 001FCF88  C0 29 00 00 */	lfs f1, 0(r9)
/* 8020002C 001FCF8C  38 C0 00 25 */	li r6, 0x25
/* 80200030 001FCF90  D0 3D 00 74 */	stfs f1, 0x74(r29)
/* 80200034 001FCF94  C0 29 00 04 */	lfs f1, 4(r9)
/* 80200038 001FCF98  D0 3D 00 78 */	stfs f1, 0x78(r29)
/* 8020003C 001FCF9C  C0 29 00 08 */	lfs f1, 8(r9)
/* 80200040 001FCFA0  D0 3D 00 7C */	stfs f1, 0x7c(r29)
/* 80200044 001FCFA4  D0 5D 00 80 */	stfs f2, 0x80(r29)
/* 80200048 001FCFA8  D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 8020004C 001FCFAC  B3 5D 00 88 */	sth r26, 0x88(r29)
/* 80200050 001FCFB0  D0 5D 00 8C */	stfs f2, 0x8c(r29)
/* 80200054 001FCFB4  C0 08 00 00 */	lfs f0, 0(r8)
/* 80200058 001FCFB8  D0 1D 00 90 */	stfs f0, 0x90(r29)
/* 8020005C 001FCFBC  C0 08 00 04 */	lfs f0, 4(r8)
/* 80200060 001FCFC0  D0 1D 00 94 */	stfs f0, 0x94(r29)
/* 80200064 001FCFC4  C0 08 00 08 */	lfs f0, 8(r8)
/* 80200068 001FCFC8  D0 1D 00 98 */	stfs f0, 0x98(r29)
/* 8020006C 001FCFCC  B3 3D 00 9C */	sth r25, 0x9c(r29)
/* 80200070 001FCFD0  90 1D 00 A0 */	stw r0, 0xa0(r29)
/* 80200074 001FCFD4  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 80200078 001FCFD8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8020007C 001FCFDC  C0 9F 02 E4 */	lfs f4, 0x2e4(r31)
/* 80200080 001FCFE0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80200084 001FCFE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80200088 001FCFE8  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 8020008C 001FCFEC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80200090 001FCFF0  EC 64 18 28 */	fsubs f3, f4, f3
/* 80200094 001FCFF4  D0 1D 00 A4 */	stfs f0, 0xa4(r29)
/* 80200098 001FCFF8  EC 02 08 28 */	fsubs f0, f2, f1
/* 8020009C 001FCFFC  D0 7D 00 A8 */	stfs f3, 0xa8(r29)
/* 802000A0 001FD000  D0 1D 00 AC */	stfs f0, 0xac(r29)
/* 802000A4 001FD004  88 1D 00 B0 */	lbz r0, 0xb0(r29)
/* 802000A8 001FD008  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802000AC 001FD00C  98 1D 00 B0 */	stb r0, 0xb0(r29)
/* 802000B0 001FD010  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 802000B4 001FD014  4B E5 3D 39 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 802000B8 001FD018  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 802000BC 001FD01C  7F C4 F3 78 */	mr r4, r30
/* 802000C0 001FD020  81 83 00 00 */	lwz r12, 0(r3)
/* 802000C4 001FD024  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802000C8 001FD028  7D 89 03 A6 */	mtctr r12
/* 802000CC 001FD02C  4E 80 04 21 */	bctrl
/* 802000D0 001FD030  C0 02 B0 28 */	lfs f0, lbl_805ACD48@sda21(r2)
/* 802000D4 001FD034  38 80 00 0F */	li r4, 0xf
/* 802000D8 001FD038  D0 03 00 00 */	stfs f0, 0(r3)
/* 802000DC 001FD03C  38 7D 00 04 */	addi r3, r29, 4
/* 802000E0 001FD040  4B F2 C9 E5 */	bl "reserve__Q24rstl64vector<Q28CRagDoll16CRagDollParticle,Q24rstl17rmemory_allocator>Fi"
/* 802000E4 001FD044  38 7D 00 14 */	addi r3, r29, 0x14
/* 802000E8 001FD048  38 80 00 2D */	li r4, 0x2d
/* 802000EC 001FD04C  4B F2 CB 61 */	bl "reserve__Q24rstl72vector<Q28CRagDoll24CRagDollLengthConstraint,Q24rstl17rmemory_allocator>Fi"
/* 802000F0 001FD050  38 7D 00 24 */	addi r3, r29, 0x24
/* 802000F4 001FD054  38 80 00 04 */	li r4, 4
/* 802000F8 001FD058  4B F2 CC 5D */	bl "reserve__Q24rstl71vector<Q28CRagDoll23CRagDollJointConstraint,Q24rstl17rmemory_allocator>Fi"
/* 802000FC 001FD05C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80200100 001FD060  3B 9F 00 34 */	addi r28, r31, 0x34
/* 80200104 001FD064  C0 43 00 00 */	lfs f2, 0(r3)
/* 80200108 001FD068  C0 23 00 04 */	lfs f1, 4(r3)
/* 8020010C 001FD06C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80200110 001FD070  83 63 00 10 */	lwz r27, 0x10(r3)
/* 80200114 001FD074  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80200118 001FD078  7F 63 DB 78 */	mr r3, r27
/* 8020011C 001FD07C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80200120 001FD080  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80200124 001FD084  4B E2 C9 3D */	bl BuildPose__9CAnimDataFv
/* 80200128 001FD088  7F E4 FB 78 */	mr r4, r31
/* 8020012C 001FD08C  38 61 00 58 */	addi r3, r1, 0x58
/* 80200130 001FD090  4B F1 A7 FD */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80200134 001FD094  38 61 00 28 */	addi r3, r1, 0x28
/* 80200138 001FD098  38 81 00 58 */	addi r4, r1, 0x58
/* 8020013C 001FD09C  48 13 74 D1 */	bl GetCenterPoint__6CAABoxCFv
/* 80200140 001FD0A0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80200144 001FD0A4  3C 80 80 47 */	lis r4, lbl_8046CA4C@ha
/* 80200148 001FD0A8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8020014C 001FD0AC  3C 60 80 3D */	lis r3, lbl_803D2440@ha
/* 80200150 001FD0B0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80200154 001FD0B4  3B E4 CA 4C */	addi r31, r4, lbl_8046CA4C@l
/* 80200158 001FD0B8  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8020015C 001FD0BC  3B 43 24 40 */	addi r26, r3, lbl_803D2440@l
/* 80200160 001FD0C0  C3 A1 00 3C */	lfs f29, 0x3c(r1)
/* 80200164 001FD0C4  3B 20 00 00 */	li r25, 0
/* 80200168 001FD0C8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8020016C 001FD0CC  C3 C1 00 38 */	lfs f30, 0x38(r1)
/* 80200170 001FD0D0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80200174 001FD0D4  C3 E1 00 34 */	lfs f31, 0x34(r1)
lbl_80200178:
/* 80200178 001FD0D8  7F 64 DB 78 */	mr r4, r27
/* 8020017C 001FD0DC  7F E5 FB 78 */	mr r5, r31
/* 80200180 001FD0E0  38 61 00 08 */	addi r3, r1, 8
/* 80200184 001FD0E4  4B E2 E6 B5 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200188 001FD0E8  88 01 00 08 */	lbz r0, 8(r1)
/* 8020018C 001FD0EC  38 7B 02 24 */	addi r3, r27, 0x224
/* 80200190 001FD0F0  38 81 00 0C */	addi r4, r1, 0xc
/* 80200194 001FD0F4  98 01 00 0C */	stb r0, 0xc(r1)
/* 80200198 001FD0F8  48 16 8D C1 */	bl GetOffset__17CPoseAsTransformsCFRC6CSegId
/* 8020019C 001FD0FC  C0 43 00 08 */	lfs f2, 8(r3)
/* 802001A0 001FD100  7F 84 E3 78 */	mr r4, r28
/* 802001A4 001FD104  C0 23 00 04 */	lfs f1, 4(r3)
/* 802001A8 001FD108  38 A1 00 10 */	addi r5, r1, 0x10
/* 802001AC 001FD10C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802001B0 001FD110  EC 5D 00 B2 */	fmuls f2, f29, f2
/* 802001B4 001FD114  EC 3E 00 72 */	fmuls f1, f30, f1
/* 802001B8 001FD118  38 61 00 1C */	addi r3, r1, 0x1c
/* 802001BC 001FD11C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802001C0 001FD120  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802001C4 001FD124  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802001C8 001FD128  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802001CC 001FD12C  48 11 29 1D */	bl __ml__12CTransform4fCFRC9CVector3f
/* 802001D0 001FD130  C0 1A 00 00 */	lfs f0, 0(r26)
/* 802001D4 001FD134  7F A3 EB 78 */	mr r3, r29
/* 802001D8 001FD138  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 802001DC 001FD13C  38 81 00 0C */	addi r4, r1, 0xc
/* 802001E0 001FD140  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 802001E4 001FD144  EC 20 07 72 */	fmuls f1, f0, f29
/* 802001E8 001FD148  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802001EC 001FD14C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 802001F0 001FD150  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 802001F4 001FD154  38 C1 00 40 */	addi r6, r1, 0x40
/* 802001F8 001FD158  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 802001FC 001FD15C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80200200 001FD160  48 00 CC 1D */	bl AddParticle__8CRagDollFRC6CSegIdRC9CVector3fRC9CVector3ff
/* 80200204 001FD164  3B 39 00 01 */	addi r25, r25, 1
/* 80200208 001FD168  3B 5A 00 04 */	addi r26, r26, 4
/* 8020020C 001FD16C  2C 19 00 0F */	cmpwi r25, 0xf
/* 80200210 001FD170  3B FF 00 10 */	addi r31, r31, 0x10
/* 80200214 001FD174  41 80 FF 64 */	blt lbl_80200178
/* 80200218 001FD178  7F A3 EB 78 */	mr r3, r29
/* 8020021C 001FD17C  7F C4 F3 78 */	mr r4, r30
/* 80200220 001FD180  48 00 E6 05 */	bl SatisfyWorldConstraintsOnConstruction__8CRagDollFR13CStateManager
/* 80200224 001FD184  7F A3 EB 78 */	mr r3, r29
/* 80200228 001FD188  38 80 00 00 */	li r4, 0
/* 8020022C 001FD18C  38 A0 00 01 */	li r5, 1
/* 80200230 001FD190  48 00 CA E5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200234 001FD194  7F A3 EB 78 */	mr r3, r29
/* 80200238 001FD198  38 80 00 00 */	li r4, 0
/* 8020023C 001FD19C  38 A0 00 02 */	li r5, 2
/* 80200240 001FD1A0  48 00 CA D5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200244 001FD1A4  7F A3 EB 78 */	mr r3, r29
/* 80200248 001FD1A8  38 80 00 00 */	li r4, 0
/* 8020024C 001FD1AC  38 A0 00 08 */	li r5, 8
/* 80200250 001FD1B0  48 00 CA C5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200254 001FD1B4  7F A3 EB 78 */	mr r3, r29
/* 80200258 001FD1B8  38 80 00 00 */	li r4, 0
/* 8020025C 001FD1BC  38 A0 00 0B */	li r5, 0xb
/* 80200260 001FD1C0  48 00 CA B5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200264 001FD1C4  7F A3 EB 78 */	mr r3, r29
/* 80200268 001FD1C8  38 80 00 00 */	li r4, 0
/* 8020026C 001FD1CC  38 A0 00 05 */	li r5, 5
/* 80200270 001FD1D0  48 00 CA A5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200274 001FD1D4  7F A3 EB 78 */	mr r3, r29
/* 80200278 001FD1D8  38 80 00 02 */	li r4, 2
/* 8020027C 001FD1DC  38 A0 00 03 */	li r5, 3
/* 80200280 001FD1E0  48 00 CA 95 */	bl AddLengthConstraint__8CRagDollFii
/* 80200284 001FD1E4  7F A3 EB 78 */	mr r3, r29
/* 80200288 001FD1E8  38 80 00 03 */	li r4, 3
/* 8020028C 001FD1EC  38 A0 00 04 */	li r5, 4
/* 80200290 001FD1F0  48 00 CA 85 */	bl AddLengthConstraint__8CRagDollFii
/* 80200294 001FD1F4  7F A3 EB 78 */	mr r3, r29
/* 80200298 001FD1F8  38 80 00 05 */	li r4, 5
/* 8020029C 001FD1FC  38 A0 00 06 */	li r5, 6
/* 802002A0 001FD200  48 00 CA 75 */	bl AddLengthConstraint__8CRagDollFii
/* 802002A4 001FD204  7F A3 EB 78 */	mr r3, r29
/* 802002A8 001FD208  38 80 00 06 */	li r4, 6
/* 802002AC 001FD20C  38 A0 00 07 */	li r5, 7
/* 802002B0 001FD210  48 00 CA 65 */	bl AddLengthConstraint__8CRagDollFii
/* 802002B4 001FD214  7F A3 EB 78 */	mr r3, r29
/* 802002B8 001FD218  38 80 00 02 */	li r4, 2
/* 802002BC 001FD21C  38 A0 00 05 */	li r5, 5
/* 802002C0 001FD220  48 00 CA 55 */	bl AddLengthConstraint__8CRagDollFii
/* 802002C4 001FD224  7F A3 EB 78 */	mr r3, r29
/* 802002C8 001FD228  38 80 00 02 */	li r4, 2
/* 802002CC 001FD22C  38 A0 00 08 */	li r5, 8
/* 802002D0 001FD230  48 00 CA 45 */	bl AddLengthConstraint__8CRagDollFii
/* 802002D4 001FD234  7F A3 EB 78 */	mr r3, r29
/* 802002D8 001FD238  38 80 00 02 */	li r4, 2
/* 802002DC 001FD23C  38 A0 00 0B */	li r5, 0xb
/* 802002E0 001FD240  48 00 CA 35 */	bl AddLengthConstraint__8CRagDollFii
/* 802002E4 001FD244  7F A3 EB 78 */	mr r3, r29
/* 802002E8 001FD248  38 80 00 05 */	li r4, 5
/* 802002EC 001FD24C  38 A0 00 08 */	li r5, 8
/* 802002F0 001FD250  48 00 CA 25 */	bl AddLengthConstraint__8CRagDollFii
/* 802002F4 001FD254  7F A3 EB 78 */	mr r3, r29
/* 802002F8 001FD258  38 80 00 05 */	li r4, 5
/* 802002FC 001FD25C  38 A0 00 0B */	li r5, 0xb
/* 80200300 001FD260  48 00 CA 15 */	bl AddLengthConstraint__8CRagDollFii
/* 80200304 001FD264  7F A3 EB 78 */	mr r3, r29
/* 80200308 001FD268  38 80 00 08 */	li r4, 8
/* 8020030C 001FD26C  38 A0 00 0B */	li r5, 0xb
/* 80200310 001FD270  48 00 CA 05 */	bl AddLengthConstraint__8CRagDollFii
/* 80200314 001FD274  7F A3 EB 78 */	mr r3, r29
/* 80200318 001FD278  38 80 00 08 */	li r4, 8
/* 8020031C 001FD27C  38 A0 00 09 */	li r5, 9
/* 80200320 001FD280  48 00 C9 F5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200324 001FD284  7F A3 EB 78 */	mr r3, r29
/* 80200328 001FD288  38 80 00 09 */	li r4, 9
/* 8020032C 001FD28C  38 A0 00 0A */	li r5, 0xa
/* 80200330 001FD290  48 00 C9 E5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200334 001FD294  7F A3 EB 78 */	mr r3, r29
/* 80200338 001FD298  38 80 00 0B */	li r4, 0xb
/* 8020033C 001FD29C  38 A0 00 0C */	li r5, 0xc
/* 80200340 001FD2A0  48 00 C9 D5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200344 001FD2A4  7F A3 EB 78 */	mr r3, r29
/* 80200348 001FD2A8  38 80 00 0C */	li r4, 0xc
/* 8020034C 001FD2AC  38 A0 00 0D */	li r5, 0xd
/* 80200350 001FD2B0  48 00 C9 C5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200354 001FD2B4  7F A3 EB 78 */	mr r3, r29
/* 80200358 001FD2B8  38 80 00 0E */	li r4, 0xe
/* 8020035C 001FD2BC  38 A0 00 00 */	li r5, 0
/* 80200360 001FD2C0  48 00 C9 B5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200364 001FD2C4  7F A3 EB 78 */	mr r3, r29
/* 80200368 001FD2C8  38 80 00 0E */	li r4, 0xe
/* 8020036C 001FD2CC  38 A0 00 02 */	li r5, 2
/* 80200370 001FD2D0  48 00 C9 A5 */	bl AddLengthConstraint__8CRagDollFii
/* 80200374 001FD2D4  7F A3 EB 78 */	mr r3, r29
/* 80200378 001FD2D8  38 80 00 0E */	li r4, 0xe
/* 8020037C 001FD2DC  38 A0 00 05 */	li r5, 5
/* 80200380 001FD2E0  48 00 C9 95 */	bl AddLengthConstraint__8CRagDollFii
/* 80200384 001FD2E4  7F A3 EB 78 */	mr r3, r29
/* 80200388 001FD2E8  38 80 00 0E */	li r4, 0xe
/* 8020038C 001FD2EC  38 A0 00 08 */	li r5, 8
/* 80200390 001FD2F0  48 00 C9 85 */	bl AddLengthConstraint__8CRagDollFii
/* 80200394 001FD2F4  7F A3 EB 78 */	mr r3, r29
/* 80200398 001FD2F8  38 80 00 0E */	li r4, 0xe
/* 8020039C 001FD2FC  38 A0 00 0B */	li r5, 0xb
/* 802003A0 001FD300  48 00 C9 75 */	bl AddLengthConstraint__8CRagDollFii
/* 802003A4 001FD304  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 802003A8 001FD308  7F A3 EB 78 */	mr r3, r29
/* 802003AC 001FD30C  38 80 00 01 */	li r4, 1
/* 802003B0 001FD310  38 A0 00 08 */	li r5, 8
/* 802003B4 001FD314  C0 26 00 28 */	lfs f1, 0x28(r6)
/* 802003B8 001FD318  48 00 C8 A9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 802003BC 001FD31C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 802003C0 001FD320  7F A3 EB 78 */	mr r3, r29
/* 802003C4 001FD324  38 80 00 01 */	li r4, 1
/* 802003C8 001FD328  38 A0 00 0B */	li r5, 0xb
/* 802003CC 001FD32C  C0 26 00 38 */	lfs f1, 0x38(r6)
/* 802003D0 001FD330  48 00 C8 91 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 802003D4 001FD334  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 802003D8 001FD338  7F A3 EB 78 */	mr r3, r29
/* 802003DC 001FD33C  38 80 00 04 */	li r4, 4
/* 802003E0 001FD340  38 A0 00 02 */	li r5, 2
/* 802003E4 001FD344  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 802003E8 001FD348  48 00 C8 79 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 802003EC 001FD34C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 802003F0 001FD350  7F A3 EB 78 */	mr r3, r29
/* 802003F4 001FD354  38 80 00 07 */	li r4, 7
/* 802003F8 001FD358  38 A0 00 05 */	li r5, 5
/* 802003FC 001FD35C  C0 26 00 78 */	lfs f1, 0x78(r6)
/* 80200400 001FD360  48 00 C8 61 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 80200404 001FD364  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 80200408 001FD368  7F A3 EB 78 */	mr r3, r29
/* 8020040C 001FD36C  C0 42 AF 74 */	lfs f2, lbl_805ACC94@sda21(r2)
/* 80200410 001FD370  38 80 00 03 */	li r4, 3
/* 80200414 001FD374  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 80200418 001FD378  38 A0 00 05 */	li r5, 5
/* 8020041C 001FD37C  C0 06 00 98 */	lfs f0, 0x98(r6)
/* 80200420 001FD380  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80200424 001FD384  48 00 C8 3D */	bl AddMinLengthConstraint__8CRagDollFiif
/* 80200428 001FD388  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8020042C 001FD38C  7F A3 EB 78 */	mr r3, r29
/* 80200430 001FD390  C0 42 AF 74 */	lfs f2, lbl_805ACC94@sda21(r2)
/* 80200434 001FD394  38 80 00 06 */	li r4, 6
/* 80200438 001FD398  C0 26 00 78 */	lfs f1, 0x78(r6)
/* 8020043C 001FD39C  38 A0 00 02 */	li r5, 2
/* 80200440 001FD3A0  C0 06 00 98 */	lfs f0, 0x98(r6)
/* 80200444 001FD3A4  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80200448 001FD3A8  48 00 C8 19 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8020044C 001FD3AC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 80200450 001FD3B0  7F A3 EB 78 */	mr r3, r29
/* 80200454 001FD3B4  C0 42 AF 74 */	lfs f2, lbl_805ACC94@sda21(r2)
/* 80200458 001FD3B8  38 80 00 04 */	li r4, 4
/* 8020045C 001FD3BC  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 80200460 001FD3C0  38 A0 00 05 */	li r5, 5
/* 80200464 001FD3C4  C0 06 00 98 */	lfs f0, 0x98(r6)
/* 80200468 001FD3C8  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8020046C 001FD3CC  48 00 C7 F5 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 80200470 001FD3D0  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 80200474 001FD3D4  7F A3 EB 78 */	mr r3, r29
/* 80200478 001FD3D8  C0 42 AF 74 */	lfs f2, lbl_805ACC94@sda21(r2)
/* 8020047C 001FD3DC  38 80 00 07 */	li r4, 7
/* 80200480 001FD3E0  C0 26 00 78 */	lfs f1, 0x78(r6)
/* 80200484 001FD3E4  38 A0 00 02 */	li r5, 2
/* 80200488 001FD3E8  C0 06 00 98 */	lfs f0, 0x98(r6)
/* 8020048C 001FD3EC  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80200490 001FD3F0  48 00 C7 D1 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 80200494 001FD3F4  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 80200498 001FD3F8  7F A3 EB 78 */	mr r3, r29
/* 8020049C 001FD3FC  38 80 00 0A */	li r4, 0xa
/* 802004A0 001FD400  38 A0 00 08 */	li r5, 8
/* 802004A4 001FD404  C0 26 00 F8 */	lfs f1, 0xf8(r6)
/* 802004A8 001FD408  48 00 C7 B9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 802004AC 001FD40C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 802004B0 001FD410  7F A3 EB 78 */	mr r3, r29
/* 802004B4 001FD414  38 80 00 0D */	li r4, 0xd
/* 802004B8 001FD418  38 A0 00 0B */	li r5, 0xb
/* 802004BC 001FD41C  C0 26 01 18 */	lfs f1, 0x118(r6)
/* 802004C0 001FD420  48 00 C7 A1 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 802004C4 001FD424  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 802004C8 001FD428  7F A3 EB 78 */	mr r3, r29
/* 802004CC 001FD42C  C0 42 AF A8 */	lfs f2, lbl_805ACCC8@sda21(r2)
/* 802004D0 001FD430  38 80 00 09 */	li r4, 9
/* 802004D4 001FD434  C0 26 00 F8 */	lfs f1, 0xf8(r6)
/* 802004D8 001FD438  38 A0 00 02 */	li r5, 2
/* 802004DC 001FD43C  C0 06 00 A8 */	lfs f0, 0xa8(r6)
/* 802004E0 001FD440  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 802004E4 001FD444  48 00 C7 7D */	bl AddMinLengthConstraint__8CRagDollFiif
/* 802004E8 001FD448  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 802004EC 001FD44C  7F A3 EB 78 */	mr r3, r29
/* 802004F0 001FD450  C0 42 AF A8 */	lfs f2, lbl_805ACCC8@sda21(r2)
/* 802004F4 001FD454  38 80 00 0C */	li r4, 0xc
/* 802004F8 001FD458  C0 26 01 18 */	lfs f1, 0x118(r6)
/* 802004FC 001FD45C  38 A0 00 05 */	li r5, 5
/* 80200500 001FD460  C0 06 00 D8 */	lfs f0, 0xd8(r6)
/* 80200504 001FD464  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80200508 001FD468  48 00 C7 59 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8020050C 001FD46C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 80200510 001FD470  7F A3 EB 78 */	mr r3, r29
/* 80200514 001FD474  38 80 00 09 */	li r4, 9
/* 80200518 001FD478  38 A0 00 0B */	li r5, 0xb
/* 8020051C 001FD47C  C0 26 00 F8 */	lfs f1, 0xf8(r6)
/* 80200520 001FD480  48 00 C7 41 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 80200524 001FD484  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 80200528 001FD488  7F A3 EB 78 */	mr r3, r29
/* 8020052C 001FD48C  38 80 00 0C */	li r4, 0xc
/* 80200530 001FD490  38 A0 00 08 */	li r5, 8
/* 80200534 001FD494  C0 26 01 18 */	lfs f1, 0x118(r6)
/* 80200538 001FD498  48 00 C7 29 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8020053C 001FD49C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 80200540 001FD4A0  7F A3 EB 78 */	mr r3, r29
/* 80200544 001FD4A4  38 80 00 0A */	li r4, 0xa
/* 80200548 001FD4A8  38 A0 00 00 */	li r5, 0
/* 8020054C 001FD4AC  C0 26 00 28 */	lfs f1, 0x28(r6)
/* 80200550 001FD4B0  C0 06 00 F8 */	lfs f0, 0xf8(r6)
/* 80200554 001FD4B4  EC 21 00 2A */	fadds f1, f1, f0
/* 80200558 001FD4B8  48 00 C7 09 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8020055C 001FD4BC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 80200560 001FD4C0  7F A3 EB 78 */	mr r3, r29
/* 80200564 001FD4C4  38 80 00 0D */	li r4, 0xd
/* 80200568 001FD4C8  38 A0 00 00 */	li r5, 0
/* 8020056C 001FD4CC  C0 26 00 38 */	lfs f1, 0x38(r6)
/* 80200570 001FD4D0  C0 06 01 18 */	lfs f0, 0x118(r6)
/* 80200574 001FD4D4  EC 21 00 2A */	fadds f1, f1, f0
/* 80200578 001FD4D8  48 00 C6 E9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8020057C 001FD4DC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 80200580 001FD4E0  7F A3 EB 78 */	mr r3, r29
/* 80200584 001FD4E4  38 80 00 0A */	li r4, 0xa
/* 80200588 001FD4E8  38 A0 00 0D */	li r5, 0xd
/* 8020058C 001FD4EC  C0 26 00 E8 */	lfs f1, 0xe8(r6)
/* 80200590 001FD4F0  48 00 C6 D1 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 80200594 001FD4F4  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 80200598 001FD4F8  7F A3 EB 78 */	mr r3, r29
/* 8020059C 001FD4FC  C0 22 AF 74 */	lfs f1, lbl_805ACC94@sda21(r2)
/* 802005A0 001FD500  38 80 00 09 */	li r4, 9
/* 802005A4 001FD504  C0 05 00 E8 */	lfs f0, 0xe8(r5)
/* 802005A8 001FD508  38 A0 00 0C */	li r5, 0xc
/* 802005AC 001FD50C  EC 21 00 32 */	fmuls f1, f1, f0
/* 802005B0 001FD510  48 00 C6 B1 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 802005B4 001FD514  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 802005B8 001FD518  7F A3 EB 78 */	mr r3, r29
/* 802005BC 001FD51C  C0 22 AF 74 */	lfs f1, lbl_805ACC94@sda21(r2)
/* 802005C0 001FD520  38 80 00 0A */	li r4, 0xa
/* 802005C4 001FD524  C0 05 00 E8 */	lfs f0, 0xe8(r5)
/* 802005C8 001FD528  38 A0 00 0C */	li r5, 0xc
/* 802005CC 001FD52C  EC 21 00 32 */	fmuls f1, f1, f0
/* 802005D0 001FD530  48 00 C6 91 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 802005D4 001FD534  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 802005D8 001FD538  7F A3 EB 78 */	mr r3, r29
/* 802005DC 001FD53C  C0 22 AF 74 */	lfs f1, lbl_805ACC94@sda21(r2)
/* 802005E0 001FD540  38 80 00 0D */	li r4, 0xd
/* 802005E4 001FD544  C0 05 00 E8 */	lfs f0, 0xe8(r5)
/* 802005E8 001FD548  38 A0 00 09 */	li r5, 9
/* 802005EC 001FD54C  EC 21 00 32 */	fmuls f1, f1, f0
/* 802005F0 001FD550  48 00 C6 71 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 802005F4 001FD554  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 802005F8 001FD558  7F A3 EB 78 */	mr r3, r29
/* 802005FC 001FD55C  C0 22 AF CC */	lfs f1, lbl_805ACCEC@sda21(r2)
/* 80200600 001FD560  38 80 00 0A */	li r4, 0xa
/* 80200604 001FD564  C0 05 00 E8 */	lfs f0, 0xe8(r5)
/* 80200608 001FD568  38 A0 00 0D */	li r5, 0xd
/* 8020060C 001FD56C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80200610 001FD570  48 00 C5 9D */	bl AddMaxLengthConstraint__8CRagDollFiif
/* 80200614 001FD574  7F A3 EB 78 */	mr r3, r29
/* 80200618 001FD578  38 80 00 08 */	li r4, 8
/* 8020061C 001FD57C  38 A0 00 02 */	li r5, 2
/* 80200620 001FD580  38 C0 00 05 */	li r6, 5
/* 80200624 001FD584  38 E0 00 08 */	li r7, 8
/* 80200628 001FD588  39 00 00 09 */	li r8, 9
/* 8020062C 001FD58C  39 20 00 0A */	li r9, 0xa
/* 80200630 001FD590  48 00 C4 C1 */	bl AddJointConstraint__8CRagDollFiiiiii
/* 80200634 001FD594  7F A3 EB 78 */	mr r3, r29
/* 80200638 001FD598  38 80 00 0B */	li r4, 0xb
/* 8020063C 001FD59C  38 A0 00 02 */	li r5, 2
/* 80200640 001FD5A0  38 C0 00 05 */	li r6, 5
/* 80200644 001FD5A4  38 E0 00 0B */	li r7, 0xb
/* 80200648 001FD5A8  39 00 00 0C */	li r8, 0xc
/* 8020064C 001FD5AC  39 20 00 0D */	li r9, 0xd
/* 80200650 001FD5B0  48 00 C4 A1 */	bl AddJointConstraint__8CRagDollFiiiiii
/* 80200654 001FD5B4  7F A3 EB 78 */	mr r3, r29
/* 80200658 001FD5B8  38 80 00 02 */	li r4, 2
/* 8020065C 001FD5BC  38 A0 00 0B */	li r5, 0xb
/* 80200660 001FD5C0  38 C0 00 05 */	li r6, 5
/* 80200664 001FD5C4  38 E0 00 02 */	li r7, 2
/* 80200668 001FD5C8  39 00 00 03 */	li r8, 3
/* 8020066C 001FD5CC  39 20 00 04 */	li r9, 4
/* 80200670 001FD5D0  48 00 C4 81 */	bl AddJointConstraint__8CRagDollFiiiiii
/* 80200674 001FD5D4  7F A3 EB 78 */	mr r3, r29
/* 80200678 001FD5D8  38 80 00 05 */	li r4, 5
/* 8020067C 001FD5DC  38 A0 00 02 */	li r5, 2
/* 80200680 001FD5E0  38 C0 00 08 */	li r6, 8
/* 80200684 001FD5E4  38 E0 00 05 */	li r7, 5
/* 80200688 001FD5E8  39 00 00 06 */	li r8, 6
/* 8020068C 001FD5EC  39 20 00 07 */	li r9, 7
/* 80200690 001FD5F0  48 00 C4 61 */	bl AddJointConstraint__8CRagDollFiiiiii
/* 80200694 001FD5F4  7F A3 EB 78 */	mr r3, r29
/* 80200698 001FD5F8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8020069C 001FD5FC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 802006A0 001FD600  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 802006A4 001FD604  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 802006A8 001FD608  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 802006AC 001FD60C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 802006B0 001FD610  BB 21 00 74 */	lmw r25, 0x74(r1)
/* 802006B4 001FD614  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802006B8 001FD618  7C 08 03 A6 */	mtlr r0
/* 802006BC 001FD61C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802006C0 001FD620  4E 80 00 20 */	blr

.global __sinit_CFlyingPirate_cpp
__sinit_CFlyingPirate_cpp:
/* 802006C4 001FD624  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 802006C8 001FD628  7C 08 02 A6 */	mflr r0
/* 802006CC 001FD62C  3C 60 80 3D */	lis r3, lbl_803D247C@ha
/* 802006D0 001FD630  3C A0 80 47 */	lis r5, lbl_8046C950@ha
/* 802006D4 001FD634  90 01 01 64 */	stw r0, 0x164(r1)
/* 802006D8 001FD638  38 83 24 7C */	addi r4, r3, lbl_803D247C@l
/* 802006DC 001FD63C  38 61 01 48 */	addi r3, r1, 0x148
/* 802006E0 001FD640  93 E1 01 5C */	stw r31, 0x15c(r1)
/* 802006E4 001FD644  3B E5 C9 50 */	addi r31, r5, lbl_8046C950@l
/* 802006E8 001FD648  38 84 00 57 */	addi r4, r4, 0x57
/* 802006EC 001FD64C  4B E0 45 CD */	bl string_l__4rstlFPCc
/* 802006F0 001FD650  3C 60 80 57 */	lis r3, lbl_80572078@ha
/* 802006F4 001FD654  38 81 01 48 */	addi r4, r1, 0x148
/* 802006F8 001FD658  38 63 20 78 */	addi r3, r3, lbl_80572078@l
/* 802006FC 001FD65C  48 13 DA 65 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200700 001FD660  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200704 001FD664  38 BF 00 00 */	addi r5, r31, 0
/* 80200708 001FD668  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8020070C 001FD66C  48 18 8F 81 */	bl __register_global_object
/* 80200710 001FD670  38 61 01 48 */	addi r3, r1, 0x148
/* 80200714 001FD674  48 13 D3 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200718 001FD678  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 8020071C 001FD67C  38 61 01 38 */	addi r3, r1, 0x138
/* 80200720 001FD680  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200724 001FD684  38 84 00 5F */	addi r4, r4, 0x5f
/* 80200728 001FD688  4B E0 45 91 */	bl string_l__4rstlFPCc
/* 8020072C 001FD68C  3C 60 80 57 */	lis r3, lbl_805720D8@ha
/* 80200730 001FD690  38 81 01 38 */	addi r4, r1, 0x138
/* 80200734 001FD694  38 63 20 D8 */	addi r3, r3, lbl_805720D8@l
/* 80200738 001FD698  48 13 DA 29 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020073C 001FD69C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200740 001FD6A0  38 BF 00 0C */	addi r5, r31, 0xc
/* 80200744 001FD6A4  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200748 001FD6A8  48 18 8F 45 */	bl __register_global_object
/* 8020074C 001FD6AC  38 61 01 38 */	addi r3, r1, 0x138
/* 80200750 001FD6B0  48 13 D3 91 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200754 001FD6B4  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200758 001FD6B8  38 61 01 28 */	addi r3, r1, 0x128
/* 8020075C 001FD6BC  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200760 001FD6C0  38 84 00 69 */	addi r4, r4, 0x69
/* 80200764 001FD6C4  4B E0 45 55 */	bl string_l__4rstlFPCc
/* 80200768 001FD6C8  3C 60 80 57 */	lis r3, lbl_805720E8@ha
/* 8020076C 001FD6CC  38 81 01 28 */	addi r4, r1, 0x128
/* 80200770 001FD6D0  38 63 20 E8 */	addi r3, r3, lbl_805720E8@l
/* 80200774 001FD6D4  48 13 D9 ED */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200778 001FD6D8  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8020077C 001FD6DC  38 BF 00 18 */	addi r5, r31, 0x18
/* 80200780 001FD6E0  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200784 001FD6E4  48 18 8F 09 */	bl __register_global_object
/* 80200788 001FD6E8  38 61 01 28 */	addi r3, r1, 0x128
/* 8020078C 001FD6EC  48 13 D3 55 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200790 001FD6F0  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200794 001FD6F4  38 61 01 18 */	addi r3, r1, 0x118
/* 80200798 001FD6F8  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 8020079C 001FD6FC  38 84 00 76 */	addi r4, r4, 0x76
/* 802007A0 001FD700  4B E0 45 19 */	bl string_l__4rstlFPCc
/* 802007A4 001FD704  3C 60 80 57 */	lis r3, lbl_805720F8@ha
/* 802007A8 001FD708  38 81 01 18 */	addi r4, r1, 0x118
/* 802007AC 001FD70C  38 63 20 F8 */	addi r3, r3, lbl_805720F8@l
/* 802007B0 001FD710  48 13 D9 B1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802007B4 001FD714  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 802007B8 001FD718  38 BF 00 24 */	addi r5, r31, 0x24
/* 802007BC 001FD71C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 802007C0 001FD720  48 18 8E CD */	bl __register_global_object
/* 802007C4 001FD724  38 61 01 18 */	addi r3, r1, 0x118
/* 802007C8 001FD728  48 13 D3 19 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802007CC 001FD72C  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 802007D0 001FD730  38 61 01 08 */	addi r3, r1, 0x108
/* 802007D4 001FD734  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 802007D8 001FD738  38 84 00 7D */	addi r4, r4, 0x7d
/* 802007DC 001FD73C  4B E0 44 DD */	bl string_l__4rstlFPCc
/* 802007E0 001FD740  3C 60 80 57 */	lis r3, lbl_80572108@ha
/* 802007E4 001FD744  38 81 01 08 */	addi r4, r1, 0x108
/* 802007E8 001FD748  38 63 21 08 */	addi r3, r3, lbl_80572108@l
/* 802007EC 001FD74C  48 13 D9 75 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802007F0 001FD750  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 802007F4 001FD754  38 BF 00 30 */	addi r5, r31, 0x30
/* 802007F8 001FD758  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 802007FC 001FD75C  48 18 8E 91 */	bl __register_global_object
/* 80200800 001FD760  38 61 01 08 */	addi r3, r1, 0x108
/* 80200804 001FD764  48 13 D2 DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200808 001FD768  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 8020080C 001FD76C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80200810 001FD770  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200814 001FD774  38 84 00 8A */	addi r4, r4, 0x8a
/* 80200818 001FD778  4B E0 44 A1 */	bl string_l__4rstlFPCc
/* 8020081C 001FD77C  3C 60 80 57 */	lis r3, lbl_80572118@ha
/* 80200820 001FD780  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80200824 001FD784  38 63 21 18 */	addi r3, r3, lbl_80572118@l
/* 80200828 001FD788  48 13 D9 39 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020082C 001FD78C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200830 001FD790  38 BF 00 3C */	addi r5, r31, 0x3c
/* 80200834 001FD794  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200838 001FD798  48 18 8E 55 */	bl __register_global_object
/* 8020083C 001FD79C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80200840 001FD7A0  48 13 D2 A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200844 001FD7A4  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200848 001FD7A8  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8020084C 001FD7AC  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200850 001FD7B0  38 84 00 8F */	addi r4, r4, 0x8f
/* 80200854 001FD7B4  4B E0 44 65 */	bl string_l__4rstlFPCc
/* 80200858 001FD7B8  38 7F 00 FC */	addi r3, r31, 0xfc
/* 8020085C 001FD7BC  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80200860 001FD7C0  48 13 D9 01 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200864 001FD7C4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200868 001FD7C8  38 BF 00 48 */	addi r5, r31, 0x48
/* 8020086C 001FD7CC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200870 001FD7D0  48 18 8E 1D */	bl __register_global_object
/* 80200874 001FD7D4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80200878 001FD7D8  48 13 D2 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020087C 001FD7DC  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200880 001FD7E0  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80200884 001FD7E4  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200888 001FD7E8  38 84 00 19 */	addi r4, r4, 0x19
/* 8020088C 001FD7EC  4B E0 44 2D */	bl string_l__4rstlFPCc
/* 80200890 001FD7F0  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200894 001FD7F4  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80200898 001FD7F8  38 63 00 10 */	addi r3, r3, 0x10
/* 8020089C 001FD7FC  48 13 D8 C5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802008A0 001FD800  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 802008A4 001FD804  38 BF 00 54 */	addi r5, r31, 0x54
/* 802008A8 001FD808  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 802008AC 001FD80C  48 18 8D E1 */	bl __register_global_object
/* 802008B0 001FD810  38 61 00 D8 */	addi r3, r1, 0xd8
/* 802008B4 001FD814  48 13 D2 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802008B8 001FD818  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 802008BC 001FD81C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802008C0 001FD820  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 802008C4 001FD824  38 84 00 96 */	addi r4, r4, 0x96
/* 802008C8 001FD828  4B E0 43 F1 */	bl string_l__4rstlFPCc
/* 802008CC 001FD82C  38 7F 00 FC */	addi r3, r31, 0xfc
/* 802008D0 001FD830  38 81 00 C8 */	addi r4, r1, 0xc8
/* 802008D4 001FD834  38 63 00 20 */	addi r3, r3, 0x20
/* 802008D8 001FD838  48 13 D8 89 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802008DC 001FD83C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 802008E0 001FD840  38 BF 00 60 */	addi r5, r31, 0x60
/* 802008E4 001FD844  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 802008E8 001FD848  48 18 8D A5 */	bl __register_global_object
/* 802008EC 001FD84C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802008F0 001FD850  48 13 D1 F1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802008F4 001FD854  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 802008F8 001FD858  38 61 00 B8 */	addi r3, r1, 0xb8
/* 802008FC 001FD85C  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200900 001FD860  38 84 00 A1 */	addi r4, r4, 0xa1
/* 80200904 001FD864  4B E0 43 B5 */	bl string_l__4rstlFPCc
/* 80200908 001FD868  38 7F 00 FC */	addi r3, r31, 0xfc
/* 8020090C 001FD86C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80200910 001FD870  38 63 00 30 */	addi r3, r3, 0x30
/* 80200914 001FD874  48 13 D8 4D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200918 001FD878  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8020091C 001FD87C  38 BF 00 6C */	addi r5, r31, 0x6c
/* 80200920 001FD880  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200924 001FD884  48 18 8D 69 */	bl __register_global_object
/* 80200928 001FD888  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8020092C 001FD88C  48 13 D1 B5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200930 001FD890  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200934 001FD894  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80200938 001FD898  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 8020093C 001FD89C  38 84 00 A9 */	addi r4, r4, 0xa9
/* 80200940 001FD8A0  4B E0 43 79 */	bl string_l__4rstlFPCc
/* 80200944 001FD8A4  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200948 001FD8A8  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8020094C 001FD8AC  38 63 00 40 */	addi r3, r3, 0x40
/* 80200950 001FD8B0  48 13 D8 11 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200954 001FD8B4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200958 001FD8B8  38 BF 00 78 */	addi r5, r31, 0x78
/* 8020095C 001FD8BC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200960 001FD8C0  48 18 8D 2D */	bl __register_global_object
/* 80200964 001FD8C4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80200968 001FD8C8  48 13 D1 79 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020096C 001FD8CC  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200970 001FD8D0  38 61 00 98 */	addi r3, r1, 0x98
/* 80200974 001FD8D4  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200978 001FD8D8  38 84 00 B1 */	addi r4, r4, 0xb1
/* 8020097C 001FD8DC  4B E0 43 3D */	bl string_l__4rstlFPCc
/* 80200980 001FD8E0  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200984 001FD8E4  38 81 00 98 */	addi r4, r1, 0x98
/* 80200988 001FD8E8  38 63 00 50 */	addi r3, r3, 0x50
/* 8020098C 001FD8EC  48 13 D7 D5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200990 001FD8F0  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200994 001FD8F4  38 BF 00 84 */	addi r5, r31, 0x84
/* 80200998 001FD8F8  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8020099C 001FD8FC  48 18 8C F1 */	bl __register_global_object
/* 802009A0 001FD900  38 61 00 98 */	addi r3, r1, 0x98
/* 802009A4 001FD904  48 13 D1 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802009A8 001FD908  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 802009AC 001FD90C  38 61 00 88 */	addi r3, r1, 0x88
/* 802009B0 001FD910  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 802009B4 001FD914  38 84 00 BC */	addi r4, r4, 0xbc
/* 802009B8 001FD918  4B E0 43 01 */	bl string_l__4rstlFPCc
/* 802009BC 001FD91C  38 7F 00 FC */	addi r3, r31, 0xfc
/* 802009C0 001FD920  38 81 00 88 */	addi r4, r1, 0x88
/* 802009C4 001FD924  38 63 00 60 */	addi r3, r3, 0x60
/* 802009C8 001FD928  48 13 D7 99 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802009CC 001FD92C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 802009D0 001FD930  38 BF 00 90 */	addi r5, r31, 0x90
/* 802009D4 001FD934  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 802009D8 001FD938  48 18 8C B5 */	bl __register_global_object
/* 802009DC 001FD93C  38 61 00 88 */	addi r3, r1, 0x88
/* 802009E0 001FD940  48 13 D1 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802009E4 001FD944  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 802009E8 001FD948  38 61 00 78 */	addi r3, r1, 0x78
/* 802009EC 001FD94C  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 802009F0 001FD950  38 84 00 C4 */	addi r4, r4, 0xc4
/* 802009F4 001FD954  4B E0 42 C5 */	bl string_l__4rstlFPCc
/* 802009F8 001FD958  38 7F 00 FC */	addi r3, r31, 0xfc
/* 802009FC 001FD95C  38 81 00 78 */	addi r4, r1, 0x78
/* 80200A00 001FD960  38 63 00 70 */	addi r3, r3, 0x70
/* 80200A04 001FD964  48 13 D7 5D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200A08 001FD968  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200A0C 001FD96C  38 BF 00 9C */	addi r5, r31, 0x9c
/* 80200A10 001FD970  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200A14 001FD974  48 18 8C 79 */	bl __register_global_object
/* 80200A18 001FD978  38 61 00 78 */	addi r3, r1, 0x78
/* 80200A1C 001FD97C  48 13 D0 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200A20 001FD980  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200A24 001FD984  38 61 00 68 */	addi r3, r1, 0x68
/* 80200A28 001FD988  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200A2C 001FD98C  38 84 00 CC */	addi r4, r4, 0xcc
/* 80200A30 001FD990  4B E0 42 89 */	bl string_l__4rstlFPCc
/* 80200A34 001FD994  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200A38 001FD998  38 81 00 68 */	addi r4, r1, 0x68
/* 80200A3C 001FD99C  38 63 00 80 */	addi r3, r3, 0x80
/* 80200A40 001FD9A0  48 13 D7 21 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200A44 001FD9A4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200A48 001FD9A8  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 80200A4C 001FD9AC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200A50 001FD9B0  48 18 8C 3D */	bl __register_global_object
/* 80200A54 001FD9B4  38 61 00 68 */	addi r3, r1, 0x68
/* 80200A58 001FD9B8  48 13 D0 89 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200A5C 001FD9BC  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200A60 001FD9C0  38 61 00 58 */	addi r3, r1, 0x58
/* 80200A64 001FD9C4  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200A68 001FD9C8  38 84 00 D2 */	addi r4, r4, 0xd2
/* 80200A6C 001FD9CC  4B E0 42 4D */	bl string_l__4rstlFPCc
/* 80200A70 001FD9D0  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200A74 001FD9D4  38 81 00 58 */	addi r4, r1, 0x58
/* 80200A78 001FD9D8  38 63 00 90 */	addi r3, r3, 0x90
/* 80200A7C 001FD9DC  48 13 D6 E5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200A80 001FD9E0  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200A84 001FD9E4  38 BF 00 B4 */	addi r5, r31, 0xb4
/* 80200A88 001FD9E8  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200A8C 001FD9EC  48 18 8C 01 */	bl __register_global_object
/* 80200A90 001FD9F0  38 61 00 58 */	addi r3, r1, 0x58
/* 80200A94 001FD9F4  48 13 D0 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200A98 001FD9F8  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200A9C 001FD9FC  38 61 00 48 */	addi r3, r1, 0x48
/* 80200AA0 001FDA00  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200AA4 001FDA04  38 84 00 D9 */	addi r4, r4, 0xd9
/* 80200AA8 001FDA08  4B E0 42 11 */	bl string_l__4rstlFPCc
/* 80200AAC 001FDA0C  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200AB0 001FDA10  38 81 00 48 */	addi r4, r1, 0x48
/* 80200AB4 001FDA14  38 63 00 A0 */	addi r3, r3, 0xa0
/* 80200AB8 001FDA18  48 13 D6 A9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200ABC 001FDA1C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200AC0 001FDA20  38 BF 00 C0 */	addi r5, r31, 0xc0
/* 80200AC4 001FDA24  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200AC8 001FDA28  48 18 8B C5 */	bl __register_global_object
/* 80200ACC 001FDA2C  38 61 00 48 */	addi r3, r1, 0x48
/* 80200AD0 001FDA30  48 13 D0 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200AD4 001FDA34  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200AD8 001FDA38  38 61 00 38 */	addi r3, r1, 0x38
/* 80200ADC 001FDA3C  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200AE0 001FDA40  38 84 00 E1 */	addi r4, r4, 0xe1
/* 80200AE4 001FDA44  4B E0 41 D5 */	bl string_l__4rstlFPCc
/* 80200AE8 001FDA48  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200AEC 001FDA4C  38 81 00 38 */	addi r4, r1, 0x38
/* 80200AF0 001FDA50  38 63 00 B0 */	addi r3, r3, 0xb0
/* 80200AF4 001FDA54  48 13 D6 6D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200AF8 001FDA58  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200AFC 001FDA5C  38 BF 00 CC */	addi r5, r31, 0xcc
/* 80200B00 001FDA60  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200B04 001FDA64  48 18 8B 89 */	bl __register_global_object
/* 80200B08 001FDA68  38 61 00 38 */	addi r3, r1, 0x38
/* 80200B0C 001FDA6C  48 13 CF D5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200B10 001FDA70  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200B14 001FDA74  38 61 00 28 */	addi r3, r1, 0x28
/* 80200B18 001FDA78  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200B1C 001FDA7C  38 84 00 E7 */	addi r4, r4, 0xe7
/* 80200B20 001FDA80  4B E0 41 99 */	bl string_l__4rstlFPCc
/* 80200B24 001FDA84  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200B28 001FDA88  38 81 00 28 */	addi r4, r1, 0x28
/* 80200B2C 001FDA8C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80200B30 001FDA90  48 13 D6 31 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200B34 001FDA94  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200B38 001FDA98  38 BF 00 D8 */	addi r5, r31, 0xd8
/* 80200B3C 001FDA9C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200B40 001FDAA0  48 18 8B 4D */	bl __register_global_object
/* 80200B44 001FDAA4  38 61 00 28 */	addi r3, r1, 0x28
/* 80200B48 001FDAA8  48 13 CF 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200B4C 001FDAAC  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200B50 001FDAB0  38 61 00 18 */	addi r3, r1, 0x18
/* 80200B54 001FDAB4  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200B58 001FDAB8  38 84 00 EE */	addi r4, r4, 0xee
/* 80200B5C 001FDABC  4B E0 41 5D */	bl string_l__4rstlFPCc
/* 80200B60 001FDAC0  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200B64 001FDAC4  38 81 00 18 */	addi r4, r1, 0x18
/* 80200B68 001FDAC8  38 63 00 D0 */	addi r3, r3, 0xd0
/* 80200B6C 001FDACC  48 13 D5 F5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200B70 001FDAD0  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200B74 001FDAD4  38 BF 00 E4 */	addi r5, r31, 0xe4
/* 80200B78 001FDAD8  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200B7C 001FDADC  48 18 8B 11 */	bl __register_global_object
/* 80200B80 001FDAE0  38 61 00 18 */	addi r3, r1, 0x18
/* 80200B84 001FDAE4  48 13 CF 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200B88 001FDAE8  3C 80 80 3D */	lis r4, lbl_803D247C@ha
/* 80200B8C 001FDAEC  38 61 00 08 */	addi r3, r1, 8
/* 80200B90 001FDAF0  38 84 24 7C */	addi r4, r4, lbl_803D247C@l
/* 80200B94 001FDAF4  38 84 00 F6 */	addi r4, r4, 0xf6
/* 80200B98 001FDAF8  4B E0 41 21 */	bl string_l__4rstlFPCc
/* 80200B9C 001FDAFC  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80200BA0 001FDB00  38 81 00 08 */	addi r4, r1, 8
/* 80200BA4 001FDB04  38 63 00 E0 */	addi r3, r3, 0xe0
/* 80200BA8 001FDB08  48 13 D5 B9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80200BAC 001FDB0C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80200BB0 001FDB10  38 BF 00 F0 */	addi r5, r31, 0xf0
/* 80200BB4 001FDB14  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80200BB8 001FDB18  48 18 8A D5 */	bl __register_global_object
/* 80200BBC 001FDB1C  38 61 00 08 */	addi r3, r1, 8
/* 80200BC0 001FDB20  48 13 CF 21 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80200BC4 001FDB24  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80200BC8 001FDB28  83 E1 01 5C */	lwz r31, 0x15c(r1)
/* 80200BCC 001FDB2C  7C 08 03 A6 */	mtlr r0
/* 80200BD0 001FDB30  38 21 01 60 */	addi r1, r1, 0x160
/* 80200BD4 001FDB34  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ACC40
lbl_805ACC40:
	# ROM: 0x3F94E0
	.4byte 0

.global lbl_805ACC44
lbl_805ACC44:
	# ROM: 0x3F94E4
	.4byte 0x407F5C29

.global lbl_805ACC48
lbl_805ACC48:
	# ROM: 0x3F94E8
	.4byte 0x40490FDB

.global lbl_805ACC4C
lbl_805ACC4C:
	# ROM: 0x3F94EC
	.float 0.7853982

.global lbl_805ACC50
lbl_805ACC50:
	# ROM: 0x3F94F0
	.4byte 0x4016CBE4

.global lbl_805ACC54
lbl_805ACC54:
	# ROM: 0x3F94F4
	.float 1.0

.global lbl_805ACC58
lbl_805ACC58:
	# ROM: 0x3F94F8
	.float 1.1920929E-7

.global lbl_805ACC5C
lbl_805ACC5C:
	# ROM: 0x3F94FC
	.float 0.2

.global lbl_805ACC60
lbl_805ACC60:
	# ROM: 0x3F9500
	.float 0.3

.global lbl_805ACC64
lbl_805ACC64:
	# ROM: 0x3F9504
	.float 4.0

.global lbl_805ACC68
lbl_805ACC68:
	# ROM: 0x3F9508
	.float 0.5

.global lbl_805ACC6C
lbl_805ACC6C:
	# ROM: 0x3F950C
	.4byte 0xBEAAAAAB

.global lbl_805ACC70
lbl_805ACC70:
	# ROM: 0x3F9510
	.4byte 0x00000023

.global lbl_805ACC74
lbl_805ACC74:
	# ROM: 0x3F9514
	.4byte 0x42480000

.global lbl_805ACC78
lbl_805ACC78:
	# ROM: 0x3F9518
	.float 5.0

.global lbl_805ACC7C
lbl_805ACC7C:
	# ROM: 0x3F951C
	.4byte 0xC0400000

.global lbl_805ACC80
lbl_805ACC80:
	# ROM: 0x3F9520
	.4byte 0

.global lbl_805ACC84
lbl_805ACC84:
	# ROM: 0x3F9524
	.float 2.0

.global lbl_805ACC88
lbl_805ACC88:
	# ROM: 0x3F9528
	.float 0.9

.global lbl_805ACC8C
lbl_805ACC8C:
	# ROM: 0x3F952C
	.float 0.2

.global lbl_805ACC90
lbl_805ACC90:
	# ROM: 0x3F9530
	.4byte 0x46AC4400

.global lbl_805ACC94
lbl_805ACC94:
	# ROM: 0x3F9534
	.float 0.5

.global lbl_805ACC98
lbl_805ACC98:
	# ROM: 0x3F9538
	.float 1.0

.global lbl_805ACC9C
lbl_805ACC9C:
	# ROM: 0x3F953C
	.4byte 0x40400000

.global lbl_805ACCA0
lbl_805ACCA0:
	# ROM: 0x3F9540
	.4byte 0x46000000

.global lbl_805ACCA4
lbl_805ACCA4:
	# ROM: 0x3F9544
	.4byte 0x3EAA7EFA

.global lbl_805ACCA8
lbl_805ACCA8:
	# ROM: 0x3F9548
	.4byte 0x41F00000

.global lbl_805ACCAC
lbl_805ACCAC:
	# ROM: 0x3F954C
	.4byte 0x40490FDB

.global lbl_805ACCB0
lbl_805ACCB0:
	# ROM: 0x3F9550
	.4byte 0x43340000

.global lbl_805ACCB4
lbl_805ACCB4:
	# ROM: 0x3F9554
	.4byte 0xFF7FFFFF

.global lbl_805ACCB8
lbl_805ACCB8:
	# ROM: 0x3F9558
	.4byte 0xBEAAAAAB

.global lbl_805ACCBC
lbl_805ACCBC:
	# ROM: 0x3F955C
	.float 0.25

.global lbl_805ACCC0
lbl_805ACCC0:
	# ROM: 0x3F9560
	.float 0.3

.global lbl_805ACCC4
lbl_805ACCC4:
	# ROM: 0x3F9564
	.4byte 0x42480000

.global lbl_805ACCC8
lbl_805ACCC8:
	# ROM: 0x3F9568
	.4byte 0x3F34FDF4

.global lbl_805ACCCC
lbl_805ACCCC:
	# ROM: 0x3F956C
	.4byte 0x40C00000

.global lbl_805ACCD0
lbl_805ACCD0:
	# ROM: 0x3F9570
	.float 0.1

.global lbl_805ACCD4
lbl_805ACCD4:
	# ROM: 0x3F9574
	.float 1.5

.global lbl_805ACCD8
lbl_805ACCD8:
	# ROM: 0x3F9578
	.4byte 0xC1C80000

.global lbl_805ACCDC
lbl_805ACCDC:
	# ROM: 0x3F957C
	.4byte 0xC1700000

.global lbl_805ACCE0
lbl_805ACCE0:
	# ROM: 0x3F9580
	.float 15.0

.global lbl_805ACCE4
lbl_805ACCE4:
	# ROM: 0x3F9584
	.4byte 0x41C80000

.global lbl_805ACCE8
lbl_805ACCE8:
	# ROM: 0x3F9588
	.4byte 0x3F4CCCCD

.global lbl_805ACCEC
lbl_805ACCEC:
	# ROM: 0x3F958C
	.float 4.0

.global lbl_805ACCF0
lbl_805ACCF0:
	# ROM: 0x3F9590
	.4byte 0x41200000

.global lbl_805ACCF4
lbl_805ACCF4:
	# ROM: 0x3F9594
	.4byte 0x42C80000

.global lbl_805ACCF8
lbl_805ACCF8:
	# ROM: 0x3F9598
	.4byte 0x3EA8F5C3

.global lbl_805ACCFC
lbl_805ACCFC:
	# ROM: 0x3F959C
	.float 1.0E-4

.global lbl_805ACD00
lbl_805ACD00:
	# ROM: 0x3F95A0
	.4byte 0xC0A00000

.global lbl_805ACD04
lbl_805ACD04:
	# ROM: 0x3F95A4
	.float 5.0

.global lbl_805ACD08
lbl_805ACD08:
	# ROM: 0x3F95A8
	.4byte 0x3F5DB22D

.global lbl_805ACD0C
lbl_805ACD0C:
	# ROM: 0x3F95AC
	.float 8.0

.global lbl_805ACD10
lbl_805ACD10:
	# ROM: 0x3F95B0
	.4byte 0x41A00000

.global lbl_805ACD14
lbl_805ACD14:
	# ROM: 0x3F95B4
	.4byte 0x3F70624E

.global lbl_805ACD18
lbl_805ACD18:
	# ROM: 0x3F95B8
	.4byte 0x40100000

.global lbl_805ACD1C
lbl_805ACD1C:
	# ROM: 0x3F95BC
	.float 0.75

.global lbl_805ACD20
lbl_805ACD20:
	# ROM: 0x3F95C0
	.4byte 0xBDCCCCCD

.global lbl_805ACD24
lbl_805ACD24:
	# ROM: 0x3F95C4
	.4byte 0xBE051EB8

.global lbl_805ACD28
lbl_805ACD28:
	# ROM: 0x3F95C8
	.4byte 0x3FB2B8C3

.global lbl_805ACD2C
lbl_805ACD2C:
	# ROM: 0x3F95CC
	.4byte 0x7F7FFFFF

.global lbl_805ACD30
lbl_805ACD30:
	# ROM: 0x3F95D0
	.float 0.017453292

.global lbl_805ACD34
lbl_805ACD34:
	# ROM: 0x3F95D4
	.4byte 0x43B40000

.global lbl_805ACD38
lbl_805ACD38:
	# ROM: 0x3F95D8
	.4byte 0x41300000

.global lbl_805ACD3C
lbl_805ACD3C:
	# ROM: 0x3F95DC
	.4byte 0xC0800000

.global lbl_805ACD40
lbl_805ACD40:
	# ROM: 0x3F95E0
	.4byte 0x447A0000

.global lbl_805ACD44
lbl_805ACD44:
	# ROM: 0x3F95E4
	.4byte 0x3E6353F8

.global lbl_805ACD48
lbl_805ACD48:
	# ROM: 0x3F95E8
	.float -1.0
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D2070
lbl_803D2070:
	# ROM: 0x3CF070
	.asciz "??(??)"
	.balign 4

.global lbl_803D2078
lbl_803D2078:

	# ROM: 0x3CF078
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000019
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000019
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D2180
lbl_803D2180:

	# ROM: 0x3CF180
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000023
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D2288
lbl_803D2288:

	# ROM: 0x3CF288
	.4byte 0x0000001E
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D2364
lbl_803D2364:

	# ROM: 0x3CF364
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x0000000E
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x0000000E
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000032
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D2440
lbl_803D2440:
	# ROM: 0x3CF440
	.float 0.45
	.float 0.52
	.float 0.35
	.float 0.1
	.float 0.15
	.float 0.35
	.float 0.1
	.float 0.15
	.float 0.15
	.float 0.15
	.float 0.15
	.float 0.15
	.float 0.15
	.float 0.15
	.float 0.35

.global lbl_803D247C
lbl_803D247C:
	# ROM: 0x3CF47C
	.asciz "Explode"
	.asciz "??(??)"
	.balign 4
	.asciz "GetUpNow"
	.byte 0x48, 0x65, 0x61
	.4byte 0x645F3100
	.asciz "L_gun_LCTR"
	.byte 0x4C
	.asciz "_Missile_LCTR"
	.byte 0x52, 0x5F
	.asciz "Missile_LCTR"
	.byte 0x53, 0x6B, 0x65
	.asciz "leton_Root"
	.byte 0x4A
	.asciz "etPack"
	.byte 0x53
	.asciz "cubaGear"
	.byte 0x53, 0x63, 0x75
	.asciz "baBubbles"
	.byte 0x53, 0x70
	.asciz "arks"
	.byte 0x4C, 0x61, 0x6E
	.asciz "dingSmoke"
	.byte 0x45, 0x79
	.4byte 0x65730043
	.asciz "ollar"
	.byte 0x52, 0x5F
	.asciz "shoulder"
	.byte 0x52, 0x5F, 0x65
	.asciz "lbow"
	.byte 0x52, 0x5F, 0x77
	.asciz "rist"
	.byte 0x4C, 0x5F, 0x73
	.asciz "houlder"
	.asciz "L_elbow"
	.asciz "L_wrist"
	.asciz "R_hip"
	.byte 0x52, 0x5F
	.asciz "knee"
	.byte 0x52, 0x5F, 0x61
	.asciz "nkle"
	.byte 0x4C, 0x5F, 0x68
	.4byte 0x6970004C
	.asciz "_knee"
	.byte 0x4C, 0x5F
	.asciz "ankle"
	.byte 0x72, 0x6F
	.asciz "cket_LCTR"
	.balign 4

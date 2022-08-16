.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CMetroid_cpp

.section .data
.balign 8

.global lbl_803E3AD8
lbl_803E3AD8:
	# ROM: 0x3E0AD8
	.4byte 0
	.4byte 0
	.4byte __dt__8CMetroid
	.4byte Accept__8CMetroidFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__8CMetroidFfR13CStateManager
	.4byte AcceptScriptMsg__8CMetroidF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__8CMetroidCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__8CMetroidCFv
	.4byte GetDamageVulnerability__8CMetroidCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__8CMetroidCFv
	.4byte Touch__8CMetroidFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__8CMetroidCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__8CMetroidFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__8CMetroidCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__8CMetroidFRC9CVector3fR13CStateManager
	.4byte KnockBack__8CMetroidFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__8CMetroidCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__8CMetroidCFv
	.4byte Patrol__8CMetroidFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__8CMetroidFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__8CMetroidFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__8CMetroidFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__8CMetroidFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__8CMetroidFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__8CMetroidFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__8CMetroidFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__8CMetroidFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__3CAiFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__8CMetroidFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__3CAiFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Growth__3CAiFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__3CAiFR13CStateManager9EStateMsgf
	.4byte Bounce__3CAiFR13CStateManager9EStateMsgf
	.4byte PathFindEx__3CAiFR13CStateManager9EStateMsgf
	.4byte Dizzy__3CAiFR13CStateManager9EStateMsgf
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__8CMetroidFR13CStateManagerf
	.4byte Leash__8CMetroidFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__8CMetroidFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__8CMetroidFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__8CMetroidFR13CStateManagerf
	.4byte SpotPlayer__8CMetroidFR13CStateManagerf
	.4byte PlayerSpot__10CPatternedFR13CStateManagerf
	.4byte PatternOver__10CPatternedFR13CStateManagerf
	.4byte PatternShagged__8CMetroidFR13CStateManagerf
	.4byte HasAttackPattern__10CPatternedFR13CStateManagerf
	.4byte HasPatrolPath__10CPatternedFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__10CPatternedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__8CMetroidFR13CStateManagerf
	.4byte ShouldAttack__8CMetroidFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__8CMetroidFR13CStateManagerf
	.4byte ShouldTurn__8CMetroidFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__10CPatternedFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__10CPatternedFR13CStateManagerf
	.4byte HearShot__3CAiFR13CStateManagerf
	.4byte HearPlayer__3CAiFR13CStateManagerf
	.4byte CoverCheck__3CAiFR13CStateManagerf
	.4byte CoverFind__3CAiFR13CStateManagerf
	.4byte CoverBlown__3CAiFR13CStateManagerf
	.4byte CoverNearlyBlown__3CAiFR13CStateManagerf
	.4byte CoveringFire__3CAiFR13CStateManagerf
	.4byte GotUp__3CAiFR13CStateManagerf
	.4byte LineOfSight__3CAiFR13CStateManagerf
	.4byte AggressionCheck__8CMetroidFR13CStateManagerf
	.4byte AttackOver__8CMetroidFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte Inside__8CMetroidFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__8CMetroidFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__3CAiFR13CStateManagerf
	.4byte ShotAt__8CMetroidFR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__8CMetroidFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__3CAiFR13CStateManagerf
	.4byte StartAttack__3CAiFR13CStateManagerf
	.4byte BreakAttack__3CAiFR13CStateManagerf
	.4byte ShouldStrafe__3CAiFR13CStateManagerf
	.4byte ShouldSpecialAttack__3CAiFR13CStateManagerf
	.4byte LostInterest__8CMetroidFR13CStateManagerf
	.4byte CodeTrigger__10CPatternedFR13CStateManagerf
	.4byte BounceFind__3CAiFR13CStateManagerf
	.4byte Random__10CPatternedFR13CStateManagerf
	.4byte FixedRandom__10CPatternedFR13CStateManagerf
	.4byte IsDizzy__3CAiFR13CStateManagerf
	.4byte ShouldCallForBackup__3CAiFR13CStateManagerf
	.4byte Freeze__10CPatternedFRC9CVector3f13CUnitVector3ff
	.4byte KnockbackWhenFrozen__10CPatternedCFv
	.4byte MassiveDeath__10CPatternedFR13CStateManager
	.4byte MassiveFrozenDeath__10CPatternedFR13CStateManager
	.4byte Burn__10CPatternedFff
	.4byte Shock__10CPatternedFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte GetSearchPath__8CMetroidFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7950
lbl_805A7950:
	# ROM: 0x3F52F0
	.4byte 0

.global lbl_805A7954
lbl_805A7954:
	# ROM: 0x3F52F4
	.float 1.0

.global lbl_805A7958
lbl_805A7958:
	# ROM: 0x3F52F8
	.4byte 0x00000013

.global lbl_805A795C
lbl_805A795C:
	# ROM: 0x3F52FC
	.4byte 0

.global lbl_805A7960
lbl_805A7960:
	# ROM: 0x3F5300
	.float 1.0

.global lbl_805A7964
lbl_805A7964:
	# ROM: 0x3F5304
	.byte 0x00

.global lbl_805A7965
lbl_805A7965:
	# ROM: 0x3F5305
	.byte 0x7F, 0x00, 0x00

.global lbl_805A7968
lbl_805A7968:
	# ROM: 0x3F5308
	.4byte 0x00000013

.global lbl_805A796C
lbl_805A796C:
	# ROM: 0x3F530C
	.4byte 0x00000030

.global lbl_805A7970
lbl_805A7970:
	# ROM: 0x3F5310
	.4byte 0x00000021

.global lbl_805A7974
lbl_805A7974:
	# ROM: 0x3F5314
	.4byte 0x00000023

.global lbl_805A7978
lbl_805A7978:
	# ROM: 0x3F5318
	.4byte 0

.global lbl_805A797C
lbl_805A797C:
	# ROM: 0x3F531C
	.float 1.0

.global lbl_805A7980
lbl_805A7980:
	# ROM: 0x3F5320
	.4byte 0

.global lbl_805A7984
lbl_805A7984:
	# ROM: 0x3F5324
	.float 1.0

.global lbl_805A7988
lbl_805A7988:
	# ROM: 0x3F5328
	.4byte 0x00000021

.global lbl_805A798C
lbl_805A798C:
	# ROM: 0x3F532C
	.4byte 0

.global lbl_805A7990
lbl_805A7990:
	# ROM: 0x3F5330
	.float 1.0

.global lbl_805A7994
lbl_805A7994:
	# ROM: 0x3F5334
	.4byte 0x00000013

.global lbl_805A7998
lbl_805A7998:
	# ROM: 0x3F5338
	.4byte 0x00000030

.global lbl_805A799C
lbl_805A799C:
	# ROM: 0x3F533C
	.4byte 0x00000013

.global lbl_805A79A0
lbl_805A79A0:
	# ROM: 0x3F5340
	.4byte 0x00000030

.global lbl_805A79A4
lbl_805A79A4:
	# ROM: 0x3F5344
	.4byte 0x00000021

.global lbl_805A79A8
lbl_805A79A8:
	# ROM: 0x3F5348
	.4byte 0x00000020

.global lbl_805A79AC
lbl_805A79AC:
	# ROM: 0x3F534C
	.float 1.0

.global lbl_805A79B0
lbl_805A79B0:
	# ROM: 0x3F5350
	.4byte 0x00000013

.global lbl_805A79B4
lbl_805A79B4:
	# ROM: 0x3F5354
	.4byte 0x00000030

.global lbl_805A79B8
lbl_805A79B8:
	# ROM: 0x3F5358
	.4byte 0x00000013

.global lbl_805A79BC
lbl_805A79BC:
	# ROM: 0x3F535C
	.4byte 0x00000020

.global lbl_805A79C0
lbl_805A79C0:
	# ROM: 0x3F5360
	.4byte 0x00000021

.global lbl_805A79C4
lbl_805A79C4:
	# ROM: 0x3F5364
	.4byte 0x00000021

.global lbl_805A79C8
lbl_805A79C8:
	# ROM: 0x3F5368
	.4byte 0x00000020

.global lbl_805A79CC
lbl_805A79CC:
	# ROM: 0x3F536C
	.4byte 0x00000021

.global lbl_805A79D0
lbl_805A79D0:
	# ROM: 0x3F5370
	.4byte 0x00000020

.global lbl_805A79D4
lbl_805A79D4:
	# ROM: 0x3F5374
	.4byte 0

.global lbl_805A79D8
lbl_805A79D8:
	# ROM: 0x3F5378
	.float 1.0
	.4byte 0

.section .bss
.balign 8

.comm lbl_80571C64, 0x208, 4
.comm lbl_80571E6C, 0x68, 4
.comm lbl_80571ED4, 0x68, 4
.comm lbl_80571F3C, 0x68, 4
.comm lbl_80571FA4, 0x68, 4

.section .sbss
.balign 8

.global lbl_805A8FE8
lbl_805A8FE8:
	.skip 0x4
.global lbl_805A8FEC
lbl_805A8FEC:
	.skip 0x4
.global lbl_805A8FF0
lbl_805A8FF0:
	.skip 0x4
.global lbl_805A8FF4
lbl_805A8FF4:
	.skip 0x4

.section .text, "ax"

.global GetSearchPath__8CMetroidFv
GetSearchPath__8CMetroidFv:
/* 80169FB8 00166F18  38 63 06 C0 */	addi r3, r3, 0x6c0
/* 80169FBC 00166F1C  4E 80 00 20 */	blr

.global IsListening__8CMetroidCFv
IsListening__8CMetroidCFv:
/* 80169FC0 00166F20  38 60 00 01 */	li r3, 1
/* 80169FC4 00166F24  4E 80 00 20 */	blr

.global sub_80169fc8
sub_80169fc8:
/* 80169FC8 00166F28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80169FCC 00166F2C  7C 08 02 A6 */	mflr r0
/* 80169FD0 00166F30  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 80169FD4 00166F34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80169FD8 00166F38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80169FDC 00166F3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80169FE0 00166F40  7C 9E 23 78 */	mr r30, r4
/* 80169FE4 00166F44  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80169FE8 00166F48  7C 7D 1B 78 */	mr r29, r3
/* 80169FEC 00166F4C  C0 23 07 B4 */	lfs f1, 0x7b4(r3)
/* 80169FF0 00166F50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80169FF4 00166F54  4C 40 13 82 */	cror 2, 0, 2
/* 80169FF8 00166F58  40 82 00 BC */	bne lbl_8016A0B4
/* 80169FFC 00166F5C  83 FE 08 4C */	lwz r31, 0x84c(r30)
/* 8016A000 00166F60  A0 BD 07 B0 */	lhz r5, 0x7b0(r29)
/* 8016A004 00166F64  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8016A008 00166F68  7C 05 00 40 */	cmplw r5, r0
/* 8016A00C 00166F6C  40 82 00 60 */	bne lbl_8016A06C
/* 8016A010 00166F70  48 00 01 71 */	bl sub_8016a180
/* 8016A014 00166F74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A018 00166F78  40 82 00 20 */	bne lbl_8016A038
/* 8016A01C 00166F7C  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8016A020 00166F80  2C 00 00 01 */	cmpwi r0, 1
/* 8016A024 00166F84  40 82 00 1C */	bne lbl_8016A040
/* 8016A028 00166F88  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8016A02C 00166F8C  80 03 18 7C */	lwz r0, 0x187c(r3)
/* 8016A030 00166F90  2C 00 00 01 */	cmpwi r0, 1
/* 8016A034 00166F94  40 82 00 0C */	bne lbl_8016A040
lbl_8016A038:
/* 8016A038 00166F98  38 60 00 00 */	li r3, 0
/* 8016A03C 00166F9C  48 00 00 7C */	b lbl_8016A0B8
lbl_8016A040:
/* 8016A040 00166FA0  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8016A044 00166FA4  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 8016A048 00166FA8  2C 00 00 01 */	cmpwi r0, 1
/* 8016A04C 00166FAC  41 82 00 20 */	beq lbl_8016A06C
/* 8016A050 00166FB0  7F A3 EB 78 */	mr r3, r29
/* 8016A054 00166FB4  7F C4 F3 78 */	mr r4, r30
/* 8016A058 00166FB8  48 00 04 C5 */	bl sub_8016a51c
/* 8016A05C 00166FBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A060 00166FC0  41 82 00 0C */	beq lbl_8016A06C
/* 8016A064 00166FC4  38 60 00 00 */	li r3, 0
/* 8016A068 00166FC8  48 00 00 50 */	b lbl_8016A0B8
lbl_8016A06C:
/* 8016A06C 00166FCC  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016A070 00166FD0  7F C3 F3 78 */	mr r3, r30
/* 8016A074 00166FD4  38 81 00 08 */	addi r4, r1, 8
/* 8016A078 00166FD8  B0 01 00 08 */	sth r0, 8(r1)
/* 8016A07C 00166FDC  4B EE 25 29 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016A080 00166FE0  28 03 00 00 */	cmplwi r3, 0
/* 8016A084 00166FE4  41 82 00 30 */	beq lbl_8016A0B4
/* 8016A088 00166FE8  80 63 00 04 */	lwz r3, 4(r3)
/* 8016A08C 00166FEC  80 1D 00 04 */	lwz r0, 4(r29)
/* 8016A090 00166FF0  7C 03 00 00 */	cmpw r3, r0
/* 8016A094 00166FF4  40 82 00 20 */	bne lbl_8016A0B4
/* 8016A098 00166FF8  7F A3 EB 78 */	mr r3, r29
/* 8016A09C 00166FFC  7F C4 F3 78 */	mr r4, r30
/* 8016A0A0 00167000  48 00 05 49 */	bl sub_8016a5e8
/* 8016A0A4 00167004  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8016A0A8 00167008  7C 00 00 34 */	cntlzw r0, r0
/* 8016A0AC 0016700C  54 03 D9 7E */	srwi r3, r0, 5
/* 8016A0B0 00167010  48 00 00 08 */	b lbl_8016A0B8
lbl_8016A0B4:
/* 8016A0B4 00167014  38 60 00 00 */	li r3, 0
lbl_8016A0B8:
/* 8016A0B8 00167018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016A0BC 0016701C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016A0C0 00167020  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016A0C4 00167024  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8016A0C8 00167028  7C 08 03 A6 */	mtlr r0
/* 8016A0CC 0016702C  38 21 00 20 */	addi r1, r1, 0x20
/* 8016A0D0 00167030  4E 80 00 20 */	blr

.global sub_8016a0d4
sub_8016a0d4:
/* 8016A0D4 00167034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016A0D8 00167038  7C 08 02 A6 */	mflr r0
/* 8016A0DC 0016703C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016A0E0 00167040  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8016A0E4 00167044  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8016A0E8 00167048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8016A0EC 0016704C  93 C1 00 08 */	stw r30, 8(r1)
/* 8016A0F0 00167050  FF E0 08 90 */	fmr f31, f1
/* 8016A0F4 00167054  7C 7E 1B 78 */	mr r30, r3
/* 8016A0F8 00167058  7C 9F 23 78 */	mr r31, r4
/* 8016A0FC 0016705C  48 00 04 ED */	bl sub_8016a5e8
/* 8016A100 00167060  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A104 00167064  41 82 00 20 */	beq lbl_8016A124
/* 8016A108 00167068  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 8016A10C 0016706C  48 1A 83 D1 */	bl Float__9CRandom16Fv
/* 8016A110 00167070  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 8016A114 00167074  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 8016A118 00167078  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8016A11C 0016707C  D0 1E 07 B4 */	stfs f0, 0x7b4(r30)
/* 8016A120 00167080  48 00 00 40 */	b lbl_8016A160
lbl_8016A124:
/* 8016A124 00167084  C0 3E 07 B4 */	lfs f1, 0x7b4(r30)
/* 8016A128 00167088  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016A12C 0016708C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016A130 00167090  40 81 00 30 */	ble lbl_8016A160
/* 8016A134 00167094  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8016A138 00167098  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 8016A13C 0016709C  2C 00 00 01 */	cmpwi r0, 1
/* 8016A140 001670A0  40 82 00 10 */	bne lbl_8016A150
/* 8016A144 001670A4  C0 02 A0 84 */	lfs f0, lbl_805ABDA4@sda21(r2)
/* 8016A148 001670A8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8016A14C 001670AC  48 00 00 08 */	b lbl_8016A154
lbl_8016A150:
/* 8016A150 001670B0  FC 20 F8 90 */	fmr f1, f31
lbl_8016A154:
/* 8016A154 001670B4  C0 1E 07 B4 */	lfs f0, 0x7b4(r30)
/* 8016A158 001670B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8016A15C 001670BC  D0 1E 07 B4 */	stfs f0, 0x7b4(r30)
lbl_8016A160:
/* 8016A160 001670C0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8016A164 001670C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016A168 001670C8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8016A16C 001670CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8016A170 001670D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8016A174 001670D4  7C 08 03 A6 */	mtlr r0
/* 8016A178 001670D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8016A17C 001670DC  4E 80 00 20 */	blr

.global sub_8016a180
sub_8016a180:
/* 8016A180 001670E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8016A184 001670E4  7C 08 02 A6 */	mflr r0
/* 8016A188 001670E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8016A18C 001670EC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8016A190 001670F0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8016A194 001670F4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8016A198 001670F8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8016A19C 001670FC  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8016A1A0 00167100  7C 9E 23 78 */	mr r30, r4
/* 8016A1A4 00167104  88 1F 00 E6 */	lbz r0, 0xe6(r31)
/* 8016A1A8 00167108  54 00 DF 7F */	rlwinm. r0, r0, 0x1b, 0x1d, 0x1f
/* 8016A1AC 0016710C  41 82 00 8C */	beq lbl_8016A238
/* 8016A1B0 00167110  A0 7F 00 C4 */	lhz r3, 0xc4(r31)
/* 8016A1B4 00167114  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016A1B8 00167118  7C 03 00 40 */	cmplw r3, r0
/* 8016A1BC 0016711C  41 82 00 74 */	beq lbl_8016A230
/* 8016A1C0 00167120  7F E4 FB 78 */	mr r4, r31
/* 8016A1C4 00167124  7F C5 F3 78 */	mr r5, r30
/* 8016A1C8 00167128  81 9F 00 00 */	lwz r12, 0(r31)
/* 8016A1CC 0016712C  38 61 00 18 */	addi r3, r1, 0x18
/* 8016A1D0 00167130  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016A1D4 00167134  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8016A1D8 00167138  7D 89 03 A6 */	mtctr r12
/* 8016A1DC 0016713C  4E 80 04 21 */	bctrl
/* 8016A1E0 00167140  A0 1F 00 C4 */	lhz r0, 0xc4(r31)
/* 8016A1E4 00167144  7F C3 F3 78 */	mr r3, r30
/* 8016A1E8 00167148  C3 E1 00 20 */	lfs f31, 0x20(r1)
/* 8016A1EC 0016714C  38 81 00 0C */	addi r4, r1, 0xc
/* 8016A1F0 00167150  B0 01 00 08 */	sth r0, 8(r1)
/* 8016A1F4 00167154  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016A1F8 00167158  4B EE 23 AD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016A1FC 0016715C  7C 64 1B 78 */	mr r4, r3
/* 8016A200 00167160  38 61 00 10 */	addi r3, r1, 0x10
/* 8016A204 00167164  4B F3 C6 5D */	bl "__ct__26TCastToPtr<12CScriptWater>FP7CEntity"
/* 8016A208 00167168  80 83 00 04 */	lwz r4, 4(r3)
/* 8016A20C 0016716C  28 04 00 00 */	cmplwi r4, 0
/* 8016A210 00167170  41 82 00 20 */	beq lbl_8016A230
/* 8016A214 00167174  38 61 00 24 */	addi r3, r1, 0x24
/* 8016A218 00167178  4B F0 C4 B5 */	bl GetTriggerBoundsWR__14CScriptTriggerCFv
/* 8016A21C 0016717C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8016A220 00167180  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8016A224 00167184  7C 00 00 26 */	mfcr r0
/* 8016A228 00167188  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8016A22C 0016718C  48 00 00 10 */	b lbl_8016A23C
lbl_8016A230:
/* 8016A230 00167190  38 60 00 01 */	li r3, 1
/* 8016A234 00167194  48 00 00 08 */	b lbl_8016A23C
lbl_8016A238:
/* 8016A238 00167198  38 60 00 00 */	li r3, 0
lbl_8016A23C:
/* 8016A23C 0016719C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8016A240 001671A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8016A244 001671A4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8016A248 001671A8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8016A24C 001671AC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8016A250 001671B0  7C 08 03 A6 */	mtlr r0
/* 8016A254 001671B4  38 21 00 60 */	addi r1, r1, 0x60
/* 8016A258 001671B8  4E 80 00 20 */	blr

.global GetOrigin__8CMetroidCFv
GetOrigin__8CMetroidCFv:
/* 8016A25C 001671BC  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8016A260 001671C0  7C 08 02 A6 */	mflr r0
/* 8016A264 001671C4  90 01 01 14 */	stw r0, 0x114(r1)
/* 8016A268 001671C8  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8016A26C 001671CC  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 8016A270 001671D0  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8016A274 001671D4  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 8016A278 001671D8  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 8016A27C 001671DC  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 8016A280 001671E0  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 8016A284 001671E4  F3 81 00 D8 */	psq_st f28, 216(r1), 0, qr0
/* 8016A288 001671E8  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8016A28C 001671EC  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 8016A290 001671F0  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 8016A294 001671F4  C0 24 02 FC */	lfs f1, 0x2fc(r4)
/* 8016A298 001671F8  7C 9E 23 78 */	mr r30, r4
/* 8016A29C 001671FC  C0 04 03 00 */	lfs f0, 0x300(r4)
/* 8016A2A0 00167200  7C 7D 1B 78 */	mr r29, r3
/* 8016A2A4 00167204  83 E5 08 4C */	lwz r31, 0x84c(r5)
/* 8016A2A8 00167208  EC 01 00 2A */	fadds f0, f1, f0
/* 8016A2AC 0016720C  C0 A2 A0 88 */	lfs f5, lbl_805ABDA8@sda21(r2)
/* 8016A2B0 00167210  A0 C4 07 B0 */	lhz r6, 0x7b0(r4)
/* 8016A2B4 00167214  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8016A2B8 00167218  EF C5 00 32 */	fmuls f30, f5, f0
/* 8016A2BC 0016721C  C3 A4 00 60 */	lfs f29, 0x60(r4)
/* 8016A2C0 00167220  7C 00 30 40 */	cmplw r0, r6
/* 8016A2C4 00167224  C3 84 00 50 */	lfs f28, 0x50(r4)
/* 8016A2C8 00167228  C3 E4 00 40 */	lfs f31, 0x40(r4)
/* 8016A2CC 0016722C  40 82 01 08 */	bne lbl_8016A3D4
/* 8016A2D0 00167230  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8016A2D4 00167234  2C 00 00 01 */	cmpwi r0, 1
/* 8016A2D8 00167238  40 82 00 D0 */	bne lbl_8016A3A8
/* 8016A2DC 0016723C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8016A2E0 00167240  38 61 00 20 */	addi r3, r1, 0x20
/* 8016A2E4 00167244  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8016A2E8 00167248  EC 5C 08 28 */	fsubs f2, f28, f1
/* 8016A2EC 0016724C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8016A2F0 00167250  EC 3F 00 28 */	fsubs f1, f31, f0
/* 8016A2F4 00167254  D3 E1 00 88 */	stfs f31, 0x88(r1)
/* 8016A2F8 00167258  EC 1D 18 28 */	fsubs f0, f29, f3
/* 8016A2FC 0016725C  D3 81 00 8C */	stfs f28, 0x8c(r1)
/* 8016A300 00167260  D3 A1 00 90 */	stfs f29, 0x90(r1)
/* 8016A304 00167264  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8016A308 00167268  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8016A30C 0016726C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8016A310 00167270  48 1A 9E F1 */	bl __ct__9CVector2fFff
/* 8016A314 00167274  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8016A318 00167278  38 61 00 AC */	addi r3, r1, 0xac
/* 8016A31C 0016727C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8016A320 00167280  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016A324 00167284  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8016A328 00167288  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 8016A32C 0016728C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8016A330 00167290  48 1A A3 C9 */	bl CanBeNormalized__9CVector3fCFv
/* 8016A334 00167294  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A338 00167298  41 82 00 18 */	beq lbl_8016A350
/* 8016A33C 0016729C  38 61 00 7C */	addi r3, r1, 0x7c
/* 8016A340 001672A0  38 81 00 AC */	addi r4, r1, 0xac
/* 8016A344 001672A4  48 1A A5 0D */	bl AsNormalized__9CVector3fCFv
/* 8016A348 001672A8  38 61 00 7C */	addi r3, r1, 0x7c
/* 8016A34C 001672AC  48 00 00 20 */	b lbl_8016A36C
lbl_8016A350:
/* 8016A350 001672B0  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8016A354 001672B4  38 61 00 70 */	addi r3, r1, 0x70
/* 8016A358 001672B8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8016A35C 001672BC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8016A360 001672C0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8016A364 001672C4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8016A368 001672C8  D0 41 00 78 */	stfs f2, 0x78(r1)
lbl_8016A36C:
/* 8016A36C 001672CC  C0 23 00 00 */	lfs f1, 0(r3)
/* 8016A370 001672D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8016A374 001672D4  EC 5E 00 72 */	fmuls f2, f30, f1
/* 8016A378 001672D8  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 8016A37C 001672DC  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8016A380 001672E0  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8016A384 001672E4  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 8016A388 001672E8  C0 02 A0 88 */	lfs f0, lbl_805ABDA8@sda21(r2)
/* 8016A38C 001672EC  EF E5 10 2A */	fadds f31, f5, f2
/* 8016A390 001672F0  D0 A1 00 64 */	stfs f5, 0x64(r1)
/* 8016A394 001672F4  EF 84 08 2A */	fadds f28, f4, f1
/* 8016A398 001672F8  EF A0 18 2A */	fadds f29, f0, f3
/* 8016A39C 001672FC  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 8016A3A0 00167300  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 8016A3A4 00167304  48 00 01 30 */	b lbl_8016A4D4
lbl_8016A3A8:
/* 8016A3A8 00167308  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8016A3AC 0016730C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8016A3B0 00167310  EC 7E 00 32 */	fmuls f3, f30, f0
/* 8016A3B4 00167314  C0 87 00 00 */	lfs f4, 0(r7)
/* 8016A3B8 00167318  C0 07 00 08 */	lfs f0, 8(r7)
/* 8016A3BC 0016731C  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8016A3C0 00167320  C0 47 00 04 */	lfs f2, 4(r7)
/* 8016A3C4 00167324  EF E4 18 2A */	fadds f31, f4, f3
/* 8016A3C8 00167328  EF 82 08 2A */	fadds f28, f2, f1
/* 8016A3CC 0016732C  EF A5 00 2A */	fadds f29, f5, f0
/* 8016A3D0 00167330  48 00 01 04 */	b lbl_8016A4D4
lbl_8016A3D4:
/* 8016A3D4 00167334  B0 C1 00 08 */	sth r6, 8(r1)
/* 8016A3D8 00167338  7C A3 2B 78 */	mr r3, r5
/* 8016A3DC 0016733C  38 81 00 0C */	addi r4, r1, 0xc
/* 8016A3E0 00167340  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 8016A3E4 00167344  4B EE 21 C1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016A3E8 00167348  7C 64 1B 78 */	mr r4, r3
/* 8016A3EC 0016734C  38 61 00 10 */	addi r3, r1, 0x10
/* 8016A3F0 00167350  4B F4 58 A1 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016A3F4 00167354  83 E3 00 04 */	lwz r31, 4(r3)
/* 8016A3F8 00167358  28 1F 00 00 */	cmplwi r31, 0
/* 8016A3FC 0016735C  41 82 00 D8 */	beq lbl_8016A4D4
/* 8016A400 00167360  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 8016A404 00167364  38 61 00 18 */	addi r3, r1, 0x18
/* 8016A408 00167368  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8016A40C 0016736C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016A410 00167370  EC 44 08 28 */	fsubs f2, f4, f1
/* 8016A414 00167374  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8016A418 00167378  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 8016A41C 0016737C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8016A420 00167380  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016A424 00167384  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8016A428 00167388  EC 65 18 28 */	fsubs f3, f5, f3
/* 8016A42C 0016738C  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 8016A430 00167390  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 8016A434 00167394  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8016A438 00167398  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8016A43C 0016739C  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 8016A440 001673A0  48 1A 9D C1 */	bl __ct__9CVector2fFff
/* 8016A444 001673A4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8016A448 001673A8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8016A44C 001673AC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8016A450 001673B0  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016A454 001673B4  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8016A458 001673B8  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8016A45C 001673BC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8016A460 001673C0  48 1A A2 99 */	bl CanBeNormalized__9CVector3fCFv
/* 8016A464 001673C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A468 001673C8  41 82 00 18 */	beq lbl_8016A480
/* 8016A46C 001673CC  38 61 00 40 */	addi r3, r1, 0x40
/* 8016A470 001673D0  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8016A474 001673D4  48 1A A3 DD */	bl AsNormalized__9CVector3fCFv
/* 8016A478 001673D8  38 61 00 40 */	addi r3, r1, 0x40
/* 8016A47C 001673DC  48 00 00 20 */	b lbl_8016A49C
lbl_8016A480:
/* 8016A480 001673E0  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8016A484 001673E4  38 61 00 34 */	addi r3, r1, 0x34
/* 8016A488 001673E8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8016A48C 001673EC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8016A490 001673F0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8016A494 001673F4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8016A498 001673F8  D0 41 00 3C */	stfs f2, 0x3c(r1)
lbl_8016A49C:
/* 8016A49C 001673FC  C0 23 00 00 */	lfs f1, 0(r3)
/* 8016A4A0 00167400  C0 03 00 04 */	lfs f0, 4(r3)
/* 8016A4A4 00167404  EC 5E 00 72 */	fmuls f2, f30, f1
/* 8016A4A8 00167408  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 8016A4AC 0016740C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8016A4B0 00167410  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8016A4B4 00167414  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 8016A4B8 00167418  C0 02 A0 88 */	lfs f0, lbl_805ABDA8@sda21(r2)
/* 8016A4BC 0016741C  EF E5 10 2A */	fadds f31, f5, f2
/* 8016A4C0 00167420  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8016A4C4 00167424  EF 84 08 2A */	fadds f28, f4, f1
/* 8016A4C8 00167428  EF A0 18 2A */	fadds f29, f0, f3
/* 8016A4CC 0016742C  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8016A4D0 00167430  D0 61 00 30 */	stfs f3, 0x30(r1)
lbl_8016A4D4:
/* 8016A4D4 00167434  D3 FD 00 00 */	stfs f31, 0(r29)
/* 8016A4D8 00167438  D3 9D 00 04 */	stfs f28, 4(r29)
/* 8016A4DC 0016743C  D3 BD 00 08 */	stfs f29, 8(r29)
/* 8016A4E0 00167440  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 8016A4E4 00167444  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8016A4E8 00167448  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 8016A4EC 0016744C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8016A4F0 00167450  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 8016A4F4 00167454  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 8016A4F8 00167458  E3 81 00 D8 */	psq_l f28, 216(r1), 0, qr0
/* 8016A4FC 0016745C  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 8016A500 00167460  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8016A504 00167464  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8016A508 00167468  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8016A50C 0016746C  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 8016A510 00167470  7C 08 03 A6 */	mtlr r0
/* 8016A514 00167474  38 21 01 10 */	addi r1, r1, 0x110
/* 8016A518 00167478  4E 80 00 20 */	blr

.global sub_8016a51c
sub_8016a51c:
/* 8016A51C 0016747C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016A520 00167480  7C 08 02 A6 */	mflr r0
/* 8016A524 00167484  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016A528 00167488  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016A52C 0016748C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016A530 00167490  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8016A534 00167494  7C 9D 23 78 */	mr r29, r4
/* 8016A538 00167498  38 81 00 0C */	addi r4, r1, 0xc
/* 8016A53C 0016749C  A0 03 06 98 */	lhz r0, 0x698(r3)
/* 8016A540 001674A0  7F A3 EB 78 */	mr r3, r29
/* 8016A544 001674A4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016A548 001674A8  4B EE 20 5D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016A54C 001674AC  7C 64 1B 78 */	mr r4, r3
/* 8016A550 001674B0  38 61 00 14 */	addi r3, r1, 0x14
/* 8016A554 001674B4  4B F3 D0 21 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8016A558 001674B8  83 C3 00 04 */	lwz r30, 4(r3)
/* 8016A55C 001674BC  28 1E 00 00 */	cmplwi r30, 0
/* 8016A560 001674C0  41 82 00 68 */	beq lbl_8016A5C8
/* 8016A564 001674C4  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8016A568 001674C8  28 00 00 00 */	cmplwi r0, 0
/* 8016A56C 001674CC  41 82 00 5C */	beq lbl_8016A5C8
/* 8016A570 001674D0  83 FE 00 84 */	lwz r31, 0x84(r30)
/* 8016A574 001674D4  48 00 00 3C */	b lbl_8016A5B0
lbl_8016A578:
/* 8016A578 001674D8  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8016A57C 001674DC  7F A3 EB 78 */	mr r3, r29
/* 8016A580 001674E0  38 81 00 08 */	addi r4, r1, 8
/* 8016A584 001674E4  B0 01 00 08 */	sth r0, 8(r1)
/* 8016A588 001674E8  4B EE 20 1D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016A58C 001674EC  7C 64 1B 78 */	mr r4, r3
/* 8016A590 001674F0  38 61 00 10 */	addi r3, r1, 0x10
/* 8016A594 001674F4  4B F3 AF 0D */	bl sub_800a54a0
/* 8016A598 001674F8  4B F3 AE DD */	bl "CastTo<12CMetroidBeta>__10CPatternedFP7CEntity"
/* 8016A59C 001674FC  28 03 00 00 */	cmplwi r3, 0
/* 8016A5A0 00167500  41 82 00 0C */	beq lbl_8016A5AC
/* 8016A5A4 00167504  38 60 00 01 */	li r3, 1
/* 8016A5A8 00167508  48 00 00 24 */	b lbl_8016A5CC
lbl_8016A5AC:
/* 8016A5AC 0016750C  3B FF 00 02 */	addi r31, r31, 2
lbl_8016A5B0:
/* 8016A5B0 00167510  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8016A5B4 00167514  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8016A5B8 00167518  54 00 08 3C */	slwi r0, r0, 1
/* 8016A5BC 0016751C  7C 03 02 14 */	add r0, r3, r0
/* 8016A5C0 00167520  7C 1F 00 40 */	cmplw r31, r0
/* 8016A5C4 00167524  40 82 FF B4 */	bne lbl_8016A578
lbl_8016A5C8:
/* 8016A5C8 00167528  38 60 00 00 */	li r3, 0
lbl_8016A5CC:
/* 8016A5CC 0016752C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016A5D0 00167530  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016A5D4 00167534  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016A5D8 00167538  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8016A5DC 0016753C  7C 08 03 A6 */	mtlr r0
/* 8016A5E0 00167540  38 21 00 30 */	addi r1, r1, 0x30
/* 8016A5E4 00167544  4E 80 00 20 */	blr

.global sub_8016a5e8
sub_8016a5e8:
/* 8016A5E8 00167548  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016A5EC 0016754C  7C 08 02 A6 */	mflr r0
/* 8016A5F0 00167550  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016A5F4 00167554  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016A5F8 00167558  7C 9F 23 78 */	mr r31, r4
/* 8016A5FC 0016755C  38 81 00 0C */	addi r4, r1, 0xc
/* 8016A600 00167560  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016A604 00167564  7C 7E 1B 78 */	mr r30, r3
/* 8016A608 00167568  A0 03 07 B0 */	lhz r0, 0x7b0(r3)
/* 8016A60C 0016756C  7F E3 FB 78 */	mr r3, r31
/* 8016A610 00167570  B0 01 00 08 */	sth r0, 8(r1)
/* 8016A614 00167574  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016A618 00167578  4B EE 1F 8D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016A61C 0016757C  7C 64 1B 78 */	mr r4, r3
/* 8016A620 00167580  38 61 00 14 */	addi r3, r1, 0x14
/* 8016A624 00167584  4B F4 56 6D */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016A628 00167588  80 83 00 04 */	lwz r4, 4(r3)
/* 8016A62C 0016758C  28 04 00 00 */	cmplwi r4, 0
/* 8016A630 00167590  41 82 00 74 */	beq lbl_8016A6A4
/* 8016A634 00167594  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8016A638 00167598  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 8016A63C 0016759C  A0 65 00 08 */	lhz r3, 8(r5)
/* 8016A640 001675A0  7C 03 00 40 */	cmplw r3, r0
/* 8016A644 001675A4  40 82 00 28 */	bne lbl_8016A66C
/* 8016A648 001675A8  A0 65 02 6C */	lhz r3, 0x26c(r5)
/* 8016A64C 001675AC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016A650 001675B0  7C 03 00 40 */	cmplw r3, r0
/* 8016A654 001675B4  41 82 00 50 */	beq lbl_8016A6A4
/* 8016A658 001675B8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016A65C 001675BC  7C 03 00 40 */	cmplw r3, r0
/* 8016A660 001675C0  41 82 00 44 */	beq lbl_8016A6A4
/* 8016A664 001675C4  38 60 00 01 */	li r3, 1
/* 8016A668 001675C8  48 00 00 40 */	b lbl_8016A6A8
lbl_8016A66C:
/* 8016A66C 001675CC  38 61 00 10 */	addi r3, r1, 0x10
/* 8016A670 001675D0  4B F3 AD 61 */	bl sub_800a53d0
/* 8016A674 001675D4  4B F3 AD 31 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 8016A678 001675D8  28 03 00 00 */	cmplwi r3, 0
/* 8016A67C 001675DC  41 82 00 28 */	beq lbl_8016A6A4
/* 8016A680 001675E0  A0 63 07 B4 */	lhz r3, 0x7b4(r3)
/* 8016A684 001675E4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016A688 001675E8  7C 03 00 40 */	cmplw r3, r0
/* 8016A68C 001675EC  41 82 00 18 */	beq lbl_8016A6A4
/* 8016A690 001675F0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016A694 001675F4  7C 03 00 40 */	cmplw r3, r0
/* 8016A698 001675F8  41 82 00 0C */	beq lbl_8016A6A4
/* 8016A69C 001675FC  38 60 00 01 */	li r3, 1
/* 8016A6A0 00167600  48 00 00 08 */	b lbl_8016A6A8
lbl_8016A6A4:
/* 8016A6A4 00167604  38 60 00 00 */	li r3, 0
lbl_8016A6A8:
/* 8016A6A8 00167608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016A6AC 0016760C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016A6B0 00167610  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016A6B4 00167614  7C 08 03 A6 */	mtlr r0
/* 8016A6B8 00167618  38 21 00 30 */	addi r1, r1, 0x30
/* 8016A6BC 0016761C  4E 80 00 20 */	blr

.global sub_8016a6c0
sub_8016a6c0:
/* 8016A6C0 00167620  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8016A6C4 00167624  7C 08 02 A6 */	mflr r0
/* 8016A6C8 00167628  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8016A6CC 0016762C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8016A6D0 00167630  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8016A6D4 00167634  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8016A6D8 00167638  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8016A6DC 0016763C  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8016A6E0 00167640  7C 9D 23 78 */	mr r29, r4
/* 8016A6E4 00167644  C3 E2 A0 80 */	lfs f31, lbl_805ABDA0@sda21(r2)
/* 8016A6E8 00167648  80 84 00 64 */	lwz r4, 0x64(r4)
/* 8016A6EC 0016764C  38 60 00 00 */	li r3, 0
/* 8016A6F0 00167650  28 04 00 00 */	cmplwi r4, 0
/* 8016A6F4 00167654  41 82 00 20 */	beq lbl_8016A714
/* 8016A6F8 00167658  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8016A6FC 0016765C  28 00 00 00 */	cmplwi r0, 0
/* 8016A700 00167660  40 82 00 10 */	bne lbl_8016A710
/* 8016A704 00167664  88 04 00 28 */	lbz r0, 0x28(r4)
/* 8016A708 00167668  28 00 00 00 */	cmplwi r0, 0
/* 8016A70C 0016766C  41 82 00 08 */	beq lbl_8016A714
lbl_8016A710:
/* 8016A710 00167670  38 60 00 01 */	li r3, 1
lbl_8016A714:
/* 8016A714 00167674  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A718 00167678  41 82 00 80 */	beq lbl_8016A798
/* 8016A71C 0016767C  3C 60 80 3D */	lis r3, lbl_803D04D8@ha
/* 8016A720 00167680  3B C0 00 00 */	li r30, 0
/* 8016A724 00167684  3B E3 04 D8 */	addi r31, r3, lbl_803D04D8@l
lbl_8016A728:
/* 8016A728 00167688  80 9F 00 00 */	lwz r4, 0(r31)
/* 8016A72C 0016768C  38 61 00 14 */	addi r3, r1, 0x14
/* 8016A730 00167690  4B E9 A5 89 */	bl string_l__4rstlFPCc
/* 8016A734 00167694  7F A4 EB 78 */	mr r4, r29
/* 8016A738 00167698  38 61 00 24 */	addi r3, r1, 0x24
/* 8016A73C 0016769C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8016A740 001676A0  4B EE 87 C1 */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8016A744 001676A4  38 61 00 54 */	addi r3, r1, 0x54
/* 8016A748 001676A8  38 81 00 24 */	addi r4, r1, 0x24
/* 8016A74C 001676AC  48 1A 84 29 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8016A750 001676B0  38 61 00 14 */	addi r3, r1, 0x14
/* 8016A754 001676B4  48 1D 33 8D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8016A758 001676B8  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8016A75C 001676BC  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8016A760 001676C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8016A764 001676C4  C0 43 00 00 */	lfs f2, 0(r3)
/* 8016A768 001676C8  EC 61 00 32 */	fmuls f3, f1, f0
/* 8016A76C 001676CC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8016A770 001676D0  D0 41 00 08 */	stfs f2, 8(r1)
/* 8016A774 001676D4  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 8016A778 001676D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8016A77C 001676DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8016A780 001676E0  40 81 00 08 */	ble lbl_8016A788
/* 8016A784 001676E4  FF E0 18 90 */	fmr f31, f3
lbl_8016A788:
/* 8016A788 001676E8  3B DE 00 01 */	addi r30, r30, 1
/* 8016A78C 001676EC  3B FF 00 04 */	addi r31, r31, 4
/* 8016A790 001676F0  28 1E 00 11 */	cmplwi r30, 0x11
/* 8016A794 001676F4  41 80 FF 94 */	blt lbl_8016A728
lbl_8016A798:
/* 8016A798 001676F8  FC 20 F8 90 */	fmr f1, f31
/* 8016A79C 001676FC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8016A7A0 00167700  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8016A7A4 00167704  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8016A7A8 00167708  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8016A7AC 0016770C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8016A7B0 00167710  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8016A7B4 00167714  7C 08 03 A6 */	mtlr r0
/* 8016A7B8 00167718  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8016A7BC 0016771C  4E 80 00 20 */	blr

.global sub_8016a7c0
sub_8016a7c0:
/* 8016A7C0 00167720  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8016A7C4 00167724  7C 08 02 A6 */	mflr r0
/* 8016A7C8 00167728  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8016A7CC 0016772C  93 E1 01 AC */	stw r31, 0x1ac(r1)
/* 8016A7D0 00167730  93 C1 01 A8 */	stw r30, 0x1a8(r1)
/* 8016A7D4 00167734  7C DE 33 78 */	mr r30, r6
/* 8016A7D8 00167738  93 A1 01 A4 */	stw r29, 0x1a4(r1)
/* 8016A7DC 0016773C  7C BD 2B 78 */	mr r29, r5
/* 8016A7E0 00167740  A0 03 07 B0 */	lhz r0, 0x7b0(r3)
/* 8016A7E4 00167744  7C 83 23 78 */	mr r3, r4
/* 8016A7E8 00167748  38 81 00 0C */	addi r4, r1, 0xc
/* 8016A7EC 0016774C  B0 01 00 08 */	sth r0, 8(r1)
/* 8016A7F0 00167750  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016A7F4 00167754  4B EE 1D B1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016A7F8 00167758  7C 64 1B 78 */	mr r4, r3
/* 8016A7FC 0016775C  38 61 00 14 */	addi r3, r1, 0x14
/* 8016A800 00167760  4B F4 54 91 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016A804 00167764  83 E3 00 04 */	lwz r31, 4(r3)
/* 8016A808 00167768  28 1F 00 00 */	cmplwi r31, 0
/* 8016A80C 0016776C  41 82 01 E8 */	beq lbl_8016A9F4
/* 8016A810 00167770  80 82 A0 78 */	lwz r4, lbl_805ABD98@sda21(r2)
/* 8016A814 00167774  38 61 00 80 */	addi r3, r1, 0x80
/* 8016A818 00167778  4B E9 A4 A1 */	bl string_l__4rstlFPCc
/* 8016A81C 0016777C  7F E4 FB 78 */	mr r4, r31
/* 8016A820 00167780  38 61 01 0C */	addi r3, r1, 0x10c
/* 8016A824 00167784  38 A1 00 80 */	addi r5, r1, 0x80
/* 8016A828 00167788  4B EE 86 D9 */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8016A82C 0016778C  38 61 01 6C */	addi r3, r1, 0x16c
/* 8016A830 00167790  38 81 01 0C */	addi r4, r1, 0x10c
/* 8016A834 00167794  48 1A 83 41 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8016A838 00167798  38 61 00 80 */	addi r3, r1, 0x80
/* 8016A83C 0016779C  48 1D 32 A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8016A840 001677A0  80 82 A0 7C */	lwz r4, lbl_805ABD9C@sda21(r2)
/* 8016A844 001677A4  38 61 00 70 */	addi r3, r1, 0x70
/* 8016A848 001677A8  4B E9 A4 71 */	bl string_l__4rstlFPCc
/* 8016A84C 001677AC  7F E4 FB 78 */	mr r4, r31
/* 8016A850 001677B0  38 61 00 DC */	addi r3, r1, 0xdc
/* 8016A854 001677B4  38 A1 00 70 */	addi r5, r1, 0x70
/* 8016A858 001677B8  4B EE 86 A9 */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8016A85C 001677BC  38 61 01 3C */	addi r3, r1, 0x13c
/* 8016A860 001677C0  38 81 00 DC */	addi r4, r1, 0xdc
/* 8016A864 001677C4  48 1A 83 11 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8016A868 001677C8  38 61 00 70 */	addi r3, r1, 0x70
/* 8016A86C 001677CC  48 1D 32 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8016A870 001677D0  C0 62 A0 8C */	lfs f3, lbl_805ABDAC@sda21(r2)
/* 8016A874 001677D4  38 61 00 64 */	addi r3, r1, 0x64
/* 8016A878 001677D8  C0 41 01 64 */	lfs f2, 0x164(r1)
/* 8016A87C 001677DC  38 9F 00 34 */	addi r4, r31, 0x34
/* 8016A880 001677E0  C0 21 01 54 */	lfs f1, 0x154(r1)
/* 8016A884 001677E4  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 8016A888 001677E8  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 8016A88C 001677EC  EC 83 00 B2 */	fmuls f4, f3, f2
/* 8016A890 001677F0  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 8016A894 001677F4  EC 43 00 72 */	fmuls f2, f3, f1
/* 8016A898 001677F8  C0 A1 01 98 */	lfs f5, 0x198(r1)
/* 8016A89C 001677FC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8016A8A0 00167800  C0 61 01 88 */	lfs f3, 0x188(r1)
/* 8016A8A4 00167804  C0 21 01 78 */	lfs f1, 0x178(r1)
/* 8016A8A8 00167808  EC 85 20 2A */	fadds f4, f5, f4
/* 8016A8AC 0016780C  C0 A6 00 08 */	lfs f5, 8(r6)
/* 8016A8B0 00167810  EC 43 10 2A */	fadds f2, f3, f2
/* 8016A8B4 00167814  C0 66 00 04 */	lfs f3, 4(r6)
/* 8016A8B8 00167818  EC 01 00 2A */	fadds f0, f1, f0
/* 8016A8BC 0016781C  C0 26 00 00 */	lfs f1, 0(r6)
/* 8016A8C0 00167820  EC 85 01 32 */	fmuls f4, f5, f4
/* 8016A8C4 00167824  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8016A8C8 00167828  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016A8CC 0016782C  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 8016A8D0 00167830  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8016A8D4 00167834  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 8016A8D8 00167838  48 1A 81 A9 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8016A8DC 0016783C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8016A8E0 00167840  38 61 00 58 */	addi r3, r1, 0x58
/* 8016A8E4 00167844  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8016A8E8 00167848  38 9F 00 34 */	addi r4, r31, 0x34
/* 8016A8EC 0016784C  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 8016A8F0 00167850  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8016A8F4 00167854  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 8016A8F8 00167858  EC 01 00 2A */	fadds f0, f1, f0
/* 8016A8FC 0016785C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8016A900 00167860  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8016A904 00167864  EC 64 18 2A */	fadds f3, f4, f3
/* 8016A908 00167868  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8016A90C 0016786C  EC 02 08 2A */	fadds f0, f2, f1
/* 8016A910 00167870  D0 7D 00 04 */	stfs f3, 4(r29)
/* 8016A914 00167874  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8016A918 00167878  C0 41 01 40 */	lfs f2, 0x140(r1)
/* 8016A91C 0016787C  C0 21 01 50 */	lfs f1, 0x150(r1)
/* 8016A920 00167880  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 8016A924 00167884  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8016A928 00167888  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8016A92C 0016788C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8016A930 00167890  48 1A 81 51 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8016A934 00167894  C0 82 A0 90 */	lfs f4, lbl_805ABDB0@sda21(r2)
/* 8016A938 00167898  38 61 00 AC */	addi r3, r1, 0xac
/* 8016A93C 0016789C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8016A940 001678A0  38 9F 00 34 */	addi r4, r31, 0x34
/* 8016A944 001678A4  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 8016A948 001678A8  38 A1 01 3C */	addi r5, r1, 0x13c
/* 8016A94C 001678AC  EC 04 00 32 */	fmuls f0, f4, f0
/* 8016A950 001678B0  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8016A954 001678B4  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 8016A958 001678B8  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8016A95C 001678BC  EC 01 00 2A */	fadds f0, f1, f0
/* 8016A960 001678C0  EC 24 00 B2 */	fmuls f1, f4, f2
/* 8016A964 001678C4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8016A968 001678C8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8016A96C 001678CC  EC 00 18 2A */	fadds f0, f0, f3
/* 8016A970 001678D0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8016A974 001678D4  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8016A978 001678D8  EC 00 08 2A */	fadds f0, f0, f1
/* 8016A97C 001678DC  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8016A980 001678E0  48 1A 7F D1 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8016A984 001678E4  38 61 00 3C */	addi r3, r1, 0x3c
/* 8016A988 001678E8  38 81 00 AC */	addi r4, r1, 0xac
/* 8016A98C 001678EC  48 1A 77 9D */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8016A990 001678F0  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 8016A994 001678F4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016A998 001678F8  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8016A99C 001678FC  38 81 00 10 */	addi r4, r1, 0x10
/* 8016A9A0 00167900  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8016A9A4 00167904  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8016A9A8 00167908  C0 02 A0 94 */	lfs f0, lbl_805ABDB4@sda21(r2)
/* 8016A9AC 0016790C  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8016A9B0 00167910  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 8016A9B4 00167914  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8016A9B8 00167918  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8016A9BC 0016791C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8016A9C0 00167920  48 1A 67 39 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016A9C4 00167924  38 61 00 2C */	addi r3, r1, 0x2c
/* 8016A9C8 00167928  38 81 00 90 */	addi r4, r1, 0x90
/* 8016A9CC 0016792C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8016A9D0 00167930  48 1A 67 D1 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016A9D4 00167934  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8016A9D8 00167938  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8016A9DC 0016793C  80 61 00 30 */	lwz r3, 0x30(r1)
/* 8016A9E0 00167940  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016A9E4 00167944  90 7E 00 04 */	stw r3, 4(r30)
/* 8016A9E8 00167948  90 1E 00 08 */	stw r0, 8(r30)
/* 8016A9EC 0016794C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8016A9F0 00167950  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_8016A9F4:
/* 8016A9F4 00167954  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8016A9F8 00167958  83 E1 01 AC */	lwz r31, 0x1ac(r1)
/* 8016A9FC 0016795C  83 C1 01 A8 */	lwz r30, 0x1a8(r1)
/* 8016AA00 00167960  83 A1 01 A4 */	lwz r29, 0x1a4(r1)
/* 8016AA04 00167964  7C 08 03 A6 */	mtlr r0
/* 8016AA08 00167968  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8016AA0C 0016796C  4E 80 00 20 */	blr

.global sub_8016aa10
sub_8016aa10:
/* 8016AA10 00167970  94 21 FC A0 */	stwu r1, -0x360(r1)
/* 8016AA14 00167974  7C 08 02 A6 */	mflr r0
/* 8016AA18 00167978  90 01 03 64 */	stw r0, 0x364(r1)
/* 8016AA1C 0016797C  DB E1 03 50 */	stfd f31, 0x350(r1)
/* 8016AA20 00167980  F3 E1 03 58 */	psq_st f31, 856(r1), 0, qr0
/* 8016AA24 00167984  DB C1 03 40 */	stfd f30, 0x340(r1)
/* 8016AA28 00167988  F3 C1 03 48 */	psq_st f30, 840(r1), 0, qr0
/* 8016AA2C 0016798C  DB A1 03 30 */	stfd f29, 0x330(r1)
/* 8016AA30 00167990  F3 A1 03 38 */	psq_st f29, 824(r1), 0, qr0
/* 8016AA34 00167994  DB 81 03 20 */	stfd f28, 0x320(r1)
/* 8016AA38 00167998  F3 81 03 28 */	psq_st f28, 808(r1), 0, qr0
/* 8016AA3C 0016799C  DB 61 03 10 */	stfd f27, 0x310(r1)
/* 8016AA40 001679A0  F3 61 03 18 */	psq_st f27, 792(r1), 0, qr0
/* 8016AA44 001679A4  DB 41 03 00 */	stfd f26, 0x300(r1)
/* 8016AA48 001679A8  F3 41 03 08 */	psq_st f26, 776(r1), 0, qr0
/* 8016AA4C 001679AC  DB 21 02 F0 */	stfd f25, 0x2f0(r1)
/* 8016AA50 001679B0  F3 21 02 F8 */	psq_st f25, 760(r1), 0, qr0
/* 8016AA54 001679B4  BF 61 02 DC */	stmw r27, 0x2dc(r1)
/* 8016AA58 001679B8  7C 9C 23 78 */	mr r28, r4
/* 8016AA5C 001679BC  7C BD 2B 78 */	mr r29, r5
/* 8016AA60 001679C0  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8016AA64 001679C4  7C 7B 1B 78 */	mr r27, r3
/* 8016AA68 001679C8  7C DE 33 78 */	mr r30, r6
/* 8016AA6C 001679CC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8016AA70 001679D0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8016AA74 001679D4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8016AA78 001679D8  D0 05 00 00 */	stfs f0, 0(r5)
/* 8016AA7C 001679DC  D0 25 00 04 */	stfs f1, 4(r5)
/* 8016AA80 001679E0  D0 45 00 08 */	stfs f2, 8(r5)
/* 8016AA84 001679E4  80 83 00 64 */	lwz r4, 0x64(r3)
/* 8016AA88 001679E8  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8016AA8C 001679EC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8016AA90 001679F0  C3 E4 00 04 */	lfs f31, 4(r4)
/* 8016AA94 001679F4  2C 00 00 02 */	cmpwi r0, 2
/* 8016AA98 001679F8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8016AA9C 001679FC  D0 21 02 08 */	stfs f1, 0x208(r1)
/* 8016AAA0 00167A00  D3 E1 02 0C */	stfs f31, 0x20c(r1)
/* 8016AAA4 00167A04  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 8016AAA8 00167A08  41 82 01 64 */	beq lbl_8016AC0C
/* 8016AAAC 00167A0C  40 80 00 14 */	bge lbl_8016AAC0
/* 8016AAB0 00167A10  2C 00 00 00 */	cmpwi r0, 0
/* 8016AAB4 00167A14  41 82 00 18 */	beq lbl_8016AACC
/* 8016AAB8 00167A18  40 80 05 C0 */	bge lbl_8016B078
/* 8016AABC 00167A1C  48 00 06 E0 */	b lbl_8016B19C
lbl_8016AAC0:
/* 8016AAC0 00167A20  2C 00 00 04 */	cmpwi r0, 4
/* 8016AAC4 00167A24  40 80 06 D8 */	bge lbl_8016B19C
/* 8016AAC8 00167A28  48 00 02 84 */	b lbl_8016AD4C
lbl_8016AACC:
/* 8016AACC 00167A2C  80 9C 08 70 */	lwz r4, 0x870(r28)
/* 8016AAD0 00167A30  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 8016AAD4 00167A34  80 84 00 7C */	lwz r4, 0x7c(r4)
/* 8016AAD8 00167A38  38 84 00 34 */	addi r4, r4, 0x34
/* 8016AADC 00167A3C  48 1A 76 4D */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8016AAE0 00167A40  C0 81 01 F8 */	lfs f4, 0x1f8(r1)
/* 8016AAE4 00167A44  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 8016AAE8 00167A48  C0 61 01 FC */	lfs f3, 0x1fc(r1)
/* 8016AAEC 00167A4C  38 81 00 34 */	addi r4, r1, 0x34
/* 8016AAF0 00167A50  C0 41 02 00 */	lfs f2, 0x200(r1)
/* 8016AAF4 00167A54  C0 21 02 04 */	lfs f1, 0x204(r1)
/* 8016AAF8 00167A58  C0 02 A0 94 */	lfs f0, lbl_805ABDB4@sda21(r2)
/* 8016AAFC 00167A5C  D0 81 02 34 */	stfs f4, 0x234(r1)
/* 8016AB00 00167A60  D0 61 02 38 */	stfs f3, 0x238(r1)
/* 8016AB04 00167A64  D0 41 02 3C */	stfs f2, 0x23c(r1)
/* 8016AB08 00167A68  D0 21 02 40 */	stfs f1, 0x240(r1)
/* 8016AB0C 00167A6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8016AB10 00167A70  48 1A 65 E9 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016AB14 00167A74  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 8016AB18 00167A78  38 81 02 34 */	addi r4, r1, 0x234
/* 8016AB1C 00167A7C  38 A1 01 D8 */	addi r5, r1, 0x1d8
/* 8016AB20 00167A80  48 1A 66 81 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016AB24 00167A84  C0 01 01 E8 */	lfs f0, 0x1e8(r1)
/* 8016AB28 00167A88  38 61 02 68 */	addi r3, r1, 0x268
/* 8016AB2C 00167A8C  38 81 02 34 */	addi r4, r1, 0x234
/* 8016AB30 00167A90  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8016AB34 00167A94  80 A1 01 EC */	lwz r5, 0x1ec(r1)
/* 8016AB38 00167A98  80 01 01 F0 */	lwz r0, 0x1f0(r1)
/* 8016AB3C 00167A9C  90 BE 00 04 */	stw r5, 4(r30)
/* 8016AB40 00167AA0  90 1E 00 08 */	stw r0, 8(r30)
/* 8016AB44 00167AA4  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 8016AB48 00167AA8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8016AB4C 00167AAC  48 1A 75 41 */	bl BuildTransform__11CQuaternionCFv
/* 8016AB50 00167AB0  38 61 02 B0 */	addi r3, r1, 0x2b0
/* 8016AB54 00167AB4  38 81 02 68 */	addi r4, r1, 0x268
/* 8016AB58 00167AB8  48 1A 54 CD */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 8016AB5C 00167ABC  3C 80 80 5A */	lis r4, sForwardVector__9CVector3f@ha
/* 8016AB60 00167AC0  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8016AB64 00167AC4  38 A4 67 24 */	addi r5, r4, sForwardVector__9CVector3f@l
/* 8016AB68 00167AC8  38 81 02 B0 */	addi r4, r1, 0x2b0
/* 8016AB6C 00167ACC  48 1A 57 29 */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 8016AB70 00167AD0  C0 62 A0 98 */	lfs f3, lbl_805ABDB8@sda21(r2)
/* 8016AB74 00167AD4  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 8016AB78 00167AD8  C0 41 01 CC */	lfs f2, 0x1cc(r1)
/* 8016AB7C 00167ADC  38 A3 66 F4 */	addi r5, r3, sUpVector__9CVector3f@l
/* 8016AB80 00167AE0  C0 21 01 D0 */	lfs f1, 0x1d0(r1)
/* 8016AB84 00167AE4  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 8016AB88 00167AE8  C0 01 01 D4 */	lfs f0, 0x1d4(r1)
/* 8016AB8C 00167AEC  EF 83 00 B2 */	fmuls f28, f3, f2
/* 8016AB90 00167AF0  EF 63 00 72 */	fmuls f27, f3, f1
/* 8016AB94 00167AF4  38 81 02 B0 */	addi r4, r1, 0x2b0
/* 8016AB98 00167AF8  EF 43 00 32 */	fmuls f26, f3, f0
/* 8016AB9C 00167AFC  48 1A 56 F9 */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 8016ABA0 00167B00  C0 02 A0 9C */	lfs f0, lbl_805ABDBC@sda21(r2)
/* 8016ABA4 00167B04  7F E3 FB 78 */	mr r3, r31
/* 8016ABA8 00167B08  C0 41 01 C0 */	lfs f2, 0x1c0(r1)
/* 8016ABAC 00167B0C  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8016ABB0 00167B10  C0 21 01 C4 */	lfs f1, 0x1c4(r1)
/* 8016ABB4 00167B14  C0 01 01 C8 */	lfs f0, 0x1c8(r1)
/* 8016ABB8 00167B18  EF E3 00 B2 */	fmuls f31, f3, f2
/* 8016ABBC 00167B1C  EF C3 00 72 */	fmuls f30, f3, f1
/* 8016ABC0 00167B20  EF A3 00 32 */	fmuls f29, f3, f0
/* 8016ABC4 00167B24  48 11 A2 1D */	bl GetEyeHeight__7CPlayerCFv
/* 8016ABC8 00167B28  C0 62 A0 80 */	lfs f3, lbl_805ABDA0@sda21(r2)
/* 8016ABCC 00167B2C  EC 01 E8 2A */	fadds f0, f1, f29
/* 8016ABD0 00167B30  C0 9D 00 00 */	lfs f4, 0(r29)
/* 8016ABD4 00167B34  EC 43 F8 2A */	fadds f2, f3, f31
/* 8016ABD8 00167B38  EC 23 F0 2A */	fadds f1, f3, f30
/* 8016ABDC 00167B3C  EC 00 D0 2A */	fadds f0, f0, f26
/* 8016ABE0 00167B40  EC 42 E0 2A */	fadds f2, f2, f28
/* 8016ABE4 00167B44  EC 21 D8 2A */	fadds f1, f1, f27
/* 8016ABE8 00167B48  EC 44 10 2A */	fadds f2, f4, f2
/* 8016ABEC 00167B4C  D0 5D 00 00 */	stfs f2, 0(r29)
/* 8016ABF0 00167B50  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8016ABF4 00167B54  EC 22 08 2A */	fadds f1, f2, f1
/* 8016ABF8 00167B58  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8016ABFC 00167B5C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8016AC00 00167B60  EC 01 00 2A */	fadds f0, f1, f0
/* 8016AC04 00167B64  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8016AC08 00167B68  48 00 05 94 */	b lbl_8016B19C
lbl_8016AC0C:
/* 8016AC0C 00167B6C  7F E4 FB 78 */	mr r4, r31
/* 8016AC10 00167B70  4B FF FA B1 */	bl sub_8016a6c0
/* 8016AC14 00167B74  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8016AC18 00167B78  C0 62 A0 80 */	lfs f3, lbl_805ABDA0@sda21(r2)
/* 8016AC1C 00167B7C  C0 02 A0 A0 */	lfs f0, lbl_805ABDC0@sda21(r2)
/* 8016AC20 00167B80  EC 42 18 2A */	fadds f2, f2, f3
/* 8016AC24 00167B84  EC 00 08 2A */	fadds f0, f0, f1
/* 8016AC28 00167B88  D0 5D 00 00 */	stfs f2, 0(r29)
/* 8016AC2C 00167B8C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8016AC30 00167B90  EC 21 18 2A */	fadds f1, f1, f3
/* 8016AC34 00167B94  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8016AC38 00167B98  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8016AC3C 00167B9C  EC 01 00 2A */	fadds f0, f1, f0
/* 8016AC40 00167BA0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8016AC44 00167BA4  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8016AC48 00167BA8  4B F8 E1 BD */	bl GetBallRadius__10CMorphBallCFv
/* 8016AC4C 00167BAC  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 8016AC50 00167BB0  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8016AC54 00167BB4  C1 02 A0 88 */	lfs f8, lbl_805ABDA8@sda21(r2)
/* 8016AC58 00167BB8  38 81 00 30 */	addi r4, r1, 0x30
/* 8016AC5C 00167BBC  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8016AC60 00167BC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016AC64 00167BC4  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 8016AC68 00167BC8  EC 48 00 B2 */	fmuls f2, f8, f2
/* 8016AC6C 00167BCC  C0 7B 00 4C */	lfs f3, 0x4c(r27)
/* 8016AC70 00167BD0  C0 DF 00 58 */	lfs f6, 0x58(r31)
/* 8016AC74 00167BD4  EC E8 01 32 */	fmuls f7, f8, f4
/* 8016AC78 00167BD8  C0 9D 00 00 */	lfs f4, 0(r29)
/* 8016AC7C 00167BDC  EC 61 00 F2 */	fmuls f3, f1, f3
/* 8016AC80 00167BE0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8016AC84 00167BE4  C0 BB 00 5C */	lfs f5, 0x5c(r27)
/* 8016AC88 00167BE8  EC E7 18 28 */	fsubs f7, f7, f3
/* 8016AC8C 00167BEC  C0 62 A0 94 */	lfs f3, lbl_805ABDB4@sda21(r2)
/* 8016AC90 00167BF0  EC C8 01 B2 */	fmuls f6, f8, f6
/* 8016AC94 00167BF4  C0 42 A0 A4 */	lfs f2, lbl_805ABDC4@sda21(r2)
/* 8016AC98 00167BF8  EC 84 00 2A */	fadds f4, f4, f0
/* 8016AC9C 00167BFC  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016ACA0 00167C00  EC 21 01 72 */	fmuls f1, f1, f5
/* 8016ACA4 00167C04  D0 9D 00 00 */	stfs f4, 0(r29)
/* 8016ACA8 00167C08  EC 86 08 28 */	fsubs f4, f6, f1
/* 8016ACAC 00167C0C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8016ACB0 00167C10  EC 21 38 2A */	fadds f1, f1, f7
/* 8016ACB4 00167C14  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8016ACB8 00167C18  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8016ACBC 00167C1C  EC 21 20 2A */	fadds f1, f1, f4
/* 8016ACC0 00167C20  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8016ACC4 00167C24  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8016ACC8 00167C28  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8016ACCC 00167C2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8016ACD0 00167C30  48 1A 64 61 */	bl YRotation__11CQuaternionFRC9CRelAngle
/* 8016ACD4 00167C34  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8016ACD8 00167C38  38 81 00 2C */	addi r4, r1, 0x2c
/* 8016ACDC 00167C3C  48 1A 64 8D */	bl XRotation__11CQuaternionFRC9CRelAngle
/* 8016ACE0 00167C40  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8016ACE4 00167C44  38 81 00 28 */	addi r4, r1, 0x28
/* 8016ACE8 00167C48  48 1A 64 11 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016ACEC 00167C4C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016ACF0 00167C50  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8016ACF4 00167C54  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 8016ACF8 00167C58  48 1A 64 A9 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016ACFC 00167C5C  38 61 01 90 */	addi r3, r1, 0x190
/* 8016AD00 00167C60  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8016AD04 00167C64  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 8016AD08 00167C68  48 1A 64 99 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016AD0C 00167C6C  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8016AD10 00167C70  38 9F 00 34 */	addi r4, r31, 0x34
/* 8016AD14 00167C74  48 1A 74 15 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8016AD18 00167C78  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8016AD1C 00167C7C  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 8016AD20 00167C80  38 A1 01 90 */	addi r5, r1, 0x190
/* 8016AD24 00167C84  48 1A 64 7D */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016AD28 00167C88  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 8016AD2C 00167C8C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8016AD30 00167C90  80 61 01 B4 */	lwz r3, 0x1b4(r1)
/* 8016AD34 00167C94  80 01 01 B8 */	lwz r0, 0x1b8(r1)
/* 8016AD38 00167C98  90 7E 00 04 */	stw r3, 4(r30)
/* 8016AD3C 00167C9C  90 1E 00 08 */	stw r0, 8(r30)
/* 8016AD40 00167CA0  80 01 01 BC */	lwz r0, 0x1bc(r1)
/* 8016AD44 00167CA4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8016AD48 00167CA8  48 00 04 54 */	b lbl_8016B19C
lbl_8016AD4C:
/* 8016AD4C 00167CAC  7F E4 FB 78 */	mr r4, r31
/* 8016AD50 00167CB0  4B FF F9 71 */	bl sub_8016a6c0
/* 8016AD54 00167CB4  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8016AD58 00167CB8  C0 62 A0 80 */	lfs f3, lbl_805ABDA0@sda21(r2)
/* 8016AD5C 00167CBC  C0 02 A0 A0 */	lfs f0, lbl_805ABDC0@sda21(r2)
/* 8016AD60 00167CC0  EC 42 18 2A */	fadds f2, f2, f3
/* 8016AD64 00167CC4  EC 00 08 2A */	fadds f0, f0, f1
/* 8016AD68 00167CC8  D0 5D 00 00 */	stfs f2, 0(r29)
/* 8016AD6C 00167CCC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8016AD70 00167CD0  EC 21 18 2A */	fadds f1, f1, f3
/* 8016AD74 00167CD4  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8016AD78 00167CD8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8016AD7C 00167CDC  EC 01 00 2A */	fadds f0, f1, f0
/* 8016AD80 00167CE0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8016AD84 00167CE4  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8016AD88 00167CE8  4B F8 E0 7D */	bl GetBallRadius__10CMorphBallCFv
/* 8016AD8C 00167CEC  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 8016AD90 00167CF0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8016AD94 00167CF4  C1 02 A0 88 */	lfs f8, lbl_805ABDA8@sda21(r2)
/* 8016AD98 00167CF8  38 81 00 24 */	addi r4, r1, 0x24
/* 8016AD9C 00167CFC  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8016ADA0 00167D00  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016ADA4 00167D04  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 8016ADA8 00167D08  EC 48 00 B2 */	fmuls f2, f8, f2
/* 8016ADAC 00167D0C  C0 7B 00 4C */	lfs f3, 0x4c(r27)
/* 8016ADB0 00167D10  C0 DF 00 58 */	lfs f6, 0x58(r31)
/* 8016ADB4 00167D14  EC E8 01 32 */	fmuls f7, f8, f4
/* 8016ADB8 00167D18  C0 9D 00 00 */	lfs f4, 0(r29)
/* 8016ADBC 00167D1C  EC 61 00 F2 */	fmuls f3, f1, f3
/* 8016ADC0 00167D20  EC 02 00 28 */	fsubs f0, f2, f0
/* 8016ADC4 00167D24  C0 BB 00 5C */	lfs f5, 0x5c(r27)
/* 8016ADC8 00167D28  EC E7 18 28 */	fsubs f7, f7, f3
/* 8016ADCC 00167D2C  C0 62 A0 94 */	lfs f3, lbl_805ABDB4@sda21(r2)
/* 8016ADD0 00167D30  EC C8 01 B2 */	fmuls f6, f8, f6
/* 8016ADD4 00167D34  C0 42 A0 A4 */	lfs f2, lbl_805ABDC4@sda21(r2)
/* 8016ADD8 00167D38  EC 84 00 2A */	fadds f4, f4, f0
/* 8016ADDC 00167D3C  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016ADE0 00167D40  EC 21 01 72 */	fmuls f1, f1, f5
/* 8016ADE4 00167D44  D0 9D 00 00 */	stfs f4, 0(r29)
/* 8016ADE8 00167D48  EC 86 08 28 */	fsubs f4, f6, f1
/* 8016ADEC 00167D4C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8016ADF0 00167D50  EC 21 38 2A */	fadds f1, f1, f7
/* 8016ADF4 00167D54  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8016ADF8 00167D58  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8016ADFC 00167D5C  EC 21 20 2A */	fadds f1, f1, f4
/* 8016AE00 00167D60  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8016AE04 00167D64  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8016AE08 00167D68  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8016AE0C 00167D6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8016AE10 00167D70  48 1A 63 21 */	bl YRotation__11CQuaternionFRC9CRelAngle
/* 8016AE14 00167D74  38 61 00 98 */	addi r3, r1, 0x98
/* 8016AE18 00167D78  38 81 00 20 */	addi r4, r1, 0x20
/* 8016AE1C 00167D7C  48 1A 63 4D */	bl XRotation__11CQuaternionFRC9CRelAngle
/* 8016AE20 00167D80  38 61 00 88 */	addi r3, r1, 0x88
/* 8016AE24 00167D84  38 81 00 1C */	addi r4, r1, 0x1c
/* 8016AE28 00167D88  48 1A 62 D1 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016AE2C 00167D8C  38 61 00 78 */	addi r3, r1, 0x78
/* 8016AE30 00167D90  38 81 00 88 */	addi r4, r1, 0x88
/* 8016AE34 00167D94  38 A1 00 98 */	addi r5, r1, 0x98
/* 8016AE38 00167D98  48 1A 63 69 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016AE3C 00167D9C  38 61 01 60 */	addi r3, r1, 0x160
/* 8016AE40 00167DA0  38 81 00 78 */	addi r4, r1, 0x78
/* 8016AE44 00167DA4  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8016AE48 00167DA8  48 1A 63 59 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016AE4C 00167DAC  38 61 01 70 */	addi r3, r1, 0x170
/* 8016AE50 00167DB0  38 9F 00 34 */	addi r4, r31, 0x34
/* 8016AE54 00167DB4  48 1A 72 D5 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8016AE58 00167DB8  38 61 01 80 */	addi r3, r1, 0x180
/* 8016AE5C 00167DBC  38 81 01 70 */	addi r4, r1, 0x170
/* 8016AE60 00167DC0  38 A1 01 60 */	addi r5, r1, 0x160
/* 8016AE64 00167DC4  48 1A 63 3D */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016AE68 00167DC8  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 8016AE6C 00167DCC  C3 42 A0 80 */	lfs f26, lbl_805ABDA0@sda21(r2)
/* 8016AE70 00167DD0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8016AE74 00167DD4  80 61 01 84 */	lwz r3, 0x184(r1)
/* 8016AE78 00167DD8  80 01 01 88 */	lwz r0, 0x188(r1)
/* 8016AE7C 00167DDC  90 7E 00 04 */	stw r3, 4(r30)
/* 8016AE80 00167DE0  90 1E 00 08 */	stw r0, 8(r30)
/* 8016AE84 00167DE4  80 01 01 8C */	lwz r0, 0x18c(r1)
/* 8016AE88 00167DE8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8016AE8C 00167DEC  C0 3F 05 78 */	lfs f1, 0x578(r31)
/* 8016AE90 00167DF0  FC 1A 08 00 */	fcmpu cr0, f26, f1
/* 8016AE94 00167DF4  40 82 00 08 */	bne lbl_8016AE9C
/* 8016AE98 00167DF8  48 00 00 24 */	b lbl_8016AEBC
lbl_8016AE9C:
/* 8016AE9C 00167DFC  C0 1F 05 74 */	lfs f0, 0x574(r31)
/* 8016AEA0 00167E00  38 81 00 08 */	addi r4, r1, 8
/* 8016AEA4 00167E04  38 6D 8D 90 */	addi r3, r13, lbl_805A7950@sda21
/* 8016AEA8 00167E08  38 AD 8D 94 */	addi r5, r13, lbl_805A7954@sda21
/* 8016AEAC 00167E0C  EC 00 08 24 */	fdivs f0, f0, f1
/* 8016AEB0 00167E10  D0 01 00 08 */	stfs f0, 8(r1)
/* 8016AEB4 00167E14  4B EA 14 01 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8016AEB8 00167E18  C3 43 00 00 */	lfs f26, 0(r3)
lbl_8016AEBC:
/* 8016AEBC 00167E1C  C0 02 A0 A8 */	lfs f0, lbl_805ABDC8@sda21(r2)
/* 8016AEC0 00167E20  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 8016AEC4 00167E24  40 81 02 D8 */	ble lbl_8016B19C
/* 8016AEC8 00167E28  80 9C 08 70 */	lwz r4, 0x870(r28)
/* 8016AECC 00167E2C  38 61 01 50 */	addi r3, r1, 0x150
/* 8016AED0 00167E30  80 84 00 7C */	lwz r4, 0x7c(r4)
/* 8016AED4 00167E34  38 84 00 34 */	addi r4, r4, 0x34
/* 8016AED8 00167E38  48 1A 72 51 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8016AEDC 00167E3C  C0 81 01 50 */	lfs f4, 0x150(r1)
/* 8016AEE0 00167E40  38 61 01 30 */	addi r3, r1, 0x130
/* 8016AEE4 00167E44  C0 61 01 54 */	lfs f3, 0x154(r1)
/* 8016AEE8 00167E48  38 81 00 18 */	addi r4, r1, 0x18
/* 8016AEEC 00167E4C  C0 41 01 58 */	lfs f2, 0x158(r1)
/* 8016AEF0 00167E50  C0 21 01 5C */	lfs f1, 0x15c(r1)
/* 8016AEF4 00167E54  C0 02 A0 94 */	lfs f0, lbl_805ABDB4@sda21(r2)
/* 8016AEF8 00167E58  D0 81 02 24 */	stfs f4, 0x224(r1)
/* 8016AEFC 00167E5C  D0 61 02 28 */	stfs f3, 0x228(r1)
/* 8016AF00 00167E60  D0 41 02 2C */	stfs f2, 0x22c(r1)
/* 8016AF04 00167E64  D0 21 02 30 */	stfs f1, 0x230(r1)
/* 8016AF08 00167E68  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8016AF0C 00167E6C  48 1A 61 ED */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016AF10 00167E70  38 61 01 40 */	addi r3, r1, 0x140
/* 8016AF14 00167E74  38 81 02 24 */	addi r4, r1, 0x224
/* 8016AF18 00167E78  38 A1 01 30 */	addi r5, r1, 0x130
/* 8016AF1C 00167E7C  48 1A 62 85 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016AF20 00167E80  C0 61 01 40 */	lfs f3, 0x140(r1)
/* 8016AF24 00167E84  38 61 02 44 */	addi r3, r1, 0x244
/* 8016AF28 00167E88  C0 41 01 44 */	lfs f2, 0x144(r1)
/* 8016AF2C 00167E8C  38 81 02 24 */	addi r4, r1, 0x224
/* 8016AF30 00167E90  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 8016AF34 00167E94  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 8016AF38 00167E98  D0 61 02 14 */	stfs f3, 0x214(r1)
/* 8016AF3C 00167E9C  D0 41 02 18 */	stfs f2, 0x218(r1)
/* 8016AF40 00167EA0  D0 21 02 1C */	stfs f1, 0x21c(r1)
/* 8016AF44 00167EA4  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 8016AF48 00167EA8  48 1A 71 45 */	bl BuildTransform__11CQuaternionCFv
/* 8016AF4C 00167EAC  38 61 02 8C */	addi r3, r1, 0x28c
/* 8016AF50 00167EB0  38 81 02 44 */	addi r4, r1, 0x244
/* 8016AF54 00167EB4  48 1A 50 D1 */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 8016AF58 00167EB8  3C 80 80 5A */	lis r4, sForwardVector__9CVector3f@ha
/* 8016AF5C 00167EBC  38 61 01 24 */	addi r3, r1, 0x124
/* 8016AF60 00167EC0  38 A4 67 24 */	addi r5, r4, sForwardVector__9CVector3f@l
/* 8016AF64 00167EC4  38 81 02 8C */	addi r4, r1, 0x28c
/* 8016AF68 00167EC8  48 1A 53 2D */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 8016AF6C 00167ECC  C0 62 A0 98 */	lfs f3, lbl_805ABDB8@sda21(r2)
/* 8016AF70 00167ED0  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 8016AF74 00167ED4  C0 41 01 24 */	lfs f2, 0x124(r1)
/* 8016AF78 00167ED8  38 A3 66 F4 */	addi r5, r3, sUpVector__9CVector3f@l
/* 8016AF7C 00167EDC  C0 21 01 28 */	lfs f1, 0x128(r1)
/* 8016AF80 00167EE0  38 61 01 18 */	addi r3, r1, 0x118
/* 8016AF84 00167EE4  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 8016AF88 00167EE8  EF 83 00 B2 */	fmuls f28, f3, f2
/* 8016AF8C 00167EEC  EF A3 00 72 */	fmuls f29, f3, f1
/* 8016AF90 00167EF0  38 81 02 8C */	addi r4, r1, 0x28c
/* 8016AF94 00167EF4  EF C3 00 32 */	fmuls f30, f3, f0
/* 8016AF98 00167EF8  48 1A 52 FD */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 8016AF9C 00167EFC  C0 02 A0 9C */	lfs f0, lbl_805ABDBC@sda21(r2)
/* 8016AFA0 00167F00  7F E3 FB 78 */	mr r3, r31
/* 8016AFA4 00167F04  C0 41 01 18 */	lfs f2, 0x118(r1)
/* 8016AFA8 00167F08  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8016AFAC 00167F0C  C0 21 01 1C */	lfs f1, 0x11c(r1)
/* 8016AFB0 00167F10  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 8016AFB4 00167F14  EF 63 00 B2 */	fmuls f27, f3, f2
/* 8016AFB8 00167F18  EF E3 00 72 */	fmuls f31, f3, f1
/* 8016AFBC 00167F1C  EF 23 00 32 */	fmuls f25, f3, f0
/* 8016AFC0 00167F20  48 11 9E 21 */	bl GetEyeHeight__7CPlayerCFv
/* 8016AFC4 00167F24  C0 02 A0 A8 */	lfs f0, lbl_805ABDC8@sda21(r2)
/* 8016AFC8 00167F28  7F C4 F3 78 */	mr r4, r30
/* 8016AFCC 00167F2C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8016AFD0 00167F30  38 61 01 08 */	addi r3, r1, 0x108
/* 8016AFD4 00167F34  EC 5A 00 28 */	fsubs f2, f26, f0
/* 8016AFD8 00167F38  C0 02 A0 AC */	lfs f0, lbl_805ABDCC@sda21(r2)
/* 8016AFDC 00167F3C  EC 23 08 2A */	fadds f1, f3, f1
/* 8016AFE0 00167F40  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8016AFE4 00167F44  C0 82 A0 80 */	lfs f4, lbl_805ABDA0@sda21(r2)
/* 8016AFE8 00167F48  38 A1 02 14 */	addi r5, r1, 0x214
/* 8016AFEC 00167F4C  EF 42 00 24 */	fdivs f26, f2, f0
/* 8016AFF0 00167F50  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8016AFF4 00167F54  EC 63 20 2A */	fadds f3, f3, f4
/* 8016AFF8 00167F58  EC 40 20 2A */	fadds f2, f0, f4
/* 8016AFFC 00167F5C  EC 01 C8 2A */	fadds f0, f1, f25
/* 8016B000 00167F60  EC 63 D8 2A */	fadds f3, f3, f27
/* 8016B004 00167F64  EC 42 F8 2A */	fadds f2, f2, f31
/* 8016B008 00167F68  FC 20 D0 90 */	fmr f1, f26
/* 8016B00C 00167F6C  EF 83 E0 2A */	fadds f28, f3, f28
/* 8016B010 00167F70  EF 62 E8 2A */	fadds f27, f2, f29
/* 8016B014 00167F74  EF 20 F0 2A */	fadds f25, f0, f30
/* 8016B018 00167F78  48 1A 65 A1 */	bl SlerpLocal__11CQuaternionFRC11CQuaternionRC11CQuaternionf
/* 8016B01C 00167F7C  C0 41 01 08 */	lfs f2, 0x108(r1)
/* 8016B020 00167F80  EC 1C 06 B2 */	fmuls f0, f28, f26
/* 8016B024 00167F84  C0 22 A0 98 */	lfs f1, lbl_805ABDB8@sda21(r2)
/* 8016B028 00167F88  EC 9B 06 B2 */	fmuls f4, f27, f26
/* 8016B02C 00167F8C  D0 5E 00 00 */	stfs f2, 0(r30)
/* 8016B030 00167F90  EC 59 06 B2 */	fmuls f2, f25, f26
/* 8016B034 00167F94  EC C1 D0 28 */	fsubs f6, f1, f26
/* 8016B038 00167F98  80 61 01 0C */	lwz r3, 0x10c(r1)
/* 8016B03C 00167F9C  80 01 01 10 */	lwz r0, 0x110(r1)
/* 8016B040 00167FA0  90 7E 00 04 */	stw r3, 4(r30)
/* 8016B044 00167FA4  90 1E 00 08 */	stw r0, 8(r30)
/* 8016B048 00167FA8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8016B04C 00167FAC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8016B050 00167FB0  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8016B054 00167FB4  C0 BD 00 04 */	lfs f5, 4(r29)
/* 8016B058 00167FB8  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8016B05C 00167FBC  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 8016B060 00167FC0  EC 85 21 BA */	fmadds f4, f5, f6, f4
/* 8016B064 00167FC4  EC 23 11 BA */	fmadds f1, f3, f6, f2
/* 8016B068 00167FC8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8016B06C 00167FCC  D0 9D 00 04 */	stfs f4, 4(r29)
/* 8016B070 00167FD0  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8016B074 00167FD4  48 00 01 28 */	b lbl_8016B19C
lbl_8016B078:
/* 8016B078 00167FD8  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8016B07C 00167FDC  4B F8 DD 89 */	bl GetBallRadius__10CMorphBallCFv
/* 8016B080 00167FE0  C0 62 A0 84 */	lfs f3, lbl_805ABDA4@sda21(r2)
/* 8016B084 00167FE4  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 8016B088 00167FE8  C0 42 A0 AC */	lfs f2, lbl_805ABDCC@sda21(r2)
/* 8016B08C 00167FEC  C4 03 66 F4 */	lfsu f0, sUpVector__9CVector3f@l(r3)
/* 8016B090 00167FF0  EC 83 10 7A */	fmadds f4, f3, f1, f2
/* 8016B094 00167FF4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8016B098 00167FF8  C0 63 00 04 */	lfs f3, 4(r3)
/* 8016B09C 00167FFC  C0 43 00 08 */	lfs f2, 8(r3)
/* 8016B0A0 00168000  EC 04 00 32 */	fmuls f0, f4, f0
/* 8016B0A4 00168004  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8016B0A8 00168008  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8016B0AC 0016800C  EC 01 00 2A */	fadds f0, f1, f0
/* 8016B0B0 00168010  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8016B0B4 00168014  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8016B0B8 00168018  EC 00 18 2A */	fadds f0, f0, f3
/* 8016B0BC 0016801C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8016B0C0 00168020  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8016B0C4 00168024  EC 00 10 2A */	fadds f0, f0, f2
/* 8016B0C8 00168028  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8016B0CC 0016802C  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8016B0D0 00168030  4B F8 DD 35 */	bl GetBallRadius__10CMorphBallCFv
/* 8016B0D4 00168034  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 8016B0D8 00168038  7F 63 DB 78 */	mr r3, r27
/* 8016B0DC 0016803C  C0 5B 00 4C */	lfs f2, 0x4c(r27)
/* 8016B0E0 00168040  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8016B0E4 00168044  C0 7B 00 5C */	lfs f3, 0x5c(r27)
/* 8016B0E8 00168048  EC 9F 00 B2 */	fmuls f4, f31, f2
/* 8016B0EC 0016804C  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8016B0F0 00168050  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 8016B0F4 00168054  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016B0F8 00168058  EC 81 01 32 */	fmuls f4, f1, f4
/* 8016B0FC 0016805C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8016B100 00168060  EC 02 00 28 */	fsubs f0, f2, f0
/* 8016B104 00168064  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8016B108 00168068  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8016B10C 0016806C  EC 00 20 28 */	fsubs f0, f0, f4
/* 8016B110 00168070  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8016B114 00168074  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8016B118 00168078  EC 00 08 28 */	fsubs f0, f0, f1
/* 8016B11C 0016807C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8016B120 00168080  4B EE 93 91 */	bl GetYaw__6CActorCFv
/* 8016B124 00168084  C0 42 A0 A4 */	lfs f2, lbl_805ABDC4@sda21(r2)
/* 8016B128 00168088  38 61 00 68 */	addi r3, r1, 0x68
/* 8016B12C 0016808C  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016B130 00168090  38 81 00 14 */	addi r4, r1, 0x14
/* 8016B134 00168094  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8016B138 00168098  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8016B13C 0016809C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8016B140 001680A0  48 1A 5F F1 */	bl YRotation__11CQuaternionFRC9CRelAngle
/* 8016B144 001680A4  38 61 00 58 */	addi r3, r1, 0x58
/* 8016B148 001680A8  38 81 00 10 */	addi r4, r1, 0x10
/* 8016B14C 001680AC  48 1A 60 1D */	bl XRotation__11CQuaternionFRC9CRelAngle
/* 8016B150 001680B0  38 61 00 48 */	addi r3, r1, 0x48
/* 8016B154 001680B4  38 81 00 0C */	addi r4, r1, 0xc
/* 8016B158 001680B8  48 1A 5F A1 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016B15C 001680BC  38 61 00 38 */	addi r3, r1, 0x38
/* 8016B160 001680C0  38 81 00 48 */	addi r4, r1, 0x48
/* 8016B164 001680C4  38 A1 00 58 */	addi r5, r1, 0x58
/* 8016B168 001680C8  48 1A 60 39 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016B16C 001680CC  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016B170 001680D0  38 81 00 38 */	addi r4, r1, 0x38
/* 8016B174 001680D4  38 A1 00 68 */	addi r5, r1, 0x68
/* 8016B178 001680D8  48 1A 60 29 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016B17C 001680DC  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 8016B180 001680E0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8016B184 001680E4  80 61 00 FC */	lwz r3, 0xfc(r1)
/* 8016B188 001680E8  80 01 01 00 */	lwz r0, 0x100(r1)
/* 8016B18C 001680EC  90 7E 00 04 */	stw r3, 4(r30)
/* 8016B190 001680F0  90 1E 00 08 */	stw r0, 8(r30)
/* 8016B194 001680F4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8016B198 001680F8  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_8016B19C:
/* 8016B19C 001680FC  E3 E1 03 58 */	psq_l f31, 856(r1), 0, qr0
/* 8016B1A0 00168100  CB E1 03 50 */	lfd f31, 0x350(r1)
/* 8016B1A4 00168104  E3 C1 03 48 */	psq_l f30, 840(r1), 0, qr0
/* 8016B1A8 00168108  CB C1 03 40 */	lfd f30, 0x340(r1)
/* 8016B1AC 0016810C  E3 A1 03 38 */	psq_l f29, 824(r1), 0, qr0
/* 8016B1B0 00168110  CB A1 03 30 */	lfd f29, 0x330(r1)
/* 8016B1B4 00168114  E3 81 03 28 */	psq_l f28, 808(r1), 0, qr0
/* 8016B1B8 00168118  CB 81 03 20 */	lfd f28, 0x320(r1)
/* 8016B1BC 0016811C  E3 61 03 18 */	psq_l f27, 792(r1), 0, qr0
/* 8016B1C0 00168120  CB 61 03 10 */	lfd f27, 0x310(r1)
/* 8016B1C4 00168124  E3 41 03 08 */	psq_l f26, 776(r1), 0, qr0
/* 8016B1C8 00168128  CB 41 03 00 */	lfd f26, 0x300(r1)
/* 8016B1CC 0016812C  E3 21 02 F8 */	psq_l f25, 760(r1), 0, qr0
/* 8016B1D0 00168130  CB 21 02 F0 */	lfd f25, 0x2f0(r1)
/* 8016B1D4 00168134  BB 61 02 DC */	lmw r27, 0x2dc(r1)
/* 8016B1D8 00168138  80 01 03 64 */	lwz r0, 0x364(r1)
/* 8016B1DC 0016813C  7C 08 03 A6 */	mtlr r0
/* 8016B1E0 00168140  38 21 03 60 */	addi r1, r1, 0x360
/* 8016B1E4 00168144  4E 80 00 20 */	blr

.global sub_8016b1e8
sub_8016b1e8:
/* 8016B1E8 00168148  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016B1EC 0016814C  7C 08 02 A6 */	mflr r0
/* 8016B1F0 00168150  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016B1F4 00168154  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016B1F8 00168158  7C DF 33 78 */	mr r31, r6
/* 8016B1FC 0016815C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016B200 00168160  7C BE 2B 78 */	mr r30, r5
/* 8016B204 00168164  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8016B208 00168168  7C 9D 23 78 */	mr r29, r4
/* 8016B20C 0016816C  93 81 00 20 */	stw r28, 0x20(r1)
/* 8016B210 00168170  7C 7C 1B 78 */	mr r28, r3
/* 8016B214 00168174  38 9C 00 34 */	addi r4, r28, 0x34
/* 8016B218 00168178  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8016B21C 0016817C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8016B220 00168180  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8016B224 00168184  38 61 00 08 */	addi r3, r1, 8
/* 8016B228 00168188  D0 05 00 00 */	stfs f0, 0(r5)
/* 8016B22C 0016818C  D0 25 00 04 */	stfs f1, 4(r5)
/* 8016B230 00168190  D0 45 00 08 */	stfs f2, 8(r5)
/* 8016B234 00168194  48 1A 6E F5 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8016B238 00168198  C0 01 00 08 */	lfs f0, 8(r1)
/* 8016B23C 0016819C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8016B240 001681A0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8016B244 001681A4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8016B248 001681A8  90 7F 00 04 */	stw r3, 4(r31)
/* 8016B24C 001681AC  90 1F 00 08 */	stw r0, 8(r31)
/* 8016B250 001681B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016B254 001681B4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8016B258 001681B8  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 8016B25C 001681BC  A0 9C 07 B0 */	lhz r4, 0x7b0(r28)
/* 8016B260 001681C0  A0 03 00 08 */	lhz r0, 8(r3)
/* 8016B264 001681C4  7C 04 00 40 */	cmplw r4, r0
/* 8016B268 001681C8  40 82 00 1C */	bne lbl_8016B284
/* 8016B26C 001681CC  7F 83 E3 78 */	mr r3, r28
/* 8016B270 001681D0  7F A4 EB 78 */	mr r4, r29
/* 8016B274 001681D4  7F C5 F3 78 */	mr r5, r30
/* 8016B278 001681D8  7F E6 FB 78 */	mr r6, r31
/* 8016B27C 001681DC  4B FF F7 95 */	bl sub_8016aa10
/* 8016B280 001681E0  48 00 00 18 */	b lbl_8016B298
lbl_8016B284:
/* 8016B284 001681E4  7F 83 E3 78 */	mr r3, r28
/* 8016B288 001681E8  7F A4 EB 78 */	mr r4, r29
/* 8016B28C 001681EC  7F C5 F3 78 */	mr r5, r30
/* 8016B290 001681F0  7F E6 FB 78 */	mr r6, r31
/* 8016B294 001681F4  4B FF F5 2D */	bl sub_8016a7c0
lbl_8016B298:
/* 8016B298 001681F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016B29C 001681FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016B2A0 00168200  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016B2A4 00168204  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8016B2A8 00168208  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8016B2AC 0016820C  7C 08 03 A6 */	mtlr r0
/* 8016B2B0 00168210  38 21 00 30 */	addi r1, r1, 0x30
/* 8016B2B4 00168214  4E 80 00 20 */	blr

.global sub_8016b2b8
sub_8016b2b8:
/* 8016B2B8 00168218  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8016B2BC 0016821C  7C 08 02 A6 */	mflr r0
/* 8016B2C0 00168220  90 01 00 44 */	stw r0, 0x44(r1)
/* 8016B2C4 00168224  38 00 00 00 */	li r0, 0
/* 8016B2C8 00168228  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 8016B2CC 0016822C  7C 7A 1B 78 */	mr r26, r3
/* 8016B2D0 00168230  7C 9B 23 78 */	mr r27, r4
/* 8016B2D4 00168234  7C BC 2B 78 */	mr r28, r5
/* 8016B2D8 00168238  90 01 00 08 */	stw r0, 8(r1)
/* 8016B2DC 0016823C  3B E1 00 0C */	addi r31, r1, 0xc
/* 8016B2E0 00168240  3B C0 FF FF */	li r30, -1
/* 8016B2E4 00168244  3B A0 00 01 */	li r29, 1
lbl_8016B2E8:
/* 8016B2E8 00168248  7F A4 EB 78 */	mr r4, r29
/* 8016B2EC 0016824C  38 7A 05 6C */	addi r3, r26, 0x56c
/* 8016B2F0 00168250  48 00 72 31 */	bl sub_80172520
/* 8016B2F4 00168254  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8016B2F8 00168258  28 00 00 00 */	cmplwi r0, 0
/* 8016B2FC 0016825C  41 82 00 24 */	beq lbl_8016B320
/* 8016B300 00168260  80 01 00 08 */	lwz r0, 8(r1)
/* 8016B304 00168264  54 00 10 3A */	slwi r0, r0, 2
/* 8016B308 00168268  7C 7F 02 15 */	add. r3, r31, r0
/* 8016B30C 0016826C  41 82 00 08 */	beq lbl_8016B314
/* 8016B310 00168270  93 A3 00 00 */	stw r29, 0(r3)
lbl_8016B314:
/* 8016B314 00168274  80 61 00 08 */	lwz r3, 8(r1)
/* 8016B318 00168278  38 03 00 01 */	addi r0, r3, 1
/* 8016B31C 0016827C  90 01 00 08 */	stw r0, 8(r1)
lbl_8016B320:
/* 8016B320 00168280  3B BD 00 01 */	addi r29, r29, 1
/* 8016B324 00168284  2C 1D 00 04 */	cmpwi r29, 4
/* 8016B328 00168288  40 81 FF C0 */	ble lbl_8016B2E8
/* 8016B32C 0016828C  80 81 00 08 */	lwz r4, 8(r1)
/* 8016B330 00168290  2C 04 00 00 */	cmpwi r4, 0
/* 8016B334 00168294  41 82 00 64 */	beq lbl_8016B398
/* 8016B338 00168298  80 7B 09 00 */	lwz r3, 0x900(r27)
/* 8016B33C 0016829C  38 A4 FF FF */	addi r5, r4, -1
/* 8016B340 001682A0  38 80 00 00 */	li r4, 0
/* 8016B344 001682A4  48 1A 72 51 */	bl Range__9CRandom16Fii
/* 8016B348 001682A8  54 60 10 3A */	slwi r0, r3, 2
/* 8016B34C 001682AC  7C BF 00 2E */	lwzx r5, r31, r0
/* 8016B350 001682B0  7C 1C 28 00 */	cmpw r28, r5
/* 8016B354 001682B4  41 82 00 0C */	beq lbl_8016B360
/* 8016B358 001682B8  7C BE 2B 78 */	mr r30, r5
/* 8016B35C 001682BC  48 00 00 3C */	b lbl_8016B398
lbl_8016B360:
/* 8016B360 001682C0  80 01 00 08 */	lwz r0, 8(r1)
/* 8016B364 001682C4  38 83 00 01 */	addi r4, r3, 1
/* 8016B368 001682C8  7C 04 00 00 */	cmpw r4, r0
/* 8016B36C 001682CC  40 80 00 10 */	bge lbl_8016B37C
/* 8016B370 001682D0  54 80 10 3A */	slwi r0, r4, 2
/* 8016B374 001682D4  7F DF 00 2E */	lwzx r30, r31, r0
/* 8016B378 001682D8  48 00 00 20 */	b lbl_8016B398
lbl_8016B37C:
/* 8016B37C 001682DC  34 03 FF FF */	addic. r0, r3, -1
/* 8016B380 001682E0  41 80 00 14 */	blt lbl_8016B394
/* 8016B384 001682E4  38 03 FF FF */	addi r0, r3, -1
/* 8016B388 001682E8  54 00 10 3A */	slwi r0, r0, 2
/* 8016B38C 001682EC  7F DF 00 2E */	lwzx r30, r31, r0
/* 8016B390 001682F0  48 00 00 08 */	b lbl_8016B398
lbl_8016B394:
/* 8016B394 001682F4  7C BE 2B 78 */	mr r30, r5
lbl_8016B398:
/* 8016B398 001682F8  80 C1 00 08 */	lwz r6, 8(r1)
/* 8016B39C 001682FC  7F C3 F3 78 */	mr r3, r30
/* 8016B3A0 00168300  38 80 00 00 */	li r4, 0
/* 8016B3A4 00168304  2C 06 00 00 */	cmpwi r6, 0
/* 8016B3A8 00168308  40 81 00 40 */	ble lbl_8016B3E8
/* 8016B3AC 0016830C  2C 06 00 08 */	cmpwi r6, 8
/* 8016B3B0 00168310  38 A6 FF F8 */	addi r5, r6, -8
/* 8016B3B4 00168314  40 81 00 20 */	ble lbl_8016B3D4
/* 8016B3B8 00168318  38 05 00 07 */	addi r0, r5, 7
/* 8016B3BC 0016831C  54 00 E8 FE */	srwi r0, r0, 3
/* 8016B3C0 00168320  7C 09 03 A6 */	mtctr r0
/* 8016B3C4 00168324  2C 05 00 00 */	cmpwi r5, 0
/* 8016B3C8 00168328  40 81 00 0C */	ble lbl_8016B3D4
lbl_8016B3CC:
/* 8016B3CC 0016832C  38 84 00 08 */	addi r4, r4, 8
/* 8016B3D0 00168330  42 00 FF FC */	bdnz lbl_8016B3CC
lbl_8016B3D4:
/* 8016B3D4 00168334  7C 04 30 50 */	subf r0, r4, r6
/* 8016B3D8 00168338  7C 09 03 A6 */	mtctr r0
/* 8016B3DC 0016833C  7C 04 30 00 */	cmpw r4, r6
/* 8016B3E0 00168340  40 80 00 08 */	bge lbl_8016B3E8
lbl_8016B3E4:
/* 8016B3E4 00168344  42 00 00 00 */	bdnz lbl_8016B3E4
lbl_8016B3E8:
/* 8016B3E8 00168348  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 8016B3EC 0016834C  38 00 00 00 */	li r0, 0
/* 8016B3F0 00168350  90 01 00 08 */	stw r0, 8(r1)
/* 8016B3F4 00168354  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8016B3F8 00168358  7C 08 03 A6 */	mtlr r0
/* 8016B3FC 0016835C  38 21 00 40 */	addi r1, r1, 0x40
/* 8016B400 00168360  4E 80 00 20 */	blr

.global sub_8016b404
sub_8016b404:
/* 8016B404 00168364  94 21 FB E0 */	stwu r1, -0x420(r1)
/* 8016B408 00168368  7C 08 02 A6 */	mflr r0
/* 8016B40C 0016836C  38 A0 FF FF */	li r5, -1
/* 8016B410 00168370  90 01 04 24 */	stw r0, 0x424(r1)
/* 8016B414 00168374  BF 01 04 00 */	stmw r24, 0x400(r1)
/* 8016B418 00168378  7C 7C 1B 78 */	mr r28, r3
/* 8016B41C 0016837C  7C 9D 23 78 */	mr r29, r4
/* 8016B420 00168380  4B FF FE 99 */	bl sub_8016b2b8
/* 8016B424 00168384  7C 60 1B 78 */	mr r0, r3
/* 8016B428 00168388  7F 83 E3 78 */	mr r3, r28
/* 8016B42C 0016838C  7C 1A 03 78 */	mr r26, r0
/* 8016B430 00168390  7F A4 EB 78 */	mr r4, r29
/* 8016B434 00168394  7F 45 D3 78 */	mr r5, r26
/* 8016B438 00168398  4B FF FE 81 */	bl sub_8016b2b8
/* 8016B43C 0016839C  2C 1A FF FF */	cmpwi r26, -1
/* 8016B440 001683A0  7C 7E 1B 78 */	mr r30, r3
/* 8016B444 001683A4  41 82 03 D8 */	beq lbl_8016B81C
/* 8016B448 001683A8  2C 1E FF FF */	cmpwi r30, -1
/* 8016B44C 001683AC  41 82 03 D0 */	beq lbl_8016B81C
/* 8016B450 001683B0  7F 44 D3 78 */	mr r4, r26
/* 8016B454 001683B4  38 7C 05 6C */	addi r3, r28, 0x56c
/* 8016B458 001683B8  48 00 70 C9 */	bl sub_80172520
/* 8016B45C 001683BC  80 E3 00 08 */	lwz r7, 8(r3)
/* 8016B460 001683C0  38 00 00 01 */	li r0, 1
/* 8016B464 001683C4  80 C3 00 04 */	lwz r6, 4(r3)
/* 8016B468 001683C8  38 81 00 8C */	addi r4, r1, 0x8c
/* 8016B46C 001683CC  80 A3 00 00 */	lwz r5, 0(r3)
/* 8016B470 001683D0  38 61 01 5C */	addi r3, r1, 0x15c
/* 8016B474 001683D4  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 8016B478 001683D8  90 C1 00 90 */	stw r6, 0x90(r1)
/* 8016B47C 001683DC  C0 1C 07 E8 */	lfs f0, 0x7e8(r28)
/* 8016B480 001683E0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8016B484 001683E4  C0 1C 07 EC */	lfs f0, 0x7ec(r28)
/* 8016B488 001683E8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8016B48C 001683EC  C0 1C 07 F0 */	lfs f0, 0x7f0(r28)
/* 8016B490 001683F0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8016B494 001683F4  98 01 00 A0 */	stb r0, 0xa0(r1)
/* 8016B498 001683F8  90 E1 00 A4 */	stw r7, 0xa4(r1)
/* 8016B49C 001683FC  4B FA B6 B9 */	bl __ct__10CModelDataFRC8CAnimRes
/* 8016B4A0 00168400  93 5C 07 CC */	stw r26, 0x7cc(r28)
/* 8016B4A4 00168404  38 61 02 D4 */	addi r3, r1, 0x2d4
/* 8016B4A8 00168408  38 9C 05 6C */	addi r4, r28, 0x56c
/* 8016B4AC 0016840C  48 00 03 85 */	bl sub_8016b830
/* 8016B4B0 00168410  88 01 03 FC */	lbz r0, 0x3fc(r1)
/* 8016B4B4 00168414  38 60 00 00 */	li r3, 0
/* 8016B4B8 00168418  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8016B4BC 0016841C  3C 60 80 3D */	lis r3, lbl_803D051C@ha
/* 8016B4C0 00168420  98 01 03 FC */	stb r0, 0x3fc(r1)
/* 8016B4C4 00168424  38 63 05 1C */	addi r3, r3, lbl_803D051C@l
/* 8016B4C8 00168428  C0 02 A0 84 */	lfs f0, lbl_805ABDA4@sda21(r2)
/* 8016B4CC 0016842C  7F A4 EB 78 */	mr r4, r29
/* 8016B4D0 00168430  80 1C 07 CC */	lwz r0, 0x7cc(r28)
/* 8016B4D4 00168434  54 00 10 3A */	slwi r0, r0, 2
/* 8016B4D8 00168438  7C 23 04 2E */	lfsx f1, r3, r0
/* 8016B4DC 0016843C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016B4E0 00168440  D0 21 03 B4 */	stfs f1, 0x3b4(r1)
/* 8016B4E4 00168444  D0 01 03 B8 */	stfs f0, 0x3b8(r1)
/* 8016B4E8 00168448  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 8016B4EC 0016844C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8016B4F0 00168450  38 63 01 20 */	addi r3, r3, 0x120
/* 8016B4F4 00168454  4B F4 C8 3D */	bl DeleteAllLights__17CParticleDatabaseCFR13CStateManager
/* 8016B4F8 00168458  7F 83 E3 78 */	mr r3, r28
/* 8016B4FC 0016845C  38 81 01 5C */	addi r4, r1, 0x15c
/* 8016B500 00168460  4B EE 9B 31 */	bl SetModelData__6CActorFRC10CModelData
/* 8016B504 00168464  C0 01 03 B4 */	lfs f0, 0x3b4(r1)
/* 8016B508 00168468  7F 83 E3 78 */	mr r3, r28
/* 8016B50C 0016846C  7F 84 E3 78 */	mr r4, r28
/* 8016B510 00168470  D0 1C 07 FC */	stfs f0, 0x7fc(r28)
/* 8016B514 00168474  D0 1C 07 F8 */	stfs f0, 0x7f8(r28)
/* 8016B518 00168478  C0 1C 07 E8 */	lfs f0, 0x7e8(r28)
/* 8016B51C 0016847C  D0 1C 07 DC */	stfs f0, 0x7dc(r28)
/* 8016B520 00168480  C0 1C 07 EC */	lfs f0, 0x7ec(r28)
/* 8016B524 00168484  D0 1C 07 E0 */	stfs f0, 0x7e0(r28)
/* 8016B528 00168488  C0 1C 07 F0 */	lfs f0, 0x7f0(r28)
/* 8016B52C 0016848C  D0 1C 07 E4 */	stfs f0, 0x7e4(r28)
/* 8016B530 00168490  C0 1C 07 DC */	lfs f0, 0x7dc(r28)
/* 8016B534 00168494  D0 1C 07 D0 */	stfs f0, 0x7d0(r28)
/* 8016B538 00168498  C0 1C 07 E0 */	lfs f0, 0x7e0(r28)
/* 8016B53C 0016849C  D0 1C 07 D4 */	stfs f0, 0x7d4(r28)
/* 8016B540 001684A0  C0 1C 07 E4 */	lfs f0, 0x7e4(r28)
/* 8016B544 001684A4  D0 1C 07 D8 */	stfs f0, 0x7d8(r28)
/* 8016B548 001684A8  48 00 0E 61 */	bl sub_8016c3a8
/* 8016B54C 001684AC  88 1C 09 BF */	lbz r0, 0x9bf(r28)
/* 8016B550 001684B0  38 60 00 01 */	li r3, 1
/* 8016B554 001684B4  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8016B558 001684B8  98 1C 09 BF */	stb r0, 0x9bf(r28)
/* 8016B55C 001684BC  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 8016B560 001684C0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8016B564 001684C4  2C 00 00 05 */	cmpwi r0, 5
/* 8016B568 001684C8  41 82 00 10 */	beq lbl_8016B578
/* 8016B56C 001684CC  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8016B570 001684D0  38 80 00 05 */	li r4, 5
/* 8016B574 001684D4  4B FC 8B 69 */	bl SetState__14CBodyStateInfoFQ23pas15EAnimationState
lbl_8016B578:
/* 8016B578 001684D8  7F C4 F3 78 */	mr r4, r30
/* 8016B57C 001684DC  38 7C 05 6C */	addi r3, r28, 0x56c
/* 8016B580 001684E0  48 00 6F A1 */	bl sub_80172520
/* 8016B584 001684E4  7C 7B 1B 78 */	mr r27, r3
/* 8016B588 001684E8  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 8016B58C 001684EC  38 81 02 D4 */	addi r4, r1, 0x2d4
/* 8016B590 001684F0  48 00 02 A1 */	bl sub_8016b830
/* 8016B594 001684F4  3C 60 80 3D */	lis r3, lbl_803D051C@ha
/* 8016B598 001684F8  57 C0 10 3A */	slwi r0, r30, 2
/* 8016B59C 001684FC  38 63 05 1C */	addi r3, r3, lbl_803D051C@l
/* 8016B5A0 00168500  C0 02 A0 84 */	lfs f0, lbl_805ABDA4@sda21(r2)
/* 8016B5A4 00168504  7C 23 04 2E */	lfsx f1, r3, r0
/* 8016B5A8 00168508  38 00 00 01 */	li r0, 1
/* 8016B5AC 0016850C  38 61 01 10 */	addi r3, r1, 0x110
/* 8016B5B0 00168510  38 81 00 70 */	addi r4, r1, 0x70
/* 8016B5B4 00168514  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016B5B8 00168518  D0 21 02 88 */	stfs f1, 0x288(r1)
/* 8016B5BC 0016851C  D0 01 02 8C */	stfs f0, 0x28c(r1)
/* 8016B5C0 00168520  80 FB 00 08 */	lwz r7, 8(r27)
/* 8016B5C4 00168524  80 DB 00 04 */	lwz r6, 4(r27)
/* 8016B5C8 00168528  80 BB 00 00 */	lwz r5, 0(r27)
/* 8016B5CC 0016852C  90 A1 00 70 */	stw r5, 0x70(r1)
/* 8016B5D0 00168530  90 C1 00 74 */	stw r6, 0x74(r1)
/* 8016B5D4 00168534  C0 1C 07 E8 */	lfs f0, 0x7e8(r28)
/* 8016B5D8 00168538  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8016B5DC 0016853C  C0 1C 07 EC */	lfs f0, 0x7ec(r28)
/* 8016B5E0 00168540  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8016B5E4 00168544  C0 1C 07 F0 */	lfs f0, 0x7f0(r28)
/* 8016B5E8 00168548  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8016B5EC 0016854C  98 01 00 84 */	stb r0, 0x84(r1)
/* 8016B5F0 00168550  90 E1 00 88 */	stw r7, 0x88(r1)
/* 8016B5F4 00168554  4B FA B5 61 */	bl __ct__10CModelDataFRC8CAnimRes
/* 8016B5F8 00168558  7F 83 E3 78 */	mr r3, r28
/* 8016B5FC 0016855C  7F A5 EB 78 */	mr r5, r29
/* 8016B600 00168560  38 80 00 07 */	li r4, 7
/* 8016B604 00168564  38 C0 FF FF */	li r6, -1
/* 8016B608 00168568  4B EE 5A B9 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8016B60C 0016856C  3C 60 80 3D */	lis r3, lbl_803D0550@ha
/* 8016B610 00168570  3B 60 00 00 */	li r27, 0
/* 8016B614 00168574  38 63 05 50 */	addi r3, r3, lbl_803D0550@l
/* 8016B618 00168578  3B 20 00 00 */	li r25, 0
/* 8016B61C 0016857C  38 83 00 B3 */	addi r4, r3, 0xb3
/* 8016B620 00168580  3B 00 00 00 */	li r24, 0
/* 8016B624 00168584  38 60 09 C8 */	li r3, 0x9c8
/* 8016B628 00168588  38 A0 00 00 */	li r5, 0
/* 8016B62C 0016858C  48 1A A2 41 */	bl __nw__FUlPCcPCc
/* 8016B630 00168590  7C 7F 1B 79 */	or. r31, r3, r3
/* 8016B634 00168594  41 82 00 C0 */	beq lbl_8016B6F4
/* 8016B638 00168598  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8016B63C 0016859C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8016B640 001685A0  38 9C 09 54 */	addi r4, r28, 0x954
/* 8016B644 001685A4  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8016B648 001685A8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8016B64C 001685AC  4B F5 9F D1 */	bl __ct__16CActorParametersFRC16CActorParameters
/* 8016B650 001685B0  80 FC 00 0C */	lwz r7, 0xc(r28)
/* 8016B654 001685B4  38 61 00 58 */	addi r3, r1, 0x58
/* 8016B658 001685B8  38 81 00 3C */	addi r4, r1, 0x3c
/* 8016B65C 001685BC  38 BC 00 20 */	addi r5, r28, 0x20
/* 8016B660 001685C0  90 E1 00 44 */	stw r7, 0x44(r1)
/* 8016B664 001685C4  38 C1 00 44 */	addi r6, r1, 0x44
/* 8016B668 001685C8  3B 60 00 01 */	li r27, 1
/* 8016B66C 001685CC  80 1C 00 04 */	lwz r0, 4(r28)
/* 8016B670 001685D0  90 E1 00 40 */	stw r7, 0x40(r1)
/* 8016B674 001685D4  90 01 00 38 */	stw r0, 0x38(r1)
/* 8016B678 001685D8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8016B67C 001685DC  4B EE 5E 09 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8016B680 001685E0  3C 60 80 3D */	lis r3, lbl_803D0550@ha
/* 8016B684 001685E4  83 5C 03 FC */	lwz r26, 0x3fc(r28)
/* 8016B688 001685E8  38 83 05 50 */	addi r4, r3, lbl_803D0550@l
/* 8016B68C 001685EC  38 61 00 48 */	addi r3, r1, 0x48
/* 8016B690 001685F0  38 84 00 BA */	addi r4, r4, 0xba
/* 8016B694 001685F4  3B 20 00 01 */	li r25, 1
/* 8016B698 001685F8  4B E9 96 21 */	bl string_l__4rstlFPCc
/* 8016B69C 001685FC  7F A4 EB 78 */	mr r4, r29
/* 8016B6A0 00168600  38 61 00 18 */	addi r3, r1, 0x18
/* 8016B6A4 00168604  3B 00 00 01 */	li r24, 1
/* 8016B6A8 00168608  4B EE 1A 35 */	bl AllocateUniqueId__13CStateManagerFv
/* 8016B6AC 0016860C  A0 61 00 18 */	lhz r3, 0x18(r1)
/* 8016B6B0 00168610  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8016B6B4 00168614  39 21 01 A8 */	addi r9, r1, 0x1a8
/* 8016B6B8 00168618  38 01 00 24 */	addi r0, r1, 0x24
/* 8016B6BC 0016861C  B0 61 00 1C */	sth r3, 0x1c(r1)
/* 8016B6C0 00168620  7F E3 FB 78 */	mr r3, r31
/* 8016B6C4 00168624  7F 46 D3 78 */	mr r6, r26
/* 8016B6C8 00168628  38 81 00 1C */	addi r4, r1, 0x1c
/* 8016B6CC 0016862C  90 A1 00 08 */	stw r5, 8(r1)
/* 8016B6D0 00168630  38 A1 00 48 */	addi r5, r1, 0x48
/* 8016B6D4 00168634  38 E1 00 58 */	addi r7, r1, 0x58
/* 8016B6D8 00168638  39 1C 00 34 */	addi r8, r28, 0x34
/* 8016B6DC 0016863C  91 21 00 0C */	stw r9, 0xc(r1)
/* 8016B6E0 00168640  39 21 01 10 */	addi r9, r1, 0x110
/* 8016B6E4 00168644  39 5C 08 1C */	addi r10, r28, 0x81c
/* 8016B6E8 00168648  90 01 00 10 */	stw r0, 0x10(r1)
/* 8016B6EC 0016864C  48 00 67 7D */	bl "__ct__8CMetroidF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC12CMetroidData"
/* 8016B6F0 00168650  7C 7F 1B 78 */	mr r31, r3
lbl_8016B6F4:
/* 8016B6F4 00168654  7F 00 07 75 */	extsb. r0, r24
/* 8016B6F8 00168658  41 82 00 0C */	beq lbl_8016B704
/* 8016B6FC 0016865C  38 61 00 48 */	addi r3, r1, 0x48
/* 8016B700 00168660  48 1D 23 E1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8016B704:
/* 8016B704 00168664  7F 20 07 75 */	extsb. r0, r25
/* 8016B708 00168668  41 82 00 44 */	beq lbl_8016B74C
/* 8016B70C 0016866C  80 01 00 60 */	lwz r0, 0x60(r1)
/* 8016B710 00168670  80 61 00 68 */	lwz r3, 0x68(r1)
/* 8016B714 00168674  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8016B718 00168678  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8016B71C 0016867C  7C 64 1B 78 */	mr r4, r3
/* 8016B720 00168680  7C 03 02 14 */	add r0, r3, r0
/* 8016B724 00168684  90 61 00 28 */	stw r3, 0x28(r1)
/* 8016B728 00168688  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016B72C 0016868C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8016B730 00168690  48 00 00 08 */	b lbl_8016B738
lbl_8016B734:
/* 8016B734 00168694  38 84 00 0C */	addi r4, r4, 0xc
lbl_8016B738:
/* 8016B738 00168698  7C 04 00 40 */	cmplw r4, r0
/* 8016B73C 0016869C  40 82 FF F8 */	bne lbl_8016B734
/* 8016B740 001686A0  28 03 00 00 */	cmplwi r3, 0
/* 8016B744 001686A4  41 82 00 08 */	beq lbl_8016B74C
/* 8016B748 001686A8  48 1A A1 E9 */	bl Free__7CMemoryFPCv
lbl_8016B74C:
/* 8016B74C 001686AC  7F 60 07 75 */	extsb. r0, r27
/* 8016B750 001686B0  41 82 00 10 */	beq lbl_8016B760
/* 8016B754 001686B4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8016B758 001686B8  38 80 FF FF */	li r4, -1
/* 8016B75C 001686BC  4B F9 AE AD */	bl __dt__16CActorParametersFv
lbl_8016B760:
/* 8016B760 001686C0  28 1F 00 00 */	cmplwi r31, 0
/* 8016B764 001686C4  41 82 00 88 */	beq lbl_8016B7EC
/* 8016B768 001686C8  7F A3 EB 78 */	mr r3, r29
/* 8016B76C 001686CC  7F E4 FB 78 */	mr r4, r31
/* 8016B770 001686D0  4B EE 15 85 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 8016B774 001686D4  7F 83 E3 78 */	mr r3, r28
/* 8016B778 001686D8  7F E4 FB 78 */	mr r4, r31
/* 8016B77C 001686DC  48 00 0C 2D */	bl sub_8016c3a8
/* 8016B780 001686E0  C0 21 02 88 */	lfs f1, 0x288(r1)
/* 8016B784 001686E4  7F E3 FB 78 */	mr r3, r31
/* 8016B788 001686E8  7F A4 EB 78 */	mr r4, r29
/* 8016B78C 001686EC  48 00 25 7D */	bl sub_8016dd08
/* 8016B790 001686F0  93 DF 07 CC */	stw r30, 0x7cc(r31)
/* 8016B794 001686F4  38 60 00 01 */	li r3, 1
/* 8016B798 001686F8  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 8016B79C 001686FC  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8016B7A0 00168700  98 1F 09 BF */	stb r0, 0x9bf(r31)
/* 8016B7A4 00168704  C0 1C 07 E8 */	lfs f0, 0x7e8(r28)
/* 8016B7A8 00168708  D0 1F 07 DC */	stfs f0, 0x7dc(r31)
/* 8016B7AC 0016870C  C0 1C 07 EC */	lfs f0, 0x7ec(r28)
/* 8016B7B0 00168710  D0 1F 07 E0 */	stfs f0, 0x7e0(r31)
/* 8016B7B4 00168714  C0 1C 07 F0 */	lfs f0, 0x7f0(r28)
/* 8016B7B8 00168718  D0 1F 07 E4 */	stfs f0, 0x7e4(r31)
/* 8016B7BC 0016871C  C0 1F 07 DC */	lfs f0, 0x7dc(r31)
/* 8016B7C0 00168720  D0 1F 07 D0 */	stfs f0, 0x7d0(r31)
/* 8016B7C4 00168724  C0 1F 07 E0 */	lfs f0, 0x7e0(r31)
/* 8016B7C8 00168728  D0 1F 07 D4 */	stfs f0, 0x7d4(r31)
/* 8016B7CC 0016872C  C0 1F 07 E4 */	lfs f0, 0x7e4(r31)
/* 8016B7D0 00168730  D0 1F 07 D8 */	stfs f0, 0x7d8(r31)
/* 8016B7D4 00168734  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 8016B7D8 00168738  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8016B7DC 0016873C  98 1F 09 BF */	stb r0, 0x9bf(r31)
/* 8016B7E0 00168740  88 7C 09 BE */	lbz r3, 0x9be(r28)
/* 8016B7E4 00168744  38 03 00 01 */	addi r0, r3, 1
/* 8016B7E8 00168748  98 1C 09 BE */	stb r0, 0x9be(r28)
lbl_8016B7EC:
/* 8016B7EC 0016874C  38 61 01 10 */	addi r3, r1, 0x110
/* 8016B7F0 00168750  38 80 FF FF */	li r4, -1
/* 8016B7F4 00168754  4B FA B2 59 */	bl __dt__10CModelDataFv
/* 8016B7F8 00168758  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 8016B7FC 0016875C  38 80 FF FF */	li r4, -1
/* 8016B800 00168760  4B F6 45 19 */	bl sub_800cfd18
/* 8016B804 00168764  38 61 02 D4 */	addi r3, r1, 0x2d4
/* 8016B808 00168768  38 80 FF FF */	li r4, -1
/* 8016B80C 0016876C  4B F6 45 0D */	bl sub_800cfd18
/* 8016B810 00168770  38 61 01 5C */	addi r3, r1, 0x15c
/* 8016B814 00168774  38 80 FF FF */	li r4, -1
/* 8016B818 00168778  4B FA B2 35 */	bl __dt__10CModelDataFv
lbl_8016B81C:
/* 8016B81C 0016877C  BB 01 04 00 */	lmw r24, 0x400(r1)
/* 8016B820 00168780  80 01 04 24 */	lwz r0, 0x424(r1)
/* 8016B824 00168784  7C 08 03 A6 */	mtlr r0
/* 8016B828 00168788  38 21 04 20 */	addi r1, r1, 0x420
/* 8016B82C 0016878C  4E 80 00 20 */	blr

.global sub_8016b830
sub_8016b830:
/* 8016B830 00168790  80 A4 00 00 */	lwz r5, 0(r4)
/* 8016B834 00168794  80 04 00 04 */	lwz r0, 4(r4)
/* 8016B838 00168798  90 A3 00 00 */	stw r5, 0(r3)
/* 8016B83C 0016879C  90 03 00 04 */	stw r0, 4(r3)
/* 8016B840 001687A0  80 A4 00 08 */	lwz r5, 8(r4)
/* 8016B844 001687A4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8016B848 001687A8  90 A3 00 08 */	stw r5, 8(r3)
/* 8016B84C 001687AC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8016B850 001687B0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8016B854 001687B4  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8016B858 001687B8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8016B85C 001687BC  90 03 00 14 */	stw r0, 0x14(r3)
/* 8016B860 001687C0  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 8016B864 001687C4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8016B868 001687C8  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8016B86C 001687CC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8016B870 001687D0  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 8016B874 001687D4  80 04 00 24 */	lwz r0, 0x24(r4)
/* 8016B878 001687D8  90 A3 00 20 */	stw r5, 0x20(r3)
/* 8016B87C 001687DC  90 03 00 24 */	stw r0, 0x24(r3)
/* 8016B880 001687E0  80 A4 00 28 */	lwz r5, 0x28(r4)
/* 8016B884 001687E4  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 8016B888 001687E8  90 A3 00 28 */	stw r5, 0x28(r3)
/* 8016B88C 001687EC  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8016B890 001687F0  80 A4 00 30 */	lwz r5, 0x30(r4)
/* 8016B894 001687F4  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8016B898 001687F8  90 A3 00 30 */	stw r5, 0x30(r3)
/* 8016B89C 001687FC  90 03 00 34 */	stw r0, 0x34(r3)
/* 8016B8A0 00168800  80 04 00 38 */	lwz r0, 0x38(r4)
/* 8016B8A4 00168804  90 03 00 38 */	stw r0, 0x38(r3)
/* 8016B8A8 00168808  80 A4 00 3C */	lwz r5, 0x3c(r4)
/* 8016B8AC 0016880C  80 04 00 40 */	lwz r0, 0x40(r4)
/* 8016B8B0 00168810  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 8016B8B4 00168814  90 03 00 40 */	stw r0, 0x40(r3)
/* 8016B8B8 00168818  80 A4 00 44 */	lwz r5, 0x44(r4)
/* 8016B8BC 0016881C  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8016B8C0 00168820  90 A3 00 44 */	stw r5, 0x44(r3)
/* 8016B8C4 00168824  90 03 00 48 */	stw r0, 0x48(r3)
/* 8016B8C8 00168828  80 A4 00 4C */	lwz r5, 0x4c(r4)
/* 8016B8CC 0016882C  80 04 00 50 */	lwz r0, 0x50(r4)
/* 8016B8D0 00168830  90 A3 00 4C */	stw r5, 0x4c(r3)
/* 8016B8D4 00168834  90 03 00 50 */	stw r0, 0x50(r3)
/* 8016B8D8 00168838  80 A4 00 54 */	lwz r5, 0x54(r4)
/* 8016B8DC 0016883C  80 04 00 58 */	lwz r0, 0x58(r4)
/* 8016B8E0 00168840  90 A3 00 54 */	stw r5, 0x54(r3)
/* 8016B8E4 00168844  90 03 00 58 */	stw r0, 0x58(r3)
/* 8016B8E8 00168848  80 04 00 5C */	lwz r0, 0x5c(r4)
/* 8016B8EC 0016884C  90 03 00 5C */	stw r0, 0x5c(r3)
/* 8016B8F0 00168850  80 04 00 60 */	lwz r0, 0x60(r4)
/* 8016B8F4 00168854  90 03 00 60 */	stw r0, 0x60(r3)
/* 8016B8F8 00168858  80 04 00 64 */	lwz r0, 0x64(r4)
/* 8016B8FC 0016885C  90 03 00 64 */	stw r0, 0x64(r3)
/* 8016B900 00168860  80 A4 00 68 */	lwz r5, 0x68(r4)
/* 8016B904 00168864  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 8016B908 00168868  90 A3 00 68 */	stw r5, 0x68(r3)
/* 8016B90C 0016886C  90 03 00 6C */	stw r0, 0x6c(r3)
/* 8016B910 00168870  80 A4 00 70 */	lwz r5, 0x70(r4)
/* 8016B914 00168874  80 04 00 74 */	lwz r0, 0x74(r4)
/* 8016B918 00168878  90 A3 00 70 */	stw r5, 0x70(r3)
/* 8016B91C 0016887C  90 03 00 74 */	stw r0, 0x74(r3)
/* 8016B920 00168880  80 A4 00 78 */	lwz r5, 0x78(r4)
/* 8016B924 00168884  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 8016B928 00168888  90 A3 00 78 */	stw r5, 0x78(r3)
/* 8016B92C 0016888C  90 03 00 7C */	stw r0, 0x7c(r3)
/* 8016B930 00168890  80 A4 00 80 */	lwz r5, 0x80(r4)
/* 8016B934 00168894  80 04 00 84 */	lwz r0, 0x84(r4)
/* 8016B938 00168898  90 A3 00 80 */	stw r5, 0x80(r3)
/* 8016B93C 0016889C  90 03 00 84 */	stw r0, 0x84(r3)
/* 8016B940 001688A0  80 A4 00 88 */	lwz r5, 0x88(r4)
/* 8016B944 001688A4  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 8016B948 001688A8  90 A3 00 88 */	stw r5, 0x88(r3)
/* 8016B94C 001688AC  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8016B950 001688B0  80 A4 00 90 */	lwz r5, 0x90(r4)
/* 8016B954 001688B4  80 04 00 94 */	lwz r0, 0x94(r4)
/* 8016B958 001688B8  90 A3 00 90 */	stw r5, 0x90(r3)
/* 8016B95C 001688BC  90 03 00 94 */	stw r0, 0x94(r3)
/* 8016B960 001688C0  80 A4 00 98 */	lwz r5, 0x98(r4)
/* 8016B964 001688C4  80 04 00 9C */	lwz r0, 0x9c(r4)
/* 8016B968 001688C8  90 A3 00 98 */	stw r5, 0x98(r3)
/* 8016B96C 001688CC  90 03 00 9C */	stw r0, 0x9c(r3)
/* 8016B970 001688D0  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8016B974 001688D4  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 8016B978 001688D8  80 A4 00 A4 */	lwz r5, 0xa4(r4)
/* 8016B97C 001688DC  80 04 00 A8 */	lwz r0, 0xa8(r4)
/* 8016B980 001688E0  90 A3 00 A4 */	stw r5, 0xa4(r3)
/* 8016B984 001688E4  90 03 00 A8 */	stw r0, 0xa8(r3)
/* 8016B988 001688E8  80 A4 00 AC */	lwz r5, 0xac(r4)
/* 8016B98C 001688EC  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 8016B990 001688F0  90 A3 00 AC */	stw r5, 0xac(r3)
/* 8016B994 001688F4  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8016B998 001688F8  80 A4 00 B4 */	lwz r5, 0xb4(r4)
/* 8016B99C 001688FC  80 04 00 B8 */	lwz r0, 0xb8(r4)
/* 8016B9A0 00168900  90 A3 00 B4 */	stw r5, 0xb4(r3)
/* 8016B9A4 00168904  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 8016B9A8 00168908  80 A4 00 BC */	lwz r5, 0xbc(r4)
/* 8016B9AC 0016890C  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 8016B9B0 00168910  90 A3 00 BC */	stw r5, 0xbc(r3)
/* 8016B9B4 00168914  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8016B9B8 00168918  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 8016B9BC 0016891C  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8016B9C0 00168920  80 04 00 C8 */	lwz r0, 0xc8(r4)
/* 8016B9C4 00168924  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 8016B9C8 00168928  80 04 00 CC */	lwz r0, 0xcc(r4)
/* 8016B9CC 0016892C  90 03 00 CC */	stw r0, 0xcc(r3)
/* 8016B9D0 00168930  C0 04 00 D0 */	lfs f0, 0xd0(r4)
/* 8016B9D4 00168934  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8016B9D8 00168938  C0 04 00 D4 */	lfs f0, 0xd4(r4)
/* 8016B9DC 0016893C  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8016B9E0 00168940  C0 04 00 D8 */	lfs f0, 0xd8(r4)
/* 8016B9E4 00168944  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 8016B9E8 00168948  C0 04 00 DC */	lfs f0, 0xdc(r4)
/* 8016B9EC 0016894C  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 8016B9F0 00168950  C0 04 00 E0 */	lfs f0, 0xe0(r4)
/* 8016B9F4 00168954  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 8016B9F8 00168958  C0 04 00 E4 */	lfs f0, 0xe4(r4)
/* 8016B9FC 0016895C  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 8016BA00 00168960  88 04 00 F4 */	lbz r0, 0xf4(r4)
/* 8016BA04 00168964  98 03 00 F4 */	stb r0, 0xf4(r3)
/* 8016BA08 00168968  88 04 00 F4 */	lbz r0, 0xf4(r4)
/* 8016BA0C 0016896C  28 00 00 00 */	cmplwi r0, 0
/* 8016BA10 00168970  41 82 00 24 */	beq lbl_8016BA34
/* 8016BA14 00168974  34 A3 00 E8 */	addic. r5, r3, 0xe8
/* 8016BA18 00168978  41 82 00 1C */	beq lbl_8016BA34
/* 8016BA1C 0016897C  80 04 00 E8 */	lwz r0, 0xe8(r4)
/* 8016BA20 00168980  90 05 00 00 */	stw r0, 0(r5)
/* 8016BA24 00168984  80 04 00 EC */	lwz r0, 0xec(r4)
/* 8016BA28 00168988  90 05 00 04 */	stw r0, 4(r5)
/* 8016BA2C 0016898C  80 04 00 F0 */	lwz r0, 0xf0(r4)
/* 8016BA30 00168990  90 05 00 08 */	stw r0, 8(r5)
lbl_8016BA34:
/* 8016BA34 00168994  88 04 01 04 */	lbz r0, 0x104(r4)
/* 8016BA38 00168998  98 03 01 04 */	stb r0, 0x104(r3)
/* 8016BA3C 0016899C  88 04 01 04 */	lbz r0, 0x104(r4)
/* 8016BA40 001689A0  28 00 00 00 */	cmplwi r0, 0
/* 8016BA44 001689A4  41 82 00 24 */	beq lbl_8016BA68
/* 8016BA48 001689A8  34 A3 00 F8 */	addic. r5, r3, 0xf8
/* 8016BA4C 001689AC  41 82 00 1C */	beq lbl_8016BA68
/* 8016BA50 001689B0  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 8016BA54 001689B4  90 05 00 00 */	stw r0, 0(r5)
/* 8016BA58 001689B8  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 8016BA5C 001689BC  90 05 00 04 */	stw r0, 4(r5)
/* 8016BA60 001689C0  80 04 01 00 */	lwz r0, 0x100(r4)
/* 8016BA64 001689C4  90 05 00 08 */	stw r0, 8(r5)
lbl_8016BA68:
/* 8016BA68 001689C8  88 04 01 14 */	lbz r0, 0x114(r4)
/* 8016BA6C 001689CC  98 03 01 14 */	stb r0, 0x114(r3)
/* 8016BA70 001689D0  88 04 01 14 */	lbz r0, 0x114(r4)
/* 8016BA74 001689D4  28 00 00 00 */	cmplwi r0, 0
/* 8016BA78 001689D8  41 82 00 24 */	beq lbl_8016BA9C
/* 8016BA7C 001689DC  34 A3 01 08 */	addic. r5, r3, 0x108
/* 8016BA80 001689E0  41 82 00 1C */	beq lbl_8016BA9C
/* 8016BA84 001689E4  80 04 01 08 */	lwz r0, 0x108(r4)
/* 8016BA88 001689E8  90 05 00 00 */	stw r0, 0(r5)
/* 8016BA8C 001689EC  80 04 01 0C */	lwz r0, 0x10c(r4)
/* 8016BA90 001689F0  90 05 00 04 */	stw r0, 4(r5)
/* 8016BA94 001689F4  80 04 01 10 */	lwz r0, 0x110(r4)
/* 8016BA98 001689F8  90 05 00 08 */	stw r0, 8(r5)
lbl_8016BA9C:
/* 8016BA9C 001689FC  88 04 01 24 */	lbz r0, 0x124(r4)
/* 8016BAA0 00168A00  98 03 01 24 */	stb r0, 0x124(r3)
/* 8016BAA4 00168A04  88 04 01 24 */	lbz r0, 0x124(r4)
/* 8016BAA8 00168A08  28 00 00 00 */	cmplwi r0, 0
/* 8016BAAC 00168A0C  41 82 00 24 */	beq lbl_8016BAD0
/* 8016BAB0 00168A10  34 A3 01 18 */	addic. r5, r3, 0x118
/* 8016BAB4 00168A14  41 82 00 1C */	beq lbl_8016BAD0
/* 8016BAB8 00168A18  80 04 01 18 */	lwz r0, 0x118(r4)
/* 8016BABC 00168A1C  90 05 00 00 */	stw r0, 0(r5)
/* 8016BAC0 00168A20  80 04 01 1C */	lwz r0, 0x11c(r4)
/* 8016BAC4 00168A24  90 05 00 04 */	stw r0, 4(r5)
/* 8016BAC8 00168A28  80 04 01 20 */	lwz r0, 0x120(r4)
/* 8016BACC 00168A2C  90 05 00 08 */	stw r0, 8(r5)
lbl_8016BAD0:
/* 8016BAD0 00168A30  88 04 01 28 */	lbz r0, 0x128(r4)
/* 8016BAD4 00168A34  98 03 01 28 */	stb r0, 0x128(r3)
/* 8016BAD8 00168A38  4E 80 00 20 */	blr

.global sub_8016badc
sub_8016badc:
/* 8016BADC 00168A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016BAE0 00168A40  7C 08 02 A6 */	mflr r0
/* 8016BAE4 00168A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016BAE8 00168A48  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 8016BAEC 00168A4C  2C 00 00 02 */	cmpwi r0, 2
/* 8016BAF0 00168A50  40 82 00 68 */	bne lbl_8016BB58
/* 8016BAF4 00168A54  A0 83 09 BC */	lhz r4, 0x9bc(r3)
/* 8016BAF8 00168A58  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016BAFC 00168A5C  7C 04 00 40 */	cmplw r4, r0
/* 8016BB00 00168A60  40 82 00 58 */	bne lbl_8016BB58
/* 8016BB04 00168A64  88 03 09 BE */	lbz r0, 0x9be(r3)
/* 8016BB08 00168A68  28 00 00 00 */	cmplwi r0, 0
/* 8016BB0C 00168A6C  40 82 00 4C */	bne lbl_8016BB58
/* 8016BB10 00168A70  C0 63 07 F8 */	lfs f3, 0x7f8(r3)
/* 8016BB14 00168A74  C0 43 07 FC */	lfs f2, 0x7fc(r3)
/* 8016BB18 00168A78  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016BB1C 00168A7C  EC 23 10 28 */	fsubs f1, f3, f2
/* 8016BB20 00168A80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016BB24 00168A84  40 81 00 34 */	ble lbl_8016BB58
/* 8016BB28 00168A88  C0 03 06 4C */	lfs f0, 0x64c(r3)
/* 8016BB2C 00168A8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8016BB30 00168A90  40 80 00 28 */	bge lbl_8016BB58
/* 8016BB34 00168A94  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8016BB38 00168A98  4C 41 13 82 */	cror 2, 1, 2
/* 8016BB3C 00168A9C  40 82 00 1C */	bne lbl_8016BB58
/* 8016BB40 00168AA0  38 63 05 6C */	addi r3, r3, 0x56c
/* 8016BB44 00168AA4  48 00 6A 2D */	bl sub_80172570
/* 8016BB48 00168AA8  7C 03 00 D0 */	neg r0, r3
/* 8016BB4C 00168AAC  7C 00 1B 78 */	or r0, r0, r3
/* 8016BB50 00168AB0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8016BB54 00168AB4  48 00 00 08 */	b lbl_8016BB5C
lbl_8016BB58:
/* 8016BB58 00168AB8  38 60 00 00 */	li r3, 0
lbl_8016BB5C:
/* 8016BB5C 00168ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016BB60 00168AC0  7C 08 03 A6 */	mtlr r0
/* 8016BB64 00168AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8016BB68 00168AC8  4E 80 00 20 */	blr

.global sub_8016bb6c
sub_8016bb6c:
/* 8016BB6C 00168ACC  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8016BB70 00168AD0  7C 08 02 A6 */	mflr r0
/* 8016BB74 00168AD4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8016BB78 00168AD8  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8016BB7C 00168ADC  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 8016BB80 00168AE0  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8016BB84 00168AE4  3C C0 80 5A */	lis r6, sZeroVector__9CVector3f@ha
/* 8016BB88 00168AE8  3C A0 80 5A */	lis r5, sNoRotation__11CQuaternion@ha
/* 8016BB8C 00168AEC  38 E5 66 60 */	addi r7, r5, sNoRotation__11CQuaternion@l
/* 8016BB90 00168AF0  FF E0 08 90 */	fmr f31, f1
/* 8016BB94 00168AF4  38 A6 66 A0 */	addi r5, r6, sZeroVector__9CVector3f@l
/* 8016BB98 00168AF8  C0 67 00 00 */	lfs f3, 0(r7)
/* 8016BB9C 00168AFC  C0 C5 00 00 */	lfs f6, 0(r5)
/* 8016BBA0 00168B00  7C 7F 1B 78 */	mr r31, r3
/* 8016BBA4 00168B04  C0 A5 00 04 */	lfs f5, 4(r5)
/* 8016BBA8 00168B08  C0 85 00 08 */	lfs f4, 8(r5)
/* 8016BBAC 00168B0C  38 A1 00 70 */	addi r5, r1, 0x70
/* 8016BBB0 00168B10  C0 47 00 04 */	lfs f2, 4(r7)
/* 8016BBB4 00168B14  38 C1 00 60 */	addi r6, r1, 0x60
/* 8016BBB8 00168B18  C0 27 00 08 */	lfs f1, 8(r7)
/* 8016BBBC 00168B1C  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 8016BBC0 00168B20  D0 C1 00 70 */	stfs f6, 0x70(r1)
/* 8016BBC4 00168B24  D0 A1 00 74 */	stfs f5, 0x74(r1)
/* 8016BBC8 00168B28  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 8016BBCC 00168B2C  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 8016BBD0 00168B30  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8016BBD4 00168B34  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8016BBD8 00168B38  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8016BBDC 00168B3C  4B FF F6 0D */	bl sub_8016b1e8
/* 8016BBE0 00168B40  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016BBE4 00168B44  38 61 00 24 */	addi r3, r1, 0x24
/* 8016BBE8 00168B48  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 8016BBEC 00168B4C  38 9F 00 34 */	addi r4, r31, 0x34
/* 8016BBF0 00168B50  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8016BBF4 00168B54  EC C0 F8 28 */	fsubs f6, f0, f31
/* 8016BBF8 00168B58  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8016BBFC 00168B5C  EC 82 07 F2 */	fmuls f4, f2, f31
/* 8016BC00 00168B60  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 8016BC04 00168B64  EC 41 07 F2 */	fmuls f2, f1, f31
/* 8016BC08 00168B68  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8016BC0C 00168B6C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8016BC10 00168B70  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8016BC14 00168B74  EC 85 21 BA */	fmadds f4, f5, f6, f4
/* 8016BC18 00168B78  EC 43 11 BA */	fmadds f2, f3, f6, f2
/* 8016BC1C 00168B7C  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 8016BC20 00168B80  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 8016BC24 00168B84  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8016BC28 00168B88  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8016BC2C 00168B8C  48 1A 64 FD */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8016BC30 00168B90  FC 20 F8 90 */	fmr f1, f31
/* 8016BC34 00168B94  38 61 00 34 */	addi r3, r1, 0x34
/* 8016BC38 00168B98  38 81 00 24 */	addi r4, r1, 0x24
/* 8016BC3C 00168B9C  38 A1 00 60 */	addi r5, r1, 0x60
/* 8016BC40 00168BA0  48 1A 59 79 */	bl SlerpLocal__11CQuaternionFRC11CQuaternionRC11CQuaternionf
/* 8016BC44 00168BA4  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 8016BC48 00168BA8  7F E3 FB 78 */	mr r3, r31
/* 8016BC4C 00168BAC  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8016BC50 00168BB0  38 81 00 54 */	addi r4, r1, 0x54
/* 8016BC54 00168BB4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8016BC58 00168BB8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8016BC5C 00168BBC  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8016BC60 00168BC0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8016BC64 00168BC4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8016BC68 00168BC8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8016BC6C 00168BCC  4B EE 72 21 */	bl SetTranslation__6CActorFRC9CVector3f
/* 8016BC70 00168BD0  38 61 00 14 */	addi r3, r1, 0x14
/* 8016BC74 00168BD4  38 81 00 44 */	addi r4, r1, 0x44
/* 8016BC78 00168BD8  48 1A 57 25 */	bl BuildNormalized__11CQuaternionCFv
/* 8016BC7C 00168BDC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8016BC80 00168BE0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8016BC84 00168BE4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8016BC88 00168BE8  38 81 00 14 */	addi r4, r1, 0x14
/* 8016BC8C 00168BEC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8016BC90 00168BF0  38 A1 00 08 */	addi r5, r1, 8
/* 8016BC94 00168BF4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8016BC98 00168BF8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8016BC9C 00168BFC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8016BCA0 00168C00  48 1A 62 1D */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 8016BCA4 00168C04  38 7F 00 34 */	addi r3, r31, 0x34
/* 8016BCA8 00168C08  38 81 00 7C */	addi r4, r1, 0x7c
/* 8016BCAC 00168C0C  48 1A 6E 95 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8016BCB0 00168C10  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8016BCB4 00168C14  38 60 00 01 */	li r3, 1
/* 8016BCB8 00168C18  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8016BCBC 00168C1C  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8016BCC0 00168C20  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8016BCC4 00168C24  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8016BCC8 00168C28  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8016BCCC 00168C2C  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8016BCD0 00168C30  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8016BCD4 00168C34  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8016BCD8 00168C38  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 8016BCDC 00168C3C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8016BCE0 00168C40  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8016BCE4 00168C44  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8016BCE8 00168C48  7C 08 03 A6 */	mtlr r0
/* 8016BCEC 00168C4C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8016BCF0 00168C50  4E 80 00 20 */	blr

.global sub_8016bcf4
sub_8016bcf4:
/* 8016BCF4 00168C54  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 8016BCF8 00168C58  7C 08 02 A6 */	mflr r0
/* 8016BCFC 00168C5C  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 8016BD00 00168C60  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 8016BD04 00168C64  F3 E1 01 98 */	psq_st f31, 408(r1), 0, qr0
/* 8016BD08 00168C68  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 8016BD0C 00168C6C  F3 C1 01 88 */	psq_st f30, 392(r1), 0, qr0
/* 8016BD10 00168C70  93 E1 01 7C */	stw r31, 0x17c(r1)
/* 8016BD14 00168C74  93 C1 01 78 */	stw r30, 0x178(r1)
/* 8016BD18 00168C78  93 A1 01 74 */	stw r29, 0x174(r1)
/* 8016BD1C 00168C7C  7C 7D 1B 78 */	mr r29, r3
/* 8016BD20 00168C80  38 A0 00 00 */	li r5, 0
/* 8016BD24 00168C84  88 03 09 C0 */	lbz r0, 0x9c0(r3)
/* 8016BD28 00168C88  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8016BD2C 00168C8C  FF E0 08 90 */	fmr f31, f1
/* 8016BD30 00168C90  7C 9E 23 78 */	mr r30, r4
/* 8016BD34 00168C94  98 03 09 C0 */	stb r0, 0x9c0(r3)
/* 8016BD38 00168C98  A0 A3 07 B0 */	lhz r5, 0x7b0(r3)
/* 8016BD3C 00168C9C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016BD40 00168CA0  7C 05 00 40 */	cmplw r5, r0
/* 8016BD44 00168CA4  41 82 04 E8 */	beq lbl_8016C22C
/* 8016BD48 00168CA8  80 1D 07 C8 */	lwz r0, 0x7c8(r29)
/* 8016BD4C 00168CAC  2C 00 00 02 */	cmpwi r0, 2
/* 8016BD50 00168CB0  41 82 00 80 */	beq lbl_8016BDD0
/* 8016BD54 00168CB4  40 80 00 14 */	bge lbl_8016BD68
/* 8016BD58 00168CB8  2C 00 00 00 */	cmpwi r0, 0
/* 8016BD5C 00168CBC  41 82 04 D0 */	beq lbl_8016C22C
/* 8016BD60 00168CC0  40 80 00 14 */	bge lbl_8016BD74
/* 8016BD64 00168CC4  48 00 04 C8 */	b lbl_8016C22C
lbl_8016BD68:
/* 8016BD68 00168CC8  2C 00 00 04 */	cmpwi r0, 4
/* 8016BD6C 00168CCC  40 80 04 C0 */	bge lbl_8016C22C
/* 8016BD70 00168CD0  48 00 03 E0 */	b lbl_8016C150
lbl_8016BD74:
/* 8016BD74 00168CD4  C0 22 A0 A0 */	lfs f1, lbl_805ABDC0@sda21(r2)
/* 8016BD78 00168CD8  4B FF FD F5 */	bl sub_8016bb6c
/* 8016BD7C 00168CDC  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8016BD80 00168CE0  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016BD84 00168CE4  A0 64 00 08 */	lhz r3, 8(r4)
/* 8016BD88 00168CE8  7C 03 00 40 */	cmplw r3, r0
/* 8016BD8C 00168CEC  40 82 00 38 */	bne lbl_8016BDC4
/* 8016BD90 00168CF0  88 1D 04 02 */	lbz r0, 0x402(r29)
/* 8016BD94 00168CF4  38 60 00 01 */	li r3, 1
/* 8016BD98 00168CF8  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8016BD9C 00168CFC  C0 02 A0 B0 */	lfs f0, lbl_805ABDD0@sda21(r2)
/* 8016BDA0 00168D00  98 1D 04 02 */	stb r0, 0x402(r29)
/* 8016BDA4 00168D04  7F C3 F3 78 */	mr r3, r30
/* 8016BDA8 00168D08  38 A1 00 40 */	addi r5, r1, 0x40
/* 8016BDAC 00168D0C  38 C0 00 29 */	li r6, 0x29
/* 8016BDB0 00168D10  D0 1D 05 04 */	stfs f0, 0x504(r29)
/* 8016BDB4 00168D14  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8016BDB8 00168D18  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 8016BDBC 00168D1C  B0 01 00 40 */	sth r0, 0x40(r1)
/* 8016BDC0 00168D20  4B ED 81 11 */	bl SendScriptMsg__13CStateManagerFP7CEntity9TEditorId20EScriptObjectMessage
lbl_8016BDC4:
/* 8016BDC4 00168D24  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016BDC8 00168D28  D0 1D 07 C0 */	stfs f0, 0x7c0(r29)
/* 8016BDCC 00168D2C  48 00 04 60 */	b lbl_8016C22C
lbl_8016BDD0:
/* 8016BDD0 00168D30  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016BDD4 00168D34  7F C3 F3 78 */	mr r3, r30
/* 8016BDD8 00168D38  38 81 00 38 */	addi r4, r1, 0x38
/* 8016BDDC 00168D3C  B0 01 00 38 */	sth r0, 0x38(r1)
/* 8016BDE0 00168D40  4B EE 07 95 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016BDE4 00168D44  7C 64 1B 78 */	mr r4, r3
/* 8016BDE8 00168D48  38 61 00 5C */	addi r3, r1, 0x5c
/* 8016BDEC 00168D4C  4B F4 3E A5 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016BDF0 00168D50  80 63 00 04 */	lwz r3, 4(r3)
/* 8016BDF4 00168D54  28 03 00 00 */	cmplwi r3, 0
/* 8016BDF8 00168D58  41 82 02 74 */	beq lbl_8016C06C
/* 8016BDFC 00168D5C  81 83 00 00 */	lwz r12, 0(r3)
/* 8016BE00 00168D60  7F C4 F3 78 */	mr r4, r30
/* 8016BE04 00168D64  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8016BE08 00168D68  7D 89 03 A6 */	mtctr r12
/* 8016BE0C 00168D6C  4E 80 04 21 */	bctrl
/* 8016BE10 00168D70  28 03 00 00 */	cmplwi r3, 0
/* 8016BE14 00168D74  41 82 02 58 */	beq lbl_8016C06C
/* 8016BE18 00168D78  C3 DD 06 3C */	lfs f30, 0x63c(r29)
/* 8016BE1C 00168D7C  7F A3 EB 78 */	mr r3, r29
/* 8016BE20 00168D80  48 00 21 21 */	bl sub_8016df40
/* 8016BE24 00168D84  EC 5F 07 B2 */	fmuls f2, f31, f30
/* 8016BE28 00168D88  C0 1D 07 BC */	lfs f0, 0x7bc(r29)
/* 8016BE2C 00168D8C  EF C2 00 72 */	fmuls f30, f2, f1
/* 8016BE30 00168D90  EC 00 F0 2A */	fadds f0, f0, f30
/* 8016BE34 00168D94  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
/* 8016BE38 00168D98  83 FE 08 4C */	lwz r31, 0x84c(r30)
/* 8016BE3C 00168D9C  A0 7D 07 B0 */	lhz r3, 0x7b0(r29)
/* 8016BE40 00168DA0  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8016BE44 00168DA4  7C 03 00 40 */	cmplw r3, r0
/* 8016BE48 00168DA8  40 82 01 08 */	bne lbl_8016BF50
/* 8016BE4C 00168DAC  88 81 00 58 */	lbz r4, 0x58(r1)
/* 8016BE50 00168DB0  38 60 00 00 */	li r3, 0
/* 8016BE54 00168DB4  50 64 3E 30 */	rlwimi r4, r3, 7, 0x18, 0x18
/* 8016BE58 00168DB8  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016BE5C 00168DBC  54 87 06 3E */	clrlwi r7, r4, 0x18
/* 8016BE60 00168DC0  88 01 01 34 */	lbz r0, 0x134(r1)
/* 8016BE64 00168DC4  39 00 00 0A */	li r8, 0xa
/* 8016BE68 00168DC8  38 A0 00 01 */	li r5, 1
/* 8016BE6C 00168DCC  50 67 36 72 */	rlwimi r7, r3, 6, 0x19, 0x19
/* 8016BE70 00168DD0  91 01 01 1C */	stw r8, 0x11c(r1)
/* 8016BE74 00168DD4  54 E6 06 3E */	clrlwi r6, r7, 0x18
/* 8016BE78 00168DD8  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8016BE7C 00168DDC  50 66 2E B4 */	rlwimi r6, r3, 5, 0x1a, 0x1a
/* 8016BE80 00168DE0  98 81 00 58 */	stb r4, 0x58(r1)
/* 8016BE84 00168DE4  38 60 00 00 */	li r3, 0
/* 8016BE88 00168DE8  38 80 00 01 */	li r4, 1
/* 8016BE8C 00168DEC  98 E1 00 58 */	stb r7, 0x58(r1)
/* 8016BE90 00168DF0  D3 C1 01 24 */	stfs f30, 0x124(r1)
/* 8016BE94 00168DF4  98 C1 01 20 */	stb r6, 0x120(r1)
/* 8016BE98 00168DF8  D3 C1 01 28 */	stfs f30, 0x128(r1)
/* 8016BE9C 00168DFC  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 8016BEA0 00168E00  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 8016BEA4 00168E04  98 01 01 34 */	stb r0, 0x134(r1)
/* 8016BEA8 00168E08  88 1F 09 C7 */	lbz r0, 0x9c7(r31)
/* 8016BEAC 00168E0C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8016BEB0 00168E10  91 01 00 54 */	stw r8, 0x54(r1)
/* 8016BEB4 00168E14  98 1F 09 C7 */	stb r0, 0x9c7(r31)
/* 8016BEB8 00168E18  80 AD 8D 98 */	lwz r5, lbl_805A7958@sda21(r13)
/* 8016BEBC 00168E1C  98 C1 00 58 */	stb r6, 0x58(r1)
/* 8016BEC0 00168E20  48 21 E0 35 */	bl __shl2i
/* 8016BEC4 00168E24  39 40 00 00 */	li r10, 0
/* 8016BEC8 00168E28  38 00 00 03 */	li r0, 3
/* 8016BECC 00168E2C  90 81 00 EC */	stw r4, 0xec(r1)
/* 8016BED0 00168E30  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8016BED4 00168E34  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8016BED8 00168E38  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8016BEDC 00168E3C  90 61 00 E8 */	stw r3, 0xe8(r1)
/* 8016BEE0 00168E40  38 81 00 34 */	addi r4, r1, 0x34
/* 8016BEE4 00168E44  7F C3 F3 78 */	mr r3, r30
/* 8016BEE8 00168E48  38 C1 00 28 */	addi r6, r1, 0x28
/* 8016BEEC 00168E4C  91 41 00 F4 */	stw r10, 0xf4(r1)
/* 8016BEF0 00168E50  38 E1 01 1C */	addi r7, r1, 0x11c
/* 8016BEF4 00168E54  39 01 00 E8 */	addi r8, r1, 0xe8
/* 8016BEF8 00168E58  91 41 00 F0 */	stw r10, 0xf0(r1)
/* 8016BEFC 00168E5C  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 8016BF00 00168E60  A1 5D 00 08 */	lhz r10, 8(r29)
/* 8016BF04 00168E64  B1 41 00 28 */	sth r10, 0x28(r1)
/* 8016BF08 00168E68  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016BF0C 00168E6C  B1 41 00 24 */	sth r10, 0x24(r1)
/* 8016BF10 00168E70  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8016BF14 00168E74  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8016BF18 00168E78  B0 01 00 30 */	sth r0, 0x30(r1)
/* 8016BF1C 00168E7C  B0 01 00 34 */	sth r0, 0x34(r1)
/* 8016BF20 00168E80  4B ED E1 81 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8016BF24 00168E84  88 1F 09 C7 */	lbz r0, 0x9c7(r31)
/* 8016BF28 00168E88  38 60 00 00 */	li r3, 0
/* 8016BF2C 00168E8C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8016BF30 00168E90  98 1F 09 C7 */	stb r0, 0x9c7(r31)
/* 8016BF34 00168E94  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 8016BF38 00168E98  88 1D 09 C0 */	lbz r0, 0x9c0(r29)
/* 8016BF3C 00168E9C  20 63 00 01 */	subfic r3, r3, 1
/* 8016BF40 00168EA0  7C 63 00 34 */	cntlzw r3, r3
/* 8016BF44 00168EA4  50 60 16 30 */	rlwimi r0, r3, 2, 0x18, 0x18
/* 8016BF48 00168EA8  98 1D 09 C0 */	stb r0, 0x9c0(r29)
/* 8016BF4C 00168EAC  48 00 00 D8 */	b lbl_8016C024
lbl_8016BF50:
/* 8016BF50 00168EB0  38 E0 00 00 */	li r7, 0
/* 8016BF54 00168EB4  88 01 00 50 */	lbz r0, 0x50(r1)
/* 8016BF58 00168EB8  50 E0 3E 30 */	rlwimi r0, r7, 7, 0x18, 0x18
/* 8016BF5C 00168EBC  88 7D 09 C0 */	lbz r3, 0x9c0(r29)
/* 8016BF60 00168EC0  38 80 00 01 */	li r4, 1
/* 8016BF64 00168EC4  98 01 00 50 */	stb r0, 0x50(r1)
/* 8016BF68 00168EC8  50 83 3E 30 */	rlwimi r3, r4, 7, 0x18, 0x18
/* 8016BF6C 00168ECC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8016BF70 00168ED0  98 7D 09 C0 */	stb r3, 0x9c0(r29)
/* 8016BF74 00168ED4  50 E0 36 72 */	rlwimi r0, r7, 6, 0x19, 0x19
/* 8016BF78 00168ED8  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016BF7C 00168EDC  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 8016BF80 00168EE0  98 01 00 50 */	stb r0, 0x50(r1)
/* 8016BF84 00168EE4  50 E6 2E B4 */	rlwimi r6, r7, 5, 0x1a, 0x1a
/* 8016BF88 00168EE8  88 01 01 18 */	lbz r0, 0x118(r1)
/* 8016BF8C 00168EEC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8016BF90 00168EF0  80 AD 8D 98 */	lwz r5, lbl_805A7958@sda21(r13)
/* 8016BF94 00168EF4  38 60 00 00 */	li r3, 0
/* 8016BF98 00168EF8  90 E1 00 4C */	stw r7, 0x4c(r1)
/* 8016BF9C 00168EFC  38 80 00 01 */	li r4, 1
/* 8016BFA0 00168F00  98 C1 00 50 */	stb r6, 0x50(r1)
/* 8016BFA4 00168F04  90 E1 01 00 */	stw r7, 0x100(r1)
/* 8016BFA8 00168F08  98 C1 01 04 */	stb r6, 0x104(r1)
/* 8016BFAC 00168F0C  D3 C1 01 08 */	stfs f30, 0x108(r1)
/* 8016BFB0 00168F10  D3 C1 01 0C */	stfs f30, 0x10c(r1)
/* 8016BFB4 00168F14  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 8016BFB8 00168F18  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8016BFBC 00168F1C  98 01 01 18 */	stb r0, 0x118(r1)
/* 8016BFC0 00168F20  48 21 DF 35 */	bl __shl2i
/* 8016BFC4 00168F24  39 40 00 00 */	li r10, 0
/* 8016BFC8 00168F28  38 00 00 03 */	li r0, 3
/* 8016BFCC 00168F2C  90 81 00 D4 */	stw r4, 0xd4(r1)
/* 8016BFD0 00168F30  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8016BFD4 00168F34  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8016BFD8 00168F38  38 A1 00 18 */	addi r5, r1, 0x18
/* 8016BFDC 00168F3C  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 8016BFE0 00168F40  38 81 00 20 */	addi r4, r1, 0x20
/* 8016BFE4 00168F44  7F C3 F3 78 */	mr r3, r30
/* 8016BFE8 00168F48  38 C1 00 14 */	addi r6, r1, 0x14
/* 8016BFEC 00168F4C  91 41 00 DC */	stw r10, 0xdc(r1)
/* 8016BFF0 00168F50  38 E1 01 00 */	addi r7, r1, 0x100
/* 8016BFF4 00168F54  39 01 00 D0 */	addi r8, r1, 0xd0
/* 8016BFF8 00168F58  91 41 00 D8 */	stw r10, 0xd8(r1)
/* 8016BFFC 00168F5C  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8016C000 00168F60  A1 5D 00 08 */	lhz r10, 8(r29)
/* 8016C004 00168F64  B1 41 00 14 */	sth r10, 0x14(r1)
/* 8016C008 00168F68  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016C00C 00168F6C  B1 41 00 10 */	sth r10, 0x10(r1)
/* 8016C010 00168F70  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8016C014 00168F74  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8016C018 00168F78  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8016C01C 00168F7C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8016C020 00168F80  4B ED E0 81 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_8016C024:
/* 8016C024 00168F84  7F A3 EB 78 */	mr r3, r29
/* 8016C028 00168F88  48 00 1F 49 */	bl sub_8016df70
/* 8016C02C 00168F8C  C0 02 A0 84 */	lfs f0, lbl_805ABDA4@sda21(r2)
/* 8016C030 00168F90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016C034 00168F94  40 80 00 18 */	bge lbl_8016C04C
/* 8016C038 00168F98  FC 20 F0 90 */	fmr f1, f30
/* 8016C03C 00168F9C  7F A3 EB 78 */	mr r3, r29
/* 8016C040 00168FA0  7F C4 F3 78 */	mr r4, r30
/* 8016C044 00168FA4  48 00 1C C5 */	bl sub_8016dd08
/* 8016C048 00168FA8  48 00 00 24 */	b lbl_8016C06C
lbl_8016C04C:
/* 8016C04C 00168FAC  81 9D 00 00 */	lwz r12, 0(r29)
/* 8016C050 00168FB0  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8016C054 00168FB4  7F A3 EB 78 */	mr r3, r29
/* 8016C058 00168FB8  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016C05C 00168FBC  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8016C060 00168FC0  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8016C064 00168FC4  7D 89 03 A6 */	mtctr r12
/* 8016C068 00168FC8  4E 80 04 21 */	bctrl
lbl_8016C06C:
/* 8016C06C 00168FCC  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8016C070 00168FD0  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016C074 00168FD4  A0 64 00 08 */	lhz r3, 8(r4)
/* 8016C078 00168FD8  C3 C2 A0 B4 */	lfs f30, lbl_805ABDD4@sda21(r2)
/* 8016C07C 00168FDC  7C 03 00 40 */	cmplw r3, r0
/* 8016C080 00168FE0  40 82 00 B0 */	bne lbl_8016C130
/* 8016C084 00168FE4  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 8016C088 00168FE8  2C 00 00 00 */	cmpwi r0, 0
/* 8016C08C 00168FEC  41 82 00 10 */	beq lbl_8016C09C
/* 8016C090 00168FF0  2C 00 00 01 */	cmpwi r0, 1
/* 8016C094 00168FF4  41 82 00 08 */	beq lbl_8016C09C
/* 8016C098 00168FF8  C3 C2 A0 A0 */	lfs f30, lbl_805ABDC0@sda21(r2)
lbl_8016C09C:
/* 8016C09C 00168FFC  2C 00 00 00 */	cmpwi r0, 0
/* 8016C0A0 00169000  40 82 00 78 */	bne lbl_8016C118
/* 8016C0A4 00169004  C0 22 A0 B8 */	lfs f1, lbl_805ABDD8@sda21(r2)
/* 8016C0A8 00169008  C0 1D 07 C0 */	lfs f0, 0x7c0(r29)
/* 8016C0AC 0016900C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8016C0B0 00169010  48 1A 8D 41 */	bl FastSinR__5CMathFf
/* 8016C0B4 00169014  FC 00 0A 10 */	fabs f0, f1
/* 8016C0B8 00169018  38 81 00 48 */	addi r4, r1, 0x48
/* 8016C0BC 0016901C  38 6D 8E 14 */	addi r3, r13, lbl_805A79D4@sda21
/* 8016C0C0 00169020  38 AD 8E 18 */	addi r5, r13, lbl_805A79D8@sda21
/* 8016C0C4 00169024  FC 00 00 18 */	frsp f0, f0
/* 8016C0C8 00169028  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8016C0CC 0016902C  4B EA 01 E9 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8016C0D0 00169030  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8016C0D4 00169034  38 81 00 0C */	addi r4, r1, 0xc
/* 8016C0D8 00169038  C0 23 00 00 */	lfs f1, 0(r3)
/* 8016C0DC 0016903C  C0 42 A0 B0 */	lfs f2, lbl_805ABDD0@sda21(r2)
/* 8016C0E0 00169040  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016C0E4 00169044  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 8016C0E8 00169048  B0 01 00 08 */	sth r0, 8(r1)
/* 8016C0EC 0016904C  80 63 00 00 */	lwz r3, 0(r3)
/* 8016C0F0 00169050  38 63 01 88 */	addi r3, r3, 0x188
/* 8016C0F4 00169054  48 05 4A 45 */	bl AddSource__19CStaticInterferenceF9TUniqueId
/* 8016C0F8 00169058  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8016C0FC 0016905C  C0 22 A0 B0 */	lfs f1, lbl_805ABDD0@sda21(r2)
/* 8016C100 00169060  C0 03 07 40 */	lfs f0, 0x740(r3)
/* 8016C104 00169064  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8016C108 00169068  40 80 00 10 */	bge lbl_8016C118
/* 8016C10C 0016906C  C0 42 80 F8 */	lfs f2, lbl_805A9E18@sda21(r2)
/* 8016C110 00169070  C0 62 80 FC */	lfs f3, lbl_805A9E1C@sda21(r2)
/* 8016C114 00169074  4B EA 6F 59 */	bl SetHudDisable__7CPlayerFfff
lbl_8016C118:
/* 8016C118 00169078  88 1D 04 02 */	lbz r0, 0x402(r29)
/* 8016C11C 0016907C  38 60 00 01 */	li r3, 1
/* 8016C120 00169080  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8016C124 00169084  C0 02 A0 B0 */	lfs f0, lbl_805ABDD0@sda21(r2)
/* 8016C128 00169088  98 1D 04 02 */	stb r0, 0x402(r29)
/* 8016C12C 0016908C  D0 1D 05 04 */	stfs f0, 0x504(r29)
lbl_8016C130:
/* 8016C130 00169090  FC 20 F0 90 */	fmr f1, f30
/* 8016C134 00169094  7F A3 EB 78 */	mr r3, r29
/* 8016C138 00169098  7F C4 F3 78 */	mr r4, r30
/* 8016C13C 0016909C  4B FF FA 31 */	bl sub_8016bb6c
/* 8016C140 001690A0  C0 1D 07 C0 */	lfs f0, 0x7c0(r29)
/* 8016C144 001690A4  EC 00 F8 2A */	fadds f0, f0, f31
/* 8016C148 001690A8  D0 1D 07 C0 */	stfs f0, 0x7c0(r29)
/* 8016C14C 001690AC  48 00 00 E0 */	b lbl_8016C22C
lbl_8016C150:
/* 8016C150 001690B0  4B EE 83 61 */	bl GetYaw__6CActorCFv
/* 8016C154 001690B4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8016C158 001690B8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8016C15C 001690BC  38 81 00 44 */	addi r4, r1, 0x44
/* 8016C160 001690C0  48 1A 4F 99 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016C164 001690C4  C0 61 00 A0 */	lfs f3, 0xa0(r1)
/* 8016C168 001690C8  38 61 00 80 */	addi r3, r1, 0x80
/* 8016C16C 001690CC  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 8016C170 001690D0  38 9D 00 34 */	addi r4, r29, 0x34
/* 8016C174 001690D4  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 8016C178 001690D8  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8016C17C 001690DC  D0 61 00 C0 */	stfs f3, 0xc0(r1)
/* 8016C180 001690E0  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 8016C184 001690E4  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 8016C188 001690E8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8016C18C 001690EC  48 1A 5F 9D */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8016C190 001690F0  C0 22 A0 B4 */	lfs f1, lbl_805ABDD4@sda21(r2)
/* 8016C194 001690F4  38 61 00 90 */	addi r3, r1, 0x90
/* 8016C198 001690F8  38 81 00 80 */	addi r4, r1, 0x80
/* 8016C19C 001690FC  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 8016C1A0 00169100  48 1A 54 19 */	bl SlerpLocal__11CQuaternionFRC11CQuaternionRC11CQuaternionf
/* 8016C1A4 00169104  C0 61 00 90 */	lfs f3, 0x90(r1)
/* 8016C1A8 00169108  38 61 00 70 */	addi r3, r1, 0x70
/* 8016C1AC 0016910C  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 8016C1B0 00169110  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8016C1B4 00169114  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 8016C1B8 00169118  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8016C1BC 0016911C  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 8016C1C0 00169120  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8016C1C4 00169124  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8016C1C8 00169128  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8016C1CC 0016912C  48 1A 51 D1 */	bl BuildNormalized__11CQuaternionCFv
/* 8016C1D0 00169130  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 8016C1D4 00169134  38 61 01 38 */	addi r3, r1, 0x138
/* 8016C1D8 00169138  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8016C1DC 0016913C  38 81 00 70 */	addi r4, r1, 0x70
/* 8016C1E0 00169140  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8016C1E4 00169144  38 A1 00 64 */	addi r5, r1, 0x64
/* 8016C1E8 00169148  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8016C1EC 0016914C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8016C1F0 00169150  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8016C1F4 00169154  48 1A 5C C9 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 8016C1F8 00169158  38 7D 00 34 */	addi r3, r29, 0x34
/* 8016C1FC 0016915C  38 81 01 38 */	addi r4, r1, 0x138
/* 8016C200 00169160  48 1A 69 41 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8016C204 00169164  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8016C208 00169168  38 60 00 01 */	li r3, 1
/* 8016C20C 0016916C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8016C210 00169170  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8016C214 00169174  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8016C218 00169178  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8016C21C 0016917C  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8016C220 00169180  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8016C224 00169184  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8016C228 00169188  98 1D 00 E4 */	stb r0, 0xe4(r29)
lbl_8016C22C:
/* 8016C22C 0016918C  E3 E1 01 98 */	psq_l f31, 408(r1), 0, qr0
/* 8016C230 00169190  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 8016C234 00169194  E3 C1 01 88 */	psq_l f30, 392(r1), 0, qr0
/* 8016C238 00169198  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 8016C23C 0016919C  83 E1 01 7C */	lwz r31, 0x17c(r1)
/* 8016C240 001691A0  83 C1 01 78 */	lwz r30, 0x178(r1)
/* 8016C244 001691A4  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 8016C248 001691A8  83 A1 01 74 */	lwz r29, 0x174(r1)
/* 8016C24C 001691AC  7C 08 03 A6 */	mtlr r0
/* 8016C250 001691B0  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 8016C254 001691B4  4E 80 00 20 */	blr

.global sub_8016c258
sub_8016c258:
/* 8016C258 001691B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016C25C 001691BC  7C 08 02 A6 */	mflr r0
/* 8016C260 001691C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016C264 001691C4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8016C268 001691C8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8016C26C 001691CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016C270 001691D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016C274 001691D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8016C278 001691D8  7C 9E 23 78 */	mr r30, r4
/* 8016C27C 001691DC  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8016C280 001691E0  7C 7D 1B 78 */	mr r29, r3
/* 8016C284 001691E4  88 04 03 00 */	lbz r0, 0x300(r4)
/* 8016C288 001691E8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8016C28C 001691EC  41 82 00 0C */	beq lbl_8016C298
/* 8016C290 001691F0  38 60 00 01 */	li r3, 1
/* 8016C294 001691F4  48 00 00 F0 */	b lbl_8016C384
lbl_8016C298:
/* 8016C298 001691F8  83 FE 08 4C */	lwz r31, 0x84c(r30)
/* 8016C29C 001691FC  A0 9D 07 B0 */	lhz r4, 0x7b0(r29)
/* 8016C2A0 00169200  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8016C2A4 00169204  7C 04 00 40 */	cmplw r4, r0
/* 8016C2A8 00169208  40 82 00 58 */	bne lbl_8016C300
/* 8016C2AC 0016920C  C3 FD 06 40 */	lfs f31, 0x640(r29)
/* 8016C2B0 00169210  48 00 1C 91 */	bl sub_8016df40
/* 8016C2B4 00169214  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8016C2B8 00169218  C0 1D 07 BC */	lfs f0, 0x7bc(r29)
/* 8016C2BC 0016921C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8016C2C0 00169220  4C 41 13 82 */	cror 2, 1, 2
/* 8016C2C4 00169224  41 82 00 18 */	beq lbl_8016C2DC
/* 8016C2C8 00169228  7F A3 EB 78 */	mr r3, r29
/* 8016C2CC 0016922C  7F C4 F3 78 */	mr r4, r30
/* 8016C2D0 00169230  4B FF DE B1 */	bl sub_8016a180
/* 8016C2D4 00169234  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016C2D8 00169238  41 82 00 0C */	beq lbl_8016C2E4
lbl_8016C2DC:
/* 8016C2DC 0016923C  38 60 00 01 */	li r3, 1
/* 8016C2E0 00169240  48 00 00 A4 */	b lbl_8016C384
lbl_8016C2E4:
/* 8016C2E4 00169244  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8016C2E8 00169248  2C 00 00 00 */	cmpwi r0, 0
/* 8016C2EC 0016924C  41 82 00 94 */	beq lbl_8016C380
/* 8016C2F0 00169250  7F A3 EB 78 */	mr r3, r29
/* 8016C2F4 00169254  7F C4 F3 78 */	mr r4, r30
/* 8016C2F8 00169258  4B FF E2 25 */	bl sub_8016a51c
/* 8016C2FC 0016925C  48 00 00 88 */	b lbl_8016C384
lbl_8016C300:
/* 8016C300 00169260  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016C304 00169264  7C 04 00 40 */	cmplw r4, r0
/* 8016C308 00169268  41 82 00 78 */	beq lbl_8016C380
/* 8016C30C 0016926C  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016C310 00169270  7F C3 F3 78 */	mr r3, r30
/* 8016C314 00169274  38 81 00 08 */	addi r4, r1, 8
/* 8016C318 00169278  B0 01 00 08 */	sth r0, 8(r1)
/* 8016C31C 0016927C  4B EE 02 89 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016C320 00169280  7C 64 1B 78 */	mr r4, r3
/* 8016C324 00169284  38 61 00 0C */	addi r3, r1, 0xc
/* 8016C328 00169288  4B F3 90 A9 */	bl sub_800a53d0
/* 8016C32C 0016928C  4B F3 90 79 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 8016C330 00169290  28 03 00 00 */	cmplwi r3, 0
/* 8016C334 00169294  41 82 00 44 */	beq lbl_8016C378
/* 8016C338 00169298  88 03 06 38 */	lbz r0, 0x638(r3)
/* 8016C33C 0016929C  3B E0 00 01 */	li r31, 1
/* 8016C340 001692A0  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8016C344 001692A4  40 82 00 2C */	bne lbl_8016C370
/* 8016C348 001692A8  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8016C34C 001692AC  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8016C350 001692B0  4B FC 7D 29 */	bl GetCurrentState__14CBodyStateInfoCFv
/* 8016C354 001692B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8016C358 001692B8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8016C35C 001692BC  7D 89 03 A6 */	mtctr r12
/* 8016C360 001692C0  4E 80 04 21 */	bctrl
/* 8016C364 001692C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016C368 001692C8  40 82 00 08 */	bne lbl_8016C370
/* 8016C36C 001692CC  3B E0 00 00 */	li r31, 0
lbl_8016C370:
/* 8016C370 001692D0  7F E3 FB 78 */	mr r3, r31
/* 8016C374 001692D4  48 00 00 10 */	b lbl_8016C384
lbl_8016C378:
/* 8016C378 001692D8  38 60 00 01 */	li r3, 1
/* 8016C37C 001692DC  48 00 00 08 */	b lbl_8016C384
lbl_8016C380:
/* 8016C380 001692E0  38 60 00 00 */	li r3, 0
lbl_8016C384:
/* 8016C384 001692E4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8016C388 001692E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016C38C 001692EC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8016C390 001692F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016C394 001692F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016C398 001692F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8016C39C 001692FC  7C 08 03 A6 */	mtlr r0
/* 8016C3A0 00169300  38 21 00 30 */	addi r1, r1, 0x30
/* 8016C3A4 00169304  4E 80 00 20 */	blr

.global sub_8016c3a8
sub_8016c3a8:
/* 8016C3A8 00169308  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016C3AC 0016930C  7C 08 02 A6 */	mflr r0
/* 8016C3B0 00169310  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016C3B4 00169314  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016C3B8 00169318  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016C3BC 0016931C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8016C3C0 00169320  7C 9D 23 78 */	mr r29, r4
/* 8016C3C4 00169324  7F A3 EB 78 */	mr r3, r29
/* 8016C3C8 00169328  4B EE 74 F5 */	bl GetMaterialFilter__6CActorCFv
/* 8016C3CC 0016932C  80 03 00 00 */	lwz r0, 0(r3)
/* 8016C3D0 00169330  38 80 00 01 */	li r4, 1
/* 8016C3D4 00169334  80 C3 00 04 */	lwz r6, 4(r3)
/* 8016C3D8 00169338  80 AD 8E 0C */	lwz r5, lbl_805A79CC@sda21(r13)
/* 8016C3DC 0016933C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8016C3E0 00169340  90 01 00 08 */	stw r0, 8(r1)
/* 8016C3E4 00169344  80 03 00 08 */	lwz r0, 8(r3)
/* 8016C3E8 00169348  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8016C3EC 0016934C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8016C3F0 00169350  90 01 00 10 */	stw r0, 0x10(r1)
/* 8016C3F4 00169354  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8016C3F8 00169358  38 60 00 00 */	li r3, 0
/* 8016C3FC 0016935C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8016C400 00169360  48 21 DA F5 */	bl __shl2i
/* 8016C404 00169364  80 AD 8E 10 */	lwz r5, lbl_805A79D0@sda21(r13)
/* 8016C408 00169368  7C 9E 23 78 */	mr r30, r4
/* 8016C40C 0016936C  7C 7F 1B 78 */	mr r31, r3
/* 8016C410 00169370  38 60 00 00 */	li r3, 0
/* 8016C414 00169374  38 80 00 01 */	li r4, 1
/* 8016C418 00169378  48 21 DA DD */	bl __shl2i
/* 8016C41C 0016937C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8016C420 00169380  7F FF 1B 78 */	or r31, r31, r3
/* 8016C424 00169384  7F DE 23 78 */	or r30, r30, r4
/* 8016C428 00169388  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8016C42C 0016938C  7C 00 FB 78 */	or r0, r0, r31
/* 8016C430 00169390  7F A3 EB 78 */	mr r3, r29
/* 8016C434 00169394  7C 85 F3 78 */	or r5, r4, r30
/* 8016C438 00169398  90 01 00 10 */	stw r0, 0x10(r1)
/* 8016C43C 0016939C  38 81 00 08 */	addi r4, r1, 8
/* 8016C440 001693A0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8016C444 001693A4  4B EE 74 5D */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8016C448 001693A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016C44C 001693AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016C450 001693B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016C454 001693B4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8016C458 001693B8  7C 08 03 A6 */	mtlr r0
/* 8016C45C 001693BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8016C460 001693C0  4E 80 00 20 */	blr

.global sub_8016c464
sub_8016c464:
/* 8016C464 001693C4  94 21 F6 E0 */	stwu r1, -0x920(r1)
/* 8016C468 001693C8  7C 08 02 A6 */	mflr r0
/* 8016C46C 001693CC  90 01 09 24 */	stw r0, 0x924(r1)
/* 8016C470 001693D0  93 E1 09 1C */	stw r31, 0x91c(r1)
/* 8016C474 001693D4  7C 9F 23 78 */	mr r31, r4
/* 8016C478 001693D8  38 80 00 01 */	li r4, 1
/* 8016C47C 001693DC  93 C1 09 18 */	stw r30, 0x918(r1)
/* 8016C480 001693E0  7C 7E 1B 78 */	mr r30, r3
/* 8016C484 001693E4  38 60 00 00 */	li r3, 0
/* 8016C488 001693E8  93 A1 09 14 */	stw r29, 0x914(r1)
/* 8016C48C 001693EC  93 81 09 10 */	stw r28, 0x910(r1)
/* 8016C490 001693F0  80 AD 8D F0 */	lwz r5, lbl_805A79B0@sda21(r13)
/* 8016C494 001693F4  48 21 DA 61 */	bl __shl2i
/* 8016C498 001693F8  80 AD 8D F4 */	lwz r5, lbl_805A79B4@sda21(r13)
/* 8016C49C 001693FC  7C 9C 23 78 */	mr r28, r4
/* 8016C4A0 00169400  7C 7D 1B 78 */	mr r29, r3
/* 8016C4A4 00169404  38 60 00 00 */	li r3, 0
/* 8016C4A8 00169408  38 80 00 01 */	li r4, 1
/* 8016C4AC 0016940C  48 21 DA 49 */	bl __shl2i
/* 8016C4B0 00169410  38 A0 00 01 */	li r5, 1
/* 8016C4B4 00169414  38 00 00 00 */	li r0, 0
/* 8016C4B8 00169418  7F 9C 23 78 */	or r28, r28, r4
/* 8016C4BC 0016941C  7F BD 1B 78 */	or r29, r29, r3
/* 8016C4C0 00169420  93 81 00 C4 */	stw r28, 0xc4(r1)
/* 8016C4C4 00169424  93 A1 00 C0 */	stw r29, 0xc0(r1)
/* 8016C4C8 00169428  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8016C4CC 0016942C  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 8016C4D0 00169430  90 A1 00 D0 */	stw r5, 0xd0(r1)
/* 8016C4D4 00169434  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 8016C4D8 00169438  90 A1 00 70 */	stw r5, 0x70(r1)
/* 8016C4DC 0016943C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8016C4E0 00169440  41 82 01 18 */	beq lbl_8016C5F8
/* 8016C4E4 00169444  7F E3 FB 78 */	mr r3, r31
/* 8016C4E8 00169448  38 9E 06 A0 */	addi r4, r30, 0x6a0
/* 8016C4EC 0016944C  38 BE 00 34 */	addi r5, r30, 0x34
/* 8016C4F0 00169450  38 C1 00 C0 */	addi r6, r1, 0xc0
/* 8016C4F4 00169454  48 01 6E AD */	bl DetectStaticCollisionBoolean__14CGameCollisionFRC13CStateManagerRC19CCollisionPrimitiveRC12CTransform4fRC15CMaterialFilter
/* 8016C4F8 00169458  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016C4FC 0016945C  40 82 00 FC */	bne lbl_8016C5F8
/* 8016C500 00169460  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016C504 00169464  3B 80 00 01 */	li r28, 1
/* 8016C508 00169468  C0 5E 08 0C */	lfs f2, 0x80c(r30)
/* 8016C50C 0016946C  38 00 00 00 */	li r0, 0
/* 8016C510 00169470  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 8016C514 00169474  40 82 00 1C */	bne lbl_8016C530
/* 8016C518 00169478  C0 1E 08 10 */	lfs f0, 0x810(r30)
/* 8016C51C 0016947C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8016C520 00169480  40 82 00 10 */	bne lbl_8016C530
/* 8016C524 00169484  C0 1E 08 14 */	lfs f0, 0x814(r30)
/* 8016C528 00169488  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8016C52C 0016948C  41 82 00 08 */	beq lbl_8016C534
lbl_8016C530:
/* 8016C530 00169490  38 00 00 01 */	li r0, 1
lbl_8016C534:
/* 8016C534 00169494  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8016C538 00169498  41 82 00 98 */	beq lbl_8016C5D0
/* 8016C53C 0016949C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016C540 001694A0  38 61 00 38 */	addi r3, r1, 0x38
/* 8016C544 001694A4  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 8016C548 001694A8  C0 7E 08 10 */	lfs f3, 0x810(r30)
/* 8016C54C 001694AC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016C550 001694B0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8016C554 001694B4  C0 3E 08 14 */	lfs f1, 0x814(r30)
/* 8016C558 001694B8  EC 64 18 28 */	fsubs f3, f4, f3
/* 8016C55C 001694BC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8016C560 001694C0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8016C564 001694C4  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8016C568 001694C8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8016C56C 001694CC  48 1A 83 4D */	bl Magnitude__9CVector3fCFv
/* 8016C570 001694D0  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016C574 001694D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016C578 001694D8  40 81 00 58 */	ble lbl_8016C5D0
/* 8016C57C 001694DC  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016C580 001694E0  7F E4 FB 78 */	mr r4, r31
/* 8016C584 001694E4  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 8016C588 001694E8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8016C58C 001694EC  EC 80 08 24 */	fdivs f4, f0, f1
/* 8016C590 001694F0  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8016C594 001694F4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8016C598 001694F8  38 BE 08 0C */	addi r5, r30, 0x80c
/* 8016C59C 001694FC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8016C5A0 00169500  38 E1 00 C0 */	addi r7, r1, 0xc0
/* 8016C5A4 00169504  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8016C5A8 00169508  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8016C5AC 0016950C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8016C5B0 00169510  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8016C5B4 00169514  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8016C5B8 00169518  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8016C5BC 0016951C  4B EE 09 DD */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8016C5C0 00169520  88 01 00 F8 */	lbz r0, 0xf8(r1)
/* 8016C5C4 00169524  7C 00 00 34 */	cntlzw r0, r0
/* 8016C5C8 00169528  54 00 D9 7E */	srwi r0, r0, 5
/* 8016C5CC 0016952C  7C 1C 03 78 */	mr r28, r0
lbl_8016C5D0:
/* 8016C5D0 00169530  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8016C5D4 00169534  41 82 00 24 */	beq lbl_8016C5F8
/* 8016C5D8 00169538  7F C3 F3 78 */	mr r3, r30
/* 8016C5DC 0016953C  7F E5 FB 78 */	mr r5, r31
/* 8016C5E0 00169540  38 80 00 13 */	li r4, 0x13
/* 8016C5E4 00169544  4B EE 7D 6D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8016C5E8 00169548  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 8016C5EC 0016954C  38 60 00 00 */	li r3, 0
/* 8016C5F0 00169550  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8016C5F4 00169554  98 1E 09 BF */	stb r0, 0x9bf(r30)
lbl_8016C5F8:
/* 8016C5F8 00169558  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 8016C5FC 0016955C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8016C600 00169560  41 82 02 08 */	beq lbl_8016C808
/* 8016C604 00169564  38 00 00 00 */	li r0, 0
/* 8016C608 00169568  80 AD 8D F8 */	lwz r5, lbl_805A79B8@sda21(r13)
/* 8016C60C 0016956C  90 01 01 08 */	stw r0, 0x108(r1)
/* 8016C610 00169570  38 60 00 00 */	li r3, 0
/* 8016C614 00169574  38 80 00 01 */	li r4, 1
/* 8016C618 00169578  48 21 D8 DD */	bl __shl2i
/* 8016C61C 0016957C  80 AD 8D FC */	lwz r5, lbl_805A79BC@sda21(r13)
/* 8016C620 00169580  7C 9D 23 78 */	mr r29, r4
/* 8016C624 00169584  7C 7C 1B 78 */	mr r28, r3
/* 8016C628 00169588  38 60 00 00 */	li r3, 0
/* 8016C62C 0016958C  38 80 00 01 */	li r4, 1
/* 8016C630 00169590  48 21 D8 C5 */	bl __shl2i
/* 8016C634 00169594  80 AD 8E 00 */	lwz r5, lbl_805A79C0@sda21(r13)
/* 8016C638 00169598  7F BD 23 78 */	or r29, r29, r4
/* 8016C63C 0016959C  7F 9C 1B 78 */	or r28, r28, r3
/* 8016C640 001695A0  38 60 00 00 */	li r3, 0
/* 8016C644 001695A4  38 80 00 01 */	li r4, 1
/* 8016C648 001695A8  48 21 D8 AD */	bl __shl2i
/* 8016C64C 001695AC  7F BD 23 78 */	or r29, r29, r4
/* 8016C650 001695B0  7F 9C 1B 78 */	or r28, r28, r3
/* 8016C654 001695B4  38 C0 00 01 */	li r6, 1
/* 8016C658 001695B8  38 00 00 00 */	li r0, 0
/* 8016C65C 001695BC  93 A1 00 AC */	stw r29, 0xac(r1)
/* 8016C660 001695C0  38 61 00 90 */	addi r3, r1, 0x90
/* 8016C664 001695C4  38 81 00 14 */	addi r4, r1, 0x14
/* 8016C668 001695C8  38 A1 00 08 */	addi r5, r1, 8
/* 8016C66C 001695CC  93 81 00 A8 */	stw r28, 0xa8(r1)
/* 8016C670 001695D0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8016C674 001695D4  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 8016C678 001695D8  90 C1 00 B8 */	stw r6, 0xb8(r1)
/* 8016C67C 001695DC  80 FE 00 64 */	lwz r7, 0x64(r30)
/* 8016C680 001695E0  C0 1E 08 08 */	lfs f0, 0x808(r30)
/* 8016C684 001695E4  C0 A7 00 04 */	lfs f5, 4(r7)
/* 8016C688 001695E8  C0 C7 00 00 */	lfs f6, 0(r7)
/* 8016C68C 001695EC  C0 87 00 08 */	lfs f4, 8(r7)
/* 8016C690 001695F0  ED 20 01 72 */	fmuls f9, f0, f5
/* 8016C694 001695F4  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8016C698 001695F8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8016C69C 001695FC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016C6A0 00169600  ED 03 48 2A */	fadds f8, f3, f9
/* 8016C6A4 00169604  EC E2 48 2A */	fadds f7, f2, f9
/* 8016C6A8 00169608  90 C1 00 58 */	stw r6, 0x58(r1)
/* 8016C6AC 0016960C  EC 20 48 2A */	fadds f1, f0, f9
/* 8016C6B0 00169610  EC 63 48 28 */	fsubs f3, f3, f9
/* 8016C6B4 00169614  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 8016C6B8 00169618  EC 42 48 28 */	fsubs f2, f2, f9
/* 8016C6BC 0016961C  EC 00 48 28 */	fsubs f0, f0, f9
/* 8016C6C0 00169620  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 8016C6C4 00169624  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8016C6C8 00169628  D0 21 00 08 */	stfs f1, 8(r1)
/* 8016C6CC 0016962C  D1 01 00 0C */	stfs f8, 0xc(r1)
/* 8016C6D0 00169630  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 8016C6D4 00169634  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8016C6D8 00169638  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8016C6DC 0016963C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8016C6E0 00169640  48 1C BE 29 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8016C6E4 00169644  7F E3 FB 78 */	mr r3, r31
/* 8016C6E8 00169648  7F C7 F3 78 */	mr r7, r30
/* 8016C6EC 0016964C  38 81 01 08 */	addi r4, r1, 0x108
/* 8016C6F0 00169650  38 A1 00 90 */	addi r5, r1, 0x90
/* 8016C6F4 00169654  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 8016C6F8 00169658  4B EE 00 29 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 8016C6FC 0016965C  7F E6 FB 78 */	mr r6, r31
/* 8016C700 00169660  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 8016C704 00169664  38 9E 00 34 */	addi r4, r30, 0x34
/* 8016C708 00169668  38 A1 01 08 */	addi r5, r1, 0x108
/* 8016C70C 0016966C  48 01 78 C1 */	bl "DetectDynamicCollisionBoolean__14CGameCollisionFRC19CCollisionPrimitiveRC12CTransform4fRCQ24rstl32reserved_vector<9TUniqueId,1024>RC13CStateManager"
/* 8016C710 00169670  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016C714 00169674  40 82 00 A0 */	bne lbl_8016C7B4
/* 8016C718 00169678  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 8016C71C 0016967C  38 60 00 00 */	li r3, 0
/* 8016C720 00169680  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8016C724 00169684  7F C3 F3 78 */	mr r3, r30
/* 8016C728 00169688  98 1E 09 BF */	stb r0, 0x9bf(r30)
/* 8016C72C 0016968C  4B EE 71 91 */	bl GetMaterialFilter__6CActorCFv
/* 8016C730 00169690  80 03 00 00 */	lwz r0, 0(r3)
/* 8016C734 00169694  38 80 00 01 */	li r4, 1
/* 8016C738 00169698  80 C3 00 04 */	lwz r6, 4(r3)
/* 8016C73C 0016969C  80 AD 8E 04 */	lwz r5, lbl_805A79C4@sda21(r13)
/* 8016C740 001696A0  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 8016C744 001696A4  90 01 00 78 */	stw r0, 0x78(r1)
/* 8016C748 001696A8  80 03 00 08 */	lwz r0, 8(r3)
/* 8016C74C 001696AC  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8016C750 001696B0  90 C1 00 84 */	stw r6, 0x84(r1)
/* 8016C754 001696B4  90 01 00 80 */	stw r0, 0x80(r1)
/* 8016C758 001696B8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8016C75C 001696BC  38 60 00 00 */	li r3, 0
/* 8016C760 001696C0  90 01 00 88 */	stw r0, 0x88(r1)
/* 8016C764 001696C4  48 21 D7 91 */	bl __shl2i
/* 8016C768 001696C8  80 AD 8E 08 */	lwz r5, lbl_805A79C8@sda21(r13)
/* 8016C76C 001696CC  7C 9D 23 78 */	mr r29, r4
/* 8016C770 001696D0  7C 7C 1B 78 */	mr r28, r3
/* 8016C774 001696D4  38 60 00 00 */	li r3, 0
/* 8016C778 001696D8  38 80 00 01 */	li r4, 1
/* 8016C77C 001696DC  48 21 D7 79 */	bl __shl2i
/* 8016C780 001696E0  7F BD 23 78 */	or r29, r29, r4
/* 8016C784 001696E4  7F 9C 1B 78 */	or r28, r28, r3
/* 8016C788 001696E8  80 61 00 80 */	lwz r3, 0x80(r1)
/* 8016C78C 001696EC  7F 80 E0 F8 */	nor r0, r28, r28
/* 8016C790 001696F0  80 A1 00 84 */	lwz r5, 0x84(r1)
/* 8016C794 001696F4  7F A4 E8 F8 */	nor r4, r29, r29
/* 8016C798 001696F8  7C 60 00 38 */	and r0, r3, r0
/* 8016C79C 001696FC  7F C3 F3 78 */	mr r3, r30
/* 8016C7A0 00169700  7C A5 20 38 */	and r5, r5, r4
/* 8016C7A4 00169704  90 01 00 80 */	stw r0, 0x80(r1)
/* 8016C7A8 00169708  38 81 00 78 */	addi r4, r1, 0x78
/* 8016C7AC 0016970C  90 A1 00 84 */	stw r5, 0x84(r1)
/* 8016C7B0 00169710  4B EE 70 F1 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
lbl_8016C7B4:
/* 8016C7B4 00169714  80 A1 01 08 */	lwz r5, 0x108(r1)
/* 8016C7B8 00169718  38 60 00 00 */	li r3, 0
/* 8016C7BC 0016971C  2C 05 00 00 */	cmpwi r5, 0
/* 8016C7C0 00169720  40 81 00 40 */	ble lbl_8016C800
/* 8016C7C4 00169724  2C 05 00 08 */	cmpwi r5, 8
/* 8016C7C8 00169728  38 85 FF F8 */	addi r4, r5, -8
/* 8016C7CC 0016972C  40 81 00 20 */	ble lbl_8016C7EC
/* 8016C7D0 00169730  38 04 00 07 */	addi r0, r4, 7
/* 8016C7D4 00169734  54 00 E8 FE */	srwi r0, r0, 3
/* 8016C7D8 00169738  7C 09 03 A6 */	mtctr r0
/* 8016C7DC 0016973C  2C 04 00 00 */	cmpwi r4, 0
/* 8016C7E0 00169740  40 81 00 0C */	ble lbl_8016C7EC
lbl_8016C7E4:
/* 8016C7E4 00169744  38 63 00 08 */	addi r3, r3, 8
/* 8016C7E8 00169748  42 00 FF FC */	bdnz lbl_8016C7E4
lbl_8016C7EC:
/* 8016C7EC 0016974C  7C 03 28 50 */	subf r0, r3, r5
/* 8016C7F0 00169750  7C 09 03 A6 */	mtctr r0
/* 8016C7F4 00169754  7C 03 28 00 */	cmpw r3, r5
/* 8016C7F8 00169758  40 80 00 08 */	bge lbl_8016C800
lbl_8016C7FC:
/* 8016C7FC 0016975C  42 00 00 00 */	bdnz lbl_8016C7FC
lbl_8016C800:
/* 8016C800 00169760  38 00 00 00 */	li r0, 0
/* 8016C804 00169764  90 01 01 08 */	stw r0, 0x108(r1)
lbl_8016C808:
/* 8016C808 00169768  80 01 09 24 */	lwz r0, 0x924(r1)
/* 8016C80C 0016976C  83 E1 09 1C */	lwz r31, 0x91c(r1)
/* 8016C810 00169770  83 C1 09 18 */	lwz r30, 0x918(r1)
/* 8016C814 00169774  83 A1 09 14 */	lwz r29, 0x914(r1)
/* 8016C818 00169778  83 81 09 10 */	lwz r28, 0x910(r1)
/* 8016C81C 0016977C  7C 08 03 A6 */	mtlr r0
/* 8016C820 00169780  38 21 09 20 */	addi r1, r1, 0x920
/* 8016C824 00169784  4E 80 00 20 */	blr

.global sub_8016c828
sub_8016c828:
/* 8016C828 00169788  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8016C82C 0016978C  7C 08 02 A6 */	mflr r0
/* 8016C830 00169790  90 01 00 54 */	stw r0, 0x54(r1)
/* 8016C834 00169794  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8016C838 00169798  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8016C83C 0016979C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8016C840 001697A0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8016C844 001697A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016C848 001697A8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016C84C 001697AC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8016C850 001697B0  7C 7D 1B 78 */	mr r29, r3
/* 8016C854 001697B4  C0 42 A0 84 */	lfs f2, lbl_805ABDA4@sda21(r2)
/* 8016C858 001697B8  C0 03 06 BC */	lfs f0, 0x6bc(r3)
/* 8016C85C 001697BC  FF E0 08 90 */	fmr f31, f1
/* 8016C860 001697C0  7C 9E 23 78 */	mr r30, r4
/* 8016C864 001697C4  EF C2 00 32 */	fmuls f30, f2, f0
/* 8016C868 001697C8  48 00 19 8D */	bl sub_8016e1f4
/* 8016C86C 001697CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016C870 001697D0  41 82 00 BC */	beq lbl_8016C92C
/* 8016C874 001697D4  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8016C878 001697D8  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016C87C 001697DC  A0 63 00 08 */	lhz r3, 8(r3)
/* 8016C880 001697E0  7C 03 00 40 */	cmplw r3, r0
/* 8016C884 001697E4  40 82 00 9C */	bne lbl_8016C920
/* 8016C888 001697E8  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016C88C 001697EC  7F C3 F3 78 */	mr r3, r30
/* 8016C890 001697F0  38 81 00 08 */	addi r4, r1, 8
/* 8016C894 001697F4  B0 01 00 08 */	sth r0, 8(r1)
/* 8016C898 001697F8  4B ED FC DD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016C89C 001697FC  7C 64 1B 78 */	mr r4, r3
/* 8016C8A0 00169800  38 61 00 10 */	addi r3, r1, 0x10
/* 8016C8A4 00169804  4B F3 FE 41 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 8016C8A8 00169808  83 E3 00 04 */	lwz r31, 4(r3)
/* 8016C8AC 0016980C  28 1F 00 00 */	cmplwi r31, 0
/* 8016C8B0 00169810  41 82 00 70 */	beq lbl_8016C920
/* 8016C8B4 00169814  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8016C8B8 00169818  C0 82 A0 BC */	lfs f4, lbl_805ABDDC@sda21(r2)
/* 8016C8BC 0016981C  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 8016C8C0 00169820  2C 00 00 00 */	cmpwi r0, 0
/* 8016C8C4 00169824  40 82 00 3C */	bne lbl_8016C900
/* 8016C8C8 00169828  C0 22 A0 C0 */	lfs f1, lbl_805ABDE0@sda21(r2)
/* 8016C8CC 0016982C  38 81 00 0C */	addi r4, r1, 0xc
/* 8016C8D0 00169830  C0 1D 07 C0 */	lfs f0, 0x7c0(r29)
/* 8016C8D4 00169834  38 6D 8D EC */	addi r3, r13, lbl_805A79AC@sda21
/* 8016C8D8 00169838  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016C8DC 0016983C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8016C8E0 00169840  4B F1 15 01 */	bl "Min<f>__5CMathFRCfRCf"
/* 8016C8E4 00169844  C0 63 00 00 */	lfs f3, 0(r3)
/* 8016C8E8 00169848  C0 22 A0 98 */	lfs f1, lbl_805ABDB8@sda21(r2)
/* 8016C8EC 0016984C  C0 02 A0 C4 */	lfs f0, lbl_805ABDE4@sda21(r2)
/* 8016C8F0 00169850  EC 21 18 28 */	fsubs f1, f1, f3
/* 8016C8F4 00169854  C0 42 A0 BC */	lfs f2, lbl_805ABDDC@sda21(r2)
/* 8016C8F8 00169858  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8016C8FC 0016985C  EC 82 00 7A */	fmadds f4, f2, f1, f0
lbl_8016C900:
/* 8016C900 00169860  FC 20 F8 90 */	fmr f1, f31
/* 8016C904 00169864  C0 42 A0 AC */	lfs f2, lbl_805ABDCC@sda21(r2)
/* 8016C908 00169868  FC 60 F0 90 */	fmr f3, f30
/* 8016C90C 0016986C  C0 A2 A0 88 */	lfs f5, lbl_805ABDA8@sda21(r2)
/* 8016C910 00169870  7F C3 F3 78 */	mr r3, r30
/* 8016C914 00169874  7F E4 FB 78 */	mr r4, r31
/* 8016C918 00169878  38 A0 00 08 */	li r5, 8
/* 8016C91C 0016987C  48 01 32 69 */	bl sub_8017fb84
lbl_8016C920:
/* 8016C920 00169880  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016C924 00169884  D0 1D 07 C4 */	stfs f0, 0x7c4(r29)
/* 8016C928 00169888  48 00 00 A8 */	b lbl_8016C9D0
lbl_8016C92C:
/* 8016C92C 0016988C  88 7D 09 BF */	lbz r3, 0x9bf(r29)
/* 8016C930 00169890  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 8016C934 00169894  40 82 00 0C */	bne lbl_8016C940
/* 8016C938 00169898  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8016C93C 0016989C  41 82 00 8C */	beq lbl_8016C9C8
lbl_8016C940:
/* 8016C940 001698A0  C0 3D 07 C4 */	lfs f1, 0x7c4(r29)
/* 8016C944 001698A4  C0 02 A0 C8 */	lfs f0, lbl_805ABDE8@sda21(r2)
/* 8016C948 001698A8  EC 21 F8 2A */	fadds f1, f1, f31
/* 8016C94C 001698AC  D0 3D 07 C4 */	stfs f1, 0x7c4(r29)
/* 8016C950 001698B0  C0 3D 07 C4 */	lfs f1, 0x7c4(r29)
/* 8016C954 001698B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016C958 001698B8  40 81 00 20 */	ble lbl_8016C978
/* 8016C95C 001698BC  7F A3 EB 78 */	mr r3, r29
/* 8016C960 001698C0  7F C4 F3 78 */	mr r4, r30
/* 8016C964 001698C4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8016C968 001698C8  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 8016C96C 001698CC  7D 89 03 A6 */	mtctr r12
/* 8016C970 001698D0  4E 80 04 21 */	bctrl
/* 8016C974 001698D4  48 00 00 2C */	b lbl_8016C9A0
lbl_8016C978:
/* 8016C978 001698D8  88 1D 09 BF */	lbz r0, 0x9bf(r29)
/* 8016C97C 001698DC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8016C980 001698E0  41 82 00 20 */	beq lbl_8016C9A0
/* 8016C984 001698E4  C0 02 A0 AC */	lfs f0, lbl_805ABDCC@sda21(r2)
/* 8016C988 001698E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016C98C 001698EC  40 81 00 14 */	ble lbl_8016C9A0
/* 8016C990 001698F0  7F A3 EB 78 */	mr r3, r29
/* 8016C994 001698F4  7F C5 F3 78 */	mr r5, r30
/* 8016C998 001698F8  38 80 00 13 */	li r4, 0x13
/* 8016C99C 001698FC  4B EE 75 E5 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8016C9A0:
/* 8016C9A0 00169900  FC 20 F8 90 */	fmr f1, f31
/* 8016C9A4 00169904  C0 42 A0 AC */	lfs f2, lbl_805ABDCC@sda21(r2)
/* 8016C9A8 00169908  FC 60 F0 90 */	fmr f3, f30
/* 8016C9AC 0016990C  C0 82 A0 CC */	lfs f4, lbl_805ABDEC@sda21(r2)
/* 8016C9B0 00169910  C0 A2 A0 88 */	lfs f5, lbl_805ABDA8@sda21(r2)
/* 8016C9B4 00169914  7F C3 F3 78 */	mr r3, r30
/* 8016C9B8 00169918  7F A4 EB 78 */	mr r4, r29
/* 8016C9BC 0016991C  38 A0 00 08 */	li r5, 8
/* 8016C9C0 00169920  48 01 31 C5 */	bl sub_8017fb84
/* 8016C9C4 00169924  48 00 00 0C */	b lbl_8016C9D0
lbl_8016C9C8:
/* 8016C9C8 00169928  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016C9CC 0016992C  D0 1D 07 C4 */	stfs f0, 0x7c4(r29)
lbl_8016C9D0:
/* 8016C9D0 00169930  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8016C9D4 00169934  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8016C9D8 00169938  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8016C9DC 0016993C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8016C9E0 00169940  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016C9E4 00169944  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016C9E8 00169948  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8016C9EC 0016994C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8016C9F0 00169950  7C 08 03 A6 */	mtlr r0
/* 8016C9F4 00169954  38 21 00 50 */	addi r1, r1, 0x50
/* 8016C9F8 00169958  4E 80 00 20 */	blr

.global sub_8016c9fc
sub_8016c9fc:
/* 8016C9FC 0016995C  94 21 F5 B0 */	stwu r1, -0xa50(r1)
/* 8016CA00 00169960  7C 08 02 A6 */	mflr r0
/* 8016CA04 00169964  90 01 0A 54 */	stw r0, 0xa54(r1)
/* 8016CA08 00169968  DB E1 0A 40 */	stfd f31, 0xa40(r1)
/* 8016CA0C 0016996C  F3 E1 0A 48 */	psq_st f31, -1464(r1), 0, qr0
/* 8016CA10 00169970  DB C1 0A 30 */	stfd f30, 0xa30(r1)
/* 8016CA14 00169974  F3 C1 0A 38 */	psq_st f30, -1480(r1), 0, qr0
/* 8016CA18 00169978  DB A1 0A 20 */	stfd f29, 0xa20(r1)
/* 8016CA1C 0016997C  F3 A1 0A 28 */	psq_st f29, -1496(r1), 0, qr0
/* 8016CA20 00169980  DB 81 0A 10 */	stfd f28, 0xa10(r1)
/* 8016CA24 00169984  F3 81 0A 18 */	psq_st f28, -1512(r1), 0, qr0
/* 8016CA28 00169988  DB 61 0A 00 */	stfd f27, 0xa00(r1)
/* 8016CA2C 0016998C  F3 61 0A 08 */	psq_st f27, -1528(r1), 0, qr0
/* 8016CA30 00169990  DB 41 09 F0 */	stfd f26, 0x9f0(r1)
/* 8016CA34 00169994  F3 41 09 F8 */	psq_st f26, -1544(r1), 0, qr0
/* 8016CA38 00169998  DB 21 09 E0 */	stfd f25, 0x9e0(r1)
/* 8016CA3C 0016999C  F3 21 09 E8 */	psq_st f25, -1560(r1), 0, qr0
/* 8016CA40 001699A0  DB 01 09 D0 */	stfd f24, 0x9d0(r1)
/* 8016CA44 001699A4  F3 01 09 D8 */	psq_st f24, -1576(r1), 0, qr0
/* 8016CA48 001699A8  DA E1 09 C0 */	stfd f23, 0x9c0(r1)
/* 8016CA4C 001699AC  F2 E1 09 C8 */	psq_st f23, -1592(r1), 0, qr0
/* 8016CA50 001699B0  BE E1 09 9C */	stmw r23, 0x99c(r1)
/* 8016CA54 001699B4  7C 9A 23 79 */	or. r26, r4, r4
/* 8016CA58 001699B8  7C 79 1B 78 */	mr r25, r3
/* 8016CA5C 001699BC  7C BB 2B 78 */	mr r27, r5
/* 8016CA60 001699C0  7C DC 33 78 */	mr r28, r6
/* 8016CA64 001699C4  7C FD 3B 78 */	mr r29, r7
/* 8016CA68 001699C8  41 82 03 F8 */	beq lbl_8016CE60
/* 8016CA6C 001699CC  80 19 07 C8 */	lwz r0, 0x7c8(r25)
/* 8016CA70 001699D0  2C 00 00 03 */	cmpwi r0, 3
/* 8016CA74 001699D4  41 82 03 EC */	beq lbl_8016CE60
/* 8016CA78 001699D8  80 AD 8D E4 */	lwz r5, lbl_805A79A4@sda21(r13)
/* 8016CA7C 001699DC  38 60 00 00 */	li r3, 0
/* 8016CA80 001699E0  38 80 00 01 */	li r4, 1
/* 8016CA84 001699E4  48 21 D4 71 */	bl __shl2i
/* 8016CA88 001699E8  80 AD 8D E8 */	lwz r5, lbl_805A79A8@sda21(r13)
/* 8016CA8C 001699EC  7C 9E 23 78 */	mr r30, r4
/* 8016CA90 001699F0  7C 78 1B 78 */	mr r24, r3
/* 8016CA94 001699F4  38 60 00 00 */	li r3, 0
/* 8016CA98 001699F8  38 80 00 01 */	li r4, 1
/* 8016CA9C 001699FC  48 21 D4 59 */	bl __shl2i
/* 8016CAA0 00169A00  80 AD 8D DC */	lwz r5, lbl_805A799C@sda21(r13)
/* 8016CAA4 00169A04  7F DE 23 78 */	or r30, r30, r4
/* 8016CAA8 00169A08  7F 18 1B 78 */	or r24, r24, r3
/* 8016CAAC 00169A0C  38 60 00 00 */	li r3, 0
/* 8016CAB0 00169A10  38 80 00 01 */	li r4, 1
/* 8016CAB4 00169A14  48 21 D4 41 */	bl __shl2i
/* 8016CAB8 00169A18  80 AD 8D E0 */	lwz r5, lbl_805A79A0@sda21(r13)
/* 8016CABC 00169A1C  7C 97 23 78 */	mr r23, r4
/* 8016CAC0 00169A20  7C 7F 1B 78 */	mr r31, r3
/* 8016CAC4 00169A24  38 60 00 00 */	li r3, 0
/* 8016CAC8 00169A28  38 80 00 01 */	li r4, 1
/* 8016CACC 00169A2C  48 21 D4 29 */	bl __shl2i
/* 8016CAD0 00169A30  38 00 00 03 */	li r0, 3
/* 8016CAD4 00169A34  7F FF 1B 78 */	or r31, r31, r3
/* 8016CAD8 00169A38  7E F7 23 78 */	or r23, r23, r4
/* 8016CADC 00169A3C  93 C1 00 EC */	stw r30, 0xec(r1)
/* 8016CAE0 00169A40  3C 60 80 3D */	lis r3, lbl_803D0530@ha
/* 8016CAE4 00169A44  C3 22 A0 80 */	lfs f25, lbl_805ABDA0@sda21(r2)
/* 8016CAE8 00169A48  93 E1 00 E0 */	stw r31, 0xe0(r1)
/* 8016CAEC 00169A4C  3B E3 05 30 */	addi r31, r3, lbl_803D0530@l
/* 8016CAF0 00169A50  FF E0 C8 90 */	fmr f31, f25
/* 8016CAF4 00169A54  C3 C2 A0 D0 */	lfs f30, lbl_805ABDF0@sda21(r2)
/* 8016CAF8 00169A58  92 E1 00 E4 */	stw r23, 0xe4(r1)
/* 8016CAFC 00169A5C  3B C0 00 00 */	li r30, 0
/* 8016CB00 00169A60  93 01 00 E8 */	stw r24, 0xe8(r1)
/* 8016CB04 00169A64  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 8016CB08 00169A68  80 79 00 64 */	lwz r3, 0x64(r25)
/* 8016CB0C 00169A6C  C0 19 00 38 */	lfs f0, 0x38(r25)
/* 8016CB10 00169A70  C0 63 00 04 */	lfs f3, 4(r3)
/* 8016CB14 00169A74  C0 59 08 08 */	lfs f2, 0x808(r25)
/* 8016CB18 00169A78  FF A0 00 50 */	fneg f29, f0
/* 8016CB1C 00169A7C  C0 39 00 48 */	lfs f1, 0x48(r25)
/* 8016CB20 00169A80  C0 19 00 58 */	lfs f0, 0x58(r25)
/* 8016CB24 00169A84  EF 42 00 F2 */	fmuls f26, f2, f3
/* 8016CB28 00169A88  C0 43 00 00 */	lfs f2, 0(r3)
/* 8016CB2C 00169A8C  FF 80 08 50 */	fneg f28, f1
/* 8016CB30 00169A90  C0 23 00 08 */	lfs f1, 8(r3)
/* 8016CB34 00169A94  FF 60 00 50 */	fneg f27, f0
/* 8016CB38 00169A98  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8016CB3C 00169A9C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8016CB40 00169AA0  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 8016CB44 00169AA4  D0 21 00 90 */	stfs f1, 0x90(r1)
lbl_8016CB48:
/* 8016CB48 00169AA8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8016CB4C 00169AAC  EE FE 00 32 */	fmuls f23, f30, f0
/* 8016CB50 00169AB0  FC 20 B8 90 */	fmr f1, f23
/* 8016CB54 00169AB4  48 1A 82 9D */	bl FastSinR__5CMathFf
/* 8016CB58 00169AB8  FF 00 08 90 */	fmr f24, f1
/* 8016CB5C 00169ABC  FC 20 B8 90 */	fmr f1, f23
/* 8016CB60 00169AC0  48 1A 81 E5 */	bl FastCosR__5CMathFf
/* 8016CB64 00169AC4  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 8016CB68 00169AC8  7F A4 EB 78 */	mr r4, r29
/* 8016CB6C 00169ACC  38 61 00 70 */	addi r3, r1, 0x70
/* 8016CB70 00169AD0  38 A1 00 BC */	addi r5, r1, 0xbc
/* 8016CB74 00169AD4  D3 01 00 C0 */	stfs f24, 0xc0(r1)
/* 8016CB78 00169AD8  D3 E1 00 C4 */	stfs f31, 0xc4(r1)
/* 8016CB7C 00169ADC  48 1A 5F 05 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8016CB80 00169AE0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8016CB84 00169AE4  38 81 00 70 */	addi r4, r1, 0x70
/* 8016CB88 00169AE8  48 1A 7C C9 */	bl AsNormalized__9CVector3fCFv
/* 8016CB8C 00169AEC  C0 61 00 7C */	lfs f3, 0x7c(r1)
/* 8016CB90 00169AF0  FC 20 D0 90 */	fmr f1, f26
/* 8016CB94 00169AF4  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 8016CB98 00169AF8  38 00 00 00 */	li r0, 0
/* 8016CB9C 00169AFC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8016CBA0 00169B00  7F 63 DB 78 */	mr r3, r27
/* 8016CBA4 00169B04  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 8016CBA8 00169B08  A1 2D A3 8C */	lhz r9, kInvalidUniqueId@sda21(r13)
/* 8016CBAC 00169B0C  7F 28 CB 78 */	mr r8, r25
/* 8016CBB0 00169B10  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8016CBB4 00169B14  38 81 01 88 */	addi r4, r1, 0x188
/* 8016CBB8 00169B18  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8016CBBC 00169B1C  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 8016CBC0 00169B20  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8016CBC4 00169B24  38 E1 00 E0 */	addi r7, r1, 0xe0
/* 8016CBC8 00169B28  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 8016CBCC 00169B2C  C0 5A 00 50 */	lfs f2, 0x50(r26)
/* 8016CBD0 00169B30  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 8016CBD4 00169B34  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8016CBD8 00169B38  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 8016CBDC 00169B3C  D0 61 00 AC */	stfs f3, 0xac(r1)
/* 8016CBE0 00169B40  C0 79 00 60 */	lfs f3, 0x60(r25)
/* 8016CBE4 00169B44  C0 59 00 50 */	lfs f2, 0x50(r25)
/* 8016CBE8 00169B48  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 8016CBEC 00169B4C  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8016CBF0 00169B50  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8016CBF4 00169B54  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 8016CBF8 00169B58  D0 61 00 AC */	stfs f3, 0xac(r1)
/* 8016CBFC 00169B5C  B1 21 00 08 */	sth r9, 8(r1)
/* 8016CC00 00169B60  90 01 01 88 */	stw r0, 0x188(r1)
/* 8016CC04 00169B64  4B ED FA D5 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC9CVector3fRC9CVector3ffRC15CMaterialFilterPC6CActor"
/* 8016CC08 00169B68  FC 20 D0 90 */	fmr f1, f26
/* 8016CC0C 00169B6C  7F 64 DB 78 */	mr r4, r27
/* 8016CC10 00169B70  38 61 01 28 */	addi r3, r1, 0x128
/* 8016CC14 00169B74  38 A1 00 08 */	addi r5, r1, 8
/* 8016CC18 00169B78  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 8016CC1C 00169B7C  38 E1 00 B0 */	addi r7, r1, 0xb0
/* 8016CC20 00169B80  39 01 00 E0 */	addi r8, r1, 0xe0
/* 8016CC24 00169B84  39 21 01 88 */	addi r9, r1, 0x188
/* 8016CC28 00169B88  4B EE 03 9D */	bl "RayWorldIntersection__13CStateManagerCFR9TUniqueIdRC9CVector3fRC9CVector3ffRC15CMaterialFilterRCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 8016CC2C 00169B8C  88 01 01 48 */	lbz r0, 0x148(r1)
/* 8016CC30 00169B90  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 8016CC34 00169B94  28 00 00 00 */	cmplwi r0, 0
/* 8016CC38 00169B98  40 82 00 D0 */	bne lbl_8016CD08
/* 8016CC3C 00169B9C  FF 20 D0 90 */	fmr f25, f26
/* 8016CC40 00169BA0  C3 A1 00 B0 */	lfs f29, 0xb0(r1)
/* 8016CC44 00169BA4  C3 81 00 B4 */	lfs f28, 0xb4(r1)
/* 8016CC48 00169BA8  38 61 01 58 */	addi r3, r1, 0x158
/* 8016CC4C 00169BAC  C3 61 00 B8 */	lfs f27, 0xb8(r1)
/* 8016CC50 00169BB0  38 99 00 34 */	addi r4, r25, 0x34
/* 8016CC54 00169BB4  48 1A 5F 21 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8016CC58 00169BB8  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 8016CC5C 00169BBC  7F 63 DB 78 */	mr r3, r27
/* 8016CC60 00169BC0  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8016CC64 00169BC4  38 99 06 A0 */	addi r4, r25, 0x6a0
/* 8016CC68 00169BC8  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 8016CC6C 00169BCC  EC BA 00 72 */	fmuls f5, f26, f1
/* 8016CC70 00169BD0  C0 21 01 74 */	lfs f1, 0x174(r1)
/* 8016CC74 00169BD4  EC 9A 00 32 */	fmuls f4, f26, f0
/* 8016CC78 00169BD8  C0 01 01 84 */	lfs f0, 0x184(r1)
/* 8016CC7C 00169BDC  EC 5A 00 B2 */	fmuls f2, f26, f2
/* 8016CC80 00169BE0  C0 61 01 64 */	lfs f3, 0x164(r1)
/* 8016CC84 00169BE4  EC 21 28 2A */	fadds f1, f1, f5
/* 8016CC88 00169BE8  38 A1 01 58 */	addi r5, r1, 0x158
/* 8016CC8C 00169BEC  EC 43 10 2A */	fadds f2, f3, f2
/* 8016CC90 00169BF0  38 C1 00 E0 */	addi r6, r1, 0xe0
/* 8016CC94 00169BF4  EC 00 20 2A */	fadds f0, f0, f4
/* 8016CC98 00169BF8  D0 21 01 74 */	stfs f1, 0x174(r1)
/* 8016CC9C 00169BFC  D0 41 01 64 */	stfs f2, 0x164(r1)
/* 8016CCA0 00169C00  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8016CCA4 00169C04  48 01 66 FD */	bl DetectStaticCollisionBoolean__14CGameCollisionFRC13CStateManagerRC19CCollisionPrimitiveRC12CTransform4fRC15CMaterialFilter
/* 8016CCA8 00169C08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016CCAC 00169C0C  40 82 00 74 */	bne lbl_8016CD20
/* 8016CCB0 00169C10  80 A1 01 88 */	lwz r5, 0x188(r1)
/* 8016CCB4 00169C14  38 60 00 00 */	li r3, 0
/* 8016CCB8 00169C18  2C 05 00 00 */	cmpwi r5, 0
/* 8016CCBC 00169C1C  40 81 00 40 */	ble lbl_8016CCFC
/* 8016CCC0 00169C20  2C 05 00 08 */	cmpwi r5, 8
/* 8016CCC4 00169C24  38 85 FF F8 */	addi r4, r5, -8
/* 8016CCC8 00169C28  40 81 00 20 */	ble lbl_8016CCE8
/* 8016CCCC 00169C2C  38 04 00 07 */	addi r0, r4, 7
/* 8016CCD0 00169C30  54 00 E8 FE */	srwi r0, r0, 3
/* 8016CCD4 00169C34  7C 09 03 A6 */	mtctr r0
/* 8016CCD8 00169C38  2C 04 00 00 */	cmpwi r4, 0
/* 8016CCDC 00169C3C  40 81 00 0C */	ble lbl_8016CCE8
lbl_8016CCE0:
/* 8016CCE0 00169C40  38 63 00 08 */	addi r3, r3, 8
/* 8016CCE4 00169C44  42 00 FF FC */	bdnz lbl_8016CCE0
lbl_8016CCE8:
/* 8016CCE8 00169C48  7C 03 28 50 */	subf r0, r3, r5
/* 8016CCEC 00169C4C  7C 09 03 A6 */	mtctr r0
/* 8016CCF0 00169C50  7C 03 28 00 */	cmpw r3, r5
/* 8016CCF4 00169C54  40 80 00 08 */	bge lbl_8016CCFC
lbl_8016CCF8:
/* 8016CCF8 00169C58  42 00 00 00 */	bdnz lbl_8016CCF8
lbl_8016CCFC:
/* 8016CCFC 00169C5C  38 00 00 00 */	li r0, 0
/* 8016CD00 00169C60  90 01 01 88 */	stw r0, 0x188(r1)
/* 8016CD04 00169C64  48 00 00 84 */	b lbl_8016CD88
lbl_8016CD08:
/* 8016CD08 00169C68  FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 8016CD0C 00169C6C  40 81 00 14 */	ble lbl_8016CD20
/* 8016CD10 00169C70  FF 20 00 90 */	fmr f25, f0
/* 8016CD14 00169C74  C3 A1 00 B0 */	lfs f29, 0xb0(r1)
/* 8016CD18 00169C78  C3 81 00 B4 */	lfs f28, 0xb4(r1)
/* 8016CD1C 00169C7C  C3 61 00 B8 */	lfs f27, 0xb8(r1)
lbl_8016CD20:
/* 8016CD20 00169C80  80 A1 01 88 */	lwz r5, 0x188(r1)
/* 8016CD24 00169C84  38 60 00 00 */	li r3, 0
/* 8016CD28 00169C88  2C 05 00 00 */	cmpwi r5, 0
/* 8016CD2C 00169C8C  40 81 00 44 */	ble lbl_8016CD70
/* 8016CD30 00169C90  2C 05 00 08 */	cmpwi r5, 8
/* 8016CD34 00169C94  38 85 FF F8 */	addi r4, r5, -8
/* 8016CD38 00169C98  40 81 00 20 */	ble lbl_8016CD58
/* 8016CD3C 00169C9C  38 04 00 07 */	addi r0, r4, 7
/* 8016CD40 00169CA0  54 00 E8 FE */	srwi r0, r0, 3
/* 8016CD44 00169CA4  7C 09 03 A6 */	mtctr r0
/* 8016CD48 00169CA8  2C 04 00 00 */	cmpwi r4, 0
/* 8016CD4C 00169CAC  40 81 00 0C */	ble lbl_8016CD58
lbl_8016CD50:
/* 8016CD50 00169CB0  38 63 00 08 */	addi r3, r3, 8
/* 8016CD54 00169CB4  42 00 FF FC */	bdnz lbl_8016CD50
lbl_8016CD58:
/* 8016CD58 00169CB8  7C 03 28 50 */	subf r0, r3, r5
/* 8016CD5C 00169CBC  7C 09 03 A6 */	mtctr r0
/* 8016CD60 00169CC0  7C 03 28 00 */	cmpw r3, r5
/* 8016CD64 00169CC4  40 80 00 0C */	bge lbl_8016CD70
lbl_8016CD68:
/* 8016CD68 00169CC8  38 63 00 01 */	addi r3, r3, 1
/* 8016CD6C 00169CCC  42 00 FF FC */	bdnz lbl_8016CD68
lbl_8016CD70:
/* 8016CD70 00169CD0  3B DE 00 01 */	addi r30, r30, 1
/* 8016CD74 00169CD4  38 00 00 00 */	li r0, 0
/* 8016CD78 00169CD8  28 1E 00 08 */	cmplwi r30, 8
/* 8016CD7C 00169CDC  90 01 01 88 */	stw r0, 0x188(r1)
/* 8016CD80 00169CE0  3B FF 00 04 */	addi r31, r31, 4
/* 8016CD84 00169CE4  41 80 FD C4 */	blt lbl_8016CB48
lbl_8016CD88:
/* 8016CD88 00169CE8  C0 62 A0 D4 */	lfs f3, lbl_805ABDF4@sda21(r2)
/* 8016CD8C 00169CEC  38 61 00 54 */	addi r3, r1, 0x54
/* 8016CD90 00169CF0  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8016CD94 00169CF4  38 81 00 48 */	addi r4, r1, 0x48
/* 8016CD98 00169CF8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8016CD9C 00169CFC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8016CDA0 00169D00  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8016CDA4 00169D04  38 C1 00 0C */	addi r6, r1, 0xc
/* 8016CDA8 00169D08  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8016CDAC 00169D0C  D3 A1 00 3C */	stfs f29, 0x3c(r1)
/* 8016CDB0 00169D10  D3 81 00 40 */	stfs f28, 0x40(r1)
/* 8016CDB4 00169D14  D3 61 00 44 */	stfs f27, 0x44(r1)
/* 8016CDB8 00169D18  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8016CDBC 00169D1C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8016CDC0 00169D20  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8016CDC4 00169D24  48 1A 48 D1 */	bl LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
/* 8016CDC8 00169D28  C0 61 00 54 */	lfs f3, 0x54(r1)
/* 8016CDCC 00169D2C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016CDD0 00169D30  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 8016CDD4 00169D34  38 99 00 34 */	addi r4, r25, 0x34
/* 8016CDD8 00169D38  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8016CDDC 00169D3C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8016CDE0 00169D40  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 8016CDE4 00169D44  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8016CDE8 00169D48  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8016CDEC 00169D4C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8016CDF0 00169D50  48 1A 53 39 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8016CDF4 00169D54  38 61 00 2C */	addi r3, r1, 0x2c
/* 8016CDF8 00169D58  38 81 00 1C */	addi r4, r1, 0x1c
/* 8016CDFC 00169D5C  38 A1 00 94 */	addi r5, r1, 0x94
/* 8016CE00 00169D60  48 1A 43 A1 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016CE04 00169D64  C0 59 00 60 */	lfs f2, 0x60(r25)
/* 8016CE08 00169D68  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016CE0C 00169D6C  C0 39 00 50 */	lfs f1, 0x50(r25)
/* 8016CE10 00169D70  38 81 00 2C */	addi r4, r1, 0x2c
/* 8016CE14 00169D74  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 8016CE18 00169D78  38 A1 00 10 */	addi r5, r1, 0x10
/* 8016CE1C 00169D7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8016CE20 00169D80  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8016CE24 00169D84  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8016CE28 00169D88  48 1A 50 95 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 8016CE2C 00169D8C  38 79 00 34 */	addi r3, r25, 0x34
/* 8016CE30 00169D90  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8016CE34 00169D94  48 1A 5D 0D */	bl __as__12CTransform4fFRC12CTransform4f
/* 8016CE38 00169D98  88 19 00 E4 */	lbz r0, 0xe4(r25)
/* 8016CE3C 00169D9C  38 60 00 01 */	li r3, 1
/* 8016CE40 00169DA0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8016CE44 00169DA4  98 19 00 E4 */	stb r0, 0xe4(r25)
/* 8016CE48 00169DA8  88 19 00 E4 */	lbz r0, 0xe4(r25)
/* 8016CE4C 00169DAC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8016CE50 00169DB0  98 19 00 E4 */	stb r0, 0xe4(r25)
/* 8016CE54 00169DB4  88 19 00 E4 */	lbz r0, 0xe4(r25)
/* 8016CE58 00169DB8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8016CE5C 00169DBC  98 19 00 E4 */	stb r0, 0xe4(r25)
lbl_8016CE60:
/* 8016CE60 00169DC0  E3 E1 0A 48 */	psq_l f31, -1464(r1), 0, qr0
/* 8016CE64 00169DC4  CB E1 0A 40 */	lfd f31, 0xa40(r1)
/* 8016CE68 00169DC8  E3 C1 0A 38 */	psq_l f30, -1480(r1), 0, qr0
/* 8016CE6C 00169DCC  CB C1 0A 30 */	lfd f30, 0xa30(r1)
/* 8016CE70 00169DD0  E3 A1 0A 28 */	psq_l f29, -1496(r1), 0, qr0
/* 8016CE74 00169DD4  CB A1 0A 20 */	lfd f29, 0xa20(r1)
/* 8016CE78 00169DD8  E3 81 0A 18 */	psq_l f28, -1512(r1), 0, qr0
/* 8016CE7C 00169DDC  CB 81 0A 10 */	lfd f28, 0xa10(r1)
/* 8016CE80 00169DE0  E3 61 0A 08 */	psq_l f27, -1528(r1), 0, qr0
/* 8016CE84 00169DE4  CB 61 0A 00 */	lfd f27, 0xa00(r1)
/* 8016CE88 00169DE8  E3 41 09 F8 */	psq_l f26, -1544(r1), 0, qr0
/* 8016CE8C 00169DEC  CB 41 09 F0 */	lfd f26, 0x9f0(r1)
/* 8016CE90 00169DF0  E3 21 09 E8 */	psq_l f25, -1560(r1), 0, qr0
/* 8016CE94 00169DF4  CB 21 09 E0 */	lfd f25, 0x9e0(r1)
/* 8016CE98 00169DF8  E3 01 09 D8 */	psq_l f24, -1576(r1), 0, qr0
/* 8016CE9C 00169DFC  CB 01 09 D0 */	lfd f24, 0x9d0(r1)
/* 8016CEA0 00169E00  E2 E1 09 C8 */	psq_l f23, -1592(r1), 0, qr0
/* 8016CEA4 00169E04  CA E1 09 C0 */	lfd f23, 0x9c0(r1)
/* 8016CEA8 00169E08  BA E1 09 9C */	lmw r23, 0x99c(r1)
/* 8016CEAC 00169E0C  80 01 0A 54 */	lwz r0, 0xa54(r1)
/* 8016CEB0 00169E10  7C 08 03 A6 */	mtlr r0
/* 8016CEB4 00169E14  38 21 0A 50 */	addi r1, r1, 0xa50
/* 8016CEB8 00169E18  4E 80 00 20 */	blr

.global sub_8016cebc
sub_8016cebc:
/* 8016CEBC 00169E1C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8016CEC0 00169E20  7C 08 02 A6 */	mflr r0
/* 8016CEC4 00169E24  3C C0 80 5A */	lis r6, sForwardVector__9CVector3f@ha
/* 8016CEC8 00169E28  3C A0 80 5A */	lis r5, sIdentity__12CTransform4f@ha
/* 8016CECC 00169E2C  90 01 01 54 */	stw r0, 0x154(r1)
/* 8016CED0 00169E30  38 05 66 70 */	addi r0, r5, sIdentity__12CTransform4f@l
/* 8016CED4 00169E34  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 8016CED8 00169E38  3B E0 00 00 */	li r31, 0
/* 8016CEDC 00169E3C  93 C1 01 48 */	stw r30, 0x148(r1)
/* 8016CEE0 00169E40  7C 9E 23 78 */	mr r30, r4
/* 8016CEE4 00169E44  7C 04 03 78 */	mr r4, r0
/* 8016CEE8 00169E48  93 A1 01 44 */	stw r29, 0x144(r1)
/* 8016CEEC 00169E4C  7C 7D 1B 78 */	mr r29, r3
/* 8016CEF0 00169E50  38 61 01 08 */	addi r3, r1, 0x108
/* 8016CEF4 00169E54  93 81 01 40 */	stw r28, 0x140(r1)
/* 8016CEF8 00169E58  C4 46 67 24 */	lfsu f2, sForwardVector__9CVector3f@l(r6)
/* 8016CEFC 00169E5C  C0 26 00 04 */	lfs f1, 4(r6)
/* 8016CF00 00169E60  C0 06 00 08 */	lfs f0, 8(r6)
/* 8016CF04 00169E64  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8016CF08 00169E68  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8016CF0C 00169E6C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8016CF10 00169E70  48 1A 5C 65 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8016CF14 00169E74  83 9E 08 4C */	lwz r28, 0x84c(r30)
/* 8016CF18 00169E78  A0 7D 07 B0 */	lhz r3, 0x7b0(r29)
/* 8016CF1C 00169E7C  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8016CF20 00169E80  7C 03 00 40 */	cmplw r3, r0
/* 8016CF24 00169E84  40 82 01 80 */	bne lbl_8016D0A4
/* 8016CF28 00169E88  A0 7C 02 6C */	lhz r3, 0x26c(r28)
/* 8016CF2C 00169E8C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8016CF30 00169E90  7C 03 00 40 */	cmplw r3, r0
/* 8016CF34 00169E94  40 82 01 FC */	bne lbl_8016D130
/* 8016CF38 00169E98  7F 83 E3 78 */	mr r3, r28
/* 8016CF3C 00169E9C  4B EA 7A 69 */	bl DetachActorFromPlayer__7CPlayerFv
/* 8016CF40 00169EA0  80 1C 02 F8 */	lwz r0, 0x2f8(r28)
/* 8016CF44 00169EA4  7F 9F E3 78 */	mr r31, r28
/* 8016CF48 00169EA8  2C 00 00 01 */	cmpwi r0, 1
/* 8016CF4C 00169EAC  41 82 00 2C */	beq lbl_8016CF78
/* 8016CF50 00169EB0  C0 5C 00 58 */	lfs f2, 0x58(r28)
/* 8016CF54 00169EB4  38 9C 00 34 */	addi r4, r28, 0x34
/* 8016CF58 00169EB8  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 8016CF5C 00169EBC  38 61 01 08 */	addi r3, r1, 0x108
/* 8016CF60 00169EC0  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 8016CF64 00169EC4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8016CF68 00169EC8  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8016CF6C 00169ECC  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 8016CF70 00169ED0  48 1A 5B D1 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8016CF74 00169ED4  48 00 00 D8 */	b lbl_8016D04C
lbl_8016CF78:
/* 8016CF78 00169ED8  C0 02 A0 94 */	lfs f0, lbl_805ABDB4@sda21(r2)
/* 8016CF7C 00169EDC  7F A3 EB 78 */	mr r3, r29
/* 8016CF80 00169EE0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8016CF84 00169EE4  4B EE 75 2D */	bl GetYaw__6CActorCFv
/* 8016CF88 00169EE8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8016CF8C 00169EEC  38 61 00 44 */	addi r3, r1, 0x44
/* 8016CF90 00169EF0  38 81 00 18 */	addi r4, r1, 0x18
/* 8016CF94 00169EF4  48 1A 41 65 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016CF98 00169EF8  38 61 00 54 */	addi r3, r1, 0x54
/* 8016CF9C 00169EFC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8016CFA0 00169F00  48 1A 41 59 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016CFA4 00169F04  38 61 00 64 */	addi r3, r1, 0x64
/* 8016CFA8 00169F08  38 81 00 54 */	addi r4, r1, 0x54
/* 8016CFAC 00169F0C  38 A1 00 44 */	addi r5, r1, 0x44
/* 8016CFB0 00169F10  48 1A 41 F1 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8016CFB4 00169F14  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 8016CFB8 00169F18  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8016CFBC 00169F1C  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 8016CFC0 00169F20  38 81 00 74 */	addi r4, r1, 0x74
/* 8016CFC4 00169F24  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8016CFC8 00169F28  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8016CFCC 00169F2C  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 8016CFD0 00169F30  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8016CFD4 00169F34  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8016CFD8 00169F38  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8016CFDC 00169F3C  48 1A 50 B1 */	bl BuildTransform__11CQuaternionCFv
/* 8016CFE0 00169F40  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8016CFE4 00169F44  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8016CFE8 00169F48  48 1A 30 3D */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 8016CFEC 00169F4C  3C 80 80 5A */	lis r4, sForwardVector__9CVector3f@ha
/* 8016CFF0 00169F50  38 61 00 38 */	addi r3, r1, 0x38
/* 8016CFF4 00169F54  38 A4 67 24 */	addi r5, r4, sForwardVector__9CVector3f@l
/* 8016CFF8 00169F58  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8016CFFC 00169F5C  48 1A 32 99 */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 8016D000 00169F60  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8016D004 00169F64  38 61 00 90 */	addi r3, r1, 0x90
/* 8016D008 00169F68  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8016D00C 00169F6C  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8016D010 00169F70  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8016D014 00169F74  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8016D018 00169F78  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8016D01C 00169F7C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8016D020 00169F80  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8016D024 00169F84  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 8016D028 00169F88  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 8016D02C 00169F8C  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8016D030 00169F90  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8016D034 00169F94  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8016D038 00169F98  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8016D03C 00169F9C  48 1A 62 3D */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 8016D040 00169FA0  7C 64 1B 78 */	mr r4, r3
/* 8016D044 00169FA4  38 61 01 08 */	addi r3, r1, 0x108
/* 8016D048 00169FA8  48 1A 5A F9 */	bl __as__12CTransform4fFRC12CTransform4f
lbl_8016D04C:
/* 8016D04C 00169FAC  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8016D050 00169FB0  38 81 00 10 */	addi r4, r1, 0x10
/* 8016D054 00169FB4  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8016D058 00169FB8  38 63 02 74 */	addi r3, r3, 0x274
/* 8016D05C 00169FBC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016D060 00169FC0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8016D064 00169FC4  48 04 76 61 */	bl RemoveEnergyDrainSource__18CPlayerEnergyDrainF9TUniqueId
/* 8016D068 00169FC8  7F 84 E3 78 */	mr r4, r28
/* 8016D06C 00169FCC  7F C5 F3 78 */	mr r5, r30
/* 8016D070 00169FD0  81 9C 00 00 */	lwz r12, 0(r28)
/* 8016D074 00169FD4  38 61 00 20 */	addi r3, r1, 0x20
/* 8016D078 00169FD8  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016D07C 00169FDC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8016D080 00169FE0  7D 89 03 A6 */	mtctr r12
/* 8016D084 00169FE4  4E 80 04 21 */	bctrl
/* 8016D088 00169FE8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8016D08C 00169FEC  D0 1D 08 0C */	stfs f0, 0x80c(r29)
/* 8016D090 00169FF0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8016D094 00169FF4  D0 1D 08 10 */	stfs f0, 0x810(r29)
/* 8016D098 00169FF8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8016D09C 00169FFC  D0 1D 08 14 */	stfs f0, 0x814(r29)
/* 8016D0A0 0016A000  48 00 00 90 */	b lbl_8016D130
lbl_8016D0A4:
/* 8016D0A4 0016A004  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016D0A8 0016A008  7C 03 00 40 */	cmplw r3, r0
/* 8016D0AC 0016A00C  41 82 00 84 */	beq lbl_8016D130
/* 8016D0B0 0016A010  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 8016D0B4 0016A014  7F C3 F3 78 */	mr r3, r30
/* 8016D0B8 0016A018  38 81 00 08 */	addi r4, r1, 8
/* 8016D0BC 0016A01C  B0 01 00 08 */	sth r0, 8(r1)
/* 8016D0C0 0016A020  4B ED F4 B5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016D0C4 0016A024  7C 64 1B 78 */	mr r4, r3
/* 8016D0C8 0016A028  38 61 00 14 */	addi r3, r1, 0x14
/* 8016D0CC 0016A02C  4B F3 83 05 */	bl sub_800a53d0
/* 8016D0D0 0016A030  4B F3 82 D5 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 8016D0D4 0016A034  7C 7C 1B 79 */	or. r28, r3, r3
/* 8016D0D8 0016A038  41 82 00 58 */	beq lbl_8016D130
/* 8016D0DC 0016A03C  A0 9C 07 B4 */	lhz r4, 0x7b4(r28)
/* 8016D0E0 0016A040  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8016D0E4 0016A044  7C 04 00 40 */	cmplw r4, r0
/* 8016D0E8 0016A048  40 82 00 48 */	bne lbl_8016D130
/* 8016D0EC 0016A04C  4B FB C7 21 */	bl DetachActorFromPirate__12CSpacePirateFv
/* 8016D0F0 0016A050  C0 5C 00 58 */	lfs f2, 0x58(r28)
/* 8016D0F4 0016A054  38 9C 00 34 */	addi r4, r28, 0x34
/* 8016D0F8 0016A058  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 8016D0FC 0016A05C  7F 9F E3 78 */	mr r31, r28
/* 8016D100 0016A060  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 8016D104 0016A064  38 61 01 08 */	addi r3, r1, 0x108
/* 8016D108 0016A068  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8016D10C 0016A06C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8016D110 0016A070  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 8016D114 0016A074  48 1A 5A 2D */	bl __as__12CTransform4fFRC12CTransform4f
/* 8016D118 0016A078  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 8016D11C 0016A07C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8016D120 0016A080  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8016D124 0016A084  D0 1D 08 0C */	stfs f0, 0x80c(r29)
/* 8016D128 0016A088  D0 3D 08 10 */	stfs f1, 0x810(r29)
/* 8016D12C 0016A08C  D0 5D 08 14 */	stfs f2, 0x814(r29)
lbl_8016D130:
/* 8016D130 0016A090  7F A3 EB 78 */	mr r3, r29
/* 8016D134 0016A094  7F E4 FB 78 */	mr r4, r31
/* 8016D138 0016A098  7F C5 F3 78 */	mr r5, r30
/* 8016D13C 0016A09C  38 C1 00 84 */	addi r6, r1, 0x84
/* 8016D140 0016A0A0  38 E1 01 08 */	addi r7, r1, 0x108
/* 8016D144 0016A0A4  4B FF F8 B9 */	bl sub_8016c9fc
/* 8016D148 0016A0A8  88 1D 09 BF */	lbz r0, 0x9bf(r29)
/* 8016D14C 0016A0AC  38 60 00 01 */	li r3, 1
/* 8016D150 0016A0B0  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8016D154 0016A0B4  98 1D 09 BF */	stb r0, 0x9bf(r29)
/* 8016D158 0016A0B8  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 8016D15C 0016A0BC  88 1D 09 BF */	lbz r0, 0x9bf(r29)
/* 8016D160 0016A0C0  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8016D164 0016A0C4  98 1D 09 BF */	stb r0, 0x9bf(r29)
/* 8016D168 0016A0C8  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 8016D16C 0016A0CC  83 C1 01 48 */	lwz r30, 0x148(r1)
/* 8016D170 0016A0D0  83 A1 01 44 */	lwz r29, 0x144(r1)
/* 8016D174 0016A0D4  83 81 01 40 */	lwz r28, 0x140(r1)
/* 8016D178 0016A0D8  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8016D17C 0016A0DC  7C 08 03 A6 */	mtlr r0
/* 8016D180 0016A0E0  38 21 01 50 */	addi r1, r1, 0x150
/* 8016D184 0016A0E4  4E 80 00 20 */	blr

.global sub_8016d188
sub_8016d188:
/* 8016D188 0016A0E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016D18C 0016A0EC  7C 08 02 A6 */	mflr r0
/* 8016D190 0016A0F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016D194 0016A0F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016D198 0016A0F8  7C 9F 23 78 */	mr r31, r4
/* 8016D19C 0016A0FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016D1A0 0016A100  7C 7E 1B 78 */	mr r30, r3
/* 8016D1A4 0016A104  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 8016D1A8 0016A108  A0 C3 07 B0 */	lhz r6, 0x7b0(r3)
/* 8016D1AC 0016A10C  A0 05 00 08 */	lhz r0, 8(r5)
/* 8016D1B0 0016A110  7C 06 00 40 */	cmplw r6, r0
/* 8016D1B4 0016A114  40 82 00 50 */	bne lbl_8016D204
/* 8016D1B8 0016A118  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016D1BC 0016A11C  38 81 00 14 */	addi r4, r1, 0x14
/* 8016D1C0 0016A120  38 A0 00 00 */	li r5, 0
/* 8016D1C4 0016A124  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8016D1C8 0016A128  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8016D1CC 0016A12C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8016D1D0 0016A130  4B EA 78 01 */	bl AttachActorToPlayer__7CPlayerF9TUniqueId
/* 8016D1D4 0016A134  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D1D8 0016A138  41 82 00 34 */	beq lbl_8016D20C
/* 8016D1DC 0016A13C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8016D1E0 0016A140  38 81 00 0C */	addi r4, r1, 0xc
/* 8016D1E4 0016A144  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016D1E8 0016A148  C0 22 A0 98 */	lfs f1, lbl_805ABDB8@sda21(r2)
/* 8016D1EC 0016A14C  38 63 02 74 */	addi r3, r3, 0x274
/* 8016D1F0 0016A150  B0 01 00 08 */	sth r0, 8(r1)
/* 8016D1F4 0016A154  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016D1F8 0016A158  48 04 76 9D */	bl sub_801b4894
/* 8016D1FC 0016A15C  38 60 00 01 */	li r3, 1
/* 8016D200 0016A160  48 00 00 10 */	b lbl_8016D210
lbl_8016D204:
/* 8016D204 0016A164  48 00 0B AD */	bl sub_8016ddb0
/* 8016D208 0016A168  48 00 00 08 */	b lbl_8016D210
lbl_8016D20C:
/* 8016D20C 0016A16C  38 60 00 00 */	li r3, 0
lbl_8016D210:
/* 8016D210 0016A170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016D214 0016A174  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016D218 0016A178  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016D21C 0016A17C  7C 08 03 A6 */	mtlr r0
/* 8016D220 0016A180  38 21 00 20 */	addi r1, r1, 0x20
/* 8016D224 0016A184  4E 80 00 20 */	blr

.global sub_8016d228
sub_8016d228:
/* 8016D228 0016A188  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016D22C 0016A18C  7C 08 02 A6 */	mflr r0
/* 8016D230 0016A190  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016D234 0016A194  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016D238 0016A198  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016D23C 0016A19C  7C 7E 1B 78 */	mr r30, r3
/* 8016D240 0016A1A0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016D244 0016A1A4  A0 63 06 98 */	lhz r3, 0x698(r3)
/* 8016D248 0016A1A8  7C 03 00 40 */	cmplw r3, r0
/* 8016D24C 0016A1AC  41 82 00 68 */	beq lbl_8016D2B4
/* 8016D250 0016A1B0  A0 1E 06 98 */	lhz r0, 0x698(r30)
/* 8016D254 0016A1B4  7C 83 23 78 */	mr r3, r4
/* 8016D258 0016A1B8  38 81 00 18 */	addi r4, r1, 0x18
/* 8016D25C 0016A1BC  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8016D260 0016A1C0  4B ED F3 15 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016D264 0016A1C4  7C 64 1B 78 */	mr r4, r3
/* 8016D268 0016A1C8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016D26C 0016A1CC  4B F3 A3 09 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8016D270 0016A1D0  83 E3 00 04 */	lwz r31, 4(r3)
/* 8016D274 0016A1D4  28 1F 00 00 */	cmplwi r31, 0
/* 8016D278 0016A1D8  41 82 00 3C */	beq lbl_8016D2B4
/* 8016D27C 0016A1DC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016D280 0016A1E0  7F E3 FB 78 */	mr r3, r31
/* 8016D284 0016A1E4  38 81 00 14 */	addi r4, r1, 0x14
/* 8016D288 0016A1E8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8016D28C 0016A1EC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8016D290 0016A1F0  48 0C BD 61 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8016D294 0016A1F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D298 0016A1F8  41 82 00 1C */	beq lbl_8016D2B4
/* 8016D29C 0016A1FC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016D2A0 0016A200  7F E3 FB 78 */	mr r3, r31
/* 8016D2A4 0016A204  38 81 00 0C */	addi r4, r1, 0xc
/* 8016D2A8 0016A208  B0 01 00 08 */	sth r0, 8(r1)
/* 8016D2AC 0016A20C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016D2B0 0016A210  48 0C C2 45 */	bl RemoveTeamAiRole__10CTeamAiMgrF9TUniqueId
lbl_8016D2B4:
/* 8016D2B4 0016A214  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016D2B8 0016A218  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016D2BC 0016A21C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016D2C0 0016A220  7C 08 03 A6 */	mtlr r0
/* 8016D2C4 0016A224  38 21 00 30 */	addi r1, r1, 0x30
/* 8016D2C8 0016A228  4E 80 00 20 */	blr

.global sub_8016d2cc
sub_8016d2cc:
/* 8016D2CC 0016A22C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016D2D0 0016A230  7C 08 02 A6 */	mflr r0
/* 8016D2D4 0016A234  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016D2D8 0016A238  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016D2DC 0016A23C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016D2E0 0016A240  7C 7E 1B 78 */	mr r30, r3
/* 8016D2E4 0016A244  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016D2E8 0016A248  A0 63 06 98 */	lhz r3, 0x698(r3)
/* 8016D2EC 0016A24C  7C 03 00 40 */	cmplw r3, r0
/* 8016D2F0 0016A250  41 82 00 68 */	beq lbl_8016D358
/* 8016D2F4 0016A254  A0 1E 06 98 */	lhz r0, 0x698(r30)
/* 8016D2F8 0016A258  7C 83 23 78 */	mr r3, r4
/* 8016D2FC 0016A25C  38 81 00 10 */	addi r4, r1, 0x10
/* 8016D300 0016A260  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8016D304 0016A264  4B ED F2 71 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016D308 0016A268  7C 64 1B 78 */	mr r4, r3
/* 8016D30C 0016A26C  38 61 00 14 */	addi r3, r1, 0x14
/* 8016D310 0016A270  4B F3 A2 65 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8016D314 0016A274  83 E3 00 04 */	lwz r31, 4(r3)
/* 8016D318 0016A278  28 1F 00 00 */	cmplwi r31, 0
/* 8016D31C 0016A27C  41 82 00 3C */	beq lbl_8016D358
/* 8016D320 0016A280  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016D324 0016A284  7F E3 FB 78 */	mr r3, r31
/* 8016D328 0016A288  38 81 00 0C */	addi r4, r1, 0xc
/* 8016D32C 0016A28C  B0 01 00 08 */	sth r0, 8(r1)
/* 8016D330 0016A290  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016D334 0016A294  48 0C BC BD */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8016D338 0016A298  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D33C 0016A29C  40 82 00 1C */	bne lbl_8016D358
/* 8016D340 0016A2A0  7F E3 FB 78 */	mr r3, r31
/* 8016D344 0016A2A4  7F C4 F3 78 */	mr r4, r30
/* 8016D348 0016A2A8  38 A0 00 01 */	li r5, 1
/* 8016D34C 0016A2AC  38 C0 FF FF */	li r6, -1
/* 8016D350 0016A2B0  38 E0 FF FF */	li r7, -1
/* 8016D354 0016A2B4  48 0C C4 59 */	bl AssignTeamAiRole__10CTeamAiMgrFRC3CAiiii
lbl_8016D358:
/* 8016D358 0016A2B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016D35C 0016A2BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016D360 0016A2C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016D364 0016A2C4  7C 08 03 A6 */	mtlr r0
/* 8016D368 0016A2C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8016D36C 0016A2CC  4E 80 00 20 */	blr

.global sub_8016d370
sub_8016d370:
/* 8016D370 0016A2D0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8016D374 0016A2D4  7C 08 02 A6 */	mflr r0
/* 8016D378 0016A2D8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8016D37C 0016A2DC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8016D380 0016A2E0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8016D384 0016A2E4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8016D388 0016A2E8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 8016D38C 0016A2EC  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8016D390 0016A2F0  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 8016D394 0016A2F4  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 8016D398 0016A2F8  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 8016D39C 0016A2FC  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8016D3A0 0016A300  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 8016D3A4 0016A304  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8016D3A8 0016A308  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8016D3AC 0016A30C  A0 03 09 BC */	lhz r0, 0x9bc(r3)
/* 8016D3B0 0016A310  7C 7E 1B 78 */	mr r30, r3
/* 8016D3B4 0016A314  FF E0 08 90 */	fmr f31, f1
/* 8016D3B8 0016A318  7C 83 23 78 */	mr r3, r4
/* 8016D3BC 0016A31C  B0 01 00 08 */	sth r0, 8(r1)
/* 8016D3C0 0016A320  38 81 00 08 */	addi r4, r1, 8
/* 8016D3C4 0016A324  4B ED F1 B1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016D3C8 0016A328  7C 64 1B 78 */	mr r4, r3
/* 8016D3CC 0016A32C  38 61 00 0C */	addi r3, r1, 0xc
/* 8016D3D0 0016A330  4B F3 81 05 */	bl sub_800a54d4
/* 8016D3D4 0016A334  4B F3 80 D5 */	bl "CastTo<8CMetroid>__10CPatternedFP7CEntity"
/* 8016D3D8 0016A338  7C 7F 1B 79 */	or. r31, r3, r3
/* 8016D3DC 0016A33C  41 82 01 60 */	beq lbl_8016D53C
/* 8016D3E0 0016A340  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8016D3E4 0016A344  38 61 00 70 */	addi r3, r1, 0x70
/* 8016D3E8 0016A348  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8016D3EC 0016A34C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8016D3F0 0016A350  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8016D3F4 0016A354  EC 81 00 28 */	fsubs f4, f1, f0
/* 8016D3F8 0016A358  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8016D3FC 0016A35C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8016D400 0016A360  EC 43 10 28 */	fsubs f2, f3, f2
/* 8016D404 0016A364  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016D408 0016A368  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 8016D40C 0016A36C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8016D410 0016A370  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8016D414 0016A374  C3 9E 00 54 */	lfs f28, 0x54(r30)
/* 8016D418 0016A378  C3 BE 00 44 */	lfs f29, 0x44(r30)
/* 8016D41C 0016A37C  C3 DE 00 34 */	lfs f30, 0x34(r30)
/* 8016D420 0016A380  C3 7E 06 BC */	lfs f27, 0x6bc(r30)
/* 8016D424 0016A384  48 1A 74 95 */	bl Magnitude__9CVector3fCFv
/* 8016D428 0016A388  C0 02 A0 D8 */	lfs f0, lbl_805ABDF8@sda21(r2)
/* 8016D42C 0016A38C  EC 00 06 F2 */	fmuls f0, f0, f27
/* 8016D430 0016A390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016D434 0016A394  40 80 01 08 */	bge lbl_8016D53C
/* 8016D438 0016A398  EF 60 08 28 */	fsubs f27, f0, f1
/* 8016D43C 0016A39C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8016D440 0016A3A0  4B FC D4 79 */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 8016D444 0016A3A4  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016D448 0016A3A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016D44C 0016A3AC  40 81 00 10 */	ble lbl_8016D45C
/* 8016D450 0016A3B0  EC 1B 07 F2 */	fmuls f0, f27, f31
/* 8016D454 0016A3B4  EC 00 08 24 */	fdivs f0, f0, f1
/* 8016D458 0016A3B8  48 00 00 08 */	b lbl_8016D460
lbl_8016D45C:
/* 8016D45C 0016A3BC  FC 00 D8 90 */	fmr f0, f27
lbl_8016D460:
/* 8016D460 0016A3C0  EC 40 07 B2 */	fmuls f2, f0, f30
/* 8016D464 0016A3C4  38 61 00 34 */	addi r3, r1, 0x34
/* 8016D468 0016A3C8  EC 20 07 72 */	fmuls f1, f0, f29
/* 8016D46C 0016A3CC  38 9E 00 34 */	addi r4, r30, 0x34
/* 8016D470 0016A3D0  EC 00 07 32 */	fmuls f0, f0, f28
/* 8016D474 0016A3D4  38 A1 00 64 */	addi r5, r1, 0x64
/* 8016D478 0016A3D8  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8016D47C 0016A3DC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8016D480 0016A3E0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8016D484 0016A3E4  48 1A 55 A1 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8016D488 0016A3E8  FC 20 F8 90 */	fmr f1, f31
/* 8016D48C 0016A3EC  7F C4 F3 78 */	mr r4, r30
/* 8016D490 0016A3F0  38 61 00 40 */	addi r3, r1, 0x40
/* 8016D494 0016A3F4  38 A1 00 34 */	addi r5, r1, 0x34
/* 8016D498 0016A3F8  4B FA DB 71 */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8016D49C 0016A3FC  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8016D4A0 0016A400  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8016D4A4 0016A404  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8016D4A8 0016A408  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8016D4AC 0016A40C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8016D4B0 0016A410  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8016D4B4 0016A414  4B EA E0 81 */	bl Identity__10CAxisAngleFv
/* 8016D4B8 0016A418  7C 65 1B 78 */	mr r5, r3
/* 8016D4BC 0016A41C  7F C3 F3 78 */	mr r3, r30
/* 8016D4C0 0016A420  38 81 00 58 */	addi r4, r1, 0x58
/* 8016D4C4 0016A424  4B FA EE D5 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 8016D4C8 0016A428  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 8016D4CC 0016A42C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016D4D0 0016A430  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8016D4D4 0016A434  38 9F 00 34 */	addi r4, r31, 0x34
/* 8016D4D8 0016A438  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8016D4DC 0016A43C  FC 40 10 50 */	fneg f2, f2
/* 8016D4E0 0016A440  FC 20 08 50 */	fneg f1, f1
/* 8016D4E4 0016A444  38 A1 00 10 */	addi r5, r1, 0x10
/* 8016D4E8 0016A448  FC 00 00 50 */	fneg f0, f0
/* 8016D4EC 0016A44C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8016D4F0 0016A450  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8016D4F4 0016A454  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8016D4F8 0016A458  48 1A 55 2D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8016D4FC 0016A45C  FC 20 F8 90 */	fmr f1, f31
/* 8016D500 0016A460  7F E4 FB 78 */	mr r4, r31
/* 8016D504 0016A464  38 61 00 28 */	addi r3, r1, 0x28
/* 8016D508 0016A468  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8016D50C 0016A46C  4B FA DA FD */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8016D510 0016A470  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8016D514 0016A474  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8016D518 0016A478  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8016D51C 0016A47C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8016D520 0016A480  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8016D524 0016A484  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8016D528 0016A488  4B EA E0 0D */	bl Identity__10CAxisAngleFv
/* 8016D52C 0016A48C  7C 65 1B 78 */	mr r5, r3
/* 8016D530 0016A490  7F E3 FB 78 */	mr r3, r31
/* 8016D534 0016A494  38 81 00 4C */	addi r4, r1, 0x4c
/* 8016D538 0016A498  4B FA EE 61 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_8016D53C:
/* 8016D53C 0016A49C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8016D540 0016A4A0  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8016D544 0016A4A4  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 8016D548 0016A4A8  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8016D54C 0016A4AC  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 8016D550 0016A4B0  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8016D554 0016A4B4  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 8016D558 0016A4B8  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 8016D55C 0016A4BC  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 8016D560 0016A4C0  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 8016D564 0016A4C4  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8016D568 0016A4C8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8016D56C 0016A4CC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8016D570 0016A4D0  7C 08 03 A6 */	mtlr r0
/* 8016D574 0016A4D4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8016D578 0016A4D8  4E 80 00 20 */	blr

.global sub_8016d57c
sub_8016d57c:
/* 8016D57C 0016A4DC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8016D580 0016A4E0  7C 08 02 A6 */	mflr r0
/* 8016D584 0016A4E4  90 01 01 04 */	stw r0, 0x104(r1)
/* 8016D588 0016A4E8  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8016D58C 0016A4EC  7C 7F 1B 78 */	mr r31, r3
/* 8016D590 0016A4F0  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8016D594 0016A4F4  7C BE 2B 78 */	mr r30, r5
/* 8016D598 0016A4F8  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 8016D59C 0016A4FC  7C 9D 23 78 */	mr r29, r4
/* 8016D5A0 0016A500  C0 C3 00 50 */	lfs f6, 0x50(r3)
/* 8016D5A4 0016A504  C0 05 00 04 */	lfs f0, 4(r5)
/* 8016D5A8 0016A508  C0 E3 00 40 */	lfs f7, 0x40(r3)
/* 8016D5AC 0016A50C  EC 20 30 28 */	fsubs f1, f0, f6
/* 8016D5B0 0016A510  C0 05 00 00 */	lfs f0, 0(r5)
/* 8016D5B4 0016A514  C0 A3 00 60 */	lfs f5, 0x60(r3)
/* 8016D5B8 0016A518  EC 60 38 28 */	fsubs f3, f0, f7
/* 8016D5BC 0016A51C  C0 85 00 08 */	lfs f4, 8(r5)
/* 8016D5C0 0016A520  EC 21 00 72 */	fmuls f1, f1, f1
/* 8016D5C4 0016A524  EC 44 28 28 */	fsubs f2, f4, f5
/* 8016D5C8 0016A528  C0 02 A0 DC */	lfs f0, lbl_805ABDFC@sda21(r2)
/* 8016D5CC 0016A52C  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8016D5D0 0016A530  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8016D5D4 0016A534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016D5D8 0016A538  40 81 01 90 */	ble lbl_8016D768
/* 8016D5DC 0016A53C  D0 E1 00 50 */	stfs f7, 0x50(r1)
/* 8016D5E0 0016A540  7F E5 FB 78 */	mr r5, r31
/* 8016D5E4 0016A544  C0 22 A0 88 */	lfs f1, lbl_805ABDA8@sda21(r2)
/* 8016D5E8 0016A548  38 61 00 44 */	addi r3, r1, 0x44
/* 8016D5EC 0016A54C  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 8016D5F0 0016A550  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8016D5F4 0016A554  38 C1 00 68 */	addi r6, r1, 0x68
/* 8016D5F8 0016A558  D0 A1 00 58 */	stfs f5, 0x58(r1)
/* 8016D5FC 0016A55C  D0 E1 00 68 */	stfs f7, 0x68(r1)
/* 8016D600 0016A560  D0 C1 00 6C */	stfs f6, 0x6c(r1)
/* 8016D604 0016A564  D0 81 00 70 */	stfs f4, 0x70(r1)
/* 8016D608 0016A568  4B FD 15 15 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8016D60C 0016A56C  C0 81 00 48 */	lfs f4, 0x48(r1)
/* 8016D610 0016A570  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8016D614 0016A574  EC 24 01 32 */	fmuls f1, f4, f4
/* 8016D618 0016A578  C0 A1 00 4C */	lfs f5, 0x4c(r1)
/* 8016D61C 0016A57C  C0 02 A0 E0 */	lfs f0, lbl_805ABE00@sda21(r2)
/* 8016D620 0016A580  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8016D624 0016A584  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 8016D628 0016A588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016D62C 0016A58C  40 81 00 44 */	ble lbl_8016D670
/* 8016D630 0016A590  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016D634 0016A594  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8016D638 0016A598  C0 02 A0 D8 */	lfs f0, lbl_805ABDF8@sda21(r2)
/* 8016D63C 0016A59C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8016D640 0016A5A0  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 8016D644 0016A5A4  C0 43 00 04 */	lfs f2, 4(r3)
/* 8016D648 0016A5A8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8016D64C 0016A5AC  D0 81 00 CC */	stfs f4, 0xcc(r1)
/* 8016D650 0016A5B0  D0 A1 00 D0 */	stfs f5, 0xd0(r1)
/* 8016D654 0016A5B4  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 8016D658 0016A5B8  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 8016D65C 0016A5BC  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 8016D660 0016A5C0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8016D664 0016A5C4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016D668 0016A5C8  38 63 00 04 */	addi r3, r3, 4
/* 8016D66C 0016A5CC  4B FC 40 AD */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8016D670:
/* 8016D670 0016A5D0  A0 1F 07 B0 */	lhz r0, 0x7b0(r31)
/* 8016D674 0016A5D4  7F A3 EB 78 */	mr r3, r29
/* 8016D678 0016A5D8  38 81 00 0C */	addi r4, r1, 0xc
/* 8016D67C 0016A5DC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016D680 0016A5E0  4B ED EF 25 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016D684 0016A5E4  7C 64 1B 78 */	mr r4, r3
/* 8016D688 0016A5E8  38 61 00 18 */	addi r3, r1, 0x18
/* 8016D68C 0016A5EC  4B F3 F0 59 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 8016D690 0016A5F0  80 E3 00 04 */	lwz r7, 4(r3)
/* 8016D694 0016A5F4  28 07 00 00 */	cmplwi r7, 0
/* 8016D698 0016A5F8  41 82 00 6C */	beq lbl_8016D704
/* 8016D69C 0016A5FC  7F E5 FB 78 */	mr r5, r31
/* 8016D6A0 0016A600  7F C6 F3 78 */	mr r6, r30
/* 8016D6A4 0016A604  38 61 00 38 */	addi r3, r1, 0x38
/* 8016D6A8 0016A608  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8016D6AC 0016A60C  38 E7 01 38 */	addi r7, r7, 0x138
/* 8016D6B0 0016A610  4B FD 13 6D */	bl Pursuit__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3fRC9CVector3f
/* 8016D6B4 0016A614  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016D6B8 0016A618  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8016D6BC 0016A61C  C0 C1 00 38 */	lfs f6, 0x38(r1)
/* 8016D6C0 0016A620  38 81 00 AC */	addi r4, r1, 0xac
/* 8016D6C4 0016A624  C0 A1 00 3C */	lfs f5, 0x3c(r1)
/* 8016D6C8 0016A628  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 8016D6CC 0016A62C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8016D6D0 0016A630  C0 23 00 08 */	lfs f1, 8(r3)
/* 8016D6D4 0016A634  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016D6D8 0016A638  D0 C1 00 AC */	stfs f6, 0xac(r1)
/* 8016D6DC 0016A63C  D0 A1 00 B0 */	stfs f5, 0xb0(r1)
/* 8016D6E0 0016A640  D0 81 00 B4 */	stfs f4, 0xb4(r1)
/* 8016D6E4 0016A644  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 8016D6E8 0016A648  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 8016D6EC 0016A64C  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 8016D6F0 0016A650  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8016D6F4 0016A654  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016D6F8 0016A658  38 63 00 04 */	addi r3, r3, 4
/* 8016D6FC 0016A65C  4B FC 40 1D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8016D700 0016A660  48 00 01 58 */	b lbl_8016D858
lbl_8016D704:
/* 8016D704 0016A664  7F E5 FB 78 */	mr r5, r31
/* 8016D708 0016A668  7F C6 F3 78 */	mr r6, r30
/* 8016D70C 0016A66C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8016D710 0016A670  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8016D714 0016A674  4B FD 15 0D */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 8016D718 0016A678  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016D71C 0016A67C  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8016D720 0016A680  C0 C1 00 2C */	lfs f6, 0x2c(r1)
/* 8016D724 0016A684  38 81 00 90 */	addi r4, r1, 0x90
/* 8016D728 0016A688  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 8016D72C 0016A68C  C0 81 00 34 */	lfs f4, 0x34(r1)
/* 8016D730 0016A690  C0 43 00 04 */	lfs f2, 4(r3)
/* 8016D734 0016A694  C0 23 00 08 */	lfs f1, 8(r3)
/* 8016D738 0016A698  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016D73C 0016A69C  D0 C1 00 90 */	stfs f6, 0x90(r1)
/* 8016D740 0016A6A0  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 8016D744 0016A6A4  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 8016D748 0016A6A8  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 8016D74C 0016A6AC  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8016D750 0016A6B0  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8016D754 0016A6B4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8016D758 0016A6B8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016D75C 0016A6BC  38 63 00 04 */	addi r3, r3, 4
/* 8016D760 0016A6C0  4B FC 3F B9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8016D764 0016A6C4  48 00 00 F4 */	b lbl_8016D858
lbl_8016D768:
/* 8016D768 0016A6C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8016D76C 0016A6CC  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016D770 0016A6D0  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8016D774 0016A6D4  7D 89 03 A6 */	mtctr r12
/* 8016D778 0016A6D8  4E 80 04 21 */	bctrl
/* 8016D77C 0016A6DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D780 0016A6E0  41 82 00 D8 */	beq lbl_8016D858
/* 8016D784 0016A6E4  A0 7F 07 B0 */	lhz r3, 0x7b0(r31)
/* 8016D788 0016A6E8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016D78C 0016A6EC  7C 03 00 40 */	cmplw r3, r0
/* 8016D790 0016A6F0  41 82 00 C8 */	beq lbl_8016D858
/* 8016D794 0016A6F4  A0 1F 07 B0 */	lhz r0, 0x7b0(r31)
/* 8016D798 0016A6F8  7F A3 EB 78 */	mr r3, r29
/* 8016D79C 0016A6FC  38 81 00 08 */	addi r4, r1, 8
/* 8016D7A0 0016A700  B0 01 00 08 */	sth r0, 8(r1)
/* 8016D7A4 0016A704  4B ED EE 01 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016D7A8 0016A708  7C 64 1B 78 */	mr r4, r3
/* 8016D7AC 0016A70C  38 61 00 10 */	addi r3, r1, 0x10
/* 8016D7B0 0016A710  4B F4 24 E1 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016D7B4 0016A714  80 83 00 04 */	lwz r4, 4(r3)
/* 8016D7B8 0016A718  28 04 00 00 */	cmplwi r4, 0
/* 8016D7BC 0016A71C  41 82 00 9C */	beq lbl_8016D858
/* 8016D7C0 0016A720  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8016D7C4 0016A724  38 61 00 5C */	addi r3, r1, 0x5c
/* 8016D7C8 0016A728  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8016D7CC 0016A72C  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8016D7D0 0016A730  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8016D7D4 0016A734  EC 81 00 28 */	fsubs f4, f1, f0
/* 8016D7D8 0016A738  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8016D7DC 0016A73C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8016D7E0 0016A740  EC 43 10 28 */	fsubs f2, f3, f2
/* 8016D7E4 0016A744  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016D7E8 0016A748  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 8016D7EC 0016A74C  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8016D7F0 0016A750  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8016D7F4 0016A754  48 1A 6F 05 */	bl CanBeNormalized__9CVector3fCFv
/* 8016D7F8 0016A758  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D7FC 0016A75C  41 82 00 5C */	beq lbl_8016D858
/* 8016D800 0016A760  38 61 00 20 */	addi r3, r1, 0x20
/* 8016D804 0016A764  38 81 00 5C */	addi r4, r1, 0x5c
/* 8016D808 0016A768  48 1A 70 49 */	bl AsNormalized__9CVector3fCFv
/* 8016D80C 0016A76C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016D810 0016A770  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 8016D814 0016A774  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8016D818 0016A778  38 81 00 74 */	addi r4, r1, 0x74
/* 8016D81C 0016A77C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8016D820 0016A780  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8016D824 0016A784  C0 83 00 08 */	lfs f4, 8(r3)
/* 8016D828 0016A788  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8016D82C 0016A78C  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016D830 0016A790  D0 C1 00 74 */	stfs f6, 0x74(r1)
/* 8016D834 0016A794  D0 A1 00 78 */	stfs f5, 0x78(r1)
/* 8016D838 0016A798  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 8016D83C 0016A79C  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8016D840 0016A7A0  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8016D844 0016A7A4  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8016D848 0016A7A8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8016D84C 0016A7AC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016D850 0016A7B0  38 63 00 04 */	addi r3, r3, 4
/* 8016D854 0016A7B4  4B FC 3E C5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8016D858:
/* 8016D858 0016A7B8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8016D85C 0016A7BC  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8016D860 0016A7C0  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 8016D864 0016A7C4  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 8016D868 0016A7C8  7C 08 03 A6 */	mtlr r0
/* 8016D86C 0016A7CC  38 21 01 00 */	addi r1, r1, 0x100
/* 8016D870 0016A7D0  4E 80 00 20 */	blr

.global sub_8016d874
sub_8016d874:
/* 8016D874 0016A7D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8016D878 0016A7D8  7C 08 02 A6 */	mflr r0
/* 8016D87C 0016A7DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8016D880 0016A7E0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8016D884 0016A7E4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8016D888 0016A7E8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8016D88C 0016A7EC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8016D890 0016A7F0  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8016D894 0016A7F4  93 81 00 50 */	stw r28, 0x50(r1)
/* 8016D898 0016A7F8  7C 7F 1B 78 */	mr r31, r3
/* 8016D89C 0016A7FC  7C 9C 23 78 */	mr r28, r4
/* 8016D8A0 0016A800  A0 03 06 98 */	lhz r0, 0x698(r3)
/* 8016D8A4 0016A804  FF E0 08 90 */	fmr f31, f1
/* 8016D8A8 0016A808  7F 83 E3 78 */	mr r3, r28
/* 8016D8AC 0016A80C  38 81 00 08 */	addi r4, r1, 8
/* 8016D8B0 0016A810  B0 01 00 08 */	sth r0, 8(r1)
/* 8016D8B4 0016A814  4B ED EC C1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016D8B8 0016A818  7C 64 1B 78 */	mr r4, r3
/* 8016D8BC 0016A81C  38 61 00 14 */	addi r3, r1, 0x14
/* 8016D8C0 0016A820  4B F3 9C B5 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8016D8C4 0016A824  80 03 00 04 */	lwz r0, 4(r3)
/* 8016D8C8 0016A828  28 00 00 00 */	cmplwi r0, 0
/* 8016D8CC 0016A82C  41 82 01 28 */	beq lbl_8016D9F4
/* 8016D8D0 0016A830  C0 02 A0 84 */	lfs f0, lbl_805ABDA4@sda21(r2)
/* 8016D8D4 0016A834  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016D8D8 0016A838  83 BC 08 38 */	lwz r29, 0x838(r28)
/* 8016D8DC 0016A83C  3B C3 66 A0 */	addi r30, r3, sZeroVector__9CVector3f@l
/* 8016D8E0 0016A840  EF E0 07 F2 */	fmuls f31, f0, f31
/* 8016D8E4 0016A844  AB 9D 20 08 */	lha r28, 0x2008(r29)
/* 8016D8E8 0016A848  48 00 01 04 */	b lbl_8016D9EC
lbl_8016D8EC:
/* 8016D8EC 0016A84C  7F A3 EB 78 */	mr r3, r29
/* 8016D8F0 0016A850  7F 84 E3 78 */	mr r4, r28
/* 8016D8F4 0016A854  4B EA 23 E9 */	bl __vc__11CObjectListCFi
/* 8016D8F8 0016A858  7C 64 1B 78 */	mr r4, r3
/* 8016D8FC 0016A85C  38 61 00 0C */	addi r3, r1, 0xc
/* 8016D900 0016A860  4B F3 F1 5D */	bl "__ct__16TCastToPtr<3CAi>FP7CEntity"
/* 8016D904 0016A864  80 83 00 04 */	lwz r4, 4(r3)
/* 8016D908 0016A868  28 04 00 00 */	cmplwi r4, 0
/* 8016D90C 0016A86C  41 82 00 C4 */	beq lbl_8016D9D0
/* 8016D910 0016A870  7C 04 F8 40 */	cmplw r4, r31
/* 8016D914 0016A874  41 82 00 BC */	beq lbl_8016D9D0
/* 8016D918 0016A878  80 64 00 04 */	lwz r3, 4(r4)
/* 8016D91C 0016A87C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8016D920 0016A880  7C 03 00 00 */	cmpw r3, r0
/* 8016D924 0016A884  40 82 00 AC */	bne lbl_8016D9D0
/* 8016D928 0016A888  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8016D92C 0016A88C  FC 20 F8 90 */	fmr f1, f31
/* 8016D930 0016A890  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8016D934 0016A894  7F E5 FB 78 */	mr r5, r31
/* 8016D938 0016A898  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8016D93C 0016A89C  38 61 00 28 */	addi r3, r1, 0x28
/* 8016D940 0016A8A0  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8016D944 0016A8A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8016D948 0016A8A8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8016D94C 0016A8AC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8016D950 0016A8B0  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8016D954 0016A8B4  4B FD 0F 9D */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8016D958 0016A8B8  C0 C1 00 28 */	lfs f6, 0x28(r1)
/* 8016D95C 0016A8BC  38 00 00 00 */	li r0, 0
/* 8016D960 0016A8C0  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016D964 0016A8C4  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 8016D968 0016A8C8  FC 00 30 00 */	fcmpu cr0, f0, f6
/* 8016D96C 0016A8CC  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 8016D970 0016A8D0  40 82 00 14 */	bne lbl_8016D984
/* 8016D974 0016A8D4  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 8016D978 0016A8D8  40 82 00 0C */	bne lbl_8016D984
/* 8016D97C 0016A8DC  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8016D980 0016A8E0  41 82 00 08 */	beq lbl_8016D988
lbl_8016D984:
/* 8016D984 0016A8E4  38 00 00 01 */	li r0, 1
lbl_8016D988:
/* 8016D988 0016A8E8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8016D98C 0016A8EC  41 82 00 44 */	beq lbl_8016D9D0
/* 8016D990 0016A8F0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016D994 0016A8F4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8016D998 0016A8F8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8016D99C 0016A8FC  38 81 00 34 */	addi r4, r1, 0x34
/* 8016D9A0 0016A900  C0 63 66 A0 */	lfs f3, sZeroVector__9CVector3f@l(r3)
/* 8016D9A4 0016A904  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016D9A8 0016A908  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 8016D9AC 0016A90C  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 8016D9B0 0016A910  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8016D9B4 0016A914  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8016D9B8 0016A918  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8016D9BC 0016A91C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8016D9C0 0016A920  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8016D9C4 0016A924  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016D9C8 0016A928  38 63 00 04 */	addi r3, r3, 4
/* 8016D9CC 0016A92C  4B FC 3D 4D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8016D9D0:
/* 8016D9D0 0016A930  2C 1C FF FF */	cmpwi r28, -1
/* 8016D9D4 0016A934  41 82 00 14 */	beq lbl_8016D9E8
/* 8016D9D8 0016A938  57 83 18 38 */	slwi r3, r28, 3
/* 8016D9DC 0016A93C  38 03 00 08 */	addi r0, r3, 8
/* 8016D9E0 0016A940  7F 9D 02 AE */	lhax r28, r29, r0
/* 8016D9E4 0016A944  48 00 00 08 */	b lbl_8016D9EC
lbl_8016D9E8:
/* 8016D9E8 0016A948  3B 80 FF FF */	li r28, -1
lbl_8016D9EC:
/* 8016D9EC 0016A94C  2C 1C FF FF */	cmpwi r28, -1
/* 8016D9F0 0016A950  40 82 FE FC */	bne lbl_8016D8EC
lbl_8016D9F4:
/* 8016D9F4 0016A954  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8016D9F8 0016A958  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8016D9FC 0016A95C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8016DA00 0016A960  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8016DA04 0016A964  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8016DA08 0016A968  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8016DA0C 0016A96C  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8016DA10 0016A970  7C 08 03 A6 */	mtlr r0
/* 8016DA14 0016A974  38 21 00 70 */	addi r1, r1, 0x70
/* 8016DA18 0016A978  4E 80 00 20 */	blr

.global sub_8016da1c
sub_8016da1c:
/* 8016DA1C 0016A97C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8016DA20 0016A980  7C 08 02 A6 */	mflr r0
/* 8016DA24 0016A984  38 A0 00 00 */	li r5, 0
/* 8016DA28 0016A988  90 01 01 04 */	stw r0, 0x104(r1)
/* 8016DA2C 0016A98C  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8016DA30 0016A990  7C 9F 23 78 */	mr r31, r4
/* 8016DA34 0016A994  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8016DA38 0016A998  7C 7E 1B 78 */	mr r30, r3
/* 8016DA3C 0016A99C  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 8016DA40 0016A9A0  93 81 00 F0 */	stw r28, 0xf0(r1)
/* 8016DA44 0016A9A4  88 03 09 BF */	lbz r0, 0x9bf(r3)
/* 8016DA48 0016A9A8  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 8016DA4C 0016A9AC  98 03 09 BF */	stb r0, 0x9bf(r3)
/* 8016DA50 0016A9B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8016DA54 0016A9B4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8016DA58 0016A9B8  7D 89 03 A6 */	mtctr r12
/* 8016DA5C 0016A9BC  4E 80 04 21 */	bctrl
/* 8016DA60 0016A9C0  28 03 00 00 */	cmplwi r3, 0
/* 8016DA64 0016A9C4  41 82 02 84 */	beq lbl_8016DCE8
/* 8016DA68 0016A9C8  A0 DE 00 08 */	lhz r6, 8(r30)
/* 8016DA6C 0016A9CC  7F E3 FB 78 */	mr r3, r31
/* 8016DA70 0016A9D0  38 81 00 18 */	addi r4, r1, 0x18
/* 8016DA74 0016A9D4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8016DA78 0016A9D8  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 8016DA7C 0016A9DC  A0 1E 06 98 */	lhz r0, 0x698(r30)
/* 8016DA80 0016A9E0  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 8016DA84 0016A9E4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8016DA88 0016A9E8  48 0C C6 F9 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 8016DA8C 0016A9EC  28 03 00 00 */	cmplwi r3, 0
/* 8016DA90 0016A9F0  41 82 00 20 */	beq lbl_8016DAB0
/* 8016DA94 0016A9F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8016DA98 0016A9F8  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 8016DA9C 0016A9FC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8016DAA0 0016AA00  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 8016DAA4 0016AA04  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8016DAA8 0016AA08  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 8016DAAC 0016AA0C  48 00 00 AC */	b lbl_8016DB58
lbl_8016DAB0:
/* 8016DAB0 0016AA10  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8016DAB4 0016AA14  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016DAB8 0016AA18  39 03 66 A0 */	addi r8, r3, sZeroVector__9CVector3f@l
/* 8016DABC 0016AA1C  39 20 FF FF */	li r9, -1
/* 8016DAC0 0016AA20  C0 85 00 60 */	lfs f4, 0x60(r5)
/* 8016DAC4 0016AA24  38 00 00 00 */	li r0, 0
/* 8016DAC8 0016AA28  C0 65 00 50 */	lfs f3, 0x50(r5)
/* 8016DACC 0016AA2C  7F C4 F3 78 */	mr r4, r30
/* 8016DAD0 0016AA30  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8016DAD4 0016AA34  7F E5 FB 78 */	mr r5, r31
/* 8016DAD8 0016AA38  C0 48 00 00 */	lfs f2, 0(r8)
/* 8016DADC 0016AA3C  38 61 00 34 */	addi r3, r1, 0x34
/* 8016DAE0 0016AA40  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8016DAE4 0016AA44  38 C1 00 C8 */	addi r6, r1, 0xc8
/* 8016DAE8 0016AA48  C0 28 00 04 */	lfs f1, 4(r8)
/* 8016DAEC 0016AA4C  38 E1 00 28 */	addi r7, r1, 0x28
/* 8016DAF0 0016AA50  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8016DAF4 0016AA54  C0 08 00 08 */	lfs f0, 8(r8)
/* 8016DAF8 0016AA58  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8016DAFC 0016AA5C  A1 1E 00 08 */	lhz r8, 8(r30)
/* 8016DB00 0016AA60  B1 01 00 C8 */	sth r8, 0xc8(r1)
/* 8016DB04 0016AA64  91 21 00 CC */	stw r9, 0xcc(r1)
/* 8016DB08 0016AA68  91 21 00 D0 */	stw r9, 0xd0(r1)
/* 8016DB0C 0016AA6C  91 21 00 D4 */	stw r9, 0xd4(r1)
/* 8016DB10 0016AA70  91 21 00 D8 */	stw r9, 0xd8(r1)
/* 8016DB14 0016AA74  91 21 00 DC */	stw r9, 0xdc(r1)
/* 8016DB18 0016AA78  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8016DB1C 0016AA7C  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 8016DB20 0016AA80  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 8016DB24 0016AA84  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 8016DB28 0016AA88  81 9E 00 00 */	lwz r12, 0(r30)
/* 8016DB2C 0016AA8C  B1 01 00 08 */	sth r8, 8(r1)
/* 8016DB30 0016AA90  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8016DB34 0016AA94  B1 01 00 0C */	sth r8, 0xc(r1)
/* 8016DB38 0016AA98  7D 89 03 A6 */	mtctr r12
/* 8016DB3C 0016AA9C  4E 80 04 21 */	bctrl
/* 8016DB40 0016AAA0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8016DB44 0016AAA4  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 8016DB48 0016AAA8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8016DB4C 0016AAAC  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 8016DB50 0016AAB0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8016DB54 0016AAB4  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
lbl_8016DB58:
/* 8016DB58 0016AAB8  7F C4 F3 78 */	mr r4, r30
/* 8016DB5C 0016AABC  7F E5 FB 78 */	mr r5, r31
/* 8016DB60 0016AAC0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016DB64 0016AAC4  48 00 04 59 */	bl sub_8016dfbc
/* 8016DB68 0016AAC8  C0 A1 00 1C */	lfs f5, 0x1c(r1)
/* 8016DB6C 0016AACC  38 61 00 4C */	addi r3, r1, 0x4c
/* 8016DB70 0016AAD0  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 8016DB74 0016AAD4  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8016DB78 0016AAD8  D0 A1 00 58 */	stfs f5, 0x58(r1)
/* 8016DB7C 0016AADC  D0 81 00 5C */	stfs f4, 0x5c(r1)
/* 8016DB80 0016AAE0  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 8016DB84 0016AAE4  C0 5E 02 E4 */	lfs f2, 0x2e4(r30)
/* 8016DB88 0016AAE8  C0 3E 02 E8 */	lfs f1, 0x2e8(r30)
/* 8016DB8C 0016AAEC  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 8016DB90 0016AAF0  EC 42 20 28 */	fsubs f2, f2, f4
/* 8016DB94 0016AAF4  EC 21 18 28 */	fsubs f1, f1, f3
/* 8016DB98 0016AAF8  EC 00 28 28 */	fsubs f0, f0, f5
/* 8016DB9C 0016AAFC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8016DBA0 0016AB00  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8016DBA4 0016AB04  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8016DBA8 0016AB08  48 1A 6B 51 */	bl CanBeNormalized__9CVector3fCFv
/* 8016DBAC 0016AB0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016DBB0 0016AB10  41 82 01 0C */	beq lbl_8016DCBC
/* 8016DBB4 0016AB14  80 AD 8D D4 */	lwz r5, lbl_805A7994@sda21(r13)
/* 8016DBB8 0016AB18  38 60 00 00 */	li r3, 0
/* 8016DBBC 0016AB1C  38 80 00 01 */	li r4, 1
/* 8016DBC0 0016AB20  48 21 C3 35 */	bl __shl2i
/* 8016DBC4 0016AB24  80 AD 8D D8 */	lwz r5, lbl_805A7998@sda21(r13)
/* 8016DBC8 0016AB28  7C 9C 23 78 */	mr r28, r4
/* 8016DBCC 0016AB2C  7C 7D 1B 78 */	mr r29, r3
/* 8016DBD0 0016AB30  38 60 00 00 */	li r3, 0
/* 8016DBD4 0016AB34  38 80 00 01 */	li r4, 1
/* 8016DBD8 0016AB38  48 21 C3 1D */	bl __shl2i
/* 8016DBDC 0016AB3C  7F BD 1B 78 */	or r29, r29, r3
/* 8016DBE0 0016AB40  38 A0 00 01 */	li r5, 1
/* 8016DBE4 0016AB44  38 00 00 00 */	li r0, 0
/* 8016DBE8 0016AB48  7F 9C 23 78 */	or r28, r28, r4
/* 8016DBEC 0016AB4C  90 A1 00 78 */	stw r5, 0x78(r1)
/* 8016DBF0 0016AB50  38 61 00 4C */	addi r3, r1, 0x4c
/* 8016DBF4 0016AB54  93 81 00 84 */	stw r28, 0x84(r1)
/* 8016DBF8 0016AB58  93 A1 00 80 */	stw r29, 0x80(r1)
/* 8016DBFC 0016AB5C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8016DC00 0016AB60  90 01 00 88 */	stw r0, 0x88(r1)
/* 8016DC04 0016AB64  90 A1 00 90 */	stw r5, 0x90(r1)
/* 8016DC08 0016AB68  48 1A 6C B1 */	bl Magnitude__9CVector3fCFv
/* 8016DC0C 0016AB6C  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016DC10 0016AB70  7F E4 FB 78 */	mr r4, r31
/* 8016DC14 0016AB74  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 8016DC18 0016AB78  38 61 00 98 */	addi r3, r1, 0x98
/* 8016DC1C 0016AB7C  EC 80 08 24 */	fdivs f4, f0, f1
/* 8016DC20 0016AB80  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 8016DC24 0016AB84  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8016DC28 0016AB88  38 A1 00 58 */	addi r5, r1, 0x58
/* 8016DC2C 0016AB8C  38 C1 00 40 */	addi r6, r1, 0x40
/* 8016DC30 0016AB90  38 E1 00 80 */	addi r7, r1, 0x80
/* 8016DC34 0016AB94  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8016DC38 0016AB98  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8016DC3C 0016AB9C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8016DC40 0016ABA0  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8016DC44 0016ABA4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8016DC48 0016ABA8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8016DC4C 0016ABAC  4B ED F3 4D */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8016DC50 0016ABB0  88 01 00 B8 */	lbz r0, 0xb8(r1)
/* 8016DC54 0016ABB4  C0 81 00 98 */	lfs f4, 0x98(r1)
/* 8016DC58 0016ABB8  28 00 00 00 */	cmplwi r0, 0
/* 8016DC5C 0016ABBC  41 82 00 60 */	beq lbl_8016DCBC
/* 8016DC60 0016ABC0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8016DC64 0016ABC4  38 60 00 01 */	li r3, 1
/* 8016DC68 0016ABC8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8016DC6C 0016ABCC  EC 04 00 32 */	fmuls f0, f4, f0
/* 8016DC70 0016ABD0  C0 A2 A0 88 */	lfs f5, lbl_805ABDA8@sda21(r2)
/* 8016DC74 0016ABD4  EC 64 00 72 */	fmuls f3, f4, f1
/* 8016DC78 0016ABD8  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8016DC7C 0016ABDC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8016DC80 0016ABE0  EC 05 00 32 */	fmuls f0, f5, f0
/* 8016DC84 0016ABE4  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8016DC88 0016ABE8  C0 C1 00 5C */	lfs f6, 0x5c(r1)
/* 8016DC8C 0016ABEC  EC 85 00 F2 */	fmuls f4, f5, f3
/* 8016DC90 0016ABF0  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 8016DC94 0016ABF4  EC 01 00 2A */	fadds f0, f1, f0
/* 8016DC98 0016ABF8  EC 25 00 B2 */	fmuls f1, f5, f2
/* 8016DC9C 0016ABFC  EC 46 20 2A */	fadds f2, f6, f4
/* 8016DCA0 0016AC00  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 8016DCA4 0016AC04  EC 03 08 2A */	fadds f0, f3, f1
/* 8016DCA8 0016AC08  D0 5E 02 E4 */	stfs f2, 0x2e4(r30)
/* 8016DCAC 0016AC0C  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 8016DCB0 0016AC10  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 8016DCB4 0016AC14  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8016DCB8 0016AC18  98 1E 09 BF */	stb r0, 0x9bf(r30)
lbl_8016DCBC:
/* 8016DCBC 0016AC1C  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 8016DCC0 0016AC20  7F C3 F3 78 */	mr r3, r30
/* 8016DCC4 0016AC24  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016DCC8 0016AC28  7F E4 FB 78 */	mr r4, r31
/* 8016DCCC 0016AC2C  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
/* 8016DCD0 0016AC30  38 A0 00 00 */	li r5, 0
/* 8016DCD4 0016AC34  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 8016DCD8 0016AC38  D0 1E 07 A8 */	stfs f0, 0x7a8(r30)
/* 8016DCDC 0016AC3C  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 8016DCE0 0016AC40  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 8016DCE4 0016AC44  48 08 89 E9 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
lbl_8016DCE8:
/* 8016DCE8 0016AC48  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8016DCEC 0016AC4C  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8016DCF0 0016AC50  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 8016DCF4 0016AC54  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 8016DCF8 0016AC58  83 81 00 F0 */	lwz r28, 0xf0(r1)
/* 8016DCFC 0016AC5C  7C 08 03 A6 */	mtlr r0
/* 8016DD00 0016AC60  38 21 01 00 */	addi r1, r1, 0x100
/* 8016DD04 0016AC64  4E 80 00 20 */	blr

.global sub_8016dd08
sub_8016dd08:
/* 8016DD08 0016AC68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016DD0C 0016AC6C  7C 08 02 A6 */	mflr r0
/* 8016DD10 0016AC70  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016DD14 0016AC74  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8016DD18 0016AC78  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8016DD1C 0016AC7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016DD20 0016AC80  7C 7F 1B 78 */	mr r31, r3
/* 8016DD24 0016AC84  38 81 00 08 */	addi r4, r1, 8
/* 8016DD28 0016AC88  C0 03 07 F8 */	lfs f0, 0x7f8(r3)
/* 8016DD2C 0016AC8C  38 6D 8D CC */	addi r3, r13, lbl_805A798C@sda21
/* 8016DD30 0016AC90  38 AD 8D D0 */	addi r5, r13, lbl_805A7990@sda21
/* 8016DD34 0016AC94  EC 00 08 2A */	fadds f0, f0, f1
/* 8016DD38 0016AC98  D0 1F 07 F8 */	stfs f0, 0x7f8(r31)
/* 8016DD3C 0016AC9C  C0 3F 07 F8 */	lfs f1, 0x7f8(r31)
/* 8016DD40 0016ACA0  C0 1F 06 4C */	lfs f0, 0x64c(r31)
/* 8016DD44 0016ACA4  C0 5F 06 48 */	lfs f2, 0x648(r31)
/* 8016DD48 0016ACA8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8016DD4C 0016ACAC  C0 3F 07 EC */	lfs f1, 0x7ec(r31)
/* 8016DD50 0016ACB0  EF E2 08 28 */	fsubs f31, f2, f1
/* 8016DD54 0016ACB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8016DD58 0016ACB8  4B E9 E5 5D */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8016DD5C 0016ACBC  C0 43 00 00 */	lfs f2, 0(r3)
/* 8016DD60 0016ACC0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016DD64 0016ACC4  C0 1F 07 EC */	lfs f0, 0x7ec(r31)
/* 8016DD68 0016ACC8  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 8016DD6C 0016ACCC  7F E3 FB 78 */	mr r3, r31
/* 8016DD70 0016ACD0  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016DD74 0016ACD4  EC 02 07 FA */	fmadds f0, f2, f31, f0
/* 8016DD78 0016ACD8  D0 1F 07 D0 */	stfs f0, 0x7d0(r31)
/* 8016DD7C 0016ACDC  D0 1F 07 D4 */	stfs f0, 0x7d4(r31)
/* 8016DD80 0016ACE0  D0 1F 07 D8 */	stfs f0, 0x7d8(r31)
/* 8016DD84 0016ACE4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8016DD88 0016ACE8  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8016DD8C 0016ACEC  7D 89 03 A6 */	mtctr r12
/* 8016DD90 0016ACF0  4E 80 04 21 */	bctrl
/* 8016DD94 0016ACF4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8016DD98 0016ACF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016DD9C 0016ACFC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8016DDA0 0016AD00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016DDA4 0016AD04  7C 08 03 A6 */	mtlr r0
/* 8016DDA8 0016AD08  38 21 00 30 */	addi r1, r1, 0x30
/* 8016DDAC 0016AD0C  4E 80 00 20 */	blr

.global sub_8016ddb0
sub_8016ddb0:
/* 8016DDB0 0016AD10  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8016DDB4 0016AD14  7C 08 02 A6 */	mflr r0
/* 8016DDB8 0016AD18  90 01 00 84 */	stw r0, 0x84(r1)
/* 8016DDBC 0016AD1C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8016DDC0 0016AD20  7C 9F 23 78 */	mr r31, r4
/* 8016DDC4 0016AD24  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8016DDC8 0016AD28  7C 7E 1B 78 */	mr r30, r3
/* 8016DDCC 0016AD2C  93 A1 00 74 */	stw r29, 0x74(r1)
/* 8016DDD0 0016AD30  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016DDD4 0016AD34  A0 63 07 B0 */	lhz r3, 0x7b0(r3)
/* 8016DDD8 0016AD38  7C 03 00 40 */	cmplw r3, r0
/* 8016DDDC 0016AD3C  41 82 01 44 */	beq lbl_8016DF20
/* 8016DDE0 0016AD40  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 8016DDE4 0016AD44  7F E3 FB 78 */	mr r3, r31
/* 8016DDE8 0016AD48  38 81 00 24 */	addi r4, r1, 0x24
/* 8016DDEC 0016AD4C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8016DDF0 0016AD50  4B ED E7 85 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016DDF4 0016AD54  7C 64 1B 78 */	mr r4, r3
/* 8016DDF8 0016AD58  38 61 00 28 */	addi r3, r1, 0x28
/* 8016DDFC 0016AD5C  4B F3 75 D5 */	bl sub_800a53d0
/* 8016DE00 0016AD60  4B F3 75 A5 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 8016DE04 0016AD64  7C 7D 1B 79 */	or. r29, r3, r3
/* 8016DE08 0016AD68  41 82 01 18 */	beq lbl_8016DF20
/* 8016DE0C 0016AD6C  7F C3 F3 78 */	mr r3, r30
/* 8016DE10 0016AD70  7F A4 EB 78 */	mr r4, r29
/* 8016DE14 0016AD74  7F E5 FB 78 */	mr r5, r31
/* 8016DE18 0016AD78  48 00 03 61 */	bl sub_8016e178
/* 8016DE1C 0016AD7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016DE20 0016AD80  41 82 01 00 */	beq lbl_8016DF20
/* 8016DE24 0016AD84  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016DE28 0016AD88  7F A3 EB 78 */	mr r3, r29
/* 8016DE2C 0016AD8C  38 81 00 20 */	addi r4, r1, 0x20
/* 8016DE30 0016AD90  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8016DE34 0016AD94  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8016DE38 0016AD98  4B FB B9 E1 */	bl AttachActorToPirate__12CSpacePirateF9TUniqueId
/* 8016DE3C 0016AD9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016DE40 0016ADA0  41 82 00 E0 */	beq lbl_8016DF20
/* 8016DE44 0016ADA4  38 E0 00 00 */	li r7, 0
/* 8016DE48 0016ADA8  88 61 00 30 */	lbz r3, 0x30(r1)
/* 8016DE4C 0016ADAC  50 E3 3E 30 */	rlwimi r3, r7, 7, 0x18, 0x18
/* 8016DE50 0016ADB0  C0 3D 03 D8 */	lfs f1, 0x3d8(r29)
/* 8016DE54 0016ADB4  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016DE58 0016ADB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8016DE5C 0016ADBC  98 61 00 30 */	stb r3, 0x30(r1)
/* 8016DE60 0016ADC0  50 E0 36 72 */	rlwimi r0, r7, 6, 0x19, 0x19
/* 8016DE64 0016ADC4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8016DE68 0016ADC8  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016DE6C 0016ADCC  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 8016DE70 0016ADD0  98 01 00 30 */	stb r0, 0x30(r1)
/* 8016DE74 0016ADD4  50 E6 2E B4 */	rlwimi r6, r7, 5, 0x1a, 0x1a
/* 8016DE78 0016ADD8  88 01 00 68 */	lbz r0, 0x68(r1)
/* 8016DE7C 0016ADDC  38 60 00 01 */	li r3, 1
/* 8016DE80 0016ADE0  80 AD 8D 98 */	lwz r5, lbl_805A7958@sda21(r13)
/* 8016DE84 0016ADE4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8016DE88 0016ADE8  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 8016DE8C 0016ADEC  38 60 00 00 */	li r3, 0
/* 8016DE90 0016ADF0  38 80 00 01 */	li r4, 1
/* 8016DE94 0016ADF4  98 C1 00 30 */	stb r6, 0x30(r1)
/* 8016DE98 0016ADF8  90 E1 00 50 */	stw r7, 0x50(r1)
/* 8016DE9C 0016ADFC  98 C1 00 54 */	stb r6, 0x54(r1)
/* 8016DEA0 0016AE00  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8016DEA4 0016AE04  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8016DEA8 0016AE08  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8016DEAC 0016AE0C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8016DEB0 0016AE10  98 01 00 68 */	stb r0, 0x68(r1)
/* 8016DEB4 0016AE14  48 21 C0 41 */	bl __shl2i
/* 8016DEB8 0016AE18  39 40 00 00 */	li r10, 0
/* 8016DEBC 0016AE1C  38 00 00 03 */	li r0, 3
/* 8016DEC0 0016AE20  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8016DEC4 0016AE24  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8016DEC8 0016AE28  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8016DECC 0016AE2C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8016DED0 0016AE30  90 61 00 38 */	stw r3, 0x38(r1)
/* 8016DED4 0016AE34  38 81 00 18 */	addi r4, r1, 0x18
/* 8016DED8 0016AE38  7F E3 FB 78 */	mr r3, r31
/* 8016DEDC 0016AE3C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8016DEE0 0016AE40  91 41 00 44 */	stw r10, 0x44(r1)
/* 8016DEE4 0016AE44  38 E1 00 50 */	addi r7, r1, 0x50
/* 8016DEE8 0016AE48  39 01 00 38 */	addi r8, r1, 0x38
/* 8016DEEC 0016AE4C  91 41 00 40 */	stw r10, 0x40(r1)
/* 8016DEF0 0016AE50  90 01 00 48 */	stw r0, 0x48(r1)
/* 8016DEF4 0016AE54  A1 5E 00 08 */	lhz r10, 8(r30)
/* 8016DEF8 0016AE58  B1 41 00 0C */	sth r10, 0xc(r1)
/* 8016DEFC 0016AE5C  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 8016DF00 0016AE60  B1 41 00 08 */	sth r10, 8(r1)
/* 8016DF04 0016AE64  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8016DF08 0016AE68  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016DF0C 0016AE6C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8016DF10 0016AE70  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8016DF14 0016AE74  4B ED C1 8D */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8016DF18 0016AE78  38 60 00 01 */	li r3, 1
/* 8016DF1C 0016AE7C  48 00 00 08 */	b lbl_8016DF24
lbl_8016DF20:
/* 8016DF20 0016AE80  38 60 00 00 */	li r3, 0
lbl_8016DF24:
/* 8016DF24 0016AE84  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8016DF28 0016AE88  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8016DF2C 0016AE8C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8016DF30 0016AE90  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8016DF34 0016AE94  7C 08 03 A6 */	mtlr r0
/* 8016DF38 0016AE98  38 21 00 80 */	addi r1, r1, 0x80
/* 8016DF3C 0016AE9C  4E 80 00 20 */	blr

.global sub_8016df40
sub_8016df40:
/* 8016DF40 0016AEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016DF44 0016AEA4  7C 08 02 A6 */	mflr r0
/* 8016DF48 0016AEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016DF4C 0016AEAC  48 00 00 25 */	bl sub_8016df70
/* 8016DF50 0016AEB0  C0 42 A0 98 */	lfs f2, lbl_805ABDB8@sda21(r2)
/* 8016DF54 0016AEB4  C0 02 A0 88 */	lfs f0, lbl_805ABDA8@sda21(r2)
/* 8016DF58 0016AEB8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8016DF5C 0016AEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016DF60 0016AEC0  EC 20 10 7A */	fmadds f1, f0, f1, f2
/* 8016DF64 0016AEC4  7C 08 03 A6 */	mtlr r0
/* 8016DF68 0016AEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8016DF6C 0016AECC  4E 80 00 20 */	blr

.global sub_8016df70
sub_8016df70:
/* 8016DF70 0016AED0  C0 23 07 F8 */	lfs f1, 0x7f8(r3)
/* 8016DF74 0016AED4  C0 03 06 4C */	lfs f0, 0x64c(r3)
/* 8016DF78 0016AED8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016DF7C 0016AEDC  40 80 00 14 */	bge lbl_8016DF90
/* 8016DF80 0016AEE0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8016DF84 0016AEE4  C0 22 A0 98 */	lfs f1, lbl_805ABDB8@sda21(r2)
/* 8016DF88 0016AEE8  EC 21 00 2A */	fadds f1, f1, f0
/* 8016DF8C 0016AEEC  4E 80 00 20 */	blr
lbl_8016DF90:
/* 8016DF90 0016AEF0  C0 63 06 50 */	lfs f3, 0x650(r3)
/* 8016DF94 0016AEF4  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8016DF98 0016AEF8  40 80 00 1C */	bge lbl_8016DFB4
/* 8016DF9C 0016AEFC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8016DFA0 0016AF00  C0 42 A0 84 */	lfs f2, lbl_805ABDA4@sda21(r2)
/* 8016DFA4 0016AF04  EC 03 00 28 */	fsubs f0, f3, f0
/* 8016DFA8 0016AF08  EC 01 00 24 */	fdivs f0, f1, f0
/* 8016DFAC 0016AF0C  EC 22 00 2A */	fadds f1, f2, f0
/* 8016DFB0 0016AF10  4E 80 00 20 */	blr
lbl_8016DFB4:
/* 8016DFB4 0016AF14  C0 22 A0 D8 */	lfs f1, lbl_805ABDF8@sda21(r2)
/* 8016DFB8 0016AF18  4E 80 00 20 */	blr

.global sub_8016dfbc
sub_8016dfbc:
/* 8016DFBC 0016AF1C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8016DFC0 0016AF20  7C 08 02 A6 */	mflr r0
/* 8016DFC4 0016AF24  90 01 01 14 */	stw r0, 0x114(r1)
/* 8016DFC8 0016AF28  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8016DFCC 0016AF2C  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 8016DFD0 0016AF30  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8016DFD4 0016AF34  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 8016DFD8 0016AF38  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 8016DFDC 0016AF3C  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 8016DFE0 0016AF40  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8016DFE4 0016AF44  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 8016DFE8 0016AF48  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 8016DFEC 0016AF4C  A0 C4 07 B0 */	lhz r6, 0x7b0(r4)
/* 8016DFF0 0016AF50  7C 7D 1B 78 */	mr r29, r3
/* 8016DFF4 0016AF54  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016DFF8 0016AF58  7C BE 2B 78 */	mr r30, r5
/* 8016DFFC 0016AF5C  7C 06 00 40 */	cmplw r6, r0
/* 8016E000 0016AF60  41 82 01 24 */	beq lbl_8016E124
/* 8016E004 0016AF64  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8016E008 0016AF68  A0 03 00 08 */	lhz r0, 8(r3)
/* 8016E00C 0016AF6C  7C 06 00 40 */	cmplw r6, r0
/* 8016E010 0016AF70  41 82 00 B4 */	beq lbl_8016E0C4
/* 8016E014 0016AF74  B0 C1 00 08 */	sth r6, 8(r1)
/* 8016E018 0016AF78  7F C3 F3 78 */	mr r3, r30
/* 8016E01C 0016AF7C  38 81 00 0C */	addi r4, r1, 0xc
/* 8016E020 0016AF80  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 8016E024 0016AF84  4B ED E5 81 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016E028 0016AF88  7C 64 1B 78 */	mr r4, r3
/* 8016E02C 0016AF8C  38 61 00 10 */	addi r3, r1, 0x10
/* 8016E030 0016AF90  4B F4 1C 61 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016E034 0016AF94  83 E3 00 04 */	lwz r31, 4(r3)
/* 8016E038 0016AF98  28 1F 00 00 */	cmplwi r31, 0
/* 8016E03C 0016AF9C  41 82 00 E8 */	beq lbl_8016E124
/* 8016E040 0016AFA0  80 82 A0 78 */	lwz r4, lbl_805ABD98@sda21(r2)
/* 8016E044 0016AFA4  38 61 00 24 */	addi r3, r1, 0x24
/* 8016E048 0016AFA8  4B E9 6C 71 */	bl string_l__4rstlFPCc
/* 8016E04C 0016AFAC  7F E4 FB 78 */	mr r4, r31
/* 8016E050 0016AFB0  38 61 00 64 */	addi r3, r1, 0x64
/* 8016E054 0016AFB4  38 A1 00 24 */	addi r5, r1, 0x24
/* 8016E058 0016AFB8  4B EE 4E A9 */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8016E05C 0016AFBC  38 61 00 94 */	addi r3, r1, 0x94
/* 8016E060 0016AFC0  38 81 00 64 */	addi r4, r1, 0x64
/* 8016E064 0016AFC4  48 1A 4B 11 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8016E068 0016AFC8  38 61 00 24 */	addi r3, r1, 0x24
/* 8016E06C 0016AFCC  48 1C FA 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8016E070 0016AFD0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8016E074 0016AFD4  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016E078 0016AFD8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8016E07C 0016AFDC  C0 63 00 08 */	lfs f3, 8(r3)
/* 8016E080 0016AFE0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8016E084 0016AFE4  EC 00 08 2A */	fadds f0, f0, f1
/* 8016E088 0016AFE8  C0 A3 00 00 */	lfs f5, 0(r3)
/* 8016E08C 0016AFEC  C0 83 00 04 */	lfs f4, 4(r3)
/* 8016E090 0016AFF0  EC C2 08 2A */	fadds f6, f2, f1
/* 8016E094 0016AFF4  C0 E1 00 C0 */	lfs f7, 0xc0(r1)
/* 8016E098 0016AFF8  C0 22 A0 A0 */	lfs f1, lbl_805ABDC0@sda21(r2)
/* 8016E09C 0016AFFC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8016E0A0 0016B000  EC 27 08 FA */	fmadds f1, f7, f3, f1
/* 8016E0A4 0016B004  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8016E0A8 0016B008  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8016E0AC 0016B00C  EC 02 08 2A */	fadds f0, f2, f1
/* 8016E0B0 0016B010  D0 DD 00 04 */	stfs f6, 4(r29)
/* 8016E0B4 0016B014  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8016E0B8 0016B018  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8016E0BC 0016B01C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8016E0C0 0016B020  48 00 00 84 */	b lbl_8016E144
lbl_8016E0C4:
/* 8016E0C4 0016B024  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 8016E0C8 0016B028  C3 E3 00 40 */	lfs f31, 0x40(r3)
/* 8016E0CC 0016B02C  2C 00 00 01 */	cmpwi r0, 1
/* 8016E0D0 0016B030  C3 C3 00 50 */	lfs f30, 0x50(r3)
/* 8016E0D4 0016B034  C3 A3 00 60 */	lfs f29, 0x60(r3)
/* 8016E0D8 0016B038  41 82 00 24 */	beq lbl_8016E0FC
/* 8016E0DC 0016B03C  48 11 6D 05 */	bl GetEyeHeight__7CPlayerCFv
/* 8016E0E0 0016B040  C0 42 A0 9C */	lfs f2, lbl_805ABDBC@sda21(r2)
/* 8016E0E4 0016B044  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016E0E8 0016B048  EC 22 08 2A */	fadds f1, f2, f1
/* 8016E0EC 0016B04C  EF FF 00 2A */	fadds f31, f31, f0
/* 8016E0F0 0016B050  EF DE 00 2A */	fadds f30, f30, f0
/* 8016E0F4 0016B054  EF BD 08 2A */	fadds f29, f29, f1
/* 8016E0F8 0016B058  48 00 00 1C */	b lbl_8016E114
lbl_8016E0FC:
/* 8016E0FC 0016B05C  80 83 07 68 */	lwz r4, 0x768(r3)
/* 8016E100 0016B060  38 61 00 34 */	addi r3, r1, 0x34
/* 8016E104 0016B064  4B F8 85 F1 */	bl GetBallToWorld__10CMorphBallCFv
/* 8016E108 0016B068  C3 E1 00 40 */	lfs f31, 0x40(r1)
/* 8016E10C 0016B06C  C3 C1 00 50 */	lfs f30, 0x50(r1)
/* 8016E110 0016B070  C3 A1 00 60 */	lfs f29, 0x60(r1)
lbl_8016E114:
/* 8016E114 0016B074  D3 FD 00 00 */	stfs f31, 0(r29)
/* 8016E118 0016B078  D3 DD 00 04 */	stfs f30, 4(r29)
/* 8016E11C 0016B07C  D3 BD 00 08 */	stfs f29, 8(r29)
/* 8016E120 0016B080  48 00 00 24 */	b lbl_8016E144
lbl_8016E124:
/* 8016E124 0016B084  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8016E128 0016B088  7F A3 EB 78 */	mr r3, r29
/* 8016E12C 0016B08C  7F C5 F3 78 */	mr r5, r30
/* 8016E130 0016B090  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016E134 0016B094  81 84 00 00 */	lwz r12, 0(r4)
/* 8016E138 0016B098  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8016E13C 0016B09C  7D 89 03 A6 */	mtctr r12
/* 8016E140 0016B0A0  4E 80 04 21 */	bctrl
lbl_8016E144:
/* 8016E144 0016B0A4  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 8016E148 0016B0A8  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8016E14C 0016B0AC  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 8016E150 0016B0B0  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8016E154 0016B0B4  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 8016E158 0016B0B8  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 8016E15C 0016B0BC  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8016E160 0016B0C0  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 8016E164 0016B0C4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8016E168 0016B0C8  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 8016E16C 0016B0CC  7C 08 03 A6 */	mtlr r0
/* 8016E170 0016B0D0  38 21 01 10 */	addi r1, r1, 0x110
/* 8016E174 0016B0D4  4E 80 00 20 */	blr

.global sub_8016e178
sub_8016e178:
/* 8016E178 0016B0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016E17C 0016B0DC  7C 08 02 A6 */	mflr r0
/* 8016E180 0016B0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016E184 0016B0E4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016E188 0016B0E8  A0 64 07 B4 */	lhz r3, 0x7b4(r4)
/* 8016E18C 0016B0EC  7C 03 00 40 */	cmplw r3, r0
/* 8016E190 0016B0F0  40 82 00 50 */	bne lbl_8016E1E0
/* 8016E194 0016B0F4  88 04 06 36 */	lbz r0, 0x636(r4)
/* 8016E198 0016B0F8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8016E19C 0016B0FC  40 82 00 44 */	bne lbl_8016E1E0
/* 8016E1A0 0016B100  7C 83 23 78 */	mr r3, r4
/* 8016E1A4 0016B104  7C A4 2B 78 */	mr r4, r5
/* 8016E1A8 0016B108  81 83 00 00 */	lwz r12, 0(r3)
/* 8016E1AC 0016B10C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8016E1B0 0016B110  7D 89 03 A6 */	mtctr r12
/* 8016E1B4 0016B114  4E 80 04 21 */	bctrl
/* 8016E1B8 0016B118  28 03 00 00 */	cmplwi r3, 0
/* 8016E1BC 0016B11C  38 00 00 00 */	li r0, 0
/* 8016E1C0 0016B120  41 82 00 18 */	beq lbl_8016E1D8
/* 8016E1C4 0016B124  C0 23 00 00 */	lfs f1, 0(r3)
/* 8016E1C8 0016B128  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016E1CC 0016B12C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016E1D0 0016B130  40 81 00 08 */	ble lbl_8016E1D8
/* 8016E1D4 0016B134  38 00 00 01 */	li r0, 1
lbl_8016E1D8:
/* 8016E1D8 0016B138  7C 03 03 78 */	mr r3, r0
/* 8016E1DC 0016B13C  48 00 00 08 */	b lbl_8016E1E4
lbl_8016E1E0:
/* 8016E1E0 0016B140  38 60 00 00 */	li r3, 0
lbl_8016E1E4:
/* 8016E1E4 0016B144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016E1E8 0016B148  7C 08 03 A6 */	mtlr r0
/* 8016E1EC 0016B14C  38 21 00 10 */	addi r1, r1, 0x10
/* 8016E1F0 0016B150  4E 80 00 20 */	blr

.global sub_8016e1f4
sub_8016e1f4:
/* 8016E1F4 0016B154  80 03 07 C8 */	lwz r0, 0x7c8(r3)
/* 8016E1F8 0016B158  38 80 00 00 */	li r4, 0
/* 8016E1FC 0016B15C  2C 00 00 02 */	cmpwi r0, 2
/* 8016E200 0016B160  40 82 00 18 */	bne lbl_8016E218
/* 8016E204 0016B164  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8016E208 0016B168  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8016E20C 0016B16C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8016E210 0016B170  40 82 00 08 */	bne lbl_8016E218
/* 8016E214 0016B174  38 80 00 01 */	li r4, 1
lbl_8016E218:
/* 8016E218 0016B178  7C 83 23 78 */	mr r3, r4
/* 8016E21C 0016B17C  4E 80 00 20 */	blr

.global Dodge__8CMetroidFR13CStateManager9EStateMsgf
Dodge__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016E220 0016B180  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016E224 0016B184  7C 08 02 A6 */	mflr r0
/* 8016E228 0016B188  2C 05 00 01 */	cmpwi r5, 1
/* 8016E22C 0016B18C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016E230 0016B190  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016E234 0016B194  7C 7F 1B 78 */	mr r31, r3
/* 8016E238 0016B198  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016E23C 0016B19C  41 82 00 A4 */	beq lbl_8016E2E0
/* 8016E240 0016B1A0  40 80 00 10 */	bge lbl_8016E250
/* 8016E244 0016B1A4  2C 05 00 00 */	cmpwi r5, 0
/* 8016E248 0016B1A8  40 80 00 14 */	bge lbl_8016E25C
/* 8016E24C 0016B1AC  48 00 01 2C */	b lbl_8016E378
lbl_8016E250:
/* 8016E250 0016B1B0  2C 05 00 03 */	cmpwi r5, 3
/* 8016E254 0016B1B4  40 80 01 24 */	bge lbl_8016E378
/* 8016E258 0016B1B8  48 00 01 18 */	b lbl_8016E370
lbl_8016E25C:
/* 8016E25C 0016B1BC  80 DF 08 18 */	lwz r6, 0x818(r31)
/* 8016E260 0016B1C0  2C 06 FF FF */	cmpwi r6, -1
/* 8016E264 0016B1C4  41 82 01 14 */	beq lbl_8016E378
/* 8016E268 0016B1C8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8016E26C 0016B1CC  38 A0 00 01 */	li r5, 1
/* 8016E270 0016B1D0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8016E274 0016B1D4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E278 0016B1D8  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 8016E27C 0016B1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016E280 0016B1E0  38 04 A9 E4 */	addi r0, r4, lbl_803DA9E4@l
/* 8016E284 0016B1E4  3B C3 00 04 */	addi r30, r3, 4
/* 8016E288 0016B1E8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8016E28C 0016B1EC  7F C3 F3 78 */	mr r3, r30
/* 8016E290 0016B1F0  38 80 00 01 */	li r4, 1
/* 8016E294 0016B1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016E298 0016B1F8  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8016E29C 0016B1FC  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8016E2A0 0016B200  4B FC 31 99 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8016E2A4 0016B204  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8016E2A8 0016B208  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8016E2AC 0016B20C  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8016E2B0 0016B210  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8016E2B4 0016B214  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 8016E2B8 0016B218  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 8016E2BC 0016B21C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8016E2C0 0016B220  38 00 00 02 */	li r0, 2
/* 8016E2C4 0016B224  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8016E2C8 0016B228  90 DE 00 CC */	stw r6, 0xcc(r30)
/* 8016E2CC 0016B22C  90 BE 00 D0 */	stw r5, 0xd0(r30)
/* 8016E2D0 0016B230  90 81 00 14 */	stw r4, 0x14(r1)
/* 8016E2D4 0016B234  90 61 00 14 */	stw r3, 0x14(r1)
/* 8016E2D8 0016B238  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8016E2DC 0016B23C  48 00 00 9C */	b lbl_8016E378
lbl_8016E2E0:
/* 8016E2E0 0016B240  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E2E4 0016B244  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8016E2E8 0016B248  2C 00 00 03 */	cmpwi r0, 3
/* 8016E2EC 0016B24C  41 82 00 10 */	beq lbl_8016E2FC
/* 8016E2F0 0016B250  38 00 00 03 */	li r0, 3
/* 8016E2F4 0016B254  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8016E2F8 0016B258  48 00 00 80 */	b lbl_8016E378
lbl_8016E2FC:
/* 8016E2FC 0016B25C  A0 7F 07 B0 */	lhz r3, 0x7b0(r31)
/* 8016E300 0016B260  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016E304 0016B264  7C 03 00 40 */	cmplw r3, r0
/* 8016E308 0016B268  41 82 00 70 */	beq lbl_8016E378
/* 8016E30C 0016B26C  A0 1F 07 B0 */	lhz r0, 0x7b0(r31)
/* 8016E310 0016B270  7C 83 23 78 */	mr r3, r4
/* 8016E314 0016B274  38 81 00 08 */	addi r4, r1, 8
/* 8016E318 0016B278  B0 01 00 08 */	sth r0, 8(r1)
/* 8016E31C 0016B27C  4B ED E2 89 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016E320 0016B280  7C 64 1B 78 */	mr r4, r3
/* 8016E324 0016B284  38 61 00 0C */	addi r3, r1, 0xc
/* 8016E328 0016B288  4B F4 19 69 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016E32C 0016B28C  80 63 00 04 */	lwz r3, 4(r3)
/* 8016E330 0016B290  28 03 00 00 */	cmplwi r3, 0
/* 8016E334 0016B294  41 82 00 44 */	beq lbl_8016E378
/* 8016E338 0016B298  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8016E33C 0016B29C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8016E340 0016B2A0  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8016E344 0016B2A4  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8016E348 0016B2A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016E34C 0016B2AC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8016E350 0016B2B0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8016E354 0016B2B4  EC 64 18 28 */	fsubs f3, f4, f3
/* 8016E358 0016B2B8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E35C 0016B2BC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8016E360 0016B2C0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8016E364 0016B2C4  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8016E368 0016B2C8  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8016E36C 0016B2CC  48 00 00 0C */	b lbl_8016E378
lbl_8016E370:
/* 8016E370 0016B2D0  38 00 FF FF */	li r0, -1
/* 8016E374 0016B2D4  90 1F 08 18 */	stw r0, 0x818(r31)
lbl_8016E378:
/* 8016E378 0016B2D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016E37C 0016B2DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016E380 0016B2E0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016E384 0016B2E4  7C 08 03 A6 */	mtlr r0
/* 8016E388 0016B2E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8016E38C 0016B2EC  4E 80 00 20 */	blr

.global WallHang__8CMetroidFR13CStateManager9EStateMsgf
WallHang__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016E390 0016B2F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016E394 0016B2F4  7C 08 02 A6 */	mflr r0
/* 8016E398 0016B2F8  2C 05 00 01 */	cmpwi r5, 1
/* 8016E39C 0016B2FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016E3A0 0016B300  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016E3A4 0016B304  7C 7F 1B 78 */	mr r31, r3
/* 8016E3A8 0016B308  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016E3AC 0016B30C  7C 9E 23 78 */	mr r30, r4
/* 8016E3B0 0016B310  41 82 00 58 */	beq lbl_8016E408
/* 8016E3B4 0016B314  40 80 00 10 */	bge lbl_8016E3C4
/* 8016E3B8 0016B318  2C 05 00 00 */	cmpwi r5, 0
/* 8016E3BC 0016B31C  40 80 00 14 */	bge lbl_8016E3D0
/* 8016E3C0 0016B320  48 00 01 CC */	b lbl_8016E58C
lbl_8016E3C4:
/* 8016E3C4 0016B324  2C 05 00 03 */	cmpwi r5, 3
/* 8016E3C8 0016B328  40 80 01 C4 */	bge lbl_8016E58C
/* 8016E3CC 0016B32C  48 00 01 A4 */	b lbl_8016E570
lbl_8016E3D0:
/* 8016E3D0 0016B330  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E3D4 0016B334  38 80 00 00 */	li r4, 0
/* 8016E3D8 0016B338  4B FC C6 01 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8016E3DC 0016B33C  38 00 00 00 */	li r0, 0
/* 8016E3E0 0016B340  7F E3 FB 78 */	mr r3, r31
/* 8016E3E4 0016B344  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8016E3E8 0016B348  7F C5 F3 78 */	mr r5, r30
/* 8016E3EC 0016B34C  38 80 00 13 */	li r4, 0x13
/* 8016E3F0 0016B350  4B EE 5B 91 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8016E3F4 0016B354  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 8016E3F8 0016B358  38 60 00 00 */	li r3, 0
/* 8016E3FC 0016B35C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8016E400 0016B360  98 1F 09 BF */	stb r0, 0x9bf(r31)
/* 8016E404 0016B364  48 00 01 88 */	b lbl_8016E58C
lbl_8016E408:
/* 8016E408 0016B368  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8016E40C 0016B36C  2C 00 00 01 */	cmpwi r0, 1
/* 8016E410 0016B370  41 82 00 60 */	beq lbl_8016E470
/* 8016E414 0016B374  40 80 00 10 */	bge lbl_8016E424
/* 8016E418 0016B378  2C 00 00 00 */	cmpwi r0, 0
/* 8016E41C 0016B37C  40 80 00 14 */	bge lbl_8016E430
/* 8016E420 0016B380  48 00 01 6C */	b lbl_8016E58C
lbl_8016E424:
/* 8016E424 0016B384  2C 00 00 03 */	cmpwi r0, 3
/* 8016E428 0016B388  40 80 01 64 */	bge lbl_8016E58C
/* 8016E42C 0016B38C  48 00 01 28 */	b lbl_8016E554
lbl_8016E430:
/* 8016E430 0016B390  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 8016E434 0016B394  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8016E438 0016B398  41 82 01 54 */	beq lbl_8016E58C
/* 8016E43C 0016B39C  38 80 00 01 */	li r4, 1
/* 8016E440 0016B3A0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016E444 0016B3A4  90 9F 05 68 */	stw r4, 0x568(r31)
/* 8016E448 0016B3A8  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 8016E44C 0016B3AC  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8016E450 0016B3B0  98 1F 09 BF */	stb r0, 0x9bf(r31)
/* 8016E454 0016B3B4  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8016E458 0016B3B8  D0 1F 08 0C */	stfs f0, 0x80c(r31)
/* 8016E45C 0016B3BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8016E460 0016B3C0  D0 1F 08 10 */	stfs f0, 0x810(r31)
/* 8016E464 0016B3C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8016E468 0016B3C8  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 8016E46C 0016B3CC  48 00 01 20 */	b lbl_8016E58C
lbl_8016E470:
/* 8016E470 0016B3D0  81 5F 04 50 */	lwz r10, 0x450(r31)
/* 8016E474 0016B3D4  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 8016E478 0016B3D8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8016E47C 0016B3DC  40 82 00 10 */	bne lbl_8016E48C
/* 8016E480 0016B3E0  38 00 00 02 */	li r0, 2
/* 8016E484 0016B3E4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8016E488 0016B3E8  48 00 01 04 */	b lbl_8016E58C
lbl_8016E48C:
/* 8016E48C 0016B3EC  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8016E490 0016B3F0  38 C0 00 00 */	li r6, 0
/* 8016E494 0016B3F4  39 25 AA 68 */	addi r9, r5, lbl_803DAA68@l
/* 8016E498 0016B3F8  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8016E49C 0016B3FC  50 C3 F8 00 */	rlwimi r3, r6, 0x1f, 0, 0
/* 8016E4A0 0016B400  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8016E4A4 0016B404  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 8016E4A8 0016B408  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 8016E4AC 0016B40C  7C 60 1B 78 */	mr r0, r3
/* 8016E4B0 0016B410  39 00 00 0E */	li r8, 0xe
/* 8016E4B4 0016B414  C0 24 00 04 */	lfs f1, 4(r4)
/* 8016E4B8 0016B418  38 A0 FF FF */	li r5, -1
/* 8016E4BC 0016B41C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8016E4C0 0016B420  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 8016E4C4 0016B424  91 21 00 08 */	stw r9, 8(r1)
/* 8016E4C8 0016B428  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 8016E4CC 0016B42C  3B EA 00 04 */	addi r31, r10, 4
/* 8016E4D0 0016B430  38 80 00 0E */	li r4, 0xe
/* 8016E4D4 0016B434  90 61 00 24 */	stw r3, 0x24(r1)
/* 8016E4D8 0016B438  7F E3 FB 78 */	mr r3, r31
/* 8016E4DC 0016B43C  91 01 00 0C */	stw r8, 0xc(r1)
/* 8016E4E0 0016B440  90 E1 00 08 */	stw r7, 8(r1)
/* 8016E4E4 0016B444  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8016E4E8 0016B448  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8016E4EC 0016B44C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8016E4F0 0016B450  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8016E4F4 0016B454  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8016E4F8 0016B458  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016E4FC 0016B45C  4B FC 2F 3D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8016E500 0016B460  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016E504 0016B464  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8016E508 0016B468  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8016E50C 0016B46C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8016E510 0016B470  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8016E514 0016B474  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8016E518 0016B478  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8016E51C 0016B47C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8016E520 0016B480  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8016E524 0016B484  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8016E528 0016B488  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8016E52C 0016B48C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8016E530 0016B490  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8016E534 0016B494  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8016E538 0016B498  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8016E53C 0016B49C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8016E540 0016B4A0  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8016E544 0016B4A4  90 81 00 08 */	stw r4, 8(r1)
/* 8016E548 0016B4A8  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8016E54C 0016B4AC  90 01 00 08 */	stw r0, 8(r1)
/* 8016E550 0016B4B0  48 00 00 3C */	b lbl_8016E58C
lbl_8016E554:
/* 8016E554 0016B4B4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E558 0016B4B8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8016E55C 0016B4BC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8016E560 0016B4C0  41 82 00 2C */	beq lbl_8016E58C
/* 8016E564 0016B4C4  38 00 00 03 */	li r0, 3
/* 8016E568 0016B4C8  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8016E56C 0016B4CC  48 00 00 20 */	b lbl_8016E58C
lbl_8016E570:
/* 8016E570 0016B4D0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E574 0016B4D4  38 80 00 01 */	li r4, 1
/* 8016E578 0016B4D8  4B FC C4 61 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8016E57C 0016B4DC  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 8016E580 0016B4E0  38 60 00 01 */	li r3, 1
/* 8016E584 0016B4E4  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8016E588 0016B4E8  98 1F 09 BF */	stb r0, 0x9bf(r31)
lbl_8016E58C:
/* 8016E58C 0016B4EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016E590 0016B4F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016E594 0016B4F4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016E598 0016B4F8  7C 08 03 A6 */	mtlr r0
/* 8016E59C 0016B4FC  38 21 00 30 */	addi r1, r1, 0x30
/* 8016E5A0 0016B500  4E 80 00 20 */	blr

.global TelegraphAttack__8CMetroidFR13CStateManager9EStateMsgf
TelegraphAttack__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016E5A4 0016B504  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8016E5A8 0016B508  7C 08 02 A6 */	mflr r0
/* 8016E5AC 0016B50C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8016E5B0 0016B510  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8016E5B4 0016B514  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 8016E5B8 0016B518  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8016E5BC 0016B51C  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 8016E5C0 0016B520  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 8016E5C4 0016B524  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, qr0
/* 8016E5C8 0016B528  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8016E5CC 0016B52C  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8016E5D0 0016B530  2C 05 00 01 */	cmpwi r5, 1
/* 8016E5D4 0016B534  7C 7F 1B 78 */	mr r31, r3
/* 8016E5D8 0016B538  7C 9E 23 78 */	mr r30, r4
/* 8016E5DC 0016B53C  41 82 00 54 */	beq lbl_8016E630
/* 8016E5E0 0016B540  40 80 00 10 */	bge lbl_8016E5F0
/* 8016E5E4 0016B544  2C 05 00 00 */	cmpwi r5, 0
/* 8016E5E8 0016B548  40 80 00 14 */	bge lbl_8016E5FC
/* 8016E5EC 0016B54C  48 00 03 28 */	b lbl_8016E914
lbl_8016E5F0:
/* 8016E5F0 0016B550  2C 05 00 03 */	cmpwi r5, 3
/* 8016E5F4 0016B554  40 80 03 20 */	bge lbl_8016E914
/* 8016E5F8 0016B558  48 00 02 9C */	b lbl_8016E894
lbl_8016E5FC:
/* 8016E5FC 0016B55C  38 00 00 00 */	li r0, 0
/* 8016E600 0016B560  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016E604 0016B564  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8016E608 0016B568  C0 3F 06 44 */	lfs f1, 0x644(r31)
/* 8016E60C 0016B56C  D0 3F 07 B8 */	stfs f1, 0x7b8(r31)
/* 8016E610 0016B570  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 8016E614 0016B574  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E618 0016B578  38 63 00 04 */	addi r3, r3, 4
/* 8016E61C 0016B57C  4B FC 2E 8D */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 8016E620 0016B580  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E624 0016B584  38 80 00 03 */	li r4, 3
/* 8016E628 0016B588  4B FC C3 B1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8016E62C 0016B58C  48 00 02 E8 */	b lbl_8016E914
lbl_8016E630:
/* 8016E630 0016B590  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8016E634 0016B594  2C 00 00 01 */	cmpwi r0, 1
/* 8016E638 0016B598  41 82 02 DC */	beq lbl_8016E914
/* 8016E63C 0016B59C  40 80 00 10 */	bge lbl_8016E64C
/* 8016E640 0016B5A0  2C 00 00 00 */	cmpwi r0, 0
/* 8016E644 0016B5A4  40 80 00 14 */	bge lbl_8016E658
/* 8016E648 0016B5A8  48 00 02 CC */	b lbl_8016E914
lbl_8016E64C:
/* 8016E64C 0016B5AC  2C 00 00 03 */	cmpwi r0, 3
/* 8016E650 0016B5B0  40 80 02 C4 */	bge lbl_8016E914
/* 8016E654 0016B5B4  48 00 01 A8 */	b lbl_8016E7FC
lbl_8016E658:
/* 8016E658 0016B5B8  C0 5F 07 B8 */	lfs f2, 0x7b8(r31)
/* 8016E65C 0016B5BC  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016E660 0016B5C0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8016E664 0016B5C4  D0 3F 07 B8 */	stfs f1, 0x7b8(r31)
/* 8016E668 0016B5C8  C0 3F 07 B8 */	lfs f1, 0x7b8(r31)
/* 8016E66C 0016B5CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016E670 0016B5D0  40 80 00 B4 */	bge lbl_8016E724
/* 8016E674 0016B5D4  38 00 00 02 */	li r0, 2
/* 8016E678 0016B5D8  7F E4 FB 78 */	mr r4, r31
/* 8016E67C 0016B5DC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8016E680 0016B5E0  7F C5 F3 78 */	mr r5, r30
/* 8016E684 0016B5E4  38 61 00 44 */	addi r3, r1, 0x44
/* 8016E688 0016B5E8  C3 BF 00 60 */	lfs f29, 0x60(r31)
/* 8016E68C 0016B5EC  C3 DF 00 50 */	lfs f30, 0x50(r31)
/* 8016E690 0016B5F0  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 8016E694 0016B5F4  4B FF F9 29 */	bl sub_8016dfbc
/* 8016E698 0016B5F8  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8016E69C 0016B5FC  38 61 00 68 */	addi r3, r1, 0x68
/* 8016E6A0 0016B600  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8016E6A4 0016B604  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8016E6A8 0016B608  EC 42 F8 28 */	fsubs f2, f2, f31
/* 8016E6AC 0016B60C  EC 21 F0 28 */	fsubs f1, f1, f30
/* 8016E6B0 0016B610  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8016E6B4 0016B614  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8016E6B8 0016B618  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8016E6BC 0016B61C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8016E6C0 0016B620  48 1A 61 F9 */	bl Magnitude__9CVector3fCFv
/* 8016E6C4 0016B624  C0 02 A0 E4 */	lfs f0, lbl_805ABE04@sda21(r2)
/* 8016E6C8 0016B628  C3 BF 03 B4 */	lfs f29, 0x3b4(r31)
/* 8016E6CC 0016B62C  C3 C2 A0 80 */	lfs f30, lbl_805ABDA0@sda21(r2)
/* 8016E6D0 0016B630  EF E0 00 72 */	fmuls f31, f0, f1
/* 8016E6D4 0016B634  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 8016E6D8 0016B638  40 81 00 0C */	ble lbl_8016E6E4
/* 8016E6DC 0016B63C  C0 02 A0 E8 */	lfs f0, lbl_805ABE08@sda21(r2)
/* 8016E6E0 0016B640  EF C0 E8 24 */	fdivs f30, f0, f29
lbl_8016E6E4:
/* 8016E6E4 0016B644  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E6E8 0016B648  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8016E6EC 0016B64C  4B FC 57 C1 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 8016E6F0 0016B650  EC 3F 08 24 */	fdivs f1, f31, f1
/* 8016E6F4 0016B654  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016E6F8 0016B658  EC 3E 08 2A */	fadds f1, f30, f1
/* 8016E6FC 0016B65C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8016E700 0016B660  D0 3F 08 04 */	stfs f1, 0x804(r31)
/* 8016E704 0016B664  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E708 0016B668  40 81 00 10 */	ble lbl_8016E718
/* 8016E70C 0016B66C  C0 02 A0 EC */	lfs f0, lbl_805ABE0C@sda21(r2)
/* 8016E710 0016B670  EC 20 E8 24 */	fdivs f1, f0, f29
/* 8016E714 0016B674  48 00 00 08 */	b lbl_8016E71C
lbl_8016E718:
/* 8016E718 0016B678  C0 22 A0 EC */	lfs f1, lbl_805ABE0C@sda21(r2)
lbl_8016E71C:
/* 8016E71C 0016B67C  4B FC C2 89 */	bl SetTurnSpeed__15CBodyControllerFf
/* 8016E720 0016B680  48 00 01 F4 */	b lbl_8016E914
lbl_8016E724:
/* 8016E724 0016B684  A0 7F 07 B0 */	lhz r3, 0x7b0(r31)
/* 8016E728 0016B688  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016E72C 0016B68C  7C 03 00 40 */	cmplw r3, r0
/* 8016E730 0016B690  41 82 01 E4 */	beq lbl_8016E914
/* 8016E734 0016B694  A0 1F 07 B0 */	lhz r0, 0x7b0(r31)
/* 8016E738 0016B698  7F C3 F3 78 */	mr r3, r30
/* 8016E73C 0016B69C  38 81 00 14 */	addi r4, r1, 0x14
/* 8016E740 0016B6A0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8016E744 0016B6A4  4B ED DE 61 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016E748 0016B6A8  7C 64 1B 78 */	mr r4, r3
/* 8016E74C 0016B6AC  38 61 00 18 */	addi r3, r1, 0x18
/* 8016E750 0016B6B0  4B F4 15 41 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016E754 0016B6B4  80 83 00 04 */	lwz r4, 4(r3)
/* 8016E758 0016B6B8  28 04 00 00 */	cmplwi r4, 0
/* 8016E75C 0016B6BC  41 82 01 B8 */	beq lbl_8016E914
/* 8016E760 0016B6C0  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8016E764 0016B6C4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8016E768 0016B6C8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8016E76C 0016B6CC  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8016E770 0016B6D0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8016E774 0016B6D4  EC 81 00 28 */	fsubs f4, f1, f0
/* 8016E778 0016B6D8  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8016E77C 0016B6DC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8016E780 0016B6E0  EC 43 10 28 */	fsubs f2, f3, f2
/* 8016E784 0016B6E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016E788 0016B6E8  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 8016E78C 0016B6EC  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8016E790 0016B6F0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8016E794 0016B6F4  48 1A 5F 65 */	bl CanBeNormalized__9CVector3fCFv
/* 8016E798 0016B6F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016E79C 0016B6FC  41 82 01 78 */	beq lbl_8016E914
/* 8016E7A0 0016B700  38 61 00 38 */	addi r3, r1, 0x38
/* 8016E7A4 0016B704  38 81 00 5C */	addi r4, r1, 0x5c
/* 8016E7A8 0016B708  48 1A 60 A9 */	bl AsNormalized__9CVector3fCFv
/* 8016E7AC 0016B70C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016E7B0 0016B710  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 8016E7B4 0016B714  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 8016E7B8 0016B718  38 81 00 90 */	addi r4, r1, 0x90
/* 8016E7BC 0016B71C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8016E7C0 0016B720  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8016E7C4 0016B724  C0 83 00 08 */	lfs f4, 8(r3)
/* 8016E7C8 0016B728  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8016E7CC 0016B72C  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016E7D0 0016B730  D0 C1 00 90 */	stfs f6, 0x90(r1)
/* 8016E7D4 0016B734  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 8016E7D8 0016B738  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 8016E7DC 0016B73C  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 8016E7E0 0016B740  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8016E7E4 0016B744  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8016E7E8 0016B748  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8016E7EC 0016B74C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E7F0 0016B750  38 63 00 04 */	addi r3, r3, 4
/* 8016E7F4 0016B754  4B FC 2F 25 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8016E7F8 0016B758  48 00 01 1C */	b lbl_8016E914
lbl_8016E7FC:
/* 8016E7FC 0016B75C  C0 1F 08 00 */	lfs f0, 0x800(r31)
/* 8016E800 0016B760  7F E4 FB 78 */	mr r4, r31
/* 8016E804 0016B764  7F C5 F3 78 */	mr r5, r30
/* 8016E808 0016B768  38 61 00 2C */	addi r3, r1, 0x2c
/* 8016E80C 0016B76C  EC 00 08 2A */	fadds f0, f0, f1
/* 8016E810 0016B770  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 8016E814 0016B774  4B FF F7 A9 */	bl sub_8016dfbc
/* 8016E818 0016B778  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8016E81C 0016B77C  7F E5 FB 78 */	mr r5, r31
/* 8016E820 0016B780  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8016E824 0016B784  38 61 00 20 */	addi r3, r1, 0x20
/* 8016E828 0016B788  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8016E82C 0016B78C  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8016E830 0016B790  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8016E834 0016B794  38 C1 00 50 */	addi r6, r1, 0x50
/* 8016E838 0016B798  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8016E83C 0016B79C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8016E840 0016B7A0  4B FD 03 E1 */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 8016E844 0016B7A4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016E848 0016B7A8  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8016E84C 0016B7AC  C0 C1 00 20 */	lfs f6, 0x20(r1)
/* 8016E850 0016B7B0  38 81 00 74 */	addi r4, r1, 0x74
/* 8016E854 0016B7B4  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 8016E858 0016B7B8  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 8016E85C 0016B7BC  C0 43 00 04 */	lfs f2, 4(r3)
/* 8016E860 0016B7C0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8016E864 0016B7C4  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016E868 0016B7C8  D0 C1 00 74 */	stfs f6, 0x74(r1)
/* 8016E86C 0016B7CC  D0 A1 00 78 */	stfs f5, 0x78(r1)
/* 8016E870 0016B7D0  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 8016E874 0016B7D4  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8016E878 0016B7D8  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8016E87C 0016B7DC  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8016E880 0016B7E0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8016E884 0016B7E4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E888 0016B7E8  38 63 00 04 */	addi r3, r3, 4
/* 8016E88C 0016B7EC  4B FC 2E 8D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8016E890 0016B7F0  48 00 00 84 */	b lbl_8016E914
lbl_8016E894:
/* 8016E894 0016B7F4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016E898 0016B7F8  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 8016E89C 0016B7FC  4B FC C1 09 */	bl SetTurnSpeed__15CBodyControllerFf
/* 8016E8A0 0016B800  7F E3 FB 78 */	mr r3, r31
/* 8016E8A4 0016B804  7F C4 F3 78 */	mr r4, r30
/* 8016E8A8 0016B808  81 9F 00 00 */	lwz r12, 0(r31)
/* 8016E8AC 0016B80C  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016E8B0 0016B810  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 8016E8B4 0016B814  7D 89 03 A6 */	mtctr r12
/* 8016E8B8 0016B818  4E 80 04 21 */	bctrl
/* 8016E8BC 0016B81C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016E8C0 0016B820  40 82 00 28 */	bne lbl_8016E8E8
/* 8016E8C4 0016B824  7F E3 FB 78 */	mr r3, r31
/* 8016E8C8 0016B828  7F C4 F3 78 */	mr r4, r30
/* 8016E8CC 0016B82C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8016E8D0 0016B830  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016E8D4 0016B834  81 8C 01 B8 */	lwz r12, 0x1b8(r12)
/* 8016E8D8 0016B838  7D 89 03 A6 */	mtctr r12
/* 8016E8DC 0016B83C  4E 80 04 21 */	bctrl
/* 8016E8E0 0016B840  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016E8E4 0016B844  41 82 00 30 */	beq lbl_8016E914
lbl_8016E8E8:
/* 8016E8E8 0016B848  A1 1F 00 08 */	lhz r8, 8(r31)
/* 8016E8EC 0016B84C  7F C4 F3 78 */	mr r4, r30
/* 8016E8F0 0016B850  38 A1 00 10 */	addi r5, r1, 0x10
/* 8016E8F4 0016B854  38 C1 00 0C */	addi r6, r1, 0xc
/* 8016E8F8 0016B858  B1 01 00 0C */	sth r8, 0xc(r1)
/* 8016E8FC 0016B85C  38 60 00 00 */	li r3, 0
/* 8016E900 0016B860  38 E0 00 00 */	li r7, 0
/* 8016E904 0016B864  A0 1F 06 98 */	lhz r0, 0x698(r31)
/* 8016E908 0016B868  B1 01 00 08 */	sth r8, 8(r1)
/* 8016E90C 0016B86C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8016E910 0016B870  48 0C B5 C1 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
lbl_8016E914:
/* 8016E914 0016B874  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 8016E918 0016B878  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8016E91C 0016B87C  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 8016E920 0016B880  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8016E924 0016B884  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, qr0
/* 8016E928 0016B888  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 8016E92C 0016B88C  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8016E930 0016B890  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8016E934 0016B894  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8016E938 0016B898  7C 08 03 A6 */	mtlr r0
/* 8016E93C 0016B89C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8016E940 0016B8A0  4E 80 00 20 */	blr

.global Attack__8CMetroidFR13CStateManager9EStateMsgf
Attack__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016E944 0016B8A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8016E948 0016B8A8  7C 08 02 A6 */	mflr r0
/* 8016E94C 0016B8AC  2C 05 00 01 */	cmpwi r5, 1
/* 8016E950 0016B8B0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8016E954 0016B8B4  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8016E958 0016B8B8  7C 9F 23 78 */	mr r31, r4
/* 8016E95C 0016B8BC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8016E960 0016B8C0  7C 7E 1B 78 */	mr r30, r3
/* 8016E964 0016B8C4  41 82 00 AC */	beq lbl_8016EA10
/* 8016E968 0016B8C8  40 80 00 10 */	bge lbl_8016E978
/* 8016E96C 0016B8CC  2C 05 00 00 */	cmpwi r5, 0
/* 8016E970 0016B8D0  40 80 00 14 */	bge lbl_8016E984
/* 8016E974 0016B8D4  48 00 03 54 */	b lbl_8016ECC8
lbl_8016E978:
/* 8016E978 0016B8D8  2C 05 00 03 */	cmpwi r5, 3
/* 8016E97C 0016B8DC  40 80 03 4C */	bge lbl_8016ECC8
/* 8016E980 0016B8E0  48 00 02 2C */	b lbl_8016EBAC
lbl_8016E984:
/* 8016E984 0016B8E4  4B FF E8 05 */	bl sub_8016d188
/* 8016E988 0016B8E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016E98C 0016B8EC  41 82 00 78 */	beq lbl_8016EA04
/* 8016E990 0016B8F0  38 E0 00 01 */	li r7, 1
/* 8016E994 0016B8F4  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016E998 0016B8F8  90 FE 05 68 */	stw r7, 0x568(r30)
/* 8016E99C 0016B8FC  7F C3 F3 78 */	mr r3, r30
/* 8016E9A0 0016B900  7F E6 FB 78 */	mr r6, r31
/* 8016E9A4 0016B904  38 80 00 29 */	li r4, 0x29
/* 8016E9A8 0016B908  D0 1E 07 BC */	stfs f0, 0x7bc(r30)
/* 8016E9AC 0016B90C  38 A0 00 28 */	li r5, 0x28
/* 8016E9B0 0016B910  90 FE 07 C8 */	stw r7, 0x7c8(r30)
/* 8016E9B4 0016B914  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 8016E9B8 0016B918  50 E0 17 7A */	rlwimi r0, r7, 2, 0x1d, 0x1d
/* 8016E9BC 0016B91C  98 1E 09 BF */	stb r0, 0x9bf(r30)
/* 8016E9C0 0016B920  4B EE 55 15 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8016E9C4 0016B924  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016E9C8 0016B928  7F E6 FB 78 */	mr r6, r31
/* 8016E9CC 0016B92C  38 81 00 18 */	addi r4, r1, 0x18
/* 8016E9D0 0016B930  38 A0 00 08 */	li r5, 8
/* 8016E9D4 0016B934  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8016E9D8 0016B938  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8016E9DC 0016B93C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8016E9E0 0016B940  48 00 C8 75 */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
/* 8016E9E4 0016B944  7F C3 F3 78 */	mr r3, r30
/* 8016E9E8 0016B948  7F C4 F3 78 */	mr r4, r30
/* 8016E9EC 0016B94C  4B FF D9 BD */	bl sub_8016c3a8
/* 8016E9F0 0016B950  7F C3 F3 78 */	mr r3, r30
/* 8016E9F4 0016B954  7F E5 FB 78 */	mr r5, r31
/* 8016E9F8 0016B958  38 80 00 22 */	li r4, 0x22
/* 8016E9FC 0016B95C  4B EE 59 55 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8016EA00 0016B960  48 00 02 C8 */	b lbl_8016ECC8
lbl_8016EA04:
/* 8016EA04 0016B964  38 00 00 03 */	li r0, 3
/* 8016EA08 0016B968  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8016EA0C 0016B96C  48 00 02 BC */	b lbl_8016ECC8
lbl_8016EA10:
/* 8016EA10 0016B970  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 8016EA14 0016B974  2C 00 00 02 */	cmpwi r0, 2
/* 8016EA18 0016B978  41 82 00 A4 */	beq lbl_8016EABC
/* 8016EA1C 0016B97C  40 80 02 AC */	bge lbl_8016ECC8
/* 8016EA20 0016B980  2C 00 00 01 */	cmpwi r0, 1
/* 8016EA24 0016B984  40 80 00 08 */	bge lbl_8016EA2C
/* 8016EA28 0016B988  48 00 02 A0 */	b lbl_8016ECC8
lbl_8016EA2C:
/* 8016EA2C 0016B98C  80 FE 04 50 */	lwz r7, 0x450(r30)
/* 8016EA30 0016B990  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 8016EA34 0016B994  2C 00 00 09 */	cmpwi r0, 9
/* 8016EA38 0016B998  40 82 00 10 */	bne lbl_8016EA48
/* 8016EA3C 0016B99C  38 00 00 02 */	li r0, 2
/* 8016EA40 0016B9A0  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8016EA44 0016B9A4  48 00 02 84 */	b lbl_8016ECC8
lbl_8016EA48:
/* 8016EA48 0016B9A8  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8016EA4C 0016B9AC  3C 60 80 3E */	lis r3, lbl_803E10B0@ha
/* 8016EA50 0016B9B0  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8016EA54 0016B9B4  38 80 00 07 */	li r4, 7
/* 8016EA58 0016B9B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8016EA5C 0016B9BC  38 C3 10 B0 */	addi r6, r3, lbl_803E10B0@l
/* 8016EA60 0016B9C0  38 A0 00 03 */	li r5, 3
/* 8016EA64 0016B9C4  38 00 00 00 */	li r0, 0
/* 8016EA68 0016B9C8  3B C7 00 04 */	addi r30, r7, 4
/* 8016EA6C 0016B9CC  90 81 00 48 */	stw r4, 0x48(r1)
/* 8016EA70 0016B9D0  7F C3 F3 78 */	mr r3, r30
/* 8016EA74 0016B9D4  38 80 00 07 */	li r4, 7
/* 8016EA78 0016B9D8  90 C1 00 44 */	stw r6, 0x44(r1)
/* 8016EA7C 0016B9DC  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 8016EA80 0016B9E0  90 01 00 50 */	stw r0, 0x50(r1)
/* 8016EA84 0016B9E4  4B FC 29 B5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8016EA88 0016B9E8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8016EA8C 0016B9EC  3C 60 80 3E */	lis r3, lbl_803E10B0@ha
/* 8016EA90 0016B9F0  38 83 10 B0 */	addi r4, r3, lbl_803E10B0@l
/* 8016EA94 0016B9F4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8016EA98 0016B9F8  90 1E 01 48 */	stw r0, 0x148(r30)
/* 8016EA9C 0016B9FC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8016EAA0 0016BA00  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 8016EAA4 0016BA04  90 81 00 44 */	stw r4, 0x44(r1)
/* 8016EAA8 0016BA08  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8016EAAC 0016BA0C  90 BE 01 4C */	stw r5, 0x14c(r30)
/* 8016EAB0 0016BA10  90 7E 01 50 */	stw r3, 0x150(r30)
/* 8016EAB4 0016BA14  90 01 00 44 */	stw r0, 0x44(r1)
/* 8016EAB8 0016BA18  48 00 02 10 */	b lbl_8016ECC8
lbl_8016EABC:
/* 8016EABC 0016BA1C  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8016EAC0 0016BA20  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8016EAC4 0016BA24  88 03 02 20 */	lbz r0, 0x220(r3)
/* 8016EAC8 0016BA28  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8016EACC 0016BA2C  41 82 00 0C */	beq lbl_8016EAD8
/* 8016EAD0 0016BA30  38 00 00 02 */	li r0, 2
/* 8016EAD4 0016BA34  90 1E 07 C8 */	stw r0, 0x7c8(r30)
lbl_8016EAD8:
/* 8016EAD8 0016BA38  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8016EADC 0016BA3C  A0 7E 07 B0 */	lhz r3, 0x7b0(r30)
/* 8016EAE0 0016BA40  A0 04 00 08 */	lhz r0, 8(r4)
/* 8016EAE4 0016BA44  7C 03 00 40 */	cmplw r3, r0
/* 8016EAE8 0016BA48  40 82 00 44 */	bne lbl_8016EB2C
/* 8016EAEC 0016BA4C  A0 64 02 6C */	lhz r3, 0x26c(r4)
/* 8016EAF0 0016BA50  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016EAF4 0016BA54  7C 03 00 40 */	cmplw r3, r0
/* 8016EAF8 0016BA58  40 82 00 34 */	bne lbl_8016EB2C
/* 8016EAFC 0016BA5C  80 64 00 04 */	lwz r3, 4(r4)
/* 8016EB00 0016BA60  80 1E 00 04 */	lwz r0, 4(r30)
/* 8016EB04 0016BA64  7C 03 00 00 */	cmpw r3, r0
/* 8016EB08 0016BA68  41 82 00 24 */	beq lbl_8016EB2C
/* 8016EB0C 0016BA6C  7F C3 F3 78 */	mr r3, r30
/* 8016EB10 0016BA70  7F E4 FB 78 */	mr r4, r31
/* 8016EB14 0016BA74  4B FF E3 A9 */	bl sub_8016cebc
/* 8016EB18 0016BA78  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 8016EB1C 0016BA7C  38 60 00 01 */	li r3, 1
/* 8016EB20 0016BA80  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8016EB24 0016BA84  98 1E 04 01 */	stb r0, 0x401(r30)
/* 8016EB28 0016BA88  48 00 01 A0 */	b lbl_8016ECC8
lbl_8016EB2C:
/* 8016EB2C 0016BA8C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8016EB30 0016BA90  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8016EB34 0016BA94  2C 00 00 09 */	cmpwi r0, 9
/* 8016EB38 0016BA98  41 82 00 10 */	beq lbl_8016EB48
/* 8016EB3C 0016BA9C  38 00 00 03 */	li r0, 3
/* 8016EB40 0016BAA0  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8016EB44 0016BAA4  48 00 01 84 */	b lbl_8016ECC8
lbl_8016EB48:
/* 8016EB48 0016BAA8  7F C3 F3 78 */	mr r3, r30
/* 8016EB4C 0016BAAC  7F E4 FB 78 */	mr r4, r31
/* 8016EB50 0016BAB0  4B FF D7 09 */	bl sub_8016c258
/* 8016EB54 0016BAB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016EB58 0016BAB8  41 82 01 70 */	beq lbl_8016ECC8
/* 8016EB5C 0016BABC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8016EB60 0016BAC0  38 00 00 0A */	li r0, 0xa
/* 8016EB64 0016BAC4  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 8016EB68 0016BAC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016EB6C 0016BACC  38 81 00 20 */	addi r4, r1, 0x20
/* 8016EB70 0016BAD0  90 61 00 20 */	stw r3, 0x20(r1)
/* 8016EB74 0016BAD4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8016EB78 0016BAD8  38 63 00 04 */	addi r3, r3, 4
/* 8016EB7C 0016BADC  4B FC 2C 3D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 8016EB80 0016BAE0  34 01 00 20 */	addic. r0, r1, 0x20
/* 8016EB84 0016BAE4  41 82 00 10 */	beq lbl_8016EB94
/* 8016EB88 0016BAE8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8016EB8C 0016BAEC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8016EB90 0016BAF0  90 01 00 20 */	stw r0, 0x20(r1)
lbl_8016EB94:
/* 8016EB94 0016BAF4  7F C3 F3 78 */	mr r3, r30
/* 8016EB98 0016BAF8  7F E4 FB 78 */	mr r4, r31
/* 8016EB9C 0016BAFC  4B FF E3 21 */	bl sub_8016cebc
/* 8016EBA0 0016BB00  38 00 00 03 */	li r0, 3
/* 8016EBA4 0016BB04  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 8016EBA8 0016BB08  48 00 01 20 */	b lbl_8016ECC8
lbl_8016EBAC:
/* 8016EBAC 0016BB0C  A1 1E 00 08 */	lhz r8, 8(r30)
/* 8016EBB0 0016BB10  38 A1 00 10 */	addi r5, r1, 0x10
/* 8016EBB4 0016BB14  38 C1 00 0C */	addi r6, r1, 0xc
/* 8016EBB8 0016BB18  38 60 00 00 */	li r3, 0
/* 8016EBBC 0016BB1C  B1 01 00 0C */	sth r8, 0xc(r1)
/* 8016EBC0 0016BB20  38 E0 00 00 */	li r7, 0
/* 8016EBC4 0016BB24  A0 1E 06 98 */	lhz r0, 0x698(r30)
/* 8016EBC8 0016BB28  B1 01 00 08 */	sth r8, 8(r1)
/* 8016EBCC 0016BB2C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8016EBD0 0016BB30  48 0C B3 01 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
/* 8016EBD4 0016BB34  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 8016EBD8 0016BB38  48 1A 39 05 */	bl Float__9CRandom16Fv
/* 8016EBDC 0016BB3C  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 8016EBE0 0016BB40  38 00 00 00 */	li r0, 0
/* 8016EBE4 0016BB44  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 8016EBE8 0016BB48  7F C3 F3 78 */	mr r3, r30
/* 8016EBEC 0016BB4C  7F E4 FB 78 */	mr r4, r31
/* 8016EBF0 0016BB50  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8016EBF4 0016BB54  D0 1E 07 B4 */	stfs f0, 0x7b4(r30)
/* 8016EBF8 0016BB58  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 8016EBFC 0016BB5C  4B FF E2 C1 */	bl sub_8016cebc
/* 8016EC00 0016BB60  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 8016EC04 0016BB64  38 60 00 00 */	li r3, 0
/* 8016EC08 0016BB68  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8016EC0C 0016BB6C  7F C3 F3 78 */	mr r3, r30
/* 8016EC10 0016BB70  98 1E 09 BF */	stb r0, 0x9bf(r30)
/* 8016EC14 0016BB74  4B EE 58 9D */	bl GetYaw__6CActorCFv
/* 8016EC18 0016BB78  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8016EC1C 0016BB7C  38 61 00 34 */	addi r3, r1, 0x34
/* 8016EC20 0016BB80  38 81 00 1C */	addi r4, r1, 0x1c
/* 8016EC24 0016BB84  48 1A 24 D5 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8016EC28 0016BB88  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 8016EC2C 0016BB8C  38 61 00 64 */	addi r3, r1, 0x64
/* 8016EC30 0016BB90  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8016EC34 0016BB94  38 81 00 54 */	addi r4, r1, 0x54
/* 8016EC38 0016BB98  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8016EC3C 0016BB9C  38 A1 00 28 */	addi r5, r1, 0x28
/* 8016EC40 0016BBA0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8016EC44 0016BBA4  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 8016EC48 0016BBA8  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8016EC4C 0016BBAC  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8016EC50 0016BBB0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8016EC54 0016BBB4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8016EC58 0016BBB8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8016EC5C 0016BBBC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016EC60 0016BBC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8016EC64 0016BBC4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8016EC68 0016BBC8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8016EC6C 0016BBCC  48 1A 32 51 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 8016EC70 0016BBD0  38 7E 00 34 */	addi r3, r30, 0x34
/* 8016EC74 0016BBD4  38 81 00 64 */	addi r4, r1, 0x64
/* 8016EC78 0016BBD8  48 1A 3E C9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8016EC7C 0016BBDC  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8016EC80 0016BBE0  38 E0 00 01 */	li r7, 1
/* 8016EC84 0016BBE4  50 E0 26 F6 */	rlwimi r0, r7, 4, 0x1b, 0x1b
/* 8016EC88 0016BBE8  7F C3 F3 78 */	mr r3, r30
/* 8016EC8C 0016BBEC  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8016EC90 0016BBF0  7F E6 FB 78 */	mr r6, r31
/* 8016EC94 0016BBF4  38 80 00 29 */	li r4, 0x29
/* 8016EC98 0016BBF8  38 A0 00 28 */	li r5, 0x28
/* 8016EC9C 0016BBFC  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8016ECA0 0016BC00  50 E0 1F 38 */	rlwimi r0, r7, 3, 0x1c, 0x1c
/* 8016ECA4 0016BC04  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8016ECA8 0016BC08  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8016ECAC 0016BC0C  50 E0 17 7A */	rlwimi r0, r7, 2, 0x1d, 0x1d
/* 8016ECB0 0016BC10  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8016ECB4 0016BC14  4B EE 56 01 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8016ECB8 0016BC18  7F C3 F3 78 */	mr r3, r30
/* 8016ECBC 0016BC1C  7F E5 FB 78 */	mr r5, r31
/* 8016ECC0 0016BC20  38 80 00 22 */	li r4, 0x22
/* 8016ECC4 0016BC24  4B EE 52 BD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8016ECC8:
/* 8016ECC8 0016BC28  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8016ECCC 0016BC2C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8016ECD0 0016BC30  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8016ECD4 0016BC34  7C 08 03 A6 */	mtlr r0
/* 8016ECD8 0016BC38  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8016ECDC 0016BC3C  4E 80 00 20 */	blr

.global TurnAround__8CMetroidFR13CStateManager9EStateMsgf
TurnAround__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016ECE0 0016BC40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8016ECE4 0016BC44  7C 08 02 A6 */	mflr r0
/* 8016ECE8 0016BC48  2C 05 00 01 */	cmpwi r5, 1
/* 8016ECEC 0016BC4C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8016ECF0 0016BC50  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8016ECF4 0016BC54  7C 9F 23 78 */	mr r31, r4
/* 8016ECF8 0016BC58  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8016ECFC 0016BC5C  7C 7E 1B 78 */	mr r30, r3
/* 8016ED00 0016BC60  41 82 00 08 */	beq lbl_8016ED08
/* 8016ED04 0016BC64  48 00 00 FC */	b lbl_8016EE00
lbl_8016ED08:
/* 8016ED08 0016BC68  A0 7E 07 B0 */	lhz r3, 0x7b0(r30)
/* 8016ED0C 0016BC6C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016ED10 0016BC70  7C 03 00 40 */	cmplw r3, r0
/* 8016ED14 0016BC74  41 82 00 EC */	beq lbl_8016EE00
/* 8016ED18 0016BC78  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 8016ED1C 0016BC7C  7F E3 FB 78 */	mr r3, r31
/* 8016ED20 0016BC80  38 81 00 08 */	addi r4, r1, 8
/* 8016ED24 0016BC84  B0 01 00 08 */	sth r0, 8(r1)
/* 8016ED28 0016BC88  4B ED D8 7D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016ED2C 0016BC8C  7C 64 1B 78 */	mr r4, r3
/* 8016ED30 0016BC90  38 61 00 0C */	addi r3, r1, 0xc
/* 8016ED34 0016BC94  4B F4 0F 5D */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016ED38 0016BC98  80 A3 00 04 */	lwz r5, 4(r3)
/* 8016ED3C 0016BC9C  28 05 00 00 */	cmplwi r5, 0
/* 8016ED40 0016BCA0  41 82 00 C0 */	beq lbl_8016EE00
/* 8016ED44 0016BCA4  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 8016ED48 0016BCA8  7F C3 F3 78 */	mr r3, r30
/* 8016ED4C 0016BCAC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8016ED50 0016BCB0  7F E4 FB 78 */	mr r4, r31
/* 8016ED54 0016BCB4  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 8016ED58 0016BCB8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8016ED5C 0016BCBC  EC 82 00 28 */	fsubs f4, f2, f0
/* 8016ED60 0016BCC0  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 8016ED64 0016BCC4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016ED68 0016BCC8  EC 63 08 28 */	fsubs f3, f3, f1
/* 8016ED6C 0016BCCC  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016ED70 0016BCD0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8016ED74 0016BCD4  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8016ED78 0016BCD8  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8016ED7C 0016BCDC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8016ED80 0016BCE0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8016ED84 0016BCE4  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8016ED88 0016BCE8  7D 89 03 A6 */	mtctr r12
/* 8016ED8C 0016BCEC  4E 80 04 21 */	bctrl
/* 8016ED90 0016BCF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016ED94 0016BCF4  41 82 00 6C */	beq lbl_8016EE00
/* 8016ED98 0016BCF8  38 61 00 20 */	addi r3, r1, 0x20
/* 8016ED9C 0016BCFC  48 1A 59 5D */	bl CanBeNormalized__9CVector3fCFv
/* 8016EDA0 0016BD00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016EDA4 0016BD04  41 82 00 5C */	beq lbl_8016EE00
/* 8016EDA8 0016BD08  38 61 00 14 */	addi r3, r1, 0x14
/* 8016EDAC 0016BD0C  38 81 00 20 */	addi r4, r1, 0x20
/* 8016EDB0 0016BD10  48 1A 5A A1 */	bl AsNormalized__9CVector3fCFv
/* 8016EDB4 0016BD14  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016EDB8 0016BD18  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 8016EDBC 0016BD1C  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8016EDC0 0016BD20  38 81 00 2C */	addi r4, r1, 0x2c
/* 8016EDC4 0016BD24  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8016EDC8 0016BD28  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8016EDCC 0016BD2C  C0 83 00 08 */	lfs f4, 8(r3)
/* 8016EDD0 0016BD30  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8016EDD4 0016BD34  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016EDD8 0016BD38  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 8016EDDC 0016BD3C  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8016EDE0 0016BD40  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 8016EDE4 0016BD44  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 8016EDE8 0016BD48  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8016EDEC 0016BD4C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8016EDF0 0016BD50  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8016EDF4 0016BD54  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8016EDF8 0016BD58  38 63 00 04 */	addi r3, r3, 4
/* 8016EDFC 0016BD5C  4B FC 29 1D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8016EE00:
/* 8016EE00 0016BD60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8016EE04 0016BD64  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8016EE08 0016BD68  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8016EE0C 0016BD6C  7C 08 03 A6 */	mtlr r0
/* 8016EE10 0016BD70  38 21 00 50 */	addi r1, r1, 0x50
/* 8016EE14 0016BD74  4E 80 00 20 */	blr

.global PathFind__8CMetroidFR13CStateManager9EStateMsgf
PathFind__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016EE18 0016BD78  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8016EE1C 0016BD7C  7C 08 02 A6 */	mflr r0
/* 8016EE20 0016BD80  90 01 00 94 */	stw r0, 0x94(r1)
/* 8016EE24 0016BD84  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8016EE28 0016BD88  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8016EE2C 0016BD8C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8016EE30 0016BD90  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8016EE34 0016BD94  93 A1 00 74 */	stw r29, 0x74(r1)
/* 8016EE38 0016BD98  7C BF 2B 78 */	mr r31, r5
/* 8016EE3C 0016BD9C  FF E0 08 90 */	fmr f31, f1
/* 8016EE40 0016BDA0  2C 1F 00 01 */	cmpwi r31, 1
/* 8016EE44 0016BDA4  7C 7D 1B 78 */	mr r29, r3
/* 8016EE48 0016BDA8  7C 9E 23 78 */	mr r30, r4
/* 8016EE4C 0016BDAC  41 82 00 5C */	beq lbl_8016EEA8
/* 8016EE50 0016BDB0  40 80 00 10 */	bge lbl_8016EE60
/* 8016EE54 0016BDB4  2C 1F 00 00 */	cmpwi r31, 0
/* 8016EE58 0016BDB8  40 80 00 14 */	bge lbl_8016EE6C
/* 8016EE5C 0016BDBC  48 00 01 F0 */	b lbl_8016F04C
lbl_8016EE60:
/* 8016EE60 0016BDC0  2C 1F 00 03 */	cmpwi r31, 3
/* 8016EE64 0016BDC4  40 80 01 E8 */	bge lbl_8016F04C
/* 8016EE68 0016BDC8  48 00 01 D8 */	b lbl_8016F040
lbl_8016EE6C:
/* 8016EE6C 0016BDCC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8016EE70 0016BDD0  38 80 00 02 */	li r4, 2
/* 8016EE74 0016BDD4  4B FC BB 65 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8016EE78 0016BDD8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8016EE7C 0016BDDC  38 00 00 01 */	li r0, 1
/* 8016EE80 0016BDE0  C0 22 A0 98 */	lfs f1, lbl_805ABDB8@sda21(r2)
/* 8016EE84 0016BDE4  90 03 00 34 */	stw r0, 0x34(r3)
/* 8016EE88 0016BDE8  FC 40 08 90 */	fmr f2, f1
/* 8016EE8C 0016BDEC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8016EE90 0016BDF0  38 63 00 04 */	addi r3, r3, 4
/* 8016EE94 0016BDF4  4B FC 29 55 */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 8016EE98 0016BDF8  7F A3 EB 78 */	mr r3, r29
/* 8016EE9C 0016BDFC  7F C4 F3 78 */	mr r4, r30
/* 8016EEA0 0016BE00  4B FF EB 7D */	bl sub_8016da1c
/* 8016EEA4 0016BE04  48 00 01 A8 */	b lbl_8016F04C
lbl_8016EEA8:
/* 8016EEA8 0016BE08  81 83 00 00 */	lwz r12, 0(r3)
/* 8016EEAC 0016BE0C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8016EEB0 0016BE10  7D 89 03 A6 */	mtctr r12
/* 8016EEB4 0016BE14  4E 80 04 21 */	bctrl
/* 8016EEB8 0016BE18  28 03 00 00 */	cmplwi r3, 0
/* 8016EEBC 0016BE1C  41 82 00 64 */	beq lbl_8016EF20
/* 8016EEC0 0016BE20  7F A3 EB 78 */	mr r3, r29
/* 8016EEC4 0016BE24  7F C4 F3 78 */	mr r4, r30
/* 8016EEC8 0016BE28  81 9D 00 00 */	lwz r12, 0(r29)
/* 8016EECC 0016BE2C  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016EED0 0016BE30  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8016EED4 0016BE34  7D 89 03 A6 */	mtctr r12
/* 8016EED8 0016BE38  4E 80 04 21 */	bctrl
/* 8016EEDC 0016BE3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016EEE0 0016BE40  40 82 00 40 */	bne lbl_8016EF20
/* 8016EEE4 0016BE44  7F A3 EB 78 */	mr r3, r29
/* 8016EEE8 0016BE48  7F C4 F3 78 */	mr r4, r30
/* 8016EEEC 0016BE4C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8016EEF0 0016BE50  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016EEF4 0016BE54  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8016EEF8 0016BE58  7D 89 03 A6 */	mtctr r12
/* 8016EEFC 0016BE5C  4E 80 04 21 */	bctrl
/* 8016EF00 0016BE60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016EF04 0016BE64  40 82 00 1C */	bne lbl_8016EF20
/* 8016EF08 0016BE68  FC 20 F8 90 */	fmr f1, f31
/* 8016EF0C 0016BE6C  7F A3 EB 78 */	mr r3, r29
/* 8016EF10 0016BE70  7F C4 F3 78 */	mr r4, r30
/* 8016EF14 0016BE74  7F E5 FB 78 */	mr r5, r31
/* 8016EF18 0016BE78  48 08 77 B5 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8016EF1C 0016BE7C  48 00 01 10 */	b lbl_8016F02C
lbl_8016EF20:
/* 8016EF20 0016BE80  A0 DD 00 08 */	lhz r6, 8(r29)
/* 8016EF24 0016BE84  7F C3 F3 78 */	mr r3, r30
/* 8016EF28 0016BE88  38 81 00 18 */	addi r4, r1, 0x18
/* 8016EF2C 0016BE8C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8016EF30 0016BE90  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 8016EF34 0016BE94  A0 1D 06 98 */	lhz r0, 0x698(r29)
/* 8016EF38 0016BE98  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 8016EF3C 0016BE9C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8016EF40 0016BEA0  48 0C B2 41 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 8016EF44 0016BEA4  28 03 00 00 */	cmplwi r3, 0
/* 8016EF48 0016BEA8  41 82 00 20 */	beq lbl_8016EF68
/* 8016EF4C 0016BEAC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8016EF50 0016BEB0  D0 1D 07 A4 */	stfs f0, 0x7a4(r29)
/* 8016EF54 0016BEB4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8016EF58 0016BEB8  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 8016EF5C 0016BEBC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8016EF60 0016BEC0  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 8016EF64 0016BEC4  48 00 00 B8 */	b lbl_8016F01C
lbl_8016EF68:
/* 8016EF68 0016BEC8  7F A4 EB 78 */	mr r4, r29
/* 8016EF6C 0016BECC  7F C5 F3 78 */	mr r5, r30
/* 8016EF70 0016BED0  38 61 00 28 */	addi r3, r1, 0x28
/* 8016EF74 0016BED4  4B FF F0 49 */	bl sub_8016dfbc
/* 8016EF78 0016BED8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8016EF7C 0016BEDC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016EF80 0016BEE0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8016EF84 0016BEE4  38 E3 66 A0 */	addi r7, r3, sZeroVector__9CVector3f@l
/* 8016EF88 0016BEE8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8016EF8C 0016BEEC  39 00 FF FF */	li r8, -1
/* 8016EF90 0016BEF0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8016EF94 0016BEF4  38 00 00 00 */	li r0, 0
/* 8016EF98 0016BEF8  C0 47 00 00 */	lfs f2, 0(r7)
/* 8016EF9C 0016BEFC  7F A4 EB 78 */	mr r4, r29
/* 8016EFA0 0016BF00  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8016EFA4 0016BF04  7F C5 F3 78 */	mr r5, r30
/* 8016EFA8 0016BF08  C0 27 00 04 */	lfs f1, 4(r7)
/* 8016EFAC 0016BF0C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016EFB0 0016BF10  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8016EFB4 0016BF14  38 C1 00 40 */	addi r6, r1, 0x40
/* 8016EFB8 0016BF18  C0 07 00 08 */	lfs f0, 8(r7)
/* 8016EFBC 0016BF1C  38 E1 00 34 */	addi r7, r1, 0x34
/* 8016EFC0 0016BF20  A1 3D 00 08 */	lhz r9, 8(r29)
/* 8016EFC4 0016BF24  B1 21 00 40 */	sth r9, 0x40(r1)
/* 8016EFC8 0016BF28  91 01 00 44 */	stw r8, 0x44(r1)
/* 8016EFCC 0016BF2C  91 01 00 48 */	stw r8, 0x48(r1)
/* 8016EFD0 0016BF30  91 01 00 4C */	stw r8, 0x4c(r1)
/* 8016EFD4 0016BF34  91 01 00 50 */	stw r8, 0x50(r1)
/* 8016EFD8 0016BF38  91 01 00 54 */	stw r8, 0x54(r1)
/* 8016EFDC 0016BF3C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8016EFE0 0016BF40  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8016EFE4 0016BF44  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8016EFE8 0016BF48  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8016EFEC 0016BF4C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8016EFF0 0016BF50  B1 21 00 08 */	sth r9, 8(r1)
/* 8016EFF4 0016BF54  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8016EFF8 0016BF58  B1 21 00 0C */	sth r9, 0xc(r1)
/* 8016EFFC 0016BF5C  7D 89 03 A6 */	mtctr r12
/* 8016F000 0016BF60  4E 80 04 21 */	bctrl
/* 8016F004 0016BF64  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8016F008 0016BF68  D0 1D 07 A4 */	stfs f0, 0x7a4(r29)
/* 8016F00C 0016BF6C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8016F010 0016BF70  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 8016F014 0016BF74  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8016F018 0016BF78  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
lbl_8016F01C:
/* 8016F01C 0016BF7C  7F A3 EB 78 */	mr r3, r29
/* 8016F020 0016BF80  7F C4 F3 78 */	mr r4, r30
/* 8016F024 0016BF84  38 BD 07 A4 */	addi r5, r29, 0x7a4
/* 8016F028 0016BF88  4B FF E5 55 */	bl sub_8016d57c
lbl_8016F02C:
/* 8016F02C 0016BF8C  C0 22 A0 F0 */	lfs f1, lbl_805ABE10@sda21(r2)
/* 8016F030 0016BF90  7F A3 EB 78 */	mr r3, r29
/* 8016F034 0016BF94  7F C4 F3 78 */	mr r4, r30
/* 8016F038 0016BF98  4B FF E8 3D */	bl sub_8016d874
/* 8016F03C 0016BF9C  48 00 00 10 */	b lbl_8016F04C
lbl_8016F040:
/* 8016F040 0016BFA0  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8016F044 0016BFA4  38 00 00 00 */	li r0, 0
/* 8016F048 0016BFA8  90 03 00 34 */	stw r0, 0x34(r3)
lbl_8016F04C:
/* 8016F04C 0016BFAC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8016F050 0016BFB0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8016F054 0016BFB4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8016F058 0016BFB8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8016F05C 0016BFBC  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8016F060 0016BFC0  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8016F064 0016BFC4  7C 08 03 A6 */	mtlr r0
/* 8016F068 0016BFC8  38 21 00 90 */	addi r1, r1, 0x90
/* 8016F06C 0016BFCC  4E 80 00 20 */	blr

.global SelectTarget__8CMetroidFR13CStateManager9EStateMsgf
SelectTarget__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016F070 0016BFD0  94 21 F7 10 */	stwu r1, -0x8f0(r1)
/* 8016F074 0016BFD4  7C 08 02 A6 */	mflr r0
/* 8016F078 0016BFD8  90 01 08 F4 */	stw r0, 0x8f4(r1)
/* 8016F07C 0016BFDC  DB E1 08 E0 */	stfd f31, 0x8e0(r1)
/* 8016F080 0016BFE0  F3 E1 08 E8 */	psq_st f31, -1816(r1), 0, qr0
/* 8016F084 0016BFE4  BF 41 08 C8 */	stmw r26, 0x8c8(r1)
/* 8016F088 0016BFE8  2C 05 00 01 */	cmpwi r5, 1
/* 8016F08C 0016BFEC  7C 7E 1B 78 */	mr r30, r3
/* 8016F090 0016BFF0  7C 9F 23 78 */	mr r31, r4
/* 8016F094 0016BFF4  41 82 02 C8 */	beq lbl_8016F35C
/* 8016F098 0016BFF8  40 80 04 58 */	bge lbl_8016F4F0
/* 8016F09C 0016BFFC  2C 05 00 00 */	cmpwi r5, 0
/* 8016F0A0 0016C000  40 80 00 0C */	bge lbl_8016F0AC
/* 8016F0A4 0016C004  48 00 04 4C */	b lbl_8016F4F0
/* 8016F0A8 0016C008  48 00 04 48 */	b lbl_8016F4F0
lbl_8016F0AC:
/* 8016F0AC 0016C00C  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 8016F0B0 0016C010  38 60 00 01 */	li r3, 1
/* 8016F0B4 0016C014  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8016F0B8 0016C018  41 82 00 08 */	beq lbl_8016F0C0
/* 8016F0BC 0016C01C  38 60 00 03 */	li r3, 3
lbl_8016F0C0:
/* 8016F0C0 0016C020  90 7E 05 68 */	stw r3, 0x568(r30)
/* 8016F0C4 0016C024  A0 7E 07 B0 */	lhz r3, 0x7b0(r30)
/* 8016F0C8 0016C028  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016F0CC 0016C02C  7C 03 00 40 */	cmplw r3, r0
/* 8016F0D0 0016C030  40 82 02 40 */	bne lbl_8016F310
/* 8016F0D4 0016C034  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8016F0D8 0016C038  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8016F0DC 0016C03C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8016F0E0 0016C040  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 8016F0E4 0016C044  EC 81 00 28 */	fsubs f4, f1, f0
/* 8016F0E8 0016C048  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016F0EC 0016C04C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8016F0F0 0016C050  EC 63 00 28 */	fsubs f3, f3, f0
/* 8016F0F4 0016C054  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8016F0F8 0016C058  EC 04 01 32 */	fmuls f0, f4, f4
/* 8016F0FC 0016C05C  A0 03 00 08 */	lhz r0, 8(r3)
/* 8016F100 0016C060  EC 22 08 28 */	fsubs f1, f2, f1
/* 8016F104 0016C064  B0 1E 07 B0 */	sth r0, 0x7b0(r30)
/* 8016F108 0016C068  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 8016F10C 0016C06C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8016F110 0016C070  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 8016F114 0016C074  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8016F118 0016C078  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8016F11C 0016C07C  FF E0 08 90 */	fmr f31, f1
/* 8016F120 0016C080  40 82 01 F0 */	bne lbl_8016F310
/* 8016F124 0016C084  48 1A 63 DD */	bl SqrtF__5CMathFf
/* 8016F128 0016C088  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8016F12C 0016C08C  38 61 00 30 */	addi r3, r1, 0x30
/* 8016F130 0016C090  38 81 00 2C */	addi r4, r1, 0x2c
/* 8016F134 0016C094  C0 1E 03 BC */	lfs f0, 0x3bc(r30)
/* 8016F138 0016C098  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8016F13C 0016C09C  4B EE 05 F5 */	bl "Max<f>__5CMathFRCfRCf"
/* 8016F140 0016C0A0  C0 E3 00 00 */	lfs f7, 0(r3)
/* 8016F144 0016C0A4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8016F148 0016C0A8  C0 DE 00 60 */	lfs f6, 0x60(r30)
/* 8016F14C 0016C0AC  38 81 00 48 */	addi r4, r1, 0x48
/* 8016F150 0016C0B0  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 8016F154 0016C0B4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8016F158 0016C0B8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8016F15C 0016C0BC  EC 06 38 2A */	fadds f0, f6, f7
/* 8016F160 0016C0C0  EC 65 38 2A */	fadds f3, f5, f7
/* 8016F164 0016C0C4  EC 81 38 2A */	fadds f4, f1, f7
/* 8016F168 0016C0C8  EC 41 38 28 */	fsubs f2, f1, f7
/* 8016F16C 0016C0CC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8016F170 0016C0D0  EC 25 38 28 */	fsubs f1, f5, f7
/* 8016F174 0016C0D4  EC 06 38 28 */	fsubs f0, f6, f7
/* 8016F178 0016C0D8  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8016F17C 0016C0DC  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8016F180 0016C0E0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8016F184 0016C0E4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8016F188 0016C0E8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8016F18C 0016C0EC  48 1C 93 7D */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8016F190 0016C0F0  80 AD 8D C8 */	lwz r5, lbl_805A7988@sda21(r13)
/* 8016F194 0016C0F4  38 60 00 00 */	li r3, 0
/* 8016F198 0016C0F8  38 80 00 01 */	li r4, 1
/* 8016F19C 0016C0FC  48 21 AD 59 */	bl __shl2i
/* 8016F1A0 0016C100  38 00 00 00 */	li r0, 0
/* 8016F1A4 0016C104  39 00 00 01 */	li r8, 1
/* 8016F1A8 0016C108  90 81 00 94 */	stw r4, 0x94(r1)
/* 8016F1AC 0016C10C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8016F1B0 0016C110  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8016F1B4 0016C114  38 C1 00 90 */	addi r6, r1, 0x90
/* 8016F1B8 0016C118  90 61 00 90 */	stw r3, 0x90(r1)
/* 8016F1BC 0016C11C  7F E3 FB 78 */	mr r3, r31
/* 8016F1C0 0016C120  38 E0 00 00 */	li r7, 0
/* 8016F1C4 0016C124  91 01 00 88 */	stw r8, 0x88(r1)
/* 8016F1C8 0016C128  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8016F1CC 0016C12C  90 01 00 98 */	stw r0, 0x98(r1)
/* 8016F1D0 0016C130  91 01 00 A0 */	stw r8, 0xa0(r1)
/* 8016F1D4 0016C134  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8016F1D8 0016C138  4B ED D5 49 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 8016F1DC 0016C13C  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 8016F1E0 0016C140  2C 00 00 00 */	cmpwi r0, 0
/* 8016F1E4 0016C144  41 82 00 D8 */	beq lbl_8016F2BC
/* 8016F1E8 0016C148  3B A1 00 C4 */	addi r29, r1, 0xc4
/* 8016F1EC 0016C14C  3B 80 00 00 */	li r28, 0
/* 8016F1F0 0016C150  7F BB EB 78 */	mr r27, r29
/* 8016F1F4 0016C154  48 00 00 8C */	b lbl_8016F280
lbl_8016F1F8:
/* 8016F1F8 0016C158  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8016F1FC 0016C15C  7F E3 FB 78 */	mr r3, r31
/* 8016F200 0016C160  38 81 00 20 */	addi r4, r1, 0x20
/* 8016F204 0016C164  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8016F208 0016C168  4B ED D3 6D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016F20C 0016C16C  7C 64 1B 78 */	mr r4, r3
/* 8016F210 0016C170  38 61 00 28 */	addi r3, r1, 0x28
/* 8016F214 0016C174  4B F3 61 BD */	bl sub_800a53d0
/* 8016F218 0016C178  4B F3 61 8D */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 8016F21C 0016C17C  7C 7A 1B 79 */	or. r26, r3, r3
/* 8016F220 0016C180  41 82 00 5C */	beq lbl_8016F27C
/* 8016F224 0016C184  7F C3 F3 78 */	mr r3, r30
/* 8016F228 0016C188  7F 44 D3 78 */	mr r4, r26
/* 8016F22C 0016C18C  7F E5 FB 78 */	mr r5, r31
/* 8016F230 0016C190  4B FF EF 49 */	bl sub_8016e178
/* 8016F234 0016C194  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F238 0016C198  41 82 00 44 */	beq lbl_8016F27C
/* 8016F23C 0016C19C  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 8016F240 0016C1A0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8016F244 0016C1A4  C0 7A 00 40 */	lfs f3, 0x40(r26)
/* 8016F248 0016C1A8  EC 81 00 28 */	fsubs f4, f1, f0
/* 8016F24C 0016C1AC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016F250 0016C1B0  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 8016F254 0016C1B4  EC 63 00 28 */	fsubs f3, f3, f0
/* 8016F258 0016C1B8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8016F25C 0016C1BC  EC 04 01 32 */	fmuls f0, f4, f4
/* 8016F260 0016C1C0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8016F264 0016C1C4  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 8016F268 0016C1C8  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 8016F26C 0016C1CC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8016F270 0016C1D0  40 80 00 0C */	bge lbl_8016F27C
/* 8016F274 0016C1D4  7F 5C D3 78 */	mr r28, r26
/* 8016F278 0016C1D8  FF E0 00 90 */	fmr f31, f0
lbl_8016F27C:
/* 8016F27C 0016C1DC  3B 7B 00 02 */	addi r27, r27, 2
lbl_8016F280:
/* 8016F280 0016C1E0  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 8016F284 0016C1E4  54 00 08 3C */	slwi r0, r0, 1
/* 8016F288 0016C1E8  7C 1D 02 14 */	add r0, r29, r0
/* 8016F28C 0016C1EC  7C 1B 00 40 */	cmplw r27, r0
/* 8016F290 0016C1F0  40 82 FF 68 */	bne lbl_8016F1F8
/* 8016F294 0016C1F4  28 1C 00 00 */	cmplwi r28, 0
/* 8016F298 0016C1F8  41 82 00 24 */	beq lbl_8016F2BC
/* 8016F29C 0016C1FC  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8016F2A0 0016C200  7F 83 E3 78 */	mr r3, r28
/* 8016F2A4 0016C204  38 81 00 1C */	addi r4, r1, 0x1c
/* 8016F2A8 0016C208  B0 1E 07 B0 */	sth r0, 0x7b0(r30)
/* 8016F2AC 0016C20C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016F2B0 0016C210  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8016F2B4 0016C214  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8016F2B8 0016C218  4B FB A5 89 */	bl SetAttackTarget__12CSpacePirateF9TUniqueId
lbl_8016F2BC:
/* 8016F2BC 0016C21C  80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8016F2C0 0016C220  38 60 00 00 */	li r3, 0
/* 8016F2C4 0016C224  2C 05 00 00 */	cmpwi r5, 0
/* 8016F2C8 0016C228  40 81 00 40 */	ble lbl_8016F308
/* 8016F2CC 0016C22C  2C 05 00 08 */	cmpwi r5, 8
/* 8016F2D0 0016C230  38 85 FF F8 */	addi r4, r5, -8
/* 8016F2D4 0016C234  40 81 00 20 */	ble lbl_8016F2F4
/* 8016F2D8 0016C238  38 04 00 07 */	addi r0, r4, 7
/* 8016F2DC 0016C23C  54 00 E8 FE */	srwi r0, r0, 3
/* 8016F2E0 0016C240  7C 09 03 A6 */	mtctr r0
/* 8016F2E4 0016C244  2C 04 00 00 */	cmpwi r4, 0
/* 8016F2E8 0016C248  40 81 00 0C */	ble lbl_8016F2F4
lbl_8016F2EC:
/* 8016F2EC 0016C24C  38 63 00 08 */	addi r3, r3, 8
/* 8016F2F0 0016C250  42 00 FF FC */	bdnz lbl_8016F2EC
lbl_8016F2F4:
/* 8016F2F4 0016C254  7C 03 28 50 */	subf r0, r3, r5
/* 8016F2F8 0016C258  7C 09 03 A6 */	mtctr r0
/* 8016F2FC 0016C25C  7C 03 28 00 */	cmpw r3, r5
/* 8016F300 0016C260  40 80 00 08 */	bge lbl_8016F308
lbl_8016F304:
/* 8016F304 0016C264  42 00 00 00 */	bdnz lbl_8016F304
lbl_8016F308:
/* 8016F308 0016C268  38 00 00 00 */	li r0, 0
/* 8016F30C 0016C26C  90 01 00 C0 */	stw r0, 0xc0(r1)
lbl_8016F310:
/* 8016F310 0016C270  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 8016F314 0016C274  7F E3 FB 78 */	mr r3, r31
/* 8016F318 0016C278  38 81 00 14 */	addi r4, r1, 0x14
/* 8016F31C 0016C27C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8016F320 0016C280  4B ED D2 55 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016F324 0016C284  7C 64 1B 78 */	mr r4, r3
/* 8016F328 0016C288  38 61 00 24 */	addi r3, r1, 0x24
/* 8016F32C 0016C28C  4B F3 60 A5 */	bl sub_800a53d0
/* 8016F330 0016C290  4B F3 60 75 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 8016F334 0016C294  7C 64 1B 79 */	or. r4, r3, r3
/* 8016F338 0016C298  41 82 01 B8 */	beq lbl_8016F4F0
/* 8016F33C 0016C29C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016F340 0016C2A0  7F E3 FB 78 */	mr r3, r31
/* 8016F344 0016C2A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8016F348 0016C2A8  38 C0 00 15 */	li r6, 0x15
/* 8016F34C 0016C2AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016F350 0016C2B0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8016F354 0016C2B4  4B ED 4B 7D */	bl SendScriptMsg__13CStateManagerFP7CEntity9TEditorId20EScriptObjectMessage
/* 8016F358 0016C2B8  48 00 01 98 */	b lbl_8016F4F0
lbl_8016F35C:
/* 8016F35C 0016C2BC  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 8016F360 0016C2C0  2C 00 00 02 */	cmpwi r0, 2
/* 8016F364 0016C2C4  41 82 01 00 */	beq lbl_8016F464
/* 8016F368 0016C2C8  40 80 01 88 */	bge lbl_8016F4F0
/* 8016F36C 0016C2CC  2C 00 00 01 */	cmpwi r0, 1
/* 8016F370 0016C2D0  40 80 00 08 */	bge lbl_8016F378
/* 8016F374 0016C2D4  48 00 01 7C */	b lbl_8016F4F0
lbl_8016F378:
/* 8016F378 0016C2D8  81 5E 04 50 */	lwz r10, 0x450(r30)
/* 8016F37C 0016C2DC  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 8016F380 0016C2E0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8016F384 0016C2E4  40 82 00 10 */	bne lbl_8016F394
/* 8016F388 0016C2E8  38 00 00 02 */	li r0, 2
/* 8016F38C 0016C2EC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8016F390 0016C2F0  48 00 01 60 */	b lbl_8016F4F0
lbl_8016F394:
/* 8016F394 0016C2F4  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 8016F398 0016C2F8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016F39C 0016C2FC  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 8016F3A0 0016C300  80 81 00 70 */	lwz r4, 0x70(r1)
/* 8016F3A4 0016C304  38 60 00 00 */	li r3, 0
/* 8016F3A8 0016C308  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 8016F3AC 0016C30C  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 8016F3B0 0016C310  C0 45 00 00 */	lfs f2, 0(r5)
/* 8016F3B4 0016C314  C0 25 00 04 */	lfs f1, 4(r5)
/* 8016F3B8 0016C318  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 8016F3BC 0016C31C  C0 05 00 08 */	lfs f0, 8(r5)
/* 8016F3C0 0016C320  7C 80 23 78 */	mr r0, r4
/* 8016F3C4 0016C324  39 00 00 0E */	li r8, 0xe
/* 8016F3C8 0016C328  38 C0 00 03 */	li r6, 3
/* 8016F3CC 0016C32C  38 A0 FF FF */	li r5, -1
/* 8016F3D0 0016C330  3B EA 00 04 */	addi r31, r10, 4
/* 8016F3D4 0016C334  91 21 00 54 */	stw r9, 0x54(r1)
/* 8016F3D8 0016C338  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 8016F3DC 0016C33C  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 8016F3E0 0016C340  7F E3 FB 78 */	mr r3, r31
/* 8016F3E4 0016C344  90 81 00 70 */	stw r4, 0x70(r1)
/* 8016F3E8 0016C348  38 80 00 0E */	li r4, 0xe
/* 8016F3EC 0016C34C  91 01 00 58 */	stw r8, 0x58(r1)
/* 8016F3F0 0016C350  90 E1 00 54 */	stw r7, 0x54(r1)
/* 8016F3F4 0016C354  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 8016F3F8 0016C358  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8016F3FC 0016C35C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8016F400 0016C360  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8016F404 0016C364  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 8016F408 0016C368  90 01 00 70 */	stw r0, 0x70(r1)
/* 8016F40C 0016C36C  4B FC 20 2D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8016F410 0016C370  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8016F414 0016C374  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8016F418 0016C378  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8016F41C 0016C37C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8016F420 0016C380  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8016F424 0016C384  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8016F428 0016C388  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 8016F42C 0016C38C  80 61 00 60 */	lwz r3, 0x60(r1)
/* 8016F430 0016C390  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8016F434 0016C394  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 8016F438 0016C398  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8016F43C 0016C39C  80 61 00 68 */	lwz r3, 0x68(r1)
/* 8016F440 0016C3A0  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8016F444 0016C3A4  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 8016F448 0016C3A8  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8016F44C 0016C3AC  80 61 00 70 */	lwz r3, 0x70(r1)
/* 8016F450 0016C3B0  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8016F454 0016C3B4  90 81 00 54 */	stw r4, 0x54(r1)
/* 8016F458 0016C3B8  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8016F45C 0016C3BC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8016F460 0016C3C0  48 00 00 90 */	b lbl_8016F4F0
lbl_8016F464:
/* 8016F464 0016C3C4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8016F468 0016C3C8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8016F46C 0016C3CC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8016F470 0016C3D0  41 82 00 10 */	beq lbl_8016F480
/* 8016F474 0016C3D4  38 00 00 03 */	li r0, 3
/* 8016F478 0016C3D8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8016F47C 0016C3DC  48 00 00 74 */	b lbl_8016F4F0
lbl_8016F480:
/* 8016F480 0016C3E0  A0 7E 07 B0 */	lhz r3, 0x7b0(r30)
/* 8016F484 0016C3E4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016F488 0016C3E8  7C 03 00 40 */	cmplw r3, r0
/* 8016F48C 0016C3EC  41 82 00 64 */	beq lbl_8016F4F0
/* 8016F490 0016C3F0  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 8016F494 0016C3F4  7F E3 FB 78 */	mr r3, r31
/* 8016F498 0016C3F8  38 81 00 08 */	addi r4, r1, 8
/* 8016F49C 0016C3FC  B0 01 00 08 */	sth r0, 8(r1)
/* 8016F4A0 0016C400  4B ED D1 05 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016F4A4 0016C404  7C 64 1B 78 */	mr r4, r3
/* 8016F4A8 0016C408  38 61 00 34 */	addi r3, r1, 0x34
/* 8016F4AC 0016C40C  4B F4 07 E5 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8016F4B0 0016C410  80 63 00 04 */	lwz r3, 4(r3)
/* 8016F4B4 0016C414  28 03 00 00 */	cmplwi r3, 0
/* 8016F4B8 0016C418  41 82 00 38 */	beq lbl_8016F4F0
/* 8016F4BC 0016C41C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8016F4C0 0016C420  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016F4C4 0016C424  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8016F4C8 0016C428  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8016F4CC 0016C42C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016F4D0 0016C430  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8016F4D4 0016C434  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8016F4D8 0016C438  EC 64 18 28 */	fsubs f3, f4, f3
/* 8016F4DC 0016C43C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8016F4E0 0016C440  EC 22 08 28 */	fsubs f1, f2, f1
/* 8016F4E4 0016C444  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8016F4E8 0016C448  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8016F4EC 0016C44C  D0 23 00 24 */	stfs f1, 0x24(r3)
lbl_8016F4F0:
/* 8016F4F0 0016C450  E3 E1 08 E8 */	psq_l f31, -1816(r1), 0, qr0
/* 8016F4F4 0016C454  CB E1 08 E0 */	lfd f31, 0x8e0(r1)
/* 8016F4F8 0016C458  BB 41 08 C8 */	lmw r26, 0x8c8(r1)
/* 8016F4FC 0016C45C  80 01 08 F4 */	lwz r0, 0x8f4(r1)
/* 8016F500 0016C460  7C 08 03 A6 */	mtlr r0
/* 8016F504 0016C464  38 21 08 F0 */	addi r1, r1, 0x8f0
/* 8016F508 0016C468  4E 80 00 20 */	blr

.global Generate__8CMetroidFR13CStateManager9EStateMsgf
Generate__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016F50C 0016C46C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8016F510 0016C470  7C 08 02 A6 */	mflr r0
/* 8016F514 0016C474  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8016F518 0016C478  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8016F51C 0016C47C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8016F520 0016C480  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8016F524 0016C484  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 8016F528 0016C488  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8016F52C 0016C48C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, qr0
/* 8016F530 0016C490  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8016F534 0016C494  F3 81 00 68 */	psq_st f28, 104(r1), 0, qr0
/* 8016F538 0016C498  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8016F53C 0016C49C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8016F540 0016C4A0  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8016F544 0016C4A4  FF C0 08 90 */	fmr f30, f1
/* 8016F548 0016C4A8  2C 05 00 01 */	cmpwi r5, 1
/* 8016F54C 0016C4AC  7C 7F 1B 78 */	mr r31, r3
/* 8016F550 0016C4B0  7C 9D 23 78 */	mr r29, r4
/* 8016F554 0016C4B4  41 82 00 9C */	beq lbl_8016F5F0
/* 8016F558 0016C4B8  40 80 00 10 */	bge lbl_8016F568
/* 8016F55C 0016C4BC  2C 05 00 00 */	cmpwi r5, 0
/* 8016F560 0016C4C0  40 80 00 14 */	bge lbl_8016F574
/* 8016F564 0016C4C4  48 00 04 94 */	b lbl_8016F9F8
lbl_8016F568:
/* 8016F568 0016C4C8  2C 05 00 03 */	cmpwi r5, 3
/* 8016F56C 0016C4CC  40 80 04 8C */	bge lbl_8016F9F8
/* 8016F570 0016C4D0  48 00 04 2C */	b lbl_8016F99C
lbl_8016F574:
/* 8016F574 0016C4D4  4B FF C5 69 */	bl sub_8016badc
/* 8016F578 0016C4D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F57C 0016C4DC  41 82 00 14 */	beq lbl_8016F590
/* 8016F580 0016C4E0  7F E3 FB 78 */	mr r3, r31
/* 8016F584 0016C4E4  7F A4 EB 78 */	mr r4, r29
/* 8016F588 0016C4E8  4B FF BE 7D */	bl sub_8016b404
/* 8016F58C 0016C4EC  48 00 00 30 */	b lbl_8016F5BC
lbl_8016F590:
/* 8016F590 0016C4F0  C0 3F 07 F8 */	lfs f1, 0x7f8(r31)
/* 8016F594 0016C4F4  C0 1F 06 50 */	lfs f0, 0x650(r31)
/* 8016F598 0016C4F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016F59C 0016C4FC  4C 41 13 82 */	cror 2, 1, 2
/* 8016F5A0 0016C500  40 82 00 1C */	bne lbl_8016F5BC
/* 8016F5A4 0016C504  7F E3 FB 78 */	mr r3, r31
/* 8016F5A8 0016C508  7F A4 EB 78 */	mr r4, r29
/* 8016F5AC 0016C50C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8016F5B0 0016C510  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 8016F5B4 0016C514  7D 89 03 A6 */	mtctr r12
/* 8016F5B8 0016C518  4E 80 04 21 */	bctrl
lbl_8016F5BC:
/* 8016F5BC 0016C51C  38 60 00 01 */	li r3, 1
/* 8016F5C0 0016C520  90 7F 05 68 */	stw r3, 0x568(r31)
/* 8016F5C4 0016C524  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8016F5C8 0016C528  C0 24 00 04 */	lfs f1, 4(r4)
/* 8016F5CC 0016C52C  C0 44 00 08 */	lfs f2, 8(r4)
/* 8016F5D0 0016C530  C0 04 00 00 */	lfs f0, 0(r4)
/* 8016F5D4 0016C534  D0 1F 07 DC */	stfs f0, 0x7dc(r31)
/* 8016F5D8 0016C538  D0 3F 07 E0 */	stfs f1, 0x7e0(r31)
/* 8016F5DC 0016C53C  D0 5F 07 E4 */	stfs f2, 0x7e4(r31)
/* 8016F5E0 0016C540  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 8016F5E4 0016C544  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8016F5E8 0016C548  98 1F 09 BF */	stb r0, 0x9bf(r31)
/* 8016F5EC 0016C54C  48 00 04 0C */	b lbl_8016F9F8
lbl_8016F5F0:
/* 8016F5F0 0016C550  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8016F5F4 0016C554  2C 00 00 02 */	cmpwi r0, 2
/* 8016F5F8 0016C558  41 82 02 10 */	beq lbl_8016F808
/* 8016F5FC 0016C55C  40 80 03 FC */	bge lbl_8016F9F8
/* 8016F600 0016C560  2C 00 00 01 */	cmpwi r0, 1
/* 8016F604 0016C564  40 80 00 08 */	bge lbl_8016F60C
/* 8016F608 0016C568  48 00 03 F0 */	b lbl_8016F9F8
lbl_8016F60C:
/* 8016F60C 0016C56C  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 8016F610 0016C570  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8016F614 0016C574  2C 00 00 0C */	cmpwi r0, 0xc
/* 8016F618 0016C578  40 82 00 34 */	bne lbl_8016F64C
/* 8016F61C 0016C57C  7C A3 2B 78 */	mr r3, r5
/* 8016F620 0016C580  4B FC B2 99 */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 8016F624 0016C584  D0 3F 07 F4 */	stfs f1, 0x7f4(r31)
/* 8016F628 0016C588  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016F62C 0016C58C  C0 3F 07 F4 */	lfs f1, 0x7f4(r31)
/* 8016F630 0016C590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016F634 0016C594  40 81 00 0C */	ble lbl_8016F640
/* 8016F638 0016C598  38 00 00 02 */	li r0, 2
/* 8016F63C 0016C59C  48 00 00 08 */	b lbl_8016F644
lbl_8016F640:
/* 8016F640 0016C5A0  38 00 00 03 */	li r0, 3
lbl_8016F644:
/* 8016F644 0016C5A4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8016F648 0016C5A8  48 00 03 B0 */	b lbl_8016F9F8
lbl_8016F64C:
/* 8016F64C 0016C5AC  81 83 00 00 */	lwz r12, 0(r3)
/* 8016F650 0016C5B0  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016F654 0016C5B4  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 8016F658 0016C5B8  7D 89 03 A6 */	mtctr r12
/* 8016F65C 0016C5BC  4E 80 04 21 */	bctrl
/* 8016F660 0016C5C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F664 0016C5C4  41 82 00 D4 */	beq lbl_8016F738
/* 8016F668 0016C5C8  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 8016F66C 0016C5CC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016F670 0016C5D0  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 8016F674 0016C5D4  39 46 AA 68 */	addi r10, r6, lbl_803DAA68@l
/* 8016F678 0016C5D8  3D 00 80 3E */	lis r8, lbl_803DA9F0@ha
/* 8016F67C 0016C5DC  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8016F680 0016C5E0  38 A0 00 00 */	li r5, 0
/* 8016F684 0016C5E4  C0 23 00 04 */	lfs f1, 4(r3)
/* 8016F688 0016C5E8  50 A4 F8 00 */	rlwimi r4, r5, 0x1f, 0, 0
/* 8016F68C 0016C5EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8016F690 0016C5F0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016F694 0016C5F4  7C 80 23 78 */	mr r0, r4
/* 8016F698 0016C5F8  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8016F69C 0016C5FC  39 20 00 0E */	li r9, 0xe
/* 8016F6A0 0016C600  38 E0 00 02 */	li r7, 2
/* 8016F6A4 0016C604  38 C0 FF FF */	li r6, -1
/* 8016F6A8 0016C608  50 A0 F0 42 */	rlwimi r0, r5, 0x1e, 1, 1
/* 8016F6AC 0016C60C  3B E3 00 04 */	addi r31, r3, 4
/* 8016F6B0 0016C610  91 41 00 30 */	stw r10, 0x30(r1)
/* 8016F6B4 0016C614  39 08 A9 F0 */	addi r8, r8, lbl_803DA9F0@l
/* 8016F6B8 0016C618  7F E3 FB 78 */	mr r3, r31
/* 8016F6BC 0016C61C  38 80 00 0E */	li r4, 0xe
/* 8016F6C0 0016C620  91 21 00 34 */	stw r9, 0x34(r1)
/* 8016F6C4 0016C624  91 01 00 30 */	stw r8, 0x30(r1)
/* 8016F6C8 0016C628  90 E1 00 38 */	stw r7, 0x38(r1)
/* 8016F6CC 0016C62C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8016F6D0 0016C630  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8016F6D4 0016C634  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8016F6D8 0016C638  90 C1 00 48 */	stw r6, 0x48(r1)
/* 8016F6DC 0016C63C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8016F6E0 0016C640  4B FC 1D 59 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8016F6E4 0016C644  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016F6E8 0016C648  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8016F6EC 0016C64C  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8016F6F0 0016C650  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8016F6F4 0016C654  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8016F6F8 0016C658  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8016F6FC 0016C65C  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8016F700 0016C660  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8016F704 0016C664  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8016F708 0016C668  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 8016F70C 0016C66C  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8016F710 0016C670  80 61 00 44 */	lwz r3, 0x44(r1)
/* 8016F714 0016C674  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8016F718 0016C678  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 8016F71C 0016C67C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8016F720 0016C680  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8016F724 0016C684  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8016F728 0016C688  90 81 00 30 */	stw r4, 0x30(r1)
/* 8016F72C 0016C68C  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8016F730 0016C690  90 01 00 30 */	stw r0, 0x30(r1)
/* 8016F734 0016C694  48 00 02 C4 */	b lbl_8016F9F8
lbl_8016F738:
/* 8016F738 0016C698  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 8016F73C 0016C69C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8016F740 0016C6A0  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 8016F744 0016C6A4  39 46 AA 68 */	addi r10, r6, lbl_803DAA68@l
/* 8016F748 0016C6A8  3D 00 80 3E */	lis r8, lbl_803DA9F0@ha
/* 8016F74C 0016C6AC  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8016F750 0016C6B0  38 A0 00 00 */	li r5, 0
/* 8016F754 0016C6B4  C0 23 00 04 */	lfs f1, 4(r3)
/* 8016F758 0016C6B8  50 A4 F8 00 */	rlwimi r4, r5, 0x1f, 0, 0
/* 8016F75C 0016C6BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8016F760 0016C6C0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016F764 0016C6C4  7C 80 23 78 */	mr r0, r4
/* 8016F768 0016C6C8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8016F76C 0016C6CC  39 20 00 0E */	li r9, 0xe
/* 8016F770 0016C6D0  38 E0 00 07 */	li r7, 7
/* 8016F774 0016C6D4  38 C0 FF FF */	li r6, -1
/* 8016F778 0016C6D8  50 A0 F0 42 */	rlwimi r0, r5, 0x1e, 1, 1
/* 8016F77C 0016C6DC  3B E3 00 04 */	addi r31, r3, 4
/* 8016F780 0016C6E0  91 41 00 10 */	stw r10, 0x10(r1)
/* 8016F784 0016C6E4  39 08 A9 F0 */	addi r8, r8, lbl_803DA9F0@l
/* 8016F788 0016C6E8  7F E3 FB 78 */	mr r3, r31
/* 8016F78C 0016C6EC  38 80 00 0E */	li r4, 0xe
/* 8016F790 0016C6F0  91 21 00 14 */	stw r9, 0x14(r1)
/* 8016F794 0016C6F4  91 01 00 10 */	stw r8, 0x10(r1)
/* 8016F798 0016C6F8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8016F79C 0016C6FC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8016F7A0 0016C700  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8016F7A4 0016C704  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8016F7A8 0016C708  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8016F7AC 0016C70C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8016F7B0 0016C710  4B FC 1C 89 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8016F7B4 0016C714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016F7B8 0016C718  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8016F7BC 0016C71C  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8016F7C0 0016C720  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8016F7C4 0016C724  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8016F7C8 0016C728  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8016F7CC 0016C72C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8016F7D0 0016C730  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8016F7D4 0016C734  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8016F7D8 0016C738  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8016F7DC 0016C73C  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8016F7E0 0016C740  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8016F7E4 0016C744  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8016F7E8 0016C748  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8016F7EC 0016C74C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8016F7F0 0016C750  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8016F7F4 0016C754  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8016F7F8 0016C758  90 81 00 10 */	stw r4, 0x10(r1)
/* 8016F7FC 0016C75C  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8016F800 0016C760  90 01 00 10 */	stw r0, 0x10(r1)
/* 8016F804 0016C764  48 00 01 F4 */	b lbl_8016F9F8
lbl_8016F808:
/* 8016F808 0016C768  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 8016F80C 0016C76C  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8016F810 0016C770  2C 00 00 0C */	cmpwi r0, 0xc
/* 8016F814 0016C774  41 82 00 10 */	beq lbl_8016F824
/* 8016F818 0016C778  38 00 00 03 */	li r0, 3
/* 8016F81C 0016C77C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8016F820 0016C780  48 00 01 D8 */	b lbl_8016F9F8
lbl_8016F824:
/* 8016F824 0016C784  88 05 03 00 */	lbz r0, 0x300(r5)
/* 8016F828 0016C788  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8016F82C 0016C78C  40 82 01 CC */	bne lbl_8016F9F8
/* 8016F830 0016C790  81 83 00 00 */	lwz r12, 0(r3)
/* 8016F834 0016C794  C0 22 A0 D8 */	lfs f1, lbl_805ABDF8@sda21(r2)
/* 8016F838 0016C798  81 8C 02 30 */	lwz r12, 0x230(r12)
/* 8016F83C 0016C79C  7D 89 03 A6 */	mtctr r12
/* 8016F840 0016C7A0  4E 80 04 21 */	bctrl
/* 8016F844 0016C7A4  7C 7E 1B 78 */	mr r30, r3
/* 8016F848 0016C7A8  7F E3 FB 78 */	mr r3, r31
/* 8016F84C 0016C7AC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8016F850 0016C7B0  7F A4 EB 78 */	mr r4, r29
/* 8016F854 0016C7B4  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016F858 0016C7B8  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 8016F85C 0016C7BC  7D 89 03 A6 */	mtctr r12
/* 8016F860 0016C7C0  4E 80 04 21 */	bctrl
/* 8016F864 0016C7C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F868 0016C7C8  40 82 00 0C */	bne lbl_8016F874
/* 8016F86C 0016C7CC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8016F870 0016C7D0  41 82 01 88 */	beq lbl_8016F9F8
lbl_8016F874:
/* 8016F874 0016C7D4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8016F878 0016C7D8  4B FC B0 41 */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 8016F87C 0016C7DC  FF E0 08 90 */	fmr f31, f1
/* 8016F880 0016C7E0  C0 1F 07 F4 */	lfs f0, 0x7f4(r31)
/* 8016F884 0016C7E4  C0 22 A0 98 */	lfs f1, lbl_805ABDB8@sda21(r2)
/* 8016F888 0016C7E8  38 81 00 0C */	addi r4, r1, 0xc
/* 8016F88C 0016C7EC  38 6D 8D B8 */	addi r3, r13, lbl_805A7978@sda21
/* 8016F890 0016C7F0  38 AD 8D BC */	addi r5, r13, lbl_805A797C@sda21
/* 8016F894 0016C7F4  EC 1F 00 24 */	fdivs f0, f31, f0
/* 8016F898 0016C7F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016F89C 0016C7FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8016F8A0 0016C800  4B E9 CA 15 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8016F8A4 0016C804  C0 23 00 00 */	lfs f1, 0(r3)
/* 8016F8A8 0016C808  C0 02 A0 AC */	lfs f0, lbl_805ABDCC@sda21(r2)
/* 8016F8AC 0016C80C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016F8B0 0016C810  40 80 00 48 */	bge lbl_8016F8F8
/* 8016F8B4 0016C814  EC 21 00 24 */	fdivs f1, f1, f0
/* 8016F8B8 0016C818  C0 42 A0 88 */	lfs f2, lbl_805ABDA8@sda21(r2)
/* 8016F8BC 0016C81C  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016F8C0 0016C820  38 81 00 08 */	addi r4, r1, 8
/* 8016F8C4 0016C824  38 6D 8D C0 */	addi r3, r13, lbl_805A7980@sda21
/* 8016F8C8 0016C828  38 AD 8D C4 */	addi r5, r13, lbl_805A7984@sda21
/* 8016F8CC 0016C82C  EC 02 00 7C */	fnmsubs f0, f2, f1, f0
/* 8016F8D0 0016C830  D0 01 00 08 */	stfs f0, 8(r1)
/* 8016F8D4 0016C834  4B E9 C9 E1 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8016F8D8 0016C838  C0 63 00 00 */	lfs f3, 0(r3)
/* 8016F8DC 0016C83C  C0 5F 07 DC */	lfs f2, 0x7dc(r31)
/* 8016F8E0 0016C840  C0 3F 07 E0 */	lfs f1, 0x7e0(r31)
/* 8016F8E4 0016C844  C0 1F 07 E4 */	lfs f0, 0x7e4(r31)
/* 8016F8E8 0016C848  EF E3 00 B2 */	fmuls f31, f3, f2
/* 8016F8EC 0016C84C  EF A3 00 72 */	fmuls f29, f3, f1
/* 8016F8F0 0016C850  EF 83 00 32 */	fmuls f28, f3, f0
/* 8016F8F4 0016C854  48 00 00 74 */	b lbl_8016F968
lbl_8016F8F8:
/* 8016F8F8 0016C858  C0 42 A0 A8 */	lfs f2, lbl_805ABDC8@sda21(r2)
/* 8016F8FC 0016C85C  C0 3F 07 F4 */	lfs f1, 0x7f4(r31)
/* 8016F900 0016C860  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 8016F904 0016C864  ED 02 00 72 */	fmuls f8, f2, f1
/* 8016F908 0016C868  C0 C2 A0 88 */	lfs f6, lbl_805ABDA8@sda21(r2)
/* 8016F90C 0016C86C  C0 BF 07 DC */	lfs f5, 0x7dc(r31)
/* 8016F910 0016C870  C0 9F 07 E0 */	lfs f4, 0x7e0(r31)
/* 8016F914 0016C874  EC E0 40 24 */	fdivs f7, f0, f8
/* 8016F918 0016C878  C0 7F 07 E4 */	lfs f3, 0x7e4(r31)
/* 8016F91C 0016C87C  C0 5F 07 D0 */	lfs f2, 0x7d0(r31)
/* 8016F920 0016C880  C0 3F 07 D4 */	lfs f1, 0x7d4(r31)
/* 8016F924 0016C884  C0 1F 07 D8 */	lfs f0, 0x7d8(r31)
/* 8016F928 0016C888  EC A6 01 72 */	fmuls f5, f6, f5
/* 8016F92C 0016C88C  EC 86 01 32 */	fmuls f4, f6, f4
/* 8016F930 0016C890  EC 66 00 F2 */	fmuls f3, f6, f3
/* 8016F934 0016C894  EC 42 28 28 */	fsubs f2, f2, f5
/* 8016F938 0016C898  EC 21 20 28 */	fsubs f1, f1, f4
/* 8016F93C 0016C89C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8016F940 0016C8A0  EC C8 F8 28 */	fsubs f6, f8, f31
/* 8016F944 0016C8A4  EC 47 00 B2 */	fmuls f2, f7, f2
/* 8016F948 0016C8A8  EC 27 00 72 */	fmuls f1, f7, f1
/* 8016F94C 0016C8AC  EC 07 00 32 */	fmuls f0, f7, f0
/* 8016F950 0016C8B0  EC 46 00 B2 */	fmuls f2, f6, f2
/* 8016F954 0016C8B4  EC 26 00 72 */	fmuls f1, f6, f1
/* 8016F958 0016C8B8  EC 06 00 32 */	fmuls f0, f6, f0
/* 8016F95C 0016C8BC  EF E5 10 2A */	fadds f31, f5, f2
/* 8016F960 0016C8C0  EF A4 08 2A */	fadds f29, f4, f1
/* 8016F964 0016C8C4  EF 83 00 2A */	fadds f28, f3, f0
lbl_8016F968:
/* 8016F968 0016C8C8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8016F96C 0016C8CC  41 82 00 14 */	beq lbl_8016F980
/* 8016F970 0016C8D0  FC 20 F0 90 */	fmr f1, f30
/* 8016F974 0016C8D4  7F E3 FB 78 */	mr r3, r31
/* 8016F978 0016C8D8  7F A4 EB 78 */	mr r4, r29
/* 8016F97C 0016C8DC  4B FF D9 F5 */	bl sub_8016d370
lbl_8016F980:
/* 8016F980 0016C8E0  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8016F984 0016C8E4  7F E3 FB 78 */	mr r3, r31
/* 8016F988 0016C8E8  D3 E4 00 00 */	stfs f31, 0(r4)
/* 8016F98C 0016C8EC  D3 A4 00 04 */	stfs f29, 4(r4)
/* 8016F990 0016C8F0  D3 84 00 08 */	stfs f28, 8(r4)
/* 8016F994 0016C8F4  48 00 1D 31 */	bl sub_801716c4
/* 8016F998 0016C8F8  48 00 00 60 */	b lbl_8016F9F8
lbl_8016F99C:
/* 8016F99C 0016C8FC  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016F9A0 0016C900  38 A0 00 00 */	li r5, 0
/* 8016F9A4 0016C904  D0 3F 07 F4 */	stfs f1, 0x7f4(r31)
/* 8016F9A8 0016C908  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 8016F9AC 0016C90C  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8016F9B0 0016C910  98 1F 09 BF */	stb r0, 0x9bf(r31)
/* 8016F9B4 0016C914  81 83 00 00 */	lwz r12, 0(r3)
/* 8016F9B8 0016C918  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 8016F9BC 0016C91C  7D 89 03 A6 */	mtctr r12
/* 8016F9C0 0016C920  4E 80 04 21 */	bctrl
/* 8016F9C4 0016C924  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F9C8 0016C928  41 82 00 28 */	beq lbl_8016F9F0
/* 8016F9CC 0016C92C  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 8016F9D0 0016C930  D0 1F 07 FC */	stfs f0, 0x7fc(r31)
/* 8016F9D4 0016C934  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8016F9D8 0016C938  C0 1F 07 D0 */	lfs f0, 0x7d0(r31)
/* 8016F9DC 0016C93C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8016F9E0 0016C940  C0 1F 07 D4 */	lfs f0, 0x7d4(r31)
/* 8016F9E4 0016C944  D0 03 00 04 */	stfs f0, 4(r3)
/* 8016F9E8 0016C948  C0 1F 07 D8 */	lfs f0, 0x7d8(r31)
/* 8016F9EC 0016C94C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8016F9F0:
/* 8016F9F0 0016C950  7F E3 FB 78 */	mr r3, r31
/* 8016F9F4 0016C954  48 00 1C D1 */	bl sub_801716c4
lbl_8016F9F8:
/* 8016F9F8 0016C958  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8016F9FC 0016C95C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8016FA00 0016C960  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 8016FA04 0016C964  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8016FA08 0016C968  E3 A1 00 78 */	psq_l f29, 120(r1), 0, qr0
/* 8016FA0C 0016C96C  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8016FA10 0016C970  E3 81 00 68 */	psq_l f28, 104(r1), 0, qr0
/* 8016FA14 0016C974  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 8016FA18 0016C978  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8016FA1C 0016C97C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8016FA20 0016C980  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8016FA24 0016C984  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8016FA28 0016C988  7C 08 03 A6 */	mtlr r0
/* 8016FA2C 0016C98C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8016FA30 0016C990  4E 80 00 20 */	blr

.global TargetPatrol__8CMetroidFR13CStateManager9EStateMsgf
TargetPatrol__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016FA34 0016C994  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016FA38 0016C998  7C 08 02 A6 */	mflr r0
/* 8016FA3C 0016C99C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016FA40 0016C9A0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8016FA44 0016C9A4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8016FA48 0016C9A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016FA4C 0016C9AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016FA50 0016C9B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8016FA54 0016C9B4  7C BF 2B 78 */	mr r31, r5
/* 8016FA58 0016C9B8  FF E0 08 90 */	fmr f31, f1
/* 8016FA5C 0016C9BC  2C 1F 00 01 */	cmpwi r31, 1
/* 8016FA60 0016C9C0  7C 7D 1B 78 */	mr r29, r3
/* 8016FA64 0016C9C4  7C 9E 23 78 */	mr r30, r4
/* 8016FA68 0016C9C8  41 82 00 D8 */	beq lbl_8016FB40
/* 8016FA6C 0016C9CC  40 80 01 4C */	bge lbl_8016FBB8
/* 8016FA70 0016C9D0  2C 1F 00 00 */	cmpwi r31, 0
/* 8016FA74 0016C9D4  40 80 00 08 */	bge lbl_8016FA7C
/* 8016FA78 0016C9D8  48 00 01 40 */	b lbl_8016FBB8
lbl_8016FA7C:
/* 8016FA7C 0016C9DC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8016FA80 0016C9E0  38 80 00 01 */	li r4, 1
/* 8016FA84 0016C9E4  4B FC AF 55 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8016FA88 0016C9E8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016FA8C 0016C9EC  38 A0 00 00 */	li r5, 0
/* 8016FA90 0016C9F0  7F A3 EB 78 */	mr r3, r29
/* 8016FA94 0016C9F4  7F C4 F3 78 */	mr r4, r30
/* 8016FA98 0016C9F8  B0 1D 07 B0 */	sth r0, 0x7b0(r29)
/* 8016FA9C 0016C9FC  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016FAA0 0016CA00  88 1D 09 BF */	lbz r0, 0x9bf(r29)
/* 8016FAA4 0016CA04  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 8016FAA8 0016CA08  98 1D 09 BF */	stb r0, 0x9bf(r29)
/* 8016FAAC 0016CA0C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8016FAB0 0016CA10  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 8016FAB4 0016CA14  7D 89 03 A6 */	mtctr r12
/* 8016FAB8 0016CA18  4E 80 04 21 */	bctrl
/* 8016FABC 0016CA1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016FAC0 0016CA20  41 82 00 28 */	beq lbl_8016FAE8
/* 8016FAC4 0016CA24  FC 20 F8 90 */	fmr f1, f31
/* 8016FAC8 0016CA28  7F A3 EB 78 */	mr r3, r29
/* 8016FACC 0016CA2C  7F C4 F3 78 */	mr r4, r30
/* 8016FAD0 0016CA30  7F E5 FB 78 */	mr r5, r31
/* 8016FAD4 0016CA34  48 08 73 A1 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8016FAD8 0016CA38  7F A3 EB 78 */	mr r3, r29
/* 8016FADC 0016CA3C  7F C4 F3 78 */	mr r4, r30
/* 8016FAE0 0016CA40  48 08 57 B1 */	bl UpdateDest__10CPatternedFR13CStateManager
/* 8016FAE4 0016CA44  48 00 00 10 */	b lbl_8016FAF4
lbl_8016FAE8:
/* 8016FAE8 0016CA48  7F A3 EB 78 */	mr r3, r29
/* 8016FAEC 0016CA4C  38 9D 03 A0 */	addi r4, r29, 0x3a0
/* 8016FAF0 0016CA50  4B F0 D0 6D */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_8016FAF4:
/* 8016FAF4 0016CA54  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 8016FAF8 0016CA58  7F A3 EB 78 */	mr r3, r29
/* 8016FAFC 0016CA5C  D0 1D 07 A4 */	stfs f0, 0x7a4(r29)
/* 8016FB00 0016CA60  C0 1D 02 E4 */	lfs f0, 0x2e4(r29)
/* 8016FB04 0016CA64  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 8016FB08 0016CA68  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 8016FB0C 0016CA6C  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 8016FB10 0016CA70  81 9D 00 00 */	lwz r12, 0(r29)
/* 8016FB14 0016CA74  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8016FB18 0016CA78  7D 89 03 A6 */	mtctr r12
/* 8016FB1C 0016CA7C  4E 80 04 21 */	bctrl
/* 8016FB20 0016CA80  28 03 00 00 */	cmplwi r3, 0
/* 8016FB24 0016CA84  41 82 00 94 */	beq lbl_8016FBB8
/* 8016FB28 0016CA88  FC 20 F8 90 */	fmr f1, f31
/* 8016FB2C 0016CA8C  7F A3 EB 78 */	mr r3, r29
/* 8016FB30 0016CA90  7F C4 F3 78 */	mr r4, r30
/* 8016FB34 0016CA94  7F E5 FB 78 */	mr r5, r31
/* 8016FB38 0016CA98  48 08 6B 95 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8016FB3C 0016CA9C  48 00 00 7C */	b lbl_8016FBB8
lbl_8016FB40:
/* 8016FB40 0016CAA0  81 83 00 00 */	lwz r12, 0(r3)
/* 8016FB44 0016CAA4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8016FB48 0016CAA8  7D 89 03 A6 */	mtctr r12
/* 8016FB4C 0016CAAC  4E 80 04 21 */	bctrl
/* 8016FB50 0016CAB0  28 03 00 00 */	cmplwi r3, 0
/* 8016FB54 0016CAB4  41 82 00 40 */	beq lbl_8016FB94
/* 8016FB58 0016CAB8  7F A3 EB 78 */	mr r3, r29
/* 8016FB5C 0016CABC  7F C4 F3 78 */	mr r4, r30
/* 8016FB60 0016CAC0  81 9D 00 00 */	lwz r12, 0(r29)
/* 8016FB64 0016CAC4  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 8016FB68 0016CAC8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8016FB6C 0016CACC  7D 89 03 A6 */	mtctr r12
/* 8016FB70 0016CAD0  4E 80 04 21 */	bctrl
/* 8016FB74 0016CAD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016FB78 0016CAD8  40 82 00 1C */	bne lbl_8016FB94
/* 8016FB7C 0016CADC  FC 20 F8 90 */	fmr f1, f31
/* 8016FB80 0016CAE0  7F A3 EB 78 */	mr r3, r29
/* 8016FB84 0016CAE4  7F C4 F3 78 */	mr r4, r30
/* 8016FB88 0016CAE8  7F E5 FB 78 */	mr r5, r31
/* 8016FB8C 0016CAEC  48 08 6B 41 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8016FB90 0016CAF0  48 00 00 18 */	b lbl_8016FBA8
lbl_8016FB94:
/* 8016FB94 0016CAF4  FC 20 F8 90 */	fmr f1, f31
/* 8016FB98 0016CAF8  7F A3 EB 78 */	mr r3, r29
/* 8016FB9C 0016CAFC  7F C4 F3 78 */	mr r4, r30
/* 8016FBA0 0016CB00  7F E5 FB 78 */	mr r5, r31
/* 8016FBA4 0016CB04  48 08 72 D1 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
lbl_8016FBA8:
/* 8016FBA8 0016CB08  C0 22 A0 F0 */	lfs f1, lbl_805ABE10@sda21(r2)
/* 8016FBAC 0016CB0C  7F A3 EB 78 */	mr r3, r29
/* 8016FBB0 0016CB10  7F C4 F3 78 */	mr r4, r30
/* 8016FBB4 0016CB14  4B FF DC C1 */	bl sub_8016d874
lbl_8016FBB8:
/* 8016FBB8 0016CB18  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8016FBBC 0016CB1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016FBC0 0016CB20  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8016FBC4 0016CB24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016FBC8 0016CB28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016FBCC 0016CB2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8016FBD0 0016CB30  7C 08 03 A6 */	mtlr r0
/* 8016FBD4 0016CB34  38 21 00 30 */	addi r1, r1, 0x30
/* 8016FBD8 0016CB38  4E 80 00 20 */	blr

.global Patrol__8CMetroidFR13CStateManager9EStateMsgf
Patrol__8CMetroidFR13CStateManager9EStateMsgf:
/* 8016FBDC 0016CB3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016FBE0 0016CB40  7C 08 02 A6 */	mflr r0
/* 8016FBE4 0016CB44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016FBE8 0016CB48  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8016FBEC 0016CB4C  FF E0 08 90 */	fmr f31, f1
/* 8016FBF0 0016CB50  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8016FBF4 0016CB54  7C BF 2B 79 */	or. r31, r5, r5
/* 8016FBF8 0016CB58  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8016FBFC 0016CB5C  7C 9E 23 78 */	mr r30, r4
/* 8016FC00 0016CB60  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8016FC04 0016CB64  7C 7D 1B 78 */	mr r29, r3
/* 8016FC08 0016CB68  41 82 00 08 */	beq lbl_8016FC10
/* 8016FC0C 0016CB6C  48 00 00 28 */	b lbl_8016FC34
lbl_8016FC10:
/* 8016FC10 0016CB70  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8016FC14 0016CB74  38 80 00 01 */	li r4, 1
/* 8016FC18 0016CB78  4B FC AD C1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8016FC1C 0016CB7C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016FC20 0016CB80  38 60 00 00 */	li r3, 0
/* 8016FC24 0016CB84  B0 1D 07 B0 */	sth r0, 0x7b0(r29)
/* 8016FC28 0016CB88  88 1D 09 BF */	lbz r0, 0x9bf(r29)
/* 8016FC2C 0016CB8C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8016FC30 0016CB90  98 1D 09 BF */	stb r0, 0x9bf(r29)
lbl_8016FC34:
/* 8016FC34 0016CB94  FC 20 F8 90 */	fmr f1, f31
/* 8016FC38 0016CB98  7F A3 EB 78 */	mr r3, r29
/* 8016FC3C 0016CB9C  7F C4 F3 78 */	mr r4, r30
/* 8016FC40 0016CBA0  7F E5 FB 78 */	mr r5, r31
/* 8016FC44 0016CBA4  48 08 72 31 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8016FC48 0016CBA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016FC4C 0016CBAC  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8016FC50 0016CBB0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8016FC54 0016CBB4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8016FC58 0016CBB8  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8016FC5C 0016CBBC  7C 08 03 A6 */	mtlr r0
/* 8016FC60 0016CBC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8016FC64 0016CBC4  4E 80 00 20 */	blr

.global ShouldDodge__8CMetroidFR13CStateManagerf
ShouldDodge__8CMetroidFR13CStateManagerf:
/* 8016FC68 0016CBC8  94 21 F7 50 */	stwu r1, -0x8b0(r1)
/* 8016FC6C 0016CBCC  7C 08 02 A6 */	mflr r0
/* 8016FC70 0016CBD0  90 01 08 B4 */	stw r0, 0x8b4(r1)
/* 8016FC74 0016CBD4  93 E1 08 AC */	stw r31, 0x8ac(r1)
/* 8016FC78 0016CBD8  7C 9F 23 78 */	mr r31, r4
/* 8016FC7C 0016CBDC  93 C1 08 A8 */	stw r30, 0x8a8(r1)
/* 8016FC80 0016CBE0  7C 7E 1B 78 */	mr r30, r3
/* 8016FC84 0016CBE4  93 A1 08 A4 */	stw r29, 0x8a4(r1)
/* 8016FC88 0016CBE8  93 81 08 A0 */	stw r28, 0x8a0(r1)
/* 8016FC8C 0016CBEC  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 8016FC90 0016CBF0  2C 00 00 02 */	cmpwi r0, 2
/* 8016FC94 0016CBF4  41 82 02 BC */	beq lbl_8016FF50
/* 8016FC98 0016CBF8  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8016FC9C 0016CBFC  A0 7E 07 B0 */	lhz r3, 0x7b0(r30)
/* 8016FCA0 0016CC00  A0 04 00 08 */	lhz r0, 8(r4)
/* 8016FCA4 0016CC04  7C 03 00 40 */	cmplw r3, r0
/* 8016FCA8 0016CC08  40 82 02 A8 */	bne lbl_8016FF50
/* 8016FCAC 0016CC0C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8016FCB0 0016CC10  80 04 00 04 */	lwz r0, 4(r4)
/* 8016FCB4 0016CC14  7C 03 00 00 */	cmpw r3, r0
/* 8016FCB8 0016CC18  40 82 02 98 */	bne lbl_8016FF50
/* 8016FCBC 0016CC1C  A0 DE 00 08 */	lhz r6, 8(r30)
/* 8016FCC0 0016CC20  7F E3 FB 78 */	mr r3, r31
/* 8016FCC4 0016CC24  38 81 00 14 */	addi r4, r1, 0x14
/* 8016FCC8 0016CC28  38 A1 00 10 */	addi r5, r1, 0x10
/* 8016FCCC 0016CC2C  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 8016FCD0 0016CC30  A0 1E 06 98 */	lhz r0, 0x698(r30)
/* 8016FCD4 0016CC34  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 8016FCD8 0016CC38  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8016FCDC 0016CC3C  48 0C A4 A5 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 8016FCE0 0016CC40  28 03 00 00 */	cmplwi r3, 0
/* 8016FCE4 0016CC44  41 82 02 6C */	beq lbl_8016FF50
/* 8016FCE8 0016CC48  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8016FCEC 0016CC4C  2C 00 00 01 */	cmpwi r0, 1
/* 8016FCF0 0016CC50  40 82 02 60 */	bne lbl_8016FF50
/* 8016FCF4 0016CC54  C0 FE 00 60 */	lfs f7, 0x60(r30)
/* 8016FCF8 0016CC58  38 61 00 80 */	addi r3, r1, 0x80
/* 8016FCFC 0016CC5C  C0 A2 A0 F0 */	lfs f5, lbl_805ABE10@sda21(r2)
/* 8016FD00 0016CC60  38 81 00 2C */	addi r4, r1, 0x2c
/* 8016FD04 0016CC64  C0 DE 00 50 */	lfs f6, 0x50(r30)
/* 8016FD08 0016CC68  38 A1 00 20 */	addi r5, r1, 0x20
/* 8016FD0C 0016CC6C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8016FD10 0016CC70  EC 07 28 2A */	fadds f0, f7, f5
/* 8016FD14 0016CC74  EC 66 28 2A */	fadds f3, f6, f5
/* 8016FD18 0016CC78  EC 81 28 2A */	fadds f4, f1, f5
/* 8016FD1C 0016CC7C  EC 41 28 28 */	fsubs f2, f1, f5
/* 8016FD20 0016CC80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8016FD24 0016CC84  EC 26 28 28 */	fsubs f1, f6, f5
/* 8016FD28 0016CC88  EC 07 28 28 */	fsubs f0, f7, f5
/* 8016FD2C 0016CC8C  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8016FD30 0016CC90  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8016FD34 0016CC94  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8016FD38 0016CC98  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8016FD3C 0016CC9C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8016FD40 0016CCA0  48 1C 87 C9 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8016FD44 0016CCA4  38 00 00 00 */	li r0, 0
/* 8016FD48 0016CCA8  80 AD 8D B4 */	lwz r5, lbl_805A7974@sda21(r13)
/* 8016FD4C 0016CCAC  90 01 00 98 */	stw r0, 0x98(r1)
/* 8016FD50 0016CCB0  38 60 00 00 */	li r3, 0
/* 8016FD54 0016CCB4  38 80 00 01 */	li r4, 1
/* 8016FD58 0016CCB8  48 21 A1 9D */	bl __shl2i
/* 8016FD5C 0016CCBC  39 00 00 01 */	li r8, 1
/* 8016FD60 0016CCC0  38 00 00 00 */	li r0, 0
/* 8016FD64 0016CCC4  90 81 00 6C */	stw r4, 0x6c(r1)
/* 8016FD68 0016CCC8  38 81 00 98 */	addi r4, r1, 0x98
/* 8016FD6C 0016CCCC  38 A1 00 80 */	addi r5, r1, 0x80
/* 8016FD70 0016CCD0  38 C1 00 68 */	addi r6, r1, 0x68
/* 8016FD74 0016CCD4  90 61 00 68 */	stw r3, 0x68(r1)
/* 8016FD78 0016CCD8  7F E3 FB 78 */	mr r3, r31
/* 8016FD7C 0016CCDC  38 E0 00 00 */	li r7, 0
/* 8016FD80 0016CCE0  91 01 00 60 */	stw r8, 0x60(r1)
/* 8016FD84 0016CCE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8016FD88 0016CCE8  90 01 00 70 */	stw r0, 0x70(r1)
/* 8016FD8C 0016CCEC  91 01 00 78 */	stw r8, 0x78(r1)
/* 8016FD90 0016CCF0  4B ED C9 91 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 8016FD94 0016CCF4  80 01 00 98 */	lwz r0, 0x98(r1)
/* 8016FD98 0016CCF8  2C 00 00 00 */	cmpwi r0, 0
/* 8016FD9C 0016CCFC  40 81 01 60 */	ble lbl_8016FEFC
/* 8016FDA0 0016CD00  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8016FDA4 0016CD04  3B A1 00 9C */	addi r29, r1, 0x9c
/* 8016FDA8 0016CD08  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8016FDAC 0016CD0C  7F BC EB 78 */	mr r28, r29
/* 8016FDB0 0016CD10  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8016FDB4 0016CD14  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8016FDB8 0016CD18  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8016FDBC 0016CD1C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8016FDC0 0016CD20  48 00 01 28 */	b lbl_8016FEE8
lbl_8016FDC4:
/* 8016FDC4 0016CD24  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8016FDC8 0016CD28  7F E3 FB 78 */	mr r3, r31
/* 8016FDCC 0016CD2C  38 81 00 08 */	addi r4, r1, 8
/* 8016FDD0 0016CD30  B0 01 00 08 */	sth r0, 8(r1)
/* 8016FDD4 0016CD34  4B ED C7 D1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016FDD8 0016CD38  7C 64 1B 78 */	mr r4, r3
/* 8016FDDC 0016CD3C  38 61 00 18 */	addi r3, r1, 0x18
/* 8016FDE0 0016CD40  4B F3 D9 2D */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 8016FDE4 0016CD44  80 A3 00 04 */	lwz r5, 4(r3)
/* 8016FDE8 0016CD48  28 05 00 00 */	cmplwi r5, 0
/* 8016FDEC 0016CD4C  41 82 00 F8 */	beq lbl_8016FEE4
/* 8016FDF0 0016CD50  80 05 00 E8 */	lwz r0, 0xe8(r5)
/* 8016FDF4 0016CD54  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
/* 8016FDF8 0016CD58  2C 00 00 08 */	cmpwi r0, 8
/* 8016FDFC 0016CD5C  40 82 00 E8 */	bne lbl_8016FEE4
/* 8016FE00 0016CD60  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8016FE04 0016CD64  38 61 00 44 */	addi r3, r1, 0x44
/* 8016FE08 0016CD68  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8016FE0C 0016CD6C  38 81 00 38 */	addi r4, r1, 0x38
/* 8016FE10 0016CD70  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 8016FE14 0016CD74  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8016FE18 0016CD78  EC 81 00 28 */	fsubs f4, f1, f0
/* 8016FE1C 0016CD7C  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 8016FE20 0016CD80  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016FE24 0016CD84  EC 43 10 28 */	fsubs f2, f3, f2
/* 8016FE28 0016CD88  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016FE2C 0016CD8C  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8016FE30 0016CD90  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8016FE34 0016CD94  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8016FE38 0016CD98  48 1A 47 F9 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 8016FE3C 0016CD9C  C0 02 A0 F4 */	lfs f0, lbl_805ABE14@sda21(r2)
/* 8016FE40 0016CDA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016FE44 0016CDA4  40 80 00 A0 */	bge lbl_8016FEE4
/* 8016FE48 0016CDA8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8016FE4C 0016CDAC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8016FE50 0016CDB0  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8016FE54 0016CDB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016FE58 0016CDB8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8016FE5C 0016CDBC  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 8016FE60 0016CDC0  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8016FE64 0016CDC4  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8016FE68 0016CDC8  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016FE6C 0016CDCC  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 8016FE70 0016CDD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016FE74 0016CDD4  40 81 00 0C */	ble lbl_8016FE80
/* 8016FE78 0016CDD8  38 00 00 03 */	li r0, 3
/* 8016FE7C 0016CDDC  48 00 00 08 */	b lbl_8016FE84
lbl_8016FE80:
/* 8016FE80 0016CDE0  38 00 00 02 */	li r0, 2
lbl_8016FE84:
/* 8016FE84 0016CDE4  90 1E 08 18 */	stw r0, 0x818(r30)
/* 8016FE88 0016CDE8  38 60 00 00 */	li r3, 0
/* 8016FE8C 0016CDEC  80 A1 00 98 */	lwz r5, 0x98(r1)
/* 8016FE90 0016CDF0  2C 05 00 00 */	cmpwi r5, 0
/* 8016FE94 0016CDF4  40 81 00 40 */	ble lbl_8016FED4
/* 8016FE98 0016CDF8  2C 05 00 08 */	cmpwi r5, 8
/* 8016FE9C 0016CDFC  38 85 FF F8 */	addi r4, r5, -8
/* 8016FEA0 0016CE00  40 81 00 20 */	ble lbl_8016FEC0
/* 8016FEA4 0016CE04  38 04 00 07 */	addi r0, r4, 7
/* 8016FEA8 0016CE08  54 00 E8 FE */	srwi r0, r0, 3
/* 8016FEAC 0016CE0C  7C 09 03 A6 */	mtctr r0
/* 8016FEB0 0016CE10  2C 04 00 00 */	cmpwi r4, 0
/* 8016FEB4 0016CE14  40 81 00 0C */	ble lbl_8016FEC0
lbl_8016FEB8:
/* 8016FEB8 0016CE18  38 63 00 08 */	addi r3, r3, 8
/* 8016FEBC 0016CE1C  42 00 FF FC */	bdnz lbl_8016FEB8
lbl_8016FEC0:
/* 8016FEC0 0016CE20  7C 03 28 50 */	subf r0, r3, r5
/* 8016FEC4 0016CE24  7C 09 03 A6 */	mtctr r0
/* 8016FEC8 0016CE28  7C 03 28 00 */	cmpw r3, r5
/* 8016FECC 0016CE2C  40 80 00 08 */	bge lbl_8016FED4
lbl_8016FED0:
/* 8016FED0 0016CE30  42 00 00 00 */	bdnz lbl_8016FED0
lbl_8016FED4:
/* 8016FED4 0016CE34  38 00 00 00 */	li r0, 0
/* 8016FED8 0016CE38  38 60 00 01 */	li r3, 1
/* 8016FEDC 0016CE3C  90 01 00 98 */	stw r0, 0x98(r1)
/* 8016FEE0 0016CE40  48 00 00 74 */	b lbl_8016FF54
lbl_8016FEE4:
/* 8016FEE4 0016CE44  3B 9C 00 02 */	addi r28, r28, 2
lbl_8016FEE8:
/* 8016FEE8 0016CE48  80 01 00 98 */	lwz r0, 0x98(r1)
/* 8016FEEC 0016CE4C  54 00 08 3C */	slwi r0, r0, 1
/* 8016FEF0 0016CE50  7C 1D 02 14 */	add r0, r29, r0
/* 8016FEF4 0016CE54  7C 1C 00 40 */	cmplw r28, r0
/* 8016FEF8 0016CE58  40 82 FE CC */	bne lbl_8016FDC4
lbl_8016FEFC:
/* 8016FEFC 0016CE5C  80 A1 00 98 */	lwz r5, 0x98(r1)
/* 8016FF00 0016CE60  38 60 00 00 */	li r3, 0
/* 8016FF04 0016CE64  2C 05 00 00 */	cmpwi r5, 0
/* 8016FF08 0016CE68  40 81 00 40 */	ble lbl_8016FF48
/* 8016FF0C 0016CE6C  2C 05 00 08 */	cmpwi r5, 8
/* 8016FF10 0016CE70  38 85 FF F8 */	addi r4, r5, -8
/* 8016FF14 0016CE74  40 81 00 20 */	ble lbl_8016FF34
/* 8016FF18 0016CE78  38 04 00 07 */	addi r0, r4, 7
/* 8016FF1C 0016CE7C  54 00 E8 FE */	srwi r0, r0, 3
/* 8016FF20 0016CE80  7C 09 03 A6 */	mtctr r0
/* 8016FF24 0016CE84  2C 04 00 00 */	cmpwi r4, 0
/* 8016FF28 0016CE88  40 81 00 0C */	ble lbl_8016FF34
lbl_8016FF2C:
/* 8016FF2C 0016CE8C  38 63 00 08 */	addi r3, r3, 8
/* 8016FF30 0016CE90  42 00 FF FC */	bdnz lbl_8016FF2C
lbl_8016FF34:
/* 8016FF34 0016CE94  7C 03 28 50 */	subf r0, r3, r5
/* 8016FF38 0016CE98  7C 09 03 A6 */	mtctr r0
/* 8016FF3C 0016CE9C  7C 03 28 00 */	cmpw r3, r5
/* 8016FF40 0016CEA0  40 80 00 08 */	bge lbl_8016FF48
lbl_8016FF44:
/* 8016FF44 0016CEA4  42 00 00 00 */	bdnz lbl_8016FF44
lbl_8016FF48:
/* 8016FF48 0016CEA8  38 00 00 00 */	li r0, 0
/* 8016FF4C 0016CEAC  90 01 00 98 */	stw r0, 0x98(r1)
lbl_8016FF50:
/* 8016FF50 0016CEB0  38 60 00 00 */	li r3, 0
lbl_8016FF54:
/* 8016FF54 0016CEB4  80 01 08 B4 */	lwz r0, 0x8b4(r1)
/* 8016FF58 0016CEB8  83 E1 08 AC */	lwz r31, 0x8ac(r1)
/* 8016FF5C 0016CEBC  83 C1 08 A8 */	lwz r30, 0x8a8(r1)
/* 8016FF60 0016CEC0  83 A1 08 A4 */	lwz r29, 0x8a4(r1)
/* 8016FF64 0016CEC4  83 81 08 A0 */	lwz r28, 0x8a0(r1)
/* 8016FF68 0016CEC8  7C 08 03 A6 */	mtlr r0
/* 8016FF6C 0016CECC  38 21 08 B0 */	addi r1, r1, 0x8b0
/* 8016FF70 0016CED0  4E 80 00 20 */	blr

.global Inside__8CMetroidFR13CStateManagerf
Inside__8CMetroidFR13CStateManagerf:
/* 8016FF74 0016CED4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016FF78 0016CED8  7C 08 02 A6 */	mflr r0
/* 8016FF7C 0016CEDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016FF80 0016CEE0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8016FF84 0016CEE4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8016FF88 0016CEE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016FF8C 0016CEEC  7C 7F 1B 78 */	mr r31, r3
/* 8016FF90 0016CEF0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016FF94 0016CEF4  A0 63 09 BC */	lhz r3, 0x9bc(r3)
/* 8016FF98 0016CEF8  FF E0 08 90 */	fmr f31, f1
/* 8016FF9C 0016CEFC  7C 03 00 40 */	cmplw r3, r0
/* 8016FFA0 0016CF00  41 82 00 90 */	beq lbl_80170030
/* 8016FFA4 0016CF04  A0 1F 09 BC */	lhz r0, 0x9bc(r31)
/* 8016FFA8 0016CF08  7C 83 23 78 */	mr r3, r4
/* 8016FFAC 0016CF0C  38 81 00 08 */	addi r4, r1, 8
/* 8016FFB0 0016CF10  B0 01 00 08 */	sth r0, 8(r1)
/* 8016FFB4 0016CF14  4B ED C5 F1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8016FFB8 0016CF18  7C 64 1B 78 */	mr r4, r3
/* 8016FFBC 0016CF1C  38 61 00 0C */	addi r3, r1, 0xc
/* 8016FFC0 0016CF20  4B F3 55 15 */	bl sub_800a54d4
/* 8016FFC4 0016CF24  4B F3 54 E5 */	bl "CastTo<8CMetroid>__10CPatternedFP7CEntity"
/* 8016FFC8 0016CF28  28 03 00 00 */	cmplwi r3, 0
/* 8016FFCC 0016CF2C  41 82 00 64 */	beq lbl_80170030
/* 8016FFD0 0016CF30  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8016FFD4 0016CF34  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8016FFD8 0016CF38  40 81 00 10 */	ble lbl_8016FFE8
/* 8016FFDC 0016CF3C  C0 1F 06 BC */	lfs f0, 0x6bc(r31)
/* 8016FFE0 0016CF40  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8016FFE4 0016CF44  48 00 00 08 */	b lbl_8016FFEC
lbl_8016FFE8:
/* 8016FFE8 0016CF48  C0 1F 06 BC */	lfs f0, 0x6bc(r31)
lbl_8016FFEC:
/* 8016FFEC 0016CF4C  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 8016FFF0 0016CF50  EC 00 00 32 */	fmuls f0, f0, f0
/* 8016FFF4 0016CF54  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8016FFF8 0016CF58  C0 83 00 40 */	lfs f4, 0x40(r3)
/* 8016FFFC 0016CF5C  EC A2 08 28 */	fsubs f5, f2, f1
/* 80170000 0016CF60  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80170004 0016CF64  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80170008 0016CF68  EC 84 08 28 */	fsubs f4, f4, f1
/* 8017000C 0016CF6C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80170010 0016CF70  EC 25 01 72 */	fmuls f1, f5, f5
/* 80170014 0016CF74  EC 43 10 28 */	fsubs f2, f3, f2
/* 80170018 0016CF78  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8017001C 0016CF7C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80170020 0016CF80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170024 0016CF84  40 80 00 0C */	bge lbl_80170030
/* 80170028 0016CF88  38 60 00 01 */	li r3, 1
/* 8017002C 0016CF8C  48 00 00 08 */	b lbl_80170034
lbl_80170030:
/* 80170030 0016CF90  38 60 00 00 */	li r3, 0
lbl_80170034:
/* 80170034 0016CF94  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80170038 0016CF98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8017003C 0016CF9C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80170040 0016CFA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80170044 0016CFA4  7C 08 03 A6 */	mtlr r0
/* 80170048 0016CFA8  38 21 00 30 */	addi r1, r1, 0x30

.global sub_8017004c
sub_8017004c:
/* 8017004C 0016CFAC  4E 80 00 20 */	blr

.global ShouldWallHang__8CMetroidFR13CStateManagerf
ShouldWallHang__8CMetroidFR13CStateManagerf:
/* 80170050 0016CFB0  88 03 06 94 */	lbz r0, 0x694(r3)
/* 80170054 0016CFB4  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 80170058 0016CFB8  4E 80 00 20 */	blr

.global Leash__8CMetroidFR13CStateManagerf
Leash__8CMetroidFR13CStateManagerf:
/* 8017005C 0016CFBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80170060 0016CFC0  7C 08 02 A6 */	mflr r0
/* 80170064 0016CFC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80170068 0016CFC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017006C 0016CFCC  7C 9F 23 78 */	mr r31, r4
/* 80170070 0016CFD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80170074 0016CFD4  7C 7E 1B 78 */	mr r30, r3
/* 80170078 0016CFD8  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 8017007C 0016CFDC  A0 C3 07 B0 */	lhz r6, 0x7b0(r3)
/* 80170080 0016CFE0  A0 05 00 08 */	lhz r0, 8(r5)
/* 80170084 0016CFE4  7C 06 00 40 */	cmplw r6, r0
/* 80170088 0016CFE8  40 82 00 18 */	bne lbl_801700A0
/* 8017008C 0016CFEC  4B FF A0 F5 */	bl sub_8016a180
/* 80170090 0016CFF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170094 0016CFF4  41 82 00 0C */	beq lbl_801700A0
/* 80170098 0016CFF8  38 60 00 01 */	li r3, 1
/* 8017009C 0016CFFC  48 00 00 E8 */	b lbl_80170184
lbl_801700A0:
/* 801700A0 0016D000  C0 3E 03 A4 */	lfs f1, 0x3a4(r30)
/* 801700A4 0016D004  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801700A8 0016D008  C0 5E 03 C8 */	lfs f2, 0x3c8(r30)
/* 801700AC 0016D00C  EC A1 00 28 */	fsubs f5, f1, f0
/* 801700B0 0016D010  C0 9E 03 A0 */	lfs f4, 0x3a0(r30)
/* 801700B4 0016D014  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801700B8 0016D018  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801700BC 0016D01C  C0 7E 03 A8 */	lfs f3, 0x3a8(r30)
/* 801700C0 0016D020  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801700C4 0016D024  EC 84 08 28 */	fsubs f4, f4, f1
/* 801700C8 0016D028  EC 25 01 72 */	fmuls f1, f5, f5
/* 801700CC 0016D02C  EC 43 10 28 */	fsubs f2, f3, f2
/* 801700D0 0016D030  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 801700D4 0016D034  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801700D8 0016D038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801700DC 0016D03C  40 81 00 A4 */	ble lbl_80170180
/* 801700E0 0016D040  A0 7E 07 B0 */	lhz r3, 0x7b0(r30)
/* 801700E4 0016D044  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801700E8 0016D048  7C 03 00 40 */	cmplw r3, r0
/* 801700EC 0016D04C  41 82 00 8C */	beq lbl_80170178
/* 801700F0 0016D050  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 801700F4 0016D054  7F E3 FB 78 */	mr r3, r31
/* 801700F8 0016D058  38 81 00 08 */	addi r4, r1, 8
/* 801700FC 0016D05C  B0 01 00 08 */	sth r0, 8(r1)
/* 80170100 0016D060  4B ED C4 A5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80170104 0016D064  7C 64 1B 78 */	mr r4, r3
/* 80170108 0016D068  38 61 00 0C */	addi r3, r1, 0xc
/* 8017010C 0016D06C  4B F3 FB 85 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 80170110 0016D070  80 83 00 04 */	lwz r4, 4(r3)
/* 80170114 0016D074  28 04 00 00 */	cmplwi r4, 0
/* 80170118 0016D078  41 82 00 60 */	beq lbl_80170178
/* 8017011C 0016D07C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80170120 0016D080  38 60 00 00 */	li r3, 0
/* 80170124 0016D084  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80170128 0016D088  C0 5E 03 CC */	lfs f2, 0x3cc(r30)
/* 8017012C 0016D08C  EC A1 00 28 */	fsubs f5, f1, f0
/* 80170130 0016D090  C0 84 00 40 */	lfs f4, 0x40(r4)
/* 80170134 0016D094  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80170138 0016D098  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8017013C 0016D09C  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80170140 0016D0A0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80170144 0016D0A4  EC 84 08 28 */	fsubs f4, f4, f1
/* 80170148 0016D0A8  EC 25 01 72 */	fmuls f1, f5, f5
/* 8017014C 0016D0AC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80170150 0016D0B0  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80170154 0016D0B4  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80170158 0016D0B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017015C 0016D0BC  40 81 00 28 */	ble lbl_80170184
/* 80170160 0016D0C0  C0 3E 03 D4 */	lfs f1, 0x3d4(r30)
/* 80170164 0016D0C4  C0 1E 03 D0 */	lfs f0, 0x3d0(r30)
/* 80170168 0016D0C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017016C 0016D0CC  40 81 00 18 */	ble lbl_80170184
/* 80170170 0016D0D0  38 60 00 01 */	li r3, 1
/* 80170174 0016D0D4  48 00 00 10 */	b lbl_80170184
lbl_80170178:
/* 80170178 0016D0D8  38 60 00 01 */	li r3, 1
/* 8017017C 0016D0DC  48 00 00 08 */	b lbl_80170184
lbl_80170180:
/* 80170180 0016D0E0  38 60 00 00 */	li r3, 0
lbl_80170184:
/* 80170184 0016D0E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80170188 0016D0E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017018C 0016D0EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80170190 0016D0F0  7C 08 03 A6 */	mtlr r0
/* 80170194 0016D0F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80170198 0016D0F8  4E 80 00 20 */	blr

.global ShouldTurn__8CMetroidFR13CStateManagerf
ShouldTurn__8CMetroidFR13CStateManagerf:
/* 8017019C 0016D0FC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801701A0 0016D100  7C 08 02 A6 */	mflr r0
/* 801701A4 0016D104  90 01 00 64 */	stw r0, 0x64(r1)
/* 801701A8 0016D108  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801701AC 0016D10C  7C 7F 1B 78 */	mr r31, r3
/* 801701B0 0016D110  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801701B4 0016D114  A0 63 07 B0 */	lhz r3, 0x7b0(r3)
/* 801701B8 0016D118  7C 03 00 40 */	cmplw r3, r0
/* 801701BC 0016D11C  41 82 00 D4 */	beq lbl_80170290
/* 801701C0 0016D120  A0 1F 07 B0 */	lhz r0, 0x7b0(r31)
/* 801701C4 0016D124  7C 83 23 78 */	mr r3, r4
/* 801701C8 0016D128  38 81 00 08 */	addi r4, r1, 8
/* 801701CC 0016D12C  B0 01 00 08 */	sth r0, 8(r1)
/* 801701D0 0016D130  4B ED C3 D5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801701D4 0016D134  7C 64 1B 78 */	mr r4, r3
/* 801701D8 0016D138  38 61 00 0C */	addi r3, r1, 0xc
/* 801701DC 0016D13C  4B F3 FA B5 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801701E0 0016D140  80 83 00 04 */	lwz r4, 4(r3)
/* 801701E4 0016D144  28 04 00 00 */	cmplwi r4, 0
/* 801701E8 0016D148  41 82 00 A8 */	beq lbl_80170290
/* 801701EC 0016D14C  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 801701F0 0016D150  38 61 00 1C */	addi r3, r1, 0x1c
/* 801701F4 0016D154  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801701F8 0016D158  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801701FC 0016D15C  EC 44 08 28 */	fsubs f2, f4, f1
/* 80170200 0016D160  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80170204 0016D164  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 80170208 0016D168  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8017020C 0016D16C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80170210 0016D170  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80170214 0016D174  EC 65 18 28 */	fsubs f3, f5, f3
/* 80170218 0016D178  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8017021C 0016D17C  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 80170220 0016D180  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80170224 0016D184  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80170228 0016D188  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 8017022C 0016D18C  48 1A 3F D5 */	bl __ct__9CVector2fFff
/* 80170230 0016D190  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80170234 0016D194  38 61 00 14 */	addi r3, r1, 0x14
/* 80170238 0016D198  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8017023C 0016D19C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80170240 0016D1A0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80170244 0016D1A4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80170248 0016D1A8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8017024C 0016D1AC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80170250 0016D1B0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80170254 0016D1B4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80170258 0016D1B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8017025C 0016D1BC  48 1A 3F A5 */	bl __ct__9CVector2fFff
/* 80170260 0016D1C0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80170264 0016D1C4  38 61 00 24 */	addi r3, r1, 0x24
/* 80170268 0016D1C8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8017026C 0016D1CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80170270 0016D1D0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80170274 0016D1D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80170278 0016D1D8  48 1A 3D 4D */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 8017027C 0016D1DC  C0 02 A0 F8 */	lfs f0, lbl_805ABE18@sda21(r2)
/* 80170280 0016D1E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170284 0016D1E4  7C 00 00 26 */	mfcr r0
/* 80170288 0016D1E8  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8017028C 0016D1EC  48 00 00 08 */	b lbl_80170294
lbl_80170290:
/* 80170290 0016D1F0  38 60 00 00 */	li r3, 0
lbl_80170294:
/* 80170294 0016D1F4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80170298 0016D1F8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8017029C 0016D1FC  7C 08 03 A6 */	mtlr r0
/* 801702A0 0016D200  38 21 00 60 */	addi r1, r1, 0x60
/* 801702A4 0016D204  4E 80 00 20 */	blr

.global AggressionCheck__8CMetroidFR13CStateManagerf
AggressionCheck__8CMetroidFR13CStateManagerf:
/* 801702A8 0016D208  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801702AC 0016D20C  7C 08 02 A6 */	mflr r0
/* 801702B0 0016D210  90 01 00 34 */	stw r0, 0x34(r1)
/* 801702B4 0016D214  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801702B8 0016D218  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801702BC 0016D21C  7C 9E 23 78 */	mr r30, r4
/* 801702C0 0016D220  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801702C4 0016D224  7C 7D 1B 78 */	mr r29, r3
/* 801702C8 0016D228  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801702CC 0016D22C  A0 63 07 B0 */	lhz r3, 0x7b0(r3)
/* 801702D0 0016D230  7C 03 00 40 */	cmplw r3, r0
/* 801702D4 0016D234  41 82 00 E4 */	beq lbl_801703B8
/* 801702D8 0016D238  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 801702DC 0016D23C  7F C3 F3 78 */	mr r3, r30
/* 801702E0 0016D240  38 81 00 08 */	addi r4, r1, 8
/* 801702E4 0016D244  B0 01 00 08 */	sth r0, 8(r1)
/* 801702E8 0016D248  4B ED C2 BD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801702EC 0016D24C  7C 64 1B 78 */	mr r4, r3
/* 801702F0 0016D250  38 61 00 10 */	addi r3, r1, 0x10
/* 801702F4 0016D254  4B F3 F9 9D */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801702F8 0016D258  83 E3 00 04 */	lwz r31, 4(r3)
/* 801702FC 0016D25C  38 61 00 0C */	addi r3, r1, 0xc
/* 80170300 0016D260  7F E4 FB 78 */	mr r4, r31
/* 80170304 0016D264  4B F3 50 CD */	bl sub_800a53d0
/* 80170308 0016D268  4B F3 50 9D */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 8017030C 0016D26C  7C 64 1B 79 */	or. r4, r3, r3
/* 80170310 0016D270  41 82 00 28 */	beq lbl_80170338
/* 80170314 0016D274  7F A3 EB 78 */	mr r3, r29
/* 80170318 0016D278  7F C5 F3 78 */	mr r5, r30
/* 8017031C 0016D27C  4B FF DE 5D */	bl sub_8016e178
/* 80170320 0016D280  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170324 0016D284  40 82 00 14 */	bne lbl_80170338
/* 80170328 0016D288  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8017032C 0016D28C  38 60 00 00 */	li r3, 0
/* 80170330 0016D290  B0 1D 07 B0 */	sth r0, 0x7b0(r29)
/* 80170334 0016D294  48 00 00 88 */	b lbl_801703BC
lbl_80170338:
/* 80170338 0016D298  28 1F 00 00 */	cmplwi r31, 0
/* 8017033C 0016D29C  41 82 00 74 */	beq lbl_801703B0
/* 80170340 0016D2A0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80170344 0016D2A4  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80170348 0016D2A8  C0 5D 03 BC */	lfs f2, 0x3bc(r29)
/* 8017034C 0016D2AC  EC A1 00 28 */	fsubs f5, f1, f0
/* 80170350 0016D2B0  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 80170354 0016D2B4  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 80170358 0016D2B8  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8017035C 0016D2BC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80170360 0016D2C0  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80170364 0016D2C4  EC 64 18 28 */	fsubs f3, f4, f3
/* 80170368 0016D2C8  EC 42 08 28 */	fsubs f2, f2, f1
/* 8017036C 0016D2CC  EC 25 01 72 */	fmuls f1, f5, f5
/* 80170370 0016D2D0  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80170374 0016D2D4  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 80170378 0016D2D8  EC 22 08 2A */	fadds f1, f2, f1
/* 8017037C 0016D2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170380 0016D2E0  40 80 00 38 */	bge lbl_801703B8
/* 80170384 0016D2E4  C0 3D 03 C0 */	lfs f1, 0x3c0(r29)
/* 80170388 0016D2E8  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8017038C 0016D2EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170390 0016D2F0  40 81 00 18 */	ble lbl_801703A8
/* 80170394 0016D2F4  EC 01 00 72 */	fmuls f0, f1, f1
/* 80170398 0016D2F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8017039C 0016D2FC  7C 00 00 26 */	mfcr r0
/* 801703A0 0016D300  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801703A4 0016D304  48 00 00 18 */	b lbl_801703BC
lbl_801703A8:
/* 801703A8 0016D308  38 60 00 01 */	li r3, 1
/* 801703AC 0016D30C  48 00 00 10 */	b lbl_801703BC
lbl_801703B0:
/* 801703B0 0016D310  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801703B4 0016D314  B0 1D 07 B0 */	sth r0, 0x7b0(r29)
lbl_801703B8:
/* 801703B8 0016D318  38 60 00 00 */	li r3, 0
lbl_801703BC:
/* 801703BC 0016D31C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801703C0 0016D320  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801703C4 0016D324  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801703C8 0016D328  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801703CC 0016D32C  7C 08 03 A6 */	mtlr r0
/* 801703D0 0016D330  38 21 00 30 */	addi r1, r1, 0x30
/* 801703D4 0016D334  4E 80 00 20 */	blr

.global SpotPlayer__8CMetroidFR13CStateManagerf
SpotPlayer__8CMetroidFR13CStateManagerf:
/* 801703D8 0016D338  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801703DC 0016D33C  7C 08 02 A6 */	mflr r0
/* 801703E0 0016D340  90 01 00 54 */	stw r0, 0x54(r1)
/* 801703E4 0016D344  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801703E8 0016D348  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801703EC 0016D34C  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 801703F0 0016D350  7C 7E 1B 78 */	mr r30, r3
/* 801703F4 0016D354  7C 9F 23 78 */	mr r31, r4
/* 801703F8 0016D358  4B FF 9D 89 */	bl sub_8016a180
/* 801703FC 0016D35C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170400 0016D360  40 82 01 28 */	bne lbl_80170528
/* 80170404 0016D364  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80170408 0016D368  80 1E 00 04 */	lwz r0, 4(r30)
/* 8017040C 0016D36C  80 64 00 04 */	lwz r3, 4(r4)
/* 80170410 0016D370  7C 03 00 00 */	cmpw r3, r0
/* 80170414 0016D374  40 82 01 14 */	bne lbl_80170528
/* 80170418 0016D378  A0 7E 07 B0 */	lhz r3, 0x7b0(r30)
/* 8017041C 0016D37C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80170420 0016D380  7C 03 00 40 */	cmplw r3, r0
/* 80170424 0016D384  40 82 00 F0 */	bne lbl_80170514
/* 80170428 0016D388  C0 1E 03 BC */	lfs f0, 0x3bc(r30)
/* 8017042C 0016D38C  7F E3 FB 78 */	mr r3, r31
/* 80170430 0016D390  A3 A4 00 08 */	lhz r29, 8(r4)
/* 80170434 0016D394  38 81 00 10 */	addi r4, r1, 0x10
/* 80170438 0016D398  A0 1E 06 98 */	lhz r0, 0x698(r30)
/* 8017043C 0016D39C  EF E0 00 32 */	fmuls f31, f0, f0
/* 80170440 0016D3A0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80170444 0016D3A4  4B ED C1 31 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80170448 0016D3A8  7C 64 1B 78 */	mr r4, r3
/* 8017044C 0016D3AC  38 61 00 18 */	addi r3, r1, 0x18
/* 80170450 0016D3B0  4B F3 71 25 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 80170454 0016D3B4  83 63 00 04 */	lwz r27, 4(r3)
/* 80170458 0016D3B8  28 1B 00 00 */	cmplwi r27, 0
/* 8017045C 0016D3BC  41 82 00 B0 */	beq lbl_8017050C
/* 80170460 0016D3C0  83 9B 00 64 */	lwz r28, 0x64(r27)
/* 80170464 0016D3C4  48 00 00 90 */	b lbl_801704F4
lbl_80170468:
/* 80170468 0016D3C8  A0 BC 00 00 */	lhz r5, 0(r28)
/* 8017046C 0016D3CC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80170470 0016D3D0  7C 05 00 40 */	cmplw r5, r0
/* 80170474 0016D3D4  41 82 00 7C */	beq lbl_801704F0
/* 80170478 0016D3D8  B0 A1 00 08 */	sth r5, 8(r1)
/* 8017047C 0016D3DC  7F E3 FB 78 */	mr r3, r31
/* 80170480 0016D3E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80170484 0016D3E4  B0 A1 00 0C */	sth r5, 0xc(r1)
/* 80170488 0016D3E8  4B ED C1 1D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8017048C 0016D3EC  7C 64 1B 78 */	mr r4, r3
/* 80170490 0016D3F0  38 61 00 14 */	addi r3, r1, 0x14
/* 80170494 0016D3F4  4B F3 50 41 */	bl sub_800a54d4
/* 80170498 0016D3F8  4B F3 50 11 */	bl "CastTo<8CMetroid>__10CPatternedFP7CEntity"
/* 8017049C 0016D3FC  28 03 00 00 */	cmplwi r3, 0
/* 801704A0 0016D400  41 82 00 50 */	beq lbl_801704F0
/* 801704A4 0016D404  A0 03 07 B0 */	lhz r0, 0x7b0(r3)
/* 801704A8 0016D408  7C 00 E8 40 */	cmplw r0, r29
/* 801704AC 0016D40C  40 82 00 44 */	bne lbl_801704F0
/* 801704B0 0016D410  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801704B4 0016D414  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801704B8 0016D418  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 801704BC 0016D41C  EC 81 00 28 */	fsubs f4, f1, f0
/* 801704C0 0016D420  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801704C4 0016D424  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801704C8 0016D428  EC 63 00 28 */	fsubs f3, f3, f0
/* 801704CC 0016D42C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801704D0 0016D430  EC 04 01 32 */	fmuls f0, f4, f4
/* 801704D4 0016D434  EC 22 08 28 */	fsubs f1, f2, f1
/* 801704D8 0016D438  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 801704DC 0016D43C  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 801704E0 0016D440  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801704E4 0016D444  40 80 00 0C */	bge lbl_801704F0
/* 801704E8 0016D448  38 60 00 01 */	li r3, 1
/* 801704EC 0016D44C  48 00 00 40 */	b lbl_8017052C
lbl_801704F0:
/* 801704F0 0016D450  3B 9C 00 28 */	addi r28, r28, 0x28
lbl_801704F4:
/* 801704F4 0016D454  80 1B 00 5C */	lwz r0, 0x5c(r27)
/* 801704F8 0016D458  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 801704FC 0016D45C  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80170500 0016D460  7C 03 02 14 */	add r0, r3, r0
/* 80170504 0016D464  7C 1C 00 40 */	cmplw r28, r0
/* 80170508 0016D468  40 82 FF 60 */	bne lbl_80170468
lbl_8017050C:
/* 8017050C 0016D46C  38 60 00 00 */	li r3, 0
/* 80170510 0016D470  48 00 00 1C */	b lbl_8017052C
lbl_80170514:
/* 80170514 0016D474  A0 04 00 08 */	lhz r0, 8(r4)
/* 80170518 0016D478  7C 00 18 50 */	subf r0, r0, r3
/* 8017051C 0016D47C  7C 00 00 34 */	cntlzw r0, r0
/* 80170520 0016D480  54 03 D9 7E */	srwi r3, r0, 5
/* 80170524 0016D484  48 00 00 08 */	b lbl_8017052C
lbl_80170528:
/* 80170528 0016D488  38 60 00 00 */	li r3, 0
lbl_8017052C:
/* 8017052C 0016D48C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80170530 0016D490  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80170534 0016D494  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 80170538 0016D498  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8017053C 0016D49C  7C 08 03 A6 */	mtlr r0
/* 80170540 0016D4A0  38 21 00 50 */	addi r1, r1, 0x50
/* 80170544 0016D4A4  4E 80 00 20 */	blr

.global InDetectionRange__8CMetroidFR13CStateManagerf
InDetectionRange__8CMetroidFR13CStateManagerf:
/* 80170548 0016D4A8  94 21 F7 50 */	stwu r1, -0x8b0(r1)
/* 8017054C 0016D4AC  7C 08 02 A6 */	mflr r0
/* 80170550 0016D4B0  90 01 08 B4 */	stw r0, 0x8b4(r1)
/* 80170554 0016D4B4  BF 61 08 9C */	stmw r27, 0x89c(r1)
/* 80170558 0016D4B8  7C 7E 1B 78 */	mr r30, r3
/* 8017055C 0016D4BC  7C 9F 23 78 */	mr r31, r4
/* 80170560 0016D4C0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80170564 0016D4C4  A0 C3 07 B0 */	lhz r6, 0x7b0(r3)
/* 80170568 0016D4C8  7C 06 00 40 */	cmplw r6, r0
/* 8017056C 0016D4CC  40 82 02 28 */	bne lbl_80170794
/* 80170570 0016D4D0  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 80170574 0016D4D4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80170578 0016D4D8  40 82 00 10 */	bne lbl_80170588
/* 8017057C 0016D4DC  48 08 5D F1 */	bl InDetectionRange__10CPatternedFR13CStateManagerf
/* 80170580 0016D4E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170584 0016D4E4  41 82 00 34 */	beq lbl_801705B8
lbl_80170588:
/* 80170588 0016D4E8  7F C3 F3 78 */	mr r3, r30
/* 8017058C 0016D4EC  7F E4 FB 78 */	mr r4, r31
/* 80170590 0016D4F0  4B FF 9B F1 */	bl sub_8016a180
/* 80170594 0016D4F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170598 0016D4F8  40 82 00 20 */	bne lbl_801705B8
/* 8017059C 0016D4FC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801705A0 0016D500  80 1E 00 04 */	lwz r0, 4(r30)
/* 801705A4 0016D504  80 63 00 04 */	lwz r3, 4(r3)
/* 801705A8 0016D508  7C 03 00 00 */	cmpw r3, r0
/* 801705AC 0016D50C  40 82 00 0C */	bne lbl_801705B8
/* 801705B0 0016D510  38 60 00 01 */	li r3, 1
/* 801705B4 0016D514  48 00 02 B0 */	b lbl_80170864
lbl_801705B8:
/* 801705B8 0016D518  C0 FE 03 BC */	lfs f7, 0x3bc(r30)
/* 801705BC 0016D51C  38 61 00 70 */	addi r3, r1, 0x70
/* 801705C0 0016D520  C0 DE 00 60 */	lfs f6, 0x60(r30)
/* 801705C4 0016D524  38 81 00 30 */	addi r4, r1, 0x30
/* 801705C8 0016D528  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 801705CC 0016D52C  38 A1 00 24 */	addi r5, r1, 0x24
/* 801705D0 0016D530  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801705D4 0016D534  EC 06 38 2A */	fadds f0, f6, f7
/* 801705D8 0016D538  EC 65 38 2A */	fadds f3, f5, f7
/* 801705DC 0016D53C  EC 81 38 2A */	fadds f4, f1, f7
/* 801705E0 0016D540  EC 41 38 28 */	fsubs f2, f1, f7
/* 801705E4 0016D544  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801705E8 0016D548  EC 25 38 28 */	fsubs f1, f5, f7
/* 801705EC 0016D54C  EC 06 38 28 */	fsubs f0, f6, f7
/* 801705F0 0016D550  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801705F4 0016D554  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 801705F8 0016D558  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801705FC 0016D55C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80170600 0016D560  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80170604 0016D564  48 1C 7F 05 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80170608 0016D568  80 AD 8D B0 */	lwz r5, lbl_805A7970@sda21(r13)
/* 8017060C 0016D56C  38 60 00 00 */	li r3, 0
/* 80170610 0016D570  38 80 00 01 */	li r4, 1
/* 80170614 0016D574  48 21 98 E1 */	bl __shl2i
/* 80170618 0016D578  38 00 00 00 */	li r0, 0
/* 8017061C 0016D57C  39 00 00 01 */	li r8, 1
/* 80170620 0016D580  90 81 00 5C */	stw r4, 0x5c(r1)
/* 80170624 0016D584  38 81 00 88 */	addi r4, r1, 0x88
/* 80170628 0016D588  38 A1 00 70 */	addi r5, r1, 0x70
/* 8017062C 0016D58C  38 C1 00 58 */	addi r6, r1, 0x58
/* 80170630 0016D590  90 61 00 58 */	stw r3, 0x58(r1)
/* 80170634 0016D594  7F E3 FB 78 */	mr r3, r31
/* 80170638 0016D598  38 E0 00 00 */	li r7, 0
/* 8017063C 0016D59C  91 01 00 50 */	stw r8, 0x50(r1)
/* 80170640 0016D5A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80170644 0016D5A4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80170648 0016D5A8  91 01 00 68 */	stw r8, 0x68(r1)
/* 8017064C 0016D5AC  90 01 00 88 */	stw r0, 0x88(r1)
/* 80170650 0016D5B0  4B ED C0 D1 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 80170654 0016D5B4  80 01 00 88 */	lwz r0, 0x88(r1)
/* 80170658 0016D5B8  2C 00 00 00 */	cmpwi r0, 0
/* 8017065C 0016D5BC  41 82 00 E0 */	beq lbl_8017073C
/* 80170660 0016D5C0  3B A1 00 8C */	addi r29, r1, 0x8c
/* 80170664 0016D5C4  7F BC EB 78 */	mr r28, r29
/* 80170668 0016D5C8  48 00 00 C0 */	b lbl_80170728
lbl_8017066C:
/* 8017066C 0016D5CC  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80170670 0016D5D0  7F E3 FB 78 */	mr r3, r31
/* 80170674 0016D5D4  38 81 00 14 */	addi r4, r1, 0x14
/* 80170678 0016D5D8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8017067C 0016D5DC  4B ED BE F9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80170680 0016D5E0  7C 64 1B 78 */	mr r4, r3
/* 80170684 0016D5E4  38 61 00 18 */	addi r3, r1, 0x18
/* 80170688 0016D5E8  4B F3 4D 49 */	bl sub_800a53d0
/* 8017068C 0016D5EC  4B F3 4D 19 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 80170690 0016D5F0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80170694 0016D5F4  41 82 00 90 */	beq lbl_80170724
/* 80170698 0016D5F8  7F C3 F3 78 */	mr r3, r30
/* 8017069C 0016D5FC  7F 64 DB 78 */	mr r4, r27
/* 801706A0 0016D600  7F E5 FB 78 */	mr r5, r31
/* 801706A4 0016D604  4B FF DA D5 */	bl sub_8016e178
/* 801706A8 0016D608  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801706AC 0016D60C  41 82 00 78 */	beq lbl_80170724
/* 801706B0 0016D610  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801706B4 0016D614  7F 63 DB 78 */	mr r3, r27
/* 801706B8 0016D618  38 81 00 10 */	addi r4, r1, 0x10
/* 801706BC 0016D61C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801706C0 0016D620  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801706C4 0016D624  4B FB 91 7D */	bl SetAttackTarget__12CSpacePirateF9TUniqueId
/* 801706C8 0016D628  80 A1 00 88 */	lwz r5, 0x88(r1)
/* 801706CC 0016D62C  38 60 00 00 */	li r3, 0
/* 801706D0 0016D630  2C 05 00 00 */	cmpwi r5, 0
/* 801706D4 0016D634  40 81 00 40 */	ble lbl_80170714
/* 801706D8 0016D638  2C 05 00 08 */	cmpwi r5, 8
/* 801706DC 0016D63C  38 85 FF F8 */	addi r4, r5, -8
/* 801706E0 0016D640  40 81 00 20 */	ble lbl_80170700
/* 801706E4 0016D644  38 04 00 07 */	addi r0, r4, 7
/* 801706E8 0016D648  54 00 E8 FE */	srwi r0, r0, 3
/* 801706EC 0016D64C  7C 09 03 A6 */	mtctr r0
/* 801706F0 0016D650  2C 04 00 00 */	cmpwi r4, 0
/* 801706F4 0016D654  40 81 00 0C */	ble lbl_80170700
lbl_801706F8:
/* 801706F8 0016D658  38 63 00 08 */	addi r3, r3, 8
/* 801706FC 0016D65C  42 00 FF FC */	bdnz lbl_801706F8
lbl_80170700:
/* 80170700 0016D660  7C 03 28 50 */	subf r0, r3, r5
/* 80170704 0016D664  7C 09 03 A6 */	mtctr r0
/* 80170708 0016D668  7C 03 28 00 */	cmpw r3, r5
/* 8017070C 0016D66C  40 80 00 08 */	bge lbl_80170714
lbl_80170710:
/* 80170710 0016D670  42 00 00 00 */	bdnz lbl_80170710
lbl_80170714:
/* 80170714 0016D674  38 00 00 00 */	li r0, 0
/* 80170718 0016D678  38 60 00 01 */	li r3, 1
/* 8017071C 0016D67C  90 01 00 88 */	stw r0, 0x88(r1)
/* 80170720 0016D680  48 00 01 44 */	b lbl_80170864
lbl_80170724:
/* 80170724 0016D684  3B 9C 00 02 */	addi r28, r28, 2
lbl_80170728:
/* 80170728 0016D688  80 01 00 88 */	lwz r0, 0x88(r1)
/* 8017072C 0016D68C  54 00 08 3C */	slwi r0, r0, 1
/* 80170730 0016D690  7C 1D 02 14 */	add r0, r29, r0
/* 80170734 0016D694  7C 1C 00 40 */	cmplw r28, r0
/* 80170738 0016D698  40 82 FF 34 */	bne lbl_8017066C
lbl_8017073C:
/* 8017073C 0016D69C  80 A1 00 88 */	lwz r5, 0x88(r1)
/* 80170740 0016D6A0  38 60 00 00 */	li r3, 0
/* 80170744 0016D6A4  2C 05 00 00 */	cmpwi r5, 0
/* 80170748 0016D6A8  40 81 00 40 */	ble lbl_80170788
/* 8017074C 0016D6AC  2C 05 00 08 */	cmpwi r5, 8
/* 80170750 0016D6B0  38 85 FF F8 */	addi r4, r5, -8
/* 80170754 0016D6B4  40 81 00 20 */	ble lbl_80170774
/* 80170758 0016D6B8  38 04 00 07 */	addi r0, r4, 7
/* 8017075C 0016D6BC  54 00 E8 FE */	srwi r0, r0, 3
/* 80170760 0016D6C0  7C 09 03 A6 */	mtctr r0
/* 80170764 0016D6C4  2C 04 00 00 */	cmpwi r4, 0
/* 80170768 0016D6C8  40 81 00 0C */	ble lbl_80170774
lbl_8017076C:
/* 8017076C 0016D6CC  38 63 00 08 */	addi r3, r3, 8
/* 80170770 0016D6D0  42 00 FF FC */	bdnz lbl_8017076C
lbl_80170774:
/* 80170774 0016D6D4  7C 03 28 50 */	subf r0, r3, r5
/* 80170778 0016D6D8  7C 09 03 A6 */	mtctr r0
/* 8017077C 0016D6DC  7C 03 28 00 */	cmpw r3, r5
/* 80170780 0016D6E0  40 80 00 08 */	bge lbl_80170788
lbl_80170784:
/* 80170784 0016D6E4  42 00 00 00 */	bdnz lbl_80170784
lbl_80170788:
/* 80170788 0016D6E8  38 00 00 00 */	li r0, 0
/* 8017078C 0016D6EC  90 01 00 88 */	stw r0, 0x88(r1)
/* 80170790 0016D6F0  48 00 00 D0 */	b lbl_80170860
lbl_80170794:
/* 80170794 0016D6F4  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80170798 0016D6F8  A0 05 00 08 */	lhz r0, 8(r5)
/* 8017079C 0016D6FC  7C 06 00 40 */	cmplw r6, r0
/* 801707A0 0016D700  40 82 00 2C */	bne lbl_801707CC
/* 801707A4 0016D704  4B FF 99 DD */	bl sub_8016a180
/* 801707A8 0016D708  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801707AC 0016D70C  40 82 00 18 */	bne lbl_801707C4
/* 801707B0 0016D710  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801707B4 0016D714  80 1E 00 04 */	lwz r0, 4(r30)
/* 801707B8 0016D718  80 63 00 04 */	lwz r3, 4(r3)
/* 801707BC 0016D71C  7C 03 00 00 */	cmpw r3, r0
/* 801707C0 0016D720  41 82 00 0C */	beq lbl_801707CC
lbl_801707C4:
/* 801707C4 0016D724  38 60 00 00 */	li r3, 0
/* 801707C8 0016D728  48 00 00 9C */	b lbl_80170864
lbl_801707CC:
/* 801707CC 0016D72C  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 801707D0 0016D730  7F E3 FB 78 */	mr r3, r31
/* 801707D4 0016D734  38 81 00 08 */	addi r4, r1, 8
/* 801707D8 0016D738  B0 01 00 08 */	sth r0, 8(r1)
/* 801707DC 0016D73C  4B ED BD C9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801707E0 0016D740  7C 64 1B 78 */	mr r4, r3
/* 801707E4 0016D744  38 61 00 1C */	addi r3, r1, 0x1c
/* 801707E8 0016D748  4B F3 F4 A9 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801707EC 0016D74C  80 63 00 04 */	lwz r3, 4(r3)
/* 801707F0 0016D750  28 03 00 00 */	cmplwi r3, 0
/* 801707F4 0016D754  41 82 00 6C */	beq lbl_80170860
/* 801707F8 0016D758  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801707FC 0016D75C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80170800 0016D760  C0 5E 03 BC */	lfs f2, 0x3bc(r30)
/* 80170804 0016D764  EC A1 00 28 */	fsubs f5, f1, f0
/* 80170808 0016D768  C0 83 00 40 */	lfs f4, 0x40(r3)
/* 8017080C 0016D76C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80170810 0016D770  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80170814 0016D774  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80170818 0016D778  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8017081C 0016D77C  EC 64 18 28 */	fsubs f3, f4, f3
/* 80170820 0016D780  C0 9E 03 C0 */	lfs f4, 0x3c0(r30)
/* 80170824 0016D784  EC 42 08 28 */	fsubs f2, f2, f1
/* 80170828 0016D788  EC 25 01 72 */	fmuls f1, f5, f5
/* 8017082C 0016D78C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80170830 0016D790  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 80170834 0016D794  EC 22 08 2A */	fadds f1, f2, f1
/* 80170838 0016D798  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017083C 0016D79C  40 80 00 24 */	bge lbl_80170860
/* 80170840 0016D7A0  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 80170844 0016D7A4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80170848 0016D7A8  40 81 00 18 */	ble lbl_80170860
/* 8017084C 0016D7AC  EC 04 01 32 */	fmuls f0, f4, f4
/* 80170850 0016D7B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80170854 0016D7B4  7C 00 00 26 */	mfcr r0
/* 80170858 0016D7B8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8017085C 0016D7BC  48 00 00 08 */	b lbl_80170864
lbl_80170860:
/* 80170860 0016D7C0  38 60 00 00 */	li r3, 0
lbl_80170864:
/* 80170864 0016D7C4  BB 61 08 9C */	lmw r27, 0x89c(r1)
/* 80170868 0016D7C8  80 01 08 B4 */	lwz r0, 0x8b4(r1)
/* 8017086C 0016D7CC  7C 08 03 A6 */	mtlr r0
/* 80170870 0016D7D0  38 21 08 B0 */	addi r1, r1, 0x8b0
/* 80170874 0016D7D4  4E 80 00 20 */	blr

.global InRange__8CMetroidFR13CStateManagerf
InRange__8CMetroidFR13CStateManagerf:
/* 80170878 0016D7D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8017087C 0016D7DC  7C 08 02 A6 */	mflr r0
/* 80170880 0016D7E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80170884 0016D7E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80170888 0016D7E8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8017088C 0016D7EC  7C 9E 23 78 */	mr r30, r4
/* 80170890 0016D7F0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80170894 0016D7F4  7C 7D 1B 78 */	mr r29, r3
/* 80170898 0016D7F8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8017089C 0016D7FC  A0 63 07 B0 */	lhz r3, 0x7b0(r3)
/* 801708A0 0016D800  7C 03 00 40 */	cmplw r3, r0
/* 801708A4 0016D804  41 82 00 CC */	beq lbl_80170970
/* 801708A8 0016D808  A0 1D 07 B0 */	lhz r0, 0x7b0(r29)
/* 801708AC 0016D80C  7F C3 F3 78 */	mr r3, r30
/* 801708B0 0016D810  38 81 00 08 */	addi r4, r1, 8
/* 801708B4 0016D814  B0 01 00 08 */	sth r0, 8(r1)
/* 801708B8 0016D818  4B ED BC ED */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801708BC 0016D81C  7C 64 1B 78 */	mr r4, r3
/* 801708C0 0016D820  38 61 00 10 */	addi r3, r1, 0x10
/* 801708C4 0016D824  4B F3 F3 CD */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801708C8 0016D828  83 E3 00 04 */	lwz r31, 4(r3)
/* 801708CC 0016D82C  28 1F 00 00 */	cmplwi r31, 0
/* 801708D0 0016D830  41 82 00 A0 */	beq lbl_80170970
/* 801708D4 0016D834  7F E4 FB 78 */	mr r4, r31
/* 801708D8 0016D838  38 61 00 0C */	addi r3, r1, 0xc
/* 801708DC 0016D83C  4B F3 4A F5 */	bl sub_800a53d0
/* 801708E0 0016D840  4B F3 4A C5 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 801708E4 0016D844  7C 64 1B 79 */	or. r4, r3, r3
/* 801708E8 0016D848  41 82 00 20 */	beq lbl_80170908
/* 801708EC 0016D84C  7F A3 EB 78 */	mr r3, r29
/* 801708F0 0016D850  7F C5 F3 78 */	mr r5, r30
/* 801708F4 0016D854  4B FF D8 85 */	bl sub_8016e178
/* 801708F8 0016D858  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801708FC 0016D85C  40 82 00 0C */	bne lbl_80170908
/* 80170900 0016D860  38 60 00 00 */	li r3, 0
/* 80170904 0016D864  48 00 00 70 */	b lbl_80170974
lbl_80170908:
/* 80170908 0016D868  C0 FF 00 50 */	lfs f7, 0x50(r31)
/* 8017090C 0016D86C  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80170910 0016D870  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80170914 0016D874  EC C7 00 28 */	fsubs f6, f7, f0
/* 80170918 0016D878  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8017091C 0016D87C  C1 1F 00 60 */	lfs f8, 0x60(r31)
/* 80170920 0016D880  EC 83 00 28 */	fsubs f4, f3, f0
/* 80170924 0016D884  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80170928 0016D888  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8017092C 0016D88C  EC A8 00 28 */	fsubs f5, f8, f0
/* 80170930 0016D890  C0 1D 03 00 */	lfs f0, 0x300(r29)
/* 80170934 0016D894  EC 44 01 32 */	fmuls f2, f4, f4
/* 80170938 0016D898  EC 00 00 32 */	fmuls f0, f0, f0
/* 8017093C 0016D89C  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80170940 0016D8A0  EC 65 01 72 */	fmuls f3, f5, f5
/* 80170944 0016D8A4  EC 22 08 2A */	fadds f1, f2, f1
/* 80170948 0016D8A8  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 8017094C 0016D8AC  D1 01 00 20 */	stfs f8, 0x20(r1)
/* 80170950 0016D8B0  EC 23 08 2A */	fadds f1, f3, f1
/* 80170954 0016D8B4  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80170958 0016D8B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017095C 0016D8BC  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80170960 0016D8C0  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 80170964 0016D8C4  7C 00 00 26 */	mfcr r0
/* 80170968 0016D8C8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8017096C 0016D8CC  48 00 00 08 */	b lbl_80170974
lbl_80170970:
/* 80170970 0016D8D0  38 60 00 00 */	li r3, 0
lbl_80170974:
/* 80170974 0016D8D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80170978 0016D8D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8017097C 0016D8DC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80170980 0016D8E0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80170984 0016D8E4  7C 08 03 A6 */	mtlr r0
/* 80170988 0016D8E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8017098C 0016D8EC  4E 80 00 20 */	blr

.global InPosition__8CMetroidFR13CStateManagerf
InPosition__8CMetroidFR13CStateManagerf:
/* 80170990 0016D8F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80170994 0016D8F4  7C 08 02 A6 */	mflr r0
/* 80170998 0016D8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017099C 0016D8FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801709A0 0016D900  7C 7F 1B 78 */	mr r31, r3
/* 801709A4 0016D904  81 83 00 00 */	lwz r12, 0(r3)
/* 801709A8 0016D908  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801709AC 0016D90C  7D 89 03 A6 */	mtctr r12
/* 801709B0 0016D910  4E 80 04 21 */	bctrl
/* 801709B4 0016D914  28 03 00 00 */	cmplwi r3, 0
/* 801709B8 0016D918  41 82 00 38 */	beq lbl_801709F0
/* 801709BC 0016D91C  7F E3 FB 78 */	mr r3, r31
/* 801709C0 0016D920  81 9F 00 00 */	lwz r12, 0(r31)
/* 801709C4 0016D924  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801709C8 0016D928  7D 89 03 A6 */	mtctr r12
/* 801709CC 0016D92C  4E 80 04 21 */	bctrl
/* 801709D0 0016D930  80 A3 00 C8 */	lwz r5, 0xc8(r3)
/* 801709D4 0016D934  80 63 00 04 */	lwz r3, 4(r3)
/* 801709D8 0016D938  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 801709DC 0016D93C  38 03 FF FF */	addi r0, r3, -1
/* 801709E0 0016D940  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801709E4 0016D944  7C 00 28 10 */	subfc r0, r0, r5
/* 801709E8 0016D948  7C 64 19 14 */	adde r3, r4, r3
/* 801709EC 0016D94C  48 00 00 44 */	b lbl_80170A30
lbl_801709F0:
/* 801709F0 0016D950  C0 3F 07 A8 */	lfs f1, 0x7a8(r31)
/* 801709F4 0016D954  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801709F8 0016D958  C0 7F 07 A4 */	lfs f3, 0x7a4(r31)
/* 801709FC 0016D95C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80170A00 0016D960  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80170A04 0016D964  C0 5F 07 AC */	lfs f2, 0x7ac(r31)
/* 80170A08 0016D968  EC 63 00 28 */	fsubs f3, f3, f0
/* 80170A0C 0016D96C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80170A10 0016D970  EC 21 00 72 */	fmuls f1, f1, f1
/* 80170A14 0016D974  EC 42 00 28 */	fsubs f2, f2, f0
/* 80170A18 0016D978  C0 02 A0 DC */	lfs f0, lbl_805ABDFC@sda21(r2)
/* 80170A1C 0016D97C  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 80170A20 0016D980  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80170A24 0016D984  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170A28 0016D988  7C 00 00 26 */	mfcr r0
/* 80170A2C 0016D98C  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80170A30:
/* 80170A30 0016D990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80170A34 0016D994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80170A38 0016D998  7C 08 03 A6 */	mtlr r0
/* 80170A3C 0016D99C  38 21 00 10 */	addi r1, r1, 0x10
/* 80170A40 0016D9A0  4E 80 00 20 */	blr

.global InAttackPosition__8CMetroidFR13CStateManagerf
InAttackPosition__8CMetroidFR13CStateManagerf:
/* 80170A44 0016D9A4  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80170A48 0016D9A8  7C 08 02 A6 */	mflr r0
/* 80170A4C 0016D9AC  90 01 01 54 */	stw r0, 0x154(r1)
/* 80170A50 0016D9B0  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80170A54 0016D9B4  F3 E1 01 48 */	psq_st f31, 328(r1), 0, qr0
/* 80170A58 0016D9B8  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 80170A5C 0016D9BC  F3 C1 01 38 */	psq_st f30, 312(r1), 0, qr0
/* 80170A60 0016D9C0  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 80170A64 0016D9C4  F3 A1 01 28 */	psq_st f29, 296(r1), 0, qr0
/* 80170A68 0016D9C8  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 80170A6C 0016D9CC  F3 81 01 18 */	psq_st f28, 280(r1), 0, qr0
/* 80170A70 0016D9D0  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 80170A74 0016D9D4  F3 61 01 08 */	psq_st f27, 264(r1), 0, qr0
/* 80170A78 0016D9D8  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 80170A7C 0016D9DC  F3 41 00 F8 */	psq_st f26, 248(r1), 0, qr0
/* 80170A80 0016D9E0  93 E1 00 EC */	stw r31, 0xec(r1)
/* 80170A84 0016D9E4  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 80170A88 0016D9E8  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 80170A8C 0016D9EC  93 81 00 E0 */	stw r28, 0xe0(r1)
/* 80170A90 0016D9F0  7C 7E 1B 78 */	mr r30, r3
/* 80170A94 0016D9F4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80170A98 0016D9F8  A0 63 07 B0 */	lhz r3, 0x7b0(r3)
/* 80170A9C 0016D9FC  7C 9F 23 78 */	mr r31, r4
/* 80170AA0 0016DA00  7C 03 00 40 */	cmplw r3, r0
/* 80170AA4 0016DA04  41 82 02 DC */	beq lbl_80170D80
/* 80170AA8 0016DA08  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 80170AAC 0016DA0C  7F E3 FB 78 */	mr r3, r31
/* 80170AB0 0016DA10  38 81 00 08 */	addi r4, r1, 8
/* 80170AB4 0016DA14  B0 01 00 08 */	sth r0, 8(r1)
/* 80170AB8 0016DA18  4B ED BA ED */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80170ABC 0016DA1C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80170AC0 0016DA20  41 82 02 C0 */	beq lbl_80170D80
/* 80170AC4 0016DA24  80 7D 00 04 */	lwz r3, 4(r29)
/* 80170AC8 0016DA28  80 1E 00 04 */	lwz r0, 4(r30)
/* 80170ACC 0016DA2C  7C 03 00 00 */	cmpw r3, r0
/* 80170AD0 0016DA30  40 82 02 B0 */	bne lbl_80170D80
/* 80170AD4 0016DA34  83 9F 08 4C */	lwz r28, 0x84c(r31)
/* 80170AD8 0016DA38  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80170ADC 0016DA3C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80170AE0 0016DA40  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80170AE4 0016DA44  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 80170AE8 0016DA48  EF A1 00 28 */	fsubs f29, f1, f0
/* 80170AEC 0016DA4C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80170AF0 0016DA50  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80170AF4 0016DA54  EF C3 10 28 */	fsubs f30, f3, f2
/* 80170AF8 0016DA58  A0 7C 00 08 */	lhz r3, 8(r28)
/* 80170AFC 0016DA5C  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 80170B00 0016DA60  EF E1 00 28 */	fsubs f31, f1, f0
/* 80170B04 0016DA64  C3 7D 00 48 */	lfs f27, 0x48(r29)
/* 80170B08 0016DA68  7C 03 00 40 */	cmplw r3, r0
/* 80170B0C 0016DA6C  C3 9D 00 38 */	lfs f28, 0x38(r29)
/* 80170B10 0016DA70  C3 42 A0 94 */	lfs f26, lbl_805ABDB4@sda21(r2)
/* 80170B14 0016DA74  40 82 00 3C */	bne lbl_80170B50
/* 80170B18 0016DA78  7F C3 F3 78 */	mr r3, r30
/* 80170B1C 0016DA7C  7F E4 FB 78 */	mr r4, r31
/* 80170B20 0016DA80  4B FF 96 61 */	bl sub_8016a180
/* 80170B24 0016DA84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170B28 0016DA88  41 82 00 0C */	beq lbl_80170B34
/* 80170B2C 0016DA8C  38 60 00 00 */	li r3, 0
/* 80170B30 0016DA90  48 00 02 54 */	b lbl_80170D84
lbl_80170B34:
/* 80170B34 0016DA94  80 1C 02 F8 */	lwz r0, 0x2f8(r28)
/* 80170B38 0016DA98  2C 00 00 01 */	cmpwi r0, 1
/* 80170B3C 0016DA9C  41 82 00 14 */	beq lbl_80170B50
/* 80170B40 0016DAA0  88 1E 09 BF */	lbz r0, 0x9bf(r30)
/* 80170B44 0016DAA4  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80170B48 0016DAA8  40 82 00 08 */	bne lbl_80170B50
/* 80170B4C 0016DAAC  C3 42 A0 FC */	lfs f26, lbl_805ABE1C@sda21(r2)
lbl_80170B50:
/* 80170B50 0016DAB0  FC 20 E0 90 */	fmr f1, f28
/* 80170B54 0016DAB4  38 61 00 0C */	addi r3, r1, 0xc
/* 80170B58 0016DAB8  FC 40 D8 90 */	fmr f2, f27
/* 80170B5C 0016DABC  48 1A 36 A5 */	bl __ct__9CVector2fFff
/* 80170B60 0016DAC0  FC 20 E8 90 */	fmr f1, f29
/* 80170B64 0016DAC4  38 61 00 14 */	addi r3, r1, 0x14
/* 80170B68 0016DAC8  FC 40 F0 90 */	fmr f2, f30
/* 80170B6C 0016DACC  48 1A 36 95 */	bl __ct__9CVector2fFff
/* 80170B70 0016DAD0  38 61 00 14 */	addi r3, r1, 0x14
/* 80170B74 0016DAD4  38 81 00 0C */	addi r4, r1, 0xc
/* 80170B78 0016DAD8  48 1A 34 4D */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 80170B7C 0016DADC  FC 01 D0 40 */	fcmpo cr0, f1, f26
/* 80170B80 0016DAE0  40 80 02 00 */	bge lbl_80170D80
/* 80170B84 0016DAE4  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 80170B88 0016DAE8  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80170B8C 0016DAEC  EC 3E 00 F2 */	fmuls f1, f30, f3
/* 80170B90 0016DAF0  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80170B94 0016DAF4  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 80170B98 0016DAF8  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80170B9C 0016DAFC  EC 3D 08 BA */	fmadds f1, f29, f2, f1
/* 80170BA0 0016DB00  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80170BA4 0016DB04  EC 3F 09 3A */	fmadds f1, f31, f4, f1
/* 80170BA8 0016DB08  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80170BAC 0016DB0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170BB0 0016DB10  40 80 01 D0 */	bge lbl_80170D80
/* 80170BB4 0016DB14  C0 FE 00 50 */	lfs f7, 0x50(r30)
/* 80170BB8 0016DB18  C0 1E 07 A8 */	lfs f0, 0x7a8(r30)
/* 80170BBC 0016DB1C  C1 1E 00 40 */	lfs f8, 0x40(r30)
/* 80170BC0 0016DB20  EC A0 38 28 */	fsubs f5, f0, f7
/* 80170BC4 0016DB24  C0 1E 07 A4 */	lfs f0, 0x7a4(r30)
/* 80170BC8 0016DB28  C0 DE 00 60 */	lfs f6, 0x60(r30)
/* 80170BCC 0016DB2C  EC 60 40 28 */	fsubs f3, f0, f8
/* 80170BD0 0016DB30  C0 1E 07 AC */	lfs f0, 0x7ac(r30)
/* 80170BD4 0016DB34  EC 25 01 72 */	fmuls f1, f5, f5
/* 80170BD8 0016DB38  EC 80 30 28 */	fsubs f4, f0, f6
/* 80170BDC 0016DB3C  C0 1E 03 00 */	lfs f0, 0x300(r30)
/* 80170BE0 0016DB40  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80170BE4 0016DB44  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80170BE8 0016DB48  EC 00 00 32 */	fmuls f0, f0, f0
/* 80170BEC 0016DB4C  EC 64 01 32 */	fmuls f3, f4, f4
/* 80170BF0 0016DB50  EC 22 08 2A */	fadds f1, f2, f1
/* 80170BF4 0016DB54  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 80170BF8 0016DB58  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80170BFC 0016DB5C  EC 23 08 2A */	fadds f1, f3, f1
/* 80170C00 0016DB60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170C04 0016DB64  7C 00 00 26 */	mfcr r0
/* 80170C08 0016DB68  54 1C 0F FF */	rlwinm. r28, r0, 1, 0x1f, 0x1f
/* 80170C0C 0016DB6C  41 82 01 6C */	beq lbl_80170D78
/* 80170C10 0016DB70  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80170C14 0016DB74  38 60 00 00 */	li r3, 0
/* 80170C18 0016DB78  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80170C1C 0016DB7C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80170C20 0016DB80  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 80170C24 0016DB84  D1 01 00 34 */	stfs f8, 0x34(r1)
/* 80170C28 0016DB88  D0 E1 00 38 */	stfs f7, 0x38(r1)
/* 80170C2C 0016DB8C  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 80170C30 0016DB90  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80170C34 0016DB94  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80170C38 0016DB98  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80170C3C 0016DB9C  40 81 00 1C */	ble lbl_80170C58
/* 80170C40 0016DBA0  C0 22 A0 88 */	lfs f1, lbl_805ABDA8@sda21(r2)
/* 80170C44 0016DBA4  C0 1E 07 AC */	lfs f0, 0x7ac(r30)
/* 80170C48 0016DBA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80170C4C 0016DBAC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80170C50 0016DBB0  40 80 00 08 */	bge lbl_80170C58
/* 80170C54 0016DBB4  38 60 00 01 */	li r3, 1
lbl_80170C58:
/* 80170C58 0016DBB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170C5C 0016DBBC  7C 7C 1B 78 */	mr r28, r3
/* 80170C60 0016DBC0  41 82 01 18 */	beq lbl_80170D78
/* 80170C64 0016DBC4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80170C68 0016DBC8  7F C4 F3 78 */	mr r4, r30
/* 80170C6C 0016DBCC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80170C70 0016DBD0  7F E5 FB 78 */	mr r5, r31
/* 80170C74 0016DBD4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80170C78 0016DBD8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80170C7C 0016DBDC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80170C80 0016DBE0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80170C84 0016DBE4  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80170C88 0016DBE8  4B FF D3 35 */	bl sub_8016dfbc
/* 80170C8C 0016DBEC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80170C90 0016DBF0  38 61 00 64 */	addi r3, r1, 0x64
/* 80170C94 0016DBF4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80170C98 0016DBF8  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80170C9C 0016DBFC  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 80170CA0 0016DC00  EC 81 00 28 */	fsubs f4, f1, f0
/* 80170CA4 0016DC04  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80170CA8 0016DC08  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80170CAC 0016DC0C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80170CB0 0016DC10  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 80170CB4 0016DC14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80170CB8 0016DC18  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80170CBC 0016DC1C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80170CC0 0016DC20  48 1A 3A 39 */	bl CanBeNormalized__9CVector3fCFv
/* 80170CC4 0016DC24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170CC8 0016DC28  41 82 00 B0 */	beq lbl_80170D78
/* 80170CCC 0016DC2C  80 AD 8D A8 */	lwz r5, lbl_805A7968@sda21(r13)
/* 80170CD0 0016DC30  38 60 00 00 */	li r3, 0
/* 80170CD4 0016DC34  38 80 00 01 */	li r4, 1
/* 80170CD8 0016DC38  48 21 92 1D */	bl __shl2i
/* 80170CDC 0016DC3C  80 AD 8D AC */	lwz r5, lbl_805A796C@sda21(r13)
/* 80170CE0 0016DC40  7C 9D 23 78 */	mr r29, r4
/* 80170CE4 0016DC44  7C 7C 1B 78 */	mr r28, r3
/* 80170CE8 0016DC48  38 60 00 00 */	li r3, 0
/* 80170CEC 0016DC4C  38 80 00 01 */	li r4, 1
/* 80170CF0 0016DC50  48 21 92 05 */	bl __shl2i
/* 80170CF4 0016DC54  7F 9C 1B 78 */	or r28, r28, r3
/* 80170CF8 0016DC58  38 A0 00 01 */	li r5, 1
/* 80170CFC 0016DC5C  38 00 00 00 */	li r0, 0
/* 80170D00 0016DC60  7F BD 23 78 */	or r29, r29, r4
/* 80170D04 0016DC64  90 A1 00 90 */	stw r5, 0x90(r1)
/* 80170D08 0016DC68  38 61 00 64 */	addi r3, r1, 0x64
/* 80170D0C 0016DC6C  93 A1 00 9C */	stw r29, 0x9c(r1)
/* 80170D10 0016DC70  93 81 00 98 */	stw r28, 0x98(r1)
/* 80170D14 0016DC74  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80170D18 0016DC78  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80170D1C 0016DC7C  90 A1 00 A8 */	stw r5, 0xa8(r1)
/* 80170D20 0016DC80  48 1A 3B 99 */	bl Magnitude__9CVector3fCFv
/* 80170D24 0016DC84  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 80170D28 0016DC88  7F E4 FB 78 */	mr r4, r31
/* 80170D2C 0016DC8C  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 80170D30 0016DC90  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80170D34 0016DC94  EC 80 08 24 */	fdivs f4, f0, f1
/* 80170D38 0016DC98  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 80170D3C 0016DC9C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80170D40 0016DCA0  38 A1 00 70 */	addi r5, r1, 0x70
/* 80170D44 0016DCA4  38 C1 00 58 */	addi r6, r1, 0x58
/* 80170D48 0016DCA8  38 E1 00 98 */	addi r7, r1, 0x98
/* 80170D4C 0016DCAC  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80170D50 0016DCB0  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80170D54 0016DCB4  EC 04 00 32 */	fmuls f0, f4, f0
/* 80170D58 0016DCB8  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80170D5C 0016DCBC  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80170D60 0016DCC0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80170D64 0016DCC4  4B ED C2 35 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80170D68 0016DCC8  88 01 00 D0 */	lbz r0, 0xd0(r1)
/* 80170D6C 0016DCCC  7C 00 00 34 */	cntlzw r0, r0
/* 80170D70 0016DCD0  54 00 D9 7E */	srwi r0, r0, 5
/* 80170D74 0016DCD4  7C 1C 03 78 */	mr r28, r0
lbl_80170D78:
/* 80170D78 0016DCD8  7F 83 E3 78 */	mr r3, r28
/* 80170D7C 0016DCDC  48 00 00 08 */	b lbl_80170D84
lbl_80170D80:
/* 80170D80 0016DCE0  38 60 00 00 */	li r3, 0
lbl_80170D84:
/* 80170D84 0016DCE4  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 80170D88 0016DCE8  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80170D8C 0016DCEC  E3 C1 01 38 */	psq_l f30, 312(r1), 0, qr0
/* 80170D90 0016DCF0  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 80170D94 0016DCF4  E3 A1 01 28 */	psq_l f29, 296(r1), 0, qr0
/* 80170D98 0016DCF8  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 80170D9C 0016DCFC  E3 81 01 18 */	psq_l f28, 280(r1), 0, qr0
/* 80170DA0 0016DD00  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 80170DA4 0016DD04  E3 61 01 08 */	psq_l f27, 264(r1), 0, qr0
/* 80170DA8 0016DD08  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 80170DAC 0016DD0C  E3 41 00 F8 */	psq_l f26, 248(r1), 0, qr0
/* 80170DB0 0016DD10  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 80170DB4 0016DD14  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 80170DB8 0016DD18  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 80170DBC 0016DD1C  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 80170DC0 0016DD20  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80170DC4 0016DD24  83 81 00 E0 */	lwz r28, 0xe0(r1)
/* 80170DC8 0016DD28  7C 08 03 A6 */	mtlr r0
/* 80170DCC 0016DD2C  38 21 01 50 */	addi r1, r1, 0x150
/* 80170DD0 0016DD30  4E 80 00 20 */	blr

.global ShouldAttack__8CMetroidFR13CStateManagerf
ShouldAttack__8CMetroidFR13CStateManagerf:
/* 80170DD4 0016DD34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80170DD8 0016DD38  7C 08 02 A6 */	mflr r0
/* 80170DDC 0016DD3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80170DE0 0016DD40  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80170DE4 0016DD44  7C 9F 23 78 */	mr r31, r4
/* 80170DE8 0016DD48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80170DEC 0016DD4C  7C 7E 1B 78 */	mr r30, r3
/* 80170DF0 0016DD50  4B FF 91 D9 */	bl sub_80169fc8
/* 80170DF4 0016DD54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170DF8 0016DD58  41 82 00 50 */	beq lbl_80170E48
/* 80170DFC 0016DD5C  A0 1E 06 98 */	lhz r0, 0x698(r30)
/* 80170E00 0016DD60  7F E3 FB 78 */	mr r3, r31
/* 80170E04 0016DD64  38 81 00 10 */	addi r4, r1, 0x10
/* 80170E08 0016DD68  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80170E0C 0016DD6C  4B ED B7 69 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80170E10 0016DD70  7C 64 1B 78 */	mr r4, r3
/* 80170E14 0016DD74  38 61 00 14 */	addi r3, r1, 0x14
/* 80170E18 0016DD78  4B F3 67 5D */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 80170E1C 0016DD7C  80 63 00 04 */	lwz r3, 4(r3)
/* 80170E20 0016DD80  28 03 00 00 */	cmplwi r3, 0
/* 80170E24 0016DD84  41 82 00 1C */	beq lbl_80170E40
/* 80170E28 0016DD88  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80170E2C 0016DD8C  38 81 00 0C */	addi r4, r1, 0xc
/* 80170E30 0016DD90  B0 01 00 08 */	sth r0, 8(r1)
/* 80170E34 0016DD94  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80170E38 0016DD98  48 0C 7E 75 */	bl AddMeleeAttacker__10CTeamAiMgrF9TUniqueId
/* 80170E3C 0016DD9C  48 00 00 10 */	b lbl_80170E4C
lbl_80170E40:
/* 80170E40 0016DDA0  38 60 00 01 */	li r3, 1
/* 80170E44 0016DDA4  48 00 00 08 */	b lbl_80170E4C
lbl_80170E48:
/* 80170E48 0016DDA8  38 60 00 00 */	li r3, 0
lbl_80170E4C:
/* 80170E4C 0016DDAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80170E50 0016DDB0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80170E54 0016DDB4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80170E58 0016DDB8  7C 08 03 A6 */	mtlr r0
/* 80170E5C 0016DDBC  38 21 00 30 */	addi r1, r1, 0x30
/* 80170E60 0016DDC0  4E 80 00 20 */	blr

.global ShotAt__8CMetroidFR13CStateManagerf
ShotAt__8CMetroidFR13CStateManagerf:
/* 80170E64 0016DDC4  88 03 09 BF */	lbz r0, 0x9bf(r3)
/* 80170E68 0016DDC8  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 80170E6C 0016DDCC  4E 80 00 20 */	blr

.global Attacked__8CMetroidFR13CStateManagerf
Attacked__8CMetroidFR13CStateManagerf:
/* 80170E70 0016DDD0  C0 63 07 F8 */	lfs f3, 0x7f8(r3)
/* 80170E74 0016DDD4  C0 43 07 FC */	lfs f2, 0x7fc(r3)
/* 80170E78 0016DDD8  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 80170E7C 0016DDDC  EC 23 10 28 */	fsubs f1, f3, f2
/* 80170E80 0016DDE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170E84 0016DDE4  40 81 00 3C */	ble lbl_80170EC0
/* 80170E88 0016DDE8  C0 03 06 4C */	lfs f0, 0x64c(r3)
/* 80170E8C 0016DDEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80170E90 0016DDF0  40 80 00 18 */	bge lbl_80170EA8
/* 80170E94 0016DDF4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80170E98 0016DDF8  4C 41 13 82 */	cror 2, 1, 2
/* 80170E9C 0016DDFC  7C 00 00 26 */	mfcr r0
/* 80170EA0 0016DE00  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 80170EA4 0016DE04  4E 80 00 20 */	blr
lbl_80170EA8:
/* 80170EA8 0016DE08  C0 03 06 50 */	lfs f0, 0x650(r3)
/* 80170EAC 0016DE0C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80170EB0 0016DE10  4C 41 13 82 */	cror 2, 1, 2
/* 80170EB4 0016DE14  40 82 00 0C */	bne lbl_80170EC0
/* 80170EB8 0016DE18  38 60 00 01 */	li r3, 1
/* 80170EBC 0016DE1C  4E 80 00 20 */	blr
lbl_80170EC0:
/* 80170EC0 0016DE20  38 60 00 00 */	li r3, 0
/* 80170EC4 0016DE24  4E 80 00 20 */	blr

.global PatternShagged__8CMetroidFR13CStateManagerf
PatternShagged__8CMetroidFR13CStateManagerf:
/* 80170EC8 0016DE28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80170ECC 0016DE2C  7C 08 02 A6 */	mflr r0
/* 80170ED0 0016DE30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80170ED4 0016DE34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80170ED8 0016DE38  7C 9F 23 78 */	mr r31, r4
/* 80170EDC 0016DE3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80170EE0 0016DE40  7C 7E 1B 78 */	mr r30, r3
/* 80170EE4 0016DE44  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80170EE8 0016DE48  A0 63 07 B0 */	lhz r3, 0x7b0(r3)
/* 80170EEC 0016DE4C  7C 03 00 40 */	cmplw r3, r0
/* 80170EF0 0016DE50  41 82 00 90 */	beq lbl_80170F80
/* 80170EF4 0016DE54  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 80170EF8 0016DE58  7F E3 FB 78 */	mr r3, r31
/* 80170EFC 0016DE5C  38 81 00 08 */	addi r4, r1, 8
/* 80170F00 0016DE60  B0 01 00 08 */	sth r0, 8(r1)
/* 80170F04 0016DE64  4B ED B6 A1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80170F08 0016DE68  7C 64 1B 78 */	mr r4, r3
/* 80170F0C 0016DE6C  38 61 00 0C */	addi r3, r1, 0xc
/* 80170F10 0016DE70  4B F3 44 C1 */	bl sub_800a53d0
/* 80170F14 0016DE74  4B F3 44 91 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 80170F18 0016DE78  28 03 00 00 */	cmplwi r3, 0
/* 80170F1C 0016DE7C  41 82 00 18 */	beq lbl_80170F34
/* 80170F20 0016DE80  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80170F24 0016DE84  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80170F28 0016DE88  40 82 00 0C */	bne lbl_80170F34
/* 80170F2C 0016DE8C  38 60 00 01 */	li r3, 1
/* 80170F30 0016DE90  48 00 00 54 */	b lbl_80170F84
lbl_80170F34:
/* 80170F34 0016DE94  7F C3 F3 78 */	mr r3, r30
/* 80170F38 0016DE98  7F E4 FB 78 */	mr r4, r31
/* 80170F3C 0016DE9C  4B FF 90 8D */	bl sub_80169fc8
/* 80170F40 0016DEA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170F44 0016DEA4  40 82 00 0C */	bne lbl_80170F50
/* 80170F48 0016DEA8  38 60 00 01 */	li r3, 1
/* 80170F4C 0016DEAC  48 00 00 38 */	b lbl_80170F84
lbl_80170F50:
/* 80170F50 0016DEB0  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 80170F54 0016DEB4  2C 00 00 02 */	cmpwi r0, 2
/* 80170F58 0016DEB8  40 82 00 20 */	bne lbl_80170F78
/* 80170F5C 0016DEBC  C0 3E 08 00 */	lfs f1, 0x800(r30)
/* 80170F60 0016DEC0  C0 1E 08 04 */	lfs f0, 0x804(r30)
/* 80170F64 0016DEC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170F68 0016DEC8  4C 41 13 82 */	cror 2, 1, 2
/* 80170F6C 0016DECC  7C 00 00 26 */	mfcr r0
/* 80170F70 0016DED0  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 80170F74 0016DED4  48 00 00 10 */	b lbl_80170F84
lbl_80170F78:
/* 80170F78 0016DED8  38 60 00 00 */	li r3, 0
/* 80170F7C 0016DEDC  48 00 00 08 */	b lbl_80170F84
lbl_80170F80:
/* 80170F80 0016DEE0  38 60 00 01 */	li r3, 1
lbl_80170F84:
/* 80170F84 0016DEE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80170F88 0016DEE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80170F8C 0016DEEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80170F90 0016DEF0  7C 08 03 A6 */	mtlr r0
/* 80170F94 0016DEF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80170F98 0016DEF8  4E 80 00 20 */	blr

.global LostInterest__8CMetroidFR13CStateManagerf
LostInterest__8CMetroidFR13CStateManagerf:
/* 80170F9C 0016DEFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80170FA0 0016DF00  7C 08 02 A6 */	mflr r0
/* 80170FA4 0016DF04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80170FA8 0016DF08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80170FAC 0016DF0C  7C 9F 23 78 */	mr r31, r4
/* 80170FB0 0016DF10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80170FB4 0016DF14  7C 7E 1B 78 */	mr r30, r3
/* 80170FB8 0016DF18  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80170FBC 0016DF1C  A0 63 07 B0 */	lhz r3, 0x7b0(r3)
/* 80170FC0 0016DF20  7C 03 00 40 */	cmplw r3, r0
/* 80170FC4 0016DF24  41 82 00 B8 */	beq lbl_8017107C
/* 80170FC8 0016DF28  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 80170FCC 0016DF2C  7F E3 FB 78 */	mr r3, r31
/* 80170FD0 0016DF30  38 81 00 08 */	addi r4, r1, 8
/* 80170FD4 0016DF34  B0 01 00 08 */	sth r0, 8(r1)
/* 80170FD8 0016DF38  4B ED B5 CD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80170FDC 0016DF3C  7C 64 1B 78 */	mr r4, r3
/* 80170FE0 0016DF40  38 61 00 10 */	addi r3, r1, 0x10
/* 80170FE4 0016DF44  4B F3 EC AD */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 80170FE8 0016DF48  80 83 00 04 */	lwz r4, 4(r3)
/* 80170FEC 0016DF4C  28 04 00 00 */	cmplwi r4, 0
/* 80170FF0 0016DF50  41 82 00 8C */	beq lbl_8017107C
/* 80170FF4 0016DF54  38 61 00 0C */	addi r3, r1, 0xc
/* 80170FF8 0016DF58  4B F3 43 D9 */	bl sub_800a53d0
/* 80170FFC 0016DF5C  4B F3 43 A9 */	bl "CastTo<12CSpacePirate>__10CPatternedFP7CEntity"
/* 80171000 0016DF60  28 03 00 00 */	cmplwi r3, 0
/* 80171004 0016DF64  41 82 00 2C */	beq lbl_80171030
/* 80171008 0016DF68  A0 63 07 B4 */	lhz r3, 0x7b4(r3)
/* 8017100C 0016DF6C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80171010 0016DF70  7C 03 00 40 */	cmplw r3, r0
/* 80171014 0016DF74  40 82 00 14 */	bne lbl_80171028
/* 80171018 0016DF78  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8017101C 0016DF7C  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80171020 0016DF80  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80171024 0016DF84  41 82 00 50 */	beq lbl_80171074
lbl_80171028:
/* 80171028 0016DF88  38 60 00 01 */	li r3, 1
/* 8017102C 0016DF8C  48 00 00 54 */	b lbl_80171080
lbl_80171030:
/* 80171030 0016DF90  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80171034 0016DF94  A0 9E 07 B0 */	lhz r4, 0x7b0(r30)
/* 80171038 0016DF98  A0 03 00 08 */	lhz r0, 8(r3)
/* 8017103C 0016DF9C  7C 04 00 40 */	cmplw r4, r0
/* 80171040 0016DFA0  40 82 00 34 */	bne lbl_80171074
/* 80171044 0016DFA4  7F C3 F3 78 */	mr r3, r30
/* 80171048 0016DFA8  7F E4 FB 78 */	mr r4, r31
/* 8017104C 0016DFAC  4B FF 91 35 */	bl sub_8016a180
/* 80171050 0016DFB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80171054 0016DFB4  40 82 00 18 */	bne lbl_8017106C
/* 80171058 0016DFB8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8017105C 0016DFBC  80 1E 00 04 */	lwz r0, 4(r30)
/* 80171060 0016DFC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80171064 0016DFC4  7C 03 00 00 */	cmpw r3, r0
/* 80171068 0016DFC8  41 82 00 0C */	beq lbl_80171074
lbl_8017106C:
/* 8017106C 0016DFCC  38 60 00 01 */	li r3, 1
/* 80171070 0016DFD0  48 00 00 10 */	b lbl_80171080
lbl_80171074:
/* 80171074 0016DFD4  38 60 00 00 */	li r3, 0
/* 80171078 0016DFD8  48 00 00 08 */	b lbl_80171080
lbl_8017107C:
/* 8017107C 0016DFDC  38 60 00 01 */	li r3, 1
lbl_80171080:
/* 80171080 0016DFE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80171084 0016DFE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80171088 0016DFE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017108C 0016DFEC  7C 08 03 A6 */	mtlr r0
/* 80171090 0016DFF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80171094 0016DFF4  4E 80 00 20 */	blr

.global AttackOver__8CMetroidFR13CStateManagerf
AttackOver__8CMetroidFR13CStateManagerf:
/* 80171098 0016DFF8  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8017109C 0016DFFC  7C 08 02 A6 */	mflr r0
/* 801710A0 0016E000  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801710A4 0016E004  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 801710A8 0016E008  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 801710AC 0016E00C  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 801710B0 0016E010  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 801710B4 0016E014  7C 7E 1B 78 */	mr r30, r3
/* 801710B8 0016E018  7C 9F 23 78 */	mr r31, r4
/* 801710BC 0016E01C  80 03 05 68 */	lwz r0, 0x568(r3)
/* 801710C0 0016E020  2C 00 00 02 */	cmpwi r0, 2
/* 801710C4 0016E024  40 82 01 64 */	bne lbl_80171228
/* 801710C8 0016E028  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801710CC 0016E02C  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801710D0 0016E030  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801710D4 0016E034  40 82 01 54 */	bne lbl_80171228
/* 801710D8 0016E038  C3 FE 00 60 */	lfs f31, 0x60(r30)
/* 801710DC 0016E03C  7F C4 F3 78 */	mr r4, r30
/* 801710E0 0016E040  7F E5 FB 78 */	mr r5, r31
/* 801710E4 0016E044  38 61 00 20 */	addi r3, r1, 0x20
/* 801710E8 0016E048  4B FF CE D5 */	bl sub_8016dfbc
/* 801710EC 0016E04C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801710F0 0016E050  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 801710F4 0016E054  EC 20 F8 28 */	fsubs f1, f0, f31
/* 801710F8 0016E058  C0 02 A1 00 */	lfs f0, lbl_805ABE20@sda21(r2)
/* 801710FC 0016E05C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80171100 0016E060  C0 63 00 00 */	lfs f3, 0(r3)
/* 80171104 0016E064  FC 80 0A 10 */	fabs f4, f1
/* 80171108 0016E068  C0 23 00 08 */	lfs f1, 8(r3)
/* 8017110C 0016E06C  EF E0 00 B2 */	fmuls f31, f0, f2
/* 80171110 0016E070  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80171114 0016E074  FC 00 20 18 */	frsp f0, f4
/* 80171118 0016E078  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8017111C 0016E07C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80171120 0016E080  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80171124 0016E084  40 80 01 04 */	bge lbl_80171228
/* 80171128 0016E088  A0 1E 07 B0 */	lhz r0, 0x7b0(r30)
/* 8017112C 0016E08C  7F E3 FB 78 */	mr r3, r31
/* 80171130 0016E090  38 81 00 08 */	addi r4, r1, 8
/* 80171134 0016E094  B0 01 00 08 */	sth r0, 8(r1)
/* 80171138 0016E098  4B ED B4 6D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8017113C 0016E09C  7C 64 1B 78 */	mr r4, r3
/* 80171140 0016E0A0  38 61 00 0C */	addi r3, r1, 0xc
/* 80171144 0016E0A4  4B F3 B5 A1 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 80171148 0016E0A8  80 83 00 04 */	lwz r4, 4(r3)
/* 8017114C 0016E0AC  28 04 00 00 */	cmplwi r4, 0
/* 80171150 0016E0B0  41 82 00 D8 */	beq lbl_80171228
/* 80171154 0016E0B4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80171158 0016E0B8  4B FA 97 D5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8017115C 0016E0BC  C0 A1 00 5C */	lfs f5, 0x5c(r1)
/* 80171160 0016E0C0  38 9E 06 A0 */	addi r4, r30, 0x6a0
/* 80171164 0016E0C4  C0 81 00 60 */	lfs f4, 0x60(r1)
/* 80171168 0016E0C8  38 61 00 44 */	addi r3, r1, 0x44
/* 8017116C 0016E0CC  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 80171170 0016E0D0  38 BE 00 34 */	addi r5, r30, 0x34
/* 80171174 0016E0D4  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 80171178 0016E0D8  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8017117C 0016E0DC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80171180 0016E0E0  D0 A1 00 A4 */	stfs f5, 0xa4(r1)
/* 80171184 0016E0E4  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 80171188 0016E0E8  D0 61 00 AC */	stfs f3, 0xac(r1)
/* 8017118C 0016E0EC  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 80171190 0016E0F0  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80171194 0016E0F4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80171198 0016E0F8  81 9E 06 A0 */	lwz r12, 0x6a0(r30)
/* 8017119C 0016E0FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801711A0 0016E100  7D 89 03 A6 */	mtctr r12
/* 801711A4 0016E104  4E 80 04 21 */	bctrl
/* 801711A8 0016E108  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801711AC 0016E10C  38 61 00 74 */	addi r3, r1, 0x74
/* 801711B0 0016E110  C0 C1 00 48 */	lfs f6, 0x48(r1)
/* 801711B4 0016E114  38 81 00 38 */	addi r4, r1, 0x38
/* 801711B8 0016E118  C0 A1 00 4C */	lfs f5, 0x4c(r1)
/* 801711BC 0016E11C  EC 20 F8 28 */	fsubs f1, f0, f31
/* 801711C0 0016E120  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 801711C4 0016E124  ED 06 F8 28 */	fsubs f8, f6, f31
/* 801711C8 0016E128  C0 61 00 54 */	lfs f3, 0x54(r1)
/* 801711CC 0016E12C  EC E5 F8 28 */	fsubs f7, f5, f31
/* 801711D0 0016E130  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 801711D4 0016E134  ED 43 F8 2A */	fadds f10, f3, f31
/* 801711D8 0016E138  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801711DC 0016E13C  ED 22 F8 2A */	fadds f9, f2, f31
/* 801711E0 0016E140  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801711E4 0016E144  EC 04 F8 2A */	fadds f0, f4, f31
/* 801711E8 0016E148  D0 C1 00 90 */	stfs f6, 0x90(r1)
/* 801711EC 0016E14C  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 801711F0 0016E150  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 801711F4 0016E154  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 801711F8 0016E158  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 801711FC 0016E15C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80171200 0016E160  D1 01 00 3C */	stfs f8, 0x3c(r1)
/* 80171204 0016E164  D0 E1 00 40 */	stfs f7, 0x40(r1)
/* 80171208 0016E168  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8017120C 0016E16C  D1 41 00 30 */	stfs f10, 0x30(r1)
/* 80171210 0016E170  D1 21 00 34 */	stfs f9, 0x34(r1)
/* 80171214 0016E174  48 1C 72 F5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80171218 0016E178  38 61 00 74 */	addi r3, r1, 0x74
/* 8017121C 0016E17C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80171220 0016E180  48 1C 69 65 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 80171224 0016E184  48 00 00 08 */	b lbl_8017122C
lbl_80171228:
/* 80171228 0016E188  38 60 00 00 */	li r3, 0
lbl_8017122C:
/* 8017122C 0016E18C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 80171230 0016E190  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80171234 0016E194  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80171238 0016E198  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8017123C 0016E19C  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 80171240 0016E1A0  7C 08 03 A6 */	mtlr r0
/* 80171244 0016E1A4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80171248 0016E1A8  4E 80 00 20 */	blr

.global AnimOver__8CMetroidFR13CStateManagerf
AnimOver__8CMetroidFR13CStateManagerf:
/* 8017124C 0016E1AC  80 03 05 68 */	lwz r0, 0x568(r3)
/* 80171250 0016E1B0  20 00 00 03 */	subfic r0, r0, 3
/* 80171254 0016E1B4  7C 00 00 34 */	cntlzw r0, r0
/* 80171258 0016E1B8  54 03 D9 7E */	srwi r3, r0, 5
/* 8017125C 0016E1BC  4E 80 00 20 */	blr

.global Death__8CMetroidFRC9CVector3fR13CStateManager
Death__8CMetroidFRC9CVector3fR13CStateManager:
/* 80171260 0016E1C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80171264 0016E1C4  7C 08 02 A6 */	mflr r0
/* 80171268 0016E1C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017126C 0016E1CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80171270 0016E1D0  7C 9F 23 78 */	mr r31, r4
/* 80171274 0016E1D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80171278 0016E1D8  7C 7E 1B 78 */	mr r30, r3
/* 8017127C 0016E1DC  4B F0 A1 29 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 80171280 0016E1E0  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 80171284 0016E1E4  38 60 00 00 */	li r3, 0
/* 80171288 0016E1E8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8017128C 0016E1EC  7F C3 F3 78 */	mr r3, r30
/* 80171290 0016E1F0  98 1E 03 28 */	stb r0, 0x328(r30)
/* 80171294 0016E1F4  38 80 00 01 */	li r4, 1
/* 80171298 0016E1F8  4B EE 21 55 */	bl SetMuted__6CActorFb
/* 8017129C 0016E1FC  7F C3 F3 78 */	mr r3, r30
/* 801712A0 0016E200  7F E4 FB 78 */	mr r4, r31
/* 801712A4 0016E204  4B FF BF 85 */	bl sub_8016d228
/* 801712A8 0016E208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801712AC 0016E20C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801712B0 0016E210  83 C1 00 08 */	lwz r30, 8(r1)
/* 801712B4 0016E214  7C 08 03 A6 */	mtlr r0
/* 801712B8 0016E218  38 21 00 10 */	addi r1, r1, 0x10
/* 801712BC 0016E21C  4E 80 00 20 */	blr

.global KnockBack__8CMetroidFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__8CMetroidFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 801712C0 0016E220  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801712C4 0016E224  7C 08 02 A6 */	mflr r0
/* 801712C8 0016E228  90 01 00 44 */	stw r0, 0x44(r1)
/* 801712CC 0016E22C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801712D0 0016E230  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801712D4 0016E234  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 801712D8 0016E238  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801712DC 0016E23C  FF E0 08 90 */	fmr f31, f1
/* 801712E0 0016E240  7C 7C 1B 78 */	mr r28, r3
/* 801712E4 0016E244  7C 9D 23 78 */	mr r29, r4
/* 801712E8 0016E248  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801712EC 0016E24C  7C BE 2B 78 */	mr r30, r5
/* 801712F0 0016E250  7C DF 33 78 */	mr r31, r6
/* 801712F4 0016E254  7C F8 3B 78 */	mr r24, r7
/* 801712F8 0016E258  7D 19 43 78 */	mr r25, r8
/* 801712FC 0016E25C  41 82 01 4C */	beq lbl_80171448
/* 80171300 0016E260  81 83 00 00 */	lwz r12, 0(r3)
/* 80171304 0016E264  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80171308 0016E268  7D 89 03 A6 */	mtctr r12
/* 8017130C 0016E26C  4E 80 04 21 */	bctrl
/* 80171310 0016E270  7C 60 1B 78 */	mr r0, r3
/* 80171314 0016E274  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 80171318 0016E278  7C 1B 03 78 */	mr r27, r0
/* 8017131C 0016E27C  4B FC 8D B1 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 80171320 0016E280  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 80171324 0016E284  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80171328 0016E288  7C 60 00 26 */	mfcr r3
/* 8017132C 0016E28C  80 1C 07 C8 */	lwz r0, 0x7c8(r28)
/* 80171330 0016E290  54 7A 17 FE */	rlwinm r26, r3, 2, 0x1f, 0x1f
/* 80171334 0016E294  2C 00 00 02 */	cmpwi r0, 2
/* 80171338 0016E298  40 82 00 34 */	bne lbl_8017136C
/* 8017133C 0016E29C  7F 63 DB 78 */	mr r3, r27
/* 80171340 0016E2A0  7F E4 FB 78 */	mr r4, r31
/* 80171344 0016E2A4  38 A0 00 00 */	li r5, 0
/* 80171348 0016E2A8  4B F9 12 3D */	bl WeaponHits__20CDamageVulnerabilityCFRC11CWeaponModei
/* 8017134C 0016E2AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80171350 0016E2B0  41 82 00 F8 */	beq lbl_80171448
/* 80171354 0016E2B4  C3 FC 06 40 */	lfs f31, 0x640(r28)
/* 80171358 0016E2B8  7F 83 E3 78 */	mr r3, r28
/* 8017135C 0016E2BC  4B FF CB E5 */	bl sub_8016df40
/* 80171360 0016E2C0  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80171364 0016E2C4  D0 1C 07 BC */	stfs f0, 0x7bc(r28)
/* 80171368 0016E2C8  48 00 00 E0 */	b lbl_80171448
lbl_8017136C:
/* 8017136C 0016E2CC  7F 63 DB 78 */	mr r3, r27
/* 80171370 0016E2D0  7F E4 FB 78 */	mr r4, r31
/* 80171374 0016E2D4  38 A0 00 00 */	li r5, 0
/* 80171378 0016E2D8  4B F9 13 91 */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponMode
/* 8017137C 0016E2DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80171380 0016E2E0  41 82 00 50 */	beq lbl_801713D0
/* 80171384 0016E2E4  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 80171388 0016E2E8  48 1A 11 55 */	bl Float__9CRandom16Fv
/* 8017138C 0016E2EC  C0 5C 03 08 */	lfs f2, 0x308(r28)
/* 80171390 0016E2F0  28 1A 00 00 */	cmplwi r26, 0
/* 80171394 0016E2F4  C0 1C 03 04 */	lfs f0, 0x304(r28)
/* 80171398 0016E2F8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8017139C 0016E2FC  D0 1C 07 B4 */	stfs f0, 0x7b4(r28)
/* 801713A0 0016E300  41 82 00 0C */	beq lbl_801713AC
/* 801713A4 0016E304  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 801713A8 0016E308  4B FC 8D AD */	bl UnFreeze__15CBodyControllerFv
lbl_801713AC:
/* 801713AC 0016E30C  FC 20 F8 90 */	fmr f1, f31
/* 801713B0 0016E310  7F 83 E3 78 */	mr r3, r28
/* 801713B4 0016E314  7F A4 EB 78 */	mr r4, r29
/* 801713B8 0016E318  7F C5 F3 78 */	mr r5, r30
/* 801713BC 0016E31C  7F E6 FB 78 */	mr r6, r31
/* 801713C0 0016E320  7F 07 C3 78 */	mr r7, r24
/* 801713C4 0016E324  7F 28 CB 78 */	mr r8, r25
/* 801713C8 0016E328  4B F0 93 B5 */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 801713CC 0016E32C  48 00 00 7C */	b lbl_80171448
lbl_801713D0:
/* 801713D0 0016E330  28 1A 00 00 */	cmplwi r26, 0
/* 801713D4 0016E334  40 82 00 74 */	bne lbl_80171448
/* 801713D8 0016E338  7F 63 DB 78 */	mr r3, r27
/* 801713DC 0016E33C  7F E4 FB 78 */	mr r4, r31
/* 801713E0 0016E340  38 A0 00 00 */	li r5, 0
/* 801713E4 0016E344  4B F9 11 A1 */	bl WeaponHits__20CDamageVulnerabilityCFRC11CWeaponModei
/* 801713E8 0016E348  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801713EC 0016E34C  41 82 00 5C */	beq lbl_80171448
/* 801713F0 0016E350  88 7F 00 04 */	lbz r3, 4(r31)
/* 801713F4 0016E354  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801713F8 0016E358  40 82 00 18 */	bne lbl_80171410
/* 801713FC 0016E35C  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80171400 0016E360  40 82 00 10 */	bne lbl_80171410
/* 80171404 0016E364  80 1F 00 00 */	lwz r0, 0(r31)
/* 80171408 0016E368  2C 00 00 06 */	cmpwi r0, 6
/* 8017140C 0016E36C  40 82 00 3C */	bne lbl_80171448
lbl_80171410:
/* 80171410 0016E370  7F 83 E3 78 */	mr r3, r28
/* 80171414 0016E374  4B FF A6 C9 */	bl sub_8016badc
/* 80171418 0016E378  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017141C 0016E37C  40 82 00 2C */	bne lbl_80171448
/* 80171420 0016E380  FC 20 F8 90 */	fmr f1, f31
/* 80171424 0016E384  7F 83 E3 78 */	mr r3, r28
/* 80171428 0016E388  7F A4 EB 78 */	mr r4, r29
/* 8017142C 0016E38C  7F C5 F3 78 */	mr r5, r30
/* 80171430 0016E390  7F E6 FB 78 */	mr r6, r31
/* 80171434 0016E394  7F 07 C3 78 */	mr r7, r24
/* 80171438 0016E398  39 00 00 00 */	li r8, 0
/* 8017143C 0016E39C  4B F0 93 41 */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 80171440 0016E3A0  C0 1C 08 04 */	lfs f0, 0x804(r28)
/* 80171444 0016E3A4  D0 1C 08 00 */	stfs f0, 0x800(r28)
lbl_80171448:
/* 80171448 0016E3A8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8017144C 0016E3AC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80171450 0016E3B0  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80171454 0016E3B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80171458 0016E3B8  7C 08 03 A6 */	mtlr r0
/* 8017145C 0016E3BC  38 21 00 40 */	addi r1, r1, 0x40
/* 80171460 0016E3C0  4E 80 00 20 */	blr

.global DoUserAnimEvent__8CMetroidFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__8CMetroidFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80171464 0016E3C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80171468 0016E3C8  7C 08 02 A6 */	mflr r0
/* 8017146C 0016E3CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80171470 0016E3D0  38 00 00 00 */	li r0, 0
/* 80171474 0016E3D4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80171478 0016E3D8  FF E0 08 90 */	fmr f31, f1
/* 8017147C 0016E3DC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80171480 0016E3E0  7C DF 33 78 */	mr r31, r6
/* 80171484 0016E3E4  2C 1F 00 07 */	cmpwi r31, 7
/* 80171488 0016E3E8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8017148C 0016E3EC  7C BE 2B 78 */	mr r30, r5
/* 80171490 0016E3F0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80171494 0016E3F4  7C 9D 23 78 */	mr r29, r4
/* 80171498 0016E3F8  93 81 00 08 */	stw r28, 8(r1)
/* 8017149C 0016E3FC  7C 7C 1B 78 */	mr r28, r3
/* 801714A0 0016E400  41 82 00 08 */	beq lbl_801714A8
/* 801714A4 0016E404  48 00 00 14 */	b lbl_801714B8
lbl_801714A8:
/* 801714A8 0016E408  7F A5 EB 78 */	mr r5, r29
/* 801714AC 0016E40C  38 80 00 13 */	li r4, 0x13
/* 801714B0 0016E410  4B EE 2E A1 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801714B4 0016E414  38 00 00 01 */	li r0, 1
lbl_801714B8:
/* 801714B8 0016E418  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801714BC 0016E41C  40 82 00 1C */	bne lbl_801714D8
/* 801714C0 0016E420  FC 20 F8 90 */	fmr f1, f31
/* 801714C4 0016E424  7F 83 E3 78 */	mr r3, r28
/* 801714C8 0016E428  7F A4 EB 78 */	mr r4, r29
/* 801714CC 0016E42C  7F C5 F3 78 */	mr r5, r30
/* 801714D0 0016E430  7F E6 FB 78 */	mr r6, r31
/* 801714D4 0016E434  4B F0 79 DD */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_801714D8:
/* 801714D8 0016E438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801714DC 0016E43C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801714E0 0016E440  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801714E4 0016E444  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801714E8 0016E448  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 801714EC 0016E44C  83 81 00 08 */	lwz r28, 8(r1)
/* 801714F0 0016E450  7C 08 03 A6 */	mtlr r0
/* 801714F4 0016E454  38 21 00 20 */	addi r1, r1, 0x20
/* 801714F8 0016E458  4E 80 00 20 */	blr

.global GetCollisionResponseType__8CMetroidCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__8CMetroidCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 801714FC 0016E45C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80171500 0016E460  7C 08 02 A6 */	mflr r0
/* 80171504 0016E464  90 01 00 24 */	stw r0, 0x24(r1)
/* 80171508 0016E468  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017150C 0016E46C  3B E0 00 21 */	li r31, 0x21
/* 80171510 0016E470  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80171514 0016E474  7C 7E 1B 78 */	mr r30, r3
/* 80171518 0016E478  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017151C 0016E47C  7C DD 33 78 */	mr r29, r6
/* 80171520 0016E480  80 63 04 50 */	lwz r3, 0x450(r3)
/* 80171524 0016E484  4B FC 8B A9 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 80171528 0016E488  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 8017152C 0016E48C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80171530 0016E490  7C 00 00 26 */	mfcr r0
/* 80171534 0016E494  7F C3 F3 78 */	mr r3, r30
/* 80171538 0016E498  81 9E 00 00 */	lwz r12, 0(r30)
/* 8017153C 0016E49C  54 1E 17 FE */	rlwinm r30, r0, 2, 0x1f, 0x1f
/* 80171540 0016E4A0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80171544 0016E4A4  7D 89 03 A6 */	mtctr r12
/* 80171548 0016E4A8  4E 80 04 21 */	bctrl
/* 8017154C 0016E4AC  7F A4 EB 78 */	mr r4, r29
/* 80171550 0016E4B0  38 A0 00 00 */	li r5, 0
/* 80171554 0016E4B4  4B F9 11 B5 */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponMode
/* 80171558 0016E4B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017155C 0016E4BC  40 82 00 10 */	bne lbl_8017156C
/* 80171560 0016E4C0  28 1E 00 00 */	cmplwi r30, 0
/* 80171564 0016E4C4  40 82 00 08 */	bne lbl_8017156C
/* 80171568 0016E4C8  3B E0 00 3A */	li r31, 0x3a
lbl_8017156C:
/* 8017156C 0016E4CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80171570 0016E4D0  7F E3 FB 78 */	mr r3, r31
/* 80171574 0016E4D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80171578 0016E4D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017157C 0016E4DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80171580 0016E4E0  7C 08 03 A6 */	mtlr r0
/* 80171584 0016E4E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80171588 0016E4E8  4E 80 00 20 */	blr

.global GetDamageVulnerability__8CMetroidCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__8CMetroidCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 8017158C 0016E4EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80171590 0016E4F0  7C 08 02 A6 */	mflr r0
/* 80171594 0016E4F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80171598 0016E4F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8017159C 0016E4FC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801715A0 0016E500  7D 89 03 A6 */	mtctr r12
/* 801715A4 0016E504  4E 80 04 21 */	bctrl
/* 801715A8 0016E508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801715AC 0016E50C  7C 08 03 A6 */	mtlr r0
/* 801715B0 0016E510  38 21 00 10 */	addi r1, r1, 0x10
/* 801715B4 0016E514  4E 80 00 20 */	blr

.global GetDamageVulnerability__8CMetroidCFv
GetDamageVulnerability__8CMetroidCFv:
/* 801715B8 0016E518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801715BC 0016E51C  7C 08 02 A6 */	mflr r0
/* 801715C0 0016E520  90 01 00 14 */	stw r0, 0x14(r1)
/* 801715C4 0016E524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801715C8 0016E528  7C 7F 1B 78 */	mr r31, r3
/* 801715CC 0016E52C  4B FF CC 29 */	bl sub_8016e1f4
/* 801715D0 0016E530  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801715D4 0016E534  41 82 00 24 */	beq lbl_801715F8
/* 801715D8 0016E538  88 1F 09 C0 */	lbz r0, 0x9c0(r31)
/* 801715DC 0016E53C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801715E0 0016E540  41 82 00 0C */	beq lbl_801715EC
/* 801715E4 0016E544  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 801715E8 0016E548  48 00 00 C0 */	b lbl_801716A8
lbl_801715EC:
/* 801715EC 0016E54C  3C 60 80 57 */	lis r3, lbl_80571FA4@ha
/* 801715F0 0016E550  38 63 1F A4 */	addi r3, r3, lbl_80571FA4@l
/* 801715F4 0016E554  48 00 00 B4 */	b lbl_801716A8
lbl_801715F8:
/* 801715F8 0016E558  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 801715FC 0016E55C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80171600 0016E560  41 82 00 1C */	beq lbl_8017161C
/* 80171604 0016E564  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80171608 0016E568  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8017160C 0016E56C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80171610 0016E570  40 82 00 0C */	bne lbl_8017161C
/* 80171614 0016E574  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80171618 0016E578  48 00 00 90 */	b lbl_801716A8
lbl_8017161C:
/* 8017161C 0016E57C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80171620 0016E580  4B FC 8A AD */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 80171624 0016E584  C0 02 A0 80 */	lfs f0, lbl_805ABDA0@sda21(r2)
/* 80171628 0016E588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017162C 0016E58C  40 81 00 0C */	ble lbl_80171638
/* 80171630 0016E590  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80171634 0016E594  48 00 00 74 */	b lbl_801716A8
lbl_80171638:
/* 80171638 0016E598  80 1F 03 FC */	lwz r0, 0x3fc(r31)
/* 8017163C 0016E59C  2C 00 00 02 */	cmpwi r0, 2
/* 80171640 0016E5A0  40 82 00 60 */	bne lbl_801716A0
/* 80171644 0016E5A4  80 1F 07 CC */	lwz r0, 0x7cc(r31)
/* 80171648 0016E5A8  2C 00 00 03 */	cmpwi r0, 3
/* 8017164C 0016E5AC  41 82 00 3C */	beq lbl_80171688
/* 80171650 0016E5B0  40 80 00 14 */	bge lbl_80171664
/* 80171654 0016E5B4  2C 00 00 01 */	cmpwi r0, 1
/* 80171658 0016E5B8  41 82 00 18 */	beq lbl_80171670
/* 8017165C 0016E5BC  40 80 00 20 */	bge lbl_8017167C
/* 80171660 0016E5C0  48 00 00 40 */	b lbl_801716A0
lbl_80171664:
/* 80171664 0016E5C4  2C 00 00 05 */	cmpwi r0, 5
/* 80171668 0016E5C8  40 80 00 38 */	bge lbl_801716A0
/* 8017166C 0016E5CC  48 00 00 28 */	b lbl_80171694
lbl_80171670:
/* 80171670 0016E5D0  3C 60 80 57 */	lis r3, lbl_80571C64@ha
/* 80171674 0016E5D4  38 63 1C 64 */	addi r3, r3, lbl_80571C64@l
/* 80171678 0016E5D8  48 00 00 30 */	b lbl_801716A8
lbl_8017167C:
/* 8017167C 0016E5DC  3C 60 80 57 */	lis r3, lbl_80571E6C@ha
/* 80171680 0016E5E0  38 63 1E 6C */	addi r3, r3, lbl_80571E6C@l
/* 80171684 0016E5E4  48 00 00 24 */	b lbl_801716A8
lbl_80171688:
/* 80171688 0016E5E8  3C 60 80 57 */	lis r3, lbl_80571ED4@ha
/* 8017168C 0016E5EC  38 63 1E D4 */	addi r3, r3, lbl_80571ED4@l
/* 80171690 0016E5F0  48 00 00 18 */	b lbl_801716A8
lbl_80171694:
/* 80171694 0016E5F4  3C 60 80 57 */	lis r3, lbl_80571F3C@ha
/* 80171698 0016E5F8  38 63 1F 3C */	addi r3, r3, lbl_80571F3C@l
/* 8017169C 0016E5FC  48 00 00 0C */	b lbl_801716A8
lbl_801716A0:
/* 801716A0 0016E600  7F E3 FB 78 */	mr r3, r31
/* 801716A4 0016E604  4B F3 16 CD */	bl GetDamageVulnerability__3CAiCFv
lbl_801716A8:
/* 801716A8 0016E608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801716AC 0016E60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801716B0 0016E610  7C 08 03 A6 */	mtlr r0
/* 801716B4 0016E614  38 21 00 10 */	addi r1, r1, 0x10
/* 801716B8 0016E618  4E 80 00 20 */	blr

.global GetCollisionPrimitive__8CMetroidCFv
GetCollisionPrimitive__8CMetroidCFv:
/* 801716BC 0016E61C  38 63 06 A0 */	addi r3, r3, 0x6a0
/* 801716C0 0016E620  4E 80 00 20 */	blr

.global sub_801716c4
sub_801716c4:
/* 801716C4 0016E624  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801716C8 0016E628  7C 08 02 A6 */	mflr r0
/* 801716CC 0016E62C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801716D0 0016E630  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801716D4 0016E634  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801716D8 0016E638  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801716DC 0016E63C  7C 7F 1B 78 */	mr r31, r3
/* 801716E0 0016E640  4B FF C8 91 */	bl sub_8016df70
/* 801716E4 0016E644  C0 02 A0 98 */	lfs f0, lbl_805ABDB8@sda21(r2)
/* 801716E8 0016E648  38 81 00 0C */	addi r4, r1, 0xc
/* 801716EC 0016E64C  38 6D 8D 9C */	addi r3, r13, lbl_805A795C@sda21
/* 801716F0 0016E650  38 AD 8D A0 */	addi r5, r13, lbl_805A7960@sda21
/* 801716F4 0016E654  EC 01 00 28 */	fsubs f0, f1, f0
/* 801716F8 0016E658  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801716FC 0016E65C  4B E9 AB B9 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 80171700 0016E660  C0 63 00 00 */	lfs f3, 0(r3)
/* 80171704 0016E664  C0 22 A0 AC */	lfs f1, lbl_805ABDCC@sda21(r2)
/* 80171708 0016E668  C0 02 A0 A8 */	lfs f0, lbl_805ABDC8@sda21(r2)
/* 8017170C 0016E66C  C0 42 A1 04 */	lfs f2, lbl_805ABE24@sda21(r2)
/* 80171710 0016E670  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 80171714 0016E674  EF E2 00 32 */	fmuls f31, f2, f0
/* 80171718 0016E678  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 8017171C 0016E67C  38 81 00 09 */	addi r4, r1, 9
/* 80171720 0016E680  38 6D 8D A4 */	addi r3, r13, lbl_805A7964@sda21
/* 80171724 0016E684  38 AD 8D A5 */	addi r5, r13, lbl_805A7965@sda21
/* 80171728 0016E688  88 01 00 08 */	lbz r0, 8(r1)
/* 8017172C 0016E68C  98 01 00 09 */	stb r0, 9(r1)
/* 80171730 0016E690  48 00 10 E1 */	bl sub_80172810
/* 80171734 0016E694  88 83 00 00 */	lbz r4, 0(r3)
/* 80171738 0016E698  7F E3 FB 78 */	mr r3, r31
/* 8017173C 0016E69C  4B EE 1C 35 */	bl SetVolume__6CActorFUc
/* 80171740 0016E6A0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80171744 0016E6A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80171748 0016E6A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8017174C 0016E6AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80171750 0016E6B0  7C 08 03 A6 */	mtlr r0
/* 80171754 0016E6B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80171758 0016E6B8  4E 80 00 20 */	blr

.global sub_8017175c
sub_8017175c:
/* 8017175C 0016E6BC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80171760 0016E6C0  7C 08 02 A6 */	mflr r0
/* 80171764 0016E6C4  80 82 A0 74 */	lwz r4, lbl_805ABD94@sda21(r2)
/* 80171768 0016E6C8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8017176C 0016E6CC  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80171770 0016E6D0  7C 7F 1B 78 */	mr r31, r3
/* 80171774 0016E6D4  38 61 00 18 */	addi r3, r1, 0x18
/* 80171778 0016E6D8  4B E9 35 41 */	bl string_l__4rstlFPCc
/* 8017177C 0016E6DC  7F E4 FB 78 */	mr r4, r31
/* 80171780 0016E6E0  38 61 00 28 */	addi r3, r1, 0x28
/* 80171784 0016E6E4  38 A1 00 18 */	addi r5, r1, 0x18
/* 80171788 0016E6E8  4B EE 17 79 */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8017178C 0016E6EC  38 61 00 58 */	addi r3, r1, 0x58
/* 80171790 0016E6F0  38 81 00 28 */	addi r4, r1, 0x28
/* 80171794 0016E6F4  48 1A 13 E1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80171798 0016E6F8  38 61 00 18 */	addi r3, r1, 0x18
/* 8017179C 0016E6FC  48 1C C3 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801717A0 0016E700  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801717A4 0016E704  C0 9F 06 BC */	lfs f4, 0x6bc(r31)
/* 801717A8 0016E708  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 801717AC 0016E70C  C0 03 00 00 */	lfs f0, 0(r3)
/* 801717B0 0016E710  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 801717B4 0016E714  EC 01 00 32 */	fmuls f0, f1, f0
/* 801717B8 0016E718  C0 23 00 04 */	lfs f1, 4(r3)
/* 801717BC 0016E71C  C0 61 00 84 */	lfs f3, 0x84(r1)
/* 801717C0 0016E720  EC 42 00 72 */	fmuls f2, f2, f1
/* 801717C4 0016E724  C0 23 00 08 */	lfs f1, 8(r3)
/* 801717C8 0016E728  D0 01 00 08 */	stfs f0, 8(r1)
/* 801717CC 0016E72C  EC 03 00 72 */	fmuls f0, f3, f1
/* 801717D0 0016E730  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801717D4 0016E734  80 01 00 08 */	lwz r0, 8(r1)
/* 801717D8 0016E738  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801717DC 0016E73C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801717E0 0016E740  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 801717E4 0016E744  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801717E8 0016E748  90 7F 06 B4 */	stw r3, 0x6b4(r31)
/* 801717EC 0016E74C  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 801717F0 0016E750  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801717F4 0016E754  D0 9F 06 BC */	stfs f4, 0x6bc(r31)
/* 801717F8 0016E758  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801717FC 0016E75C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80171800 0016E760  7C 08 03 A6 */	mtlr r0
/* 80171804 0016E764  38 21 00 90 */	addi r1, r1, 0x90
/* 80171808 0016E768  4E 80 00 20 */	blr

.global GetTouchBounds__8CMetroidCFv
GetTouchBounds__8CMetroidCFv:
/* 8017180C 0016E76C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80171810 0016E770  7C 08 02 A6 */	mflr r0
/* 80171814 0016E774  7C 85 23 78 */	mr r5, r4
/* 80171818 0016E778  90 01 00 34 */	stw r0, 0x34(r1)
/* 8017181C 0016E77C  38 85 06 A0 */	addi r4, r5, 0x6a0
/* 80171820 0016E780  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80171824 0016E784  7C 7F 1B 78 */	mr r31, r3
/* 80171828 0016E788  38 61 00 08 */	addi r3, r1, 8
/* 8017182C 0016E78C  81 85 06 A0 */	lwz r12, 0x6a0(r5)
/* 80171830 0016E790  38 A5 00 34 */	addi r5, r5, 0x34
/* 80171834 0016E794  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80171838 0016E798  7D 89 03 A6 */	mtctr r12
/* 8017183C 0016E79C  4E 80 04 21 */	bctrl
/* 80171840 0016E7A0  38 00 00 01 */	li r0, 1
/* 80171844 0016E7A4  28 1F 00 00 */	cmplwi r31, 0
/* 80171848 0016E7A8  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8017184C 0016E7AC  41 82 00 34 */	beq lbl_80171880
/* 80171850 0016E7B0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80171854 0016E7B4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80171858 0016E7B8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8017185C 0016E7BC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80171860 0016E7C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80171864 0016E7C4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80171868 0016E7C8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8017186C 0016E7CC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80171870 0016E7D0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80171874 0016E7D4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80171878 0016E7D8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8017187C 0016E7DC  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_80171880:
/* 80171880 0016E7E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80171884 0016E7E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80171888 0016E7E8  7C 08 03 A6 */	mtlr r0
/* 8017188C 0016E7EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80171890 0016E7F0  4E 80 00 20 */	blr

.global Touch__8CMetroidFR6CActorR13CStateManager
Touch__8CMetroidFR6CActorR13CStateManager:
/* 80171894 0016E7F4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80171898 0016E7F8  7C 08 02 A6 */	mflr r0
/* 8017189C 0016E7FC  90 01 00 84 */	stw r0, 0x84(r1)
/* 801718A0 0016E800  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801718A4 0016E804  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801718A8 0016E808  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801718AC 0016E80C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 801718B0 0016E810  93 A1 00 64 */	stw r29, 0x64(r1)
/* 801718B4 0016E814  93 81 00 60 */	stw r28, 0x60(r1)
/* 801718B8 0016E818  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801718BC 0016E81C  7C 7C 1B 78 */	mr r28, r3
/* 801718C0 0016E820  7C 9D 23 78 */	mr r29, r4
/* 801718C4 0016E824  7C BE 2B 78 */	mr r30, r5
/* 801718C8 0016E828  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801718CC 0016E82C  41 82 01 88 */	beq lbl_80171A54
/* 801718D0 0016E830  38 61 00 10 */	addi r3, r1, 0x10
/* 801718D4 0016E834  4B F3 BE A5 */	bl "__ct__29TCastToPtr<15CGameProjectile>FR7CEntity"
/* 801718D8 0016E838  83 E3 00 04 */	lwz r31, 4(r3)
/* 801718DC 0016E83C  28 1F 00 00 */	cmplwi r31, 0
/* 801718E0 0016E840  41 82 01 64 */	beq lbl_80171A44
/* 801718E4 0016E844  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801718E8 0016E848  A0 9F 00 EC */	lhz r4, 0xec(r31)
/* 801718EC 0016E84C  A0 03 00 08 */	lhz r0, 8(r3)
/* 801718F0 0016E850  7C 04 00 40 */	cmplw r4, r0
/* 801718F4 0016E854  40 82 01 40 */	bne lbl_80171A34
/* 801718F8 0016E858  7F 83 E3 78 */	mr r3, r28
/* 801718FC 0016E85C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80171900 0016E860  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80171904 0016E864  7D 89 03 A6 */	mtctr r12
/* 80171908 0016E868  4E 80 04 21 */	bctrl
/* 8017190C 0016E86C  80 1C 03 FC */	lwz r0, 0x3fc(r28)
/* 80171910 0016E870  2C 00 00 02 */	cmpwi r0, 2
/* 80171914 0016E874  41 82 01 20 */	beq lbl_80171A34
/* 80171918 0016E878  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 8017191C 0016E87C  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
/* 80171920 0016E880  2C 00 00 08 */	cmpwi r0, 8
/* 80171924 0016E884  40 82 01 10 */	bne lbl_80171A34
/* 80171928 0016E888  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8017192C 0016E88C  38 A0 00 00 */	li r5, 0
/* 80171930 0016E890  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80171934 0016E894  38 C0 00 01 */	li r6, 1
/* 80171938 0016E898  98 01 00 0C */	stb r0, 0xc(r1)
/* 8017193C 0016E89C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80171940 0016E8A0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80171944 0016E8A4  38 81 00 08 */	addi r4, r1, 8
/* 80171948 0016E8A8  98 01 00 0C */	stb r0, 0xc(r1)
/* 8017194C 0016E8AC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80171950 0016E8B0  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80171954 0016E8B4  38 A0 00 00 */	li r5, 0
/* 80171958 0016E8B8  90 C1 00 08 */	stw r6, 8(r1)
/* 8017195C 0016E8BC  98 01 00 0C */	stb r0, 0xc(r1)
/* 80171960 0016E8C0  4B F9 0C 25 */	bl WeaponHits__20CDamageVulnerabilityCFRC11CWeaponModei
/* 80171964 0016E8C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80171968 0016E8C8  41 82 00 CC */	beq lbl_80171A34
/* 8017196C 0016E8CC  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 80171970 0016E8D0  C3 E2 A0 98 */	lfs f31, lbl_805ABDB8@sda21(r2)
/* 80171974 0016E8D4  54 00 07 7A */	rlwinm r0, r0, 0, 0x1d, 0x1d
/* 80171978 0016E8D8  2C 00 00 04 */	cmpwi r0, 4
/* 8017197C 0016E8DC  40 82 00 08 */	bne lbl_80171984
/* 80171980 0016E8E0  C3 E2 A0 84 */	lfs f31, lbl_805ABDA4@sda21(r2)
lbl_80171984:
/* 80171984 0016E8E4  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 80171988 0016E8E8  38 61 00 30 */	addi r3, r1, 0x30
/* 8017198C 0016E8EC  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 80171990 0016E8F0  38 9C 00 34 */	addi r4, r28, 0x34
/* 80171994 0016E8F4  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 80171998 0016E8F8  38 A1 00 24 */	addi r5, r1, 0x24
/* 8017199C 0016E8FC  C0 3C 00 60 */	lfs f1, 0x60(r28)
/* 801719A0 0016E900  EC 45 00 28 */	fsubs f2, f5, f0
/* 801719A4 0016E904  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 801719A8 0016E908  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801719AC 0016E90C  EC 24 08 28 */	fsubs f1, f4, f1
/* 801719B0 0016E910  EC 03 00 28 */	fsubs f0, f3, f0
/* 801719B4 0016E914  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801719B8 0016E918  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801719BC 0016E91C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801719C0 0016E920  C0 5F 02 9C */	lfs f2, 0x29c(r31)
/* 801719C4 0016E924  C0 3F 02 A0 */	lfs f1, 0x2a0(r31)
/* 801719C8 0016E928  C0 1F 02 98 */	lfs f0, 0x298(r31)
/* 801719CC 0016E92C  EC 45 10 28 */	fsubs f2, f5, f2
/* 801719D0 0016E930  EC 24 08 28 */	fsubs f1, f4, f1
/* 801719D4 0016E934  EC 03 00 28 */	fsubs f0, f3, f0
/* 801719D8 0016E938  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801719DC 0016E93C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801719E0 0016E940  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801719E4 0016E944  48 1A 10 41 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801719E8 0016E948  38 61 00 3C */	addi r3, r1, 0x3c
/* 801719EC 0016E94C  38 81 00 30 */	addi r4, r1, 0x30
/* 801719F0 0016E950  48 1A 23 E1 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 801719F4 0016E954  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 801719F8 0016E958  7F 83 E3 78 */	mr r3, r28
/* 801719FC 0016E95C  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 80171A00 0016E960  7F C4 F3 78 */	mr r4, r30
/* 80171A04 0016E964  80 E1 00 40 */	lwz r7, 0x40(r1)
/* 80171A08 0016E968  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80171A0C 0016E96C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80171A10 0016E970  38 A1 00 48 */	addi r5, r1, 0x48
/* 80171A14 0016E974  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80171A18 0016E978  38 C1 00 18 */	addi r6, r1, 0x18
/* 80171A1C 0016E97C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 80171A20 0016E980  90 01 00 20 */	stw r0, 0x20(r1)
/* 80171A24 0016E984  81 9C 00 00 */	lwz r12, 0(r28)
/* 80171A28 0016E988  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 80171A2C 0016E98C  7D 89 03 A6 */	mtctr r12
/* 80171A30 0016E990  4E 80 04 21 */	bctrl
lbl_80171A34:
/* 80171A34 0016E994  88 1C 09 BF */	lbz r0, 0x9bf(r28)
/* 80171A38 0016E998  38 60 00 01 */	li r3, 1
/* 80171A3C 0016E99C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80171A40 0016E9A0  98 1C 09 BF */	stb r0, 0x9bf(r28)
lbl_80171A44:
/* 80171A44 0016E9A4  7F 83 E3 78 */	mr r3, r28
/* 80171A48 0016E9A8  7F A4 EB 78 */	mr r4, r29
/* 80171A4C 0016E9AC  7F C5 F3 78 */	mr r5, r30
/* 80171A50 0016E9B0  4B F0 80 51 */	bl Touch__10CPatternedFR6CActorR13CStateManager
lbl_80171A54:
/* 80171A54 0016E9B4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80171A58 0016E9B8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80171A5C 0016E9BC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80171A60 0016E9C0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80171A64 0016E9C4  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80171A68 0016E9C8  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80171A6C 0016E9CC  83 81 00 60 */	lwz r28, 0x60(r1)
/* 80171A70 0016E9D0  7C 08 03 A6 */	mtlr r0
/* 80171A74 0016E9D4  38 21 00 80 */	addi r1, r1, 0x80
/* 80171A78 0016E9D8  4E 80 00 20 */	blr

.global Render__8CMetroidCFRC13CStateManager
Render__8CMetroidCFRC13CStateManager:
/* 80171A7C 0016E9DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80171A80 0016E9E0  7C 08 02 A6 */	mflr r0
/* 80171A84 0016E9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80171A88 0016E9E8  4B F0 65 A5 */	bl Render__10CPatternedCFRC13CStateManager
/* 80171A8C 0016E9EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80171A90 0016E9F0  7C 08 03 A6 */	mtlr r0
/* 80171A94 0016E9F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80171A98 0016E9F8  4E 80 00 20 */	blr

.global AcceptScriptMsg__8CMetroidF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__8CMetroidF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80171A9C 0016E9FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80171AA0 0016EA00  7C 08 02 A6 */	mflr r0
/* 80171AA4 0016EA04  90 01 00 44 */	stw r0, 0x44(r1)
/* 80171AA8 0016EA08  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80171AAC 0016EA0C  7C 7F 1B 78 */	mr r31, r3
/* 80171AB0 0016EA10  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80171AB4 0016EA14  7C BE 2B 78 */	mr r30, r5
/* 80171AB8 0016EA18  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80171ABC 0016EA1C  7C DD 33 78 */	mr r29, r6
/* 80171AC0 0016EA20  93 81 00 30 */	stw r28, 0x30(r1)
/* 80171AC4 0016EA24  7C 9C 23 78 */	mr r28, r4
/* 80171AC8 0016EA28  A0 05 00 00 */	lhz r0, 0(r5)
/* 80171ACC 0016EA2C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80171AD0 0016EA30  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80171AD4 0016EA34  4B F0 B0 A5 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80171AD8 0016EA38  2C 1C 00 21 */	cmpwi r28, 0x21
/* 80171ADC 0016EA3C  41 82 00 44 */	beq lbl_80171B20
/* 80171AE0 0016EA40  40 80 00 1C */	bge lbl_80171AFC
/* 80171AE4 0016EA44  2C 1C 00 15 */	cmpwi r28, 0x15
/* 80171AE8 0016EA48  41 82 00 D8 */	beq lbl_80171BC0
/* 80171AEC 0016EA4C  40 80 01 3C */	bge lbl_80171C28
/* 80171AF0 0016EA50  2C 1C 00 04 */	cmpwi r28, 4
/* 80171AF4 0016EA54  41 82 00 44 */	beq lbl_80171B38
/* 80171AF8 0016EA58  48 00 01 30 */	b lbl_80171C28
lbl_80171AFC:
/* 80171AFC 0016EA5C  2C 1C 00 29 */	cmpwi r28, 0x29
/* 80171B00 0016EA60  40 80 00 14 */	bge lbl_80171B14
/* 80171B04 0016EA64  2C 1C 00 23 */	cmpwi r28, 0x23
/* 80171B08 0016EA68  41 82 00 CC */	beq lbl_80171BD4
/* 80171B0C 0016EA6C  40 80 01 1C */	bge lbl_80171C28
/* 80171B10 0016EA70  48 00 00 28 */	b lbl_80171B38
lbl_80171B14:
/* 80171B14 0016EA74  2C 1C 00 2B */	cmpwi r28, 0x2b
/* 80171B18 0016EA78  40 80 01 10 */	bge lbl_80171C28
/* 80171B1C 0016EA7C  48 00 00 2C */	b lbl_80171B48
lbl_80171B20:
/* 80171B20 0016EA80  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80171B24 0016EA84  7F A4 EB 78 */	mr r4, r29
/* 80171B28 0016EA88  4B FC 91 C9 */	bl Activate__15CBodyControllerFR13CStateManager
/* 80171B2C 0016EA8C  7F E3 FB 78 */	mr r3, r31
/* 80171B30 0016EA90  4B FF FB 95 */	bl sub_801716c4
/* 80171B34 0016EA94  48 00 00 F4 */	b lbl_80171C28
lbl_80171B38:
/* 80171B38 0016EA98  7F E3 FB 78 */	mr r3, r31
/* 80171B3C 0016EA9C  7F A4 EB 78 */	mr r4, r29
/* 80171B40 0016EAA0  4B FF B6 E9 */	bl sub_8016d228
/* 80171B44 0016EAA4  48 00 00 E4 */	b lbl_80171C28
lbl_80171B48:
/* 80171B48 0016EAA8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80171B4C 0016EAAC  7F A3 EB 78 */	mr r3, r29
/* 80171B50 0016EAB0  38 81 00 0C */	addi r4, r1, 0xc
/* 80171B54 0016EAB4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80171B58 0016EAB8  4B ED AA 4D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80171B5C 0016EABC  7C 64 1B 78 */	mr r4, r3
/* 80171B60 0016EAC0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80171B64 0016EAC4  4B F3 BB A9 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 80171B68 0016EAC8  83 C3 00 04 */	lwz r30, 4(r3)
/* 80171B6C 0016EACC  28 1E 00 00 */	cmplwi r30, 0
/* 80171B70 0016EAD0  41 82 00 3C */	beq lbl_80171BAC
/* 80171B74 0016EAD4  7F E3 FB 78 */	mr r3, r31
/* 80171B78 0016EAD8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80171B7C 0016EADC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80171B80 0016EAE0  7D 89 03 A6 */	mtctr r12
/* 80171B84 0016EAE4  4E 80 04 21 */	bctrl
/* 80171B88 0016EAE8  38 9E 01 2C */	addi r4, r30, 0x12c
/* 80171B8C 0016EAEC  38 A0 00 00 */	li r5, 0
/* 80171B90 0016EAF0  4B F9 09 F5 */	bl WeaponHits__20CDamageVulnerabilityCFRC11CWeaponModei
/* 80171B94 0016EAF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80171B98 0016EAF8  41 82 00 14 */	beq lbl_80171BAC
/* 80171B9C 0016EAFC  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 80171BA0 0016EB00  7F E3 FB 78 */	mr r3, r31
/* 80171BA4 0016EB04  7F A4 EB 78 */	mr r4, r29
/* 80171BA8 0016EB08  4B FF C1 61 */	bl sub_8016dd08
lbl_80171BAC:
/* 80171BAC 0016EB0C  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 80171BB0 0016EB10  38 60 00 01 */	li r3, 1
/* 80171BB4 0016EB14  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80171BB8 0016EB18  98 1F 09 BF */	stb r0, 0x9bf(r31)
/* 80171BBC 0016EB1C  48 00 00 6C */	b lbl_80171C28
lbl_80171BC0:
/* 80171BC0 0016EB20  88 1F 09 BF */	lbz r0, 0x9bf(r31)
/* 80171BC4 0016EB24  38 60 00 01 */	li r3, 1
/* 80171BC8 0016EB28  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80171BCC 0016EB2C  98 1F 09 BF */	stb r0, 0x9bf(r31)
/* 80171BD0 0016EB30  48 00 00 58 */	b lbl_80171C28
lbl_80171BD4:
/* 80171BD4 0016EB34  A0 7F 06 98 */	lhz r3, 0x698(r31)
/* 80171BD8 0016EB38  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80171BDC 0016EB3C  7C 03 00 40 */	cmplw r3, r0
/* 80171BE0 0016EB40  40 82 00 1C */	bne lbl_80171BFC
/* 80171BE4 0016EB44  7F E4 FB 78 */	mr r4, r31
/* 80171BE8 0016EB48  7F A5 EB 78 */	mr r5, r29
/* 80171BEC 0016EB4C  38 61 00 08 */	addi r3, r1, 8
/* 80171BF0 0016EB50  48 0C 85 F9 */	bl GetTeamAiMgr__10CTeamAiMgrF3CAiRC13CStateManager
/* 80171BF4 0016EB54  A0 01 00 08 */	lhz r0, 8(r1)
/* 80171BF8 0016EB58  B0 1F 06 98 */	sth r0, 0x698(r31)
lbl_80171BFC:
/* 80171BFC 0016EB5C  80 BF 00 04 */	lwz r5, 4(r31)
/* 80171C00 0016EB60  80 9D 08 50 */	lwz r4, 0x850(r29)
/* 80171C04 0016EB64  54 A3 18 38 */	slwi r3, r5, 3
/* 80171C08 0016EB68  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80171C0C 0016EB6C  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80171C10 0016EB70  38 03 00 04 */	addi r0, r3, 4
/* 80171C14 0016EB74  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80171C18 0016EB78  7C 64 00 2E */	lwzx r3, r4, r0
/* 80171C1C 0016EB7C  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80171C20 0016EB80  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 80171C24 0016EB84  90 1F 06 C0 */	stw r0, 0x6c0(r31)
lbl_80171C28:
/* 80171C28 0016EB88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80171C2C 0016EB8C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80171C30 0016EB90  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80171C34 0016EB94  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80171C38 0016EB98  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80171C3C 0016EB9C  7C 08 03 A6 */	mtlr r0
/* 80171C40 0016EBA0  38 21 00 40 */	addi r1, r1, 0x40
/* 80171C44 0016EBA4  4E 80 00 20 */	blr

.global Think__8CMetroidFfR13CStateManager
Think__8CMetroidFfR13CStateManager:
/* 80171C48 0016EBA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80171C4C 0016EBAC  7C 08 02 A6 */	mflr r0
/* 80171C50 0016EBB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80171C54 0016EBB4  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80171C58 0016EBB8  FF E0 08 90 */	fmr f31, f1
/* 80171C5C 0016EBBC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80171C60 0016EBC0  7C 9F 23 78 */	mr r31, r4
/* 80171C64 0016EBC4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80171C68 0016EBC8  7C 7E 1B 78 */	mr r30, r3
/* 80171C6C 0016EBCC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80171C70 0016EBD0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80171C74 0016EBD4  41 82 00 90 */	beq lbl_80171D04
/* 80171C78 0016EBD8  A0 DE 00 08 */	lhz r6, 8(r30)
/* 80171C7C 0016EBDC  7F E3 FB 78 */	mr r3, r31
/* 80171C80 0016EBE0  38 81 00 10 */	addi r4, r1, 0x10
/* 80171C84 0016EBE4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80171C88 0016EBE8  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 80171C8C 0016EBEC  A0 1E 06 98 */	lhz r0, 0x698(r30)
/* 80171C90 0016EBF0  B0 C1 00 08 */	sth r6, 8(r1)
/* 80171C94 0016EBF4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80171C98 0016EBF8  48 0C 84 E9 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 80171C9C 0016EBFC  28 03 00 00 */	cmplwi r3, 0
/* 80171CA0 0016EC00  40 82 00 10 */	bne lbl_80171CB0
/* 80171CA4 0016EC04  7F C3 F3 78 */	mr r3, r30
/* 80171CA8 0016EC08  7F E4 FB 78 */	mr r4, r31
/* 80171CAC 0016EC0C  4B FF B6 21 */	bl sub_8016d2cc
lbl_80171CB0:
/* 80171CB0 0016EC10  FC 20 F8 90 */	fmr f1, f31
/* 80171CB4 0016EC14  7F C3 F3 78 */	mr r3, r30
/* 80171CB8 0016EC18  7F E4 FB 78 */	mr r4, r31
/* 80171CBC 0016EC1C  4B FF 84 19 */	bl sub_8016a0d4
/* 80171CC0 0016EC20  FC 20 F8 90 */	fmr f1, f31
/* 80171CC4 0016EC24  7F C3 F3 78 */	mr r3, r30
/* 80171CC8 0016EC28  7F E4 FB 78 */	mr r4, r31
/* 80171CCC 0016EC2C  4B FF A0 29 */	bl sub_8016bcf4
/* 80171CD0 0016EC30  FC 20 F8 90 */	fmr f1, f31
/* 80171CD4 0016EC34  7F C3 F3 78 */	mr r3, r30
/* 80171CD8 0016EC38  7F E4 FB 78 */	mr r4, r31
/* 80171CDC 0016EC3C  4B FF AB 4D */	bl sub_8016c828
/* 80171CE0 0016EC40  7F C3 F3 78 */	mr r3, r30
/* 80171CE4 0016EC44  4B FF FA 79 */	bl sub_8017175c
/* 80171CE8 0016EC48  7F C3 F3 78 */	mr r3, r30
/* 80171CEC 0016EC4C  7F E4 FB 78 */	mr r4, r31
/* 80171CF0 0016EC50  4B FF A7 75 */	bl sub_8016c464
/* 80171CF4 0016EC54  FC 20 F8 90 */	fmr f1, f31
/* 80171CF8 0016EC58  7F C3 F3 78 */	mr r3, r30
/* 80171CFC 0016EC5C  7F E4 FB 78 */	mr r4, r31
/* 80171D00 0016EC60  4B F0 7E 19 */	bl Think__10CPatternedFfR13CStateManager
lbl_80171D04:
/* 80171D04 0016EC64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80171D08 0016EC68  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80171D0C 0016EC6C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80171D10 0016EC70  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80171D14 0016EC74  7C 08 03 A6 */	mtlr r0
/* 80171D18 0016EC78  38 21 00 30 */	addi r1, r1, 0x30
/* 80171D1C 0016EC7C  4E 80 00 20 */	blr

.global Accept__8CMetroidFR8IVisitor
Accept__8CMetroidFR8IVisitor:
/* 80171D20 0016EC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80171D24 0016EC84  7C 08 02 A6 */	mflr r0
/* 80171D28 0016EC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80171D2C 0016EC8C  7C 60 1B 78 */	mr r0, r3
/* 80171D30 0016EC90  7C 83 23 78 */	mr r3, r4
/* 80171D34 0016EC94  81 84 00 00 */	lwz r12, 0(r4)
/* 80171D38 0016EC98  7C 04 03 78 */	mr r4, r0
/* 80171D3C 0016EC9C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80171D40 0016ECA0  7D 89 03 A6 */	mtctr r12
/* 80171D44 0016ECA4  4E 80 04 21 */	bctrl
/* 80171D48 0016ECA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80171D4C 0016ECAC  7C 08 03 A6 */	mtlr r0
/* 80171D50 0016ECB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80171D54 0016ECB4  4E 80 00 20 */	blr

.global __dt__8CMetroid
__dt__8CMetroid:
/* 80171D58 0016ECB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80171D5C 0016ECBC  7C 08 02 A6 */	mflr r0
/* 80171D60 0016ECC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80171D64 0016ECC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80171D68 0016ECC8  7C 9F 23 78 */	mr r31, r4
/* 80171D6C 0016ECCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80171D70 0016ECD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80171D74 0016ECD4  41 82 00 D8 */	beq lbl_80171E4C
/* 80171D78 0016ECD8  3C 60 80 3E */	lis r3, lbl_803E3AD8@ha
/* 80171D7C 0016ECDC  34 1E 09 54 */	addic. r0, r30, 0x954
/* 80171D80 0016ECE0  38 03 3A D8 */	addi r0, r3, lbl_803E3AD8@l
/* 80171D84 0016ECE4  90 1E 00 00 */	stw r0, 0(r30)
/* 80171D88 0016ECE8  41 82 00 10 */	beq lbl_80171D98
/* 80171D8C 0016ECEC  38 7E 09 54 */	addi r3, r30, 0x954
/* 80171D90 0016ECF0  38 80 FF FF */	li r4, -1
/* 80171D94 0016ECF4  4B F9 48 75 */	bl __dt__16CActorParametersFv
lbl_80171D98:
/* 80171D98 0016ECF8  34 1E 06 C0 */	addic. r0, r30, 0x6c0
/* 80171D9C 0016ECFC  41 82 00 60 */	beq lbl_80171DFC
/* 80171DA0 0016ED00  34 1E 06 C4 */	addic. r0, r30, 0x6c4
/* 80171DA4 0016ED04  41 82 00 58 */	beq lbl_80171DFC
/* 80171DA8 0016ED08  80 BE 06 C4 */	lwz r5, 0x6c4(r30)
/* 80171DAC 0016ED0C  38 60 00 00 */	li r3, 0
/* 80171DB0 0016ED10  2C 05 00 00 */	cmpwi r5, 0
/* 80171DB4 0016ED14  40 81 00 40 */	ble lbl_80171DF4
/* 80171DB8 0016ED18  2C 05 00 08 */	cmpwi r5, 8
/* 80171DBC 0016ED1C  38 85 FF F8 */	addi r4, r5, -8
/* 80171DC0 0016ED20  40 81 00 20 */	ble lbl_80171DE0
/* 80171DC4 0016ED24  38 04 00 07 */	addi r0, r4, 7
/* 80171DC8 0016ED28  54 00 E8 FE */	srwi r0, r0, 3
/* 80171DCC 0016ED2C  7C 09 03 A6 */	mtctr r0
/* 80171DD0 0016ED30  2C 04 00 00 */	cmpwi r4, 0
/* 80171DD4 0016ED34  40 81 00 0C */	ble lbl_80171DE0
lbl_80171DD8:
/* 80171DD8 0016ED38  38 63 00 08 */	addi r3, r3, 8
/* 80171DDC 0016ED3C  42 00 FF FC */	bdnz lbl_80171DD8
lbl_80171DE0:
/* 80171DE0 0016ED40  7C 03 28 50 */	subf r0, r3, r5
/* 80171DE4 0016ED44  7C 09 03 A6 */	mtctr r0
/* 80171DE8 0016ED48  7C 03 28 00 */	cmpw r3, r5
/* 80171DEC 0016ED4C  40 80 00 08 */	bge lbl_80171DF4
lbl_80171DF0:
/* 80171DF0 0016ED50  42 00 00 00 */	bdnz lbl_80171DF0
lbl_80171DF4:
/* 80171DF4 0016ED54  38 00 00 00 */	li r0, 0
/* 80171DF8 0016ED58  90 1E 06 C4 */	stw r0, 0x6c4(r30)
lbl_80171DFC:
/* 80171DFC 0016ED5C  34 1E 06 A0 */	addic. r0, r30, 0x6a0
/* 80171E00 0016ED60  41 82 00 24 */	beq lbl_80171E24
/* 80171E04 0016ED64  3C 60 80 3F */	lis r3, lbl_803ECAF8@ha
/* 80171E08 0016ED68  34 1E 06 A0 */	addic. r0, r30, 0x6a0
/* 80171E0C 0016ED6C  38 03 CA F8 */	addi r0, r3, lbl_803ECAF8@l
/* 80171E10 0016ED70  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80171E14 0016ED74  41 82 00 10 */	beq lbl_80171E24
/* 80171E18 0016ED78  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 80171E1C 0016ED7C  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 80171E20 0016ED80  90 1E 06 A0 */	stw r0, 0x6a0(r30)
lbl_80171E24:
/* 80171E24 0016ED84  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80171E28 0016ED88  38 80 FF FF */	li r4, -1
/* 80171E2C 0016ED8C  4B F5 DE ED */	bl sub_800cfd18
/* 80171E30 0016ED90  7F C3 F3 78 */	mr r3, r30
/* 80171E34 0016ED94  38 80 00 00 */	li r4, 0
/* 80171E38 0016ED98  4B F0 57 39 */	bl __dt__10CPatternedFv
/* 80171E3C 0016ED9C  7F E0 07 35 */	extsh. r0, r31
/* 80171E40 0016EDA0  40 81 00 0C */	ble lbl_80171E4C
/* 80171E44 0016EDA4  7F C3 F3 78 */	mr r3, r30
/* 80171E48 0016EDA8  48 1A 3A E9 */	bl Free__7CMemoryFPCv
lbl_80171E4C:
/* 80171E4C 0016EDAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80171E50 0016EDB0  7F C3 F3 78 */	mr r3, r30
/* 80171E54 0016EDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80171E58 0016EDB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80171E5C 0016EDBC  7C 08 03 A6 */	mtlr r0
/* 80171E60 0016EDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80171E64 0016EDC4  4E 80 00 20 */	blr

.global "__ct__8CMetroidF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC12CMetroidData"
"__ct__8CMetroidF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC12CMetroidData":
/* 80171E68 0016EDC8  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80171E6C 0016EDCC  7C 08 02 A6 */	mflr r0
/* 80171E70 0016EDD0  90 01 01 24 */	stw r0, 0x124(r1)
/* 80171E74 0016EDD4  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80171E78 0016EDD8  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 80171E7C 0016EDDC  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80171E80 0016EDE0  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 80171E84 0016EDE4  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80171E88 0016EDE8  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, qr0
/* 80171E8C 0016EDEC  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 80171E90 0016EDF0  F3 81 00 E8 */	psq_st f28, 232(r1), 0, qr0
/* 80171E94 0016EDF4  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 80171E98 0016EDF8  A0 04 00 00 */	lhz r0, 0(r4)
/* 80171E9C 0016EDFC  7D 5C 53 78 */	mr r28, r10
/* 80171EA0 0016EE00  7C DB 33 78 */	mr r27, r6
/* 80171EA4 0016EE04  7C EC 3B 78 */	mr r12, r7
/* 80171EA8 0016EE08  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80171EAC 0016EE0C  7D 04 43 78 */	mr r4, r8
/* 80171EB0 0016EE10  7D 2A 4B 78 */	mr r10, r9
/* 80171EB4 0016EE14  7C A6 2B 78 */	mr r6, r5
/* 80171EB8 0016EE18  93 81 00 08 */	stw r28, 8(r1)
/* 80171EBC 0016EE1C  39 60 00 01 */	li r11, 1
/* 80171EC0 0016EE20  7C 89 23 78 */	mr r9, r4
/* 80171EC4 0016EE24  38 00 00 03 */	li r0, 3
/* 80171EC8 0016EE28  91 61 00 0C */	stw r11, 0xc(r1)
/* 80171ECC 0016EE2C  7C 7A 1B 78 */	mr r26, r3
/* 80171ED0 0016EE30  83 A1 01 28 */	lwz r29, 0x128(r1)
/* 80171ED4 0016EE34  7F 67 DB 78 */	mr r7, r27
/* 80171ED8 0016EE38  91 61 00 10 */	stw r11, 0x10(r1)
/* 80171EDC 0016EE3C  7D 88 63 78 */	mr r8, r12
/* 80171EE0 0016EE40  83 E1 01 2C */	lwz r31, 0x12c(r1)
/* 80171EE4 0016EE44  38 A1 00 20 */	addi r5, r1, 0x20
/* 80171EE8 0016EE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80171EEC 0016EE4C  38 80 00 13 */	li r4, 0x13
/* 80171EF0 0016EE50  83 C1 01 30 */	lwz r30, 0x130(r1)
/* 80171EF4 0016EE54  93 A1 00 18 */	stw r29, 0x18(r1)
/* 80171EF8 0016EE58  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80171EFC 0016EE5C  4B F0 B5 55 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 80171F00 0016EE60  3C 60 80 3E */	lis r3, lbl_803E3AD8@ha
/* 80171F04 0016EE64  38 00 FF FF */	li r0, -1
/* 80171F08 0016EE68  38 63 3A D8 */	addi r3, r3, lbl_803E3AD8@l
/* 80171F0C 0016EE6C  7F E4 FB 78 */	mr r4, r31
/* 80171F10 0016EE70  90 7A 00 00 */	stw r3, 0(r26)
/* 80171F14 0016EE74  38 7A 05 6C */	addi r3, r26, 0x56c
/* 80171F18 0016EE78  90 1A 05 68 */	stw r0, 0x568(r26)
/* 80171F1C 0016EE7C  4B FF 99 15 */	bl sub_8016b830
/* 80171F20 0016EE80  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80171F24 0016EE84  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80171F28 0016EE88  C0 02 A1 08 */	lfs f0, lbl_805ABE28@sda21(r2)
/* 80171F2C 0016EE8C  3B E3 66 A0 */	addi r31, r3, sZeroVector__9CVector3f@l
/* 80171F30 0016EE90  B0 1A 06 98 */	sth r0, 0x698(r26)
/* 80171F34 0016EE94  3B 3A 06 A0 */	addi r25, r26, 0x6a0
/* 80171F38 0016EE98  38 9A 00 68 */	addi r4, r26, 0x68
/* 80171F3C 0016EE9C  80 BA 00 64 */	lwz r5, 0x64(r26)
/* 80171F40 0016EEA0  7F 23 CB 78 */	mr r3, r25
/* 80171F44 0016EEA4  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80171F48 0016EEA8  C0 45 00 04 */	lfs f2, 4(r5)
/* 80171F4C 0016EEAC  C0 65 00 00 */	lfs f3, 0(r5)
/* 80171F50 0016EEB0  C0 25 00 08 */	lfs f1, 8(r5)
/* 80171F54 0016EEB4  EF 80 00 B2 */	fmuls f28, f0, f2
/* 80171F58 0016EEB8  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80171F5C 0016EEBC  C3 DF 00 04 */	lfs f30, 4(r31)
/* 80171F60 0016EEC0  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80171F64 0016EEC4  C3 BF 00 08 */	lfs f29, 8(r31)
/* 80171F68 0016EEC8  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80171F6C 0016EECC  48 15 D9 49 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 80171F70 0016EED0  3C 60 80 3F */	lis r3, lbl_803ECAF8@ha
/* 80171F74 0016EED4  C0 22 A0 98 */	lfs f1, lbl_805ABDB8@sda21(r2)
/* 80171F78 0016EED8  38 03 CA F8 */	addi r0, r3, lbl_803ECAF8@l
/* 80171F7C 0016EEDC  38 7A 06 C0 */	addi r3, r26, 0x6c0
/* 80171F80 0016EEE0  90 19 00 00 */	stw r0, 0(r25)
/* 80171F84 0016EEE4  FC 40 08 90 */	fmr f2, f1
/* 80171F88 0016EEE8  38 80 00 00 */	li r4, 0
/* 80171F8C 0016EEEC  38 A0 00 03 */	li r5, 3
/* 80171F90 0016EEF0  D3 F9 00 10 */	stfs f31, 0x10(r25)
/* 80171F94 0016EEF4  D3 D9 00 14 */	stfs f30, 0x14(r25)
/* 80171F98 0016EEF8  D3 B9 00 18 */	stfs f29, 0x18(r25)
/* 80171F9C 0016EEFC  D3 99 00 1C */	stfs f28, 0x1c(r25)
/* 80171FA0 0016EF00  80 DC 01 0C */	lwz r6, 0x10c(r28)
/* 80171FA4 0016EF04  48 05 6D F1 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 80171FA8 0016EF08  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80171FAC 0016EF0C  C0 22 A0 80 */	lfs f1, lbl_805ABDA0@sda21(r2)
/* 80171FB0 0016EF10  39 03 66 A0 */	addi r8, r3, sZeroVector__9CVector3f@l
/* 80171FB4 0016EF14  38 7B FF FE */	addi r3, r27, -2
/* 80171FB8 0016EF18  C0 08 00 00 */	lfs f0, 0(r8)
/* 80171FBC 0016EF1C  20 1B 00 02 */	subfic r0, r27, 2
/* 80171FC0 0016EF20  7C 60 03 78 */	or r0, r3, r0
/* 80171FC4 0016EF24  38 C0 00 00 */	li r6, 0
/* 80171FC8 0016EF28  D0 1A 07 A4 */	stfs f0, 0x7a4(r26)
/* 80171FCC 0016EF2C  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 80171FD0 0016EF30  38 00 FF FF */	li r0, -1
/* 80171FD4 0016EF34  7F 84 E3 78 */	mr r4, r28
/* 80171FD8 0016EF38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80171FDC 0016EF3C  38 7A 08 1C */	addi r3, r26, 0x81c
/* 80171FE0 0016EF40  D0 1A 07 A8 */	stfs f0, 0x7a8(r26)
/* 80171FE4 0016EF44  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80171FE8 0016EF48  D0 1A 07 AC */	stfs f0, 0x7ac(r26)
/* 80171FEC 0016EF4C  A0 ED A3 8C */	lhz r7, kInvalidUniqueId@sda21(r13)
/* 80171FF0 0016EF50  B0 FA 07 B0 */	sth r7, 0x7b0(r26)
/* 80171FF4 0016EF54  D0 3A 07 B4 */	stfs f1, 0x7b4(r26)
/* 80171FF8 0016EF58  D0 3A 07 B8 */	stfs f1, 0x7b8(r26)
/* 80171FFC 0016EF5C  D0 3A 07 BC */	stfs f1, 0x7bc(r26)
/* 80172000 0016EF60  D0 3A 07 C0 */	stfs f1, 0x7c0(r26)
/* 80172004 0016EF64  D0 3A 07 C4 */	stfs f1, 0x7c4(r26)
/* 80172008 0016EF68  90 DA 07 C8 */	stw r6, 0x7c8(r26)
/* 8017200C 0016EF6C  90 BA 07 CC */	stw r5, 0x7cc(r26)
/* 80172010 0016EF70  80 BA 00 64 */	lwz r5, 0x64(r26)
/* 80172014 0016EF74  C0 45 00 04 */	lfs f2, 4(r5)
/* 80172018 0016EF78  C0 65 00 08 */	lfs f3, 8(r5)
/* 8017201C 0016EF7C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80172020 0016EF80  D0 1A 07 D0 */	stfs f0, 0x7d0(r26)
/* 80172024 0016EF84  D0 5A 07 D4 */	stfs f2, 0x7d4(r26)
/* 80172028 0016EF88  D0 7A 07 D8 */	stfs f3, 0x7d8(r26)
/* 8017202C 0016EF8C  80 BA 00 64 */	lwz r5, 0x64(r26)
/* 80172030 0016EF90  C0 45 00 04 */	lfs f2, 4(r5)
/* 80172034 0016EF94  C0 65 00 08 */	lfs f3, 8(r5)
/* 80172038 0016EF98  C0 05 00 00 */	lfs f0, 0(r5)
/* 8017203C 0016EF9C  D0 1A 07 DC */	stfs f0, 0x7dc(r26)
/* 80172040 0016EFA0  D0 5A 07 E0 */	stfs f2, 0x7e0(r26)
/* 80172044 0016EFA4  D0 7A 07 E4 */	stfs f3, 0x7e4(r26)
/* 80172048 0016EFA8  80 BA 00 64 */	lwz r5, 0x64(r26)
/* 8017204C 0016EFAC  C0 45 00 04 */	lfs f2, 4(r5)
/* 80172050 0016EFB0  C0 65 00 08 */	lfs f3, 8(r5)
/* 80172054 0016EFB4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80172058 0016EFB8  D0 1A 07 E8 */	stfs f0, 0x7e8(r26)
/* 8017205C 0016EFBC  D0 5A 07 EC */	stfs f2, 0x7ec(r26)
/* 80172060 0016EFC0  D0 7A 07 F0 */	stfs f3, 0x7f0(r26)
/* 80172064 0016EFC4  D0 3A 07 F4 */	stfs f1, 0x7f4(r26)
/* 80172068 0016EFC8  D0 3A 07 F8 */	stfs f1, 0x7f8(r26)
/* 8017206C 0016EFCC  D0 3A 07 FC */	stfs f1, 0x7fc(r26)
/* 80172070 0016EFD0  D0 3A 08 00 */	stfs f1, 0x800(r26)
/* 80172074 0016EFD4  D0 3A 08 04 */	stfs f1, 0x804(r26)
/* 80172078 0016EFD8  D0 3A 08 08 */	stfs f1, 0x808(r26)
/* 8017207C 0016EFDC  C0 08 00 00 */	lfs f0, 0(r8)
/* 80172080 0016EFE0  D0 1A 08 0C */	stfs f0, 0x80c(r26)
/* 80172084 0016EFE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80172088 0016EFE8  D0 1A 08 10 */	stfs f0, 0x810(r26)
/* 8017208C 0016EFEC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80172090 0016EFF0  D0 1A 08 14 */	stfs f0, 0x814(r26)
/* 80172094 0016EFF4  90 1A 08 18 */	stw r0, 0x818(r26)
/* 80172098 0016EFF8  48 00 02 15 */	bl sub_801722ac
/* 8017209C 0016EFFC  7F A4 EB 78 */	mr r4, r29
/* 801720A0 0016F000  38 7A 09 54 */	addi r3, r26, 0x954
/* 801720A4 0016F004  4B F5 35 79 */	bl __ct__16CActorParametersFRC16CActorParameters
/* 801720A8 0016F008  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801720AC 0016F00C  38 80 00 00 */	li r4, 0
/* 801720B0 0016F010  38 61 00 24 */	addi r3, r1, 0x24
/* 801720B4 0016F014  B0 1A 09 BC */	sth r0, 0x9bc(r26)
/* 801720B8 0016F018  98 9A 09 BE */	stb r4, 0x9be(r26)
/* 801720BC 0016F01C  88 1A 09 BF */	lbz r0, 0x9bf(r26)
/* 801720C0 0016F020  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801720C4 0016F024  98 1A 09 BF */	stb r0, 0x9bf(r26)
/* 801720C8 0016F028  88 1A 09 BF */	lbz r0, 0x9bf(r26)
/* 801720CC 0016F02C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801720D0 0016F030  98 1A 09 BF */	stb r0, 0x9bf(r26)
/* 801720D4 0016F034  88 1A 09 BF */	lbz r0, 0x9bf(r26)
/* 801720D8 0016F038  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 801720DC 0016F03C  98 1A 09 BF */	stb r0, 0x9bf(r26)
/* 801720E0 0016F040  88 1A 09 BF */	lbz r0, 0x9bf(r26)
/* 801720E4 0016F044  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 801720E8 0016F048  98 1A 09 BF */	stb r0, 0x9bf(r26)
/* 801720EC 0016F04C  88 1A 09 BF */	lbz r0, 0x9bf(r26)
/* 801720F0 0016F050  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 801720F4 0016F054  98 1A 09 BF */	stb r0, 0x9bf(r26)
/* 801720F8 0016F058  88 1A 09 BF */	lbz r0, 0x9bf(r26)
/* 801720FC 0016F05C  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80172100 0016F060  98 1A 09 BF */	stb r0, 0x9bf(r26)
/* 80172104 0016F064  88 1A 09 BF */	lbz r0, 0x9bf(r26)
/* 80172108 0016F068  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8017210C 0016F06C  98 1A 09 BF */	stb r0, 0x9bf(r26)
/* 80172110 0016F070  88 1A 09 BF */	lbz r0, 0x9bf(r26)
/* 80172114 0016F074  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80172118 0016F078  98 1A 09 BF */	stb r0, 0x9bf(r26)
/* 8017211C 0016F07C  88 1A 09 C0 */	lbz r0, 0x9c0(r26)
/* 80172120 0016F080  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80172124 0016F084  98 1A 09 C0 */	stb r0, 0x9c0(r26)
/* 80172128 0016F088  48 17 0F 55 */	bl NoParameter__12CPASAnimParmFv
/* 8017212C 0016F08C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80172130 0016F090  48 17 0F 4D */	bl NoParameter__12CPASAnimParmFv
/* 80172134 0016F094  38 61 00 34 */	addi r3, r1, 0x34
/* 80172138 0016F098  48 17 0F 45 */	bl NoParameter__12CPASAnimParmFv
/* 8017213C 0016F09C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80172140 0016F0A0  48 17 0F 3D */	bl NoParameter__12CPASAnimParmFv
/* 80172144 0016F0A4  38 61 00 44 */	addi r3, r1, 0x44
/* 80172148 0016F0A8  48 17 0F 35 */	bl NoParameter__12CPASAnimParmFv
/* 8017214C 0016F0AC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80172150 0016F0B0  48 17 0F 2D */	bl NoParameter__12CPASAnimParmFv
/* 80172154 0016F0B4  38 61 00 54 */	addi r3, r1, 0x54
/* 80172158 0016F0B8  38 80 00 03 */	li r4, 3
/* 8017215C 0016F0BC  48 17 0E 29 */	bl FromEnum__12CPASAnimParmFi
/* 80172160 0016F0C0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80172164 0016F0C4  38 80 00 02 */	li r4, 2
/* 80172168 0016F0C8  48 17 0E 1D */	bl FromEnum__12CPASAnimParmFi
/* 8017216C 0016F0CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80172170 0016F0D0  38 01 00 24 */	addi r0, r1, 0x24
/* 80172174 0016F0D4  90 61 00 08 */	stw r3, 8(r1)
/* 80172178 0016F0D8  38 61 00 70 */	addi r3, r1, 0x70
/* 8017217C 0016F0DC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80172180 0016F0E0  38 C1 00 54 */	addi r6, r1, 0x54
/* 80172184 0016F0E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80172188 0016F0E8  38 E1 00 4C */	addi r7, r1, 0x4c
/* 8017218C 0016F0EC  39 01 00 44 */	addi r8, r1, 0x44
/* 80172190 0016F0F0  39 21 00 3C */	addi r9, r1, 0x3c
/* 80172194 0016F0F4  39 41 00 34 */	addi r10, r1, 0x34
/* 80172198 0016F0F8  38 80 00 09 */	li r4, 9
/* 8017219C 0016F0FC  4B F0 B1 29 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801721A0 0016F100  7F 43 D3 78 */	mr r3, r26
/* 801721A4 0016F104  38 81 00 70 */	addi r4, r1, 0x70
/* 801721A8 0016F108  4B F0 A8 59 */	bl func_8007CA00
/* 801721AC 0016F10C  D0 3A 08 08 */	stfs f1, 0x808(r26)
/* 801721B0 0016F110  7F 43 D3 78 */	mr r3, r26
/* 801721B4 0016F114  4B FF F5 A9 */	bl sub_8017175c
/* 801721B8 0016F118  C0 22 A1 08 */	lfs f1, lbl_805ABE28@sda21(r2)
/* 801721BC 0016F11C  7F 43 D3 78 */	mr r3, r26
/* 801721C0 0016F120  4B FA 83 21 */	bl SetCoefficientOfRestitutionModifier__13CPhysicsActorFf
/* 801721C4 0016F124  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 801721C8 0016F128  38 60 00 00 */	li r3, 0
/* 801721CC 0016F12C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801721D0 0016F130  98 1A 04 E2 */	stb r0, 0x4e2(r26)
/* 801721D4 0016F134  88 1A 04 E1 */	lbz r0, 0x4e1(r26)
/* 801721D8 0016F138  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801721DC 0016F13C  98 1A 04 E1 */	stb r0, 0x4e1(r26)
/* 801721E0 0016F140  88 1A 04 E1 */	lbz r0, 0x4e1(r26)
/* 801721E4 0016F144  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801721E8 0016F148  98 1A 04 E1 */	stb r0, 0x4e1(r26)
/* 801721EC 0016F14C  88 1A 04 E1 */	lbz r0, 0x4e1(r26)
/* 801721F0 0016F150  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801721F4 0016F154  98 1A 04 E1 */	stb r0, 0x4e1(r26)
/* 801721F8 0016F158  80 1A 03 FC */	lwz r0, 0x3fc(r26)
/* 801721FC 0016F15C  2C 00 00 02 */	cmpwi r0, 2
/* 80172200 0016F160  40 82 00 10 */	bne lbl_80172210
/* 80172204 0016F164  88 1A 04 E1 */	lbz r0, 0x4e1(r26)
/* 80172208 0016F168  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8017220C 0016F16C  98 1A 04 E1 */	stb r0, 0x4e1(r26)
lbl_80172210:
/* 80172210 0016F170  38 00 00 01 */	li r0, 1
/* 80172214 0016F174  34 A1 00 74 */	addic. r5, r1, 0x74
/* 80172218 0016F178  98 1A 09 14 */	stb r0, 0x914(r26)
/* 8017221C 0016F17C  41 82 00 58 */	beq lbl_80172274
/* 80172220 0016F180  80 C5 00 00 */	lwz r6, 0(r5)
/* 80172224 0016F184  38 60 00 00 */	li r3, 0
/* 80172228 0016F188  2C 06 00 00 */	cmpwi r6, 0
/* 8017222C 0016F18C  40 81 00 40 */	ble lbl_8017226C
/* 80172230 0016F190  2C 06 00 08 */	cmpwi r6, 8
/* 80172234 0016F194  38 86 FF F8 */	addi r4, r6, -8
/* 80172238 0016F198  40 81 00 20 */	ble lbl_80172258
/* 8017223C 0016F19C  38 04 00 07 */	addi r0, r4, 7
/* 80172240 0016F1A0  54 00 E8 FE */	srwi r0, r0, 3
/* 80172244 0016F1A4  7C 09 03 A6 */	mtctr r0
/* 80172248 0016F1A8  2C 04 00 00 */	cmpwi r4, 0
/* 8017224C 0016F1AC  40 81 00 0C */	ble lbl_80172258
lbl_80172250:
/* 80172250 0016F1B0  38 63 00 08 */	addi r3, r3, 8
/* 80172254 0016F1B4  42 00 FF FC */	bdnz lbl_80172250
lbl_80172258:
/* 80172258 0016F1B8  7C 03 30 50 */	subf r0, r3, r6
/* 8017225C 0016F1BC  7C 09 03 A6 */	mtctr r0
/* 80172260 0016F1C0  7C 03 30 00 */	cmpw r3, r6
/* 80172264 0016F1C4  40 80 00 08 */	bge lbl_8017226C
lbl_80172268:
/* 80172268 0016F1C8  42 00 00 00 */	bdnz lbl_80172268
lbl_8017226C:
/* 8017226C 0016F1CC  38 00 00 00 */	li r0, 0
/* 80172270 0016F1D0  90 05 00 00 */	stw r0, 0(r5)
lbl_80172274:
/* 80172274 0016F1D4  7F 43 D3 78 */	mr r3, r26
/* 80172278 0016F1D8  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 8017227C 0016F1DC  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80172280 0016F1E0  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 80172284 0016F1E4  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80172288 0016F1E8  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, qr0
/* 8017228C 0016F1EC  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80172290 0016F1F0  E3 81 00 E8 */	psq_l f28, 232(r1), 0, qr0
/* 80172294 0016F1F4  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 80172298 0016F1F8  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 8017229C 0016F1FC  80 01 01 24 */	lwz r0, 0x124(r1)
/* 801722A0 0016F200  7C 08 03 A6 */	mtlr r0
/* 801722A4 0016F204  38 21 01 20 */	addi r1, r1, 0x120
/* 801722A8 0016F208  4E 80 00 20 */	blr

.global sub_801722ac
sub_801722ac:
/* 801722AC 0016F20C  C0 04 00 00 */	lfs f0, 0(r4)
/* 801722B0 0016F210  D0 03 00 00 */	stfs f0, 0(r3)
/* 801722B4 0016F214  C0 04 00 04 */	lfs f0, 4(r4)
/* 801722B8 0016F218  D0 03 00 04 */	stfs f0, 4(r3)
/* 801722BC 0016F21C  C0 04 00 08 */	lfs f0, 8(r4)
/* 801722C0 0016F220  D0 03 00 08 */	stfs f0, 8(r3)
/* 801722C4 0016F224  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801722C8 0016F228  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801722CC 0016F22C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801722D0 0016F230  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801722D4 0016F234  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801722D8 0016F238  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801722DC 0016F23C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 801722E0 0016F240  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801722E4 0016F244  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 801722E8 0016F248  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801722EC 0016F24C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 801722F0 0016F250  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801722F4 0016F254  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 801722F8 0016F258  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801722FC 0016F25C  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 80172300 0016F260  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80172304 0016F264  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80172308 0016F268  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8017230C 0016F26C  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 80172310 0016F270  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80172314 0016F274  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80172318 0016F278  90 03 00 34 */	stw r0, 0x34(r3)
/* 8017231C 0016F27C  88 04 00 38 */	lbz r0, 0x38(r4)
/* 80172320 0016F280  98 03 00 38 */	stb r0, 0x38(r3)
/* 80172324 0016F284  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80172328 0016F288  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8017232C 0016F28C  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80172330 0016F290  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80172334 0016F294  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80172338 0016F298  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8017233C 0016F29C  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80172340 0016F2A0  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80172344 0016F2A4  88 04 00 4C */	lbz r0, 0x4c(r4)
/* 80172348 0016F2A8  98 03 00 4C */	stb r0, 0x4c(r3)
/* 8017234C 0016F2AC  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80172350 0016F2B0  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80172354 0016F2B4  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 80172358 0016F2B8  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 8017235C 0016F2BC  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 80172360 0016F2C0  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80172364 0016F2C4  80 A4 00 5C */	lwz r5, 0x5c(r4)
/* 80172368 0016F2C8  80 04 00 60 */	lwz r0, 0x60(r4)
/* 8017236C 0016F2CC  90 A3 00 5C */	stw r5, 0x5c(r3)
/* 80172370 0016F2D0  90 03 00 60 */	stw r0, 0x60(r3)
/* 80172374 0016F2D4  80 A4 00 64 */	lwz r5, 0x64(r4)
/* 80172378 0016F2D8  80 04 00 68 */	lwz r0, 0x68(r4)
/* 8017237C 0016F2DC  90 A3 00 64 */	stw r5, 0x64(r3)
/* 80172380 0016F2E0  90 03 00 68 */	stw r0, 0x68(r3)
/* 80172384 0016F2E4  80 A4 00 6C */	lwz r5, 0x6c(r4)
/* 80172388 0016F2E8  80 04 00 70 */	lwz r0, 0x70(r4)
/* 8017238C 0016F2EC  90 A3 00 6C */	stw r5, 0x6c(r3)
/* 80172390 0016F2F0  90 03 00 70 */	stw r0, 0x70(r3)
/* 80172394 0016F2F4  80 A4 00 74 */	lwz r5, 0x74(r4)
/* 80172398 0016F2F8  80 04 00 78 */	lwz r0, 0x78(r4)
/* 8017239C 0016F2FC  90 A3 00 74 */	stw r5, 0x74(r3)
/* 801723A0 0016F300  90 03 00 78 */	stw r0, 0x78(r3)
/* 801723A4 0016F304  80 A4 00 7C */	lwz r5, 0x7c(r4)
/* 801723A8 0016F308  80 04 00 80 */	lwz r0, 0x80(r4)
/* 801723AC 0016F30C  90 A3 00 7C */	stw r5, 0x7c(r3)
/* 801723B0 0016F310  90 03 00 80 */	stw r0, 0x80(r3)
/* 801723B4 0016F314  80 A4 00 84 */	lwz r5, 0x84(r4)
/* 801723B8 0016F318  80 04 00 88 */	lwz r0, 0x88(r4)
/* 801723BC 0016F31C  90 A3 00 84 */	stw r5, 0x84(r3)
/* 801723C0 0016F320  90 03 00 88 */	stw r0, 0x88(r3)
/* 801723C4 0016F324  80 A4 00 8C */	lwz r5, 0x8c(r4)
/* 801723C8 0016F328  80 04 00 90 */	lwz r0, 0x90(r4)
/* 801723CC 0016F32C  90 A3 00 8C */	stw r5, 0x8c(r3)
/* 801723D0 0016F330  90 03 00 90 */	stw r0, 0x90(r3)
/* 801723D4 0016F334  80 04 00 94 */	lwz r0, 0x94(r4)
/* 801723D8 0016F338  90 03 00 94 */	stw r0, 0x94(r3)
/* 801723DC 0016F33C  80 A4 00 98 */	lwz r5, 0x98(r4)
/* 801723E0 0016F340  80 04 00 9C */	lwz r0, 0x9c(r4)
/* 801723E4 0016F344  90 A3 00 98 */	stw r5, 0x98(r3)
/* 801723E8 0016F348  90 03 00 9C */	stw r0, 0x9c(r3)
/* 801723EC 0016F34C  80 A4 00 A0 */	lwz r5, 0xa0(r4)
/* 801723F0 0016F350  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 801723F4 0016F354  90 A3 00 A0 */	stw r5, 0xa0(r3)
/* 801723F8 0016F358  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 801723FC 0016F35C  80 A4 00 A8 */	lwz r5, 0xa8(r4)
/* 80172400 0016F360  80 04 00 AC */	lwz r0, 0xac(r4)
/* 80172404 0016F364  90 A3 00 A8 */	stw r5, 0xa8(r3)
/* 80172408 0016F368  90 03 00 AC */	stw r0, 0xac(r3)
/* 8017240C 0016F36C  80 A4 00 B0 */	lwz r5, 0xb0(r4)
/* 80172410 0016F370  80 04 00 B4 */	lwz r0, 0xb4(r4)
/* 80172414 0016F374  90 A3 00 B0 */	stw r5, 0xb0(r3)
/* 80172418 0016F378  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 8017241C 0016F37C  80 04 00 B8 */	lwz r0, 0xb8(r4)
/* 80172420 0016F380  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 80172424 0016F384  80 04 00 BC */	lwz r0, 0xbc(r4)
/* 80172428 0016F388  90 03 00 BC */	stw r0, 0xbc(r3)
/* 8017242C 0016F38C  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 80172430 0016F390  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80172434 0016F394  C0 04 00 C4 */	lfs f0, 0xc4(r4)
/* 80172438 0016F398  D0 03 00 C4 */	stfs f0, 0xc4(r3)
/* 8017243C 0016F39C  C0 04 00 C8 */	lfs f0, 0xc8(r4)
/* 80172440 0016F3A0  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 80172444 0016F3A4  C0 04 00 CC */	lfs f0, 0xcc(r4)
/* 80172448 0016F3A8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8017244C 0016F3AC  C0 04 00 D0 */	lfs f0, 0xd0(r4)
/* 80172450 0016F3B0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80172454 0016F3B4  C0 04 00 D4 */	lfs f0, 0xd4(r4)
/* 80172458 0016F3B8  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8017245C 0016F3BC  C0 04 00 D8 */	lfs f0, 0xd8(r4)
/* 80172460 0016F3C0  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 80172464 0016F3C4  C0 04 00 DC */	lfs f0, 0xdc(r4)
/* 80172468 0016F3C8  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 8017246C 0016F3CC  C0 04 00 E0 */	lfs f0, 0xe0(r4)
/* 80172470 0016F3D0  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 80172474 0016F3D4  C0 04 00 E4 */	lfs f0, 0xe4(r4)
/* 80172478 0016F3D8  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 8017247C 0016F3DC  80 04 00 E8 */	lwz r0, 0xe8(r4)
/* 80172480 0016F3E0  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 80172484 0016F3E4  80 04 00 EC */	lwz r0, 0xec(r4)
/* 80172488 0016F3E8  90 03 00 EC */	stw r0, 0xec(r3)
/* 8017248C 0016F3EC  80 04 00 F0 */	lwz r0, 0xf0(r4)
/* 80172490 0016F3F0  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 80172494 0016F3F4  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80172498 0016F3F8  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8017249C 0016F3FC  88 04 00 F8 */	lbz r0, 0xf8(r4)
/* 801724A0 0016F400  98 03 00 F8 */	stb r0, 0xf8(r3)
/* 801724A4 0016F404  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 801724A8 0016F408  90 03 00 FC */	stw r0, 0xfc(r3)
/* 801724AC 0016F40C  C0 04 01 00 */	lfs f0, 0x100(r4)
/* 801724B0 0016F410  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 801724B4 0016F414  C0 04 01 04 */	lfs f0, 0x104(r4)
/* 801724B8 0016F418  D0 03 01 04 */	stfs f0, 0x104(r3)
/* 801724BC 0016F41C  C0 04 01 08 */	lfs f0, 0x108(r4)
/* 801724C0 0016F420  D0 03 01 08 */	stfs f0, 0x108(r3)
/* 801724C4 0016F424  80 04 01 0C */	lwz r0, 0x10c(r4)
/* 801724C8 0016F428  90 03 01 0C */	stw r0, 0x10c(r3)
/* 801724CC 0016F42C  C0 04 01 10 */	lfs f0, 0x110(r4)
/* 801724D0 0016F430  D0 03 01 10 */	stfs f0, 0x110(r3)
/* 801724D4 0016F434  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 801724D8 0016F438  D0 03 01 14 */	stfs f0, 0x114(r3)
/* 801724DC 0016F43C  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 801724E0 0016F440  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 801724E4 0016F444  80 04 01 1C */	lwz r0, 0x11c(r4)
/* 801724E8 0016F448  90 03 01 1C */	stw r0, 0x11c(r3)
/* 801724EC 0016F44C  80 04 01 20 */	lwz r0, 0x120(r4)
/* 801724F0 0016F450  90 03 01 20 */	stw r0, 0x120(r3)
/* 801724F4 0016F454  C0 04 01 24 */	lfs f0, 0x124(r4)
/* 801724F8 0016F458  D0 03 01 24 */	stfs f0, 0x124(r3)
/* 801724FC 0016F45C  C0 04 01 28 */	lfs f0, 0x128(r4)
/* 80172500 0016F460  D0 03 01 28 */	stfs f0, 0x128(r3)
/* 80172504 0016F464  C0 04 01 2C */	lfs f0, 0x12c(r4)
/* 80172508 0016F468  D0 03 01 2C */	stfs f0, 0x12c(r3)
/* 8017250C 0016F46C  80 04 01 30 */	lwz r0, 0x130(r4)
/* 80172510 0016F470  90 03 01 30 */	stw r0, 0x130(r3)
/* 80172514 0016F474  80 04 01 34 */	lwz r0, 0x134(r4)
/* 80172518 0016F478  90 03 01 34 */	stw r0, 0x134(r3)
/* 8017251C 0016F47C  4E 80 00 20 */	blr

.global sub_80172520
sub_80172520:
/* 80172520 0016F480  2C 04 00 03 */	cmpwi r4, 3
/* 80172524 0016F484  41 82 00 34 */	beq lbl_80172558
/* 80172528 0016F488  40 80 00 14 */	bge lbl_8017253C
/* 8017252C 0016F48C  2C 04 00 01 */	cmpwi r4, 1
/* 80172530 0016F490  41 82 00 18 */	beq lbl_80172548
/* 80172534 0016F494  40 80 00 1C */	bge lbl_80172550
/* 80172538 0016F498  48 00 00 30 */	b lbl_80172568
lbl_8017253C:
/* 8017253C 0016F49C  2C 04 00 05 */	cmpwi r4, 5
/* 80172540 0016F4A0  40 80 00 28 */	bge lbl_80172568
/* 80172544 0016F4A4  48 00 00 1C */	b lbl_80172560
lbl_80172548:
/* 80172548 0016F4A8  38 63 00 E8 */	addi r3, r3, 0xe8
/* 8017254C 0016F4AC  4E 80 00 20 */	blr
lbl_80172550:
/* 80172550 0016F4B0  38 63 00 F8 */	addi r3, r3, 0xf8
/* 80172554 0016F4B4  4E 80 00 20 */	blr
lbl_80172558:
/* 80172558 0016F4B8  38 63 01 08 */	addi r3, r3, 0x108
/* 8017255C 0016F4BC  4E 80 00 20 */	blr
lbl_80172560:
/* 80172560 0016F4C0  38 63 01 18 */	addi r3, r3, 0x118
/* 80172564 0016F4C4  4E 80 00 20 */	blr
lbl_80172568:
/* 80172568 0016F4C8  38 63 00 E8 */	addi r3, r3, 0xe8
/* 8017256C 0016F4CC  4E 80 00 20 */	blr

.global sub_80172570
sub_80172570:
/* 80172570 0016F4D0  88 03 00 F4 */	lbz r0, 0xf4(r3)
/* 80172574 0016F4D4  38 80 00 00 */	li r4, 0
/* 80172578 0016F4D8  28 00 00 00 */	cmplwi r0, 0
/* 8017257C 0016F4DC  41 82 00 08 */	beq lbl_80172584
/* 80172580 0016F4E0  38 80 00 01 */	li r4, 1
lbl_80172584:
/* 80172584 0016F4E4  88 03 01 04 */	lbz r0, 0x104(r3)
/* 80172588 0016F4E8  28 00 00 00 */	cmplwi r0, 0
/* 8017258C 0016F4EC  41 82 00 08 */	beq lbl_80172594
/* 80172590 0016F4F0  38 84 00 01 */	addi r4, r4, 1
lbl_80172594:
/* 80172594 0016F4F4  88 03 01 14 */	lbz r0, 0x114(r3)
/* 80172598 0016F4F8  28 00 00 00 */	cmplwi r0, 0
/* 8017259C 0016F4FC  41 82 00 08 */	beq lbl_801725A4
/* 801725A0 0016F500  38 84 00 01 */	addi r4, r4, 1
lbl_801725A4:
/* 801725A4 0016F504  88 03 01 24 */	lbz r0, 0x124(r3)
/* 801725A8 0016F508  28 00 00 00 */	cmplwi r0, 0
/* 801725AC 0016F50C  41 82 00 08 */	beq lbl_801725B4
/* 801725B0 0016F510  38 84 00 01 */	addi r4, r4, 1
lbl_801725B4:
/* 801725B4 0016F514  7C 83 23 78 */	mr r3, r4
/* 801725B8 0016F518  4E 80 00 20 */	blr

.global __ct__12CMetroidDataFR12CInputStream
__ct__12CMetroidDataFR12CInputStream:
/* 801725BC 0016F51C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801725C0 0016F520  7C 08 02 A6 */	mflr r0
/* 801725C4 0016F524  90 01 00 84 */	stw r0, 0x84(r1)
/* 801725C8 0016F528  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801725CC 0016F52C  7C 9F 23 78 */	mr r31, r4
/* 801725D0 0016F530  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801725D4 0016F534  7C 7E 1B 78 */	mr r30, r3
/* 801725D8 0016F538  4B F9 05 81 */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 801725DC 0016F53C  7F E4 FB 78 */	mr r4, r31
/* 801725E0 0016F540  38 7E 00 68 */	addi r3, r30, 0x68
/* 801725E4 0016F544  4B F9 05 75 */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 801725E8 0016F548  7F E3 FB 78 */	mr r3, r31
/* 801725EC 0016F54C  48 1C C6 3D */	bl ReadFloat__12CInputStreamFv
/* 801725F0 0016F550  D0 3E 00 D0 */	stfs f1, 0xd0(r30)
/* 801725F4 0016F554  7F E3 FB 78 */	mr r3, r31
/* 801725F8 0016F558  48 1C C6 31 */	bl ReadFloat__12CInputStreamFv
/* 801725FC 0016F55C  D0 3E 00 D4 */	stfs f1, 0xd4(r30)
/* 80172600 0016F560  7F E3 FB 78 */	mr r3, r31
/* 80172604 0016F564  48 1C C6 25 */	bl ReadFloat__12CInputStreamFv
/* 80172608 0016F568  D0 3E 00 D8 */	stfs f1, 0xd8(r30)
/* 8017260C 0016F56C  7F E3 FB 78 */	mr r3, r31
/* 80172610 0016F570  48 1C C6 19 */	bl ReadFloat__12CInputStreamFv
/* 80172614 0016F574  D0 3E 00 DC */	stfs f1, 0xdc(r30)
/* 80172618 0016F578  7F E3 FB 78 */	mr r3, r31
/* 8017261C 0016F57C  48 1C C6 0D */	bl ReadFloat__12CInputStreamFv
/* 80172620 0016F580  D0 3E 00 E0 */	stfs f1, 0xe0(r30)
/* 80172624 0016F584  7F E3 FB 78 */	mr r3, r31
/* 80172628 0016F588  48 1C C6 01 */	bl ReadFloat__12CInputStreamFv
/* 8017262C 0016F58C  D0 3E 00 E4 */	stfs f1, 0xe4(r30)
/* 80172630 0016F590  7F E4 FB 78 */	mr r4, r31
/* 80172634 0016F594  38 61 00 6C */	addi r3, r1, 0x6c
/* 80172638 0016F598  4B F6 7D D5 */	bl LoadAnimationParameters__FR12CInputStream
/* 8017263C 0016F59C  38 00 00 01 */	li r0, 1
/* 80172640 0016F5A0  34 61 00 5C */	addic. r3, r1, 0x5c
/* 80172644 0016F5A4  98 01 00 68 */	stb r0, 0x68(r1)
/* 80172648 0016F5A8  41 82 00 1C */	beq lbl_80172664
/* 8017264C 0016F5AC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80172650 0016F5B0  90 03 00 00 */	stw r0, 0(r3)
/* 80172654 0016F5B4  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80172658 0016F5B8  90 03 00 04 */	stw r0, 4(r3)
/* 8017265C 0016F5BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80172660 0016F5C0  90 03 00 08 */	stw r0, 8(r3)
lbl_80172664:
/* 80172664 0016F5C4  88 01 00 68 */	lbz r0, 0x68(r1)
/* 80172668 0016F5C8  28 00 00 00 */	cmplwi r0, 0
/* 8017266C 0016F5CC  98 1E 00 F4 */	stb r0, 0xf4(r30)
/* 80172670 0016F5D0  41 82 00 24 */	beq lbl_80172694
/* 80172674 0016F5D4  34 9E 00 E8 */	addic. r4, r30, 0xe8
/* 80172678 0016F5D8  41 82 00 1C */	beq lbl_80172694
/* 8017267C 0016F5DC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80172680 0016F5E0  80 61 00 60 */	lwz r3, 0x60(r1)
/* 80172684 0016F5E4  90 04 00 00 */	stw r0, 0(r4)
/* 80172688 0016F5E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8017268C 0016F5EC  90 64 00 04 */	stw r3, 4(r4)
/* 80172690 0016F5F0  90 04 00 08 */	stw r0, 8(r4)
lbl_80172694:
/* 80172694 0016F5F4  38 00 00 00 */	li r0, 0
/* 80172698 0016F5F8  7F E4 FB 78 */	mr r4, r31
/* 8017269C 0016F5FC  98 01 00 68 */	stb r0, 0x68(r1)
/* 801726A0 0016F600  38 61 00 50 */	addi r3, r1, 0x50
/* 801726A4 0016F604  4B F6 7D 69 */	bl LoadAnimationParameters__FR12CInputStream
/* 801726A8 0016F608  38 00 00 01 */	li r0, 1
/* 801726AC 0016F60C  34 61 00 40 */	addic. r3, r1, 0x40
/* 801726B0 0016F610  98 01 00 4C */	stb r0, 0x4c(r1)
/* 801726B4 0016F614  41 82 00 1C */	beq lbl_801726D0
/* 801726B8 0016F618  80 01 00 50 */	lwz r0, 0x50(r1)
/* 801726BC 0016F61C  90 03 00 00 */	stw r0, 0(r3)
/* 801726C0 0016F620  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801726C4 0016F624  90 03 00 04 */	stw r0, 4(r3)
/* 801726C8 0016F628  80 01 00 58 */	lwz r0, 0x58(r1)
/* 801726CC 0016F62C  90 03 00 08 */	stw r0, 8(r3)
lbl_801726D0:
/* 801726D0 0016F630  88 01 00 4C */	lbz r0, 0x4c(r1)
/* 801726D4 0016F634  28 00 00 00 */	cmplwi r0, 0
/* 801726D8 0016F638  98 1E 01 04 */	stb r0, 0x104(r30)
/* 801726DC 0016F63C  41 82 00 24 */	beq lbl_80172700
/* 801726E0 0016F640  34 9E 00 F8 */	addic. r4, r30, 0xf8
/* 801726E4 0016F644  41 82 00 1C */	beq lbl_80172700
/* 801726E8 0016F648  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801726EC 0016F64C  80 61 00 44 */	lwz r3, 0x44(r1)
/* 801726F0 0016F650  90 04 00 00 */	stw r0, 0(r4)
/* 801726F4 0016F654  80 01 00 48 */	lwz r0, 0x48(r1)
/* 801726F8 0016F658  90 64 00 04 */	stw r3, 4(r4)
/* 801726FC 0016F65C  90 04 00 08 */	stw r0, 8(r4)
lbl_80172700:
/* 80172700 0016F660  38 00 00 00 */	li r0, 0
/* 80172704 0016F664  7F E4 FB 78 */	mr r4, r31
/* 80172708 0016F668  98 01 00 4C */	stb r0, 0x4c(r1)
/* 8017270C 0016F66C  38 61 00 34 */	addi r3, r1, 0x34
/* 80172710 0016F670  4B F6 7C FD */	bl LoadAnimationParameters__FR12CInputStream
/* 80172714 0016F674  38 00 00 01 */	li r0, 1
/* 80172718 0016F678  34 61 00 24 */	addic. r3, r1, 0x24
/* 8017271C 0016F67C  98 01 00 30 */	stb r0, 0x30(r1)
/* 80172720 0016F680  41 82 00 1C */	beq lbl_8017273C
/* 80172724 0016F684  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80172728 0016F688  90 03 00 00 */	stw r0, 0(r3)
/* 8017272C 0016F68C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80172730 0016F690  90 03 00 04 */	stw r0, 4(r3)
/* 80172734 0016F694  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80172738 0016F698  90 03 00 08 */	stw r0, 8(r3)
lbl_8017273C:
/* 8017273C 0016F69C  88 01 00 30 */	lbz r0, 0x30(r1)
/* 80172740 0016F6A0  28 00 00 00 */	cmplwi r0, 0
/* 80172744 0016F6A4  98 1E 01 14 */	stb r0, 0x114(r30)
/* 80172748 0016F6A8  41 82 00 24 */	beq lbl_8017276C
/* 8017274C 0016F6AC  34 9E 01 08 */	addic. r4, r30, 0x108
/* 80172750 0016F6B0  41 82 00 1C */	beq lbl_8017276C
/* 80172754 0016F6B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80172758 0016F6B8  80 61 00 28 */	lwz r3, 0x28(r1)
/* 8017275C 0016F6BC  90 04 00 00 */	stw r0, 0(r4)
/* 80172760 0016F6C0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80172764 0016F6C4  90 64 00 04 */	stw r3, 4(r4)
/* 80172768 0016F6C8  90 04 00 08 */	stw r0, 8(r4)
lbl_8017276C:
/* 8017276C 0016F6CC  38 00 00 00 */	li r0, 0
/* 80172770 0016F6D0  7F E4 FB 78 */	mr r4, r31
/* 80172774 0016F6D4  98 01 00 30 */	stb r0, 0x30(r1)
/* 80172778 0016F6D8  38 61 00 18 */	addi r3, r1, 0x18
/* 8017277C 0016F6DC  4B F6 7C 91 */	bl LoadAnimationParameters__FR12CInputStream
/* 80172780 0016F6E0  38 00 00 01 */	li r0, 1
/* 80172784 0016F6E4  34 61 00 08 */	addic. r3, r1, 8
/* 80172788 0016F6E8  98 01 00 14 */	stb r0, 0x14(r1)
/* 8017278C 0016F6EC  41 82 00 1C */	beq lbl_801727A8
/* 80172790 0016F6F0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80172794 0016F6F4  90 03 00 00 */	stw r0, 0(r3)
/* 80172798 0016F6F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8017279C 0016F6FC  90 03 00 04 */	stw r0, 4(r3)
/* 801727A0 0016F700  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801727A4 0016F704  90 03 00 08 */	stw r0, 8(r3)
lbl_801727A8:
/* 801727A8 0016F708  88 01 00 14 */	lbz r0, 0x14(r1)
/* 801727AC 0016F70C  28 00 00 00 */	cmplwi r0, 0
/* 801727B0 0016F710  98 1E 01 24 */	stb r0, 0x124(r30)
/* 801727B4 0016F714  41 82 00 24 */	beq lbl_801727D8
/* 801727B8 0016F718  34 9E 01 18 */	addic. r4, r30, 0x118
/* 801727BC 0016F71C  41 82 00 1C */	beq lbl_801727D8
/* 801727C0 0016F720  80 01 00 08 */	lwz r0, 8(r1)
/* 801727C4 0016F724  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801727C8 0016F728  90 04 00 00 */	stw r0, 0(r4)
/* 801727CC 0016F72C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801727D0 0016F730  90 64 00 04 */	stw r3, 4(r4)
/* 801727D4 0016F734  90 04 00 08 */	stw r0, 8(r4)
lbl_801727D8:
/* 801727D8 0016F738  38 00 00 00 */	li r0, 0
/* 801727DC 0016F73C  7F E3 FB 78 */	mr r3, r31
/* 801727E0 0016F740  98 01 00 14 */	stb r0, 0x14(r1)
/* 801727E4 0016F744  48 1C C4 F9 */	bl ReadBool__12CInputStreamFv
/* 801727E8 0016F748  88 1E 01 28 */	lbz r0, 0x128(r30)
/* 801727EC 0016F74C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801727F0 0016F750  7F C3 F3 78 */	mr r3, r30
/* 801727F4 0016F754  98 1E 01 28 */	stb r0, 0x128(r30)
/* 801727F8 0016F758  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801727FC 0016F75C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80172800 0016F760  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80172804 0016F764  7C 08 03 A6 */	mtlr r0
/* 80172808 0016F768  38 21 00 80 */	addi r1, r1, 0x80
/* 8017280C 0016F76C  4E 80 00 20 */	blr

.global sub_80172810
sub_80172810:
/* 80172810 0016F770  88 03 00 00 */	lbz r0, 0(r3)
/* 80172814 0016F774  88 C4 00 00 */	lbz r6, 0(r4)
/* 80172818 0016F778  7C 00 30 40 */	cmplw r0, r6
/* 8017281C 0016F77C  4D 81 00 20 */	bgtlr
/* 80172820 0016F780  88 05 00 00 */	lbz r0, 0(r5)
/* 80172824 0016F784  7C 00 30 40 */	cmplw r0, r6
/* 80172828 0016F788  40 80 00 0C */	bge lbl_80172834
/* 8017282C 0016F78C  7C A3 2B 78 */	mr r3, r5
/* 80172830 0016F790  4E 80 00 20 */	blr
lbl_80172834:
/* 80172834 0016F794  7C 83 23 78 */	mr r3, r4
/* 80172838 0016F798  4E 80 00 20 */	blr

.global __sinit_CMetroid_cpp
__sinit_CMetroid_cpp:
/* 8017283C 0016F79C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80172840 0016F7A0  7C 08 02 A6 */	mflr r0
/* 80172844 0016F7A4  3C 60 80 57 */	lis r3, lbl_80571C64@ha
/* 80172848 0016F7A8  39 60 00 02 */	li r11, 2
/* 8017284C 0016F7AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80172850 0016F7B0  38 80 00 01 */	li r4, 1
/* 80172854 0016F7B4  38 00 00 00 */	li r0, 0
/* 80172858 0016F7B8  38 63 1C 64 */	addi r3, r3, lbl_80571C64@l
/* 8017285C 0016F7BC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80172860 0016F7C0  38 A0 00 02 */	li r5, 2
/* 80172864 0016F7C4  38 C0 00 02 */	li r6, 2
/* 80172868 0016F7C8  38 E0 00 03 */	li r7, 3
/* 8017286C 0016F7CC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80172870 0016F7D0  39 00 00 02 */	li r8, 2
/* 80172874 0016F7D4  39 20 00 01 */	li r9, 1
/* 80172878 0016F7D8  39 40 00 02 */	li r10, 2
/* 8017287C 0016F7DC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80172880 0016F7E0  91 61 00 08 */	stw r11, 8(r1)
/* 80172884 0016F7E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80172888 0016F7E8  38 80 00 02 */	li r4, 2
/* 8017288C 0016F7EC  91 61 00 10 */	stw r11, 0x10(r1)
/* 80172890 0016F7F0  91 61 00 14 */	stw r11, 0x14(r1)
/* 80172894 0016F7F4  91 61 00 18 */	stw r11, 0x18(r1)
/* 80172898 0016F7F8  91 61 00 1C */	stw r11, 0x1c(r1)
/* 8017289C 0016F7FC  91 61 00 20 */	stw r11, 0x20(r1)
/* 801728A0 0016F800  91 61 00 24 */	stw r11, 0x24(r1)
/* 801728A4 0016F804  90 01 00 28 */	stw r0, 0x28(r1)
/* 801728A8 0016F808  4B F9 00 8D */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 801728AC 0016F80C  39 60 00 02 */	li r11, 2
/* 801728B0 0016F810  3C 60 80 57 */	lis r3, lbl_80571E6C@ha
/* 801728B4 0016F814  91 61 00 08 */	stw r11, 8(r1)
/* 801728B8 0016F818  38 80 00 01 */	li r4, 1
/* 801728BC 0016F81C  38 00 00 00 */	li r0, 0
/* 801728C0 0016F820  38 63 1E 6C */	addi r3, r3, lbl_80571E6C@l
/* 801728C4 0016F824  90 81 00 0C */	stw r4, 0xc(r1)
/* 801728C8 0016F828  38 80 00 02 */	li r4, 2
/* 801728CC 0016F82C  38 A0 00 03 */	li r5, 3
/* 801728D0 0016F830  38 C0 00 02 */	li r6, 2
/* 801728D4 0016F834  91 61 00 10 */	stw r11, 0x10(r1)
/* 801728D8 0016F838  38 E0 00 02 */	li r7, 2
/* 801728DC 0016F83C  39 00 00 02 */	li r8, 2
/* 801728E0 0016F840  39 20 00 01 */	li r9, 1
/* 801728E4 0016F844  91 61 00 14 */	stw r11, 0x14(r1)
/* 801728E8 0016F848  39 40 00 02 */	li r10, 2
/* 801728EC 0016F84C  91 61 00 18 */	stw r11, 0x18(r1)
/* 801728F0 0016F850  91 61 00 1C */	stw r11, 0x1c(r1)
/* 801728F4 0016F854  91 61 00 20 */	stw r11, 0x20(r1)
/* 801728F8 0016F858  91 61 00 24 */	stw r11, 0x24(r1)
/* 801728FC 0016F85C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80172900 0016F860  4B F9 00 35 */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 80172904 0016F864  39 60 00 02 */	li r11, 2
/* 80172908 0016F868  3C 60 80 57 */	lis r3, lbl_80571ED4@ha
/* 8017290C 0016F86C  91 61 00 08 */	stw r11, 8(r1)
/* 80172910 0016F870  38 80 00 01 */	li r4, 1
/* 80172914 0016F874  38 00 00 00 */	li r0, 0
/* 80172918 0016F878  38 63 1E D4 */	addi r3, r3, lbl_80571ED4@l
/* 8017291C 0016F87C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80172920 0016F880  38 80 00 02 */	li r4, 2
/* 80172924 0016F884  38 A0 00 02 */	li r5, 2
/* 80172928 0016F888  38 C0 00 03 */	li r6, 3
/* 8017292C 0016F88C  91 61 00 10 */	stw r11, 0x10(r1)
/* 80172930 0016F890  38 E0 00 02 */	li r7, 2
/* 80172934 0016F894  39 00 00 02 */	li r8, 2
/* 80172938 0016F898  39 20 00 01 */	li r9, 1
/* 8017293C 0016F89C  91 61 00 14 */	stw r11, 0x14(r1)
/* 80172940 0016F8A0  39 40 00 02 */	li r10, 2
/* 80172944 0016F8A4  91 61 00 18 */	stw r11, 0x18(r1)
/* 80172948 0016F8A8  91 61 00 1C */	stw r11, 0x1c(r1)
/* 8017294C 0016F8AC  91 61 00 20 */	stw r11, 0x20(r1)
/* 80172950 0016F8B0  91 61 00 24 */	stw r11, 0x24(r1)
/* 80172954 0016F8B4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80172958 0016F8B8  4B F8 FF DD */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 8017295C 0016F8BC  39 60 00 02 */	li r11, 2
/* 80172960 0016F8C0  3C 60 80 57 */	lis r3, lbl_80571F3C@ha
/* 80172964 0016F8C4  91 61 00 08 */	stw r11, 8(r1)
/* 80172968 0016F8C8  38 80 00 01 */	li r4, 1
/* 8017296C 0016F8CC  38 00 00 00 */	li r0, 0
/* 80172970 0016F8D0  38 63 1F 3C */	addi r3, r3, lbl_80571F3C@l
/* 80172974 0016F8D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80172978 0016F8D8  38 80 00 03 */	li r4, 3
/* 8017297C 0016F8DC  38 A0 00 02 */	li r5, 2
/* 80172980 0016F8E0  38 C0 00 02 */	li r6, 2
/* 80172984 0016F8E4  91 61 00 10 */	stw r11, 0x10(r1)
/* 80172988 0016F8E8  38 E0 00 02 */	li r7, 2
/* 8017298C 0016F8EC  39 00 00 02 */	li r8, 2
/* 80172990 0016F8F0  39 20 00 01 */	li r9, 1
/* 80172994 0016F8F4  91 61 00 14 */	stw r11, 0x14(r1)
/* 80172998 0016F8F8  39 40 00 02 */	li r10, 2
/* 8017299C 0016F8FC  91 61 00 18 */	stw r11, 0x18(r1)
/* 801729A0 0016F900  91 61 00 1C */	stw r11, 0x1c(r1)
/* 801729A4 0016F904  91 61 00 20 */	stw r11, 0x20(r1)
/* 801729A8 0016F908  91 61 00 24 */	stw r11, 0x24(r1)
/* 801729AC 0016F90C  90 01 00 28 */	stw r0, 0x28(r1)
/* 801729B0 0016F910  4B F8 FF 85 */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 801729B4 0016F914  39 60 00 02 */	li r11, 2
/* 801729B8 0016F918  3C 60 80 57 */	lis r3, lbl_80571FA4@ha
/* 801729BC 0016F91C  91 61 00 08 */	stw r11, 8(r1)
/* 801729C0 0016F920  38 00 00 00 */	li r0, 0
/* 801729C4 0016F924  38 63 1F A4 */	addi r3, r3, lbl_80571FA4@l
/* 801729C8 0016F928  38 80 00 02 */	li r4, 2
/* 801729CC 0016F92C  91 61 00 0C */	stw r11, 0xc(r1)
/* 801729D0 0016F930  38 A0 00 02 */	li r5, 2
/* 801729D4 0016F934  38 C0 00 02 */	li r6, 2
/* 801729D8 0016F938  38 E0 00 02 */	li r7, 2
/* 801729DC 0016F93C  91 61 00 10 */	stw r11, 0x10(r1)
/* 801729E0 0016F940  39 00 00 02 */	li r8, 2
/* 801729E4 0016F944  39 20 00 01 */	li r9, 1
/* 801729E8 0016F948  39 40 00 02 */	li r10, 2
/* 801729EC 0016F94C  91 61 00 14 */	stw r11, 0x14(r1)
/* 801729F0 0016F950  91 61 00 18 */	stw r11, 0x18(r1)
/* 801729F4 0016F954  91 61 00 1C */	stw r11, 0x1c(r1)
/* 801729F8 0016F958  91 61 00 20 */	stw r11, 0x20(r1)
/* 801729FC 0016F95C  91 61 00 24 */	stw r11, 0x24(r1)
/* 80172A00 0016F960  90 01 00 28 */	stw r0, 0x28(r1)
/* 80172A04 0016F964  4B F8 FF 31 */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 80172A08 0016F968  3B A0 00 FE */	li r29, 0xfe
/* 80172A0C 0016F96C  39 40 00 D8 */	li r10, 0xd8
/* 80172A10 0016F970  39 2D A4 2C */	addi r9, r13, lbl_805A8FEC@sda21
/* 80172A14 0016F974  39 60 00 FF */	li r11, 0xff
/* 80172A18 0016F978  38 CD A4 30 */	addi r6, r13, lbl_805A8FF0@sda21
/* 80172A1C 0016F97C  3B ED A4 28 */	addi r31, r13, lbl_805A8FE8@sda21
/* 80172A20 0016F980  3B C0 00 00 */	li r30, 0
/* 80172A24 0016F984  39 80 00 28 */	li r12, 0x28
/* 80172A28 0016F988  39 00 00 C6 */	li r8, 0xc6
/* 80172A2C 0016F98C  38 E0 00 0E */	li r7, 0xe
/* 80172A30 0016F990  38 A0 00 FD */	li r5, 0xfd
/* 80172A34 0016F994  38 6D A4 34 */	addi r3, r13, lbl_805A8FF4@sda21
/* 80172A38 0016F998  38 80 00 EF */	li r4, 0xef
/* 80172A3C 0016F99C  38 00 00 56 */	li r0, 0x56
/* 80172A40 0016F9A0  9B AD A4 28 */	stb r29, lbl_805A8FE8@sda21(r13)
/* 80172A44 0016F9A4  9B DF 00 01 */	stb r30, 1(r31)
/* 80172A48 0016F9A8  99 9F 00 02 */	stb r12, 2(r31)
/* 80172A4C 0016F9AC  99 7F 00 03 */	stb r11, 3(r31)
/* 80172A50 0016F9B0  99 4D A4 2C */	stb r10, lbl_805A8FEC@sda21(r13)
/* 80172A54 0016F9B4  99 49 00 01 */	stb r10, 1(r9)
/* 80172A58 0016F9B8  99 49 00 02 */	stb r10, 2(r9)
/* 80172A5C 0016F9BC  99 69 00 03 */	stb r11, 3(r9)
/* 80172A60 0016F9C0  99 0D A4 30 */	stb r8, lbl_805A8FF0@sda21(r13)
/* 80172A64 0016F9C4  98 E6 00 01 */	stb r7, 1(r6)
/* 80172A68 0016F9C8  99 66 00 02 */	stb r11, 2(r6)
/* 80172A6C 0016F9CC  99 66 00 03 */	stb r11, 3(r6)
/* 80172A70 0016F9D0  98 AD A4 34 */	stb r5, lbl_805A8FF4@sda21(r13)
/* 80172A74 0016F9D4  98 83 00 01 */	stb r4, 1(r3)
/* 80172A78 0016F9D8  98 03 00 02 */	stb r0, 2(r3)
/* 80172A7C 0016F9DC  99 63 00 03 */	stb r11, 3(r3)
/* 80172A80 0016F9E0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80172A84 0016F9E4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80172A88 0016F9E8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80172A8C 0016F9EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80172A90 0016F9F0  7C 08 03 A6 */	mtlr r0
/* 80172A94 0016F9F4  38 21 00 40 */	addi r1, r1, 0x40
/* 80172A98 0016F9F8  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABD90
lbl_805ABD90:
	# ROM: 0x3F8630
	.4byte 0x00000014

.global lbl_805ABD94
lbl_805ABD94:
	# ROM: 0x3F8634
	.4byte 0x803D05E2

.global lbl_805ABD98
lbl_805ABD98:
	# ROM: 0x3F8638
	.4byte 0x803D0550

.global lbl_805ABD9C
lbl_805ABD9C:
	# ROM: 0x3F863C
	.4byte 0x803D05F5

.global lbl_805ABDA0
lbl_805ABDA0:
	# ROM: 0x3F8640
	.4byte 0

.global lbl_805ABDA4
lbl_805ABDA4:
	# ROM: 0x3F8644
	.float 2.0

.global lbl_805ABDA8
lbl_805ABDA8:
	# ROM: 0x3F8648
	.float 0.5

.global lbl_805ABDAC
lbl_805ABDAC:
	# ROM: 0x3F864C
	.4byte 0xBF000000

.global lbl_805ABDB0
lbl_805ABDB0:
	# ROM: 0x3F8650
	.float 0.3

.global lbl_805ABDB4
lbl_805ABDB4:
	# ROM: 0x3F8654
	.4byte 0x40490FDB

.global lbl_805ABDB8
lbl_805ABDB8:
	# ROM: 0x3F8658
	.float 1.0

.global lbl_805ABDBC
lbl_805ABDBC:
	# ROM: 0x3F865C
	.4byte 0xBF19999A

.global lbl_805ABDC0
lbl_805ABDC0:
	# ROM: 0x3F8660
	.float 0.4

.global lbl_805ABDC4
lbl_805ABDC4:
	# ROM: 0x3F8664
	.4byte 0xBFC8D6AA

.global lbl_805ABDC8
lbl_805ABDC8:
	# ROM: 0x3F8668
	.float 0.75

.global lbl_805ABDCC
lbl_805ABDCC:
	# ROM: 0x3F866C
	.float 0.25

.global lbl_805ABDD0
lbl_805ABDD0:
	# ROM: 0x3F8670
	.float 0.2

.global lbl_805ABDD4
lbl_805ABDD4:
	# ROM: 0x3F8674
	.4byte 0x3F733333

.global lbl_805ABDD8
lbl_805ABDD8:
	# ROM: 0x3F8678
	.4byte 0x3FC90FDB

.global lbl_805ABDDC
lbl_805ABDDC:
	# ROM: 0x3F867C
	.4byte 0x43960000

.global lbl_805ABDE0
lbl_805ABDE0:
	# ROM: 0x3F8680
	.4byte 0x3FAA3D71

.global lbl_805ABDE4
lbl_805ABDE4:
	# ROM: 0x3F8684
	.4byte 0x45EA6000

.global lbl_805ABDE8
lbl_805ABDE8:
	# ROM: 0x3F8688
	.4byte 0x40C00000

.global lbl_805ABDEC
lbl_805ABDEC:
	# ROM: 0x3F868C
	.4byte 0x466A6000

.global lbl_805ABDF0
lbl_805ABDF0:
	# ROM: 0x3F8690
	.float 0.017453292

.global lbl_805ABDF4
lbl_805ABDF4:
	# ROM: 0x3F8694
	.float 6.2831855

.global lbl_805ABDF8
lbl_805ABDF8:
	# ROM: 0x3F8698
	.4byte 0x40400000

.global lbl_805ABDFC
lbl_805ABDFC:
	# ROM: 0x3F869C
	.float 4.0

.global lbl_805ABE00
lbl_805ABE00:
	# ROM: 0x3F86A0
	.float 0.01

.global lbl_805ABE04
lbl_805ABE04:
	# ROM: 0x3F86A4
	.float 1.25

.global lbl_805ABE08
lbl_805ABE08:
	# ROM: 0x3F86A8
	.4byte 0x3F933333

.global lbl_805ABE0C
lbl_805ABE0C:
	# ROM: 0x3F86AC
	.4byte 0x41A00000

.global lbl_805ABE10
lbl_805ABE10:
	# ROM: 0x3F86B0
	.4byte 0x41100000

.global lbl_805ABE14
lbl_805ABE14:
	# ROM: 0x3F86B4
	.4byte 0x3E32B8C2

.global lbl_805ABE18
lbl_805ABE18:
	# ROM: 0x3F86B8
	.4byte 0x3E860A92

.global lbl_805ABE1C
lbl_805ABE1C:
	# ROM: 0x3F86BC
	.float 0.7853982

.global lbl_805ABE20
lbl_805ABE20:
	# ROM: 0x3F86C0
	.4byte 0x3F4CCCCD

.global lbl_805ABE24
lbl_805ABE24:
	# ROM: 0x3F86C4
	.4byte 0x42FE0000

.global lbl_805ABE28
lbl_805ABE28:
	# ROM: 0x3F86C8
	.asciz "?fff"
	.balign 4


.section .rodata
.balign 8
.global lbl_803D04D8
lbl_803D04D8:
	# ROM: 0x3CD4D8
	.4byte 0x803D0550
	.4byte 0x803D0557
	.4byte 0x803D055F
	.4byte 0x803D0567
	.4byte 0x803D056D
	.4byte 0x803D0574
	.4byte 0x803D057F
	.4byte 0x803D058D
	.4byte 0x803D0595
	.4byte 0x803D059C
	.4byte 0x803D05A4
	.4byte 0x803D05AC
	.4byte 0x803D05B2
	.4byte 0x803D05B9
	.4byte 0x803D05C4
	.4byte 0x803D05D2
	.4byte 0x803D05DA

.global lbl_803D051C
lbl_803D051C:
	# ROM: 0x3CD51C
	.float 90.0
	.4byte 0x433E0000
	.float 150.0
	.float 90.0
	.4byte 0x42C80000

.global lbl_803D0530
lbl_803D0530:
	# ROM: 0x3CD530
	.float 90.0
	.4byte 0x43070000
	.4byte 0x42340000
	.4byte 0x43340000
	.4byte 0
	.4byte 0x43610000
	.4byte 0x439D8000
	.4byte 0x43870000

.global lbl_803D0550
lbl_803D0550:
	# ROM: 0x3CD550
	.asciz "Head_1"
	.byte 0x4C
	.asciz "_ankle"
	.byte 0x4C
	.asciz "_elbow"
	.byte 0x4C
	.asciz "_hip"
	.byte 0x4C, 0x5F, 0x6B
	.4byte 0x6E656500
	.asciz "L_shoulder"
	.byte 0x4C
	.asciz "_varias2_SDK"
	.byte 0x4C, 0x5F, 0x77
	.asciz "rist"
	.byte 0x50, 0x65, 0x6C
	.4byte 0x76697300
	.asciz "R_ankle"
	.asciz "R_elbow"
	.asciz "R_hip"
	.byte 0x52, 0x5F
	.asciz "knee"
	.byte 0x52, 0x5F, 0x73
	.asciz "houlder"
	.asciz "R_varias2_SDK"
	.byte 0x53, 0x70
	.asciz "ine_1"
	.byte 0x53, 0x70
	.asciz "ine_2"
	.byte 0x6C, 0x6F
	.asciz "ckon_target_LCTR"
	.byte 0x53, 0x6B, 0x65
	.asciz "leton_Root"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x53, 0x70
	.asciz "awned Metroid"
	.balign 4
	.4byte 0


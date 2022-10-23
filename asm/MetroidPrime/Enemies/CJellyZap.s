.include "macros.inc"

.section .data
.balign 8

.global lbl_803E5930
lbl_803E5930:
	# ROM: 0x3E2930
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryLoopReaction__10CPatternedFR13CStateManageri

.global lbl_803E593C
lbl_803E593C:
	# ROM: 0x3E293C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E5948
lbl_803E5948:
	# ROM: 0x3E2948
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007bd04

.global lbl_803E5954
lbl_803E5954:
	# ROM: 0x3E2954
	.4byte 0
	.4byte 0
	.4byte __dt__9CJellyZapFv
	.4byte Accept__9CJellyZapFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__9CJellyZapFfR13CStateManager
	.4byte AcceptScriptMsg__9CJellyZapF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__9CJellyZapCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__9CJellyZapCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__9CJellyZapFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
	.4byte KnockBack__9CJellyZapFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__3CAiFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__9CJellyZapFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__9CJellyZapFR13CStateManager9EStateMsgf
	.4byte InActive__9CJellyZapFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__9CJellyZapFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Flinch__9CJellyZapFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__3CAiFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
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
	.4byte InAttackPosition__9CJellyZapFR13CStateManagerf
	.4byte Leash__10CPatternedFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__10CPatternedFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__9CJellyZapFR13CStateManagerf
	.4byte SpotPlayer__10CPatternedFR13CStateManagerf
	.4byte PlayerSpot__10CPatternedFR13CStateManagerf
	.4byte PatternOver__10CPatternedFR13CStateManagerf
	.4byte PatternShagged__10CPatternedFR13CStateManagerf
	.4byte HasAttackPattern__10CPatternedFR13CStateManagerf
	.4byte HasPatrolPath__10CPatternedFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__10CPatternedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__10CPatternedFR13CStateManagerf
	.4byte ShouldAttack__9CJellyZapFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
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
	.4byte AggressionCheck__3CAiFR13CStateManagerf
	.4byte AttackOver__3CAiFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__3CAiFR13CStateManagerf
	.4byte ShotAt__3CAiFR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__3CAiFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__3CAiFR13CStateManagerf
	.4byte StartAttack__3CAiFR13CStateManagerf
	.4byte BreakAttack__3CAiFR13CStateManagerf
	.4byte ShouldStrafe__3CAiFR13CStateManagerf
	.4byte ShouldSpecialAttack__9CJellyZapFR13CStateManagerf
	.4byte LostInterest__3CAiFR13CStateManagerf
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
	.4byte GetSearchPath__10CPatternedFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.section .sdata
.balign 8

.global lbl_805A7D88
lbl_805A7D88:
	# ROM: 0x3F5728
	.4byte 0

.global lbl_805A7D8C
lbl_805A7D8C:
	# ROM: 0x3F572C
	.float 1.0

.global lbl_805A7D90
lbl_805A7D90:
	# ROM: 0x3F5730
	.4byte 0x00000020
	.4byte 0

.section .bss
.balign 8

.lcomm lbl_8046C920, 0x18, 4

.section .sbss, "wa"
.balign 8

.global lbl_805A9070
lbl_805A9070:
	.skip 0x8

.section .text, "ax"

.global __dt__9CJellyZapFv
__dt__9CJellyZapFv:
/* 801D791C 001D487C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7920 001D4880  7C 08 02 A6 */	mflr r0
/* 801D7924 001D4884  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7928 001D4888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D792C 001D488C  7C 9F 23 78 */	mr r31, r4
/* 801D7930 001D4890  93 C1 00 08 */	stw r30, 8(r1)
/* 801D7934 001D4894  7C 7E 1B 79 */	or. r30, r3, r3
/* 801D7938 001D4898  41 82 00 28 */	beq lbl_801D7960
/* 801D793C 001D489C  3C A0 80 3E */	lis r5, lbl_803E5954@ha
/* 801D7940 001D48A0  38 80 00 00 */	li r4, 0
/* 801D7944 001D48A4  38 05 59 54 */	addi r0, r5, lbl_803E5954@l
/* 801D7948 001D48A8  90 1E 00 00 */	stw r0, 0(r30)
/* 801D794C 001D48AC  4B E9 FC 25 */	bl __dt__10CPatternedFv
/* 801D7950 001D48B0  7F E0 07 35 */	extsh. r0, r31
/* 801D7954 001D48B4  40 81 00 0C */	ble lbl_801D7960
/* 801D7958 001D48B8  7F C3 F3 78 */	mr r3, r30
/* 801D795C 001D48BC  48 13 DF D5 */	bl Free__7CMemoryFPCv
lbl_801D7960:
/* 801D7960 001D48C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7964 001D48C4  7F C3 F3 78 */	mr r3, r30
/* 801D7968 001D48C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D796C 001D48CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D7970 001D48D0  7C 08 03 A6 */	mtlr r0
/* 801D7974 001D48D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7978 001D48D8  4E 80 00 20 */	blr

.global KnockBack__9CJellyZapFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__9CJellyZapFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 801D797C 001D48DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D7980 001D48E0  7C 08 02 A6 */	mflr r0
/* 801D7984 001D48E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D7988 001D48E8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801D798C 001D48EC  7C BF 2B 78 */	mr r31, r5
/* 801D7990 001D48F0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801D7994 001D48F4  7C 7E 1B 78 */	mr r30, r3
/* 801D7998 001D48F8  80 06 00 00 */	lwz r0, 0(r6)
/* 801D799C 001D48FC  2C 00 00 01 */	cmpwi r0, 1
/* 801D79A0 001D4900  40 82 00 6C */	bne lbl_801D7A0C
/* 801D79A4 001D4904  C0 02 AC 70 */	lfs f0, lbl_805AC990@sda21(r2)
/* 801D79A8 001D4908  7C 85 23 78 */	mr r5, r4
/* 801D79AC 001D490C  38 61 00 14 */	addi r3, r1, 0x14
/* 801D79B0 001D4910  38 9E 00 34 */	addi r4, r30, 0x34
/* 801D79B4 001D4914  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801D79B8 001D4918  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801D79BC 001D491C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801D79C0 001D4920  48 13 B0 65 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801D79C4 001D4924  38 61 00 20 */	addi r3, r1, 0x20
/* 801D79C8 001D4928  38 81 00 14 */	addi r4, r1, 0x14
/* 801D79CC 001D492C  48 13 C4 05 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 801D79D0 001D4930  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 801D79D4 001D4934  7F C3 F3 78 */	mr r3, r30
/* 801D79D8 001D4938  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 801D79DC 001D493C  7F E4 FB 78 */	mr r4, r31
/* 801D79E0 001D4940  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 801D79E4 001D4944  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801D79E8 001D4948  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801D79EC 001D494C  90 C1 00 08 */	stw r6, 8(r1)
/* 801D79F0 001D4950  38 C1 00 08 */	addi r6, r1, 8
/* 801D79F4 001D4954  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801D79F8 001D4958  90 01 00 10 */	stw r0, 0x10(r1)
/* 801D79FC 001D495C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801D7A00 001D4960  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 801D7A04 001D4964  7D 89 03 A6 */	mtctr r12
/* 801D7A08 001D4968  4E 80 04 21 */	bctrl
lbl_801D7A0C:
/* 801D7A0C 001D496C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D7A10 001D4970  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801D7A14 001D4974  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801D7A18 001D4978  7C 08 03 A6 */	mtlr r0
/* 801D7A1C 001D497C  38 21 00 40 */	addi r1, r1, 0x40
/* 801D7A20 001D4980  4E 80 00 20 */	blr

.global ClosestToPlayer__9CJellyZapCFR13CStateManager
ClosestToPlayer__9CJellyZapCFR13CStateManager:
/* 801D7A24 001D4984  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801D7A28 001D4988  7C 08 02 A6 */	mflr r0
/* 801D7A2C 001D498C  90 01 00 94 */	stw r0, 0x94(r1)
/* 801D7A30 001D4990  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801D7A34 001D4994  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 801D7A38 001D4998  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801D7A3C 001D499C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 801D7A40 001D49A0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 801D7A44 001D49A4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 801D7A48 001D49A8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 801D7A4C 001D49AC  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 801D7A50 001D49B0  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 801D7A54 001D49B4  F3 61 00 48 */	psq_st f27, 72(r1), 0, qr0
/* 801D7A58 001D49B8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801D7A5C 001D49BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801D7A60 001D49C0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801D7A64 001D49C4  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 801D7A68 001D49C8  7C 7D 1B 78 */	mr r29, r3
/* 801D7A6C 001D49CC  83 E4 08 20 */	lwz r31, 0x820(r4)
/* 801D7A70 001D49D0  C3 C5 00 50 */	lfs f30, 0x50(r5)
/* 801D7A74 001D49D4  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801D7A78 001D49D8  C3 E5 00 40 */	lfs f31, 0x40(r5)
/* 801D7A7C 001D49DC  EC 9E 00 28 */	fsubs f4, f30, f0
/* 801D7A80 001D49E0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801D7A84 001D49E4  C3 A5 00 60 */	lfs f29, 0x60(r5)
/* 801D7A88 001D49E8  EC 5F 00 28 */	fsubs f2, f31, f0
/* 801D7A8C 001D49EC  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801D7A90 001D49F0  EC 04 01 32 */	fmuls f0, f4, f4
/* 801D7A94 001D49F4  EC 7D 08 28 */	fsubs f3, f29, f1
/* 801D7A98 001D49F8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 801D7A9C 001D49FC  EC 22 00 B2 */	fmuls f1, f2, f2
/* 801D7AA0 001D4A00  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801D7AA4 001D4A04  EC 43 00 F2 */	fmuls f2, f3, f3
/* 801D7AA8 001D4A08  AB DF 20 08 */	lha r30, 0x2008(r31)
/* 801D7AAC 001D4A0C  EC 01 00 2A */	fadds f0, f1, f0
/* 801D7AB0 001D4A10  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801D7AB4 001D4A14  EF 82 00 2A */	fadds f28, f2, f0
/* 801D7AB8 001D4A18  FF 60 E0 90 */	fmr f27, f28
/* 801D7ABC 001D4A1C  48 00 00 B8 */	b lbl_801D7B74
lbl_801D7AC0:
/* 801D7AC0 001D4A20  7F E3 FB 78 */	mr r3, r31
/* 801D7AC4 001D4A24  7F C4 F3 78 */	mr r4, r30
/* 801D7AC8 001D4A28  4B E3 82 4D */	bl __vc__11CObjectListFi
/* 801D7ACC 001D4A2C  7C 60 1B 78 */	mr r0, r3
/* 801D7AD0 001D4A30  38 61 00 08 */	addi r3, r1, 8
/* 801D7AD4 001D4A34  7C 04 03 78 */	mr r4, r0
/* 801D7AD8 001D4A38  4B EC DA 31 */	bl "__ct__26TPatternedCast<9CJellyZap>FP7CEntity"
/* 801D7ADC 001D4A3C  4B EC DA 01 */	bl "CastTo<9CJellyZap>__10CPatternedFRC26TPatternedCast<9CJellyZap>"
/* 801D7AE0 001D4A40  28 03 00 00 */	cmplwi r3, 0
/* 801D7AE4 001D4A44  41 82 00 74 */	beq lbl_801D7B58
/* 801D7AE8 001D4A48  80 83 00 04 */	lwz r4, 4(r3)
/* 801D7AEC 001D4A4C  80 1D 00 04 */	lwz r0, 4(r29)
/* 801D7AF0 001D4A50  7C 04 00 00 */	cmpw r4, r0
/* 801D7AF4 001D4A54  40 82 00 64 */	bne lbl_801D7B58
/* 801D7AF8 001D4A58  7C 03 E8 40 */	cmplw r3, r29
/* 801D7AFC 001D4A5C  41 82 00 5C */	beq lbl_801D7B58
/* 801D7B00 001D4A60  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801D7B04 001D4A64  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801D7B08 001D4A68  EC 5E 08 28 */	fsubs f2, f30, f1
/* 801D7B0C 001D4A6C  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801D7B10 001D4A70  EC 7F 00 28 */	fsubs f3, f31, f0
/* 801D7B14 001D4A74  EC 9D 08 28 */	fsubs f4, f29, f1
/* 801D7B18 001D4A78  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801D7B1C 001D4A7C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801D7B20 001D4A80  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801D7B24 001D4A84  EC 44 01 32 */	fmuls f2, f4, f4
/* 801D7B28 001D4A88  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801D7B2C 001D4A8C  EC 01 00 2A */	fadds f0, f1, f0
/* 801D7B30 001D4A90  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801D7B34 001D4A94  EC 02 00 2A */	fadds f0, f2, f0
/* 801D7B38 001D4A98  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 801D7B3C 001D4A9C  40 80 00 08 */	bge lbl_801D7B44
/* 801D7B40 001D4AA0  FF 60 00 90 */	fmr f27, f0
lbl_801D7B44:
/* 801D7B44 001D4AA4  88 03 05 B8 */	lbz r0, 0x5b8(r3)
/* 801D7B48 001D4AA8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801D7B4C 001D4AAC  41 82 00 0C */	beq lbl_801D7B58
/* 801D7B50 001D4AB0  38 60 00 00 */	li r3, 0
/* 801D7B54 001D4AB4  48 00 00 40 */	b lbl_801D7B94
lbl_801D7B58:
/* 801D7B58 001D4AB8  2C 1E FF FF */	cmpwi r30, -1
/* 801D7B5C 001D4ABC  41 82 00 14 */	beq lbl_801D7B70
/* 801D7B60 001D4AC0  57 C3 18 38 */	slwi r3, r30, 3
/* 801D7B64 001D4AC4  38 03 00 08 */	addi r0, r3, 8
/* 801D7B68 001D4AC8  7F DF 02 AE */	lhax r30, r31, r0
/* 801D7B6C 001D4ACC  48 00 00 08 */	b lbl_801D7B74
lbl_801D7B70:
/* 801D7B70 001D4AD0  3B C0 FF FF */	li r30, -1
lbl_801D7B74:
/* 801D7B74 001D4AD4  2C 1E FF FF */	cmpwi r30, -1
/* 801D7B78 001D4AD8  40 82 FF 48 */	bne lbl_801D7AC0
/* 801D7B7C 001D4ADC  EC 3B E0 28 */	fsubs f1, f27, f28
/* 801D7B80 001D4AE0  C0 02 AC 74 */	lfs f0, lbl_805AC994@sda21(r2)
/* 801D7B84 001D4AE4  FC 20 0A 10 */	fabs f1, f1
/* 801D7B88 001D4AE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D7B8C 001D4AEC  7C 00 00 26 */	mfcr r0
/* 801D7B90 001D4AF0  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801D7B94:
/* 801D7B94 001D4AF4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 801D7B98 001D4AF8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801D7B9C 001D4AFC  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 801D7BA0 001D4B00  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801D7BA4 001D4B04  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 801D7BA8 001D4B08  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 801D7BAC 001D4B0C  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 801D7BB0 001D4B10  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 801D7BB4 001D4B14  E3 61 00 48 */	psq_l f27, 72(r1), 0, qr0
/* 801D7BB8 001D4B18  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 801D7BBC 001D4B1C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801D7BC0 001D4B20  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801D7BC4 001D4B24  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801D7BC8 001D4B28  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801D7BCC 001D4B2C  7C 08 03 A6 */	mtlr r0
/* 801D7BD0 001D4B30  38 21 00 90 */	addi r1, r1, 0x90
/* 801D7BD4 001D4B34  4E 80 00 20 */	blr

.global RemoveSelfFromFishCloud__9CJellyZapFR13CStateManager
RemoveSelfFromFishCloud__9CJellyZapFR13CStateManager:
/* 801D7BD8 001D4B38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D7BDC 001D4B3C  7C 08 02 A6 */	mflr r0
/* 801D7BE0 001D4B40  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D7BE4 001D4B44  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801D7BE8 001D4B48  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801D7BEC 001D4B4C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801D7BF0 001D4B50  7C 9D 23 78 */	mr r29, r4
/* 801D7BF4 001D4B54  93 81 00 30 */	stw r28, 0x30(r1)
/* 801D7BF8 001D4B58  7C 7C 1B 78 */	mr r28, r3
/* 801D7BFC 001D4B5C  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 801D7C00 001D4B60  48 00 00 A4 */	b lbl_801D7CA4
lbl_801D7C04:
/* 801D7C04 001D4B64  80 1E 00 00 */	lwz r0, 0(r30)
/* 801D7C08 001D4B68  2C 00 00 19 */	cmpwi r0, 0x19
/* 801D7C0C 001D4B6C  40 82 00 94 */	bne lbl_801D7CA0
/* 801D7C10 001D4B70  80 1E 00 04 */	lwz r0, 4(r30)
/* 801D7C14 001D4B74  2C 00 00 06 */	cmpwi r0, 6
/* 801D7C18 001D4B78  40 82 00 88 */	bne lbl_801D7CA0
/* 801D7C1C 001D4B7C  80 1E 00 08 */	lwz r0, 8(r30)
/* 801D7C20 001D4B80  7F A4 EB 78 */	mr r4, r29
/* 801D7C24 001D4B84  38 61 00 1C */	addi r3, r1, 0x1c
/* 801D7C28 001D4B88  38 A1 00 24 */	addi r5, r1, 0x24
/* 801D7C2C 001D4B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7C30 001D4B90  4B E7 02 ED */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801D7C34 001D4B94  A0 61 00 1C */	lhz r3, 0x1c(r1)
/* 801D7C38 001D4B98  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801D7C3C 001D4B9C  B0 61 00 20 */	sth r3, 0x20(r1)
/* 801D7C40 001D4BA0  7C 03 00 40 */	cmplw r3, r0
/* 801D7C44 001D4BA4  41 82 00 5C */	beq lbl_801D7CA0
/* 801D7C48 001D4BA8  B0 61 00 18 */	sth r3, 0x18(r1)
/* 801D7C4C 001D4BAC  7F A3 EB 78 */	mr r3, r29
/* 801D7C50 001D4BB0  38 81 00 18 */	addi r4, r1, 0x18
/* 801D7C54 001D4BB4  4B E7 49 21 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801D7C58 001D4BB8  7C 64 1B 78 */	mr r4, r3
/* 801D7C5C 001D4BBC  38 61 00 28 */	addi r3, r1, 0x28
/* 801D7C60 001D4BC0  4B ED 65 01 */	bl "__ct__24TCastToPtr<10CFishCloud>FP7CEntity"
/* 801D7C64 001D4BC4  83 E3 00 04 */	lwz r31, 4(r3)
/* 801D7C68 001D4BC8  28 1F 00 00 */	cmplwi r31, 0
/* 801D7C6C 001D4BCC  41 82 00 34 */	beq lbl_801D7CA0
/* 801D7C70 001D4BD0  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801D7C74 001D4BD4  7F E3 FB 78 */	mr r3, r31
/* 801D7C78 001D4BD8  38 81 00 14 */	addi r4, r1, 0x14
/* 801D7C7C 001D4BDC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801D7C80 001D4BE0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801D7C84 001D4BE4  4B FF 8F 0D */	bl sub_801d0b90
/* 801D7C88 001D4BE8  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801D7C8C 001D4BEC  7F E3 FB 78 */	mr r3, r31
/* 801D7C90 001D4BF0  38 81 00 0C */	addi r4, r1, 0xc
/* 801D7C94 001D4BF4  B0 01 00 08 */	sth r0, 8(r1)
/* 801D7C98 001D4BF8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801D7C9C 001D4BFC  4B FF 8D 01 */	bl sub_801d099c
lbl_801D7CA0:
/* 801D7CA0 001D4C00  3B DE 00 0C */	addi r30, r30, 0xc
lbl_801D7CA4:
/* 801D7CA4 001D4C04  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 801D7CA8 001D4C08  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 801D7CAC 001D4C0C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801D7CB0 001D4C10  7C 03 02 14 */	add r0, r3, r0
/* 801D7CB4 001D4C14  7C 1E 00 40 */	cmplw r30, r0
/* 801D7CB8 001D4C18  40 82 FF 4C */	bne lbl_801D7C04
/* 801D7CBC 001D4C1C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D7CC0 001D4C20  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801D7CC4 001D4C24  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801D7CC8 001D4C28  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801D7CCC 001D4C2C  83 81 00 30 */	lwz r28, 0x30(r1)
/* 801D7CD0 001D4C30  7C 08 03 A6 */	mtlr r0
/* 801D7CD4 001D4C34  38 21 00 40 */	addi r1, r1, 0x40
/* 801D7CD8 001D4C38  4E 80 00 20 */	blr

.global AddSelfToFishCloud__9CJellyZapFR13CStateManagerffb
AddSelfToFishCloud__9CJellyZapFR13CStateManagerffb:
/* 801D7CDC 001D4C3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801D7CE0 001D4C40  7C 08 02 A6 */	mflr r0
/* 801D7CE4 001D4C44  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D7CE8 001D4C48  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 801D7CEC 001D4C4C  FF E0 10 90 */	fmr f31, f2
/* 801D7CF0 001D4C50  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801D7CF4 001D4C54  FF C0 08 90 */	fmr f30, f1
/* 801D7CF8 001D4C58  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801D7CFC 001D4C5C  7C BF 2B 78 */	mr r31, r5
/* 801D7D00 001D4C60  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801D7D04 001D4C64  7C 9E 23 78 */	mr r30, r4
/* 801D7D08 001D4C68  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801D7D0C 001D4C6C  7C 7D 1B 78 */	mr r29, r3
/* 801D7D10 001D4C70  93 81 00 30 */	stw r28, 0x30(r1)
/* 801D7D14 001D4C74  83 83 00 2C */	lwz r28, 0x2c(r3)
/* 801D7D18 001D4C78  48 00 00 C0 */	b lbl_801D7DD8
lbl_801D7D1C:
/* 801D7D1C 001D4C7C  80 1C 00 00 */	lwz r0, 0(r28)
/* 801D7D20 001D4C80  2C 00 00 19 */	cmpwi r0, 0x19
/* 801D7D24 001D4C84  40 82 00 B0 */	bne lbl_801D7DD4
/* 801D7D28 001D4C88  80 1C 00 04 */	lwz r0, 4(r28)
/* 801D7D2C 001D4C8C  2C 00 00 06 */	cmpwi r0, 6
/* 801D7D30 001D4C90  40 82 00 A4 */	bne lbl_801D7DD4
/* 801D7D34 001D4C94  80 1C 00 08 */	lwz r0, 8(r28)
/* 801D7D38 001D4C98  7F C4 F3 78 */	mr r4, r30
/* 801D7D3C 001D4C9C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801D7D40 001D4CA0  38 A1 00 24 */	addi r5, r1, 0x24
/* 801D7D44 001D4CA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7D48 001D4CA8  4B E7 01 D5 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801D7D4C 001D4CAC  A0 61 00 1C */	lhz r3, 0x1c(r1)
/* 801D7D50 001D4CB0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801D7D54 001D4CB4  B0 61 00 20 */	sth r3, 0x20(r1)
/* 801D7D58 001D4CB8  7C 03 00 40 */	cmplw r3, r0
/* 801D7D5C 001D4CBC  41 82 00 78 */	beq lbl_801D7DD4
/* 801D7D60 001D4CC0  B0 61 00 18 */	sth r3, 0x18(r1)
/* 801D7D64 001D4CC4  7F C3 F3 78 */	mr r3, r30
/* 801D7D68 001D4CC8  38 81 00 18 */	addi r4, r1, 0x18
/* 801D7D6C 001D4CCC  4B E7 48 09 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801D7D70 001D4CD0  7C 64 1B 78 */	mr r4, r3
/* 801D7D74 001D4CD4  38 61 00 28 */	addi r3, r1, 0x28
/* 801D7D78 001D4CD8  4B ED 63 E9 */	bl "__ct__24TCastToPtr<10CFishCloud>FP7CEntity"
/* 801D7D7C 001D4CDC  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7D80 001D4CE0  28 03 00 00 */	cmplwi r3, 0
/* 801D7D84 001D4CE4  41 82 00 50 */	beq lbl_801D7DD4
/* 801D7D88 001D4CE8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801D7D8C 001D4CEC  41 82 00 28 */	beq lbl_801D7DB4
/* 801D7D90 001D4CF0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801D7D94 001D4CF4  FC 20 F0 90 */	fmr f1, f30
/* 801D7D98 001D4CF8  FC 40 F8 90 */	fmr f2, f31
/* 801D7D9C 001D4CFC  38 81 00 14 */	addi r4, r1, 0x14
/* 801D7DA0 001D4D00  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801D7DA4 001D4D04  38 A0 00 00 */	li r5, 0
/* 801D7DA8 001D4D08  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801D7DAC 001D4D0C  4B FF 8E D9 */	bl sub_801d0c84
/* 801D7DB0 001D4D10  48 00 00 24 */	b lbl_801D7DD4
lbl_801D7DB4:
/* 801D7DB4 001D4D14  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801D7DB8 001D4D18  FC 20 F0 90 */	fmr f1, f30
/* 801D7DBC 001D4D1C  FC 40 F8 90 */	fmr f2, f31
/* 801D7DC0 001D4D20  38 81 00 0C */	addi r4, r1, 0xc
/* 801D7DC4 001D4D24  B0 01 00 08 */	sth r0, 8(r1)
/* 801D7DC8 001D4D28  38 A0 00 00 */	li r5, 0
/* 801D7DCC 001D4D2C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801D7DD0 001D4D30  4B FF 93 75 */	bl sub_801d1144
lbl_801D7DD4:
/* 801D7DD4 001D4D34  3B 9C 00 0C */	addi r28, r28, 0xc
lbl_801D7DD8:
/* 801D7DD8 001D4D38  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 801D7DDC 001D4D3C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 801D7DE0 001D4D40  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801D7DE4 001D4D44  7C 03 02 14 */	add r0, r3, r0
/* 801D7DE8 001D4D48  7C 1C 00 40 */	cmplw r28, r0
/* 801D7DEC 001D4D4C  40 82 FF 30 */	bne lbl_801D7D1C
/* 801D7DF0 001D4D50  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801D7DF4 001D4D54  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 801D7DF8 001D4D58  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801D7DFC 001D4D5C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801D7E00 001D4D60  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801D7E04 001D4D64  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801D7E08 001D4D68  83 81 00 30 */	lwz r28, 0x30(r1)
/* 801D7E0C 001D4D6C  7C 08 03 A6 */	mtlr r0
/* 801D7E10 001D4D70  38 21 00 50 */	addi r1, r1, 0x50
/* 801D7E14 001D4D74  4E 80 00 20 */	blr

.global AddRepulsor__9CJellyZapFR13CStateManager
AddRepulsor__9CJellyZapFR13CStateManager:
/* 801D7E18 001D4D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7E1C 001D4D7C  7C 08 02 A6 */	mflr r0
/* 801D7E20 001D4D80  38 A0 00 01 */	li r5, 1
/* 801D7E24 001D4D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7E28 001D4D88  C0 23 05 A0 */	lfs f1, 0x5a0(r3)
/* 801D7E2C 001D4D8C  C0 43 05 9C */	lfs f2, 0x59c(r3)
/* 801D7E30 001D4D90  4B FF FE AD */	bl AddSelfToFishCloud__9CJellyZapFR13CStateManagerffb
/* 801D7E34 001D4D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7E38 001D4D98  7C 08 03 A6 */	mtlr r0
/* 801D7E3C 001D4D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7E40 001D4DA0  4E 80 00 20 */	blr

.global RemoveAllAttractors__9CJellyZapFR13CStateManager
RemoveAllAttractors__9CJellyZapFR13CStateManager:
/* 801D7E44 001D4DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7E48 001D4DA8  7C 08 02 A6 */	mflr r0
/* 801D7E4C 001D4DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7E50 001D4DB0  4B FF FD 89 */	bl RemoveSelfFromFishCloud__9CJellyZapFR13CStateManager
/* 801D7E54 001D4DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7E58 001D4DB8  7C 08 03 A6 */	mtlr r0
/* 801D7E5C 001D4DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7E60 001D4DC0  4E 80 00 20 */	blr

.global AddAttractor__9CJellyZapFR13CStateManager
AddAttractor__9CJellyZapFR13CStateManager:
/* 801D7E64 001D4DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7E68 001D4DC8  7C 08 02 A6 */	mflr r0
/* 801D7E6C 001D4DCC  38 A0 00 01 */	li r5, 1
/* 801D7E70 001D4DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7E74 001D4DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D7E78 001D4DD8  7C 9F 23 78 */	mr r31, r4
/* 801D7E7C 001D4DDC  93 C1 00 08 */	stw r30, 8(r1)
/* 801D7E80 001D4DE0  7C 7E 1B 78 */	mr r30, r3
/* 801D7E84 001D4DE4  C0 23 05 A0 */	lfs f1, 0x5a0(r3)
/* 801D7E88 001D4DE8  C0 43 05 9C */	lfs f2, 0x59c(r3)
/* 801D7E8C 001D4DEC  4B FF FE 51 */	bl AddSelfToFishCloud__9CJellyZapFR13CStateManagerffb
/* 801D7E90 001D4DF0  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 801D7E94 001D4DF4  7F C3 F3 78 */	mr r3, r30
/* 801D7E98 001D4DF8  C0 5E 05 9C */	lfs f2, 0x59c(r30)
/* 801D7E9C 001D4DFC  7F E4 FB 78 */	mr r4, r31
/* 801D7EA0 001D4E00  38 A0 00 00 */	li r5, 0
/* 801D7EA4 001D4E04  4B FF FE 39 */	bl AddSelfToFishCloud__9CJellyZapFR13CStateManagerffb
/* 801D7EA8 001D4E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7EAC 001D4E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D7EB0 001D4E10  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D7EB4 001D4E14  7C 08 03 A6 */	mtlr r0
/* 801D7EB8 001D4E18  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7EBC 001D4E1C  4E 80 00 20 */	blr

.global Flinch__9CJellyZapFR13CStateManager9EStateMsgf
Flinch__9CJellyZapFR13CStateManager9EStateMsgf:
/* 801D7EC0 001D4E20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D7EC4 001D4E24  7C 08 02 A6 */	mflr r0
/* 801D7EC8 001D4E28  2C 05 00 01 */	cmpwi r5, 1
/* 801D7ECC 001D4E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7ED0 001D4E30  41 82 00 44 */	beq lbl_801D7F14
/* 801D7ED4 001D4E34  40 80 00 10 */	bge lbl_801D7EE4
/* 801D7ED8 001D4E38  2C 05 00 00 */	cmpwi r5, 0
/* 801D7EDC 001D4E3C  40 80 00 14 */	bge lbl_801D7EF0
/* 801D7EE0 001D4E40  48 00 00 70 */	b lbl_801D7F50
lbl_801D7EE4:
/* 801D7EE4 001D4E44  2C 05 00 03 */	cmpwi r5, 3
/* 801D7EE8 001D4E48  40 80 00 68 */	bge lbl_801D7F50
/* 801D7EEC 001D4E4C  48 00 00 5C */	b lbl_801D7F48
lbl_801D7EF0:
/* 801D7EF0 001D4E50  88 83 04 00 */	lbz r4, 0x400(r3)
/* 801D7EF4 001D4E54  38 00 00 00 */	li r0, 0
/* 801D7EF8 001D4E58  50 04 3E 30 */	rlwimi r4, r0, 7, 0x18, 0x18
/* 801D7EFC 001D4E5C  38 00 00 01 */	li r0, 1
/* 801D7F00 001D4E60  98 83 04 00 */	stb r4, 0x400(r3)
/* 801D7F04 001D4E64  90 03 03 2C */	stw r0, 0x32c(r3)
/* 801D7F08 001D4E68  C0 03 05 B0 */	lfs f0, 0x5b0(r3)
/* 801D7F0C 001D4E6C  D0 03 03 40 */	stfs f0, 0x340(r3)
/* 801D7F10 001D4E70  48 00 00 40 */	b lbl_801D7F50
lbl_801D7F14:
/* 801D7F14 001D4E74  3C A0 80 3E */	lis r5, lbl_803E5948@ha
/* 801D7F18 001D4E78  38 C1 00 08 */	addi r6, r1, 8
/* 801D7F1C 001D4E7C  39 45 59 48 */	addi r10, r5, lbl_803E5948@l
/* 801D7F20 001D4E80  38 A0 00 06 */	li r5, 6
/* 801D7F24 001D4E84  81 2A 00 00 */	lwz r9, 0(r10)
/* 801D7F28 001D4E88  38 E0 00 00 */	li r7, 0
/* 801D7F2C 001D4E8C  81 0A 00 04 */	lwz r8, 4(r10)
/* 801D7F30 001D4E90  80 0A 00 08 */	lwz r0, 8(r10)
/* 801D7F34 001D4E94  91 21 00 08 */	stw r9, 8(r1)
/* 801D7F38 001D4E98  91 01 00 0C */	stw r8, 0xc(r1)
/* 801D7F3C 001D4E9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801D7F40 001D4EA0  4B EA 48 75 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801D7F44 001D4EA4  48 00 00 0C */	b lbl_801D7F50
lbl_801D7F48:
/* 801D7F48 001D4EA8  38 00 00 00 */	li r0, 0
/* 801D7F4C 001D4EAC  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_801D7F50:
/* 801D7F50 001D4EB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D7F54 001D4EB4  7C 08 03 A6 */	mtlr r0
/* 801D7F58 001D4EB8  38 21 00 20 */	addi r1, r1, 0x20
/* 801D7F5C 001D4EBC  4E 80 00 20 */	blr

.global Attack__9CJellyZapFR13CStateManager9EStateMsgf
Attack__9CJellyZapFR13CStateManager9EStateMsgf:
/* 801D7F60 001D4EC0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801D7F64 001D4EC4  7C 08 02 A6 */	mflr r0
/* 801D7F68 001D4EC8  2C 05 00 01 */	cmpwi r5, 1
/* 801D7F6C 001D4ECC  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D7F70 001D4ED0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801D7F74 001D4ED4  7C 9F 23 78 */	mr r31, r4
/* 801D7F78 001D4ED8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801D7F7C 001D4EDC  7C 7E 1B 78 */	mr r30, r3
/* 801D7F80 001D4EE0  41 82 01 28 */	beq lbl_801D80A8
/* 801D7F84 001D4EE4  40 80 00 10 */	bge lbl_801D7F94
/* 801D7F88 001D4EE8  2C 05 00 00 */	cmpwi r5, 0
/* 801D7F8C 001D4EEC  40 80 00 14 */	bge lbl_801D7FA0
/* 801D7F90 001D4EF0  48 00 01 64 */	b lbl_801D80F4
lbl_801D7F94:
/* 801D7F94 001D4EF4  2C 05 00 03 */	cmpwi r5, 3
/* 801D7F98 001D4EF8  40 80 01 5C */	bge lbl_801D80F4
/* 801D7F9C 001D4EFC  48 00 01 40 */	b lbl_801D80DC
lbl_801D7FA0:
/* 801D7FA0 001D4F00  38 00 00 01 */	li r0, 1
/* 801D7FA4 001D4F04  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801D7FA8 001D4F08  4B FF FE 71 */	bl AddRepulsor__9CJellyZapFR13CStateManager
/* 801D7FAC 001D4F0C  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 801D7FB0 001D4F10  38 60 00 01 */	li r3, 1
/* 801D7FB4 001D4F14  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801D7FB8 001D4F18  38 61 00 3C */	addi r3, r1, 0x3c
/* 801D7FBC 001D4F1C  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 801D7FC0 001D4F20  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801D7FC4 001D4F24  C0 FE 00 60 */	lfs f7, 0x60(r30)
/* 801D7FC8 001D4F28  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 801D7FCC 001D4F2C  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 801D7FD0 001D4F30  C0 DE 00 50 */	lfs f6, 0x50(r30)
/* 801D7FD4 001D4F34  EC 47 28 28 */	fsubs f2, f7, f5
/* 801D7FD8 001D4F38  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801D7FDC 001D4F3C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801D7FE0 001D4F40  EC 66 20 28 */	fsubs f3, f6, f4
/* 801D7FE4 001D4F44  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801D7FE8 001D4F48  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D7FEC 001D4F4C  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801D7FF0 001D4F50  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 801D7FF4 001D4F54  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801D7FF8 001D4F58  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 801D7FFC 001D4F5C  D0 E1 00 38 */	stfs f7, 0x38(r1)
/* 801D8000 001D4F60  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801D8004 001D4F64  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801D8008 001D4F68  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801D800C 001D4F6C  48 13 C8 AD */	bl Magnitude__9CVector3fCFv
/* 801D8010 001D4F70  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 801D8014 001D4F74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D8018 001D4F78  40 80 00 84 */	bge lbl_801D809C
/* 801D801C 001D4F7C  EC 41 00 24 */	fdivs f2, f1, f0
/* 801D8020 001D4F80  C0 62 AC 80 */	lfs f3, lbl_805AC9A0@sda21(r2)
/* 801D8024 001D4F84  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801D8028 001D4F88  C0 82 AC 7C */	lfs f4, lbl_805AC99C@sda21(r2)
/* 801D802C 001D4F8C  C0 22 AC 78 */	lfs f1, lbl_805AC998@sda21(r2)
/* 801D8030 001D4F90  C0 03 07 40 */	lfs f0, 0x740(r3)
/* 801D8034 001D4F94  EC 43 10 28 */	fsubs f2, f3, f2
/* 801D8038 001D4F98  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 801D803C 001D4F9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D8040 001D4FA0  40 81 00 34 */	ble lbl_801D8074
/* 801D8044 001D4FA4  C0 42 80 F8 */	lfs f2, skDefaultHudFadeOutSpeed__7CPlayer@sda21(r2)
/* 801D8048 001D4FA8  C0 62 80 FC */	lfs f3, skDefaultHudFadeInSpeed__7CPlayer@sda21(r2)
/* 801D804C 001D4FAC  4B E3 B0 21 */	bl SetHudDisable__7CPlayerFfff
/* 801D8050 001D4FB0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801D8054 001D4FB4  7F E6 FB 78 */	mr r6, r31
/* 801D8058 001D4FB8  38 81 00 14 */	addi r4, r1, 0x14
/* 801D805C 001D4FBC  38 A0 00 08 */	li r5, 8
/* 801D8060 001D4FC0  A0 03 03 10 */	lhz r0, 0x310(r3)
/* 801D8064 001D4FC4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801D8068 001D4FC8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801D806C 001D4FCC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801D8070 001D4FD0  4B FA 31 E5 */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
lbl_801D8074:
/* 801D8074 001D4FD4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801D8078 001D4FD8  38 81 00 0C */	addi r4, r1, 0xc
/* 801D807C 001D4FDC  C0 22 AC 84 */	lfs f1, lbl_805AC9A4@sda21(r2)
/* 801D8080 001D4FE0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801D8084 001D4FE4  FC 40 08 90 */	fmr f2, f1
/* 801D8088 001D4FE8  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801D808C 001D4FEC  B0 01 00 08 */	sth r0, 8(r1)
/* 801D8090 001D4FF0  80 63 00 00 */	lwz r3, 0(r3)
/* 801D8094 001D4FF4  38 63 01 88 */	addi r3, r3, 0x188
/* 801D8098 001D4FF8  4B FE 8A A1 */	bl AddSource__19CStaticInterferenceF9TUniqueIdff
lbl_801D809C:
/* 801D809C 001D4FFC  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 801D80A0 001D5000  D0 1E 03 40 */	stfs f0, 0x340(r30)
/* 801D80A4 001D5004  48 00 00 50 */	b lbl_801D80F4
lbl_801D80A8:
/* 801D80A8 001D5008  3C A0 80 3E */	lis r5, lbl_803E593C@ha
/* 801D80AC 001D500C  38 C1 00 18 */	addi r6, r1, 0x18
/* 801D80B0 001D5010  39 45 59 3C */	addi r10, r5, lbl_803E593C@l
/* 801D80B4 001D5014  38 A0 00 07 */	li r5, 7
/* 801D80B8 001D5018  81 2A 00 00 */	lwz r9, 0(r10)
/* 801D80BC 001D501C  38 E0 00 01 */	li r7, 1
/* 801D80C0 001D5020  81 0A 00 04 */	lwz r8, 4(r10)
/* 801D80C4 001D5024  80 0A 00 08 */	lwz r0, 8(r10)
/* 801D80C8 001D5028  91 21 00 18 */	stw r9, 0x18(r1)
/* 801D80CC 001D502C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801D80D0 001D5030  90 01 00 20 */	stw r0, 0x20(r1)
/* 801D80D4 001D5034  4B EA 46 E1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801D80D8 001D5038  48 00 00 1C */	b lbl_801D80F4
lbl_801D80DC:
/* 801D80DC 001D503C  4B FF FD 69 */	bl RemoveAllAttractors__9CJellyZapFR13CStateManager
/* 801D80E0 001D5040  38 60 00 00 */	li r3, 0
/* 801D80E4 001D5044  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 801D80E8 001D5048  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 801D80EC 001D504C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801D80F0 001D5050  98 1E 05 B8 */	stb r0, 0x5b8(r30)
lbl_801D80F4:
/* 801D80F4 001D5054  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801D80F8 001D5058  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801D80FC 001D505C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801D8100 001D5060  7C 08 03 A6 */	mtlr r0
/* 801D8104 001D5064  38 21 00 50 */	addi r1, r1, 0x50
/* 801D8108 001D5068  4E 80 00 20 */	blr

.global GetDamageVulnerability__9CJellyZapCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__9CJellyZapCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 801D810C 001D506C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8110 001D5070  7C 08 02 A6 */	mflr r0
/* 801D8114 001D5074  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8118 001D5078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D811C 001D507C  7C 7F 1B 78 */	mr r31, r3
/* 801D8120 001D5080  48 00 00 71 */	bl sub801d8190__9CJellyZapFv
/* 801D8124 001D5084  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D8128 001D5088  41 82 00 10 */	beq lbl_801D8138
/* 801D812C 001D508C  3C 60 80 57 */	lis r3, sReflectVulnerability__20CDamageVulnerability@ha
/* 801D8130 001D5090  38 63 D7 80 */	addi r3, r3, sReflectVulnerability__20CDamageVulnerability@l
/* 801D8134 001D5094  48 00 00 0C */	b lbl_801D8140
lbl_801D8138:
/* 801D8138 001D5098  7F E3 FB 78 */	mr r3, r31
/* 801D813C 001D509C  4B EC AC 35 */	bl GetDamageVulnerability__3CAiCFv
lbl_801D8140:
/* 801D8140 001D50A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8144 001D50A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D8148 001D50A8  7C 08 03 A6 */	mtlr r0
/* 801D814C 001D50AC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8150 001D50B0  4E 80 00 20 */	blr

.global GetCollisionResponseType__9CJellyZapCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__9CJellyZapCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 801D8154 001D50B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8158 001D50B8  7C 08 02 A6 */	mflr r0
/* 801D815C 001D50BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8160 001D50C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D8164 001D50C4  3B E0 00 27 */	li r31, 0x27
/* 801D8168 001D50C8  48 00 00 29 */	bl sub801d8190__9CJellyZapFv
/* 801D816C 001D50CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D8170 001D50D0  41 82 00 08 */	beq lbl_801D8178
/* 801D8174 001D50D4  3B E0 00 59 */	li r31, 0x59
lbl_801D8178:
/* 801D8178 001D50D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D817C 001D50DC  7F E3 FB 78 */	mr r3, r31
/* 801D8180 001D50E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D8184 001D50E4  7C 08 03 A6 */	mtlr r0
/* 801D8188 001D50E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D818C 001D50EC  4E 80 00 20 */	blr

.global sub801d8190__9CJellyZapFv
sub801d8190__9CJellyZapFv:
/* 801D8190 001D50F0  80 83 05 68 */	lwz r4, 0x568(r3)
/* 801D8194 001D50F4  20 64 00 01 */	subfic r3, r4, 1
/* 801D8198 001D50F8  38 04 FF FF */	addi r0, r4, -1
/* 801D819C 001D50FC  7C 60 03 78 */	or r0, r3, r0
/* 801D81A0 001D5100  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801D81A4 001D5104  4E 80 00 20 */	blr

.global Suck__9CJellyZapFR13CStateManager9EStateMsgf
Suck__9CJellyZapFR13CStateManager9EStateMsgf:
/* 801D81A8 001D5108  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801D81AC 001D510C  7C 08 02 A6 */	mflr r0
/* 801D81B0 001D5110  90 01 00 84 */	stw r0, 0x84(r1)
/* 801D81B4 001D5114  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801D81B8 001D5118  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801D81BC 001D511C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801D81C0 001D5120  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 801D81C4 001D5124  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801D81C8 001D5128  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801D81CC 001D512C  93 A1 00 54 */	stw r29, 0x54(r1)
/* 801D81D0 001D5130  93 81 00 50 */	stw r28, 0x50(r1)
/* 801D81D4 001D5134  7C 9F 23 78 */	mr r31, r4
/* 801D81D8 001D5138  FF C0 08 90 */	fmr f30, f1
/* 801D81DC 001D513C  80 C4 08 B8 */	lwz r6, 0x8b8(r4)
/* 801D81E0 001D5140  2C 05 00 01 */	cmpwi r5, 1
/* 801D81E4 001D5144  7C 7E 1B 78 */	mr r30, r3
/* 801D81E8 001D5148  80 C6 00 00 */	lwz r6, 0(r6)
/* 801D81EC 001D514C  83 86 00 20 */	lwz r28, 0x20(r6)
/* 801D81F0 001D5150  41 82 00 68 */	beq lbl_801D8258
/* 801D81F4 001D5154  40 80 00 10 */	bge lbl_801D8204
/* 801D81F8 001D5158  2C 05 00 00 */	cmpwi r5, 0
/* 801D81FC 001D515C  40 80 00 14 */	bge lbl_801D8210
/* 801D8200 001D5160  48 00 02 90 */	b lbl_801D8490
lbl_801D8204:
/* 801D8204 001D5164  2C 05 00 03 */	cmpwi r5, 3
/* 801D8208 001D5168  40 80 02 88 */	bge lbl_801D8490
/* 801D820C 001D516C  48 00 02 0C */	b lbl_801D8418
lbl_801D8210:
/* 801D8210 001D5170  38 00 00 01 */	li r0, 1
/* 801D8214 001D5174  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801D8218 001D5178  4B FF FC 2D */	bl RemoveAllAttractors__9CJellyZapFR13CStateManager
/* 801D821C 001D517C  38 80 00 01 */	li r4, 1
/* 801D8220 001D5180  38 60 00 00 */	li r3, 0
/* 801D8224 001D5184  90 9E 05 68 */	stw r4, 0x568(r30)
/* 801D8228 001D5188  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801D822C 001D518C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801D8230 001D5190  98 1E 04 00 */	stb r0, 0x400(r30)
/* 801D8234 001D5194  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 801D8238 001D5198  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801D823C 001D519C  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 801D8240 001D51A0  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 801D8244 001D51A4  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801D8248 001D51A8  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 801D824C 001D51AC  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 801D8250 001D51B0  D0 1E 03 40 */	stfs f0, 0x340(r30)
/* 801D8254 001D51B4  48 00 02 3C */	b lbl_801D8490
lbl_801D8258:
/* 801D8258 001D51B8  3C A0 80 3E */	lis r5, lbl_803E5930@ha
/* 801D825C 001D51BC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 801D8260 001D51C0  39 45 59 30 */	addi r10, r5, lbl_803E5930@l
/* 801D8264 001D51C4  38 A0 00 0A */	li r5, 0xa
/* 801D8268 001D51C8  81 2A 00 00 */	lwz r9, 0(r10)
/* 801D826C 001D51CC  38 E0 00 00 */	li r7, 0
/* 801D8270 001D51D0  81 0A 00 04 */	lwz r8, 4(r10)
/* 801D8274 001D51D4  80 0A 00 08 */	lwz r0, 8(r10)
/* 801D8278 001D51D8  91 21 00 2C */	stw r9, 0x2c(r1)
/* 801D827C 001D51DC  91 01 00 30 */	stw r8, 0x30(r1)
/* 801D8280 001D51E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D8284 001D51E4  4B EA 45 31 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801D8288 001D51E8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801D828C 001D51EC  38 80 00 15 */	li r4, 0x15
/* 801D8290 001D51F0  C0 42 AC 80 */	lfs f2, lbl_805AC9A0@sda21(r2)
/* 801D8294 001D51F4  C0 82 AC 70 */	lfs f4, lbl_805AC990@sda21(r2)
/* 801D8298 001D51F8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801D829C 001D51FC  FF E0 10 90 */	fmr f31, f2
/* 801D82A0 001D5200  C0 A3 00 50 */	lfs f5, 0x50(r3)
/* 801D82A4 001D5204  EC 20 20 2A */	fadds f1, f0, f4
/* 801D82A8 001D5208  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801D82AC 001D520C  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801D82B0 001D5210  EC A5 20 2A */	fadds f5, f5, f4
/* 801D82B4 001D5214  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801D82B8 001D5218  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D82BC 001D521C  EC 43 10 2A */	fadds f2, f3, f2
/* 801D82C0 001D5220  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801D82C4 001D5224  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801D82C8 001D5228  EC 65 20 28 */	fsubs f3, f5, f4
/* 801D82CC 001D522C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801D82D0 001D5230  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D82D4 001D5234  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 801D82D8 001D5238  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801D82DC 001D523C  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801D82E0 001D5240  83 BF 08 4C */	lwz r29, 0x84c(r31)
/* 801D82E4 001D5244  80 63 00 00 */	lwz r3, 0(r3)
/* 801D82E8 001D5248  4B EB 97 D9 */	bl HasPowerUp__12CPlayerStateCFQ212CPlayerState9EItemType
/* 801D82EC 001D524C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D82F0 001D5250  41 82 00 08 */	beq lbl_801D82F8
/* 801D82F4 001D5254  C3 E2 AC 88 */	lfs f31, lbl_805AC9A8@sda21(r2)
lbl_801D82F8:
/* 801D82F8 001D5258  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801D82FC 001D525C  38 61 00 38 */	addi r3, r1, 0x38
/* 801D8300 001D5260  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801D8304 001D5264  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 801D8308 001D5268  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801D830C 001D526C  EC 81 00 28 */	fsubs f4, f1, f0
/* 801D8310 001D5270  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 801D8314 001D5274  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801D8318 001D5278  EC 43 10 28 */	fsubs f2, f3, f2
/* 801D831C 001D527C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D8320 001D5280  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801D8324 001D5284  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801D8328 001D5288  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801D832C 001D528C  48 13 C5 8D */	bl Magnitude__9CVector3fCFv
/* 801D8330 001D5290  80 1D 02 F8 */	lwz r0, 0x2f8(r29)
/* 801D8334 001D5294  C0 62 AC 8C */	lfs f3, lbl_805AC9AC@sda21(r2)
/* 801D8338 001D5298  2C 00 00 01 */	cmpwi r0, 1
/* 801D833C 001D529C  40 82 00 0C */	bne lbl_801D8348
/* 801D8340 001D52A0  C0 5E 05 94 */	lfs f2, 0x594(r30)
/* 801D8344 001D52A4  48 00 00 18 */	b lbl_801D835C
lbl_801D8348:
/* 801D8348 001D52A8  2C 1C 00 01 */	cmpwi r28, 1
/* 801D834C 001D52AC  40 82 00 0C */	bne lbl_801D8358
/* 801D8350 001D52B0  C0 5E 05 90 */	lfs f2, 0x590(r30)
/* 801D8354 001D52B4  48 00 00 08 */	b lbl_801D835C
lbl_801D8358:
/* 801D8358 001D52B8  C0 5E 05 8C */	lfs f2, 0x58c(r30)
lbl_801D835C:
/* 801D835C 001D52BC  C0 02 AC 80 */	lfs f0, lbl_805AC9A0@sda21(r2)
/* 801D8360 001D52C0  EC 83 00 B2 */	fmuls f4, f3, f2
/* 801D8364 001D52C4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 801D8368 001D52C8  EC A0 08 24 */	fdivs f5, f0, f1
/* 801D836C 001D52CC  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 801D8370 001D52D0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801D8374 001D52D4  C0 7D 00 E8 */	lfs f3, 0xe8(r29)
/* 801D8378 001D52D8  FC 40 10 50 */	fneg f2, f2
/* 801D837C 001D52DC  FC 20 08 50 */	fneg f1, f1
/* 801D8380 001D52E0  FC 00 00 50 */	fneg f0, f0
/* 801D8384 001D52E4  EC 45 00 B2 */	fmuls f2, f5, f2
/* 801D8388 001D52E8  EC 25 00 72 */	fmuls f1, f5, f1
/* 801D838C 001D52EC  EC 05 00 32 */	fmuls f0, f5, f0
/* 801D8390 001D52F0  EC 64 00 F2 */	fmuls f3, f4, f3
/* 801D8394 001D52F4  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 801D8398 001D52F8  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801D839C 001D52FC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801D83A0 001D5300  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801D83A4 001D5304  EC 23 00 72 */	fmuls f1, f3, f1
/* 801D83A8 001D5308  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D83AC 001D530C  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 801D83B0 001D5310  EC 3E 00 72 */	fmuls f1, f30, f1
/* 801D83B4 001D5314  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801D83B8 001D5318  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801D83BC 001D531C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801D83C0 001D5320  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801D83C4 001D5324  4B E4 31 71 */	bl Identity__10CAxisAngleFv
/* 801D83C8 001D5328  7C 65 1B 78 */	mr r5, r3
/* 801D83CC 001D532C  7F A3 EB 78 */	mr r3, r29
/* 801D83D0 001D5330  38 81 00 20 */	addi r4, r1, 0x20
/* 801D83D4 001D5334  4B F4 3F C5 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 801D83D8 001D5338  7F A3 EB 78 */	mr r3, r29
/* 801D83DC 001D533C  4B F4 2D A1 */	bl UseCollisionImpulses__13CPhysicsActorFv
/* 801D83E0 001D5340  C0 02 AC 78 */	lfs f0, lbl_805AC998@sda21(r2)
/* 801D83E4 001D5344  38 81 00 14 */	addi r4, r1, 0x14
/* 801D83E8 001D5348  C0 22 AC 88 */	lfs f1, lbl_805AC9A8@sda21(r2)
/* 801D83EC 001D534C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 801D83F0 001D5350  FC 40 08 90 */	fmr f2, f1
/* 801D83F4 001D5354  D0 1D 02 D4 */	stfs f0, 0x2d4(r29)
/* 801D83F8 001D5358  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801D83FC 001D535C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801D8400 001D5360  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801D8404 001D5364  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801D8408 001D5368  80 63 00 00 */	lwz r3, 0(r3)
/* 801D840C 001D536C  38 63 01 88 */	addi r3, r3, 0x188
/* 801D8410 001D5370  4B FE 87 29 */	bl AddSource__19CStaticInterferenceF9TUniqueIdff
/* 801D8414 001D5374  48 00 00 7C */	b lbl_801D8490
lbl_801D8418:
/* 801D8418 001D5378  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801D841C 001D537C  38 00 00 0A */	li r0, 0xa
/* 801D8420 001D5380  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801D8424 001D5384  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D8428 001D5388  38 81 00 18 */	addi r4, r1, 0x18
/* 801D842C 001D538C  90 61 00 18 */	stw r3, 0x18(r1)
/* 801D8430 001D5390  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801D8434 001D5394  38 63 00 04 */	addi r3, r3, 4
/* 801D8438 001D5398  4B F5 93 81 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801D843C 001D539C  34 01 00 18 */	addic. r0, r1, 0x18
/* 801D8440 001D53A0  41 82 00 10 */	beq lbl_801D8450
/* 801D8444 001D53A4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801D8448 001D53A8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801D844C 001D53AC  90 01 00 18 */	stw r0, 0x18(r1)
lbl_801D8450:
/* 801D8450 001D53B0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801D8454 001D53B4  38 81 00 0C */	addi r4, r1, 0xc
/* 801D8458 001D53B8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801D845C 001D53BC  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801D8460 001D53C0  B0 01 00 08 */	sth r0, 8(r1)
/* 801D8464 001D53C4  80 63 00 00 */	lwz r3, 0(r3)
/* 801D8468 001D53C8  38 63 01 88 */	addi r3, r3, 0x188
/* 801D846C 001D53CC  4B FE 85 49 */	bl sub_801c09b4
/* 801D8470 001D53D0  38 60 00 00 */	li r3, 0
/* 801D8474 001D53D4  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 801D8478 001D53D8  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 801D847C 001D53DC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801D8480 001D53E0  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 801D8484 001D53E4  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 801D8488 001D53E8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801D848C 001D53EC  98 1E 05 B8 */	stb r0, 0x5b8(r30)
lbl_801D8490:
/* 801D8490 001D53F0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801D8494 001D53F4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801D8498 001D53F8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 801D849C 001D53FC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801D84A0 001D5400  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801D84A4 001D5404  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801D84A8 001D5408  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 801D84AC 001D540C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801D84B0 001D5410  83 81 00 50 */	lwz r28, 0x50(r1)
/* 801D84B4 001D5414  7C 08 03 A6 */	mtlr r0
/* 801D84B8 001D5418  38 21 00 80 */	addi r1, r1, 0x80
/* 801D84BC 001D541C  4E 80 00 20 */	blr

.global Active__9CJellyZapFR13CStateManager9EStateMsgf
Active__9CJellyZapFR13CStateManager9EStateMsgf:
/* 801D84C0 001D5420  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801D84C4 001D5424  7C 08 02 A6 */	mflr r0
/* 801D84C8 001D5428  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D84CC 001D542C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801D84D0 001D5430  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801D84D4 001D5434  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801D84D8 001D5438  FF E0 08 90 */	fmr f31, f1
/* 801D84DC 001D543C  2C 05 00 01 */	cmpwi r5, 1
/* 801D84E0 001D5440  7C 7F 1B 78 */	mr r31, r3
/* 801D84E4 001D5444  41 82 00 50 */	beq lbl_801D8534
/* 801D84E8 001D5448  40 80 00 10 */	bge lbl_801D84F8
/* 801D84EC 001D544C  2C 05 00 00 */	cmpwi r5, 0
/* 801D84F0 001D5450  40 80 00 14 */	bge lbl_801D8504
/* 801D84F4 001D5454  48 00 01 1C */	b lbl_801D8610
lbl_801D84F8:
/* 801D84F8 001D5458  2C 05 00 03 */	cmpwi r5, 3
/* 801D84FC 001D545C  40 80 01 14 */	bge lbl_801D8610
/* 801D8500 001D5460  48 00 01 00 */	b lbl_801D8600
lbl_801D8504:
/* 801D8504 001D5464  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 801D8508 001D5468  38 60 00 01 */	li r3, 1
/* 801D850C 001D546C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801D8510 001D5470  38 80 00 02 */	li r4, 2
/* 801D8514 001D5474  98 1F 05 B8 */	stb r0, 0x5b8(r31)
/* 801D8518 001D5478  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801D851C 001D547C  4B F6 24 BD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801D8520 001D5480  38 00 00 00 */	li r0, 0
/* 801D8524 001D5484  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801D8528 001D5488  C0 1F 03 D0 */	lfs f0, 0x3d0(r31)
/* 801D852C 001D548C  D0 1F 03 40 */	stfs f0, 0x340(r31)
/* 801D8530 001D5490  48 00 00 E0 */	b lbl_801D8610
lbl_801D8534:
/* 801D8534 001D5494  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 801D8538 001D5498  C0 C2 AC 70 */	lfs f6, lbl_805AC990@sda21(r2)
/* 801D853C 001D549C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801D8540 001D54A0  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801D8544 001D54A4  EC 20 30 2A */	fadds f1, f0, f6
/* 801D8548 001D54A8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801D854C 001D54AC  EC A2 30 2A */	fadds f5, f2, f6
/* 801D8550 001D54B0  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801D8554 001D54B4  C0 62 AC 80 */	lfs f3, lbl_805AC9A0@sda21(r2)
/* 801D8558 001D54B8  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 801D855C 001D54BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D8560 001D54C0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801D8564 001D54C4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801D8568 001D54C8  EC 42 18 2A */	fadds f2, f2, f3
/* 801D856C 001D54CC  EC 85 20 28 */	fsubs f4, f5, f4
/* 801D8570 001D54D0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801D8574 001D54D4  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D8578 001D54D8  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 801D857C 001D54DC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801D8580 001D54E0  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 801D8584 001D54E4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801D8588 001D54E8  41 82 00 88 */	beq lbl_801D8610
/* 801D858C 001D54EC  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 801D8590 001D54F0  38 61 00 08 */	addi r3, r1, 8
/* 801D8594 001D54F4  38 9F 00 34 */	addi r4, r31, 0x34
/* 801D8598 001D54F8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801D859C 001D54FC  EC 20 01 B2 */	fmuls f1, f0, f6
/* 801D85A0 001D5500  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801D85A4 001D5504  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801D85A8 001D5508  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801D85AC 001D550C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801D85B0 001D5510  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801D85B4 001D5514  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801D85B8 001D5518  48 13 A4 6D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801D85BC 001D551C  FC 20 F8 90 */	fmr f1, f31
/* 801D85C0 001D5520  7F E4 FB 78 */	mr r4, r31
/* 801D85C4 001D5524  38 61 00 14 */	addi r3, r1, 0x14
/* 801D85C8 001D5528  38 A1 00 08 */	addi r5, r1, 8
/* 801D85CC 001D552C  4B F4 2A 3D */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 801D85D0 001D5530  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801D85D4 001D5534  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801D85D8 001D5538  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801D85DC 001D553C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801D85E0 001D5540  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801D85E4 001D5544  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801D85E8 001D5548  4B E4 2F 4D */	bl Identity__10CAxisAngleFv
/* 801D85EC 001D554C  7C 65 1B 78 */	mr r5, r3
/* 801D85F0 001D5550  7F E3 FB 78 */	mr r3, r31
/* 801D85F4 001D5554  38 81 00 20 */	addi r4, r1, 0x20
/* 801D85F8 001D5558  4B F4 3C 0D */	bl ApplyImpulseOR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 801D85FC 001D555C  48 00 00 14 */	b lbl_801D8610
lbl_801D8600:
/* 801D8600 001D5560  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 801D8604 001D5564  38 60 00 00 */	li r3, 0
/* 801D8608 001D5568  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801D860C 001D556C  98 1F 05 B8 */	stb r0, 0x5b8(r31)
lbl_801D8610:
/* 801D8610 001D5570  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801D8614 001D5574  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801D8618 001D5578  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801D861C 001D557C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801D8620 001D5580  7C 08 03 A6 */	mtlr r0
/* 801D8624 001D5584  38 21 00 50 */	addi r1, r1, 0x50
/* 801D8628 001D5588  4E 80 00 20 */	blr

.global InActive__9CJellyZapFR13CStateManager9EStateMsgf
InActive__9CJellyZapFR13CStateManager9EStateMsgf:
/* 801D862C 001D558C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8630 001D5590  7C 08 02 A6 */	mflr r0
/* 801D8634 001D5594  2C 05 00 00 */	cmpwi r5, 0
/* 801D8638 001D5598  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D863C 001D559C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D8640 001D55A0  7C 9F 23 78 */	mr r31, r4
/* 801D8644 001D55A4  93 C1 00 08 */	stw r30, 8(r1)
/* 801D8648 001D55A8  7C 7E 1B 78 */	mr r30, r3
/* 801D864C 001D55AC  41 82 00 08 */	beq lbl_801D8654
/* 801D8650 001D55B0  48 00 00 34 */	b lbl_801D8684
lbl_801D8654:
/* 801D8654 001D55B4  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801D8658 001D55B8  38 60 00 00 */	li r3, 0
/* 801D865C 001D55BC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801D8660 001D55C0  38 80 00 01 */	li r4, 1
/* 801D8664 001D55C4  98 1E 04 00 */	stb r0, 0x400(r30)
/* 801D8668 001D55C8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801D866C 001D55CC  4B F6 23 6D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801D8670 001D55D0  7F C3 F3 78 */	mr r3, r30
/* 801D8674 001D55D4  7F E4 FB 78 */	mr r4, r31
/* 801D8678 001D55D8  4B FF F7 ED */	bl AddAttractor__9CJellyZapFR13CStateManager
/* 801D867C 001D55DC  38 00 00 00 */	li r0, 0
/* 801D8680 001D55E0  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_801D8684:
/* 801D8684 001D55E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8688 001D55E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D868C 001D55EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D8690 001D55F0  7C 08 03 A6 */	mtlr r0
/* 801D8694 001D55F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8698 001D55F8  4E 80 00 20 */	blr

.global ShouldAttack__9CJellyZapFR13CStateManagerf
ShouldAttack__9CJellyZapFR13CStateManagerf:
/* 801D869C 001D55FC  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 801D86A0 001D5600  C0 03 05 A8 */	lfs f0, 0x5a8(r3)
/* 801D86A4 001D5604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D86A8 001D5608  7C 00 00 26 */	mfcr r0
/* 801D86AC 001D560C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801D86B0 001D5610  4E 80 00 20 */	blr

.global ShouldSpecialAttack__9CJellyZapFR13CStateManagerf
ShouldSpecialAttack__9CJellyZapFR13CStateManagerf:
/* 801D86B4 001D5614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D86B8 001D5618  7C 08 02 A6 */	mflr r0
/* 801D86BC 001D561C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D86C0 001D5620  4B FF F3 65 */	bl ClosestToPlayer__9CJellyZapCFR13CStateManager
/* 801D86C4 001D5624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D86C8 001D5628  7C 08 03 A6 */	mtlr r0
/* 801D86CC 001D562C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D86D0 001D5630  4E 80 00 20 */	blr

.global InAttackPosition__9CJellyZapFR13CStateManagerf
InAttackPosition__9CJellyZapFR13CStateManagerf:
/* 801D86D4 001D5634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D86D8 001D5638  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801D86DC 001D563C  88 04 00 E6 */	lbz r0, 0xe6(r4)
/* 801D86E0 001D5640  54 00 DF 7F */	rlwinm. r0, r0, 0x1b, 0x1d, 0x1f
/* 801D86E4 001D5644  40 82 00 0C */	bne lbl_801D86F0
/* 801D86E8 001D5648  38 60 00 00 */	li r3, 0
/* 801D86EC 001D564C  48 00 00 68 */	b lbl_801D8754
lbl_801D86F0:
/* 801D86F0 001D5650  C0 E4 00 50 */	lfs f7, 0x50(r4)
/* 801D86F4 001D5654  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801D86F8 001D5658  C0 64 00 40 */	lfs f3, 0x40(r4)
/* 801D86FC 001D565C  EC C7 00 28 */	fsubs f6, f7, f0
/* 801D8700 001D5660  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801D8704 001D5664  C1 04 00 60 */	lfs f8, 0x60(r4)
/* 801D8708 001D5668  EC 83 00 28 */	fsubs f4, f3, f0
/* 801D870C 001D566C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801D8710 001D5670  EC 26 01 B2 */	fmuls f1, f6, f6
/* 801D8714 001D5674  EC A8 00 28 */	fsubs f5, f8, f0
/* 801D8718 001D5678  C0 03 05 88 */	lfs f0, 0x588(r3)
/* 801D871C 001D567C  EC 44 01 32 */	fmuls f2, f4, f4
/* 801D8720 001D5680  EC 00 00 32 */	fmuls f0, f0, f0
/* 801D8724 001D5684  D0 61 00 08 */	stfs f3, 8(r1)
/* 801D8728 001D5688  EC 65 01 72 */	fmuls f3, f5, f5
/* 801D872C 001D568C  EC 22 08 2A */	fadds f1, f2, f1
/* 801D8730 001D5690  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 801D8734 001D5694  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 801D8738 001D5698  EC 23 08 2A */	fadds f1, f3, f1
/* 801D873C 001D569C  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801D8740 001D56A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D8744 001D56A4  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 801D8748 001D56A8  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 801D874C 001D56AC  7C 00 00 26 */	mfcr r0
/* 801D8750 001D56B0  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801D8754:
/* 801D8754 001D56B4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D8758 001D56B8  4E 80 00 20 */	blr

.global InDetectionRange__9CJellyZapFR13CStateManagerf
InDetectionRange__9CJellyZapFR13CStateManagerf:
/* 801D875C 001D56BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8760 001D56C0  7C 08 02 A6 */	mflr r0
/* 801D8764 001D56C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8768 001D56C8  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 801D876C 001D56CC  88 05 00 E6 */	lbz r0, 0xe6(r5)
/* 801D8770 001D56D0  54 00 DF 7F */	rlwinm. r0, r0, 0x1b, 0x1d, 0x1f
/* 801D8774 001D56D4  40 82 00 0C */	bne lbl_801D8780
/* 801D8778 001D56D8  38 60 00 00 */	li r3, 0
/* 801D877C 001D56DC  48 00 00 08 */	b lbl_801D8784
lbl_801D8780:
/* 801D8780 001D56E0  48 01 DB ED */	bl InDetectionRange__10CPatternedFR13CStateManagerf
lbl_801D8784:
/* 801D8784 001D56E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8788 001D56E8  7C 08 03 A6 */	mtlr r0
/* 801D878C 001D56EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8790 001D56F0  4E 80 00 20 */	blr

.global DoUserAnimEvent__9CJellyZapFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__9CJellyZapFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 801D8794 001D56F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801D8798 001D56F8  7C 08 02 A6 */	mflr r0
/* 801D879C 001D56FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 801D87A0 001D5700  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801D87A4 001D5704  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801D87A8 001D5708  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801D87AC 001D570C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801D87B0 001D5710  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801D87B4 001D5714  93 81 00 40 */	stw r28, 0x40(r1)
/* 801D87B8 001D5718  88 0D A4 B0 */	lbz r0, lbl_805A9070@sda21(r13)
/* 801D87BC 001D571C  FF E0 08 90 */	fmr f31, f1
/* 801D87C0 001D5720  7C 7C 1B 78 */	mr r28, r3
/* 801D87C4 001D5724  7C 9D 23 78 */	mr r29, r4
/* 801D87C8 001D5728  7C 00 07 75 */	extsb. r0, r0
/* 801D87CC 001D572C  7C BE 2B 78 */	mr r30, r5
/* 801D87D0 001D5730  7C DF 33 78 */	mr r31, r6
/* 801D87D4 001D5734  40 82 00 40 */	bne lbl_801D8814
/* 801D87D8 001D5738  80 AD 91 D0 */	lwz r5, lbl_805A7D90@sda21(r13)
/* 801D87DC 001D573C  38 60 00 00 */	li r3, 0
/* 801D87E0 001D5740  38 80 00 01 */	li r4, 1
/* 801D87E4 001D5744  48 1B 17 11 */	bl __shl2i
/* 801D87E8 001D5748  3C A0 80 47 */	lis r5, lbl_8046C920@ha
/* 801D87EC 001D574C  38 C0 00 01 */	li r6, 1
/* 801D87F0 001D5750  38 A5 C9 20 */	addi r5, r5, lbl_8046C920@l
/* 801D87F4 001D5754  38 00 00 00 */	li r0, 0
/* 801D87F8 001D5758  90 C1 00 30 */	stw r6, 0x30(r1)
/* 801D87FC 001D575C  90 85 00 04 */	stw r4, 4(r5)
/* 801D8800 001D5760  90 65 00 00 */	stw r3, 0(r5)
/* 801D8804 001D5764  90 05 00 0C */	stw r0, 0xc(r5)
/* 801D8808 001D5768  90 05 00 08 */	stw r0, 8(r5)
/* 801D880C 001D576C  90 C5 00 10 */	stw r6, 0x10(r5)
/* 801D8810 001D5770  98 CD A4 B0 */	stb r6, lbl_805A9070@sda21(r13)
lbl_801D8814:
/* 801D8814 001D5774  2C 1F 00 08 */	cmpwi r31, 8
/* 801D8818 001D5778  38 00 00 00 */	li r0, 0
/* 801D881C 001D577C  41 82 00 08 */	beq lbl_801D8824
/* 801D8820 001D5780  48 00 00 4C */	b lbl_801D886C
lbl_801D8824:
/* 801D8824 001D5784  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 801D8828 001D5788  3C 60 80 47 */	lis r3, lbl_8046C920@ha
/* 801D882C 001D578C  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 801D8830 001D5790  39 03 C9 20 */	addi r8, r3, lbl_8046C920@l
/* 801D8834 001D5794  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801D8838 001D5798  7F A3 EB 78 */	mr r3, r29
/* 801D883C 001D579C  7F 85 E3 78 */	mr r5, r28
/* 801D8840 001D57A0  38 81 00 0C */	addi r4, r1, 0xc
/* 801D8844 001D57A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801D8848 001D57A8  38 C1 00 10 */	addi r6, r1, 0x10
/* 801D884C 001D57AC  38 FC 05 6C */	addi r7, r28, 0x56c
/* 801D8850 001D57B0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801D8854 001D57B4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801D8858 001D57B8  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801D885C 001D57BC  B0 01 00 08 */	sth r0, 8(r1)
/* 801D8860 001D57C0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801D8864 001D57C4  4B E7 04 49 */	bl ApplyDamageToWorld__13CStateManagerF9TUniqueIdRC6CActorRC9CVector3fRC11CDamageInfoRC15CMaterialFilter
/* 801D8868 001D57C8  38 00 00 01 */	li r0, 1
lbl_801D886C:
/* 801D886C 001D57CC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801D8870 001D57D0  40 82 00 1C */	bne lbl_801D888C
/* 801D8874 001D57D4  FC 20 F8 90 */	fmr f1, f31
/* 801D8878 001D57D8  7F 83 E3 78 */	mr r3, r28
/* 801D887C 001D57DC  7F A4 EB 78 */	mr r4, r29
/* 801D8880 001D57E0  7F C5 F3 78 */	mr r5, r30
/* 801D8884 001D57E4  7F E6 FB 78 */	mr r6, r31
/* 801D8888 001D57E8  4B EA 06 29 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_801D888C:
/* 801D888C 001D57EC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801D8890 001D57F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801D8894 001D57F4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801D8898 001D57F8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801D889C 001D57FC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801D88A0 001D5800  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801D88A4 001D5804  83 81 00 40 */	lwz r28, 0x40(r1)
/* 801D88A8 001D5808  7C 08 03 A6 */	mtlr r0
/* 801D88AC 001D580C  38 21 00 60 */	addi r1, r1, 0x60
/* 801D88B0 001D5810  4E 80 00 20 */	blr

.global AcceptScriptMsg__9CJellyZapF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__9CJellyZapF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801D88B4 001D5814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D88B8 001D5818  7C 08 02 A6 */	mflr r0
/* 801D88BC 001D581C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D88C0 001D5820  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D88C4 001D5824  7C DF 33 78 */	mr r31, r6
/* 801D88C8 001D5828  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D88CC 001D582C  7C 9E 23 78 */	mr r30, r4
/* 801D88D0 001D5830  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D88D4 001D5834  7C 7D 1B 78 */	mr r29, r3
/* 801D88D8 001D5838  A0 05 00 00 */	lhz r0, 0(r5)
/* 801D88DC 001D583C  38 A1 00 08 */	addi r5, r1, 8
/* 801D88E0 001D5840  B0 01 00 08 */	sth r0, 8(r1)
/* 801D88E4 001D5844  4B EA 42 95 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801D88E8 001D5848  2C 1E 00 04 */	cmpwi r30, 4
/* 801D88EC 001D584C  41 82 00 4C */	beq lbl_801D8938
/* 801D88F0 001D5850  40 80 00 10 */	bge lbl_801D8900
/* 801D88F4 001D5854  2C 1E 00 01 */	cmpwi r30, 1
/* 801D88F8 001D5858  41 82 00 20 */	beq lbl_801D8918
/* 801D88FC 001D585C  48 00 00 48 */	b lbl_801D8944
lbl_801D8900:
/* 801D8900 001D5860  2C 1E 00 22 */	cmpwi r30, 0x22
/* 801D8904 001D5864  41 82 00 34 */	beq lbl_801D8938
/* 801D8908 001D5868  40 80 00 3C */	bge lbl_801D8944
/* 801D890C 001D586C  2C 1E 00 21 */	cmpwi r30, 0x21
/* 801D8910 001D5870  40 80 00 18 */	bge lbl_801D8928
/* 801D8914 001D5874  48 00 00 30 */	b lbl_801D8944
lbl_801D8918:
/* 801D8918 001D5878  7F A3 EB 78 */	mr r3, r29
/* 801D891C 001D587C  7F E4 FB 78 */	mr r4, r31
/* 801D8920 001D5880  4B FF F5 45 */	bl AddAttractor__9CJellyZapFR13CStateManager
/* 801D8924 001D5884  48 00 00 20 */	b lbl_801D8944
lbl_801D8928:
/* 801D8928 001D5888  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801D892C 001D588C  7F E4 FB 78 */	mr r4, r31
/* 801D8930 001D5890  4B F6 23 C1 */	bl Activate__15CBodyControllerFR13CStateManager
/* 801D8934 001D5894  48 00 00 10 */	b lbl_801D8944
lbl_801D8938:
/* 801D8938 001D5898  7F A3 EB 78 */	mr r3, r29
/* 801D893C 001D589C  7F E4 FB 78 */	mr r4, r31
/* 801D8940 001D58A0  4B FF F5 05 */	bl RemoveAllAttractors__9CJellyZapFR13CStateManager
lbl_801D8944:
/* 801D8944 001D58A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D8948 001D58A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D894C 001D58AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D8950 001D58B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D8954 001D58B4  7C 08 03 A6 */	mtlr r0
/* 801D8958 001D58B8  38 21 00 20 */	addi r1, r1, 0x20
/* 801D895C 001D58BC  4E 80 00 20 */	blr

.global Think__9CJellyZapFfR13CStateManager
Think__9CJellyZapFfR13CStateManager:
/* 801D8960 001D58C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D8964 001D58C4  7C 08 02 A6 */	mflr r0
/* 801D8968 001D58C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D896C 001D58CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801D8970 001D58D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801D8974 001D58D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801D8978 001D58D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801D897C 001D58DC  FF E0 08 90 */	fmr f31, f1
/* 801D8980 001D58E0  7C 7E 1B 78 */	mr r30, r3
/* 801D8984 001D58E4  7C 9F 23 78 */	mr r31, r4
/* 801D8988 001D58E8  4B EA 11 91 */	bl Think__10CPatternedFfR13CStateManager
/* 801D898C 001D58EC  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 801D8990 001D58F0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801D8994 001D58F4  41 82 00 CC */	beq lbl_801D8A60
/* 801D8998 001D58F8  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 801D899C 001D58FC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801D89A0 001D5900  41 82 00 54 */	beq lbl_801D89F4
/* 801D89A4 001D5904  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801D89A8 001D5908  FC 20 F8 90 */	fmr f1, f31
/* 801D89AC 001D590C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801D89B0 001D5910  38 81 00 18 */	addi r4, r1, 0x18
/* 801D89B4 001D5914  C0 C3 00 60 */	lfs f6, 0x60(r3)
/* 801D89B8 001D5918  C0 A3 00 50 */	lfs f5, 0x50(r3)
/* 801D89BC 001D591C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801D89C0 001D5920  EC 46 00 28 */	fsubs f2, f6, f0
/* 801D89C4 001D5924  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801D89C8 001D5928  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 801D89CC 001D592C  EC 65 18 28 */	fsubs f3, f5, f3
/* 801D89D0 001D5930  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801D89D4 001D5934  EC 00 20 28 */	fsubs f0, f0, f4
/* 801D89D8 001D5938  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 801D89DC 001D593C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801D89E0 001D5940  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801D89E4 001D5944  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801D89E8 001D5948  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801D89EC 001D594C  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 801D89F0 001D5950  4B F6 1C B5 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
lbl_801D89F4:
/* 801D89F4 001D5954  C0 1E 05 0C */	lfs f0, 0x50c(r30)
/* 801D89F8 001D5958  D0 01 00 08 */	stfs f0, 8(r1)
/* 801D89FC 001D595C  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 801D8A00 001D5960  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801D8A04 001D5964  41 82 00 30 */	beq lbl_801D8A34
/* 801D8A08 001D5968  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801D8A0C 001D596C  4B F6 16 C1 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 801D8A10 001D5970  C0 02 AC 70 */	lfs f0, lbl_805AC990@sda21(r2)
/* 801D8A14 001D5974  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D8A18 001D5978  40 82 00 1C */	bne lbl_801D8A34
/* 801D8A1C 001D597C  C0 02 AC 90 */	lfs f0, lbl_805AC9B0@sda21(r2)
/* 801D8A20 001D5980  C0 21 00 08 */	lfs f1, 8(r1)
/* 801D8A24 001D5984  EC 1F 00 24 */	fdivs f0, f31, f0
/* 801D8A28 001D5988  EC 01 00 2A */	fadds f0, f1, f0
/* 801D8A2C 001D598C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801D8A30 001D5990  48 00 00 18 */	b lbl_801D8A48
lbl_801D8A34:
/* 801D8A34 001D5994  C0 02 AC 94 */	lfs f0, lbl_805AC9B4@sda21(r2)
/* 801D8A38 001D5998  C0 21 00 08 */	lfs f1, 8(r1)
/* 801D8A3C 001D599C  EC 1F 00 24 */	fdivs f0, f31, f0
/* 801D8A40 001D59A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D8A44 001D59A4  D0 01 00 08 */	stfs f0, 8(r1)
lbl_801D8A48:
/* 801D8A48 001D59A8  38 81 00 08 */	addi r4, r1, 8
/* 801D8A4C 001D59AC  38 6D 91 C8 */	addi r3, r13, lbl_805A7D88@sda21
/* 801D8A50 001D59B0  38 AD 91 CC */	addi r5, r13, lbl_805A7D8C@sda21
/* 801D8A54 001D59B4  4B E3 38 61 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801D8A58 001D59B8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801D8A5C 001D59BC  D0 1E 05 0C */	stfs f0, 0x50c(r30)
lbl_801D8A60:
/* 801D8A60 001D59C0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801D8A64 001D59C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D8A68 001D59C8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801D8A6C 001D59CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801D8A70 001D59D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801D8A74 001D59D4  7C 08 03 A6 */	mtlr r0
/* 801D8A78 001D59D8  38 21 00 40 */	addi r1, r1, 0x40
/* 801D8A7C 001D59DC  4E 80 00 20 */	blr

.global Accept__9CJellyZapFR8IVisitor
Accept__9CJellyZapFR8IVisitor:
/* 801D8A80 001D59E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8A84 001D59E4  7C 08 02 A6 */	mflr r0
/* 801D8A88 001D59E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8A8C 001D59EC  7C 60 1B 78 */	mr r0, r3
/* 801D8A90 001D59F0  7C 83 23 78 */	mr r3, r4
/* 801D8A94 001D59F4  81 84 00 00 */	lwz r12, 0(r4)
/* 801D8A98 001D59F8  7C 04 03 78 */	mr r4, r0
/* 801D8A9C 001D59FC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801D8AA0 001D5A00  7D 89 03 A6 */	mtctr r12
/* 801D8AA4 001D5A04  4E 80 04 21 */	bctrl
/* 801D8AA8 001D5A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8AAC 001D5A0C  7C 08 03 A6 */	mtlr r0
/* 801D8AB0 001D5A10  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8AB4 001D5A14  4E 80 00 20 */	blr

.global "__ct__9CJellyZapF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC11CDamageInfofffffffffffRC14CPatternedInfoRC16CActorParameters"
"__ct__9CJellyZapF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC11CDamageInfofffffffffffRC14CPatternedInfoRC16CActorParameters":
/* 801D8AB8 001D5A18  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801D8ABC 001D5A1C  7C 08 02 A6 */	mflr r0
/* 801D8AC0 001D5A20  90 01 01 04 */	stw r0, 0x104(r1)
/* 801D8AC4 001D5A24  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 801D8AC8 001D5A28  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 801D8ACC 001D5A2C  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 801D8AD0 001D5A30  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, qr0
/* 801D8AD4 001D5A34  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 801D8AD8 001D5A38  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, qr0
/* 801D8ADC 001D5A3C  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 801D8AE0 001D5A40  F3 81 00 C8 */	psq_st f28, 200(r1), 0, qr0
/* 801D8AE4 001D5A44  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 801D8AE8 001D5A48  F3 61 00 B8 */	psq_st f27, 184(r1), 0, qr0
/* 801D8AEC 001D5A4C  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 801D8AF0 001D5A50  F3 41 00 A8 */	psq_st f26, 168(r1), 0, qr0
/* 801D8AF4 001D5A54  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 801D8AF8 001D5A58  F3 21 00 98 */	psq_st f25, 152(r1), 0, qr0
/* 801D8AFC 001D5A5C  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 801D8B00 001D5A60  F3 01 00 88 */	psq_st f24, 136(r1), 0, qr0
/* 801D8B04 001D5A64  DA E1 00 70 */	stfd f23, 0x70(r1)
/* 801D8B08 001D5A68  F2 E1 00 78 */	psq_st f23, 120(r1), 0, qr0
/* 801D8B0C 001D5A6C  DA C1 00 60 */	stfd f22, 0x60(r1)
/* 801D8B10 001D5A70  F2 C1 00 68 */	psq_st f22, 104(r1), 0, qr0
/* 801D8B14 001D5A74  DA A1 00 50 */	stfd f21, 0x50(r1)
/* 801D8B18 001D5A78  F2 A1 00 58 */	psq_st f21, 88(r1), 0, qr0
/* 801D8B1C 001D5A7C  DA 81 00 40 */	stfd f20, 0x40(r1)
/* 801D8B20 001D5A80  F2 81 00 48 */	psq_st f20, 72(r1), 0, qr0
/* 801D8B24 001D5A84  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801D8B28 001D5A88  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801D8B2C 001D5A8C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801D8B30 001D5A90  A0 04 00 00 */	lhz r0, 0(r4)
/* 801D8B34 001D5A94  7C CC 33 78 */	mr r12, r6
/* 801D8B38 001D5A98  7D 0B 43 78 */	mr r11, r8
/* 801D8B3C 001D5A9C  7D 3E 4B 78 */	mr r30, r9
/* 801D8B40 001D5AA0  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801D8B44 001D5AA4  7D 5F 53 78 */	mr r31, r10
/* 801D8B48 001D5AA8  80 81 01 18 */	lwz r4, 0x118(r1)
/* 801D8B4C 001D5AAC  7C A6 2B 78 */	mr r6, r5
/* 801D8B50 001D5AB0  7C E9 3B 78 */	mr r9, r7
/* 801D8B54 001D5AB4  38 00 00 01 */	li r0, 1
/* 801D8B58 001D5AB8  90 81 00 08 */	stw r4, 8(r1)
/* 801D8B5C 001D5ABC  FE 80 08 90 */	fmr f20, f1
/* 801D8B60 001D5AC0  80 81 01 1C */	lwz r4, 0x11c(r1)
/* 801D8B64 001D5AC4  FE A0 10 90 */	fmr f21, f2
/* 801D8B68 001D5AC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D8B6C 001D5ACC  FE C0 18 90 */	fmr f22, f3
/* 801D8B70 001D5AD0  FE E0 20 90 */	fmr f23, f4
/* 801D8B74 001D5AD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801D8B78 001D5AD8  FF 00 28 90 */	fmr f24, f5
/* 801D8B7C 001D5ADC  FF 20 30 90 */	fmr f25, f6
/* 801D8B80 001D5AE0  C3 81 01 08 */	lfs f28, 0x108(r1)
/* 801D8B84 001D5AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8B88 001D5AE8  FF 40 38 90 */	fmr f26, f7
/* 801D8B8C 001D5AEC  C3 A1 01 0C */	lfs f29, 0x10c(r1)
/* 801D8B90 001D5AF0  90 81 00 18 */	stw r4, 0x18(r1)
/* 801D8B94 001D5AF4  FF 60 40 90 */	fmr f27, f8
/* 801D8B98 001D5AF8  C3 C1 01 10 */	lfs f30, 0x110(r1)
/* 801D8B9C 001D5AFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D8BA0 001D5B00  C3 E1 01 14 */	lfs f31, 0x114(r1)
/* 801D8BA4 001D5B04  7C 7D 1B 78 */	mr r29, r3
/* 801D8BA8 001D5B08  7D 88 63 78 */	mr r8, r12
/* 801D8BAC 001D5B0C  7D 6A 5B 78 */	mr r10, r11
/* 801D8BB0 001D5B10  38 A1 00 20 */	addi r5, r1, 0x20
/* 801D8BB4 001D5B14  38 80 00 10 */	li r4, 0x10
/* 801D8BB8 001D5B18  38 E0 00 00 */	li r7, 0
/* 801D8BBC 001D5B1C  4B EA 48 95 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 801D8BC0 001D5B20  3C 60 80 3E */	lis r3, lbl_803E5954@ha
/* 801D8BC4 001D5B24  38 C0 00 00 */	li r6, 0
/* 801D8BC8 001D5B28  38 03 59 54 */	addi r0, r3, lbl_803E5954@l
/* 801D8BCC 001D5B2C  38 80 00 01 */	li r4, 1
/* 801D8BD0 001D5B30  90 1D 00 00 */	stw r0, 0(r29)
/* 801D8BD4 001D5B34  7F A3 EB 78 */	mr r3, r29
/* 801D8BD8 001D5B38  90 DD 05 68 */	stw r6, 0x568(r29)
/* 801D8BDC 001D5B3C  80 1E 00 00 */	lwz r0, 0(r30)
/* 801D8BE0 001D5B40  90 1D 05 6C */	stw r0, 0x56c(r29)
/* 801D8BE4 001D5B44  88 1E 00 04 */	lbz r0, 4(r30)
/* 801D8BE8 001D5B48  98 1D 05 70 */	stb r0, 0x570(r29)
/* 801D8BEC 001D5B4C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 801D8BF0 001D5B50  D0 1D 05 74 */	stfs f0, 0x574(r29)
/* 801D8BF4 001D5B54  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 801D8BF8 001D5B58  D0 1D 05 78 */	stfs f0, 0x578(r29)
/* 801D8BFC 001D5B5C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 801D8C00 001D5B60  D0 1D 05 7C */	stfs f0, 0x57c(r29)
/* 801D8C04 001D5B64  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 801D8C08 001D5B68  D0 1D 05 80 */	stfs f0, 0x580(r29)
/* 801D8C0C 001D5B6C  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 801D8C10 001D5B70  98 1D 05 84 */	stb r0, 0x584(r29)
/* 801D8C14 001D5B74  D2 9D 05 88 */	stfs f20, 0x588(r29)
/* 801D8C18 001D5B78  D2 BD 05 8C */	stfs f21, 0x58c(r29)
/* 801D8C1C 001D5B7C  D2 FD 05 90 */	stfs f23, 0x590(r29)
/* 801D8C20 001D5B80  D2 DD 05 94 */	stfs f22, 0x594(r29)
/* 801D8C24 001D5B84  D3 7D 05 98 */	stfs f27, 0x598(r29)
/* 801D8C28 001D5B88  D3 9D 05 9C */	stfs f28, 0x59c(r29)
/* 801D8C2C 001D5B8C  D3 BD 05 A0 */	stfs f29, 0x5a0(r29)
/* 801D8C30 001D5B90  D3 DD 05 A4 */	stfs f30, 0x5a4(r29)
/* 801D8C34 001D5B94  D3 1D 05 A8 */	stfs f24, 0x5a8(r29)
/* 801D8C38 001D5B98  D3 3D 05 AC */	stfs f25, 0x5ac(r29)
/* 801D8C3C 001D5B9C  D3 5D 05 B0 */	stfs f26, 0x5b0(r29)
/* 801D8C40 001D5BA0  D3 FD 05 B4 */	stfs f31, 0x5b4(r29)
/* 801D8C44 001D5BA4  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 801D8C48 001D5BA8  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 801D8C4C 001D5BAC  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 801D8C50 001D5BB0  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 801D8C54 001D5BB4  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 801D8C58 001D5BB8  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 801D8C5C 001D5BBC  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 801D8C60 001D5BC0  53 E0 2E B4 */	rlwimi r0, r31, 5, 0x1a, 0x1a
/* 801D8C64 001D5BC4  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 801D8C68 001D5BC8  4B E9 EB ED */	bl UpdateThermalFrozenState__10CPatternedFb
/* 801D8C6C 001D5BCC  C0 02 AC 70 */	lfs f0, lbl_805AC990@sda21(r2)
/* 801D8C70 001D5BD0  7F A3 EB 78 */	mr r3, r29
/* 801D8C74 001D5BD4  D0 1D 05 0C */	stfs f0, 0x50c(r29)
/* 801D8C78 001D5BD8  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 801D8C7C 001D5BDC  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 801D8C80 001D5BE0  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, qr0
/* 801D8C84 001D5BE4  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 801D8C88 001D5BE8  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, qr0
/* 801D8C8C 001D5BEC  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 801D8C90 001D5BF0  E3 81 00 C8 */	psq_l f28, 200(r1), 0, qr0
/* 801D8C94 001D5BF4  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 801D8C98 001D5BF8  E3 61 00 B8 */	psq_l f27, 184(r1), 0, qr0
/* 801D8C9C 001D5BFC  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 801D8CA0 001D5C00  E3 41 00 A8 */	psq_l f26, 168(r1), 0, qr0
/* 801D8CA4 001D5C04  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 801D8CA8 001D5C08  E3 21 00 98 */	psq_l f25, 152(r1), 0, qr0
/* 801D8CAC 001D5C0C  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 801D8CB0 001D5C10  E3 01 00 88 */	psq_l f24, 136(r1), 0, qr0
/* 801D8CB4 001D5C14  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 801D8CB8 001D5C18  E2 E1 00 78 */	psq_l f23, 120(r1), 0, qr0
/* 801D8CBC 001D5C1C  CA E1 00 70 */	lfd f23, 0x70(r1)
/* 801D8CC0 001D5C20  E2 C1 00 68 */	psq_l f22, 104(r1), 0, qr0
/* 801D8CC4 001D5C24  CA C1 00 60 */	lfd f22, 0x60(r1)
/* 801D8CC8 001D5C28  E2 A1 00 58 */	psq_l f21, 88(r1), 0, qr0
/* 801D8CCC 001D5C2C  CA A1 00 50 */	lfd f21, 0x50(r1)
/* 801D8CD0 001D5C30  E2 81 00 48 */	psq_l f20, 72(r1), 0, qr0
/* 801D8CD4 001D5C34  CA 81 00 40 */	lfd f20, 0x40(r1)
/* 801D8CD8 001D5C38  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801D8CDC 001D5C3C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801D8CE0 001D5C40  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801D8CE4 001D5C44  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801D8CE8 001D5C48  7C 08 03 A6 */	mtlr r0
/* 801D8CEC 001D5C4C  38 21 01 00 */	addi r1, r1, 0x100
/* 801D8CF0 001D5C50  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AC990
lbl_805AC990:
	# ROM: 0x3F9230
	.4byte 0

.global lbl_805AC994
lbl_805AC994:
	# ROM: 0x3F9234
	.4byte 0x3727C5AC

.global lbl_805AC998
lbl_805AC998:
	# ROM: 0x3F9238
	.float 2.0

.global lbl_805AC99C
lbl_805AC99C:
	# ROM: 0x3F923C
	.4byte 0x40400000

.global lbl_805AC9A0
lbl_805AC9A0:
	# ROM: 0x3F9240
	.float 1.0

.global lbl_805AC9A4
lbl_805AC9A4:
	# ROM: 0x3F9244
	.float 0.5

.global lbl_805AC9A8
lbl_805AC9A8:
	# ROM: 0x3F9248
	.float 0.1

.global lbl_805AC9AC
lbl_805AC9AC:
	# ROM: 0x3F924C
	.float 5.0

.global lbl_805AC9B0
lbl_805AC9B0:
	# ROM: 0x3F9250
	.float 0.3

.global lbl_805AC9B4
lbl_805AC9B4:
	# ROM: 0x3F9254
	.float 0.75

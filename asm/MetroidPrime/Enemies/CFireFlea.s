.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CFireFlea_cpp

.section .data
.balign 8

.global lbl_803E1C88
lbl_803E1C88:
	# ROM: 0x3DEC88
	.4byte 0
	.4byte 0
	.4byte __dt__9CFireFleaFv
	.4byte Accept__9CFireFleaFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__9CFireFleaFfR13CStateManager
	.4byte AcceptScriptMsg__9CFireFleaF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
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
	.4byte DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__9CFireFleaFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__9CFireFleaFR13CStateManager9EStateMsgf
	.4byte PathFind__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__9CFireFleaFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__3CAiFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__3CAiFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
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
	.4byte Flee__9CFireFleaFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
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
	.4byte InAttackPosition__3CAiFR13CStateManagerf
	.4byte Leash__10CPatternedFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__10CPatternedFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__10CPatternedFR13CStateManagerf
	.4byte SpotPlayer__10CPatternedFR13CStateManagerf
	.4byte PlayerSpot__10CPatternedFR13CStateManagerf
	.4byte PatternOver__10CPatternedFR13CStateManagerf
	.4byte PatternShagged__10CPatternedFR13CStateManagerf
	.4byte HasAttackPattern__10CPatternedFR13CStateManagerf
	.4byte HasPatrolPath__10CPatternedFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__9CFireFleaFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__10CPatternedFR13CStateManagerf
	.4byte ShouldAttack__3CAiFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__9CFireFleaFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__10CPatternedFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__10CPatternedFR13CStateManagerf
	.4byte HearShot__9CFireFleaFR13CStateManagerf
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
	.4byte ShouldSpecialAttack__3CAiFR13CStateManagerf
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
	.4byte GetSearchPath__9CFireFleaFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E1F54
lbl_803E1F54:
	# ROM: 0x3DEF54
	.4byte 0
	.4byte 0
	.4byte __dt__Q29CFireFlea18CDeathCameraEffectFv
	.4byte Accept__Q29CFireFlea18CDeathCameraEffectFR8IVisitor
	.4byte PreThink__Q29CFireFlea18CDeathCameraEffectFfR13CStateManager
	.4byte Think__Q29CFireFlea18CDeathCameraEffectFfR13CStateManager
	.4byte AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFUc
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7780
lbl_805A7780:
	# ROM: 0x3F5120
	.4byte 0x00000021

.global lbl_805A7784
lbl_805A7784:
	# ROM: 0x3F5124
	.4byte 0x00000023

.global lbl_805A7788
lbl_805A7788:
	# ROM: 0x3F5128
	.4byte 0x00000013

.global lbl_805A778C
lbl_805A778C:
	# ROM: 0x3F512C
	.4byte 0x00000013

.global lbl_805A7790
lbl_805A7790:
	# ROM: 0x3F5130
	.4byte 0x00000013

.global lbl_805A7794
lbl_805A7794:
	# ROM: 0x3F5134
	.4byte 0x00000013

.global lbl_805A7798
lbl_805A7798:
	# ROM: 0x3F5138
	.4byte 0x00000013
	.4byte 0

.section .sbss
.balign 8

# CFireFlea
.global lbl_805A8F90
lbl_805A8F90:
	.skip 0x4
.global lbl_805A8F94
lbl_805A8F94:
	.skip 0x4
.global lbl_805A8F98
lbl_805A8F98:
	.skip 0x4
.global lbl_805A8F9C
lbl_805A8F9C:
	.skip 0x4

.section .text, "ax"

.global __dt__9CFireFleaFv
__dt__9CFireFleaFv:
/* 80142934 0013F894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80142938 0013F898  7C 08 02 A6 */	mflr r0
/* 8014293C 0013F89C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80142940 0013F8A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80142944 0013F8A4  7C 9F 23 78 */	mr r31, r4
/* 80142948 0013F8A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8014294C 0013F8AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80142950 0013F8B0  41 82 00 EC */	beq lbl_80142A3C
/* 80142954 0013F8B4  3C 60 80 3E */	lis r3, lbl_803E1C88@ha
/* 80142958 0013F8B8  34 1E 0D 8C */	addic. r0, r30, 0xd8c
/* 8014295C 0013F8BC  38 03 1C 88 */	addi r0, r3, lbl_803E1C88@l
/* 80142960 0013F8C0  90 1E 00 00 */	stw r0, 0(r30)
/* 80142964 0013F8C4  41 82 00 60 */	beq lbl_801429C4
/* 80142968 0013F8C8  34 1E 0D 90 */	addic. r0, r30, 0xd90
/* 8014296C 0013F8CC  41 82 00 58 */	beq lbl_801429C4
/* 80142970 0013F8D0  80 BE 0D 90 */	lwz r5, 0xd90(r30)
/* 80142974 0013F8D4  38 60 00 00 */	li r3, 0
/* 80142978 0013F8D8  2C 05 00 00 */	cmpwi r5, 0
/* 8014297C 0013F8DC  40 81 00 40 */	ble lbl_801429BC
/* 80142980 0013F8E0  2C 05 00 08 */	cmpwi r5, 8
/* 80142984 0013F8E4  38 85 FF F8 */	addi r4, r5, -8
/* 80142988 0013F8E8  40 81 00 20 */	ble lbl_801429A8
/* 8014298C 0013F8EC  38 04 00 07 */	addi r0, r4, 7
/* 80142990 0013F8F0  54 00 E8 FE */	srwi r0, r0, 3
/* 80142994 0013F8F4  7C 09 03 A6 */	mtctr r0
/* 80142998 0013F8F8  2C 04 00 00 */	cmpwi r4, 0
/* 8014299C 0013F8FC  40 81 00 0C */	ble lbl_801429A8
lbl_801429A0:
/* 801429A0 0013F900  38 63 00 08 */	addi r3, r3, 8
/* 801429A4 0013F904  42 00 FF FC */	bdnz lbl_801429A0
lbl_801429A8:
/* 801429A8 0013F908  7C 03 28 50 */	subf r0, r3, r5
/* 801429AC 0013F90C  7C 09 03 A6 */	mtctr r0
/* 801429B0 0013F910  7C 03 28 00 */	cmpw r3, r5
/* 801429B4 0013F914  40 80 00 08 */	bge lbl_801429BC
lbl_801429B8:
/* 801429B8 0013F918  42 00 00 00 */	bdnz lbl_801429B8
lbl_801429BC:
/* 801429BC 0013F91C  38 00 00 00 */	li r0, 0
/* 801429C0 0013F920  90 1E 0D 90 */	stw r0, 0xd90(r30)
lbl_801429C4:
/* 801429C4 0013F924  34 1E 05 70 */	addic. r0, r30, 0x570
/* 801429C8 0013F928  41 82 00 58 */	beq lbl_80142A20
/* 801429CC 0013F92C  80 BE 05 70 */	lwz r5, 0x570(r30)
/* 801429D0 0013F930  38 60 00 00 */	li r3, 0
/* 801429D4 0013F934  2C 05 00 00 */	cmpwi r5, 0
/* 801429D8 0013F938  40 81 00 40 */	ble lbl_80142A18
/* 801429DC 0013F93C  2C 05 00 08 */	cmpwi r5, 8
/* 801429E0 0013F940  38 85 FF F8 */	addi r4, r5, -8
/* 801429E4 0013F944  40 81 00 20 */	ble lbl_80142A04
/* 801429E8 0013F948  38 04 00 07 */	addi r0, r4, 7
/* 801429EC 0013F94C  54 00 E8 FE */	srwi r0, r0, 3
/* 801429F0 0013F950  7C 09 03 A6 */	mtctr r0
/* 801429F4 0013F954  2C 04 00 00 */	cmpwi r4, 0
/* 801429F8 0013F958  40 81 00 0C */	ble lbl_80142A04
lbl_801429FC:
/* 801429FC 0013F95C  38 63 00 08 */	addi r3, r3, 8
/* 80142A00 0013F960  42 00 FF FC */	bdnz lbl_801429FC
lbl_80142A04:
/* 80142A04 0013F964  7C 03 28 50 */	subf r0, r3, r5
/* 80142A08 0013F968  7C 09 03 A6 */	mtctr r0
/* 80142A0C 0013F96C  7C 03 28 00 */	cmpw r3, r5
/* 80142A10 0013F970  40 80 00 08 */	bge lbl_80142A18
lbl_80142A14:
/* 80142A14 0013F974  42 00 00 00 */	bdnz lbl_80142A14
lbl_80142A18:
/* 80142A18 0013F978  38 00 00 00 */	li r0, 0
/* 80142A1C 0013F97C  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_80142A20:
/* 80142A20 0013F980  7F C3 F3 78 */	mr r3, r30
/* 80142A24 0013F984  38 80 00 00 */	li r4, 0
/* 80142A28 0013F988  4B F3 4B 49 */	bl __dt__10CPatternedFv
/* 80142A2C 0013F98C  7F E0 07 35 */	extsh. r0, r31
/* 80142A30 0013F990  40 81 00 0C */	ble lbl_80142A3C
/* 80142A34 0013F994  7F C3 F3 78 */	mr r3, r30
/* 80142A38 0013F998  48 1D 2E F9 */	bl Free__7CMemoryFPCv
lbl_80142A3C:
/* 80142A3C 0013F99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80142A40 0013F9A0  7F C3 F3 78 */	mr r3, r30
/* 80142A44 0013F9A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80142A48 0013F9A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80142A4C 0013F9AC  7C 08 03 A6 */	mtlr r0
/* 80142A50 0013F9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80142A54 0013F9B4  4E 80 00 20 */	blr

.global Delay__9CFireFleaFR13CStateManagerf
Delay__9CFireFleaFR13CStateManagerf:
/* 80142A58 0013F9B8  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 80142A5C 0013F9BC  C0 02 9B C0 */	lfs f0, lbl_805AB8E0@sda21(r2)
/* 80142A60 0013F9C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80142A64 0013F9C4  7C 00 00 26 */	mfcr r0
/* 80142A68 0013F9C8  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80142A6C 0013F9CC  4E 80 00 20 */	blr

.global GetSearchPath__9CFireFleaFv
GetSearchPath__9CFireFleaFv:
/* 80142A70 0013F9D0  38 63 0D 8C */	addi r3, r3, 0xd8c
/* 80142A74 0013F9D4  4E 80 00 20 */	blr

.global InPosition__9CFireFleaFR13CStateManagerf
InPosition__9CFireFleaFR13CStateManagerf:
/* 80142A78 0013F9D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80142A7C 0013F9DC  A0 83 02 DC */	lhz r4, 0x2dc(r3)
/* 80142A80 0013F9E0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80142A84 0013F9E4  7C 04 00 40 */	cmplw r4, r0
/* 80142A88 0013F9E8  41 82 00 5C */	beq lbl_80142AE4
/* 80142A8C 0013F9EC  C0 43 0D 84 */	lfs f2, 0xd84(r3)
/* 80142A90 0013F9F0  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80142A94 0013F9F4  C0 23 0D 80 */	lfs f1, 0xd80(r3)
/* 80142A98 0013F9F8  EC A2 00 28 */	fsubs f5, f2, f0
/* 80142A9C 0013F9FC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80142AA0 0013FA00  C0 43 0D 88 */	lfs f2, 0xd88(r3)
/* 80142AA4 0013FA04  EC 61 00 28 */	fsubs f3, f1, f0
/* 80142AA8 0013FA08  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80142AAC 0013FA0C  EC 25 01 72 */	fmuls f1, f5, f5
/* 80142AB0 0013FA10  EC 82 00 28 */	fsubs f4, f2, f0
/* 80142AB4 0013FA14  C0 02 9B C4 */	lfs f0, lbl_805AB8E4@sda21(r2)
/* 80142AB8 0013FA18  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80142ABC 0013FA1C  D0 61 00 08 */	stfs f3, 8(r1)
/* 80142AC0 0013FA20  EC 64 01 32 */	fmuls f3, f4, f4
/* 80142AC4 0013FA24  EC 22 08 2A */	fadds f1, f2, f1
/* 80142AC8 0013FA28  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80142ACC 0013FA2C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80142AD0 0013FA30  EC 23 08 2A */	fadds f1, f3, f1
/* 80142AD4 0013FA34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80142AD8 0013FA38  7C 00 00 26 */	mfcr r0
/* 80142ADC 0013FA3C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80142AE0 0013FA40  48 00 00 08 */	b lbl_80142AE8
lbl_80142AE4:
/* 80142AE4 0013FA44  38 60 00 00 */	li r3, 0
lbl_80142AE8:
/* 80142AE8 0013FA48  38 21 00 20 */	addi r1, r1, 0x20
/* 80142AEC 0013FA4C  4E 80 00 20 */	blr

.global TargetPatrol__9CFireFleaFR13CStateManager9EStateMsgf
TargetPatrol__9CFireFleaFR13CStateManager9EStateMsgf:
/* 80142AF0 0013FA50  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80142AF4 0013FA54  7C 08 02 A6 */	mflr r0
/* 80142AF8 0013FA58  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80142AFC 0013FA5C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80142B00 0013FA60  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 80142B04 0013FA64  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80142B08 0013FA68  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80142B0C 0013FA6C  93 A1 00 94 */	stw r29, 0x94(r1)
/* 80142B10 0013FA70  7C BF 2B 78 */	mr r31, r5
/* 80142B14 0013FA74  FF E0 08 90 */	fmr f31, f1
/* 80142B18 0013FA78  2C 1F 00 01 */	cmpwi r31, 1
/* 80142B1C 0013FA7C  7C 7D 1B 78 */	mr r29, r3
/* 80142B20 0013FA80  7C 9E 23 78 */	mr r30, r4
/* 80142B24 0013FA84  41 82 00 44 */	beq lbl_80142B68
/* 80142B28 0013FA88  40 80 01 F4 */	bge lbl_80142D1C
/* 80142B2C 0013FA8C  2C 1F 00 00 */	cmpwi r31, 0
/* 80142B30 0013FA90  40 80 00 0C */	bge lbl_80142B3C
/* 80142B34 0013FA94  48 00 01 E8 */	b lbl_80142D1C
/* 80142B38 0013FA98  48 00 01 E4 */	b lbl_80142D1C
lbl_80142B3C:
/* 80142B3C 0013FA9C  48 0B 43 39 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 80142B40 0013FAA0  7F A3 EB 78 */	mr r3, r29
/* 80142B44 0013FAA4  7F C4 F3 78 */	mr r4, r30
/* 80142B48 0013FAA8  48 0B 27 49 */	bl UpdateDest__10CPatternedFR13CStateManager
/* 80142B4C 0013FAAC  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 80142B50 0013FAB0  D0 1D 0D 80 */	stfs f0, 0xd80(r29)
/* 80142B54 0013FAB4  C0 1D 02 E4 */	lfs f0, 0x2e4(r29)
/* 80142B58 0013FAB8  D0 1D 0D 84 */	stfs f0, 0xd84(r29)
/* 80142B5C 0013FABC  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 80142B60 0013FAC0  D0 1D 0D 88 */	stfs f0, 0xd88(r29)
/* 80142B64 0013FAC4  48 00 01 B8 */	b lbl_80142D1C
lbl_80142B68:
/* 80142B68 0013FAC8  81 83 00 00 */	lwz r12, 0(r3)
/* 80142B6C 0013FACC  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80142B70 0013FAD0  7D 89 03 A6 */	mtctr r12
/* 80142B74 0013FAD4  4E 80 04 21 */	bctrl
/* 80142B78 0013FAD8  28 03 00 00 */	cmplwi r3, 0
/* 80142B7C 0013FADC  41 82 01 3C */	beq lbl_80142CB8
/* 80142B80 0013FAE0  7F A3 EB 78 */	mr r3, r29
/* 80142B84 0013FAE4  81 9D 00 00 */	lwz r12, 0(r29)
/* 80142B88 0013FAE8  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80142B8C 0013FAEC  7D 89 03 A6 */	mtctr r12
/* 80142B90 0013FAF0  4E 80 04 21 */	bctrl
/* 80142B94 0013FAF4  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 80142B98 0013FAF8  2C 00 00 00 */	cmpwi r0, 0
/* 80142B9C 0013FAFC  41 82 01 04 */	beq lbl_80142CA0
/* 80142BA0 0013FB00  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80142BA4 0013FB04  7F A3 EB 78 */	mr r3, r29
/* 80142BA8 0013FB08  3B E4 66 A0 */	addi r31, r4, sZeroVector__9CVector3f@l
/* 80142BAC 0013FB0C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80142BB0 0013FB10  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80142BB4 0013FB14  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80142BB8 0013FB18  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80142BBC 0013FB1C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80142BC0 0013FB20  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80142BC4 0013FB24  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80142BC8 0013FB28  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80142BCC 0013FB2C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80142BD0 0013FB30  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80142BD4 0013FB34  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80142BD8 0013FB38  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80142BDC 0013FB3C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80142BE0 0013FB40  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80142BE4 0013FB44  7D 89 03 A6 */	mtctr r12
/* 80142BE8 0013FB48  4E 80 04 21 */	bctrl
/* 80142BEC 0013FB4C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80142BF0 0013FB50  38 A1 00 44 */	addi r5, r1, 0x44
/* 80142BF4 0013FB54  48 08 45 09 */	bl FindClosestReachablePoint__15CPathFindSearchCFRC9CVector3fR9CVector3f
/* 80142BF8 0013FB58  2C 03 00 00 */	cmpwi r3, 0
/* 80142BFC 0013FB5C  40 82 01 20 */	bne lbl_80142D1C
/* 80142C00 0013FB60  C0 22 9B C8 */	lfs f1, lbl_805AB8E8@sda21(r2)
/* 80142C04 0013FB64  7F A5 EB 78 */	mr r5, r29
/* 80142C08 0013FB68  38 61 00 20 */	addi r3, r1, 0x20
/* 80142C0C 0013FB6C  38 9D 04 5C */	addi r4, r29, 0x45c
/* 80142C10 0013FB70  38 DD 0D 80 */	addi r6, r29, 0xd80
/* 80142C14 0013FB74  4B FF BF 09 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 80142C18 0013FB78  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80142C1C 0013FB7C  7F A4 EB 78 */	mr r4, r29
/* 80142C20 0013FB80  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80142C24 0013FB84  7F C5 F3 78 */	mr r5, r30
/* 80142C28 0013FB88  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80142C2C 0013FB8C  38 61 00 14 */	addi r3, r1, 0x14
/* 80142C30 0013FB90  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80142C34 0013FB94  38 C1 00 38 */	addi r6, r1, 0x38
/* 80142C38 0013FB98  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80142C3C 0013FB9C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80142C40 0013FBA0  48 00 03 F5 */	bl sub_80143034
/* 80142C44 0013FBA4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80142C48 0013FBA8  C0 C1 00 14 */	lfs f6, 0x14(r1)
/* 80142C4C 0013FBAC  C0 A1 00 18 */	lfs f5, 0x18(r1)
/* 80142C50 0013FBB0  38 81 00 6C */	addi r4, r1, 0x6c
/* 80142C54 0013FBB4  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 80142C58 0013FBB8  C0 63 66 A0 */	lfs f3, sZeroVector__9CVector3f@l(r3)
/* 80142C5C 0013FBBC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80142C60 0013FBC0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80142C64 0013FBC4  C0 02 9B CC */	lfs f0, lbl_805AB8EC@sda21(r2)
/* 80142C68 0013FBC8  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 80142C6C 0013FBCC  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 80142C70 0013FBD0  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 80142C74 0013FBD4  D0 C1 00 6C */	stfs f6, 0x6c(r1)
/* 80142C78 0013FBD8  D0 A1 00 70 */	stfs f5, 0x70(r1)
/* 80142C7C 0013FBDC  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 80142C80 0013FBE0  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 80142C84 0013FBE4  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80142C88 0013FBE8  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80142C8C 0013FBEC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80142C90 0013FBF0  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80142C94 0013FBF4  38 63 00 04 */	addi r3, r3, 4
/* 80142C98 0013FBF8  4B FE EA 81 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80142C9C 0013FBFC  48 00 00 80 */	b lbl_80142D1C
lbl_80142CA0:
/* 80142CA0 0013FC00  FC 20 F8 90 */	fmr f1, f31
/* 80142CA4 0013FC04  7F A3 EB 78 */	mr r3, r29
/* 80142CA8 0013FC08  7F C4 F3 78 */	mr r4, r30
/* 80142CAC 0013FC0C  7F E5 FB 78 */	mr r5, r31
/* 80142CB0 0013FC10  48 0B 3A 1D */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 80142CB4 0013FC14  48 00 00 68 */	b lbl_80142D1C
lbl_80142CB8:
/* 80142CB8 0013FC18  C0 22 9B C8 */	lfs f1, lbl_805AB8E8@sda21(r2)
/* 80142CBC 0013FC1C  7F A5 EB 78 */	mr r5, r29
/* 80142CC0 0013FC20  38 61 00 08 */	addi r3, r1, 8
/* 80142CC4 0013FC24  38 9D 04 5C */	addi r4, r29, 0x45c
/* 80142CC8 0013FC28  38 DD 0D 80 */	addi r6, r29, 0xd80
/* 80142CCC 0013FC2C  4B FF BE 51 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 80142CD0 0013FC30  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80142CD4 0013FC34  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 80142CD8 0013FC38  C0 C1 00 08 */	lfs f6, 8(r1)
/* 80142CDC 0013FC3C  38 81 00 50 */	addi r4, r1, 0x50
/* 80142CE0 0013FC40  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80142CE4 0013FC44  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 80142CE8 0013FC48  C0 43 00 04 */	lfs f2, 4(r3)
/* 80142CEC 0013FC4C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80142CF0 0013FC50  C0 02 9B CC */	lfs f0, lbl_805AB8EC@sda21(r2)
/* 80142CF4 0013FC54  D0 C1 00 50 */	stfs f6, 0x50(r1)
/* 80142CF8 0013FC58  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 80142CFC 0013FC5C  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 80142D00 0013FC60  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80142D04 0013FC64  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80142D08 0013FC68  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80142D0C 0013FC6C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80142D10 0013FC70  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80142D14 0013FC74  38 63 00 04 */	addi r3, r3, 4
/* 80142D18 0013FC78  4B FE EA 01 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80142D1C:
/* 80142D1C 0013FC7C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 80142D20 0013FC80  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80142D24 0013FC84  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80142D28 0013FC88  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80142D2C 0013FC8C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80142D30 0013FC90  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 80142D34 0013FC94  7C 08 03 A6 */	mtlr r0
/* 80142D38 0013FC98  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80142D3C 0013FC9C  4E 80 00 20 */	blr

.global Dead__9CFireFleaFR13CStateManager9EStateMsgf
Dead__9CFireFleaFR13CStateManager9EStateMsgf:
/* 80142D40 0013FCA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80142D44 0013FCA4  7C 08 02 A6 */	mflr r0
/* 80142D48 0013FCA8  2C 05 00 00 */	cmpwi r5, 0
/* 80142D4C 0013FCAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80142D50 0013FCB0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80142D54 0013FCB4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80142D58 0013FCB8  7C 9E 23 78 */	mr r30, r4
/* 80142D5C 0013FCBC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80142D60 0013FCC0  7C 7D 1B 78 */	mr r29, r3
/* 80142D64 0013FCC4  41 82 00 0C */	beq lbl_80142D70
/* 80142D68 0013FCC8  41 80 00 A0 */	blt lbl_80142E08
/* 80142D6C 0013FCCC  48 00 00 9C */	b lbl_80142E08
lbl_80142D70:
/* 80142D70 0013FCD0  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 80142D74 0013FCD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80142D78 0013FCD8  4B F4 E7 E1 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80142D7C 0013FCDC  2C 03 00 03 */	cmpwi r3, 3
/* 80142D80 0013FCE0  40 82 00 88 */	bne lbl_80142E08
/* 80142D84 0013FCE4  3C 80 80 3D */	lis r4, lbl_803D0098@ha
/* 80142D88 0013FCE8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80142D8C 0013FCEC  38 84 00 98 */	addi r4, r4, lbl_803D0098@l
/* 80142D90 0013FCF0  38 C1 00 08 */	addi r6, r1, 8
/* 80142D94 0013FCF4  38 A0 FF FF */	li r5, -1
/* 80142D98 0013FCF8  48 1F B3 FD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80142D9C 0013FCFC  3C 80 80 3D */	lis r4, lbl_803D0098@ha
/* 80142DA0 0013FD00  38 60 00 48 */	li r3, 0x48
/* 80142DA4 0013FD04  38 84 00 98 */	addi r4, r4, lbl_803D0098@l
/* 80142DA8 0013FD08  38 A0 00 00 */	li r5, 0
/* 80142DAC 0013FD0C  38 84 00 01 */	addi r4, r4, 1
/* 80142DB0 0013FD10  48 1D 2A BD */	bl __nw__FUlPCcPCc
/* 80142DB4 0013FD14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80142DB8 0013FD18  41 82 00 3C */	beq lbl_80142DF4
/* 80142DBC 0013FD1C  80 1D 00 04 */	lwz r0, 4(r29)
/* 80142DC0 0013FD20  7F C4 F3 78 */	mr r4, r30
/* 80142DC4 0013FD24  38 61 00 0C */	addi r3, r1, 0xc
/* 80142DC8 0013FD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80142DCC 0013FD2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80142DD0 0013FD30  4B F0 A3 0D */	bl AllocateUniqueId__13CStateManagerFv
/* 80142DD4 0013FD34  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80142DD8 0013FD38  7F E3 FB 78 */	mr r3, r31
/* 80142DDC 0013FD3C  38 81 00 10 */	addi r4, r1, 0x10
/* 80142DE0 0013FD40  38 A1 00 18 */	addi r5, r1, 0x18
/* 80142DE4 0013FD44  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80142DE8 0013FD48  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80142DEC 0013FD4C  48 00 0F CD */	bl "__ct__Q29CFireFlea18CDeathCameraEffectF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80142DF0 0013FD50  7C 7F 1B 78 */	mr r31, r3
lbl_80142DF4:
/* 80142DF4 0013FD54  7F C3 F3 78 */	mr r3, r30
/* 80142DF8 0013FD58  7F E4 FB 78 */	mr r4, r31
/* 80142DFC 0013FD5C  4B F0 9E F9 */	bl AddObject__13CStateManagerFP7CEntity
/* 80142E00 0013FD60  38 61 00 1C */	addi r3, r1, 0x1c
/* 80142E04 0013FD64  48 1F AC DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80142E08:
/* 80142E08 0013FD68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80142E0C 0013FD6C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80142E10 0013FD70  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80142E14 0013FD74  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80142E18 0013FD78  7C 08 03 A6 */	mtlr r0
/* 80142E1C 0013FD7C  38 21 00 40 */	addi r1, r1, 0x40
/* 80142E20 0013FD80  4E 80 00 20 */	blr

.global Flee__9CFireFleaFR13CStateManager9EStateMsgf
Flee__9CFireFleaFR13CStateManager9EStateMsgf:
/* 80142E24 0013FD84  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80142E28 0013FD88  7C 08 02 A6 */	mflr r0
/* 80142E2C 0013FD8C  2C 05 00 01 */	cmpwi r5, 1
/* 80142E30 0013FD90  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80142E34 0013FD94  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 80142E38 0013FD98  7C 7B 1B 78 */	mr r27, r3
/* 80142E3C 0013FD9C  7C 9C 23 78 */	mr r28, r4
/* 80142E40 0013FDA0  41 82 00 30 */	beq lbl_80142E70
/* 80142E44 0013FDA4  40 80 00 10 */	bge lbl_80142E54
/* 80142E48 0013FDA8  2C 05 00 00 */	cmpwi r5, 0
/* 80142E4C 0013FDAC  40 80 00 14 */	bge lbl_80142E60
/* 80142E50 0013FDB0  48 00 01 D0 */	b lbl_80143020
lbl_80142E54:
/* 80142E54 0013FDB4  2C 05 00 03 */	cmpwi r5, 3
/* 80142E58 0013FDB8  40 80 01 C8 */	bge lbl_80143020
/* 80142E5C 0013FDBC  48 00 01 B8 */	b lbl_80143014
lbl_80142E60:
/* 80142E60 0013FDC0  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80142E64 0013FDC4  38 80 00 02 */	li r4, 2
/* 80142E68 0013FDC8  4B FF 7B 71 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80142E6C 0013FDCC  48 00 01 B4 */	b lbl_80143020
lbl_80142E70:
/* 80142E70 0013FDD0  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 80142E74 0013FDD4  2C 00 00 00 */	cmpwi r0, 0
/* 80142E78 0013FDD8  40 82 00 80 */	bne lbl_80142EF8
/* 80142E7C 0013FDDC  7F 64 DB 78 */	mr r4, r27
/* 80142E80 0013FDE0  7F 85 E3 78 */	mr r5, r28
/* 80142E84 0013FDE4  38 61 00 30 */	addi r3, r1, 0x30
/* 80142E88 0013FDE8  38 DB 0D 74 */	addi r6, r27, 0xd74
/* 80142E8C 0013FDEC  48 00 01 A9 */	bl sub_80143034
/* 80142E90 0013FDF0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80142E94 0013FDF4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80142E98 0013FDF8  C0 02 9B CC */	lfs f0, lbl_805AB8EC@sda21(r2)
/* 80142E9C 0013FDFC  38 81 00 64 */	addi r4, r1, 0x64
/* 80142EA0 0013FE00  D0 3B 0D 74 */	stfs f1, 0xd74(r27)
/* 80142EA4 0013FE04  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80142EA8 0013FE08  D0 3B 0D 78 */	stfs f1, 0xd78(r27)
/* 80142EAC 0013FE0C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80142EB0 0013FE10  D0 3B 0D 7C */	stfs f1, 0xd7c(r27)
/* 80142EB4 0013FE14  C0 3B 0D 74 */	lfs f1, 0xd74(r27)
/* 80142EB8 0013FE18  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 80142EBC 0013FE1C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80142EC0 0013FE20  C0 43 00 04 */	lfs f2, 4(r3)
/* 80142EC4 0013FE24  C0 9B 0D 78 */	lfs f4, 0xd78(r27)
/* 80142EC8 0013FE28  C0 23 00 08 */	lfs f1, 8(r3)
/* 80142ECC 0013FE2C  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 80142ED0 0013FE30  C0 9B 0D 7C */	lfs f4, 0xd7c(r27)
/* 80142ED4 0013FE34  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 80142ED8 0013FE38  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 80142EDC 0013FE3C  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80142EE0 0013FE40  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80142EE4 0013FE44  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80142EE8 0013FE48  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80142EEC 0013FE4C  38 63 00 04 */	addi r3, r3, 4
/* 80142EF0 0013FE50  4B FE E8 29 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80142EF4 0013FE54  48 00 01 2C */	b lbl_80143020
lbl_80142EF8:
/* 80142EF8 0013FE58  3B DB 05 74 */	addi r30, r27, 0x574
/* 80142EFC 0013FE5C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80142F00 0013FE60  7F DD F3 78 */	mr r29, r30
/* 80142F04 0013FE64  3B E3 66 A0 */	addi r31, r3, sZeroVector__9CVector3f@l
/* 80142F08 0013FE68  48 00 00 F4 */	b lbl_80142FFC
lbl_80142F0C:
/* 80142F0C 0013FE6C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80142F10 0013FE70  7F 83 E3 78 */	mr r3, r28
/* 80142F14 0013FE74  38 81 00 08 */	addi r4, r1, 8
/* 80142F18 0013FE78  B0 01 00 08 */	sth r0, 8(r1)
/* 80142F1C 0013FE7C  4B F0 96 89 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80142F20 0013FE80  28 03 00 00 */	cmplwi r3, 0
/* 80142F24 0013FE84  41 82 00 D4 */	beq lbl_80142FF8
/* 80142F28 0013FE88  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80142F2C 0013FE8C  7F 65 DB 78 */	mr r5, r27
/* 80142F30 0013FE90  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80142F34 0013FE94  38 9B 04 5C */	addi r4, r27, 0x45c
/* 80142F38 0013FE98  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80142F3C 0013FE9C  38 61 00 24 */	addi r3, r1, 0x24
/* 80142F40 0013FEA0  38 C1 00 18 */	addi r6, r1, 0x18
/* 80142F44 0013FEA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80142F48 0013FEA8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80142F4C 0013FEAC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80142F50 0013FEB0  4B FF BD 65 */	bl Flee__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 80142F54 0013FEB4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80142F58 0013FEB8  7F 64 DB 78 */	mr r4, r27
/* 80142F5C 0013FEBC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80142F60 0013FEC0  7F 85 E3 78 */	mr r5, r28
/* 80142F64 0013FEC4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80142F68 0013FEC8  38 61 00 0C */	addi r3, r1, 0xc
/* 80142F6C 0013FECC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80142F70 0013FED0  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80142F74 0013FED4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80142F78 0013FED8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80142F7C 0013FEDC  48 00 00 B9 */	bl sub_80143034
/* 80142F80 0013FEE0  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80142F84 0013FEE4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80142F88 0013FEE8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80142F8C 0013FEEC  38 81 00 48 */	addi r4, r1, 0x48
/* 80142F90 0013FEF0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80142F94 0013FEF4  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80142F98 0013FEF8  C0 02 9B CC */	lfs f0, lbl_805AB8EC@sda21(r2)
/* 80142F9C 0013FEFC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80142FA0 0013FF00  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80142FA4 0013FF04  D0 7B 0D 74 */	stfs f3, 0xd74(r27)
/* 80142FA8 0013FF08  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80142FAC 0013FF0C  D0 3B 0D 78 */	stfs f1, 0xd78(r27)
/* 80142FB0 0013FF10  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80142FB4 0013FF14  D0 3B 0D 7C */	stfs f1, 0xd7c(r27)
/* 80142FB8 0013FF18  C0 C1 00 3C */	lfs f6, 0x3c(r1)
/* 80142FBC 0013FF1C  C0 A1 00 40 */	lfs f5, 0x40(r1)
/* 80142FC0 0013FF20  C0 81 00 44 */	lfs f4, 0x44(r1)
/* 80142FC4 0013FF24  C0 63 66 A0 */	lfs f3, sZeroVector__9CVector3f@l(r3)
/* 80142FC8 0013FF28  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80142FCC 0013FF2C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80142FD0 0013FF30  D0 C1 00 48 */	stfs f6, 0x48(r1)
/* 80142FD4 0013FF34  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 80142FD8 0013FF38  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 80142FDC 0013FF3C  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 80142FE0 0013FF40  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80142FE4 0013FF44  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80142FE8 0013FF48  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80142FEC 0013FF4C  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80142FF0 0013FF50  38 63 00 04 */	addi r3, r3, 4
/* 80142FF4 0013FF54  4B FE E7 25 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80142FF8:
/* 80142FF8 0013FF58  3B BD 00 02 */	addi r29, r29, 2
lbl_80142FFC:
/* 80142FFC 0013FF5C  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 80143000 0013FF60  54 00 08 3C */	slwi r0, r0, 1
/* 80143004 0013FF64  7C 1E 02 14 */	add r0, r30, r0
/* 80143008 0013FF68  7C 1D 00 40 */	cmplw r29, r0
/* 8014300C 0013FF6C  40 82 FF 00 */	bne lbl_80142F0C
/* 80143010 0013FF70  48 00 00 10 */	b lbl_80143020
lbl_80143014:
/* 80143014 0013FF74  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80143018 0013FF78  38 80 00 01 */	li r4, 1
/* 8014301C 0013FF7C  4B FF 79 BD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80143020:
/* 80143020 0013FF80  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 80143024 0013FF84  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80143028 0013FF88  7C 08 03 A6 */	mtlr r0
/* 8014302C 0013FF8C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80143030 0013FF90  4E 80 00 20 */	blr

.global sub_80143034
sub_80143034:
/* 80143034 0013FF94  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 80143038 0013FF98  7C 08 02 A6 */	mflr r0
/* 8014303C 0013FF9C  90 01 02 44 */	stw r0, 0x244(r1)
/* 80143040 0013FFA0  DB E1 02 30 */	stfd f31, 0x230(r1)
/* 80143044 0013FFA4  F3 E1 02 38 */	psq_st f31, 568(r1), 0, qr0
/* 80143048 0013FFA8  93 E1 02 2C */	stw r31, 0x22c(r1)
/* 8014304C 0013FFAC  93 C1 02 28 */	stw r30, 0x228(r1)
/* 80143050 0013FFB0  93 A1 02 24 */	stw r29, 0x224(r1)
/* 80143054 0013FFB4  93 81 02 20 */	stw r28, 0x220(r1)
/* 80143058 0013FFB8  C0 46 00 00 */	lfs f2, 0(r6)
/* 8014305C 0013FFBC  7C 7D 1B 78 */	mr r29, r3
/* 80143060 0013FFC0  C0 26 00 04 */	lfs f1, 4(r6)
/* 80143064 0013FFC4  7C 9E 23 78 */	mr r30, r4
/* 80143068 0013FFC8  C0 06 00 08 */	lfs f0, 8(r6)
/* 8014306C 0013FFCC  7C BF 2B 78 */	mr r31, r5
/* 80143070 0013FFD0  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 80143074 0013FFD4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80143078 0013FFD8  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8014307C 0013FFDC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80143080 0013FFE0  48 1D 18 39 */	bl Magnitude__9CVector3fCFv
/* 80143084 0013FFE4  FF E0 08 90 */	fmr f31, f1
/* 80143088 0013FFE8  C0 02 9B D0 */	lfs f0, lbl_805AB8F0@sda21(r2)
/* 8014308C 0013FFEC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80143090 0013FFF0  40 81 04 28 */	ble lbl_801434B8
/* 80143094 0013FFF4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80143098 0013FFF8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8014309C 0013FFFC  48 1D 17 B5 */	bl AsNormalized__9CVector3fCFv
/* 801430A0 00140000  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 801430A4 00140004  38 60 00 00 */	li r3, 0
/* 801430A8 00140008  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 801430AC 0014000C  38 80 00 01 */	li r4, 1
/* 801430B0 00140010  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801430B4 00140014  80 AD 8B C8 */	lwz r5, lbl_805A7788@sda21(r13)
/* 801430B8 00140018  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801430BC 0014001C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801430C0 00140020  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801430C4 00140024  48 24 6E 31 */	bl __shl2i
/* 801430C8 00140028  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801430CC 0014002C  39 00 00 00 */	li r8, 0
/* 801430D0 00140030  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801430D4 00140034  38 00 00 01 */	li r0, 1
/* 801430D8 00140038  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801430DC 0014003C  38 A1 00 50 */	addi r5, r1, 0x50
/* 801430E0 00140040  90 81 01 14 */	stw r4, 0x114(r1)
/* 801430E4 00140044  7F E4 FB 78 */	mr r4, r31
/* 801430E8 00140048  C0 22 9B CC */	lfs f1, lbl_805AB8EC@sda21(r2)
/* 801430EC 0014004C  38 C1 00 98 */	addi r6, r1, 0x98
/* 801430F0 00140050  90 61 01 10 */	stw r3, 0x110(r1)
/* 801430F4 00140054  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 801430F8 00140058  38 E1 01 10 */	addi r7, r1, 0x110
/* 801430FC 0014005C  91 01 01 1C */	stw r8, 0x11c(r1)
/* 80143100 00140060  91 01 01 18 */	stw r8, 0x118(r1)
/* 80143104 00140064  90 01 01 20 */	stw r0, 0x120(r1)
/* 80143108 00140068  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8014310C 0014006C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80143110 00140070  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80143114 00140074  4B F0 9E 85 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80143118 00140078  8B 81 02 08 */	lbz r28, 0x208(r1)
/* 8014311C 0014007C  7F C3 F3 78 */	mr r3, r30
/* 80143120 00140080  7F E4 FB 78 */	mr r4, r31
/* 80143124 00140084  38 A1 00 98 */	addi r5, r1, 0x98
/* 80143128 00140088  48 00 03 D5 */	bl sub_801434fc
/* 8014312C 0014008C  28 1C 00 00 */	cmplwi r28, 0
/* 80143130 00140090  40 82 00 0C */	bne lbl_8014313C
/* 80143134 00140094  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80143138 00140098  41 82 03 64 */	beq lbl_8014349C
lbl_8014313C:
/* 8014313C 0014009C  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 80143140 001400A0  C0 A1 00 9C */	lfs f5, 0x9c(r1)
/* 80143144 001400A4  38 A3 66 F4 */	addi r5, r3, sUpVector__9CVector3f@l
/* 80143148 001400A8  C0 C1 00 A0 */	lfs f6, 0xa0(r1)
/* 8014314C 001400AC  C0 85 00 08 */	lfs f4, 8(r5)
/* 80143150 001400B0  38 61 00 44 */	addi r3, r1, 0x44
/* 80143154 001400B4  C1 05 00 00 */	lfs f8, 0(r5)
/* 80143158 001400B8  38 81 00 38 */	addi r4, r1, 0x38
/* 8014315C 001400BC  C0 65 00 04 */	lfs f3, 4(r5)
/* 80143160 001400C0  EC 45 01 32 */	fmuls f2, f5, f4
/* 80143164 001400C4  C0 E1 00 98 */	lfs f7, 0x98(r1)
/* 80143168 001400C8  EC 26 02 32 */	fmuls f1, f6, f8
/* 8014316C 001400CC  EC 07 00 F2 */	fmuls f0, f7, f3
/* 80143170 001400D0  EC 43 11 B8 */	fmsubs f2, f3, f6, f2
/* 80143174 001400D4  EC 24 09 F8 */	fmsubs f1, f4, f7, f1
/* 80143178 001400D8  EC 08 01 78 */	fmsubs f0, f8, f5, f0
/* 8014317C 001400DC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80143180 001400E0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80143184 001400E4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80143188 001400E8  48 1D 16 C9 */	bl AsNormalized__9CVector3fCFv
/* 8014318C 001400EC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80143190 001400F0  38 60 00 00 */	li r3, 0
/* 80143194 001400F4  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80143198 001400F8  38 80 00 01 */	li r4, 1
/* 8014319C 001400FC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801431A0 00140100  80 AD 8B CC */	lwz r5, lbl_805A778C@sda21(r13)
/* 801431A4 00140104  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 801431A8 00140108  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 801431AC 0014010C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 801431B0 00140110  48 24 6D 45 */	bl __shl2i
/* 801431B4 00140114  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801431B8 00140118  39 00 00 00 */	li r8, 0
/* 801431BC 0014011C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801431C0 00140120  38 00 00 01 */	li r0, 1
/* 801431C4 00140124  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801431C8 00140128  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801431CC 0014012C  90 81 00 FC */	stw r4, 0xfc(r1)
/* 801431D0 00140130  7F E4 FB 78 */	mr r4, r31
/* 801431D4 00140134  C0 22 9B CC */	lfs f1, lbl_805AB8EC@sda21(r2)
/* 801431D8 00140138  38 C1 00 8C */	addi r6, r1, 0x8c
/* 801431DC 0014013C  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 801431E0 00140140  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 801431E4 00140144  38 E1 00 F8 */	addi r7, r1, 0xf8
/* 801431E8 00140148  91 01 01 04 */	stw r8, 0x104(r1)
/* 801431EC 0014014C  91 01 01 00 */	stw r8, 0x100(r1)
/* 801431F0 00140150  90 01 01 08 */	stw r0, 0x108(r1)
/* 801431F4 00140154  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801431F8 00140158  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801431FC 0014015C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80143200 00140160  4B F0 9D 99 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80143204 00140164  88 01 01 D8 */	lbz r0, 0x1d8(r1)
/* 80143208 00140168  28 00 00 00 */	cmplwi r0, 0
/* 8014320C 0014016C  41 82 02 6C */	beq lbl_80143478
/* 80143210 00140170  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80143214 00140174  38 60 00 00 */	li r3, 0
/* 80143218 00140178  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 8014321C 0014017C  38 80 00 01 */	li r4, 1
/* 80143220 00140180  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80143224 00140184  FC 40 10 50 */	fneg f2, f2
/* 80143228 00140188  FC 20 08 50 */	fneg f1, f1
/* 8014322C 0014018C  80 AD 8B D0 */	lwz r5, lbl_805A7790@sda21(r13)
/* 80143230 00140190  FC 00 00 50 */	fneg f0, f0
/* 80143234 00140194  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80143238 00140198  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8014323C 0014019C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80143240 001401A0  48 24 6C B5 */	bl __shl2i
/* 80143244 001401A4  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80143248 001401A8  39 00 00 00 */	li r8, 0
/* 8014324C 001401AC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80143250 001401B0  38 00 00 01 */	li r0, 1
/* 80143254 001401B4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80143258 001401B8  38 A1 00 20 */	addi r5, r1, 0x20
/* 8014325C 001401BC  90 81 00 E4 */	stw r4, 0xe4(r1)
/* 80143260 001401C0  7F E4 FB 78 */	mr r4, r31
/* 80143264 001401C4  C0 22 9B CC */	lfs f1, lbl_805AB8EC@sda21(r2)
/* 80143268 001401C8  38 C1 00 80 */	addi r6, r1, 0x80
/* 8014326C 001401CC  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 80143270 001401D0  38 61 01 88 */	addi r3, r1, 0x188
/* 80143274 001401D4  38 E1 00 E0 */	addi r7, r1, 0xe0
/* 80143278 001401D8  91 01 00 EC */	stw r8, 0xec(r1)
/* 8014327C 001401DC  91 01 00 E8 */	stw r8, 0xe8(r1)
/* 80143280 001401E0  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80143284 001401E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80143288 001401E8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8014328C 001401EC  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80143290 001401F0  4B F0 9D 09 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80143294 001401F4  88 01 01 A8 */	lbz r0, 0x1a8(r1)
/* 80143298 001401F8  28 00 00 00 */	cmplwi r0, 0
/* 8014329C 001401FC  41 82 01 B4 */	beq lbl_80143450
/* 801432A0 00140200  C0 61 00 9C */	lfs f3, 0x9c(r1)
/* 801432A4 00140204  38 60 00 00 */	li r3, 0
/* 801432A8 00140208  C0 E1 00 8C */	lfs f7, 0x8c(r1)
/* 801432AC 0014020C  38 80 00 01 */	li r4, 1
/* 801432B0 00140210  C0 81 00 A0 */	lfs f4, 0xa0(r1)
/* 801432B4 00140214  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 801432B8 00140218  EC 07 00 F2 */	fmuls f0, f7, f3
/* 801432BC 0014021C  C0 C1 00 98 */	lfs f6, 0x98(r1)
/* 801432C0 00140220  EC 22 01 32 */	fmuls f1, f2, f4
/* 801432C4 00140224  C0 A1 00 94 */	lfs f5, 0x94(r1)
/* 801432C8 00140228  EC 46 00 B8 */	fmsubs f2, f6, f2, f0
/* 801432CC 0014022C  80 AD 8B D4 */	lwz r5, lbl_805A7794@sda21(r13)
/* 801432D0 00140230  EC 05 01 B2 */	fmuls f0, f5, f6
/* 801432D4 00140234  EC 23 09 78 */	fmsubs f1, f3, f5, f1
/* 801432D8 00140238  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 801432DC 0014023C  EC 04 01 F8 */	fmsubs f0, f4, f7, f0
/* 801432E0 00140240  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801432E4 00140244  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801432E8 00140248  48 24 6C 0D */	bl __shl2i
/* 801432EC 0014024C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801432F0 00140250  39 00 00 00 */	li r8, 0
/* 801432F4 00140254  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801432F8 00140258  38 00 00 01 */	li r0, 1
/* 801432FC 0014025C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80143300 00140260  38 A1 00 14 */	addi r5, r1, 0x14
/* 80143304 00140264  90 81 00 CC */	stw r4, 0xcc(r1)
/* 80143308 00140268  7F E4 FB 78 */	mr r4, r31
/* 8014330C 0014026C  C0 22 9B CC */	lfs f1, lbl_805AB8EC@sda21(r2)
/* 80143310 00140270  38 C1 00 74 */	addi r6, r1, 0x74
/* 80143314 00140274  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 80143318 00140278  38 61 01 58 */	addi r3, r1, 0x158
/* 8014331C 0014027C  38 E1 00 C8 */	addi r7, r1, 0xc8
/* 80143320 00140280  91 01 00 D4 */	stw r8, 0xd4(r1)
/* 80143324 00140284  91 01 00 D0 */	stw r8, 0xd0(r1)
/* 80143328 00140288  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8014332C 0014028C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80143330 00140290  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80143334 00140294  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80143338 00140298  4B F0 9C 61 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8014333C 0014029C  88 01 01 78 */	lbz r0, 0x178(r1)
/* 80143340 001402A0  28 00 00 00 */	cmplwi r0, 0
/* 80143344 001402A4  41 82 00 E4 */	beq lbl_80143428
/* 80143348 001402A8  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 8014334C 001402AC  38 60 00 00 */	li r3, 0
/* 80143350 001402B0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80143354 001402B4  38 80 00 01 */	li r4, 1
/* 80143358 001402B8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8014335C 001402BC  FC 40 10 50 */	fneg f2, f2
/* 80143360 001402C0  FC 20 08 50 */	fneg f1, f1
/* 80143364 001402C4  80 AD 8B D8 */	lwz r5, lbl_805A7798@sda21(r13)
/* 80143368 001402C8  FC 00 00 50 */	fneg f0, f0
/* 8014336C 001402CC  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80143370 001402D0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80143374 001402D4  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80143378 001402D8  48 24 6B 7D */	bl __shl2i
/* 8014337C 001402DC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80143380 001402E0  39 00 00 00 */	li r8, 0
/* 80143384 001402E4  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80143388 001402E8  38 00 00 01 */	li r0, 1
/* 8014338C 001402EC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80143390 001402F0  38 A1 00 08 */	addi r5, r1, 8
/* 80143394 001402F4  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 80143398 001402F8  7F E4 FB 78 */	mr r4, r31
/* 8014339C 001402FC  C0 22 9B CC */	lfs f1, lbl_805AB8EC@sda21(r2)
/* 801433A0 00140300  38 C1 00 68 */	addi r6, r1, 0x68
/* 801433A4 00140304  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 801433A8 00140308  38 61 01 28 */	addi r3, r1, 0x128
/* 801433AC 0014030C  38 E1 00 B0 */	addi r7, r1, 0xb0
/* 801433B0 00140310  91 01 00 BC */	stw r8, 0xbc(r1)
/* 801433B4 00140314  91 01 00 B8 */	stw r8, 0xb8(r1)
/* 801433B8 00140318  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801433BC 0014031C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801433C0 00140320  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801433C4 00140324  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801433C8 00140328  4B F0 9B D1 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 801433CC 0014032C  88 01 01 48 */	lbz r0, 0x148(r1)
/* 801433D0 00140330  28 00 00 00 */	cmplwi r0, 0
/* 801433D4 00140334  40 82 00 2C */	bne lbl_80143400
/* 801433D8 00140338  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 801433DC 0014033C  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 801433E0 00140340  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801433E4 00140344  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 801433E8 00140348  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801433EC 0014034C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801433F0 00140350  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 801433F4 00140354  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 801433F8 00140358  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 801433FC 0014035C  48 00 00 A0 */	b lbl_8014349C
lbl_80143400:
/* 80143400 00140360  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 80143404 00140364  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 80143408 00140368  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8014340C 0014036C  FC 40 10 50 */	fneg f2, f2
/* 80143410 00140370  FC 20 08 50 */	fneg f1, f1
/* 80143414 00140374  FC 00 00 50 */	fneg f0, f0
/* 80143418 00140378  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8014341C 0014037C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80143420 00140380  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80143424 00140384  48 00 00 78 */	b lbl_8014349C
lbl_80143428:
/* 80143428 00140388  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 8014342C 0014038C  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80143430 00140390  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80143434 00140394  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80143438 00140398  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8014343C 0014039C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80143440 001403A0  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80143444 001403A4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80143448 001403A8  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8014344C 001403AC  48 00 00 50 */	b lbl_8014349C
lbl_80143450:
/* 80143450 001403B0  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80143454 001403B4  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80143458 001403B8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8014345C 001403BC  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80143460 001403C0  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80143464 001403C4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80143468 001403C8  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 8014346C 001403CC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80143470 001403D0  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80143474 001403D4  48 00 00 28 */	b lbl_8014349C
lbl_80143478:
/* 80143478 001403D8  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 8014347C 001403DC  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80143480 001403E0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80143484 001403E4  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80143488 001403E8  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8014348C 001403EC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80143490 001403F0  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80143494 001403F4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80143498 001403F8  D0 21 00 AC */	stfs f1, 0xac(r1)
lbl_8014349C:
/* 8014349C 001403FC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 801434A0 00140400  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801434A4 00140404  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 801434A8 00140408  D0 1D 00 04 */	stfs f0, 4(r29)
/* 801434AC 0014040C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 801434B0 00140410  D0 1D 00 08 */	stfs f0, 8(r29)
/* 801434B4 00140414  48 00 00 20 */	b lbl_801434D4
lbl_801434B8:
/* 801434B8 00140418  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801434BC 0014041C  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801434C0 00140420  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801434C4 00140424  C0 03 00 04 */	lfs f0, 4(r3)
/* 801434C8 00140428  D0 1D 00 04 */	stfs f0, 4(r29)
/* 801434CC 0014042C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801434D0 00140430  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_801434D4:
/* 801434D4 00140434  E3 E1 02 38 */	psq_l f31, 568(r1), 0, qr0
/* 801434D8 00140438  80 01 02 44 */	lwz r0, 0x244(r1)
/* 801434DC 0014043C  CB E1 02 30 */	lfd f31, 0x230(r1)
/* 801434E0 00140440  83 E1 02 2C */	lwz r31, 0x22c(r1)
/* 801434E4 00140444  83 C1 02 28 */	lwz r30, 0x228(r1)
/* 801434E8 00140448  83 A1 02 24 */	lwz r29, 0x224(r1)
/* 801434EC 0014044C  83 81 02 20 */	lwz r28, 0x220(r1)
/* 801434F0 00140450  7C 08 03 A6 */	mtlr r0
/* 801434F4 00140454  38 21 02 40 */	addi r1, r1, 0x240
/* 801434F8 00140458  4E 80 00 20 */	blr

.global sub_801434fc
sub_801434fc:
/* 801434FC 0014045C  94 21 F7 C0 */	stwu r1, -0x840(r1)
/* 80143500 00140460  7C 08 02 A6 */	mflr r0
/* 80143504 00140464  7C A6 2B 78 */	mr r6, r5
/* 80143508 00140468  C0 22 9B D4 */	lfs f1, lbl_805AB8F4@sda21(r2)
/* 8014350C 0014046C  90 01 08 44 */	stw r0, 0x844(r1)
/* 80143510 00140470  38 00 00 00 */	li r0, 0
/* 80143514 00140474  38 A1 00 18 */	addi r5, r1, 0x18
/* 80143518 00140478  39 00 00 00 */	li r8, 0
/* 8014351C 0014047C  93 E1 08 3C */	stw r31, 0x83c(r1)
/* 80143520 00140480  93 C1 08 38 */	stw r30, 0x838(r1)
/* 80143524 00140484  93 A1 08 34 */	stw r29, 0x834(r1)
/* 80143528 00140488  7C 9D 23 78 */	mr r29, r4
/* 8014352C 0014048C  38 81 00 24 */	addi r4, r1, 0x24
/* 80143530 00140490  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80143534 00140494  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 80143538 00140498  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8014353C 0014049C  3C 60 80 5A */	lis r3, skPassEverything__15CMaterialFilter@ha
/* 80143540 001404A0  38 E3 FD 18 */	addi r7, r3, skPassEverything__15CMaterialFilter@l
/* 80143544 001404A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80143548 001404A8  7F A3 EB 78 */	mr r3, r29
/* 8014354C 001404AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80143550 001404B0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80143554 001404B4  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80143558 001404B8  4B F0 91 81 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC9CVector3fRC9CVector3ffRC15CMaterialFilterPC6CActor"
/* 8014355C 001404BC  3B E1 00 28 */	addi r31, r1, 0x28
/* 80143560 001404C0  7F FE FB 78 */	mr r30, r31
/* 80143564 001404C4  48 00 00 94 */	b lbl_801435F8
lbl_80143568:
/* 80143568 001404C8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8014356C 001404CC  7F A3 EB 78 */	mr r3, r29
/* 80143570 001404D0  38 81 00 08 */	addi r4, r1, 8
/* 80143574 001404D4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80143578 001404D8  B0 01 00 08 */	sth r0, 8(r1)
/* 8014357C 001404DC  4B F0 90 29 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80143580 001404E0  7C 64 1B 78 */	mr r4, r3
/* 80143584 001404E4  38 61 00 10 */	addi r3, r1, 0x10
/* 80143588 001404E8  4B F6 32 D9 */	bl "__ct__26TCastToPtr<12CScriptWater>FP7CEntity"
/* 8014358C 001404EC  80 03 00 04 */	lwz r0, 4(r3)
/* 80143590 001404F0  28 00 00 00 */	cmplwi r0, 0
/* 80143594 001404F4  41 82 00 60 */	beq lbl_801435F4
/* 80143598 001404F8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8014359C 001404FC  38 60 00 00 */	li r3, 0
/* 801435A0 00140500  2C 05 00 00 */	cmpwi r5, 0
/* 801435A4 00140504  40 81 00 40 */	ble lbl_801435E4
/* 801435A8 00140508  2C 05 00 08 */	cmpwi r5, 8
/* 801435AC 0014050C  38 85 FF F8 */	addi r4, r5, -8
/* 801435B0 00140510  40 81 00 20 */	ble lbl_801435D0
/* 801435B4 00140514  38 04 00 07 */	addi r0, r4, 7
/* 801435B8 00140518  54 00 E8 FE */	srwi r0, r0, 3
/* 801435BC 0014051C  7C 09 03 A6 */	mtctr r0
/* 801435C0 00140520  2C 04 00 00 */	cmpwi r4, 0
/* 801435C4 00140524  40 81 00 0C */	ble lbl_801435D0
lbl_801435C8:
/* 801435C8 00140528  38 63 00 08 */	addi r3, r3, 8
/* 801435CC 0014052C  42 00 FF FC */	bdnz lbl_801435C8
lbl_801435D0:
/* 801435D0 00140530  7C 03 28 50 */	subf r0, r3, r5
/* 801435D4 00140534  7C 09 03 A6 */	mtctr r0
/* 801435D8 00140538  7C 03 28 00 */	cmpw r3, r5
/* 801435DC 0014053C  40 80 00 08 */	bge lbl_801435E4
lbl_801435E0:
/* 801435E0 00140540  42 00 00 00 */	bdnz lbl_801435E0
lbl_801435E4:
/* 801435E4 00140544  38 00 00 00 */	li r0, 0
/* 801435E8 00140548  38 60 00 01 */	li r3, 1
/* 801435EC 0014054C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801435F0 00140550  48 00 00 70 */	b lbl_80143660
lbl_801435F4:
/* 801435F4 00140554  3B DE 00 02 */	addi r30, r30, 2
lbl_801435F8:
/* 801435F8 00140558  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801435FC 0014055C  54 A0 08 3C */	slwi r0, r5, 1
/* 80143600 00140560  7C 1F 02 14 */	add r0, r31, r0
/* 80143604 00140564  7C 1E 00 40 */	cmplw r30, r0
/* 80143608 00140568  40 82 FF 60 */	bne lbl_80143568
/* 8014360C 0014056C  2C 05 00 00 */	cmpwi r5, 0
/* 80143610 00140570  38 60 00 00 */	li r3, 0
/* 80143614 00140574  40 81 00 40 */	ble lbl_80143654
/* 80143618 00140578  2C 05 00 08 */	cmpwi r5, 8
/* 8014361C 0014057C  38 85 FF F8 */	addi r4, r5, -8
/* 80143620 00140580  40 81 00 20 */	ble lbl_80143640
/* 80143624 00140584  38 04 00 07 */	addi r0, r4, 7
/* 80143628 00140588  54 00 E8 FE */	srwi r0, r0, 3
/* 8014362C 0014058C  7C 09 03 A6 */	mtctr r0
/* 80143630 00140590  2C 04 00 00 */	cmpwi r4, 0
/* 80143634 00140594  40 81 00 0C */	ble lbl_80143640
lbl_80143638:
/* 80143638 00140598  38 63 00 08 */	addi r3, r3, 8
/* 8014363C 0014059C  42 00 FF FC */	bdnz lbl_80143638
lbl_80143640:
/* 80143640 001405A0  7C 03 28 50 */	subf r0, r3, r5
/* 80143644 001405A4  7C 09 03 A6 */	mtctr r0
/* 80143648 001405A8  7C 03 28 00 */	cmpw r3, r5
/* 8014364C 001405AC  40 80 00 08 */	bge lbl_80143654
lbl_80143650:
/* 80143650 001405B0  42 00 00 00 */	bdnz lbl_80143650
lbl_80143654:
/* 80143654 001405B4  38 00 00 00 */	li r0, 0
/* 80143658 001405B8  38 60 00 00 */	li r3, 0
/* 8014365C 001405BC  90 01 00 24 */	stw r0, 0x24(r1)
lbl_80143660:
/* 80143660 001405C0  80 01 08 44 */	lwz r0, 0x844(r1)
/* 80143664 001405C4  83 E1 08 3C */	lwz r31, 0x83c(r1)
/* 80143668 001405C8  83 C1 08 38 */	lwz r30, 0x838(r1)
/* 8014366C 001405CC  83 A1 08 34 */	lwz r29, 0x834(r1)
/* 80143670 001405D0  7C 08 03 A6 */	mtlr r0
/* 80143674 001405D4  38 21 08 40 */	addi r1, r1, 0x840
/* 80143678 001405D8  4E 80 00 20 */	blr

.global Patrol__9CFireFleaFR13CStateManager9EStateMsgf
Patrol__9CFireFleaFR13CStateManager9EStateMsgf:
/* 8014367C 001405DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80143680 001405E0  7C 08 02 A6 */	mflr r0
/* 80143684 001405E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80143688 001405E8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8014368C 001405EC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80143690 001405F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80143694 001405F4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80143698 001405F8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8014369C 001405FC  FF E0 08 90 */	fmr f31, f1
/* 801436A0 00140600  3C C0 80 5A */	lis r6, sZeroVector__9CVector3f@ha
/* 801436A4 00140604  7C 7D 1B 78 */	mr r29, r3
/* 801436A8 00140608  C0 22 9B D8 */	lfs f1, lbl_805AB8F8@sda21(r2)
/* 801436AC 0014060C  38 06 66 A0 */	addi r0, r6, sZeroVector__9CVector3f@l
/* 801436B0 00140610  7C 9E 23 78 */	mr r30, r4
/* 801436B4 00140614  7C BF 2B 78 */	mr r31, r5
/* 801436B8 00140618  7C 04 03 78 */	mr r4, r0
/* 801436BC 0014061C  38 7D 03 10 */	addi r3, r29, 0x310
/* 801436C0 00140620  48 1C C8 A5 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 801436C4 00140624  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801436C8 00140628  40 82 00 0C */	bne lbl_801436D4
/* 801436CC 0014062C  38 7D 03 10 */	addi r3, r29, 0x310
/* 801436D0 00140630  48 1D 12 29 */	bl Normalize__9CVector3fFv
lbl_801436D4:
/* 801436D4 00140634  7F A4 EB 78 */	mr r4, r29
/* 801436D8 00140638  7F C5 F3 78 */	mr r5, r30
/* 801436DC 0014063C  38 61 00 10 */	addi r3, r1, 0x10
/* 801436E0 00140640  38 DD 03 10 */	addi r6, r29, 0x310
/* 801436E4 00140644  4B FF F9 51 */	bl sub_80143034
/* 801436E8 00140648  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801436EC 0014064C  FC 20 F8 90 */	fmr f1, f31
/* 801436F0 00140650  7F A3 EB 78 */	mr r3, r29
/* 801436F4 00140654  7F C4 F3 78 */	mr r4, r30
/* 801436F8 00140658  D0 1D 03 10 */	stfs f0, 0x310(r29)
/* 801436FC 0014065C  7F E5 FB 78 */	mr r5, r31
/* 80143700 00140660  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80143704 00140664  D0 1D 03 14 */	stfs f0, 0x314(r29)
/* 80143708 00140668  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8014370C 0014066C  D0 1D 03 18 */	stfs f0, 0x318(r29)
/* 80143710 00140670  48 0B 37 65 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 80143714 00140674  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 80143718 00140678  2C 00 00 02 */	cmpwi r0, 2
/* 8014371C 0014067C  40 82 00 1C */	bne lbl_80143738
/* 80143720 00140680  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80143724 00140684  7F C3 F3 78 */	mr r3, r30
/* 80143728 00140688  38 81 00 0C */	addi r4, r1, 0xc
/* 8014372C 0014068C  B0 01 00 08 */	sth r0, 8(r1)
/* 80143730 00140690  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80143734 00140694  4B F0 8B 39 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
lbl_80143738:
/* 80143738 00140698  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8014373C 0014069C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80143740 001406A0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80143744 001406A4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80143748 001406A8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8014374C 001406AC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80143750 001406B0  7C 08 03 A6 */	mtlr r0
/* 80143754 001406B4  38 21 00 40 */	addi r1, r1, 0x40
/* 80143758 001406B8  4E 80 00 20 */	blr

.global HearShot__9CFireFleaFR13CStateManagerf
HearShot__9CFireFleaFR13CStateManagerf:
/* 8014375C 001406BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80143760 001406C0  7C 08 02 A6 */	mflr r0
/* 80143764 001406C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80143768 001406C8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8014376C 001406CC  7C 9F 23 78 */	mr r31, r4
/* 80143770 001406D0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80143774 001406D4  7C 7E 1B 78 */	mr r30, r3
/* 80143778 001406D8  80 A3 05 70 */	lwz r5, 0x570(r3)
/* 8014377C 001406DC  38 60 00 00 */	li r3, 0
/* 80143780 001406E0  2C 05 00 00 */	cmpwi r5, 0
/* 80143784 001406E4  40 81 00 40 */	ble lbl_801437C4
/* 80143788 001406E8  2C 05 00 08 */	cmpwi r5, 8
/* 8014378C 001406EC  38 85 FF F8 */	addi r4, r5, -8
/* 80143790 001406F0  40 81 00 20 */	ble lbl_801437B0
/* 80143794 001406F4  38 04 00 07 */	addi r0, r4, 7
/* 80143798 001406F8  54 00 E8 FE */	srwi r0, r0, 3
/* 8014379C 001406FC  7C 09 03 A6 */	mtctr r0
/* 801437A0 00140700  2C 04 00 00 */	cmpwi r4, 0
/* 801437A4 00140704  40 81 00 0C */	ble lbl_801437B0
lbl_801437A8:
/* 801437A8 00140708  38 63 00 08 */	addi r3, r3, 8
/* 801437AC 0014070C  42 00 FF FC */	bdnz lbl_801437A8
lbl_801437B0:
/* 801437B0 00140710  7C 03 28 50 */	subf r0, r3, r5
/* 801437B4 00140714  7C 09 03 A6 */	mtctr r0
/* 801437B8 00140718  7C 03 28 00 */	cmpw r3, r5
/* 801437BC 0014071C  40 80 00 08 */	bge lbl_801437C4
lbl_801437C0:
/* 801437C0 00140720  42 00 00 00 */	bdnz lbl_801437C0
lbl_801437C4:
/* 801437C4 00140724  38 00 00 00 */	li r0, 0
/* 801437C8 00140728  C0 A2 9B DC */	lfs f5, lbl_805AB8FC@sda21(r2)
/* 801437CC 0014072C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 801437D0 00140730  38 61 00 50 */	addi r3, r1, 0x50
/* 801437D4 00140734  38 81 00 14 */	addi r4, r1, 0x14
/* 801437D8 00140738  38 A1 00 08 */	addi r5, r1, 8
/* 801437DC 0014073C  C0 FE 00 60 */	lfs f7, 0x60(r30)
/* 801437E0 00140740  C0 DE 00 50 */	lfs f6, 0x50(r30)
/* 801437E4 00140744  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801437E8 00140748  EC 07 28 2A */	fadds f0, f7, f5
/* 801437EC 0014074C  EC 66 28 2A */	fadds f3, f6, f5
/* 801437F0 00140750  EC 81 28 2A */	fadds f4, f1, f5
/* 801437F4 00140754  EC 41 28 28 */	fsubs f2, f1, f5
/* 801437F8 00140758  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801437FC 0014075C  EC 26 28 28 */	fsubs f1, f6, f5
/* 80143800 00140760  EC 07 28 28 */	fsubs f0, f7, f5
/* 80143804 00140764  D0 81 00 08 */	stfs f4, 8(r1)
/* 80143808 00140768  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8014380C 0014076C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80143810 00140770  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80143814 00140774  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80143818 00140778  48 1F 4C F1 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8014381C 0014077C  80 AD 8B C4 */	lwz r5, lbl_805A7784@sda21(r13)
/* 80143820 00140780  38 60 00 00 */	li r3, 0
/* 80143824 00140784  38 80 00 01 */	li r4, 1
/* 80143828 00140788  48 24 66 CD */	bl __shl2i
/* 8014382C 0014078C  39 00 00 01 */	li r8, 1
/* 80143830 00140790  38 00 00 00 */	li r0, 0
/* 80143834 00140794  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80143838 00140798  38 9E 05 70 */	addi r4, r30, 0x570
/* 8014383C 0014079C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80143840 001407A0  38 C1 00 38 */	addi r6, r1, 0x38
/* 80143844 001407A4  90 61 00 38 */	stw r3, 0x38(r1)
/* 80143848 001407A8  7F E3 FB 78 */	mr r3, r31
/* 8014384C 001407AC  38 E0 00 00 */	li r7, 0
/* 80143850 001407B0  91 01 00 30 */	stw r8, 0x30(r1)
/* 80143854 001407B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80143858 001407B8  90 01 00 40 */	stw r0, 0x40(r1)
/* 8014385C 001407BC  91 01 00 48 */	stw r8, 0x48(r1)
/* 80143860 001407C0  4B F0 8E C1 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 80143864 001407C4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80143868 001407C8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8014386C 001407CC  7C 03 00 D0 */	neg r0, r3
/* 80143870 001407D0  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80143874 001407D4  7C 00 18 78 */	andc r0, r0, r3
/* 80143878 001407D8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8014387C 001407DC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80143880 001407E0  7C 08 03 A6 */	mtlr r0
/* 80143884 001407E4  38 21 00 70 */	addi r1, r1, 0x70
/* 80143888 001407E8  4E 80 00 20 */	blr

.global Think__9CFireFleaFfR13CStateManager
Think__9CFireFleaFfR13CStateManager:
/* 8014388C 001407EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80143890 001407F0  7C 08 02 A6 */	mflr r0
/* 80143894 001407F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80143898 001407F8  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8014389C 001407FC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801438A0 00140800  41 82 00 08 */	beq lbl_801438A8
/* 801438A4 00140804  4B F3 62 75 */	bl Think__10CPatternedFfR13CStateManager
lbl_801438A8:
/* 801438A8 00140808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801438AC 0014080C  7C 08 03 A6 */	mtlr r0
/* 801438B0 00140810  38 21 00 10 */	addi r1, r1, 0x10
/* 801438B4 00140814  4E 80 00 20 */	blr

.global AcceptScriptMsg__9CFireFleaF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__9CFireFleaF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801438B8 00140818  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801438BC 0014081C  7C 08 02 A6 */	mflr r0
/* 801438C0 00140820  90 01 00 34 */	stw r0, 0x34(r1)
/* 801438C4 00140824  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801438C8 00140828  7C DF 33 78 */	mr r31, r6
/* 801438CC 0014082C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801438D0 00140830  7C 9E 23 78 */	mr r30, r4
/* 801438D4 00140834  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801438D8 00140838  7C 7D 1B 78 */	mr r29, r3
/* 801438DC 0014083C  A0 05 00 00 */	lhz r0, 0(r5)
/* 801438E0 00140840  38 A1 00 08 */	addi r5, r1, 8
/* 801438E4 00140844  B0 01 00 08 */	sth r0, 8(r1)
/* 801438E8 00140848  4B F3 92 91 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801438EC 0014084C  2C 1E 00 22 */	cmpwi r30, 0x22
/* 801438F0 00140850  41 82 00 64 */	beq lbl_80143954
/* 801438F4 00140854  40 80 00 10 */	bge lbl_80143904
/* 801438F8 00140858  2C 1E 00 21 */	cmpwi r30, 0x21
/* 801438FC 0014085C  40 80 00 14 */	bge lbl_80143910
/* 80143900 00140860  48 00 00 54 */	b lbl_80143954
lbl_80143904:
/* 80143904 00140864  2C 1E 00 24 */	cmpwi r30, 0x24
/* 80143908 00140868  40 80 00 4C */	bge lbl_80143954
/* 8014390C 0014086C  48 00 00 14 */	b lbl_80143920
lbl_80143910:
/* 80143910 00140870  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80143914 00140874  7F E4 FB 78 */	mr r4, r31
/* 80143918 00140878  4B FF 73 D9 */	bl Activate__15CBodyControllerFR13CStateManager
/* 8014391C 0014087C  48 00 00 38 */	b lbl_80143954
lbl_80143920:
/* 80143920 00140880  80 BD 00 04 */	lwz r5, 4(r29)
/* 80143924 00140884  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 80143928 00140888  54 A3 18 38 */	slwi r3, r5, 3
/* 8014392C 0014088C  C0 02 9B E0 */	lfs f0, lbl_805AB900@sda21(r2)
/* 80143930 00140890  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80143934 00140894  38 03 00 04 */	addi r0, r3, 4
/* 80143938 00140898  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8014393C 0014089C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80143940 001408A0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80143944 001408A4  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80143948 001408A8  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 8014394C 001408AC  90 1D 0D 8C */	stw r0, 0xd8c(r29)
/* 80143950 001408B0  D0 1D 0E 64 */	stfs f0, 0xe64(r29)
lbl_80143954:
/* 80143954 001408B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80143958 001408B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8014395C 001408BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80143960 001408C0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80143964 001408C4  7C 08 03 A6 */	mtlr r0
/* 80143968 001408C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8014396C 001408CC  4E 80 00 20 */	blr

.global Accept__9CFireFleaFR8IVisitor
Accept__9CFireFleaFR8IVisitor:
/* 80143970 001408D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80143974 001408D4  7C 08 02 A6 */	mflr r0
/* 80143978 001408D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014397C 001408DC  7C 60 1B 78 */	mr r0, r3
/* 80143980 001408E0  7C 83 23 78 */	mr r3, r4
/* 80143984 001408E4  81 84 00 00 */	lwz r12, 0(r4)
/* 80143988 001408E8  7C 04 03 78 */	mr r4, r0
/* 8014398C 001408EC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80143990 001408F0  7D 89 03 A6 */	mtctr r12
/* 80143994 001408F4  4E 80 04 21 */	bctrl
/* 80143998 001408F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014399C 001408FC  7C 08 03 A6 */	mtlr r0
/* 801439A0 00140900  38 21 00 10 */	addi r1, r1, 0x10
/* 801439A4 00140904  4E 80 00 20 */	blr

.global "__ct__9CFireFleaF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfof"
"__ct__9CFireFleaF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfof":
/* 801439A8 00140908  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801439AC 0014090C  7C 08 02 A6 */	mflr r0
/* 801439B0 00140910  90 01 00 64 */	stw r0, 0x64(r1)
/* 801439B4 00140914  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801439B8 00140918  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801439BC 0014091C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801439C0 00140920  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801439C4 00140924  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801439C8 00140928  A0 04 00 00 */	lhz r0, 0(r4)
/* 801439CC 0014092C  7D 5D 53 78 */	mr r29, r10
/* 801439D0 00140930  7C EB 3B 78 */	mr r11, r7
/* 801439D4 00140934  7C CC 33 78 */	mr r12, r6
/* 801439D8 00140938  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801439DC 0014093C  7D 0A 43 78 */	mr r10, r8
/* 801439E0 00140940  7C A6 2B 78 */	mr r6, r5
/* 801439E4 00140944  38 80 00 01 */	li r4, 1
/* 801439E8 00140948  93 A1 00 08 */	stw r29, 8(r1)
/* 801439EC 0014094C  38 E0 00 03 */	li r7, 3
/* 801439F0 00140950  FF E0 08 90 */	fmr f31, f1
/* 801439F4 00140954  38 00 00 00 */	li r0, 0
/* 801439F8 00140958  90 81 00 0C */	stw r4, 0xc(r1)
/* 801439FC 0014095C  7C 7F 1B 78 */	mr r31, r3
/* 80143A00 00140960  7D 88 63 78 */	mr r8, r12
/* 80143A04 00140964  38 A1 00 20 */	addi r5, r1, 0x20
/* 80143A08 00140968  90 81 00 10 */	stw r4, 0x10(r1)
/* 80143A0C 0014096C  38 80 00 0A */	li r4, 0xa
/* 80143A10 00140970  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80143A14 00140974  38 E0 00 00 */	li r7, 0
/* 80143A18 00140978  91 21 00 18 */	stw r9, 0x18(r1)
/* 80143A1C 0014097C  7D 69 5B 78 */	mr r9, r11
/* 80143A20 00140980  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80143A24 00140984  4B F3 9A 2D */	bl "__ct__10CPatternedFQ210CPatterned10ECharacter9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParameters17EKnockBackVariant"
/* 80143A28 00140988  3C 60 80 3E */	lis r3, lbl_803E1C88@ha
/* 80143A2C 0014098C  C0 22 9B CC */	lfs f1, lbl_805AB8EC@sda21(r2)
/* 80143A30 00140990  38 03 1C 88 */	addi r0, r3, lbl_803E1C88@l
/* 80143A34 00140994  38 80 00 00 */	li r4, 0
/* 80143A38 00140998  90 1F 00 00 */	stw r0, 0(r31)
/* 80143A3C 0014099C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80143A40 001409A0  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 80143A44 001409A4  38 00 00 00 */	li r0, 0
/* 80143A48 001409A8  D0 3F 05 68 */	stfs f1, 0x568(r31)
/* 80143A4C 001409AC  FC 40 08 90 */	fmr f2, f1
/* 80143A50 001409B0  38 7F 0D 8C */	addi r3, r31, 0xd8c
/* 80143A54 001409B4  38 A0 00 03 */	li r5, 3
/* 80143A58 001409B8  D3 FF 05 6C */	stfs f31, 0x56c(r31)
/* 80143A5C 001409BC  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80143A60 001409C0  C0 06 00 00 */	lfs f0, 0(r6)
/* 80143A64 001409C4  D0 1F 0D 74 */	stfs f0, 0xd74(r31)
/* 80143A68 001409C8  C0 06 00 04 */	lfs f0, 4(r6)
/* 80143A6C 001409CC  D0 1F 0D 78 */	stfs f0, 0xd78(r31)
/* 80143A70 001409D0  C0 06 00 08 */	lfs f0, 8(r6)
/* 80143A74 001409D4  D0 1F 0D 7C */	stfs f0, 0xd7c(r31)
/* 80143A78 001409D8  C0 06 00 00 */	lfs f0, 0(r6)
/* 80143A7C 001409DC  D0 1F 0D 80 */	stfs f0, 0xd80(r31)
/* 80143A80 001409E0  C0 06 00 04 */	lfs f0, 4(r6)
/* 80143A84 001409E4  D0 1F 0D 84 */	stfs f0, 0xd84(r31)
/* 80143A88 001409E8  C0 06 00 08 */	lfs f0, 8(r6)
/* 80143A8C 001409EC  D0 1F 0D 88 */	stfs f0, 0xd88(r31)
/* 80143A90 001409F0  80 DD 01 0C */	lwz r6, 0x10c(r29)
/* 80143A94 001409F4  48 08 53 01 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 80143A98 001409F8  7F E3 FB 78 */	mr r3, r31
/* 80143A9C 001409FC  4B F0 FE 21 */	bl GetMaterialFilter__6CActorCFv
/* 80143AA0 00140A00  80 AD 8B C0 */	lwz r5, lbl_805A7780@sda21(r13)
/* 80143AA4 00140A04  38 80 00 01 */	li r4, 1
/* 80143AA8 00140A08  83 C3 00 08 */	lwz r30, 8(r3)
/* 80143AAC 00140A0C  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 80143AB0 00140A10  38 60 00 00 */	li r3, 0
/* 80143AB4 00140A14  48 24 64 41 */	bl __shl2i
/* 80143AB8 00140A18  7F DE 1B 78 */	or r30, r30, r3
/* 80143ABC 00140A1C  7F E3 FB 78 */	mr r3, r31
/* 80143AC0 00140A20  7F BD 23 78 */	or r29, r29, r4
/* 80143AC4 00140A24  4B F0 FD F9 */	bl GetMaterialFilter__6CActorCFv
/* 80143AC8 00140A28  80 A3 00 00 */	lwz r5, 0(r3)
/* 80143ACC 00140A2C  38 00 00 03 */	li r0, 3
/* 80143AD0 00140A30  80 C3 00 04 */	lwz r6, 4(r3)
/* 80143AD4 00140A34  7F E3 FB 78 */	mr r3, r31
/* 80143AD8 00140A38  38 81 00 28 */	addi r4, r1, 0x28
/* 80143ADC 00140A3C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80143AE0 00140A40  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80143AE4 00140A44  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80143AE8 00140A48  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80143AEC 00140A4C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80143AF0 00140A50  4B F0 FD B1 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80143AF4 00140A54  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 80143AF8 00140A58  7F E3 FB 78 */	mr r3, r31
/* 80143AFC 00140A5C  80 0D A3 DC */	lwz r0, lbl_805A8F9C@sda21(r13)
/* 80143B00 00140A60  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80143B04 00140A64  90 04 02 1C */	stw r0, 0x21c(r4)
/* 80143B08 00140A68  80 8D A3 DC */	lwz r4, lbl_805A8F9C@sda21(r13)
/* 80143B0C 00140A6C  38 04 00 01 */	addi r0, r4, 1
/* 80143B10 00140A70  90 0D A3 DC */	stw r0, lbl_805A8F9C@sda21(r13)
/* 80143B14 00140A74  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80143B18 00140A78  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80143B1C 00140A7C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80143B20 00140A80  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80143B24 00140A84  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80143B28 00140A88  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80143B2C 00140A8C  7C 08 03 A6 */	mtlr r0
/* 80143B30 00140A90  38 21 00 60 */	addi r1, r1, 0x60
/* 80143B34 00140A94  4E 80 00 20 */	blr

.global Accept__Q29CFireFlea18CDeathCameraEffectFR8IVisitor
Accept__Q29CFireFlea18CDeathCameraEffectFR8IVisitor:
/* 80143B38 00140A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80143B3C 00140A9C  7C 08 02 A6 */	mflr r0
/* 80143B40 00140AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80143B44 00140AA4  7C 60 1B 78 */	mr r0, r3
/* 80143B48 00140AA8  7C 83 23 78 */	mr r3, r4
/* 80143B4C 00140AAC  81 84 00 00 */	lwz r12, 0(r4)
/* 80143B50 00140AB0  7C 04 03 78 */	mr r4, r0
/* 80143B54 00140AB4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80143B58 00140AB8  7D 89 03 A6 */	mtctr r12
/* 80143B5C 00140ABC  4E 80 04 21 */	bctrl
/* 80143B60 00140AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80143B64 00140AC4  7C 08 03 A6 */	mtlr r0
/* 80143B68 00140AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80143B6C 00140ACC  4E 80 00 20 */	blr

.global Think__Q29CFireFlea18CDeathCameraEffectFfR13CStateManager
Think__Q29CFireFlea18CDeathCameraEffectFfR13CStateManager:
/* 80143B70 00140AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80143B74 00140AD4  7C 08 02 A6 */	mflr r0
/* 80143B78 00140AD8  C0 22 9B D0 */	lfs f1, lbl_805AB8F0@sda21(r2)
/* 80143B7C 00140ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80143B80 00140AE0  38 61 00 08 */	addi r3, r1, 8
/* 80143B84 00140AE4  FC 40 08 90 */	fmr f2, f1
/* 80143B88 00140AE8  FC 60 08 90 */	fmr f3, f1
/* 80143B8C 00140AEC  FC 80 08 90 */	fmr f4, f1
/* 80143B90 00140AF0  48 21 F8 5D */	bl __ct__6CColorFffff
/* 80143B94 00140AF4  80 01 00 08 */	lwz r0, 8(r1)
/* 80143B98 00140AF8  90 0D A3 D8 */	stw r0, lbl_805A8F98@sda21(r13)
/* 80143B9C 00140AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80143BA0 00140B00  7C 08 03 A6 */	mtlr r0
/* 80143BA4 00140B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80143BA8 00140B08  4E 80 00 20 */	blr

.global PreThink__Q29CFireFlea18CDeathCameraEffectFfR13CStateManager
PreThink__Q29CFireFlea18CDeathCameraEffectFfR13CStateManager:
/* 80143BAC 00140B0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80143BB0 00140B10  7C 08 02 A6 */	mflr r0
/* 80143BB4 00140B14  90 01 00 44 */	stw r0, 0x44(r1)
/* 80143BB8 00140B18  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80143BBC 00140B1C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80143BC0 00140B20  7C 9E 23 78 */	mr r30, r4
/* 80143BC4 00140B24  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80143BC8 00140B28  7C 7D 1B 78 */	mr r29, r3
/* 80143BCC 00140B2C  93 81 00 30 */	stw r28, 0x30(r1)
/* 80143BD0 00140B30  3B 9E 0C 64 */	addi r28, r30, 0xc64
/* 80143BD4 00140B34  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80143BD8 00140B38  80 DD 00 38 */	lwz r6, 0x38(r29)
/* 80143BDC 00140B3C  80 9D 00 44 */	lwz r4, 0x44(r29)
/* 80143BE0 00140B40  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 80143BE4 00140B44  7C A3 32 14 */	add r5, r3, r6
/* 80143BE8 00140B48  7C 04 18 40 */	cmplw r4, r3
/* 80143BEC 00140B4C  80 FD 00 40 */	lwz r7, 0x40(r29)
/* 80143BF0 00140B50  7D 05 02 14 */	add r8, r5, r0
/* 80143BF4 00140B54  7F E8 3A 14 */	add r31, r8, r7
/* 80143BF8 00140B58  41 80 00 84 */	blt lbl_80143C7C
/* 80143BFC 00140B5C  7C 04 28 40 */	cmplw r4, r5
/* 80143C00 00140B60  41 81 00 7C */	bgt lbl_80143C7C
/* 80143C04 00140B64  3C 00 43 30 */	lis r0, 0x4330
/* 80143C08 00140B68  7C 63 20 50 */	subf r3, r3, r4
/* 80143C0C 00140B6C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80143C10 00140B70  38 61 00 18 */	addi r3, r1, 0x18
/* 80143C14 00140B74  C8 42 9B E8 */	lfd f2, lbl_805AB908@sda21(r2)
/* 80143C18 00140B78  38 8D A3 D4 */	addi r4, r13, lbl_805A8F94@sda21
/* 80143C1C 00140B7C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80143C20 00140B80  38 AD A3 D0 */	addi r5, r13, lbl_805A8F90@sda21
/* 80143C24 00140B84  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80143C28 00140B88  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80143C2C 00140B8C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80143C30 00140B90  90 01 00 28 */	stw r0, 0x28(r1)
/* 80143C34 00140B94  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80143C38 00140B98  EC 00 10 28 */	fsubs f0, f0, f2
/* 80143C3C 00140B9C  EC 21 00 24 */	fdivs f1, f1, f0
/* 80143C40 00140BA0  48 21 F6 6D */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80143C44 00140BA4  38 61 00 1C */	addi r3, r1, 0x1c
/* 80143C48 00140BA8  38 A1 00 18 */	addi r5, r1, 0x18
/* 80143C4C 00140BAC  38 8D A3 D8 */	addi r4, r13, lbl_805A8F98@sda21
/* 80143C50 00140BB0  48 21 F4 61 */	bl Add__6CColorFRC6CColorRC6CColor
/* 80143C54 00140BB4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80143C58 00140BB8  7F 83 E3 78 */	mr r3, r28
/* 80143C5C 00140BBC  C0 22 9B D0 */	lfs f1, lbl_805AB8F0@sda21(r2)
/* 80143C60 00140BC0  38 80 00 05 */	li r4, 5
/* 80143C64 00140BC4  90 0D A3 D8 */	stw r0, lbl_805A8F98@sda21(r13)
/* 80143C68 00140BC8  38 A0 00 00 */	li r5, 0
/* 80143C6C 00140BCC  38 CD A3 D8 */	addi r6, r13, lbl_805A8F98@sda21
/* 80143C70 00140BD0  38 E0 FF FF */	li r7, -1
/* 80143C74 00140BD4  4B FA 97 2D */	bl SetFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapefRC6CColorUi
/* 80143C78 00140BD8  48 00 00 B8 */	b lbl_80143D30
lbl_80143C7C:
/* 80143C7C 00140BDC  7C 04 40 40 */	cmplw r4, r8
/* 80143C80 00140BE0  41 80 00 84 */	blt lbl_80143D04
/* 80143C84 00140BE4  7C 04 F8 40 */	cmplw r4, r31
/* 80143C88 00140BE8  41 81 00 7C */	bgt lbl_80143D04
/* 80143C8C 00140BEC  3C 00 43 30 */	lis r0, 0x4330
/* 80143C90 00140BF0  7C 68 20 50 */	subf r3, r8, r4
/* 80143C94 00140BF4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80143C98 00140BF8  38 61 00 10 */	addi r3, r1, 0x10
/* 80143C9C 00140BFC  C8 42 9B E8 */	lfd f2, lbl_805AB908@sda21(r2)
/* 80143CA0 00140C00  38 8D A3 D0 */	addi r4, r13, lbl_805A8F90@sda21
/* 80143CA4 00140C04  90 01 00 28 */	stw r0, 0x28(r1)
/* 80143CA8 00140C08  38 AD A3 D4 */	addi r5, r13, lbl_805A8F94@sda21
/* 80143CAC 00140C0C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80143CB0 00140C10  90 E1 00 24 */	stw r7, 0x24(r1)
/* 80143CB4 00140C14  EC 20 10 28 */	fsubs f1, f0, f2
/* 80143CB8 00140C18  90 01 00 20 */	stw r0, 0x20(r1)
/* 80143CBC 00140C1C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80143CC0 00140C20  EC 00 10 28 */	fsubs f0, f0, f2
/* 80143CC4 00140C24  EC 21 00 24 */	fdivs f1, f1, f0
/* 80143CC8 00140C28  48 21 F5 E5 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80143CCC 00140C2C  38 61 00 14 */	addi r3, r1, 0x14
/* 80143CD0 00140C30  38 A1 00 10 */	addi r5, r1, 0x10
/* 80143CD4 00140C34  38 8D A3 D8 */	addi r4, r13, lbl_805A8F98@sda21
/* 80143CD8 00140C38  48 21 F3 D9 */	bl Add__6CColorFRC6CColorRC6CColor
/* 80143CDC 00140C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80143CE0 00140C40  7F 83 E3 78 */	mr r3, r28
/* 80143CE4 00140C44  C0 22 9B D0 */	lfs f1, lbl_805AB8F0@sda21(r2)
/* 80143CE8 00140C48  38 80 00 05 */	li r4, 5
/* 80143CEC 00140C4C  90 0D A3 D8 */	stw r0, lbl_805A8F98@sda21(r13)
/* 80143CF0 00140C50  38 A0 00 00 */	li r5, 0
/* 80143CF4 00140C54  38 CD A3 D8 */	addi r6, r13, lbl_805A8F98@sda21
/* 80143CF8 00140C58  38 E0 FF FF */	li r7, -1
/* 80143CFC 00140C5C  4B FA 96 A5 */	bl SetFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapefRC6CColorUi
/* 80143D00 00140C60  48 00 00 30 */	b lbl_80143D30
lbl_80143D04:
/* 80143D04 00140C64  7C 04 28 40 */	cmplw r4, r5
/* 80143D08 00140C68  41 80 00 28 */	blt lbl_80143D30
/* 80143D0C 00140C6C  80 0D A3 D0 */	lwz r0, lbl_805A8F90@sda21(r13)
/* 80143D10 00140C70  7F 83 E3 78 */	mr r3, r28
/* 80143D14 00140C74  C0 22 9B D0 */	lfs f1, lbl_805AB8F0@sda21(r2)
/* 80143D18 00140C78  38 80 00 05 */	li r4, 5
/* 80143D1C 00140C7C  90 0D A3 D8 */	stw r0, lbl_805A8F98@sda21(r13)
/* 80143D20 00140C80  38 A0 00 00 */	li r5, 0
/* 80143D24 00140C84  38 CD A3 D8 */	addi r6, r13, lbl_805A8F98@sda21
/* 80143D28 00140C88  38 E0 FF FF */	li r7, -1
/* 80143D2C 00140C8C  4B FA 96 75 */	bl SetFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapefRC6CColorUi
lbl_80143D30:
/* 80143D30 00140C90  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 80143D34 00140C94  7C 03 F8 40 */	cmplw r3, r31
/* 80143D38 00140C98  40 82 00 34 */	bne lbl_80143D6C
/* 80143D3C 00140C9C  C0 22 9B D0 */	lfs f1, lbl_805AB8F0@sda21(r2)
/* 80143D40 00140CA0  7F 83 E3 78 */	mr r3, r28
/* 80143D44 00140CA4  4B FA 96 25 */	bl DisableFilter__17CCameraFilterPassFf
/* 80143D48 00140CA8  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80143D4C 00140CAC  7F C3 F3 78 */	mr r3, r30
/* 80143D50 00140CB0  38 81 00 0C */	addi r4, r1, 0xc
/* 80143D54 00140CB4  B0 01 00 08 */	sth r0, 8(r1)
/* 80143D58 00140CB8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80143D5C 00140CBC  4B F0 85 11 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 80143D60 00140CC0  38 00 00 00 */	li r0, 0
/* 80143D64 00140CC4  90 1D 00 44 */	stw r0, 0x44(r29)
/* 80143D68 00140CC8  48 00 00 0C */	b lbl_80143D74
lbl_80143D6C:
/* 80143D6C 00140CCC  38 03 00 01 */	addi r0, r3, 1
/* 80143D70 00140CD0  90 1D 00 44 */	stw r0, 0x44(r29)
lbl_80143D74:
/* 80143D74 00140CD4  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 80143D78 00140CD8  7F C4 F3 78 */	mr r4, r30
/* 80143D7C 00140CDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80143D80 00140CE0  4B F4 D7 D9 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80143D84 00140CE4  2C 03 00 03 */	cmpwi r3, 3
/* 80143D88 00140CE8  41 82 00 10 */	beq lbl_80143D98
/* 80143D8C 00140CEC  C0 22 9B D0 */	lfs f1, lbl_805AB8F0@sda21(r2)
/* 80143D90 00140CF0  7F 83 E3 78 */	mr r3, r28
/* 80143D94 00140CF4  4B FA 95 D5 */	bl DisableFilter__17CCameraFilterPassFf
lbl_80143D98:
/* 80143D98 00140CF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80143D9C 00140CFC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80143DA0 00140D00  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80143DA4 00140D04  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80143DA8 00140D08  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80143DAC 00140D0C  7C 08 03 A6 */	mtlr r0
/* 80143DB0 00140D10  38 21 00 40 */	addi r1, r1, 0x40
/* 80143DB4 00140D14  4E 80 00 20 */	blr

.global "__ct__Q29CFireFlea18CDeathCameraEffectF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"__ct__Q29CFireFlea18CDeathCameraEffectF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 80143DB8 00140D18  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80143DBC 00140D1C  7C 08 02 A6 */	mflr r0
/* 80143DC0 00140D20  3C E0 80 57 */	lis r7, NullConnectionList__7CEntity@ha
/* 80143DC4 00140D24  90 01 00 54 */	stw r0, 0x54(r1)
/* 80143DC8 00140D28  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80143DCC 00140D2C  7C 7F 1B 78 */	mr r31, r3
/* 80143DD0 00140D30  38 61 00 24 */	addi r3, r1, 0x24
/* 80143DD4 00140D34  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80143DD8 00140D38  7C DE 33 78 */	mr r30, r6
/* 80143DDC 00140D3C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80143DE0 00140D40  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80143DE4 00140D44  7C 9D 23 78 */	mr r29, r4
/* 80143DE8 00140D48  38 81 00 20 */	addi r4, r1, 0x20
/* 80143DEC 00140D4C  80 05 00 00 */	lwz r0, 0(r5)
/* 80143DF0 00140D50  38 A7 D4 10 */	addi r5, r7, NullConnectionList__7CEntity@l
/* 80143DF4 00140D54  81 0D A3 88 */	lwz r8, kInvalidEditorId@sda21(r13)
/* 80143DF8 00140D58  90 01 00 20 */	stw r0, 0x20(r1)
/* 80143DFC 00140D5C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80143E00 00140D60  4B F0 D6 85 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 80143E04 00140D64  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80143E08 00140D68  7F E3 FB 78 */	mr r3, r31
/* 80143E0C 00140D6C  7F C7 F3 78 */	mr r7, r30
/* 80143E10 00140D70  38 81 00 08 */	addi r4, r1, 8
/* 80143E14 00140D74  B0 01 00 08 */	sth r0, 8(r1)
/* 80143E18 00140D78  38 A1 00 24 */	addi r5, r1, 0x24
/* 80143E1C 00140D7C  38 C0 00 01 */	li r6, 1
/* 80143E20 00140D80  4B F0 D5 05 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80143E24 00140D84  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80143E28 00140D88  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80143E2C 00140D8C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80143E30 00140D90  90 61 00 10 */	stw r3, 0x10(r1)
/* 80143E34 00140D94  7C 64 1B 78 */	mr r4, r3
/* 80143E38 00140D98  7C 03 02 14 */	add r0, r3, r0
/* 80143E3C 00140D9C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80143E40 00140DA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80143E44 00140DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80143E48 00140DA8  48 00 00 08 */	b lbl_80143E50
lbl_80143E4C:
/* 80143E4C 00140DAC  38 84 00 0C */	addi r4, r4, 0xc
lbl_80143E50:
/* 80143E50 00140DB0  7C 04 00 40 */	cmplw r4, r0
/* 80143E54 00140DB4  40 82 FF F8 */	bne lbl_80143E4C
/* 80143E58 00140DB8  28 03 00 00 */	cmplwi r3, 0
/* 80143E5C 00140DBC  41 82 00 08 */	beq lbl_80143E64
/* 80143E60 00140DC0  48 1D 1A D1 */	bl Free__7CMemoryFPCv
lbl_80143E64:
/* 80143E64 00140DC4  3C 80 80 3E */	lis r4, lbl_803E1F54@ha
/* 80143E68 00140DC8  38 60 00 0D */	li r3, 0xd
/* 80143E6C 00140DCC  38 04 1F 54 */	addi r0, r4, lbl_803E1F54@l
/* 80143E70 00140DD0  38 C0 00 05 */	li r6, 5
/* 80143E74 00140DD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80143E78 00140DD8  38 A0 00 3C */	li r5, 0x3c
/* 80143E7C 00140DDC  38 80 00 BE */	li r4, 0xbe
/* 80143E80 00140DE0  38 00 00 00 */	li r0, 0
/* 80143E84 00140DE4  90 7F 00 34 */	stw r3, 0x34(r31)
/* 80143E88 00140DE8  7F E3 FB 78 */	mr r3, r31
/* 80143E8C 00140DEC  90 DF 00 38 */	stw r6, 0x38(r31)
/* 80143E90 00140DF0  90 BF 00 3C */	stw r5, 0x3c(r31)
/* 80143E94 00140DF4  90 9F 00 40 */	stw r4, 0x40(r31)
/* 80143E98 00140DF8  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80143E9C 00140DFC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80143EA0 00140E00  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80143EA4 00140E04  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80143EA8 00140E08  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80143EAC 00140E0C  7C 08 03 A6 */	mtlr r0
/* 80143EB0 00140E10  38 21 00 50 */	addi r1, r1, 0x50
/* 80143EB4 00140E14  4E 80 00 20 */	blr

.global __dt__Q29CFireFlea18CDeathCameraEffectFv
__dt__Q29CFireFlea18CDeathCameraEffectFv:
/* 80143EB8 00140E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80143EBC 00140E1C  7C 08 02 A6 */	mflr r0
/* 80143EC0 00140E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80143EC4 00140E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80143EC8 00140E28  7C 9F 23 78 */	mr r31, r4
/* 80143ECC 00140E2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80143ED0 00140E30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80143ED4 00140E34  41 82 00 28 */	beq lbl_80143EFC
/* 80143ED8 00140E38  3C A0 80 3E */	lis r5, lbl_803E1F54@ha
/* 80143EDC 00140E3C  38 80 00 00 */	li r4, 0
/* 80143EE0 00140E40  38 05 1F 54 */	addi r0, r5, lbl_803E1F54@l
/* 80143EE4 00140E44  90 1E 00 00 */	stw r0, 0(r30)
/* 80143EE8 00140E48  4B F0 D3 8D */	bl __dt__7CEntityFv
/* 80143EEC 00140E4C  7F E0 07 35 */	extsh. r0, r31
/* 80143EF0 00140E50  40 81 00 0C */	ble lbl_80143EFC
/* 80143EF4 00140E54  7F C3 F3 78 */	mr r3, r30
/* 80143EF8 00140E58  48 1D 1A 39 */	bl Free__7CMemoryFPCv
lbl_80143EFC:
/* 80143EFC 00140E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80143F00 00140E60  7F C3 F3 78 */	mr r3, r30
/* 80143F04 00140E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80143F08 00140E68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80143F0C 00140E6C  7C 08 03 A6 */	mtlr r0
/* 80143F10 00140E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80143F14 00140E74  4E 80 00 20 */	blr

.global __sinit_CFireFlea_cpp
__sinit_CFireFlea_cpp:
/* 80143F18 00140E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80143F1C 00140E7C  7C 08 02 A6 */	mflr r0
/* 80143F20 00140E80  C0 22 9B CC */	lfs f1, lbl_805AB8EC@sda21(r2)
/* 80143F24 00140E84  38 6D A3 D0 */	addi r3, r13, lbl_805A8F90@sda21
/* 80143F28 00140E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80143F2C 00140E8C  FC 40 08 90 */	fmr f2, f1
/* 80143F30 00140E90  C0 62 9B C0 */	lfs f3, lbl_805AB8E0@sda21(r2)
/* 80143F34 00140E94  FC 80 08 90 */	fmr f4, f1
/* 80143F38 00140E98  48 21 F4 B5 */	bl __ct__6CColorFffff
/* 80143F3C 00140E9C  C0 42 9B D0 */	lfs f2, lbl_805AB8F0@sda21(r2)
/* 80143F40 00140EA0  38 6D A3 D4 */	addi r3, r13, lbl_805A8F94@sda21
/* 80143F44 00140EA4  C0 22 9B CC */	lfs f1, lbl_805AB8EC@sda21(r2)
/* 80143F48 00140EA8  FC 60 10 90 */	fmr f3, f2
/* 80143F4C 00140EAC  FC 80 10 90 */	fmr f4, f2
/* 80143F50 00140EB0  48 21 F4 9D */	bl __ct__6CColorFffff
/* 80143F54 00140EB4  C0 22 9B D0 */	lfs f1, lbl_805AB8F0@sda21(r2)
/* 80143F58 00140EB8  38 61 00 08 */	addi r3, r1, 8
/* 80143F5C 00140EBC  FC 40 08 90 */	fmr f2, f1
/* 80143F60 00140EC0  FC 60 08 90 */	fmr f3, f1
/* 80143F64 00140EC4  FC 80 08 90 */	fmr f4, f1
/* 80143F68 00140EC8  48 21 F4 85 */	bl __ct__6CColorFffff
/* 80143F6C 00140ECC  80 01 00 08 */	lwz r0, 8(r1)
/* 80143F70 00140ED0  90 0D A3 D8 */	stw r0, lbl_805A8F98@sda21(r13)
/* 80143F74 00140ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80143F78 00140ED8  7C 08 03 A6 */	mtlr r0
/* 80143F7C 00140EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80143F80 00140EE0  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AB8E0
lbl_805AB8E0:
	# ROM: 0x3F8180
	.float 0.5

.global lbl_805AB8E4
lbl_805AB8E4:
	# ROM: 0x3F8184
	.4byte 0x41C80000

.global lbl_805AB8E8
lbl_805AB8E8:
	# ROM: 0x3F8188
	.float 5.0

.global lbl_805AB8EC
lbl_805AB8EC:
	# ROM: 0x3F818C
	.float 1.0

.global lbl_805AB8F0
lbl_805AB8F0:
	# ROM: 0x3F8190
	.4byte 0

.global lbl_805AB8F4
lbl_805AB8F4:
	# ROM: 0x3F8194
	.float 2.0

.global lbl_805AB8F8
lbl_805AB8F8:
	# ROM: 0x3F8198
	.float 1.0E-4

.global lbl_805AB8FC
lbl_805AB8FC:
	# ROM: 0x3F819C
	.4byte 0x41200000

.global lbl_805AB900
lbl_805AB900:
	# ROM: 0x3F81A0
	.4byte 0x42480000
	.4byte 0

.global lbl_805AB908
lbl_805AB908:
	# ROM: 0x3F81A8
	.4byte 0x43300000
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D0098
lbl_803D0098:
	# ROM: 0x3CD098
	.4byte 0x003F3F28
	.4byte 0x3F3F2900

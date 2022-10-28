.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CParasite_cpp

.section .data
.balign 8

.global lbl_803E2FF8
lbl_803E2FF8:
	# ROM: 0x3DFFF8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryLoopReaction__10CPatternedFR13CStateManageri

.global lbl_803E3004
lbl_803E3004:
	# ROM: 0x3E0004
	.4byte 0
	.4byte 0
	.4byte __dt__9CParasiteFv
	.4byte Accept__9CParasiteFR8IVisitor
	.4byte PreThink__9CParasiteFfR13CStateManager
	.4byte Think__9CParasiteFfR13CStateManager
	.4byte AcceptScriptMsg__9CParasiteF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__9CParasiteCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__9CParasiteCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__9CParasiteFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__9CParasiteCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__11CWallWalkerCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__9CParasiteFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__9CParasiteFRC9CVector3fR13CStateManager
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__9CParasiteFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__9CParasiteFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__9CParasiteFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__9CParasiteFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__9CParasiteFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__9CParasiteFR13CStateManager9EStateMsgf
	.4byte Generate__9CParasiteFR13CStateManager9EStateMsgf
	.4byte Deactivate__9CParasiteFR13CStateManager9EStateMsgf
	.4byte Attack__9CParasiteFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__9CParasiteFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__9CParasiteFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__9CParasiteFR13CStateManager9EStateMsgf
	.4byte Jump__9CParasiteFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__9CParasiteFR13CStateManager9EStateMsgf
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
	.4byte Delay__10CPatternedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__9CParasiteFR13CStateManagerf
	.4byte ShouldAttack__9CParasiteFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__9CParasiteFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__9CParasiteFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__9CParasiteFR13CStateManagerf
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
	.4byte AttackOver__9CParasiteFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__3CAiFR13CStateManagerf
	.4byte ShotAt__9CParasiteFR13CStateManagerf
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
	.4byte MassiveDeath__9CParasiteFR13CStateManager
	.4byte MassiveFrozenDeath__9CParasiteFR13CStateManager
	.4byte Burn__10CPatternedFff
	.4byte Shock__10CPatternedFff
	.4byte ThinkAboutMove__9CParasiteFf
	.4byte GetSearchPath__10CPatternedFv
	.4byte GetContactDamage__9CParasiteCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__9CParasiteCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte UpdateWalkerAnimation__9CParasiteFR13CStateManagerf
	.4byte 0

.section .sbss
.balign 8

# CParasite
.global lbl_805A8FB0
lbl_805A8FB0:
	.skip 0x4
.global lbl_805A8FB4
lbl_805A8FB4:
	.skip 0x4
.global lbl_805A8FB8
lbl_805A8FB8:
	.skip 0x4
.global lbl_805A8FBC
lbl_805A8FBC:
	.skip 0x4
.global lbl_805A8FC0
lbl_805A8FC0:
	.skip 0x4
.global lbl_805A8FC4
lbl_805A8FC4:
	.skip 0x4
.global lbl_805A8FC8
lbl_805A8FC8:
	.skip 0x1
.global lbl_805A8FC9
lbl_805A8FC9:
	.skip 0x1
.global lbl_805A8FCA
lbl_805A8FCA:
	.skip 0x6
.global lbl_805A8FD0
lbl_805A8FD0:
	.skip 0x4
.global lbl_805A8FD4
lbl_805A8FD4:
	.skip 0x4
.global lbl_805A8FD8
lbl_805A8FD8:
	.skip 0x8

.section .sdata
.balign 8

.global lbl_805A7850
lbl_805A7850:
	# ROM: 0x3F51F0
	.4byte 0x00000013

.global lbl_805A7854
lbl_805A7854:
	# ROM: 0x3F51F4
	.4byte 0x00000013

.global lbl_805A7858
lbl_805A7858:
	# ROM: 0x3F51F8
	.4byte 0x00000020

.global lbl_805A785C
lbl_805A785C:
	# ROM: 0x3F51FC
	.4byte 0x00000021

.global lbl_805A7860
lbl_805A7860:
	# ROM: 0x3F5200
	.4byte 0x00000021
	.4byte 0

.section .bss
.balign 8
.lcomm lbl_8046C770, 0x18, 4
.lcomm lbl_8046C788, 0x18, 4

.section .text, "ax"

.global __dt__9CParasiteFv
__dt__9CParasiteFv:
/* 80156980 001538E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80156984 001538E4  7C 08 02 A6 */	mflr r0
/* 80156988 001538E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015698C 001538EC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80156990 001538F0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80156994 001538F4  7C 9E 23 78 */	mr r30, r4
/* 80156998 001538F8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8015699C 001538FC  7C 7D 1B 79 */	or. r29, r3, r3
/* 801569A0 00153900  41 82 00 B4 */	beq lbl_80156A54
/* 801569A4 00153904  3C 60 80 3E */	lis r3, lbl_803E3004@ha
/* 801569A8 00153908  34 1D 06 24 */	addic. r0, r29, 0x624
/* 801569AC 0015390C  38 03 30 04 */	addi r0, r3, lbl_803E3004@l
/* 801569B0 00153910  90 1D 00 00 */	stw r0, 0(r29)
/* 801569B4 00153914  41 82 00 28 */	beq lbl_801569DC
/* 801569B8 00153918  83 FD 06 24 */	lwz r31, 0x624(r29)
/* 801569BC 0015391C  28 1F 00 00 */	cmplwi r31, 0
/* 801569C0 00153920  41 82 00 1C */	beq lbl_801569DC
/* 801569C4 00153924  41 82 00 10 */	beq lbl_801569D4
/* 801569C8 00153928  7F E3 FB 78 */	mr r3, r31
/* 801569CC 0015392C  38 80 00 00 */	li r4, 0
/* 801569D0 00153930  48 1E A4 71 */	bl __dt__6CTokenFv
lbl_801569D4:
/* 801569D4 00153934  7F E3 FB 78 */	mr r3, r31
/* 801569D8 00153938  48 1B EF 59 */	bl Free__7CMemoryFPCv
lbl_801569DC:
/* 801569DC 0015393C  34 1D 06 20 */	addic. r0, r29, 0x620
/* 801569E0 00153940  41 82 00 10 */	beq lbl_801569F0
/* 801569E4 00153944  80 7D 06 20 */	lwz r3, 0x620(r29)
/* 801569E8 00153948  38 80 00 01 */	li r4, 1
/* 801569EC 0015394C  48 05 0E F1 */	bl __dt__22CCollisionActorManagerFv
lbl_801569F0:
/* 801569F0 00153950  34 1D 05 D8 */	addic. r0, r29, 0x5d8
/* 801569F4 00153954  41 82 00 44 */	beq lbl_80156A38
/* 801569F8 00153958  80 1D 05 DC */	lwz r0, 0x5dc(r29)
/* 801569FC 0015395C  80 7D 05 E4 */	lwz r3, 0x5e4(r29)
/* 80156A00 00153960  54 00 20 36 */	slwi r0, r0, 4
/* 80156A04 00153964  7C 03 02 14 */	add r0, r3, r0
/* 80156A08 00153968  90 61 00 0C */	stw r3, 0xc(r1)
/* 80156A0C 0015396C  7C 64 1B 78 */	mr r4, r3
/* 80156A10 00153970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156A14 00153974  90 01 00 10 */	stw r0, 0x10(r1)
/* 80156A18 00153978  90 61 00 08 */	stw r3, 8(r1)
/* 80156A1C 0015397C  48 00 00 08 */	b lbl_80156A24
lbl_80156A20:
/* 80156A20 00153980  38 84 00 10 */	addi r4, r4, 0x10
lbl_80156A24:
/* 80156A24 00153984  7C 04 00 40 */	cmplw r4, r0
/* 80156A28 00153988  40 82 FF F8 */	bne lbl_80156A20
/* 80156A2C 0015398C  28 03 00 00 */	cmplwi r3, 0
/* 80156A30 00153990  41 82 00 08 */	beq lbl_80156A38
/* 80156A34 00153994  48 1B EE FD */	bl Free__7CMemoryFPCv
lbl_80156A38:
/* 80156A38 00153998  7F A3 EB 78 */	mr r3, r29
/* 80156A3C 0015399C  38 80 00 00 */	li r4, 0
/* 80156A40 001539A0  48 00 00 35 */	bl __dt__11CWallWalkerFv
/* 80156A44 001539A4  7F C0 07 35 */	extsh. r0, r30
/* 80156A48 001539A8  40 81 00 0C */	ble lbl_80156A54
/* 80156A4C 001539AC  7F A3 EB 78 */	mr r3, r29
/* 80156A50 001539B0  48 1B EE E1 */	bl Free__7CMemoryFPCv
lbl_80156A54:
/* 80156A54 001539B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80156A58 001539B8  7F A3 EB 78 */	mr r3, r29
/* 80156A5C 001539BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80156A60 001539C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80156A64 001539C4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80156A68 001539C8  7C 08 03 A6 */	mtlr r0
/* 80156A6C 001539CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80156A70 001539D0  4E 80 00 20 */	blr

.global __dt__11CWallWalkerFv
__dt__11CWallWalkerFv:
/* 80156A74 001539D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80156A78 001539D8  7C 08 02 A6 */	mflr r0
/* 80156A7C 001539DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156A80 001539E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80156A84 001539E4  7C 9F 23 78 */	mr r31, r4
/* 80156A88 001539E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80156A8C 001539EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80156A90 001539F0  41 82 00 54 */	beq lbl_80156AE4
/* 80156A94 001539F4  3C 60 80 3F */	lis r3, lbl_803EA0F0@ha
/* 80156A98 001539F8  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80156A9C 001539FC  38 03 A0 F0 */	addi r0, r3, lbl_803EA0F0@l
/* 80156AA0 00153A00  90 1E 00 00 */	stw r0, 0(r30)
/* 80156AA4 00153A04  41 82 00 24 */	beq lbl_80156AC8
/* 80156AA8 00153A08  3C 60 80 3F */	lis r3, __vt__17CCollidableSphere@ha
/* 80156AAC 00153A0C  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80156AB0 00153A10  38 03 CA F8 */	addi r0, r3, __vt__17CCollidableSphere@l
/* 80156AB4 00153A14  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80156AB8 00153A18  41 82 00 10 */	beq lbl_80156AC8
/* 80156ABC 00153A1C  3C 60 80 3E */	lis r3, __vt__19CCollisionPrimitive@ha
/* 80156AC0 00153A20  38 03 97 E4 */	addi r0, r3, __vt__19CCollisionPrimitive@l
/* 80156AC4 00153A24  90 1E 05 90 */	stw r0, 0x590(r30)
lbl_80156AC8:
/* 80156AC8 00153A28  7F C3 F3 78 */	mr r3, r30
/* 80156ACC 00153A2C  38 80 00 00 */	li r4, 0
/* 80156AD0 00153A30  4B F2 0A A1 */	bl __dt__10CPatternedFv
/* 80156AD4 00153A34  7F E0 07 35 */	extsh. r0, r31
/* 80156AD8 00153A38  40 81 00 0C */	ble lbl_80156AE4
/* 80156ADC 00153A3C  7F C3 F3 78 */	mr r3, r30
/* 80156AE0 00153A40  48 1B EE 51 */	bl Free__7CMemoryFPCv
lbl_80156AE4:
/* 80156AE4 00153A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80156AE8 00153A48  7F C3 F3 78 */	mr r3, r30
/* 80156AEC 00153A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80156AF0 00153A50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80156AF4 00153A54  7C 08 03 A6 */	mtlr r0
/* 80156AF8 00153A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80156AFC 00153A5C  4E 80 00 20 */	blr

.global IsOnGround__9CParasiteCFv
IsOnGround__9CParasiteCFv:
/* 80156B00 00153A60  88 03 07 42 */	lbz r0, 0x742(r3)
/* 80156B04 00153A64  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 80156B08 00153A68  4E 80 00 20 */	blr

.global MassiveFrozenDeath__9CParasiteFR13CStateManager
MassiveFrozenDeath__9CParasiteFR13CStateManager:
/* 80156B0C 00153A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80156B10 00153A70  7C 08 02 A6 */	mflr r0
/* 80156B14 00153A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156B18 00153A78  4B F2 40 1D */	bl MassiveFrozenDeath__10CPatternedFR13CStateManager
/* 80156B1C 00153A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80156B20 00153A80  7C 08 03 A6 */	mtlr r0
/* 80156B24 00153A84  38 21 00 10 */	addi r1, r1, 0x10
/* 80156B28 00153A88  4E 80 00 20 */	blr

.global MassiveDeath__9CParasiteFR13CStateManager
MassiveDeath__9CParasiteFR13CStateManager:
/* 80156B2C 00153A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80156B30 00153A90  7C 08 02 A6 */	mflr r0
/* 80156B34 00153A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156B38 00153A98  4B F2 41 B1 */	bl MassiveDeath__10CPatternedFR13CStateManager
/* 80156B3C 00153A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80156B40 00153AA0  7C 08 03 A6 */	mtlr r0
/* 80156B44 00153AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80156B48 00153AA8  4E 80 00 20 */	blr

.global UpdateCollisionActors__9CParasiteFR13CStateManager
UpdateCollisionActors__9CParasiteFR13CStateManager:
/* 80156B4C 00153AAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80156B50 00153AB0  7C 08 02 A6 */	mflr r0
/* 80156B54 00153AB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80156B58 00153AB8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80156B5C 00153ABC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80156B60 00153AC0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80156B64 00153AC4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80156B68 00153AC8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80156B6C 00153ACC  7C 7D 1B 78 */	mr r29, r3
/* 80156B70 00153AD0  7C 9E 23 78 */	mr r30, r4
/* 80156B74 00153AD4  80 63 06 20 */	lwz r3, 0x620(r3)
/* 80156B78 00153AD8  38 A0 00 00 */	li r5, 0
/* 80156B7C 00153ADC  48 05 08 D5 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 80156B80 00153AE0  88 1D 07 43 */	lbz r0, 0x743(r29)
/* 80156B84 00153AE4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80156B88 00153AE8  40 82 00 D8 */	bne lbl_80156C60
/* 80156B8C 00153AEC  C3 E2 9E 50 */	lfs f31, lbl_805ABB70@sda21(r2)
/* 80156B90 00153AF0  3B E0 00 00 */	li r31, 0
/* 80156B94 00153AF4  48 00 00 60 */	b lbl_80156BF4
lbl_80156B98:
/* 80156B98 00153AF8  80 7D 06 20 */	lwz r3, 0x620(r29)
/* 80156B9C 00153AFC  7F E4 FB 78 */	mr r4, r31
/* 80156BA0 00153B00  48 05 06 99 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80156BA4 00153B04  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 80156BA8 00153B08  7F C3 F3 78 */	mr r3, r30
/* 80156BAC 00153B0C  38 81 00 08 */	addi r4, r1, 8
/* 80156BB0 00153B10  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80156BB4 00153B14  B0 01 00 08 */	sth r0, 8(r1)
/* 80156BB8 00153B18  4B EF 59 BD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80156BBC 00153B1C  7C 64 1B 78 */	mr r4, r3
/* 80156BC0 00153B20  38 61 00 10 */	addi r3, r1, 0x10
/* 80156BC4 00153B24  4B F5 87 89 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80156BC8 00153B28  80 63 00 04 */	lwz r3, 4(r3)
/* 80156BCC 00153B2C  28 03 00 00 */	cmplwi r3, 0
/* 80156BD0 00153B30  41 82 00 20 */	beq lbl_80156BF0
/* 80156BD4 00153B34  81 83 00 00 */	lwz r12, 0(r3)
/* 80156BD8 00153B38  7F C4 F3 78 */	mr r4, r30
/* 80156BDC 00153B3C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80156BE0 00153B40  7D 89 03 A6 */	mtctr r12
/* 80156BE4 00153B44  4E 80 04 21 */	bctrl
/* 80156BE8 00153B48  C0 03 00 00 */	lfs f0, 0(r3)
/* 80156BEC 00153B4C  EF FF 00 2A */	fadds f31, f31, f0
lbl_80156BF0:
/* 80156BF0 00153B50  3B FF 00 01 */	addi r31, r31, 1
lbl_80156BF4:
/* 80156BF4 00153B54  80 7D 06 20 */	lwz r3, 0x620(r29)
/* 80156BF8 00153B58  48 05 06 51 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80156BFC 00153B5C  7C 1F 18 40 */	cmplw r31, r3
/* 80156C00 00153B60  41 80 FF 98 */	blt lbl_80156B98
/* 80156C04 00153B64  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80156C08 00153B68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80156C0C 00153B6C  4C 40 13 82 */	cror 2, 0, 2
/* 80156C10 00153B70  40 82 00 50 */	bne lbl_80156C60
/* 80156C14 00153B74  88 1D 07 43 */	lbz r0, 0x743(r29)
/* 80156C18 00153B78  38 60 00 01 */	li r3, 1
/* 80156C1C 00153B7C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80156C20 00153B80  7F A3 EB 78 */	mr r3, r29
/* 80156C24 00153B84  98 1D 07 43 */	stb r0, 0x743(r29)
/* 80156C28 00153B88  7F C5 F3 78 */	mr r5, r30
/* 80156C2C 00153B8C  38 80 00 13 */	li r4, 0x13
/* 80156C30 00153B90  4B EF D7 21 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80156C34 00153B94  7F A3 EB 78 */	mr r3, r29
/* 80156C38 00153B98  7F C5 F3 78 */	mr r5, r30
/* 80156C3C 00153B9C  38 80 00 12 */	li r4, 0x12
/* 80156C40 00153BA0  4B EF D3 41 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80156C44 00153BA4  7F A3 EB 78 */	mr r3, r29
/* 80156C48 00153BA8  7F C4 F3 78 */	mr r4, r30
/* 80156C4C 00153BAC  48 00 00 F9 */	bl DestroyActorManager__9CParasiteFR13CStateManager
/* 80156C50 00153BB0  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80156C54 00153BB4  80 9D 06 24 */	lwz r4, 0x624(r29)
/* 80156C58 00153BB8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80156C5C 00153BBC  4B ED 74 41 */	bl "SubstituteModelData__9CAnimDataFRC29TCachedToken<13CSkinnedModel>"
lbl_80156C60:
/* 80156C60 00153BC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80156C64 00153BC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80156C68 00153BC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80156C6C 00153BCC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80156C70 00153BD0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80156C74 00153BD4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80156C78 00153BD8  7C 08 03 A6 */	mtlr r0
/* 80156C7C 00153BDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80156C80 00153BE0  4E 80 00 20 */	blr

.global SetupIceZoomerVulnerability__9CParasiteFR13CStateManagerRC20CDamageVulnerabilityRC11CHealthInfo
SetupIceZoomerVulnerability__9CParasiteFR13CStateManagerRC20CDamageVulnerabilityRC11CHealthInfo:
/* 80156C84 00153BE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80156C88 00153BE8  7C 08 02 A6 */	mflr r0
/* 80156C8C 00153BEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80156C90 00153BF0  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80156C94 00153BF4  7C 7A 1B 78 */	mr r26, r3
/* 80156C98 00153BF8  7C 9B 23 78 */	mr r27, r4
/* 80156C9C 00153BFC  7C BC 2B 78 */	mr r28, r5
/* 80156CA0 00153C00  7C DD 33 78 */	mr r29, r6
/* 80156CA4 00153C04  3B E0 00 00 */	li r31, 0
/* 80156CA8 00153C08  48 00 00 78 */	b lbl_80156D20
lbl_80156CAC:
/* 80156CAC 00153C0C  80 7A 06 20 */	lwz r3, 0x620(r26)
/* 80156CB0 00153C10  7F E4 FB 78 */	mr r4, r31
/* 80156CB4 00153C14  48 05 05 85 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80156CB8 00153C18  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 80156CBC 00153C1C  7F 63 DB 78 */	mr r3, r27
/* 80156CC0 00153C20  38 81 00 08 */	addi r4, r1, 8
/* 80156CC4 00153C24  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80156CC8 00153C28  B0 01 00 08 */	sth r0, 8(r1)
/* 80156CCC 00153C2C  4B EF 58 A9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80156CD0 00153C30  7C 64 1B 78 */	mr r4, r3
/* 80156CD4 00153C34  38 61 00 10 */	addi r3, r1, 0x10
/* 80156CD8 00153C38  4B F5 86 75 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80156CDC 00153C3C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80156CE0 00153C40  28 1E 00 00 */	cmplwi r30, 0
/* 80156CE4 00153C44  41 82 00 38 */	beq lbl_80156D1C
/* 80156CE8 00153C48  7F C3 F3 78 */	mr r3, r30
/* 80156CEC 00153C4C  7F 84 E3 78 */	mr r4, r28
/* 80156CF0 00153C50  48 05 1E A9 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 80156CF4 00153C54  7F C3 F3 78 */	mr r3, r30
/* 80156CF8 00153C58  7F 64 DB 78 */	mr r4, r27
/* 80156CFC 00153C5C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80156D00 00153C60  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80156D04 00153C64  7D 89 03 A6 */	mtctr r12
/* 80156D08 00153C68  4E 80 04 21 */	bctrl
/* 80156D0C 00153C6C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80156D10 00153C70  D0 03 00 00 */	stfs f0, 0(r3)
/* 80156D14 00153C74  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80156D18 00153C78  D0 03 00 04 */	stfs f0, 4(r3)
lbl_80156D1C:
/* 80156D1C 00153C7C  3B FF 00 01 */	addi r31, r31, 1
lbl_80156D20:
/* 80156D20 00153C80  80 7A 06 20 */	lwz r3, 0x620(r26)
/* 80156D24 00153C84  48 05 05 25 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80156D28 00153C88  7C 1F 18 40 */	cmplw r31, r3
/* 80156D2C 00153C8C  41 80 FF 80 */	blt lbl_80156CAC
/* 80156D30 00153C90  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80156D34 00153C94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80156D38 00153C98  7C 08 03 A6 */	mtlr r0
/* 80156D3C 00153C9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80156D40 00153CA0  4E 80 00 20 */	blr

.global DestroyActorManager__9CParasiteFR13CStateManager
DestroyActorManager__9CParasiteFR13CStateManager:
/* 80156D44 00153CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80156D48 00153CA8  7C 08 02 A6 */	mflr r0
/* 80156D4C 00153CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156D50 00153CB0  80 63 06 20 */	lwz r3, 0x620(r3)
/* 80156D54 00153CB4  48 05 06 71 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 80156D58 00153CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80156D5C 00153CBC  7C 08 03 A6 */	mtlr r0
/* 80156D60 00153CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80156D64 00153CC4  4E 80 00 20 */	blr

.global SetupIceZoomerCollision__9CParasiteFR13CStateManager
SetupIceZoomerCollision__9CParasiteFR13CStateManager:
/* 80156D68 00153CC8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80156D6C 00153CCC  7C 08 02 A6 */	mflr r0
/* 80156D70 00153CD0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80156D74 00153CD4  38 00 00 00 */	li r0, 0
/* 80156D78 00153CD8  BF 41 00 D8 */	stmw r26, 0xd8(r1)
/* 80156D7C 00153CDC  7C 7E 1B 78 */	mr r30, r3
/* 80156D80 00153CE0  7C 9F 23 78 */	mr r31, r4
/* 80156D84 00153CE4  38 61 00 40 */	addi r3, r1, 0x40
/* 80156D88 00153CE8  38 80 00 02 */	li r4, 2
/* 80156D8C 00153CEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80156D90 00153CF0  90 01 00 48 */	stw r0, 0x48(r1)
/* 80156D94 00153CF4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80156D98 00153CF8  4B FF FA 21 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 80156D9C 00153CFC  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80156DA0 00153D00  3B 82 9E 48 */	addi r28, r2, lbl_805ABB68@sda21
/* 80156DA4 00153D04  80 82 9E 48 */	lwz r4, lbl_805ABB68@sda21(r2)
/* 80156DA8 00153D08  3B 61 00 7C */	addi r27, r1, 0x7c
/* 80156DAC 00153D0C  83 A3 00 10 */	lwz r29, 0x10(r3)
/* 80156DB0 00153D10  3B 41 00 C0 */	addi r26, r1, 0xc0
/* 80156DB4 00153D14  38 61 00 30 */	addi r3, r1, 0x30
/* 80156DB8 00153D18  4B EA DF 01 */	bl string_l__4rstlFPCc
/* 80156DBC 00153D1C  80 9C 00 00 */	lwz r4, 0(r28)
/* 80156DC0 00153D20  38 61 00 20 */	addi r3, r1, 0x20
/* 80156DC4 00153D24  4B EA DE F5 */	bl string_l__4rstlFPCc
/* 80156DC8 00153D28  7F A4 EB 78 */	mr r4, r29
/* 80156DCC 00153D2C  38 61 00 08 */	addi r3, r1, 8
/* 80156DD0 00153D30  38 A1 00 30 */	addi r5, r1, 0x30
/* 80156DD4 00153D34  4B ED 7A 65 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80156DD8 00153D38  88 01 00 08 */	lbz r0, 8(r1)
/* 80156DDC 00153D3C  38 61 00 50 */	addi r3, r1, 0x50
/* 80156DE0 00153D40  C0 42 9E 54 */	lfs f2, lbl_805ABB74@sda21(r2)
/* 80156DE4 00153D44  38 81 00 0C */	addi r4, r1, 0xc
/* 80156DE8 00153D48  98 01 00 0C */	stb r0, 0xc(r1)
/* 80156DEC 00153D4C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80156DF0 00153D50  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80156DF4 00153D54  48 05 1A 19 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 80156DF8 00153D58  80 E1 00 50 */	lwz r7, 0x50(r1)
/* 80156DFC 00153D5C  7F 43 D3 78 */	mr r3, r26
/* 80156E00 00153D60  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 80156E04 00153D64  7F 64 DB 78 */	mr r4, r27
/* 80156E08 00153D68  88 A1 00 58 */	lbz r5, 0x58(r1)
/* 80156E0C 00153D6C  88 01 00 59 */	lbz r0, 0x59(r1)
/* 80156E10 00153D70  C0 E1 00 5C */	lfs f7, 0x5c(r1)
/* 80156E14 00153D74  C0 C1 00 60 */	lfs f6, 0x60(r1)
/* 80156E18 00153D78  C0 A1 00 64 */	lfs f5, 0x64(r1)
/* 80156E1C 00153D7C  C0 81 00 68 */	lfs f4, 0x68(r1)
/* 80156E20 00153D80  C0 61 00 6C */	lfs f3, 0x6c(r1)
/* 80156E24 00153D84  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80156E28 00153D88  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80156E2C 00153D8C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80156E30 00153D90  90 E1 00 94 */	stw r7, 0x94(r1)
/* 80156E34 00153D94  90 C1 00 98 */	stw r6, 0x98(r1)
/* 80156E38 00153D98  98 A1 00 9C */	stb r5, 0x9c(r1)
/* 80156E3C 00153D9C  98 01 00 9D */	stb r0, 0x9d(r1)
/* 80156E40 00153DA0  D0 E1 00 A0 */	stfs f7, 0xa0(r1)
/* 80156E44 00153DA4  D0 C1 00 A4 */	stfs f6, 0xa4(r1)
/* 80156E48 00153DA8  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 80156E4C 00153DAC  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 80156E50 00153DB0  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 80156E54 00153DB4  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 80156E58 00153DB8  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80156E5C 00153DBC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80156E60 00153DC0  48 1E 73 01 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80156E64 00153DC4  A0 01 00 8C */	lhz r0, 0x8c(r1)
/* 80156E68 00153DC8  28 1B 00 00 */	cmplwi r27, 0
/* 80156E6C 00153DCC  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80156E70 00153DD0  B0 01 00 D0 */	sth r0, 0xd0(r1)
/* 80156E74 00153DD4  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80156E78 00153DD8  41 82 00 0C */	beq lbl_80156E84
/* 80156E7C 00153DDC  7F 63 DB 78 */	mr r3, r27
/* 80156E80 00153DE0  48 1E 6C 61 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80156E84:
/* 80156E84 00153DE4  38 61 00 20 */	addi r3, r1, 0x20
/* 80156E88 00153DE8  48 1E 6C 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80156E8C 00153DEC  38 61 00 30 */	addi r3, r1, 0x30
/* 80156E90 00153DF0  48 1E 6C 51 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80156E94 00153DF4  38 61 00 40 */	addi r3, r1, 0x40
/* 80156E98 00153DF8  38 81 00 94 */	addi r4, r1, 0x94
/* 80156E9C 00153DFC  4B FF F3 95 */	bl sub_80156230
/* 80156EA0 00153E00  28 1A 00 00 */	cmplwi r26, 0
/* 80156EA4 00153E04  41 82 00 0C */	beq lbl_80156EB0
/* 80156EA8 00153E08  7F 43 D3 78 */	mr r3, r26
/* 80156EAC 00153E0C  48 1E 6C 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80156EB0:
/* 80156EB0 00153E10  7F C3 F3 78 */	mr r3, r30
/* 80156EB4 00153E14  7F E5 FB 78 */	mr r5, r31
/* 80156EB8 00153E18  38 80 00 13 */	li r4, 0x13
/* 80156EBC 00153E1C  4B EF D0 C5 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80156EC0 00153E20  7F C3 F3 78 */	mr r3, r30
/* 80156EC4 00153E24  7F E5 FB 78 */	mr r5, r31
/* 80156EC8 00153E28  38 80 00 12 */	li r4, 0x12
/* 80156ECC 00153E2C  4B EF D4 85 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80156ED0 00153E30  3C 80 80 3D */	lis r4, lbl_803D0330@ha
/* 80156ED4 00153E34  38 60 00 18 */	li r3, 0x18
/* 80156ED8 00153E38  38 84 03 30 */	addi r4, r4, lbl_803D0330@l
/* 80156EDC 00153E3C  38 A0 00 00 */	li r5, 0
/* 80156EE0 00153E40  38 84 00 09 */	addi r4, r4, 9
/* 80156EE4 00153E44  48 1B E9 89 */	bl __nw__FUlPCcPCc
/* 80156EE8 00153E48  7C 7D 1B 79 */	or. r29, r3, r3
/* 80156EEC 00153E4C  41 82 00 3C */	beq lbl_80156F28
/* 80156EF0 00153E50  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80156EF4 00153E54  7F E4 FB 78 */	mr r4, r31
/* 80156EF8 00153E58  81 3E 00 04 */	lwz r9, 4(r30)
/* 80156EFC 00153E5C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80156F00 00153E60  54 08 CF FE */	rlwinm r8, r0, 0x19, 0x1f, 0x1f
/* 80156F04 00153E64  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80156F08 00153E68  91 21 00 1C */	stw r9, 0x1c(r1)
/* 80156F0C 00153E6C  38 E1 00 40 */	addi r7, r1, 0x40
/* 80156F10 00153E70  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80156F14 00153E74  91 21 00 18 */	stw r9, 0x18(r1)
/* 80156F18 00153E78  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80156F1C 00153E7C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80156F20 00153E80  48 05 0A 11 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 80156F24 00153E84  7C 7D 1B 78 */	mr r29, r3
lbl_80156F28:
/* 80156F28 00153E88  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80156F2C 00153E8C  38 80 00 01 */	li r4, 1
/* 80156F30 00153E90  48 05 09 AD */	bl __dt__22CCollisionActorManagerFv
/* 80156F34 00153E94  93 BE 06 20 */	stw r29, 0x620(r30)
/* 80156F38 00153E98  38 61 00 40 */	addi r3, r1, 0x40
/* 80156F3C 00153E9C  38 80 FF FF */	li r4, -1
/* 80156F40 00153EA0  4B FF F3 ED */	bl sub_8015632c
/* 80156F44 00153EA4  BB 41 00 D8 */	lmw r26, 0xd8(r1)
/* 80156F48 00153EA8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80156F4C 00153EAC  7C 08 03 A6 */	mtlr r0
/* 80156F50 00153EB0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80156F54 00153EB4  4E 80 00 20 */	blr

.global GetContactDamage__9CParasiteCFv
GetContactDamage__9CParasiteCFv:
/* 80156F58 00153EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80156F5C 00153EBC  7C 08 02 A6 */	mflr r0
/* 80156F60 00153EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156F64 00153EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80156F68 00153EC8  7C 7F 1B 78 */	mr r31, r3
/* 80156F6C 00153ECC  80 04 05 D0 */	lwz r0, 0x5d0(r4)
/* 80156F70 00153ED0  2C 00 00 01 */	cmpwi r0, 1
/* 80156F74 00153ED4  41 82 00 08 */	beq lbl_80156F7C
/* 80156F78 00153ED8  48 00 00 54 */	b lbl_80156FCC
lbl_80156F7C:
/* 80156F7C 00153EDC  88 04 07 43 */	lbz r0, 0x743(r4)
/* 80156F80 00153EE0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80156F84 00153EE4  41 82 00 40 */	beq lbl_80156FC4
/* 80156F88 00153EE8  80 04 06 B4 */	lwz r0, 0x6b4(r4)
/* 80156F8C 00153EEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80156F90 00153EF0  88 04 06 B8 */	lbz r0, 0x6b8(r4)
/* 80156F94 00153EF4  98 1F 00 04 */	stb r0, 4(r31)
/* 80156F98 00153EF8  C0 04 06 BC */	lfs f0, 0x6bc(r4)
/* 80156F9C 00153EFC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80156FA0 00153F00  C0 04 06 C0 */	lfs f0, 0x6c0(r4)
/* 80156FA4 00153F04  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80156FA8 00153F08  C0 04 06 C4 */	lfs f0, 0x6c4(r4)
/* 80156FAC 00153F0C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80156FB0 00153F10  C0 04 06 C8 */	lfs f0, 0x6c8(r4)
/* 80156FB4 00153F14  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80156FB8 00153F18  88 04 06 CC */	lbz r0, 0x6cc(r4)
/* 80156FBC 00153F1C  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80156FC0 00153F20  48 00 00 10 */	b lbl_80156FD0
lbl_80156FC4:
/* 80156FC4 00153F24  4B F2 1A 01 */	bl GetContactDamage__10CPatternedCFv
/* 80156FC8 00153F28  48 00 00 08 */	b lbl_80156FD0
lbl_80156FCC:
/* 80156FCC 00153F2C  4B F2 19 F9 */	bl GetContactDamage__10CPatternedCFv
lbl_80156FD0:
/* 80156FD0 00153F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80156FD4 00153F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80156FD8 00153F38  7C 08 03 A6 */	mtlr r0
/* 80156FDC 00153F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80156FE0 00153F40  4E 80 00 20 */	blr

.global GetDamageVulnerability__9CParasiteCFv
GetDamageVulnerability__9CParasiteCFv:
/* 80156FE4 00153F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80156FE8 00153F48  7C 08 02 A6 */	mflr r0
/* 80156FEC 00153F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156FF0 00153F50  80 03 05 D0 */	lwz r0, 0x5d0(r3)
/* 80156FF4 00153F54  2C 00 00 02 */	cmpwi r0, 2
/* 80156FF8 00153F58  41 82 00 4C */	beq lbl_80157044
/* 80156FFC 00153F5C  40 80 00 10 */	bge lbl_8015700C
/* 80157000 00153F60  2C 00 00 01 */	cmpwi r0, 1
/* 80157004 00153F64  40 80 00 14 */	bge lbl_80157018
/* 80157008 00153F68  48 00 00 3C */	b lbl_80157044
lbl_8015700C:
/* 8015700C 00153F6C  2C 00 00 04 */	cmpwi r0, 4
/* 80157010 00153F70  40 80 00 34 */	bge lbl_80157044
/* 80157014 00153F74  48 00 00 18 */	b lbl_8015702C
lbl_80157018:
/* 80157018 00153F78  88 03 07 43 */	lbz r0, 0x743(r3)
/* 8015701C 00153F7C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80157020 00153F80  41 82 00 24 */	beq lbl_80157044
/* 80157024 00153F84  38 63 06 4C */	addi r3, r3, 0x64c
/* 80157028 00153F88  48 00 00 20 */	b lbl_80157048
lbl_8015702C:
/* 8015702C 00153F8C  88 03 07 43 */	lbz r0, 0x743(r3)
/* 80157030 00153F90  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80157034 00153F94  40 82 00 10 */	bne lbl_80157044
/* 80157038 00153F98  3C 60 80 57 */	lis r3, sImmuneVulnerability__20CDamageVulnerability@ha
/* 8015703C 00153F9C  38 63 D7 18 */	addi r3, r3, sImmuneVulnerability__20CDamageVulnerability@l
/* 80157040 00153FA0  48 00 00 08 */	b lbl_80157048
lbl_80157044:
/* 80157044 00153FA4  4B F4 BD 2D */	bl GetDamageVulnerability__3CAiCFv
lbl_80157048:
/* 80157048 00153FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015704C 00153FAC  7C 08 03 A6 */	mtlr r0
/* 80157050 00153FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80157054 00153FB4  4E 80 00 20 */	blr

.global Render__9CParasiteCFRC13CStateManager
Render__9CParasiteCFRC13CStateManager:
/* 80157058 00153FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015705C 00153FBC  7C 08 02 A6 */	mflr r0
/* 80157060 00153FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80157064 00153FC4  48 11 16 69 */	bl Render__11CWallWalkerCFRC13CStateManager
/* 80157068 00153FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015706C 00153FCC  7C 08 03 A6 */	mtlr r0
/* 80157070 00153FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80157074 00153FD4  4E 80 00 20 */	blr

.global DoFlockingBehavior__9CParasiteFR13CStateManager
DoFlockingBehavior__9CParasiteFR13CStateManager:
/* 80157078 00153FD8  94 21 ED 80 */	stwu r1, -0x1280(r1)
/* 8015707C 00153FDC  7C 08 02 A6 */	mflr r0
/* 80157080 00153FE0  90 01 12 84 */	stw r0, 0x1284(r1)
/* 80157084 00153FE4  38 00 12 78 */	li r0, 0x1278
/* 80157088 00153FE8  DB E1 12 70 */	stfd f31, 0x1270(r1)
/* 8015708C 00153FEC  13 E1 00 0E */	psq_stx f31, r1, r0, 0, qr0
/* 80157090 00153FF0  BF 41 12 58 */	stmw r26, 0x1258(r1)
/* 80157094 00153FF4  7C 7A 1B 78 */	mr r26, r3
/* 80157098 00153FF8  7C 9B 23 78 */	mr r27, r4
/* 8015709C 00153FFC  C0 43 00 5C */	lfs f2, 0x5c(r3)
/* 801570A0 00154000  38 00 00 00 */	li r0, 0
/* 801570A4 00154004  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 801570A8 00154008  38 61 02 30 */	addi r3, r1, 0x230
/* 801570AC 0015400C  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 801570B0 00154010  38 81 01 24 */	addi r4, r1, 0x124
/* 801570B4 00154014  38 A1 01 18 */	addi r5, r1, 0x118
/* 801570B8 00154018  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 801570BC 0015401C  D0 21 01 4C */	stfs f1, 0x14c(r1)
/* 801570C0 00154020  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 801570C4 00154024  90 01 0A 4C */	stw r0, 0xa4c(r1)
/* 801570C8 00154028  C0 FA 06 E4 */	lfs f7, 0x6e4(r26)
/* 801570CC 0015402C  C0 DA 00 60 */	lfs f6, 0x60(r26)
/* 801570D0 00154030  C0 BA 00 50 */	lfs f5, 0x50(r26)
/* 801570D4 00154034  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 801570D8 00154038  EC 06 38 2A */	fadds f0, f6, f7
/* 801570DC 0015403C  EC 65 38 2A */	fadds f3, f5, f7
/* 801570E0 00154040  EC 81 38 2A */	fadds f4, f1, f7
/* 801570E4 00154044  EC 41 38 28 */	fsubs f2, f1, f7
/* 801570E8 00154048  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 801570EC 0015404C  EC 25 38 28 */	fsubs f1, f5, f7
/* 801570F0 00154050  EC 06 38 28 */	fsubs f0, f6, f7
/* 801570F4 00154054  D0 81 01 18 */	stfs f4, 0x118(r1)
/* 801570F8 00154058  D0 61 01 1C */	stfs f3, 0x11c(r1)
/* 801570FC 0015405C  D0 41 01 24 */	stfs f2, 0x124(r1)
/* 80157100 00154060  D0 21 01 28 */	stfs f1, 0x128(r1)
/* 80157104 00154064  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 80157108 00154068  48 1E 14 01 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8015710C 0015406C  3C 60 2A AB */	lis r3, 0x2AAAAAAB@ha
/* 80157110 00154070  A8 9A 05 D4 */	lha r4, 0x5d4(r26)
/* 80157114 00154074  38 03 AA AB */	addi r0, r3, 0x2AAAAAAB@l
/* 80157118 00154078  7C 60 20 96 */	mulhw r3, r0, r4
/* 8015711C 0015407C  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80157120 00154080  7C 03 02 14 */	add r0, r3, r0
/* 80157124 00154084  1C 00 00 06 */	mulli r0, r0, 6
/* 80157128 00154088  7C 00 20 51 */	subf. r0, r0, r4
/* 8015712C 0015408C  40 82 03 34 */	bne lbl_80157460
/* 80157130 00154090  38 60 00 00 */	li r3, 0
/* 80157134 00154094  3B C1 02 4C */	addi r30, r1, 0x24c
/* 80157138 00154098  2C 03 00 00 */	cmpwi r3, 0
/* 8015713C 0015409C  90 61 02 48 */	stw r3, 0x248(r1)
/* 80157140 001540A0  7C 64 1B 78 */	mr r4, r3
/* 80157144 001540A4  40 81 00 40 */	ble lbl_80157184
/* 80157148 001540A8  2C 03 00 08 */	cmpwi r3, 8
/* 8015714C 001540AC  38 A0 FF F8 */	li r5, -8
/* 80157150 001540B0  40 81 00 20 */	ble lbl_80157170
/* 80157154 001540B4  38 00 FF FF */	li r0, -1
/* 80157158 001540B8  54 00 E8 FE */	srwi r0, r0, 3
/* 8015715C 001540BC  7C 09 03 A6 */	mtctr r0
/* 80157160 001540C0  2C 05 00 00 */	cmpwi r5, 0
/* 80157164 001540C4  40 81 00 0C */	ble lbl_80157170
lbl_80157168:
/* 80157168 001540C8  38 84 00 08 */	addi r4, r4, 8
/* 8015716C 001540CC  42 00 FF FC */	bdnz lbl_80157168
lbl_80157170:
/* 80157170 001540D0  7C 04 00 D0 */	neg r0, r4
/* 80157174 001540D4  7C 09 03 A6 */	mtctr r0
/* 80157178 001540D8  7C 04 18 00 */	cmpw r4, r3
/* 8015717C 001540DC  40 80 00 08 */	bge lbl_80157184
lbl_80157180:
/* 80157180 001540E0  42 00 00 00 */	bdnz lbl_80157180
lbl_80157184:
/* 80157184 001540E4  88 0D A4 18 */	lbz r0, lbl_805A8FD8@sda21(r13)
/* 80157188 001540E8  38 60 00 00 */	li r3, 0
/* 8015718C 001540EC  90 61 02 48 */	stw r3, 0x248(r1)
/* 80157190 001540F0  7C 00 07 75 */	extsb. r0, r0
/* 80157194 001540F4  40 82 00 40 */	bne lbl_801571D4
/* 80157198 001540F8  80 AD 8C A0 */	lwz r5, lbl_805A7860@sda21(r13)
/* 8015719C 001540FC  38 60 00 00 */	li r3, 0
/* 801571A0 00154100  38 80 00 01 */	li r4, 1
/* 801571A4 00154104  48 23 2D 51 */	bl __shl2i
/* 801571A8 00154108  3C A0 80 47 */	lis r5, lbl_8046C788@ha
/* 801571AC 0015410C  38 C0 00 01 */	li r6, 1
/* 801571B0 00154110  38 A5 C7 88 */	addi r5, r5, lbl_8046C788@l
/* 801571B4 00154114  38 00 00 00 */	li r0, 0
/* 801571B8 00154118  90 C1 02 28 */	stw r6, 0x228(r1)
/* 801571BC 0015411C  90 85 00 04 */	stw r4, 4(r5)
/* 801571C0 00154120  90 65 00 00 */	stw r3, 0(r5)
/* 801571C4 00154124  90 05 00 0C */	stw r0, 0xc(r5)
/* 801571C8 00154128  90 05 00 08 */	stw r0, 8(r5)
/* 801571CC 0015412C  90 C5 00 10 */	stw r6, 0x10(r5)
/* 801571D0 00154130  98 CD A4 18 */	stb r6, lbl_805A8FD8@sda21(r13)
lbl_801571D4:
/* 801571D4 00154134  C0 1A 06 E8 */	lfs f0, 0x6e8(r26)
/* 801571D8 00154138  3C 60 80 47 */	lis r3, lbl_8046C788@ha
/* 801571DC 0015413C  38 C3 C7 88 */	addi r6, r3, lbl_8046C788@l
/* 801571E0 00154140  C0 22 9E 58 */	lfs f1, lbl_805ABB78@sda21(r2)
/* 801571E4 00154144  EC 00 00 32 */	fmuls f0, f0, f0
/* 801571E8 00154148  7F 63 DB 78 */	mr r3, r27
/* 801571EC 0015414C  38 81 02 48 */	addi r4, r1, 0x248
/* 801571F0 00154150  38 A1 02 30 */	addi r5, r1, 0x230
/* 801571F4 00154154  3B A0 00 00 */	li r29, 0
/* 801571F8 00154158  38 E0 00 00 */	li r7, 0
/* 801571FC 0015415C  EF E1 00 2A */	fadds f31, f1, f0
/* 80157200 00154160  4B EF 55 21 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 80157204 00154164  7F DC F3 78 */	mr r28, r30
/* 80157208 00154168  3B E1 0A 50 */	addi r31, r1, 0xa50
/* 8015720C 0015416C  48 00 00 D0 */	b lbl_801572DC
lbl_80157210:
/* 80157210 00154170  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80157214 00154174  7F 63 DB 78 */	mr r3, r27
/* 80157218 00154178  38 81 00 08 */	addi r4, r1, 8
/* 8015721C 0015417C  B0 01 00 08 */	sth r0, 8(r1)
/* 80157220 00154180  4B EF 53 55 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80157224 00154184  7C 64 1B 78 */	mr r4, r3
/* 80157228 00154188  38 61 00 0C */	addi r3, r1, 0xc
/* 8015722C 0015418C  4B F4 E2 0D */	bl "__ct__26TPatternedCast<9CParasite>FP7CEntity"
/* 80157230 00154190  4B F4 E1 DD */	bl "CastTo<9CParasite>__10CPatternedFRC26TPatternedCast<9CParasite>"
/* 80157234 00154194  28 03 00 00 */	cmplwi r3, 0
/* 80157238 00154198  41 82 00 A0 */	beq lbl_801572D8
/* 8015723C 0015419C  A0 A3 00 08 */	lhz r5, 8(r3)
/* 80157240 001541A0  A0 1A 00 08 */	lhz r0, 8(r26)
/* 80157244 001541A4  7C 05 00 40 */	cmplw r5, r0
/* 80157248 001541A8  41 82 00 90 */	beq lbl_801572D8
/* 8015724C 001541AC  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80157250 001541B0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80157254 001541B4  41 82 00 84 */	beq lbl_801572D8
/* 80157258 001541B8  80 01 0A 4C */	lwz r0, 0xa4c(r1)
/* 8015725C 001541BC  54 00 08 3C */	slwi r0, r0, 1
/* 80157260 001541C0  7C 9F 02 15 */	add. r4, r31, r0
/* 80157264 001541C4  41 82 00 08 */	beq lbl_8015726C
/* 80157268 001541C8  B0 A4 00 00 */	sth r5, 0(r4)
lbl_8015726C:
/* 8015726C 001541CC  80 81 0A 4C */	lwz r4, 0xa4c(r1)
/* 80157270 001541D0  38 04 00 01 */	addi r0, r4, 1
/* 80157274 001541D4  90 01 0A 4C */	stw r0, 0xa4c(r1)
/* 80157278 001541D8  C0 C3 00 50 */	lfs f6, 0x50(r3)
/* 8015727C 001541DC  C0 1A 00 50 */	lfs f0, 0x50(r26)
/* 80157280 001541E0  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80157284 001541E4  EC A6 00 28 */	fsubs f5, f6, f0
/* 80157288 001541E8  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 8015728C 001541EC  C0 E3 00 60 */	lfs f7, 0x60(r3)
/* 80157290 001541F0  EC 61 00 28 */	fsubs f3, f1, f0
/* 80157294 001541F4  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80157298 001541F8  EC 05 01 72 */	fmuls f0, f5, f5
/* 8015729C 001541FC  EC 87 10 28 */	fsubs f4, f7, f2
/* 801572A0 00154200  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 801572A4 00154204  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801572A8 00154208  D0 C1 01 04 */	stfs f6, 0x104(r1)
/* 801572AC 0015420C  EC 44 01 32 */	fmuls f2, f4, f4
/* 801572B0 00154210  EC 01 00 2A */	fadds f0, f1, f0
/* 801572B4 00154214  D0 E1 01 08 */	stfs f7, 0x108(r1)
/* 801572B8 00154218  D0 61 01 0C */	stfs f3, 0x10c(r1)
/* 801572BC 0015421C  EC 02 00 2A */	fadds f0, f2, f0
/* 801572C0 00154220  D0 A1 01 10 */	stfs f5, 0x110(r1)
/* 801572C4 00154224  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801572C8 00154228  D0 81 01 14 */	stfs f4, 0x114(r1)
/* 801572CC 0015422C  40 80 00 0C */	bge lbl_801572D8
/* 801572D0 00154230  FF E0 00 90 */	fmr f31, f0
/* 801572D4 00154234  7C 7D 1B 78 */	mr r29, r3
lbl_801572D8:
/* 801572D8 00154238  3B 9C 00 02 */	addi r28, r28, 2
lbl_801572DC:
/* 801572DC 0015423C  80 01 02 48 */	lwz r0, 0x248(r1)
/* 801572E0 00154240  54 00 08 3C */	slwi r0, r0, 1
/* 801572E4 00154244  7C 1E 02 14 */	add r0, r30, r0
/* 801572E8 00154248  7C 1C 00 40 */	cmplw r28, r0
/* 801572EC 0015424C  40 82 FF 24 */	bne lbl_80157210
/* 801572F0 00154250  28 1D 00 00 */	cmplwi r29, 0
/* 801572F4 00154254  41 82 00 78 */	beq lbl_8015736C
/* 801572F8 00154258  C0 3A 06 EC */	lfs f1, 0x6ec(r26)
/* 801572FC 0015425C  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80157300 00154260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80157304 00154264  40 81 00 68 */	ble lbl_8015736C
/* 80157308 00154268  C0 3A 06 E8 */	lfs f1, 0x6e8(r26)
/* 8015730C 0015426C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80157310 00154270  40 81 00 5C */	ble lbl_8015736C
/* 80157314 00154274  C3 FA 06 04 */	lfs f31, 0x604(r26)
/* 80157318 00154278  7F 45 D3 78 */	mr r5, r26
/* 8015731C 0015427C  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 80157320 00154280  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80157324 00154284  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 80157328 00154288  38 9A 04 5C */	addi r4, r26, 0x45c
/* 8015732C 0015428C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80157330 00154290  38 C1 00 E8 */	addi r6, r1, 0xe8
/* 80157334 00154294  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80157338 00154298  D0 41 00 EC */	stfs f2, 0xec(r1)
/* 8015733C 0015429C  D0 61 00 F0 */	stfs f3, 0xf0(r1)
/* 80157340 001542A0  4B FE 75 B1 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 80157344 001542A4  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80157348 001542A8  C0 41 00 F8 */	lfs f2, 0xf8(r1)
/* 8015734C 001542AC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80157350 001542B0  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 80157354 001542B4  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80157358 001542B8  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8015735C 001542BC  D0 1A 06 28 */	stfs f0, 0x628(r26)
/* 80157360 001542C0  D0 5A 06 2C */	stfs f2, 0x62c(r26)
/* 80157364 001542C4  D0 3A 06 30 */	stfs f1, 0x630(r26)
/* 80157368 001542C8  48 00 00 20 */	b lbl_80157388
lbl_8015736C:
/* 8015736C 001542CC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80157370 001542D0  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 80157374 001542D4  D0 1A 06 28 */	stfs f0, 0x628(r26)
/* 80157378 001542D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8015737C 001542DC  D0 1A 06 2C */	stfs f0, 0x62c(r26)
/* 80157380 001542E0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80157384 001542E4  D0 1A 06 30 */	stfs f0, 0x630(r26)
lbl_80157388:
/* 80157388 001542E8  C3 FA 06 04 */	lfs f31, 0x604(r26)
/* 8015738C 001542EC  7F 45 D3 78 */	mr r5, r26
/* 80157390 001542F0  C0 22 9E 5C */	lfs f1, lbl_805ABB7C@sda21(r2)
/* 80157394 001542F4  7F 67 DB 78 */	mr r7, r27
/* 80157398 001542F8  38 61 00 DC */	addi r3, r1, 0xdc
/* 8015739C 001542FC  38 9A 04 5C */	addi r4, r26, 0x45c
/* 801573A0 00154300  38 C1 0A 4C */	addi r6, r1, 0xa4c
/* 801573A4 00154304  4B FE 72 7D */	bl "Cohesion__18CSteeringBehaviorsCFRC13CPhysicsActorRQ24rstl32reserved_vector<9TUniqueId,1024>fRC13CStateManager"
/* 801573A8 00154308  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 801573AC 0015430C  7F 45 D3 78 */	mr r5, r26
/* 801573B0 00154310  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 801573B4 00154314  7F 67 DB 78 */	mr r7, r27
/* 801573B8 00154318  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801573BC 0015431C  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 801573C0 00154320  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 801573C4 00154324  38 61 00 D0 */	addi r3, r1, 0xd0
/* 801573C8 00154328  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801573CC 0015432C  38 9A 04 5C */	addi r4, r26, 0x45c
/* 801573D0 00154330  D0 1A 06 34 */	stfs f0, 0x634(r26)
/* 801573D4 00154334  38 C1 0A 4C */	addi r6, r1, 0xa4c
/* 801573D8 00154338  D0 5A 06 38 */	stfs f2, 0x638(r26)
/* 801573DC 0015433C  D0 3A 06 3C */	stfs f1, 0x63c(r26)
/* 801573E0 00154340  C3 FA 06 04 */	lfs f31, 0x604(r26)
/* 801573E4 00154344  4B FE 73 99 */	bl "Alignment__18CSteeringBehaviorsCFRC13CPhysicsActorRQ24rstl32reserved_vector<9TUniqueId,1024>RC13CStateManager"
/* 801573E8 00154348  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 801573EC 0015434C  38 60 00 00 */	li r3, 0
/* 801573F0 00154350  C0 41 00 D4 */	lfs f2, 0xd4(r1)
/* 801573F4 00154354  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801573F8 00154358  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 801573FC 0015435C  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80157400 00154360  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80157404 00154364  D0 1A 06 40 */	stfs f0, 0x640(r26)
/* 80157408 00154368  D0 5A 06 44 */	stfs f2, 0x644(r26)
/* 8015740C 0015436C  D0 3A 06 48 */	stfs f1, 0x648(r26)
/* 80157410 00154370  80 A1 02 48 */	lwz r5, 0x248(r1)
/* 80157414 00154374  2C 05 00 00 */	cmpwi r5, 0
/* 80157418 00154378  40 81 00 40 */	ble lbl_80157458
/* 8015741C 0015437C  2C 05 00 08 */	cmpwi r5, 8
/* 80157420 00154380  38 85 FF F8 */	addi r4, r5, -8
/* 80157424 00154384  40 81 00 20 */	ble lbl_80157444
/* 80157428 00154388  38 04 00 07 */	addi r0, r4, 7
/* 8015742C 0015438C  54 00 E8 FE */	srwi r0, r0, 3
/* 80157430 00154390  7C 09 03 A6 */	mtctr r0
/* 80157434 00154394  2C 04 00 00 */	cmpwi r4, 0
/* 80157438 00154398  40 81 00 0C */	ble lbl_80157444
lbl_8015743C:
/* 8015743C 0015439C  38 63 00 08 */	addi r3, r3, 8
/* 80157440 001543A0  42 00 FF FC */	bdnz lbl_8015743C
lbl_80157444:
/* 80157444 001543A4  7C 03 28 50 */	subf r0, r3, r5
/* 80157448 001543A8  7C 09 03 A6 */	mtctr r0
/* 8015744C 001543AC  7C 03 28 00 */	cmpw r3, r5
/* 80157450 001543B0  40 80 00 08 */	bge lbl_80157458
lbl_80157454:
/* 80157454 001543B4  42 00 00 00 */	bdnz lbl_80157454
lbl_80157458:
/* 80157458 001543B8  38 00 00 00 */	li r0, 0
/* 8015745C 001543BC  90 01 02 48 */	stw r0, 0x248(r1)
lbl_80157460:
/* 80157460 001543C0  80 7B 08 4C */	lwz r3, 0x84c(r27)
/* 80157464 001543C4  C0 3A 07 00 */	lfs f1, 0x700(r26)
/* 80157468 001543C8  C1 23 00 50 */	lfs f9, 0x50(r3)
/* 8015746C 001543CC  C0 5A 00 50 */	lfs f2, 0x50(r26)
/* 80157470 001543D0  EC 01 00 72 */	fmuls f0, f1, f1
/* 80157474 001543D4  C0 C3 00 40 */	lfs f6, 0x40(r3)
/* 80157478 001543D8  ED 09 10 28 */	fsubs f8, f9, f2
/* 8015747C 001543DC  C0 5A 00 40 */	lfs f2, 0x40(r26)
/* 80157480 001543E0  C1 43 00 60 */	lfs f10, 0x60(r3)
/* 80157484 001543E4  EC A6 10 28 */	fsubs f5, f6, f2
/* 80157488 001543E8  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 8015748C 001543EC  EC 48 02 32 */	fmuls f2, f8, f8
/* 80157490 001543F0  EC EA 18 28 */	fsubs f7, f10, f3
/* 80157494 001543F4  D0 C1 00 B8 */	stfs f6, 0xb8(r1)
/* 80157498 001543F8  EC 65 01 72 */	fmuls f3, f5, f5
/* 8015749C 001543FC  D1 21 00 BC */	stfs f9, 0xbc(r1)
/* 801574A0 00154400  EC 87 01 F2 */	fmuls f4, f7, f7
/* 801574A4 00154404  EC 43 10 2A */	fadds f2, f3, f2
/* 801574A8 00154408  D1 41 00 C0 */	stfs f10, 0xc0(r1)
/* 801574AC 0015440C  D0 A1 00 C4 */	stfs f5, 0xc4(r1)
/* 801574B0 00154410  EC 44 10 2A */	fadds f2, f4, f2
/* 801574B4 00154414  D1 01 00 C8 */	stfs f8, 0xc8(r1)
/* 801574B8 00154418  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801574BC 0015441C  D0 E1 00 CC */	stfs f7, 0xcc(r1)
/* 801574C0 00154420  40 80 00 90 */	bge lbl_80157550
/* 801574C4 00154424  C3 FA 06 04 */	lfs f31, 0x604(r26)
/* 801574C8 00154428  7F 45 D3 78 */	mr r5, r26
/* 801574CC 0015442C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801574D0 00154430  38 9A 04 5C */	addi r4, r26, 0x45c
/* 801574D4 00154434  D0 C1 00 94 */	stfs f6, 0x94(r1)
/* 801574D8 00154438  38 C1 00 94 */	addi r6, r1, 0x94
/* 801574DC 0015443C  D1 21 00 98 */	stfs f9, 0x98(r1)
/* 801574E0 00154440  D1 41 00 9C */	stfs f10, 0x9c(r1)
/* 801574E4 00154444  4B FE 74 0D */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801574E8 00154448  38 61 00 AC */	addi r3, r1, 0xac
/* 801574EC 0015444C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 801574F0 00154450  38 A1 01 48 */	addi r5, r1, 0x148
/* 801574F4 00154454  48 11 1C A9 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 801574F8 00154458  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 801574FC 0015445C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80157500 00154460  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80157504 00154464  38 81 01 FC */	addi r4, r1, 0x1fc
/* 80157508 00154468  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8015750C 0015446C  EC BF 00 B2 */	fmuls f5, f31, f2
/* 80157510 00154470  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 80157514 00154474  EC 9F 00 72 */	fmuls f4, f31, f1
/* 80157518 00154478  C0 DA 07 04 */	lfs f6, 0x704(r26)
/* 8015751C 0015447C  EC 7F 00 32 */	fmuls f3, f31, f0
/* 80157520 00154480  C0 23 00 04 */	lfs f1, 4(r3)
/* 80157524 00154484  C0 03 00 08 */	lfs f0, 8(r3)
/* 80157528 00154488  D0 A1 01 FC */	stfs f5, 0x1fc(r1)
/* 8015752C 0015448C  D0 81 02 00 */	stfs f4, 0x200(r1)
/* 80157530 00154490  D0 61 02 04 */	stfs f3, 0x204(r1)
/* 80157534 00154494  D0 41 02 08 */	stfs f2, 0x208(r1)
/* 80157538 00154498  D0 21 02 0C */	stfs f1, 0x20c(r1)
/* 8015753C 0015449C  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 80157540 001544A0  D0 C1 02 14 */	stfs f6, 0x214(r1)
/* 80157544 001544A4  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 80157548 001544A8  38 63 00 04 */	addi r3, r3, 4
/* 8015754C 001544AC  4B FD A1 CD */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80157550:
/* 80157550 001544B0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80157554 001544B4  C0 3A 06 28 */	lfs f1, 0x628(r26)
/* 80157558 001544B8  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8015755C 001544BC  38 00 00 00 */	li r0, 0
/* 80157560 001544C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80157564 001544C4  40 82 00 28 */	bne lbl_8015758C
/* 80157568 001544C8  C0 3A 06 2C */	lfs f1, 0x62c(r26)
/* 8015756C 001544CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80157570 001544D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80157574 001544D4  40 82 00 18 */	bne lbl_8015758C
/* 80157578 001544D8  C0 3A 06 30 */	lfs f1, 0x630(r26)
/* 8015757C 001544DC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80157580 001544E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80157584 001544E4  40 82 00 08 */	bne lbl_8015758C
/* 80157588 001544E8  38 00 00 01 */	li r0, 1
lbl_8015758C:
/* 8015758C 001544EC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80157590 001544F0  40 82 00 60 */	bne lbl_801575F0
/* 80157594 001544F4  C3 FA 06 EC */	lfs f31, 0x6ec(r26)
/* 80157598 001544F8  38 61 00 88 */	addi r3, r1, 0x88
/* 8015759C 001544FC  38 9A 06 28 */	addi r4, r26, 0x628
/* 801575A0 00154500  38 A1 01 48 */	addi r5, r1, 0x148
/* 801575A4 00154504  48 11 1B F9 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 801575A8 00154508  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801575AC 0015450C  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801575B0 00154510  C0 A1 00 88 */	lfs f5, 0x88(r1)
/* 801575B4 00154514  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 801575B8 00154518  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 801575BC 0015451C  C0 61 00 90 */	lfs f3, 0x90(r1)
/* 801575C0 00154520  C0 23 00 04 */	lfs f1, 4(r3)
/* 801575C4 00154524  C0 03 00 08 */	lfs f0, 8(r3)
/* 801575C8 00154528  D0 A1 01 E0 */	stfs f5, 0x1e0(r1)
/* 801575CC 0015452C  D0 81 01 E4 */	stfs f4, 0x1e4(r1)
/* 801575D0 00154530  D0 61 01 E8 */	stfs f3, 0x1e8(r1)
/* 801575D4 00154534  D0 41 01 EC */	stfs f2, 0x1ec(r1)
/* 801575D8 00154538  D0 21 01 F0 */	stfs f1, 0x1f0(r1)
/* 801575DC 0015453C  D0 01 01 F4 */	stfs f0, 0x1f4(r1)
/* 801575E0 00154540  D3 E1 01 F8 */	stfs f31, 0x1f8(r1)
/* 801575E4 00154544  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 801575E8 00154548  38 63 00 04 */	addi r3, r3, 4
/* 801575EC 0015454C  4B FD A1 2D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801575F0:
/* 801575F0 00154550  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801575F4 00154554  83 7A 05 E4 */	lwz r27, 0x5e4(r26)
/* 801575F8 00154558  3B E3 66 A0 */	addi r31, r3, sZeroVector__9CVector3f@l
/* 801575FC 0015455C  48 00 00 F4 */	b lbl_801576F0
lbl_80157600:
/* 80157600 00154560  C0 5B 00 04 */	lfs f2, 4(r27)
/* 80157604 00154564  C0 1A 00 50 */	lfs f0, 0x50(r26)
/* 80157608 00154568  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8015760C 0015456C  EC C2 00 28 */	fsubs f6, f2, f0
/* 80157610 00154570  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80157614 00154574  C0 7B 00 08 */	lfs f3, 8(r27)
/* 80157618 00154578  EC 81 00 28 */	fsubs f4, f1, f0
/* 8015761C 0015457C  C0 1A 00 60 */	lfs f0, 0x60(r26)
/* 80157620 00154580  EC 46 01 B2 */	fmuls f2, f6, f6
/* 80157624 00154584  EC A3 00 28 */	fsubs f5, f3, f0
/* 80157628 00154588  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 8015762C 0015458C  EC 64 01 32 */	fmuls f3, f4, f4
/* 80157630 00154590  EC 01 00 72 */	fmuls f0, f1, f1
/* 80157634 00154594  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 80157638 00154598  EC 85 01 72 */	fmuls f4, f5, f5
/* 8015763C 0015459C  EC 43 10 2A */	fadds f2, f3, f2
/* 80157640 001545A0  D0 C1 00 80 */	stfs f6, 0x80(r1)
/* 80157644 001545A4  D0 A1 00 84 */	stfs f5, 0x84(r1)
/* 80157648 001545A8  EC 44 10 2A */	fadds f2, f4, f2
/* 8015764C 001545AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80157650 001545B0  40 80 00 9C */	bge lbl_801576EC
/* 80157654 001545B4  C3 FA 06 04 */	lfs f31, 0x604(r26)
/* 80157658 001545B8  7F 45 D3 78 */	mr r5, r26
/* 8015765C 001545BC  7F 66 DB 78 */	mr r6, r27
/* 80157660 001545C0  38 61 00 70 */	addi r3, r1, 0x70
/* 80157664 001545C4  38 9A 04 5C */	addi r4, r26, 0x45c
/* 80157668 001545C8  4B FE 72 89 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8015766C 001545CC  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 80157670 001545D0  38 61 00 64 */	addi r3, r1, 0x64
/* 80157674 001545D4  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80157678 001545D8  38 81 01 3C */	addi r4, r1, 0x13c
/* 8015767C 001545DC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80157680 001545E0  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80157684 001545E4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80157688 001545E8  38 A1 01 48 */	addi r5, r1, 0x148
/* 8015768C 001545EC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80157690 001545F0  D0 41 01 40 */	stfs f2, 0x140(r1)
/* 80157694 001545F4  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 80157698 001545F8  D0 21 01 44 */	stfs f1, 0x144(r1)
/* 8015769C 001545FC  48 11 1B 01 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 801576A0 00154600  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801576A4 00154604  C0 C1 00 64 */	lfs f6, 0x64(r1)
/* 801576A8 00154608  C0 A1 00 68 */	lfs f5, 0x68(r1)
/* 801576AC 0015460C  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 801576B0 00154610  C0 81 00 6C */	lfs f4, 0x6c(r1)
/* 801576B4 00154614  C0 63 66 A0 */	lfs f3, sZeroVector__9CVector3f@l(r3)
/* 801576B8 00154618  C0 5F 00 04 */	lfs f2, 4(r31)
/* 801576BC 0015461C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 801576C0 00154620  C0 02 9E 60 */	lfs f0, lbl_805ABB80@sda21(r2)
/* 801576C4 00154624  D0 C1 01 C4 */	stfs f6, 0x1c4(r1)
/* 801576C8 00154628  D0 A1 01 C8 */	stfs f5, 0x1c8(r1)
/* 801576CC 0015462C  D0 81 01 CC */	stfs f4, 0x1cc(r1)
/* 801576D0 00154630  D0 61 01 D0 */	stfs f3, 0x1d0(r1)
/* 801576D4 00154634  D0 41 01 D4 */	stfs f2, 0x1d4(r1)
/* 801576D8 00154638  D0 21 01 D8 */	stfs f1, 0x1d8(r1)
/* 801576DC 0015463C  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 801576E0 00154640  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 801576E4 00154644  38 63 00 04 */	addi r3, r3, 4
/* 801576E8 00154648  4B FD A0 31 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801576EC:
/* 801576EC 0015464C  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_801576F0:
/* 801576F0 00154650  80 1A 05 DC */	lwz r0, 0x5dc(r26)
/* 801576F4 00154654  80 7A 05 E4 */	lwz r3, 0x5e4(r26)
/* 801576F8 00154658  54 00 20 36 */	slwi r0, r0, 4
/* 801576FC 0015465C  7C 03 02 14 */	add r0, r3, r0
/* 80157700 00154660  7C 1B 00 40 */	cmplw r27, r0
/* 80157704 00154664  40 82 FE FC */	bne lbl_80157600
/* 80157708 00154668  C0 3A 06 08 */	lfs f1, 0x608(r26)
/* 8015770C 0015466C  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80157710 00154670  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80157714 00154674  4C 40 13 82 */	cror 2, 0, 2
/* 80157718 00154678  40 82 01 D8 */	bne lbl_801578F0
/* 8015771C 0015467C  C3 FA 06 F4 */	lfs f31, 0x6f4(r26)
/* 80157720 00154680  38 61 00 58 */	addi r3, r1, 0x58
/* 80157724 00154684  38 9A 06 34 */	addi r4, r26, 0x634
/* 80157728 00154688  38 A1 01 48 */	addi r5, r1, 0x148
/* 8015772C 0015468C  48 11 1A 71 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 80157730 00154690  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80157734 00154694  C0 A1 00 58 */	lfs f5, 0x58(r1)
/* 80157738 00154698  C0 81 00 5C */	lfs f4, 0x5c(r1)
/* 8015773C 0015469C  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 80157740 001546A0  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 80157744 001546A4  C0 43 66 A0 */	lfs f2, sZeroVector__9CVector3f@l(r3)
/* 80157748 001546A8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8015774C 001546AC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80157750 001546B0  D0 A1 01 A8 */	stfs f5, 0x1a8(r1)
/* 80157754 001546B4  D0 81 01 AC */	stfs f4, 0x1ac(r1)
/* 80157758 001546B8  D0 61 01 B0 */	stfs f3, 0x1b0(r1)
/* 8015775C 001546BC  D0 41 01 B4 */	stfs f2, 0x1b4(r1)
/* 80157760 001546C0  D0 21 01 B8 */	stfs f1, 0x1b8(r1)
/* 80157764 001546C4  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80157768 001546C8  D3 E1 01 C0 */	stfs f31, 0x1c0(r1)
/* 8015776C 001546CC  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 80157770 001546D0  38 63 00 04 */	addi r3, r3, 4
/* 80157774 001546D4  4B FD 9F A5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80157778 001546D8  C3 FA 06 F0 */	lfs f31, 0x6f0(r26)
/* 8015777C 001546DC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80157780 001546E0  38 9A 06 40 */	addi r4, r26, 0x640
/* 80157784 001546E4  38 A1 01 48 */	addi r5, r1, 0x148
/* 80157788 001546E8  48 11 1A 15 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 8015778C 001546EC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80157790 001546F0  C0 A1 00 4C */	lfs f5, 0x4c(r1)
/* 80157794 001546F4  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 80157798 001546F8  38 81 01 8C */	addi r4, r1, 0x18c
/* 8015779C 001546FC  C0 61 00 54 */	lfs f3, 0x54(r1)
/* 801577A0 00154700  C0 43 66 A0 */	lfs f2, sZeroVector__9CVector3f@l(r3)
/* 801577A4 00154704  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801577A8 00154708  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801577AC 0015470C  D0 A1 01 8C */	stfs f5, 0x18c(r1)
/* 801577B0 00154710  D0 81 01 90 */	stfs f4, 0x190(r1)
/* 801577B4 00154714  D0 61 01 94 */	stfs f3, 0x194(r1)
/* 801577B8 00154718  D0 41 01 98 */	stfs f2, 0x198(r1)
/* 801577BC 0015471C  D0 21 01 9C */	stfs f1, 0x19c(r1)
/* 801577C0 00154720  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 801577C4 00154724  D3 E1 01 A4 */	stfs f31, 0x1a4(r1)
/* 801577C8 00154728  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 801577CC 0015472C  38 63 00 04 */	addi r3, r3, 4
/* 801577D0 00154730  4B FD 9F 49 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801577D4 00154734  C3 FA 06 04 */	lfs f31, 0x604(r26)
/* 801577D8 00154738  7F 45 D3 78 */	mr r5, r26
/* 801577DC 0015473C  38 61 00 34 */	addi r3, r1, 0x34
/* 801577E0 00154740  38 9A 04 5C */	addi r4, r26, 0x45c
/* 801577E4 00154744  38 DA 02 E0 */	addi r6, r26, 0x2e0
/* 801577E8 00154748  4B FE 74 39 */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 801577EC 0015474C  38 61 00 40 */	addi r3, r1, 0x40
/* 801577F0 00154750  38 81 00 34 */	addi r4, r1, 0x34
/* 801577F4 00154754  38 A1 01 48 */	addi r5, r1, 0x148
/* 801577F8 00154758  48 11 19 A5 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 801577FC 0015475C  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80157800 00154760  38 61 00 28 */	addi r3, r1, 0x28
/* 80157804 00154764  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80157808 00154768  38 81 01 30 */	addi r4, r1, 0x130
/* 8015780C 0015476C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80157810 00154770  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80157814 00154774  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80157818 00154778  38 A1 01 48 */	addi r5, r1, 0x148
/* 8015781C 0015477C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80157820 00154780  D0 41 01 30 */	stfs f2, 0x130(r1)
/* 80157824 00154784  D0 21 01 34 */	stfs f1, 0x134(r1)
/* 80157828 00154788  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 8015782C 0015478C  C3 FA 06 F8 */	lfs f31, 0x6f8(r26)
/* 80157830 00154790  48 11 19 6D */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 80157834 00154794  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80157838 00154798  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 8015783C 0015479C  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 80157840 001547A0  38 81 01 70 */	addi r4, r1, 0x170
/* 80157844 001547A4  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 80157848 001547A8  C0 43 66 A0 */	lfs f2, sZeroVector__9CVector3f@l(r3)
/* 8015784C 001547AC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80157850 001547B0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80157854 001547B4  D0 A1 01 70 */	stfs f5, 0x170(r1)
/* 80157858 001547B8  D0 81 01 74 */	stfs f4, 0x174(r1)
/* 8015785C 001547BC  D0 61 01 78 */	stfs f3, 0x178(r1)
/* 80157860 001547C0  D0 41 01 7C */	stfs f2, 0x17c(r1)
/* 80157864 001547C4  D0 21 01 80 */	stfs f1, 0x180(r1)
/* 80157868 001547C8  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8015786C 001547CC  D3 E1 01 88 */	stfs f31, 0x188(r1)
/* 80157870 001547D0  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 80157874 001547D4  38 63 00 04 */	addi r3, r3, 4
/* 80157878 001547D8  4B FD 9E A1 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8015787C 001547DC  C1 3A 00 58 */	lfs f9, 0x58(r26)
/* 80157880 001547E0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80157884 001547E4  C0 1A 06 04 */	lfs f0, 0x604(r26)
/* 80157888 001547E8  38 81 01 54 */	addi r4, r1, 0x154
/* 8015788C 001547EC  C1 1A 00 48 */	lfs f8, 0x48(r26)
/* 80157890 001547F0  C0 9A 00 38 */	lfs f4, 0x38(r26)
/* 80157894 001547F4  EC A0 02 72 */	fmuls f5, f0, f9
/* 80157898 001547F8  C0 FA 06 FC */	lfs f7, 0x6fc(r26)
/* 8015789C 001547FC  EC C0 02 32 */	fmuls f6, f0, f8
/* 801578A0 00154800  EC 60 01 32 */	fmuls f3, f0, f4
/* 801578A4 00154804  C0 43 66 A0 */	lfs f2, sZeroVector__9CVector3f@l(r3)
/* 801578A8 00154808  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801578AC 0015480C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801578B0 00154810  D0 61 01 54 */	stfs f3, 0x154(r1)
/* 801578B4 00154814  D0 C1 01 58 */	stfs f6, 0x158(r1)
/* 801578B8 00154818  D0 A1 01 5C */	stfs f5, 0x15c(r1)
/* 801578BC 0015481C  D0 41 01 60 */	stfs f2, 0x160(r1)
/* 801578C0 00154820  D0 21 01 64 */	stfs f1, 0x164(r1)
/* 801578C4 00154824  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 801578C8 00154828  D0 E1 01 6C */	stfs f7, 0x16c(r1)
/* 801578CC 0015482C  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 801578D0 00154830  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 801578D4 00154834  38 63 00 04 */	addi r3, r3, 4
/* 801578D8 00154838  D1 01 00 14 */	stfs f8, 0x14(r1)
/* 801578DC 0015483C  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 801578E0 00154840  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 801578E4 00154844  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 801578E8 00154848  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 801578EC 0015484C  4B FD 9E 2D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801578F0:
/* 801578F0 00154850  80 A1 0A 4C */	lwz r5, 0xa4c(r1)
/* 801578F4 00154854  38 60 00 00 */	li r3, 0
/* 801578F8 00154858  2C 05 00 00 */	cmpwi r5, 0
/* 801578FC 0015485C  40 81 00 40 */	ble lbl_8015793C
/* 80157900 00154860  2C 05 00 08 */	cmpwi r5, 8
/* 80157904 00154864  38 85 FF F8 */	addi r4, r5, -8
/* 80157908 00154868  40 81 00 20 */	ble lbl_80157928
/* 8015790C 0015486C  38 04 00 07 */	addi r0, r4, 7
/* 80157910 00154870  54 00 E8 FE */	srwi r0, r0, 3
/* 80157914 00154874  7C 09 03 A6 */	mtctr r0
/* 80157918 00154878  2C 04 00 00 */	cmpwi r4, 0
/* 8015791C 0015487C  40 81 00 0C */	ble lbl_80157928
lbl_80157920:
/* 80157920 00154880  38 63 00 08 */	addi r3, r3, 8
/* 80157924 00154884  42 00 FF FC */	bdnz lbl_80157920
lbl_80157928:
/* 80157928 00154888  7C 03 28 50 */	subf r0, r3, r5
/* 8015792C 0015488C  7C 09 03 A6 */	mtctr r0
/* 80157930 00154890  7C 03 28 00 */	cmpw r3, r5
/* 80157934 00154894  40 80 00 08 */	bge lbl_8015793C
lbl_80157938:
/* 80157938 00154898  42 00 00 00 */	bdnz lbl_80157938
lbl_8015793C:
/* 8015793C 0015489C  38 00 00 00 */	li r0, 0
/* 80157940 001548A0  90 01 0A 4C */	stw r0, 0xa4c(r1)
/* 80157944 001548A4  38 00 12 78 */	li r0, 0x1278
/* 80157948 001548A8  13 E1 00 0C */	psq_lx f31, r1, r0, 0, qr0
/* 8015794C 001548AC  CB E1 12 70 */	lfd f31, 0x1270(r1)
/* 80157950 001548B0  BB 41 12 58 */	lmw r26, 0x1258(r1)
/* 80157954 001548B4  80 01 12 84 */	lwz r0, 0x1284(r1)
/* 80157958 001548B8  7C 08 03 A6 */	mtlr r0
/* 8015795C 001548BC  38 21 12 80 */	addi r1, r1, 0x1280
/* 80157960 001548C0  4E 80 00 20 */	blr

.global UpdatePFDestination__9CParasiteFR13CStateManager
UpdatePFDestination__9CParasiteFR13CStateManager:
/* 80157964 001548C4  4E 80 00 20 */	blr

.global Touch__9CParasiteFR6CActorR13CStateManager
Touch__9CParasiteFR6CActorR13CStateManager:
/* 80157968 001548C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015796C 001548CC  7C 08 02 A6 */	mflr r0
/* 80157970 001548D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80157974 001548D4  4B F2 21 2D */	bl Touch__10CPatternedFR6CActorR13CStateManager
/* 80157978 001548D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015797C 001548DC  7C 08 03 A6 */	mtlr r0
/* 80157980 001548E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80157984 001548E4  4E 80 00 20 */	blr

.global GetUp__9CParasiteFR13CStateManager9EStateMsgf
GetUp__9CParasiteFR13CStateManager9EStateMsgf:
/* 80157988 001548E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015798C 001548EC  7C 08 02 A6 */	mflr r0
/* 80157990 001548F0  2C 05 00 00 */	cmpwi r5, 0
/* 80157994 001548F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80157998 001548F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015799C 001548FC  7C 7F 1B 78 */	mr r31, r3
/* 801579A0 00154900  40 82 00 5C */	bne lbl_801579FC
/* 801579A4 00154904  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801579A8 00154908  38 80 00 01 */	li r4, 1
/* 801579AC 0015490C  4B FE 30 2D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801579B0 00154910  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 801579B4 00154914  2C 00 00 02 */	cmpwi r0, 2
/* 801579B8 00154918  40 82 00 44 */	bne lbl_801579FC
/* 801579BC 0015491C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801579C0 00154920  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801579C4 00154924  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801579C8 00154928  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 801579CC 0015492C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801579D0 00154930  38 61 00 08 */	addi r3, r1, 8
/* 801579D4 00154934  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 801579D8 00154938  38 A1 00 0C */	addi r5, r1, 0xc
/* 801579DC 0015493C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801579E0 00154940  38 E0 00 01 */	li r7, 1
/* 801579E4 00154944  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 801579E8 00154948  39 00 00 00 */	li r8, 0
/* 801579EC 0015494C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801579F0 00154950  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801579F4 00154954  A0 9F 07 3E */	lhz r4, 0x73e(r31)
/* 801579F8 00154958  48 19 28 B9 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
lbl_801579FC:
/* 801579FC 0015495C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80157A00 00154960  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80157A04 00154964  7C 08 03 A6 */	mtlr r0
/* 80157A08 00154968  38 21 00 20 */	addi r1, r1, 0x20
/* 80157A0C 0015496C  4E 80 00 20 */	blr

.global Crouch__9CParasiteFR13CStateManager9EStateMsgf
Crouch__9CParasiteFR13CStateManager9EStateMsgf:
/* 80157A10 00154970  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80157A14 00154974  7C 08 02 A6 */	mflr r0
/* 80157A18 00154978  2C 05 00 00 */	cmpwi r5, 0
/* 80157A1C 0015497C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80157A20 00154980  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80157A24 00154984  7C 7F 1B 78 */	mr r31, r3
/* 80157A28 00154988  40 82 00 5C */	bne lbl_80157A84
/* 80157A2C 0015498C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80157A30 00154990  38 80 00 00 */	li r4, 0
/* 80157A34 00154994  4B FE 2F A5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80157A38 00154998  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 80157A3C 0015499C  2C 00 00 02 */	cmpwi r0, 2
/* 80157A40 001549A0  40 82 00 44 */	bne lbl_80157A84
/* 80157A44 001549A4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80157A48 001549A8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80157A4C 001549AC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80157A50 001549B0  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 80157A54 001549B4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80157A58 001549B8  38 61 00 08 */	addi r3, r1, 8
/* 80157A5C 001549BC  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 80157A60 001549C0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80157A64 001549C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80157A68 001549C8  38 E0 00 01 */	li r7, 1
/* 80157A6C 001549CC  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80157A70 001549D0  39 00 00 00 */	li r8, 0
/* 80157A74 001549D4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80157A78 001549D8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80157A7C 001549DC  A0 9F 07 40 */	lhz r4, 0x740(r31)
/* 80157A80 001549E0  48 19 28 31 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
lbl_80157A84:
/* 80157A84 001549E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80157A88 001549E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80157A8C 001549EC  7C 08 03 A6 */	mtlr r0
/* 80157A90 001549F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80157A94 001549F4  4E 80 00 20 */	blr

.global Halt__9CParasiteFR13CStateManager9EStateMsgf
Halt__9CParasiteFR13CStateManager9EStateMsgf:
/* 80157A98 001549F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80157A9C 001549FC  7C 08 02 A6 */	mflr r0
/* 80157AA0 00154A00  2C 05 00 01 */	cmpwi r5, 1
/* 80157AA4 00154A04  90 01 00 44 */	stw r0, 0x44(r1)
/* 80157AA8 00154A08  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80157AAC 00154A0C  7C 7F 1B 78 */	mr r31, r3
/* 80157AB0 00154A10  41 82 00 98 */	beq lbl_80157B48
/* 80157AB4 00154A14  40 80 00 10 */	bge lbl_80157AC4
/* 80157AB8 00154A18  2C 05 00 00 */	cmpwi r5, 0
/* 80157ABC 00154A1C  40 80 00 14 */	bge lbl_80157AD0
/* 80157AC0 00154A20  48 00 01 24 */	b lbl_80157BE4
lbl_80157AC4:
/* 80157AC4 00154A24  2C 05 00 03 */	cmpwi r5, 3
/* 80157AC8 00154A28  40 80 01 1C */	bge lbl_80157BE4
/* 80157ACC 00154A2C  48 00 00 C0 */	b lbl_80157B8C
lbl_80157AD0:
/* 80157AD0 00154A30  C0 1F 07 10 */	lfs f0, 0x710(r31)
/* 80157AD4 00154A34  38 60 00 01 */	li r3, 1
/* 80157AD8 00154A38  D0 1F 03 40 */	stfs f0, 0x340(r31)
/* 80157ADC 00154A3C  90 7F 03 2C */	stw r3, 0x32c(r31)
/* 80157AE0 00154A40  88 1F 07 43 */	lbz r0, 0x743(r31)
/* 80157AE4 00154A44  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80157AE8 00154A48  98 1F 07 43 */	stb r0, 0x743(r31)
/* 80157AEC 00154A4C  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 80157AF0 00154A50  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80157AF4 00154A54  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 80157AF8 00154A58  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 80157AFC 00154A5C  2C 00 00 02 */	cmpwi r0, 2
/* 80157B00 00154A60  40 82 00 E4 */	bne lbl_80157BE4
/* 80157B04 00154A64  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80157B08 00154A68  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80157B0C 00154A6C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80157B10 00154A70  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 80157B14 00154A74  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80157B18 00154A78  38 61 00 08 */	addi r3, r1, 8
/* 80157B1C 00154A7C  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 80157B20 00154A80  38 A1 00 20 */	addi r5, r1, 0x20
/* 80157B24 00154A84  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80157B28 00154A88  38 E0 00 01 */	li r7, 1
/* 80157B2C 00154A8C  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80157B30 00154A90  39 00 00 00 */	li r8, 0
/* 80157B34 00154A94  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80157B38 00154A98  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80157B3C 00154A9C  A0 9F 07 3C */	lhz r4, 0x73c(r31)
/* 80157B40 00154AA0  48 19 27 71 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 80157B44 00154AA4  48 00 00 A0 */	b lbl_80157BE4
lbl_80157B48:
/* 80157B48 00154AA8  3C A0 80 3E */	lis r5, lbl_803E2FF8@ha
/* 80157B4C 00154AAC  38 C1 00 14 */	addi r6, r1, 0x14
/* 80157B50 00154AB0  39 45 2F F8 */	addi r10, r5, lbl_803E2FF8@l
/* 80157B54 00154AB4  38 A0 00 0A */	li r5, 0xa
/* 80157B58 00154AB8  81 2A 00 00 */	lwz r9, 0(r10)
/* 80157B5C 00154ABC  38 E0 00 01 */	li r7, 1
/* 80157B60 00154AC0  81 0A 00 04 */	lwz r8, 4(r10)
/* 80157B64 00154AC4  80 0A 00 08 */	lwz r0, 8(r10)
/* 80157B68 00154AC8  91 21 00 14 */	stw r9, 0x14(r1)
/* 80157B6C 00154ACC  91 01 00 18 */	stw r8, 0x18(r1)
/* 80157B70 00154AD0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80157B74 00154AD4  4B F2 4C 41 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80157B78 00154AD8  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 80157B7C 00154ADC  38 60 00 00 */	li r3, 0
/* 80157B80 00154AE0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80157B84 00154AE4  98 1F 04 00 */	stb r0, 0x400(r31)
/* 80157B88 00154AE8  48 00 00 5C */	b lbl_80157BE4
lbl_80157B8C:
/* 80157B8C 00154AEC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80157B90 00154AF0  38 00 00 0A */	li r0, 0xa
/* 80157B94 00154AF4  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80157B98 00154AF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80157B9C 00154AFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80157BA0 00154B00  90 61 00 0C */	stw r3, 0xc(r1)
/* 80157BA4 00154B04  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80157BA8 00154B08  38 63 00 04 */	addi r3, r3, 4
/* 80157BAC 00154B0C  4B FD 9C 0D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 80157BB0 00154B10  34 01 00 0C */	addic. r0, r1, 0xc
/* 80157BB4 00154B14  41 82 00 10 */	beq lbl_80157BC4
/* 80157BB8 00154B18  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80157BBC 00154B1C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80157BC0 00154B20  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80157BC4:
/* 80157BC4 00154B24  38 60 00 00 */	li r3, 0
/* 80157BC8 00154B28  90 7F 03 2C */	stw r3, 0x32c(r31)
/* 80157BCC 00154B2C  88 1F 07 43 */	lbz r0, 0x743(r31)
/* 80157BD0 00154B30  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80157BD4 00154B34  98 1F 07 43 */	stb r0, 0x743(r31)
/* 80157BD8 00154B38  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 80157BDC 00154B3C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80157BE0 00154B40  98 1F 05 D6 */	stb r0, 0x5d6(r31)
lbl_80157BE4:
/* 80157BE4 00154B44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80157BE8 00154B48  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80157BEC 00154B4C  7C 08 03 A6 */	mtlr r0
/* 80157BF0 00154B50  38 21 00 40 */	addi r1, r1, 0x40
/* 80157BF4 00154B54  4E 80 00 20 */	blr

.global TelegraphAttack__9CParasiteFR13CStateManager9EStateMsgf
TelegraphAttack__9CParasiteFR13CStateManager9EStateMsgf:
/* 80157BF8 00154B58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80157BFC 00154B5C  7C 08 02 A6 */	mflr r0
/* 80157C00 00154B60  2C 05 00 00 */	cmpwi r5, 0
/* 80157C04 00154B64  90 01 00 44 */	stw r0, 0x44(r1)
/* 80157C08 00154B68  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 80157C0C 00154B6C  7C 7B 1B 78 */	mr r27, r3
/* 80157C10 00154B70  7C 9C 23 78 */	mr r28, r4
/* 80157C14 00154B74  41 82 00 0C */	beq lbl_80157C20
/* 80157C18 00154B78  41 80 01 24 */	blt lbl_80157D3C
/* 80157C1C 00154B7C  48 00 01 20 */	b lbl_80157D3C
lbl_80157C20:
/* 80157C20 00154B80  3B DC 0F 54 */	addi r30, r28, 0xf54
/* 80157C24 00154B84  83 BC 0F 58 */	lwz r29, 0xf58(r28)
/* 80157C28 00154B88  48 00 00 F8 */	b lbl_80157D20
lbl_80157C2C:
/* 80157C2C 00154B8C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80157C30 00154B90  7F 83 E3 78 */	mr r3, r28
/* 80157C34 00154B94  38 81 00 08 */	addi r4, r1, 8
/* 80157C38 00154B98  B0 01 00 08 */	sth r0, 8(r1)
/* 80157C3C 00154B9C  4B EF 49 39 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80157C40 00154BA0  7C 64 1B 78 */	mr r4, r3
/* 80157C44 00154BA4  38 61 00 0C */	addi r3, r1, 0xc
/* 80157C48 00154BA8  4B F4 D7 F1 */	bl "__ct__26TPatternedCast<9CParasite>FP7CEntity"
/* 80157C4C 00154BAC  4B F4 D7 C1 */	bl "CastTo<9CParasite>__10CPatternedFRC26TPatternedCast<9CParasite>"
/* 80157C50 00154BB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80157C54 00154BB4  40 82 00 18 */	bne lbl_80157C6C
/* 80157C58 00154BB8  7F C3 F3 78 */	mr r3, r30
/* 80157C5C 00154BBC  7F A4 EB 78 */	mr r4, r29
/* 80157C60 00154BC0  4B FD 52 11 */	bl "erase__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRCQ34rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>8iterator"
/* 80157C64 00154BC4  7C 7D 1B 78 */	mr r29, r3
/* 80157C68 00154BC8  48 00 00 B8 */	b lbl_80157D20
lbl_80157C6C:
/* 80157C6C 00154BCC  7C 1F D8 40 */	cmplw r31, r27
/* 80157C70 00154BD0  41 82 00 AC */	beq lbl_80157D1C
/* 80157C74 00154BD4  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 80157C78 00154BD8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80157C7C 00154BDC  41 82 00 A0 */	beq lbl_80157D1C
/* 80157C80 00154BE0  C0 FF 00 50 */	lfs f7, 0x50(r31)
/* 80157C84 00154BE4  C0 1B 00 50 */	lfs f0, 0x50(r27)
/* 80157C88 00154BE8  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80157C8C 00154BEC  EC C7 00 28 */	fsubs f6, f7, f0
/* 80157C90 00154BF0  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80157C94 00154BF4  C1 1F 00 60 */	lfs f8, 0x60(r31)
/* 80157C98 00154BF8  EC 83 00 28 */	fsubs f4, f3, f0
/* 80157C9C 00154BFC  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 80157CA0 00154C00  EC 26 01 B2 */	fmuls f1, f6, f6
/* 80157CA4 00154C04  EC A8 00 28 */	fsubs f5, f8, f0
/* 80157CA8 00154C08  C0 1B 06 D0 */	lfs f0, 0x6d0(r27)
/* 80157CAC 00154C0C  EC 44 01 32 */	fmuls f2, f4, f4
/* 80157CB0 00154C10  EC 00 00 32 */	fmuls f0, f0, f0
/* 80157CB4 00154C14  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80157CB8 00154C18  EC 65 01 72 */	fmuls f3, f5, f5
/* 80157CBC 00154C1C  EC 22 08 2A */	fadds f1, f2, f1
/* 80157CC0 00154C20  D0 E1 00 14 */	stfs f7, 0x14(r1)
/* 80157CC4 00154C24  D1 01 00 18 */	stfs f8, 0x18(r1)
/* 80157CC8 00154C28  EC 23 08 2A */	fadds f1, f3, f1
/* 80157CCC 00154C2C  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80157CD0 00154C30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80157CD4 00154C34  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 80157CD8 00154C38  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80157CDC 00154C3C  40 80 00 40 */	bge lbl_80157D1C
/* 80157CE0 00154C40  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 80157CE4 00154C44  38 60 00 01 */	li r3, 1
/* 80157CE8 00154C48  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80157CEC 00154C4C  98 1F 07 42 */	stb r0, 0x742(r31)
/* 80157CF0 00154C50  80 7C 09 00 */	lwz r3, 0x900(r28)
/* 80157CF4 00154C54  48 1B A7 E9 */	bl Float__9CRandom16Fv
/* 80157CF8 00154C58  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 80157CFC 00154C5C  EC 00 00 7A */	fmadds f0, f0, f1, f0
/* 80157D00 00154C60  D0 1F 06 08 */	stfs f0, 0x608(r31)
/* 80157D04 00154C64  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 80157D08 00154C68  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 80157D0C 00154C6C  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80157D10 00154C70  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80157D14 00154C74  D0 3F 05 FC */	stfs f1, 0x5fc(r31)
/* 80157D18 00154C78  D0 5F 06 00 */	stfs f2, 0x600(r31)
lbl_80157D1C:
/* 80157D1C 00154C7C  83 BD 00 04 */	lwz r29, 4(r29)
lbl_80157D20:
/* 80157D20 00154C80  80 1E 00 08 */	lwz r0, 8(r30)
/* 80157D24 00154C84  7C 1D 00 40 */	cmplw r29, r0
/* 80157D28 00154C88  40 82 FF 04 */	bne lbl_80157C2C
/* 80157D2C 00154C8C  88 1B 04 00 */	lbz r0, 0x400(r27)
/* 80157D30 00154C90  38 60 00 00 */	li r3, 0
/* 80157D34 00154C94  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80157D38 00154C98  98 1B 04 00 */	stb r0, 0x400(r27)
lbl_80157D3C:
/* 80157D3C 00154C9C  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 80157D40 00154CA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80157D44 00154CA4  7C 08 03 A6 */	mtlr r0
/* 80157D48 00154CA8  38 21 00 40 */	addi r1, r1, 0x40
/* 80157D4C 00154CAC  4E 80 00 20 */	blr

.global Death__9CParasiteFRC9CVector3fR13CStateManager
Death__9CParasiteFRC9CVector3fR13CStateManager:
/* 80157D50 00154CB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80157D54 00154CB4  7C 08 02 A6 */	mflr r0
/* 80157D58 00154CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80157D5C 00154CBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80157D60 00154CC0  7C DF 33 78 */	mr r31, r6
/* 80157D64 00154CC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80157D68 00154CC8  7C BE 2B 78 */	mr r30, r5
/* 80157D6C 00154CCC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80157D70 00154CD0  7C 9D 23 78 */	mr r29, r4
/* 80157D74 00154CD4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80157D78 00154CD8  7C 7C 1B 78 */	mr r28, r3
/* 80157D7C 00154CDC  4B FC 35 FD */	bl Stop__13CPhysicsActorFv
/* 80157D80 00154CE0  7F 83 E3 78 */	mr r3, r28
/* 80157D84 00154CE4  7F A4 EB 78 */	mr r4, r29
/* 80157D88 00154CE8  81 9C 00 00 */	lwz r12, 0(r28)
/* 80157D8C 00154CEC  38 A0 00 00 */	li r5, 0
/* 80157D90 00154CF0  C0 22 9E 50 */	lfs f1, lbl_805ABB70@sda21(r2)
/* 80157D94 00154CF4  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80157D98 00154CF8  7D 89 03 A6 */	mtctr r12
/* 80157D9C 00154CFC  4E 80 04 21 */	bctrl
/* 80157DA0 00154D00  7F 83 E3 78 */	mr r3, r28
/* 80157DA4 00154D04  81 9C 00 00 */	lwz r12, 0(r28)
/* 80157DA8 00154D08  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80157DAC 00154D0C  7D 89 03 A6 */	mtctr r12
/* 80157DB0 00154D10  4E 80 04 21 */	bctrl
/* 80157DB4 00154D14  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80157DB8 00154D18  FC 20 08 50 */	fneg f1, f1
/* 80157DBC 00154D1C  7F 83 E3 78 */	mr r3, r28
/* 80157DC0 00154D20  7F A4 EB 78 */	mr r4, r29
/* 80157DC4 00154D24  D0 1C 01 50 */	stfs f0, 0x150(r28)
/* 80157DC8 00154D28  7F C5 F3 78 */	mr r5, r30
/* 80157DCC 00154D2C  7F E6 FB 78 */	mr r6, r31
/* 80157DD0 00154D30  D0 1C 01 54 */	stfs f0, 0x154(r28)
/* 80157DD4 00154D34  D0 3C 01 58 */	stfs f1, 0x158(r28)
/* 80157DD8 00154D38  4B F2 35 CD */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 80157DDC 00154D3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80157DE0 00154D40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80157DE4 00154D44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80157DE8 00154D48  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80157DEC 00154D4C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80157DF0 00154D50  7C 08 03 A6 */	mtlr r0
/* 80157DF4 00154D54  38 21 00 20 */	addi r1, r1, 0x20
/* 80157DF8 00154D58  4E 80 00 20 */	blr

.global TargetPlayer__9CParasiteFR13CStateManager9EStateMsgf
TargetPlayer__9CParasiteFR13CStateManager9EStateMsgf:
/* 80157DFC 00154D5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80157E00 00154D60  7C 08 02 A6 */	mflr r0
/* 80157E04 00154D64  2C 05 00 01 */	cmpwi r5, 1
/* 80157E08 00154D68  90 01 00 44 */	stw r0, 0x44(r1)
/* 80157E0C 00154D6C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80157E10 00154D70  41 82 00 4C */	beq lbl_80157E5C
/* 80157E14 00154D74  40 80 00 D0 */	bge lbl_80157EE4
/* 80157E18 00154D78  2C 05 00 00 */	cmpwi r5, 0
/* 80157E1C 00154D7C  40 80 00 0C */	bge lbl_80157E28
/* 80157E20 00154D80  48 00 00 C4 */	b lbl_80157EE4
/* 80157E24 00154D84  48 00 00 C0 */	b lbl_80157EE4
lbl_80157E28:
/* 80157E28 00154D88  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80157E2C 00154D8C  C0 62 9E 50 */	lfs f3, lbl_805ABB70@sda21(r2)
/* 80157E30 00154D90  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80157E34 00154D94  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80157E38 00154D98  EC 00 18 2A */	fadds f0, f0, f3
/* 80157E3C 00154D9C  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 80157E40 00154DA0  C0 22 9E 68 */	lfs f1, lbl_805ABB88@sda21(r2)
/* 80157E44 00154DA4  EC 64 18 2A */	fadds f3, f4, f3
/* 80157E48 00154DA8  D0 03 05 F8 */	stfs f0, 0x5f8(r3)
/* 80157E4C 00154DAC  EC 02 08 2A */	fadds f0, f2, f1
/* 80157E50 00154DB0  D0 63 05 FC */	stfs f3, 0x5fc(r3)
/* 80157E54 00154DB4  D0 03 06 00 */	stfs f0, 0x600(r3)
/* 80157E58 00154DB8  48 00 00 8C */	b lbl_80157EE4
lbl_80157E5C:
/* 80157E5C 00154DBC  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 80157E60 00154DC0  38 81 00 20 */	addi r4, r1, 0x20
/* 80157E64 00154DC4  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 80157E68 00154DC8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80157E6C 00154DCC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80157E70 00154DD0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80157E74 00154DD4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80157E78 00154DD8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80157E7C 00154DDC  C0 43 00 5C */	lfs f2, 0x5c(r3)
/* 80157E80 00154DE0  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 80157E84 00154DE4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80157E88 00154DE8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80157E8C 00154DEC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80157E90 00154DF0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80157E94 00154DF4  C0 23 05 FC */	lfs f1, 0x5fc(r3)
/* 80157E98 00154DF8  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80157E9C 00154DFC  C0 63 06 00 */	lfs f3, 0x600(r3)
/* 80157EA0 00154E00  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80157EA4 00154E04  EC 81 00 28 */	fsubs f4, f1, f0
/* 80157EA8 00154E08  C0 23 05 F8 */	lfs f1, 0x5f8(r3)
/* 80157EAC 00154E0C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80157EB0 00154E10  EC 43 10 28 */	fsubs f2, f3, f2
/* 80157EB4 00154E14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80157EB8 00154E18  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80157EBC 00154E1C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80157EC0 00154E20  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80157EC4 00154E24  83 E3 04 50 */	lwz r31, 0x450(r3)
/* 80157EC8 00154E28  38 61 00 2C */	addi r3, r1, 0x2c
/* 80157ECC 00154E2C  48 11 12 D1 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 80157ED0 00154E30  C0 22 9E 58 */	lfs f1, lbl_805ABB78@sda21(r2)
/* 80157ED4 00154E34  7F E3 FB 78 */	mr r3, r31
/* 80157ED8 00154E38  38 81 00 2C */	addi r4, r1, 0x2c
/* 80157EDC 00154E3C  38 A1 00 08 */	addi r5, r1, 8
/* 80157EE0 00154E40  4B FE 25 89 */	bl FaceDirection3D__15CBodyControllerFRC9CVector3ff
lbl_80157EE4:
/* 80157EE4 00154E44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80157EE8 00154E48  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80157EEC 00154E4C  7C 08 03 A6 */	mtlr r0
/* 80157EF0 00154E50  38 21 00 40 */	addi r1, r1, 0x40
/* 80157EF4 00154E54  4E 80 00 20 */	blr

.global Retreat__9CParasiteFR13CStateManager9EStateMsgf
Retreat__9CParasiteFR13CStateManager9EStateMsgf:
/* 80157EF8 00154E58  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80157EFC 00154E5C  7C 08 02 A6 */	mflr r0
/* 80157F00 00154E60  2C 05 00 01 */	cmpwi r5, 1
/* 80157F04 00154E64  90 01 00 64 */	stw r0, 0x64(r1)
/* 80157F08 00154E68  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80157F0C 00154E6C  7C 7F 1B 78 */	mr r31, r3
/* 80157F10 00154E70  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80157F14 00154E74  7C 9E 23 78 */	mr r30, r4
/* 80157F18 00154E78  41 82 02 30 */	beq lbl_80158148
/* 80157F1C 00154E7C  40 80 00 10 */	bge lbl_80157F2C
/* 80157F20 00154E80  2C 05 00 00 */	cmpwi r5, 0
/* 80157F24 00154E84  40 80 00 14 */	bge lbl_80157F38
/* 80157F28 00154E88  48 00 02 3C */	b lbl_80158164
lbl_80157F2C:
/* 80157F2C 00154E8C  2C 05 00 03 */	cmpwi r5, 3
/* 80157F30 00154E90  40 80 02 34 */	bge lbl_80158164
/* 80157F34 00154E94  48 00 02 20 */	b lbl_80158154
lbl_80157F38:
/* 80157F38 00154E98  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 80157F3C 00154E9C  38 61 00 20 */	addi r3, r1, 0x20
/* 80157F40 00154EA0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80157F44 00154EA4  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 80157F48 00154EA8  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80157F4C 00154EAC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80157F50 00154EB0  EC A1 00 28 */	fsubs f5, f1, f0
/* 80157F54 00154EB4  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80157F58 00154EB8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80157F5C 00154EBC  EC 64 18 28 */	fsubs f3, f4, f3
/* 80157F60 00154EC0  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80157F64 00154EC4  EC 22 08 28 */	fsubs f1, f2, f1
/* 80157F68 00154EC8  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 80157F6C 00154ECC  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80157F70 00154ED0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80157F74 00154ED4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80157F78 00154ED8  48 1B C7 81 */	bl CanBeNormalized__9CVector3fCFv
/* 80157F7C 00154EDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80157F80 00154EE0  41 82 00 2C */	beq lbl_80157FAC
/* 80157F84 00154EE4  38 61 00 14 */	addi r3, r1, 0x14
/* 80157F88 00154EE8  38 81 00 20 */	addi r4, r1, 0x20
/* 80157F8C 00154EEC  48 1B C8 C5 */	bl AsNormalized__9CVector3fCFv
/* 80157F90 00154EF0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80157F94 00154EF4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80157F98 00154EF8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80157F9C 00154EFC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80157FA0 00154F00  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80157FA4 00154F04  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80157FA8 00154F08  48 00 00 20 */	b lbl_80157FC8
lbl_80157FAC:
/* 80157FAC 00154F0C  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80157FB0 00154F10  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 80157FB4 00154F14  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 80157FB8 00154F18  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80157FBC 00154F1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80157FC0 00154F20  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80157FC4 00154F24  D0 41 00 28 */	stfs f2, 0x28(r1)
lbl_80157FC8:
/* 80157FC8 00154F28  C0 A2 9E 6C */	lfs f5, lbl_805ABB8C@sda21(r2)
/* 80157FCC 00154F2C  7F E3 FB 78 */	mr r3, r31
/* 80157FD0 00154F30  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80157FD4 00154F34  38 81 00 08 */	addi r4, r1, 8
/* 80157FD8 00154F38  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80157FDC 00154F3C  EC 05 00 32 */	fmuls f0, f5, f0
/* 80157FE0 00154F40  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80157FE4 00154F44  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80157FE8 00154F48  EC 85 00 F2 */	fmuls f4, f5, f3
/* 80157FEC 00154F4C  C0 DF 00 50 */	lfs f6, 0x50(r31)
/* 80157FF0 00154F50  EC 01 00 28 */	fsubs f0, f1, f0
/* 80157FF4 00154F54  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80157FF8 00154F58  EC 25 00 B2 */	fmuls f1, f5, f2
/* 80157FFC 00154F5C  EC 46 20 28 */	fsubs f2, f6, f4
/* 80158000 00154F60  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80158004 00154F64  EC 03 08 28 */	fsubs f0, f3, f1
/* 80158008 00154F68  D0 5F 05 FC */	stfs f2, 0x5fc(r31)
/* 8015800C 00154F6C  D0 1F 06 00 */	stfs f0, 0x600(r31)
/* 80158010 00154F70  80 BF 05 F8 */	lwz r5, 0x5f8(r31)
/* 80158014 00154F74  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80158018 00154F78  90 A1 00 08 */	stw r5, 8(r1)
/* 8015801C 00154F7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80158020 00154F80  80 1F 06 00 */	lwz r0, 0x600(r31)
/* 80158024 00154F84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80158028 00154F88  48 00 05 21 */	bl FaceTarget__9CParasiteF9CVector3f
/* 8015802C 00154F8C  39 60 00 00 */	li r11, 0
/* 80158030 00154F90  39 20 00 01 */	li r9, 1
/* 80158034 00154F94  91 7F 05 E8 */	stw r11, 0x5e8(r31)
/* 80158038 00154F98  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8015803C 00154F9C  88 61 00 50 */	lbz r3, 0x50(r1)
/* 80158040 00154FA0  51 63 3E 30 */	rlwimi r3, r11, 7, 0x18, 0x18
/* 80158044 00154FA4  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 80158048 00154FA8  51 60 26 F6 */	rlwimi r0, r11, 4, 0x1b, 0x1b
/* 8015804C 00154FAC  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80158050 00154FB0  39 05 AA 68 */	addi r8, r5, lbl_803DAA68@l
/* 80158054 00154FB4  98 1F 07 42 */	stb r0, 0x742(r31)
/* 80158058 00154FB8  3C C0 80 3E */	lis r6, lbl_803DA9FC@ha
/* 8015805C 00154FBC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80158060 00154FC0  38 E0 00 10 */	li r7, 0x10
/* 80158064 00154FC4  89 5F 07 42 */	lbz r10, 0x742(r31)
/* 80158068 00154FC8  51 6A 1F 38 */	rlwimi r10, r11, 3, 0x1c, 0x1c
/* 8015806C 00154FCC  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 80158070 00154FD0  91 01 00 2C */	stw r8, 0x2c(r1)
/* 80158074 00154FD4  38 C6 A9 FC */	addi r6, r6, lbl_803DA9FC@l
/* 80158078 00154FD8  51 60 36 72 */	rlwimi r0, r11, 6, 0x19, 0x19
/* 8015807C 00154FDC  99 5F 07 42 */	stb r10, 0x742(r31)
/* 80158080 00154FE0  38 80 00 10 */	li r4, 0x10
/* 80158084 00154FE4  89 1F 07 42 */	lbz r8, 0x742(r31)
/* 80158088 00154FE8  51 28 36 72 */	rlwimi r8, r9, 6, 0x19, 0x19
/* 8015808C 00154FEC  98 61 00 50 */	stb r3, 0x50(r1)
/* 80158090 00154FF0  99 1F 07 42 */	stb r8, 0x742(r31)
/* 80158094 00154FF4  C0 BF 05 F8 */	lfs f5, 0x5f8(r31)
/* 80158098 00154FF8  C0 9F 05 FC */	lfs f4, 0x5fc(r31)
/* 8015809C 00154FFC  C0 7F 06 00 */	lfs f3, 0x600(r31)
/* 801580A0 00155000  C0 45 00 00 */	lfs f2, 0(r5)
/* 801580A4 00155004  C0 25 00 04 */	lfs f1, 4(r5)
/* 801580A8 00155008  C0 05 00 08 */	lfs f0, 8(r5)
/* 801580AC 0015500C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801580B0 00155010  90 E1 00 30 */	stw r7, 0x30(r1)
/* 801580B4 00155014  3B E3 00 04 */	addi r31, r3, 4
/* 801580B8 00155018  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 801580BC 0015501C  7F E3 FB 78 */	mr r3, r31
/* 801580C0 00155020  91 21 00 34 */	stw r9, 0x34(r1)
/* 801580C4 00155024  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 801580C8 00155028  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801580CC 0015502C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801580D0 00155030  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801580D4 00155034  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801580D8 00155038  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801580DC 0015503C  98 01 00 50 */	stb r0, 0x50(r1)
/* 801580E0 00155040  4B FD 93 59 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801580E4 00155044  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801580E8 00155048  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 801580EC 0015504C  38 83 A9 FC */	addi r4, r3, lbl_803DA9FC@l
/* 801580F0 00155050  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801580F4 00155054  90 1F 01 D4 */	stw r0, 0x1d4(r31)
/* 801580F8 00155058  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801580FC 0015505C  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80158100 00155060  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80158104 00155064  90 BF 01 D8 */	stw r5, 0x1d8(r31)
/* 80158108 00155068  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8015810C 0015506C  90 7F 01 DC */	stw r3, 0x1dc(r31)
/* 80158110 00155070  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80158114 00155074  90 BF 01 E0 */	stw r5, 0x1e0(r31)
/* 80158118 00155078  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8015811C 0015507C  90 7F 01 E4 */	stw r3, 0x1e4(r31)
/* 80158120 00155080  80 61 00 48 */	lwz r3, 0x48(r1)
/* 80158124 00155084  90 BF 01 E8 */	stw r5, 0x1e8(r31)
/* 80158128 00155088  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 8015812C 0015508C  90 7F 01 EC */	stw r3, 0x1ec(r31)
/* 80158130 00155090  88 61 00 50 */	lbz r3, 0x50(r1)
/* 80158134 00155094  90 BF 01 F0 */	stw r5, 0x1f0(r31)
/* 80158138 00155098  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8015813C 0015509C  98 7F 01 F4 */	stb r3, 0x1f4(r31)
/* 80158140 001550A0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80158144 001550A4  48 00 00 20 */	b lbl_80158164
lbl_80158148:
/* 80158148 001550A8  C0 02 9E 60 */	lfs f0, lbl_805ABB80@sda21(r2)
/* 8015814C 001550AC  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 80158150 001550B0  48 00 00 14 */	b lbl_80158164
lbl_80158154:
/* 80158154 001550B4  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 80158158 001550B8  38 60 00 01 */	li r3, 1
/* 8015815C 001550BC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80158160 001550C0  98 1F 07 42 */	stb r0, 0x742(r31)
lbl_80158164:
/* 80158164 001550C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80158168 001550C8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8015816C 001550CC  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80158170 001550D0  7C 08 03 A6 */	mtlr r0
/* 80158174 001550D4  38 21 00 60 */	addi r1, r1, 0x60
/* 80158178 001550D8  4E 80 00 20 */	blr

.global Attack__9CParasiteFR13CStateManager9EStateMsgf
Attack__9CParasiteFR13CStateManager9EStateMsgf:
/* 8015817C 001550DC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80158180 001550E0  7C 08 02 A6 */	mflr r0
/* 80158184 001550E4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80158188 001550E8  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8015818C 001550EC  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 80158190 001550F0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80158194 001550F4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 80158198 001550F8  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8015819C 001550FC  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 801581A0 00155100  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 801581A4 00155104  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 801581A8 00155108  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 801581AC 0015510C  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 801581B0 00155110  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801581B4 00155114  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801581B8 00155118  93 A1 00 84 */	stw r29, 0x84(r1)
/* 801581BC 0015511C  2C 05 00 01 */	cmpwi r5, 1
/* 801581C0 00155120  7C 7F 1B 78 */	mr r31, r3
/* 801581C4 00155124  7C 9D 23 78 */	mr r29, r4
/* 801581C8 00155128  41 82 01 CC */	beq lbl_80158394
/* 801581CC 0015512C  40 80 00 10 */	bge lbl_801581DC
/* 801581D0 00155130  2C 05 00 00 */	cmpwi r5, 0
/* 801581D4 00155134  40 80 00 14 */	bge lbl_801581E8
/* 801581D8 00155138  48 00 03 2C */	b lbl_80158504
lbl_801581DC:
/* 801581DC 0015513C  2C 05 00 03 */	cmpwi r5, 3
/* 801581E0 00155140  40 80 03 24 */	bge lbl_80158504
/* 801581E4 00155144  48 00 03 04 */	b lbl_801584E8
lbl_801581E8:
/* 801581E8 00155148  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 801581EC 0015514C  D0 1F 06 08 */	stfs f0, 0x608(r31)
/* 801581F0 00155150  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 801581F4 00155154  83 DD 09 00 */	lwz r30, 0x900(r29)
/* 801581F8 00155158  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 801581FC 0015515C  2C 00 00 01 */	cmpwi r0, 1
/* 80158200 00155160  40 82 00 6C */	bne lbl_8015826C
/* 80158204 00155164  7F C3 F3 78 */	mr r3, r30
/* 80158208 00155168  48 1B A2 D5 */	bl Float__9CRandom16Fv
/* 8015820C 0015516C  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 80158210 00155170  7F C3 F3 78 */	mr r3, r30
/* 80158214 00155174  EF C1 00 28 */	fsubs f30, f1, f0
/* 80158218 00155178  48 1B A2 C5 */	bl Float__9CRandom16Fv
/* 8015821C 0015517C  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 80158220 00155180  7F C3 F3 78 */	mr r3, r30
/* 80158224 00155184  EF E1 00 28 */	fsubs f31, f1, f0
/* 80158228 00155188  48 1B A2 B5 */	bl Float__9CRandom16Fv
/* 8015822C 0015518C  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 80158230 00155190  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 80158234 00155194  EC 61 00 28 */	fsubs f3, f1, f0
/* 80158238 00155198  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8015823C 0015519C  EC 80 07 F2 */	fmuls f4, f0, f31
/* 80158240 001551A0  C0 A3 00 50 */	lfs f5, 0x50(r3)
/* 80158244 001551A4  EC 40 07 B2 */	fmuls f2, f0, f30
/* 80158248 001551A8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8015824C 001551AC  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80158250 001551B0  EC 85 20 2A */	fadds f4, f5, f4
/* 80158254 001551B4  EC 01 00 2A */	fadds f0, f1, f0
/* 80158258 001551B8  EC 23 10 2A */	fadds f1, f3, f2
/* 8015825C 001551BC  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80158260 001551C0  D0 9F 05 FC */	stfs f4, 0x5fc(r31)
/* 80158264 001551C4  D0 3F 06 00 */	stfs f1, 0x600(r31)
/* 80158268 001551C8  48 00 00 D8 */	b lbl_80158340
lbl_8015826C:
/* 8015826C 001551CC  C3 7F 00 60 */	lfs f27, 0x60(r31)
/* 80158270 001551D0  7F C3 F3 78 */	mr r3, r30
/* 80158274 001551D4  C3 9F 00 50 */	lfs f28, 0x50(r31)
/* 80158278 001551D8  C3 BF 00 40 */	lfs f29, 0x40(r31)
/* 8015827C 001551DC  48 1B A2 61 */	bl Float__9CRandom16Fv
/* 80158280 001551E0  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 80158284 001551E4  7F C3 F3 78 */	mr r3, r30
/* 80158288 001551E8  EF E0 08 2A */	fadds f31, f0, f1
/* 8015828C 001551EC  48 1B A2 51 */	bl Float__9CRandom16Fv
/* 80158290 001551F0  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 80158294 001551F4  7F C3 F3 78 */	mr r3, r30
/* 80158298 001551F8  EF C1 00 28 */	fsubs f30, f1, f0
/* 8015829C 001551FC  48 1B A2 41 */	bl Float__9CRandom16Fv
/* 801582A0 00155200  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 801582A4 00155204  38 61 00 44 */	addi r3, r1, 0x44
/* 801582A8 00155208  80 BD 08 4C */	lwz r5, 0x84c(r29)
/* 801582AC 0015520C  38 81 00 38 */	addi r4, r1, 0x38
/* 801582B0 00155210  EC 21 00 28 */	fsubs f1, f1, f0
/* 801582B4 00155214  C0 C5 00 60 */	lfs f6, 0x60(r5)
/* 801582B8 00155218  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 801582BC 0015521C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801582C0 00155220  EC 46 F8 2A */	fadds f2, f6, f31
/* 801582C4 00155224  EC 64 F0 2A */	fadds f3, f4, f30
/* 801582C8 00155228  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801582CC 0015522C  EC 20 08 2A */	fadds f1, f0, f1
/* 801582D0 00155230  EC 82 D8 28 */	fsubs f4, f2, f27
/* 801582D4 00155234  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801582D8 00155238  EC A3 E0 28 */	fsubs f5, f3, f28
/* 801582DC 0015523C  EC 01 E8 28 */	fsubs f0, f1, f29
/* 801582E0 00155240  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 801582E4 00155244  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801582E8 00155248  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 801582EC 0015524C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801582F0 00155250  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801582F4 00155254  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 801582F8 00155258  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 801582FC 0015525C  48 1B C5 55 */	bl AsNormalized__9CVector3fCFv
/* 80158300 00155260  C0 A2 9E 70 */	lfs f5, lbl_805ABB90@sda21(r2)
/* 80158304 00155264  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80158308 00155268  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 8015830C 0015526C  EC 05 00 32 */	fmuls f0, f5, f0
/* 80158310 00155270  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80158314 00155274  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80158318 00155278  EC 85 00 F2 */	fmuls f4, f5, f3
/* 8015831C 0015527C  C0 DF 00 50 */	lfs f6, 0x50(r31)
/* 80158320 00155280  EC 01 00 2A */	fadds f0, f1, f0
/* 80158324 00155284  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80158328 00155288  EC 25 00 B2 */	fmuls f1, f5, f2
/* 8015832C 0015528C  EC 46 20 2A */	fadds f2, f6, f4
/* 80158330 00155290  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80158334 00155294  EC 03 08 2A */	fadds f0, f3, f1
/* 80158338 00155298  D0 5F 05 FC */	stfs f2, 0x5fc(r31)
/* 8015833C 0015529C  D0 1F 06 00 */	stfs f0, 0x600(r31)
lbl_80158340:
/* 80158340 001552A0  80 BF 05 F8 */	lwz r5, 0x5f8(r31)
/* 80158344 001552A4  7F E3 FB 78 */	mr r3, r31
/* 80158348 001552A8  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 8015834C 001552AC  38 81 00 14 */	addi r4, r1, 0x14
/* 80158350 001552B0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80158354 001552B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80158358 001552B8  80 1F 06 00 */	lwz r0, 0x600(r31)
/* 8015835C 001552BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80158360 001552C0  48 00 01 E9 */	bl FaceTarget__9CParasiteF9CVector3f
/* 80158364 001552C4  38 60 00 00 */	li r3, 0
/* 80158368 001552C8  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 8015836C 001552CC  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 80158370 001552D0  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80158374 001552D4  98 1F 07 42 */	stb r0, 0x742(r31)
/* 80158378 001552D8  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015837C 001552DC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80158380 001552E0  98 1F 07 42 */	stb r0, 0x742(r31)
/* 80158384 001552E4  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 80158388 001552E8  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8015838C 001552EC  98 1F 07 42 */	stb r0, 0x742(r31)
/* 80158390 001552F0  48 00 01 74 */	b lbl_80158504
lbl_80158394:
/* 80158394 001552F4  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 80158398 001552F8  2C 00 00 01 */	cmpwi r0, 1
/* 8015839C 001552FC  41 82 01 68 */	beq lbl_80158504
/* 801583A0 00155300  40 80 01 64 */	bge lbl_80158504
/* 801583A4 00155304  2C 00 00 00 */	cmpwi r0, 0
/* 801583A8 00155308  40 80 00 08 */	bge lbl_801583B0
/* 801583AC 0015530C  48 00 01 58 */	b lbl_80158504
lbl_801583B0:
/* 801583B0 00155310  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801583B4 00155314  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801583B8 00155318  2C 00 00 0D */	cmpwi r0, 0xd
/* 801583BC 0015531C  40 82 00 10 */	bne lbl_801583CC
/* 801583C0 00155320  38 00 00 01 */	li r0, 1
/* 801583C4 00155324  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 801583C8 00155328  48 00 01 3C */	b lbl_80158504
lbl_801583CC:
/* 801583CC 0015532C  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 801583D0 00155330  38 80 00 01 */	li r4, 1
/* 801583D4 00155334  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801583D8 00155338  38 81 00 08 */	addi r4, r1, 8
/* 801583DC 0015533C  98 1F 07 42 */	stb r0, 0x742(r31)
/* 801583E0 00155340  80 BF 05 F8 */	lwz r5, 0x5f8(r31)
/* 801583E4 00155344  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 801583E8 00155348  90 A1 00 08 */	stw r5, 8(r1)
/* 801583EC 0015534C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801583F0 00155350  80 1F 06 00 */	lwz r0, 0x600(r31)
/* 801583F4 00155354  90 01 00 10 */	stw r0, 0x10(r1)
/* 801583F8 00155358  48 00 01 51 */	bl FaceTarget__9CParasiteF9CVector3f
/* 801583FC 0015535C  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 80158400 00155360  38 A0 00 00 */	li r5, 0
/* 80158404 00155364  39 06 AA 68 */	addi r8, r6, lbl_803DAA68@l
/* 80158408 00155368  88 61 00 74 */	lbz r3, 0x74(r1)
/* 8015840C 0015536C  50 A3 3E 30 */	rlwimi r3, r5, 7, 0x18, 0x18
/* 80158410 00155370  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80158414 00155374  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 80158418 00155378  3C C0 80 3E */	lis r6, lbl_803DA9FC@ha
/* 8015841C 0015537C  C0 BF 05 F8 */	lfs f5, 0x5f8(r31)
/* 80158420 00155380  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80158424 00155384  C0 9F 05 FC */	lfs f4, 0x5fc(r31)
/* 80158428 00155388  38 E0 00 10 */	li r7, 0x10
/* 8015842C 0015538C  C0 7F 06 00 */	lfs f3, 0x600(r31)
/* 80158430 00155390  38 C6 A9 FC */	addi r6, r6, lbl_803DA9FC@l
/* 80158434 00155394  C0 24 00 04 */	lfs f1, 4(r4)
/* 80158438 00155398  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8015843C 0015539C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80158440 001553A0  38 80 00 10 */	li r4, 0x10
/* 80158444 001553A4  98 61 00 74 */	stb r3, 0x74(r1)
/* 80158448 001553A8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8015844C 001553AC  91 01 00 50 */	stw r8, 0x50(r1)
/* 80158450 001553B0  3B C3 00 04 */	addi r30, r3, 4
/* 80158454 001553B4  90 E1 00 54 */	stw r7, 0x54(r1)
/* 80158458 001553B8  7F C3 F3 78 */	mr r3, r30
/* 8015845C 001553BC  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80158460 001553C0  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80158464 001553C4  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 80158468 001553C8  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 8015846C 001553CC  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80158470 001553D0  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80158474 001553D4  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80158478 001553D8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8015847C 001553DC  98 01 00 74 */	stb r0, 0x74(r1)
/* 80158480 001553E0  4B FD 8F B9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80158484 001553E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80158488 001553E8  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 8015848C 001553EC  38 83 A9 FC */	addi r4, r3, lbl_803DA9FC@l
/* 80158490 001553F0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80158494 001553F4  90 1E 01 D4 */	stw r0, 0x1d4(r30)
/* 80158498 001553F8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8015849C 001553FC  80 A1 00 58 */	lwz r5, 0x58(r1)
/* 801584A0 00155400  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 801584A4 00155404  90 BE 01 D8 */	stw r5, 0x1d8(r30)
/* 801584A8 00155408  80 A1 00 60 */	lwz r5, 0x60(r1)
/* 801584AC 0015540C  90 7E 01 DC */	stw r3, 0x1dc(r30)
/* 801584B0 00155410  80 61 00 64 */	lwz r3, 0x64(r1)
/* 801584B4 00155414  90 BE 01 E0 */	stw r5, 0x1e0(r30)
/* 801584B8 00155418  80 A1 00 68 */	lwz r5, 0x68(r1)
/* 801584BC 0015541C  90 7E 01 E4 */	stw r3, 0x1e4(r30)
/* 801584C0 00155420  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 801584C4 00155424  90 BE 01 E8 */	stw r5, 0x1e8(r30)
/* 801584C8 00155428  80 A1 00 70 */	lwz r5, 0x70(r1)
/* 801584CC 0015542C  90 7E 01 EC */	stw r3, 0x1ec(r30)
/* 801584D0 00155430  88 61 00 74 */	lbz r3, 0x74(r1)
/* 801584D4 00155434  90 BE 01 F0 */	stw r5, 0x1f0(r30)
/* 801584D8 00155438  90 81 00 50 */	stw r4, 0x50(r1)
/* 801584DC 0015543C  98 7E 01 F4 */	stb r3, 0x1f4(r30)
/* 801584E0 00155440  90 01 00 50 */	stw r0, 0x50(r1)
/* 801584E4 00155444  48 00 00 20 */	b lbl_80158504
lbl_801584E8:
/* 801584E8 00155448  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 801584EC 0015544C  38 60 00 01 */	li r3, 1
/* 801584F0 00155450  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801584F4 00155454  98 1F 07 42 */	stb r0, 0x742(r31)
/* 801584F8 00155458  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 801584FC 0015545C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80158500 00155460  98 1F 07 42 */	stb r0, 0x742(r31)
lbl_80158504:
/* 80158504 00155464  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 80158508 00155468  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8015850C 0015546C  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 80158510 00155470  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80158514 00155474  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 80158518 00155478  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8015851C 0015547C  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 80158520 00155480  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80158524 00155484  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 80158528 00155488  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 8015852C 0015548C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80158530 00155490  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80158534 00155494  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80158538 00155498  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8015853C 0015549C  7C 08 03 A6 */	mtlr r0
/* 80158540 001554A0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80158544 001554A4  4E 80 00 20 */	blr

.global FaceTarget__9CParasiteF9CVector3f
FaceTarget__9CParasiteF9CVector3f:
/* 80158548 001554A8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8015854C 001554AC  7C 08 02 A6 */	mflr r0
/* 80158550 001554B0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80158554 001554B4  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80158558 001554B8  7C 7F 1B 78 */	mr r31, r3
/* 8015855C 001554BC  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 80158560 001554C0  C0 24 00 08 */	lfs f1, 8(r4)
/* 80158564 001554C4  38 A3 66 70 */	addi r5, r3, sIdentity__12CTransform4f@l
/* 80158568 001554C8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8015856C 001554CC  38 61 00 18 */	addi r3, r1, 0x18
/* 80158570 001554D0  C0 64 00 04 */	lfs f3, 4(r4)
/* 80158574 001554D4  EC 81 00 28 */	fsubs f4, f1, f0
/* 80158578 001554D8  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8015857C 001554DC  C0 24 00 00 */	lfs f1, 0(r4)
/* 80158580 001554E0  38 81 00 50 */	addi r4, r1, 0x50
/* 80158584 001554E4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80158588 001554E8  EC C3 10 28 */	fsubs f6, f3, f2
/* 8015858C 001554EC  EC A1 00 28 */	fsubs f5, f1, f0
/* 80158590 001554F0  C0 62 9E 74 */	lfs f3, lbl_805ABB94@sda21(r2)
/* 80158594 001554F4  C0 45 00 04 */	lfs f2, 4(r5)
/* 80158598 001554F8  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8015859C 001554FC  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 801585A0 00155500  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 801585A4 00155504  C0 82 9E 50 */	lfs f4, lbl_805ABB70@sda21(r2)
/* 801585A8 00155508  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 801585AC 0015550C  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 801585B0 00155510  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 801585B4 00155514  D0 61 00 08 */	stfs f3, 8(r1)
/* 801585B8 00155518  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801585BC 0015551C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801585C0 00155520  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801585C4 00155524  48 1B B8 0D */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 801585C8 00155528  7C 65 1B 78 */	mr r5, r3
/* 801585CC 0015552C  38 61 00 30 */	addi r3, r1, 0x30
/* 801585D0 00155530  38 81 00 24 */	addi r4, r1, 0x24
/* 801585D4 00155534  38 C1 00 08 */	addi r6, r1, 8
/* 801585D8 00155538  48 1B 90 BD */	bl LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
/* 801585DC 0015553C  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 801585E0 00155540  38 61 00 5C */	addi r3, r1, 0x5c
/* 801585E4 00155544  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 801585E8 00155548  38 81 00 40 */	addi r4, r1, 0x40
/* 801585EC 0015554C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 801585F0 00155550  38 A1 00 0C */	addi r5, r1, 0xc
/* 801585F4 00155554  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801585F8 00155558  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801585FC 0015555C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80158600 00155560  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80158604 00155564  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80158608 00155568  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8015860C 0015556C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80158610 00155570  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80158614 00155574  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80158618 00155578  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8015861C 0015557C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80158620 00155580  48 1B 98 9D */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 80158624 00155584  38 7F 00 34 */	addi r3, r31, 0x34
/* 80158628 00155588  38 81 00 5C */	addi r4, r1, 0x5c
/* 8015862C 0015558C  48 1B A5 15 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80158630 00155590  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80158634 00155594  38 60 00 01 */	li r3, 1
/* 80158638 00155598  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8015863C 0015559C  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80158640 001555A0  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80158644 001555A4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80158648 001555A8  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8015864C 001555AC  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80158650 001555B0  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80158654 001555B4  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80158658 001555B8  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8015865C 001555BC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80158660 001555C0  7C 08 03 A6 */	mtlr r0
/* 80158664 001555C4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80158668 001555C8  4E 80 00 20 */	blr

.global Patrol__9CParasiteFR13CStateManager9EStateMsgf
Patrol__9CParasiteFR13CStateManager9EStateMsgf:
/* 8015866C 001555CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80158670 001555D0  7C 08 02 A6 */	mflr r0
/* 80158674 001555D4  2C 05 00 01 */	cmpwi r5, 1
/* 80158678 001555D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015867C 001555DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80158680 001555E0  7C 7F 1B 78 */	mr r31, r3
/* 80158684 001555E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80158688 001555E8  7C 9E 23 78 */	mr r30, r4
/* 8015868C 001555EC  41 82 00 9C */	beq lbl_80158728
/* 80158690 001555F0  40 80 00 10 */	bge lbl_801586A0
/* 80158694 001555F4  2C 05 00 00 */	cmpwi r5, 0
/* 80158698 001555F8  40 80 00 14 */	bge lbl_801586AC
/* 8015869C 001555FC  48 00 01 34 */	b lbl_801587D0
lbl_801586A0:
/* 801586A0 00155600  2C 05 00 03 */	cmpwi r5, 3
/* 801586A4 00155604  40 80 01 2C */	bge lbl_801587D0
/* 801586A8 00155608  48 00 01 08 */	b lbl_801587B0
lbl_801586AC:
/* 801586AC 0015560C  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 801586B0 00155610  38 60 00 01 */	li r3, 1
/* 801586B4 00155614  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801586B8 00155618  98 1F 07 42 */	stb r0, 0x742(r31)
/* 801586BC 0015561C  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 801586C0 00155620  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801586C4 00155624  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 801586C8 00155628  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 801586CC 0015562C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801586D0 00155630  40 82 00 1C */	bne lbl_801586EC
/* 801586D4 00155634  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 801586D8 00155638  2C 00 00 00 */	cmpwi r0, 0
/* 801586DC 0015563C  40 82 00 10 */	bne lbl_801586EC
/* 801586E0 00155640  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801586E4 00155644  38 80 00 02 */	li r4, 2
/* 801586E8 00155648  4B FE 22 F1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_801586EC:
/* 801586EC 0015564C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801586F0 00155650  C4 04 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r4)
/* 801586F4 00155654  38 60 00 00 */	li r3, 0
/* 801586F8 00155658  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 801586FC 0015565C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80158700 00155660  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 80158704 00155664  C0 04 00 08 */	lfs f0, 8(r4)
/* 80158708 00155668  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 8015870C 0015566C  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 80158710 00155670  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80158714 00155674  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 80158718 00155678  88 1F 00 F8 */	lbz r0, 0xf8(r31)
/* 8015871C 0015567C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80158720 00155680  98 1F 00 F8 */	stb r0, 0xf8(r31)
/* 80158724 00155684  48 00 00 AC */	b lbl_801587D0
lbl_80158728:
/* 80158728 00155688  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 8015872C 0015568C  C0 42 9E 50 */	lfs f2, lbl_805ABB70@sda21(r2)
/* 80158730 00155690  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80158734 00155694  40 81 00 40 */	ble lbl_80158774
/* 80158738 00155698  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 8015873C 0015569C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80158740 001556A0  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80158744 001556A4  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80158748 001556A8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8015874C 001556AC  4C 40 13 82 */	cror 2, 0, 2
/* 80158750 001556B0  40 82 00 24 */	bne lbl_80158774
/* 80158754 001556B4  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 80158758 001556B8  2C 00 00 00 */	cmpwi r0, 0
/* 8015875C 001556BC  40 82 00 10 */	bne lbl_8015876C
/* 80158760 001556C0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80158764 001556C4  38 80 00 02 */	li r4, 2
/* 80158768 001556C8  4B FE 22 71 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_8015876C:
/* 8015876C 001556CC  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80158770 001556D0  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
lbl_80158774:
/* 80158774 001556D4  7F E3 FB 78 */	mr r3, r31
/* 80158778 001556D8  7F C4 F3 78 */	mr r4, r30
/* 8015877C 001556DC  48 10 FF 71 */	bl GotoNextWaypoint__11CWallWalkerFR13CStateManager
/* 80158780 001556E0  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80158784 001556E4  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80158788 001556E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015878C 001556EC  4C 40 13 82 */	cror 2, 0, 2
/* 80158790 001556F0  40 82 00 40 */	bne lbl_801587D0
/* 80158794 001556F4  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 80158798 001556F8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8015879C 001556FC  40 82 00 34 */	bne lbl_801587D0
/* 801587A0 00155700  7F E3 FB 78 */	mr r3, r31
/* 801587A4 00155704  7F C4 F3 78 */	mr r4, r30
/* 801587A8 00155708  4B FF E8 D1 */	bl DoFlockingBehavior__9CParasiteFR13CStateManager
/* 801587AC 0015570C  48 00 00 24 */	b lbl_801587D0
lbl_801587B0:
/* 801587B0 00155710  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 801587B4 00155714  38 60 00 00 */	li r3, 0
/* 801587B8 00155718  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801587BC 0015571C  38 60 00 01 */	li r3, 1
/* 801587C0 00155720  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 801587C4 00155724  88 1F 00 F8 */	lbz r0, 0xf8(r31)
/* 801587C8 00155728  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801587CC 0015572C  98 1F 00 F8 */	stb r0, 0xf8(r31)
lbl_801587D0:
/* 801587D0 00155730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801587D4 00155734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801587D8 00155738  83 C1 00 08 */	lwz r30, 8(r1)
/* 801587DC 0015573C  7C 08 03 A6 */	mtlr r0
/* 801587E0 00155740  38 21 00 10 */	addi r1, r1, 0x10
/* 801587E4 00155744  4E 80 00 20 */	blr

.global TargetPatrol__9CParasiteFR13CStateManager9EStateMsgf
TargetPatrol__9CParasiteFR13CStateManager9EStateMsgf:
/* 801587E8 00155748  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801587EC 0015574C  7C 08 02 A6 */	mflr r0
/* 801587F0 00155750  2C 05 00 00 */	cmpwi r5, 0
/* 801587F4 00155754  7C 86 23 78 */	mr r6, r4
/* 801587F8 00155758  90 01 00 24 */	stw r0, 0x24(r1)
/* 801587FC 0015575C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80158800 00155760  7C 7F 1B 78 */	mr r31, r3
/* 80158804 00155764  41 82 00 0C */	beq lbl_80158810
/* 80158808 00155768  41 80 00 4C */	blt lbl_80158854
/* 8015880C 0015576C  48 00 00 48 */	b lbl_80158854
lbl_80158810:
/* 80158810 00155770  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80158814 00155774  7F E4 FB 78 */	mr r4, r31
/* 80158818 00155778  38 E3 66 A0 */	addi r7, r3, sZeroVector__9CVector3f@l
/* 8015881C 0015577C  38 A0 00 0D */	li r5, 0xd
/* 80158820 00155780  C0 07 00 00 */	lfs f0, 0(r7)
/* 80158824 00155784  38 61 00 08 */	addi r3, r1, 8
/* 80158828 00155788  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 8015882C 0015578C  C0 07 00 04 */	lfs f0, 4(r7)
/* 80158830 00155790  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 80158834 00155794  C0 07 00 08 */	lfs f0, 8(r7)
/* 80158838 00155798  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 8015883C 0015579C  48 00 06 C5 */	bl GetClosestWaypointForState__9CParasiteCF18EScriptObjectStateR13CStateManager
/* 80158840 001557A0  A0 61 00 08 */	lhz r3, 8(r1)
/* 80158844 001557A4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80158848 001557A8  7C 03 00 40 */	cmplw r3, r0
/* 8015884C 001557AC  41 82 00 08 */	beq lbl_80158854
/* 80158850 001557B0  B0 7F 02 DC */	sth r3, 0x2dc(r31)
lbl_80158854:
/* 80158854 001557B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80158858 001557B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015885C 001557BC  7C 08 03 A6 */	mtlr r0
/* 80158860 001557C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80158864 001557C4  4E 80 00 20 */	blr

.global Jump__9CParasiteFR13CStateManager9EStateMsgf
Jump__9CParasiteFR13CStateManager9EStateMsgf:
/* 80158868 001557C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015886C 001557CC  7C 08 02 A6 */	mflr r0
/* 80158870 001557D0  2C 05 00 01 */	cmpwi r5, 1
/* 80158874 001557D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80158878 001557D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015887C 001557DC  7C 7F 1B 78 */	mr r31, r3
/* 80158880 001557E0  41 82 00 90 */	beq lbl_80158910
/* 80158884 001557E4  40 80 00 10 */	bge lbl_80158894
/* 80158888 001557E8  2C 05 00 00 */	cmpwi r5, 0
/* 8015888C 001557EC  40 80 00 14 */	bge lbl_801588A0
/* 80158890 001557F0  48 00 01 00 */	b lbl_80158990
lbl_80158894:
/* 80158894 001557F4  2C 05 00 03 */	cmpwi r5, 3
/* 80158898 001557F8  40 80 00 F8 */	bge lbl_80158990
/* 8015889C 001557FC  48 00 00 9C */	b lbl_80158938
lbl_801588A0:
/* 801588A0 00155800  7C 85 23 78 */	mr r5, r4
/* 801588A4 00155804  38 80 00 25 */	li r4, 0x25
/* 801588A8 00155808  4B EF BA A9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801588AC 0015580C  7F E3 FB 78 */	mr r3, r31
/* 801588B0 00155810  81 9F 00 00 */	lwz r12, 0(r31)
/* 801588B4 00155814  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 801588B8 00155818  7D 89 03 A6 */	mtctr r12
/* 801588BC 0015581C  4E 80 04 21 */	bctrl
/* 801588C0 00155820  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 801588C4 00155824  FC 20 08 50 */	fneg f1, f1
/* 801588C8 00155828  38 80 00 00 */	li r4, 0
/* 801588CC 0015582C  38 60 00 01 */	li r3, 1
/* 801588D0 00155830  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 801588D4 00155834  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 801588D8 00155838  D0 3F 01 58 */	stfs f1, 0x158(r31)
/* 801588DC 0015583C  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 801588E0 00155840  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 801588E4 00155844  98 1F 07 42 */	stb r0, 0x742(r31)
/* 801588E8 00155848  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 801588EC 0015584C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801588F0 00155850  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 801588F4 00155854  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 801588F8 00155858  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 801588FC 0015585C  98 1F 07 42 */	stb r0, 0x742(r31)
/* 80158900 00155860  88 1F 07 43 */	lbz r0, 0x743(r31)
/* 80158904 00155864  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80158908 00155868  98 1F 07 43 */	stb r0, 0x743(r31)
/* 8015890C 0015586C  48 00 00 84 */	b lbl_80158990
lbl_80158910:
/* 80158910 00155870  81 83 00 00 */	lwz r12, 0(r3)
/* 80158914 00155874  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80158918 00155878  7D 89 03 A6 */	mtctr r12
/* 8015891C 0015587C  4E 80 04 21 */	bctrl
/* 80158920 00155880  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80158924 00155884  FC 20 08 50 */	fneg f1, f1
/* 80158928 00155888  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 8015892C 0015588C  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 80158930 00155890  D0 3F 01 58 */	stfs f1, 0x158(r31)
/* 80158934 00155894  48 00 00 5C */	b lbl_80158990
lbl_80158938:
/* 80158938 00155898  7C 85 23 78 */	mr r5, r4
/* 8015893C 0015589C  38 80 00 25 */	li r4, 0x25
/* 80158940 001558A0  4B EF B6 41 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80158944 001558A4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80158948 001558A8  38 80 00 01 */	li r4, 1
/* 8015894C 001558AC  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 80158950 001558B0  38 60 00 00 */	li r3, 0
/* 80158954 001558B4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80158958 001558B8  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 8015895C 001558BC  C0 05 00 04 */	lfs f0, 4(r5)
/* 80158960 001558C0  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 80158964 001558C4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80158968 001558C8  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 8015896C 001558CC  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 80158970 001558D0  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80158974 001558D4  98 1F 07 42 */	stb r0, 0x742(r31)
/* 80158978 001558D8  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015897C 001558DC  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80158980 001558E0  98 1F 07 42 */	stb r0, 0x742(r31)
/* 80158984 001558E4  88 1F 07 43 */	lbz r0, 0x743(r31)
/* 80158988 001558E8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8015898C 001558EC  98 1F 07 43 */	stb r0, 0x743(r31)
lbl_80158990:
/* 80158990 001558F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80158994 001558F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80158998 001558F8  7C 08 03 A6 */	mtlr r0
/* 8015899C 001558FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801589A0 00155900  4E 80 00 20 */	blr

.global PathFind__9CParasiteFR13CStateManager9EStateMsgf
PathFind__9CParasiteFR13CStateManager9EStateMsgf:
/* 801589A4 00155904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801589A8 00155908  7C 08 02 A6 */	mflr r0
/* 801589AC 0015590C  2C 05 00 01 */	cmpwi r5, 1
/* 801589B0 00155910  90 01 00 14 */	stw r0, 0x14(r1)
/* 801589B4 00155914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801589B8 00155918  7C 9F 23 78 */	mr r31, r4
/* 801589BC 0015591C  93 C1 00 08 */	stw r30, 8(r1)
/* 801589C0 00155920  7C 7E 1B 78 */	mr r30, r3
/* 801589C4 00155924  41 82 00 84 */	beq lbl_80158A48
/* 801589C8 00155928  40 80 00 10 */	bge lbl_801589D8
/* 801589CC 0015592C  2C 05 00 00 */	cmpwi r5, 0
/* 801589D0 00155930  40 80 00 14 */	bge lbl_801589E4
/* 801589D4 00155934  48 00 00 B4 */	b lbl_80158A88
lbl_801589D8:
/* 801589D8 00155938  2C 05 00 03 */	cmpwi r5, 3
/* 801589DC 0015593C  40 80 00 AC */	bge lbl_80158A88
/* 801589E0 00155940  48 00 00 7C */	b lbl_80158A5C
lbl_801589E4:
/* 801589E4 00155944  88 1E 07 42 */	lbz r0, 0x742(r30)
/* 801589E8 00155948  38 60 00 01 */	li r3, 1
/* 801589EC 0015594C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801589F0 00155950  98 1E 07 42 */	stb r0, 0x742(r30)
/* 801589F4 00155954  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 801589F8 00155958  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801589FC 0015595C  98 1E 05 D6 */	stb r0, 0x5d6(r30)
/* 80158A00 00155960  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80158A04 00155964  2C 00 00 00 */	cmpwi r0, 0
/* 80158A08 00155968  40 82 00 10 */	bne lbl_80158A18
/* 80158A0C 0015596C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80158A10 00155970  38 80 00 02 */	li r4, 2
/* 80158A14 00155974  4B FE 1F C5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80158A18:
/* 80158A18 00155978  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80158A1C 0015597C  C4 04 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r4)
/* 80158A20 00155980  38 60 00 00 */	li r3, 0
/* 80158A24 00155984  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 80158A28 00155988  C0 04 00 04 */	lfs f0, 4(r4)
/* 80158A2C 0015598C  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 80158A30 00155990  C0 04 00 08 */	lfs f0, 8(r4)
/* 80158A34 00155994  D0 1E 01 58 */	stfs f0, 0x158(r30)
/* 80158A38 00155998  88 1E 00 F8 */	lbz r0, 0xf8(r30)
/* 80158A3C 0015599C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80158A40 001559A0  98 1E 00 F8 */	stb r0, 0xf8(r30)
/* 80158A44 001559A4  48 00 00 44 */	b lbl_80158A88
lbl_80158A48:
/* 80158A48 001559A8  4B FF EF 1D */	bl UpdatePFDestination__9CParasiteFR13CStateManager
/* 80158A4C 001559AC  7F C3 F3 78 */	mr r3, r30
/* 80158A50 001559B0  7F E4 FB 78 */	mr r4, r31
/* 80158A54 001559B4  4B FF E6 25 */	bl DoFlockingBehavior__9CParasiteFR13CStateManager
/* 80158A58 001559B8  48 00 00 30 */	b lbl_80158A88
lbl_80158A5C:
/* 80158A5C 001559BC  88 1E 00 F8 */	lbz r0, 0xf8(r30)
/* 80158A60 001559C0  38 60 00 01 */	li r3, 1
/* 80158A64 001559C4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80158A68 001559C8  38 60 00 00 */	li r3, 0
/* 80158A6C 001559CC  98 1E 00 F8 */	stb r0, 0xf8(r30)
/* 80158A70 001559D0  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 80158A74 001559D4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80158A78 001559D8  98 1E 05 D6 */	stb r0, 0x5d6(r30)
/* 80158A7C 001559DC  88 1E 07 42 */	lbz r0, 0x742(r30)
/* 80158A80 001559E0  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80158A84 001559E4  98 1E 07 42 */	stb r0, 0x742(r30)
lbl_80158A88:
/* 80158A88 001559E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80158A8C 001559EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80158A90 001559F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80158A94 001559F4  7C 08 03 A6 */	mtlr r0
/* 80158A98 001559F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80158A9C 001559FC  4E 80 00 20 */	blr

.global Run__9CParasiteFR13CStateManager9EStateMsgf
Run__9CParasiteFR13CStateManager9EStateMsgf:
/* 80158AA0 00155A00  4E 80 00 20 */	blr

.global Deactivate__9CParasiteFR13CStateManager9EStateMsgf
Deactivate__9CParasiteFR13CStateManager9EStateMsgf:
/* 80158AA4 00155A04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80158AA8 00155A08  7C 08 02 A6 */	mflr r0
/* 80158AAC 00155A0C  2C 05 00 01 */	cmpwi r5, 1
/* 80158AB0 00155A10  90 01 00 44 */	stw r0, 0x44(r1)
/* 80158AB4 00155A14  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80158AB8 00155A18  7C 9F 23 78 */	mr r31, r4
/* 80158ABC 00155A1C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80158AC0 00155A20  7C 7E 1B 78 */	mr r30, r3
/* 80158AC4 00155A24  41 82 00 4C */	beq lbl_80158B10
/* 80158AC8 00155A28  40 80 01 40 */	bge lbl_80158C08
/* 80158ACC 00155A2C  2C 05 00 00 */	cmpwi r5, 0
/* 80158AD0 00155A30  40 80 00 0C */	bge lbl_80158ADC
/* 80158AD4 00155A34  48 00 01 34 */	b lbl_80158C08
/* 80158AD8 00155A38  48 00 01 30 */	b lbl_80158C08
lbl_80158ADC:
/* 80158ADC 00155A3C  38 00 00 00 */	li r0, 0
/* 80158AE0 00155A40  7F E5 FB 78 */	mr r5, r31
/* 80158AE4 00155A44  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80158AE8 00155A48  38 80 00 11 */	li r4, 0x11
/* 80158AEC 00155A4C  38 C0 FF FF */	li r6, -1
/* 80158AF0 00155A50  4B EF 85 D1 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80158AF4 00155A54  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80158AF8 00155A58  7F E3 FB 78 */	mr r3, r31
/* 80158AFC 00155A5C  38 81 00 0C */	addi r4, r1, 0xc
/* 80158B00 00155A60  B0 01 00 08 */	sth r0, 8(r1)
/* 80158B04 00155A64  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80158B08 00155A68  4B EF 37 65 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 80158B0C 00155A6C  48 00 00 FC */	b lbl_80158C08
lbl_80158B10:
/* 80158B10 00155A70  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 80158B14 00155A74  2C 00 00 00 */	cmpwi r0, 0
/* 80158B18 00155A78  41 82 00 08 */	beq lbl_80158B20
/* 80158B1C 00155A7C  48 00 00 EC */	b lbl_80158C08
lbl_80158B20:
/* 80158B20 00155A80  81 5E 04 50 */	lwz r10, 0x450(r30)
/* 80158B24 00155A84  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 80158B28 00155A88  2C 00 00 0C */	cmpwi r0, 0xc
/* 80158B2C 00155A8C  40 82 00 10 */	bne lbl_80158B3C
/* 80158B30 00155A90  38 00 00 01 */	li r0, 1
/* 80158B34 00155A94  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80158B38 00155A98  48 00 00 D0 */	b lbl_80158C08
lbl_80158B3C:
/* 80158B3C 00155A9C  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 80158B40 00155AA0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80158B44 00155AA4  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 80158B48 00155AA8  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80158B4C 00155AAC  38 60 00 00 */	li r3, 0
/* 80158B50 00155AB0  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 80158B54 00155AB4  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 80158B58 00155AB8  C0 45 00 00 */	lfs f2, 0(r5)
/* 80158B5C 00155ABC  C0 25 00 04 */	lfs f1, 4(r5)
/* 80158B60 00155AC0  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 80158B64 00155AC4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80158B68 00155AC8  7C 80 23 78 */	mr r0, r4
/* 80158B6C 00155ACC  39 00 00 0E */	li r8, 0xe
/* 80158B70 00155AD0  38 C0 00 01 */	li r6, 1
/* 80158B74 00155AD4  38 A0 FF FF */	li r5, -1
/* 80158B78 00155AD8  3B EA 00 04 */	addi r31, r10, 4
/* 80158B7C 00155ADC  91 21 00 10 */	stw r9, 0x10(r1)
/* 80158B80 00155AE0  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 80158B84 00155AE4  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 80158B88 00155AE8  7F E3 FB 78 */	mr r3, r31
/* 80158B8C 00155AEC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80158B90 00155AF0  38 80 00 0E */	li r4, 0xe
/* 80158B94 00155AF4  91 01 00 14 */	stw r8, 0x14(r1)
/* 80158B98 00155AF8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80158B9C 00155AFC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80158BA0 00155B00  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80158BA4 00155B04  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80158BA8 00155B08  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80158BAC 00155B0C  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80158BB0 00155B10  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80158BB4 00155B14  4B FD 88 85 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80158BB8 00155B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80158BBC 00155B1C  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 80158BC0 00155B20  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 80158BC4 00155B24  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80158BC8 00155B28  90 1F 01 90 */	stw r0, 0x190(r31)
/* 80158BCC 00155B2C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80158BD0 00155B30  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80158BD4 00155B34  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80158BD8 00155B38  90 BF 01 94 */	stw r5, 0x194(r31)
/* 80158BDC 00155B3C  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80158BE0 00155B40  90 7F 01 98 */	stw r3, 0x198(r31)
/* 80158BE4 00155B44  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80158BE8 00155B48  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 80158BEC 00155B4C  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 80158BF0 00155B50  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 80158BF4 00155B54  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80158BF8 00155B58  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 80158BFC 00155B5C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80158C00 00155B60  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 80158C04 00155B64  90 01 00 10 */	stw r0, 0x10(r1)
lbl_80158C08:
/* 80158C08 00155B68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80158C0C 00155B6C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80158C10 00155B70  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80158C14 00155B74  7C 08 03 A6 */	mtlr r0
/* 80158C18 00155B78  38 21 00 40 */	addi r1, r1, 0x40
/* 80158C1C 00155B7C  4E 80 00 20 */	blr

.global Generate__9CParasiteFR13CStateManager9EStateMsgf
Generate__9CParasiteFR13CStateManager9EStateMsgf:
/* 80158C20 00155B80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80158C24 00155B84  7C 08 02 A6 */	mflr r0
/* 80158C28 00155B88  2C 05 00 01 */	cmpwi r5, 1
/* 80158C2C 00155B8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80158C30 00155B90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80158C34 00155B94  41 82 00 24 */	beq lbl_80158C58
/* 80158C38 00155B98  40 80 01 38 */	bge lbl_80158D70
/* 80158C3C 00155B9C  2C 05 00 00 */	cmpwi r5, 0
/* 80158C40 00155BA0  40 80 00 0C */	bge lbl_80158C4C
/* 80158C44 00155BA4  48 00 01 2C */	b lbl_80158D70
/* 80158C48 00155BA8  48 00 01 28 */	b lbl_80158D70
lbl_80158C4C:
/* 80158C4C 00155BAC  38 00 00 00 */	li r0, 0
/* 80158C50 00155BB0  90 03 05 E8 */	stw r0, 0x5e8(r3)
/* 80158C54 00155BB4  48 00 01 1C */	b lbl_80158D70
lbl_80158C58:
/* 80158C58 00155BB8  80 03 05 E8 */	lwz r0, 0x5e8(r3)
/* 80158C5C 00155BBC  2C 00 00 01 */	cmpwi r0, 1
/* 80158C60 00155BC0  41 82 00 F8 */	beq lbl_80158D58
/* 80158C64 00155BC4  40 80 01 0C */	bge lbl_80158D70
/* 80158C68 00155BC8  2C 00 00 00 */	cmpwi r0, 0
/* 80158C6C 00155BCC  40 80 00 08 */	bge lbl_80158C74
/* 80158C70 00155BD0  48 00 01 00 */	b lbl_80158D70
lbl_80158C74:
/* 80158C74 00155BD4  81 43 04 50 */	lwz r10, 0x450(r3)
/* 80158C78 00155BD8  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 80158C7C 00155BDC  2C 00 00 0C */	cmpwi r0, 0xc
/* 80158C80 00155BE0  40 82 00 10 */	bne lbl_80158C90
/* 80158C84 00155BE4  38 00 00 01 */	li r0, 1
/* 80158C88 00155BE8  90 03 05 E8 */	stw r0, 0x5e8(r3)
/* 80158C8C 00155BEC  48 00 00 E4 */	b lbl_80158D70
lbl_80158C90:
/* 80158C90 00155BF0  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 80158C94 00155BF4  38 C0 00 00 */	li r6, 0
/* 80158C98 00155BF8  39 25 AA 68 */	addi r9, r5, lbl_803DAA68@l
/* 80158C9C 00155BFC  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80158CA0 00155C00  50 C3 F8 00 */	rlwimi r3, r6, 0x1f, 0, 0
/* 80158CA4 00155C04  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80158CA8 00155C08  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 80158CAC 00155C0C  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 80158CB0 00155C10  7C 60 1B 78 */	mr r0, r3
/* 80158CB4 00155C14  39 00 00 0E */	li r8, 0xe
/* 80158CB8 00155C18  C0 24 00 04 */	lfs f1, 4(r4)
/* 80158CBC 00155C1C  38 A0 FF FF */	li r5, -1
/* 80158CC0 00155C20  C0 04 00 08 */	lfs f0, 8(r4)
/* 80158CC4 00155C24  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 80158CC8 00155C28  91 21 00 08 */	stw r9, 8(r1)
/* 80158CCC 00155C2C  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 80158CD0 00155C30  3B EA 00 04 */	addi r31, r10, 4
/* 80158CD4 00155C34  38 80 00 0E */	li r4, 0xe
/* 80158CD8 00155C38  90 61 00 24 */	stw r3, 0x24(r1)
/* 80158CDC 00155C3C  7F E3 FB 78 */	mr r3, r31
/* 80158CE0 00155C40  91 01 00 0C */	stw r8, 0xc(r1)
/* 80158CE4 00155C44  90 E1 00 08 */	stw r7, 8(r1)
/* 80158CE8 00155C48  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80158CEC 00155C4C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80158CF0 00155C50  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80158CF4 00155C54  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80158CF8 00155C58  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80158CFC 00155C5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80158D00 00155C60  4B FD 87 39 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80158D04 00155C64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80158D08 00155C68  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 80158D0C 00155C6C  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 80158D10 00155C70  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80158D14 00155C74  90 1F 01 90 */	stw r0, 0x190(r31)
/* 80158D18 00155C78  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80158D1C 00155C7C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80158D20 00155C80  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80158D24 00155C84  90 BF 01 94 */	stw r5, 0x194(r31)
/* 80158D28 00155C88  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80158D2C 00155C8C  90 7F 01 98 */	stw r3, 0x198(r31)
/* 80158D30 00155C90  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80158D34 00155C94  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 80158D38 00155C98  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80158D3C 00155C9C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 80158D40 00155CA0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80158D44 00155CA4  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 80158D48 00155CA8  90 81 00 08 */	stw r4, 8(r1)
/* 80158D4C 00155CAC  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 80158D50 00155CB0  90 01 00 08 */	stw r0, 8(r1)
/* 80158D54 00155CB4  48 00 00 1C */	b lbl_80158D70
lbl_80158D58:
/* 80158D58 00155CB8  80 83 04 50 */	lwz r4, 0x450(r3)
/* 80158D5C 00155CBC  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 80158D60 00155CC0  2C 00 00 0C */	cmpwi r0, 0xc
/* 80158D64 00155CC4  41 82 00 0C */	beq lbl_80158D70
/* 80158D68 00155CC8  38 00 00 02 */	li r0, 2
/* 80158D6C 00155CCC  90 03 05 E8 */	stw r0, 0x5e8(r3)
lbl_80158D70:
/* 80158D70 00155CD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80158D74 00155CD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80158D78 00155CD8  7C 08 03 A6 */	mtlr r0
/* 80158D7C 00155CDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80158D80 00155CE0  4E 80 00 20 */	blr

.global ShouldAttack__9CParasiteFR13CStateManagerf
ShouldAttack__9CParasiteFR13CStateManagerf:
/* 80158D84 00155CE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80158D88 00155CE8  7C 08 02 A6 */	mflr r0
/* 80158D8C 00155CEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80158D90 00155CF0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80158D94 00155CF4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80158D98 00155CF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80158D9C 00155CFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80158DA0 00155D00  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80158DA4 00155D04  93 81 00 10 */	stw r28, 0x10(r1)
/* 80158DA8 00155D08  88 03 07 42 */	lbz r0, 0x742(r3)
/* 80158DAC 00155D0C  FF E0 08 90 */	fmr f31, f1
/* 80158DB0 00155D10  7C 7C 1B 78 */	mr r28, r3
/* 80158DB4 00155D14  7C 9D 23 78 */	mr r29, r4
/* 80158DB8 00155D18  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80158DBC 00155D1C  3B C0 00 00 */	li r30, 0
/* 80158DC0 00155D20  41 82 00 18 */	beq lbl_80158DD8
/* 80158DC4 00155D24  C0 3C 06 08 */	lfs f1, 0x608(r28)
/* 80158DC8 00155D28  C0 02 9E 78 */	lfs f0, lbl_805ABB98@sda21(r2)
/* 80158DCC 00155D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80158DD0 00155D30  40 81 00 08 */	ble lbl_80158DD8
/* 80158DD4 00155D34  3B C0 00 01 */	li r30, 1
lbl_80158DD8:
/* 80158DD8 00155D38  7F 83 E3 78 */	mr r3, r28
/* 80158DDC 00155D3C  FC 20 F8 90 */	fmr f1, f31
/* 80158DE0 00155D40  81 9C 00 00 */	lwz r12, 0(r28)
/* 80158DE4 00155D44  7F A4 EB 78 */	mr r4, r29
/* 80158DE8 00155D48  3B E0 00 00 */	li r31, 0
/* 80158DEC 00155D4C  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 80158DF0 00155D50  7D 89 03 A6 */	mtctr r12
/* 80158DF4 00155D54  4E 80 04 21 */	bctrl
/* 80158DF8 00155D58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80158DFC 00155D5C  40 82 00 58 */	bne lbl_80158E54
/* 80158E00 00155D60  7F 83 E3 78 */	mr r3, r28
/* 80158E04 00155D64  FC 20 F8 90 */	fmr f1, f31
/* 80158E08 00155D68  81 9C 00 00 */	lwz r12, 0(r28)
/* 80158E0C 00155D6C  7F A4 EB 78 */	mr r4, r29
/* 80158E10 00155D70  81 8C 01 A4 */	lwz r12, 0x1a4(r12)
/* 80158E14 00155D74  7D 89 03 A6 */	mtctr r12
/* 80158E18 00155D78  4E 80 04 21 */	bctrl
/* 80158E1C 00155D7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80158E20 00155D80  41 82 00 34 */	beq lbl_80158E54
/* 80158E24 00155D84  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80158E28 00155D88  40 82 00 28 */	bne lbl_80158E50
/* 80158E2C 00155D8C  7F 83 E3 78 */	mr r3, r28
/* 80158E30 00155D90  7F A4 EB 78 */	mr r4, r29
/* 80158E34 00155D94  81 9C 00 00 */	lwz r12, 0(r28)
/* 80158E38 00155D98  C0 22 9E 50 */	lfs f1, lbl_805ABB70@sda21(r2)
/* 80158E3C 00155D9C  81 8C 01 A8 */	lwz r12, 0x1a8(r12)
/* 80158E40 00155DA0  7D 89 03 A6 */	mtctr r12
/* 80158E44 00155DA4  4E 80 04 21 */	bctrl
/* 80158E48 00155DA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80158E4C 00155DAC  41 82 00 08 */	beq lbl_80158E54
lbl_80158E50:
/* 80158E50 00155DB0  3B E0 00 01 */	li r31, 1
lbl_80158E54:
/* 80158E54 00155DB4  7F E3 FB 78 */	mr r3, r31
/* 80158E58 00155DB8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80158E5C 00155DBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80158E60 00155DC0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80158E64 00155DC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80158E68 00155DC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80158E6C 00155DCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80158E70 00155DD0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80158E74 00155DD4  7C 08 03 A6 */	mtlr r0
/* 80158E78 00155DD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80158E7C 00155DDC  4E 80 00 20 */	blr

.global HitSomething__9CParasiteFR13CStateManagerf
HitSomething__9CParasiteFR13CStateManagerf:
/* 80158E80 00155DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80158E84 00155DE4  7C 08 02 A6 */	mflr r0
/* 80158E88 00155DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80158E8C 00155DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80158E90 00155DF0  A8 03 05 D4 */	lha r0, 0x5d4(r3)
/* 80158E94 00155DF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80158E98 00155DF8  41 82 00 0C */	beq lbl_80158EA4
/* 80158E9C 00155DFC  3B E0 00 01 */	li r31, 1
/* 80158EA0 00155E00  48 00 00 28 */	b lbl_80158EC8
lbl_80158EA4:
/* 80158EA4 00155E04  C0 23 05 B8 */	lfs f1, 0x5b8(r3)
/* 80158EA8 00155E08  3B E0 00 00 */	li r31, 0
/* 80158EAC 00155E0C  C0 02 9E 7C */	lfs f0, lbl_805ABB9C@sda21(r2)
/* 80158EB0 00155E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80158EB4 00155E14  40 80 00 14 */	bge lbl_80158EC8
/* 80158EB8 00155E18  48 00 04 49 */	bl CloseToWall__9CParasiteFR13CStateManager
/* 80158EBC 00155E1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80158EC0 00155E20  41 82 00 08 */	beq lbl_80158EC8
/* 80158EC4 00155E24  3B E0 00 01 */	li r31, 1
lbl_80158EC8:
/* 80158EC8 00155E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80158ECC 00155E2C  7F E3 FB 78 */	mr r3, r31
/* 80158ED0 00155E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80158ED4 00155E34  7C 08 03 A6 */	mtlr r0
/* 80158ED8 00155E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80158EDC 00155E3C  4E 80 00 20 */	blr

.global Landed__9CParasiteFR13CStateManagerf
Landed__9CParasiteFR13CStateManagerf:
/* 80158EE0 00155E40  88 03 07 42 */	lbz r0, 0x742(r3)
/* 80158EE4 00155E44  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 80158EE8 00155E48  4E 80 00 20 */	blr

.global AnimOver__9CParasiteFR13CStateManagerf
AnimOver__9CParasiteFR13CStateManagerf:
/* 80158EEC 00155E4C  80 03 05 E8 */	lwz r0, 0x5e8(r3)
/* 80158EF0 00155E50  20 00 00 02 */	subfic r0, r0, 2
/* 80158EF4 00155E54  7C 00 00 34 */	cntlzw r0, r0
/* 80158EF8 00155E58  54 03 D9 7E */	srwi r3, r0, 5
/* 80158EFC 00155E5C  4E 80 00 20 */	blr

.global GetClosestWaypointForState__9CParasiteCF18EScriptObjectStateR13CStateManager
GetClosestWaypointForState__9CParasiteCF18EScriptObjectStateR13CStateManager:
/* 80158F00 00155E60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80158F04 00155E64  7C 08 02 A6 */	mflr r0
/* 80158F08 00155E68  90 01 00 54 */	stw r0, 0x54(r1)
/* 80158F0C 00155E6C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80158F10 00155E70  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80158F14 00155E74  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 80158F18 00155E78  7C 9B 23 78 */	mr r27, r4
/* 80158F1C 00155E7C  C3 E2 9E 80 */	lfs f31, lbl_805ABBA0@sda21(r2)
/* 80158F20 00155E80  A3 ED A3 8C */	lhz r31, kInvalidUniqueId@sda21(r13)
/* 80158F24 00155E84  7C 7A 1B 78 */	mr r26, r3
/* 80158F28 00155E88  83 C4 00 2C */	lwz r30, 0x2c(r4)
/* 80158F2C 00155E8C  7C BC 2B 78 */	mr r28, r5
/* 80158F30 00155E90  7C DD 33 78 */	mr r29, r6
/* 80158F34 00155E94  48 00 00 74 */	b lbl_80158FA8
lbl_80158F38:
/* 80158F38 00155E98  80 1E 00 00 */	lwz r0, 0(r30)
/* 80158F3C 00155E9C  7C 1C 00 00 */	cmpw r28, r0
/* 80158F40 00155EA0  40 82 00 64 */	bne lbl_80158FA4
/* 80158F44 00155EA4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80158F48 00155EA8  2C 00 00 06 */	cmpwi r0, 6
/* 80158F4C 00155EAC  40 82 00 58 */	bne lbl_80158FA4
/* 80158F50 00155EB0  80 1E 00 08 */	lwz r0, 8(r30)
/* 80158F54 00155EB4  7F A4 EB 78 */	mr r4, r29
/* 80158F58 00155EB8  38 61 00 10 */	addi r3, r1, 0x10
/* 80158F5C 00155EBC  38 A1 00 18 */	addi r5, r1, 0x18
/* 80158F60 00155EC0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80158F64 00155EC4  4B EE EF B9 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 80158F68 00155EC8  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80158F6C 00155ECC  7F 64 DB 78 */	mr r4, r27
/* 80158F70 00155ED0  7F A5 EB 78 */	mr r5, r29
/* 80158F74 00155ED4  38 61 00 0C */	addi r3, r1, 0xc
/* 80158F78 00155ED8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80158F7C 00155EDC  38 C1 00 08 */	addi r6, r1, 8
/* 80158F80 00155EE0  38 E1 00 1C */	addi r7, r1, 0x1c
/* 80158F84 00155EE4  B0 01 00 08 */	sth r0, 8(r1)
/* 80158F88 00155EE8  48 00 00 59 */	bl RecursiveFindClosestWayPoint__9CParasiteCFR13CStateManager9TUniqueIdRf
/* 80158F8C 00155EEC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80158F90 00155EF0  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80158F94 00155EF4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80158F98 00155EF8  40 80 00 0C */	bge lbl_80158FA4
/* 80158F9C 00155EFC  FF E0 00 90 */	fmr f31, f0
/* 80158FA0 00155F00  7C 1F 03 78 */	mr r31, r0
lbl_80158FA4:
/* 80158FA4 00155F04  3B DE 00 0C */	addi r30, r30, 0xc
lbl_80158FA8:
/* 80158FA8 00155F08  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 80158FAC 00155F0C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 80158FB0 00155F10  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80158FB4 00155F14  7C 03 02 14 */	add r0, r3, r0
/* 80158FB8 00155F18  7C 1E 00 40 */	cmplw r30, r0
/* 80158FBC 00155F1C  40 82 FF 7C */	bne lbl_80158F38
/* 80158FC0 00155F20  B3 FA 00 00 */	sth r31, 0(r26)
/* 80158FC4 00155F24  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80158FC8 00155F28  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80158FCC 00155F2C  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 80158FD0 00155F30  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80158FD4 00155F34  7C 08 03 A6 */	mtlr r0
/* 80158FD8 00155F38  38 21 00 50 */	addi r1, r1, 0x50
/* 80158FDC 00155F3C  4E 80 00 20 */	blr

.global RecursiveFindClosestWayPoint__9CParasiteCFR13CStateManager9TUniqueIdRf
RecursiveFindClosestWayPoint__9CParasiteCFR13CStateManager9TUniqueIdRf:
/* 80158FE0 00155F40  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80158FE4 00155F44  7C 08 02 A6 */	mflr r0
/* 80158FE8 00155F48  90 01 00 74 */	stw r0, 0x74(r1)
/* 80158FEC 00155F4C  BF 21 00 54 */	stmw r25, 0x54(r1)
/* 80158FF0 00155F50  7C 9A 23 78 */	mr r26, r4
/* 80158FF4 00155F54  7C BB 2B 78 */	mr r27, r5
/* 80158FF8 00155F58  7C 79 1B 78 */	mr r25, r3
/* 80158FFC 00155F5C  7C FC 3B 78 */	mr r28, r7
/* 80159000 00155F60  38 81 00 18 */	addi r4, r1, 0x18
/* 80159004 00155F64  7F 63 DB 78 */	mr r3, r27
/* 80159008 00155F68  A0 06 00 00 */	lhz r0, 0(r6)
/* 8015900C 00155F6C  A3 C6 00 00 */	lhz r30, 0(r6)
/* 80159010 00155F70  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80159014 00155F74  4B EF 35 61 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80159018 00155F78  7C 64 1B 78 */	mr r4, r3
/* 8015901C 00155F7C  38 61 00 30 */	addi r3, r1, 0x30
/* 80159020 00155F80  4B F4 D5 2D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80159024 00155F84  83 E3 00 04 */	lwz r31, 4(r3)
/* 80159028 00155F88  28 1F 00 00 */	cmplwi r31, 0
/* 8015902C 00155F8C  40 82 00 0C */	bne lbl_80159038
/* 80159030 00155F90  B3 D9 00 00 */	sth r30, 0(r25)
/* 80159034 00155F94  48 00 01 64 */	b lbl_80159198
lbl_80159038:
/* 80159038 00155F98  7F E3 FB 78 */	mr r3, r31
/* 8015903C 00155F9C  38 80 00 00 */	li r4, 0
/* 80159040 00155FA0  81 9F 00 00 */	lwz r12, 0(r31)
/* 80159044 00155FA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80159048 00155FA8  7D 89 03 A6 */	mtctr r12
/* 8015904C 00155FAC  4E 80 04 21 */	bctrl
/* 80159050 00155FB0  C0 DF 00 50 */	lfs f6, 0x50(r31)
/* 80159054 00155FB4  C0 1A 00 50 */	lfs f0, 0x50(r26)
/* 80159058 00155FB8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8015905C 00155FBC  EC A6 00 28 */	fsubs f5, f6, f0
/* 80159060 00155FC0  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80159064 00155FC4  C0 FF 00 60 */	lfs f7, 0x60(r31)
/* 80159068 00155FC8  EC 61 00 28 */	fsubs f3, f1, f0
/* 8015906C 00155FCC  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80159070 00155FD0  EC 05 01 72 */	fmuls f0, f5, f5
/* 80159074 00155FD4  EC 87 10 28 */	fsubs f4, f7, f2
/* 80159078 00155FD8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8015907C 00155FDC  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80159080 00155FE0  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 80159084 00155FE4  EC 44 01 32 */	fmuls f2, f4, f4
/* 80159088 00155FE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8015908C 00155FEC  D0 E1 00 40 */	stfs f7, 0x40(r1)
/* 80159090 00155FF0  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 80159094 00155FF4  EC 02 00 2A */	fadds f0, f2, f0
/* 80159098 00155FF8  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 8015909C 00155FFC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801590A0 00156000  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 801590A4 00156004  83 BF 00 2C */	lwz r29, 0x2c(r31)
/* 801590A8 00156008  48 00 00 BC */	b lbl_80159164
lbl_801590AC:
/* 801590AC 0015600C  80 1D 00 00 */	lwz r0, 0(r29)
/* 801590B0 00156010  2C 00 00 01 */	cmpwi r0, 1
/* 801590B4 00156014  40 82 00 AC */	bne lbl_80159160
/* 801590B8 00156018  80 1D 00 04 */	lwz r0, 4(r29)
/* 801590BC 0015601C  2C 00 00 08 */	cmpwi r0, 8
/* 801590C0 00156020  40 82 00 A0 */	bne lbl_80159160
/* 801590C4 00156024  80 1D 00 08 */	lwz r0, 8(r29)
/* 801590C8 00156028  7F 64 DB 78 */	mr r4, r27
/* 801590CC 0015602C  38 61 00 14 */	addi r3, r1, 0x14
/* 801590D0 00156030  38 A1 00 20 */	addi r5, r1, 0x20
/* 801590D4 00156034  90 01 00 20 */	stw r0, 0x20(r1)
/* 801590D8 00156038  4B EE EE 45 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801590DC 0015603C  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 801590E0 00156040  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801590E4 00156044  B0 61 00 1C */	sth r3, 0x1c(r1)
/* 801590E8 00156048  7C 03 00 40 */	cmplw r3, r0
/* 801590EC 0015604C  41 82 00 74 */	beq lbl_80159160
/* 801590F0 00156050  B0 61 00 10 */	sth r3, 0x10(r1)
/* 801590F4 00156054  7F 63 DB 78 */	mr r3, r27
/* 801590F8 00156058  38 81 00 10 */	addi r4, r1, 0x10
/* 801590FC 0015605C  4B EF 34 A9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80159100 00156060  7C 64 1B 78 */	mr r4, r3
/* 80159104 00156064  38 61 00 28 */	addi r3, r1, 0x28
/* 80159108 00156068  4B F4 D4 45 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 8015910C 0015606C  80 63 00 04 */	lwz r3, 4(r3)
/* 80159110 00156070  28 03 00 00 */	cmplwi r3, 0
/* 80159114 00156074  41 82 00 4C */	beq lbl_80159160
/* 80159118 00156078  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8015911C 0015607C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80159120 00156080  41 82 00 40 */	beq lbl_80159160
/* 80159124 00156084  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 80159128 00156088  7F 44 D3 78 */	mr r4, r26
/* 8015912C 0015608C  7F 65 DB 78 */	mr r5, r27
/* 80159130 00156090  38 61 00 0C */	addi r3, r1, 0xc
/* 80159134 00156094  B0 01 00 08 */	sth r0, 8(r1)
/* 80159138 00156098  38 C1 00 08 */	addi r6, r1, 8
/* 8015913C 0015609C  38 E1 00 24 */	addi r7, r1, 0x24
/* 80159140 001560A0  4B FF FE A1 */	bl RecursiveFindClosestWayPoint__9CParasiteCFR13CStateManager9TUniqueIdRf
/* 80159144 001560A4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80159148 001560A8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8015914C 001560AC  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80159150 001560B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159154 001560B4  40 80 00 0C */	bge lbl_80159160
/* 80159158 001560B8  D0 3C 00 00 */	stfs f1, 0(r28)
/* 8015915C 001560BC  7C 1E 03 78 */	mr r30, r0
lbl_80159160:
/* 80159160 001560C0  3B BD 00 0C */	addi r29, r29, 0xc
lbl_80159164:
/* 80159164 001560C4  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80159168 001560C8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8015916C 001560CC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80159170 001560D0  7C 03 02 14 */	add r0, r3, r0
/* 80159174 001560D4  7C 1D 00 40 */	cmplw r29, r0
/* 80159178 001560D8  40 82 FF 34 */	bne lbl_801590AC
/* 8015917C 001560DC  7F E3 FB 78 */	mr r3, r31
/* 80159180 001560E0  38 80 00 01 */	li r4, 1
/* 80159184 001560E4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80159188 001560E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8015918C 001560EC  7D 89 03 A6 */	mtctr r12
/* 80159190 001560F0  4E 80 04 21 */	bctrl
/* 80159194 001560F4  B3 D9 00 00 */	sth r30, 0(r25)
lbl_80159198:
/* 80159198 001560F8  BB 21 00 54 */	lmw r25, 0x54(r1)
/* 8015919C 001560FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801591A0 00156100  7C 08 03 A6 */	mtlr r0
/* 801591A4 00156104  38 21 00 70 */	addi r1, r1, 0x70
/* 801591A8 00156108  4E 80 00 20 */	blr

.global CollidedWith__9CParasiteFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
CollidedWith__9CParasiteFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager:
/* 801591AC 0015610C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801591B0 00156110  7C 08 02 A6 */	mflr r0
/* 801591B4 00156114  90 01 00 34 */	stw r0, 0x34(r1)
/* 801591B8 00156118  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801591BC 0015611C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801591C0 00156120  7C BE 2B 78 */	mr r30, r5
/* 801591C4 00156124  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801591C8 00156128  7C 7D 1B 78 */	mr r29, r3
/* 801591CC 0015612C  93 81 00 20 */	stw r28, 0x20(r1)
/* 801591D0 00156130  88 0D A4 0A */	lbz r0, lbl_805A8FCA@sda21(r13)
/* 801591D4 00156134  7C 00 07 75 */	extsb. r0, r0
/* 801591D8 00156138  40 82 00 44 */	bne lbl_8015921C
/* 801591DC 0015613C  80 AD 8C 98 */	lwz r5, lbl_805A7858@sda21(r13)
/* 801591E0 00156140  38 60 00 00 */	li r3, 0
/* 801591E4 00156144  38 80 00 01 */	li r4, 1
/* 801591E8 00156148  48 23 0D 0D */	bl __shl2i
/* 801591EC 0015614C  80 AD 8C 9C */	lwz r5, lbl_805A785C@sda21(r13)
/* 801591F0 00156150  7C 9C 23 78 */	mr r28, r4
/* 801591F4 00156154  7C 7F 1B 78 */	mr r31, r3
/* 801591F8 00156158  38 60 00 00 */	li r3, 0
/* 801591FC 0015615C  38 80 00 01 */	li r4, 1
/* 80159200 00156160  48 23 0C F5 */	bl __shl2i
/* 80159204 00156164  7F 9C 23 78 */	or r28, r28, r4
/* 80159208 00156168  7F FF 1B 78 */	or r31, r31, r3
/* 8015920C 0015616C  38 00 00 01 */	li r0, 1
/* 80159210 00156170  93 8D A4 14 */	stw r28, lbl_805A8FD4@sda21(r13)
/* 80159214 00156174  93 ED A4 10 */	stw r31, lbl_805A8FD0@sda21(r13)
/* 80159218 00156178  98 0D A4 0A */	stb r0, lbl_805A8FCA@sda21(r13)
lbl_8015921C:
/* 8015921C 0015617C  88 1D 07 43 */	lbz r0, 0x743(r29)
/* 80159220 00156180  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80159224 00156184  41 82 00 BC */	beq lbl_801592E0
/* 80159228 00156188  3B FE 00 04 */	addi r31, r30, 4
/* 8015922C 0015618C  48 00 00 9C */	b lbl_801592C8
lbl_80159230:
/* 80159230 00156190  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 80159234 00156194  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80159238 00156198  40 82 00 8C */	bne lbl_801592C4
/* 8015923C 0015619C  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 80159240 001561A0  38 60 00 00 */	li r3, 0
/* 80159244 001561A4  80 0D A4 10 */	lwz r0, lbl_805A8FD0@sda21(r13)
/* 80159248 001561A8  80 DF 00 3C */	lwz r6, 0x3c(r31)
/* 8015924C 001561AC  80 8D A4 14 */	lwz r4, lbl_805A8FD4@sda21(r13)
/* 80159250 001561B0  7C A0 00 38 */	and r0, r5, r0
/* 80159254 001561B4  7C 00 1A 78 */	xor r0, r0, r3
/* 80159258 001561B8  7C C4 20 38 */	and r4, r6, r4
/* 8015925C 001561BC  7C 83 1A 78 */	xor r3, r4, r3
/* 80159260 001561C0  7C 60 03 79 */	or. r0, r3, r0
/* 80159264 001561C4  40 82 00 60 */	bne lbl_801592C4
/* 80159268 001561C8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8015926C 001561CC  7F A3 EB 78 */	mr r3, r29
/* 80159270 001561D0  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80159274 001561D4  38 81 00 08 */	addi r4, r1, 8
/* 80159278 001561D8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8015927C 001561DC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80159280 001561E0  C0 22 9E 84 */	lfs f1, lbl_805ABBA4@sda21(r2)
/* 80159284 001561E4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80159288 001561E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015928C 001561EC  48 10 FC 31 */	bl OrientToSurfaceNormal__11CWallWalkerFRC9CVector3ff
/* 80159290 001561F0  7F A3 EB 78 */	mr r3, r29
/* 80159294 001561F4  4B FC 20 E5 */	bl Stop__13CPhysicsActorFv
/* 80159298 001561F8  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8015929C 001561FC  7F A3 EB 78 */	mr r3, r29
/* 801592A0 00156200  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 801592A4 00156204  4B FC 19 FD */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 801592A8 00156208  88 1D 07 42 */	lbz r0, 0x742(r29)
/* 801592AC 0015620C  38 60 00 01 */	li r3, 1
/* 801592B0 00156210  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801592B4 00156214  98 1D 07 42 */	stb r0, 0x742(r29)
/* 801592B8 00156218  88 1D 07 42 */	lbz r0, 0x742(r29)
/* 801592BC 0015621C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801592C0 00156220  98 1D 07 42 */	stb r0, 0x742(r29)
lbl_801592C4:
/* 801592C4 00156224  3B FF 00 60 */	addi r31, r31, 0x60
lbl_801592C8:
/* 801592C8 00156228  80 1E 00 00 */	lwz r0, 0(r30)
/* 801592CC 0015622C  1C 00 00 60 */	mulli r0, r0, 0x60
/* 801592D0 00156230  7C 7E 02 14 */	add r3, r30, r0
/* 801592D4 00156234  38 03 00 04 */	addi r0, r3, 4
/* 801592D8 00156238  7C 1F 00 40 */	cmplw r31, r0
/* 801592DC 0015623C  41 80 FF 54 */	blt lbl_80159230
lbl_801592E0:
/* 801592E0 00156240  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801592E4 00156244  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801592E8 00156248  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801592EC 0015624C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801592F0 00156250  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801592F4 00156254  7C 08 03 A6 */	mtlr r0
/* 801592F8 00156258  38 21 00 30 */	addi r1, r1, 0x30
/* 801592FC 0015625C  4E 80 00 20 */	blr

.global CloseToWall__9CParasiteFR13CStateManager
CloseToWall__9CParasiteFR13CStateManager:
/* 80159300 00156260  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80159304 00156264  7C 08 02 A6 */	mflr r0
/* 80159308 00156268  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8015930C 0015626C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80159310 00156270  7C 9F 23 78 */	mr r31, r4
/* 80159314 00156274  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80159318 00156278  7C 7E 1B 78 */	mr r30, r3
/* 8015931C 0015627C  88 0D A4 09 */	lbz r0, lbl_805A8FC9@sda21(r13)
/* 80159320 00156280  7C 00 07 75 */	extsb. r0, r0
/* 80159324 00156284  40 82 00 40 */	bne lbl_80159364
/* 80159328 00156288  80 AD 8C 94 */	lwz r5, lbl_805A7854@sda21(r13)
/* 8015932C 0015628C  38 60 00 00 */	li r3, 0
/* 80159330 00156290  38 80 00 01 */	li r4, 1
/* 80159334 00156294  48 23 0B C1 */	bl __shl2i
/* 80159338 00156298  3C A0 80 47 */	lis r5, lbl_8046C770@ha
/* 8015933C 0015629C  38 C0 00 01 */	li r6, 1
/* 80159340 001562A0  38 A5 C7 70 */	addi r5, r5, lbl_8046C770@l
/* 80159344 001562A4  38 00 00 00 */	li r0, 0
/* 80159348 001562A8  90 C1 00 48 */	stw r6, 0x48(r1)
/* 8015934C 001562AC  90 85 00 04 */	stw r4, 4(r5)
/* 80159350 001562B0  90 65 00 00 */	stw r3, 0(r5)
/* 80159354 001562B4  90 05 00 0C */	stw r0, 0xc(r5)
/* 80159358 001562B8  90 05 00 08 */	stw r0, 8(r5)
/* 8015935C 001562BC  90 C5 00 10 */	stw r6, 0x10(r5)
/* 80159360 001562C0  98 CD A4 09 */	stb r6, lbl_805A8FC9@sda21(r13)
lbl_80159364:
/* 80159364 001562C4  7F C4 F3 78 */	mr r4, r30
/* 80159368 001562C8  38 61 00 20 */	addi r3, r1, 0x20
/* 8015936C 001562CC  4B FC 15 C1 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80159370 001562D0  C0 5E 05 AC */	lfs f2, 0x5ac(r30)
/* 80159374 001562D4  38 61 00 50 */	addi r3, r1, 0x50
/* 80159378 001562D8  C0 3E 05 B0 */	lfs f1, 0x5b0(r30)
/* 8015937C 001562DC  38 81 00 14 */	addi r4, r1, 0x14
/* 80159380 001562E0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80159384 001562E4  38 A1 00 08 */	addi r5, r1, 8
/* 80159388 001562E8  EC C2 08 2A */	fadds f6, f2, f1
/* 8015938C 001562EC  C0 81 00 34 */	lfs f4, 0x34(r1)
/* 80159390 001562F0  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 80159394 001562F4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80159398 001562F8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8015939C 001562FC  EC A0 30 2A */	fadds f5, f0, f6
/* 801593A0 00156300  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801593A4 00156304  EC 84 30 2A */	fadds f4, f4, f6
/* 801593A8 00156308  EC 63 30 2A */	fadds f3, f3, f6
/* 801593AC 0015630C  EC 42 30 28 */	fsubs f2, f2, f6
/* 801593B0 00156310  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 801593B4 00156314  EC 21 30 28 */	fsubs f1, f1, f6
/* 801593B8 00156318  EC 00 30 28 */	fsubs f0, f0, f6
/* 801593BC 0015631C  D0 61 00 08 */	stfs f3, 8(r1)
/* 801593C0 00156320  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 801593C4 00156324  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801593C8 00156328  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801593CC 0015632C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801593D0 00156330  48 1D F1 39 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801593D4 00156334  38 61 00 68 */	addi r3, r1, 0x68
/* 801593D8 00156338  38 9E 00 68 */	addi r4, r30, 0x68
/* 801593DC 0015633C  48 17 64 D9 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 801593E0 00156340  C0 A1 00 50 */	lfs f5, 0x50(r1)
/* 801593E4 00156344  3C 60 80 3F */	lis r3, __vt__16CCollidableAABox@ha
/* 801593E8 00156348  38 03 CA D0 */	addi r0, r3, __vt__16CCollidableAABox@l
/* 801593EC 0015634C  C0 81 00 54 */	lfs f4, 0x54(r1)
/* 801593F0 00156350  C0 61 00 58 */	lfs f3, 0x58(r1)
/* 801593F4 00156354  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 801593F8 00156358  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 801593FC 0015635C  3C 60 80 47 */	lis r3, lbl_8046C770@ha
/* 80159400 00156360  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80159404 00156364  38 A4 66 70 */	addi r5, r4, sIdentity__12CTransform4f@l
/* 80159408 00156368  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8015940C 0015636C  38 C3 C7 70 */	addi r6, r3, lbl_8046C770@l
/* 80159410 00156370  90 01 00 68 */	stw r0, 0x68(r1)
/* 80159414 00156374  7F E3 FB 78 */	mr r3, r31
/* 80159418 00156378  38 81 00 68 */	addi r4, r1, 0x68
/* 8015941C 0015637C  D0 A1 00 78 */	stfs f5, 0x78(r1)
/* 80159420 00156380  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 80159424 00156384  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 80159428 00156388  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8015942C 0015638C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80159430 00156390  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80159434 00156394  48 02 9F 6D */	bl DetectStaticCollisionBoolean__14CGameCollisionFRC13CStateManagerRC19CCollisionPrimitiveRC12CTransform4fRC15CMaterialFilter
/* 80159438 00156398  3C A0 80 3F */	lis r5, __vt__16CCollidableAABox@ha
/* 8015943C 0015639C  3C 80 80 3E */	lis r4, __vt__19CCollisionPrimitive@ha
/* 80159440 001563A0  38 05 CA D0 */	addi r0, r5, __vt__16CCollidableAABox@l
/* 80159444 001563A4  90 01 00 68 */	stw r0, 0x68(r1)
/* 80159448 001563A8  38 04 97 E4 */	addi r0, r4, __vt__19CCollisionPrimitive@l
/* 8015944C 001563AC  90 01 00 68 */	stw r0, 0x68(r1)
/* 80159450 001563B0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80159454 001563B4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80159458 001563B8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8015945C 001563BC  7C 08 03 A6 */	mtlr r0
/* 80159460 001563C0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80159464 001563C4  4E 80 00 20 */	blr

.global ShotAt__9CParasiteFR13CStateManagerf
ShotAt__9CParasiteFR13CStateManagerf:
/* 80159468 001563C8  80 03 05 D0 */	lwz r0, 0x5d0(r3)
/* 8015946C 001563CC  2C 00 00 01 */	cmpwi r0, 1
/* 80159470 001563D0  41 82 00 1C */	beq lbl_8015948C
/* 80159474 001563D4  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80159478 001563D8  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 8015947C 001563DC  7C 03 00 D0 */	neg r0, r3
/* 80159480 001563E0  7C 00 1B 78 */	or r0, r0, r3
/* 80159484 001563E4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80159488 001563E8  4E 80 00 20 */	blr
lbl_8015948C:
/* 8015948C 001563EC  88 03 07 43 */	lbz r0, 0x743(r3)
/* 80159490 001563F0  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 80159494 001563F4  4E 80 00 20 */	blr

.global AttackOver__9CParasiteFR13CStateManagerf
AttackOver__9CParasiteFR13CStateManagerf:
/* 80159498 001563F8  88 03 07 42 */	lbz r0, 0x742(r3)
/* 8015949C 001563FC  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 801594A0 00156400  4E 80 00 20 */	blr

.global Stuck__9CParasiteFR13CStateManagerf
Stuck__9CParasiteFR13CStateManagerf:
/* 801594A4 00156404  C0 23 06 0C */	lfs f1, 0x60c(r3)
/* 801594A8 00156408  C0 03 06 E0 */	lfs f0, 0x6e0(r3)
/* 801594AC 0015640C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801594B0 00156410  7C 00 00 26 */	mfcr r0
/* 801594B4 00156414  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801594B8 00156418  4E 80 00 20 */	blr

.global ThinkAboutMove__9CParasiteFf
ThinkAboutMove__9CParasiteFf:
/* 801594BC 0015641C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801594C0 00156420  7C 08 02 A6 */	mflr r0
/* 801594C4 00156424  38 A0 00 00 */	li r5, 0
/* 801594C8 00156428  90 01 00 14 */	stw r0, 0x14(r1)
/* 801594CC 0015642C  38 00 00 20 */	li r0, 0x20
/* 801594D0 00156430  80 83 00 68 */	lwz r4, 0x68(r3)
/* 801594D4 00156434  80 C3 00 6C */	lwz r6, 0x6c(r3)
/* 801594D8 00156438  7C 80 00 38 */	and r0, r4, r0
/* 801594DC 0015643C  7C C4 28 38 */	and r4, r6, r5
/* 801594E0 00156440  7C 84 2A 78 */	xor r4, r4, r5
/* 801594E4 00156444  7C 00 2A 78 */	xor r0, r0, r5
/* 801594E8 00156448  7C 80 03 79 */	or. r0, r4, r0
/* 801594EC 0015644C  40 82 00 08 */	bne lbl_801594F4
/* 801594F0 00156450  4B F1 FE 75 */	bl ThinkAboutMove__10CPatternedFf
lbl_801594F4:
/* 801594F4 00156454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801594F8 00156458  7C 08 03 A6 */	mtlr r0
/* 801594FC 0015645C  38 21 00 10 */	addi r1, r1, 0x10
/* 80159500 00156460  4E 80 00 20 */	blr

.global GetAimPosition__9CParasiteCFRC13CStateManagerf
GetAimPosition__9CParasiteCFRC13CStateManagerf:
/* 80159504 00156464  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 80159508 00156468  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8015950C 0015646C  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80159510 00156470  D0 03 00 00 */	stfs f0, 0(r3)
/* 80159514 00156474  D0 23 00 04 */	stfs f1, 4(r3)
/* 80159518 00156478  D0 43 00 08 */	stfs f2, 8(r3)
/* 8015951C 0015647C  4E 80 00 20 */	blr

.global UpdateJumpVelocity__9CParasiteFv
UpdateJumpVelocity__9CParasiteFv:
/* 80159520 00156480  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80159524 00156484  7C 08 02 A6 */	mflr r0
/* 80159528 00156488  90 01 00 94 */	stw r0, 0x94(r1)
/* 8015952C 0015648C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80159530 00156490  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 80159534 00156494  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80159538 00156498  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8015953C 0015649C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80159540 001564A0  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 80159544 001564A4  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80159548 001564A8  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 8015954C 001564AC  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 80159550 001564B0  F3 61 00 48 */	psq_st f27, 72(r1), 0, qr0
/* 80159554 001564B4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80159558 001564B8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8015955C 001564BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80159560 001564C0  7C 7E 1B 78 */	mr r30, r3
/* 80159564 001564C4  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80159568 001564C8  7D 89 03 A6 */	mtctr r12
/* 8015956C 001564CC  4E 80 04 21 */	bctrl
/* 80159570 001564D0  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80159574 001564D4  FC 20 08 50 */	fneg f1, f1
/* 80159578 001564D8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8015957C 001564DC  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 80159580 001564E0  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 80159584 001564E4  D0 3E 01 58 */	stfs f1, 0x158(r30)
/* 80159588 001564E8  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 8015958C 001564EC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80159590 001564F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80159594 001564F4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80159598 001564F8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8015959C 001564FC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801595A0 00156500  88 1E 07 42 */	lbz r0, 0x742(r30)
/* 801595A4 00156504  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801595A8 00156508  40 82 00 3C */	bne lbl_801595E4
/* 801595AC 0015650C  C0 8D A3 F4 */	lfs f4, lbl_805A8FB4@sda21(r13)
/* 801595B0 00156510  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 801595B4 00156514  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 801595B8 00156518  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 801595BC 0015651C  EC 64 00 32 */	fmuls f3, f4, f0
/* 801595C0 00156520  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 801595C4 00156524  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801595C8 00156528  EC 24 00 72 */	fmuls f1, f4, f1
/* 801595CC 0015652C  EC 00 01 32 */	fmuls f0, f0, f4
/* 801595D0 00156530  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 801595D4 00156534  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801595D8 00156538  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801595DC 0015653C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801595E0 00156540  48 00 00 38 */	b lbl_80159618
lbl_801595E4:
/* 801595E4 00156544  C0 8D A3 FC */	lfs f4, lbl_805A8FBC@sda21(r13)
/* 801595E8 00156548  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 801595EC 0015654C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 801595F0 00156550  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 801595F4 00156554  EC 64 00 32 */	fmuls f3, f4, f0
/* 801595F8 00156558  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 801595FC 0015655C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80159600 00156560  EC 24 00 72 */	fmuls f1, f4, f1
/* 80159604 00156564  EC 00 01 32 */	fmuls f0, f0, f4
/* 80159608 00156568  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8015960C 0015656C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80159610 00156570  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80159614 00156574  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_80159618:
/* 80159618 00156578  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 8015961C 0015657C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80159620 00156580  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80159624 00156584  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 80159628 00156588  EF C1 00 24 */	fdivs f30, f1, f0
/* 8015962C 0015658C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80159630 00156590  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80159634 00156594  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80159638 00156598  C0 DE 00 60 */	lfs f6, 0x60(r30)
/* 8015963C 0015659C  C0 5E 06 00 */	lfs f2, 0x600(r30)
/* 80159640 001565A0  EC 80 28 28 */	fsubs f4, f0, f5
/* 80159644 001565A4  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80159648 001565A8  EC 21 18 28 */	fsubs f1, f1, f3
/* 8015964C 001565AC  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80159650 001565B0  EF E2 30 28 */	fsubs f31, f2, f6
/* 80159654 001565B4  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80159658 001565B8  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 8015965C 001565BC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80159660 001565C0  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 80159664 001565C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80159668 001565C8  48 1B B2 51 */	bl Magnitude__9CVector3fCFv
/* 8015966C 001565CC  FF A0 08 90 */	fmr f29, f1
/* 80159670 001565D0  C0 C2 9E 88 */	lfs f6, lbl_805ABBA8@sda21(r2)
/* 80159674 001565D4  FC 1D 30 40 */	fcmpo cr0, f29, f6
/* 80159678 001565D8  40 81 00 E8 */	ble lbl_80159760
/* 8015967C 001565DC  C0 02 9E 60 */	lfs f0, lbl_805ABB80@sda21(r2)
/* 80159680 001565E0  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 80159684 001565E4  EC E0 E8 24 */	fdivs f7, f0, f29
/* 80159688 001565E8  C0 A1 00 1C */	lfs f5, 0x1c(r1)
/* 8015968C 001565EC  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80159690 001565F0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80159694 001565F4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80159698 001565F8  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8015969C 001565FC  EC 84 01 F2 */	fmuls f4, f4, f7
/* 801596A0 00156600  EC A5 01 F2 */	fmuls f5, f5, f7
/* 801596A4 00156604  EC 63 01 F2 */	fmuls f3, f3, f7
/* 801596A8 00156608  EC 04 00 32 */	fmuls f0, f4, f0
/* 801596AC 0015660C  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 801596B0 00156610  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 801596B4 00156614  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 801596B8 00156618  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 801596BC 0015661C  EF 83 00 BA */	fmadds f28, f3, f2, f0
/* 801596C0 00156620  FC 1C 30 40 */	fcmpo cr0, f28, f6
/* 801596C4 00156624  40 81 00 9C */	ble lbl_80159760
/* 801596C8 00156628  C3 62 9E 50 */	lfs f27, lbl_805ABB70@sda21(r2)
/* 801596CC 0015662C  FC 1F D8 40 */	fcmpo cr0, f31, f27
/* 801596D0 00156630  7C 00 00 26 */	mfcr r0
/* 801596D4 00156634  FC 20 F0 90 */	fmr f1, f30
/* 801596D8 00156638  FC 60 F8 50 */	fneg f3, f31
/* 801596DC 0015663C  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 801596E0 00156640  38 61 00 0C */	addi r3, r1, 0xc
/* 801596E4 00156644  38 81 00 08 */	addi r4, r1, 8
/* 801596E8 00156648  4B FE 4D 0D */	bl SolveQuadratic__18CSteeringBehaviorsFfffRfRf
/* 801596EC 0015664C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801596F0 00156650  41 82 00 18 */	beq lbl_80159708
/* 801596F4 00156654  28 1F 00 00 */	cmplwi r31, 0
/* 801596F8 00156658  41 82 00 0C */	beq lbl_80159704
/* 801596FC 0015665C  C3 61 00 08 */	lfs f27, 8(r1)
/* 80159700 00156660  48 00 00 08 */	b lbl_80159708
lbl_80159704:
/* 80159704 00156664  C3 61 00 0C */	lfs f27, 0xc(r1)
lbl_80159708:
/* 80159708 00156668  28 1F 00 00 */	cmplwi r31, 0
/* 8015970C 0015666C  40 82 00 0C */	bne lbl_80159718
/* 80159710 00156670  EC 1D E0 24 */	fdivs f0, f29, f28
/* 80159714 00156674  EF 7B 00 2A */	fadds f27, f27, f0
lbl_80159718:
/* 80159718 00156678  C0 02 9E 8C */	lfs f0, lbl_805ABBAC@sda21(r2)
/* 8015971C 0015667C  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80159720 00156680  40 80 00 40 */	bge lbl_80159760
/* 80159724 00156684  EC BD D8 24 */	fdivs f5, f29, f27
/* 80159728 00156688  C0 22 9E 64 */	lfs f1, lbl_805ABB84@sda21(r2)
/* 8015972C 0015668C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80159730 00156690  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80159734 00156694  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80159738 00156698  EC 85 00 32 */	fmuls f4, f5, f0
/* 8015973C 0015669C  EC 1F D8 24 */	fdivs f0, f31, f27
/* 80159740 001566A0  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80159744 001566A4  EC 21 07 B2 */	fmuls f1, f1, f30
/* 80159748 001566A8  EC 65 00 F2 */	fmuls f3, f5, f3
/* 8015974C 001566AC  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80159750 001566B0  EC 01 06 FC */	fnmsubs f0, f1, f27, f0
/* 80159754 001566B4  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80159758 001566B8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8015975C 001566BC  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_80159760:
/* 80159760 001566C0  7F C3 F3 78 */	mr r3, r30
/* 80159764 001566C4  38 81 00 28 */	addi r4, r1, 0x28
/* 80159768 001566C8  4B FC 15 39 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8015976C 001566CC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80159770 001566D0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80159774 001566D4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 80159778 001566D8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8015977C 001566DC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 80159780 001566E0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80159784 001566E4  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 80159788 001566E8  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8015978C 001566EC  E3 61 00 48 */	psq_l f27, 72(r1), 0, qr0
/* 80159790 001566F0  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 80159794 001566F4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80159798 001566F8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8015979C 001566FC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801597A0 00156700  7C 08 03 A6 */	mtlr r0
/* 801597A4 00156704  38 21 00 90 */	addi r1, r1, 0x90
/* 801597A8 00156708  4E 80 00 20 */	blr

.global UpdateWalkerAnimation__9CParasiteFR13CStateManagerf
UpdateWalkerAnimation__9CParasiteFR13CStateManagerf:
/* 801597AC 0015670C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801597B0 00156710  7C 08 02 A6 */	mflr r0
/* 801597B4 00156714  38 C0 00 01 */	li r6, 1
/* 801597B8 00156718  90 01 00 14 */	stw r0, 0x14(r1)
/* 801597BC 0015671C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801597C0 00156720  7C 7F 1B 78 */	mr r31, r3
/* 801597C4 00156724  4B EF BA D9 */	bl UpdateAnimation__6CActorFfR13CStateManagerb
/* 801597C8 00156728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801597CC 0015672C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801597D0 00156730  7C 08 03 A6 */	mtlr r0
/* 801597D4 00156734  38 21 00 10 */	addi r1, r1, 0x10
/* 801597D8 00156738  4E 80 00 20 */	blr

.global Think__9CParasiteFfR13CStateManager
Think__9CParasiteFfR13CStateManager:
/* 801597DC 0015673C  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 801597E0 00156740  7C 08 02 A6 */	mflr r0
/* 801597E4 00156744  90 01 01 94 */	stw r0, 0x194(r1)
/* 801597E8 00156748  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 801597EC 0015674C  F3 E1 01 88 */	psq_st f31, 392(r1), 0, qr0
/* 801597F0 00156750  DB C1 01 70 */	stfd f30, 0x170(r1)
/* 801597F4 00156754  F3 C1 01 78 */	psq_st f30, 376(r1), 0, qr0
/* 801597F8 00156758  93 E1 01 6C */	stw r31, 0x16c(r1)
/* 801597FC 0015675C  93 C1 01 68 */	stw r30, 0x168(r1)
/* 80159800 00156760  93 A1 01 64 */	stw r29, 0x164(r1)
/* 80159804 00156764  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80159808 00156768  FF E0 08 90 */	fmr f31, f1
/* 8015980C 0015676C  7C 7D 1B 78 */	mr r29, r3
/* 80159810 00156770  7C 9E 23 78 */	mr r30, r4
/* 80159814 00156774  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80159818 00156778  41 82 05 48 */	beq lbl_80159D60
/* 8015981C 0015677C  A8 BD 05 D4 */	lha r5, 0x5d4(r29)
/* 80159820 00156780  38 05 00 01 */	addi r0, r5, 1
/* 80159824 00156784  B0 1D 05 D4 */	sth r0, 0x5d4(r29)
/* 80159828 00156788  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 8015982C 0015678C  2C 00 00 03 */	cmpwi r0, 3
/* 80159830 00156790  40 82 00 08 */	bne lbl_80159838
/* 80159834 00156794  4B FF D3 19 */	bl UpdateCollisionActors__9CParasiteFR13CStateManager
lbl_80159838:
/* 80159838 00156798  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 8015983C 0015679C  38 C0 00 00 */	li r6, 0
/* 80159840 001567A0  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 80159844 001567A4  98 1D 05 D6 */	stb r0, 0x5d6(r29)
/* 80159848 001567A8  80 BD 00 04 */	lwz r5, 4(r29)
/* 8015984C 001567AC  80 9E 08 50 */	lwz r4, 0x850(r30)
/* 80159850 001567B0  54 A3 18 38 */	slwi r3, r5, 3
/* 80159854 001567B4  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80159858 001567B8  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8015985C 001567BC  38 03 00 04 */	addi r0, r3, 4
/* 80159860 001567C0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80159864 001567C4  7C 64 00 2E */	lwzx r3, r4, r0
/* 80159868 001567C8  88 03 00 F0 */	lbz r0, 0xf0(r3)
/* 8015986C 001567CC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80159870 001567D0  41 82 00 0C */	beq lbl_8015987C
/* 80159874 001567D4  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80159878 001567D8  80 C3 10 DC */	lwz r6, 0x10dc(r3)
lbl_8015987C:
/* 8015987C 001567DC  2C 06 00 01 */	cmpwi r6, 1
/* 80159880 001567E0  41 82 00 14 */	beq lbl_80159894
/* 80159884 001567E4  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 80159888 001567E8  38 60 00 01 */	li r3, 1
/* 8015988C 001567EC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80159890 001567F0  98 1D 05 D6 */	stb r0, 0x5d6(r29)
lbl_80159894:
/* 80159894 001567F4  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 80159898 001567F8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8015989C 001567FC  40 82 00 D4 */	bne lbl_80159970
/* 801598A0 00156800  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 801598A4 00156804  38 61 00 88 */	addi r3, r1, 0x88
/* 801598A8 00156808  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 801598AC 0015680C  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 801598B0 00156810  C0 64 00 40 */	lfs f3, 0x40(r4)
/* 801598B4 00156814  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 801598B8 00156818  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 801598BC 0015681C  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 801598C0 00156820  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 801598C4 00156824  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 801598C8 00156828  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801598CC 0015682C  EC 44 10 28 */	fsubs f2, f4, f2
/* 801598D0 00156830  EC 25 08 28 */	fsubs f1, f5, f1
/* 801598D4 00156834  EC 03 00 28 */	fsubs f0, f3, f0
/* 801598D8 00156838  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 801598DC 0015683C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801598E0 00156840  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 801598E4 00156844  48 1B AF D5 */	bl Magnitude__9CVector3fCFv
/* 801598E8 00156848  FF C0 08 90 */	fmr f30, f1
/* 801598EC 0015684C  C0 1D 05 C4 */	lfs f0, 0x5c4(r29)
/* 801598F0 00156850  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801598F4 00156854  40 81 00 7C */	ble lbl_80159970
/* 801598F8 00156858  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801598FC 0015685C  38 61 00 7C */	addi r3, r1, 0x7c
/* 80159900 00156860  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80159904 00156864  38 81 00 70 */	addi r4, r1, 0x70
/* 80159908 00156868  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 8015990C 0015686C  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80159910 00156870  EC 81 00 28 */	fsubs f4, f1, f0
/* 80159914 00156874  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80159918 00156878  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8015991C 0015687C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80159920 00156880  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 80159924 00156884  EC 01 00 28 */	fsubs f0, f1, f0
/* 80159928 00156888  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8015992C 0015688C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80159930 00156890  48 1B AF 21 */	bl AsNormalized__9CVector3fCFv
/* 80159934 00156894  FC 20 F0 90 */	fmr f1, f30
/* 80159938 00156898  3C 60 80 5A */	lis r3, skPassEverything__15CMaterialFilter@ha
/* 8015993C 0015689C  38 E3 FD 18 */	addi r7, r3, skPassEverything__15CMaterialFilter@l
/* 80159940 001568A0  7F C4 F3 78 */	mr r4, r30
/* 80159944 001568A4  38 61 01 28 */	addi r3, r1, 0x128
/* 80159948 001568A8  38 A1 00 94 */	addi r5, r1, 0x94
/* 8015994C 001568AC  38 C1 00 7C */	addi r6, r1, 0x7c
/* 80159950 001568B0  4B EF 36 49 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80159954 001568B4  88 01 01 48 */	lbz r0, 0x148(r1)
/* 80159958 001568B8  28 00 00 00 */	cmplwi r0, 0
/* 8015995C 001568BC  41 82 00 14 */	beq lbl_80159970
/* 80159960 001568C0  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 80159964 001568C4  38 60 00 01 */	li r3, 1
/* 80159968 001568C8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8015996C 001568CC  98 1D 05 D6 */	stb r0, 0x5d6(r29)
lbl_80159970:
/* 80159970 001568D0  88 7D 05 D6 */	lbz r3, 0x5d6(r29)
/* 80159974 001568D4  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80159978 001568D8  41 82 00 18 */	beq lbl_80159990
/* 8015997C 001568DC  88 1D 00 F8 */	lbz r0, 0xf8(r29)
/* 80159980 001568E0  38 60 00 00 */	li r3, 0
/* 80159984 001568E4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80159988 001568E8  98 1D 00 F8 */	stb r0, 0xf8(r29)
/* 8015998C 001568EC  48 00 03 D4 */	b lbl_80159D60
lbl_80159990:
/* 80159990 001568F0  54 63 CF FE */	rlwinm r3, r3, 0x19, 0x1f, 0x1f
/* 80159994 001568F4  88 1D 00 F8 */	lbz r0, 0xf8(r29)
/* 80159998 001568F8  7C 63 00 34 */	cntlzw r3, r3
/* 8015999C 001568FC  50 60 16 30 */	rlwimi r0, r3, 2, 0x18, 0x18
/* 801599A0 00156900  98 1D 00 F8 */	stb r0, 0xf8(r29)
/* 801599A4 00156904  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 801599A8 00156908  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801599AC 0015690C  40 82 00 DC */	bne lbl_80159A88
/* 801599B0 00156910  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801599B4 00156914  4B FE 07 19 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 801599B8 00156918  C0 42 9E 50 */	lfs f2, lbl_805ABB70@sda21(r2)
/* 801599BC 0015691C  C0 02 9E 90 */	lfs f0, lbl_805ABBB0@sda21(r2)
/* 801599C0 00156920  EC 21 10 28 */	fsubs f1, f1, f2
/* 801599C4 00156924  FC 20 0A 10 */	fabs f1, f1
/* 801599C8 00156928  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801599CC 0015692C  40 80 00 BC */	bge lbl_80159A88
/* 801599D0 00156930  88 0D A4 08 */	lbz r0, lbl_805A8FC8@sda21(r13)
/* 801599D4 00156934  7C 00 07 75 */	extsb. r0, r0
/* 801599D8 00156938  40 82 00 20 */	bne lbl_801599F8
/* 801599DC 0015693C  C0 22 9E 94 */	lfs f1, lbl_805ABBB4@sda21(r2)
/* 801599E0 00156940  38 00 00 01 */	li r0, 1
/* 801599E4 00156944  C0 1D 03 B4 */	lfs f0, 0x3b4(r29)
/* 801599E8 00156948  EC 21 07 F2 */	fmuls f1, f1, f31
/* 801599EC 0015694C  98 0D A4 08 */	stb r0, lbl_805A8FC8@sda21(r13)
/* 801599F0 00156950  EC 01 00 32 */	fmuls f0, f1, f0
/* 801599F4 00156954  D0 0D A4 04 */	stfs f0, lbl_805A8FC4@sda21(r13)
lbl_801599F8:
/* 801599F8 00156958  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 801599FC 0015695C  C0 3D 06 18 */	lfs f1, 0x618(r29)
/* 80159A00 00156960  C0 0D A4 04 */	lfs f0, lbl_805A8FC4@sda21(r13)
/* 80159A04 00156964  EC A2 08 28 */	fsubs f5, f2, f1
/* 80159A08 00156968  C0 9D 00 40 */	lfs f4, 0x40(r29)
/* 80159A0C 0015696C  C0 3D 06 14 */	lfs f1, 0x614(r29)
/* 80159A10 00156970  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80159A14 00156974  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 80159A18 00156978  C0 5D 06 1C */	lfs f2, 0x61c(r29)
/* 80159A1C 0015697C  EC 84 08 28 */	fsubs f4, f4, f1
/* 80159A20 00156980  EC 25 01 72 */	fmuls f1, f5, f5
/* 80159A24 00156984  EC 43 10 28 */	fsubs f2, f3, f2
/* 80159A28 00156988  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80159A2C 0015698C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80159A30 00156990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159A34 00156994  40 80 00 14 */	bge lbl_80159A48
/* 80159A38 00156998  C0 1D 06 0C */	lfs f0, 0x60c(r29)
/* 80159A3C 0015699C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80159A40 001569A0  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 80159A44 001569A4  48 00 00 0C */	b lbl_80159A50
lbl_80159A48:
/* 80159A48 001569A8  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80159A4C 001569AC  D0 1D 06 0C */	stfs f0, 0x60c(r29)
lbl_80159A50:
/* 80159A50 001569B0  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 80159A54 001569B4  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 80159A58 001569B8  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80159A5C 001569BC  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80159A60 001569C0  D0 3D 06 14 */	stfs f1, 0x614(r29)
/* 80159A64 001569C4  D0 5D 06 18 */	stfs f2, 0x618(r29)
/* 80159A68 001569C8  D0 7D 06 1C */	stfs f3, 0x61c(r29)
/* 80159A6C 001569CC  C0 3D 06 08 */	lfs f1, 0x608(r29)
/* 80159A70 001569D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159A74 001569D4  40 81 00 10 */	ble lbl_80159A84
/* 80159A78 001569D8  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80159A7C 001569DC  D0 1D 06 08 */	stfs f0, 0x608(r29)
/* 80159A80 001569E0  48 00 00 08 */	b lbl_80159A88
lbl_80159A84:
/* 80159A84 001569E4  D0 1D 06 08 */	stfs f0, 0x608(r29)
lbl_80159A88:
/* 80159A88 001569E8  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 80159A8C 001569EC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80159A90 001569F0  41 82 01 E8 */	beq lbl_80159C78
/* 80159A94 001569F4  83 FE 08 4C */	lwz r31, 0x84c(r30)
/* 80159A98 001569F8  38 60 00 00 */	li r3, 0
/* 80159A9C 001569FC  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 80159AA0 00156A00  2C 00 00 01 */	cmpwi r0, 1
/* 80159AA4 00156A04  41 82 00 10 */	beq lbl_80159AB4
/* 80159AA8 00156A08  88 1D 07 42 */	lbz r0, 0x742(r29)
/* 80159AAC 00156A0C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80159AB0 00156A10  40 82 00 08 */	bne lbl_80159AB8
lbl_80159AB4:
/* 80159AB4 00156A14  38 60 00 01 */	li r3, 1
lbl_80159AB8:
/* 80159AB8 00156A18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80159ABC 00156A1C  41 82 00 0C */	beq lbl_80159AC8
/* 80159AC0 00156A20  C0 DD 05 AC */	lfs f6, 0x5ac(r29)
/* 80159AC4 00156A24  48 00 00 08 */	b lbl_80159ACC
lbl_80159AC8:
/* 80159AC8 00156A28  C0 DD 07 08 */	lfs f6, 0x708(r29)
lbl_80159ACC:
/* 80159ACC 00156A2C  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 80159AD0 00156A30  38 61 01 0C */	addi r3, r1, 0x10c
/* 80159AD4 00156A34  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80159AD8 00156A38  38 81 00 64 */	addi r4, r1, 0x64
/* 80159ADC 00156A3C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80159AE0 00156A40  EC A3 30 2A */	fadds f5, f3, f6
/* 80159AE4 00156A44  EC 82 30 2A */	fadds f4, f2, f6
/* 80159AE8 00156A48  38 A1 00 58 */	addi r5, r1, 0x58
/* 80159AEC 00156A4C  EC 20 30 2A */	fadds f1, f0, f6
/* 80159AF0 00156A50  EC 63 30 28 */	fsubs f3, f3, f6
/* 80159AF4 00156A54  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 80159AF8 00156A58  EC 42 30 28 */	fsubs f2, f2, f6
/* 80159AFC 00156A5C  EC 00 30 28 */	fsubs f0, f0, f6
/* 80159B00 00156A60  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80159B04 00156A64  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 80159B08 00156A68  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80159B0C 00156A6C  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 80159B10 00156A70  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80159B14 00156A74  48 1D E9 F5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80159B18 00156A78  7F E4 FB 78 */	mr r4, r31
/* 80159B1C 00156A7C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80159B20 00156A80  81 9F 00 00 */	lwz r12, 0(r31)
/* 80159B24 00156A84  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80159B28 00156A88  7D 89 03 A6 */	mtctr r12
/* 80159B2C 00156A8C  4E 80 04 21 */	bctrl
/* 80159B30 00156A90  88 01 00 EC */	lbz r0, 0xec(r1)
/* 80159B34 00156A94  28 00 00 00 */	cmplwi r0, 0
/* 80159B38 00156A98  98 01 01 08 */	stb r0, 0x108(r1)
/* 80159B3C 00156A9C  41 82 00 3C */	beq lbl_80159B78
/* 80159B40 00156AA0  34 61 00 F0 */	addic. r3, r1, 0xf0
/* 80159B44 00156AA4  41 82 00 34 */	beq lbl_80159B78
/* 80159B48 00156AA8  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80159B4C 00156AAC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80159B50 00156AB0  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80159B54 00156AB4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80159B58 00156AB8  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80159B5C 00156ABC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80159B60 00156AC0  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80159B64 00156AC4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80159B68 00156AC8  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80159B6C 00156ACC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80159B70 00156AD0  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80159B74 00156AD4  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_80159B78:
/* 80159B78 00156AD8  88 01 01 08 */	lbz r0, 0x108(r1)
/* 80159B7C 00156ADC  38 60 00 00 */	li r3, 0
/* 80159B80 00156AE0  98 61 00 EC */	stb r3, 0xec(r1)
/* 80159B84 00156AE4  28 00 00 00 */	cmplwi r0, 0
/* 80159B88 00156AE8  41 82 00 E8 */	beq lbl_80159C70
/* 80159B8C 00156AEC  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80159B90 00156AF0  38 81 01 0C */	addi r4, r1, 0x10c
/* 80159B94 00156AF4  48 1D DF F1 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 80159B98 00156AF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80159B9C 00156AFC  41 82 00 D4 */	beq lbl_80159C70
/* 80159BA0 00156B00  88 9D 07 42 */	lbz r4, 0x742(r29)
/* 80159BA4 00156B04  54 80 FF FF */	rlwinm. r0, r4, 0x1f, 0x1f, 0x1f
/* 80159BA8 00156B08  40 82 00 20 */	bne lbl_80159BC8
/* 80159BAC 00156B0C  38 00 00 01 */	li r0, 1
/* 80159BB0 00156B10  38 60 00 00 */	li r3, 0
/* 80159BB4 00156B14  50 04 0F BC */	rlwimi r4, r0, 1, 0x1e, 0x1e
/* 80159BB8 00156B18  98 9D 07 42 */	stb r4, 0x742(r29)
/* 80159BBC 00156B1C  88 1D 07 42 */	lbz r0, 0x742(r29)
/* 80159BC0 00156B20  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80159BC4 00156B24  98 1D 07 42 */	stb r0, 0x742(r29)
lbl_80159BC8:
/* 80159BC8 00156B28  C0 3D 04 20 */	lfs f1, 0x420(r29)
/* 80159BCC 00156B2C  C0 02 9E 50 */	lfs f0, lbl_805ABB70@sda21(r2)
/* 80159BD0 00156B30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159BD4 00156B34  4C 40 13 82 */	cror 2, 0, 2
/* 80159BD8 00156B38  40 82 00 98 */	bne lbl_80159C70
/* 80159BDC 00156B3C  80 AD 8C 90 */	lwz r5, lbl_805A7850@sda21(r13)
/* 80159BE0 00156B40  38 60 00 00 */	li r3, 0
/* 80159BE4 00156B44  38 80 00 01 */	li r4, 1
/* 80159BE8 00156B48  48 23 03 0D */	bl __shl2i
/* 80159BEC 00156B4C  38 A0 00 00 */	li r5, 0
/* 80159BF0 00156B50  38 00 00 03 */	li r0, 3
/* 80159BF4 00156B54  90 81 00 A4 */	stw r4, 0xa4(r1)
/* 80159BF8 00156B58  7F A4 EB 78 */	mr r4, r29
/* 80159BFC 00156B5C  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 80159C00 00156B60  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80159C04 00156B64  90 A1 00 AC */	stw r5, 0xac(r1)
/* 80159C08 00156B68  90 A1 00 A8 */	stw r5, 0xa8(r1)
/* 80159C0C 00156B6C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80159C10 00156B70  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80159C14 00156B74  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80159C18 00156B78  A0 BF 00 08 */	lhz r5, 8(r31)
/* 80159C1C 00156B7C  B0 01 00 08 */	sth r0, 8(r1)
/* 80159C20 00156B80  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 80159C24 00156B84  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80159C28 00156B88  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80159C2C 00156B8C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80159C30 00156B90  81 9D 00 00 */	lwz r12, 0(r29)
/* 80159C34 00156B94  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80159C38 00156B98  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 80159C3C 00156B9C  7D 89 03 A6 */	mtctr r12
/* 80159C40 00156BA0  4E 80 04 21 */	bctrl
/* 80159C44 00156BA4  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80159C48 00156BA8  7F C3 F3 78 */	mr r3, r30
/* 80159C4C 00156BAC  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 80159C50 00156BB0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80159C54 00156BB4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80159C58 00156BB8  38 C1 00 0C */	addi r6, r1, 0xc
/* 80159C5C 00156BBC  38 E1 00 B8 */	addi r7, r1, 0xb8
/* 80159C60 00156BC0  39 01 00 A0 */	addi r8, r1, 0xa0
/* 80159C64 00156BC4  4B EF 04 3D */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80159C68 00156BC8  C0 1D 04 24 */	lfs f0, 0x424(r29)
/* 80159C6C 00156BCC  D0 1D 04 20 */	stfs f0, 0x420(r29)
lbl_80159C70:
/* 80159C70 00156BD0  38 00 00 00 */	li r0, 0
/* 80159C74 00156BD4  98 01 01 08 */	stb r0, 0x108(r1)
lbl_80159C78:
/* 80159C78 00156BD8  FC 20 F8 90 */	fmr f1, f31
/* 80159C7C 00156BDC  7F A3 EB 78 */	mr r3, r29
/* 80159C80 00156BE0  7F C4 F3 78 */	mr r4, r30
/* 80159C84 00156BE4  48 10 E8 E9 */	bl Think__11CWallWalkerFfR13CStateManager
/* 80159C88 00156BE8  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 80159C8C 00156BEC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80159C90 00156BF0  40 82 00 D0 */	bne lbl_80159D60
/* 80159C94 00156BF4  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80159C98 00156BF8  4B FE 04 35 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 80159C9C 00156BFC  C0 42 9E 50 */	lfs f2, lbl_805ABB70@sda21(r2)
/* 80159CA0 00156C00  C0 02 9E 90 */	lfs f0, lbl_805ABBB0@sda21(r2)
/* 80159CA4 00156C04  EC 21 10 28 */	fsubs f1, f1, f2
/* 80159CA8 00156C08  FC 20 0A 10 */	fabs f1, f1
/* 80159CAC 00156C0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159CB0 00156C10  40 80 00 B0 */	bge lbl_80159D60
/* 80159CB4 00156C14  C0 1D 06 04 */	lfs f0, 0x604(r29)
/* 80159CB8 00156C18  D0 1D 03 B4 */	stfs f0, 0x3b4(r29)
/* 80159CBC 00156C1C  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 80159CC0 00156C20  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80159CC4 00156C24  41 82 00 8C */	beq lbl_80159D50
/* 80159CC8 00156C28  C0 7D 01 3C */	lfs f3, 0x13c(r29)
/* 80159CCC 00156C2C  FC 40 F8 90 */	fmr f2, f31
/* 80159CD0 00156C30  C0 1D 01 40 */	lfs f0, 0x140(r29)
/* 80159CD4 00156C34  7F A3 EB 78 */	mr r3, r29
/* 80159CD8 00156C38  C0 3D 01 38 */	lfs f1, 0x138(r29)
/* 80159CDC 00156C3C  EC DF 00 F2 */	fmuls f6, f31, f3
/* 80159CE0 00156C40  EC BF 00 32 */	fmuls f5, f31, f0
/* 80159CE4 00156C44  C0 02 9E 58 */	lfs f0, lbl_805ABB78@sda21(r2)
/* 80159CE8 00156C48  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80159CEC 00156C4C  C1 9D 00 60 */	lfs f12, 0x60(r29)
/* 80159CF0 00156C50  7F C4 F3 78 */	mr r4, r30
/* 80159CF4 00156C54  EC E0 01 72 */	fmuls f7, f0, f5
/* 80159CF8 00156C58  ED 00 01 B2 */	fmuls f8, f0, f6
/* 80159CFC 00156C5C  C1 7D 00 50 */	lfs f11, 0x50(r29)
/* 80159D00 00156C60  EC 80 00 72 */	fmuls f4, f0, f1
/* 80159D04 00156C64  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 80159D08 00156C68  ED 2C 38 2A */	fadds f9, f12, f7
/* 80159D0C 00156C6C  ED 4B 40 2A */	fadds f10, f11, f8
/* 80159D10 00156C70  EC 03 20 2A */	fadds f0, f3, f4
/* 80159D14 00156C74  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80159D18 00156C78  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80159D1C 00156C7C  D1 41 00 50 */	stfs f10, 0x50(r1)
/* 80159D20 00156C80  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80159D24 00156C84  D1 21 00 54 */	stfs f9, 0x54(r1)
/* 80159D28 00156C88  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 80159D2C 00156C8C  C0 3D 05 AC */	lfs f1, 0x5ac(r29)
/* 80159D30 00156C90  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 80159D34 00156C94  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80159D38 00156C98  D1 01 00 38 */	stfs f8, 0x38(r1)
/* 80159D3C 00156C9C  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 80159D40 00156CA0  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80159D44 00156CA4  D1 61 00 44 */	stfs f11, 0x44(r1)
/* 80159D48 00156CA8  D1 81 00 48 */	stfs f12, 0x48(r1)
/* 80159D4C 00156CAC  48 10 EC FD */	bl AlignToFloor__11CWallWalkerFR13CStateManagerfRC9CVector3ff
lbl_80159D50:
/* 80159D50 00156CB0  88 1D 07 42 */	lbz r0, 0x742(r29)
/* 80159D54 00156CB4  38 60 00 00 */	li r3, 0
/* 80159D58 00156CB8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80159D5C 00156CBC  98 1D 07 42 */	stb r0, 0x742(r29)
lbl_80159D60:
/* 80159D60 00156CC0  E3 E1 01 88 */	psq_l f31, 392(r1), 0, qr0
/* 80159D64 00156CC4  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 80159D68 00156CC8  E3 C1 01 78 */	psq_l f30, 376(r1), 0, qr0
/* 80159D6C 00156CCC  CB C1 01 70 */	lfd f30, 0x170(r1)
/* 80159D70 00156CD0  83 E1 01 6C */	lwz r31, 0x16c(r1)
/* 80159D74 00156CD4  83 C1 01 68 */	lwz r30, 0x168(r1)
/* 80159D78 00156CD8  80 01 01 94 */	lwz r0, 0x194(r1)
/* 80159D7C 00156CDC  83 A1 01 64 */	lwz r29, 0x164(r1)
/* 80159D80 00156CE0  7C 08 03 A6 */	mtlr r0
/* 80159D84 00156CE4  38 21 01 90 */	addi r1, r1, 0x190
/* 80159D88 00156CE8  4E 80 00 20 */	blr

.global PreThink__9CParasiteFfR13CStateManager
PreThink__9CParasiteFfR13CStateManager:
/* 80159D8C 00156CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80159D90 00156CF0  7C 08 02 A6 */	mflr r0
/* 80159D94 00156CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80159D98 00156CF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80159D9C 00156CFC  7C 7F 1B 78 */	mr r31, r3
/* 80159DA0 00156D00  48 10 EA 91 */	bl PreThink__11CWallWalkerFfR13CStateManager
/* 80159DA4 00156D04  88 1F 07 43 */	lbz r0, 0x743(r31)
/* 80159DA8 00156D08  38 60 00 00 */	li r3, 0
/* 80159DAC 00156D0C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80159DB0 00156D10  98 1F 07 43 */	stb r0, 0x743(r31)
/* 80159DB4 00156D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80159DB8 00156D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80159DBC 00156D1C  7C 08 03 A6 */	mtlr r0
/* 80159DC0 00156D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80159DC4 00156D24  4E 80 00 20 */	blr

.global AddDoorRepulsors__9CParasiteFR13CStateManager
AddDoorRepulsors__9CParasiteFR13CStateManager:
/* 80159DC8 00156D28  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80159DCC 00156D2C  7C 08 02 A6 */	mflr r0
/* 80159DD0 00156D30  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80159DD4 00156D34  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80159DD8 00156D38  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 80159DDC 00156D3C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80159DE0 00156D40  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 80159DE4 00156D44  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80159DE8 00156D48  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 80159DEC 00156D4C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80159DF0 00156D50  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80159DF4 00156D54  93 A1 00 84 */	stw r29, 0x84(r1)
/* 80159DF8 00156D58  93 81 00 80 */	stw r28, 0x80(r1)
/* 80159DFC 00156D5C  83 E4 08 20 */	lwz r31, 0x820(r4)
/* 80159E00 00156D60  7C 7D 1B 78 */	mr r29, r3
/* 80159E04 00156D64  3B C0 00 00 */	li r30, 0
/* 80159E08 00156D68  AB 9F 20 08 */	lha r28, 0x2008(r31)
/* 80159E0C 00156D6C  48 00 00 5C */	b lbl_80159E68
lbl_80159E10:
/* 80159E10 00156D70  7F E3 FB 78 */	mr r3, r31
/* 80159E14 00156D74  7F 84 E3 78 */	mr r4, r28
/* 80159E18 00156D78  4B EB 5E FD */	bl __vc__11CObjectListFi
/* 80159E1C 00156D7C  7C 60 1B 78 */	mr r0, r3
/* 80159E20 00156D80  38 61 00 10 */	addi r3, r1, 0x10
/* 80159E24 00156D84  7C 04 03 78 */	mr r4, r0
/* 80159E28 00156D88  4B F5 02 C9 */	bl "__ct__25TCastToPtr<11CScriptDoor>FP7CEntity"
/* 80159E2C 00156D8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80159E30 00156D90  28 03 00 00 */	cmplwi r3, 0
/* 80159E34 00156D94  41 82 00 18 */	beq lbl_80159E4C
/* 80159E38 00156D98  80 63 00 04 */	lwz r3, 4(r3)
/* 80159E3C 00156D9C  80 1D 00 04 */	lwz r0, 4(r29)
/* 80159E40 00156DA0  7C 03 00 00 */	cmpw r3, r0
/* 80159E44 00156DA4  40 82 00 08 */	bne lbl_80159E4C
/* 80159E48 00156DA8  3B DE 00 01 */	addi r30, r30, 1
lbl_80159E4C:
/* 80159E4C 00156DAC  2C 1C FF FF */	cmpwi r28, -1
/* 80159E50 00156DB0  41 82 00 14 */	beq lbl_80159E64
/* 80159E54 00156DB4  57 83 18 38 */	slwi r3, r28, 3
/* 80159E58 00156DB8  38 03 00 08 */	addi r0, r3, 8
/* 80159E5C 00156DBC  7F 9F 02 AE */	lhax r28, r31, r0
/* 80159E60 00156DC0  48 00 00 08 */	b lbl_80159E68
lbl_80159E64:
/* 80159E64 00156DC4  3B 80 FF FF */	li r28, -1
lbl_80159E68:
/* 80159E68 00156DC8  2C 1C FF FF */	cmpwi r28, -1
/* 80159E6C 00156DCC  40 82 FF A4 */	bne lbl_80159E10
/* 80159E70 00156DD0  7F C4 F3 78 */	mr r4, r30
/* 80159E74 00156DD4  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 80159E78 00156DD8  48 00 0D D1 */	bl "reserve__Q24rstl57vector<Q29CParasite9CRepulsor,Q24rstl17rmemory_allocator>Fi"
/* 80159E7C 00156DDC  AB DF 20 08 */	lha r30, 0x2008(r31)
/* 80159E80 00156DE0  48 00 01 9C */	b lbl_8015A01C
lbl_80159E84:
/* 80159E84 00156DE4  7F E3 FB 78 */	mr r3, r31
/* 80159E88 00156DE8  7F C4 F3 78 */	mr r4, r30
/* 80159E8C 00156DEC  4B EB 5E 89 */	bl __vc__11CObjectListFi
/* 80159E90 00156DF0  7C 60 1B 78 */	mr r0, r3
/* 80159E94 00156DF4  38 61 00 08 */	addi r3, r1, 8
/* 80159E98 00156DF8  7C 04 03 78 */	mr r4, r0
/* 80159E9C 00156DFC  4B F5 02 55 */	bl "__ct__25TCastToPtr<11CScriptDoor>FP7CEntity"
/* 80159EA0 00156E00  80 83 00 04 */	lwz r4, 4(r3)
/* 80159EA4 00156E04  28 04 00 00 */	cmplwi r4, 0
/* 80159EA8 00156E08  41 82 01 58 */	beq lbl_8015A000
/* 80159EAC 00156E0C  80 64 00 04 */	lwz r3, 4(r4)
/* 80159EB0 00156E10  80 1D 00 04 */	lwz r0, 4(r29)
/* 80159EB4 00156E14  7C 03 00 00 */	cmpw r3, r0
/* 80159EB8 00156E18  40 82 01 48 */	bne lbl_8015A000
/* 80159EBC 00156E1C  81 84 00 00 */	lwz r12, 0(r4)
/* 80159EC0 00156E20  38 61 00 3C */	addi r3, r1, 0x3c
/* 80159EC4 00156E24  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80159EC8 00156E28  7D 89 03 A6 */	mtctr r12
/* 80159ECC 00156E2C  4E 80 04 21 */	bctrl
/* 80159ED0 00156E30  88 01 00 54 */	lbz r0, 0x54(r1)
/* 80159ED4 00156E34  28 00 00 00 */	cmplwi r0, 0
/* 80159ED8 00156E38  98 01 00 70 */	stb r0, 0x70(r1)
/* 80159EDC 00156E3C  41 82 00 3C */	beq lbl_80159F18
/* 80159EE0 00156E40  34 61 00 58 */	addic. r3, r1, 0x58
/* 80159EE4 00156E44  41 82 00 34 */	beq lbl_80159F18
/* 80159EE8 00156E48  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80159EEC 00156E4C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80159EF0 00156E50  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80159EF4 00156E54  D0 03 00 04 */	stfs f0, 4(r3)
/* 80159EF8 00156E58  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80159EFC 00156E5C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80159F00 00156E60  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80159F04 00156E64  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80159F08 00156E68  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80159F0C 00156E6C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80159F10 00156E70  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80159F14 00156E74  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_80159F18:
/* 80159F18 00156E78  88 01 00 70 */	lbz r0, 0x70(r1)
/* 80159F1C 00156E7C  38 60 00 00 */	li r3, 0
/* 80159F20 00156E80  98 61 00 54 */	stb r3, 0x54(r1)
/* 80159F24 00156E84  28 00 00 00 */	cmplwi r0, 0
/* 80159F28 00156E88  41 82 00 D0 */	beq lbl_80159FF8
/* 80159F2C 00156E8C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80159F30 00156E90  38 61 00 30 */	addi r3, r1, 0x30
/* 80159F34 00156E94  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80159F38 00156E98  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 80159F3C 00156E9C  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 80159F40 00156EA0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80159F44 00156EA4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80159F48 00156EA8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80159F4C 00156EAC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80159F50 00156EB0  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80159F54 00156EB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80159F58 00156EB8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80159F5C 00156EBC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80159F60 00156EC0  48 1B A9 59 */	bl Magnitude__9CVector3fCFv
/* 80159F64 00156EC4  FF E0 08 90 */	fmr f31, f1
/* 80159F68 00156EC8  38 61 00 18 */	addi r3, r1, 0x18
/* 80159F6C 00156ECC  38 81 00 58 */	addi r4, r1, 0x58
/* 80159F70 00156ED0  48 1D D6 9D */	bl GetCenterPoint__6CAABoxCFv
/* 80159F74 00156ED4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80159F78 00156ED8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80159F7C 00156EDC  C0 02 9E 98 */	lfs f0, lbl_805ABBB8@sda21(r2)
/* 80159F80 00156EE0  90 61 00 28 */	stw r3, 0x28(r1)
/* 80159F84 00156EE4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80159F88 00156EE8  EF A0 07 F2 */	fmuls f29, f0, f31
/* 80159F8C 00156EEC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80159F90 00156EF0  80 1D 05 DC */	lwz r0, 0x5dc(r29)
/* 80159F94 00156EF4  80 BD 05 E0 */	lwz r5, 0x5e0(r29)
/* 80159F98 00156EF8  90 61 00 24 */	stw r3, 0x24(r1)
/* 80159F9C 00156EFC  7C 00 28 00 */	cmpw r0, r5
/* 80159FA0 00156F00  C3 E1 00 28 */	lfs f31, 0x28(r1)
/* 80159FA4 00156F04  C3 C1 00 2C */	lfs f30, 0x2c(r1)
/* 80159FA8 00156F08  41 80 00 1C */	blt lbl_80159FC4
/* 80159FAC 00156F0C  2C 05 00 00 */	cmpwi r5, 0
/* 80159FB0 00156F10  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 80159FB4 00156F14  38 80 00 04 */	li r4, 4
/* 80159FB8 00156F18  41 82 00 08 */	beq lbl_80159FC0
/* 80159FBC 00156F1C  54 A4 08 3C */	slwi r4, r5, 1
lbl_80159FC0:
/* 80159FC0 00156F20  48 00 0C 89 */	bl "reserve__Q24rstl57vector<Q29CParasite9CRepulsor,Q24rstl17rmemory_allocator>Fi"
lbl_80159FC4:
/* 80159FC4 00156F24  80 1D 05 DC */	lwz r0, 0x5dc(r29)
/* 80159FC8 00156F28  80 7D 05 E4 */	lwz r3, 0x5e4(r29)
/* 80159FCC 00156F2C  54 00 20 36 */	slwi r0, r0, 4
/* 80159FD0 00156F30  7C 63 02 15 */	add. r3, r3, r0
/* 80159FD4 00156F34  41 82 00 18 */	beq lbl_80159FEC
/* 80159FD8 00156F38  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80159FDC 00156F3C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80159FE0 00156F40  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80159FE4 00156F44  D3 C3 00 08 */	stfs f30, 8(r3)
/* 80159FE8 00156F48  D3 A3 00 0C */	stfs f29, 0xc(r3)
lbl_80159FEC:
/* 80159FEC 00156F4C  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 80159FF0 00156F50  38 03 00 01 */	addi r0, r3, 1
/* 80159FF4 00156F54  90 1D 05 DC */	stw r0, 0x5dc(r29)
lbl_80159FF8:
/* 80159FF8 00156F58  38 00 00 00 */	li r0, 0
/* 80159FFC 00156F5C  98 01 00 70 */	stb r0, 0x70(r1)
lbl_8015A000:
/* 8015A000 00156F60  2C 1E FF FF */	cmpwi r30, -1
/* 8015A004 00156F64  41 82 00 14 */	beq lbl_8015A018
/* 8015A008 00156F68  57 C3 18 38 */	slwi r3, r30, 3
/* 8015A00C 00156F6C  38 03 00 08 */	addi r0, r3, 8
/* 8015A010 00156F70  7F DF 02 AE */	lhax r30, r31, r0
/* 8015A014 00156F74  48 00 00 08 */	b lbl_8015A01C
lbl_8015A018:
/* 8015A018 00156F78  3B C0 FF FF */	li r30, -1
lbl_8015A01C:
/* 8015A01C 00156F7C  2C 1E FF FF */	cmpwi r30, -1
/* 8015A020 00156F80  40 82 FE 64 */	bne lbl_80159E84
/* 8015A024 00156F84  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8015A028 00156F88  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8015A02C 00156F8C  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 8015A030 00156F90  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8015A034 00156F94  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 8015A038 00156F98  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8015A03C 00156F9C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8015A040 00156FA0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8015A044 00156FA4  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8015A048 00156FA8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8015A04C 00156FAC  83 81 00 80 */	lwz r28, 0x80(r1)
/* 8015A050 00156FB0  7C 08 03 A6 */	mtlr r0
/* 8015A054 00156FB4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8015A058 00156FB8  4E 80 00 20 */	blr

.global AcceptScriptMsg__9CParasiteF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__9CParasiteF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8015A05C 00156FBC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8015A060 00156FC0  7C 08 02 A6 */	mflr r0
/* 8015A064 00156FC4  90 01 01 04 */	stw r0, 0x104(r1)
/* 8015A068 00156FC8  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8015A06C 00156FCC  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 8015A070 00156FD0  BF 61 00 DC */	stmw r27, 0xdc(r1)
/* 8015A074 00156FD4  7C BB 2B 78 */	mr r27, r5
/* 8015A078 00156FD8  7C 7E 1B 78 */	mr r30, r3
/* 8015A07C 00156FDC  A0 05 00 00 */	lhz r0, 0(r5)
/* 8015A080 00156FE0  7C 9C 23 78 */	mr r28, r4
/* 8015A084 00156FE4  7C DF 33 78 */	mr r31, r6
/* 8015A088 00156FE8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8015A08C 00156FEC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8015A090 00156FF0  4B F2 2A E9 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8015A094 00156FF4  2C 1C 00 28 */	cmpwi r28, 0x28
/* 8015A098 00156FF8  41 82 01 A8 */	beq lbl_8015A240
/* 8015A09C 00156FFC  40 80 00 28 */	bge lbl_8015A0C4
/* 8015A0A0 00157000  2C 1C 00 21 */	cmpwi r28, 0x21
/* 8015A0A4 00157004  41 82 00 38 */	beq lbl_8015A0DC
/* 8015A0A8 00157008  40 80 00 10 */	bge lbl_8015A0B8
/* 8015A0AC 0015700C  2C 1C 00 01 */	cmpwi r28, 1
/* 8015A0B0 00157010  41 82 01 B8 */	beq lbl_8015A268
/* 8015A0B4 00157014  48 00 03 5C */	b lbl_8015A410
lbl_8015A0B8:
/* 8015A0B8 00157018  2C 1C 00 23 */	cmpwi r28, 0x23
/* 8015A0BC 0015701C  40 80 03 54 */	bge lbl_8015A410
/* 8015A0C0 00157020  48 00 01 50 */	b lbl_8015A210
lbl_8015A0C4:
/* 8015A0C4 00157024  2C 1C 00 30 */	cmpwi r28, 0x30
/* 8015A0C8 00157028  41 82 03 30 */	beq lbl_8015A3F8
/* 8015A0CC 0015702C  40 80 03 44 */	bge lbl_8015A410
/* 8015A0D0 00157030  2C 1C 00 2A */	cmpwi r28, 0x2a
/* 8015A0D4 00157034  41 82 01 C0 */	beq lbl_8015A294
/* 8015A0D8 00157038  48 00 03 38 */	b lbl_8015A410
lbl_8015A0DC:
/* 8015A0DC 0015703C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8015A0E0 00157040  7F E4 FB 78 */	mr r4, r31
/* 8015A0E4 00157044  4B FE 0C 0D */	bl Activate__15CBodyControllerFR13CStateManager
/* 8015A0E8 00157048  83 BF 0F 5C */	lwz r29, 0xf5c(r31)
/* 8015A0EC 0015704C  3C 60 80 3D */	lis r3, lbl_803D0330@ha
/* 8015A0F0 00157050  38 63 03 30 */	addi r3, r3, lbl_803D0330@l
/* 8015A0F4 00157054  A3 7E 00 08 */	lhz r27, 8(r30)
/* 8015A0F8 00157058  83 9D 00 00 */	lwz r28, 0(r29)
/* 8015A0FC 0015705C  38 83 00 09 */	addi r4, r3, 9
/* 8015A100 00157060  38 60 00 0A */	li r3, 0xa
/* 8015A104 00157064  38 A0 00 00 */	li r5, 0
/* 8015A108 00157068  48 1B B7 11 */	bl __nwa__FUlPCcPCc
/* 8015A10C 0015706C  28 03 00 00 */	cmplwi r3, 0
/* 8015A110 00157070  41 82 00 0C */	beq lbl_8015A11C
/* 8015A114 00157074  93 83 00 00 */	stw r28, 0(r3)
/* 8015A118 00157078  93 A3 00 04 */	stw r29, 4(r3)
lbl_8015A11C:
/* 8015A11C 0015707C  34 83 00 08 */	addic. r4, r3, 8
/* 8015A120 00157080  41 82 00 08 */	beq lbl_8015A128
/* 8015A124 00157084  B3 64 00 00 */	sth r27, 0(r4)
lbl_8015A128:
/* 8015A128 00157088  80 1F 0F 58 */	lwz r0, 0xf58(r31)
/* 8015A12C 0015708C  7C 1D 00 40 */	cmplw r29, r0
/* 8015A130 00157090  40 82 00 08 */	bne lbl_8015A138
/* 8015A134 00157094  90 7F 0F 58 */	stw r3, 0xf58(r31)
lbl_8015A138:
/* 8015A138 00157098  80 A3 00 00 */	lwz r5, 0(r3)
/* 8015A13C 0015709C  38 80 00 00 */	li r4, 0
/* 8015A140 001570A0  90 65 00 04 */	stw r3, 4(r5)
/* 8015A144 001570A4  80 A3 00 04 */	lwz r5, 4(r3)
/* 8015A148 001570A8  90 65 00 00 */	stw r3, 0(r5)
/* 8015A14C 001570AC  7F C3 F3 78 */	mr r3, r30
/* 8015A150 001570B0  80 BF 0F 68 */	lwz r5, 0xf68(r31)
/* 8015A154 001570B4  38 05 00 01 */	addi r0, r5, 1
/* 8015A158 001570B8  90 1F 0F 68 */	stw r0, 0xf68(r31)
/* 8015A15C 001570BC  4B EF 8C 11 */	bl CreateShadow__6CActorFb
/* 8015A160 001570C0  C0 1E 03 B4 */	lfs f0, 0x3b4(r30)
/* 8015A164 001570C4  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8015A168 001570C8  38 81 00 48 */	addi r4, r1, 0x48
/* 8015A16C 001570CC  38 A1 00 54 */	addi r5, r1, 0x54
/* 8015A170 001570D0  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 8015A174 001570D4  C0 3E 05 AC */	lfs f1, 0x5ac(r30)
/* 8015A178 001570D8  FC 00 08 50 */	fneg f0, f1
/* 8015A17C 001570DC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8015A180 001570E0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8015A184 001570E4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8015A188 001570E8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8015A18C 001570EC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8015A190 001570F0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8015A194 001570F4  48 1D E3 75 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8015A198 001570F8  7C 64 1B 78 */	mr r4, r3
/* 8015A19C 001570FC  7F C3 F3 78 */	mr r3, r30
/* 8015A1A0 00157100  4B FC 04 B9 */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
/* 8015A1A4 00157104  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8015A1A8 00157108  7F C3 F3 78 */	mr r3, r30
/* 8015A1AC 0015710C  7F E4 FB 78 */	mr r4, r31
/* 8015A1B0 00157110  B0 0D A4 00 */	sth r0, lbl_805A8FC0@sda21(r13)
/* 8015A1B4 00157114  4B FF FC 15 */	bl AddDoorRepulsors__9CParasiteFR13CStateManager
/* 8015A1B8 00157118  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 8015A1BC 0015711C  2C 00 00 03 */	cmpwi r0, 3
/* 8015A1C0 00157120  40 82 02 50 */	bne lbl_8015A410
/* 8015A1C4 00157124  7F C3 F3 78 */	mr r3, r30
/* 8015A1C8 00157128  7F E4 FB 78 */	mr r4, r31
/* 8015A1CC 0015712C  4B FF CB 9D */	bl SetupIceZoomerCollision__9CParasiteFR13CStateManager
/* 8015A1D0 00157130  7F C3 F3 78 */	mr r3, r30
/* 8015A1D4 00157134  7F E4 FB 78 */	mr r4, r31
/* 8015A1D8 00157138  81 9E 00 00 */	lwz r12, 0(r30)
/* 8015A1DC 0015713C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8015A1E0 00157140  7D 89 03 A6 */	mtctr r12
/* 8015A1E4 00157144  4E 80 04 21 */	bctrl
/* 8015A1E8 00157148  C0 23 00 04 */	lfs f1, 4(r3)
/* 8015A1EC 0015714C  7F C3 F3 78 */	mr r3, r30
/* 8015A1F0 00157150  C0 1E 07 14 */	lfs f0, 0x714(r30)
/* 8015A1F4 00157154  7F E4 FB 78 */	mr r4, r31
/* 8015A1F8 00157158  38 BE 06 4C */	addi r5, r30, 0x64c
/* 8015A1FC 0015715C  38 C1 00 28 */	addi r6, r1, 0x28
/* 8015A200 00157160  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8015A204 00157164  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8015A208 00157168  4B FF CA 7D */	bl SetupIceZoomerVulnerability__9CParasiteFR13CStateManagerRC20CDamageVulnerabilityRC11CHealthInfo
/* 8015A20C 0015716C  48 00 02 04 */	b lbl_8015A410
lbl_8015A210:
/* 8015A210 00157170  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8015A214 00157174  38 7F 0F 54 */	addi r3, r31, 0xf54
/* 8015A218 00157178  38 81 00 0C */	addi r4, r1, 0xc
/* 8015A21C 0015717C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8015A220 00157180  4B FC BB 69 */	bl "remove__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRC9TUniqueId"
/* 8015A224 00157184  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 8015A228 00157188  2C 00 00 03 */	cmpwi r0, 3
/* 8015A22C 0015718C  40 82 01 E4 */	bne lbl_8015A410
/* 8015A230 00157190  7F C3 F3 78 */	mr r3, r30
/* 8015A234 00157194  7F E4 FB 78 */	mr r4, r31
/* 8015A238 00157198  4B FF CB 0D */	bl DestroyActorManager__9CParasiteFR13CStateManager
/* 8015A23C 0015719C  48 00 01 D4 */	b lbl_8015A410
lbl_8015A240:
/* 8015A240 001571A0  88 1E 07 42 */	lbz r0, 0x742(r30)
/* 8015A244 001571A4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8015A248 001571A8  41 82 01 C8 */	beq lbl_8015A410
/* 8015A24C 001571AC  7F C3 F3 78 */	mr r3, r30
/* 8015A250 001571B0  4B FF F2 D1 */	bl UpdateJumpVelocity__9CParasiteFv
/* 8015A254 001571B4  88 1E 07 42 */	lbz r0, 0x742(r30)
/* 8015A258 001571B8  38 60 00 00 */	li r3, 0
/* 8015A25C 001571BC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8015A260 001571C0  98 1E 07 42 */	stb r0, 0x742(r30)
/* 8015A264 001571C4  48 00 01 AC */	b lbl_8015A410
lbl_8015A268:
/* 8015A268 001571C8  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 8015A26C 001571CC  38 60 00 00 */	li r3, 0
/* 8015A270 001571D0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8015A274 001571D4  98 1E 05 D6 */	stb r0, 0x5d6(r30)
/* 8015A278 001571D8  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 8015A27C 001571DC  2C 00 00 00 */	cmpwi r0, 0
/* 8015A280 001571E0  40 82 01 90 */	bne lbl_8015A410
/* 8015A284 001571E4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8015A288 001571E8  38 80 00 02 */	li r4, 2
/* 8015A28C 001571EC  4B FE 07 4D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8015A290 001571F0  48 00 01 80 */	b lbl_8015A410
lbl_8015A294:
/* 8015A294 001571F4  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 8015A298 001571F8  2C 00 00 01 */	cmpwi r0, 1
/* 8015A29C 001571FC  40 82 01 74 */	bne lbl_8015A410
/* 8015A2A0 00157200  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8015A2A4 00157204  7F E3 FB 78 */	mr r3, r31
/* 8015A2A8 00157208  38 81 00 08 */	addi r4, r1, 8
/* 8015A2AC 0015720C  B0 01 00 08 */	sth r0, 8(r1)
/* 8015A2B0 00157210  4B EF 22 F5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8015A2B4 00157214  7C 64 1B 78 */	mr r4, r3
/* 8015A2B8 00157218  38 61 00 20 */	addi r3, r1, 0x20
/* 8015A2BC 0015721C  4B F5 59 D5 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8015A2C0 00157220  80 A3 00 04 */	lwz r5, 4(r3)
/* 8015A2C4 00157224  28 05 00 00 */	cmplwi r5, 0
/* 8015A2C8 00157228  41 82 01 48 */	beq lbl_8015A410
/* 8015A2CC 0015722C  C0 E5 00 50 */	lfs f7, 0x50(r5)
/* 8015A2D0 00157230  7F C4 F3 78 */	mr r4, r30
/* 8015A2D4 00157234  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8015A2D8 00157238  38 61 00 98 */	addi r3, r1, 0x98
/* 8015A2DC 0015723C  C0 85 00 40 */	lfs f4, 0x40(r5)
/* 8015A2E0 00157240  EC C7 00 28 */	fsubs f6, f7, f0
/* 8015A2E4 00157244  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8015A2E8 00157248  C1 05 00 60 */	lfs f8, 0x60(r5)
/* 8015A2EC 0015724C  EC 64 00 28 */	fsubs f3, f4, f0
/* 8015A2F0 00157250  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8015A2F4 00157254  EC 06 01 B2 */	fmuls f0, f6, f6
/* 8015A2F8 00157258  EC A8 08 28 */	fsubs f5, f8, f1
/* 8015A2FC 0015725C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8015A300 00157260  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8015A304 00157264  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8015A308 00157268  EC 45 01 72 */	fmuls f2, f5, f5
/* 8015A30C 0015726C  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8015A310 00157270  EC 01 00 2A */	fadds f0, f1, f0
/* 8015A314 00157274  D0 E1 00 34 */	stfs f7, 0x34(r1)
/* 8015A318 00157278  EF E2 00 2A */	fadds f31, f2, f0
/* 8015A31C 0015727C  D1 01 00 38 */	stfs f8, 0x38(r1)
/* 8015A320 00157280  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8015A324 00157284  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 8015A328 00157288  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 8015A32C 0015728C  7D 89 03 A6 */	mtctr r12
/* 8015A330 00157290  4E 80 04 21 */	bctrl
/* 8015A334 00157294  7F C4 F3 78 */	mr r4, r30
/* 8015A338 00157298  38 61 00 7C */	addi r3, r1, 0x7c
/* 8015A33C 0015729C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8015A340 001572A0  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8015A344 001572A4  7D 89 03 A6 */	mtctr r12
/* 8015A348 001572A8  4E 80 04 21 */	bctrl
/* 8015A34C 001572AC  7F C4 F3 78 */	mr r4, r30
/* 8015A350 001572B0  38 61 00 60 */	addi r3, r1, 0x60
/* 8015A354 001572B4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8015A358 001572B8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8015A35C 001572BC  7D 89 03 A6 */	mtctr r12
/* 8015A360 001572C0  4E 80 04 21 */	bctrl
/* 8015A364 001572C4  C0 61 00 70 */	lfs f3, 0x70(r1)
/* 8015A368 001572C8  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 8015A36C 001572CC  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 8015A370 001572D0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8015A374 001572D4  EC 43 10 28 */	fsubs f2, f3, f2
/* 8015A378 001572D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8015A37C 001572DC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8015A380 001572E0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8015A384 001572E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8015A388 001572E8  40 80 00 0C */	bge lbl_8015A394
/* 8015A38C 001572EC  38 61 00 14 */	addi r3, r1, 0x14
/* 8015A390 001572F0  48 00 00 08 */	b lbl_8015A398
lbl_8015A394:
/* 8015A394 001572F4  38 61 00 18 */	addi r3, r1, 0x18
lbl_8015A398:
/* 8015A398 001572F8  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 8015A39C 001572FC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8015A3A0 00157300  EC 21 00 28 */	fsubs f1, f1, f0
/* 8015A3A4 00157304  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8015A3A8 00157308  C0 03 00 00 */	lfs f0, 0(r3)
/* 8015A3AC 0015730C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015A3B0 00157310  40 80 00 08 */	bge lbl_8015A3B8
/* 8015A3B4 00157314  48 00 00 08 */	b lbl_8015A3BC
lbl_8015A3B8:
/* 8015A3B8 00157318  38 61 00 1C */	addi r3, r1, 0x1c
lbl_8015A3BC:
/* 8015A3BC 0015731C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8015A3C0 00157320  38 00 00 00 */	li r0, 0
/* 8015A3C4 00157324  C0 02 9E 60 */	lfs f0, lbl_805ABB80@sda21(r2)
/* 8015A3C8 00157328  98 01 00 78 */	stb r0, 0x78(r1)
/* 8015A3CC 0015732C  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 8015A3D0 00157330  98 01 00 94 */	stb r0, 0x94(r1)
/* 8015A3D4 00157334  EC 00 00 32 */	fmuls f0, f0, f0
/* 8015A3D8 00157338  98 01 00 B0 */	stb r0, 0xb0(r1)
/* 8015A3DC 0015733C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8015A3E0 00157340  40 80 00 30 */	bge lbl_8015A410
/* 8015A3E4 00157344  88 1E 07 43 */	lbz r0, 0x743(r30)
/* 8015A3E8 00157348  38 60 00 01 */	li r3, 1
/* 8015A3EC 0015734C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8015A3F0 00157350  98 1E 07 43 */	stb r0, 0x743(r30)
/* 8015A3F4 00157354  48 00 00 1C */	b lbl_8015A410
lbl_8015A3F8:
/* 8015A3F8 00157358  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 8015A3FC 0015735C  28 03 00 00 */	cmplwi r3, 0
/* 8015A400 00157360  41 82 00 10 */	beq lbl_8015A410
/* 8015A404 00157364  7F E4 FB 78 */	mr r4, r31
/* 8015A408 00157368  38 A0 00 00 */	li r5, 0
/* 8015A40C 0015736C  48 04 CA B5 */	bl SetMovable__22CCollisionActorManagerFb
lbl_8015A410:
/* 8015A410 00157370  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 8015A414 00157374  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 8015A418 00157378  BB 61 00 DC */	lmw r27, 0xdc(r1)
/* 8015A41C 0015737C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8015A420 00157380  7C 08 03 A6 */	mtlr r0
/* 8015A424 00157384  38 21 01 00 */	addi r1, r1, 0x100
/* 8015A428 00157388  4E 80 00 20 */	blr

.global Accept__9CParasiteFR8IVisitor
Accept__9CParasiteFR8IVisitor:
/* 8015A42C 0015738C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015A430 00157390  7C 08 02 A6 */	mflr r0
/* 8015A434 00157394  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015A438 00157398  7C 60 1B 78 */	mr r0, r3
/* 8015A43C 0015739C  7C 83 23 78 */	mr r3, r4
/* 8015A440 001573A0  81 84 00 00 */	lwz r12, 0(r4)
/* 8015A444 001573A4  7C 04 03 78 */	mr r4, r0
/* 8015A448 001573A8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8015A44C 001573AC  7D 89 03 A6 */	mtctr r12
/* 8015A450 001573B0  4E 80 04 21 */	bctrl
/* 8015A454 001573B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015A458 001573B8  7C 08 03 A6 */	mtlr r0
/* 8015A45C 001573BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8015A460 001573C0  4E 80 00 20 */	blr

.global "__ct__9CParasiteF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfo9EBodyTypefffffffffffffffffbUiRC10Something1RC10Something2UsUsUsUiUifRC16CActorParameters"
"__ct__9CParasiteF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfo9EBodyTypefffffffffffffffffbUiRC10Something1RC10Something2UsUsUsUiUifRC16CActorParameters":
/* 8015A464 001573C4  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 8015A468 001573C8  7C 08 02 A6 */	mflr r0
/* 8015A46C 001573CC  90 01 01 94 */	stw r0, 0x194(r1)
/* 8015A470 001573D0  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 8015A474 001573D4  F3 E1 01 88 */	psq_st f31, 392(r1), 0, qr0
/* 8015A478 001573D8  DB C1 01 70 */	stfd f30, 0x170(r1)
/* 8015A47C 001573DC  F3 C1 01 78 */	psq_st f30, 376(r1), 0, qr0
/* 8015A480 001573E0  DB A1 01 60 */	stfd f29, 0x160(r1)
/* 8015A484 001573E4  F3 A1 01 68 */	psq_st f29, 360(r1), 0, qr0
/* 8015A488 001573E8  DB 81 01 50 */	stfd f28, 0x150(r1)
/* 8015A48C 001573EC  F3 81 01 58 */	psq_st f28, 344(r1), 0, qr0
/* 8015A490 001573F0  DB 61 01 40 */	stfd f27, 0x140(r1)
/* 8015A494 001573F4  F3 61 01 48 */	psq_st f27, 328(r1), 0, qr0
/* 8015A498 001573F8  DB 41 01 30 */	stfd f26, 0x130(r1)
/* 8015A49C 001573FC  F3 41 01 38 */	psq_st f26, 312(r1), 0, qr0
/* 8015A4A0 00157400  DB 21 01 20 */	stfd f25, 0x120(r1)
/* 8015A4A4 00157404  F3 21 01 28 */	psq_st f25, 296(r1), 0, qr0
/* 8015A4A8 00157408  DB 01 01 10 */	stfd f24, 0x110(r1)
/* 8015A4AC 0015740C  F3 01 01 18 */	psq_st f24, 280(r1), 0, qr0
/* 8015A4B0 00157410  DA E1 01 00 */	stfd f23, 0x100(r1)
/* 8015A4B4 00157414  F2 E1 01 08 */	psq_st f23, 264(r1), 0, qr0
/* 8015A4B8 00157418  DA C1 00 F0 */	stfd f22, 0xf0(r1)
/* 8015A4BC 0015741C  F2 C1 00 F8 */	psq_st f22, 248(r1), 0, qr0
/* 8015A4C0 00157420  DA A1 00 E0 */	stfd f21, 0xe0(r1)
/* 8015A4C4 00157424  F2 A1 00 E8 */	psq_st f21, 232(r1), 0, qr0
/* 8015A4C8 00157428  DA 81 00 D0 */	stfd f20, 0xd0(r1)
/* 8015A4CC 0015742C  F2 81 00 D8 */	psq_st f20, 216(r1), 0, qr0
/* 8015A4D0 00157430  DA 61 00 C0 */	stfd f19, 0xc0(r1)
/* 8015A4D4 00157434  F2 61 00 C8 */	psq_st f19, 200(r1), 0, qr0
/* 8015A4D8 00157438  DA 41 00 B0 */	stfd f18, 0xb0(r1)
/* 8015A4DC 0015743C  F2 41 00 B8 */	psq_st f18, 184(r1), 0, qr0
/* 8015A4E0 00157440  DA 21 00 A0 */	stfd f17, 0xa0(r1)
/* 8015A4E4 00157444  F2 21 00 A8 */	psq_st f17, 168(r1), 0, qr0
/* 8015A4E8 00157448  BE E1 00 7C */	stmw r23, 0x7c(r1)
/* 8015A4EC 0015744C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8015A4F0 00157450  7D 57 53 78 */	mr r23, r10
/* 8015A4F4 00157454  7C D8 33 78 */	mr r24, r6
/* 8015A4F8 00157458  FD 20 10 90 */	fmr f9, f2
/* 8015A4FC 0015745C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8015A500 00157460  FE 40 18 90 */	fmr f18, f3
/* 8015A504 00157464  FE 20 08 90 */	fmr f17, f1
/* 8015A508 00157468  7C EC 3B 78 */	mr r12, r7
/* 8015A50C 0015746C  92 E1 00 08 */	stw r23, 8(r1)
/* 8015A510 00157470  38 80 00 01 */	li r4, 1
/* 8015A514 00157474  7D 0B 43 78 */	mr r11, r8
/* 8015A518 00157478  90 81 00 0C */	stw r4, 0xc(r1)
/* 8015A51C 0015747C  38 00 00 00 */	li r0, 0
/* 8015A520 00157480  7F 07 C3 78 */	mr r7, r24
/* 8015A524 00157484  80 C1 01 98 */	lwz r6, 0x198(r1)
/* 8015A528 00157488  7D 2A 4B 78 */	mr r10, r9
/* 8015A52C 0015748C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8015A530 00157490  FE 60 28 90 */	fmr f19, f5
/* 8015A534 00157494  80 81 01 EC */	lwz r4, 0x1ec(r1)
/* 8015A538 00157498  FE 80 30 90 */	fmr f20, f6
/* 8015A53C 0015749C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8015A540 001574A0  FE A0 40 90 */	fmr f21, f8
/* 8015A544 001574A4  80 C1 01 C8 */	lwz r6, 0x1c8(r1)
/* 8015A548 001574A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8015A54C 001574AC  FC 20 38 90 */	fmr f1, f7
/* 8015A550 001574B0  C0 01 01 BC */	lfs f0, 0x1bc(r1)
/* 8015A554 001574B4  FC 40 20 90 */	fmr f2, f4
/* 8015A558 001574B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015A55C 001574BC  FC 60 48 90 */	fmr f3, f9
/* 8015A560 001574C0  88 81 01 C7 */	lbz r4, 0x1c7(r1)
/* 8015A564 001574C4  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8015A568 001574C8  FC 80 00 90 */	fmr f4, f0
/* 8015A56C 001574CC  C2 C1 01 9C */	lfs f22, 0x19c(r1)
/* 8015A570 001574D0  7C A6 2B 78 */	mr r6, r5
/* 8015A574 001574D4  90 81 00 24 */	stw r4, 0x24(r1)
/* 8015A578 001574D8  7C 7F 1B 78 */	mr r31, r3
/* 8015A57C 001574DC  C2 E1 01 A0 */	lfs f23, 0x1a0(r1)
/* 8015A580 001574E0  C3 01 01 A4 */	lfs f24, 0x1a4(r1)
/* 8015A584 001574E4  7D 88 63 78 */	mr r8, r12
/* 8015A588 001574E8  C3 21 01 A8 */	lfs f25, 0x1a8(r1)
/* 8015A58C 001574EC  7D 69 5B 78 */	mr r9, r11
/* 8015A590 001574F0  C3 41 01 AC */	lfs f26, 0x1ac(r1)
/* 8015A594 001574F4  38 A1 00 28 */	addi r5, r1, 0x28
/* 8015A598 001574F8  C3 61 01 B0 */	lfs f27, 0x1b0(r1)
/* 8015A59C 001574FC  38 80 00 18 */	li r4, 0x18
/* 8015A5A0 00157500  C3 81 01 B4 */	lfs f28, 0x1b4(r1)
/* 8015A5A4 00157504  C3 A1 01 B8 */	lfs f29, 0x1b8(r1)
/* 8015A5A8 00157508  C3 C1 01 C0 */	lfs f30, 0x1c0(r1)
/* 8015A5AC 0015750C  83 01 01 CC */	lwz r24, 0x1cc(r1)
/* 8015A5B0 00157510  83 21 01 D0 */	lwz r25, 0x1d0(r1)
/* 8015A5B4 00157514  A3 41 01 D6 */	lhz r26, 0x1d6(r1)
/* 8015A5B8 00157518  A3 C1 01 DA */	lhz r30, 0x1da(r1)
/* 8015A5BC 0015751C  A3 A1 01 DE */	lhz r29, 0x1de(r1)
/* 8015A5C0 00157520  83 61 01 E0 */	lwz r27, 0x1e0(r1)
/* 8015A5C4 00157524  83 81 01 E4 */	lwz r28, 0x1e4(r1)
/* 8015A5C8 00157528  C3 E1 01 E8 */	lfs f31, 0x1e8(r1)
/* 8015A5CC 0015752C  48 10 EC 95 */	bl "__ct__11CWallWalkerFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUiUi"
/* 8015A5D0 00157530  3C 80 80 3E */	lis r4, lbl_803E3004@ha
/* 8015A5D4 00157534  C0 42 9E 50 */	lfs f2, lbl_805ABB70@sda21(r2)
/* 8015A5D8 00157538  38 04 30 04 */	addi r0, r4, lbl_803E3004@l
/* 8015A5DC 0015753C  C0 02 9E 60 */	lfs f0, lbl_805ABB80@sda21(r2)
/* 8015A5E0 00157540  90 1F 00 00 */	stw r0, 0(r31)
/* 8015A5E4 00157544  38 80 00 00 */	li r4, 0
/* 8015A5E8 00157548  38 00 FF FF */	li r0, -1
/* 8015A5EC 0015754C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8015A5F0 00157550  90 9F 05 DC */	stw r4, 0x5dc(r31)
/* 8015A5F4 00157554  90 9F 05 E0 */	stw r4, 0x5e0(r31)
/* 8015A5F8 00157558  90 9F 05 E4 */	stw r4, 0x5e4(r31)
/* 8015A5FC 0015755C  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 8015A600 00157560  D0 5F 05 EC */	stfs f2, 0x5ec(r31)
/* 8015A604 00157564  D0 5F 05 F0 */	stfs f2, 0x5f0(r31)
/* 8015A608 00157568  D0 5F 05 F4 */	stfs f2, 0x5f4(r31)
/* 8015A60C 0015756C  D0 5F 05 F8 */	stfs f2, 0x5f8(r31)
/* 8015A610 00157570  D0 5F 05 FC */	stfs f2, 0x5fc(r31)
/* 8015A614 00157574  D0 5F 06 00 */	stfs f2, 0x600(r31)
/* 8015A618 00157578  D0 1F 06 04 */	stfs f0, 0x604(r31)
/* 8015A61C 0015757C  D0 5F 06 08 */	stfs f2, 0x608(r31)
/* 8015A620 00157580  D0 5F 06 0C */	stfs f2, 0x60c(r31)
/* 8015A624 00157584  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8015A628 00157588  D0 1F 06 14 */	stfs f0, 0x614(r31)
/* 8015A62C 0015758C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8015A630 00157590  D0 1F 06 18 */	stfs f0, 0x618(r31)
/* 8015A634 00157594  C0 03 00 08 */	lfs f0, 8(r3)
/* 8015A638 00157598  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 8015A63C 0015759C  90 9F 06 20 */	stw r4, 0x620(r31)
/* 8015A640 001575A0  90 9F 06 24 */	stw r4, 0x624(r31)
/* 8015A644 001575A4  D0 5F 06 28 */	stfs f2, 0x628(r31)
/* 8015A648 001575A8  D0 5F 06 2C */	stfs f2, 0x62c(r31)
/* 8015A64C 001575AC  D0 5F 06 30 */	stfs f2, 0x630(r31)
/* 8015A650 001575B0  D0 5F 06 34 */	stfs f2, 0x634(r31)
/* 8015A654 001575B4  D0 5F 06 38 */	stfs f2, 0x638(r31)
/* 8015A658 001575B8  D0 5F 06 3C */	stfs f2, 0x63c(r31)
/* 8015A65C 001575BC  D0 5F 06 40 */	stfs f2, 0x640(r31)
/* 8015A660 001575C0  D0 5F 06 44 */	stfs f2, 0x644(r31)
/* 8015A664 001575C4  D0 5F 06 48 */	stfs f2, 0x648(r31)
/* 8015A668 001575C8  80 78 00 00 */	lwz r3, 0(r24)
/* 8015A66C 001575CC  80 18 00 04 */	lwz r0, 4(r24)
/* 8015A670 001575D0  90 7F 06 4C */	stw r3, 0x64c(r31)
/* 8015A674 001575D4  90 1F 06 50 */	stw r0, 0x650(r31)
/* 8015A678 001575D8  80 78 00 08 */	lwz r3, 8(r24)
/* 8015A67C 001575DC  80 18 00 0C */	lwz r0, 0xc(r24)
/* 8015A680 001575E0  90 7F 06 54 */	stw r3, 0x654(r31)
/* 8015A684 001575E4  90 1F 06 58 */	stw r0, 0x658(r31)
/* 8015A688 001575E8  80 78 00 10 */	lwz r3, 0x10(r24)
/* 8015A68C 001575EC  80 18 00 14 */	lwz r0, 0x14(r24)
/* 8015A690 001575F0  90 7F 06 5C */	stw r3, 0x65c(r31)
/* 8015A694 001575F4  90 1F 06 60 */	stw r0, 0x660(r31)
/* 8015A698 001575F8  80 78 00 18 */	lwz r3, 0x18(r24)
/* 8015A69C 001575FC  80 18 00 1C */	lwz r0, 0x1c(r24)
/* 8015A6A0 00157600  90 7F 06 64 */	stw r3, 0x664(r31)
/* 8015A6A4 00157604  90 1F 06 68 */	stw r0, 0x668(r31)
/* 8015A6A8 00157608  80 78 00 20 */	lwz r3, 0x20(r24)
/* 8015A6AC 0015760C  80 18 00 24 */	lwz r0, 0x24(r24)
/* 8015A6B0 00157610  90 7F 06 6C */	stw r3, 0x66c(r31)
/* 8015A6B4 00157614  90 1F 06 70 */	stw r0, 0x670(r31)
/* 8015A6B8 00157618  80 78 00 28 */	lwz r3, 0x28(r24)
/* 8015A6BC 0015761C  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 8015A6C0 00157620  90 7F 06 74 */	stw r3, 0x674(r31)
/* 8015A6C4 00157624  90 1F 06 78 */	stw r0, 0x678(r31)
/* 8015A6C8 00157628  80 78 00 30 */	lwz r3, 0x30(r24)
/* 8015A6CC 0015762C  80 18 00 34 */	lwz r0, 0x34(r24)
/* 8015A6D0 00157630  90 7F 06 7C */	stw r3, 0x67c(r31)
/* 8015A6D4 00157634  90 1F 06 80 */	stw r0, 0x680(r31)
/* 8015A6D8 00157638  80 18 00 38 */	lwz r0, 0x38(r24)
/* 8015A6DC 0015763C  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8015A6E0 00157640  80 78 00 3C */	lwz r3, 0x3c(r24)
/* 8015A6E4 00157644  80 18 00 40 */	lwz r0, 0x40(r24)
/* 8015A6E8 00157648  90 7F 06 88 */	stw r3, 0x688(r31)
/* 8015A6EC 0015764C  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 8015A6F0 00157650  80 78 00 44 */	lwz r3, 0x44(r24)
/* 8015A6F4 00157654  80 18 00 48 */	lwz r0, 0x48(r24)
/* 8015A6F8 00157658  90 7F 06 90 */	stw r3, 0x690(r31)
/* 8015A6FC 0015765C  90 1F 06 94 */	stw r0, 0x694(r31)
/* 8015A700 00157660  80 98 00 4C */	lwz r4, 0x4c(r24)
/* 8015A704 00157664  7F 43 D3 78 */	mr r3, r26
/* 8015A708 00157668  80 18 00 50 */	lwz r0, 0x50(r24)
/* 8015A70C 0015766C  C0 02 9E 64 */	lfs f0, lbl_805ABB84@sda21(r2)
/* 8015A710 00157670  90 9F 06 98 */	stw r4, 0x698(r31)
/* 8015A714 00157674  90 1F 06 9C */	stw r0, 0x69c(r31)
/* 8015A718 00157678  80 98 00 54 */	lwz r4, 0x54(r24)
/* 8015A71C 0015767C  80 18 00 58 */	lwz r0, 0x58(r24)
/* 8015A720 00157680  90 9F 06 A0 */	stw r4, 0x6a0(r31)
/* 8015A724 00157684  90 1F 06 A4 */	stw r0, 0x6a4(r31)
/* 8015A728 00157688  80 18 00 5C */	lwz r0, 0x5c(r24)
/* 8015A72C 0015768C  90 1F 06 A8 */	stw r0, 0x6a8(r31)
/* 8015A730 00157690  80 18 00 60 */	lwz r0, 0x60(r24)
/* 8015A734 00157694  90 1F 06 AC */	stw r0, 0x6ac(r31)
/* 8015A738 00157698  80 18 00 64 */	lwz r0, 0x64(r24)
/* 8015A73C 0015769C  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 8015A740 001576A0  80 19 00 00 */	lwz r0, 0(r25)
/* 8015A744 001576A4  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 8015A748 001576A8  88 19 00 04 */	lbz r0, 4(r25)
/* 8015A74C 001576AC  98 1F 06 B8 */	stb r0, 0x6b8(r31)
/* 8015A750 001576B0  C0 39 00 08 */	lfs f1, 8(r25)
/* 8015A754 001576B4  D0 3F 06 BC */	stfs f1, 0x6bc(r31)
/* 8015A758 001576B8  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 8015A75C 001576BC  D0 3F 06 C0 */	stfs f1, 0x6c0(r31)
/* 8015A760 001576C0  C0 39 00 10 */	lfs f1, 0x10(r25)
/* 8015A764 001576C4  D0 3F 06 C4 */	stfs f1, 0x6c4(r31)
/* 8015A768 001576C8  C0 39 00 14 */	lfs f1, 0x14(r25)
/* 8015A76C 001576CC  D0 3F 06 C8 */	stfs f1, 0x6c8(r31)
/* 8015A770 001576D0  88 19 00 18 */	lbz r0, 0x18(r25)
/* 8015A774 001576D4  98 1F 06 CC */	stb r0, 0x6cc(r31)
/* 8015A778 001576D8  D2 3F 06 D0 */	stfs f17, 0x6d0(r31)
/* 8015A77C 001576DC  D2 5F 06 D4 */	stfs f18, 0x6d4(r31)
/* 8015A780 001576E0  D2 7F 06 DC */	stfs f19, 0x6dc(r31)
/* 8015A784 001576E4  D2 9F 06 E0 */	stfs f20, 0x6e0(r31)
/* 8015A788 001576E8  D2 BF 06 E4 */	stfs f21, 0x6e4(r31)
/* 8015A78C 001576EC  D2 DF 06 E8 */	stfs f22, 0x6e8(r31)
/* 8015A790 001576F0  D2 FF 06 EC */	stfs f23, 0x6ec(r31)
/* 8015A794 001576F4  D3 1F 06 F0 */	stfs f24, 0x6f0(r31)
/* 8015A798 001576F8  D3 3F 06 F4 */	stfs f25, 0x6f4(r31)
/* 8015A79C 001576FC  D3 5F 06 F8 */	stfs f26, 0x6f8(r31)
/* 8015A7A0 00157700  D3 7F 06 FC */	stfs f27, 0x6fc(r31)
/* 8015A7A4 00157704  D3 9F 07 00 */	stfs f28, 0x700(r31)
/* 8015A7A8 00157708  D3 BF 07 04 */	stfs f29, 0x704(r31)
/* 8015A7AC 0015770C  C0 37 00 C8 */	lfs f1, 0xc8(r23)
/* 8015A7B0 00157710  EC 01 00 32 */	fmuls f0, f1, f0
/* 8015A7B4 00157714  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 8015A7B8 00157718  D3 DF 07 10 */	stfs f30, 0x710(r31)
/* 8015A7BC 0015771C  D3 FF 07 14 */	stfs f31, 0x714(r31)
/* 8015A7C0 00157720  D0 5F 07 18 */	stfs f2, 0x718(r31)
/* 8015A7C4 00157724  D0 5F 07 1C */	stfs f2, 0x71c(r31)
/* 8015A7C8 00157728  D0 5F 07 20 */	stfs f2, 0x720(r31)
/* 8015A7CC 0015772C  D0 5F 07 24 */	stfs f2, 0x724(r31)
/* 8015A7D0 00157730  D0 5F 07 28 */	stfs f2, 0x728(r31)
/* 8015A7D4 00157734  D0 5F 07 2C */	stfs f2, 0x72c(r31)
/* 8015A7D8 00157738  D0 5F 07 30 */	stfs f2, 0x730(r31)
/* 8015A7DC 0015773C  D0 5F 07 34 */	stfs f2, 0x734(r31)
/* 8015A7E0 00157740  D0 5F 07 38 */	stfs f2, 0x738(r31)
/* 8015A7E4 00157744  48 18 E1 CD */	bl TranslateSFXID__11CSfxManagerFUs
/* 8015A7E8 00157748  B0 7F 07 3C */	sth r3, 0x73c(r31)
/* 8015A7EC 0015774C  7F C3 F3 78 */	mr r3, r30
/* 8015A7F0 00157750  48 18 E1 C1 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8015A7F4 00157754  B0 7F 07 3E */	sth r3, 0x73e(r31)
/* 8015A7F8 00157758  7F A3 EB 78 */	mr r3, r29
/* 8015A7FC 0015775C  48 18 E1 B5 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8015A800 00157760  B0 7F 07 40 */	sth r3, 0x740(r31)
/* 8015A804 00157764  38 C0 00 00 */	li r6, 0
/* 8015A808 00157768  38 A0 00 01 */	li r5, 1
/* 8015A80C 0015776C  7F E3 FB 78 */	mr r3, r31
/* 8015A810 00157770  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015A814 00157774  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 8015A818 00157778  38 80 00 00 */	li r4, 0
/* 8015A81C 0015777C  98 1F 07 42 */	stb r0, 0x742(r31)
/* 8015A820 00157780  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015A824 00157784  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 8015A828 00157788  98 1F 07 42 */	stb r0, 0x742(r31)
/* 8015A82C 0015778C  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015A830 00157790  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 8015A834 00157794  98 1F 07 42 */	stb r0, 0x742(r31)
/* 8015A838 00157798  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015A83C 0015779C  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 8015A840 001577A0  98 1F 07 42 */	stb r0, 0x742(r31)
/* 8015A844 001577A4  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015A848 001577A8  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 8015A84C 001577AC  98 1F 07 42 */	stb r0, 0x742(r31)
/* 8015A850 001577B0  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015A854 001577B4  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 8015A858 001577B8  98 1F 07 42 */	stb r0, 0x742(r31)
/* 8015A85C 001577BC  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015A860 001577C0  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 8015A864 001577C4  98 1F 07 42 */	stb r0, 0x742(r31)
/* 8015A868 001577C8  88 1F 07 42 */	lbz r0, 0x742(r31)
/* 8015A86C 001577CC  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 8015A870 001577D0  98 1F 07 42 */	stb r0, 0x742(r31)
/* 8015A874 001577D4  88 1F 07 43 */	lbz r0, 0x743(r31)
/* 8015A878 001577D8  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 8015A87C 001577DC  98 1F 07 43 */	stb r0, 0x743(r31)
/* 8015A880 001577E0  88 1F 07 43 */	lbz r0, 0x743(r31)
/* 8015A884 001577E4  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 8015A888 001577E8  98 1F 07 43 */	stb r0, 0x743(r31)
/* 8015A88C 001577EC  88 1F 07 43 */	lbz r0, 0x743(r31)
/* 8015A890 001577F0  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 8015A894 001577F4  98 1F 07 43 */	stb r0, 0x743(r31)
/* 8015A898 001577F8  4B EF 9B 21 */	bl SetCallTouch__6CActorFb
/* 8015A89C 001577FC  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 8015A8A0 00157800  2C 00 00 02 */	cmpwi r0, 2
/* 8015A8A4 00157804  41 82 00 20 */	beq lbl_8015A8C4
/* 8015A8A8 00157808  40 80 00 10 */	bge lbl_8015A8B8
/* 8015A8AC 0015780C  2C 00 00 01 */	cmpwi r0, 1
/* 8015A8B0 00157810  40 80 00 24 */	bge lbl_8015A8D4
/* 8015A8B4 00157814  48 00 02 28 */	b lbl_8015AADC
lbl_8015A8B8:
/* 8015A8B8 00157818  2C 00 00 04 */	cmpwi r0, 4
/* 8015A8BC 0015781C  40 80 02 20 */	bge lbl_8015AADC
/* 8015A8C0 00157820  48 00 00 24 */	b lbl_8015A8E4
lbl_8015A8C4:
/* 8015A8C4 00157824  88 1F 04 E1 */	lbz r0, 0x4e1(r31)
/* 8015A8C8 00157828  38 60 00 00 */	li r3, 0
/* 8015A8CC 0015782C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8015A8D0 00157830  98 1F 04 E1 */	stb r0, 0x4e1(r31)
lbl_8015A8D4:
/* 8015A8D4 00157834  38 7F 04 60 */	addi r3, r31, 0x460
/* 8015A8D8 00157838  38 80 00 00 */	li r4, 0
/* 8015A8DC 0015783C  48 0D 94 89 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 8015A8E0 00157840  48 00 01 FC */	b lbl_8015AADC
lbl_8015A8E4:
/* 8015A8E4 00157844  3C 60 80 3D */	lis r3, lbl_803D0330@ha
/* 8015A8E8 00157848  3A E0 00 00 */	li r23, 0
/* 8015A8EC 0015784C  38 63 03 30 */	addi r3, r3, lbl_803D0330@l
/* 8015A8F0 00157850  3B 00 00 00 */	li r24, 0
/* 8015A8F4 00157854  38 83 00 09 */	addi r4, r3, 9
/* 8015A8F8 00157858  3B 20 00 00 */	li r25, 0
/* 8015A8FC 0015785C  3B 40 00 00 */	li r26, 0
/* 8015A900 00157860  38 60 00 0C */	li r3, 0xc
/* 8015A904 00157864  38 A0 00 00 */	li r5, 0
/* 8015A908 00157868  48 1B AF 65 */	bl __nw__FUlPCcPCc
/* 8015A90C 0015786C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015A910 00157870  41 82 01 54 */	beq lbl_8015AA64
/* 8015A914 00157874  3C 80 80 3D */	lis r4, lbl_803D0330@ha
/* 8015A918 00157878  38 60 00 3C */	li r3, 0x3c
/* 8015A91C 0015787C  38 84 03 30 */	addi r4, r4, lbl_803D0330@l
/* 8015A920 00157880  38 A0 00 00 */	li r5, 0
/* 8015A924 00157884  38 84 00 09 */	addi r4, r4, 9
/* 8015A928 00157888  48 1B AF 45 */	bl __nw__FUlPCcPCc
/* 8015A92C 0015788C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8015A930 00157890  41 82 00 D4 */	beq lbl_8015AA04
/* 8015A934 00157894  3C 60 43 4D */	lis r3, 0x434D444C@ha
/* 8015A938 00157898  93 61 00 40 */	stw r27, 0x40(r1)
/* 8015A93C 0015789C  38 03 44 4C */	addi r0, r3, 0x434D444C@l
/* 8015A940 001578A0  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8015A944 001578A4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8015A948 001578A8  38 61 00 34 */	addi r3, r1, 0x34
/* 8015A94C 001578AC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8015A950 001578B0  81 84 00 00 */	lwz r12, 0(r4)
/* 8015A954 001578B4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8015A958 001578B8  7D 89 03 A6 */	mtctr r12
/* 8015A95C 001578BC  4E 80 04 21 */	bctrl
/* 8015A960 001578C0  3A E1 00 54 */	addi r23, r1, 0x54
/* 8015A964 001578C4  38 81 00 34 */	addi r4, r1, 0x34
/* 8015A968 001578C8  7E E3 BB 78 */	mr r3, r23
/* 8015A96C 001578CC  3B 20 00 01 */	li r25, 1
/* 8015A970 001578D0  48 1E 65 39 */	bl __ct__6CTokenFRC6CToken
/* 8015A974 001578D4  7E E3 BB 78 */	mr r3, r23
/* 8015A978 001578D8  48 1E 64 95 */	bl GetObj__6CTokenFv
/* 8015A97C 001578DC  80 A3 00 04 */	lwz r5, 4(r3)
/* 8015A980 001578E0  3C 60 43 53 */	lis r3, 0x43534B52@ha
/* 8015A984 001578E4  38 03 4B 52 */	addi r0, r3, 0x43534B52@l
/* 8015A988 001578E8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8015A98C 001578EC  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8015A990 001578F0  38 61 00 44 */	addi r3, r1, 0x44
/* 8015A994 001578F4  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8015A998 001578F8  3B 40 00 01 */	li r26, 1
/* 8015A99C 001578FC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8015A9A0 00157900  93 81 00 50 */	stw r28, 0x50(r1)
/* 8015A9A4 00157904  81 84 00 00 */	lwz r12, 0(r4)
/* 8015A9A8 00157908  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8015A9AC 0015790C  7D 89 03 A6 */	mtctr r12
/* 8015A9B0 00157910  4E 80 04 21 */	bctrl
/* 8015A9B4 00157914  3B 01 00 60 */	addi r24, r1, 0x60
/* 8015A9B8 00157918  38 81 00 44 */	addi r4, r1, 0x44
/* 8015A9BC 0015791C  7F 03 C3 78 */	mr r3, r24
/* 8015A9C0 00157920  3A E0 00 01 */	li r23, 1
/* 8015A9C4 00157924  48 1E 64 E5 */	bl __ct__6CTokenFRC6CToken
/* 8015A9C8 00157928  7F 03 C3 78 */	mr r3, r24
/* 8015A9CC 0015792C  48 1E 64 41 */	bl GetObj__6CTokenFv
/* 8015A9D0 00157930  80 03 00 04 */	lwz r0, 4(r3)
/* 8015A9D4 00157934  7F 05 C3 78 */	mr r5, r24
/* 8015A9D8 00157938  7F A3 EB 78 */	mr r3, r29
/* 8015A9DC 0015793C  38 81 00 54 */	addi r4, r1, 0x54
/* 8015A9E0 00157940  90 01 00 68 */	stw r0, 0x68(r1)
/* 8015A9E4 00157944  3B 00 00 01 */	li r24, 1
/* 8015A9E8 00157948  38 E0 00 01 */	li r7, 1
/* 8015A9EC 0015794C  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 8015A9F0 00157950  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8015A9F4 00157954  80 C6 00 E0 */	lwz r6, 0xe0(r6)
/* 8015A9F8 00157958  38 C6 00 1C */	addi r6, r6, 0x1c
/* 8015A9FC 0015795C  48 1F 8A 3D */	bl "__ct__13CSkinnedModelFRC21TLockedToken<6CModel>RC26TLockedToken<10CSkinRules>RC31TLockedToken<15CCharLayoutInfo>Q213CSkinnedModel14EDataOwnership"
/* 8015AA00 00157960  7C 7D 1B 78 */	mr r29, r3
lbl_8015AA04:
/* 8015AA04 00157964  7F DB F3 78 */	mr r27, r30
/* 8015AA08 00157968  7F A4 EB 78 */	mr r4, r29
/* 8015AA0C 0015796C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8015AA10 00157970  48 00 01 A9 */	bl sub_8015abb8
/* 8015AA14 00157974  38 00 00 00 */	li r0, 0
/* 8015AA18 00157978  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8015AA1C 0015797C  98 01 00 2C */	stb r0, 0x2c(r1)
/* 8015AA20 00157980  7F C3 F3 78 */	mr r3, r30
/* 8015AA24 00157984  48 1E 64 E1 */	bl __ct__6CTokenFP4IObj
/* 8015AA28 00157988  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 8015AA2C 0015798C  28 00 00 00 */	cmplwi r0, 0
/* 8015AA30 00157990  41 82 00 24 */	beq lbl_8015AA54
/* 8015AA34 00157994  80 61 00 30 */	lwz r3, 0x30(r1)
/* 8015AA38 00157998  28 03 00 00 */	cmplwi r3, 0
/* 8015AA3C 0015799C  41 82 00 18 */	beq lbl_8015AA54
/* 8015AA40 001579A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8015AA44 001579A4  38 80 00 01 */	li r4, 1
/* 8015AA48 001579A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8015AA4C 001579AC  7D 89 03 A6 */	mtctr r12
/* 8015AA50 001579B0  4E 80 04 21 */	bctrl
lbl_8015AA54:
/* 8015AA54 001579B4  93 BB 00 08 */	stw r29, 8(r27)
/* 8015AA58 001579B8  7F 63 DB 78 */	mr r3, r27
/* 8015AA5C 001579BC  48 1E 63 29 */	bl Lock__6CTokenFv
/* 8015AA60 001579C0  7F 7E DB 78 */	mr r30, r27
lbl_8015AA64:
/* 8015AA64 001579C4  83 7F 06 24 */	lwz r27, 0x624(r31)
/* 8015AA68 001579C8  28 1B 00 00 */	cmplwi r27, 0
/* 8015AA6C 001579CC  41 82 00 1C */	beq lbl_8015AA88
/* 8015AA70 001579D0  41 82 00 10 */	beq lbl_8015AA80
/* 8015AA74 001579D4  7F 63 DB 78 */	mr r3, r27
/* 8015AA78 001579D8  38 80 00 00 */	li r4, 0
/* 8015AA7C 001579DC  48 1E 63 C5 */	bl __dt__6CTokenFv
lbl_8015AA80:
/* 8015AA80 001579E0  7F 63 DB 78 */	mr r3, r27
/* 8015AA84 001579E4  48 1B AE AD */	bl Free__7CMemoryFPCv
lbl_8015AA88:
/* 8015AA88 001579E8  7F 40 07 75 */	extsb. r0, r26
/* 8015AA8C 001579EC  93 DF 06 24 */	stw r30, 0x624(r31)
/* 8015AA90 001579F0  41 82 00 10 */	beq lbl_8015AAA0
/* 8015AA94 001579F4  38 61 00 54 */	addi r3, r1, 0x54
/* 8015AA98 001579F8  38 80 00 00 */	li r4, 0
/* 8015AA9C 001579FC  48 1E 63 A5 */	bl __dt__6CTokenFv
lbl_8015AAA0:
/* 8015AAA0 00157A00  7F 20 07 75 */	extsb. r0, r25
/* 8015AAA4 00157A04  41 82 00 10 */	beq lbl_8015AAB4
/* 8015AAA8 00157A08  38 61 00 34 */	addi r3, r1, 0x34
/* 8015AAAC 00157A0C  38 80 FF FF */	li r4, -1
/* 8015AAB0 00157A10  48 1E 63 91 */	bl __dt__6CTokenFv
lbl_8015AAB4:
/* 8015AAB4 00157A14  7F 00 07 75 */	extsb. r0, r24
/* 8015AAB8 00157A18  41 82 00 10 */	beq lbl_8015AAC8
/* 8015AABC 00157A1C  38 61 00 60 */	addi r3, r1, 0x60
/* 8015AAC0 00157A20  38 80 00 00 */	li r4, 0
/* 8015AAC4 00157A24  48 1E 63 7D */	bl __dt__6CTokenFv
lbl_8015AAC8:
/* 8015AAC8 00157A28  7E E0 07 75 */	extsb. r0, r23
/* 8015AACC 00157A2C  41 82 00 10 */	beq lbl_8015AADC
/* 8015AAD0 00157A30  38 61 00 44 */	addi r3, r1, 0x44
/* 8015AAD4 00157A34  38 80 FF FF */	li r4, -1
/* 8015AAD8 00157A38  48 1E 63 69 */	bl __dt__6CTokenFv
lbl_8015AADC:
/* 8015AADC 00157A3C  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 8015AAE0 00157A40  2C 00 00 01 */	cmpwi r0, 1
/* 8015AAE4 00157A44  40 82 00 44 */	bne lbl_8015AB28
/* 8015AAE8 00157A48  88 1F 04 E1 */	lbz r0, 0x4e1(r31)
/* 8015AAEC 00157A4C  38 60 00 00 */	li r3, 0
/* 8015AAF0 00157A50  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8015AAF4 00157A54  98 1F 04 E1 */	stb r0, 0x4e1(r31)
/* 8015AAF8 00157A58  88 1F 04 E1 */	lbz r0, 0x4e1(r31)
/* 8015AAFC 00157A5C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8015AB00 00157A60  98 1F 04 E1 */	stb r0, 0x4e1(r31)
/* 8015AB04 00157A64  88 1F 04 E1 */	lbz r0, 0x4e1(r31)
/* 8015AB08 00157A68  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8015AB0C 00157A6C  98 1F 04 E1 */	stb r0, 0x4e1(r31)
/* 8015AB10 00157A70  88 1F 04 E1 */	lbz r0, 0x4e1(r31)
/* 8015AB14 00157A74  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8015AB18 00157A78  98 1F 04 E1 */	stb r0, 0x4e1(r31)
/* 8015AB1C 00157A7C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8015AB20 00157A80  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8015AB24 00157A84  98 1F 04 E2 */	stb r0, 0x4e2(r31)
lbl_8015AB28:
/* 8015AB28 00157A88  7F E3 FB 78 */	mr r3, r31
/* 8015AB2C 00157A8C  E3 E1 01 88 */	psq_l f31, 392(r1), 0, qr0
/* 8015AB30 00157A90  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 8015AB34 00157A94  E3 C1 01 78 */	psq_l f30, 376(r1), 0, qr0
/* 8015AB38 00157A98  CB C1 01 70 */	lfd f30, 0x170(r1)
/* 8015AB3C 00157A9C  E3 A1 01 68 */	psq_l f29, 360(r1), 0, qr0
/* 8015AB40 00157AA0  CB A1 01 60 */	lfd f29, 0x160(r1)
/* 8015AB44 00157AA4  E3 81 01 58 */	psq_l f28, 344(r1), 0, qr0
/* 8015AB48 00157AA8  CB 81 01 50 */	lfd f28, 0x150(r1)
/* 8015AB4C 00157AAC  E3 61 01 48 */	psq_l f27, 328(r1), 0, qr0
/* 8015AB50 00157AB0  CB 61 01 40 */	lfd f27, 0x140(r1)
/* 8015AB54 00157AB4  E3 41 01 38 */	psq_l f26, 312(r1), 0, qr0
/* 8015AB58 00157AB8  CB 41 01 30 */	lfd f26, 0x130(r1)
/* 8015AB5C 00157ABC  E3 21 01 28 */	psq_l f25, 296(r1), 0, qr0
/* 8015AB60 00157AC0  CB 21 01 20 */	lfd f25, 0x120(r1)
/* 8015AB64 00157AC4  E3 01 01 18 */	psq_l f24, 280(r1), 0, qr0
/* 8015AB68 00157AC8  CB 01 01 10 */	lfd f24, 0x110(r1)
/* 8015AB6C 00157ACC  E2 E1 01 08 */	psq_l f23, 264(r1), 0, qr0
/* 8015AB70 00157AD0  CA E1 01 00 */	lfd f23, 0x100(r1)
/* 8015AB74 00157AD4  E2 C1 00 F8 */	psq_l f22, 248(r1), 0, qr0
/* 8015AB78 00157AD8  CA C1 00 F0 */	lfd f22, 0xf0(r1)
/* 8015AB7C 00157ADC  E2 A1 00 E8 */	psq_l f21, 232(r1), 0, qr0
/* 8015AB80 00157AE0  CA A1 00 E0 */	lfd f21, 0xe0(r1)
/* 8015AB84 00157AE4  E2 81 00 D8 */	psq_l f20, 216(r1), 0, qr0
/* 8015AB88 00157AE8  CA 81 00 D0 */	lfd f20, 0xd0(r1)
/* 8015AB8C 00157AEC  E2 61 00 C8 */	psq_l f19, 200(r1), 0, qr0
/* 8015AB90 00157AF0  CA 61 00 C0 */	lfd f19, 0xc0(r1)
/* 8015AB94 00157AF4  E2 41 00 B8 */	psq_l f18, 184(r1), 0, qr0
/* 8015AB98 00157AF8  CA 41 00 B0 */	lfd f18, 0xb0(r1)
/* 8015AB9C 00157AFC  E2 21 00 A8 */	psq_l f17, 168(r1), 0, qr0
/* 8015ABA0 00157B00  CA 21 00 A0 */	lfd f17, 0xa0(r1)
/* 8015ABA4 00157B04  BA E1 00 7C */	lmw r23, 0x7c(r1)
/* 8015ABA8 00157B08  80 01 01 94 */	lwz r0, 0x194(r1)
/* 8015ABAC 00157B0C  7C 08 03 A6 */	mtlr r0
/* 8015ABB0 00157B10  38 21 01 90 */	addi r1, r1, 0x190
/* 8015ABB4 00157B14  4E 80 00 20 */	blr

.global sub_8015abb8
sub_8015abb8:
/* 8015ABB8 00157B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015ABBC 00157B1C  7C 08 02 A6 */	mflr r0
/* 8015ABC0 00157B20  3C A0 80 3D */	lis r5, lbl_803D0330@ha
/* 8015ABC4 00157B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015ABC8 00157B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015ABCC 00157B2C  7C 9F 23 78 */	mr r31, r4
/* 8015ABD0 00157B30  93 C1 00 08 */	stw r30, 8(r1)
/* 8015ABD4 00157B34  7C 7E 1B 78 */	mr r30, r3
/* 8015ABD8 00157B38  38 65 03 30 */	addi r3, r5, lbl_803D0330@l
/* 8015ABDC 00157B3C  38 A0 00 00 */	li r5, 0
/* 8015ABE0 00157B40  38 83 00 09 */	addi r4, r3, 9
/* 8015ABE4 00157B44  38 60 00 08 */	li r3, 8
/* 8015ABE8 00157B48  48 1B AC 85 */	bl __nw__FUlPCcPCc
/* 8015ABEC 00157B4C  28 03 00 00 */	cmplwi r3, 0
/* 8015ABF0 00157B50  41 82 00 2C */	beq lbl_8015AC1C
/* 8015ABF4 00157B54  3C 80 80 3E */	lis r4, __vt__4IObj@ha
/* 8015ABF8 00157B58  3C A0 80 3E */	lis r5, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 8015ABFC 00157B5C  38 04 8D 6C */	addi r0, r4, __vt__4IObj@l
/* 8015AC00 00157B60  3C 80 80 3E */	lis r4, lbl_803D9BC8@ha
/* 8015AC04 00157B64  90 03 00 00 */	stw r0, 0(r3)
/* 8015AC08 00157B68  38 A5 8D 78 */	addi r5, r5, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 8015AC0C 00157B6C  38 04 9B C8 */	addi r0, r4, lbl_803D9BC8@l
/* 8015AC10 00157B70  90 A3 00 00 */	stw r5, 0(r3)
/* 8015AC14 00157B74  93 E3 00 04 */	stw r31, 4(r3)
/* 8015AC18 00157B78  90 03 00 00 */	stw r0, 0(r3)
lbl_8015AC1C:
/* 8015AC1C 00157B7C  7C 03 00 D0 */	neg r0, r3
/* 8015AC20 00157B80  7C 00 1B 78 */	or r0, r0, r3
/* 8015AC24 00157B84  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8015AC28 00157B88  98 1E 00 00 */	stb r0, 0(r30)
/* 8015AC2C 00157B8C  90 7E 00 04 */	stw r3, 4(r30)
/* 8015AC30 00157B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015AC34 00157B94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015AC38 00157B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015AC3C 00157B9C  7C 08 03 A6 */	mtlr r0
/* 8015AC40 00157BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015AC44 00157BA4  4E 80 00 20 */	blr

.global "reserve__Q24rstl57vector<Q29CParasite9CRepulsor,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl57vector<Q29CParasite9CRepulsor,Q24rstl17rmemory_allocator>Fi":
/* 8015AC48 00157BA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015AC4C 00157BAC  7C 08 02 A6 */	mflr r0
/* 8015AC50 00157BB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015AC54 00157BB4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8015AC58 00157BB8  7C 9F 23 78 */	mr r31, r4
/* 8015AC5C 00157BBC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8015AC60 00157BC0  7C 7E 1B 78 */	mr r30, r3
/* 8015AC64 00157BC4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8015AC68 00157BC8  80 03 00 08 */	lwz r0, 8(r3)
/* 8015AC6C 00157BCC  7C 1F 00 00 */	cmpw r31, r0
/* 8015AC70 00157BD0  40 81 00 C4 */	ble lbl_8015AD34
/* 8015AC74 00157BD4  57 E3 20 37 */	rlwinm. r3, r31, 4, 0, 0x1b
/* 8015AC78 00157BD8  40 82 00 0C */	bne lbl_8015AC84
/* 8015AC7C 00157BDC  3B A0 00 00 */	li r29, 0
/* 8015AC80 00157BE0  48 00 00 1C */	b lbl_8015AC9C
lbl_8015AC84:
/* 8015AC84 00157BE4  3C 80 80 3D */	lis r4, lbl_803D0330@ha
/* 8015AC88 00157BE8  38 A0 00 00 */	li r5, 0
/* 8015AC8C 00157BEC  38 84 03 30 */	addi r4, r4, lbl_803D0330@l
/* 8015AC90 00157BF0  38 84 00 09 */	addi r4, r4, 9
/* 8015AC94 00157BF4  48 1B AB 85 */	bl __nwa__FUlPCcPCc
/* 8015AC98 00157BF8  7C 7D 1B 78 */	mr r29, r3
lbl_8015AC9C:
/* 8015AC9C 00157BFC  80 1E 00 04 */	lwz r0, 4(r30)
/* 8015ACA0 00157C00  7F A3 EB 78 */	mr r3, r29
/* 8015ACA4 00157C04  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8015ACA8 00157C08  54 00 20 36 */	slwi r0, r0, 4
/* 8015ACAC 00157C0C  7C 04 02 14 */	add r0, r4, r0
/* 8015ACB0 00157C10  90 81 00 10 */	stw r4, 0x10(r1)
/* 8015ACB4 00157C14  90 01 00 08 */	stw r0, 8(r1)
/* 8015ACB8 00157C18  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015ACBC 00157C1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8015ACC0 00157C20  48 00 00 34 */	b lbl_8015ACF4
lbl_8015ACC4:
/* 8015ACC4 00157C24  28 03 00 00 */	cmplwi r3, 0
/* 8015ACC8 00157C28  41 82 00 24 */	beq lbl_8015ACEC
/* 8015ACCC 00157C2C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8015ACD0 00157C30  D0 03 00 00 */	stfs f0, 0(r3)
/* 8015ACD4 00157C34  C0 04 00 04 */	lfs f0, 4(r4)
/* 8015ACD8 00157C38  D0 03 00 04 */	stfs f0, 4(r3)
/* 8015ACDC 00157C3C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8015ACE0 00157C40  D0 03 00 08 */	stfs f0, 8(r3)
/* 8015ACE4 00157C44  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8015ACE8 00157C48  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8015ACEC:
/* 8015ACEC 00157C4C  38 63 00 10 */	addi r3, r3, 0x10
/* 8015ACF0 00157C50  38 84 00 10 */	addi r4, r4, 0x10
lbl_8015ACF4:
/* 8015ACF4 00157C54  7C 04 00 40 */	cmplw r4, r0
/* 8015ACF8 00157C58  40 82 FF CC */	bne lbl_8015ACC4
/* 8015ACFC 00157C5C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8015AD00 00157C60  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8015AD04 00157C64  54 00 20 36 */	slwi r0, r0, 4
/* 8015AD08 00157C68  7C 64 1B 78 */	mr r4, r3
/* 8015AD0C 00157C6C  7C 03 02 14 */	add r0, r3, r0
/* 8015AD10 00157C70  48 00 00 08 */	b lbl_8015AD18
lbl_8015AD14:
/* 8015AD14 00157C74  38 84 00 10 */	addi r4, r4, 0x10
lbl_8015AD18:
/* 8015AD18 00157C78  7C 04 00 40 */	cmplw r4, r0
/* 8015AD1C 00157C7C  40 82 FF F8 */	bne lbl_8015AD14
/* 8015AD20 00157C80  28 03 00 00 */	cmplwi r3, 0
/* 8015AD24 00157C84  41 82 00 08 */	beq lbl_8015AD2C
/* 8015AD28 00157C88  48 1B AC 09 */	bl Free__7CMemoryFPCv
lbl_8015AD2C:
/* 8015AD2C 00157C8C  93 BE 00 0C */	stw r29, 0xc(r30)
/* 8015AD30 00157C90  93 FE 00 08 */	stw r31, 8(r30)
lbl_8015AD34:
/* 8015AD34 00157C94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015AD38 00157C98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8015AD3C 00157C9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8015AD40 00157CA0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8015AD44 00157CA4  7C 08 03 A6 */	mtlr r0
/* 8015AD48 00157CA8  38 21 00 30 */	addi r1, r1, 0x30
/* 8015AD4C 00157CAC  4E 80 00 20 */	blr

.global __sinit_CParasite_cpp
__sinit_CParasite_cpp:
/* 8015AD50 00157CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015AD54 00157CB4  7C 08 02 A6 */	mflr r0
/* 8015AD58 00157CB8  C0 22 9E 9C */	lfs f1, lbl_805ABBBC@sda21(r2)
/* 8015AD5C 00157CBC  C0 02 96 A0 */	lfs f0, kGravityAccel__13CPhysicsActor@sda21(r2)
/* 8015AD60 00157CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015AD64 00157CC4  EC 21 00 24 */	fdivs f1, f1, f0
/* 8015AD68 00157CC8  48 1B A7 99 */	bl SqrtF__5CMathFf
/* 8015AD6C 00157CCC  C0 02 9E 58 */	lfs f0, lbl_805ABB78@sda21(r2)
/* 8015AD70 00157CD0  C0 42 9E 70 */	lfs f2, lbl_805ABB90@sda21(r2)
/* 8015AD74 00157CD4  EC 60 00 72 */	fmuls f3, f0, f1
/* 8015AD78 00157CD8  C0 22 9E 9C */	lfs f1, lbl_805ABBBC@sda21(r2)
/* 8015AD7C 00157CDC  C0 02 96 A0 */	lfs f0, kGravityAccel__13CPhysicsActor@sda21(r2)
/* 8015AD80 00157CE0  EC 42 18 24 */	fdivs f2, f2, f3
/* 8015AD84 00157CE4  D0 6D A3 F0 */	stfs f3, lbl_805A8FB0@sda21(r13)
/* 8015AD88 00157CE8  EC 21 00 24 */	fdivs f1, f1, f0
/* 8015AD8C 00157CEC  D0 4D A3 F4 */	stfs f2, lbl_805A8FB4@sda21(r13)
/* 8015AD90 00157CF0  48 1B A7 71 */	bl SqrtF__5CMathFf
/* 8015AD94 00157CF4  C0 42 9E 58 */	lfs f2, lbl_805ABB78@sda21(r2)
/* 8015AD98 00157CF8  38 00 00 00 */	li r0, 0
/* 8015AD9C 00157CFC  C0 02 9E 6C */	lfs f0, lbl_805ABB8C@sda21(r2)
/* 8015ADA0 00157D00  EC 22 00 72 */	fmuls f1, f2, f1
/* 8015ADA4 00157D04  B0 0D A4 00 */	sth r0, lbl_805A8FC0@sda21(r13)
/* 8015ADA8 00157D08  EC 00 08 24 */	fdivs f0, f0, f1
/* 8015ADAC 00157D0C  D0 2D A3 F8 */	stfs f1, lbl_805A8FB8@sda21(r13)
/* 8015ADB0 00157D10  D0 0D A3 FC */	stfs f0, lbl_805A8FBC@sda21(r13)
/* 8015ADB4 00157D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015ADB8 00157D18  7C 08 03 A6 */	mtlr r0
/* 8015ADBC 00157D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015ADC0 00157D20  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABB68
lbl_805ABB68:
	# ROM: 0x3F8408
	.4byte lbl_803D0330
	.float 0.4

.global lbl_805ABB70
lbl_805ABB70:
	# ROM: 0x3F8410
	.4byte 0

.global lbl_805ABB74
lbl_805ABB74:
	# ROM: 0x3F8414
	.float 0.001

.global lbl_805ABB78
lbl_805ABB78:
	# ROM: 0x3F8418
	.float 2.0

.global lbl_805ABB7C
lbl_805ABB7C:
	# ROM: 0x3F841C
	.float 0.6

.global lbl_805ABB80
lbl_805ABB80:
	# ROM: 0x3F8420
	.float 1.0

.global lbl_805ABB84
lbl_805ABB84:
	# ROM: 0x3F8424
	.float 0.5

.global lbl_805ABB88
lbl_805ABB88:
	# ROM: 0x3F8428
	.float 1.5

.global lbl_805ABB8C
lbl_805ABB8C:
	# ROM: 0x3F842C
	.4byte 0x40400000

.global lbl_805ABB90
lbl_805ABB90:
	# ROM: 0x3F8430
	.float 15.0

.global lbl_805ABB94
lbl_805ABB94:
	# ROM: 0x3F8434
	.float 6.2831855

.global lbl_805ABB98
lbl_805ABB98:
	# ROM: 0x3F8438
	.float 0.1

.global lbl_805ABB9C
lbl_805ABB9C:
	# ROM: 0x3F843C
	.4byte 0x43870000

.global lbl_805ABBA0
lbl_805ABBA0:
	# ROM: 0x3F8440
	.4byte 0x7F7FFFFF

.global lbl_805ABBA4
lbl_805ABBA4:
	# ROM: 0x3F8444
	.4byte 0x43B40000

.global lbl_805ABBA8
lbl_805ABBA8:
	# ROM: 0x3F8448
	.float 1.1920929E-7

.global lbl_805ABBAC
lbl_805ABBAC:
	# ROM: 0x3F844C
	.4byte 0x41200000

.global lbl_805ABBB0
lbl_805ABBB0:
	# ROM: 0x3F8450
	.4byte 0x3727C5AC

.global lbl_805ABBB4
lbl_805ABBB4:
	# ROM: 0x3F8454
	.float 0.3

.global lbl_805ABBB8
lbl_805ABBB8:
	# ROM: 0x3F8458
	.float 0.75

.global lbl_805ABBBC
lbl_805ABBBC:
	# ROM: 0x3F845C
	.float 2.5


.section .rodata
.balign 8
.global lbl_803D0330
lbl_803D0330:
	# ROM: 0x3CD330
	.asciz "Ice_LCTR"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900

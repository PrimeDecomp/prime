.include "macros.inc"

.section .data

.global lbl_803E0DE0
lbl_803E0DE0:
	# ROM: 0x3DDDE0
	.4byte 0
	.4byte 0
	.4byte __dt__11CFlickerBatFv
	.4byte Accept__11CFlickerBatFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__11CFlickerBatFfR13CStateManager
	.4byte AcceptScriptMsg__11CFlickerBatF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__11CFlickerBatCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__11CFlickerBatFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__11CFlickerBatFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__11CFlickerBatFRC9CVector3fR13CStateManager
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__11CFlickerBatFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__11CFlickerBatFR13CStateManager9EStateMsgf
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
	.4byte Attack__11CFlickerBatFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__11CFlickerBatFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__11CFlickerBatFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
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
	.4byte Delay__10CPatternedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__10CPatternedFR13CStateManagerf
	.4byte ShouldAttack__3CAiFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__11CFlickerBatFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__10CPatternedFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__10CPatternedFR13CStateManagerf
	.4byte HearShot__11CFlickerBatFR13CStateManagerf
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
	.4byte GetSearchPath__10CPatternedFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte 0

.section .sdata

.global lbl_805A76F0
lbl_805A76F0:
	# ROM: 0x3F5090
	.4byte 0x00000013

.global lbl_805A76F4
lbl_805A76F4:
	# ROM: 0x3F5094
	.4byte 0x0000001A

.section .text, "ax"

.global Attack__11CFlickerBatFR13CStateManager9EStateMsgf
Attack__11CFlickerBatFR13CStateManager9EStateMsgf:
/* 801302F4 0012D254  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801302F8 0012D258  7C 08 02 A6 */	mflr r0
/* 801302FC 0012D25C  2C 05 00 01 */	cmpwi r5, 1
/* 80130300 0012D260  90 01 00 54 */	stw r0, 0x54(r1)
/* 80130304 0012D264  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80130308 0012D268  7C 7F 1B 78 */	mr r31, r3
/* 8013030C 0012D26C  7C 83 23 78 */	mr r3, r4
/* 80130310 0012D270  41 82 00 10 */	beq lbl_80130320
/* 80130314 0012D274  40 80 00 B4 */	bge lbl_801303C8
/* 80130318 0012D278  48 00 00 B0 */	b lbl_801303C8
/* 8013031C 0012D27C  48 00 00 AC */	b lbl_801303C8
lbl_80130320:
/* 80130320 0012D280  80 83 08 4C */	lwz r4, 0x84c(r3)
/* 80130324 0012D284  7C 65 1B 78 */	mr r5, r3
/* 80130328 0012D288  38 61 00 14 */	addi r3, r1, 0x14
/* 8013032C 0012D28C  C0 22 99 60 */	lfs f1, lbl_805AB680@sda21(r2)
/* 80130330 0012D290  81 84 00 00 */	lwz r12, 0(r4)
/* 80130334 0012D294  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80130338 0012D298  7D 89 03 A6 */	mtctr r12
/* 8013033C 0012D29C  4E 80 04 21 */	bctrl
/* 80130340 0012D2A0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80130344 0012D2A4  38 61 00 08 */	addi r3, r1, 8
/* 80130348 0012D2A8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8013034C 0012D2AC  38 81 00 20 */	addi r4, r1, 0x20
/* 80130350 0012D2B0  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80130354 0012D2B4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80130358 0012D2B8  EC 81 00 28 */	fsubs f4, f1, f0
/* 8013035C 0012D2BC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80130360 0012D2C0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80130364 0012D2C4  EC 43 10 28 */	fsubs f2, f3, f2
/* 80130368 0012D2C8  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8013036C 0012D2CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80130370 0012D2D0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80130374 0012D2D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80130378 0012D2D8  48 1E 44 D9 */	bl AsNormalized__9CVector3fCFv
/* 8013037C 0012D2DC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80130380 0012D2E0  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 80130384 0012D2E4  C0 C1 00 08 */	lfs f6, 8(r1)
/* 80130388 0012D2E8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8013038C 0012D2EC  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80130390 0012D2F0  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 80130394 0012D2F4  C0 43 00 04 */	lfs f2, 4(r3)
/* 80130398 0012D2F8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8013039C 0012D2FC  C0 02 99 64 */	lfs f0, lbl_805AB684@sda21(r2)
/* 801303A0 0012D300  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 801303A4 0012D304  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 801303A8 0012D308  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 801303AC 0012D30C  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 801303B0 0012D310  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801303B4 0012D314  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801303B8 0012D318  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801303BC 0012D31C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801303C0 0012D320  38 63 00 04 */	addi r3, r3, 4
/* 801303C4 0012D324  48 00 13 55 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801303C8:
/* 801303C8 0012D328  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801303CC 0012D32C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801303D0 0012D330  7C 08 03 A6 */	mtlr r0
/* 801303D4 0012D334  38 21 00 50 */	addi r1, r1, 0x50
/* 801303D8 0012D338  4E 80 00 20 */	blr

.global InPosition__11CFlickerBatFR13CStateManagerf
InPosition__11CFlickerBatFR13CStateManagerf:
/* 801303DC 0012D33C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801303E0 0012D340  7C 08 02 A6 */	mflr r0
/* 801303E4 0012D344  7C 85 23 78 */	mr r5, r4
/* 801303E8 0012D348  C0 22 99 60 */	lfs f1, lbl_805AB680@sda21(r2)
/* 801303EC 0012D34C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801303F0 0012D350  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801303F4 0012D354  7C 7F 1B 78 */	mr r31, r3
/* 801303F8 0012D358  38 61 00 14 */	addi r3, r1, 0x14
/* 801303FC 0012D35C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80130400 0012D360  81 84 00 00 */	lwz r12, 0(r4)
/* 80130404 0012D364  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80130408 0012D368  7D 89 03 A6 */	mtctr r12
/* 8013040C 0012D36C  4E 80 04 21 */	bctrl
/* 80130410 0012D370  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80130414 0012D374  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80130418 0012D378  C0 DF 00 48 */	lfs f6, 0x48(r31)
/* 8013041C 0012D37C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80130420 0012D380  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80130424 0012D384  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80130428 0012D388  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8013042C 0012D38C  EC A1 00 28 */	fsubs f5, f1, f0
/* 80130430 0012D390  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80130434 0012D394  EC 06 01 32 */	fmuls f0, f6, f4
/* 80130438 0012D398  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8013043C 0012D39C  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80130440 0012D3A0  EC 63 08 28 */	fsubs f3, f3, f1
/* 80130444 0012D3A4  EC 22 01 7A */	fmadds f1, f2, f5, f0
/* 80130448 0012D3A8  C0 02 99 60 */	lfs f0, lbl_805AB680@sda21(r2)
/* 8013044C 0012D3AC  D0 41 00 08 */	stfs f2, 8(r1)
/* 80130450 0012D3B0  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80130454 0012D3B4  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 80130458 0012D3B8  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8013045C 0012D3BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130460 0012D3C0  7C 00 00 26 */	mfcr r0
/* 80130464 0012D3C4  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80130468 0012D3C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8013046C 0012D3CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80130470 0012D3D0  7C 08 03 A6 */	mtlr r0
/* 80130474 0012D3D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80130478 0012D3D8  4E 80 00 20 */	blr

.global Render__11CFlickerBatCFRC13CStateManager
Render__11CFlickerBatCFRC13CStateManager:
/* 8013047C 0012D3DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80130480 0012D3E0  7C 08 02 A6 */	mflr r0
/* 80130484 0012D3E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80130488 0012D3E8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013048C 0012D3EC  7C 9F 23 78 */	mr r31, r4
/* 80130490 0012D3F0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80130494 0012D3F4  7C 7E 1B 78 */	mr r30, r3
/* 80130498 0012D3F8  88 63 05 80 */	lbz r3, 0x580(r3)
/* 8013049C 0012D3FC  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801304A0 0012D400  40 82 00 B0 */	bne lbl_80130550
/* 801304A4 0012D404  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 801304A8 0012D408  41 82 00 A8 */	beq lbl_80130550
/* 801304AC 0012D40C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 801304B0 0012D410  2C 00 00 02 */	cmpwi r0, 2
/* 801304B4 0012D414  41 82 00 0C */	beq lbl_801304C0
/* 801304B8 0012D418  2C 00 00 03 */	cmpwi r0, 3
/* 801304BC 0012D41C  40 82 00 94 */	bne lbl_80130550
lbl_801304C0:
/* 801304C0 0012D420  2C 00 00 03 */	cmpwi r0, 3
/* 801304C4 0012D424  C0 22 99 60 */	lfs f1, lbl_805AB680@sda21(r2)
/* 801304C8 0012D428  41 82 00 2C */	beq lbl_801304F4
/* 801304CC 0012D42C  40 80 00 34 */	bge lbl_80130500
/* 801304D0 0012D430  2C 00 00 02 */	cmpwi r0, 2
/* 801304D4 0012D434  40 80 00 08 */	bge lbl_801304DC
/* 801304D8 0012D438  48 00 00 28 */	b lbl_80130500
lbl_801304DC:
/* 801304DC 0012D43C  C0 3E 05 78 */	lfs f1, 0x578(r30)
/* 801304E0 0012D440  C0 02 99 6C */	lfs f0, lbl_805AB68C@sda21(r2)
/* 801304E4 0012D444  C0 42 99 68 */	lfs f2, lbl_805AB688@sda21(r2)
/* 801304E8 0012D448  EC 01 00 28 */	fsubs f0, f1, f0
/* 801304EC 0012D44C  EC 22 00 32 */	fmuls f1, f2, f0
/* 801304F0 0012D450  48 00 00 10 */	b lbl_80130500
lbl_801304F4:
/* 801304F4 0012D454  C0 22 99 68 */	lfs f1, lbl_805AB688@sda21(r2)
/* 801304F8 0012D458  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 801304FC 0012D45C  EC 21 00 32 */	fmuls f1, f1, f0
lbl_80130500:
/* 80130500 0012D460  C0 02 99 60 */	lfs f0, lbl_805AB680@sda21(r2)
/* 80130504 0012D464  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130508 0012D468  40 81 00 48 */	ble lbl_80130550
/* 8013050C 0012D46C  C0 02 99 64 */	lfs f0, lbl_805AB684@sda21(r2)
/* 80130510 0012D470  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130514 0012D474  40 80 00 3C */	bge lbl_80130550
/* 80130518 0012D478  C0 02 99 74 */	lfs f0, lbl_805AB694@sda21(r2)
/* 8013051C 0012D47C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80130520 0012D480  48 1E 48 D1 */	bl FastSinR__5CMathFf
/* 80130524 0012D484  C0 02 99 70 */	lfs f0, lbl_805AB690@sda21(r2)
/* 80130528 0012D488  7F E3 FB 78 */	mr r3, r31
/* 8013052C 0012D48C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80130530 0012D490  38 81 00 14 */	addi r4, r1, 0x14
/* 80130534 0012D494  EC 20 00 72 */	fmuls f1, f0, f1
/* 80130538 0012D498  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8013053C 0012D49C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80130540 0012D4A0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80130544 0012D4A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80130548 0012D4A8  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8013054C 0012D4AC  4B F1 4E B1 */	bl DrawSpaceWarp__13CStateManagerCFRC9CVector3ff
lbl_80130550:
/* 80130550 0012D4B0  88 1E 05 80 */	lbz r0, 0x580(r30)
/* 80130554 0012D4B4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80130558 0012D4B8  41 82 00 40 */	beq lbl_80130598
/* 8013055C 0012D4BC  80 1E 00 04 */	lwz r0, 4(r30)
/* 80130560 0012D4C0  7F E3 FB 78 */	mr r3, r31
/* 80130564 0012D4C4  38 81 00 0C */	addi r4, r1, 0xc
/* 80130568 0012D4C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8013056C 0012D4CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80130570 0012D4D0  4B F1 67 A9 */	bl sub_80046d18
/* 80130574 0012D4D4  7F C3 F3 78 */	mr r3, r30
/* 80130578 0012D4D8  7F E4 FB 78 */	mr r4, r31
/* 8013057C 0012D4DC  4B F4 7A B1 */	bl Render__10CPatternedCFRC13CStateManager
/* 80130580 0012D4E0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80130584 0012D4E4  7F E3 FB 78 */	mr r3, r31
/* 80130588 0012D4E8  38 81 00 08 */	addi r4, r1, 8
/* 8013058C 0012D4EC  90 01 00 08 */	stw r0, 8(r1)
/* 80130590 0012D4F0  4B F1 67 F1 */	bl SetupFogForArea__13CStateManagerCF7TAreaId
/* 80130594 0012D4F4  48 00 00 10 */	b lbl_801305A4
lbl_80130598:
/* 80130598 0012D4F8  7F C3 F3 78 */	mr r3, r30
/* 8013059C 0012D4FC  7F E4 FB 78 */	mr r4, r31
/* 801305A0 0012D500  4B F4 7A 8D */	bl Render__10CPatternedCFRC13CStateManager
lbl_801305A4:
/* 801305A4 0012D504  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801305A8 0012D508  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801305AC 0012D50C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801305B0 0012D510  7C 08 03 A6 */	mtlr r0
/* 801305B4 0012D514  38 21 00 30 */	addi r1, r1, 0x30
/* 801305B8 0012D518  4E 80 00 20 */	blr

.global Patrol__11CFlickerBatFR13CStateManager9EStateMsgf
Patrol__11CFlickerBatFR13CStateManager9EStateMsgf:
/* 801305BC 0012D51C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801305C0 0012D520  7C 08 02 A6 */	mflr r0
/* 801305C4 0012D524  90 01 00 34 */	stw r0, 0x34(r1)
/* 801305C8 0012D528  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801305CC 0012D52C  7C 7F 1B 78 */	mr r31, r3
/* 801305D0 0012D530  48 0C 68 A5 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 801305D4 0012D534  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 801305D8 0012D538  38 61 00 14 */	addi r3, r1, 0x14
/* 801305DC 0012D53C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801305E0 0012D540  38 81 00 08 */	addi r4, r1, 8
/* 801305E4 0012D544  C0 7F 02 E8 */	lfs f3, 0x2e8(r31)
/* 801305E8 0012D548  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801305EC 0012D54C  EC 81 00 28 */	fsubs f4, f1, f0
/* 801305F0 0012D550  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 801305F4 0012D554  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801305F8 0012D558  EC 43 10 28 */	fsubs f2, f3, f2
/* 801305FC 0012D55C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80130600 0012D560  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80130604 0012D564  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80130608 0012D568  D0 01 00 08 */	stfs f0, 8(r1)
/* 8013060C 0012D56C  48 1E 42 45 */	bl AsNormalized__9CVector3fCFv
/* 80130610 0012D570  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80130614 0012D574  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80130618 0012D578  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8013061C 0012D57C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80130620 0012D580  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80130624 0012D584  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80130628 0012D588  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8013062C 0012D58C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80130630 0012D590  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80130634 0012D594  7C 08 03 A6 */	mtlr r0
/* 80130638 0012D598  38 21 00 30 */	addi r1, r1, 0x30
/* 8013063C 0012D59C  4E 80 00 20 */	blr

.global Shuffle__11CFlickerBatFR13CStateManager9EStateMsgf
Shuffle__11CFlickerBatFR13CStateManager9EStateMsgf:
/* 80130640 0012D5A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80130644 0012D5A4  7C 08 02 A6 */	mflr r0
/* 80130648 0012D5A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013064C 0012D5AC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80130650 0012D5B0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80130654 0012D5B4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80130658 0012D5B8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8013065C 0012D5BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80130660 0012D5C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80130664 0012D5C4  2C 05 00 01 */	cmpwi r5, 1
/* 80130668 0012D5C8  7C 7E 1B 78 */	mr r30, r3
/* 8013066C 0012D5CC  41 82 00 8C */	beq lbl_801306F8
/* 80130670 0012D5D0  40 80 00 8C */	bge lbl_801306FC
/* 80130674 0012D5D4  2C 05 00 00 */	cmpwi r5, 0
/* 80130678 0012D5D8  40 80 00 0C */	bge lbl_80130684
/* 8013067C 0012D5DC  48 00 00 80 */	b lbl_801306FC
/* 80130680 0012D5E0  48 00 00 7C */	b lbl_801306FC
lbl_80130684:
/* 80130684 0012D5E4  83 E4 09 00 */	lwz r31, 0x900(r4)
/* 80130688 0012D5E8  7F E3 FB 78 */	mr r3, r31
/* 8013068C 0012D5EC  48 1E 1E 51 */	bl Float__9CRandom16Fv
/* 80130690 0012D5F0  C0 42 99 78 */	lfs f2, lbl_805AB698@sda21(r2)
/* 80130694 0012D5F4  7F E3 FB 78 */	mr r3, r31
/* 80130698 0012D5F8  C0 02 99 7C */	lfs f0, lbl_805AB69C@sda21(r2)
/* 8013069C 0012D5FC  EF C2 00 78 */	fmsubs f30, f2, f1, f0
/* 801306A0 0012D600  48 1E 1E 3D */	bl Float__9CRandom16Fv
/* 801306A4 0012D604  C0 42 99 78 */	lfs f2, lbl_805AB698@sda21(r2)
/* 801306A8 0012D608  7F E3 FB 78 */	mr r3, r31
/* 801306AC 0012D60C  C0 02 99 7C */	lfs f0, lbl_805AB69C@sda21(r2)
/* 801306B0 0012D610  EF E2 00 78 */	fmsubs f31, f2, f1, f0
/* 801306B4 0012D614  48 1E 1E 29 */	bl Float__9CRandom16Fv
/* 801306B8 0012D618  C0 82 99 78 */	lfs f4, lbl_805AB698@sda21(r2)
/* 801306BC 0012D61C  7F C3 F3 78 */	mr r3, r30
/* 801306C0 0012D620  C0 02 99 7C */	lfs f0, lbl_805AB69C@sda21(r2)
/* 801306C4 0012D624  38 81 00 08 */	addi r4, r1, 8
/* 801306C8 0012D628  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801306CC 0012D62C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801306D0 0012D630  EC 84 00 78 */	fmsubs f4, f4, f1, f0
/* 801306D4 0012D634  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801306D8 0012D638  EC 63 F8 2A */	fadds f3, f3, f31
/* 801306DC 0012D63C  EC 22 F0 2A */	fadds f1, f2, f30
/* 801306E0 0012D640  EC 00 20 2A */	fadds f0, f0, f4
/* 801306E4 0012D644  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801306E8 0012D648  D0 01 00 08 */	stfs f0, 8(r1)
/* 801306EC 0012D64C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801306F0 0012D650  4B F4 C4 6D */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801306F4 0012D654  48 00 00 08 */	b lbl_801306FC
lbl_801306F8:
/* 801306F8 0012D658  48 0C 4F 59 */	bl ApproachDest__10CPatternedFR13CStateManager
lbl_801306FC:
/* 801306FC 0012D65C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80130700 0012D660  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80130704 0012D664  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80130708 0012D668  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8013070C 0012D66C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80130710 0012D670  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80130714 0012D674  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80130718 0012D678  7C 08 03 A6 */	mtlr r0
/* 8013071C 0012D67C  38 21 00 40 */	addi r1, r1, 0x40
/* 80130720 0012D680  4E 80 00 20 */	blr

.global Taunt__11CFlickerBatFR13CStateManager9EStateMsgf
Taunt__11CFlickerBatFR13CStateManager9EStateMsgf:
/* 80130724 0012D684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130728 0012D688  7C 08 02 A6 */	mflr r0
/* 8013072C 0012D68C  2C 05 00 00 */	cmpwi r5, 0
/* 80130730 0012D690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130734 0012D694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130738 0012D698  7C 7F 1B 78 */	mr r31, r3
/* 8013073C 0012D69C  41 82 00 0C */	beq lbl_80130748
/* 80130740 0012D6A0  41 80 00 1C */	blt lbl_8013075C
/* 80130744 0012D6A4  48 00 00 18 */	b lbl_8013075C
lbl_80130748:
/* 80130748 0012D6A8  48 00 00 61 */	bl NotifyNeighbors__11CFlickerBatFR13CStateManager
/* 8013074C 0012D6AC  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 80130750 0012D6B0  38 60 00 00 */	li r3, 0
/* 80130754 0012D6B4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80130758 0012D6B8  98 1F 04 00 */	stb r0, 0x400(r31)
lbl_8013075C:
/* 8013075C 0012D6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130760 0012D6C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130764 0012D6C4  7C 08 03 A6 */	mtlr r0
/* 80130768 0012D6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8013076C 0012D6CC  4E 80 00 20 */	blr

.global HearShot__11CFlickerBatFR13CStateManagerf
HearShot__11CFlickerBatFR13CStateManagerf:
/* 80130770 0012D6D0  88 83 05 80 */	lbz r4, 0x580(r3)
/* 80130774 0012D6D4  54 80 D7 FF */	rlwinm. r0, r4, 0x1a, 0x1f, 0x1f
/* 80130778 0012D6D8  41 82 00 18 */	beq lbl_80130790
/* 8013077C 0012D6DC  38 00 00 00 */	li r0, 0
/* 80130780 0012D6E0  50 04 36 72 */	rlwimi r4, r0, 6, 0x19, 0x19
/* 80130784 0012D6E4  98 83 05 80 */	stb r4, 0x580(r3)
/* 80130788 0012D6E8  38 60 00 01 */	li r3, 1
/* 8013078C 0012D6EC  4E 80 00 20 */	blr
lbl_80130790:
/* 80130790 0012D6F0  38 60 00 00 */	li r3, 0
/* 80130794 0012D6F4  4E 80 00 20 */	blr

.global SetHeardShot__11CFlickerBatFb
SetHeardShot__11CFlickerBatFb:
/* 80130798 0012D6F8  88 03 05 80 */	lbz r0, 0x580(r3)
/* 8013079C 0012D6FC  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801307A0 0012D700  98 03 05 80 */	stb r0, 0x580(r3)
/* 801307A4 0012D704  4E 80 00 20 */	blr

.global NotifyNeighbors__11CFlickerBatFR13CStateManager
NotifyNeighbors__11CFlickerBatFR13CStateManager:
/* 801307A8 0012D708  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801307AC 0012D70C  7C 08 02 A6 */	mflr r0
/* 801307B0 0012D710  90 01 00 64 */	stw r0, 0x64(r1)
/* 801307B4 0012D714  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801307B8 0012D718  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801307BC 0012D71C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801307C0 0012D720  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 801307C4 0012D724  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 801307C8 0012D728  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 801307CC 0012D72C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801307D0 0012D730  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801307D4 0012D734  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801307D8 0012D738  7C 9D 23 78 */	mr r29, r4
/* 801307DC 0012D73C  C3 E3 00 40 */	lfs f31, 0x40(r3)
/* 801307E0 0012D740  3B FD 0F 3C */	addi r31, r29, 0xf3c
/* 801307E4 0012D744  C3 C3 00 50 */	lfs f30, 0x50(r3)
/* 801307E8 0012D748  C3 A3 00 60 */	lfs f29, 0x60(r3)
/* 801307EC 0012D74C  83 C4 0F 40 */	lwz r30, 0xf40(r4)
/* 801307F0 0012D750  48 00 00 94 */	b lbl_80130884
lbl_801307F4:
/* 801307F4 0012D754  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801307F8 0012D758  7F A3 EB 78 */	mr r3, r29
/* 801307FC 0012D75C  38 81 00 08 */	addi r4, r1, 8
/* 80130800 0012D760  B0 01 00 08 */	sth r0, 8(r1)
/* 80130804 0012D764  4B F1 BD 71 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80130808 0012D768  7C 64 1B 78 */	mr r4, r3
/* 8013080C 0012D76C  38 61 00 0C */	addi r3, r1, 0xc
/* 80130810 0012D770  4B F7 4D 61 */	bl sub_800a5570
/* 80130814 0012D774  4B F7 4D 31 */	bl "CastTo<11CFlickerBat>__10CPatternedFP7CEntity"
/* 80130818 0012D778  28 03 00 00 */	cmplwi r3, 0
/* 8013081C 0012D77C  40 82 00 18 */	bne lbl_80130834
/* 80130820 0012D780  7F E3 FB 78 */	mr r3, r31
/* 80130824 0012D784  7F C4 F3 78 */	mr r4, r30
/* 80130828 0012D788  4B FF C6 49 */	bl "erase__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRCQ34rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>8iterator"
/* 8013082C 0012D78C  7C 7E 1B 78 */	mr r30, r3
/* 80130830 0012D790  48 00 00 54 */	b lbl_80130884
lbl_80130834:
/* 80130834 0012D794  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80130838 0012D798  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8013083C 0012D79C  EC BE 08 28 */	fsubs f5, f30, f1
/* 80130840 0012D7A0  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 80130844 0012D7A4  EC 7F 00 28 */	fsubs f3, f31, f0
/* 80130848 0012D7A8  C0 02 99 78 */	lfs f0, lbl_805AB698@sda21(r2)
/* 8013084C 0012D7AC  EC 9D 08 28 */	fsubs f4, f29, f1
/* 80130850 0012D7B0  EC 25 01 72 */	fmuls f1, f5, f5
/* 80130854 0012D7B4  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80130858 0012D7B8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8013085C 0012D7BC  EC 64 01 32 */	fmuls f3, f4, f4
/* 80130860 0012D7C0  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80130864 0012D7C4  EC 22 08 2A */	fadds f1, f2, f1
/* 80130868 0012D7C8  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8013086C 0012D7CC  EC 23 08 2A */	fadds f1, f3, f1
/* 80130870 0012D7D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130874 0012D7D4  40 80 00 0C */	bge lbl_80130880
/* 80130878 0012D7D8  38 80 00 01 */	li r4, 1
/* 8013087C 0012D7DC  4B FF FF 1D */	bl SetHeardShot__11CFlickerBatFb
lbl_80130880:
/* 80130880 0012D7E0  83 DE 00 04 */	lwz r30, 4(r30)
lbl_80130884:
/* 80130884 0012D7E4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80130888 0012D7E8  7C 1E 00 40 */	cmplw r30, r0
/* 8013088C 0012D7EC  40 82 FF 68 */	bne lbl_801307F4
/* 80130890 0012D7F0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80130894 0012D7F4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80130898 0012D7F8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8013089C 0012D7FC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801308A0 0012D800  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 801308A4 0012D804  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 801308A8 0012D808  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801308AC 0012D80C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801308B0 0012D810  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801308B4 0012D814  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801308B8 0012D818  7C 08 03 A6 */	mtlr r0
/* 801308BC 0012D81C  38 21 00 60 */	addi r1, r1, 0x60
/* 801308C0 0012D820  4E 80 00 20 */	blr

.global CanBeShot__11CFlickerBatFRC13CStateManageri
CanBeShot__11CFlickerBatFRC13CStateManageri:
/* 801308C4 0012D824  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801308C8 0012D828  7C 08 02 A6 */	mflr r0
/* 801308CC 0012D82C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801308D0 0012D830  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801308D4 0012D834  3B E0 00 00 */	li r31, 0
/* 801308D8 0012D838  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801308DC 0012D83C  3B C0 00 01 */	li r30, 1
/* 801308E0 0012D840  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801308E4 0012D844  7C 9D 23 78 */	mr r29, r4
/* 801308E8 0012D848  93 81 00 10 */	stw r28, 0x10(r1)
/* 801308EC 0012D84C  7C 7C 1B 78 */	mr r28, r3
/* 801308F0 0012D850  48 00 07 25 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 801308F4 0012D854  2C 03 00 00 */	cmpwi r3, 0
/* 801308F8 0012D858  41 82 00 14 */	beq lbl_8013090C
/* 801308FC 0012D85C  7F 83 E3 78 */	mr r3, r28
/* 80130900 0012D860  48 00 07 15 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130904 0012D864  2C 03 00 02 */	cmpwi r3, 2
/* 80130908 0012D868  40 82 00 08 */	bne lbl_80130910
lbl_8013090C:
/* 8013090C 0012D86C  3B E0 00 01 */	li r31, 1
lbl_80130910:
/* 80130910 0012D870  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80130914 0012D874  40 82 00 1C */	bne lbl_80130930
/* 80130918 0012D878  80 7D 08 B8 */	lwz r3, 0x8b8(r29)
/* 8013091C 0012D87C  80 63 00 00 */	lwz r3, 0(r3)
/* 80130920 0012D880  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80130924 0012D884  2C 00 00 01 */	cmpwi r0, 1
/* 80130928 0012D888  41 82 00 08 */	beq lbl_80130930
/* 8013092C 0012D88C  3B C0 00 00 */	li r30, 0
lbl_80130930:
/* 80130930 0012D890  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80130934 0012D894  7F C3 F3 78 */	mr r3, r30
/* 80130938 0012D898  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013093C 0012D89C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80130940 0012D8A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80130944 0012D8A4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80130948 0012D8A8  7C 08 03 A6 */	mtlr r0
/* 8013094C 0012D8AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80130950 0012D8B0  4E 80 00 20 */	blr

.global Touch__11CFlickerBatFR6CActorR13CStateManager
Touch__11CFlickerBatFR6CActorR13CStateManager:
/* 80130954 0012D8B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80130958 0012D8B8  7C 08 02 A6 */	mflr r0
/* 8013095C 0012D8BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80130960 0012D8C0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80130964 0012D8C4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80130968 0012D8C8  7C BE 2B 78 */	mr r30, r5
/* 8013096C 0012D8CC  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80130970 0012D8D0  7C 9D 23 78 */	mr r29, r4
/* 80130974 0012D8D4  93 81 00 60 */	stw r28, 0x60(r1)
/* 80130978 0012D8D8  7C 7C 1B 78 */	mr r28, r3
/* 8013097C 0012D8DC  38 61 00 20 */	addi r3, r1, 0x20
/* 80130980 0012D8E0  4B F7 BA 81 */	bl "__ct__20TCastToPtr<7CPlayer>FR7CEntity"
/* 80130984 0012D8E4  83 E3 00 04 */	lwz r31, 4(r3)
/* 80130988 0012D8E8  28 1F 00 00 */	cmplwi r31, 0
/* 8013098C 0012D8EC  41 82 00 AC */	beq lbl_80130A38
/* 80130990 0012D8F0  C0 3C 04 20 */	lfs f1, 0x420(r28)
/* 80130994 0012D8F4  C0 02 99 60 */	lfs f0, lbl_805AB680@sda21(r2)
/* 80130998 0012D8F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013099C 0012D8FC  4C 40 13 82 */	cror 2, 0, 2
/* 801309A0 0012D900  40 82 00 98 */	bne lbl_80130A38
/* 801309A4 0012D904  80 AD 8B 30 */	lwz r5, lbl_805A76F0@sda21(r13)
/* 801309A8 0012D908  38 60 00 00 */	li r3, 0
/* 801309AC 0012D90C  38 80 00 01 */	li r4, 1
/* 801309B0 0012D910  48 25 95 45 */	bl __shl2i
/* 801309B4 0012D914  38 A0 00 00 */	li r5, 0
/* 801309B8 0012D918  38 00 00 03 */	li r0, 3
/* 801309BC 0012D91C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 801309C0 0012D920  7F 84 E3 78 */	mr r4, r28
/* 801309C4 0012D924  90 61 00 28 */	stw r3, 0x28(r1)
/* 801309C8 0012D928  38 61 00 40 */	addi r3, r1, 0x40
/* 801309CC 0012D92C  90 A1 00 34 */	stw r5, 0x34(r1)
/* 801309D0 0012D930  90 A1 00 30 */	stw r5, 0x30(r1)
/* 801309D4 0012D934  90 01 00 38 */	stw r0, 0x38(r1)
/* 801309D8 0012D938  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801309DC 0012D93C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801309E0 0012D940  A0 BF 00 08 */	lhz r5, 8(r31)
/* 801309E4 0012D944  B0 01 00 08 */	sth r0, 8(r1)
/* 801309E8 0012D948  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 801309EC 0012D94C  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801309F0 0012D950  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 801309F4 0012D954  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801309F8 0012D958  81 9C 00 00 */	lwz r12, 0(r28)
/* 801309FC 0012D95C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80130A00 0012D960  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 80130A04 0012D964  7D 89 03 A6 */	mtctr r12
/* 80130A08 0012D968  4E 80 04 21 */	bctrl
/* 80130A0C 0012D96C  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80130A10 0012D970  7F C3 F3 78 */	mr r3, r30
/* 80130A14 0012D974  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 80130A18 0012D978  38 A1 00 14 */	addi r5, r1, 0x14
/* 80130A1C 0012D97C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80130A20 0012D980  38 C1 00 0C */	addi r6, r1, 0xc
/* 80130A24 0012D984  38 E1 00 40 */	addi r7, r1, 0x40
/* 80130A28 0012D988  39 01 00 28 */	addi r8, r1, 0x28
/* 80130A2C 0012D98C  4B F1 96 75 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80130A30 0012D990  C0 1C 04 24 */	lfs f0, 0x424(r28)
/* 80130A34 0012D994  D0 1C 04 20 */	stfs f0, 0x420(r28)
lbl_80130A38:
/* 80130A38 0012D998  7F 83 E3 78 */	mr r3, r28
/* 80130A3C 0012D99C  7F A4 EB 78 */	mr r4, r29
/* 80130A40 0012D9A0  7F C5 F3 78 */	mr r5, r30
/* 80130A44 0012D9A4  4B F4 90 5D */	bl Touch__10CPatternedFR6CActorR13CStateManager
/* 80130A48 0012D9A8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80130A4C 0012D9AC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80130A50 0012D9B0  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80130A54 0012D9B4  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80130A58 0012D9B8  83 81 00 60 */	lwz r28, 0x60(r1)
/* 80130A5C 0012D9BC  7C 08 03 A6 */	mtlr r0
/* 80130A60 0012D9C0  38 21 00 70 */	addi r1, r1, 0x70
/* 80130A64 0012D9C4  4E 80 00 20 */	blr

.global Think__11CFlickerBatFfR13CStateManager
Think__11CFlickerBatFfR13CStateManager:
/* 80130A68 0012D9C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80130A6C 0012D9CC  7C 08 02 A6 */	mflr r0
/* 80130A70 0012D9D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80130A74 0012D9D4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80130A78 0012D9D8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80130A7C 0012D9DC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80130A80 0012D9E0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80130A84 0012D9E4  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80130A88 0012D9E8  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 80130A8C 0012D9EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80130A90 0012D9F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80130A94 0012D9F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80130A98 0012D9F8  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80130A9C 0012D9FC  FF A0 08 90 */	fmr f29, f1
/* 80130AA0 0012DA00  7C 7E 1B 78 */	mr r30, r3
/* 80130AA4 0012DA04  7C 9F 23 78 */	mr r31, r4
/* 80130AA8 0012DA08  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80130AAC 0012DA0C  41 82 02 48 */	beq lbl_80130CF4
/* 80130AB0 0012DA10  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80130AB4 0012DA14  80 63 00 00 */	lwz r3, 0(r3)
/* 80130AB8 0012DA18  4B F6 0A A1 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80130ABC 0012DA1C  20 83 00 01 */	subfic r4, r3, 1
/* 80130AC0 0012DA20  38 03 FF FF */	addi r0, r3, -1
/* 80130AC4 0012DA24  7C 83 03 78 */	or r3, r4, r0
/* 80130AC8 0012DA28  88 1E 04 02 */	lbz r0, 0x402(r30)
/* 80130ACC 0012DA2C  54 64 0F FE */	srwi r4, r3, 0x1f
/* 80130AD0 0012DA30  7F C3 F3 78 */	mr r3, r30
/* 80130AD4 0012DA34  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80130AD8 0012DA38  98 1E 04 02 */	stb r0, 0x402(r30)
/* 80130ADC 0012DA3C  48 00 05 39 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130AE0 0012DA40  2C 03 00 02 */	cmpwi r3, 2
/* 80130AE4 0012DA44  41 82 00 14 */	beq lbl_80130AF8
/* 80130AE8 0012DA48  7F C3 F3 78 */	mr r3, r30
/* 80130AEC 0012DA4C  48 00 05 29 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130AF0 0012DA50  2C 03 00 03 */	cmpwi r3, 3
/* 80130AF4 0012DA54  40 82 00 58 */	bne lbl_80130B4C
lbl_80130AF8:
/* 80130AF8 0012DA58  C0 3E 05 78 */	lfs f1, 0x578(r30)
/* 80130AFC 0012DA5C  C0 02 99 60 */	lfs f0, lbl_805AB680@sda21(r2)
/* 80130B00 0012DA60  EC 21 E8 28 */	fsubs f1, f1, f29
/* 80130B04 0012DA64  D0 3E 05 78 */	stfs f1, 0x578(r30)
/* 80130B08 0012DA68  C0 3E 05 78 */	lfs f1, 0x578(r30)
/* 80130B0C 0012DA6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130B10 0012DA70  4C 40 13 82 */	cror 2, 0, 2
/* 80130B14 0012DA74  40 82 00 38 */	bne lbl_80130B4C
/* 80130B18 0012DA78  7F C3 F3 78 */	mr r3, r30
/* 80130B1C 0012DA7C  48 00 04 F9 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130B20 0012DA80  2C 03 00 02 */	cmpwi r3, 2
/* 80130B24 0012DA84  40 82 00 18 */	bne lbl_80130B3C
/* 80130B28 0012DA88  7F C3 F3 78 */	mr r3, r30
/* 80130B2C 0012DA8C  7F E5 FB 78 */	mr r5, r31
/* 80130B30 0012DA90  38 80 00 00 */	li r4, 0
/* 80130B34 0012DA94  48 00 04 E9 */	bl SetFlickerBatState__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager
/* 80130B38 0012DA98  48 00 00 14 */	b lbl_80130B4C
lbl_80130B3C:
/* 80130B3C 0012DA9C  7F C3 F3 78 */	mr r3, r30
/* 80130B40 0012DAA0  7F E5 FB 78 */	mr r5, r31
/* 80130B44 0012DAA4  38 80 00 01 */	li r4, 1
/* 80130B48 0012DAA8  48 00 04 D5 */	bl SetFlickerBatState__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager
lbl_80130B4C:
/* 80130B4C 0012DAAC  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80130B50 0012DAB0  88 1E 05 80 */	lbz r0, 0x580(r30)
/* 80130B54 0012DAB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80130B58 0012DAB8  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80130B5C 0012DABC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80130B60 0012DAC0  20 63 00 01 */	subfic r3, r3, 1
/* 80130B64 0012DAC4  7C 64 00 34 */	cntlzw r4, r3
/* 80130B68 0012DAC8  54 83 DE 3E */	rlwinm r3, r4, 0x1b, 0x18, 0x1f
/* 80130B6C 0012DACC  7C 03 00 40 */	cmplw r3, r0
/* 80130B70 0012DAD0  54 9D D9 7E */	srwi r29, r4, 5
/* 80130B74 0012DAD4  41 82 00 98 */	beq lbl_80130C0C
/* 80130B78 0012DAD8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80130B7C 0012DADC  41 82 00 44 */	beq lbl_80130BC0
/* 80130B80 0012DAE0  7F C3 F3 78 */	mr r3, r30
/* 80130B84 0012DAE4  48 00 04 91 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130B88 0012DAE8  2C 03 00 01 */	cmpwi r3, 1
/* 80130B8C 0012DAEC  40 82 00 24 */	bne lbl_80130BB0
/* 80130B90 0012DAF0  7F C3 F3 78 */	mr r3, r30
/* 80130B94 0012DAF4  7F E6 FB 78 */	mr r6, r31
/* 80130B98 0012DAF8  38 80 00 28 */	li r4, 0x28
/* 80130B9C 0012DAFC  38 A0 00 29 */	li r5, 0x29
/* 80130BA0 0012DB00  4B F2 37 15 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80130BA4 0012DB04  7F C3 F3 78 */	mr r3, r30
/* 80130BA8 0012DB08  38 80 00 00 */	li r4, 0
/* 80130BAC 0012DB0C  4B F2 28 41 */	bl SetMuted__6CActorFb
lbl_80130BB0:
/* 80130BB0 0012DB10  7F C3 F3 78 */	mr r3, r30
/* 80130BB4 0012DB14  38 80 00 00 */	li r4, 0
/* 80130BB8 0012DB18  4B F2 21 B5 */	bl CreateShadow__6CActorFb
/* 80130BBC 0012DB1C  48 00 00 44 */	b lbl_80130C00
lbl_80130BC0:
/* 80130BC0 0012DB20  7F C3 F3 78 */	mr r3, r30
/* 80130BC4 0012DB24  48 00 04 51 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130BC8 0012DB28  2C 03 00 01 */	cmpwi r3, 1
/* 80130BCC 0012DB2C  40 82 00 28 */	bne lbl_80130BF4
/* 80130BD0 0012DB30  7F C3 F3 78 */	mr r3, r30
/* 80130BD4 0012DB34  7F E6 FB 78 */	mr r6, r31
/* 80130BD8 0012DB38  38 80 00 28 */	li r4, 0x28
/* 80130BDC 0012DB3C  38 A0 00 29 */	li r5, 0x29
/* 80130BE0 0012DB40  4B F2 32 F5 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80130BE4 0012DB44  7F C3 F3 78 */	mr r3, r30
/* 80130BE8 0012DB48  38 80 00 01 */	li r4, 1
/* 80130BEC 0012DB4C  4B F2 28 01 */	bl SetMuted__6CActorFb
/* 80130BF0 0012DB50  48 00 00 10 */	b lbl_80130C00
lbl_80130BF4:
/* 80130BF4 0012DB54  7F C3 F3 78 */	mr r3, r30
/* 80130BF8 0012DB58  38 80 00 01 */	li r4, 1
/* 80130BFC 0012DB5C  4B F2 21 71 */	bl CreateShadow__6CActorFb
lbl_80130C00:
/* 80130C00 0012DB60  88 1E 05 80 */	lbz r0, 0x580(r30)
/* 80130C04 0012DB64  53 A0 3E 30 */	rlwimi r0, r29, 7, 0x18, 0x18
/* 80130C08 0012DB68  98 1E 05 80 */	stb r0, 0x580(r30)
lbl_80130C0C:
/* 80130C0C 0012DB6C  88 1E 05 80 */	lbz r0, 0x580(r30)
/* 80130C10 0012DB70  C3 C2 99 60 */	lfs f30, lbl_805AB680@sda21(r2)
/* 80130C14 0012DB74  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80130C18 0012DB78  40 82 00 14 */	bne lbl_80130C2C
/* 80130C1C 0012DB7C  7F C3 F3 78 */	mr r3, r30
/* 80130C20 0012DB80  48 00 03 F5 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130C24 0012DB84  2C 03 00 00 */	cmpwi r3, 0
/* 80130C28 0012DB88  40 82 00 0C */	bne lbl_80130C34
lbl_80130C2C:
/* 80130C2C 0012DB8C  C3 C2 99 64 */	lfs f30, lbl_805AB684@sda21(r2)
/* 80130C30 0012DB90  48 00 00 48 */	b lbl_80130C78
lbl_80130C34:
/* 80130C34 0012DB94  7F C3 F3 78 */	mr r3, r30
/* 80130C38 0012DB98  48 00 03 DD */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130C3C 0012DB9C  2C 03 00 02 */	cmpwi r3, 2
/* 80130C40 0012DBA0  41 82 00 14 */	beq lbl_80130C54
/* 80130C44 0012DBA4  7F C3 F3 78 */	mr r3, r30
/* 80130C48 0012DBA8  48 00 03 CD */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130C4C 0012DBAC  2C 03 00 03 */	cmpwi r3, 3
/* 80130C50 0012DBB0  40 82 00 28 */	bne lbl_80130C78
lbl_80130C54:
/* 80130C54 0012DBB4  C0 3E 05 78 */	lfs f1, 0x578(r30)
/* 80130C58 0012DBB8  7F C3 F3 78 */	mr r3, r30
/* 80130C5C 0012DBBC  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80130C60 0012DBC0  EF C1 00 32 */	fmuls f30, f1, f0
/* 80130C64 0012DBC4  48 00 03 B1 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80130C68 0012DBC8  2C 03 00 02 */	cmpwi r3, 2
/* 80130C6C 0012DBCC  40 82 00 0C */	bne lbl_80130C78
/* 80130C70 0012DBD0  C0 02 99 64 */	lfs f0, lbl_805AB684@sda21(r2)
/* 80130C74 0012DBD4  EF C0 F0 28 */	fsubs f30, f0, f30
lbl_80130C78:
/* 80130C78 0012DBD8  C0 02 99 80 */	lfs f0, lbl_805AB6A0@sda21(r2)
/* 80130C7C 0012DBDC  EF E0 07 B2 */	fmuls f31, f0, f30
/* 80130C80 0012DBE0  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 80130C84 0012DBE4  FC 20 F0 90 */	fmr f1, f30
/* 80130C88 0012DBE8  88 01 00 08 */	lbz r0, 8(r1)
/* 80130C8C 0012DBEC  98 1E 04 2F */	stb r0, 0x42f(r30)
/* 80130C90 0012DBF0  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 80130C94 0012DBF4  4B FD 50 75 */	bl SetUserAlpha__13CSimpleShadowFf
/* 80130C98 0012DBF8  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80130C9C 0012DBFC  38 80 00 01 */	li r4, 1
/* 80130CA0 0012DC00  80 63 00 00 */	lwz r3, 0(r3)
/* 80130CA4 0012DC04  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80130CA8 0012DC08  2C 03 00 01 */	cmpwi r3, 1
/* 80130CAC 0012DC0C  41 82 00 2C */	beq lbl_80130CD8
/* 80130CB0 0012DC10  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80130CB4 0012DC14  38 A0 00 00 */	li r5, 0
/* 80130CB8 0012DC18  2C 00 00 00 */	cmpwi r0, 0
/* 80130CBC 0012DC1C  40 82 00 10 */	bne lbl_80130CCC
/* 80130CC0 0012DC20  2C 03 00 02 */	cmpwi r3, 2
/* 80130CC4 0012DC24  40 82 00 08 */	bne lbl_80130CCC
/* 80130CC8 0012DC28  7C 85 23 78 */	mr r5, r4
lbl_80130CCC:
/* 80130CCC 0012DC2C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80130CD0 0012DC30  40 82 00 08 */	bne lbl_80130CD8
/* 80130CD4 0012DC34  38 80 00 00 */	li r4, 0
lbl_80130CD8:
/* 80130CD8 0012DC38  88 1E 00 E7 */	lbz r0, 0xe7(r30)
/* 80130CDC 0012DC3C  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80130CE0 0012DC40  FC 20 E8 90 */	fmr f1, f29
/* 80130CE4 0012DC44  7F C3 F3 78 */	mr r3, r30
/* 80130CE8 0012DC48  98 1E 00 E7 */	stb r0, 0xe7(r30)
/* 80130CEC 0012DC4C  7F E4 FB 78 */	mr r4, r31
/* 80130CF0 0012DC50  4B F4 8E 29 */	bl Think__10CPatternedFfR13CStateManager
lbl_80130CF4:
/* 80130CF4 0012DC54  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80130CF8 0012DC58  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80130CFC 0012DC5C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80130D00 0012DC60  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80130D04 0012DC64  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 80130D08 0012DC68  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80130D0C 0012DC6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80130D10 0012DC70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80130D14 0012DC74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80130D18 0012DC78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80130D1C 0012DC7C  7C 08 03 A6 */	mtlr r0
/* 80130D20 0012DC80  38 21 00 50 */	addi r1, r1, 0x50
/* 80130D24 0012DC84  4E 80 00 20 */	blr

.global Death__11CFlickerBatFRC9CVector3fR13CStateManager
Death__11CFlickerBatFRC9CVector3fR13CStateManager:
/* 80130D28 0012DC88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80130D2C 0012DC8C  7C 08 02 A6 */	mflr r0
/* 80130D30 0012DC90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80130D34 0012DC94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80130D38 0012DC98  7C DF 33 78 */	mr r31, r6
/* 80130D3C 0012DC9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80130D40 0012DCA0  7C BE 2B 78 */	mr r30, r5
/* 80130D44 0012DCA4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80130D48 0012DCA8  7C 9D 23 78 */	mr r29, r4
/* 80130D4C 0012DCAC  7F A5 EB 78 */	mr r5, r29
/* 80130D50 0012DCB0  38 80 00 00 */	li r4, 0
/* 80130D54 0012DCB4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80130D58 0012DCB8  7C 7C 1B 78 */	mr r28, r3
/* 80130D5C 0012DCBC  48 00 02 C1 */	bl SetFlickerBatState__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager
/* 80130D60 0012DCC0  7F 83 E3 78 */	mr r3, r28
/* 80130D64 0012DCC4  38 80 00 00 */	li r4, 0
/* 80130D68 0012DCC8  4B F2 26 85 */	bl SetMuted__6CActorFb
/* 80130D6C 0012DCCC  7F 83 E3 78 */	mr r3, r28
/* 80130D70 0012DCD0  7F A4 EB 78 */	mr r4, r29
/* 80130D74 0012DCD4  7F C5 F3 78 */	mr r5, r30
/* 80130D78 0012DCD8  7F E6 FB 78 */	mr r6, r31
/* 80130D7C 0012DCDC  4B F4 A6 29 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 80130D80 0012DCE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80130D84 0012DCE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80130D88 0012DCE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80130D8C 0012DCEC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80130D90 0012DCF0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80130D94 0012DCF4  7C 08 03 A6 */	mtlr r0
/* 80130D98 0012DCF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80130D9C 0012DCFC  4E 80 00 20 */	blr

.global sub_80130da0
sub_80130da0:
/* 80130DA0 0012DD00  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80130DA4 0012DD04  7C 08 02 A6 */	mflr r0
/* 80130DA8 0012DD08  90 01 00 84 */	stw r0, 0x84(r1)
/* 80130DAC 0012DD0C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80130DB0 0012DD10  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 80130DB4 0012DD14  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80130DB8 0012DD18  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80130DBC 0012DD1C  7C 7E 1B 78 */	mr r30, r3
/* 80130DC0 0012DD20  88 63 05 80 */	lbz r3, 0x580(r3)
/* 80130DC4 0012DD24  7C 9F 23 78 */	mr r31, r4
/* 80130DC8 0012DD28  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 80130DCC 0012DD2C  40 82 00 14 */	bne lbl_80130DE0
/* 80130DD0 0012DD30  38 00 00 00 */	li r0, 0
/* 80130DD4 0012DD34  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 80130DD8 0012DD38  98 7E 05 80 */	stb r3, 0x580(r30)
/* 80130DDC 0012DD3C  48 00 00 F8 */	b lbl_80130ED4
lbl_80130DE0:
/* 80130DE0 0012DD40  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 80130DE4 0012DD44  4B ED AD 35 */	bl GetCurrentCamera__14CCameraManagerCFR13CStateManager
/* 80130DE8 0012DD48  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80130DEC 0012DD4C  7F C4 F3 78 */	mr r4, r30
/* 80130DF0 0012DD50  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80130DF4 0012DD54  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80130DF8 0012DD58  38 61 00 48 */	addi r3, r1, 0x48
/* 80130DFC 0012DD5C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80130E00 0012DD60  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80130E04 0012DD64  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80130E08 0012DD68  4B FE 9B 25 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80130E0C 0012DD6C  38 61 00 08 */	addi r3, r1, 8
/* 80130E10 0012DD70  38 81 00 48 */	addi r4, r1, 0x48
/* 80130E14 0012DD74  48 20 67 F9 */	bl GetCenterPoint__6CAABoxCFv
/* 80130E18 0012DD78  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80130E1C 0012DD7C  38 61 00 14 */	addi r3, r1, 0x14
/* 80130E20 0012DD80  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80130E24 0012DD84  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80130E28 0012DD88  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80130E2C 0012DD8C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80130E30 0012DD90  C0 21 00 08 */	lfs f1, 8(r1)
/* 80130E34 0012DD94  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80130E38 0012DD98  EC 43 10 28 */	fsubs f2, f3, f2
/* 80130E3C 0012DD9C  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80130E40 0012DDA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80130E44 0012DDA4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80130E48 0012DDA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80130E4C 0012DDAC  48 1E 3A 6D */	bl Magnitude__9CVector3fCFv
/* 80130E50 0012DDB0  FF E0 08 90 */	fmr f31, f1
/* 80130E54 0012DDB4  C0 62 99 64 */	lfs f3, lbl_805AB684@sda21(r2)
/* 80130E58 0012DDB8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80130E5C 0012DDBC  38 60 00 00 */	li r3, 0
/* 80130E60 0012DDC0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80130E64 0012DDC4  38 80 00 01 */	li r4, 1
/* 80130E68 0012DDC8  EC 63 F8 24 */	fdivs f3, f3, f31
/* 80130E6C 0012DDCC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80130E70 0012DDD0  80 AD 8B 34 */	lwz r5, lbl_805A76F4@sda21(r13)
/* 80130E74 0012DDD4  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80130E78 0012DDD8  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80130E7C 0012DDDC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80130E80 0012DDE0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80130E84 0012DDE4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80130E88 0012DDE8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80130E8C 0012DDEC  48 25 90 69 */	bl __shl2i
/* 80130E90 0012DDF0  39 00 FF FF */	li r8, -1
/* 80130E94 0012DDF4  38 E0 00 00 */	li r7, 0
/* 80130E98 0012DDF8  38 00 00 02 */	li r0, 2
/* 80130E9C 0012DDFC  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80130EA0 0012DE00  FC 20 F8 90 */	fmr f1, f31
/* 80130EA4 0012DE04  38 81 00 20 */	addi r4, r1, 0x20
/* 80130EA8 0012DE08  90 61 00 38 */	stw r3, 0x38(r1)
/* 80130EAC 0012DE0C  7F E3 FB 78 */	mr r3, r31
/* 80130EB0 0012DE10  38 A1 00 14 */	addi r5, r1, 0x14
/* 80130EB4 0012DE14  38 C1 00 30 */	addi r6, r1, 0x30
/* 80130EB8 0012DE18  91 01 00 34 */	stw r8, 0x34(r1)
/* 80130EBC 0012DE1C  90 E1 00 30 */	stw r7, 0x30(r1)
/* 80130EC0 0012DE20  90 01 00 40 */	stw r0, 0x40(r1)
/* 80130EC4 0012DE24  48 05 3D 35 */	bl RayStaticIntersectionBool__14CGameCollisionFRC13CStateManagerRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80130EC8 0012DE28  88 1E 05 80 */	lbz r0, 0x580(r30)
/* 80130ECC 0012DE2C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80130ED0 0012DE30  98 1E 05 80 */	stb r0, 0x580(r30)
lbl_80130ED4:
/* 80130ED4 0012DE34  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80130ED8 0012DE38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80130EDC 0012DE3C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80130EE0 0012DE40  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80130EE4 0012DE44  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80130EE8 0012DE48  7C 08 03 A6 */	mtlr r0
/* 80130EEC 0012DE4C  38 21 00 80 */	addi r1, r1, 0x80
/* 80130EF0 0012DE50  4E 80 00 20 */	blr

.global FlickerBatStateChanged__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager
FlickerBatStateChanged__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager:
/* 80130EF4 0012DE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130EF8 0012DE58  7C 08 02 A6 */	mflr r0
/* 80130EFC 0012DE5C  2C 04 00 02 */	cmpwi r4, 2
/* 80130F00 0012DE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130F04 0012DE64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130F08 0012DE68  7C BF 2B 78 */	mr r31, r5
/* 80130F0C 0012DE6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80130F10 0012DE70  7C 7E 1B 78 */	mr r30, r3
/* 80130F14 0012DE74  41 82 00 70 */	beq lbl_80130F84
/* 80130F18 0012DE78  40 80 00 14 */	bge lbl_80130F2C
/* 80130F1C 0012DE7C  2C 04 00 00 */	cmpwi r4, 0
/* 80130F20 0012DE80  41 82 00 18 */	beq lbl_80130F38
/* 80130F24 0012DE84  40 80 00 44 */	bge lbl_80130F68
/* 80130F28 0012DE88  48 00 00 D4 */	b lbl_80130FFC
lbl_80130F2C:
/* 80130F2C 0012DE8C  2C 04 00 04 */	cmpwi r4, 4
/* 80130F30 0012DE90  40 80 00 CC */	bge lbl_80130FFC
/* 80130F34 0012DE94  48 00 00 94 */	b lbl_80130FC8
lbl_80130F38:
/* 80130F38 0012DE98  80 9F 08 B8 */	lwz r4, 0x8b8(r31)
/* 80130F3C 0012DE9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80130F40 0012DEA0  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80130F44 0012DEA4  2C 00 00 01 */	cmpwi r0, 1
/* 80130F48 0012DEA8  41 82 00 0C */	beq lbl_80130F54
/* 80130F4C 0012DEAC  38 80 00 01 */	li r4, 1
/* 80130F50 0012DEB0  4B F2 1E 1D */	bl CreateShadow__6CActorFb
lbl_80130F54:
/* 80130F54 0012DEB4  7F C3 F3 78 */	mr r3, r30
/* 80130F58 0012DEB8  7F E5 FB 78 */	mr r5, r31
/* 80130F5C 0012DEBC  38 80 00 28 */	li r4, 0x28
/* 80130F60 0012DEC0  4B F2 33 F1 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80130F64 0012DEC4  48 00 00 98 */	b lbl_80130FFC
lbl_80130F68:
/* 80130F68 0012DEC8  38 80 00 01 */	li r4, 1
/* 80130F6C 0012DECC  4B F2 24 81 */	bl SetMuted__6CActorFb
/* 80130F70 0012DED0  7F C3 F3 78 */	mr r3, r30
/* 80130F74 0012DED4  7F E5 FB 78 */	mr r5, r31
/* 80130F78 0012DED8  38 80 00 28 */	li r4, 0x28
/* 80130F7C 0012DEDC  4B F2 30 05 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80130F80 0012DEE0  48 00 00 7C */	b lbl_80130FFC
lbl_80130F84:
/* 80130F84 0012DEE4  80 9F 08 B8 */	lwz r4, 0x8b8(r31)
/* 80130F88 0012DEE8  80 84 00 00 */	lwz r4, 0(r4)
/* 80130F8C 0012DEEC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80130F90 0012DEF0  2C 00 00 01 */	cmpwi r0, 1
/* 80130F94 0012DEF4  41 82 00 18 */	beq lbl_80130FAC
/* 80130F98 0012DEF8  38 80 00 01 */	li r4, 1
/* 80130F9C 0012DEFC  4B F2 1D D1 */	bl CreateShadow__6CActorFb
/* 80130FA0 0012DF00  7F C3 F3 78 */	mr r3, r30
/* 80130FA4 0012DF04  38 80 00 00 */	li r4, 0
/* 80130FA8 0012DF08  4B F2 24 45 */	bl SetMuted__6CActorFb
lbl_80130FAC:
/* 80130FAC 0012DF0C  7F C3 F3 78 */	mr r3, r30
/* 80130FB0 0012DF10  7F E4 FB 78 */	mr r4, r31
/* 80130FB4 0012DF14  4B FF FD ED */	bl sub_80130da0
/* 80130FB8 0012DF18  7F C3 F3 78 */	mr r3, r30
/* 80130FBC 0012DF1C  38 80 00 01 */	li r4, 1
/* 80130FC0 0012DF20  4B F4 B9 3D */	bl SetupPlayerCollision__10CPatternedFb
/* 80130FC4 0012DF24  48 00 00 38 */	b lbl_80130FFC
lbl_80130FC8:
/* 80130FC8 0012DF28  80 9F 08 B8 */	lwz r4, 0x8b8(r31)
/* 80130FCC 0012DF2C  80 84 00 00 */	lwz r4, 0(r4)
/* 80130FD0 0012DF30  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80130FD4 0012DF34  2C 00 00 01 */	cmpwi r0, 1
/* 80130FD8 0012DF38  41 82 00 0C */	beq lbl_80130FE4
/* 80130FDC 0012DF3C  38 80 00 00 */	li r4, 0
/* 80130FE0 0012DF40  4B F2 1D 8D */	bl CreateShadow__6CActorFb
lbl_80130FE4:
/* 80130FE4 0012DF44  7F C3 F3 78 */	mr r3, r30
/* 80130FE8 0012DF48  7F E4 FB 78 */	mr r4, r31
/* 80130FEC 0012DF4C  4B FF FD B5 */	bl sub_80130da0
/* 80130FF0 0012DF50  7F C3 F3 78 */	mr r3, r30
/* 80130FF4 0012DF54  38 80 00 00 */	li r4, 0
/* 80130FF8 0012DF58  4B F4 B9 05 */	bl SetupPlayerCollision__10CPatternedFb
lbl_80130FFC:
/* 80130FFC 0012DF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80131000 0012DF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80131004 0012DF64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80131008 0012DF68  7C 08 03 A6 */	mtlr r0
/* 8013100C 0012DF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80131010 0012DF70  4E 80 00 20 */	blr

.global GetFlickerBatState__11CFlickerBatCFv
GetFlickerBatState__11CFlickerBatCFv:
/* 80131014 0012DF74  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80131018 0012DF78  4E 80 00 20 */	blr

.global SetFlickerBatState__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager
SetFlickerBatState__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager:
/* 8013101C 0012DF7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80131020 0012DF80  7C 08 02 A6 */	mflr r0
/* 80131024 0012DF84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80131028 0012DF88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013102C 0012DF8C  7C 9F 23 78 */	mr r31, r4
/* 80131030 0012DF90  93 C1 00 08 */	stw r30, 8(r1)
/* 80131034 0012DF94  7C 7E 1B 78 */	mr r30, r3
/* 80131038 0012DF98  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8013103C 0012DF9C  7C 1F 00 00 */	cmpw r31, r0
/* 80131040 0012DFA0  41 82 00 0C */	beq lbl_8013104C
/* 80131044 0012DFA4  4B FF FE B1 */	bl FlickerBatStateChanged__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager
/* 80131048 0012DFA8  93 FE 05 74 */	stw r31, 0x574(r30)
lbl_8013104C:
/* 8013104C 0012DFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80131050 0012DFB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80131054 0012DFB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80131058 0012DFB8  7C 08 03 A6 */	mtlr r0
/* 8013105C 0012DFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80131060 0012DFC0  4E 80 00 20 */	blr

.global sub_80131064
sub_80131064:
/* 80131064 0012DFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80131068 0012DFC8  7C 08 02 A6 */	mflr r0
/* 8013106C 0012DFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80131070 0012DFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80131074 0012DFD4  7C 9F 23 78 */	mr r31, r4
/* 80131078 0012DFD8  93 C1 00 08 */	stw r30, 8(r1)
/* 8013107C 0012DFDC  7C 7E 1B 78 */	mr r30, r3
/* 80131080 0012DFE0  4B FF FF 95 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80131084 0012DFE4  2C 03 00 00 */	cmpwi r3, 0
/* 80131088 0012DFE8  41 82 00 14 */	beq lbl_8013109C
/* 8013108C 0012DFEC  7F C3 F3 78 */	mr r3, r30
/* 80131090 0012DFF0  4B FF FF 85 */	bl GetFlickerBatState__11CFlickerBatCFv
/* 80131094 0012DFF4  2C 03 00 02 */	cmpwi r3, 2
/* 80131098 0012DFF8  40 82 00 18 */	bne lbl_801310B0
lbl_8013109C:
/* 8013109C 0012DFFC  7F C3 F3 78 */	mr r3, r30
/* 801310A0 0012E000  7F E5 FB 78 */	mr r5, r31
/* 801310A4 0012E004  38 80 00 03 */	li r4, 3
/* 801310A8 0012E008  4B FF FF 75 */	bl SetFlickerBatState__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager
/* 801310AC 0012E00C  48 00 00 14 */	b lbl_801310C0
lbl_801310B0:
/* 801310B0 0012E010  7F C3 F3 78 */	mr r3, r30
/* 801310B4 0012E014  7F E5 FB 78 */	mr r5, r31
/* 801310B8 0012E018  38 80 00 02 */	li r4, 2
/* 801310BC 0012E01C  4B FF FF 61 */	bl SetFlickerBatState__11CFlickerBatFQ211CFlickerBat16EFlickerBatStateR13CStateManager
lbl_801310C0:
/* 801310C0 0012E020  C0 22 99 64 */	lfs f1, lbl_805AB684@sda21(r2)
/* 801310C4 0012E024  D0 3E 05 78 */	stfs f1, 0x578(r30)
/* 801310C8 0012E028  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 801310CC 0012E02C  EC 01 00 24 */	fdivs f0, f1, f0
/* 801310D0 0012E030  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 801310D4 0012E034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801310D8 0012E038  83 C1 00 08 */	lwz r30, 8(r1)
/* 801310DC 0012E03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801310E0 0012E040  7C 08 03 A6 */	mtlr r0
/* 801310E4 0012E044  38 21 00 10 */	addi r1, r1, 0x10
/* 801310E8 0012E048  4E 80 00 20 */	blr

.global DoUserAnimEvent__11CFlickerBatFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__11CFlickerBatFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 801310EC 0012E04C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801310F0 0012E050  7C 08 02 A6 */	mflr r0
/* 801310F4 0012E054  90 01 00 34 */	stw r0, 0x34(r1)
/* 801310F8 0012E058  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 801310FC 0012E05C  FF E0 08 90 */	fmr f31, f1
/* 80131100 0012E060  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80131104 0012E064  7C DE 33 78 */	mr r30, r6
/* 80131108 0012E068  2C 1E 00 0E */	cmpwi r30, 0xe
/* 8013110C 0012E06C  7C 7B 1B 78 */	mr r27, r3
/* 80131110 0012E070  7C 9C 23 78 */	mr r28, r4
/* 80131114 0012E074  7C BD 2B 78 */	mr r29, r5
/* 80131118 0012E078  3B E0 00 00 */	li r31, 0
/* 8013111C 0012E07C  41 82 00 08 */	beq lbl_80131124
/* 80131120 0012E080  48 00 00 0C */	b lbl_8013112C
lbl_80131124:
/* 80131124 0012E084  3B E0 00 01 */	li r31, 1
/* 80131128 0012E088  4B FF FF 3D */	bl sub_80131064
lbl_8013112C:
/* 8013112C 0012E08C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80131130 0012E090  40 82 00 1C */	bne lbl_8013114C
/* 80131134 0012E094  FC 20 F8 90 */	fmr f1, f31
/* 80131138 0012E098  7F 63 DB 78 */	mr r3, r27
/* 8013113C 0012E09C  7F 84 E3 78 */	mr r4, r28
/* 80131140 0012E0A0  7F A5 EB 78 */	mr r5, r29
/* 80131144 0012E0A4  7F C6 F3 78 */	mr r6, r30
/* 80131148 0012E0A8  4B F4 7D 69 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_8013114C:
/* 8013114C 0012E0AC  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80131150 0012E0B0  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80131154 0012E0B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80131158 0012E0B8  7C 08 03 A6 */	mtlr r0
/* 8013115C 0012E0BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80131160 0012E0C0  4E 80 00 20 */	blr

.global AcceptScriptMsg__11CFlickerBatF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__11CFlickerBatF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80131164 0012E0C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80131168 0012E0C8  7C 08 02 A6 */	mflr r0
/* 8013116C 0012E0CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80131170 0012E0D0  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80131174 0012E0D4  7C 7B 1B 78 */	mr r27, r3
/* 80131178 0012E0D8  7C 9D 23 78 */	mr r29, r4
/* 8013117C 0012E0DC  7C DC 33 78 */	mr r28, r6
/* 80131180 0012E0E0  A0 05 00 00 */	lhz r0, 0(r5)
/* 80131184 0012E0E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80131188 0012E0E8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8013118C 0012E0EC  4B F4 B9 ED */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80131190 0012E0F0  2C 1D 00 22 */	cmpwi r29, 0x22
/* 80131194 0012E0F4  41 82 00 A8 */	beq lbl_8013123C
/* 80131198 0012E0F8  40 80 00 B8 */	bge lbl_80131250
/* 8013119C 0012E0FC  2C 1D 00 21 */	cmpwi r29, 0x21
/* 801311A0 0012E100  40 80 00 08 */	bge lbl_801311A8
/* 801311A4 0012E104  48 00 00 AC */	b lbl_80131250
lbl_801311A8:
/* 801311A8 0012E108  7F 63 DB 78 */	mr r3, r27
/* 801311AC 0012E10C  7F 85 E3 78 */	mr r5, r28
/* 801311B0 0012E110  38 80 00 13 */	li r4, 0x13
/* 801311B4 0012E114  4B F2 2D CD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801311B8 0012E118  83 FC 0F 44 */	lwz r31, 0xf44(r28)
/* 801311BC 0012E11C  3C 60 80 3D */	lis r3, lbl_803D0050@ha
/* 801311C0 0012E120  38 83 00 50 */	addi r4, r3, lbl_803D0050@l
/* 801311C4 0012E124  A3 BB 00 08 */	lhz r29, 8(r27)
/* 801311C8 0012E128  83 DF 00 00 */	lwz r30, 0(r31)
/* 801311CC 0012E12C  38 60 00 0A */	li r3, 0xa
/* 801311D0 0012E130  38 A0 00 00 */	li r5, 0
/* 801311D4 0012E134  48 1E 46 45 */	bl __nwa__FUlPCcPCc
/* 801311D8 0012E138  28 03 00 00 */	cmplwi r3, 0
/* 801311DC 0012E13C  41 82 00 0C */	beq lbl_801311E8
/* 801311E0 0012E140  93 C3 00 00 */	stw r30, 0(r3)
/* 801311E4 0012E144  93 E3 00 04 */	stw r31, 4(r3)
lbl_801311E8:
/* 801311E8 0012E148  34 83 00 08 */	addic. r4, r3, 8
/* 801311EC 0012E14C  41 82 00 08 */	beq lbl_801311F4
/* 801311F0 0012E150  B3 A4 00 00 */	sth r29, 0(r4)
lbl_801311F4:
/* 801311F4 0012E154  80 1C 0F 40 */	lwz r0, 0xf40(r28)
/* 801311F8 0012E158  7C 1F 00 40 */	cmplw r31, r0
/* 801311FC 0012E15C  40 82 00 08 */	bne lbl_80131204
/* 80131200 0012E160  90 7C 0F 40 */	stw r3, 0xf40(r28)
lbl_80131204:
/* 80131204 0012E164  80 A3 00 00 */	lwz r5, 0(r3)
/* 80131208 0012E168  7F 84 E3 78 */	mr r4, r28
/* 8013120C 0012E16C  90 65 00 04 */	stw r3, 4(r5)
/* 80131210 0012E170  80 A3 00 04 */	lwz r5, 4(r3)
/* 80131214 0012E174  90 65 00 00 */	stw r3, 0(r5)
/* 80131218 0012E178  80 7C 0F 50 */	lwz r3, 0xf50(r28)
/* 8013121C 0012E17C  38 03 00 01 */	addi r0, r3, 1
/* 80131220 0012E180  90 1C 0F 50 */	stw r0, 0xf50(r28)
/* 80131224 0012E184  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80131228 0012E188  48 00 9A C9 */	bl Activate__15CBodyControllerFR13CStateManager
/* 8013122C 0012E18C  C0 02 99 84 */	lfs f0, lbl_805AB6A4@sda21(r2)
/* 80131230 0012E190  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80131234 0012E194  D0 03 02 D4 */	stfs f0, 0x2d4(r3)
/* 80131238 0012E198  48 00 00 18 */	b lbl_80131250
lbl_8013123C:
/* 8013123C 0012E19C  A0 1B 00 08 */	lhz r0, 8(r27)
/* 80131240 0012E1A0  38 7C 0F 3C */	addi r3, r28, 0xf3c
/* 80131244 0012E1A4  38 81 00 08 */	addi r4, r1, 8
/* 80131248 0012E1A8  B0 01 00 08 */	sth r0, 8(r1)
/* 8013124C 0012E1AC  4B FF 4B 3D */	bl "remove__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRC9TUniqueId"
lbl_80131250:
/* 80131250 0012E1B0  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80131254 0012E1B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80131258 0012E1B8  7C 08 03 A6 */	mtlr r0
/* 8013125C 0012E1BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80131260 0012E1C0  4E 80 00 20 */	blr

.global Accept__11CFlickerBatFR8IVisitor
Accept__11CFlickerBatFR8IVisitor:
/* 80131264 0012E1C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80131268 0012E1C8  7C 08 02 A6 */	mflr r0
/* 8013126C 0012E1CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80131270 0012E1D0  7C 60 1B 78 */	mr r0, r3
/* 80131274 0012E1D4  7C 83 23 78 */	mr r3, r4
/* 80131278 0012E1D8  81 84 00 00 */	lwz r12, 0(r4)
/* 8013127C 0012E1DC  7C 04 03 78 */	mr r4, r0
/* 80131280 0012E1E0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80131284 0012E1E4  7D 89 03 A6 */	mtctr r12
/* 80131288 0012E1E8  4E 80 04 21 */	bctrl
/* 8013128C 0012E1EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80131290 0012E1F0  7C 08 03 A6 */	mtlr r0
/* 80131294 0012E1F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80131298 0012E1F8  4E 80 00 20 */	blr

.global __dt__11CFlickerBatFv
__dt__11CFlickerBatFv:
/* 8013129C 0012E1FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801312A0 0012E200  7C 08 02 A6 */	mflr r0
/* 801312A4 0012E204  90 01 00 14 */	stw r0, 0x14(r1)
/* 801312A8 0012E208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801312AC 0012E20C  7C 9F 23 78 */	mr r31, r4
/* 801312B0 0012E210  93 C1 00 08 */	stw r30, 8(r1)
/* 801312B4 0012E214  7C 7E 1B 79 */	or. r30, r3, r3
/* 801312B8 0012E218  41 82 00 28 */	beq lbl_801312E0
/* 801312BC 0012E21C  3C A0 80 3E */	lis r5, lbl_803E0DE0@ha
/* 801312C0 0012E220  38 80 00 00 */	li r4, 0
/* 801312C4 0012E224  38 05 0D E0 */	addi r0, r5, lbl_803E0DE0@l
/* 801312C8 0012E228  90 1E 00 00 */	stw r0, 0(r30)
/* 801312CC 0012E22C  4B F4 62 A5 */	bl __dt__10CPatternedFv
/* 801312D0 0012E230  7F E0 07 35 */	extsh. r0, r31
/* 801312D4 0012E234  40 81 00 0C */	ble lbl_801312E0
/* 801312D8 0012E238  7F C3 F3 78 */	mr r3, r30
/* 801312DC 0012E23C  48 1E 46 55 */	bl Free__7CMemoryFPCv
lbl_801312E0:
/* 801312E0 0012E240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801312E4 0012E244  7F C3 F3 78 */	mr r3, r30
/* 801312E8 0012E248  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801312EC 0012E24C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801312F0 0012E250  7C 08 03 A6 */	mtlr r0
/* 801312F4 0012E254  38 21 00 10 */	addi r1, r1, 0x10
/* 801312F8 0012E258  4E 80 00 20 */	blr

.global "__ct__11CFlickerBatF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EColliderTypebRC16CActorParameters"
"__ct__11CFlickerBatF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EColliderTypebRC16CActorParameters":
/* 801312FC 0012E25C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80131300 0012E260  7C 08 02 A6 */	mflr r0
/* 80131304 0012E264  7D 2C 4B 78 */	mr r12, r9
/* 80131308 0012E268  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013130C 0012E26C  81 61 00 50 */	lwz r11, 0x50(r1)
/* 80131310 0012E270  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80131314 0012E274  7C 7F 1B 78 */	mr r31, r3
/* 80131318 0012E278  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8013131C 0012E27C  7D 1E 43 78 */	mr r30, r8
/* 80131320 0012E280  7F C9 F3 78 */	mr r9, r30
/* 80131324 0012E284  8B C1 00 57 */	lbz r30, 0x57(r1)
/* 80131328 0012E288  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8013132C 0012E28C  7C DD 33 78 */	mr r29, r6
/* 80131330 0012E290  38 C0 00 01 */	li r6, 1
/* 80131334 0012E294  93 81 00 30 */	stw r28, 0x30(r1)
/* 80131338 0012E298  7C FC 3B 78 */	mr r28, r7
/* 8013133C 0012E29C  80 E1 00 48 */	lwz r7, 0x48(r1)
/* 80131340 0012E2A0  7F 88 E3 78 */	mr r8, r28
/* 80131344 0012E2A4  A0 04 00 00 */	lhz r0, 0(r4)
/* 80131348 0012E2A8  38 80 00 04 */	li r4, 4
/* 8013134C 0012E2AC  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80131350 0012E2B0  38 00 00 00 */	li r0, 0
/* 80131354 0012E2B4  91 41 00 08 */	stw r10, 8(r1)
/* 80131358 0012E2B8  7D 8A 63 78 */	mr r10, r12
/* 8013135C 0012E2BC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80131360 0012E2C0  7C A6 2B 78 */	mr r6, r5
/* 80131364 0012E2C4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80131368 0012E2C8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8013136C 0012E2CC  7F A7 EB 78 */	mr r7, r29
/* 80131370 0012E2D0  8B A1 00 4F */	lbz r29, 0x4f(r1)
/* 80131374 0012E2D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80131378 0012E2D8  38 80 00 0D */	li r4, 0xd
/* 8013137C 0012E2DC  91 61 00 18 */	stw r11, 0x18(r1)
/* 80131380 0012E2E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80131384 0012E2E4  4B F4 C0 CD */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 80131388 0012E2E8  3C 60 80 3E */	lis r3, lbl_803E0DE0@ha
/* 8013138C 0012E2EC  7F A0 00 34 */	cntlzw r0, r29
/* 80131390 0012E2F0  38 63 0D E0 */	addi r3, r3, lbl_803E0DE0@l
/* 80131394 0012E2F4  C0 22 99 60 */	lfs f1, lbl_805AB680@sda21(r2)
/* 80131398 0012E2F8  90 7F 00 00 */	stw r3, 0(r31)
/* 8013139C 0012E2FC  54 00 D9 7E */	srwi r0, r0, 5
/* 801313A0 0012E300  C0 02 99 64 */	lfs f0, lbl_805AB684@sda21(r2)
/* 801313A4 0012E304  38 A0 00 00 */	li r5, 0
/* 801313A8 0012E308  D0 3F 05 68 */	stfs f1, 0x568(r31)
/* 801313AC 0012E30C  7F E3 FB 78 */	mr r3, r31
/* 801313B0 0012E310  7F A4 EB 78 */	mr r4, r29
/* 801313B4 0012E314  D0 3F 05 6C */	stfs f1, 0x56c(r31)
/* 801313B8 0012E318  D0 3F 05 70 */	stfs f1, 0x570(r31)
/* 801313BC 0012E31C  90 1F 05 74 */	stw r0, 0x574(r31)
/* 801313C0 0012E320  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 801313C4 0012E324  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 801313C8 0012E328  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 801313CC 0012E32C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801313D0 0012E330  98 1F 05 80 */	stb r0, 0x580(r31)
/* 801313D4 0012E334  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 801313D8 0012E338  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 801313DC 0012E33C  98 1F 05 80 */	stb r0, 0x580(r31)
/* 801313E0 0012E340  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 801313E4 0012E344  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 801313E8 0012E348  98 1F 05 80 */	stb r0, 0x580(r31)
/* 801313EC 0012E34C  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 801313F0 0012E350  53 C0 26 F6 */	rlwimi r0, r30, 4, 0x1b, 0x1b
/* 801313F4 0012E354  98 1F 05 80 */	stb r0, 0x580(r31)
/* 801313F8 0012E358  4B F4 B5 05 */	bl SetupPlayerCollision__10CPatternedFb
/* 801313FC 0012E35C  C0 02 99 60 */	lfs f0, lbl_805AB680@sda21(r2)
/* 80131400 0012E360  38 80 00 00 */	li r4, 0
/* 80131404 0012E364  7F E3 FB 78 */	mr r3, r31
/* 80131408 0012E368  D0 1F 03 D8 */	stfs f0, 0x3d8(r31)
/* 8013140C 0012E36C  88 1F 04 02 */	lbz r0, 0x402(r31)
/* 80131410 0012E370  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80131414 0012E374  98 1F 04 02 */	stb r0, 0x402(r31)
/* 80131418 0012E378  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8013141C 0012E37C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80131420 0012E380  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80131424 0012E384  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80131428 0012E388  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8013142C 0012E38C  7C 08 03 A6 */	mtlr r0
/* 80131430 0012E390  38 21 00 40 */	addi r1, r1, 0x40
/* 80131434 0012E394  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AB680
lbl_805AB680:
	# ROM: 0x3F7F20
	.4byte 0

.global lbl_805AB684
lbl_805AB684:
	# ROM: 0x3F7F24
	.float 1.0

.global lbl_805AB688
lbl_805AB688:
	# ROM: 0x3F7F28
	.float 4.0

.global lbl_805AB68C
lbl_805AB68C:
	# ROM: 0x3F7F2C
	.float 0.75

.global lbl_805AB690
lbl_805AB690:
	# ROM: 0x3F7F30
	.float 0.3

.global lbl_805AB694
lbl_805AB694:
	# ROM: 0x3F7F34
	.4byte 0x40490FDB

.global lbl_805AB698
lbl_805AB698:
	# ROM: 0x3F7F38
	.4byte 0x42C80000

.global lbl_805AB69C
lbl_805AB69C:
	# ROM: 0x3F7F3C
	.4byte 0x42480000

.global lbl_805AB6A0
lbl_805AB6A0:
	# ROM: 0x3F7F40
	.float 255.0

.global lbl_805AB6A4
lbl_805AB6A4:
	# ROM: 0x3F7F44
	.4byte 0x3F860A92


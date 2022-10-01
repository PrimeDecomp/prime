.include "macros.inc"

.comm lbl_80572694, 0x68, 4

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CBurrower_cpp

.section .data
.balign 8

.global lbl_803EA790
lbl_803EA790:
	# ROM: 0x3E7790
	.4byte 0
	.4byte 0
	.4byte sub_8026ae68
	.4byte 0

.global lbl_803EA7A0
lbl_803EA7A0:
	# ROM: 0x3E77A0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007c1a8

.global lbl_803EA7AC
lbl_803EA7AC:
	# ROM: 0x3E77AC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global lbl_803EA7B8
lbl_803EA7B8:
	# ROM: 0x3E77B8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007c1a8

.global lbl_803EA7C4
lbl_803EA7C4:
	# ROM: 0x3E77C4
	.4byte 0
	.4byte 0
	.4byte __dt__9CBurrowerFv
	.4byte Accept__10CPatternedFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__9CBurrowerFfR13CStateManager
	.4byte AcceptScriptMsg__9CBurrowerF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__9CBurrowerCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__9CBurrowerFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__9CBurrowerCFv
	.4byte GetDamageVulnerability__9CBurrowerCFRC9CVector3fRC9CVector3fRC11CDamageInfo
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
	.4byte DoUserAnimEvent__9CBurrowerFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__9CBurrowerFRC9CVector3fR13CStateManager
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__9CBurrowerFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__9CBurrowerFR13CStateManager9EStateMsgf
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
	.4byte TurnAround__9CBurrowerFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__9CBurrowerFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__9CBurrowerFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__9CBurrowerFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__9CBurrowerFR13CStateManager9EStateMsgf
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
	.4byte PathShagged__9CBurrowerFR13CStateManagerf
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
	.4byte ShouldAttack__9CBurrowerFR13CStateManagerf
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
	.4byte GetSearchPath__9CBurrowerFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte ProjectileInfo__9CBurrowerFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte sub_8026fb50

.section .text, "ax"

.global GetSearchPath__9CBurrowerFv
GetSearchPath__9CBurrowerFv:
/* 8026FB48 0026CAA8  38 63 05 68 */	addi r3, r3, 0x568
/* 8026FB4C 0026CAAC  4E 80 00 20 */	blr

.global sub_8026fb50
sub_8026fb50:
/* 8026FB50 0026CAB0  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 8026FB54 0026CAB4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8026FB58 0026CAB8  41 82 00 0C */	beq lbl_8026FB64
/* 8026FB5C 0026CABC  38 63 06 8C */	addi r3, r3, 0x68c
/* 8026FB60 0026CAC0  4E 80 00 20 */	blr
lbl_8026FB64:
/* 8026FB64 0026CAC4  38 63 05 20 */	addi r3, r3, 0x520
/* 8026FB68 0026CAC8  4E 80 00 20 */	blr

.global TurnAround__9CBurrowerFR13CStateManager9EStateMsgf
TurnAround__9CBurrowerFR13CStateManager9EStateMsgf:
/* 8026FB6C 0026CACC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026FB70 0026CAD0  7C 08 02 A6 */	mflr r0
/* 8026FB74 0026CAD4  2C 05 00 00 */	cmpwi r5, 0
/* 8026FB78 0026CAD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026FB7C 0026CADC  41 82 00 0C */	beq lbl_8026FB88
/* 8026FB80 0026CAE0  41 80 00 50 */	blt lbl_8026FBD0
/* 8026FB84 0026CAE4  48 00 00 4C */	b lbl_8026FBD0
lbl_8026FB88:
/* 8026FB88 0026CAE8  C0 C3 00 58 */	lfs f6, 0x58(r3)
/* 8026FB8C 0026CAEC  38 81 00 08 */	addi r4, r1, 8
/* 8026FB90 0026CAF0  C0 A3 00 48 */	lfs f5, 0x48(r3)
/* 8026FB94 0026CAF4  C0 83 00 38 */	lfs f4, 0x38(r3)
/* 8026FB98 0026CAF8  FC 20 30 50 */	fneg f1, f6
/* 8026FB9C 0026CAFC  FC 40 28 50 */	fneg f2, f5
/* 8026FBA0 0026CB00  C0 02 BB B8 */	lfs f0, lbl_805AD8D8@sda21(r2)
/* 8026FBA4 0026CB04  FC 60 20 50 */	fneg f3, f4
/* 8026FBA8 0026CB08  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8026FBAC 0026CB0C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8026FBB0 0026CB10  D0 61 00 08 */	stfs f3, 8(r1)
/* 8026FBB4 0026CB14  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8026FBB8 0026CB18  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8026FBBC 0026CB1C  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 8026FBC0 0026CB20  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026FBC4 0026CB24  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8026FBC8 0026CB28  38 63 00 04 */	addi r3, r3, 4
/* 8026FBCC 0026CB2C  4B EC 1B 4D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8026FBD0:
/* 8026FBD0 0026CB30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026FBD4 0026CB34  7C 08 03 A6 */	mtlr r0
/* 8026FBD8 0026CB38  38 21 00 30 */	addi r1, r1, 0x30
/* 8026FBDC 0026CB3C  4E 80 00 20 */	blr

.global Death__9CBurrowerFRC9CVector3fR13CStateManager
Death__9CBurrowerFRC9CVector3fR13CStateManager:
/* 8026FBE0 0026CB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026FBE4 0026CB44  7C 08 02 A6 */	mflr r0
/* 8026FBE8 0026CB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026FBEC 0026CB4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026FBF0 0026CB50  7C 7F 1B 78 */	mr r31, r3
/* 8026FBF4 0026CB54  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8026FBF8 0026CB58  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8026FBFC 0026CB5C  41 82 00 28 */	beq lbl_8026FC24
/* 8026FC00 0026CB60  4B E0 B7 A5 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 8026FC04 0026CB64  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 8026FC08 0026CB68  28 03 00 00 */	cmplwi r3, 0
/* 8026FC0C 0026CB6C  41 82 00 18 */	beq lbl_8026FC24
/* 8026FC10 0026CB70  81 83 00 00 */	lwz r12, 0(r3)
/* 8026FC14 0026CB74  38 80 00 00 */	li r4, 0
/* 8026FC18 0026CB78  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8026FC1C 0026CB7C  7D 89 03 A6 */	mtctr r12
/* 8026FC20 0026CB80  4E 80 04 21 */	bctrl
lbl_8026FC24:
/* 8026FC24 0026CB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026FC28 0026CB88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026FC2C 0026CB8C  7C 08 03 A6 */	mtlr r0
/* 8026FC30 0026CB90  38 21 00 10 */	addi r1, r1, 0x10
/* 8026FC34 0026CB94  4E 80 00 20 */	blr

.global AddToRenderer__9CBurrowerCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__9CBurrowerCFRC14CFrustumPlanesRC13CStateManager:
/* 8026FC38 0026CB98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026FC3C 0026CB9C  7C 08 02 A6 */	mflr r0
/* 8026FC40 0026CBA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026FC44 0026CBA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026FC48 0026CBA8  7C BF 2B 78 */	mr r31, r5
/* 8026FC4C 0026CBAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026FC50 0026CBB0  7C 9E 23 78 */	mr r30, r4
/* 8026FC54 0026CBB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026FC58 0026CBB8  7C 7D 1B 78 */	mr r29, r3
/* 8026FC5C 0026CBBC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8026FC60 0026CBC0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8026FC64 0026CBC4  41 82 00 24 */	beq lbl_8026FC88
/* 8026FC68 0026CBC8  80 9D 06 78 */	lwz r4, 0x678(r29)
/* 8026FC6C 0026CBCC  28 04 00 00 */	cmplwi r4, 0
/* 8026FC70 0026CBD0  41 82 00 18 */	beq lbl_8026FC88
/* 8026FC74 0026CBD4  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8026FC78 0026CBD8  81 83 00 00 */	lwz r12, 0(r3)
/* 8026FC7C 0026CBDC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8026FC80 0026CBE0  7D 89 03 A6 */	mtctr r12
/* 8026FC84 0026CBE4  4E 80 04 21 */	bctrl
lbl_8026FC88:
/* 8026FC88 0026CBE8  7F A3 EB 78 */	mr r3, r29
/* 8026FC8C 0026CBEC  7F C4 F3 78 */	mr r4, r30
/* 8026FC90 0026CBF0  7F E5 FB 78 */	mr r5, r31
/* 8026FC94 0026CBF4  4B E0 7C 25 */	bl AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
/* 8026FC98 0026CBF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FC9C 0026CBFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026FCA0 0026CC00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026FCA4 0026CC04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026FCA8 0026CC08  7C 08 03 A6 */	mtlr r0
/* 8026FCAC 0026CC0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8026FCB0 0026CC10  4E 80 00 20 */	blr

.global GetDamageVulnerability__9CBurrowerCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__9CBurrowerCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 8026FCB4 0026CC14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026FCB8 0026CC18  7C 08 02 A6 */	mflr r0
/* 8026FCBC 0026CC1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026FCC0 0026CC20  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 8026FCC4 0026CC24  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8026FCC8 0026CC28  28 00 00 01 */	cmplwi r0, 1
/* 8026FCCC 0026CC2C  41 82 00 10 */	beq lbl_8026FCDC
/* 8026FCD0 0026CC30  3C 60 80 57 */	lis r3, lbl_80572694@ha
/* 8026FCD4 0026CC34  38 63 26 94 */	addi r3, r3, lbl_80572694@l
/* 8026FCD8 0026CC38  48 00 00 08 */	b lbl_8026FCE0
lbl_8026FCDC:
/* 8026FCDC 0026CC3C  4B E3 30 95 */	bl GetDamageVulnerability__3CAiCFv
lbl_8026FCE0:
/* 8026FCE0 0026CC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026FCE4 0026CC44  7C 08 03 A6 */	mtlr r0
/* 8026FCE8 0026CC48  38 21 00 10 */	addi r1, r1, 0x10
/* 8026FCEC 0026CC4C  4E 80 00 20 */	blr

.global GetDamageVulnerability__9CBurrowerCFv
GetDamageVulnerability__9CBurrowerCFv:
/* 8026FCF0 0026CC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026FCF4 0026CC54  7C 08 02 A6 */	mflr r0
/* 8026FCF8 0026CC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026FCFC 0026CC5C  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 8026FD00 0026CC60  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8026FD04 0026CC64  28 00 00 01 */	cmplwi r0, 1
/* 8026FD08 0026CC68  41 82 00 10 */	beq lbl_8026FD18
/* 8026FD0C 0026CC6C  3C 60 80 57 */	lis r3, lbl_80572694@ha
/* 8026FD10 0026CC70  38 63 26 94 */	addi r3, r3, lbl_80572694@l
/* 8026FD14 0026CC74  48 00 00 08 */	b lbl_8026FD1C
lbl_8026FD18:
/* 8026FD18 0026CC78  4B E3 30 59 */	bl GetDamageVulnerability__3CAiCFv
lbl_8026FD1C:
/* 8026FD1C 0026CC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026FD20 0026CC80  7C 08 03 A6 */	mtlr r0
/* 8026FD24 0026CC84  38 21 00 10 */	addi r1, r1, 0x10
/* 8026FD28 0026CC88  4E 80 00 20 */	blr

.global ShouldAttack__9CBurrowerFR13CStateManagerf
ShouldAttack__9CBurrowerFR13CStateManagerf:
/* 8026FD2C 0026CC8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026FD30 0026CC90  7C 08 02 A6 */	mflr r0
/* 8026FD34 0026CC94  C0 22 BB BC */	lfs f1, lbl_805AD8DC@sda21(r2)
/* 8026FD38 0026CC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026FD3C 0026CC9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026FD40 0026CCA0  C0 03 06 A4 */	lfs f0, 0x6a4(r3)
/* 8026FD44 0026CCA4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026FD48 0026CCA8  4C 40 13 82 */	cror 2, 0, 2
/* 8026FD4C 0026CCAC  40 82 00 4C */	bne lbl_8026FD98
/* 8026FD50 0026CCB0  C0 03 06 9C */	lfs f0, 0x69c(r3)
/* 8026FD54 0026CCB4  3B E0 00 00 */	li r31, 0
/* 8026FD58 0026CCB8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026FD5C 0026CCBC  4C 40 13 82 */	cror 2, 0, 2
/* 8026FD60 0026CCC0  40 82 00 30 */	bne lbl_8026FD90
/* 8026FD64 0026CCC4  A0 03 00 08 */	lhz r0, 8(r3)
/* 8026FD68 0026CCC8  7C 83 23 78 */	mr r3, r4
/* 8026FD6C 0026CCCC  38 81 00 0C */	addi r4, r1, 0xc
/* 8026FD70 0026CCD0  38 A0 00 09 */	li r5, 9
/* 8026FD74 0026CCD4  B0 01 00 08 */	sth r0, 8(r1)
/* 8026FD78 0026CCD8  38 C0 00 01 */	li r6, 1
/* 8026FD7C 0026CCDC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8026FD80 0026CCE0  4B DD 59 B1 */	bl CanCreateProjectile__13CStateManagerCF9TUniqueId11EWeaponTypei
/* 8026FD84 0026CCE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026FD88 0026CCE8  41 82 00 08 */	beq lbl_8026FD90
/* 8026FD8C 0026CCEC  3B E0 00 01 */	li r31, 1
lbl_8026FD90:
/* 8026FD90 0026CCF0  7F E3 FB 78 */	mr r3, r31
/* 8026FD94 0026CCF4  48 00 00 08 */	b lbl_8026FD9C
lbl_8026FD98:
/* 8026FD98 0026CCF8  38 60 00 00 */	li r3, 0
lbl_8026FD9C:
/* 8026FD9C 0026CCFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FDA0 0026CD00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026FDA4 0026CD04  7C 08 03 A6 */	mtlr r0
/* 8026FDA8 0026CD08  38 21 00 20 */	addi r1, r1, 0x20
/* 8026FDAC 0026CD0C  4E 80 00 20 */	blr

.global PathShagged__9CBurrowerFR13CStateManagerf
PathShagged__9CBurrowerFR13CStateManagerf:
/* 8026FDB0 0026CD10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026FDB4 0026CD14  7C 08 02 A6 */	mflr r0
/* 8026FDB8 0026CD18  7C 65 1B 78 */	mr r5, r3
/* 8026FDBC 0026CD1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026FDC0 0026CD20  38 81 00 08 */	addi r4, r1, 8
/* 8026FDC4 0026CD24  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8026FDC8 0026CD28  38 65 05 68 */	addi r3, r5, 0x568
/* 8026FDCC 0026CD2C  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8026FDD0 0026CD30  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8026FDD4 0026CD34  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026FDD8 0026CD38  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8026FDDC 0026CD3C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8026FDE0 0026CD40  4B F5 6D 55 */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 8026FDE4 0026CD44  2C 03 00 01 */	cmpwi r3, 1
/* 8026FDE8 0026CD48  41 82 00 08 */	beq lbl_8026FDF0
/* 8026FDEC 0026CD4C  48 00 00 0C */	b lbl_8026FDF8
lbl_8026FDF0:
/* 8026FDF0 0026CD50  38 60 00 01 */	li r3, 1
/* 8026FDF4 0026CD54  48 00 00 08 */	b lbl_8026FDFC
lbl_8026FDF8:
/* 8026FDF8 0026CD58  38 60 00 00 */	li r3, 0
lbl_8026FDFC:
/* 8026FDFC 0026CD5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FE00 0026CD60  7C 08 03 A6 */	mtlr r0
/* 8026FE04 0026CD64  38 21 00 20 */	addi r1, r1, 0x20
/* 8026FE08 0026CD68  4E 80 00 20 */	blr

.global DoUserAnimEvent__9CBurrowerFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__9CBurrowerFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 8026FE0C 0026CD6C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8026FE10 0026CD70  7C 08 02 A6 */	mflr r0
/* 8026FE14 0026CD74  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8026FE18 0026CD78  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8026FE1C 0026CD7C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8026FE20 0026CD80  BF 61 00 BC */	stmw r27, 0xbc(r1)
/* 8026FE24 0026CD84  7C DF 33 78 */	mr r31, r6
/* 8026FE28 0026CD88  FF E0 08 90 */	fmr f31, f1
/* 8026FE2C 0026CD8C  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8026FE30 0026CD90  7C 7C 1B 78 */	mr r28, r3
/* 8026FE34 0026CD94  7C 9D 23 78 */	mr r29, r4
/* 8026FE38 0026CD98  7C BE 2B 78 */	mr r30, r5
/* 8026FE3C 0026CD9C  38 80 00 00 */	li r4, 0
/* 8026FE40 0026CDA0  41 82 01 80 */	beq lbl_8026FFC0
/* 8026FE44 0026CDA4  40 80 00 10 */	bge lbl_8026FE54
/* 8026FE48 0026CDA8  2C 1F 00 00 */	cmpwi r31, 0
/* 8026FE4C 0026CDAC  41 82 00 14 */	beq lbl_8026FE60
/* 8026FE50 0026CDB0  48 00 01 A0 */	b lbl_8026FFF0
lbl_8026FE54:
/* 8026FE54 0026CDB4  2C 1F 00 0E */	cmpwi r31, 0xe
/* 8026FE58 0026CDB8  40 80 01 98 */	bge lbl_8026FFF0
/* 8026FE5C 0026CDBC  48 00 01 24 */	b lbl_8026FF80
lbl_8026FE60:
/* 8026FE60 0026CDC0  83 7D 08 4C */	lwz r27, 0x84c(r29)
/* 8026FE64 0026CDC4  7F A5 EB 78 */	mr r5, r29
/* 8026FE68 0026CDC8  38 61 00 28 */	addi r3, r1, 0x28
/* 8026FE6C 0026CDCC  C0 22 BB BC */	lfs f1, lbl_805AD8DC@sda21(r2)
/* 8026FE70 0026CDD0  7F 64 DB 78 */	mr r4, r27
/* 8026FE74 0026CDD4  81 9B 00 00 */	lwz r12, 0(r27)
/* 8026FE78 0026CDD8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8026FE7C 0026CDDC  7D 89 03 A6 */	mtctr r12
/* 8026FE80 0026CDE0  4E 80 04 21 */	bctrl
/* 8026FE84 0026CDE4  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8026FE88 0026CDE8  7F 84 E3 78 */	mr r4, r28
/* 8026FE8C 0026CDEC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8026FE90 0026CDF0  38 61 00 88 */	addi r3, r1, 0x88
/* 8026FE94 0026CDF4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8026FE98 0026CDF8  38 BE 00 3C */	addi r5, r30, 0x3c
/* 8026FE9C 0026CDFC  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8026FEA0 0026CE00  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8026FEA4 0026CE04  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8026FEA8 0026CE08  4B E0 8A D1 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8026FEAC 0026CE0C  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 8026FEB0 0026CE10  7F 83 E3 78 */	mr r3, r28
/* 8026FEB4 0026CE14  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 8026FEB8 0026CE18  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8026FEBC 0026CE1C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8026FEC0 0026CE20  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8026FEC4 0026CE24  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8026FEC8 0026CE28  81 9C 00 00 */	lwz r12, 0(r28)
/* 8026FECC 0026CE2C  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 8026FED0 0026CE30  7D 89 03 A6 */	mtctr r12
/* 8026FED4 0026CE34  4E 80 04 21 */	bctrl
/* 8026FED8 0026CE38  FC 20 F8 90 */	fmr f1, f31
/* 8026FEDC 0026CE3C  7C 64 1B 78 */	mr r4, r3
/* 8026FEE0 0026CE40  7F 67 DB 78 */	mr r7, r27
/* 8026FEE4 0026CE44  38 61 00 1C */	addi r3, r1, 0x1c
/* 8026FEE8 0026CE48  38 A1 00 40 */	addi r5, r1, 0x40
/* 8026FEEC 0026CE4C  38 C1 00 4C */	addi r6, r1, 0x4c
/* 8026FEF0 0026CE50  39 00 00 01 */	li r8, 1
/* 8026FEF4 0026CE54  4B FA BF F9 */	bl PredictInterceptPos__15CProjectileInfoFRC9CVector3fRC9CVector3fRC7CPlayerbf
/* 8026FEF8 0026CE58  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8026FEFC 0026CE5C  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 8026FF00 0026CE60  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8026FF04 0026CE64  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 8026FF08 0026CE68  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8026FF0C 0026CE6C  38 61 00 58 */	addi r3, r1, 0x58
/* 8026FF10 0026CE70  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8026FF14 0026CE74  38 81 00 40 */	addi r4, r1, 0x40
/* 8026FF18 0026CE78  38 A1 00 34 */	addi r5, r1, 0x34
/* 8026FF1C 0026CE7C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8026FF20 0026CE80  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8026FF24 0026CE84  80 FC 00 64 */	lwz r7, 0x64(r28)
/* 8026FF28 0026CE88  C0 07 00 00 */	lfs f0, 0(r7)
/* 8026FF2C 0026CE8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026FF30 0026CE90  C0 07 00 04 */	lfs f0, 4(r7)
/* 8026FF34 0026CE94  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8026FF38 0026CE98  C0 07 00 08 */	lfs f0, 8(r7)
/* 8026FF3C 0026CE9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026FF40 0026CEA0  48 0A 3B D1 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8026FF44 0026CEA4  38 60 00 00 */	li r3, 0
/* 8026FF48 0026CEA8  38 01 00 10 */	addi r0, r1, 0x10
/* 8026FF4C 0026CEAC  90 61 00 08 */	stw r3, 8(r1)
/* 8026FF50 0026CEB0  7F 83 E3 78 */	mr r3, r28
/* 8026FF54 0026CEB4  7F A5 EB 78 */	mr r5, r29
/* 8026FF58 0026CEB8  38 81 00 58 */	addi r4, r1, 0x58
/* 8026FF5C 0026CEBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8026FF60 0026CEC0  39 3C 06 7C */	addi r9, r28, 0x67c
/* 8026FF64 0026CEC4  38 C0 00 01 */	li r6, 1
/* 8026FF68 0026CEC8  38 E0 00 00 */	li r7, 0
/* 8026FF6C 0026CECC  A1 5C 06 AA */	lhz r10, 0x6aa(r28)
/* 8026FF70 0026CED0  39 00 00 00 */	li r8, 0
/* 8026FF74 0026CED4  4B E0 7A 85 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 8026FF78 0026CED8  38 80 00 01 */	li r4, 1
/* 8026FF7C 0026CEDC  48 00 00 74 */	b lbl_8026FFF0
lbl_8026FF80:
/* 8026FF80 0026CEE0  7F A5 EB 78 */	mr r5, r29
/* 8026FF84 0026CEE4  38 80 00 25 */	li r4, 0x25
/* 8026FF88 0026CEE8  4B DE 3F F9 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8026FF8C 0026CEEC  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 8026FF90 0026CEF0  38 60 00 01 */	li r3, 1
/* 8026FF94 0026CEF4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8026FF98 0026CEF8  38 80 00 01 */	li r4, 1
/* 8026FF9C 0026CEFC  98 1C 03 28 */	stb r0, 0x328(r28)
/* 8026FFA0 0026CF00  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 8026FFA4 0026CF04  C0 23 00 04 */	lfs f1, 4(r3)
/* 8026FFA8 0026CF08  C0 43 00 08 */	lfs f2, 8(r3)
/* 8026FFAC 0026CF0C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026FFB0 0026CF10  D0 1C 05 5C */	stfs f0, 0x55c(r28)
/* 8026FFB4 0026CF14  D0 3C 05 60 */	stfs f1, 0x560(r28)
/* 8026FFB8 0026CF18  D0 5C 05 64 */	stfs f2, 0x564(r28)
/* 8026FFBC 0026CF1C  48 00 00 34 */	b lbl_8026FFF0
lbl_8026FFC0:
/* 8026FFC0 0026CF20  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 8026FFC4 0026CF24  38 80 00 00 */	li r4, 0
/* 8026FFC8 0026CF28  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8026FFCC 0026CF2C  7F A5 EB 78 */	mr r5, r29
/* 8026FFD0 0026CF30  98 1C 03 28 */	stb r0, 0x328(r28)
/* 8026FFD4 0026CF34  38 80 00 25 */	li r4, 0x25
/* 8026FFD8 0026CF38  4B DE 43 79 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8026FFDC 0026CF3C  C0 02 BB B8 */	lfs f0, lbl_805AD8D8@sda21(r2)
/* 8026FFE0 0026CF40  38 80 00 01 */	li r4, 1
/* 8026FFE4 0026CF44  D0 1C 05 5C */	stfs f0, 0x55c(r28)
/* 8026FFE8 0026CF48  D0 1C 05 60 */	stfs f0, 0x560(r28)
/* 8026FFEC 0026CF4C  D0 1C 05 64 */	stfs f0, 0x564(r28)
lbl_8026FFF0:
/* 8026FFF0 0026CF50  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8026FFF4 0026CF54  40 82 00 1C */	bne lbl_80270010
/* 8026FFF8 0026CF58  FC 20 F8 90 */	fmr f1, f31
/* 8026FFFC 0026CF5C  7F 83 E3 78 */	mr r3, r28
/* 80270000 0026CF60  7F A4 EB 78 */	mr r4, r29
/* 80270004 0026CF64  7F C5 F3 78 */	mr r5, r30
/* 80270008 0026CF68  7F E6 FB 78 */	mr r6, r31
/* 8027000C 0026CF6C  4B E0 8E A5 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80270010:
/* 80270010 0026CF70  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 80270014 0026CF74  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80270018 0026CF78  BB 61 00 BC */	lmw r27, 0xbc(r1)
/* 8027001C 0026CF7C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80270020 0026CF80  7C 08 03 A6 */	mtlr r0
/* 80270024 0026CF84  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80270028 0026CF88  4E 80 00 20 */	blr

.global ProjectileInfo__9CBurrowerFv
ProjectileInfo__9CBurrowerFv:
/* 8027002C 0026CF8C  38 63 06 4C */	addi r3, r3, 0x64c
/* 80270030 0026CF90  4E 80 00 20 */	blr

.global Lurk__9CBurrowerFR13CStateManager9EStateMsgf
Lurk__9CBurrowerFR13CStateManager9EStateMsgf:
/* 80270034 0026CF94  2C 05 00 00 */	cmpwi r5, 0
/* 80270038 0026CF98  41 82 00 0C */	beq lbl_80270044
/* 8027003C 0026CF9C  4D 80 00 20 */	bltlr

.global sub_80270040
sub_80270040:
/* 80270040 0026CFA0  4E 80 00 20 */	blr
lbl_80270044:
/* 80270044 0026CFA4  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 80270048 0026CFA8  38 80 00 00 */	li r4, 0
/* 8027004C 0026CFAC  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80270050 0026CFB0  C0 02 BB C0 */	lfs f0, lbl_805AD8E0@sda21(r2)
/* 80270054 0026CFB4  98 03 06 AC */	stb r0, 0x6ac(r3)
/* 80270058 0026CFB8  D0 03 06 A0 */	stfs f0, 0x6a0(r3)
/* 8027005C 0026CFBC  4E 80 00 20 */	blr

.global TargetPatrol__9CBurrowerFR13CStateManager9EStateMsgf
TargetPatrol__9CBurrowerFR13CStateManager9EStateMsgf:
/* 80270060 0026CFC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80270064 0026CFC4  7C 08 02 A6 */	mflr r0
/* 80270068 0026CFC8  2C 05 00 00 */	cmpwi r5, 0
/* 8027006C 0026CFCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80270070 0026CFD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80270074 0026CFD4  7C 9F 23 78 */	mr r31, r4
/* 80270078 0026CFD8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027007C 0026CFDC  7C 7E 1B 78 */	mr r30, r3
/* 80270080 0026CFE0  41 82 00 0C */	beq lbl_8027008C
/* 80270084 0026CFE4  41 80 00 B0 */	blt lbl_80270134
/* 80270088 0026CFE8  48 00 00 AC */	b lbl_80270134
lbl_8027008C:
/* 8027008C 0026CFEC  A0 7E 06 A8 */	lhz r3, 0x6a8(r30)
/* 80270090 0026CFF0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80270094 0026CFF4  7C 03 00 40 */	cmplw r3, r0
/* 80270098 0026CFF8  41 82 00 0C */	beq lbl_802700A4
/* 8027009C 0026CFFC  38 7E 06 A8 */	addi r3, r30, 0x6a8
/* 802700A0 0026D000  48 00 00 20 */	b lbl_802700C0
lbl_802700A4:
/* 802700A4 0026D004  7F C4 F3 78 */	mr r4, r30
/* 802700A8 0026D008  7F E5 FB 78 */	mr r5, r31
/* 802700AC 0026D00C  38 61 00 0C */	addi r3, r1, 0xc
/* 802700B0 0026D010  38 C0 00 0D */	li r6, 0xd
/* 802700B4 0026D014  38 E0 00 06 */	li r7, 6
/* 802700B8 0026D018  4B F8 4E E1 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 802700BC 0026D01C  38 61 00 0C */	addi r3, r1, 0xc
lbl_802700C0:
/* 802700C0 0026D020  A0 03 00 00 */	lhz r0, 0(r3)
/* 802700C4 0026D024  7F E3 FB 78 */	mr r3, r31
/* 802700C8 0026D028  38 81 00 08 */	addi r4, r1, 8
/* 802700CC 0026D02C  B0 1E 02 DC */	sth r0, 0x2dc(r30)
/* 802700D0 0026D030  B0 01 00 10 */	sth r0, 0x10(r1)
/* 802700D4 0026D034  B0 01 00 08 */	sth r0, 8(r1)
/* 802700D8 0026D038  4B DD C4 CD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 802700DC 0026D03C  7C 64 1B 78 */	mr r4, r3
/* 802700E0 0026D040  38 61 00 14 */	addi r3, r1, 0x14
/* 802700E4 0026D044  4B E3 FB AD */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 802700E8 0026D048  80 83 00 04 */	lwz r4, 4(r3)
/* 802700EC 0026D04C  28 04 00 00 */	cmplwi r4, 0
/* 802700F0 0026D050  41 82 00 44 */	beq lbl_80270134
/* 802700F4 0026D054  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 802700F8 0026D058  38 60 00 00 */	li r3, 0
/* 802700FC 0026D05C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80270100 0026D060  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80270104 0026D064  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 80270108 0026D068  D0 3E 02 E4 */	stfs f1, 0x2e4(r30)
/* 8027010C 0026D06C  D0 5E 02 E8 */	stfs f2, 0x2e8(r30)
/* 80270110 0026D070  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 80270114 0026D074  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80270118 0026D078  98 1E 03 28 */	stb r0, 0x328(r30)
/* 8027011C 0026D07C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80270120 0026D080  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80270124 0026D084  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80270128 0026D088  D0 1E 02 EC */	stfs f0, 0x2ec(r30)
/* 8027012C 0026D08C  D0 3E 02 F0 */	stfs f1, 0x2f0(r30)
/* 80270130 0026D090  D0 5E 02 F4 */	stfs f2, 0x2f4(r30)
lbl_80270134:
/* 80270134 0026D094  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80270138 0026D098  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027013C 0026D09C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80270140 0026D0A0  7C 08 03 A6 */	mtlr r0
/* 80270144 0026D0A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80270148 0026D0A8  4E 80 00 20 */	blr

.global Retreat__9CBurrowerFR13CStateManager9EStateMsgf
Retreat__9CBurrowerFR13CStateManager9EStateMsgf:
/* 8027014C 0026D0AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80270150 0026D0B0  7C 08 02 A6 */	mflr r0
/* 80270154 0026D0B4  2C 05 00 01 */	cmpwi r5, 1
/* 80270158 0026D0B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027015C 0026D0BC  41 82 00 2C */	beq lbl_80270188
/* 80270160 0026D0C0  40 80 00 10 */	bge lbl_80270170
/* 80270164 0026D0C4  2C 05 00 00 */	cmpwi r5, 0
/* 80270168 0026D0C8  40 80 00 14 */	bge lbl_8027017C
/* 8027016C 0026D0CC  48 00 00 88 */	b lbl_802701F4
lbl_80270170:
/* 80270170 0026D0D0  2C 05 00 03 */	cmpwi r5, 3
/* 80270174 0026D0D4  40 80 00 80 */	bge lbl_802701F4
/* 80270178 0026D0D8  48 00 00 44 */	b lbl_802701BC
lbl_8027017C:
/* 8027017C 0026D0DC  38 00 00 01 */	li r0, 1
/* 80270180 0026D0E0  90 03 03 2C */	stw r0, 0x32c(r3)
/* 80270184 0026D0E4  48 00 00 70 */	b lbl_802701F4
lbl_80270188:
/* 80270188 0026D0E8  3C A0 80 3F */	lis r5, lbl_803EA7B8@ha
/* 8027018C 0026D0EC  38 C1 00 08 */	addi r6, r1, 8
/* 80270190 0026D0F0  39 45 A7 B8 */	addi r10, r5, lbl_803EA7B8@l
/* 80270194 0026D0F4  38 A0 00 0C */	li r5, 0xc
/* 80270198 0026D0F8  81 2A 00 00 */	lwz r9, 0(r10)
/* 8027019C 0026D0FC  38 E0 00 01 */	li r7, 1
/* 802701A0 0026D100  81 0A 00 04 */	lwz r8, 4(r10)
/* 802701A4 0026D104  80 0A 00 08 */	lwz r0, 8(r10)
/* 802701A8 0026D108  91 21 00 08 */	stw r9, 8(r1)
/* 802701AC 0026D10C  91 01 00 0C */	stw r8, 0xc(r1)
/* 802701B0 0026D110  90 01 00 10 */	stw r0, 0x10(r1)
/* 802701B4 0026D114  4B E0 C6 01 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 802701B8 0026D118  48 00 00 3C */	b lbl_802701F4
lbl_802701BC:
/* 802701BC 0026D11C  38 80 00 00 */	li r4, 0
/* 802701C0 0026D120  90 83 03 2C */	stw r4, 0x32c(r3)
/* 802701C4 0026D124  80 03 06 78 */	lwz r0, 0x678(r3)
/* 802701C8 0026D128  28 00 00 00 */	cmplwi r0, 0
/* 802701CC 0026D12C  41 82 00 28 */	beq lbl_802701F4
/* 802701D0 0026D130  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 802701D4 0026D134  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 802701D8 0026D138  38 80 00 01 */	li r4, 1
/* 802701DC 0026D13C  98 03 06 AC */	stb r0, 0x6ac(r3)
/* 802701E0 0026D140  80 63 06 78 */	lwz r3, 0x678(r3)
/* 802701E4 0026D144  81 83 00 00 */	lwz r12, 0(r3)
/* 802701E8 0026D148  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802701EC 0026D14C  7D 89 03 A6 */	mtctr r12
/* 802701F0 0026D150  4E 80 04 21 */	bctrl
lbl_802701F4:
/* 802701F4 0026D154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802701F8 0026D158  7C 08 03 A6 */	mtlr r0
/* 802701FC 0026D15C  38 21 00 20 */	addi r1, r1, 0x20
/* 80270200 0026D160  4E 80 00 20 */	blr

.global ProjectileAttack__9CBurrowerFR13CStateManager9EStateMsgf
ProjectileAttack__9CBurrowerFR13CStateManager9EStateMsgf:
/* 80270204 0026D164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80270208 0026D168  7C 08 02 A6 */	mflr r0
/* 8027020C 0026D16C  2C 05 00 01 */	cmpwi r5, 1
/* 80270210 0026D170  90 01 00 24 */	stw r0, 0x24(r1)
/* 80270214 0026D174  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80270218 0026D178  7C 9F 23 78 */	mr r31, r4
/* 8027021C 0026D17C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80270220 0026D180  7C 7E 1B 78 */	mr r30, r3
/* 80270224 0026D184  41 82 00 68 */	beq lbl_8027028C
/* 80270228 0026D188  40 80 00 10 */	bge lbl_80270238
/* 8027022C 0026D18C  2C 05 00 00 */	cmpwi r5, 0
/* 80270230 0026D190  40 80 00 14 */	bge lbl_80270244
/* 80270234 0026D194  48 00 00 E8 */	b lbl_8027031C
lbl_80270238:
/* 80270238 0026D198  2C 05 00 03 */	cmpwi r5, 3
/* 8027023C 0026D19C  40 80 00 E0 */	bge lbl_8027031C
/* 80270240 0026D1A0  48 00 00 80 */	b lbl_802702C0
lbl_80270244:
/* 80270244 0026D1A4  88 1E 06 AC */	lbz r0, 0x6ac(r30)
/* 80270248 0026D1A8  38 60 00 01 */	li r3, 1
/* 8027024C 0026D1AC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80270250 0026D1B0  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 80270254 0026D1B4  88 1E 06 AC */	lbz r0, 0x6ac(r30)
/* 80270258 0026D1B8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8027025C 0026D1BC  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 80270260 0026D1C0  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 80270264 0026D1C4  28 03 00 00 */	cmplwi r3, 0
/* 80270268 0026D1C8  41 82 00 18 */	beq lbl_80270280
/* 8027026C 0026D1CC  81 83 00 00 */	lwz r12, 0(r3)
/* 80270270 0026D1D0  38 80 00 00 */	li r4, 0
/* 80270274 0026D1D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80270278 0026D1D8  7D 89 03 A6 */	mtctr r12
/* 8027027C 0026D1DC  4E 80 04 21 */	bctrl
lbl_80270280:
/* 80270280 0026D1E0  38 00 00 01 */	li r0, 1
/* 80270284 0026D1E4  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80270288 0026D1E8  48 00 00 94 */	b lbl_8027031C
lbl_8027028C:
/* 8027028C 0026D1EC  3C A0 80 3F */	lis r5, lbl_803EA7AC@ha
/* 80270290 0026D1F0  38 C1 00 08 */	addi r6, r1, 8
/* 80270294 0026D1F4  39 45 A7 AC */	addi r10, r5, lbl_803EA7AC@l
/* 80270298 0026D1F8  38 A0 00 12 */	li r5, 0x12
/* 8027029C 0026D1FC  81 2A 00 00 */	lwz r9, 0(r10)
/* 802702A0 0026D200  38 E0 00 00 */	li r7, 0
/* 802702A4 0026D204  81 0A 00 04 */	lwz r8, 4(r10)
/* 802702A8 0026D208  80 0A 00 08 */	lwz r0, 8(r10)
/* 802702AC 0026D20C  91 21 00 08 */	stw r9, 8(r1)
/* 802702B0 0026D210  91 01 00 0C */	stw r8, 0xc(r1)
/* 802702B4 0026D214  90 01 00 10 */	stw r0, 0x10(r1)
/* 802702B8 0026D218  4B E0 C4 FD */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 802702BC 0026D21C  48 00 00 60 */	b lbl_8027031C
lbl_802702C0:
/* 802702C0 0026D220  38 00 00 00 */	li r0, 0
/* 802702C4 0026D224  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 802702C8 0026D228  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 802702CC 0026D22C  48 0A 22 11 */	bl Float__9CRandom16Fv
/* 802702D0 0026D230  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 802702D4 0026D234  38 C0 00 00 */	li r6, 0
/* 802702D8 0026D238  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 802702DC 0026D23C  7F C3 F3 78 */	mr r3, r30
/* 802702E0 0026D240  7F E5 FB 78 */	mr r5, r31
/* 802702E4 0026D244  38 80 00 25 */	li r4, 0x25
/* 802702E8 0026D248  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 802702EC 0026D24C  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 802702F0 0026D250  88 1E 06 AC */	lbz r0, 0x6ac(r30)
/* 802702F4 0026D254  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 802702F8 0026D258  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 802702FC 0026D25C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 80270300 0026D260  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80270304 0026D264  98 1E 03 28 */	stb r0, 0x328(r30)
/* 80270308 0026D268  4B DE 40 49 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8027030C 0026D26C  C0 02 BB B8 */	lfs f0, lbl_805AD8D8@sda21(r2)
/* 80270310 0026D270  D0 1E 05 5C */	stfs f0, 0x55c(r30)
/* 80270314 0026D274  D0 1E 05 60 */	stfs f0, 0x560(r30)
/* 80270318 0026D278  D0 1E 05 64 */	stfs f0, 0x564(r30)
lbl_8027031C:
/* 8027031C 0026D27C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80270320 0026D280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80270324 0026D284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80270328 0026D288  7C 08 03 A6 */	mtlr r0
/* 8027032C 0026D28C  38 21 00 20 */	addi r1, r1, 0x20
/* 80270330 0026D290  4E 80 00 20 */	blr

.global Active__9CBurrowerFR13CStateManager9EStateMsgf
Active__9CBurrowerFR13CStateManager9EStateMsgf:
/* 80270334 0026D294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80270338 0026D298  7C 08 02 A6 */	mflr r0
/* 8027033C 0026D29C  2C 05 00 01 */	cmpwi r5, 1
/* 80270340 0026D2A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80270344 0026D2A4  41 82 00 38 */	beq lbl_8027037C
/* 80270348 0026D2A8  40 80 00 10 */	bge lbl_80270358
/* 8027034C 0026D2AC  2C 05 00 00 */	cmpwi r5, 0
/* 80270350 0026D2B0  40 80 00 14 */	bge lbl_80270364
/* 80270354 0026D2B4  48 00 00 80 */	b lbl_802703D4
lbl_80270358:
/* 80270358 0026D2B8  2C 05 00 03 */	cmpwi r5, 3
/* 8027035C 0026D2BC  40 80 00 78 */	bge lbl_802703D4
/* 80270360 0026D2C0  48 00 00 50 */	b lbl_802703B0
lbl_80270364:
/* 80270364 0026D2C4  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 80270368 0026D2C8  38 80 00 01 */	li r4, 1
/* 8027036C 0026D2CC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80270370 0026D2D0  98 03 06 AC */	stb r0, 0x6ac(r3)
/* 80270374 0026D2D4  90 83 03 2C */	stw r4, 0x32c(r3)
/* 80270378 0026D2D8  48 00 00 5C */	b lbl_802703D4
lbl_8027037C:
/* 8027037C 0026D2DC  3C A0 80 3F */	lis r5, lbl_803EA7A0@ha
/* 80270380 0026D2E0  38 C1 00 08 */	addi r6, r1, 8
/* 80270384 0026D2E4  39 45 A7 A0 */	addi r10, r5, lbl_803EA7A0@l
/* 80270388 0026D2E8  38 A0 00 0C */	li r5, 0xc
/* 8027038C 0026D2EC  81 2A 00 00 */	lwz r9, 0(r10)
/* 80270390 0026D2F0  38 E0 00 00 */	li r7, 0
/* 80270394 0026D2F4  81 0A 00 04 */	lwz r8, 4(r10)
/* 80270398 0026D2F8  80 0A 00 08 */	lwz r0, 8(r10)
/* 8027039C 0026D2FC  91 21 00 08 */	stw r9, 8(r1)
/* 802703A0 0026D300  91 01 00 0C */	stw r8, 0xc(r1)
/* 802703A4 0026D304  90 01 00 10 */	stw r0, 0x10(r1)
/* 802703A8 0026D308  4B E0 C4 0D */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 802703AC 0026D30C  48 00 00 28 */	b lbl_802703D4
lbl_802703B0:
/* 802703B0 0026D310  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 802703B4 0026D314  38 A0 00 00 */	li r5, 0
/* 802703B8 0026D318  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 802703BC 0026D31C  38 80 00 01 */	li r4, 1
/* 802703C0 0026D320  98 03 06 AC */	stb r0, 0x6ac(r3)
/* 802703C4 0026D324  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 802703C8 0026D328  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 802703CC 0026D32C  98 03 06 AC */	stb r0, 0x6ac(r3)
/* 802703D0 0026D330  90 A3 03 2C */	stw r5, 0x32c(r3)
lbl_802703D4:
/* 802703D4 0026D334  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802703D8 0026D338  7C 08 03 A6 */	mtlr r0
/* 802703DC 0026D33C  38 21 00 20 */	addi r1, r1, 0x20
/* 802703E0 0026D340  4E 80 00 20 */	blr

.global Patrol__9CBurrowerFR13CStateManager9EStateMsgf
Patrol__9CBurrowerFR13CStateManager9EStateMsgf:
/* 802703E4 0026D344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802703E8 0026D348  7C 08 02 A6 */	mflr r0
/* 802703EC 0026D34C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802703F0 0026D350  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802703F4 0026D354  FF E0 08 90 */	fmr f31, f1
/* 802703F8 0026D358  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802703FC 0026D35C  7C BF 2B 78 */	mr r31, r5
/* 80270400 0026D360  2C 1F 00 01 */	cmpwi r31, 1
/* 80270404 0026D364  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80270408 0026D368  7C 9E 23 78 */	mr r30, r4
/* 8027040C 0026D36C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80270410 0026D370  7C 7D 1B 78 */	mr r29, r3
/* 80270414 0026D374  41 82 00 5C */	beq lbl_80270470
/* 80270418 0026D378  40 80 00 10 */	bge lbl_80270428
/* 8027041C 0026D37C  2C 1F 00 00 */	cmpwi r31, 0
/* 80270420 0026D380  40 80 00 14 */	bge lbl_80270434
/* 80270424 0026D384  48 00 00 4C */	b lbl_80270470
lbl_80270428:
/* 80270428 0026D388  2C 1F 00 03 */	cmpwi r31, 3
/* 8027042C 0026D38C  40 80 00 44 */	bge lbl_80270470
/* 80270430 0026D390  48 00 00 38 */	b lbl_80270468
lbl_80270434:
/* 80270434 0026D394  88 1D 06 AC */	lbz r0, 0x6ac(r29)
/* 80270438 0026D398  38 60 00 00 */	li r3, 0
/* 8027043C 0026D39C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80270440 0026D3A0  98 1D 06 AC */	stb r0, 0x6ac(r29)
/* 80270444 0026D3A4  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 80270448 0026D3A8  28 03 00 00 */	cmplwi r3, 0
/* 8027044C 0026D3AC  41 82 00 24 */	beq lbl_80270470
/* 80270450 0026D3B0  81 83 00 00 */	lwz r12, 0(r3)
/* 80270454 0026D3B4  38 80 00 01 */	li r4, 1
/* 80270458 0026D3B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8027045C 0026D3BC  7D 89 03 A6 */	mtctr r12
/* 80270460 0026D3C0  4E 80 04 21 */	bctrl
/* 80270464 0026D3C4  48 00 00 0C */	b lbl_80270470
lbl_80270468:
/* 80270468 0026D3C8  A0 1D 02 DC */	lhz r0, 0x2dc(r29)
/* 8027046C 0026D3CC  B0 1D 06 A8 */	sth r0, 0x6a8(r29)
lbl_80270470:
/* 80270470 0026D3D0  FC 20 F8 90 */	fmr f1, f31
/* 80270474 0026D3D4  7F A3 EB 78 */	mr r3, r29
/* 80270478 0026D3D8  7F C4 F3 78 */	mr r4, r30
/* 8027047C 0026D3DC  7F E5 FB 78 */	mr r5, r31
/* 80270480 0026D3E0  4B F8 69 F5 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 80270484 0026D3E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80270488 0026D3E8  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8027048C 0026D3EC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80270490 0026D3F0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80270494 0026D3F4  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80270498 0026D3F8  7C 08 03 A6 */	mtlr r0
/* 8027049C 0026D3FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802704A0 0026D400  4E 80 00 20 */	blr

.global Think__9CBurrowerFfR13CStateManager
Think__9CBurrowerFfR13CStateManager:
/* 802704A4 0026D404  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 802704A8 0026D408  7C 08 02 A6 */	mflr r0
/* 802704AC 0026D40C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802704B0 0026D410  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 802704B4 0026D414  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 802704B8 0026D418  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 802704BC 0026D41C  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 802704C0 0026D420  88 03 00 30 */	lbz r0, 0x30(r3)
/* 802704C4 0026D424  FF E0 08 90 */	fmr f31, f1
/* 802704C8 0026D428  7C 7F 1B 78 */	mr r31, r3
/* 802704CC 0026D42C  7C 9E 23 78 */	mr r30, r4
/* 802704D0 0026D430  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802704D4 0026D434  41 82 03 00 */	beq lbl_802707D4
/* 802704D8 0026D438  4B E0 96 41 */	bl Think__10CPatternedFfR13CStateManager
/* 802704DC 0026D43C  C0 3F 06 A4 */	lfs f1, 0x6a4(r31)
/* 802704E0 0026D440  C0 02 BB BC */	lfs f0, lbl_805AD8DC@sda21(r2)
/* 802704E4 0026D444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802704E8 0026D448  40 81 00 0C */	ble lbl_802704F4
/* 802704EC 0026D44C  EC 01 F8 28 */	fsubs f0, f1, f31
/* 802704F0 0026D450  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
lbl_802704F4:
/* 802704F4 0026D454  88 1F 06 AC */	lbz r0, 0x6ac(r31)
/* 802704F8 0026D458  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802704FC 0026D45C  41 82 01 44 */	beq lbl_80270640
/* 80270500 0026D460  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80270504 0026D464  38 61 00 84 */	addi r3, r1, 0x84
/* 80270508 0026D468  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8027050C 0026D46C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80270510 0026D470  C0 02 BB BC */	lfs f0, lbl_805AD8DC@sda21(r2)
/* 80270514 0026D474  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80270518 0026D478  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8027051C 0026D47C  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 80270520 0026D480  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 80270524 0026D484  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80270528 0026D488  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8027052C 0026D48C  C0 84 00 60 */	lfs f4, 0x60(r4)
/* 80270530 0026D490  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80270534 0026D494  EC A2 08 28 */	fsubs f5, f2, f1
/* 80270538 0026D498  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 8027053C 0026D49C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80270540 0026D4A0  EC 64 18 28 */	fsubs f3, f4, f3
/* 80270544 0026D4A4  EC 22 08 28 */	fsubs f1, f2, f1
/* 80270548 0026D4A8  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 8027054C 0026D4AC  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 80270550 0026D4B0  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80270554 0026D4B4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80270558 0026D4B8  48 0A 43 A1 */	bl Normalize__9CVector3fFv
/* 8027055C 0026D4BC  C0 02 BB BC */	lfs f0, lbl_805AD8DC@sda21(r2)
/* 80270560 0026D4C0  38 61 00 78 */	addi r3, r1, 0x78
/* 80270564 0026D4C4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80270568 0026D4C8  48 0A 43 91 */	bl Normalize__9CVector3fFv
/* 8027056C 0026D4CC  C0 C1 00 88 */	lfs f6, 0x88(r1)
/* 80270570 0026D4D0  C0 61 00 7C */	lfs f3, 0x7c(r1)
/* 80270574 0026D4D4  C0 A1 00 84 */	lfs f5, 0x84(r1)
/* 80270578 0026D4D8  EC 06 00 F2 */	fmuls f0, f6, f3
/* 8027057C 0026D4DC  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 80270580 0026D4E0  C0 E1 00 8C */	lfs f7, 0x8c(r1)
/* 80270584 0026D4E4  C0 81 00 80 */	lfs f4, 0x80(r1)
/* 80270588 0026D4E8  EC 25 00 BA */	fmadds f1, f5, f2, f0
/* 8027058C 0026D4EC  C0 02 BB C4 */	lfs f0, lbl_805AD8E4@sda21(r2)
/* 80270590 0026D4F0  EC 27 09 3A */	fmadds f1, f7, f4, f1
/* 80270594 0026D4F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80270598 0026D4F8  40 80 00 C0 */	bge lbl_80270658
/* 8027059C 0026D4FC  C0 02 BB CC */	lfs f0, lbl_805AD8EC@sda21(r2)
/* 802705A0 0026D500  38 61 00 58 */	addi r3, r1, 0x58
/* 802705A4 0026D504  C0 22 BB C8 */	lfs f1, lbl_805AD8E8@sda21(r2)
/* 802705A8 0026D508  38 81 00 4C */	addi r4, r1, 0x4c
/* 802705AC 0026D50C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802705B0 0026D510  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 802705B4 0026D514  38 A1 00 40 */	addi r5, r1, 0x40
/* 802705B8 0026D518  38 C1 00 08 */	addi r6, r1, 8
/* 802705BC 0026D51C  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 802705C0 0026D520  EC 01 00 32 */	fmuls f0, f1, f0
/* 802705C4 0026D524  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 802705C8 0026D528  D0 01 00 08 */	stfs f0, 8(r1)
/* 802705CC 0026D52C  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 802705D0 0026D530  D0 C1 00 50 */	stfs f6, 0x50(r1)
/* 802705D4 0026D534  D0 E1 00 54 */	stfs f7, 0x54(r1)
/* 802705D8 0026D538  48 0A 10 BD */	bl LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
/* 802705DC 0026D53C  C0 61 00 58 */	lfs f3, 0x58(r1)
/* 802705E0 0026D540  38 A1 00 6C */	addi r5, r1, 0x6c
/* 802705E4 0026D544  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 802705E8 0026D548  38 61 00 24 */	addi r3, r1, 0x24
/* 802705EC 0026D54C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 802705F0 0026D550  38 9F 00 34 */	addi r4, r31, 0x34
/* 802705F4 0026D554  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 802705F8 0026D558  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 802705FC 0026D55C  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80270600 0026D560  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80270604 0026D564  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80270608 0026D568  48 0A 24 1D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8027060C 0026D56C  C0 81 00 68 */	lfs f4, 0x68(r1)
/* 80270610 0026D570  FC 20 F8 90 */	fmr f1, f31
/* 80270614 0026D574  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80270618 0026D578  7F E3 FB 78 */	mr r3, r31
/* 8027061C 0026D57C  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80270620 0026D580  38 81 00 30 */	addi r4, r1, 0x30
/* 80270624 0026D584  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80270628 0026D588  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8027062C 0026D58C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80270630 0026D590  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80270634 0026D594  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80270638 0026D598  4B EA A7 DD */	bl RotateToOR__13CPhysicsActorFRC11CQuaternionf
/* 8027063C 0026D59C  48 00 00 1C */	b lbl_80270658
lbl_80270640:
/* 80270640 0026D5A0  C0 3F 06 9C */	lfs f1, 0x69c(r31)
/* 80270644 0026D5A4  C0 02 BB BC */	lfs f0, lbl_805AD8DC@sda21(r2)
/* 80270648 0026D5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027064C 0026D5AC  40 81 00 0C */	ble lbl_80270658
/* 80270650 0026D5B0  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80270654 0026D5B4  D0 1F 06 9C */	stfs f0, 0x69c(r31)
lbl_80270658:
/* 80270658 0026D5B8  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 8027065C 0026D5BC  28 00 00 00 */	cmplwi r0, 0
/* 80270660 0026D5C0  41 82 01 0C */	beq lbl_8027076C
/* 80270664 0026D5C4  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 80270668 0026D5C8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8027066C 0026D5CC  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 80270670 0026D5D0  88 1F 06 AC */	lbz r0, 0x6ac(r31)
/* 80270674 0026D5D4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80270678 0026D5D8  40 82 00 DC */	bne lbl_80270754
/* 8027067C 0026D5DC  C0 3F 06 A0 */	lfs f1, 0x6a0(r31)
/* 80270680 0026D5E0  C0 02 BB BC */	lfs f0, lbl_805AD8DC@sda21(r2)
/* 80270684 0026D5E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80270688 0026D5E8  4C 40 13 82 */	cror 2, 0, 2
/* 8027068C 0026D5EC  40 82 00 C8 */	bne lbl_80270754
/* 80270690 0026D5F0  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 80270694 0026D5F4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80270698 0026D5F8  41 82 00 B4 */	beq lbl_8027074C
/* 8027069C 0026D5FC  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 802706A0 0026D600  38 80 00 01 */	li r4, 1
/* 802706A4 0026D604  81 83 00 00 */	lwz r12, 0(r3)
/* 802706A8 0026D608  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802706AC 0026D60C  7D 89 03 A6 */	mtctr r12
/* 802706B0 0026D610  4E 80 04 21 */	bctrl
/* 802706B4 0026D614  83 DF 06 74 */	lwz r30, 0x674(r31)
/* 802706B8 0026D618  38 61 00 90 */	addi r3, r1, 0x90
/* 802706BC 0026D61C  38 9F 00 34 */	addi r4, r31, 0x34
/* 802706C0 0026D620  48 0A 25 81 */	bl GetRotation__12CTransform4fCFv
/* 802706C4 0026D624  7F C3 F3 78 */	mr r3, r30
/* 802706C8 0026D628  38 81 00 90 */	addi r4, r1, 0x90
/* 802706CC 0026D62C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802706D0 0026D630  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802706D4 0026D634  7D 89 03 A6 */	mtctr r12
/* 802706D8 0026D638  4E 80 04 21 */	bctrl
/* 802706DC 0026D63C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 802706E0 0026D640  38 81 00 18 */	addi r4, r1, 0x18
/* 802706E4 0026D644  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 802706E8 0026D648  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802706EC 0026D64C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802706F0 0026D650  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 802706F4 0026D654  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 802706F8 0026D658  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 802706FC 0026D65C  81 83 00 00 */	lwz r12, 0(r3)
/* 80270700 0026D660  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80270704 0026D664  7D 89 03 A6 */	mtctr r12
/* 80270708 0026D668  4E 80 04 21 */	bctrl
/* 8027070C 0026D66C  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80270710 0026D670  38 80 00 01 */	li r4, 1
/* 80270714 0026D674  48 0A C1 AD */	bl ForceParticleCreation__11CElementGenFi
/* 80270718 0026D678  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 8027071C 0026D67C  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 80270720 0026D680  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 80270724 0026D684  81 83 00 00 */	lwz r12, 0(r3)
/* 80270728 0026D688  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8027072C 0026D68C  7D 89 03 A6 */	mtctr r12
/* 80270730 0026D690  4E 80 04 21 */	bctrl
/* 80270734 0026D694  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80270738 0026D698  38 80 00 00 */	li r4, 0
/* 8027073C 0026D69C  81 83 00 00 */	lwz r12, 0(r3)
/* 80270740 0026D6A0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80270744 0026D6A4  7D 89 03 A6 */	mtctr r12
/* 80270748 0026D6A8  4E 80 04 21 */	bctrl
lbl_8027074C:
/* 8027074C 0026D6AC  C0 02 BB C0 */	lfs f0, lbl_805AD8E0@sda21(r2)
/* 80270750 0026D6B0  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
lbl_80270754:
/* 80270754 0026D6B4  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80270758 0026D6B8  FC 20 F8 90 */	fmr f1, f31
/* 8027075C 0026D6BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80270760 0026D6C0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80270764 0026D6C4  7D 89 03 A6 */	mtctr r12
/* 80270768 0026D6C8  4E 80 04 21 */	bctrl
lbl_8027076C:
/* 8027076C 0026D6CC  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80270770 0026D6D0  28 03 00 00 */	cmplwi r3, 0
/* 80270774 0026D6D4  41 82 00 60 */	beq lbl_802707D4
/* 80270778 0026D6D8  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 8027077C 0026D6DC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80270780 0026D6E0  41 82 00 3C */	beq lbl_802707BC
/* 80270784 0026D6E4  88 1F 06 AC */	lbz r0, 0x6ac(r31)
/* 80270788 0026D6E8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8027078C 0026D6EC  40 82 00 30 */	bne lbl_802707BC
/* 80270790 0026D6F0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80270794 0026D6F4  38 81 00 0C */	addi r4, r1, 0xc
/* 80270798 0026D6F8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8027079C 0026D6FC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802707A0 0026D700  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802707A4 0026D704  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802707A8 0026D708  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802707AC 0026D70C  81 83 00 00 */	lwz r12, 0(r3)
/* 802707B0 0026D710  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802707B4 0026D714  7D 89 03 A6 */	mtctr r12
/* 802707B8 0026D718  4E 80 04 21 */	bctrl
lbl_802707BC:
/* 802707BC 0026D71C  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 802707C0 0026D720  FC 20 F8 90 */	fmr f1, f31
/* 802707C4 0026D724  81 83 00 00 */	lwz r12, 0(r3)
/* 802707C8 0026D728  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802707CC 0026D72C  7D 89 03 A6 */	mtctr r12
/* 802707D0 0026D730  4E 80 04 21 */	bctrl
lbl_802707D4:
/* 802707D4 0026D734  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 802707D8 0026D738  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802707DC 0026D73C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 802707E0 0026D740  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 802707E4 0026D744  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 802707E8 0026D748  7C 08 03 A6 */	mtlr r0
/* 802707EC 0026D74C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 802707F0 0026D750  4E 80 00 20 */	blr

.global Render__9CBurrowerFRC13CStateManager
Render__9CBurrowerFRC13CStateManager:
/* 802707F4 0026D754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802707F8 0026D758  7C 08 02 A6 */	mflr r0
/* 802707FC 0026D75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80270800 0026D760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80270804 0026D764  7C 9F 23 78 */	mr r31, r4
/* 80270808 0026D768  93 C1 00 08 */	stw r30, 8(r1)
/* 8027080C 0026D76C  7C 7E 1B 78 */	mr r30, r3
/* 80270810 0026D770  80 63 00 90 */	lwz r3, 0x90(r3)
/* 80270814 0026D774  28 03 00 00 */	cmplwi r3, 0
/* 80270818 0026D778  41 82 00 28 */	beq lbl_80270840
/* 8027081C 0026D77C  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 80270820 0026D780  28 00 00 00 */	cmplwi r0, 0
/* 80270824 0026D784  41 82 00 1C */	beq lbl_80270840
/* 80270828 0026D788  4B E9 45 61 */	bl ActivateLights__12CActorLightsCFv
/* 8027082C 0026D78C  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 80270830 0026D790  81 83 00 00 */	lwz r12, 0(r3)
/* 80270834 0026D794  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80270838 0026D798  7D 89 03 A6 */	mtctr r12
/* 8027083C 0026D79C  4E 80 04 21 */	bctrl
lbl_80270840:
/* 80270840 0026D7A0  7F C3 F3 78 */	mr r3, r30
/* 80270844 0026D7A4  7F E4 FB 78 */	mr r4, r31
/* 80270848 0026D7A8  4B E0 77 E5 */	bl Render__10CPatternedCFRC13CStateManager
/* 8027084C 0026D7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80270850 0026D7B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80270854 0026D7B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80270858 0026D7B8  7C 08 03 A6 */	mtlr r0
/* 8027085C 0026D7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80270860 0026D7C0  4E 80 00 20 */	blr

.global AcceptScriptMsg__9CBurrowerF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__9CBurrowerF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80270864 0026D7C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80270868 0026D7C8  7C 08 02 A6 */	mflr r0
/* 8027086C 0026D7CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80270870 0026D7D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80270874 0026D7D4  7C DF 33 78 */	mr r31, r6
/* 80270878 0026D7D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027087C 0026D7DC  7C 9E 23 78 */	mr r30, r4
/* 80270880 0026D7E0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80270884 0026D7E4  7C 7D 1B 78 */	mr r29, r3
/* 80270888 0026D7E8  A0 05 00 00 */	lhz r0, 0(r5)
/* 8027088C 0026D7EC  38 A1 00 08 */	addi r5, r1, 8
/* 80270890 0026D7F0  B0 01 00 08 */	sth r0, 8(r1)
/* 80270894 0026D7F4  4B E0 C2 E5 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80270898 0026D7F8  2C 1E 00 23 */	cmpwi r30, 0x23
/* 8027089C 0026D7FC  41 82 00 30 */	beq lbl_802708CC
/* 802708A0 0026D800  40 80 00 10 */	bge lbl_802708B0
/* 802708A4 0026D804  2C 1E 00 21 */	cmpwi r30, 0x21
/* 802708A8 0026D808  41 82 00 14 */	beq lbl_802708BC
/* 802708AC 0026D80C  48 00 00 98 */	b lbl_80270944
lbl_802708B0:
/* 802708B0 0026D810  2C 1E 00 2A */	cmpwi r30, 0x2a
/* 802708B4 0026D814  41 82 00 88 */	beq lbl_8027093C
/* 802708B8 0026D818  48 00 00 8C */	b lbl_80270944
lbl_802708BC:
/* 802708BC 0026D81C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 802708C0 0026D820  7F E4 FB 78 */	mr r4, r31
/* 802708C4 0026D824  4B EC A4 2D */	bl Activate__15CBodyControllerFR13CStateManager
/* 802708C8 0026D828  48 00 00 7C */	b lbl_80270944
lbl_802708CC:
/* 802708CC 0026D82C  80 FD 00 04 */	lwz r7, 4(r29)
/* 802708D0 0026D830  7F A3 EB 78 */	mr r3, r29
/* 802708D4 0026D834  80 DF 08 50 */	lwz r6, 0x850(r31)
/* 802708D8 0026D838  7F E4 FB 78 */	mr r4, r31
/* 802708DC 0026D83C  54 E5 18 38 */	slwi r5, r7, 3
/* 802708E0 0026D840  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802708E4 0026D844  80 C6 00 20 */	lwz r6, 0x20(r6)
/* 802708E8 0026D848  38 05 00 04 */	addi r0, r5, 4
/* 802708EC 0026D84C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 802708F0 0026D850  7C A6 00 2E */	lwzx r5, r6, r0
/* 802708F4 0026D854  C0 22 BB BC */	lfs f1, lbl_805AD8DC@sda21(r2)
/* 802708F8 0026D858  80 A5 01 2C */	lwz r5, 0x12c(r5)
/* 802708FC 0026D85C  80 05 10 BC */	lwz r0, 0x10bc(r5)
/* 80270900 0026D860  90 1D 05 68 */	stw r0, 0x568(r29)
/* 80270904 0026D864  4B F8 52 91 */	bl HasPatrolPath__10CPatternedFR13CStateManagerf
/* 80270908 0026D868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027090C 0026D86C  40 82 00 38 */	bne lbl_80270944
/* 80270910 0026D870  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 80270914 0026D874  28 03 00 00 */	cmplwi r3, 0
/* 80270918 0026D878  41 82 00 18 */	beq lbl_80270930
/* 8027091C 0026D87C  81 83 00 00 */	lwz r12, 0(r3)
/* 80270920 0026D880  38 80 00 01 */	li r4, 1
/* 80270924 0026D884  81 8C 00 08 */	lwz r12, 8(r12)
/* 80270928 0026D888  7D 89 03 A6 */	mtctr r12
/* 8027092C 0026D88C  4E 80 04 21 */	bctrl
lbl_80270930:
/* 80270930 0026D890  38 00 00 00 */	li r0, 0
/* 80270934 0026D894  90 1D 06 78 */	stw r0, 0x678(r29)
/* 80270938 0026D898  48 00 00 0C */	b lbl_80270944
lbl_8027093C:
/* 8027093C 0026D89C  C0 02 BB B8 */	lfs f0, lbl_805AD8D8@sda21(r2)
/* 80270940 0026D8A0  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
lbl_80270944:
/* 80270944 0026D8A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80270948 0026D8A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027094C 0026D8AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80270950 0026D8B0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80270954 0026D8B4  7C 08 03 A6 */	mtlr r0
/* 80270958 0026D8B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8027095C 0026D8BC  4E 80 00 20 */	blr

.global __dt__9CBurrowerFv
__dt__9CBurrowerFv:
/* 80270960 0026D8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80270964 0026D8C4  7C 08 02 A6 */	mflr r0
/* 80270968 0026D8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027096C 0026D8CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80270970 0026D8D0  7C 9F 23 78 */	mr r31, r4
/* 80270974 0026D8D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80270978 0026D8D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8027097C 0026D8DC  41 82 01 6C */	beq lbl_80270AE8
/* 80270980 0026D8E0  3C 60 80 3F */	lis r3, lbl_803EA7C4@ha
/* 80270984 0026D8E4  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80270988 0026D8E8  38 03 A7 C4 */	addi r0, r3, lbl_803EA7C4@l
/* 8027098C 0026D8EC  90 1E 00 00 */	stw r0, 0(r30)
/* 80270990 0026D8F0  41 82 00 30 */	beq lbl_802709C0
/* 80270994 0026D8F4  88 1E 06 98 */	lbz r0, 0x698(r30)
/* 80270998 0026D8F8  28 00 00 00 */	cmplwi r0, 0
/* 8027099C 0026D8FC  41 82 00 1C */	beq lbl_802709B8
/* 802709A0 0026D900  34 7E 06 8C */	addic. r3, r30, 0x68c
/* 802709A4 0026D904  41 82 00 14 */	beq lbl_802709B8
/* 802709A8 0026D908  28 03 00 00 */	cmplwi r3, 0
/* 802709AC 0026D90C  41 82 00 0C */	beq lbl_802709B8
/* 802709B0 0026D910  38 80 00 00 */	li r4, 0
/* 802709B4 0026D914  48 0D 04 8D */	bl __dt__6CTokenFv
lbl_802709B8:
/* 802709B8 0026D918  38 00 00 00 */	li r0, 0
/* 802709BC 0026D91C  98 1E 06 98 */	stb r0, 0x698(r30)
lbl_802709C0:
/* 802709C0 0026D920  34 1E 06 7C */	addic. r0, r30, 0x67c
/* 802709C4 0026D924  41 82 00 30 */	beq lbl_802709F4
/* 802709C8 0026D928  88 1E 06 88 */	lbz r0, 0x688(r30)
/* 802709CC 0026D92C  28 00 00 00 */	cmplwi r0, 0
/* 802709D0 0026D930  41 82 00 1C */	beq lbl_802709EC
/* 802709D4 0026D934  34 7E 06 7C */	addic. r3, r30, 0x67c
/* 802709D8 0026D938  41 82 00 14 */	beq lbl_802709EC
/* 802709DC 0026D93C  28 03 00 00 */	cmplwi r3, 0
/* 802709E0 0026D940  41 82 00 0C */	beq lbl_802709EC
/* 802709E4 0026D944  38 80 00 00 */	li r4, 0
/* 802709E8 0026D948  48 0D 04 59 */	bl __dt__6CTokenFv
lbl_802709EC:
/* 802709EC 0026D94C  38 00 00 00 */	li r0, 0
/* 802709F0 0026D950  98 1E 06 88 */	stb r0, 0x688(r30)
lbl_802709F4:
/* 802709F4 0026D954  34 1E 06 78 */	addic. r0, r30, 0x678
/* 802709F8 0026D958  41 82 00 24 */	beq lbl_80270A1C
/* 802709FC 0026D95C  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 80270A00 0026D960  28 03 00 00 */	cmplwi r3, 0
/* 80270A04 0026D964  41 82 00 18 */	beq lbl_80270A1C
/* 80270A08 0026D968  81 83 00 00 */	lwz r12, 0(r3)
/* 80270A0C 0026D96C  38 80 00 01 */	li r4, 1
/* 80270A10 0026D970  81 8C 00 08 */	lwz r12, 8(r12)
/* 80270A14 0026D974  7D 89 03 A6 */	mtctr r12
/* 80270A18 0026D978  4E 80 04 21 */	bctrl
lbl_80270A1C:
/* 80270A1C 0026D97C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80270A20 0026D980  41 82 00 24 */	beq lbl_80270A44
/* 80270A24 0026D984  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 80270A28 0026D988  28 03 00 00 */	cmplwi r3, 0
/* 80270A2C 0026D98C  41 82 00 18 */	beq lbl_80270A44
/* 80270A30 0026D990  81 83 00 00 */	lwz r12, 0(r3)
/* 80270A34 0026D994  38 80 00 01 */	li r4, 1
/* 80270A38 0026D998  81 8C 00 08 */	lwz r12, 8(r12)
/* 80270A3C 0026D99C  7D 89 03 A6 */	mtctr r12
/* 80270A40 0026D9A0  4E 80 04 21 */	bctrl
lbl_80270A44:
/* 80270A44 0026D9A4  34 1E 06 4C */	addic. r0, r30, 0x64c
/* 80270A48 0026D9A8  41 82 00 20 */	beq lbl_80270A68
/* 80270A4C 0026D9AC  34 1E 06 4C */	addic. r0, r30, 0x64c
/* 80270A50 0026D9B0  41 82 00 18 */	beq lbl_80270A68
/* 80270A54 0026D9B4  34 1E 06 4C */	addic. r0, r30, 0x64c
/* 80270A58 0026D9B8  41 82 00 10 */	beq lbl_80270A68
/* 80270A5C 0026D9BC  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80270A60 0026D9C0  38 80 00 00 */	li r4, 0
/* 80270A64 0026D9C4  48 0D 03 DD */	bl __dt__6CTokenFv
lbl_80270A68:
/* 80270A68 0026D9C8  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80270A6C 0026D9CC  41 82 00 60 */	beq lbl_80270ACC
/* 80270A70 0026D9D0  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80270A74 0026D9D4  41 82 00 58 */	beq lbl_80270ACC
/* 80270A78 0026D9D8  80 BE 05 6C */	lwz r5, 0x56c(r30)
/* 80270A7C 0026D9DC  38 60 00 00 */	li r3, 0
/* 80270A80 0026D9E0  2C 05 00 00 */	cmpwi r5, 0
/* 80270A84 0026D9E4  40 81 00 40 */	ble lbl_80270AC4
/* 80270A88 0026D9E8  2C 05 00 08 */	cmpwi r5, 8
/* 80270A8C 0026D9EC  38 85 FF F8 */	addi r4, r5, -8
/* 80270A90 0026D9F0  40 81 00 20 */	ble lbl_80270AB0
/* 80270A94 0026D9F4  38 04 00 07 */	addi r0, r4, 7
/* 80270A98 0026D9F8  54 00 E8 FE */	srwi r0, r0, 3
/* 80270A9C 0026D9FC  7C 09 03 A6 */	mtctr r0
/* 80270AA0 0026DA00  2C 04 00 00 */	cmpwi r4, 0
/* 80270AA4 0026DA04  40 81 00 0C */	ble lbl_80270AB0
lbl_80270AA8:
/* 80270AA8 0026DA08  38 63 00 08 */	addi r3, r3, 8
/* 80270AAC 0026DA0C  42 00 FF FC */	bdnz lbl_80270AA8
lbl_80270AB0:
/* 80270AB0 0026DA10  7C 03 28 50 */	subf r0, r3, r5
/* 80270AB4 0026DA14  7C 09 03 A6 */	mtctr r0
/* 80270AB8 0026DA18  7C 03 28 00 */	cmpw r3, r5
/* 80270ABC 0026DA1C  40 80 00 08 */	bge lbl_80270AC4
lbl_80270AC0:
/* 80270AC0 0026DA20  42 00 00 00 */	bdnz lbl_80270AC0
lbl_80270AC4:
/* 80270AC4 0026DA24  38 00 00 00 */	li r0, 0
/* 80270AC8 0026DA28  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80270ACC:
/* 80270ACC 0026DA2C  7F C3 F3 78 */	mr r3, r30
/* 80270AD0 0026DA30  38 80 00 00 */	li r4, 0
/* 80270AD4 0026DA34  4B E0 6A 9D */	bl __dt__10CPatternedFv
/* 80270AD8 0026DA38  7F E0 07 35 */	extsh. r0, r31
/* 80270ADC 0026DA3C  40 81 00 0C */	ble lbl_80270AE8
/* 80270AE0 0026DA40  7F C3 F3 78 */	mr r3, r30
/* 80270AE4 0026DA44  48 0A 4E 4D */	bl Free__7CMemoryFPCv
lbl_80270AE8:
/* 80270AE8 0026DA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80270AEC 0026DA4C  7F C3 F3 78 */	mr r3, r30
/* 80270AF0 0026DA50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80270AF4 0026DA54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80270AF8 0026DA58  7C 08 03 A6 */	mtlr r0
/* 80270AFC 0026DA5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80270B00 0026DA60  4E 80 00 20 */	blr

.global __ct__9CBurrower
__ct__9CBurrower:
/* 80270B04 0026DA64  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80270B08 0026DA68  7C 08 02 A6 */	mflr r0
/* 80270B0C 0026DA6C  39 60 00 00 */	li r11, 0
/* 80270B10 0026DA70  7D 0C 43 78 */	mr r12, r8
/* 80270B14 0026DA74  90 01 01 14 */	stw r0, 0x114(r1)
/* 80270B18 0026DA78  BE E1 00 EC */	stmw r23, 0xec(r1)
/* 80270B1C 0026DA7C  7D 37 4B 78 */	mr r23, r9
/* 80270B20 0026DA80  7C E9 3B 78 */	mr r9, r7
/* 80270B24 0026DA84  83 61 01 18 */	lwz r27, 0x118(r1)
/* 80270B28 0026DA88  83 81 01 1C */	lwz r28, 0x11c(r1)
/* 80270B2C 0026DA8C  7C 7F 1B 78 */	mr r31, r3
/* 80270B30 0026DA90  83 01 01 20 */	lwz r24, 0x120(r1)
/* 80270B34 0026DA94  38 E0 00 00 */	li r7, 0
/* 80270B38 0026DA98  83 21 01 24 */	lwz r25, 0x124(r1)
/* 80270B3C 0026DA9C  83 A1 01 28 */	lwz r29, 0x128(r1)
/* 80270B40 0026DAA0  83 41 01 2C */	lwz r26, 0x12c(r1)
/* 80270B44 0026DAA4  83 C1 01 30 */	lwz r30, 0x130(r1)
/* 80270B48 0026DAA8  A0 04 00 00 */	lhz r0, 0(r4)
/* 80270B4C 0026DAAC  7C C4 33 78 */	mr r4, r6
/* 80270B50 0026DAB0  7C A6 2B 78 */	mr r6, r5
/* 80270B54 0026DAB4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80270B58 0026DAB8  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80270B5C 0026DABC  7C 88 23 78 */	mr r8, r4
/* 80270B60 0026DAC0  38 00 00 01 */	li r0, 1
/* 80270B64 0026DAC4  38 80 00 05 */	li r4, 5
/* 80270B68 0026DAC8  92 E1 00 08 */	stw r23, 8(r1)
/* 80270B6C 0026DACC  91 61 00 0C */	stw r11, 0xc(r1)
/* 80270B70 0026DAD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80270B74 0026DAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80270B78 0026DAD8  91 41 00 18 */	stw r10, 0x18(r1)
/* 80270B7C 0026DADC  7D 8A 63 78 */	mr r10, r12
/* 80270B80 0026DAE0  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80270B84 0026DAE4  4B E0 C8 CD */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 80270B88 0026DAE8  3C 60 80 3F */	lis r3, lbl_803EA7C4@ha
/* 80270B8C 0026DAEC  C0 22 BB B8 */	lfs f1, lbl_805AD8D8@sda21(r2)
/* 80270B90 0026DAF0  38 03 A7 C4 */	addi r0, r3, lbl_803EA7C4@l
/* 80270B94 0026DAF4  38 7F 05 68 */	addi r3, r31, 0x568
/* 80270B98 0026DAF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80270B9C 0026DAFC  FC 40 08 90 */	fmr f2, f1
/* 80270BA0 0026DB00  38 80 00 00 */	li r4, 0
/* 80270BA4 0026DB04  38 A0 00 01 */	li r5, 1
/* 80270BA8 0026DB08  80 D7 01 0C */	lwz r6, 0x10c(r23)
/* 80270BAC 0026DB0C  4B F5 81 E9 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 80270BB0 0026DB10  80 98 00 00 */	lwz r4, 0(r24)
/* 80270BB4 0026DB14  7F 25 CB 78 */	mr r5, r25
/* 80270BB8 0026DB18  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80270BBC 0026DB1C  4B FA B4 ED */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 80270BC0 0026DB20  38 00 00 00 */	li r0, 0
/* 80270BC4 0026DB24  C0 02 BB BC */	lfs f0, lbl_805AD8DC@sda21(r2)
/* 80270BC8 0026DB28  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80270BCC 0026DB2C  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 80270BD0 0026DB30  90 1F 06 78 */	stw r0, 0x678(r31)
/* 80270BD4 0026DB34  98 1F 06 88 */	stb r0, 0x688(r31)
/* 80270BD8 0026DB38  98 1F 06 98 */	stb r0, 0x698(r31)
/* 80270BDC 0026DB3C  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 80270BE0 0026DB40  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 80270BE4 0026DB44  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 80270BE8 0026DB48  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80270BEC 0026DB4C  B0 1F 06 A8 */	sth r0, 0x6a8(r31)
/* 80270BF0 0026DB50  48 07 7D C1 */	bl TranslateSFXID__11CSfxManagerFUs
/* 80270BF4 0026DB54  B0 7F 06 AA */	sth r3, 0x6aa(r31)
/* 80270BF8 0026DB58  38 A0 00 00 */	li r5, 0
/* 80270BFC 0026DB5C  7F E3 FB 78 */	mr r3, r31
/* 80270C00 0026DB60  38 80 00 00 */	li r4, 0
/* 80270C04 0026DB64  88 1F 06 AC */	lbz r0, 0x6ac(r31)
/* 80270C08 0026DB68  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80270C0C 0026DB6C  98 1F 06 AC */	stb r0, 0x6ac(r31)
/* 80270C10 0026DB70  88 1F 06 AC */	lbz r0, 0x6ac(r31)
/* 80270C14 0026DB74  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80270C18 0026DB78  98 1F 06 AC */	stb r0, 0x6ac(r31)
/* 80270C1C 0026DB7C  4B DE 21 51 */	bl CreateShadow__6CActorFb
/* 80270C20 0026DB80  7F E3 FB 78 */	mr r3, r31
/* 80270C24 0026DB84  4B E0 6C 71 */	bl MakeThermalColdAndHot__10CPatternedFv
/* 80270C28 0026DB88  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80270C2C 0026DB8C  48 0D 01 59 */	bl Lock__6CTokenFv
/* 80270C30 0026DB90  80 9B 00 00 */	lwz r4, 0(r27)
/* 80270C34 0026DB94  3C 04 00 01 */	addis r0, r4, 1
/* 80270C38 0026DB98  28 00 FF FF */	cmplwi r0, 0xffff
/* 80270C3C 0026DB9C  41 82 01 7C */	beq lbl_80270DB8
/* 80270C40 0026DBA0  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80270C44 0026DBA4  90 81 00 70 */	stw r4, 0x70(r1)
/* 80270C48 0026DBA8  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80270C4C 0026DBAC  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80270C50 0026DBB0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80270C54 0026DBB4  38 61 00 64 */	addi r3, r1, 0x64
/* 80270C58 0026DBB8  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80270C5C 0026DBBC  81 84 00 00 */	lwz r12, 0(r4)
/* 80270C60 0026DBC0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80270C64 0026DBC4  7D 89 03 A6 */	mtctr r12
/* 80270C68 0026DBC8  4E 80 04 21 */	bctrl
/* 80270C6C 0026DBCC  3A E1 00 C0 */	addi r23, r1, 0xc0
/* 80270C70 0026DBD0  38 81 00 64 */	addi r4, r1, 0x64
/* 80270C74 0026DBD4  7E E3 BB 78 */	mr r3, r23
/* 80270C78 0026DBD8  48 0D 02 31 */	bl __ct__6CTokenFRC6CToken
/* 80270C7C 0026DBDC  7E E3 BB 78 */	mr r3, r23
/* 80270C80 0026DBE0  48 0D 01 8D */	bl GetObj__6CTokenFv
/* 80270C84 0026DBE4  80 03 00 04 */	lwz r0, 4(r3)
/* 80270C88 0026DBE8  3A E1 00 D8 */	addi r23, r1, 0xd8
/* 80270C8C 0026DBEC  7E E3 BB 78 */	mr r3, r23
/* 80270C90 0026DBF0  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80270C94 0026DBF4  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80270C98 0026DBF8  48 0D 02 11 */	bl __ct__6CTokenFRC6CToken
/* 80270C9C 0026DBFC  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 80270CA0 0026DC00  7E E3 BB 78 */	mr r3, r23
/* 80270CA4 0026DC04  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80270CA8 0026DC08  48 0D 00 DD */	bl Lock__6CTokenFv
/* 80270CAC 0026DC0C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80270CB0 0026DC10  38 80 00 00 */	li r4, 0
/* 80270CB4 0026DC14  48 0D 01 8D */	bl __dt__6CTokenFv
/* 80270CB8 0026DC18  38 61 00 64 */	addi r3, r1, 0x64
/* 80270CBC 0026DC1C  38 80 FF FF */	li r4, -1
/* 80270CC0 0026DC20  48 0D 01 81 */	bl __dt__6CTokenFv
/* 80270CC4 0026DC24  3C 60 80 3D */	lis r3, lbl_803D5420@ha
/* 80270CC8 0026DC28  3A E0 00 00 */	li r23, 0
/* 80270CCC 0026DC2C  38 83 54 20 */	addi r4, r3, lbl_803D5420@l
/* 80270CD0 0026DC30  38 A0 00 00 */	li r5, 0
/* 80270CD4 0026DC34  38 60 03 40 */	li r3, 0x340
/* 80270CD8 0026DC38  48 0A 4B 95 */	bl __nw__FUlPCcPCc
/* 80270CDC 0026DC3C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80270CE0 0026DC40  41 82 00 2C */	beq lbl_80270D0C
/* 80270CE4 0026DC44  38 61 00 5C */	addi r3, r1, 0x5c
/* 80270CE8 0026DC48  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80270CEC 0026DC4C  48 0D 01 BD */	bl __ct__6CTokenFRC6CToken
/* 80270CF0 0026DC50  7F 63 DB 78 */	mr r3, r27
/* 80270CF4 0026DC54  38 81 00 5C */	addi r4, r1, 0x5c
/* 80270CF8 0026DC58  3A E0 00 01 */	li r23, 1
/* 80270CFC 0026DC5C  38 A0 00 01 */	li r5, 1
/* 80270D00 0026DC60  38 C0 00 01 */	li r6, 1
/* 80270D04 0026DC64  48 0A E6 DD */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 80270D08 0026DC68  7C 7B 1B 78 */	mr r27, r3
lbl_80270D0C:
/* 80270D0C 0026DC6C  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80270D10 0026DC70  28 03 00 00 */	cmplwi r3, 0
/* 80270D14 0026DC74  41 82 00 18 */	beq lbl_80270D2C
/* 80270D18 0026DC78  81 83 00 00 */	lwz r12, 0(r3)
/* 80270D1C 0026DC7C  38 80 00 01 */	li r4, 1
/* 80270D20 0026DC80  81 8C 00 08 */	lwz r12, 8(r12)
/* 80270D24 0026DC84  7D 89 03 A6 */	mtctr r12
/* 80270D28 0026DC88  4E 80 04 21 */	bctrl
lbl_80270D2C:
/* 80270D2C 0026DC8C  7E E0 07 75 */	extsb. r0, r23
/* 80270D30 0026DC90  93 7F 06 74 */	stw r27, 0x674(r31)
/* 80270D34 0026DC94  41 82 00 10 */	beq lbl_80270D44
/* 80270D38 0026DC98  38 61 00 5C */	addi r3, r1, 0x5c
/* 80270D3C 0026DC9C  38 80 00 00 */	li r4, 0
/* 80270D40 0026DCA0  48 0D 01 01 */	bl __dt__6CTokenFv
lbl_80270D44:
/* 80270D44 0026DCA4  80 BF 06 74 */	lwz r5, 0x674(r31)
/* 80270D48 0026DCA8  28 05 00 00 */	cmplwi r5, 0
/* 80270D4C 0026DCAC  41 82 00 60 */	beq lbl_80270DAC
/* 80270D50 0026DCB0  88 05 02 6D */	lbz r0, 0x26d(r5)
/* 80270D54 0026DCB4  38 60 00 01 */	li r3, 1
/* 80270D58 0026DCB8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80270D5C 0026DCBC  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80270D60 0026DCC0  98 05 02 6D */	stb r0, 0x26d(r5)
/* 80270D64 0026DCC4  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80270D68 0026DCC8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80270D6C 0026DCCC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80270D70 0026DCD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80270D74 0026DCD4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80270D78 0026DCD8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80270D7C 0026DCDC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80270D80 0026DCE0  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80270D84 0026DCE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80270D88 0026DCE8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80270D8C 0026DCEC  7D 89 03 A6 */	mtctr r12
/* 80270D90 0026DCF0  4E 80 04 21 */	bctrl
/* 80270D94 0026DCF4  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80270D98 0026DCF8  38 80 00 00 */	li r4, 0
/* 80270D9C 0026DCFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80270DA0 0026DD00  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80270DA4 0026DD04  7D 89 03 A6 */	mtctr r12
/* 80270DA8 0026DD08  4E 80 04 21 */	bctrl
lbl_80270DAC:
/* 80270DAC 0026DD0C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80270DB0 0026DD10  38 80 00 00 */	li r4, 0
/* 80270DB4 0026DD14  48 0D 00 8D */	bl __dt__6CTokenFv
lbl_80270DB8:
/* 80270DB8 0026DD18  80 9C 00 00 */	lwz r4, 0(r28)
/* 80270DBC 0026DD1C  3C 04 00 01 */	addis r0, r4, 1
/* 80270DC0 0026DD20  28 00 FF FF */	cmplwi r0, 0xffff
/* 80270DC4 0026DD24  41 82 01 68 */	beq lbl_80270F2C
/* 80270DC8 0026DD28  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80270DCC 0026DD2C  90 81 00 58 */	stw r4, 0x58(r1)
/* 80270DD0 0026DD30  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80270DD4 0026DD34  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80270DD8 0026DD38  90 01 00 54 */	stw r0, 0x54(r1)
/* 80270DDC 0026DD3C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80270DE0 0026DD40  38 A1 00 54 */	addi r5, r1, 0x54
/* 80270DE4 0026DD44  81 84 00 00 */	lwz r12, 0(r4)
/* 80270DE8 0026DD48  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80270DEC 0026DD4C  7D 89 03 A6 */	mtctr r12
/* 80270DF0 0026DD50  4E 80 04 21 */	bctrl
/* 80270DF4 0026DD54  3A E1 00 A8 */	addi r23, r1, 0xa8
/* 80270DF8 0026DD58  38 81 00 4C */	addi r4, r1, 0x4c
/* 80270DFC 0026DD5C  7E E3 BB 78 */	mr r3, r23
/* 80270E00 0026DD60  48 0D 00 A9 */	bl __ct__6CTokenFRC6CToken
/* 80270E04 0026DD64  7E E3 BB 78 */	mr r3, r23
/* 80270E08 0026DD68  48 0D 00 05 */	bl GetObj__6CTokenFv
/* 80270E0C 0026DD6C  80 03 00 04 */	lwz r0, 4(r3)
/* 80270E10 0026DD70  3A E1 00 CC */	addi r23, r1, 0xcc
/* 80270E14 0026DD74  7E E3 BB 78 */	mr r3, r23
/* 80270E18 0026DD78  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80270E1C 0026DD7C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80270E20 0026DD80  48 0D 00 89 */	bl __ct__6CTokenFRC6CToken
/* 80270E24 0026DD84  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 80270E28 0026DD88  7E E3 BB 78 */	mr r3, r23
/* 80270E2C 0026DD8C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80270E30 0026DD90  48 0C FF 55 */	bl Lock__6CTokenFv
/* 80270E34 0026DD94  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80270E38 0026DD98  38 80 00 00 */	li r4, 0
/* 80270E3C 0026DD9C  48 0D 00 05 */	bl __dt__6CTokenFv
/* 80270E40 0026DDA0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80270E44 0026DDA4  38 80 FF FF */	li r4, -1
/* 80270E48 0026DDA8  48 0C FF F9 */	bl __dt__6CTokenFv
/* 80270E4C 0026DDAC  3C 60 80 3D */	lis r3, lbl_803D5420@ha
/* 80270E50 0026DDB0  3A E0 00 00 */	li r23, 0
/* 80270E54 0026DDB4  38 83 54 20 */	addi r4, r3, lbl_803D5420@l
/* 80270E58 0026DDB8  38 A0 00 00 */	li r5, 0
/* 80270E5C 0026DDBC  38 60 03 40 */	li r3, 0x340
/* 80270E60 0026DDC0  48 0A 4A 0D */	bl __nw__FUlPCcPCc
/* 80270E64 0026DDC4  7C 7B 1B 79 */	or. r27, r3, r3
/* 80270E68 0026DDC8  41 82 00 2C */	beq lbl_80270E94
/* 80270E6C 0026DDCC  38 61 00 44 */	addi r3, r1, 0x44
/* 80270E70 0026DDD0  38 81 00 CC */	addi r4, r1, 0xcc
/* 80270E74 0026DDD4  48 0D 00 35 */	bl __ct__6CTokenFRC6CToken
/* 80270E78 0026DDD8  7F 63 DB 78 */	mr r3, r27
/* 80270E7C 0026DDDC  38 81 00 44 */	addi r4, r1, 0x44
/* 80270E80 0026DDE0  3A E0 00 01 */	li r23, 1
/* 80270E84 0026DDE4  38 A0 00 00 */	li r5, 0
/* 80270E88 0026DDE8  38 C0 00 01 */	li r6, 1
/* 80270E8C 0026DDEC  48 0A E5 55 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 80270E90 0026DDF0  7C 7B 1B 78 */	mr r27, r3
lbl_80270E94:
/* 80270E94 0026DDF4  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80270E98 0026DDF8  28 03 00 00 */	cmplwi r3, 0
/* 80270E9C 0026DDFC  41 82 00 18 */	beq lbl_80270EB4
/* 80270EA0 0026DE00  81 83 00 00 */	lwz r12, 0(r3)
/* 80270EA4 0026DE04  38 80 00 01 */	li r4, 1
/* 80270EA8 0026DE08  81 8C 00 08 */	lwz r12, 8(r12)
/* 80270EAC 0026DE0C  7D 89 03 A6 */	mtctr r12
/* 80270EB0 0026DE10  4E 80 04 21 */	bctrl
lbl_80270EB4:
/* 80270EB4 0026DE14  7E E0 07 75 */	extsb. r0, r23
/* 80270EB8 0026DE18  93 7F 06 78 */	stw r27, 0x678(r31)
/* 80270EBC 0026DE1C  41 82 00 10 */	beq lbl_80270ECC
/* 80270EC0 0026DE20  38 61 00 44 */	addi r3, r1, 0x44
/* 80270EC4 0026DE24  38 80 00 00 */	li r4, 0
/* 80270EC8 0026DE28  48 0C FF 79 */	bl __dt__6CTokenFv
lbl_80270ECC:
/* 80270ECC 0026DE2C  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80270ED0 0026DE30  28 03 00 00 */	cmplwi r3, 0
/* 80270ED4 0026DE34  41 82 00 4C */	beq lbl_80270F20
/* 80270ED8 0026DE38  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 80270EDC 0026DE3C  38 81 00 9C */	addi r4, r1, 0x9c
/* 80270EE0 0026DE40  C0 05 00 00 */	lfs f0, 0(r5)
/* 80270EE4 0026DE44  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80270EE8 0026DE48  C0 05 00 04 */	lfs f0, 4(r5)
/* 80270EEC 0026DE4C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80270EF0 0026DE50  C0 05 00 08 */	lfs f0, 8(r5)
/* 80270EF4 0026DE54  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80270EF8 0026DE58  81 83 00 00 */	lwz r12, 0(r3)
/* 80270EFC 0026DE5C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80270F00 0026DE60  7D 89 03 A6 */	mtctr r12
/* 80270F04 0026DE64  4E 80 04 21 */	bctrl
/* 80270F08 0026DE68  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80270F0C 0026DE6C  38 80 00 00 */	li r4, 0
/* 80270F10 0026DE70  81 83 00 00 */	lwz r12, 0(r3)
/* 80270F14 0026DE74  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80270F18 0026DE78  7D 89 03 A6 */	mtctr r12
/* 80270F1C 0026DE7C  4E 80 04 21 */	bctrl
lbl_80270F20:
/* 80270F20 0026DE80  38 61 00 CC */	addi r3, r1, 0xcc
/* 80270F24 0026DE84  38 80 00 00 */	li r4, 0
/* 80270F28 0026DE88  48 0C FF 19 */	bl __dt__6CTokenFv
lbl_80270F2C:
/* 80270F2C 0026DE8C  80 9D 00 00 */	lwz r4, 0(r29)
/* 80270F30 0026DE90  3C 04 00 01 */	addis r0, r4, 1
/* 80270F34 0026DE94  28 00 FF FF */	cmplwi r0, 0xffff
/* 80270F38 0026DE98  41 82 01 58 */	beq lbl_80271090
/* 80270F3C 0026DE9C  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80270F40 0026DEA0  90 81 00 40 */	stw r4, 0x40(r1)
/* 80270F44 0026DEA4  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80270F48 0026DEA8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80270F4C 0026DEAC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80270F50 0026DEB0  38 61 00 34 */	addi r3, r1, 0x34
/* 80270F54 0026DEB4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80270F58 0026DEB8  81 84 00 00 */	lwz r12, 0(r4)
/* 80270F5C 0026DEBC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80270F60 0026DEC0  7D 89 03 A6 */	mtctr r12
/* 80270F64 0026DEC4  4E 80 04 21 */	bctrl
/* 80270F68 0026DEC8  3A E1 00 90 */	addi r23, r1, 0x90
/* 80270F6C 0026DECC  38 81 00 34 */	addi r4, r1, 0x34
/* 80270F70 0026DED0  7E E3 BB 78 */	mr r3, r23
/* 80270F74 0026DED4  48 0C FF 35 */	bl __ct__6CTokenFRC6CToken
/* 80270F78 0026DED8  7E E3 BB 78 */	mr r3, r23
/* 80270F7C 0026DEDC  48 0C FE 91 */	bl GetObj__6CTokenFv
/* 80270F80 0026DEE0  80 63 00 04 */	lwz r3, 4(r3)
/* 80270F84 0026DEE4  38 00 00 01 */	li r0, 1
/* 80270F88 0026DEE8  37 61 00 80 */	addic. r27, r1, 0x80
/* 80270F8C 0026DEEC  90 61 00 98 */	stw r3, 0x98(r1)
/* 80270F90 0026DEF0  98 01 00 8C */	stb r0, 0x8c(r1)
/* 80270F94 0026DEF4  41 82 00 20 */	beq lbl_80270FB4
/* 80270F98 0026DEF8  7F 63 DB 78 */	mr r3, r27
/* 80270F9C 0026DEFC  7E E4 BB 78 */	mr r4, r23
/* 80270FA0 0026DF00  48 0C FF 09 */	bl __ct__6CTokenFRC6CToken
/* 80270FA4 0026DF04  80 01 00 98 */	lwz r0, 0x98(r1)
/* 80270FA8 0026DF08  7F 63 DB 78 */	mr r3, r27
/* 80270FAC 0026DF0C  90 1B 00 08 */	stw r0, 8(r27)
/* 80270FB0 0026DF10  48 0C FD D5 */	bl Lock__6CTokenFv
lbl_80270FB4:
/* 80270FB4 0026DF14  3B 7F 06 7C */	addi r27, r31, 0x67c
/* 80270FB8 0026DF18  38 81 00 80 */	addi r4, r1, 0x80
/* 80270FBC 0026DF1C  7C 1B 20 40 */	cmplw r27, r4
/* 80270FC0 0026DF20  41 82 00 8C */	beq lbl_8027104C
/* 80270FC4 0026DF24  88 01 00 8C */	lbz r0, 0x8c(r1)
/* 80270FC8 0026DF28  28 00 00 00 */	cmplwi r0, 0
/* 80270FCC 0026DF2C  41 82 00 54 */	beq lbl_80271020
/* 80270FD0 0026DF30  88 1F 06 88 */	lbz r0, 0x688(r31)
/* 80270FD4 0026DF34  28 00 00 00 */	cmplwi r0, 0
/* 80270FD8 0026DF38  40 82 00 34 */	bne lbl_8027100C
/* 80270FDC 0026DF3C  28 1B 00 00 */	cmplwi r27, 0
/* 80270FE0 0026DF40  41 82 00 20 */	beq lbl_80271000
/* 80270FE4 0026DF44  7F 77 DB 78 */	mr r23, r27
/* 80270FE8 0026DF48  7F 63 DB 78 */	mr r3, r27
/* 80270FEC 0026DF4C  48 0C FE BD */	bl __ct__6CTokenFRC6CToken
/* 80270FF0 0026DF50  80 01 00 88 */	lwz r0, 0x88(r1)
/* 80270FF4 0026DF54  7E E3 BB 78 */	mr r3, r23
/* 80270FF8 0026DF58  90 17 00 08 */	stw r0, 8(r23)
/* 80270FFC 0026DF5C  48 0C FD 89 */	bl Lock__6CTokenFv
lbl_80271000:
/* 80271000 0026DF60  38 00 00 01 */	li r0, 1
/* 80271004 0026DF64  98 1F 06 88 */	stb r0, 0x688(r31)
/* 80271008 0026DF68  48 00 00 44 */	b lbl_8027104C
lbl_8027100C:
/* 8027100C 0026DF6C  7F 63 DB 78 */	mr r3, r27
/* 80271010 0026DF70  48 0C FC B5 */	bl __as__6CTokenFRC6CToken
/* 80271014 0026DF74  80 01 00 88 */	lwz r0, 0x88(r1)
/* 80271018 0026DF78  90 1B 00 08 */	stw r0, 8(r27)
/* 8027101C 0026DF7C  48 00 00 30 */	b lbl_8027104C
lbl_80271020:
/* 80271020 0026DF80  88 1F 06 88 */	lbz r0, 0x688(r31)
/* 80271024 0026DF84  28 00 00 00 */	cmplwi r0, 0
/* 80271028 0026DF88  41 82 00 1C */	beq lbl_80271044
/* 8027102C 0026DF8C  28 1B 00 00 */	cmplwi r27, 0
/* 80271030 0026DF90  41 82 00 14 */	beq lbl_80271044
/* 80271034 0026DF94  41 82 00 10 */	beq lbl_80271044
/* 80271038 0026DF98  7F 63 DB 78 */	mr r3, r27
/* 8027103C 0026DF9C  38 80 00 00 */	li r4, 0
/* 80271040 0026DFA0  48 0C FE 01 */	bl __dt__6CTokenFv
lbl_80271044:
/* 80271044 0026DFA4  38 00 00 00 */	li r0, 0
/* 80271048 0026DFA8  98 1F 06 88 */	stb r0, 0x688(r31)
lbl_8027104C:
/* 8027104C 0026DFAC  88 01 00 8C */	lbz r0, 0x8c(r1)
/* 80271050 0026DFB0  28 00 00 00 */	cmplwi r0, 0
/* 80271054 0026DFB4  41 82 00 1C */	beq lbl_80271070
/* 80271058 0026DFB8  34 61 00 80 */	addic. r3, r1, 0x80
/* 8027105C 0026DFBC  41 82 00 14 */	beq lbl_80271070
/* 80271060 0026DFC0  28 03 00 00 */	cmplwi r3, 0
/* 80271064 0026DFC4  41 82 00 0C */	beq lbl_80271070
/* 80271068 0026DFC8  38 80 00 00 */	li r4, 0
/* 8027106C 0026DFCC  48 0C FD D5 */	bl __dt__6CTokenFv
lbl_80271070:
/* 80271070 0026DFD0  38 00 00 00 */	li r0, 0
/* 80271074 0026DFD4  38 61 00 90 */	addi r3, r1, 0x90
/* 80271078 0026DFD8  98 01 00 8C */	stb r0, 0x8c(r1)
/* 8027107C 0026DFDC  38 80 00 00 */	li r4, 0
/* 80271080 0026DFE0  48 0C FD C1 */	bl __dt__6CTokenFv
/* 80271084 0026DFE4  38 61 00 34 */	addi r3, r1, 0x34
/* 80271088 0026DFE8  38 80 FF FF */	li r4, -1
/* 8027108C 0026DFEC  48 0C FD B5 */	bl __dt__6CTokenFv
lbl_80271090:
/* 80271090 0026DFF0  3C 1E 00 01 */	addis r0, r30, 1
/* 80271094 0026DFF4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80271098 0026DFF8  41 82 00 B0 */	beq lbl_80271148
/* 8027109C 0026DFFC  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 802710A0 0026E000  93 C1 00 30 */	stw r30, 0x30(r1)
/* 802710A4 0026E004  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 802710A8 0026E008  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 802710AC 0026E00C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802710B0 0026E010  38 61 00 24 */	addi r3, r1, 0x24
/* 802710B4 0026E014  38 A1 00 2C */	addi r5, r1, 0x2c
/* 802710B8 0026E018  81 84 00 00 */	lwz r12, 0(r4)
/* 802710BC 0026E01C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802710C0 0026E020  7D 89 03 A6 */	mtctr r12
/* 802710C4 0026E024  4E 80 04 21 */	bctrl
/* 802710C8 0026E028  38 61 00 74 */	addi r3, r1, 0x74
/* 802710CC 0026E02C  38 81 00 24 */	addi r4, r1, 0x24
/* 802710D0 0026E030  48 0C FD D9 */	bl __ct__6CTokenFRC6CToken
/* 802710D4 0026E034  38 00 00 00 */	li r0, 0
/* 802710D8 0026E038  90 01 00 7C */	stw r0, 0x7c(r1)
/* 802710DC 0026E03C  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 802710E0 0026E040  28 00 00 00 */	cmplwi r0, 0
/* 802710E4 0026E044  40 82 00 2C */	bne lbl_80271110
/* 802710E8 0026E048  37 7F 06 8C */	addic. r27, r31, 0x68c
/* 802710EC 0026E04C  41 82 00 18 */	beq lbl_80271104
/* 802710F0 0026E050  7F 63 DB 78 */	mr r3, r27
/* 802710F4 0026E054  38 81 00 74 */	addi r4, r1, 0x74
/* 802710F8 0026E058  48 0C FD B1 */	bl __ct__6CTokenFRC6CToken
/* 802710FC 0026E05C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80271100 0026E060  90 1B 00 08 */	stw r0, 8(r27)
lbl_80271104:
/* 80271104 0026E064  38 00 00 01 */	li r0, 1
/* 80271108 0026E068  98 1F 06 98 */	stb r0, 0x698(r31)
/* 8027110C 0026E06C  48 00 00 1C */	b lbl_80271128
lbl_80271110:
/* 80271110 0026E070  3B 7F 06 8C */	addi r27, r31, 0x68c
/* 80271114 0026E074  38 81 00 74 */	addi r4, r1, 0x74
/* 80271118 0026E078  7F 63 DB 78 */	mr r3, r27
/* 8027111C 0026E07C  48 0C FB A9 */	bl __as__6CTokenFRC6CToken
/* 80271120 0026E080  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80271124 0026E084  90 1B 00 08 */	stw r0, 8(r27)
lbl_80271128:
/* 80271128 0026E088  38 61 00 74 */	addi r3, r1, 0x74
/* 8027112C 0026E08C  38 80 00 00 */	li r4, 0
/* 80271130 0026E090  48 0C FD 11 */	bl __dt__6CTokenFv
/* 80271134 0026E094  38 61 00 24 */	addi r3, r1, 0x24
/* 80271138 0026E098  38 80 FF FF */	li r4, -1
/* 8027113C 0026E09C  48 0C FD 05 */	bl __dt__6CTokenFv
/* 80271140 0026E0A0  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80271144 0026E0A4  48 0C FC 41 */	bl Lock__6CTokenFv
lbl_80271148:
/* 80271148 0026E0A8  7F E3 FB 78 */	mr r3, r31
/* 8027114C 0026E0AC  BA E1 00 EC */	lmw r23, 0xec(r1)
/* 80271150 0026E0B0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80271154 0026E0B4  7C 08 03 A6 */	mtlr r0
/* 80271158 0026E0B8  38 21 01 10 */	addi r1, r1, 0x110
/* 8027115C 0026E0BC  4E 80 00 20 */	blr

.global __sinit_CBurrower_cpp
__sinit_CBurrower_cpp:
/* 80271160 0026E0C0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80271164 0026E0C4  7C 08 02 A6 */	mflr r0
/* 80271168 0026E0C8  39 60 00 02 */	li r11, 2
/* 8027116C 0026E0CC  38 80 00 02 */	li r4, 2
/* 80271170 0026E0D0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80271174 0026E0D4  38 00 00 00 */	li r0, 0
/* 80271178 0026E0D8  38 61 00 30 */	addi r3, r1, 0x30
/* 8027117C 0026E0DC  38 A0 00 02 */	li r5, 2
/* 80271180 0026E0E0  BE 01 00 A0 */	stmw r16, 0xa0(r1)
/* 80271184 0026E0E4  38 C0 00 02 */	li r6, 2
/* 80271188 0026E0E8  38 E0 00 02 */	li r7, 2
/* 8027118C 0026E0EC  39 00 00 01 */	li r8, 1
/* 80271190 0026E0F0  39 20 00 01 */	li r9, 1
/* 80271194 0026E0F4  39 40 00 02 */	li r10, 2
/* 80271198 0026E0F8  91 61 00 08 */	stw r11, 8(r1)
/* 8027119C 0026E0FC  91 61 00 0C */	stw r11, 0xc(r1)
/* 802711A0 0026E100  91 61 00 10 */	stw r11, 0x10(r1)
/* 802711A4 0026E104  91 61 00 14 */	stw r11, 0x14(r1)
/* 802711A8 0026E108  91 61 00 18 */	stw r11, 0x18(r1)
/* 802711AC 0026E10C  91 61 00 1C */	stw r11, 0x1c(r1)
/* 802711B0 0026E110  91 61 00 20 */	stw r11, 0x20(r1)
/* 802711B4 0026E114  91 61 00 24 */	stw r11, 0x24(r1)
/* 802711B8 0026E118  90 01 00 28 */	stw r0, 0x28(r1)
/* 802711BC 0026E11C  4B E9 17 79 */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 802711C0 0026E120  3C 60 80 57 */	lis r3, lbl_80572694@ha
/* 802711C4 0026E124  82 21 00 30 */	lwz r17, 0x30(r1)
/* 802711C8 0026E128  3A 03 26 94 */	addi r16, r3, lbl_80572694@l
/* 802711CC 0026E12C  82 41 00 34 */	lwz r18, 0x34(r1)
/* 802711D0 0026E130  82 61 00 38 */	lwz r19, 0x38(r1)
/* 802711D4 0026E134  82 81 00 3C */	lwz r20, 0x3c(r1)
/* 802711D8 0026E138  82 A1 00 40 */	lwz r21, 0x40(r1)
/* 802711DC 0026E13C  82 C1 00 44 */	lwz r22, 0x44(r1)
/* 802711E0 0026E140  82 E1 00 48 */	lwz r23, 0x48(r1)
/* 802711E4 0026E144  83 01 00 4C */	lwz r24, 0x4c(r1)
/* 802711E8 0026E148  83 21 00 50 */	lwz r25, 0x50(r1)
/* 802711EC 0026E14C  83 41 00 54 */	lwz r26, 0x54(r1)
/* 802711F0 0026E150  83 61 00 58 */	lwz r27, 0x58(r1)
/* 802711F4 0026E154  83 81 00 5C */	lwz r28, 0x5c(r1)
/* 802711F8 0026E158  83 A1 00 60 */	lwz r29, 0x60(r1)
/* 802711FC 0026E15C  83 C1 00 64 */	lwz r30, 0x64(r1)
/* 80271200 0026E160  83 E1 00 68 */	lwz r31, 0x68(r1)
/* 80271204 0026E164  81 81 00 6C */	lwz r12, 0x6c(r1)
/* 80271208 0026E168  81 61 00 70 */	lwz r11, 0x70(r1)
/* 8027120C 0026E16C  81 41 00 74 */	lwz r10, 0x74(r1)
/* 80271210 0026E170  81 21 00 78 */	lwz r9, 0x78(r1)
/* 80271214 0026E174  81 01 00 7C */	lwz r8, 0x7c(r1)
/* 80271218 0026E178  80 E1 00 80 */	lwz r7, 0x80(r1)
/* 8027121C 0026E17C  80 C1 00 84 */	lwz r6, 0x84(r1)
/* 80271220 0026E180  80 A1 00 88 */	lwz r5, 0x88(r1)
/* 80271224 0026E184  80 81 00 8C */	lwz r4, 0x8c(r1)
/* 80271228 0026E188  80 61 00 90 */	lwz r3, 0x90(r1)
/* 8027122C 0026E18C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80271230 0026E190  92 30 00 00 */	stw r17, 0(r16)
/* 80271234 0026E194  92 50 00 04 */	stw r18, 4(r16)
/* 80271238 0026E198  92 70 00 08 */	stw r19, 8(r16)
/* 8027123C 0026E19C  92 90 00 0C */	stw r20, 0xc(r16)
/* 80271240 0026E1A0  92 B0 00 10 */	stw r21, 0x10(r16)
/* 80271244 0026E1A4  92 D0 00 14 */	stw r22, 0x14(r16)
/* 80271248 0026E1A8  92 F0 00 18 */	stw r23, 0x18(r16)
/* 8027124C 0026E1AC  93 10 00 1C */	stw r24, 0x1c(r16)
/* 80271250 0026E1B0  93 30 00 20 */	stw r25, 0x20(r16)
/* 80271254 0026E1B4  93 50 00 24 */	stw r26, 0x24(r16)
/* 80271258 0026E1B8  93 70 00 28 */	stw r27, 0x28(r16)
/* 8027125C 0026E1BC  93 90 00 2C */	stw r28, 0x2c(r16)
/* 80271260 0026E1C0  93 B0 00 30 */	stw r29, 0x30(r16)
/* 80271264 0026E1C4  93 D0 00 34 */	stw r30, 0x34(r16)
/* 80271268 0026E1C8  93 F0 00 38 */	stw r31, 0x38(r16)
/* 8027126C 0026E1CC  91 90 00 3C */	stw r12, 0x3c(r16)
/* 80271270 0026E1D0  91 70 00 40 */	stw r11, 0x40(r16)
/* 80271274 0026E1D4  91 50 00 44 */	stw r10, 0x44(r16)
/* 80271278 0026E1D8  91 30 00 48 */	stw r9, 0x48(r16)
/* 8027127C 0026E1DC  91 10 00 4C */	stw r8, 0x4c(r16)
/* 80271280 0026E1E0  90 F0 00 50 */	stw r7, 0x50(r16)
/* 80271284 0026E1E4  90 D0 00 54 */	stw r6, 0x54(r16)
/* 80271288 0026E1E8  90 B0 00 58 */	stw r5, 0x58(r16)
/* 8027128C 0026E1EC  90 90 00 5C */	stw r4, 0x5c(r16)
/* 80271290 0026E1F0  90 70 00 60 */	stw r3, 0x60(r16)
/* 80271294 0026E1F4  90 10 00 64 */	stw r0, 0x64(r16)
/* 80271298 0026E1F8  BA 01 00 A0 */	lmw r16, 0xa0(r1)
/* 8027129C 0026E1FC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802712A0 0026E200  7C 08 03 A6 */	mtlr r0
/* 802712A4 0026E204  38 21 00 E0 */	addi r1, r1, 0xe0
/* 802712A8 0026E208  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD8D8
lbl_805AD8D8:
	# ROM: 0x3FA178
	.float 1.0

.global lbl_805AD8DC
lbl_805AD8DC:
	# ROM: 0x3FA17C
	.4byte 0

.global lbl_805AD8E0
lbl_805AD8E0:
	# ROM: 0x3FA180
	.4byte 0x3E400000

.global lbl_805AD8E4
lbl_805AD8E4:
	# ROM: 0x3FA184
	.4byte 0x3F7FD220

.global lbl_805AD8E8
lbl_805AD8E8:
	# ROM: 0x3FA188
	.float 0.017453292

.global lbl_805AD8EC
lbl_805AD8EC:
	# ROM: 0x3FA18C
	.4byte 0x43B40000


.section .rodata
.balign 8
.global lbl_803D5420
lbl_803D5420:
	# ROM: 0x3D2420
	.asciz "??(??)"
	.balign 4

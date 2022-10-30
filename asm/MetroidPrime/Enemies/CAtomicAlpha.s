.include "macros.inc"

.section .data
.balign 8

.global lbl_803E88A8
lbl_803E88A8:
	# ROM: 0x3E58A8
	.4byte 0
	.4byte 0
	.4byte __dt__12CAtomicAlphaFv
	.4byte Accept__12CAtomicAlphaFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__12CAtomicAlphaFfR13CStateManager
	.4byte AcceptScriptMsg__12CAtomicAlphaF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__12CAtomicAlphaCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__12CAtomicAlphaCFRC13CStateManager
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
	.4byte GetCollisionResponseType__12CAtomicAlphaCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__12CAtomicAlphaFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__12CAtomicAlphaFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
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
	.4byte Patrol__12CAtomicAlphaFR13CStateManager9EStateMsgf
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
	.4byte Attack__12CAtomicAlphaFR13CStateManager9EStateMsgf
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
	.4byte Leash__12CAtomicAlphaFR13CStateManagerf
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
	.4byte AggressionCheck__12CAtomicAlphaFR13CStateManagerf
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
	.4byte GetSearchPath__12CAtomicAlphaFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte sub_80244cf4
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A82A0
lbl_805A82A0:
	# ROM: 0x3F5C40
	.4byte 0

.global lbl_805A82A4
lbl_805A82A4:
	# ROM: 0x3F5C44
	.float 1.0

.section .text, "ax"

.global __dt__12CAtomicAlphaFv
__dt__12CAtomicAlphaFv:
/* 80244BA8 00241B08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80244BAC 00241B0C  7C 08 02 A6 */	mflr r0
/* 80244BB0 00241B10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80244BB4 00241B14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80244BB8 00241B18  7C 9F 23 78 */	mr r31, r4
/* 80244BBC 00241B1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80244BC0 00241B20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80244BC4 00241B24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80244BC8 00241B28  93 81 00 10 */	stw r28, 0x10(r1)
/* 80244BCC 00241B2C  41 82 01 04 */	beq lbl_80244CD0
/* 80244BD0 00241B30  3C 60 80 3F */	lis r3, lbl_803E88A8@ha
/* 80244BD4 00241B34  34 1E 06 DC */	addic. r0, r30, 0x6dc
/* 80244BD8 00241B38  38 03 88 A8 */	addi r0, r3, lbl_803E88A8@l
/* 80244BDC 00241B3C  90 1E 00 00 */	stw r0, 0(r30)
/* 80244BE0 00241B40  41 82 00 40 */	beq lbl_80244C20
/* 80244BE4 00241B44  3B 9E 06 E0 */	addi r28, r30, 0x6e0
/* 80244BE8 00241B48  3B A0 00 00 */	li r29, 0
/* 80244BEC 00241B4C  48 00 00 20 */	b lbl_80244C0C
lbl_80244BF0:
/* 80244BF0 00241B50  28 1C 00 00 */	cmplwi r28, 0
/* 80244BF4 00241B54  41 82 00 10 */	beq lbl_80244C04
/* 80244BF8 00241B58  41 82 00 0C */	beq lbl_80244C04
/* 80244BFC 00241B5C  7F 83 E3 78 */	mr r3, r28
/* 80244C00 00241B60  48 0F 8E E1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80244C04:
/* 80244C04 00241B64  3B 9C 00 18 */	addi r28, r28, 0x18
/* 80244C08 00241B68  3B BD 00 01 */	addi r29, r29, 1
lbl_80244C0C:
/* 80244C0C 00241B6C  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80244C10 00241B70  7C 1D 00 00 */	cmpw r29, r0
/* 80244C14 00241B74  41 80 FF DC */	blt lbl_80244BF0
/* 80244C18 00241B78  38 00 00 00 */	li r0, 0
/* 80244C1C 00241B7C  90 1E 06 DC */	stw r0, 0x6dc(r30)
lbl_80244C20:
/* 80244C20 00241B80  38 7E 06 90 */	addi r3, r30, 0x690
/* 80244C24 00241B84  38 80 FF FF */	li r4, -1
/* 80244C28 00241B88  4B ED 1E 25 */	bl __dt__10CModelDataFv
/* 80244C2C 00241B8C  34 1E 06 68 */	addic. r0, r30, 0x668
/* 80244C30 00241B90  41 82 00 20 */	beq lbl_80244C50
/* 80244C34 00241B94  34 1E 06 68 */	addic. r0, r30, 0x668
/* 80244C38 00241B98  41 82 00 18 */	beq lbl_80244C50
/* 80244C3C 00241B9C  34 1E 06 68 */	addic. r0, r30, 0x668
/* 80244C40 00241BA0  41 82 00 10 */	beq lbl_80244C50
/* 80244C44 00241BA4  38 7E 06 68 */	addi r3, r30, 0x668
/* 80244C48 00241BA8  38 80 00 00 */	li r4, 0
/* 80244C4C 00241BAC  48 0F C1 F5 */	bl __dt__6CTokenFv
lbl_80244C50:
/* 80244C50 00241BB0  34 1E 05 80 */	addic. r0, r30, 0x580
/* 80244C54 00241BB4  41 82 00 60 */	beq lbl_80244CB4
/* 80244C58 00241BB8  34 1E 05 84 */	addic. r0, r30, 0x584
/* 80244C5C 00241BBC  41 82 00 58 */	beq lbl_80244CB4
/* 80244C60 00241BC0  80 BE 05 84 */	lwz r5, 0x584(r30)
/* 80244C64 00241BC4  38 60 00 00 */	li r3, 0
/* 80244C68 00241BC8  2C 05 00 00 */	cmpwi r5, 0
/* 80244C6C 00241BCC  40 81 00 40 */	ble lbl_80244CAC
/* 80244C70 00241BD0  2C 05 00 08 */	cmpwi r5, 8
/* 80244C74 00241BD4  38 85 FF F8 */	addi r4, r5, -8
/* 80244C78 00241BD8  40 81 00 20 */	ble lbl_80244C98
/* 80244C7C 00241BDC  38 04 00 07 */	addi r0, r4, 7
/* 80244C80 00241BE0  54 00 E8 FE */	srwi r0, r0, 3
/* 80244C84 00241BE4  7C 09 03 A6 */	mtctr r0
/* 80244C88 00241BE8  2C 04 00 00 */	cmpwi r4, 0
/* 80244C8C 00241BEC  40 81 00 0C */	ble lbl_80244C98
lbl_80244C90:
/* 80244C90 00241BF0  38 63 00 08 */	addi r3, r3, 8
/* 80244C94 00241BF4  42 00 FF FC */	bdnz lbl_80244C90
lbl_80244C98:
/* 80244C98 00241BF8  7C 03 28 50 */	subf r0, r3, r5
/* 80244C9C 00241BFC  7C 09 03 A6 */	mtctr r0
/* 80244CA0 00241C00  7C 03 28 00 */	cmpw r3, r5
/* 80244CA4 00241C04  40 80 00 08 */	bge lbl_80244CAC
lbl_80244CA8:
/* 80244CA8 00241C08  42 00 00 00 */	bdnz lbl_80244CA8
lbl_80244CAC:
/* 80244CAC 00241C0C  38 00 00 00 */	li r0, 0
/* 80244CB0 00241C10  90 1E 05 84 */	stw r0, 0x584(r30)
lbl_80244CB4:
/* 80244CB4 00241C14  7F C3 F3 78 */	mr r3, r30
/* 80244CB8 00241C18  38 80 00 00 */	li r4, 0
/* 80244CBC 00241C1C  4B E3 28 B5 */	bl __dt__10CPatternedFv
/* 80244CC0 00241C20  7F E0 07 35 */	extsh. r0, r31
/* 80244CC4 00241C24  40 81 00 0C */	ble lbl_80244CD0
/* 80244CC8 00241C28  7F C3 F3 78 */	mr r3, r30
/* 80244CCC 00241C2C  48 0D 0C 65 */	bl Free__7CMemoryFPCv
lbl_80244CD0:
/* 80244CD0 00241C30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244CD4 00241C34  7F C3 F3 78 */	mr r3, r30
/* 80244CD8 00241C38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80244CDC 00241C3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80244CE0 00241C40  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80244CE4 00241C44  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80244CE8 00241C48  7C 08 03 A6 */	mtlr r0
/* 80244CEC 00241C4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80244CF0 00241C50  4E 80 00 20 */	blr

.global sub_80244cf4
sub_80244cf4:
/* 80244CF4 00241C54  38 63 06 68 */	addi r3, r3, 0x668
/* 80244CF8 00241C58  4E 80 00 20 */	blr

.global GetSearchPath__12CAtomicAlphaFv
GetSearchPath__12CAtomicAlphaFv:
/* 80244CFC 00241C5C  38 63 05 80 */	addi r3, r3, 0x580
/* 80244D00 00241C60  4E 80 00 20 */	blr

.global GetCollisionResponseType__12CAtomicAlphaCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__12CAtomicAlphaCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 80244D04 00241C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80244D08 00241C68  7C 08 02 A6 */	mflr r0
/* 80244D0C 00241C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244D10 00241C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80244D14 00241C74  7C DF 33 78 */	mr r31, r6
/* 80244D18 00241C78  81 83 00 00 */	lwz r12, 0(r3)
/* 80244D1C 00241C7C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80244D20 00241C80  7D 89 03 A6 */	mtctr r12
/* 80244D24 00241C84  4E 80 04 21 */	bctrl
/* 80244D28 00241C88  7F E4 FB 78 */	mr r4, r31
/* 80244D2C 00241C8C  38 A0 00 00 */	li r5, 0
/* 80244D30 00241C90  4B EB D8 55 */	bl WeaponHits__20CDamageVulnerabilityCFRC11CWeaponModei
/* 80244D34 00241C94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80244D38 00241C98  38 60 00 5D */	li r3, 0x5d
/* 80244D3C 00241C9C  41 82 00 08 */	beq lbl_80244D44
/* 80244D40 00241CA0  38 60 00 2B */	li r3, 0x2b
lbl_80244D44:
/* 80244D44 00241CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80244D48 00241CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80244D4C 00241CAC  7C 08 03 A6 */	mtlr r0
/* 80244D50 00241CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80244D54 00241CB4  4E 80 00 20 */	blr

.global Attack__12CAtomicAlphaFR13CStateManager9EStateMsgf
Attack__12CAtomicAlphaFR13CStateManager9EStateMsgf:
/* 80244D58 00241CB8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80244D5C 00241CBC  7C 08 02 A6 */	mflr r0
/* 80244D60 00241CC0  2C 05 00 01 */	cmpwi r5, 1
/* 80244D64 00241CC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80244D68 00241CC8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80244D6C 00241CCC  7C 7F 1B 78 */	mr r31, r3
/* 80244D70 00241CD0  41 82 00 30 */	beq lbl_80244DA0
/* 80244D74 00241CD4  40 80 00 10 */	bge lbl_80244D84
/* 80244D78 00241CD8  2C 05 00 00 */	cmpwi r5, 0
/* 80244D7C 00241CDC  40 80 00 14 */	bge lbl_80244D90
/* 80244D80 00241CE0  48 00 00 B4 */	b lbl_80244E34
lbl_80244D84:
/* 80244D84 00241CE4  2C 05 00 03 */	cmpwi r5, 3
/* 80244D88 00241CE8  40 80 00 AC */	bge lbl_80244E34
/* 80244D8C 00241CEC  48 00 00 9C */	b lbl_80244E28
lbl_80244D90:
/* 80244D90 00241CF0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80244D94 00241CF4  38 80 00 08 */	li r4, 8
/* 80244D98 00241CF8  4B EF 5C 41 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80244D9C 00241CFC  48 00 00 98 */	b lbl_80244E34
lbl_80244DA0:
/* 80244DA0 00241D00  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80244DA4 00241D04  38 61 00 14 */	addi r3, r1, 0x14
/* 80244DA8 00241D08  48 03 FF D5 */	bl GetEyePosition__7CPlayerCFv
/* 80244DAC 00241D0C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80244DB0 00241D10  7F E5 FB 78 */	mr r5, r31
/* 80244DB4 00241D14  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80244DB8 00241D18  38 61 00 08 */	addi r3, r1, 8
/* 80244DBC 00241D1C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80244DC0 00241D20  38 9F 06 64 */	addi r4, r31, 0x664
/* 80244DC4 00241D24  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80244DC8 00241D28  38 C1 00 20 */	addi r6, r1, 0x20
/* 80244DCC 00241D2C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80244DD0 00241D30  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80244DD4 00241D34  4B EF 9E 4D */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 80244DD8 00241D38  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80244DDC 00241D3C  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 80244DE0 00241D40  C0 C1 00 08 */	lfs f6, 8(r1)
/* 80244DE4 00241D44  38 81 00 2C */	addi r4, r1, 0x2c
/* 80244DE8 00241D48  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80244DEC 00241D4C  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 80244DF0 00241D50  C0 43 00 04 */	lfs f2, 4(r3)
/* 80244DF4 00241D54  C0 23 00 08 */	lfs f1, 8(r3)
/* 80244DF8 00241D58  C0 02 B8 40 */	lfs f0, lbl_805AD560@sda21(r2)
/* 80244DFC 00241D5C  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 80244E00 00241D60  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 80244E04 00241D64  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80244E08 00241D68  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80244E0C 00241D6C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80244E10 00241D70  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80244E14 00241D74  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80244E18 00241D78  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80244E1C 00241D7C  38 63 00 04 */	addi r3, r3, 4
/* 80244E20 00241D80  4B EE C8 F9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80244E24 00241D84  48 00 00 10 */	b lbl_80244E34
lbl_80244E28:
/* 80244E28 00241D88  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80244E2C 00241D8C  38 80 00 01 */	li r4, 1
/* 80244E30 00241D90  4B EF 5B A9 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80244E34:
/* 80244E34 00241D94  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80244E38 00241D98  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80244E3C 00241D9C  7C 08 03 A6 */	mtlr r0
/* 80244E40 00241DA0  38 21 00 50 */	addi r1, r1, 0x50
/* 80244E44 00241DA4  4E 80 00 20 */	blr

.global AggressionCheck__12CAtomicAlphaFR13CStateManagerf
AggressionCheck__12CAtomicAlphaFR13CStateManagerf:
/* 80244E48 00241DA8  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80244E4C 00241DAC  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 80244E50 00241DB0  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80244E54 00241DB4  80 63 04 90 */	lwz r3, 0x490(r3)
/* 80244E58 00241DB8  41 82 00 30 */	beq lbl_80244E88
/* 80244E5C 00241DBC  88 03 08 34 */	lbz r0, 0x834(r3)
/* 80244E60 00241DC0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80244E64 00241DC4  41 82 00 0C */	beq lbl_80244E70
/* 80244E68 00241DC8  C0 23 03 40 */	lfs f1, 0x340(r3)
/* 80244E6C 00241DCC  48 00 00 08 */	b lbl_80244E74
lbl_80244E70:
/* 80244E70 00241DD0  C0 22 B8 44 */	lfs f1, lbl_805AD564@sda21(r2)
lbl_80244E74:
/* 80244E74 00241DD4  C0 02 B8 48 */	lfs f0, lbl_805AD568@sda21(r2)
/* 80244E78 00241DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80244E7C 00241DDC  40 81 00 0C */	ble lbl_80244E88
/* 80244E80 00241DE0  38 60 00 01 */	li r3, 1
/* 80244E84 00241DE4  4E 80 00 20 */	blr
lbl_80244E88:
/* 80244E88 00241DE8  38 60 00 00 */	li r3, 0
/* 80244E8C 00241DEC  4E 80 00 20 */	blr

.global DoUserAnimEvent__12CAtomicAlphaFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__12CAtomicAlphaFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80244E90 00241DF0  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80244E94 00241DF4  7C 08 02 A6 */	mflr r0
/* 80244E98 00241DF8  90 01 01 34 */	stw r0, 0x134(r1)
/* 80244E9C 00241DFC  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80244EA0 00241E00  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 80244EA4 00241E04  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 80244EA8 00241E08  93 C1 01 18 */	stw r30, 0x118(r1)
/* 80244EAC 00241E0C  93 A1 01 14 */	stw r29, 0x114(r1)
/* 80244EB0 00241E10  93 81 01 10 */	stw r28, 0x110(r1)
/* 80244EB4 00241E14  7C DF 33 79 */	or. r31, r6, r6
/* 80244EB8 00241E18  FF E0 08 90 */	fmr f31, f1
/* 80244EBC 00241E1C  7C BE 2B 78 */	mr r30, r5
/* 80244EC0 00241E20  7C 7C 1B 78 */	mr r28, r3
/* 80244EC4 00241E24  7C 9D 23 78 */	mr r29, r4
/* 80244EC8 00241E28  38 A0 00 00 */	li r5, 0
/* 80244ECC 00241E2C  41 82 00 08 */	beq lbl_80244ED4
/* 80244ED0 00241E30  48 00 01 34 */	b lbl_80245004
lbl_80244ED4:
/* 80244ED4 00241E34  7F 84 E3 78 */	mr r4, r28
/* 80244ED8 00241E38  38 61 00 74 */	addi r3, r1, 0x74
/* 80244EDC 00241E3C  38 BE 00 3C */	addi r5, r30, 0x3c
/* 80244EE0 00241E40  4B E3 3A 99 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80244EE4 00241E44  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80244EE8 00241E48  38 81 00 74 */	addi r4, r1, 0x74
/* 80244EEC 00241E4C  48 0C DC 89 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80244EF0 00241E50  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 80244EF4 00241E54  C0 A1 01 00 */	lfs f5, 0x100(r1)
/* 80244EF8 00241E58  38 83 67 00 */	addi r4, r3, sDownVector__9CVector3f@l
/* 80244EFC 00241E5C  C0 81 00 E0 */	lfs f4, 0xe0(r1)
/* 80244F00 00241E60  C0 61 00 F0 */	lfs f3, 0xf0(r1)
/* 80244F04 00241E64  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 80244F08 00241E68  C0 44 00 04 */	lfs f2, 4(r4)
/* 80244F0C 00241E6C  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 80244F10 00241E70  C0 24 00 08 */	lfs f1, 8(r4)
/* 80244F14 00241E74  38 61 00 44 */	addi r3, r1, 0x44
/* 80244F18 00241E78  C0 04 00 00 */	lfs f0, 0(r4)
/* 80244F1C 00241E7C  EC 43 10 2A */	fadds f2, f3, f2
/* 80244F20 00241E80  EC 25 08 2A */	fadds f1, f5, f1
/* 80244F24 00241E84  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 80244F28 00241E88  EC 04 00 2A */	fadds f0, f4, f0
/* 80244F2C 00241E8C  38 81 00 38 */	addi r4, r1, 0x38
/* 80244F30 00241E90  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80244F34 00241E94  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80244F38 00241E98  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 80244F3C 00241E9C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80244F40 00241EA0  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80244F44 00241EA4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80244F48 00241EA8  48 0C EB C9 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80244F4C 00241EAC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80244F50 00241EB0  38 81 00 44 */	addi r4, r1, 0x44
/* 80244F54 00241EB4  48 0C DC 21 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80244F58 00241EB8  C0 02 B8 40 */	lfs f0, lbl_805AD560@sda21(r2)
/* 80244F5C 00241EBC  39 60 00 00 */	li r11, 0
/* 80244F60 00241EC0  99 61 00 28 */	stb r11, 0x28(r1)
/* 80244F64 00241EC4  38 01 00 10 */	addi r0, r1, 0x10
/* 80244F68 00241EC8  A1 42 C5 FC */	lhz r10, kInternalInvalidSfxId__11CSfxManager@sda21(r2)
/* 80244F6C 00241ECC  7F 83 E3 78 */	mr r3, r28
/* 80244F70 00241ED0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80244F74 00241ED4  7F A5 EB 78 */	mr r5, r29
/* 80244F78 00241ED8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80244F7C 00241EDC  39 21 00 1C */	addi r9, r1, 0x1c
/* 80244F80 00241EE0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80244F84 00241EE4  38 C0 00 04 */	li r6, 4
/* 80244F88 00241EE8  38 E0 00 00 */	li r7, 0
/* 80244F8C 00241EEC  39 00 00 00 */	li r8, 0
/* 80244F90 00241EF0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80244F94 00241EF4  91 61 00 08 */	stw r11, 8(r1)
/* 80244F98 00241EF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80244F9C 00241EFC  4B E3 2A 5D */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 80244FA0 00241F00  88 01 00 28 */	lbz r0, 0x28(r1)
/* 80244FA4 00241F04  28 00 00 00 */	cmplwi r0, 0
/* 80244FA8 00241F08  41 82 00 1C */	beq lbl_80244FC4
/* 80244FAC 00241F0C  34 61 00 1C */	addic. r3, r1, 0x1c
/* 80244FB0 00241F10  41 82 00 14 */	beq lbl_80244FC4
/* 80244FB4 00241F14  28 03 00 00 */	cmplwi r3, 0
/* 80244FB8 00241F18  41 82 00 0C */	beq lbl_80244FC4
/* 80244FBC 00241F1C  38 80 00 00 */	li r4, 0
/* 80244FC0 00241F20  48 0F BE 81 */	bl __dt__6CTokenFv
lbl_80244FC4:
/* 80244FC4 00241F24  38 00 00 00 */	li r0, 0
/* 80244FC8 00241F28  C0 02 B8 44 */	lfs f0, lbl_805AD564@sda21(r2)
/* 80244FCC 00241F2C  98 01 00 28 */	stb r0, 0x28(r1)
/* 80244FD0 00241F30  38 A0 00 01 */	li r5, 1
/* 80244FD4 00241F34  D0 1C 05 78 */	stfs f0, 0x578(r28)
/* 80244FD8 00241F38  80 1C 05 7C */	lwz r0, 0x57c(r28)
/* 80244FDC 00241F3C  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80244FE0 00241F40  7C 7C 02 14 */	add r3, r28, r0
/* 80244FE4 00241F44  D0 03 06 F4 */	stfs f0, 0x6f4(r3)
/* 80244FE8 00241F48  80 9C 05 7C */	lwz r4, 0x57c(r28)
/* 80244FEC 00241F4C  80 7C 06 DC */	lwz r3, 0x6dc(r28)
/* 80244FF0 00241F50  38 84 00 01 */	addi r4, r4, 1
/* 80244FF4 00241F54  7C 04 1B D6 */	divw r0, r4, r3
/* 80244FF8 00241F58  7C 00 19 D6 */	mullw r0, r0, r3
/* 80244FFC 00241F5C  7C 00 20 50 */	subf r0, r0, r4
/* 80245000 00241F60  90 1C 05 7C */	stw r0, 0x57c(r28)
lbl_80245004:
/* 80245004 00241F64  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80245008 00241F68  40 82 00 1C */	bne lbl_80245024
/* 8024500C 00241F6C  FC 20 F8 90 */	fmr f1, f31
/* 80245010 00241F70  7F 83 E3 78 */	mr r3, r28
/* 80245014 00241F74  7F A4 EB 78 */	mr r4, r29
/* 80245018 00241F78  7F C5 F3 78 */	mr r5, r30
/* 8024501C 00241F7C  7F E6 FB 78 */	mr r6, r31
/* 80245020 00241F80  4B E3 3E 91 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventTypef
lbl_80245024:
/* 80245024 00241F84  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 80245028 00241F88  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8024502C 00241F8C  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80245030 00241F90  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 80245034 00241F94  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 80245038 00241F98  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 8024503C 00241F9C  83 81 01 10 */	lwz r28, 0x110(r1)
/* 80245040 00241FA0  7C 08 03 A6 */	mtlr r0
/* 80245044 00241FA4  38 21 01 30 */	addi r1, r1, 0x130
/* 80245048 00241FA8  4E 80 00 20 */	blr

.global Leash__12CAtomicAlphaFR13CStateManagerf
Leash__12CAtomicAlphaFR13CStateManagerf:
/* 8024504C 00241FAC  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80245050 00241FB0  38 00 00 00 */	li r0, 0
/* 80245054 00241FB4  C0 03 03 CC */	lfs f0, 0x3cc(r3)
/* 80245058 00241FB8  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8024505C 00241FBC  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80245060 00241FC0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80245064 00241FC4  C0 84 00 40 */	lfs f4, 0x40(r4)
/* 80245068 00241FC8  EC A2 08 28 */	fsubs f5, f2, f1
/* 8024506C 00241FCC  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80245070 00241FD0  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80245074 00241FD4  EC 84 08 28 */	fsubs f4, f4, f1
/* 80245078 00241FD8  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8024507C 00241FDC  EC 25 01 72 */	fmuls f1, f5, f5
/* 80245080 00241FE0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80245084 00241FE4  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80245088 00241FE8  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8024508C 00241FEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80245090 00241FF0  40 81 00 18 */	ble lbl_802450A8
/* 80245094 00241FF4  C0 23 03 D4 */	lfs f1, 0x3d4(r3)
/* 80245098 00241FF8  C0 03 03 D0 */	lfs f0, 0x3d0(r3)
/* 8024509C 00241FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802450A0 00242000  40 81 00 08 */	ble lbl_802450A8
/* 802450A4 00242004  38 00 00 01 */	li r0, 1
lbl_802450A8:
/* 802450A8 00242008  7C 03 03 78 */	mr r3, r0
/* 802450AC 0024200C  4E 80 00 20 */	blr

.global Patrol__12CAtomicAlphaFR13CStateManager9EStateMsgf
Patrol__12CAtomicAlphaFR13CStateManager9EStateMsgf:
/* 802450B0 00242010  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802450B4 00242014  7C 08 02 A6 */	mflr r0
/* 802450B8 00242018  90 01 00 34 */	stw r0, 0x34(r1)
/* 802450BC 0024201C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802450C0 00242020  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802450C4 00242024  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802450C8 00242028  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802450CC 0024202C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802450D0 00242030  FF E0 08 90 */	fmr f31, f1
/* 802450D4 00242034  7C 7D 1B 78 */	mr r29, r3
/* 802450D8 00242038  7C 9E 23 78 */	mr r30, r4
/* 802450DC 0024203C  7C BF 2B 78 */	mr r31, r5
/* 802450E0 00242040  4B FB 1D 95 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 802450E4 00242044  2C 1F 00 01 */	cmpwi r31, 1
/* 802450E8 00242048  41 82 00 2C */	beq lbl_80245114
/* 802450EC 0024204C  40 80 00 10 */	bge lbl_802450FC
/* 802450F0 00242050  2C 1F 00 00 */	cmpwi r31, 0
/* 802450F4 00242054  40 80 00 14 */	bge lbl_80245108
/* 802450F8 00242058  48 00 01 18 */	b lbl_80245210
lbl_802450FC:
/* 802450FC 0024205C  2C 1F 00 03 */	cmpwi r31, 3
/* 80245100 00242060  40 80 01 10 */	bge lbl_80245210
/* 80245104 00242064  48 00 00 FC */	b lbl_80245200
lbl_80245108:
/* 80245108 00242068  C0 02 B8 44 */	lfs f0, lbl_805AD564@sda21(r2)
/* 8024510C 0024206C  D0 1D 05 78 */	stfs f0, 0x578(r29)
/* 80245110 00242070  48 00 01 00 */	b lbl_80245210
lbl_80245114:
/* 80245114 00242074  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 80245118 00242078  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8024511C 0024207C  41 82 00 A0 */	beq lbl_802451BC
/* 80245120 00242080  C0 3D 05 78 */	lfs f1, 0x578(r29)
/* 80245124 00242084  38 00 00 00 */	li r0, 0
/* 80245128 00242088  C0 1D 05 6C */	lfs f0, 0x56c(r29)
/* 8024512C 0024208C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80245130 00242090  4C 41 13 82 */	cror 2, 1, 2
/* 80245134 00242094  40 82 00 20 */	bne lbl_80245154
/* 80245138 00242098  C0 3D 05 70 */	lfs f1, 0x570(r29)
/* 8024513C 0024209C  C0 1D 05 74 */	lfs f0, 0x574(r29)
/* 80245140 002420A0  C0 5D 06 F4 */	lfs f2, 0x6f4(r29)
/* 80245144 002420A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80245148 002420A8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8024514C 002420AC  40 81 00 08 */	ble lbl_80245154
/* 80245150 002420B0  38 00 00 01 */	li r0, 1
lbl_80245154:
/* 80245154 002420B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80245158 002420B8  41 82 00 20 */	beq lbl_80245178
/* 8024515C 002420BC  80 1D 05 7C */	lwz r0, 0x57c(r29)
/* 80245160 002420C0  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80245164 002420C4  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80245168 002420C8  7C 9D 02 14 */	add r4, r29, r0
/* 8024516C 002420CC  80 84 06 F0 */	lwz r4, 0x6f0(r4)
/* 80245170 002420D0  4B EF 58 69 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80245174 002420D4  48 00 00 10 */	b lbl_80245184
lbl_80245178:
/* 80245178 002420D8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8024517C 002420DC  38 80 00 01 */	li r4, 1
/* 80245180 002420E0  4B EF 58 59 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80245184:
/* 80245184 002420E4  7F A3 EB 78 */	mr r3, r29
/* 80245188 002420E8  FC 20 F8 90 */	fmr f1, f31
/* 8024518C 002420EC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80245190 002420F0  7F C4 F3 78 */	mr r4, r30
/* 80245194 002420F4  81 8C 01 84 */	lwz r12, 0x184(r12)
/* 80245198 002420F8  7D 89 03 A6 */	mtctr r12
/* 8024519C 002420FC  4E 80 04 21 */	bctrl
/* 802451A0 00242100  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802451A4 00242104  41 82 00 6C */	beq lbl_80245210
/* 802451A8 00242108  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 802451AC 0024210C  38 60 00 00 */	li r3, 0
/* 802451B0 00242110  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802451B4 00242114  98 1D 05 68 */	stb r0, 0x568(r29)
/* 802451B8 00242118  48 00 00 58 */	b lbl_80245210
lbl_802451BC:
/* 802451BC 0024211C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 802451C0 00242120  38 80 00 01 */	li r4, 1
/* 802451C4 00242124  4B EF 58 15 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802451C8 00242128  7F A3 EB 78 */	mr r3, r29
/* 802451CC 0024212C  FC 20 F8 90 */	fmr f1, f31
/* 802451D0 00242130  81 9D 00 00 */	lwz r12, 0(r29)
/* 802451D4 00242134  7F C4 F3 78 */	mr r4, r30
/* 802451D8 00242138  81 8C 01 A4 */	lwz r12, 0x1a4(r12)
/* 802451DC 0024213C  7D 89 03 A6 */	mtctr r12
/* 802451E0 00242140  4E 80 04 21 */	bctrl
/* 802451E4 00242144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802451E8 00242148  41 82 00 28 */	beq lbl_80245210
/* 802451EC 0024214C  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 802451F0 00242150  38 60 00 01 */	li r3, 1
/* 802451F4 00242154  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802451F8 00242158  98 1D 05 68 */	stb r0, 0x568(r29)
/* 802451FC 0024215C  48 00 00 14 */	b lbl_80245210
lbl_80245200:
/* 80245200 00242160  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 80245204 00242164  38 60 00 00 */	li r3, 0
/* 80245208 00242168  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8024520C 0024216C  98 1D 05 68 */	stb r0, 0x568(r29)
lbl_80245210:
/* 80245210 00242170  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80245214 00242174  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80245218 00242178  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8024521C 0024217C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80245220 00242180  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80245224 00242184  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80245228 00242188  7C 08 03 A6 */	mtlr r0
/* 8024522C 0024218C  38 21 00 30 */	addi r1, r1, 0x30
/* 80245230 00242190  4E 80 00 20 */	blr

.global AddToRenderer__12CAtomicAlphaCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__12CAtomicAlphaCFRC14CFrustumPlanesRC13CStateManager:
/* 80245234 00242194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80245238 00242198  7C 08 02 A6 */	mflr r0
/* 8024523C 0024219C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80245240 002421A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80245244 002421A4  7C BF 2B 78 */	mr r31, r5
/* 80245248 002421A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8024524C 002421AC  7C 9E 23 78 */	mr r30, r4
/* 80245250 002421B0  7F E4 FB 78 */	mr r4, r31
/* 80245254 002421B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80245258 002421B8  7C 7D 1B 78 */	mr r29, r3
/* 8024525C 002421BC  80 A5 08 B8 */	lwz r5, 0x8b8(r5)
/* 80245260 002421C0  80 65 00 00 */	lwz r3, 0(r5)
/* 80245264 002421C4  4B E4 C2 F5 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80245268 002421C8  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 8024526C 002421CC  20 63 00 01 */	subfic r3, r3, 1
/* 80245270 002421D0  7C 63 00 34 */	cntlzw r3, r3
/* 80245274 002421D4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80245278 002421D8  54 60 D9 7E */	srwi r0, r3, 5
/* 8024527C 002421DC  41 82 00 0C */	beq lbl_80245288
/* 80245280 002421E0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80245284 002421E4  41 82 00 14 */	beq lbl_80245298
lbl_80245288:
/* 80245288 002421E8  7F A3 EB 78 */	mr r3, r29
/* 8024528C 002421EC  7F C4 F3 78 */	mr r4, r30
/* 80245290 002421F0  7F E5 FB 78 */	mr r5, r31
/* 80245294 002421F4  4B E3 26 25 */	bl AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
lbl_80245298:
/* 80245298 002421F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024529C 002421FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802452A0 00242200  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802452A4 00242204  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802452A8 00242208  7C 08 03 A6 */	mtlr r0
/* 802452AC 0024220C  38 21 00 20 */	addi r1, r1, 0x20
/* 802452B0 00242210  4E 80 00 20 */	blr

.global Render__12CAtomicAlphaCFRC13CStateManager
Render__12CAtomicAlphaCFRC13CStateManager:
/* 802452B4 00242214  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802452B8 00242218  7C 08 02 A6 */	mflr r0
/* 802452BC 0024221C  90 01 01 24 */	stw r0, 0x124(r1)
/* 802452C0 00242220  BF 61 01 0C */	stmw r27, 0x10c(r1)
/* 802452C4 00242224  7C 7B 1B 78 */	mr r27, r3
/* 802452C8 00242228  7C 9C 23 78 */	mr r28, r4
/* 802452CC 0024222C  80 64 08 B8 */	lwz r3, 0x8b8(r4)
/* 802452D0 00242230  80 63 00 00 */	lwz r3, 0(r3)
/* 802452D4 00242234  4B E4 C2 85 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 802452D8 00242238  88 1B 05 68 */	lbz r0, 0x568(r27)
/* 802452DC 0024223C  20 63 00 01 */	subfic r3, r3, 1
/* 802452E0 00242240  7C 63 00 34 */	cntlzw r3, r3
/* 802452E4 00242244  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802452E8 00242248  54 60 D9 7E */	srwi r0, r3, 5
/* 802452EC 0024224C  41 82 00 0C */	beq lbl_802452F8
/* 802452F0 00242250  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802452F4 00242254  41 82 01 10 */	beq lbl_80245404
lbl_802452F8:
/* 802452F8 00242258  7F 63 DB 78 */	mr r3, r27
/* 802452FC 0024225C  7F 84 E3 78 */	mr r4, r28
/* 80245300 00242260  4B E3 2D 2D */	bl Render__10CPatternedCFRC13CStateManager
/* 80245304 00242264  3B FB 06 E0 */	addi r31, r27, 0x6e0
/* 80245308 00242268  3B C1 00 14 */	addi r30, r1, 0x14
/* 8024530C 0024226C  3B A0 00 00 */	li r29, 0
/* 80245310 00242270  48 00 00 E8 */	b lbl_802453F8
lbl_80245314:
/* 80245314 00242274  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80245318 00242278  C0 3B 05 70 */	lfs f1, 0x570(r27)
/* 8024531C 0024227C  C0 0D 96 E0 */	lfs f0, lbl_805A82A0@sda21(r13)
/* 80245320 00242280  EC 22 08 28 */	fsubs f1, f2, f1
/* 80245324 00242284  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80245328 00242288  D0 21 00 08 */	stfs f1, 8(r1)
/* 8024532C 0024228C  40 80 00 0C */	bge lbl_80245338
/* 80245330 00242290  38 61 00 08 */	addi r3, r1, 8
/* 80245334 00242294  48 00 00 08 */	b lbl_8024533C
lbl_80245338:
/* 80245338 00242298  38 6D 96 E0 */	addi r3, r13, lbl_805A82A0@sda21
lbl_8024533C:
/* 8024533C 0024229C  C0 43 00 00 */	lfs f2, 0(r3)
/* 80245340 002422A0  C0 3B 05 70 */	lfs f1, 0x570(r27)
/* 80245344 002422A4  C0 0D 96 E4 */	lfs f0, lbl_805A82A4@sda21(r13)
/* 80245348 002422A8  EC 22 08 24 */	fdivs f1, f2, f1
/* 8024534C 002422AC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80245350 002422B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80245354 002422B4  40 80 00 0C */	bge lbl_80245360
/* 80245358 002422B8  38 6D 96 E4 */	addi r3, r13, lbl_805A82A4@sda21
/* 8024535C 002422BC  48 00 00 08 */	b lbl_80245364
lbl_80245360:
/* 80245360 002422C0  38 61 00 0C */	addi r3, r1, 0xc
lbl_80245364:
/* 80245364 002422C4  C0 23 00 00 */	lfs f1, 0(r3)
/* 80245368 002422C8  38 61 00 18 */	addi r3, r1, 0x18
/* 8024536C 002422CC  48 0C DE D5 */	bl Scale__12CTransform4fFf
/* 80245370 002422D0  7F 64 DB 78 */	mr r4, r27
/* 80245374 002422D4  7F E5 FB 78 */	mr r5, r31
/* 80245378 002422D8  38 61 00 48 */	addi r3, r1, 0x48
/* 8024537C 002422DC  4B E0 DB 55 */	bl "GetScaledLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80245380 002422E0  38 61 00 78 */	addi r3, r1, 0x78
/* 80245384 002422E4  38 9B 00 34 */	addi r4, r27, 0x34
/* 80245388 002422E8  38 A1 00 48 */	addi r5, r1, 0x48
/* 8024538C 002422EC  48 0C D5 C5 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80245390 002422F0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80245394 002422F4  38 81 00 78 */	addi r4, r1, 0x78
/* 80245398 002422F8  38 A1 00 18 */	addi r5, r1, 0x18
/* 8024539C 002422FC  48 0C D5 B5 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 802453A0 00242300  38 61 00 D8 */	addi r3, r1, 0xd8
/* 802453A4 00242304  38 81 00 A8 */	addi r4, r1, 0xa8
/* 802453A8 00242308  48 0C D7 CD */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802453AC 0024230C  C0 22 B8 40 */	lfs f1, lbl_805AD560@sda21(r2)
/* 802453B0 00242310  38 80 00 00 */	li r4, 0
/* 802453B4 00242314  38 00 00 03 */	li r0, 3
/* 802453B8 00242318  98 81 00 10 */	stb r4, 0x10(r1)
/* 802453BC 0024231C  FC 40 08 90 */	fmr f2, f1
/* 802453C0 00242320  7F C3 F3 78 */	mr r3, r30
/* 802453C4 00242324  FC 60 08 90 */	fmr f3, f1
/* 802453C8 00242328  98 81 00 11 */	stb r4, 0x11(r1)
/* 802453CC 0024232C  FC 80 08 90 */	fmr f4, f1
/* 802453D0 00242330  B0 01 00 12 */	sth r0, 0x12(r1)
/* 802453D4 00242334  48 11 E0 19 */	bl __ct__6CColorFffff
/* 802453D8 00242338  80 DB 00 90 */	lwz r6, 0x90(r27)
/* 802453DC 0024233C  7F 84 E3 78 */	mr r4, r28
/* 802453E0 00242340  38 7B 06 90 */	addi r3, r27, 0x690
/* 802453E4 00242344  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 802453E8 00242348  38 E1 00 10 */	addi r7, r1, 0x10
/* 802453EC 0024234C  4B EC F9 D1 */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
/* 802453F0 00242350  3B FF 00 18 */	addi r31, r31, 0x18
/* 802453F4 00242354  3B BD 00 01 */	addi r29, r29, 1
lbl_802453F8:
/* 802453F8 00242358  80 1B 06 DC */	lwz r0, 0x6dc(r27)
/* 802453FC 0024235C  7C 1D 00 00 */	cmpw r29, r0
/* 80245400 00242360  41 80 FF 14 */	blt lbl_80245314
lbl_80245404:
/* 80245404 00242364  BB 61 01 0C */	lmw r27, 0x10c(r1)
/* 80245408 00242368  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8024540C 0024236C  7C 08 03 A6 */	mtlr r0
/* 80245410 00242370  38 21 01 20 */	addi r1, r1, 0x120
/* 80245414 00242374  4E 80 00 20 */	blr

.global CollidedWith__12CAtomicAlphaFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
CollidedWith__12CAtomicAlphaFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager:
/* 80245418 00242378  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024541C 0024237C  7C 08 02 A6 */	mflr r0
/* 80245420 00242380  90 01 00 34 */	stw r0, 0x34(r1)
/* 80245424 00242384  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80245428 00242388  7C DF 33 78 */	mr r31, r6
/* 8024542C 0024238C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80245430 00242390  7C BE 2B 78 */	mr r30, r5
/* 80245434 00242394  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80245438 00242398  7C 9D 23 78 */	mr r29, r4
/* 8024543C 0024239C  93 81 00 20 */	stw r28, 0x20(r1)
/* 80245440 002423A0  7C 7C 1B 78 */	mr r28, r3
/* 80245444 002423A4  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80245448 002423A8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8024544C 002423AC  41 82 00 94 */	beq lbl_802454E0
/* 80245450 002423B0  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80245454 002423B4  7F E3 FB 78 */	mr r3, r31
/* 80245458 002423B8  38 81 00 10 */	addi r4, r1, 0x10
/* 8024545C 002423BC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80245460 002423C0  4B E0 71 45 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80245464 002423C4  7C 64 1B 78 */	mr r4, r3
/* 80245468 002423C8  38 61 00 14 */	addi r3, r1, 0x14
/* 8024546C 002423CC  4B E6 6F 29 */	bl "__ct__20TCastToPtr<7CPlayer>FP7CEntity"
/* 80245470 002423D0  80 03 00 04 */	lwz r0, 4(r3)
/* 80245474 002423D4  28 00 00 00 */	cmplwi r0, 0
/* 80245478 002423D8  41 82 00 68 */	beq lbl_802454E0
/* 8024547C 002423DC  C0 3C 04 20 */	lfs f1, 0x420(r28)
/* 80245480 002423E0  C0 02 B8 44 */	lfs f0, lbl_805AD564@sda21(r2)
/* 80245484 002423E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80245488 002423E8  4C 40 13 82 */	cror 2, 0, 2
/* 8024548C 002423EC  40 82 00 54 */	bne lbl_802454E0
/* 80245490 002423F0  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80245494 002423F4  38 81 00 0C */	addi r4, r1, 0xc
/* 80245498 002423F8  C0 22 B8 4C */	lfs f1, lbl_805AD56C@sda21(r2)
/* 8024549C 002423FC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802454A0 00242400  C0 42 B8 50 */	lfs f2, lbl_805AD570@sda21(r2)
/* 802454A4 00242404  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 802454A8 00242408  B0 01 00 08 */	sth r0, 8(r1)
/* 802454AC 0024240C  80 63 00 00 */	lwz r3, 0(r3)
/* 802454B0 00242410  38 63 01 88 */	addi r3, r3, 0x188
/* 802454B4 00242414  4B F7 B6 85 */	bl AddSource__19CStaticInterferenceF9TUniqueIdff
/* 802454B8 00242418  C0 02 B8 44 */	lfs f0, lbl_805AD564@sda21(r2)
/* 802454BC 0024241C  38 7C 06 E0 */	addi r3, r28, 0x6e0
/* 802454C0 00242420  38 80 00 00 */	li r4, 0
/* 802454C4 00242424  48 00 00 10 */	b lbl_802454D4
lbl_802454C8:
/* 802454C8 00242428  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802454CC 0024242C  38 63 00 18 */	addi r3, r3, 0x18
/* 802454D0 00242430  38 84 00 01 */	addi r4, r4, 1
lbl_802454D4:
/* 802454D4 00242434  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 802454D8 00242438  7C 04 00 00 */	cmpw r4, r0
/* 802454DC 0024243C  41 80 FF EC */	blt lbl_802454C8
lbl_802454E0:
/* 802454E0 00242440  7F 83 E3 78 */	mr r3, r28
/* 802454E4 00242444  7F A4 EB 78 */	mr r4, r29
/* 802454E8 00242448  7F C5 F3 78 */	mr r5, r30
/* 802454EC 0024244C  7F E6 FB 78 */	mr r6, r31
/* 802454F0 00242450  4B E3 41 61 */	bl CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
/* 802454F4 00242454  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802454F8 00242458  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802454FC 0024245C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80245500 00242460  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80245504 00242464  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80245508 00242468  7C 08 03 A6 */	mtlr r0
/* 8024550C 0024246C  38 21 00 30 */	addi r1, r1, 0x30
/* 80245510 00242470  4E 80 00 20 */	blr

.global Think__12CAtomicAlphaFfR13CStateManager
Think__12CAtomicAlphaFfR13CStateManager:
/* 80245514 00242474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80245518 00242478  7C 08 02 A6 */	mflr r0
/* 8024551C 0024247C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80245520 00242480  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80245524 00242484  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80245528 00242488  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024552C 0024248C  7C 7F 1B 78 */	mr r31, r3
/* 80245530 00242490  FF E0 08 90 */	fmr f31, f1
/* 80245534 00242494  4B E3 45 E5 */	bl Think__10CPatternedFfR13CStateManager
/* 80245538 00242498  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 8024553C 0024249C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80245540 002424A0  41 82 00 3C */	beq lbl_8024557C
/* 80245544 002424A4  C0 1F 05 78 */	lfs f0, 0x578(r31)
/* 80245548 002424A8  38 7F 06 E0 */	addi r3, r31, 0x6e0
/* 8024554C 002424AC  38 80 00 00 */	li r4, 0
/* 80245550 002424B0  EC 00 F8 2A */	fadds f0, f0, f31
/* 80245554 002424B4  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 80245558 002424B8  48 00 00 18 */	b lbl_80245570
lbl_8024555C:
/* 8024555C 002424BC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80245560 002424C0  38 84 00 01 */	addi r4, r4, 1
/* 80245564 002424C4  EC 00 F8 2A */	fadds f0, f0, f31
/* 80245568 002424C8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8024556C 002424CC  38 63 00 18 */	addi r3, r3, 0x18
lbl_80245570:
/* 80245570 002424D0  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 80245574 002424D4  7C 04 00 00 */	cmpw r4, r0
/* 80245578 002424D8  41 80 FF E4 */	blt lbl_8024555C
lbl_8024557C:
/* 8024557C 002424DC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80245580 002424E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80245584 002424E4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80245588 002424E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024558C 002424EC  7C 08 03 A6 */	mtlr r0
/* 80245590 002424F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80245594 002424F4  4E 80 00 20 */	blr

.global AcceptScriptMsg__12CAtomicAlphaF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__12CAtomicAlphaF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80245598 002424F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024559C 002424FC  7C 08 02 A6 */	mflr r0
/* 802455A0 00242500  90 01 00 34 */	stw r0, 0x34(r1)
/* 802455A4 00242504  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802455A8 00242508  7C DF 33 78 */	mr r31, r6
/* 802455AC 0024250C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802455B0 00242510  7C 9E 23 78 */	mr r30, r4
/* 802455B4 00242514  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802455B8 00242518  7C 7D 1B 78 */	mr r29, r3
/* 802455BC 0024251C  A0 05 00 00 */	lhz r0, 0(r5)
/* 802455C0 00242520  38 A1 00 08 */	addi r5, r1, 8
/* 802455C4 00242524  B0 01 00 08 */	sth r0, 8(r1)
/* 802455C8 00242528  4B E3 75 B1 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 802455CC 0024252C  2C 1E 00 23 */	cmpwi r30, 0x23
/* 802455D0 00242530  41 82 00 50 */	beq lbl_80245620
/* 802455D4 00242534  40 80 00 10 */	bge lbl_802455E4
/* 802455D8 00242538  2C 1E 00 21 */	cmpwi r30, 0x21
/* 802455DC 0024253C  41 82 00 14 */	beq lbl_802455F0
/* 802455E0 00242540  48 00 00 6C */	b lbl_8024564C
lbl_802455E4:
/* 802455E4 00242544  2C 1E 00 25 */	cmpwi r30, 0x25
/* 802455E8 00242548  41 82 00 18 */	beq lbl_80245600
/* 802455EC 0024254C  48 00 00 60 */	b lbl_8024564C
lbl_802455F0:
/* 802455F0 00242550  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 802455F4 00242554  7F E4 FB 78 */	mr r4, r31
/* 802455F8 00242558  4B EF 56 F9 */	bl Activate__15CBodyControllerFR13CStateManager
/* 802455FC 0024255C  48 00 00 50 */	b lbl_8024564C
lbl_80245600:
/* 80245600 00242560  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 80245604 00242564  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80245608 00242568  41 82 00 44 */	beq lbl_8024564C
/* 8024560C 0024256C  88 1D 04 01 */	lbz r0, 0x401(r29)
/* 80245610 00242570  38 60 00 01 */	li r3, 1
/* 80245614 00242574  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80245618 00242578  98 1D 04 01 */	stb r0, 0x401(r29)
/* 8024561C 0024257C  48 00 00 30 */	b lbl_8024564C
lbl_80245620:
/* 80245620 00242580  80 BD 00 04 */	lwz r5, 4(r29)
/* 80245624 00242584  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 80245628 00242588  54 A3 18 38 */	slwi r3, r5, 3
/* 8024562C 0024258C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80245630 00242590  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80245634 00242594  38 03 00 04 */	addi r0, r3, 4
/* 80245638 00242598  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8024563C 0024259C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80245640 002425A0  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80245644 002425A4  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 80245648 002425A8  90 1D 05 80 */	stw r0, 0x580(r29)
lbl_8024564C:
/* 8024564C 002425AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80245650 002425B0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80245654 002425B4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80245658 002425B8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8024565C 002425BC  7C 08 03 A6 */	mtlr r0
/* 80245660 002425C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80245664 002425C4  4E 80 00 20 */	blr

.global Accept__12CAtomicAlphaFR8IVisitor
Accept__12CAtomicAlphaFR8IVisitor:
/* 80245668 002425C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024566C 002425CC  7C 08 02 A6 */	mflr r0
/* 80245670 002425D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245674 002425D4  7C 60 1B 78 */	mr r0, r3
/* 80245678 002425D8  7C 83 23 78 */	mr r3, r4
/* 8024567C 002425DC  81 84 00 00 */	lwz r12, 0(r4)
/* 80245680 002425E0  7C 04 03 78 */	mr r4, r0
/* 80245684 002425E4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80245688 002425E8  7D 89 03 A6 */	mtctr r12
/* 8024568C 002425EC  4E 80 04 21 */	bctrl
/* 80245690 002425F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80245694 002425F4  7C 08 03 A6 */	mtlr r0
/* 80245698 002425F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8024569C 002425FC  4E 80 00 20 */	blr

.global __ct__12CAtomicAlpha
__ct__12CAtomicAlpha:
/* 802456A0 00242600  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 802456A4 00242604  7C 08 02 A6 */	mflr r0
/* 802456A8 00242608  90 01 01 34 */	stw r0, 0x134(r1)
/* 802456AC 0024260C  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 802456B0 00242610  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 802456B4 00242614  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 802456B8 00242618  F3 C1 01 18 */	psq_st f30, 280(r1), 0, qr0
/* 802456BC 0024261C  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 802456C0 00242620  F3 A1 01 08 */	psq_st f29, 264(r1), 0, qr0
/* 802456C4 00242624  BF 01 00 E0 */	stmw r24, 0xe0(r1)
/* 802456C8 00242628  A0 04 00 00 */	lhz r0, 0(r4)
/* 802456CC 0024262C  7C CB 33 78 */	mr r11, r6
/* 802456D0 00242630  7D 1B 43 78 */	mr r27, r8
/* 802456D4 00242634  7D 5C 53 78 */	mr r28, r10
/* 802456D8 00242638  B0 01 00 20 */	sth r0, 0x20(r1)
/* 802456DC 0024263C  7C A6 2B 78 */	mr r6, r5
/* 802456E0 00242640  38 80 00 01 */	li r4, 1
/* 802456E4 00242644  38 00 00 03 */	li r0, 3
/* 802456E8 00242648  93 81 00 08 */	stw r28, 8(r1)
/* 802456EC 0024264C  FF A0 08 90 */	fmr f29, f1
/* 802456F0 00242650  FF C0 10 90 */	fmr f30, f2
/* 802456F4 00242654  83 A1 01 38 */	lwz r29, 0x138(r1)
/* 802456F8 00242658  90 81 00 0C */	stw r4, 0xc(r1)
/* 802456FC 0024265C  FF E0 18 90 */	fmr f31, f3
/* 80245700 00242660  83 C1 01 3C */	lwz r30, 0x13c(r1)
/* 80245704 00242664  90 81 00 10 */	stw r4, 0x10(r1)
/* 80245708 00242668  83 E1 01 40 */	lwz r31, 0x140(r1)
/* 8024570C 0024266C  7C 7A 1B 78 */	mr r26, r3
/* 80245710 00242670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245714 00242674  7D 68 5B 78 */	mr r8, r11
/* 80245718 00242678  8B 01 01 47 */	lbz r24, 0x147(r1)
/* 8024571C 0024267C  7F 6A DB 78 */	mr r10, r27
/* 80245720 00242680  91 21 00 18 */	stw r9, 0x18(r1)
/* 80245724 00242684  7C E9 3B 78 */	mr r9, r7
/* 80245728 00242688  8B 21 01 4B */	lbz r25, 0x14b(r1)
/* 8024572C 0024268C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80245730 00242690  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80245734 00242694  38 80 00 00 */	li r4, 0
/* 80245738 00242698  38 E0 00 00 */	li r7, 0
/* 8024573C 0024269C  4B E3 7D 15 */	bl "__ct__10CPatternedFQ210CPatterned10ECharacter9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParameters17EKnockBackVariant"
/* 80245740 002426A0  3C 60 80 3F */	lis r3, lbl_803E88A8@ha
/* 80245744 002426A4  C0 22 B8 40 */	lfs f1, lbl_805AD560@sda21(r2)
/* 80245748 002426A8  38 03 88 A8 */	addi r0, r3, lbl_803E88A8@l
/* 8024574C 002426AC  38 C0 00 00 */	li r6, 0
/* 80245750 002426B0  90 1A 00 00 */	stw r0, 0(r26)
/* 80245754 002426B4  FC 40 08 90 */	fmr f2, f1
/* 80245758 002426B8  C0 02 B8 44 */	lfs f0, lbl_805AD564@sda21(r2)
/* 8024575C 002426BC  38 7A 05 80 */	addi r3, r26, 0x580
/* 80245760 002426C0  88 1A 05 68 */	lbz r0, 0x568(r26)
/* 80245764 002426C4  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 80245768 002426C8  38 80 00 00 */	li r4, 0
/* 8024576C 002426CC  98 1A 05 68 */	stb r0, 0x568(r26)
/* 80245770 002426D0  38 A0 00 03 */	li r5, 3
/* 80245774 002426D4  88 1A 05 68 */	lbz r0, 0x568(r26)
/* 80245778 002426D8  53 00 36 72 */	rlwimi r0, r24, 6, 0x19, 0x19
/* 8024577C 002426DC  98 1A 05 68 */	stb r0, 0x568(r26)
/* 80245780 002426E0  88 1A 05 68 */	lbz r0, 0x568(r26)
/* 80245784 002426E4  53 20 2E B4 */	rlwimi r0, r25, 5, 0x1a, 0x1a
/* 80245788 002426E8  98 1A 05 68 */	stb r0, 0x568(r26)
/* 8024578C 002426EC  D3 BA 05 6C */	stfs f29, 0x56c(r26)
/* 80245790 002426F0  D3 DA 05 70 */	stfs f30, 0x570(r26)
/* 80245794 002426F4  D3 FA 05 74 */	stfs f31, 0x574(r26)
/* 80245798 002426F8  D0 1A 05 78 */	stfs f0, 0x578(r26)
/* 8024579C 002426FC  90 DA 05 7C */	stw r6, 0x57c(r26)
/* 802457A0 00242700  80 DC 01 0C */	lwz r6, 0x10c(r28)
/* 802457A4 00242704  4B F8 35 F1 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 802457A8 00242708  38 7A 06 64 */	addi r3, r26, 0x664
/* 802457AC 0024270C  4B EF 95 A5 */	bl __ct__18CSteeringBehaviorsFv
/* 802457B0 00242710  7F A4 EB 78 */	mr r4, r29
/* 802457B4 00242714  7F C5 F3 78 */	mr r5, r30
/* 802457B8 00242718  38 7A 06 68 */	addi r3, r26, 0x668
/* 802457BC 0024271C  4B FD 68 ED */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 802457C0 00242720  C0 5B 00 00 */	lfs f2, 0(r27)
/* 802457C4 00242724  38 7A 06 90 */	addi r3, r26, 0x690
/* 802457C8 00242728  C0 3B 00 04 */	lfs f1, 4(r27)
/* 802457CC 0024272C  38 81 00 70 */	addi r4, r1, 0x70
/* 802457D0 00242730  C0 1B 00 08 */	lfs f0, 8(r27)
/* 802457D4 00242734  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 802457D8 00242738  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 802457DC 0024273C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 802457E0 00242740  93 E1 00 70 */	stw r31, 0x70(r1)
/* 802457E4 00242744  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 802457E8 00242748  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 802457EC 0024274C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 802457F0 00242750  4B ED 15 6D */	bl __ct__10CModelDataFRC10CStaticRes
/* 802457F4 00242754  38 00 00 00 */	li r0, 0
/* 802457F8 00242758  38 7A 06 68 */	addi r3, r26, 0x668
/* 802457FC 0024275C  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80245800 00242760  48 0F B5 85 */	bl Lock__6CTokenFv
/* 80245804 00242764  3C 80 80 3D */	lis r4, lbl_803D4730@ha
/* 80245808 00242768  38 61 00 54 */	addi r3, r1, 0x54
/* 8024580C 0024276C  38 84 47 30 */	addi r4, r4, lbl_803D4730@l
/* 80245810 00242770  4B DB F4 A9 */	bl string_l__4rstlFPCc
/* 80245814 00242774  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80245818 00242778  38 81 00 54 */	addi r4, r1, 0x54
/* 8024581C 0024277C  48 0F 89 45 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80245820 00242780  C0 02 B8 54 */	lfs f0, lbl_805AD574@sda21(r2)
/* 80245824 00242784  38 00 00 0A */	li r0, 0xa
/* 80245828 00242788  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8024582C 0024278C  38 7A 06 DC */	addi r3, r26, 0x6dc
/* 80245830 00242790  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80245834 00242794  80 1A 06 DC */	lwz r0, 0x6dc(r26)
/* 80245838 00242798  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8024583C 0024279C  7F 63 02 14 */	add r27, r3, r0
/* 80245840 002427A0  37 7B 00 04 */	addic. r27, r27, 4
/* 80245844 002427A4  41 82 00 20 */	beq lbl_80245864
/* 80245848 002427A8  7F 63 DB 78 */	mr r3, r27
/* 8024584C 002427AC  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80245850 002427B0  48 0F 89 11 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80245854 002427B4  80 01 00 D8 */	lwz r0, 0xd8(r1)
/* 80245858 002427B8  90 1B 00 10 */	stw r0, 0x10(r27)
/* 8024585C 002427BC  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80245860 002427C0  D0 1B 00 14 */	stfs f0, 0x14(r27)
lbl_80245864:
/* 80245864 002427C4  80 9A 06 DC */	lwz r4, 0x6dc(r26)
/* 80245868 002427C8  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8024586C 002427CC  38 04 00 01 */	addi r0, r4, 1
/* 80245870 002427D0  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80245874 002427D4  48 0F 82 6D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80245878 002427D8  38 61 00 54 */	addi r3, r1, 0x54
/* 8024587C 002427DC  48 0F 82 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80245880 002427E0  3C 80 80 3D */	lis r4, lbl_803D4730@ha
/* 80245884 002427E4  38 61 00 44 */	addi r3, r1, 0x44
/* 80245888 002427E8  38 84 47 30 */	addi r4, r4, lbl_803D4730@l
/* 8024588C 002427EC  38 84 00 0B */	addi r4, r4, 0xb
/* 80245890 002427F0  4B DB F4 29 */	bl string_l__4rstlFPCc
/* 80245894 002427F4  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80245898 002427F8  38 81 00 44 */	addi r4, r1, 0x44
/* 8024589C 002427FC  48 0F 88 C5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802458A0 00242800  C0 02 B8 54 */	lfs f0, lbl_805AD574@sda21(r2)
/* 802458A4 00242804  38 00 00 0B */	li r0, 0xb
/* 802458A8 00242808  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 802458AC 0024280C  38 7A 06 DC */	addi r3, r26, 0x6dc
/* 802458B0 00242810  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 802458B4 00242814  80 1A 06 DC */	lwz r0, 0x6dc(r26)
/* 802458B8 00242818  1C 00 00 18 */	mulli r0, r0, 0x18
/* 802458BC 0024281C  7F 63 02 14 */	add r27, r3, r0
/* 802458C0 00242820  37 7B 00 04 */	addic. r27, r27, 4
/* 802458C4 00242824  41 82 00 20 */	beq lbl_802458E4
/* 802458C8 00242828  7F 63 DB 78 */	mr r3, r27
/* 802458CC 0024282C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 802458D0 00242830  48 0F 88 91 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802458D4 00242834  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 802458D8 00242838  90 1B 00 10 */	stw r0, 0x10(r27)
/* 802458DC 0024283C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 802458E0 00242840  D0 1B 00 14 */	stfs f0, 0x14(r27)
lbl_802458E4:
/* 802458E4 00242844  80 9A 06 DC */	lwz r4, 0x6dc(r26)
/* 802458E8 00242848  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802458EC 0024284C  38 04 00 01 */	addi r0, r4, 1
/* 802458F0 00242850  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 802458F4 00242854  48 0F 81 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802458F8 00242858  38 61 00 44 */	addi r3, r1, 0x44
/* 802458FC 0024285C  48 0F 81 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80245900 00242860  3C 80 80 3D */	lis r4, lbl_803D4730@ha
/* 80245904 00242864  38 61 00 34 */	addi r3, r1, 0x34
/* 80245908 00242868  38 84 47 30 */	addi r4, r4, lbl_803D4730@l
/* 8024590C 0024286C  38 84 00 16 */	addi r4, r4, 0x16
/* 80245910 00242870  4B DB F3 A9 */	bl string_l__4rstlFPCc
/* 80245914 00242874  38 61 00 98 */	addi r3, r1, 0x98
/* 80245918 00242878  38 81 00 34 */	addi r4, r1, 0x34
/* 8024591C 0024287C  48 0F 88 45 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80245920 00242880  C0 02 B8 54 */	lfs f0, lbl_805AD574@sda21(r2)
/* 80245924 00242884  38 00 00 0C */	li r0, 0xc
/* 80245928 00242888  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8024592C 0024288C  38 7A 06 DC */	addi r3, r26, 0x6dc
/* 80245930 00242890  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80245934 00242894  80 1A 06 DC */	lwz r0, 0x6dc(r26)
/* 80245938 00242898  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8024593C 0024289C  7F 63 02 14 */	add r27, r3, r0
/* 80245940 002428A0  37 7B 00 04 */	addic. r27, r27, 4
/* 80245944 002428A4  41 82 00 20 */	beq lbl_80245964
/* 80245948 002428A8  7F 63 DB 78 */	mr r3, r27
/* 8024594C 002428AC  38 81 00 98 */	addi r4, r1, 0x98
/* 80245950 002428B0  48 0F 88 11 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80245954 002428B4  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 80245958 002428B8  90 1B 00 10 */	stw r0, 0x10(r27)
/* 8024595C 002428BC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80245960 002428C0  D0 1B 00 14 */	stfs f0, 0x14(r27)
lbl_80245964:
/* 80245964 002428C4  80 9A 06 DC */	lwz r4, 0x6dc(r26)
/* 80245968 002428C8  38 61 00 98 */	addi r3, r1, 0x98
/* 8024596C 002428CC  38 04 00 01 */	addi r0, r4, 1
/* 80245970 002428D0  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80245974 002428D4  48 0F 81 6D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80245978 002428D8  38 61 00 34 */	addi r3, r1, 0x34
/* 8024597C 002428DC  48 0F 81 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80245980 002428E0  3C 80 80 3D */	lis r4, lbl_803D4730@ha
/* 80245984 002428E4  38 61 00 24 */	addi r3, r1, 0x24
/* 80245988 002428E8  38 84 47 30 */	addi r4, r4, lbl_803D4730@l
/* 8024598C 002428EC  38 84 00 21 */	addi r4, r4, 0x21
/* 80245990 002428F0  4B DB F3 29 */	bl string_l__4rstlFPCc
/* 80245994 002428F4  38 61 00 80 */	addi r3, r1, 0x80
/* 80245998 002428F8  38 81 00 24 */	addi r4, r1, 0x24
/* 8024599C 002428FC  48 0F 87 C5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802459A0 00242900  C0 02 B8 54 */	lfs f0, lbl_805AD574@sda21(r2)
/* 802459A4 00242904  38 00 00 0D */	li r0, 0xd
/* 802459A8 00242908  90 01 00 90 */	stw r0, 0x90(r1)
/* 802459AC 0024290C  38 7A 06 DC */	addi r3, r26, 0x6dc
/* 802459B0 00242910  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 802459B4 00242914  80 1A 06 DC */	lwz r0, 0x6dc(r26)
/* 802459B8 00242918  1C 00 00 18 */	mulli r0, r0, 0x18
/* 802459BC 0024291C  7F 63 02 14 */	add r27, r3, r0
/* 802459C0 00242920  37 7B 00 04 */	addic. r27, r27, 4
/* 802459C4 00242924  41 82 00 20 */	beq lbl_802459E4
/* 802459C8 00242928  7F 63 DB 78 */	mr r3, r27
/* 802459CC 0024292C  38 81 00 80 */	addi r4, r1, 0x80
/* 802459D0 00242930  48 0F 87 91 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802459D4 00242934  80 01 00 90 */	lwz r0, 0x90(r1)
/* 802459D8 00242938  90 1B 00 10 */	stw r0, 0x10(r27)
/* 802459DC 0024293C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 802459E0 00242940  D0 1B 00 14 */	stfs f0, 0x14(r27)
lbl_802459E4:
/* 802459E4 00242944  80 9A 06 DC */	lwz r4, 0x6dc(r26)
/* 802459E8 00242948  38 61 00 80 */	addi r3, r1, 0x80
/* 802459EC 0024294C  38 04 00 01 */	addi r0, r4, 1
/* 802459F0 00242950  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 802459F4 00242954  48 0F 80 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802459F8 00242958  38 61 00 24 */	addi r3, r1, 0x24
/* 802459FC 0024295C  48 0F 80 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80245A00 00242960  7F 43 D3 78 */	mr r3, r26
/* 80245A04 00242964  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 80245A08 00242968  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80245A0C 0024296C  E3 C1 01 18 */	psq_l f30, 280(r1), 0, qr0
/* 80245A10 00242970  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 80245A14 00242974  E3 A1 01 08 */	psq_l f29, 264(r1), 0, qr0
/* 80245A18 00242978  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 80245A1C 0024297C  BB 01 00 E0 */	lmw r24, 0xe0(r1)
/* 80245A20 00242980  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80245A24 00242984  7C 08 03 A6 */	mtlr r0
/* 80245A28 00242988  38 21 01 30 */	addi r1, r1, 0x130
/* 80245A2C 0024298C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD560
lbl_805AD560:
	# ROM: 0x3F9E00
	.float 1.0

.global lbl_805AD564
lbl_805AD564:
	# ROM: 0x3F9E04
	.4byte 0

.global lbl_805AD568
lbl_805AD568:
	# ROM: 0x3F9E08
	.float 0.1

.global lbl_805AD56C
lbl_805AD56C:
	# ROM: 0x3F9E0C
	.float 0.5

.global lbl_805AD570
lbl_805AD570:
	# ROM: 0x3F9E10
	.float 0.25

.global lbl_805AD574
lbl_805AD574:
	# ROM: 0x3F9E14
	.4byte 0x7F7FFFFF


.section .rodata
.balign 8
.global lbl_803D4730
lbl_803D4730:
	# ROM: 0x3D1730
	.asciz "bomb1_LCTR"
	.byte 0x62
	.asciz "omb2_LCTR"
	.byte 0x62, 0x6F
	.asciz "mb3_LCTR"
	.byte 0x62, 0x6F, 0x6D
	.asciz "b4_LCTR"
	.4byte 0

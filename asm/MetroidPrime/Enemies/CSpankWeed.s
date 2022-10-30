.include "macros.inc"

.section .data
.balign 8

.global lbl_803E2D28
lbl_803E2D28:
	# ROM: 0x3DFD28
	.4byte 0
	.4byte 0
	.4byte __dt__10CSpankWeedFv
	.4byte Accept__10CSpankWeedFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__10CSpankWeedFfR13CStateManager
	.4byte AcceptScriptMsg__10CSpankWeedF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CSpankWeedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CSpankWeedCFRC13CStateManager
	.4byte GetAimPosition__10CSpankWeedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
	.4byte KnockBack__10CSpankWeedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__10CSpankWeedFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__10CSpankWeedFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__3CAiFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__10CSpankWeedFR13CStateManager9EStateMsgf
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
	.4byte FadeIn__10CSpankWeedFR13CStateManager9EStateMsgf
	.4byte FadeOut__10CSpankWeedFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__10CSpankWeedFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Flinch__10CSpankWeedFR13CStateManager9EStateMsgf
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
	.4byte Attacked__10CSpankWeedFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__10CSpankWeedFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRage__10CSpankWeedFR13CStateManagerf
	.4byte SpotPlayer__10CPatternedFR13CStateManagerf
	.4byte PlayerSpot__10CPatternedFR13CStateManagerf
	.4byte PatternOver__10CPatternedFR13CStateManagerf
	.4byte PatternShagged__10CPatternedFR13CStateManagerf
	.4byte HasAttackPattern__10CPatternedFR13CStateManagerf
	.4byte HasPatrolPath__10CPatternedFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__10CSpankWeedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte sub_80154cc0
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
	.4byte HearPlayer__10CSpankWeedFR13CStateManagerf
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
.balign 8

.global lbl_805A7838
lbl_805A7838:
	# ROM: 0x3F51D8
	.4byte 0x00000013

.global lbl_805A783C
lbl_805A783C:
	# ROM: 0x3F51DC
	.4byte 0x00000021

.global lbl_805A7840
lbl_805A7840:
	# ROM: 0x3F51E0
	.4byte 0x00000020

.global lbl_805A7844
lbl_805A7844:
	# ROM: 0x3F51E4
	.4byte 0x00000015

.global lbl_805A7848
lbl_805A7848:
	# ROM: 0x3F51E8
	.4byte 0x0000002B
	.4byte 0

.section .text, "ax"

.global __dt__10CSpankWeedFv
__dt__10CSpankWeedFv:
/* 80154C08 00151B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80154C0C 00151B6C  7C 08 02 A6 */	mflr r0
/* 80154C10 00151B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80154C14 00151B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80154C18 00151B78  7C 9F 23 78 */	mr r31, r4
/* 80154C1C 00151B7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80154C20 00151B80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80154C24 00151B84  41 82 00 40 */	beq lbl_80154C64
/* 80154C28 00151B88  3C 60 80 3E */	lis r3, lbl_803E2D28@ha
/* 80154C2C 00151B8C  34 1E 05 94 */	addic. r0, r30, 0x594
/* 80154C30 00151B90  38 03 2D 28 */	addi r0, r3, lbl_803E2D28@l
/* 80154C34 00151B94  90 1E 00 00 */	stw r0, 0(r30)
/* 80154C38 00151B98  41 82 00 10 */	beq lbl_80154C48
/* 80154C3C 00151B9C  80 7E 05 94 */	lwz r3, 0x594(r30)
/* 80154C40 00151BA0  38 80 00 01 */	li r4, 1
/* 80154C44 00151BA4  48 05 2C 99 */	bl __dt__22CCollisionActorManagerFv
lbl_80154C48:
/* 80154C48 00151BA8  7F C3 F3 78 */	mr r3, r30
/* 80154C4C 00151BAC  38 80 00 00 */	li r4, 0
/* 80154C50 00151BB0  4B F2 29 21 */	bl __dt__10CPatternedFv
/* 80154C54 00151BB4  7F E0 07 35 */	extsh. r0, r31
/* 80154C58 00151BB8  40 81 00 0C */	ble lbl_80154C64
/* 80154C5C 00151BBC  7F C3 F3 78 */	mr r3, r30
/* 80154C60 00151BC0  48 1C 0C D1 */	bl Free__7CMemoryFPCv
lbl_80154C64:
/* 80154C64 00151BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80154C68 00151BC8  7F C3 F3 78 */	mr r3, r30
/* 80154C6C 00151BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80154C70 00151BD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80154C74 00151BD4  7C 08 03 A6 */	mtlr r0
/* 80154C78 00151BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80154C7C 00151BDC  4E 80 00 20 */	blr

.global Render__10CSpankWeedCFRC13CStateManager
Render__10CSpankWeedCFRC13CStateManager:
/* 80154C80 00151BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80154C84 00151BE4  7C 08 02 A6 */	mflr r0
/* 80154C88 00151BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80154C8C 00151BEC  4B F2 33 A1 */	bl Render__10CPatternedCFRC13CStateManager
/* 80154C90 00151BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80154C94 00151BF4  7C 08 03 A6 */	mtlr r0
/* 80154C98 00151BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80154C9C 00151BFC  4E 80 00 20 */	blr

.global Attacked__10CSpankWeedFR13CStateManagerf
Attacked__10CSpankWeedFR13CStateManagerf:
/* 80154CA0 00151C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80154CA4 00151C04  7C 08 02 A6 */	mflr r0
/* 80154CA8 00151C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80154CAC 00151C0C  48 0A 0F 35 */	bl Attacked__10CPatternedFR13CStateManagerf
/* 80154CB0 00151C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80154CB4 00151C14  7C 08 03 A6 */	mtlr r0
/* 80154CB8 00151C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80154CBC 00151C1C  4E 80 00 20 */	blr

.global sub_80154cc0
sub_80154cc0:
/* 80154CC0 00151C20  80 03 05 BC */	lwz r0, 0x5bc(r3)
/* 80154CC4 00151C24  20 00 00 03 */	subfic r0, r0, 3
/* 80154CC8 00151C28  7C 00 00 34 */	cntlzw r0, r0
/* 80154CCC 00151C2C  54 03 D9 7E */	srwi r3, r0, 5
/* 80154CD0 00151C30  4E 80 00 20 */	blr

.global sub_80154cd4
sub_80154cd4:
/* 80154CD4 00151C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80154CD8 00151C38  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80154CDC 00151C3C  C0 03 05 AC */	lfs f0, 0x5ac(r3)
/* 80154CE0 00151C40  C0 C4 00 50 */	lfs f6, 0x50(r4)
/* 80154CE4 00151C44  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80154CE8 00151C48  EC A6 00 28 */	fsubs f5, f6, f0
/* 80154CEC 00151C4C  C0 03 05 A8 */	lfs f0, 0x5a8(r3)
/* 80154CF0 00151C50  C0 E4 00 60 */	lfs f7, 0x60(r4)
/* 80154CF4 00151C54  EC 62 00 28 */	fsubs f3, f2, f0
/* 80154CF8 00151C58  C0 23 05 B0 */	lfs f1, 0x5b0(r3)
/* 80154CFC 00151C5C  EC 05 01 72 */	fmuls f0, f5, f5
/* 80154D00 00151C60  EC 87 08 28 */	fsubs f4, f7, f1
/* 80154D04 00151C64  D0 41 00 08 */	stfs f2, 8(r1)
/* 80154D08 00151C68  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80154D0C 00151C6C  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 80154D10 00151C70  EC 44 01 32 */	fmuls f2, f4, f4
/* 80154D14 00151C74  EC 01 00 2A */	fadds f0, f1, f0
/* 80154D18 00151C78  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 80154D1C 00151C7C  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80154D20 00151C80  EC 22 00 2A */	fadds f1, f2, f0
/* 80154D24 00151C84  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80154D28 00151C88  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80154D2C 00151C8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80154D30 00151C90  4E 80 00 20 */	blr

.global GetOrbitPosition__10CSpankWeedCFRC13CStateManager
GetOrbitPosition__10CSpankWeedCFRC13CStateManager:
/* 80154D34 00151C94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80154D38 00151C98  7C 08 02 A6 */	mflr r0
/* 80154D3C 00151C9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80154D40 00151CA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80154D44 00151CA4  7C 9F 23 78 */	mr r31, r4
/* 80154D48 00151CA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80154D4C 00151CAC  7C 7E 1B 78 */	mr r30, r3
/* 80154D50 00151CB0  38 61 00 0C */	addi r3, r1, 0xc
/* 80154D54 00151CB4  4B F2 38 59 */	bl GetOrbitPosition__10CPatternedCFRC13CStateManager
/* 80154D58 00151CB8  C0 3F 03 38 */	lfs f1, 0x338(r31)
/* 80154D5C 00151CBC  C0 02 9E 28 */	lfs f0, lbl_805ABB48@sda21(r2)
/* 80154D60 00151CC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80154D64 00151CC4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80154D68 00151CC8  C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 80154D6C 00151CCC  C1 01 00 10 */	lfs f8, 0x10(r1)
/* 80154D70 00151CD0  C1 21 00 14 */	lfs f9, 0x14(r1)
/* 80154D74 00151CD4  40 80 00 0C */	bge lbl_80154D80
/* 80154D78 00151CD8  38 62 9E 28 */	addi r3, r2, lbl_805ABB48@sda21
/* 80154D7C 00151CDC  48 00 00 08 */	b lbl_80154D84
lbl_80154D80:
/* 80154D80 00151CE0  38 61 00 08 */	addi r3, r1, 8
lbl_80154D84:
/* 80154D84 00151CE4  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80154D88 00151CE8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80154D8C 00151CEC  C0 1F 05 9C */	lfs f0, 0x59c(r31)
/* 80154D90 00151CF0  2C 04 00 03 */	cmpwi r4, 3
/* 80154D94 00151CF4  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80154D98 00151CF8  C0 5F 05 A0 */	lfs f2, 0x5a0(r31)
/* 80154D9C 00151CFC  EC C1 00 2A */	fadds f6, f1, f0
/* 80154DA0 00151D00  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80154DA4 00151D04  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 80154DA8 00151D08  EC A3 10 2A */	fadds f5, f3, f2
/* 80154DAC 00151D0C  C1 43 00 00 */	lfs f10, 0(r3)
/* 80154DB0 00151D10  EC 81 00 2A */	fadds f4, f1, f0
/* 80154DB4 00151D14  40 82 00 40 */	bne lbl_80154DF4
/* 80154DB8 00151D18  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80154DBC 00151D1C  2C 00 00 02 */	cmpwi r0, 2
/* 80154DC0 00151D20  40 82 00 34 */	bne lbl_80154DF4
/* 80154DC4 00151D24  C0 02 9E 2C */	lfs f0, lbl_805ABB4C@sda21(r2)
/* 80154DC8 00151D28  EC 46 02 B2 */	fmuls f2, f6, f10
/* 80154DCC 00151D2C  EC 25 02 B2 */	fmuls f1, f5, f10
/* 80154DD0 00151D30  EC 60 50 28 */	fsubs f3, f0, f10
/* 80154DD4 00151D34  EC 04 02 B2 */	fmuls f0, f4, f10
/* 80154DD8 00151D38  EC 47 10 FA */	fmadds f2, f7, f3, f2
/* 80154DDC 00151D3C  EC 28 08 FA */	fmadds f1, f8, f3, f1
/* 80154DE0 00151D40  EC 09 00 FA */	fmadds f0, f9, f3, f0
/* 80154DE4 00151D44  D0 5E 00 00 */	stfs f2, 0(r30)
/* 80154DE8 00151D48  D0 3E 00 04 */	stfs f1, 4(r30)
/* 80154DEC 00151D4C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80154DF0 00151D50  48 00 00 54 */	b lbl_80154E44
lbl_80154DF4:
/* 80154DF4 00151D54  2C 04 00 02 */	cmpwi r4, 2
/* 80154DF8 00151D58  40 82 00 40 */	bne lbl_80154E38
/* 80154DFC 00151D5C  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80154E00 00151D60  2C 00 00 03 */	cmpwi r0, 3
/* 80154E04 00151D64  40 82 00 34 */	bne lbl_80154E38
/* 80154E08 00151D68  C0 02 9E 2C */	lfs f0, lbl_805ABB4C@sda21(r2)
/* 80154E0C 00151D6C  EC 47 02 B2 */	fmuls f2, f7, f10
/* 80154E10 00151D70  EC 28 02 B2 */	fmuls f1, f8, f10
/* 80154E14 00151D74  EC 60 50 28 */	fsubs f3, f0, f10
/* 80154E18 00151D78  EC 09 02 B2 */	fmuls f0, f9, f10
/* 80154E1C 00151D7C  EC 46 10 FA */	fmadds f2, f6, f3, f2
/* 80154E20 00151D80  EC 25 08 FA */	fmadds f1, f5, f3, f1
/* 80154E24 00151D84  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 80154E28 00151D88  D0 5E 00 00 */	stfs f2, 0(r30)
/* 80154E2C 00151D8C  D0 3E 00 04 */	stfs f1, 4(r30)
/* 80154E30 00151D90  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80154E34 00151D94  48 00 00 10 */	b lbl_80154E44
lbl_80154E38:
/* 80154E38 00151D98  D0 FE 00 00 */	stfs f7, 0(r30)
/* 80154E3C 00151D9C  D1 1E 00 04 */	stfs f8, 4(r30)
/* 80154E40 00151DA0  D1 3E 00 08 */	stfs f9, 8(r30)
lbl_80154E44:
/* 80154E44 00151DA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80154E48 00151DA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80154E4C 00151DAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80154E50 00151DB0  7C 08 03 A6 */	mtlr r0
/* 80154E54 00151DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80154E58 00151DB8  4E 80 00 20 */	blr

.global GetAimPosition__10CSpankWeedCFRC13CStateManagerf
GetAimPosition__10CSpankWeedCFRC13CStateManagerf:
/* 80154E5C 00151DBC  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80154E60 00151DC0  7C 08 02 A6 */	mflr r0
/* 80154E64 00151DC4  90 01 01 44 */	stw r0, 0x144(r1)
/* 80154E68 00151DC8  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 80154E6C 00151DCC  F3 E1 01 38 */	psq_st f31, 312(r1), 0, qr0
/* 80154E70 00151DD0  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 80154E74 00151DD4  F3 C1 01 28 */	psq_st f30, 296(r1), 0, qr0
/* 80154E78 00151DD8  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 80154E7C 00151DDC  F3 A1 01 18 */	psq_st f29, 280(r1), 0, qr0
/* 80154E80 00151DE0  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 80154E84 00151DE4  93 C1 01 08 */	stw r30, 0x108(r1)
/* 80154E88 00151DE8  93 A1 01 04 */	stw r29, 0x104(r1)
/* 80154E8C 00151DEC  C0 02 9E 30 */	lfs f0, lbl_805ABB50@sda21(r2)
/* 80154E90 00151DF0  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 80154E94 00151DF4  C7 E5 66 A0 */	lfsu f31, sZeroVector__9CVector3f@l(r5)
/* 80154E98 00151DF8  7C 7D 1B 78 */	mr r29, r3
/* 80154E9C 00151DFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80154EA0 00151E00  7C 9E 23 78 */	mr r30, r4
/* 80154EA4 00151E04  C3 C5 00 04 */	lfs f30, 4(r5)
/* 80154EA8 00151E08  C3 A5 00 08 */	lfs f29, 8(r5)
/* 80154EAC 00151E0C  40 81 00 18 */	ble lbl_80154EC4
/* 80154EB0 00151E10  38 61 00 90 */	addi r3, r1, 0x90
/* 80154EB4 00151E14  4B FC 6D FD */	bl PredictMotion__13CPhysicsActorCFf
/* 80154EB8 00151E18  C3 E1 00 90 */	lfs f31, 0x90(r1)
/* 80154EBC 00151E1C  C3 C1 00 94 */	lfs f30, 0x94(r1)
/* 80154EC0 00151E20  C3 A1 00 98 */	lfs f29, 0x98(r1)
lbl_80154EC4:
/* 80154EC4 00151E24  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80154EC8 00151E28  3C 60 80 3D */	lis r3, lbl_803D0230@ha
/* 80154ECC 00151E2C  38 83 02 30 */	addi r4, r3, lbl_803D0230@l
/* 80154ED0 00151E30  38 61 00 2C */	addi r3, r1, 0x2c
/* 80154ED4 00151E34  83 E5 00 10 */	lwz r31, 0x10(r5)
/* 80154ED8 00151E38  38 84 00 59 */	addi r4, r4, 0x59
/* 80154EDC 00151E3C  4B EA FD DD */	bl string_l__4rstlFPCc
/* 80154EE0 00151E40  7F E4 FB 78 */	mr r4, r31
/* 80154EE4 00151E44  38 61 00 0C */	addi r3, r1, 0xc
/* 80154EE8 00151E48  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80154EEC 00151E4C  4B ED 99 4D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80154EF0 00151E50  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80154EF4 00151E54  38 61 00 2C */	addi r3, r1, 0x2c
/* 80154EF8 00151E58  98 01 00 10 */	stb r0, 0x10(r1)
/* 80154EFC 00151E5C  48 1E 8B E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80154F00 00151E60  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80154F04 00151E64  28 00 00 FF */	cmplwi r0, 0xff
/* 80154F08 00151E68  41 82 00 88 */	beq lbl_80154F90
/* 80154F0C 00151E6C  98 01 00 08 */	stb r0, 8(r1)
/* 80154F10 00151E70  7F E4 FB 78 */	mr r4, r31
/* 80154F14 00151E74  38 61 00 60 */	addi r3, r1, 0x60
/* 80154F18 00151E78  38 A1 00 08 */	addi r5, r1, 8
/* 80154F1C 00151E7C  38 C0 00 00 */	li r6, 0
/* 80154F20 00151E80  4B ED 73 55 */	bl GetLocatorTransform__9CAnimDataCF6CSegIdPC13CCharAnimTime
/* 80154F24 00151E84  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80154F28 00151E88  38 81 00 60 */	addi r4, r1, 0x60
/* 80154F2C 00151E8C  48 1B DC 49 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80154F30 00151E90  80 DE 00 64 */	lwz r6, 0x64(r30)
/* 80154F34 00151E94  38 61 00 20 */	addi r3, r1, 0x20
/* 80154F38 00151E98  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80154F3C 00151E9C  38 9E 00 34 */	addi r4, r30, 0x34
/* 80154F40 00151EA0  C0 26 00 08 */	lfs f1, 8(r6)
/* 80154F44 00151EA4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80154F48 00151EA8  C0 66 00 04 */	lfs f3, 4(r6)
/* 80154F4C 00151EAC  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 80154F50 00151EB0  EC 81 00 32 */	fmuls f4, f1, f0
/* 80154F54 00151EB4  C0 26 00 00 */	lfs f1, 0(r6)
/* 80154F58 00151EB8  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80154F5C 00151EBC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80154F60 00151EC0  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 80154F64 00151EC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80154F68 00151EC8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80154F6C 00151ECC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80154F70 00151ED0  48 1B DB 79 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 80154F74 00151ED4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80154F78 00151ED8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80154F7C 00151EDC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80154F80 00151EE0  EF FF 10 2A */	fadds f31, f31, f2
/* 80154F84 00151EE4  EF DE 08 2A */	fadds f30, f30, f1
/* 80154F88 00151EE8  EF BD 00 2A */	fadds f29, f29, f0
/* 80154F8C 00151EEC  48 00 00 34 */	b lbl_80154FC0
lbl_80154F90:
/* 80154F90 00151EF0  7F C4 F3 78 */	mr r4, r30
/* 80154F94 00151EF4  38 61 00 48 */	addi r3, r1, 0x48
/* 80154F98 00151EF8  4B FC 59 95 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80154F9C 00151EFC  38 61 00 14 */	addi r3, r1, 0x14
/* 80154FA0 00151F00  38 81 00 48 */	addi r4, r1, 0x48
/* 80154FA4 00151F04  48 1E 26 69 */	bl GetCenterPoint__6CAABoxCFv
/* 80154FA8 00151F08  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80154FAC 00151F0C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80154FB0 00151F10  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80154FB4 00151F14  EF FF 10 2A */	fadds f31, f31, f2
/* 80154FB8 00151F18  EF DE 08 2A */	fadds f30, f30, f1
/* 80154FBC 00151F1C  EF BD 00 2A */	fadds f29, f29, f0
lbl_80154FC0:
/* 80154FC0 00151F20  D3 FD 00 00 */	stfs f31, 0(r29)
/* 80154FC4 00151F24  D3 DD 00 04 */	stfs f30, 4(r29)
/* 80154FC8 00151F28  D3 BD 00 08 */	stfs f29, 8(r29)
/* 80154FCC 00151F2C  E3 E1 01 38 */	psq_l f31, 312(r1), 0, qr0
/* 80154FD0 00151F30  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 80154FD4 00151F34  E3 C1 01 28 */	psq_l f30, 296(r1), 0, qr0
/* 80154FD8 00151F38  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 80154FDC 00151F3C  E3 A1 01 18 */	psq_l f29, 280(r1), 0, qr0
/* 80154FE0 00151F40  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 80154FE4 00151F44  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 80154FE8 00151F48  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 80154FEC 00151F4C  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80154FF0 00151F50  83 A1 01 04 */	lwz r29, 0x104(r1)
/* 80154FF4 00151F54  7C 08 03 A6 */	mtlr r0
/* 80154FF8 00151F58  38 21 01 40 */	addi r1, r1, 0x140
/* 80154FFC 00151F5C  4E 80 00 20 */	blr

.global Flinch__10CSpankWeedFR13CStateManager9EStateMsgf
Flinch__10CSpankWeedFR13CStateManager9EStateMsgf:
/* 80155000 00151F60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80155004 00151F64  7C 08 02 A6 */	mflr r0
/* 80155008 00151F68  2C 05 00 01 */	cmpwi r5, 1
/* 8015500C 00151F6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80155010 00151F70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80155014 00151F74  41 82 00 44 */	beq lbl_80155058
/* 80155018 00151F78  40 80 00 10 */	bge lbl_80155028
/* 8015501C 00151F7C  2C 05 00 00 */	cmpwi r5, 0
/* 80155020 00151F80  40 80 00 14 */	bge lbl_80155034
/* 80155024 00151F84  48 00 01 34 */	b lbl_80155158
lbl_80155028:
/* 80155028 00151F88  2C 05 00 03 */	cmpwi r5, 3
/* 8015502C 00151F8C  40 80 01 2C */	bge lbl_80155158
/* 80155030 00151F90  48 00 01 20 */	b lbl_80155150
lbl_80155034:
/* 80155034 00151F94  38 A0 00 00 */	li r5, 0
/* 80155038 00151F98  38 00 00 04 */	li r0, 4
/* 8015503C 00151F9C  90 A3 05 BC */	stw r5, 0x5bc(r3)
/* 80155040 00151FA0  7C 86 23 78 */	mr r6, r4
/* 80155044 00151FA4  38 80 00 29 */	li r4, 0x29
/* 80155048 00151FA8  38 A0 00 28 */	li r5, 0x28
/* 8015504C 00151FAC  90 03 05 B4 */	stw r0, 0x5b4(r3)
/* 80155050 00151FB0  4B EF EE 85 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80155054 00151FB4  48 00 01 04 */	b lbl_80155158
lbl_80155058:
/* 80155058 00151FB8  80 03 05 BC */	lwz r0, 0x5bc(r3)
/* 8015505C 00151FBC  2C 00 00 01 */	cmpwi r0, 1
/* 80155060 00151FC0  41 82 00 F8 */	beq lbl_80155158
/* 80155064 00151FC4  40 80 00 10 */	bge lbl_80155074
/* 80155068 00151FC8  2C 00 00 00 */	cmpwi r0, 0
/* 8015506C 00151FCC  40 80 00 14 */	bge lbl_80155080
/* 80155070 00151FD0  48 00 00 E8 */	b lbl_80155158
lbl_80155074:
/* 80155074 00151FD4  2C 00 00 03 */	cmpwi r0, 3
/* 80155078 00151FD8  40 80 00 E0 */	bge lbl_80155158
/* 8015507C 00151FDC  48 00 00 B8 */	b lbl_80155134
lbl_80155080:
/* 80155080 00151FE0  80 E3 04 50 */	lwz r7, 0x450(r3)
/* 80155084 00151FE4  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 80155088 00151FE8  2C 00 00 06 */	cmpwi r0, 6
/* 8015508C 00151FEC  40 82 00 10 */	bne lbl_8015509C
/* 80155090 00151FF0  38 00 00 02 */	li r0, 2
/* 80155094 00151FF4  90 03 05 BC */	stw r0, 0x5bc(r3)
/* 80155098 00151FF8  48 00 00 C0 */	b lbl_80155158
lbl_8015509C:
/* 8015509C 00151FFC  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801550A0 00152000  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801550A4 00152004  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801550A8 00152008  38 A5 AA 68 */	addi r5, r5, lbl_803DAA68@l
/* 801550AC 0015200C  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 801550B0 00152010  90 A1 00 08 */	stw r5, 8(r1)
/* 801550B4 00152014  38 A4 AA 44 */	addi r5, r4, lbl_803DAA44@l
/* 801550B8 00152018  C0 23 00 04 */	lfs f1, 4(r3)
/* 801550BC 0015201C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801550C0 00152020  38 C0 00 04 */	li r6, 4
/* 801550C4 00152024  38 00 00 00 */	li r0, 0
/* 801550C8 00152028  3B E7 00 04 */	addi r31, r7, 4
/* 801550CC 0015202C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801550D0 00152030  38 80 00 04 */	li r4, 4
/* 801550D4 00152034  7F E3 FB 78 */	mr r3, r31
/* 801550D8 00152038  90 A1 00 08 */	stw r5, 8(r1)
/* 801550DC 0015203C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801550E0 00152040  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801550E4 00152044  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801550E8 00152048  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801550EC 0015204C  4B FD C3 4D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801550F0 00152050  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801550F4 00152054  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 801550F8 00152058  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 801550FC 0015205C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80155100 00152060  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 80155104 00152064  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80155108 00152068  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8015510C 0015206C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80155110 00152070  90 BF 00 FC */	stw r5, 0xfc(r31)
/* 80155114 00152074  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80155118 00152078  90 7F 01 00 */	stw r3, 0x100(r31)
/* 8015511C 0015207C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80155120 00152080  90 BF 01 04 */	stw r5, 0x104(r31)
/* 80155124 00152084  90 81 00 08 */	stw r4, 8(r1)
/* 80155128 00152088  90 7F 01 08 */	stw r3, 0x108(r31)
/* 8015512C 0015208C  90 01 00 08 */	stw r0, 8(r1)
/* 80155130 00152090  48 00 00 28 */	b lbl_80155158
lbl_80155134:
/* 80155134 00152094  80 83 04 50 */	lwz r4, 0x450(r3)
/* 80155138 00152098  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8015513C 0015209C  2C 00 00 06 */	cmpwi r0, 6
/* 80155140 001520A0  41 82 00 18 */	beq lbl_80155158
/* 80155144 001520A4  38 00 00 03 */	li r0, 3
/* 80155148 001520A8  90 03 05 BC */	stw r0, 0x5bc(r3)
/* 8015514C 001520AC  48 00 00 0C */	b lbl_80155158
lbl_80155150:
/* 80155150 001520B0  38 00 00 04 */	li r0, 4
/* 80155154 001520B4  90 03 05 B8 */	stw r0, 0x5b8(r3)
lbl_80155158:
/* 80155158 001520B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015515C 001520BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80155160 001520C0  7C 08 03 A6 */	mtlr r0
/* 80155164 001520C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80155168 001520C8  4E 80 00 20 */	blr

.global Delay__10CSpankWeedFR13CStateManagerf
Delay__10CSpankWeedFR13CStateManagerf:
/* 8015516C 001520CC  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80155170 001520D0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80155174 001520D4  41 82 00 34 */	beq lbl_801551A8
/* 80155178 001520D8  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 8015517C 001520DC  C0 03 05 78 */	lfs f0, 0x578(r3)
/* 80155180 001520E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80155184 001520E4  40 81 00 1C */	ble lbl_801551A0
/* 80155188 001520E8  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8015518C 001520EC  38 80 00 00 */	li r4, 0
/* 80155190 001520F0  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80155194 001520F4  98 03 04 00 */	stb r0, 0x400(r3)
/* 80155198 001520F8  38 60 00 01 */	li r3, 1
/* 8015519C 001520FC  4E 80 00 20 */	blr
lbl_801551A0:
/* 801551A0 00152100  38 60 00 00 */	li r3, 0
/* 801551A4 00152104  4E 80 00 20 */	blr
lbl_801551A8:
/* 801551A8 00152108  38 60 00 01 */	li r3, 1
/* 801551AC 0015210C  4E 80 00 20 */	blr

.global InRange__10CSpankWeedFR13CStateManagerf
InRange__10CSpankWeedFR13CStateManagerf:
/* 801551B0 00152110  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801551B4 00152114  7C 08 02 A6 */	mflr r0
/* 801551B8 00152118  90 01 00 24 */	stw r0, 0x24(r1)
/* 801551BC 0015211C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801551C0 00152120  7C 9F 23 78 */	mr r31, r4
/* 801551C4 00152124  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801551C8 00152128  7C 7E 1B 78 */	mr r30, r3
/* 801551CC 0015212C  4B FF FB 09 */	bl sub_80154cd4
/* 801551D0 00152130  C0 7E 05 6C */	lfs f3, 0x56c(r30)
/* 801551D4 00152134  C0 02 9E 30 */	lfs f0, lbl_805ABB50@sda21(r2)
/* 801551D8 00152138  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801551DC 0015213C  40 81 00 54 */	ble lbl_80155230
/* 801551E0 00152140  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801551E4 00152144  38 60 00 00 */	li r3, 0
/* 801551E8 00152148  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 801551EC 0015214C  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 801551F0 00152150  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801551F4 00152154  EC 00 28 28 */	fsubs f0, f0, f5
/* 801551F8 00152158  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 801551FC 0015215C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80155200 00152160  FC 00 02 10 */	fabs f0, f0
/* 80155204 00152164  D0 41 00 08 */	stfs f2, 8(r1)
/* 80155208 00152168  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8015520C 0015216C  FC 00 00 18 */	frsp f0, f0
/* 80155210 00152170  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80155214 00152174  40 80 00 30 */	bge lbl_80155244
/* 80155218 00152178  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 8015521C 0015217C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80155220 00152180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80155224 00152184  40 80 00 20 */	bge lbl_80155244
/* 80155228 00152188  38 60 00 01 */	li r3, 1
/* 8015522C 0015218C  48 00 00 18 */	b lbl_80155244
lbl_80155230:
/* 80155230 00152190  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 80155234 00152194  EC 00 00 32 */	fmuls f0, f0, f0
/* 80155238 00152198  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015523C 0015219C  7C 00 00 26 */	mfcr r0
/* 80155240 001521A0  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80155244:
/* 80155244 001521A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80155248 001521A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015524C 001521AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80155250 001521B0  7C 08 03 A6 */	mtlr r0
/* 80155254 001521B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80155258 001521B8  4E 80 00 20 */	blr

.global HearPlayer__10CSpankWeedFR13CStateManagerf
HearPlayer__10CSpankWeedFR13CStateManagerf:
/* 8015525C 001521BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80155260 001521C0  7C 08 02 A6 */	mflr r0
/* 80155264 001521C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80155268 001521C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015526C 001521CC  7C 9F 23 78 */	mr r31, r4
/* 80155270 001521D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80155274 001521D4  7C 7E 1B 78 */	mr r30, r3
/* 80155278 001521D8  4B FF FA 5D */	bl sub_80154cd4
/* 8015527C 001521DC  C0 7E 05 6C */	lfs f3, 0x56c(r30)
/* 80155280 001521E0  C0 02 9E 30 */	lfs f0, lbl_805ABB50@sda21(r2)
/* 80155284 001521E4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80155288 001521E8  40 81 00 54 */	ble lbl_801552DC
/* 8015528C 001521EC  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80155290 001521F0  38 60 00 00 */	li r3, 0
/* 80155294 001521F4  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 80155298 001521F8  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 8015529C 001521FC  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801552A0 00152200  EC 00 28 28 */	fsubs f0, f0, f5
/* 801552A4 00152204  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 801552A8 00152208  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801552AC 0015220C  FC 00 02 10 */	fabs f0, f0
/* 801552B0 00152210  D0 41 00 08 */	stfs f2, 8(r1)
/* 801552B4 00152214  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801552B8 00152218  FC 00 00 18 */	frsp f0, f0
/* 801552BC 0015221C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801552C0 00152220  40 80 00 30 */	bge lbl_801552F0
/* 801552C4 00152224  C0 1E 05 70 */	lfs f0, 0x570(r30)
/* 801552C8 00152228  EC 00 00 32 */	fmuls f0, f0, f0
/* 801552CC 0015222C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801552D0 00152230  40 80 00 20 */	bge lbl_801552F0
/* 801552D4 00152234  38 60 00 01 */	li r3, 1
/* 801552D8 00152238  48 00 00 18 */	b lbl_801552F0
lbl_801552DC:
/* 801552DC 0015223C  C0 1E 05 70 */	lfs f0, 0x570(r30)
/* 801552E0 00152240  EC 00 00 32 */	fmuls f0, f0, f0
/* 801552E4 00152244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801552E8 00152248  7C 00 00 26 */	mfcr r0
/* 801552EC 0015224C  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801552F0:
/* 801552F0 00152250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801552F4 00152254  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801552F8 00152258  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801552FC 0015225C  7C 08 03 A6 */	mtlr r0
/* 80155300 00152260  38 21 00 20 */	addi r1, r1, 0x20
/* 80155304 00152264  4E 80 00 20 */	blr

.global InDetectionRage__10CSpankWeedFR13CStateManagerf
InDetectionRage__10CSpankWeedFR13CStateManagerf:
/* 80155308 00152268  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015530C 0015226C  7C 08 02 A6 */	mflr r0
/* 80155310 00152270  90 01 00 24 */	stw r0, 0x24(r1)
/* 80155314 00152274  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80155318 00152278  7C 9F 23 78 */	mr r31, r4
/* 8015531C 0015227C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80155320 00152280  7C 7E 1B 78 */	mr r30, r3
/* 80155324 00152284  4B FF F9 B1 */	bl sub_80154cd4
/* 80155328 00152288  C0 7E 05 6C */	lfs f3, 0x56c(r30)
/* 8015532C 0015228C  C0 02 9E 30 */	lfs f0, lbl_805ABB50@sda21(r2)
/* 80155330 00152290  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80155334 00152294  40 81 00 54 */	ble lbl_80155388
/* 80155338 00152298  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8015533C 0015229C  38 60 00 00 */	li r3, 0
/* 80155340 001522A0  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 80155344 001522A4  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 80155348 001522A8  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 8015534C 001522AC  EC 00 28 28 */	fsubs f0, f0, f5
/* 80155350 001522B0  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80155354 001522B4  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80155358 001522B8  FC 00 02 10 */	fabs f0, f0
/* 8015535C 001522BC  D0 41 00 08 */	stfs f2, 8(r1)
/* 80155360 001522C0  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80155364 001522C4  FC 00 00 18 */	frsp f0, f0
/* 80155368 001522C8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8015536C 001522CC  40 80 00 30 */	bge lbl_8015539C
/* 80155370 001522D0  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 80155374 001522D4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80155378 001522D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015537C 001522DC  40 80 00 20 */	bge lbl_8015539C
/* 80155380 001522E0  38 60 00 01 */	li r3, 1
/* 80155384 001522E4  48 00 00 18 */	b lbl_8015539C
lbl_80155388:
/* 80155388 001522E8  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 8015538C 001522EC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80155390 001522F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80155394 001522F4  7C 00 00 26 */	mfcr r0
/* 80155398 001522F8  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_8015539C:
/* 8015539C 001522FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801553A0 00152300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801553A4 00152304  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801553A8 00152308  7C 08 03 A6 */	mtlr r0
/* 801553AC 0015230C  38 21 00 20 */	addi r1, r1, 0x20
/* 801553B0 00152310  4E 80 00 20 */	blr

.global Attack__10CSpankWeedFR13CStateManager9EStateMsgf
Attack__10CSpankWeedFR13CStateManager9EStateMsgf:
/* 801553B4 00152314  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801553B8 00152318  7C 08 02 A6 */	mflr r0
/* 801553BC 0015231C  2C 05 00 01 */	cmpwi r5, 1
/* 801553C0 00152320  90 01 00 54 */	stw r0, 0x54(r1)
/* 801553C4 00152324  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801553C8 00152328  7C 7F 1B 78 */	mr r31, r3
/* 801553CC 0015232C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801553D0 00152330  41 82 00 D0 */	beq lbl_801554A0
/* 801553D4 00152334  40 80 00 10 */	bge lbl_801553E4
/* 801553D8 00152338  2C 05 00 00 */	cmpwi r5, 0
/* 801553DC 0015233C  40 80 00 14 */	bge lbl_801553F0
/* 801553E0 00152340  48 00 01 7C */	b lbl_8015555C
lbl_801553E4:
/* 801553E4 00152344  2C 05 00 03 */	cmpwi r5, 3
/* 801553E8 00152348  40 80 01 74 */	bge lbl_8015555C
/* 801553EC 0015234C  48 00 01 68 */	b lbl_80155554
lbl_801553F0:
/* 801553F0 00152350  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801553F4 00152354  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801553F8 00152358  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801553FC 0015235C  38 E4 AA 68 */	addi r7, r4, lbl_803DAA68@l
/* 80155400 00152360  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 80155404 00152364  90 E1 00 24 */	stw r7, 0x24(r1)
/* 80155408 00152368  38 00 00 00 */	li r0, 0
/* 8015540C 0015236C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80155410 00152370  C0 03 00 08 */	lfs f0, 8(r3)
/* 80155414 00152374  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 80155418 00152378  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8015541C 0015237C  38 C0 00 05 */	li r6, 5
/* 80155420 00152380  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80155424 00152384  38 80 00 05 */	li r4, 5
/* 80155428 00152388  3B C3 00 04 */	addi r30, r3, 4
/* 8015542C 0015238C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80155430 00152390  7F C3 F3 78 */	mr r3, r30
/* 80155434 00152394  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80155438 00152398  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8015543C 0015239C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80155440 001523A0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80155444 001523A4  98 01 00 3C */	stb r0, 0x3c(r1)
/* 80155448 001523A8  4B FD BF F1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8015544C 001523AC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80155450 001523B0  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 80155454 001523B4  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 80155458 001523B8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8015545C 001523BC  90 1E 01 10 */	stw r0, 0x110(r30)
/* 80155460 001523C0  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80155464 001523C4  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80155468 001523C8  38 00 00 03 */	li r0, 3
/* 8015546C 001523CC  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 80155470 001523D0  90 BE 01 14 */	stw r5, 0x114(r30)
/* 80155474 001523D4  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80155478 001523D8  90 DE 01 18 */	stw r6, 0x118(r30)
/* 8015547C 001523DC  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 80155480 001523E0  90 BE 01 1C */	stw r5, 0x11c(r30)
/* 80155484 001523E4  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 80155488 001523E8  90 DE 01 20 */	stw r6, 0x120(r30)
/* 8015548C 001523EC  98 BE 01 24 */	stb r5, 0x124(r30)
/* 80155490 001523F0  90 81 00 24 */	stw r4, 0x24(r1)
/* 80155494 001523F4  90 61 00 24 */	stw r3, 0x24(r1)
/* 80155498 001523F8  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8015549C 001523FC  48 00 00 C0 */	b lbl_8015555C
lbl_801554A0:
/* 801554A0 00152400  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 801554A4 00152404  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801554A8 00152408  2C 00 00 07 */	cmpwi r0, 7
/* 801554AC 0015240C  41 82 00 B0 */	beq lbl_8015555C
/* 801554B0 00152410  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801554B4 00152414  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801554B8 00152418  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801554BC 0015241C  38 A4 AA 68 */	addi r5, r4, lbl_803DAA68@l
/* 801554C0 00152420  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 801554C4 00152424  90 A1 00 08 */	stw r5, 8(r1)
/* 801554C8 00152428  38 00 00 00 */	li r0, 0
/* 801554CC 0015242C  C0 23 00 04 */	lfs f1, 4(r3)
/* 801554D0 00152430  C0 03 00 08 */	lfs f0, 8(r3)
/* 801554D4 00152434  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 801554D8 00152438  38 60 00 05 */	li r3, 5
/* 801554DC 0015243C  3B C6 00 04 */	addi r30, r6, 4
/* 801554E0 00152440  90 61 00 0C */	stw r3, 0xc(r1)
/* 801554E4 00152444  38 80 00 05 */	li r4, 5
/* 801554E8 00152448  7F C3 F3 78 */	mr r3, r30
/* 801554EC 0015244C  90 A1 00 08 */	stw r5, 8(r1)
/* 801554F0 00152450  90 01 00 10 */	stw r0, 0x10(r1)
/* 801554F4 00152454  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801554F8 00152458  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801554FC 0015245C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80155500 00152460  98 01 00 20 */	stb r0, 0x20(r1)
/* 80155504 00152464  4B FD BF 35 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80155508 00152468  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8015550C 0015246C  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 80155510 00152470  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 80155514 00152474  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80155518 00152478  90 1E 01 10 */	stw r0, 0x110(r30)
/* 8015551C 0015247C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80155520 00152480  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80155524 00152484  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80155528 00152488  90 7E 01 14 */	stw r3, 0x114(r30)
/* 8015552C 0015248C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80155530 00152490  90 BE 01 18 */	stw r5, 0x118(r30)
/* 80155534 00152494  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80155538 00152498  90 7E 01 1C */	stw r3, 0x11c(r30)
/* 8015553C 0015249C  88 61 00 20 */	lbz r3, 0x20(r1)
/* 80155540 001524A0  90 BE 01 20 */	stw r5, 0x120(r30)
/* 80155544 001524A4  90 81 00 08 */	stw r4, 8(r1)
/* 80155548 001524A8  98 7E 01 24 */	stb r3, 0x124(r30)
/* 8015554C 001524AC  90 01 00 08 */	stw r0, 8(r1)
/* 80155550 001524B0  48 00 00 0C */	b lbl_8015555C
lbl_80155554:
/* 80155554 001524B4  38 00 00 03 */	li r0, 3
/* 80155558 001524B8  90 1F 05 B8 */	stw r0, 0x5b8(r31)
lbl_8015555C:
/* 8015555C 001524BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80155560 001524C0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80155564 001524C4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80155568 001524C8  7C 08 03 A6 */	mtlr r0
/* 8015556C 001524CC  38 21 00 50 */	addi r1, r1, 0x50
/* 80155570 001524D0  4E 80 00 20 */	blr

.global TargetPatrol__10CSpankWeedFR13CStateManager9EStateMsgf
TargetPatrol__10CSpankWeedFR13CStateManager9EStateMsgf:
/* 80155574 001524D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155578 001524D8  7C 08 02 A6 */	mflr r0
/* 8015557C 001524DC  2C 05 00 01 */	cmpwi r5, 1
/* 80155580 001524E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155584 001524E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80155588 001524E8  7C 9F 23 78 */	mr r31, r4
/* 8015558C 001524EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80155590 001524F0  7C 7E 1B 78 */	mr r30, r3
/* 80155594 001524F4  41 82 00 50 */	beq lbl_801555E4
/* 80155598 001524F8  40 80 00 10 */	bge lbl_801555A8
/* 8015559C 001524FC  2C 05 00 00 */	cmpwi r5, 0
/* 801555A0 00152500  40 80 00 14 */	bge lbl_801555B4
/* 801555A4 00152504  48 00 00 40 */	b lbl_801555E4
lbl_801555A8:
/* 801555A8 00152508  2C 05 00 03 */	cmpwi r5, 3
/* 801555AC 0015250C  40 80 00 38 */	bge lbl_801555E4
/* 801555B0 00152510  48 00 00 2C */	b lbl_801555DC
lbl_801555B4:
/* 801555B4 00152514  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801555B8 00152518  38 80 00 03 */	li r4, 3
/* 801555BC 0015251C  4B FE 54 1D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801555C0 00152520  7F C3 F3 78 */	mr r3, r30
/* 801555C4 00152524  7F E5 FB 78 */	mr r5, r31
/* 801555C8 00152528  38 80 00 13 */	li r4, 0x13
/* 801555CC 0015252C  4B EF E9 B5 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801555D0 00152530  38 00 00 02 */	li r0, 2
/* 801555D4 00152534  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 801555D8 00152538  48 00 00 0C */	b lbl_801555E4
lbl_801555DC:
/* 801555DC 0015253C  38 00 00 02 */	li r0, 2
/* 801555E0 00152540  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_801555E4:
/* 801555E4 00152544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801555E8 00152548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801555EC 0015254C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801555F0 00152550  7C 08 03 A6 */	mtlr r0
/* 801555F4 00152554  38 21 00 10 */	addi r1, r1, 0x10
/* 801555F8 00152558  4E 80 00 20 */	blr

.global Lurk__10CSpankWeedFR13CStateManager9EStateMsgf
Lurk__10CSpankWeedFR13CStateManager9EStateMsgf:
/* 801555FC 0015255C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155600 00152560  7C 08 02 A6 */	mflr r0
/* 80155604 00152564  2C 05 00 01 */	cmpwi r5, 1
/* 80155608 00152568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015560C 0015256C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80155610 00152570  7C 9F 23 78 */	mr r31, r4
/* 80155614 00152574  93 C1 00 08 */	stw r30, 8(r1)
/* 80155618 00152578  7C 7E 1B 78 */	mr r30, r3
/* 8015561C 0015257C  41 82 00 60 */	beq lbl_8015567C
/* 80155620 00152580  40 80 00 10 */	bge lbl_80155630
/* 80155624 00152584  2C 05 00 00 */	cmpwi r5, 0
/* 80155628 00152588  40 80 00 14 */	bge lbl_8015563C
/* 8015562C 0015258C  48 00 00 50 */	b lbl_8015567C
lbl_80155630:
/* 80155630 00152590  2C 05 00 03 */	cmpwi r5, 3
/* 80155634 00152594  40 80 00 48 */	bge lbl_8015567C
/* 80155638 00152598  48 00 00 3C */	b lbl_80155674
lbl_8015563C:
/* 8015563C 0015259C  88 1E 04 E1 */	lbz r0, 0x4e1(r30)
/* 80155640 001525A0  38 60 00 01 */	li r3, 1
/* 80155644 001525A4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80155648 001525A8  38 80 00 02 */	li r4, 2
/* 8015564C 001525AC  98 1E 04 E1 */	stb r0, 0x4e1(r30)
/* 80155650 001525B0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80155654 001525B4  4B FE 53 85 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80155658 001525B8  7F C3 F3 78 */	mr r3, r30
/* 8015565C 001525BC  7F E5 FB 78 */	mr r5, r31
/* 80155660 001525C0  38 80 00 13 */	li r4, 0x13
/* 80155664 001525C4  4B EF E9 1D */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80155668 001525C8  38 00 00 01 */	li r0, 1
/* 8015566C 001525CC  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80155670 001525D0  48 00 00 0C */	b lbl_8015567C
lbl_80155674:
/* 80155674 001525D4  38 00 00 01 */	li r0, 1
/* 80155678 001525D8  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_8015567C:
/* 8015567C 001525DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155680 001525E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80155684 001525E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80155688 001525E8  7C 08 03 A6 */	mtlr r0
/* 8015568C 001525EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80155690 001525F0  4E 80 00 20 */	blr

.global FadeOut__10CSpankWeedFR13CStateManager9EStateMsgf
FadeOut__10CSpankWeedFR13CStateManager9EStateMsgf:
/* 80155694 001525F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80155698 001525F8  7C 08 02 A6 */	mflr r0
/* 8015569C 001525FC  2C 05 00 01 */	cmpwi r5, 1
/* 801556A0 00152600  90 01 00 24 */	stw r0, 0x24(r1)
/* 801556A4 00152604  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801556A8 00152608  41 82 00 38 */	beq lbl_801556E0
/* 801556AC 0015260C  40 80 00 10 */	bge lbl_801556BC
/* 801556B0 00152610  2C 05 00 00 */	cmpwi r5, 0
/* 801556B4 00152614  40 80 00 14 */	bge lbl_801556C8
/* 801556B8 00152618  48 00 01 00 */	b lbl_801557B8
lbl_801556BC:
/* 801556BC 0015261C  2C 05 00 03 */	cmpwi r5, 3
/* 801556C0 00152620  40 80 00 F8 */	bge lbl_801557B8
/* 801556C4 00152624  48 00 00 EC */	b lbl_801557B0
lbl_801556C8:
/* 801556C8 00152628  38 80 00 00 */	li r4, 0
/* 801556CC 0015262C  38 00 00 06 */	li r0, 6
/* 801556D0 00152630  90 83 05 BC */	stw r4, 0x5bc(r3)
/* 801556D4 00152634  98 83 05 7C */	stb r4, 0x57c(r3)
/* 801556D8 00152638  90 03 05 B4 */	stw r0, 0x5b4(r3)
/* 801556DC 0015263C  48 00 00 DC */	b lbl_801557B8
lbl_801556E0:
/* 801556E0 00152640  80 03 05 BC */	lwz r0, 0x5bc(r3)
/* 801556E4 00152644  2C 00 00 01 */	cmpwi r0, 1
/* 801556E8 00152648  41 82 00 D0 */	beq lbl_801557B8
/* 801556EC 0015264C  40 80 00 10 */	bge lbl_801556FC
/* 801556F0 00152650  2C 00 00 00 */	cmpwi r0, 0
/* 801556F4 00152654  40 80 00 14 */	bge lbl_80155708
/* 801556F8 00152658  48 00 00 C0 */	b lbl_801557B8
lbl_801556FC:
/* 801556FC 0015265C  2C 00 00 03 */	cmpwi r0, 3
/* 80155700 00152660  40 80 00 B8 */	bge lbl_801557B8
/* 80155704 00152664  48 00 00 90 */	b lbl_80155794
lbl_80155708:
/* 80155708 00152668  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8015570C 0015266C  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 80155710 00152670  2C 00 00 03 */	cmpwi r0, 3
/* 80155714 00152674  40 82 00 10 */	bne lbl_80155724
/* 80155718 00152678  38 00 00 02 */	li r0, 2
/* 8015571C 0015267C  90 03 05 BC */	stw r0, 0x5bc(r3)
/* 80155720 00152680  48 00 00 98 */	b lbl_801557B8
lbl_80155724:
/* 80155724 00152684  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80155728 00152688  38 C0 00 01 */	li r6, 1
/* 8015572C 0015268C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80155730 00152690  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80155734 00152694  90 01 00 08 */	stw r0, 8(r1)
/* 80155738 00152698  38 A3 A9 E4 */	addi r5, r3, lbl_803DA9E4@l
/* 8015573C 0015269C  38 00 00 00 */	li r0, 0
/* 80155740 001526A0  3B E4 00 04 */	addi r31, r4, 4
/* 80155744 001526A4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80155748 001526A8  7F E3 FB 78 */	mr r3, r31
/* 8015574C 001526AC  38 80 00 01 */	li r4, 1
/* 80155750 001526B0  90 A1 00 08 */	stw r5, 8(r1)
/* 80155754 001526B4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80155758 001526B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015575C 001526BC  4B FD BC DD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80155760 001526C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80155764 001526C4  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80155768 001526C8  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8015576C 001526CC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80155770 001526D0  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80155774 001526D4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80155778 001526D8  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8015577C 001526DC  90 81 00 08 */	stw r4, 8(r1)
/* 80155780 001526E0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80155784 001526E4  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 80155788 001526E8  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 8015578C 001526EC  90 01 00 08 */	stw r0, 8(r1)
/* 80155790 001526F0  48 00 00 28 */	b lbl_801557B8
lbl_80155794:
/* 80155794 001526F4  80 83 04 50 */	lwz r4, 0x450(r3)
/* 80155798 001526F8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8015579C 001526FC  2C 00 00 03 */	cmpwi r0, 3
/* 801557A0 00152700  41 82 00 18 */	beq lbl_801557B8
/* 801557A4 00152704  38 00 00 03 */	li r0, 3
/* 801557A8 00152708  90 03 05 BC */	stw r0, 0x5bc(r3)
/* 801557AC 0015270C  48 00 00 0C */	b lbl_801557B8
lbl_801557B0:
/* 801557B0 00152710  38 00 00 06 */	li r0, 6
/* 801557B4 00152714  90 03 05 B8 */	stw r0, 0x5b8(r3)
lbl_801557B8:
/* 801557B8 00152718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801557BC 0015271C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801557C0 00152720  7C 08 03 A6 */	mtlr r0
/* 801557C4 00152724  38 21 00 20 */	addi r1, r1, 0x20
/* 801557C8 00152728  4E 80 00 20 */	blr

.global FadeIn__10CSpankWeedFR13CStateManager9EStateMsgf
FadeIn__10CSpankWeedFR13CStateManager9EStateMsgf:
/* 801557CC 0015272C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801557D0 00152730  7C 08 02 A6 */	mflr r0
/* 801557D4 00152734  2C 05 00 01 */	cmpwi r5, 1
/* 801557D8 00152738  90 01 00 24 */	stw r0, 0x24(r1)
/* 801557DC 0015273C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801557E0 00152740  7C 7F 1B 78 */	mr r31, r3
/* 801557E4 00152744  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801557E8 00152748  41 82 00 3C */	beq lbl_80155824
/* 801557EC 0015274C  40 80 00 10 */	bge lbl_801557FC
/* 801557F0 00152750  2C 05 00 00 */	cmpwi r5, 0
/* 801557F4 00152754  40 80 00 14 */	bge lbl_80155808
/* 801557F8 00152758  48 00 01 04 */	b lbl_801558FC
lbl_801557FC:
/* 801557FC 0015275C  2C 05 00 03 */	cmpwi r5, 3
/* 80155800 00152760  40 80 00 FC */	bge lbl_801558FC
/* 80155804 00152764  48 00 00 F0 */	b lbl_801558F4
lbl_80155808:
/* 80155808 00152768  38 00 00 00 */	li r0, 0
/* 8015580C 0015276C  38 60 00 01 */	li r3, 1
/* 80155810 00152770  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80155814 00152774  38 00 00 05 */	li r0, 5
/* 80155818 00152778  98 7F 05 7C */	stb r3, 0x57c(r31)
/* 8015581C 0015277C  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80155820 00152780  48 00 00 DC */	b lbl_801558FC
lbl_80155824:
/* 80155824 00152784  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 80155828 00152788  2C 00 00 01 */	cmpwi r0, 1
/* 8015582C 0015278C  41 82 00 D0 */	beq lbl_801558FC
/* 80155830 00152790  40 80 00 10 */	bge lbl_80155840
/* 80155834 00152794  2C 00 00 00 */	cmpwi r0, 0
/* 80155838 00152798  40 80 00 14 */	bge lbl_8015584C
/* 8015583C 0015279C  48 00 00 C0 */	b lbl_801558FC
lbl_80155840:
/* 80155840 001527A0  2C 00 00 03 */	cmpwi r0, 3
/* 80155844 001527A4  40 80 00 B8 */	bge lbl_801558FC
/* 80155848 001527A8  48 00 00 90 */	b lbl_801558D8
lbl_8015584C:
/* 8015584C 001527AC  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 80155850 001527B0  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 80155854 001527B4  2C 00 00 03 */	cmpwi r0, 3
/* 80155858 001527B8  40 82 00 10 */	bne lbl_80155868
/* 8015585C 001527BC  38 00 00 02 */	li r0, 2
/* 80155860 001527C0  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80155864 001527C4  48 00 00 98 */	b lbl_801558FC
lbl_80155868:
/* 80155868 001527C8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8015586C 001527CC  38 00 00 00 */	li r0, 0
/* 80155870 001527D0  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 80155874 001527D4  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80155878 001527D8  90 81 00 08 */	stw r4, 8(r1)
/* 8015587C 001527DC  38 A3 A9 E4 */	addi r5, r3, lbl_803DA9E4@l
/* 80155880 001527E0  38 60 00 01 */	li r3, 1
/* 80155884 001527E4  3B C6 00 04 */	addi r30, r6, 4
/* 80155888 001527E8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8015588C 001527EC  7F C3 F3 78 */	mr r3, r30
/* 80155890 001527F0  38 80 00 01 */	li r4, 1
/* 80155894 001527F4  90 A1 00 08 */	stw r5, 8(r1)
/* 80155898 001527F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8015589C 001527FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801558A0 00152800  4B FD BB 99 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801558A4 00152804  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801558A8 00152808  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801558AC 0015280C  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 801558B0 00152810  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801558B4 00152814  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 801558B8 00152818  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801558BC 0015281C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801558C0 00152820  90 81 00 08 */	stw r4, 8(r1)
/* 801558C4 00152824  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801558C8 00152828  90 BE 00 CC */	stw r5, 0xcc(r30)
/* 801558CC 0015282C  90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 801558D0 00152830  90 01 00 08 */	stw r0, 8(r1)
/* 801558D4 00152834  48 00 00 28 */	b lbl_801558FC
lbl_801558D8:
/* 801558D8 00152838  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801558DC 0015283C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801558E0 00152840  2C 00 00 03 */	cmpwi r0, 3
/* 801558E4 00152844  41 82 00 18 */	beq lbl_801558FC
/* 801558E8 00152848  38 00 00 03 */	li r0, 3
/* 801558EC 0015284C  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 801558F0 00152850  48 00 00 0C */	b lbl_801558FC
lbl_801558F4:
/* 801558F4 00152854  38 00 00 05 */	li r0, 5
/* 801558F8 00152858  90 1F 05 B8 */	stw r0, 0x5b8(r31)
lbl_801558FC:
/* 801558FC 0015285C  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 80155900 00152860  38 60 00 01 */	li r3, 1
/* 80155904 00152864  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80155908 00152868  98 1F 00 E7 */	stb r0, 0xe7(r31)
/* 8015590C 0015286C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80155910 00152870  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80155914 00152874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80155918 00152878  7C 08 03 A6 */	mtlr r0
/* 8015591C 0015287C  38 21 00 20 */	addi r1, r1, 0x20
/* 80155920 00152880  4E 80 00 20 */	blr

.global Patrol__10CSpankWeedFR13CStateManager9EStateMsgf
Patrol__10CSpankWeedFR13CStateManager9EStateMsgf:
/* 80155924 00152884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155928 00152888  7C 08 02 A6 */	mflr r0
/* 8015592C 0015288C  2C 05 00 01 */	cmpwi r5, 1
/* 80155930 00152890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155934 00152894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80155938 00152898  7C 9F 23 78 */	mr r31, r4
/* 8015593C 0015289C  93 C1 00 08 */	stw r30, 8(r1)
/* 80155940 001528A0  7C 7E 1B 78 */	mr r30, r3
/* 80155944 001528A4  41 82 00 D4 */	beq lbl_80155A18
/* 80155948 001528A8  40 80 00 10 */	bge lbl_80155958
/* 8015594C 001528AC  2C 05 00 00 */	cmpwi r5, 0
/* 80155950 001528B0  40 80 00 14 */	bge lbl_80155964
/* 80155954 001528B4  48 00 00 C4 */	b lbl_80155A18
lbl_80155958:
/* 80155958 001528B8  2C 05 00 03 */	cmpwi r5, 3
/* 8015595C 001528BC  40 80 00 BC */	bge lbl_80155A18
/* 80155960 001528C0  48 00 00 6C */	b lbl_801559CC
lbl_80155964:
/* 80155964 001528C4  88 1E 04 E1 */	lbz r0, 0x4e1(r30)
/* 80155968 001528C8  38 60 00 00 */	li r3, 0
/* 8015596C 001528CC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80155970 001528D0  38 80 00 01 */	li r4, 1
/* 80155974 001528D4  98 1E 04 E1 */	stb r0, 0x4e1(r30)
/* 80155978 001528D8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8015597C 001528DC  4B FE 50 5D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80155980 001528E0  7F C3 F3 78 */	mr r3, r30
/* 80155984 001528E4  7F E6 FB 78 */	mr r6, r31
/* 80155988 001528E8  38 80 00 13 */	li r4, 0x13
/* 8015598C 001528EC  38 A0 00 27 */	li r5, 0x27
/* 80155990 001528F0  4B EF E5 45 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80155994 001528F4  7F C3 F3 78 */	mr r3, r30
/* 80155998 001528F8  7F E6 FB 78 */	mr r6, r31
/* 8015599C 001528FC  38 80 00 29 */	li r4, 0x29
/* 801559A0 00152900  38 A0 00 28 */	li r5, 0x28
/* 801559A4 00152904  4B EF E5 31 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 801559A8 00152908  80 7E 05 94 */	lwz r3, 0x594(r30)
/* 801559AC 0015290C  7F E4 FB 78 */	mr r4, r31
/* 801559B0 00152910  38 A0 00 00 */	li r5, 0
/* 801559B4 00152914  48 05 19 45 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801559B8 00152918  38 60 00 01 */	li r3, 1
/* 801559BC 0015291C  38 00 00 00 */	li r0, 0
/* 801559C0 00152920  98 7E 05 98 */	stb r3, 0x598(r30)
/* 801559C4 00152924  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 801559C8 00152928  48 00 00 50 */	b lbl_80155A18
lbl_801559CC:
/* 801559CC 0015292C  7F E7 FB 78 */	mr r7, r31
/* 801559D0 00152930  38 80 00 29 */	li r4, 0x29
/* 801559D4 00152934  38 A0 00 28 */	li r5, 0x28
/* 801559D8 00152938  38 C0 00 27 */	li r6, 0x27
/* 801559DC 0015293C  4B EF E8 09 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 801559E0 00152940  7F C3 F3 78 */	mr r3, r30
/* 801559E4 00152944  38 9E 05 84 */	addi r4, r30, 0x584
/* 801559E8 00152948  4B EF D4 A5 */	bl SetTranslation__6CActorFRC9CVector3f
/* 801559EC 0015294C  80 7E 05 94 */	lwz r3, 0x594(r30)
/* 801559F0 00152950  7F E4 FB 78 */	mr r4, r31
/* 801559F4 00152954  38 A0 00 01 */	li r5, 1
/* 801559F8 00152958  48 05 19 01 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801559FC 0015295C  38 80 00 00 */	li r4, 0
/* 80155A00 00152960  38 60 00 01 */	li r3, 1
/* 80155A04 00152964  98 9E 05 98 */	stb r4, 0x598(r30)
/* 80155A08 00152968  88 1E 04 E1 */	lbz r0, 0x4e1(r30)
/* 80155A0C 0015296C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80155A10 00152970  98 1E 04 E1 */	stb r0, 0x4e1(r30)
/* 80155A14 00152974  90 9E 05 B8 */	stw r4, 0x5b8(r30)
lbl_80155A18:
/* 80155A18 00152978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155A1C 0015297C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80155A20 00152980  83 C1 00 08 */	lwz r30, 8(r1)
/* 80155A24 00152984  7C 08 03 A6 */	mtlr r0
/* 80155A28 00152988  38 21 00 10 */	addi r1, r1, 0x10
/* 80155A2C 0015298C  4E 80 00 20 */	blr

.global KnockBack__10CSpankWeedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__10CSpankWeedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 80155A30 00152990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155A34 00152994  7C 08 02 A6 */	mflr r0
/* 80155A38 00152998  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155A3C 0015299C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80155A40 001529A0  7C 7F 1B 78 */	mr r31, r3
/* 80155A44 001529A4  88 03 05 7C */	lbz r0, 0x57c(r3)
/* 80155A48 001529A8  28 00 00 00 */	cmplwi r0, 0
/* 80155A4C 001529AC  41 82 00 10 */	beq lbl_80155A5C
/* 80155A50 001529B0  4B F2 4D 2D */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 80155A54 001529B4  38 00 00 00 */	li r0, 0
/* 80155A58 001529B8  98 1F 05 7C */	stb r0, 0x57c(r31)
lbl_80155A5C:
/* 80155A5C 001529BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155A60 001529C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80155A64 001529C4  7C 08 03 A6 */	mtlr r0
/* 80155A68 001529C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80155A6C 001529CC  4E 80 00 20 */	blr

.global Think__10CSpankWeedFfR13CStateManager
Think__10CSpankWeedFfR13CStateManager:
/* 80155A70 001529D0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80155A74 001529D4  7C 08 02 A6 */	mflr r0
/* 80155A78 001529D8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80155A7C 001529DC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80155A80 001529E0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 80155A84 001529E4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80155A88 001529E8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 80155A8C 001529EC  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80155A90 001529F0  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 80155A94 001529F4  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80155A98 001529F8  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 80155A9C 001529FC  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80155AA0 00152A00  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 80155AA4 00152A04  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80155AA8 00152A08  F3 41 00 88 */	psq_st f26, 136(r1), 0, qr0
/* 80155AAC 00152A0C  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 80155AB0 00152A10  F3 21 00 78 */	psq_st f25, 120(r1), 0, qr0
/* 80155AB4 00152A14  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80155AB8 00152A18  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80155ABC 00152A1C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80155AC0 00152A20  FF 20 08 90 */	fmr f25, f1
/* 80155AC4 00152A24  7C 7E 1B 78 */	mr r30, r3
/* 80155AC8 00152A28  7C 9F 23 78 */	mr r31, r4
/* 80155ACC 00152A2C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80155AD0 00152A30  41 82 00 F0 */	beq lbl_80155BC0
/* 80155AD4 00152A34  81 83 00 00 */	lwz r12, 0(r3)
/* 80155AD8 00152A38  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80155ADC 00152A3C  7D 89 03 A6 */	mtctr r12
/* 80155AE0 00152A40  4E 80 04 21 */	bctrl
/* 80155AE4 00152A44  C0 02 9E 34 */	lfs f0, lbl_805ABB54@sda21(r2)
/* 80155AE8 00152A48  D0 03 00 00 */	stfs f0, 0(r3)
/* 80155AEC 00152A4C  88 1E 05 98 */	lbz r0, 0x598(r30)
/* 80155AF0 00152A50  28 00 00 00 */	cmplwi r0, 0
/* 80155AF4 00152A54  40 82 00 BC */	bne lbl_80155BB0
/* 80155AF8 00152A58  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80155AFC 00152A5C  3C 60 80 3D */	lis r3, lbl_803D0230@ha
/* 80155B00 00152A60  38 83 02 30 */	addi r4, r3, lbl_803D0230@l
/* 80155B04 00152A64  38 61 00 14 */	addi r3, r1, 0x14
/* 80155B08 00152A68  C3 85 00 00 */	lfs f28, 0(r5)
/* 80155B0C 00152A6C  38 84 00 6C */	addi r4, r4, 0x6c
/* 80155B10 00152A70  C3 65 00 04 */	lfs f27, 4(r5)
/* 80155B14 00152A74  C3 45 00 08 */	lfs f26, 8(r5)
/* 80155B18 00152A78  4B EA F1 A1 */	bl string_l__4rstlFPCc
/* 80155B1C 00152A7C  7F C4 F3 78 */	mr r4, r30
/* 80155B20 00152A80  38 61 00 30 */	addi r3, r1, 0x30
/* 80155B24 00152A84  38 A1 00 14 */	addi r5, r1, 0x14
/* 80155B28 00152A88  4B EF D3 D9 */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80155B2C 00152A8C  C3 A1 00 5C */	lfs f29, 0x5c(r1)
/* 80155B30 00152A90  38 61 00 14 */	addi r3, r1, 0x14
/* 80155B34 00152A94  C3 C1 00 4C */	lfs f30, 0x4c(r1)
/* 80155B38 00152A98  C3 E1 00 3C */	lfs f31, 0x3c(r1)
/* 80155B3C 00152A9C  48 1E 7F A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80155B40 00152AA0  EC 5C 07 F2 */	fmuls f2, f28, f31
/* 80155B44 00152AA4  38 61 00 08 */	addi r3, r1, 8
/* 80155B48 00152AA8  EC 3B 07 B2 */	fmuls f1, f27, f30
/* 80155B4C 00152AAC  38 9E 00 34 */	addi r4, r30, 0x34
/* 80155B50 00152AB0  EC 1A 07 72 */	fmuls f0, f26, f29
/* 80155B54 00152AB4  38 A1 00 24 */	addi r5, r1, 0x24
/* 80155B58 00152AB8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80155B5C 00152ABC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80155B60 00152AC0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80155B64 00152AC4  48 1B CF 1D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 80155B68 00152AC8  C0 41 00 08 */	lfs f2, 8(r1)
/* 80155B6C 00152ACC  7F C3 F3 78 */	mr r3, r30
/* 80155B70 00152AD0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80155B74 00152AD4  38 81 00 24 */	addi r4, r1, 0x24
/* 80155B78 00152AD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80155B7C 00152ADC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80155B80 00152AE0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80155B84 00152AE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80155B88 00152AE8  4B FC 4E B1 */	bl MoveCollisionPrimitive__13CPhysicsActorFRC9CVector3f
/* 80155B8C 00152AEC  FC 20 C8 90 */	fmr f1, f25
/* 80155B90 00152AF0  80 7E 05 94 */	lwz r3, 0x594(r30)
/* 80155B94 00152AF4  7F E4 FB 78 */	mr r4, r31
/* 80155B98 00152AF8  38 A0 00 00 */	li r5, 0
/* 80155B9C 00152AFC  48 05 18 B5 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 80155BA0 00152B00  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 80155BA4 00152B04  38 60 00 01 */	li r3, 1
/* 80155BA8 00152B08  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80155BAC 00152B0C  98 1E 00 E4 */	stb r0, 0xe4(r30)
lbl_80155BB0:
/* 80155BB0 00152B10  FC 20 C8 90 */	fmr f1, f25
/* 80155BB4 00152B14  7F C3 F3 78 */	mr r3, r30
/* 80155BB8 00152B18  7F E4 FB 78 */	mr r4, r31
/* 80155BBC 00152B1C  4B F2 3F 5D */	bl Think__10CPatternedFfR13CStateManager
lbl_80155BC0:
/* 80155BC0 00152B20  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 80155BC4 00152B24  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80155BC8 00152B28  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 80155BCC 00152B2C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80155BD0 00152B30  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 80155BD4 00152B34  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80155BD8 00152B38  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 80155BDC 00152B3C  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80155BE0 00152B40  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 80155BE4 00152B44  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80155BE8 00152B48  E3 41 00 88 */	psq_l f26, 136(r1), 0, qr0
/* 80155BEC 00152B4C  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 80155BF0 00152B50  E3 21 00 78 */	psq_l f25, 120(r1), 0, qr0
/* 80155BF4 00152B54  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 80155BF8 00152B58  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80155BFC 00152B5C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80155C00 00152B60  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80155C04 00152B64  7C 08 03 A6 */	mtlr r0
/* 80155C08 00152B68  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80155C0C 00152B6C  4E 80 00 20 */	blr

.global AcceptScriptMsg__10CSpankWeedF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__10CSpankWeedF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80155C10 00152B70  94 21 FD A0 */	stwu r1, -0x260(r1)
/* 80155C14 00152B74  7C 08 02 A6 */	mflr r0
/* 80155C18 00152B78  90 01 02 64 */	stw r0, 0x264(r1)
/* 80155C1C 00152B7C  DB E1 02 50 */	stfd f31, 0x250(r1)
/* 80155C20 00152B80  F3 E1 02 58 */	psq_st f31, 600(r1), 0, qr0
/* 80155C24 00152B84  DB C1 02 40 */	stfd f30, 0x240(r1)
/* 80155C28 00152B88  F3 C1 02 48 */	psq_st f30, 584(r1), 0, qr0
/* 80155C2C 00152B8C  DB A1 02 30 */	stfd f29, 0x230(r1)
/* 80155C30 00152B90  F3 A1 02 38 */	psq_st f29, 568(r1), 0, qr0
/* 80155C34 00152B94  BE E1 02 0C */	stmw r23, 0x20c(r1)
/* 80155C38 00152B98  7C 7F 1B 78 */	mr r31, r3
/* 80155C3C 00152B9C  7C 9C 23 78 */	mr r28, r4
/* 80155C40 00152BA0  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80155C44 00152BA4  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 80155C48 00152BA8  7C BD 2B 78 */	mr r29, r5
/* 80155C4C 00152BAC  7C DE 33 78 */	mr r30, r6
/* 80155C50 00152BB0  54 1B CF FE */	rlwinm r27, r0, 0x19, 0x1f, 0x1f
/* 80155C54 00152BB4  41 82 03 A8 */	beq lbl_80155FFC
/* 80155C58 00152BB8  40 80 00 1C */	bge lbl_80155C74
/* 80155C5C 00152BBC  2C 1C 00 05 */	cmpwi r28, 5
/* 80155C60 00152BC0  41 82 05 0C */	beq lbl_8015616C
/* 80155C64 00152BC4  40 80 05 60 */	bge lbl_801561C4
/* 80155C68 00152BC8  2C 1C 00 01 */	cmpwi r28, 1
/* 80155C6C 00152BCC  41 82 04 E0 */	beq lbl_8015614C
/* 80155C70 00152BD0  48 00 05 54 */	b lbl_801561C4
lbl_80155C74:
/* 80155C74 00152BD4  2C 1C 00 22 */	cmpwi r28, 0x22
/* 80155C78 00152BD8  41 82 04 B0 */	beq lbl_80156128
/* 80155C7C 00152BDC  40 80 00 10 */	bge lbl_80155C8C
/* 80155C80 00152BE0  2C 1C 00 21 */	cmpwi r28, 0x21
/* 80155C84 00152BE4  40 80 00 14 */	bge lbl_80155C98
/* 80155C88 00152BE8  48 00 05 3C */	b lbl_801561C4
lbl_80155C8C:
/* 80155C8C 00152BEC  2C 1C 00 30 */	cmpwi r28, 0x30
/* 80155C90 00152BF0  41 82 05 1C */	beq lbl_801561AC
/* 80155C94 00152BF4  48 00 05 30 */	b lbl_801561C4
lbl_80155C98:
/* 80155C98 00152BF8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80155C9C 00152BFC  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80155CA0 00152C00  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80155CA4 00152C04  40 82 00 7C */	bne lbl_80155D20
/* 80155CA8 00152C08  7F C4 F3 78 */	mr r4, r30
/* 80155CAC 00152C0C  4B FE 50 45 */	bl Activate__15CBodyControllerFR13CStateManager
/* 80155CB0 00152C10  7F E4 FB 78 */	mr r4, r31
/* 80155CB4 00152C14  38 61 01 14 */	addi r3, r1, 0x114
/* 80155CB8 00152C18  4B FC 4C 75 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80155CBC 00152C1C  C0 61 01 20 */	lfs f3, 0x120(r1)
/* 80155CC0 00152C20  7F E3 FB 78 */	mr r3, r31
/* 80155CC4 00152C24  C0 41 01 14 */	lfs f2, 0x114(r1)
/* 80155CC8 00152C28  38 81 00 FC */	addi r4, r1, 0xfc
/* 80155CCC 00152C2C  C0 21 01 28 */	lfs f1, 0x128(r1)
/* 80155CD0 00152C30  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 80155CD4 00152C34  EC 63 10 28 */	fsubs f3, f3, f2
/* 80155CD8 00152C38  C0 82 9E 38 */	lfs f4, lbl_805ABB58@sda21(r2)
/* 80155CDC 00152C3C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80155CE0 00152C40  C0 21 01 24 */	lfs f1, 0x124(r1)
/* 80155CE4 00152C44  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80155CE8 00152C48  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 80155CEC 00152C4C  EC A4 00 B2 */	fmuls f5, f4, f2
/* 80155CF0 00152C50  EC 41 00 28 */	fsubs f2, f1, f0
/* 80155CF4 00152C54  D0 61 01 08 */	stfs f3, 0x108(r1)
/* 80155CF8 00152C58  FC 20 18 50 */	fneg f1, f3
/* 80155CFC 00152C5C  FC 00 28 50 */	fneg f0, f5
/* 80155D00 00152C60  D0 A1 01 10 */	stfs f5, 0x110(r1)
/* 80155D04 00152C64  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80155D08 00152C68  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80155D0C 00152C6C  FC 20 10 50 */	fneg f1, f2
/* 80155D10 00152C70  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80155D14 00152C74  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 80155D18 00152C78  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 80155D1C 00152C7C  4B FC 49 3D */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
lbl_80155D20:
/* 80155D20 00152C80  38 00 00 00 */	li r0, 0
/* 80155D24 00152C84  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80155D28 00152C88  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80155D2C 00152C8C  38 80 00 0C */	li r4, 0xc
/* 80155D30 00152C90  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80155D34 00152C94  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80155D38 00152C98  48 00 0A 81 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 80155D3C 00152C9C  3C 60 80 3D */	lis r3, lbl_803D01F8@ha
/* 80155D40 00152CA0  3B 21 01 AC */	addi r25, r1, 0x1ac
/* 80155D44 00152CA4  3B 43 01 F8 */	addi r26, r3, lbl_803D01F8@l
/* 80155D48 00152CA8  3B 01 01 F0 */	addi r24, r1, 0x1f0
/* 80155D4C 00152CAC  3A E0 00 00 */	li r23, 0
lbl_80155D50:
/* 80155D50 00152CB0  80 9A 00 00 */	lwz r4, 0(r26)
/* 80155D54 00152CB4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80155D58 00152CB8  4B EA EF 61 */	bl string_l__4rstlFPCc
/* 80155D5C 00152CBC  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 80155D60 00152CC0  38 61 00 10 */	addi r3, r1, 0x10
/* 80155D64 00152CC4  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80155D68 00152CC8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80155D6C 00152CCC  4B ED 8A CD */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80155D70 00152CD0  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80155D74 00152CD4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80155D78 00152CD8  98 01 00 14 */	stb r0, 0x14(r1)
/* 80155D7C 00152CDC  48 1E 7D 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80155D80 00152CE0  88 01 00 14 */	lbz r0, 0x14(r1)
/* 80155D84 00152CE4  28 00 00 FF */	cmplwi r0, 0xff
/* 80155D88 00152CE8  41 82 00 E0 */	beq lbl_80155E68
/* 80155D8C 00152CEC  80 9A 00 00 */	lwz r4, 0(r26)
/* 80155D90 00152CF0  38 61 00 98 */	addi r3, r1, 0x98
/* 80155D94 00152CF4  4B EA EF 25 */	bl string_l__4rstlFPCc
/* 80155D98 00152CF8  88 01 00 14 */	lbz r0, 0x14(r1)
/* 80155D9C 00152CFC  38 61 01 80 */	addi r3, r1, 0x180
/* 80155DA0 00152D00  C0 3A 00 04 */	lfs f1, 4(r26)
/* 80155DA4 00152D04  38 81 00 0C */	addi r4, r1, 0xc
/* 80155DA8 00152D08  98 01 00 0C */	stb r0, 0xc(r1)
/* 80155DAC 00152D0C  38 A1 00 98 */	addi r5, r1, 0x98
/* 80155DB0 00152D10  C0 42 9E 3C */	lfs f2, lbl_805ABB5C@sda21(r2)
/* 80155DB4 00152D14  48 05 2A 59 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 80155DB8 00152D18  80 E1 01 80 */	lwz r7, 0x180(r1)
/* 80155DBC 00152D1C  7F 03 C3 78 */	mr r3, r24
/* 80155DC0 00152D20  80 C1 01 84 */	lwz r6, 0x184(r1)
/* 80155DC4 00152D24  7F 24 CB 78 */	mr r4, r25
/* 80155DC8 00152D28  88 A1 01 88 */	lbz r5, 0x188(r1)
/* 80155DCC 00152D2C  88 01 01 89 */	lbz r0, 0x189(r1)
/* 80155DD0 00152D30  C0 E1 01 8C */	lfs f7, 0x18c(r1)
/* 80155DD4 00152D34  C0 C1 01 90 */	lfs f6, 0x190(r1)
/* 80155DD8 00152D38  C0 A1 01 94 */	lfs f5, 0x194(r1)
/* 80155DDC 00152D3C  C0 81 01 98 */	lfs f4, 0x198(r1)
/* 80155DE0 00152D40  C0 61 01 9C */	lfs f3, 0x19c(r1)
/* 80155DE4 00152D44  C0 41 01 A0 */	lfs f2, 0x1a0(r1)
/* 80155DE8 00152D48  C0 21 01 A4 */	lfs f1, 0x1a4(r1)
/* 80155DEC 00152D4C  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 80155DF0 00152D50  90 E1 01 C4 */	stw r7, 0x1c4(r1)
/* 80155DF4 00152D54  90 C1 01 C8 */	stw r6, 0x1c8(r1)
/* 80155DF8 00152D58  98 A1 01 CC */	stb r5, 0x1cc(r1)
/* 80155DFC 00152D5C  98 01 01 CD */	stb r0, 0x1cd(r1)
/* 80155E00 00152D60  D0 E1 01 D0 */	stfs f7, 0x1d0(r1)
/* 80155E04 00152D64  D0 C1 01 D4 */	stfs f6, 0x1d4(r1)
/* 80155E08 00152D68  D0 A1 01 D8 */	stfs f5, 0x1d8(r1)
/* 80155E0C 00152D6C  D0 81 01 DC */	stfs f4, 0x1dc(r1)
/* 80155E10 00152D70  D0 61 01 E0 */	stfs f3, 0x1e0(r1)
/* 80155E14 00152D74  D0 41 01 E4 */	stfs f2, 0x1e4(r1)
/* 80155E18 00152D78  D0 21 01 E8 */	stfs f1, 0x1e8(r1)
/* 80155E1C 00152D7C  D0 01 01 EC */	stfs f0, 0x1ec(r1)
/* 80155E20 00152D80  48 1E 83 41 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80155E24 00152D84  A0 01 01 BC */	lhz r0, 0x1bc(r1)
/* 80155E28 00152D88  28 19 00 00 */	cmplwi r25, 0
/* 80155E2C 00152D8C  C0 01 01 C0 */	lfs f0, 0x1c0(r1)
/* 80155E30 00152D90  B0 01 02 00 */	sth r0, 0x200(r1)
/* 80155E34 00152D94  D0 01 02 04 */	stfs f0, 0x204(r1)
/* 80155E38 00152D98  41 82 00 0C */	beq lbl_80155E44
/* 80155E3C 00152D9C  7F 23 CB 78 */	mr r3, r25
/* 80155E40 00152DA0  48 1E 7C A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80155E44:
/* 80155E44 00152DA4  38 61 00 98 */	addi r3, r1, 0x98
/* 80155E48 00152DA8  48 1E 7C 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80155E4C 00152DAC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80155E50 00152DB0  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 80155E54 00152DB4  48 00 03 DD */	bl sub_80156230
/* 80155E58 00152DB8  28 18 00 00 */	cmplwi r24, 0
/* 80155E5C 00152DBC  41 82 00 0C */	beq lbl_80155E68
/* 80155E60 00152DC0  7F 03 C3 78 */	mr r3, r24
/* 80155E64 00152DC4  48 1E 7C 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80155E68:
/* 80155E68 00152DC8  3A F7 00 01 */	addi r23, r23, 1
/* 80155E6C 00152DCC  3B 5A 00 08 */	addi r26, r26, 8
/* 80155E70 00152DD0  28 17 00 07 */	cmplwi r23, 7
/* 80155E74 00152DD4  41 80 FE DC */	blt lbl_80155D50
/* 80155E78 00152DD8  3C 80 80 3D */	lis r4, lbl_803D0230@ha
/* 80155E7C 00152DDC  38 60 00 18 */	li r3, 0x18
/* 80155E80 00152DE0  38 84 02 30 */	addi r4, r4, lbl_803D0230@l
/* 80155E84 00152DE4  38 A0 00 00 */	li r5, 0
/* 80155E88 00152DE8  38 84 00 70 */	addi r4, r4, 0x70
/* 80155E8C 00152DEC  48 1B F9 E1 */	bl __nw__FUlPCcPCc
/* 80155E90 00152DF0  7C 77 1B 79 */	or. r23, r3, r3
/* 80155E94 00152DF4  41 82 00 3C */	beq lbl_80155ED0
/* 80155E98 00152DF8  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80155E9C 00152DFC  7F C4 F3 78 */	mr r4, r30
/* 80155EA0 00152E00  81 3F 00 04 */	lwz r9, 4(r31)
/* 80155EA4 00152E04  38 A1 00 48 */	addi r5, r1, 0x48
/* 80155EA8 00152E08  54 08 CF FE */	rlwinm r8, r0, 0x19, 0x1f, 0x1f
/* 80155EAC 00152E0C  38 C1 00 54 */	addi r6, r1, 0x54
/* 80155EB0 00152E10  91 21 00 54 */	stw r9, 0x54(r1)
/* 80155EB4 00152E14  38 E1 00 B8 */	addi r7, r1, 0xb8
/* 80155EB8 00152E18  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80155EBC 00152E1C  91 21 00 50 */	stw r9, 0x50(r1)
/* 80155EC0 00152E20  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80155EC4 00152E24  B0 01 00 48 */	sth r0, 0x48(r1)
/* 80155EC8 00152E28  48 05 1A 69 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 80155ECC 00152E2C  7C 77 1B 78 */	mr r23, r3
lbl_80155ED0:
/* 80155ED0 00152E30  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 80155ED4 00152E34  38 80 00 01 */	li r4, 1
/* 80155ED8 00152E38  48 05 1A 05 */	bl __dt__22CCollisionActorManagerFv
/* 80155EDC 00152E3C  92 FF 05 94 */	stw r23, 0x594(r31)
/* 80155EE0 00152E40  38 00 00 00 */	li r0, 0
/* 80155EE4 00152E44  38 60 00 00 */	li r3, 0
/* 80155EE8 00152E48  38 80 00 01 */	li r4, 1
/* 80155EEC 00152E4C  80 AD 8C 84 */	lwz r5, lbl_805A7844@sda21(r13)
/* 80155EF0 00152E50  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80155EF4 00152E54  90 01 00 68 */	stw r0, 0x68(r1)
/* 80155EF8 00152E58  48 23 3F FD */	bl __shl2i
/* 80155EFC 00152E5C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80155F00 00152E60  80 C1 00 6C */	lwz r6, 0x6c(r1)
/* 80155F04 00152E64  7C 00 1B 78 */	or r0, r0, r3
/* 80155F08 00152E68  80 AD 8C 88 */	lwz r5, lbl_805A7848@sda21(r13)
/* 80155F0C 00152E6C  7C C4 23 78 */	or r4, r6, r4
/* 80155F10 00152E70  90 01 00 68 */	stw r0, 0x68(r1)
/* 80155F14 00152E74  38 60 00 00 */	li r3, 0
/* 80155F18 00152E78  90 81 00 6C */	stw r4, 0x6c(r1)
/* 80155F1C 00152E7C  38 80 00 01 */	li r4, 1
/* 80155F20 00152E80  48 23 3F D5 */	bl __shl2i
/* 80155F24 00152E84  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80155F28 00152E88  38 A1 00 68 */	addi r5, r1, 0x68
/* 80155F2C 00152E8C  80 C1 00 6C */	lwz r6, 0x6c(r1)
/* 80155F30 00152E90  7C 00 1B 78 */	or r0, r0, r3
/* 80155F34 00152E94  7C C3 23 78 */	or r3, r6, r4
/* 80155F38 00152E98  90 01 00 68 */	stw r0, 0x68(r1)
/* 80155F3C 00152E9C  7F C4 F3 78 */	mr r4, r30
/* 80155F40 00152EA0  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80155F44 00152EA4  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 80155F48 00152EA8  48 05 13 09 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 80155F4C 00152EAC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80155F50 00152EB0  38 80 FF FF */	li r4, -1
/* 80155F54 00152EB4  48 00 03 D9 */	bl sub_8015632c
/* 80155F58 00152EB8  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 80155F5C 00152EBC  28 04 00 00 */	cmplwi r4, 0
/* 80155F60 00152EC0  41 82 00 14 */	beq lbl_80155F74
/* 80155F64 00152EC4  88 04 02 98 */	lbz r0, 0x298(r4)
/* 80155F68 00152EC8  38 60 00 01 */	li r3, 1
/* 80155F6C 00152ECC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80155F70 00152ED0  98 04 02 98 */	stb r0, 0x298(r4)
lbl_80155F74:
/* 80155F74 00152ED4  3C 80 80 3D */	lis r4, lbl_803D0230@ha
/* 80155F78 00152ED8  38 61 00 70 */	addi r3, r1, 0x70
/* 80155F7C 00152EDC  38 84 02 30 */	addi r4, r4, lbl_803D0230@l
/* 80155F80 00152EE0  38 C1 00 08 */	addi r6, r1, 8
/* 80155F84 00152EE4  38 84 00 4D */	addi r4, r4, 0x4d
/* 80155F88 00152EE8  38 A0 FF FF */	li r5, -1
/* 80155F8C 00152EEC  48 1E 82 09 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80155F90 00152EF0  7F E4 FB 78 */	mr r4, r31
/* 80155F94 00152EF4  38 61 01 2C */	addi r3, r1, 0x12c
/* 80155F98 00152EF8  38 A1 00 70 */	addi r5, r1, 0x70
/* 80155F9C 00152EFC  4B EF CF 35 */	bl "GetScaledLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80155FA0 00152F00  C0 41 01 58 */	lfs f2, 0x158(r1)
/* 80155FA4 00152F04  38 61 01 5C */	addi r3, r1, 0x15c
/* 80155FA8 00152F08  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 80155FAC 00152F0C  38 9F 00 34 */	addi r4, r31, 0x34
/* 80155FB0 00152F10  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 80155FB4 00152F14  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80155FB8 00152F18  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80155FBC 00152F1C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80155FC0 00152F20  48 1B D1 35 */	bl BuildMatrix3f__12CTransform4fCFv
/* 80155FC4 00152F24  38 61 00 8C */	addi r3, r1, 0x8c
/* 80155FC8 00152F28  38 81 01 5C */	addi r4, r1, 0x15c
/* 80155FCC 00152F2C  38 A1 00 80 */	addi r5, r1, 0x80
/* 80155FD0 00152F30  48 1B A2 C5 */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 80155FD4 00152F34  C3 E1 00 8C */	lfs f31, 0x8c(r1)
/* 80155FD8 00152F38  38 61 00 70 */	addi r3, r1, 0x70
/* 80155FDC 00152F3C  C3 C1 00 90 */	lfs f30, 0x90(r1)
/* 80155FE0 00152F40  C3 A1 00 94 */	lfs f29, 0x94(r1)
/* 80155FE4 00152F44  48 1E 7A FD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80155FE8 00152F48  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 80155FEC 00152F4C  D3 E3 02 AC */	stfs f31, 0x2ac(r3)
/* 80155FF0 00152F50  D3 C3 02 B0 */	stfs f30, 0x2b0(r3)
/* 80155FF4 00152F54  D3 A3 02 B4 */	stfs f29, 0x2b4(r3)
/* 80155FF8 00152F58  48 00 01 CC */	b lbl_801561C4
lbl_80155FFC:
/* 80155FFC 00152F5C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80156000 00152F60  7F C3 F3 78 */	mr r3, r30
/* 80156004 00152F64  38 81 00 40 */	addi r4, r1, 0x40
/* 80156008 00152F68  B0 01 00 40 */	sth r0, 0x40(r1)
/* 8015600C 00152F6C  4B EF 65 69 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80156010 00152F70  7C 60 1B 78 */	mr r0, r3
/* 80156014 00152F74  38 61 00 60 */	addi r3, r1, 0x60
/* 80156018 00152F78  7C 04 03 78 */	mr r4, r0
/* 8015601C 00152F7C  4B F5 93 31 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80156020 00152F80  80 83 00 04 */	lwz r4, 4(r3)
/* 80156024 00152F84  28 04 00 00 */	cmplwi r4, 0
/* 80156028 00152F88  41 82 01 9C */	beq lbl_801561C4
/* 8015602C 00152F8C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80156030 00152F90  48 05 2B 5D */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 80156034 00152F94  A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 80156038 00152F98  7F C3 F3 78 */	mr r3, r30
/* 8015603C 00152F9C  38 81 00 38 */	addi r4, r1, 0x38
/* 80156040 00152FA0  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 80156044 00152FA4  B0 01 00 38 */	sth r0, 0x38(r1)
/* 80156048 00152FA8  4B EF 65 2D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8015604C 00152FAC  7C 60 1B 78 */	mr r0, r3
/* 80156050 00152FB0  38 61 00 58 */	addi r3, r1, 0x58
/* 80156054 00152FB4  7C 04 03 78 */	mr r4, r0
/* 80156058 00152FB8  4B F5 63 3D */	bl "__ct__20TCastToPtr<7CPlayer>FP7CEntity"
/* 8015605C 00152FBC  82 E3 00 04 */	lwz r23, 4(r3)
/* 80156060 00152FC0  28 17 00 00 */	cmplwi r23, 0
/* 80156064 00152FC4  41 82 01 60 */	beq lbl_801561C4
/* 80156068 00152FC8  C0 3F 04 20 */	lfs f1, 0x420(r31)
/* 8015606C 00152FCC  C0 02 9E 30 */	lfs f0, lbl_805ABB50@sda21(r2)
/* 80156070 00152FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80156074 00152FD4  4C 40 13 82 */	cror 2, 0, 2
/* 80156078 00152FD8  40 82 01 4C */	bne lbl_801561C4
/* 8015607C 00152FDC  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80156080 00152FE0  2C 00 00 04 */	cmpwi r0, 4
/* 80156084 00152FE4  41 82 01 40 */	beq lbl_801561C4
/* 80156088 00152FE8  2C 00 00 06 */	cmpwi r0, 6
/* 8015608C 00152FEC  41 82 01 38 */	beq lbl_801561C4
/* 80156090 00152FF0  80 AD 8C 78 */	lwz r5, lbl_805A7838@sda21(r13)
/* 80156094 00152FF4  38 60 00 00 */	li r3, 0
/* 80156098 00152FF8  38 80 00 01 */	li r4, 1
/* 8015609C 00152FFC  48 23 3E 59 */	bl __shl2i
/* 801560A0 00153000  38 A0 00 00 */	li r5, 0
/* 801560A4 00153004  38 00 00 03 */	li r0, 3
/* 801560A8 00153008  90 81 00 CC */	stw r4, 0xcc(r1)
/* 801560AC 0015300C  7F E4 FB 78 */	mr r4, r31
/* 801560B0 00153010  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 801560B4 00153014  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801560B8 00153018  90 A1 00 D4 */	stw r5, 0xd4(r1)
/* 801560BC 0015301C  90 A1 00 D0 */	stw r5, 0xd0(r1)
/* 801560C0 00153020  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 801560C4 00153024  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801560C8 00153028  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801560CC 0015302C  A0 B7 00 08 */	lhz r5, 8(r23)
/* 801560D0 00153030  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801560D4 00153034  B0 A1 00 2C */	sth r5, 0x2c(r1)
/* 801560D8 00153038  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801560DC 0015303C  B0 A1 00 28 */	sth r5, 0x28(r1)
/* 801560E0 00153040  B0 01 00 34 */	sth r0, 0x34(r1)
/* 801560E4 00153044  81 9F 00 00 */	lwz r12, 0(r31)
/* 801560E8 00153048  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801560EC 0015304C  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 801560F0 00153050  7D 89 03 A6 */	mtctr r12
/* 801560F4 00153054  4E 80 04 21 */	bctrl
/* 801560F8 00153058  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801560FC 0015305C  7F C3 F3 78 */	mr r3, r30
/* 80156100 00153060  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 80156104 00153064  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80156108 00153068  38 81 00 34 */	addi r4, r1, 0x34
/* 8015610C 0015306C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80156110 00153070  38 E1 00 E0 */	addi r7, r1, 0xe0
/* 80156114 00153074  39 01 00 C8 */	addi r8, r1, 0xc8
/* 80156118 00153078  4B EF 3F 89 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8015611C 0015307C  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 80156120 00153080  D0 1F 04 20 */	stfs f0, 0x420(r31)
/* 80156124 00153084  48 00 00 A0 */	b lbl_801561C4
lbl_80156128:
/* 80156128 00153088  A0 1F 05 90 */	lhz r0, 0x590(r31)
/* 8015612C 0015308C  7F C3 F3 78 */	mr r3, r30
/* 80156130 00153090  38 81 00 1C */	addi r4, r1, 0x1c
/* 80156134 00153094  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80156138 00153098  4B EF 61 35 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8015613C 0015309C  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 80156140 001530A0  7F C4 F3 78 */	mr r4, r30
/* 80156144 001530A4  48 05 12 81 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 80156148 001530A8  48 00 00 7C */	b lbl_801561C4
lbl_8015614C:
/* 8015614C 001530AC  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 80156150 001530B0  28 04 00 00 */	cmplwi r4, 0
/* 80156154 001530B4  41 82 00 70 */	beq lbl_801561C4
/* 80156158 001530B8  88 04 02 98 */	lbz r0, 0x298(r4)
/* 8015615C 001530BC  38 60 00 01 */	li r3, 1
/* 80156160 001530C0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80156164 001530C4  98 04 02 98 */	stb r0, 0x298(r4)
/* 80156168 001530C8  48 00 00 5C */	b lbl_801561C4
lbl_8015616C:
/* 8015616C 001530CC  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80156170 001530D0  2C 00 00 00 */	cmpwi r0, 0
/* 80156174 001530D4  41 82 00 50 */	beq lbl_801561C4
/* 80156178 001530D8  2C 00 00 05 */	cmpwi r0, 5
/* 8015617C 001530DC  41 82 00 48 */	beq lbl_801561C4
/* 80156180 001530E0  2C 00 00 06 */	cmpwi r0, 6
/* 80156184 001530E4  41 82 00 40 */	beq lbl_801561C4
/* 80156188 001530E8  2C 00 00 04 */	cmpwi r0, 4
/* 8015618C 001530EC  41 82 00 38 */	beq lbl_801561C4
/* 80156190 001530F0  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 80156194 001530F4  38 60 00 01 */	li r3, 1
/* 80156198 001530F8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8015619C 001530FC  98 1F 04 00 */	stb r0, 0x400(r31)
/* 801561A0 00153100  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 801561A4 00153104  D0 1F 04 28 */	stfs f0, 0x428(r31)
/* 801561A8 00153108  48 00 00 1C */	b lbl_801561C4
lbl_801561AC:
/* 801561AC 0015310C  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 801561B0 00153110  28 03 00 00 */	cmplwi r3, 0
/* 801561B4 00153114  41 82 00 10 */	beq lbl_801561C4
/* 801561B8 00153118  7F C4 F3 78 */	mr r4, r30
/* 801561BC 0015311C  38 A0 00 00 */	li r5, 0
/* 801561C0 00153120  48 05 0D 01 */	bl SetMovable__22CCollisionActorManagerFb
lbl_801561C4:
/* 801561C4 00153124  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801561C8 00153128  7F E3 FB 78 */	mr r3, r31
/* 801561CC 0015312C  7F 84 E3 78 */	mr r4, r28
/* 801561D0 00153130  7F C6 F3 78 */	mr r6, r30
/* 801561D4 00153134  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801561D8 00153138  38 A1 00 18 */	addi r5, r1, 0x18
/* 801561DC 0015313C  4B F2 69 9D */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801561E0 00153140  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 801561E4 00153144  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 801561E8 00153148  7C 1B 28 40 */	cmplw r27, r5
/* 801561EC 0015314C  41 82 00 18 */	beq lbl_80156204
/* 801561F0 00153150  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 801561F4 00153154  28 03 00 00 */	cmplwi r3, 0
/* 801561F8 00153158  41 82 00 0C */	beq lbl_80156204
/* 801561FC 0015315C  7F C4 F3 78 */	mr r4, r30
/* 80156200 00153160  48 05 10 F9 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
lbl_80156204:
/* 80156204 00153164  E3 E1 02 58 */	psq_l f31, 600(r1), 0, qr0
/* 80156208 00153168  CB E1 02 50 */	lfd f31, 0x250(r1)
/* 8015620C 0015316C  E3 C1 02 48 */	psq_l f30, 584(r1), 0, qr0
/* 80156210 00153170  CB C1 02 40 */	lfd f30, 0x240(r1)
/* 80156214 00153174  E3 A1 02 38 */	psq_l f29, 568(r1), 0, qr0
/* 80156218 00153178  CB A1 02 30 */	lfd f29, 0x230(r1)
/* 8015621C 0015317C  BA E1 02 0C */	lmw r23, 0x20c(r1)
/* 80156220 00153180  80 01 02 64 */	lwz r0, 0x264(r1)
/* 80156224 00153184  7C 08 03 A6 */	mtlr r0
/* 80156228 00153188  38 21 02 60 */	addi r1, r1, 0x260
/* 8015622C 0015318C  4E 80 00 20 */	blr

.global sub_80156230
sub_80156230:
/* 80156230 00153190  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80156234 00153194  7C 08 02 A6 */	mflr r0
/* 80156238 00153198  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015623C 0015319C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80156240 001531A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80156244 001531A4  7C 9E 23 78 */	mr r30, r4
/* 80156248 001531A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8015624C 001531AC  7C 7D 1B 78 */	mr r29, r3
/* 80156250 001531B0  80 03 00 04 */	lwz r0, 4(r3)
/* 80156254 001531B4  80 A3 00 08 */	lwz r5, 8(r3)
/* 80156258 001531B8  7C 00 28 00 */	cmpw r0, r5
/* 8015625C 001531BC  41 80 00 18 */	blt lbl_80156274
/* 80156260 001531C0  2C 05 00 00 */	cmpwi r5, 0
/* 80156264 001531C4  38 80 00 04 */	li r4, 4
/* 80156268 001531C8  41 82 00 08 */	beq lbl_80156270
/* 8015626C 001531CC  54 A4 08 3C */	slwi r4, r5, 1
lbl_80156270:
/* 80156270 001531D0  48 00 05 49 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
lbl_80156274:
/* 80156274 001531D4  80 1D 00 04 */	lwz r0, 4(r29)
/* 80156278 001531D8  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8015627C 001531DC  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80156280 001531E0  7F E3 02 15 */	add. r31, r3, r0
/* 80156284 001531E4  41 82 00 80 */	beq lbl_80156304
/* 80156288 001531E8  80 1E 00 00 */	lwz r0, 0(r30)
/* 8015628C 001531EC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80156290 001531F0  38 9E 00 2C */	addi r4, r30, 0x2c
/* 80156294 001531F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80156298 001531F8  80 1E 00 04 */	lwz r0, 4(r30)
/* 8015629C 001531FC  90 1F 00 04 */	stw r0, 4(r31)
/* 801562A0 00153200  88 1E 00 08 */	lbz r0, 8(r30)
/* 801562A4 00153204  98 1F 00 08 */	stb r0, 8(r31)
/* 801562A8 00153208  88 1E 00 09 */	lbz r0, 9(r30)
/* 801562AC 0015320C  98 1F 00 09 */	stb r0, 9(r31)
/* 801562B0 00153210  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 801562B4 00153214  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 801562B8 00153218  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 801562BC 0015321C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 801562C0 00153220  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 801562C4 00153224  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 801562C8 00153228  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 801562CC 0015322C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 801562D0 00153230  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 801562D4 00153234  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 801562D8 00153238  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 801562DC 0015323C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 801562E0 00153240  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 801562E4 00153244  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 801562E8 00153248  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 801562EC 0015324C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 801562F0 00153250  48 1E 7E 71 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801562F4 00153254  A0 1E 00 3C */	lhz r0, 0x3c(r30)
/* 801562F8 00153258  B0 1F 00 3C */	sth r0, 0x3c(r31)
/* 801562FC 0015325C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80156300 00153260  D0 1F 00 40 */	stfs f0, 0x40(r31)
lbl_80156304:
/* 80156304 00153264  80 7D 00 04 */	lwz r3, 4(r29)
/* 80156308 00153268  38 03 00 01 */	addi r0, r3, 1
/* 8015630C 0015326C  90 1D 00 04 */	stw r0, 4(r29)
/* 80156310 00153270  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80156314 00153274  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80156318 00153278  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8015631C 0015327C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80156320 00153280  7C 08 03 A6 */	mtlr r0
/* 80156324 00153284  38 21 00 20 */	addi r1, r1, 0x20
/* 80156328 00153288  4E 80 00 20 */	blr

.global sub_8015632c
sub_8015632c:
/* 8015632C 0015328C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80156330 00153290  7C 08 02 A6 */	mflr r0
/* 80156334 00153294  90 01 00 34 */	stw r0, 0x34(r1)
/* 80156338 00153298  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8015633C 0015329C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80156340 001532A0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80156344 001532A4  7C 9D 23 78 */	mr r29, r4
/* 80156348 001532A8  93 81 00 20 */	stw r28, 0x20(r1)
/* 8015634C 001532AC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80156350 001532B0  41 82 00 6C */	beq lbl_801563BC
/* 80156354 001532B4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80156358 001532B8  83 DC 00 0C */	lwz r30, 0xc(r28)
/* 8015635C 001532BC  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80156360 001532C0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80156364 001532C4  7F FE 02 14 */	add r31, r30, r0
/* 80156368 001532C8  93 C1 00 14 */	stw r30, 0x14(r1)
/* 8015636C 001532CC  93 E1 00 08 */	stw r31, 8(r1)
/* 80156370 001532D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80156374 001532D4  48 00 00 20 */	b lbl_80156394
lbl_80156378:
/* 80156378 001532D8  28 1E 00 00 */	cmplwi r30, 0
/* 8015637C 001532DC  41 82 00 14 */	beq lbl_80156390
/* 80156380 001532E0  34 1E 00 2C */	addic. r0, r30, 0x2c
/* 80156384 001532E4  41 82 00 0C */	beq lbl_80156390
/* 80156388 001532E8  38 7E 00 2C */	addi r3, r30, 0x2c
/* 8015638C 001532EC  48 1E 77 55 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80156390:
/* 80156390 001532F0  3B DE 00 44 */	addi r30, r30, 0x44
lbl_80156394:
/* 80156394 001532F4  7C 1E F8 40 */	cmplw r30, r31
/* 80156398 001532F8  40 82 FF E0 */	bne lbl_80156378
/* 8015639C 001532FC  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 801563A0 00153300  28 03 00 00 */	cmplwi r3, 0
/* 801563A4 00153304  41 82 00 08 */	beq lbl_801563AC
/* 801563A8 00153308  48 1B F5 89 */	bl Free__7CMemoryFPCv
lbl_801563AC:
/* 801563AC 0015330C  7F A0 07 35 */	extsh. r0, r29
/* 801563B0 00153310  40 81 00 0C */	ble lbl_801563BC
/* 801563B4 00153314  7F 83 E3 78 */	mr r3, r28
/* 801563B8 00153318  48 1B F5 79 */	bl Free__7CMemoryFPCv
lbl_801563BC:
/* 801563BC 0015331C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801563C0 00153320  7F 83 E3 78 */	mr r3, r28
/* 801563C4 00153324  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801563C8 00153328  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801563CC 0015332C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801563D0 00153330  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801563D4 00153334  7C 08 03 A6 */	mtlr r0
/* 801563D8 00153338  38 21 00 30 */	addi r1, r1, 0x30
/* 801563DC 0015333C  4E 80 00 20 */	blr

.global Accept__10CSpankWeedFR8IVisitor
Accept__10CSpankWeedFR8IVisitor:
/* 801563E0 00153340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801563E4 00153344  7C 08 02 A6 */	mflr r0
/* 801563E8 00153348  90 01 00 14 */	stw r0, 0x14(r1)
/* 801563EC 0015334C  7C 60 1B 78 */	mr r0, r3
/* 801563F0 00153350  7C 83 23 78 */	mr r3, r4
/* 801563F4 00153354  81 84 00 00 */	lwz r12, 0(r4)
/* 801563F8 00153358  7C 04 03 78 */	mr r4, r0
/* 801563FC 0015335C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80156400 00153360  7D 89 03 A6 */	mtctr r12
/* 80156404 00153364  4E 80 04 21 */	bctrl
/* 80156408 00153368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015640C 0015336C  7C 08 03 A6 */	mtlr r0
/* 80156410 00153370  38 21 00 10 */	addi r1, r1, 0x10
/* 80156414 00153374  4E 80 00 20 */	blr

.global "__ct__10CSpankWeedF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoffff"
"__ct__10CSpankWeedF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoffff":
/* 80156418 00153378  94 21 FA 10 */	stwu r1, -0x5f0(r1)
/* 8015641C 0015337C  7C 08 02 A6 */	mflr r0
/* 80156420 00153380  90 01 05 F4 */	stw r0, 0x5f4(r1)
/* 80156424 00153384  DB E1 05 E0 */	stfd f31, 0x5e0(r1)
/* 80156428 00153388  F3 E1 05 E8 */	psq_st f31, 1512(r1), 0, qr0
/* 8015642C 0015338C  DB C1 05 D0 */	stfd f30, 0x5d0(r1)
/* 80156430 00153390  F3 C1 05 D8 */	psq_st f30, 1496(r1), 0, qr0
/* 80156434 00153394  DB A1 05 C0 */	stfd f29, 0x5c0(r1)
/* 80156438 00153398  F3 A1 05 C8 */	psq_st f29, 1480(r1), 0, qr0
/* 8015643C 0015339C  DB 81 05 B0 */	stfd f28, 0x5b0(r1)
/* 80156440 001533A0  F3 81 05 B8 */	psq_st f28, 1464(r1), 0, qr0
/* 80156444 001533A4  BF 61 05 9C */	stmw r27, 0x59c(r1)
/* 80156448 001533A8  A0 04 00 00 */	lhz r0, 0(r4)
/* 8015644C 001533AC  7D 5B 53 78 */	mr r27, r10
/* 80156450 001533B0  7C C4 33 78 */	mr r4, r6
/* 80156454 001533B4  7C FC 3B 78 */	mr r28, r7
/* 80156458 001533B8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8015645C 001533BC  7D 0A 43 78 */	mr r10, r8
/* 80156460 001533C0  7C A6 2B 78 */	mr r6, r5
/* 80156464 001533C4  7C 88 23 78 */	mr r8, r4
/* 80156468 001533C8  93 61 00 08 */	stw r27, 8(r1)
/* 8015646C 001533CC  39 60 00 01 */	li r11, 1
/* 80156470 001533D0  38 00 00 02 */	li r0, 2
/* 80156474 001533D4  FF 80 08 90 */	fmr f28, f1
/* 80156478 001533D8  91 61 00 0C */	stw r11, 0xc(r1)
/* 8015647C 001533DC  FF A0 10 90 */	fmr f29, f2
/* 80156480 001533E0  FF C0 18 90 */	fmr f30, f3
/* 80156484 001533E4  7C 7F 1B 78 */	mr r31, r3
/* 80156488 001533E8  91 61 00 10 */	stw r11, 0x10(r1)
/* 8015648C 001533EC  FF E0 20 90 */	fmr f31, f4
/* 80156490 001533F0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80156494 001533F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156498 001533F8  38 80 00 23 */	li r4, 0x23
/* 8015649C 001533FC  38 E0 00 00 */	li r7, 0
/* 801564A0 00153400  91 21 00 18 */	stw r9, 0x18(r1)
/* 801564A4 00153404  7F 89 E3 78 */	mr r9, r28
/* 801564A8 00153408  91 61 00 1C */	stw r11, 0x1c(r1)
/* 801564AC 0015340C  4B F2 6F A5 */	bl "__ct__10CPatternedFQ210CPatterned10ECharacter9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParameters17EKnockBackVariant"
/* 801564B0 00153410  3C 80 80 3E */	lis r4, lbl_803E2D28@ha
/* 801564B4 00153414  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801564B8 00153418  38 04 2D 28 */	addi r0, r4, lbl_803E2D28@l
/* 801564BC 0015341C  39 00 00 00 */	li r8, 0
/* 801564C0 00153420  90 1F 00 00 */	stw r0, 0(r31)
/* 801564C4 00153424  38 C0 00 01 */	li r6, 1
/* 801564C8 00153428  C0 02 9E 30 */	lfs f0, lbl_805ABB50@sda21(r2)
/* 801564CC 0015342C  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 801564D0 00153430  D3 9F 05 68 */	stfs f28, 0x568(r31)
/* 801564D4 00153434  38 00 FF FF */	li r0, -1
/* 801564D8 00153438  7F E3 FB 78 */	mr r3, r31
/* 801564DC 0015343C  38 80 00 00 */	li r4, 0
/* 801564E0 00153440  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 801564E4 00153444  D0 3F 05 6C */	stfs f1, 0x56c(r31)
/* 801564E8 00153448  D3 BF 05 70 */	stfs f29, 0x570(r31)
/* 801564EC 0015344C  D3 DF 05 74 */	stfs f30, 0x574(r31)
/* 801564F0 00153450  D3 FF 05 78 */	stfs f31, 0x578(r31)
/* 801564F4 00153454  99 1F 05 7C */	stb r8, 0x57c(r31)
/* 801564F8 00153458  D0 1F 05 80 */	stfs f0, 0x580(r31)
/* 801564FC 0015345C  C0 5C 00 2C */	lfs f2, 0x2c(r28)
/* 80156500 00153460  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80156504 00153464  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80156508 00153468  D0 1F 05 84 */	stfs f0, 0x584(r31)
/* 8015650C 0015346C  D0 3F 05 88 */	stfs f1, 0x588(r31)
/* 80156510 00153470  D0 5F 05 8C */	stfs f2, 0x58c(r31)
/* 80156514 00153474  A0 ED A3 8C */	lhz r7, kInvalidUniqueId@sda21(r13)
/* 80156518 00153478  B0 FF 05 90 */	sth r7, 0x590(r31)
/* 8015651C 0015347C  91 1F 05 94 */	stw r8, 0x594(r31)
/* 80156520 00153480  98 DF 05 98 */	stb r6, 0x598(r31)
/* 80156524 00153484  C0 05 00 00 */	lfs f0, 0(r5)
/* 80156528 00153488  D0 1F 05 9C */	stfs f0, 0x59c(r31)
/* 8015652C 0015348C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80156530 00153490  D0 1F 05 A0 */	stfs f0, 0x5a0(r31)
/* 80156534 00153494  C0 05 00 08 */	lfs f0, 8(r5)
/* 80156538 00153498  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 8015653C 0015349C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80156540 001534A0  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 80156544 001534A4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80156548 001534A8  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 8015654C 001534AC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80156550 001534B0  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80156554 001534B4  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80156558 001534B8  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015655C 001534BC  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80156560 001534C0  4B EF DE 59 */	bl SetCallTouch__6CActorFb
/* 80156564 001534C4  7F E3 FB 78 */	mr r3, r31
/* 80156568 001534C8  38 80 00 00 */	li r4, 0
/* 8015656C 001534CC  4B EF C8 01 */	bl CreateShadow__6CActorFb
/* 80156570 001534D0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80156574 001534D4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80156578 001534D8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8015657C 001534DC  C0 43 00 08 */	lfs f2, 8(r3)
/* 80156580 001534E0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80156584 001534E4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80156588 001534E8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8015658C 001534EC  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80156590 001534F0  40 82 00 0C */	bne lbl_8015659C
/* 80156594 001534F4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80156598 001534F8  41 82 00 58 */	beq lbl_801565F0
lbl_8015659C:
/* 8015659C 001534FC  38 61 00 4C */	addi r3, r1, 0x4c
/* 801565A0 00153500  48 1B E3 19 */	bl Magnitude__9CVector3fCFv
/* 801565A4 00153504  FF E0 08 90 */	fmr f31, f1
/* 801565A8 00153508  C0 22 9E 40 */	lfs f1, lbl_805ABB60@sda21(r2)
/* 801565AC 0015350C  48 1B EF 55 */	bl SqrtF__5CMathFf
/* 801565B0 00153510  EC 9F 08 24 */	fdivs f4, f31, f1
/* 801565B4 00153514  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 801565B8 00153518  3C 80 80 3D */	lis r4, lbl_803D0230@ha
/* 801565BC 0015351C  38 61 01 90 */	addi r3, r1, 0x190
/* 801565C0 00153520  38 84 02 30 */	addi r4, r4, lbl_803D0230@l
/* 801565C4 00153524  38 84 00 77 */	addi r4, r4, 0x77
/* 801565C8 00153528  D0 85 00 00 */	stfs f4, 0(r5)
/* 801565CC 0015352C  FC A0 20 90 */	fmr f5, f4
/* 801565D0 00153530  FC C0 20 90 */	fmr f6, f4
/* 801565D4 00153534  D0 85 00 04 */	stfs f4, 4(r5)
/* 801565D8 00153538  D0 85 00 08 */	stfs f4, 8(r5)
/* 801565DC 0015353C  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 801565E0 00153540  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 801565E4 00153544  C0 61 00 54 */	lfs f3, 0x54(r1)
/* 801565E8 00153548  4C C6 32 42 */	crset 6
/* 801565EC 0015354C  48 23 76 F1 */	bl sprintf
lbl_801565F0:
/* 801565F0 00153550  7F E3 FB 78 */	mr r3, r31
/* 801565F4 00153554  4B EF D2 C9 */	bl GetMaterialFilter__6CActorCFv
/* 801565F8 00153558  80 AD 8C 7C */	lwz r5, lbl_805A783C@sda21(r13)
/* 801565FC 0015355C  38 80 00 01 */	li r4, 1
/* 80156600 00153560  83 C3 00 08 */	lwz r30, 8(r3)
/* 80156604 00153564  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 80156608 00153568  38 60 00 00 */	li r3, 0
/* 8015660C 0015356C  48 23 38 E9 */	bl __shl2i
/* 80156610 00153570  80 AD 8C 80 */	lwz r5, lbl_805A7840@sda21(r13)
/* 80156614 00153574  7C 9B 23 78 */	mr r27, r4
/* 80156618 00153578  7C 7C 1B 78 */	mr r28, r3
/* 8015661C 0015357C  38 60 00 00 */	li r3, 0
/* 80156620 00153580  38 80 00 01 */	li r4, 1
/* 80156624 00153584  48 23 38 D1 */	bl __shl2i
/* 80156628 00153588  7F 9C 1B 78 */	or r28, r28, r3
/* 8015662C 0015358C  7F 7B 23 78 */	or r27, r27, r4
/* 80156630 00153590  7F E3 FB 78 */	mr r3, r31
/* 80156634 00153594  7F BD DB 78 */	or r29, r29, r27
/* 80156638 00153598  7F DE E3 78 */	or r30, r30, r28
/* 8015663C 0015359C  4B EF D2 81 */	bl GetMaterialFilter__6CActorCFv
/* 80156640 001535A0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80156644 001535A4  38 00 00 03 */	li r0, 3
/* 80156648 001535A8  80 C3 00 04 */	lwz r6, 4(r3)
/* 8015664C 001535AC  7F E3 FB 78 */	mr r3, r31
/* 80156650 001535B0  38 81 00 58 */	addi r4, r1, 0x58
/* 80156654 001535B4  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 80156658 001535B8  90 A1 00 58 */	stw r5, 0x58(r1)
/* 8015665C 001535BC  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80156660 001535C0  93 C1 00 60 */	stw r30, 0x60(r1)
/* 80156664 001535C4  90 01 00 68 */	stw r0, 0x68(r1)
/* 80156668 001535C8  4B EF D2 39 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8015666C 001535CC  3C 80 80 3D */	lis r4, lbl_803D0230@ha
/* 80156670 001535D0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80156674 001535D4  38 84 02 30 */	addi r4, r4, lbl_803D0230@l
/* 80156678 001535D8  38 84 00 59 */	addi r4, r4, 0x59
/* 8015667C 001535DC  4B EA E6 3D */	bl string_l__4rstlFPCc
/* 80156680 001535E0  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 80156684 001535E4  38 61 00 24 */	addi r3, r1, 0x24
/* 80156688 001535E8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8015668C 001535EC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80156690 001535F0  4B ED 81 A9 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80156694 001535F4  88 01 00 24 */	lbz r0, 0x24(r1)
/* 80156698 001535F8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015669C 001535FC  98 01 00 28 */	stb r0, 0x28(r1)
/* 801566A0 00153600  48 1E 74 41 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801566A4 00153604  88 01 00 28 */	lbz r0, 0x28(r1)
/* 801566A8 00153608  28 00 00 FF */	cmplwi r0, 0xff
/* 801566AC 0015360C  41 82 00 C8 */	beq lbl_80156774
/* 801566B0 00153610  98 01 00 20 */	stb r0, 0x20(r1)
/* 801566B4 00153614  38 61 01 00 */	addi r3, r1, 0x100
/* 801566B8 00153618  38 A1 00 20 */	addi r5, r1, 0x20
/* 801566BC 0015361C  38 C0 00 00 */	li r6, 0
/* 801566C0 00153620  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 801566C4 00153624  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801566C8 00153628  4B ED 5B AD */	bl GetLocatorTransform__9CAnimDataCF6CSegIdPC13CCharAnimTime
/* 801566CC 0015362C  38 61 01 60 */	addi r3, r1, 0x160
/* 801566D0 00153630  38 81 01 00 */	addi r4, r1, 0x100
/* 801566D4 00153634  48 1B C4 A1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801566D8 00153638  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 801566DC 0015363C  38 61 00 70 */	addi r3, r1, 0x70
/* 801566E0 00153640  38 81 00 30 */	addi r4, r1, 0x30
/* 801566E4 00153644  C0 05 00 00 */	lfs f0, 0(r5)
/* 801566E8 00153648  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801566EC 0015364C  C0 05 00 04 */	lfs f0, 4(r5)
/* 801566F0 00153650  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801566F4 00153654  C0 05 00 08 */	lfs f0, 8(r5)
/* 801566F8 00153658  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801566FC 0015365C  48 1B CA C9 */	bl Scale__12CTransform4fFRC9CVector3f
/* 80156700 00153660  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80156704 00153664  38 81 00 70 */	addi r4, r1, 0x70
/* 80156708 00153668  38 A1 01 60 */	addi r5, r1, 0x160
/* 8015670C 0015366C  48 1B C2 45 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80156710 00153670  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80156714 00153674  38 9F 00 34 */	addi r4, r31, 0x34
/* 80156718 00153678  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 8015671C 0015367C  48 1B C2 35 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80156720 00153680  38 61 01 30 */	addi r3, r1, 0x130
/* 80156724 00153684  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80156728 00153688  48 1B C4 4D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8015672C 0015368C  C0 41 01 5C */	lfs f2, 0x15c(r1)
/* 80156730 00153690  C0 21 01 4C */	lfs f1, 0x14c(r1)
/* 80156734 00153694  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 80156738 00153698  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 8015673C 0015369C  D0 3F 05 AC */	stfs f1, 0x5ac(r31)
/* 80156740 001536A0  D0 5F 05 B0 */	stfs f2, 0x5b0(r31)
/* 80156744 001536A4  C0 21 01 3C */	lfs f1, 0x13c(r1)
/* 80156748 001536A8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8015674C 001536AC  C0 61 01 4C */	lfs f3, 0x14c(r1)
/* 80156750 001536B0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80156754 001536B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80156758 001536B8  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8015675C 001536BC  C0 21 01 5C */	lfs f1, 0x15c(r1)
/* 80156760 001536C0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80156764 001536C4  D0 1F 05 9C */	stfs f0, 0x59c(r31)
/* 80156768 001536C8  EC 01 20 28 */	fsubs f0, f1, f4
/* 8015676C 001536CC  D0 5F 05 A0 */	stfs f2, 0x5a0(r31)
/* 80156770 001536D0  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
lbl_80156774:
/* 80156774 001536D4  38 7F 04 60 */	addi r3, r31, 0x460
/* 80156778 001536D8  38 80 00 00 */	li r4, 0
/* 8015677C 001536DC  48 0D D5 E9 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 80156780 001536E0  7F E3 FB 78 */	mr r3, r31
/* 80156784 001536E4  E3 E1 05 E8 */	psq_l f31, 1512(r1), 0, qr0
/* 80156788 001536E8  CB E1 05 E0 */	lfd f31, 0x5e0(r1)
/* 8015678C 001536EC  E3 C1 05 D8 */	psq_l f30, 1496(r1), 0, qr0
/* 80156790 001536F0  CB C1 05 D0 */	lfd f30, 0x5d0(r1)
/* 80156794 001536F4  E3 A1 05 C8 */	psq_l f29, 1480(r1), 0, qr0
/* 80156798 001536F8  CB A1 05 C0 */	lfd f29, 0x5c0(r1)
/* 8015679C 001536FC  E3 81 05 B8 */	psq_l f28, 1464(r1), 0, qr0
/* 801567A0 00153700  CB 81 05 B0 */	lfd f28, 0x5b0(r1)
/* 801567A4 00153704  BB 61 05 9C */	lmw r27, 0x59c(r1)
/* 801567A8 00153708  80 01 05 F4 */	lwz r0, 0x5f4(r1)
/* 801567AC 0015370C  7C 08 03 A6 */	mtlr r0
/* 801567B0 00153710  38 21 05 F0 */	addi r1, r1, 0x5f0
/* 801567B4 00153714  4E 80 00 20 */	blr

.global "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi":
/* 801567B8 00153718  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801567BC 0015371C  7C 08 02 A6 */	mflr r0
/* 801567C0 00153720  90 01 00 34 */	stw r0, 0x34(r1)
/* 801567C4 00153724  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801567C8 00153728  7C 9F 23 78 */	mr r31, r4
/* 801567CC 0015372C  7C 7E 1B 78 */	mr r30, r3
/* 801567D0 00153730  80 03 00 08 */	lwz r0, 8(r3)
/* 801567D4 00153734  7C 1F 00 00 */	cmpw r31, r0
/* 801567D8 00153738  40 81 00 B4 */	ble lbl_8015688C
/* 801567DC 0015373C  1C 7F 00 44 */	mulli r3, r31, 0x44
/* 801567E0 00153740  2C 03 00 00 */	cmpwi r3, 0
/* 801567E4 00153744  40 82 00 0C */	bne lbl_801567F0
/* 801567E8 00153748  3B A0 00 00 */	li r29, 0
/* 801567EC 0015374C  48 00 00 1C */	b lbl_80156808
lbl_801567F0:
/* 801567F0 00153750  3C 80 80 3D */	lis r4, lbl_803D0230@ha
/* 801567F4 00153754  38 A0 00 00 */	li r5, 0
/* 801567F8 00153758  38 84 02 30 */	addi r4, r4, lbl_803D0230@l
/* 801567FC 0015375C  38 84 00 70 */	addi r4, r4, 0x70
/* 80156800 00153760  48 1B F0 19 */	bl __nwa__FUlPCcPCc
/* 80156804 00153764  7C 7D 1B 78 */	mr r29, r3
lbl_80156808:
/* 80156808 00153768  80 1E 00 04 */	lwz r0, 4(r30)
/* 8015680C 0015376C  7F A5 EB 78 */	mr r5, r29
/* 80156810 00153770  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 80156814 00153774  38 61 00 14 */	addi r3, r1, 0x14
/* 80156818 00153778  1C 00 00 44 */	mulli r0, r0, 0x44
/* 8015681C 0015377C  38 81 00 0C */	addi r4, r1, 0xc
/* 80156820 00153780  7C C6 02 14 */	add r6, r6, r0
/* 80156824 00153784  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80156828 00153788  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8015682C 0015378C  90 C1 00 08 */	stw r6, 8(r1)
/* 80156830 00153790  90 01 00 10 */	stw r0, 0x10(r1)
/* 80156834 00153794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156838 00153798  48 00 00 69 */	bl sub_801568a0
/* 8015683C 0015379C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80156840 001537A0  83 7E 00 0C */	lwz r27, 0xc(r30)
/* 80156844 001537A4  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80156848 001537A8  7F 9B 02 14 */	add r28, r27, r0
/* 8015684C 001537AC  48 00 00 20 */	b lbl_8015686C
lbl_80156850:
/* 80156850 001537B0  28 1B 00 00 */	cmplwi r27, 0
/* 80156854 001537B4  41 82 00 14 */	beq lbl_80156868
/* 80156858 001537B8  34 1B 00 2C */	addic. r0, r27, 0x2c
/* 8015685C 001537BC  41 82 00 0C */	beq lbl_80156868
/* 80156860 001537C0  38 7B 00 2C */	addi r3, r27, 0x2c
/* 80156864 001537C4  48 1E 72 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80156868:
/* 80156868 001537C8  3B 7B 00 44 */	addi r27, r27, 0x44
lbl_8015686C:
/* 8015686C 001537CC  7C 1B E0 40 */	cmplw r27, r28
/* 80156870 001537D0  40 82 FF E0 */	bne lbl_80156850
/* 80156874 001537D4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80156878 001537D8  28 03 00 00 */	cmplwi r3, 0
/* 8015687C 001537DC  41 82 00 08 */	beq lbl_80156884
/* 80156880 001537E0  48 1B F0 B1 */	bl Free__7CMemoryFPCv
lbl_80156884:
/* 80156884 001537E4  93 BE 00 0C */	stw r29, 0xc(r30)
/* 80156888 001537E8  93 FE 00 08 */	stw r31, 8(r30)
lbl_8015688C:
/* 8015688C 001537EC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80156890 001537F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80156894 001537F4  7C 08 03 A6 */	mtlr r0
/* 80156898 001537F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8015689C 001537FC  4E 80 00 20 */	blr

.global sub_801568a0
sub_801568a0:
/* 801568A0 00153800  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801568A4 00153804  7C 08 02 A6 */	mflr r0
/* 801568A8 00153808  90 01 00 24 */	stw r0, 0x24(r1)
/* 801568AC 0015380C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801568B0 00153810  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801568B4 00153814  7C BE 2B 78 */	mr r30, r5
/* 801568B8 00153818  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801568BC 0015381C  7C 9D 23 78 */	mr r29, r4
/* 801568C0 00153820  83 E3 00 00 */	lwz r31, 0(r3)
/* 801568C4 00153824  48 00 00 90 */	b lbl_80156954
lbl_801568C8:
/* 801568C8 00153828  28 1E 00 00 */	cmplwi r30, 0
/* 801568CC 0015382C  41 82 00 80 */	beq lbl_8015694C
/* 801568D0 00153830  80 1F 00 00 */	lwz r0, 0(r31)
/* 801568D4 00153834  38 7E 00 2C */	addi r3, r30, 0x2c
/* 801568D8 00153838  38 9F 00 2C */	addi r4, r31, 0x2c
/* 801568DC 0015383C  90 1E 00 00 */	stw r0, 0(r30)
/* 801568E0 00153840  80 1F 00 04 */	lwz r0, 4(r31)
/* 801568E4 00153844  90 1E 00 04 */	stw r0, 4(r30)
/* 801568E8 00153848  88 1F 00 08 */	lbz r0, 8(r31)
/* 801568EC 0015384C  98 1E 00 08 */	stb r0, 8(r30)
/* 801568F0 00153850  88 1F 00 09 */	lbz r0, 9(r31)
/* 801568F4 00153854  98 1E 00 09 */	stb r0, 9(r30)
/* 801568F8 00153858  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 801568FC 0015385C  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 80156900 00153860  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80156904 00153864  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80156908 00153868  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8015690C 0015386C  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80156910 00153870  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80156914 00153874  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80156918 00153878  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8015691C 0015387C  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80156920 00153880  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80156924 00153884  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80156928 00153888  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8015692C 0015388C  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80156930 00153890  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80156934 00153894  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80156938 00153898  48 1E 78 29 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8015693C 0015389C  A0 1F 00 3C */	lhz r0, 0x3c(r31)
/* 80156940 001538A0  B0 1E 00 3C */	sth r0, 0x3c(r30)
/* 80156944 001538A4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80156948 001538A8  D0 1E 00 40 */	stfs f0, 0x40(r30)
lbl_8015694C:
/* 8015694C 001538AC  3B DE 00 44 */	addi r30, r30, 0x44
/* 80156950 001538B0  3B FF 00 44 */	addi r31, r31, 0x44
lbl_80156954:
/* 80156954 001538B4  80 1D 00 00 */	lwz r0, 0(r29)
/* 80156958 001538B8  7C 1F 00 40 */	cmplw r31, r0
/* 8015695C 001538BC  40 82 FF 6C */	bne lbl_801568C8
/* 80156960 001538C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80156964 001538C4  7F C3 F3 78 */	mr r3, r30
/* 80156968 001538C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015696C 001538CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80156970 001538D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80156974 001538D4  7C 08 03 A6 */	mtlr r0
/* 80156978 001538D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8015697C 001538DC  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABB48
lbl_805ABB48:
	# ROM: 0x3F83E8
	.float 1.0

.global lbl_805ABB4C
lbl_805ABB4C:
	# ROM: 0x3F83EC
	.float 1.0

.global lbl_805ABB50
lbl_805ABB50:
	# ROM: 0x3F83F0
	.4byte 0

.global lbl_805ABB54
lbl_805ABB54:
	# ROM: 0x3F83F4
	.float 1000000.0

.global lbl_805ABB58
lbl_805ABB58:
	# ROM: 0x3F83F8
	.float 0.5

.global lbl_805ABB5C
lbl_805ABB5C:
	# ROM: 0x3F83FC
	.float 0.001

.global lbl_805ABB60
lbl_805ABB60:
	# ROM: 0x3F8400
	.4byte 0x40400000
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D01F8
lbl_803D01F8:

	# ROM: 0x3CD1F8
	.4byte lbl_803D023C
	.4byte 0x3FC00000
	.4byte lbl_803D0248
	.4byte 0x3F800000
	.4byte lbl_803D024E
	.4byte 0x3F800000
	.4byte lbl_803D0254
	.4byte 0x3F800000
	.4byte lbl_803D025A
	.4byte 0x3F800000
	.4byte lbl_803D0267
	.4byte 0x3F800000
	.4byte lbl_803D027D
	.4byte 0x3FC00000

.global lbl_803D0230
lbl_803D0230:

	# ROM: 0x3CD230
	.asciz "Arm_2"
	.byte 0x41, 0x72
	.4byte 0x6D5F3300

.global lbl_803D023C
lbl_803D023C:

	# ROM: 0x3CD23C
	.asciz "Arm_4"
	.byte 0x41, 0x72
	.4byte 0x6D5F3500

.global lbl_803D0248
lbl_803D0248:

	# ROM: 0x3CD248
	.asciz "Arm_6"

.global lbl_803D024E
lbl_803D024E:

	# ROM: 0x3CD24E
	.byte 0x41, 0x72
	.4byte 0x6D5F3700

.global lbl_803D0254
lbl_803D0254:

	# ROM: 0x3CD254
	.asciz "Arm_8"

.global lbl_803D025A
lbl_803D025A:

	# ROM: 0x3CD25A
	.byte 0x41, 0x72
	.4byte 0x6D5F3900
	.asciz "Arm_10"

.global lbl_803D0267
lbl_803D0267:

	# ROM: 0x3CD267
	.byte 0x41
	.asciz "rm_11"
	.byte 0x41, 0x72
	.asciz "m_12"
	.byte 0x41, 0x72, 0x6D
	.asciz "_end"

.global lbl_803D027D
lbl_803D027D:

	# ROM: 0x3CD27D
	.byte 0x73, 0x77, 0x6F
	.asciz "osh_LCTR"
	.byte 0x6C, 0x6F, 0x63
	.asciz "kon_target_LCTR"
	.4byte 0x45796500
	.asciz "??(??)"
	.byte 0x57
	.asciz "ARNING: Non-uniform scale (%.2f, %.2f, %.2f) applied to Spank Weed...changing scale to (%.2f, %.2f, %.2f)\n"
	.byte 0x53
	.asciz "pank Weed Collision "
	.balign 4
	.4byte 0

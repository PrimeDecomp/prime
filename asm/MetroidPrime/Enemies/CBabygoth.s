.include "macros.inc"

.comm lbl_80572128, 0xC, 4

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CBabygoth_cpp

.section .data
.balign 8


.global lbl_803E7350
lbl_803E7350:
	# ROM: 0x3E4350
	.4byte 0
	.4byte 0
	.4byte __dt__9CBabygothFv
	.4byte Accept__9CBabygothFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__9CBabygothFfR13CStateManager
	.4byte AcceptScriptMsg__9CBabygothF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__9CBabygothFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__9CBabygothCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__9CBabygothCFv
	.4byte GetDamageVulnerability__9CBabygothCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__9CBabygothCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__9CBabygothCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__9CBabygothFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__9CBabygothCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
	.4byte KnockBack__9CBabygothFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__9CBabygothFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__9CBabygothCFv
	.4byte Listen__9CBabygothFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__9CBabygothCFv
	.4byte Patrol__9CBabygothFR13CStateManager9EStateMsgf
	.4byte FollowPattern__9CBabygothFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__9CBabygothFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__9CBabygothFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__9CBabygothFR13CStateManager9EStateMsgf
	.4byte Deactivate__9CBabygothFR13CStateManager9EStateMsgf
	.4byte Attack__9CBabygothFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__9CBabygothFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__9CBabygothFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__9CBabygothFR13CStateManager9EStateMsgf
	.4byte Taunt__9CBabygothFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__9CBabygothFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__3CAiFR13CStateManager9EStateMsgf
	.4byte Approach__9CBabygothFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__9CBabygothFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__9CBabygothFR13CStateManager9EStateMsgf
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
	.4byte Leash__9CBabygothFR13CStateManagerf
	.4byte OffLine__9CBabygothFR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__9CBabygothFR13CStateManagerf
	.4byte InRange__10CPatternedFR13CStateManagerf
	.4byte InMaxRange__9CBabygothFR13CStateManagerf
	.4byte InDetectionRange__9CBabygothFR13CStateManagerf
	.4byte SpotPlayer__9CBabygothFR13CStateManagerf
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
	.4byte sub_80221714
	.4byte ShouldAttack__9CBabygothFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__9CBabygothFR13CStateManagerf
	.4byte ShouldTurn__9CBabygothFR13CStateManagerf
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
	.4byte LineOfSight__9CBabygothFR13CStateManagerf
	.4byte AggressionCheck__9CBabygothFR13CStateManagerf
	.4byte AttackOver__3CAiFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__9CBabygothFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__3CAiFR13CStateManagerf
	.4byte ShotAt__9CBabygothFR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__3CAiFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__3CAiFR13CStateManagerf
	.4byte StartAttack__3CAiFR13CStateManagerf
	.4byte BreakAttack__3CAiFR13CStateManagerf
	.4byte ShouldStrafe__3CAiFR13CStateManagerf
	.4byte ShouldSpecialAttack__9CBabygothFR13CStateManagerf
	.4byte LostInterest__9CBabygothFR13CStateManagerf
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
	.4byte Shock__9CBabygothFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte sub_8021d43c
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__9CBabygothCFv
	.4byte ProjectileInfo__9CBabygothFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E761C
lbl_803E761C:
	# ROM: 0x3E461C
	.4byte lbl_802224E8
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222788
	.4byte lbl_802227C4
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222774
	.4byte lbl_802227FC
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_80222830
	.4byte lbl_8022277C

.global lbl_803E767C
lbl_803E767C:
	# ROM: 0x3E467C
	.4byte lbl_80223280
	.4byte lbl_80222D9C
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80222DB0
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80222ED0
	.4byte lbl_80223280
	.4byte lbl_80222E8C
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80222E28
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80222F48
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80222CC4
	.4byte lbl_80222DE0
	.4byte lbl_80222EE4
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80222FE8
	.4byte lbl_802231D4
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223280
	.4byte lbl_80223268

.section .sdata
.balign 8

.global lbl_805A80D8
lbl_805A80D8:
	# ROM: 0x3F5A78
	.4byte 0x00000013

.global lbl_805A80DC
lbl_805A80DC:
	# ROM: 0x3F5A7C
	.4byte 0x00000013

.global lbl_805A80E0
lbl_805A80E0:
	# ROM: 0x3F5A80
	.4byte 0x0000002F

.global lbl_805A80E4
lbl_805A80E4:
	# ROM: 0x3F5A84
	.4byte 0x0000001C

.global lbl_805A80E8
lbl_805A80E8:
	# ROM: 0x3F5A88
	.4byte 0x00000020

.global lbl_805A80EC
lbl_805A80EC:
	# ROM: 0x3F5A8C
	.4byte 0x00000035

.global lbl_805A80F0
lbl_805A80F0:
	# ROM: 0x3F5A90
	.4byte 0x00000015
	.4byte 0

.section .text, "ax"

.global sub_8021d43c
sub_8021d43c:
/* 8021D43C 0021A39C  80 03 08 B4 */	lwz r0, 0x8b4(r3)
/* 8021D440 0021A3A0  2C 00 00 00 */	cmpwi r0, 0
/* 8021D444 0021A3A4  40 82 00 0C */	bne lbl_8021D450
/* 8021D448 0021A3A8  38 63 06 EC */	addi r3, r3, 0x6ec
/* 8021D44C 0021A3AC  4E 80 00 20 */	blr
lbl_8021D450:
/* 8021D450 0021A3B0  38 63 07 D0 */	addi r3, r3, 0x7d0
/* 8021D454 0021A3B4  4E 80 00 20 */	blr

.global IsListening__9CBabygothCFv
IsListening__9CBabygothCFv:
/* 8021D458 0021A3B8  38 60 00 01 */	li r3, 1
/* 8021D45C 0021A3BC  4E 80 00 20 */	blr

.global GetCollisionPrimitive__9CBabygothCFv
GetCollisionPrimitive__9CBabygothCFv:
/* 8021D460 0021A3C0  38 63 09 30 */	addi r3, r3, 0x930
/* 8021D464 0021A3C4  4E 80 00 20 */	blr

.global GetGravityConstant__9CBabygothCFv
GetGravityConstant__9CBabygothCFv:
/* 8021D468 0021A3C8  C0 22 B4 00 */	lfs f1, lbl_805AD120@sda21(r2)
/* 8021D46C 0021A3CC  C0 02 96 A0 */	lfs f0, skGravityConstant__13CPhysicsActor@sda21(r2)
/* 8021D470 0021A3D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8021D474 0021A3D4  4E 80 00 20 */	blr

.global sub_8021d478
sub_8021d478:
/* 8021D478 0021A3D8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8021D47C 0021A3DC  7C 08 02 A6 */	mflr r0
/* 8021D480 0021A3E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8021D484 0021A3E4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8021D488 0021A3E8  7C 7F 1B 78 */	mr r31, r3
/* 8021D48C 0021A3EC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8021D490 0021A3F0  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8021D494 0021A3F4  7C BD 2B 78 */	mr r29, r5
/* 8021D498 0021A3F8  93 81 00 60 */	stw r28, 0x60(r1)
/* 8021D49C 0021A3FC  7C 9C 23 78 */	mr r28, r4
/* 8021D4A0 0021A400  7F 83 E3 78 */	mr r3, r28
/* 8021D4A4 0021A404  38 81 00 18 */	addi r4, r1, 0x18
/* 8021D4A8 0021A408  A0 05 00 00 */	lhz r0, 0(r5)
/* 8021D4AC 0021A40C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8021D4B0 0021A410  4B E2 F0 F5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8021D4B4 0021A414  7C 64 1B 78 */	mr r4, r3
/* 8021D4B8 0021A418  38 61 00 1C */	addi r3, r1, 0x1c
/* 8021D4BC 0021A41C  4B E8 83 DD */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 8021D4C0 0021A420  83 C3 00 04 */	lwz r30, 4(r3)
/* 8021D4C4 0021A424  28 1E 00 00 */	cmplwi r30, 0
/* 8021D4C8 0021A428  41 82 00 BC */	beq lbl_8021D584
/* 8021D4CC 0021A42C  80 1F 09 F8 */	lwz r0, 0x9f8(r31)
/* 8021D4D0 0021A430  2C 00 00 00 */	cmpwi r0, 0
/* 8021D4D4 0021A434  41 82 00 B0 */	beq lbl_8021D584
/* 8021D4D8 0021A438  80 1E 01 2C */	lwz r0, 0x12c(r30)
/* 8021D4DC 0021A43C  38 60 00 00 */	li r3, 0
/* 8021D4E0 0021A440  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021D4E4 0021A444  38 80 00 01 */	li r4, 1
/* 8021D4E8 0021A448  90 01 00 40 */	stw r0, 0x40(r1)
/* 8021D4EC 0021A44C  80 AD 95 18 */	lwz r5, lbl_805A80D8@sda21(r13)
/* 8021D4F0 0021A450  88 1E 01 30 */	lbz r0, 0x130(r30)
/* 8021D4F4 0021A454  98 01 00 44 */	stb r0, 0x44(r1)
/* 8021D4F8 0021A458  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 8021D4FC 0021A45C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8021D500 0021A460  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 8021D504 0021A464  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8021D508 0021A468  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 8021D50C 0021A46C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8021D510 0021A470  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 8021D514 0021A474  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8021D518 0021A478  88 1E 01 44 */	lbz r0, 0x144(r30)
/* 8021D51C 0021A47C  98 01 00 58 */	stb r0, 0x58(r1)
/* 8021D520 0021A480  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8021D524 0021A484  48 16 C9 D1 */	bl __shl2i
/* 8021D528 0021A488  39 00 00 00 */	li r8, 0
/* 8021D52C 0021A48C  39 40 00 03 */	li r10, 3
/* 8021D530 0021A490  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8021D534 0021A494  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8021D538 0021A498  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8021D53C 0021A49C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8021D540 0021A4A0  90 61 00 28 */	stw r3, 0x28(r1)
/* 8021D544 0021A4A4  7F 83 E3 78 */	mr r3, r28
/* 8021D548 0021A4A8  38 81 00 14 */	addi r4, r1, 0x14
/* 8021D54C 0021A4AC  38 A1 00 10 */	addi r5, r1, 0x10
/* 8021D550 0021A4B0  91 01 00 34 */	stw r8, 0x34(r1)
/* 8021D554 0021A4B4  38 C1 00 0C */	addi r6, r1, 0xc
/* 8021D558 0021A4B8  38 E1 00 40 */	addi r7, r1, 0x40
/* 8021D55C 0021A4BC  91 01 00 30 */	stw r8, 0x30(r1)
/* 8021D560 0021A4C0  39 01 00 28 */	addi r8, r1, 0x28
/* 8021D564 0021A4C4  91 41 00 38 */	stw r10, 0x38(r1)
/* 8021D568 0021A4C8  A1 7E 00 EC */	lhz r11, 0xec(r30)
/* 8021D56C 0021A4CC  B1 61 00 0C */	sth r11, 0xc(r1)
/* 8021D570 0021A4D0  A1 5F 09 FC */	lhz r10, 0x9fc(r31)
/* 8021D574 0021A4D4  B1 61 00 08 */	sth r11, 8(r1)
/* 8021D578 0021A4D8  B1 41 00 10 */	sth r10, 0x10(r1)
/* 8021D57C 0021A4DC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8021D580 0021A4E0  4B E2 CB 21 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_8021D584:
/* 8021D584 0021A4E4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8021D588 0021A4E8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8021D58C 0021A4EC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8021D590 0021A4F0  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8021D594 0021A4F4  83 81 00 60 */	lwz r28, 0x60(r1)
/* 8021D598 0021A4F8  7C 08 03 A6 */	mtlr r0
/* 8021D59C 0021A4FC  38 21 00 70 */	addi r1, r1, 0x70
/* 8021D5A0 0021A500  4E 80 00 20 */	blr

.global sub_8021d5a4
sub_8021d5a4:
/* 8021D5A4 0021A504  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021D5A8 0021A508  7C 08 02 A6 */	mflr r0
/* 8021D5AC 0021A50C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021D5B0 0021A510  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021D5B4 0021A514  3B E0 00 00 */	li r31, 0
/* 8021D5B8 0021A518  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8021D5BC 0021A51C  7C 9E 23 78 */	mr r30, r4
/* 8021D5C0 0021A520  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8021D5C4 0021A524  7C 7D 1B 78 */	mr r29, r3
/* 8021D5C8 0021A528  48 00 00 50 */	b lbl_8021D618
lbl_8021D5CC:
/* 8021D5CC 0021A52C  80 7D 09 28 */	lwz r3, 0x928(r29)
/* 8021D5D0 0021A530  7F E4 FB 78 */	mr r4, r31
/* 8021D5D4 0021A534  4B F8 9C 65 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8021D5D8 0021A538  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8021D5DC 0021A53C  7F C3 F3 78 */	mr r3, r30
/* 8021D5E0 0021A540  38 81 00 08 */	addi r4, r1, 8
/* 8021D5E4 0021A544  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021D5E8 0021A548  B0 01 00 08 */	sth r0, 8(r1)
/* 8021D5EC 0021A54C  4B E2 EF 89 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021D5F0 0021A550  7C 64 1B 78 */	mr r4, r3
/* 8021D5F4 0021A554  38 61 00 10 */	addi r3, r1, 0x10
/* 8021D5F8 0021A558  4B E9 1D 55 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021D5FC 0021A55C  80 63 00 04 */	lwz r3, 4(r3)
/* 8021D600 0021A560  28 03 00 00 */	cmplwi r3, 0
/* 8021D604 0021A564  41 82 00 10 */	beq lbl_8021D614
/* 8021D608 0021A568  7F C5 F3 78 */	mr r5, r30
/* 8021D60C 0021A56C  38 80 00 12 */	li r4, 0x12
/* 8021D610 0021A570  4B E3 6D 41 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8021D614:
/* 8021D614 0021A574  3B FF 00 01 */	addi r31, r31, 1
lbl_8021D618:
/* 8021D618 0021A578  80 7D 09 28 */	lwz r3, 0x928(r29)
/* 8021D61C 0021A57C  4B F8 9C 2D */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8021D620 0021A580  7C 1F 18 40 */	cmplw r31, r3
/* 8021D624 0021A584  41 80 FF A8 */	blt lbl_8021D5CC
/* 8021D628 0021A588  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021D62C 0021A58C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8021D630 0021A590  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8021D634 0021A594  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8021D638 0021A598  7C 08 03 A6 */	mtlr r0
/* 8021D63C 0021A59C  38 21 00 30 */	addi r1, r1, 0x30
/* 8021D640 0021A5A0  4E 80 00 20 */	blr

.global sub_8021d644
sub_8021d644:
/* 8021D644 0021A5A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021D648 0021A5A8  7C 08 02 A6 */	mflr r0
/* 8021D64C 0021A5AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021D650 0021A5B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021D654 0021A5B4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8021D658 0021A5B8  7C 7E 1B 78 */	mr r30, r3
/* 8021D65C 0021A5BC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8021D660 0021A5C0  A0 63 06 E8 */	lhz r3, 0x6e8(r3)
/* 8021D664 0021A5C4  7C 03 00 40 */	cmplw r3, r0
/* 8021D668 0021A5C8  41 82 00 68 */	beq lbl_8021D6D0
/* 8021D66C 0021A5CC  A0 1E 06 E8 */	lhz r0, 0x6e8(r30)
/* 8021D670 0021A5D0  7C 83 23 78 */	mr r3, r4
/* 8021D674 0021A5D4  38 81 00 18 */	addi r4, r1, 0x18
/* 8021D678 0021A5D8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8021D67C 0021A5DC  4B E2 EE F9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021D680 0021A5E0  7C 64 1B 78 */	mr r4, r3
/* 8021D684 0021A5E4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8021D688 0021A5E8  4B E8 9E ED */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8021D68C 0021A5EC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8021D690 0021A5F0  28 1F 00 00 */	cmplwi r31, 0
/* 8021D694 0021A5F4  41 82 00 3C */	beq lbl_8021D6D0
/* 8021D698 0021A5F8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8021D69C 0021A5FC  7F E3 FB 78 */	mr r3, r31
/* 8021D6A0 0021A600  38 81 00 14 */	addi r4, r1, 0x14
/* 8021D6A4 0021A604  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8021D6A8 0021A608  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8021D6AC 0021A60C  48 01 B9 45 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8021D6B0 0021A610  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021D6B4 0021A614  41 82 00 1C */	beq lbl_8021D6D0
/* 8021D6B8 0021A618  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8021D6BC 0021A61C  7F E3 FB 78 */	mr r3, r31
/* 8021D6C0 0021A620  38 81 00 0C */	addi r4, r1, 0xc
/* 8021D6C4 0021A624  B0 01 00 08 */	sth r0, 8(r1)
/* 8021D6C8 0021A628  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021D6CC 0021A62C  48 01 BE 29 */	bl RemoveTeamAiRole__10CTeamAiMgrF9TUniqueId
lbl_8021D6D0:
/* 8021D6D0 0021A630  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021D6D4 0021A634  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8021D6D8 0021A638  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8021D6DC 0021A63C  7C 08 03 A6 */	mtlr r0
/* 8021D6E0 0021A640  38 21 00 30 */	addi r1, r1, 0x30
/* 8021D6E4 0021A644  4E 80 00 20 */	blr

.global sub_8021d6e8
sub_8021d6e8:
/* 8021D6E8 0021A648  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021D6EC 0021A64C  7C 08 02 A6 */	mflr r0
/* 8021D6F0 0021A650  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021D6F4 0021A654  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021D6F8 0021A658  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8021D6FC 0021A65C  7C 7E 1B 78 */	mr r30, r3
/* 8021D700 0021A660  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8021D704 0021A664  A0 63 06 E8 */	lhz r3, 0x6e8(r3)
/* 8021D708 0021A668  7C 03 00 40 */	cmplw r3, r0
/* 8021D70C 0021A66C  41 82 00 68 */	beq lbl_8021D774
/* 8021D710 0021A670  A0 1E 06 E8 */	lhz r0, 0x6e8(r30)
/* 8021D714 0021A674  7C 83 23 78 */	mr r3, r4
/* 8021D718 0021A678  38 81 00 10 */	addi r4, r1, 0x10
/* 8021D71C 0021A67C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8021D720 0021A680  4B E2 EE 55 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021D724 0021A684  7C 64 1B 78 */	mr r4, r3
/* 8021D728 0021A688  38 61 00 14 */	addi r3, r1, 0x14
/* 8021D72C 0021A68C  4B E8 9E 49 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8021D730 0021A690  83 E3 00 04 */	lwz r31, 4(r3)
/* 8021D734 0021A694  28 1F 00 00 */	cmplwi r31, 0
/* 8021D738 0021A698  41 82 00 3C */	beq lbl_8021D774
/* 8021D73C 0021A69C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8021D740 0021A6A0  7F E3 FB 78 */	mr r3, r31
/* 8021D744 0021A6A4  38 81 00 0C */	addi r4, r1, 0xc
/* 8021D748 0021A6A8  B0 01 00 08 */	sth r0, 8(r1)
/* 8021D74C 0021A6AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021D750 0021A6B0  48 01 B8 A1 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8021D754 0021A6B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021D758 0021A6B8  40 82 00 1C */	bne lbl_8021D774
/* 8021D75C 0021A6BC  7F E3 FB 78 */	mr r3, r31
/* 8021D760 0021A6C0  7F C4 F3 78 */	mr r4, r30
/* 8021D764 0021A6C4  38 A0 00 01 */	li r5, 1
/* 8021D768 0021A6C8  38 C0 00 02 */	li r6, 2
/* 8021D76C 0021A6CC  38 E0 FF FF */	li r7, -1
/* 8021D770 0021A6D0  48 01 C0 3D */	bl AssignTeamAiRole__10CTeamAiMgrFRC3CAiiii
lbl_8021D774:
/* 8021D774 0021A6D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021D778 0021A6D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8021D77C 0021A6DC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8021D780 0021A6E0  7C 08 03 A6 */	mtlr r0
/* 8021D784 0021A6E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8021D788 0021A6E8  4E 80 00 20 */	blr

.global sub_8021d78c
sub_8021d78c:
/* 8021D78C 0021A6EC  2C 04 00 02 */	cmpwi r4, 2
/* 8021D790 0021A6F0  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 8021D794 0021A6F4  41 82 00 3C */	beq lbl_8021D7D0
/* 8021D798 0021A6F8  40 80 00 14 */	bge lbl_8021D7AC
/* 8021D79C 0021A6FC  2C 04 00 00 */	cmpwi r4, 0
/* 8021D7A0 0021A700  41 82 00 18 */	beq lbl_8021D7B8
/* 8021D7A4 0021A704  40 80 00 1C */	bge lbl_8021D7C0

.global sub_8021d7a8
sub_8021d7a8:
/* 8021D7A8 0021A708  4E 80 00 20 */	blr
lbl_8021D7AC:
/* 8021D7AC 0021A70C  2C 04 00 04 */	cmpwi r4, 4
/* 8021D7B0 0021A710  4C 80 00 20 */	bgelr

.global sub_8021d7b4
sub_8021d7b4:
/* 8021D7B4 0021A714  4E 80 00 20 */	blr
lbl_8021D7B8:
/* 8021D7B8 0021A718  C0 23 06 B0 */	lfs f1, 0x6b0(r3)
/* 8021D7BC 0021A71C  4E 80 00 20 */	blr
lbl_8021D7C0:
/* 8021D7C0 0021A720  C0 22 B4 08 */	lfs f1, lbl_805AD128@sda21(r2)
/* 8021D7C4 0021A724  C0 03 06 B0 */	lfs f0, 0x6b0(r3)
/* 8021D7C8 0021A728  EC 21 00 32 */	fmuls f1, f1, f0
/* 8021D7CC 0021A72C  4E 80 00 20 */	blr
lbl_8021D7D0:
/* 8021D7D0 0021A730  C0 22 B4 0C */	lfs f1, lbl_805AD12C@sda21(r2)
/* 8021D7D4 0021A734  C0 03 06 B0 */	lfs f0, 0x6b0(r3)
/* 8021D7D8 0021A738  EC 21 00 32 */	fmuls f1, f1, f0
/* 8021D7DC 0021A73C  4E 80 00 20 */	blr

.global sub_8021d7e0
sub_8021d7e0:
/* 8021D7E0 0021A740  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8021D7E4 0021A744  7C 08 02 A6 */	mflr r0
/* 8021D7E8 0021A748  3D 20 80 3D */	lis r9, lbl_803D31D0@ha
/* 8021D7EC 0021A74C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8021D7F0 0021A750  BE E1 00 8C */	stmw r23, 0x8c(r1)
/* 8021D7F4 0021A754  7C 79 1B 78 */	mr r25, r3
/* 8021D7F8 0021A758  7C BB 2B 78 */	mr r27, r5
/* 8021D7FC 0021A75C  38 69 31 D0 */	addi r3, r9, lbl_803D31D0@l
/* 8021D800 0021A760  7C 9A 23 78 */	mr r26, r4
/* 8021D804 0021A764  7C DC 33 78 */	mr r28, r6
/* 8021D808 0021A768  38 83 00 2D */	addi r4, r3, 0x2d
/* 8021D80C 0021A76C  7C FD 3B 78 */	mr r29, r7
/* 8021D810 0021A770  7D 1E 43 78 */	mr r30, r8
/* 8021D814 0021A774  3B 00 00 00 */	li r24, 0
/* 8021D818 0021A778  3A E0 00 00 */	li r23, 0
/* 8021D81C 0021A77C  38 60 01 00 */	li r3, 0x100
/* 8021D820 0021A780  38 A0 00 00 */	li r5, 0
/* 8021D824 0021A784  48 0F 80 49 */	bl __nw__FUlPCcPCc
/* 8021D828 0021A788  7C 7F 1B 79 */	or. r31, r3, r3
/* 8021D82C 0021A78C  41 82 00 B4 */	beq lbl_8021D8E0
/* 8021D830 0021A790  80 B9 00 64 */	lwz r5, 0x64(r25)
/* 8021D834 0021A794  3C 60 80 3D */	lis r3, lbl_803D31D0@ha
/* 8021D838 0021A798  38 83 31 D0 */	addi r4, r3, lbl_803D31D0@l
/* 8021D83C 0021A79C  38 61 00 48 */	addi r3, r1, 0x48
/* 8021D840 0021A7A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8021D844 0021A7A4  38 84 00 34 */	addi r4, r4, 0x34
/* 8021D848 0021A7A8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8021D84C 0021A7AC  C0 05 00 04 */	lfs f0, 4(r5)
/* 8021D850 0021A7B0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8021D854 0021A7B4  C0 05 00 08 */	lfs f0, 8(r5)
/* 8021D858 0021A7B8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8021D85C 0021A7BC  4B DE 74 5D */	bl string_l__4rstlFPCc
/* 8021D860 0021A7C0  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8021D864 0021A7C4  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 8021D868 0021A7C8  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 8021D86C 0021A7CC  38 81 00 34 */	addi r4, r1, 0x34
/* 8021D870 0021A7D0  90 01 00 38 */	stw r0, 0x38(r1)
/* 8021D874 0021A7D4  38 61 00 64 */	addi r3, r1, 0x64
/* 8021D878 0021A7D8  38 C1 00 38 */	addi r6, r1, 0x38
/* 8021D87C 0021A7DC  3B 00 00 01 */	li r24, 1
/* 8021D880 0021A7E0  80 19 00 04 */	lwz r0, 4(r25)
/* 8021D884 0021A7E4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8021D888 0021A7E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021D88C 0021A7EC  4B E3 3B F9 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8021D890 0021A7F0  7F 44 D3 78 */	mr r4, r26
/* 8021D894 0021A7F4  38 61 00 10 */	addi r3, r1, 0x10
/* 8021D898 0021A7F8  3A E0 00 01 */	li r23, 1
/* 8021D89C 0021A7FC  4B E2 F8 41 */	bl AllocateUniqueId__13CStateManagerFv
/* 8021D8A0 0021A800  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8021D8A4 0021A804  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8021D8A8 0021A808  48 12 C7 05 */	bl White__6CColorFv
/* 8021D8AC 0021A80C  38 01 00 58 */	addi r0, r1, 0x58
/* 8021D8B0 0021A810  7F 64 DB 78 */	mr r4, r27
/* 8021D8B4 0021A814  90 01 00 08 */	stw r0, 8(r1)
/* 8021D8B8 0021A818  7F 89 E3 78 */	mr r9, r28
/* 8021D8BC 0021A81C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8021D8C0 0021A820  38 E1 00 64 */	addi r7, r1, 0x64
/* 8021D8C4 0021A824  90 61 00 0C */	stw r3, 0xc(r1)
/* 8021D8C8 0021A828  7F E3 FB 78 */	mr r3, r31
/* 8021D8CC 0021A82C  39 01 00 48 */	addi r8, r1, 0x48
/* 8021D8D0 0021A830  38 C0 00 01 */	li r6, 1
/* 8021D8D4 0021A834  39 40 00 00 */	li r10, 0
/* 8021D8D8 0021A838  4B E3 D2 21 */	bl "__ct__10CExplosionFRC31TLockedToken<15CGenDescription>9TUniqueIdbRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4fUiRC9CVector3fRC6CColor"
/* 8021D8DC 0021A83C  7C 7F 1B 78 */	mr r31, r3
lbl_8021D8E0:
/* 8021D8E0 0021A840  7E E0 07 75 */	extsb. r0, r23
/* 8021D8E4 0021A844  41 82 00 44 */	beq lbl_8021D928
/* 8021D8E8 0021A848  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8021D8EC 0021A84C  80 61 00 74 */	lwz r3, 0x74(r1)
/* 8021D8F0 0021A850  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8021D8F4 0021A854  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8021D8F8 0021A858  7C 64 1B 78 */	mr r4, r3
/* 8021D8FC 0021A85C  7C 03 02 14 */	add r0, r3, r0
/* 8021D900 0021A860  90 61 00 18 */	stw r3, 0x18(r1)
/* 8021D904 0021A864  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021D908 0021A868  90 01 00 20 */	stw r0, 0x20(r1)
/* 8021D90C 0021A86C  48 00 00 08 */	b lbl_8021D914
lbl_8021D910:
/* 8021D910 0021A870  38 84 00 0C */	addi r4, r4, 0xc
lbl_8021D914:
/* 8021D914 0021A874  7C 04 00 40 */	cmplw r4, r0
/* 8021D918 0021A878  40 82 FF F8 */	bne lbl_8021D910
/* 8021D91C 0021A87C  28 03 00 00 */	cmplwi r3, 0
/* 8021D920 0021A880  41 82 00 08 */	beq lbl_8021D928
/* 8021D924 0021A884  48 0F 80 0D */	bl Free__7CMemoryFPCv
lbl_8021D928:
/* 8021D928 0021A888  7F 00 07 75 */	extsb. r0, r24
/* 8021D92C 0021A88C  41 82 00 0C */	beq lbl_8021D938
/* 8021D930 0021A890  38 61 00 48 */	addi r3, r1, 0x48
/* 8021D934 0021A894  48 12 01 AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8021D938:
/* 8021D938 0021A898  28 1F 00 00 */	cmplwi r31, 0
/* 8021D93C 0021A89C  41 82 00 80 */	beq lbl_8021D9BC
/* 8021D940 0021A8A0  7F 43 D3 78 */	mr r3, r26
/* 8021D944 0021A8A4  7F E4 FB 78 */	mr r4, r31
/* 8021D948 0021A8A8  4B E2 F3 AD */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 8021D94C 0021A8AC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8021D950 0021A8B0  41 82 00 2C */	beq lbl_8021D97C
/* 8021D954 0021A8B4  88 A2 CC 40 */	lbz r5, kMaxVolume__9CAudioSys@sda21(r2)
/* 8021D958 0021A8B8  7F A4 EB 78 */	mr r4, r29
/* 8021D95C 0021A8BC  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8021D960 0021A8C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8021D964 0021A8C4  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8021D968 0021A8C8  38 C0 00 40 */	li r6, 0x40
/* 8021D96C 0021A8CC  38 E0 00 00 */	li r7, 0
/* 8021D970 0021A8D0  39 20 00 00 */	li r9, 0
/* 8021D974 0021A8D4  48 0C C4 01 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8021D978 0021A8D8  48 00 00 44 */	b lbl_8021D9BC
lbl_8021D97C:
/* 8021D97C 0021A8DC  81 59 00 04 */	lwz r10, 4(r25)
/* 8021D980 0021A8E0  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 8021D984 0021A8E4  C0 59 00 60 */	lfs f2, 0x60(r25)
/* 8021D988 0021A8E8  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 8021D98C 0021A8EC  C0 39 00 50 */	lfs f1, 0x50(r25)
/* 8021D990 0021A8F0  7F A4 EB 78 */	mr r4, r29
/* 8021D994 0021A8F4  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 8021D998 0021A8F8  38 61 00 28 */	addi r3, r1, 0x28
/* 8021D99C 0021A8FC  A9 22 C5 FA */	lha r9, lbl_805AE31A@sda21(r2)
/* 8021D9A0 0021A900  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8021D9A4 0021A904  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8021D9A8 0021A908  38 E0 00 00 */	li r7, 0
/* 8021D9AC 0021A90C  39 00 00 00 */	li r8, 0
/* 8021D9B0 0021A910  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8021D9B4 0021A914  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8021D9B8 0021A918  48 0C C8 F9 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
lbl_8021D9BC:
/* 8021D9BC 0021A91C  BA E1 00 8C */	lmw r23, 0x8c(r1)
/* 8021D9C0 0021A920  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8021D9C4 0021A924  7C 08 03 A6 */	mtlr r0
/* 8021D9C8 0021A928  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8021D9CC 0021A92C  4E 80 00 20 */	blr

.global sub_8021d9d0
sub_8021d9d0:
/* 8021D9D0 0021A930  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021D9D4 0021A934  7C 08 02 A6 */	mflr r0
/* 8021D9D8 0021A938  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021D9DC 0021A93C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8021D9E0 0021A940  7C 7B 1B 78 */	mr r27, r3
/* 8021D9E4 0021A944  7C 9C 23 78 */	mr r28, r4
/* 8021D9E8 0021A948  38 9B 0A 08 */	addi r4, r27, 0xa08
/* 8021D9EC 0021A94C  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8021D9F0 0021A950  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8021D9F4 0021A954  4B E1 06 A9 */	bl "SubstituteModelData__9CAnimDataFRC29TCachedToken<13CSkinnedModel>"
/* 8021D9F8 0021A958  3B DB 09 FC */	addi r30, r27, 0x9fc
/* 8021D9FC 0021A95C  3B E0 00 29 */	li r31, 0x29
/* 8021DA00 0021A960  7F DD F3 78 */	mr r29, r30
/* 8021DA04 0021A964  48 00 00 38 */	b lbl_8021DA3C
lbl_8021DA08:
/* 8021DA08 0021A968  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8021DA0C 0021A96C  7F 83 E3 78 */	mr r3, r28
/* 8021DA10 0021A970  38 81 00 08 */	addi r4, r1, 8
/* 8021DA14 0021A974  B0 01 00 08 */	sth r0, 8(r1)
/* 8021DA18 0021A978  4B E2 EB 5D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021DA1C 0021A97C  7C 64 1B 78 */	mr r4, r3
/* 8021DA20 0021A980  38 61 00 0C */	addi r3, r1, 0xc
/* 8021DA24 0021A984  4B E9 19 29 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021DA28 0021A988  80 63 00 04 */	lwz r3, 4(r3)
/* 8021DA2C 0021A98C  28 03 00 00 */	cmplwi r3, 0
/* 8021DA30 0021A990  41 82 00 08 */	beq lbl_8021DA38
/* 8021DA34 0021A994  93 E3 03 00 */	stw r31, 0x300(r3)
lbl_8021DA38:
/* 8021DA38 0021A998  3B BD 00 02 */	addi r29, r29, 2
lbl_8021DA3C:
/* 8021DA3C 0021A99C  80 1B 09 F8 */	lwz r0, 0x9f8(r27)
/* 8021DA40 0021A9A0  54 00 08 3C */	slwi r0, r0, 1
/* 8021DA44 0021A9A4  7C 1E 02 14 */	add r0, r30, r0
/* 8021DA48 0021A9A8  7C 1D 00 40 */	cmplw r29, r0
/* 8021DA4C 0021A9AC  40 82 FF BC */	bne lbl_8021DA08
/* 8021DA50 0021A9B0  38 00 00 00 */	li r0, 0
/* 8021DA54 0021A9B4  90 1B 0A 04 */	stw r0, 0xa04(r27)
/* 8021DA58 0021A9B8  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8021DA5C 0021A9BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021DA60 0021A9C0  7C 08 03 A6 */	mtlr r0
/* 8021DA64 0021A9C4  38 21 00 30 */	addi r1, r1, 0x30
/* 8021DA68 0021A9C8  4E 80 00 20 */	blr

.global sub_8021da6c
sub_8021da6c:
/* 8021DA6C 0021A9CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021DA70 0021A9D0  7C 08 02 A6 */	mflr r0
/* 8021DA74 0021A9D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021DA78 0021A9D8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8021DA7C 0021A9DC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8021DA80 0021A9E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021DA84 0021A9E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8021DA88 0021A9E8  88 03 0A 48 */	lbz r0, 0xa48(r3)
/* 8021DA8C 0021A9EC  FF E0 08 90 */	fmr f31, f1
/* 8021DA90 0021A9F0  7C 7E 1B 78 */	mr r30, r3
/* 8021DA94 0021A9F4  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8021DA98 0021A9F8  41 82 00 48 */	beq lbl_8021DAE0
/* 8021DA9C 0021A9FC  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8021DAA0 0021AA00  3B E0 00 00 */	li r31, 0
/* 8021DAA4 0021AA04  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8021DAA8 0021AA08  40 82 00 1C */	bne lbl_8021DAC4
/* 8021DAAC 0021AA0C  80 64 09 00 */	lwz r3, 0x900(r4)
/* 8021DAB0 0021AA10  48 0F 4A 2D */	bl Float__9CRandom16Fv
/* 8021DAB4 0021AA14  C0 02 B4 10 */	lfs f0, lbl_805AD130@sda21(r2)
/* 8021DAB8 0021AA18  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8021DABC 0021AA1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021DAC0 0021AA20  40 80 00 08 */	bge lbl_8021DAC8
lbl_8021DAC4:
/* 8021DAC4 0021AA24  3B E0 00 01 */	li r31, 1
lbl_8021DAC8:
/* 8021DAC8 0021AA28  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 8021DACC 0021AA2C  53 E0 3E 30 */	rlwimi r0, r31, 7, 0x18, 0x18
/* 8021DAD0 0021AA30  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 8021DAD4 0021AA34  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 8021DAD8 0021AA38  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 8021DADC 0021AA3C  48 00 00 08 */	b lbl_8021DAE4
lbl_8021DAE0:
/* 8021DAE0 0021AA40  38 60 00 00 */	li r3, 0
lbl_8021DAE4:
/* 8021DAE4 0021AA44  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8021DAE8 0021AA48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021DAEC 0021AA4C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8021DAF0 0021AA50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021DAF4 0021AA54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021DAF8 0021AA58  7C 08 03 A6 */	mtlr r0
/* 8021DAFC 0021AA5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8021DB00 0021AA60  4E 80 00 20 */	blr

.global sub_8021db04
sub_8021db04:
/* 8021DB04 0021AA64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021DB08 0021AA68  7C 08 02 A6 */	mflr r0
/* 8021DB0C 0021AA6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021DB10 0021AA70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021DB14 0021AA74  7C 9F 23 78 */	mr r31, r4
/* 8021DB18 0021AA78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021DB1C 0021AA7C  7C 7E 1B 78 */	mr r30, r3
/* 8021DB20 0021AA80  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8021DB24 0021AA84  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8021DB28 0021AA88  41 82 00 5C */	beq lbl_8021DB84
/* 8021DB2C 0021AA8C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8021DB30 0021AA90  4B F1 D0 7D */	bl GetFallState__15CBodyControllerCFv
/* 8021DB34 0021AA94  2C 03 00 00 */	cmpwi r3, 0
/* 8021DB38 0021AA98  41 82 00 4C */	beq lbl_8021DB84
/* 8021DB3C 0021AA9C  88 1E 0A 49 */	lbz r0, 0xa49(r30)
/* 8021DB40 0021AAA0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8021DB44 0021AAA4  40 82 00 40 */	bne lbl_8021DB84
/* 8021DB48 0021AAA8  3C 80 80 3D */	lis r4, lbl_803D31D0@ha
/* 8021DB4C 0021AAAC  38 61 00 08 */	addi r3, r1, 8
/* 8021DB50 0021AAB0  38 84 31 D0 */	addi r4, r4, lbl_803D31D0@l
/* 8021DB54 0021AAB4  38 84 00 4C */	addi r4, r4, 0x4c
/* 8021DB58 0021AAB8  4B DE 71 61 */	bl string_l__4rstlFPCc
/* 8021DB5C 0021AABC  7F C3 F3 78 */	mr r3, r30
/* 8021DB60 0021AAC0  4B E8 4D 99 */	bl GetStateMachine__3CAiFv
/* 8021DB64 0021AAC4  7C 66 1B 78 */	mr r6, r3
/* 8021DB68 0021AAC8  7F E4 FB 78 */	mr r4, r31
/* 8021DB6C 0021AACC  7F C5 F3 78 */	mr r5, r30
/* 8021DB70 0021AAD0  38 7E 03 30 */	addi r3, r30, 0x330
/* 8021DB74 0021AAD4  38 E1 00 08 */	addi r7, r1, 8
/* 8021DB78 0021AAD8  4B E6 20 8D */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8021DB7C 0021AADC  38 61 00 08 */	addi r3, r1, 8
/* 8021DB80 0021AAE0  48 11 FF 61 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8021DB84:
/* 8021DB84 0021AAE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021DB88 0021AAE8  38 60 00 00 */	li r3, 0
/* 8021DB8C 0021AAEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021DB90 0021AAF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021DB94 0021AAF4  7C 08 03 A6 */	mtlr r0
/* 8021DB98 0021AAF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8021DB9C 0021AAFC  4E 80 00 20 */	blr

.global sub_8021dba0
sub_8021dba0:
/* 8021DBA0 0021AB00  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8021DBA4 0021AB04  7C 08 02 A6 */	mflr r0
/* 8021DBA8 0021AB08  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8021DBAC 0021AB0C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8021DBB0 0021AB10  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8021DBB4 0021AB14  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8021DBB8 0021AB18  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8021DBBC 0021AB1C  7C 7F 1B 78 */	mr r31, r3
/* 8021DBC0 0021AB20  FF E0 08 90 */	fmr f31, f1
/* 8021DBC4 0021AB24  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8021DBC8 0021AB28  7C 9E 23 78 */	mr r30, r4
/* 8021DBCC 0021AB2C  2C 00 00 03 */	cmpwi r0, 3
/* 8021DBD0 0021AB30  41 82 01 EC */	beq lbl_8021DDBC
/* 8021DBD4 0021AB34  40 80 02 14 */	bge lbl_8021DDE8
/* 8021DBD8 0021AB38  2C 00 00 00 */	cmpwi r0, 0
/* 8021DBDC 0021AB3C  41 82 00 08 */	beq lbl_8021DBE4
/* 8021DBE0 0021AB40  48 00 02 08 */	b lbl_8021DDE8
lbl_8021DBE4:
/* 8021DBE4 0021AB44  C0 1F 08 DC */	lfs f0, 0x8dc(r31)
/* 8021DBE8 0021AB48  EC 00 F8 2A */	fadds f0, f0, f31
/* 8021DBEC 0021AB4C  D0 1F 08 DC */	stfs f0, 0x8dc(r31)
/* 8021DBF0 0021AB50  C0 3F 08 DC */	lfs f1, 0x8dc(r31)
/* 8021DBF4 0021AB54  C0 1F 06 D0 */	lfs f0, 0x6d0(r31)
/* 8021DBF8 0021AB58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021DBFC 0021AB5C  40 80 01 B4 */	bge lbl_8021DDB0
/* 8021DC00 0021AB60  88 1F 0A 48 */	lbz r0, 0xa48(r31)
/* 8021DC04 0021AB64  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8021DC08 0021AB68  40 82 00 B8 */	bne lbl_8021DCC0
/* 8021DC0C 0021AB6C  38 00 00 03 */	li r0, 3
/* 8021DC10 0021AB70  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8021DC14 0021AB74  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8021DC18 0021AB78  38 C4 AA 68 */	addi r6, r4, lbl_803DAA68@l
/* 8021DC1C 0021AB7C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8021DC20 0021AB80  38 E0 00 05 */	li r7, 5
/* 8021DC24 0021AB84  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 8021DC28 0021AB88  38 A0 00 01 */	li r5, 1
/* 8021DC2C 0021AB8C  38 00 00 00 */	li r0, 0
/* 8021DC30 0021AB90  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 8021DC34 0021AB94  C0 23 00 04 */	lfs f1, 4(r3)
/* 8021DC38 0021AB98  C0 03 00 08 */	lfs f0, 8(r3)
/* 8021DC3C 0021AB9C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8021DC40 0021ABA0  90 C1 00 08 */	stw r6, 8(r1)
/* 8021DC44 0021ABA4  38 C4 A9 D8 */	addi r6, r4, lbl_803DA9D8@l
/* 8021DC48 0021ABA8  3B E3 00 04 */	addi r31, r3, 4
/* 8021DC4C 0021ABAC  38 80 00 05 */	li r4, 5
/* 8021DC50 0021ABB0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8021DC54 0021ABB4  7F E3 FB 78 */	mr r3, r31
/* 8021DC58 0021ABB8  90 C1 00 08 */	stw r6, 8(r1)
/* 8021DC5C 0021ABBC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8021DC60 0021ABC0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8021DC64 0021ABC4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8021DC68 0021ABC8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8021DC6C 0021ABCC  98 01 00 20 */	stb r0, 0x20(r1)
/* 8021DC70 0021ABD0  4B F1 37 C9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8021DC74 0021ABD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021DC78 0021ABD8  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8021DC7C 0021ABDC  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 8021DC80 0021ABE0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8021DC84 0021ABE4  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8021DC88 0021ABE8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8021DC8C 0021ABEC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8021DC90 0021ABF0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8021DC94 0021ABF4  90 7F 01 14 */	stw r3, 0x114(r31)
/* 8021DC98 0021ABF8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8021DC9C 0021ABFC  90 BF 01 18 */	stw r5, 0x118(r31)
/* 8021DCA0 0021AC00  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8021DCA4 0021AC04  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8021DCA8 0021AC08  88 61 00 20 */	lbz r3, 0x20(r1)
/* 8021DCAC 0021AC0C  90 BF 01 20 */	stw r5, 0x120(r31)
/* 8021DCB0 0021AC10  90 81 00 08 */	stw r4, 8(r1)
/* 8021DCB4 0021AC14  98 7F 01 24 */	stb r3, 0x124(r31)
/* 8021DCB8 0021AC18  90 01 00 08 */	stw r0, 8(r1)
/* 8021DCBC 0021AC1C  48 00 01 2C */	b lbl_8021DDE8
lbl_8021DCC0:
/* 8021DCC0 0021AC20  7F E4 FB 78 */	mr r4, r31
/* 8021DCC4 0021AC24  38 61 00 24 */	addi r3, r1, 0x24
/* 8021DCC8 0021AC28  38 BF 09 F4 */	addi r5, r31, 0x9f4
/* 8021DCCC 0021AC2C  4B E5 AB ED */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 8021DCD0 0021AC30  38 61 00 54 */	addi r3, r1, 0x54
/* 8021DCD4 0021AC34  38 81 00 24 */	addi r4, r1, 0x24
/* 8021DCD8 0021AC38  48 0F 4E 9D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8021DCDC 0021AC3C  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8021DCE0 0021AC40  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8021DCE4 0021AC44  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8021DCE8 0021AC48  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 8021DCEC 0021AC4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8021DCF0 0021AC50  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 8021DCF4 0021AC54  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8021DCF8 0021AC58  EC 43 10 28 */	fsubs f2, f3, f2
/* 8021DCFC 0021AC5C  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 8021DD00 0021AC60  EC 01 00 32 */	fmuls f0, f1, f0
/* 8021DD04 0021AC64  C0 61 00 80 */	lfs f3, 0x80(r1)
/* 8021DD08 0021AC68  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8021DD0C 0021AC6C  EC 64 18 28 */	fsubs f3, f4, f3
/* 8021DD10 0021AC70  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 8021DD14 0021AC74  EC 21 00 BA */	fmadds f1, f1, f2, f0
/* 8021DD18 0021AC78  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021DD1C 0021AC7C  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 8021DD20 0021AC80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021DD24 0021AC84  40 81 00 80 */	ble lbl_8021DDA4
/* 8021DD28 0021AC88  7F E3 FB 78 */	mr r3, r31
/* 8021DD2C 0021AC8C  38 80 00 00 */	li r4, 0
/* 8021DD30 0021AC90  48 00 03 6D */	bl sub_8021e09c
/* 8021DD34 0021AC94  7F E3 FB 78 */	mr r3, r31
/* 8021DD38 0021AC98  81 9F 00 00 */	lwz r12, 0(r31)
/* 8021DD3C 0021AC9C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8021DD40 0021ACA0  7D 89 03 A6 */	mtctr r12
/* 8021DD44 0021ACA4  4E 80 04 21 */	bctrl
/* 8021DD48 0021ACA8  28 03 00 00 */	cmplwi r3, 0
/* 8021DD4C 0021ACAC  41 82 00 4C */	beq lbl_8021DD98
/* 8021DD50 0021ACB0  7F E3 FB 78 */	mr r3, r31
/* 8021DD54 0021ACB4  7F C4 F3 78 */	mr r4, r30
/* 8021DD58 0021ACB8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8021DD5C 0021ACBC  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 8021DD60 0021ACC0  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8021DD64 0021ACC4  7D 89 03 A6 */	mtctr r12
/* 8021DD68 0021ACC8  4E 80 04 21 */	bctrl
/* 8021DD6C 0021ACCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021DD70 0021ACD0  40 82 00 28 */	bne lbl_8021DD98
/* 8021DD74 0021ACD4  FC 20 F8 90 */	fmr f1, f31
/* 8021DD78 0021ACD8  7F E3 FB 78 */	mr r3, r31
/* 8021DD7C 0021ACDC  7F C4 F3 78 */	mr r4, r30
/* 8021DD80 0021ACE0  38 A0 00 01 */	li r5, 1
/* 8021DD84 0021ACE4  4B FD 89 49 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8021DD88 0021ACE8  7F E3 FB 78 */	mr r3, r31
/* 8021DD8C 0021ACEC  7F C4 F3 78 */	mr r4, r30
/* 8021DD90 0021ACF0  48 00 00 79 */	bl sub_8021de08
/* 8021DD94 0021ACF4  48 00 00 54 */	b lbl_8021DDE8
lbl_8021DD98:
/* 8021DD98 0021ACF8  38 00 00 04 */	li r0, 4
/* 8021DD9C 0021ACFC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8021DDA0 0021AD00  48 00 00 48 */	b lbl_8021DDE8
lbl_8021DDA4:
/* 8021DDA4 0021AD04  38 00 00 04 */	li r0, 4
/* 8021DDA8 0021AD08  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8021DDAC 0021AD0C  48 00 00 3C */	b lbl_8021DDE8
lbl_8021DDB0:
/* 8021DDB0 0021AD10  38 00 00 04 */	li r0, 4
/* 8021DDB4 0021AD14  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8021DDB8 0021AD18  48 00 00 30 */	b lbl_8021DDE8
lbl_8021DDBC:
/* 8021DDBC 0021AD1C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8021DDC0 0021AD20  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8021DDC4 0021AD24  2C 00 00 07 */	cmpwi r0, 7
/* 8021DDC8 0021AD28  41 82 00 10 */	beq lbl_8021DDD8
/* 8021DDCC 0021AD2C  38 00 00 04 */	li r0, 4
/* 8021DDD0 0021AD30  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8021DDD4 0021AD34  48 00 00 14 */	b lbl_8021DDE8
lbl_8021DDD8:
/* 8021DDD8 0021AD38  88 1F 0A 49 */	lbz r0, 0xa49(r31)
/* 8021DDDC 0021AD3C  38 60 00 01 */	li r3, 1
/* 8021DDE0 0021AD40  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8021DDE4 0021AD44  98 1F 0A 49 */	stb r0, 0xa49(r31)
lbl_8021DDE8:
/* 8021DDE8 0021AD48  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8021DDEC 0021AD4C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8021DDF0 0021AD50  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8021DDF4 0021AD54  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8021DDF8 0021AD58  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8021DDFC 0021AD5C  7C 08 03 A6 */	mtlr r0
/* 8021DE00 0021AD60  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8021DE04 0021AD64  4E 80 00 20 */	blr

.global sub_8021de08
sub_8021de08:
/* 8021DE08 0021AD68  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8021DE0C 0021AD6C  7C 08 02 A6 */	mflr r0
/* 8021DE10 0021AD70  90 01 00 64 */	stw r0, 0x64(r1)
/* 8021DE14 0021AD74  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8021DE18 0021AD78  7C 7F 1B 78 */	mr r31, r3
/* 8021DE1C 0021AD7C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8021DE20 0021AD80  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8021DE24 0021AD84  93 81 00 50 */	stw r28, 0x50(r1)
/* 8021DE28 0021AD88  83 A4 08 38 */	lwz r29, 0x838(r4)
/* 8021DE2C 0021AD8C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8021DE30 0021AD90  3B C4 66 A0 */	addi r30, r4, sZeroVector__9CVector3f@l
/* 8021DE34 0021AD94  AB 9D 20 08 */	lha r28, 0x2008(r29)
/* 8021DE38 0021AD98  48 00 01 04 */	b lbl_8021DF3C
lbl_8021DE3C:
/* 8021DE3C 0021AD9C  7F A3 EB 78 */	mr r3, r29
/* 8021DE40 0021ADA0  7F 84 E3 78 */	mr r4, r28
/* 8021DE44 0021ADA4  4B DF 1E 99 */	bl __vc__11CObjectListCFi
/* 8021DE48 0021ADA8  7C 64 1B 78 */	mr r4, r3
/* 8021DE4C 0021ADAC  38 61 00 08 */	addi r3, r1, 8
/* 8021DE50 0021ADB0  4B E8 EC 0D */	bl "__ct__24TCastToPtr<10CPatterned>FP7CEntity"
/* 8021DE54 0021ADB4  80 83 00 04 */	lwz r4, 4(r3)
/* 8021DE58 0021ADB8  28 04 00 00 */	cmplwi r4, 0
/* 8021DE5C 0021ADBC  41 82 00 C4 */	beq lbl_8021DF20
/* 8021DE60 0021ADC0  7C 04 F8 40 */	cmplw r4, r31
/* 8021DE64 0021ADC4  41 82 00 BC */	beq lbl_8021DF20
/* 8021DE68 0021ADC8  80 64 00 04 */	lwz r3, 4(r4)
/* 8021DE6C 0021ADCC  80 1F 00 04 */	lwz r0, 4(r31)
/* 8021DE70 0021ADD0  7C 03 00 00 */	cmpw r3, r0
/* 8021DE74 0021ADD4  40 82 00 AC */	bne lbl_8021DF20
/* 8021DE78 0021ADD8  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8021DE7C 0021ADDC  7F E5 FB 78 */	mr r5, r31
/* 8021DE80 0021ADE0  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8021DE84 0021ADE4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8021DE88 0021ADE8  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8021DE8C 0021ADEC  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8021DE90 0021ADF0  C0 22 B4 14 */	lfs f1, lbl_805AD134@sda21(r2)
/* 8021DE94 0021ADF4  38 C1 00 10 */	addi r6, r1, 0x10
/* 8021DE98 0021ADF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8021DE9C 0021ADFC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8021DEA0 0021AE00  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8021DEA4 0021AE04  4B F2 0A 4D */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8021DEA8 0021AE08  C0 C1 00 1C */	lfs f6, 0x1c(r1)
/* 8021DEAC 0021AE0C  38 00 00 00 */	li r0, 0
/* 8021DEB0 0021AE10  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021DEB4 0021AE14  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 8021DEB8 0021AE18  FC 00 30 00 */	fcmpu cr0, f0, f6
/* 8021DEBC 0021AE1C  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 8021DEC0 0021AE20  40 82 00 14 */	bne lbl_8021DED4
/* 8021DEC4 0021AE24  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 8021DEC8 0021AE28  40 82 00 0C */	bne lbl_8021DED4
/* 8021DECC 0021AE2C  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8021DED0 0021AE30  41 82 00 08 */	beq lbl_8021DED8
lbl_8021DED4:
/* 8021DED4 0021AE34  38 00 00 01 */	li r0, 1
lbl_8021DED8:
/* 8021DED8 0021AE38  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8021DEDC 0021AE3C  41 82 00 44 */	beq lbl_8021DF20
/* 8021DEE0 0021AE40  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8021DEE4 0021AE44  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8021DEE8 0021AE48  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8021DEEC 0021AE4C  38 81 00 28 */	addi r4, r1, 0x28
/* 8021DEF0 0021AE50  C0 63 66 A0 */	lfs f3, sZeroVector__9CVector3f@l(r3)
/* 8021DEF4 0021AE54  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 8021DEF8 0021AE58  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 8021DEFC 0021AE5C  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8021DF00 0021AE60  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8021DF04 0021AE64  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8021DF08 0021AE68  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8021DF0C 0021AE6C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8021DF10 0021AE70  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8021DF14 0021AE74  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8021DF18 0021AE78  38 63 00 04 */	addi r3, r3, 4
/* 8021DF1C 0021AE7C  4B F1 37 FD */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8021DF20:
/* 8021DF20 0021AE80  2C 1C FF FF */	cmpwi r28, -1
/* 8021DF24 0021AE84  41 82 00 14 */	beq lbl_8021DF38
/* 8021DF28 0021AE88  57 83 18 38 */	slwi r3, r28, 3
/* 8021DF2C 0021AE8C  38 03 00 08 */	addi r0, r3, 8
/* 8021DF30 0021AE90  7F 9D 02 AE */	lhax r28, r29, r0
/* 8021DF34 0021AE94  48 00 00 08 */	b lbl_8021DF3C
lbl_8021DF38:
/* 8021DF38 0021AE98  3B 80 FF FF */	li r28, -1
lbl_8021DF3C:
/* 8021DF3C 0021AE9C  2C 1C FF FF */	cmpwi r28, -1
/* 8021DF40 0021AEA0  40 82 FE FC */	bne lbl_8021DE3C
/* 8021DF44 0021AEA4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8021DF48 0021AEA8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8021DF4C 0021AEAC  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8021DF50 0021AEB0  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8021DF54 0021AEB4  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8021DF58 0021AEB8  7C 08 03 A6 */	mtlr r0
/* 8021DF5C 0021AEBC  38 21 00 60 */	addi r1, r1, 0x60
/* 8021DF60 0021AEC0  4E 80 00 20 */	blr

.global sub_8021df64
sub_8021df64:
/* 8021DF64 0021AEC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021DF68 0021AEC8  7C 08 02 A6 */	mflr r0
/* 8021DF6C 0021AECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021DF70 0021AED0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021DF74 0021AED4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021DF78 0021AED8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8021DF7C 0021AEDC  7C 7D 1B 78 */	mr r29, r3
/* 8021DF80 0021AEE0  83 E4 08 38 */	lwz r31, 0x838(r4)
/* 8021DF84 0021AEE4  AB DF 20 08 */	lha r30, 0x2008(r31)
/* 8021DF88 0021AEE8  48 00 00 A4 */	b lbl_8021E02C
lbl_8021DF8C:
/* 8021DF8C 0021AEEC  7F E3 FB 78 */	mr r3, r31
/* 8021DF90 0021AEF0  7F C4 F3 78 */	mr r4, r30
/* 8021DF94 0021AEF4  4B DF 1D 49 */	bl __vc__11CObjectListCFi
/* 8021DF98 0021AEF8  7C 64 1B 78 */	mr r4, r3
/* 8021DF9C 0021AEFC  38 61 00 08 */	addi r3, r1, 8
/* 8021DFA0 0021AF00  4B E8 EA BD */	bl "__ct__24TCastToPtr<10CPatterned>FP7CEntity"
/* 8021DFA4 0021AF04  80 83 00 04 */	lwz r4, 4(r3)
/* 8021DFA8 0021AF08  28 04 00 00 */	cmplwi r4, 0
/* 8021DFAC 0021AF0C  41 82 00 64 */	beq lbl_8021E010
/* 8021DFB0 0021AF10  7C 04 E8 40 */	cmplw r4, r29
/* 8021DFB4 0021AF14  41 82 00 5C */	beq lbl_8021E010
/* 8021DFB8 0021AF18  80 64 00 04 */	lwz r3, 4(r4)
/* 8021DFBC 0021AF1C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8021DFC0 0021AF20  7C 03 00 00 */	cmpw r3, r0
/* 8021DFC4 0021AF24  40 82 00 4C */	bne lbl_8021E010
/* 8021DFC8 0021AF28  C0 3D 08 BC */	lfs f1, 0x8bc(r29)
/* 8021DFCC 0021AF2C  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 8021DFD0 0021AF30  C0 7D 08 B8 */	lfs f3, 0x8b8(r29)
/* 8021DFD4 0021AF34  EC 21 00 28 */	fsubs f1, f1, f0
/* 8021DFD8 0021AF38  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8021DFDC 0021AF3C  C0 5D 08 C0 */	lfs f2, 0x8c0(r29)
/* 8021DFE0 0021AF40  EC 63 00 28 */	fsubs f3, f3, f0
/* 8021DFE4 0021AF44  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 8021DFE8 0021AF48  EC 21 00 72 */	fmuls f1, f1, f1
/* 8021DFEC 0021AF4C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8021DFF0 0021AF50  C0 02 B4 00 */	lfs f0, lbl_805AD120@sda21(r2)
/* 8021DFF4 0021AF54  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8021DFF8 0021AF58  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8021DFFC 0021AF5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021E000 0021AF60  4C 40 13 82 */	cror 2, 0, 2
/* 8021E004 0021AF64  40 82 00 0C */	bne lbl_8021E010
/* 8021E008 0021AF68  38 60 00 01 */	li r3, 1
/* 8021E00C 0021AF6C  48 00 00 2C */	b lbl_8021E038
lbl_8021E010:
/* 8021E010 0021AF70  2C 1E FF FF */	cmpwi r30, -1
/* 8021E014 0021AF74  41 82 00 14 */	beq lbl_8021E028
/* 8021E018 0021AF78  57 C3 18 38 */	slwi r3, r30, 3
/* 8021E01C 0021AF7C  38 03 00 08 */	addi r0, r3, 8
/* 8021E020 0021AF80  7F DF 02 AE */	lhax r30, r31, r0
/* 8021E024 0021AF84  48 00 00 08 */	b lbl_8021E02C
lbl_8021E028:
/* 8021E028 0021AF88  3B C0 FF FF */	li r30, -1
lbl_8021E02C:
/* 8021E02C 0021AF8C  2C 1E FF FF */	cmpwi r30, -1
/* 8021E030 0021AF90  40 82 FF 5C */	bne lbl_8021DF8C
/* 8021E034 0021AF94  38 60 00 00 */	li r3, 0
lbl_8021E038:
/* 8021E038 0021AF98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021E03C 0021AF9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021E040 0021AFA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021E044 0021AFA4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8021E048 0021AFA8  7C 08 03 A6 */	mtlr r0
/* 8021E04C 0021AFAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8021E050 0021AFB0  4E 80 00 20 */	blr

.global GetCollisionResponseType__9CBabygothCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__9CBabygothCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 8021E054 0021AFB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021E058 0021AFB8  7C 08 02 A6 */	mflr r0
/* 8021E05C 0021AFBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021E060 0021AFC0  80 06 00 00 */	lwz r0, 0(r6)
/* 8021E064 0021AFC4  2C 00 00 01 */	cmpwi r0, 1
/* 8021E068 0021AFC8  40 82 00 0C */	bne lbl_8021E074
/* 8021E06C 0021AFCC  38 60 00 00 */	li r3, 0
/* 8021E070 0021AFD0  48 00 00 1C */	b lbl_8021E08C
lbl_8021E074:
/* 8021E074 0021AFD4  80 03 05 6C */	lwz r0, 0x56c(r3)
/* 8021E078 0021AFD8  2C 00 00 03 */	cmpwi r0, 3
/* 8021E07C 0021AFDC  41 82 00 0C */	beq lbl_8021E088
/* 8021E080 0021AFE0  38 60 00 42 */	li r3, 0x42
/* 8021E084 0021AFE4  48 00 00 08 */	b lbl_8021E08C
lbl_8021E088:
/* 8021E088 0021AFE8  4B E5 99 2D */	bl GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
lbl_8021E08C:
/* 8021E08C 0021AFEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021E090 0021AFF0  7C 08 03 A6 */	mtlr r0
/* 8021E094 0021AFF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8021E098 0021AFF8  4E 80 00 20 */	blr

.global sub_8021e09c
sub_8021e09c:
/* 8021E09C 0021AFFC  90 83 08 B4 */	stw r4, 0x8b4(r3)
/* 8021E0A0 0021B000  4E 80 00 20 */	blr

.global sub_8021e0a4
sub_8021e0a4:
/* 8021E0A4 0021B004  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8021E0A8 0021B008  7C 08 02 A6 */	mflr r0
/* 8021E0AC 0021B00C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8021E0B0 0021B010  DB E1 00 98 */	stfd f31, 0x98(r1)
/* 8021E0B4 0021B014  FF E0 08 90 */	fmr f31, f1
/* 8021E0B8 0021B018  93 E1 00 94 */	stw r31, 0x94(r1)
/* 8021E0BC 0021B01C  93 C1 00 90 */	stw r30, 0x90(r1)
/* 8021E0C0 0021B020  7C 9E 23 78 */	mr r30, r4
/* 8021E0C4 0021B024  38 81 00 08 */	addi r4, r1, 8
/* 8021E0C8 0021B028  93 A1 00 8C */	stw r29, 0x8c(r1)
/* 8021E0CC 0021B02C  7C 7D 1B 78 */	mr r29, r3
/* 8021E0D0 0021B030  A0 03 09 80 */	lhz r0, 0x980(r3)
/* 8021E0D4 0021B034  7F C3 F3 78 */	mr r3, r30
/* 8021E0D8 0021B038  B0 01 00 08 */	sth r0, 8(r1)
/* 8021E0DC 0021B03C  4B E2 E4 99 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021E0E0 0021B040  7C 7F 1B 79 */	or. r31, r3, r3
/* 8021E0E4 0021B044  41 82 00 5C */	beq lbl_8021E140
/* 8021E0E8 0021B048  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 8021E0EC 0021B04C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8021E0F0 0021B050  41 82 00 50 */	beq lbl_8021E140
/* 8021E0F4 0021B054  3C 80 80 3D */	lis r4, lbl_803D31D0@ha
/* 8021E0F8 0021B058  38 61 00 0C */	addi r3, r1, 0xc
/* 8021E0FC 0021B05C  38 84 31 D0 */	addi r4, r4, lbl_803D31D0@l
/* 8021E100 0021B060  38 84 00 0E */	addi r4, r4, 0xe
/* 8021E104 0021B064  4B DE 6B B5 */	bl string_l__4rstlFPCc
/* 8021E108 0021B068  7F A4 EB 78 */	mr r4, r29
/* 8021E10C 0021B06C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8021E110 0021B070  38 A1 00 0C */	addi r5, r1, 0xc
/* 8021E114 0021B074  4B E5 A8 65 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8021E118 0021B078  38 61 00 4C */	addi r3, r1, 0x4c
/* 8021E11C 0021B07C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8021E120 0021B080  48 0F 4A 55 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8021E124 0021B084  38 61 00 0C */	addi r3, r1, 0xc
/* 8021E128 0021B088  48 11 F9 B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8021E12C 0021B08C  FC 20 F8 90 */	fmr f1, f31
/* 8021E130 0021B090  7F E3 FB 78 */	mr r3, r31
/* 8021E134 0021B094  7F C5 F3 78 */	mr r5, r30
/* 8021E138 0021B098  38 81 00 4C */	addi r4, r1, 0x4c
/* 8021E13C 0021B09C  4B F7 A2 C5 */	bl SetTransform__13CFlameThrowerFRC12CTransform4f
lbl_8021E140:
/* 8021E140 0021B0A0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8021E144 0021B0A4  CB E1 00 98 */	lfd f31, 0x98(r1)
/* 8021E148 0021B0A8  83 E1 00 94 */	lwz r31, 0x94(r1)
/* 8021E14C 0021B0AC  83 C1 00 90 */	lwz r30, 0x90(r1)
/* 8021E150 0021B0B0  83 A1 00 8C */	lwz r29, 0x8c(r1)
/* 8021E154 0021B0B4  7C 08 03 A6 */	mtlr r0
/* 8021E158 0021B0B8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8021E15C 0021B0BC  4E 80 00 20 */	blr

.global sub_8021e160
sub_8021e160:
/* 8021E160 0021B0C0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8021E164 0021B0C4  7C 08 02 A6 */	mflr r0
/* 8021E168 0021B0C8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8021E16C 0021B0CC  BF 21 00 74 */	stmw r25, 0x74(r1)
/* 8021E170 0021B0D0  7C 7E 1B 78 */	mr r30, r3
/* 8021E174 0021B0D4  7C 9F 23 78 */	mr r31, r4
/* 8021E178 0021B0D8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8021E17C 0021B0DC  A0 63 09 80 */	lhz r3, 0x980(r3)
/* 8021E180 0021B0E0  7C 03 00 40 */	cmplw r3, r0
/* 8021E184 0021B0E4  40 82 01 2C */	bne lbl_8021E2B0
/* 8021E188 0021B0E8  80 FE 05 B8 */	lwz r7, 0x5b8(r30)
/* 8021E18C 0021B0EC  38 C0 00 06 */	li r6, 6
/* 8021E190 0021B0F0  C0 42 B4 1C */	lfs f2, lbl_805AD13C@sda21(r2)
/* 8021E194 0021B0F4  38 A0 00 04 */	li r5, 4
/* 8021E198 0021B0F8  C0 22 B4 20 */	lfs f1, lbl_805AD140@sda21(r2)
/* 8021E19C 0021B0FC  38 00 00 0F */	li r0, 0xf
/* 8021E1A0 0021B100  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 8021E1A4 0021B104  38 61 00 34 */	addi r3, r1, 0x34
/* 8021E1A8 0021B108  90 C1 00 50 */	stw r6, 0x50(r1)
/* 8021E1AC 0021B10C  90 A1 00 54 */	stw r5, 0x54(r1)
/* 8021E1B0 0021B110  90 E1 00 58 */	stw r7, 0x58(r1)
/* 8021E1B4 0021B114  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8021E1B8 0021B118  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8021E1BC 0021B11C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8021E1C0 0021B120  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8021E1C4 0021B124  4B E2 EF 19 */	bl AllocateUniqueId__13CStateManagerFv
/* 8021E1C8 0021B128  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 8021E1CC 0021B12C  3C 60 80 3D */	lis r3, lbl_803D31D0@ha
/* 8021E1D0 0021B130  38 63 31 D0 */	addi r3, r3, lbl_803D31D0@l
/* 8021E1D4 0021B134  3B 20 00 00 */	li r25, 0
/* 8021E1D8 0021B138  B0 1E 09 80 */	sth r0, 0x980(r30)
/* 8021E1DC 0021B13C  38 83 00 2D */	addi r4, r3, 0x2d
/* 8021E1E0 0021B140  38 60 04 08 */	li r3, 0x408
/* 8021E1E4 0021B144  38 A0 00 00 */	li r5, 0
/* 8021E1E8 0021B148  48 0F 76 85 */	bl __nw__FUlPCcPCc
/* 8021E1EC 0021B14C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8021E1F0 0021B150  41 82 00 A0 */	beq lbl_8021E290
/* 8021E1F4 0021B154  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8021E1F8 0021B158  3C 60 80 3D */	lis r3, lbl_803D31D0@ha
/* 8021E1FC 0021B15C  83 9E 06 E4 */	lwz r28, 0x6e4(r30)
/* 8021E200 0021B160  38 83 31 D0 */	addi r4, r3, lbl_803D31D0@l
/* 8021E204 0021B164  A3 7E 06 E0 */	lhz r27, 0x6e0(r30)
/* 8021E208 0021B168  38 61 00 40 */	addi r3, r1, 0x40
/* 8021E20C 0021B16C  83 5E 06 DC */	lwz r26, 0x6dc(r30)
/* 8021E210 0021B170  38 84 00 52 */	addi r4, r4, 0x52
/* 8021E214 0021B174  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8021E218 0021B178  B0 01 00 30 */	sth r0, 0x30(r1)
/* 8021E21C 0021B17C  80 BE 00 04 */	lwz r5, 4(r30)
/* 8021E220 0021B180  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 8021E224 0021B184  A0 1E 09 80 */	lhz r0, 0x980(r30)
/* 8021E228 0021B188  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8021E22C 0021B18C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8021E230 0021B190  4B DE 6A 89 */	bl string_l__4rstlFPCc
/* 8021E234 0021B194  38 01 00 28 */	addi r0, r1, 0x28
/* 8021E238 0021B198  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 8021E23C 0021B19C  90 01 00 08 */	stw r0, 8(r1)
/* 8021E240 0021B1A0  38 01 00 3C */	addi r0, r1, 0x3c
/* 8021E244 0021B1A4  39 03 66 70 */	addi r8, r3, sIdentity__12CTransform4f@l
/* 8021E248 0021B1A8  38 81 00 30 */	addi r4, r1, 0x30
/* 8021E24C 0021B1AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8021E250 0021B1B0  38 00 00 00 */	li r0, 0
/* 8021E254 0021B1B4  7F A3 EB 78 */	mr r3, r29
/* 8021E258 0021B1B8  38 A1 00 40 */	addi r5, r1, 0x40
/* 8021E25C 0021B1BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 8021E260 0021B1C0  38 9E 09 84 */	addi r4, r30, 0x984
/* 8021E264 0021B1C4  38 E1 00 50 */	addi r7, r1, 0x50
/* 8021E268 0021B1C8  39 5E 05 BC */	addi r10, r30, 0x5bc
/* 8021E26C 0021B1CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021E270 0021B1D0  3B 20 00 01 */	li r25, 1
/* 8021E274 0021B1D4  38 C0 00 03 */	li r6, 3
/* 8021E278 0021B1D8  39 20 00 2F */	li r9, 0x2f
/* 8021E27C 0021B1DC  93 41 00 18 */	stw r26, 0x18(r1)
/* 8021E280 0021B1E0  93 61 00 1C */	stw r27, 0x1c(r1)
/* 8021E284 0021B1E4  93 81 00 20 */	stw r28, 0x20(r1)
/* 8021E288 0021B1E8  4B F7 A8 69 */	bl "__ct__13CFlameThrowerFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC10CFlameInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId9TUniqueIdUi"
/* 8021E28C 0021B1EC  7C 7D 1B 78 */	mr r29, r3
lbl_8021E290:
/* 8021E290 0021B1F0  7F 20 07 75 */	extsb. r0, r25
/* 8021E294 0021B1F4  7F BA EB 78 */	mr r26, r29
/* 8021E298 0021B1F8  41 82 00 0C */	beq lbl_8021E2A4
/* 8021E29C 0021B1FC  38 61 00 40 */	addi r3, r1, 0x40
/* 8021E2A0 0021B200  48 11 F8 41 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8021E2A4:
/* 8021E2A4 0021B204  7F E3 FB 78 */	mr r3, r31
/* 8021E2A8 0021B208  7F 44 D3 78 */	mr r4, r26
/* 8021E2AC 0021B20C  4B E2 E8 69 */	bl AddObject__13CStateManagerFR7CEntity
lbl_8021E2B0:
/* 8021E2B0 0021B210  BB 21 00 74 */	lmw r25, 0x74(r1)
/* 8021E2B4 0021B214  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8021E2B8 0021B218  7C 08 03 A6 */	mtlr r0
/* 8021E2BC 0021B21C  38 21 00 90 */	addi r1, r1, 0x90
/* 8021E2C0 0021B220  4E 80 00 20 */	blr

.global sub_8021e2c4
sub_8021e2c4:
/* 8021E2C4 0021B224  88 03 0A 49 */	lbz r0, 0xa49(r3)
/* 8021E2C8 0021B228  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8021E2CC 0021B22C  41 82 00 0C */	beq lbl_8021E2D8
/* 8021E2D0 0021B230  C0 62 B4 24 */	lfs f3, lbl_805AD144@sda21(r2)
/* 8021E2D4 0021B234  48 00 00 08 */	b lbl_8021E2DC
lbl_8021E2D8:
/* 8021E2D8 0021B238  C0 62 B4 18 */	lfs f3, lbl_805AD138@sda21(r2)
lbl_8021E2DC:
/* 8021E2DC 0021B23C  C0 43 08 D8 */	lfs f2, 0x8d8(r3)
/* 8021E2E0 0021B240  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021E2E4 0021B244  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8021E2E8 0021B248  40 81 00 0C */	ble lbl_8021E2F4
/* 8021E2EC 0021B24C  EC 01 10 FC */	fnmsubs f0, f1, f3, f2
/* 8021E2F0 0021B250  D0 03 08 D8 */	stfs f0, 0x8d8(r3)
lbl_8021E2F4:
/* 8021E2F4 0021B254  C0 43 08 E4 */	lfs f2, 0x8e4(r3)
/* 8021E2F8 0021B258  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021E2FC 0021B25C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8021E300 0021B260  40 81 00 0C */	ble lbl_8021E30C
/* 8021E304 0021B264  EC 01 10 FC */	fnmsubs f0, f1, f3, f2
/* 8021E308 0021B268  D0 03 08 E4 */	stfs f0, 0x8e4(r3)
lbl_8021E30C:
/* 8021E30C 0021B26C  C0 43 08 E0 */	lfs f2, 0x8e0(r3)
/* 8021E310 0021B270  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021E314 0021B274  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8021E318 0021B278  40 81 00 0C */	ble lbl_8021E324
/* 8021E31C 0021B27C  EC 02 08 28 */	fsubs f0, f2, f1
/* 8021E320 0021B280  D0 03 08 E0 */	stfs f0, 0x8e0(r3)
lbl_8021E324:
/* 8021E324 0021B284  C0 43 08 E8 */	lfs f2, 0x8e8(r3)
/* 8021E328 0021B288  C0 03 06 D8 */	lfs f0, 0x6d8(r3)
/* 8021E32C 0021B28C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8021E330 0021B290  4C 80 00 20 */	bgelr
/* 8021E334 0021B294  EC 02 08 2A */	fadds f0, f2, f1
/* 8021E338 0021B298  D0 03 08 E8 */	stfs f0, 0x8e8(r3)
/* 8021E33C 0021B29C  4E 80 00 20 */	blr

.global sub_8021e340
sub_8021e340:
/* 8021E340 0021B2A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8021E344 0021B2A4  7C 08 02 A6 */	mflr r0
/* 8021E348 0021B2A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8021E34C 0021B2AC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8021E350 0021B2B0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8021E354 0021B2B4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8021E358 0021B2B8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8021E35C 0021B2BC  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 8021E360 0021B2C0  F3 A1 00 18 */	psq_st f29, 24(r1), 0, qr0
/* 8021E364 0021B2C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021E368 0021B2C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8021E36C 0021B2CC  7C 7E 1B 78 */	mr r30, r3
/* 8021E370 0021B2D0  7C 9F 23 78 */	mr r31, r4
/* 8021E374 0021B2D4  80 03 05 6C */	lwz r0, 0x56c(r3)
/* 8021E378 0021B2D8  2C 00 00 03 */	cmpwi r0, 3
/* 8021E37C 0021B2DC  40 82 00 0C */	bne lbl_8021E388
/* 8021E380 0021B2E0  C3 E2 B4 28 */	lfs f31, lbl_805AD148@sda21(r2)
/* 8021E384 0021B2E4  48 00 00 08 */	b lbl_8021E38C
lbl_8021E388:
/* 8021E388 0021B2E8  C3 E2 B4 18 */	lfs f31, lbl_805AD138@sda21(r2)
lbl_8021E38C:
/* 8021E38C 0021B2EC  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 8021E390 0021B2F0  48 0F 41 4D */	bl Float__9CRandom16Fv
/* 8021E394 0021B2F4  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 8021E398 0021B2F8  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 8021E39C 0021B2FC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8021E3A0 0021B300  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8021E3A4 0021B304  D0 1E 08 D8 */	stfs f0, 0x8d8(r30)
/* 8021E3A8 0021B308  C3 DE 05 74 */	lfs f30, 0x574(r30)
/* 8021E3AC 0021B30C  C3 BE 05 70 */	lfs f29, 0x570(r30)
/* 8021E3B0 0021B310  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 8021E3B4 0021B314  48 0F 41 29 */	bl Float__9CRandom16Fv
/* 8021E3B8 0021B318  EC 01 EF BA */	fmadds f0, f1, f30, f29
/* 8021E3BC 0021B31C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8021E3C0 0021B320  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 8021E3C4 0021B324  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8021E3C8 0021B328  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8021E3CC 0021B32C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8021E3D0 0021B330  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8021E3D4 0021B334  E3 A1 00 18 */	psq_l f29, 24(r1), 0, qr0
/* 8021E3D8 0021B338  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 8021E3DC 0021B33C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021E3E0 0021B340  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8021E3E4 0021B344  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021E3E8 0021B348  7C 08 03 A6 */	mtlr r0
/* 8021E3EC 0021B34C  38 21 00 40 */	addi r1, r1, 0x40
/* 8021E3F0 0021B350  4E 80 00 20 */	blr

.global sub_8021e3f4
sub_8021e3f4:
/* 8021E3F4 0021B354  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8021E3F8 0021B358  7C 08 02 A6 */	mflr r0
/* 8021E3FC 0021B35C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8021E400 0021B360  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8021E404 0021B364  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8021E408 0021B368  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8021E40C 0021B36C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8021E410 0021B370  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8021E414 0021B374  93 81 00 50 */	stw r28, 0x50(r1)
/* 8021E418 0021B378  7C 7D 1B 78 */	mr r29, r3
/* 8021E41C 0021B37C  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021E420 0021B380  C0 23 0A 00 */	lfs f1, 0xa00(r3)
/* 8021E424 0021B384  7C 9E 23 78 */	mr r30, r4
/* 8021E428 0021B388  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021E42C 0021B38C  40 81 02 B4 */	ble lbl_8021E6E0
/* 8021E430 0021B390  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8021E434 0021B394  7F C3 F3 78 */	mr r3, r30
/* 8021E438 0021B398  38 81 00 14 */	addi r4, r1, 0x14
/* 8021E43C 0021B39C  A0 1D 09 F6 */	lhz r0, 0x9f6(r29)
/* 8021E440 0021B3A0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8021E444 0021B3A4  4B E2 E1 31 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021E448 0021B3A8  7C 64 1B 78 */	mr r4, r3
/* 8021E44C 0021B3AC  38 61 00 3C */	addi r3, r1, 0x3c
/* 8021E450 0021B3B0  4B E9 0E FD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021E454 0021B3B4  80 63 00 04 */	lwz r3, 4(r3)
/* 8021E458 0021B3B8  28 03 00 00 */	cmplwi r3, 0
/* 8021E45C 0021B3BC  41 82 00 3C */	beq lbl_8021E498
/* 8021E460 0021B3C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8021E464 0021B3C4  7F C4 F3 78 */	mr r4, r30
/* 8021E468 0021B3C8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E46C 0021B3CC  7D 89 03 A6 */	mtctr r12
/* 8021E470 0021B3D0  4E 80 04 21 */	bctrl
/* 8021E474 0021B3D4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8021E478 0021B3D8  38 61 00 20 */	addi r3, r1, 0x20
/* 8021E47C 0021B3DC  C0 3D 06 B0 */	lfs f1, 0x6b0(r29)
/* 8021E480 0021B3E0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8021E484 0021B3E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8021E488 0021B3E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8021E48C 0021B3EC  4B E3 12 A5 */	bl "Max<f>__5CMathFRCfRCf"
/* 8021E490 0021B3F0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8021E494 0021B3F4  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8021E498:
/* 8021E498 0021B3F8  3B FD 09 FC */	addi r31, r29, 0x9fc
/* 8021E49C 0021B3FC  7F FC FB 78 */	mr r28, r31
/* 8021E4A0 0021B400  48 00 00 6C */	b lbl_8021E50C
lbl_8021E4A4:
/* 8021E4A4 0021B404  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8021E4A8 0021B408  7F C3 F3 78 */	mr r3, r30
/* 8021E4AC 0021B40C  38 81 00 10 */	addi r4, r1, 0x10
/* 8021E4B0 0021B410  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8021E4B4 0021B414  4B E2 E0 C1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021E4B8 0021B418  7C 64 1B 78 */	mr r4, r3
/* 8021E4BC 0021B41C  38 61 00 34 */	addi r3, r1, 0x34
/* 8021E4C0 0021B420  4B E9 0E 8D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021E4C4 0021B424  80 63 00 04 */	lwz r3, 4(r3)
/* 8021E4C8 0021B428  28 03 00 00 */	cmplwi r3, 0
/* 8021E4CC 0021B42C  41 82 00 3C */	beq lbl_8021E508
/* 8021E4D0 0021B430  81 83 00 00 */	lwz r12, 0(r3)
/* 8021E4D4 0021B434  7F C4 F3 78 */	mr r4, r30
/* 8021E4D8 0021B438  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E4DC 0021B43C  7D 89 03 A6 */	mtctr r12
/* 8021E4E0 0021B440  4E 80 04 21 */	bctrl
/* 8021E4E4 0021B444  C0 03 00 00 */	lfs f0, 0(r3)
/* 8021E4E8 0021B448  38 61 00 20 */	addi r3, r1, 0x20
/* 8021E4EC 0021B44C  C0 3D 06 B0 */	lfs f1, 0x6b0(r29)
/* 8021E4F0 0021B450  38 81 00 18 */	addi r4, r1, 0x18
/* 8021E4F4 0021B454  EC 01 00 28 */	fsubs f0, f1, f0
/* 8021E4F8 0021B458  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8021E4FC 0021B45C  4B E3 12 35 */	bl "Max<f>__5CMathFRCfRCf"
/* 8021E500 0021B460  C0 03 00 00 */	lfs f0, 0(r3)
/* 8021E504 0021B464  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8021E508:
/* 8021E508 0021B468  3B 9C 00 02 */	addi r28, r28, 2
lbl_8021E50C:
/* 8021E50C 0021B46C  80 1D 09 F8 */	lwz r0, 0x9f8(r29)
/* 8021E510 0021B470  54 00 08 3C */	slwi r0, r0, 1
/* 8021E514 0021B474  7C 1F 02 14 */	add r0, r31, r0
/* 8021E518 0021B478  7C 1C 00 40 */	cmplw r28, r0
/* 8021E51C 0021B47C  40 82 FF 88 */	bne lbl_8021E4A4
/* 8021E520 0021B480  C0 5D 0A 00 */	lfs f2, 0xa00(r29)
/* 8021E524 0021B484  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8021E528 0021B488  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021E52C 0021B48C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8021E530 0021B490  D0 3D 0A 00 */	stfs f1, 0xa00(r29)
/* 8021E534 0021B494  C0 3D 0A 00 */	lfs f1, 0xa00(r29)
/* 8021E538 0021B498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021E53C 0021B49C  4C 40 13 82 */	cror 2, 0, 2
/* 8021E540 0021B4A0  40 82 00 44 */	bne lbl_8021E584
/* 8021E544 0021B4A4  38 00 00 03 */	li r0, 3
/* 8021E548 0021B4A8  7F A3 EB 78 */	mr r3, r29
/* 8021E54C 0021B4AC  90 1D 05 6C */	stw r0, 0x56c(r29)
/* 8021E550 0021B4B0  7F C4 F3 78 */	mr r4, r30
/* 8021E554 0021B4B4  4B FF F4 7D */	bl sub_8021d9d0
/* 8021E558 0021B4B8  A0 FD 06 CC */	lhz r7, 0x6cc(r29)
/* 8021E55C 0021B4BC  7F A3 EB 78 */	mr r3, r29
/* 8021E560 0021B4C0  7F C4 F3 78 */	mr r4, r30
/* 8021E564 0021B4C4  38 BD 0A 2C */	addi r5, r29, 0xa2c
/* 8021E568 0021B4C8  38 DD 00 34 */	addi r6, r29, 0x34
/* 8021E56C 0021B4CC  39 00 00 00 */	li r8, 0
/* 8021E570 0021B4D0  4B FF F2 71 */	bl sub_8021d7e0
/* 8021E574 0021B4D4  7F A3 EB 78 */	mr r3, r29
/* 8021E578 0021B4D8  7F C4 F3 78 */	mr r4, r30
/* 8021E57C 0021B4DC  48 00 04 79 */	bl sub_8021e9f4
/* 8021E580 0021B4E0  48 00 00 A0 */	b lbl_8021E620
lbl_8021E584:
/* 8021E584 0021B4E4  7F A3 EB 78 */	mr r3, r29
/* 8021E588 0021B4E8  38 80 00 02 */	li r4, 2
/* 8021E58C 0021B4EC  4B FF F2 01 */	bl sub_8021d78c
/* 8021E590 0021B4F0  C0 1D 0A 00 */	lfs f0, 0xa00(r29)
/* 8021E594 0021B4F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8021E598 0021B4F8  40 80 00 3C */	bge lbl_8021E5D4
/* 8021E59C 0021B4FC  80 1D 05 6C */	lwz r0, 0x56c(r29)
/* 8021E5A0 0021B500  2C 00 00 02 */	cmpwi r0, 2
/* 8021E5A4 0021B504  41 82 00 7C */	beq lbl_8021E620
/* 8021E5A8 0021B508  A0 FD 06 CA */	lhz r7, 0x6ca(r29)
/* 8021E5AC 0021B50C  7F A3 EB 78 */	mr r3, r29
/* 8021E5B0 0021B510  7F C4 F3 78 */	mr r4, r30
/* 8021E5B4 0021B514  38 BD 0A 20 */	addi r5, r29, 0xa20
/* 8021E5B8 0021B518  38 DD 00 34 */	addi r6, r29, 0x34
/* 8021E5BC 0021B51C  39 00 00 00 */	li r8, 0
/* 8021E5C0 0021B520  4B FF F2 21 */	bl sub_8021d7e0
/* 8021E5C4 0021B524  38 00 00 02 */	li r0, 2
/* 8021E5C8 0021B528  90 1D 05 6C */	stw r0, 0x56c(r29)
/* 8021E5CC 0021B52C  90 1D 0A 04 */	stw r0, 0xa04(r29)
/* 8021E5D0 0021B530  48 00 00 50 */	b lbl_8021E620
lbl_8021E5D4:
/* 8021E5D4 0021B534  7F A3 EB 78 */	mr r3, r29
/* 8021E5D8 0021B538  38 80 00 01 */	li r4, 1
/* 8021E5DC 0021B53C  4B FF F1 B1 */	bl sub_8021d78c
/* 8021E5E0 0021B540  C0 1D 0A 00 */	lfs f0, 0xa00(r29)
/* 8021E5E4 0021B544  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8021E5E8 0021B548  40 80 00 38 */	bge lbl_8021E620
/* 8021E5EC 0021B54C  80 1D 05 6C */	lwz r0, 0x56c(r29)
/* 8021E5F0 0021B550  2C 00 00 01 */	cmpwi r0, 1
/* 8021E5F4 0021B554  41 82 00 2C */	beq lbl_8021E620
/* 8021E5F8 0021B558  A0 FD 06 C8 */	lhz r7, 0x6c8(r29)
/* 8021E5FC 0021B55C  7F A3 EB 78 */	mr r3, r29
/* 8021E600 0021B560  7F C4 F3 78 */	mr r4, r30
/* 8021E604 0021B564  38 BD 0A 14 */	addi r5, r29, 0xa14
/* 8021E608 0021B568  38 DD 00 34 */	addi r6, r29, 0x34
/* 8021E60C 0021B56C  39 00 00 00 */	li r8, 0
/* 8021E610 0021B570  4B FF F1 D1 */	bl sub_8021d7e0
/* 8021E614 0021B574  38 00 00 01 */	li r0, 1
/* 8021E618 0021B578  90 1D 05 6C */	stw r0, 0x56c(r29)
/* 8021E61C 0021B57C  90 1D 0A 04 */	stw r0, 0xa04(r29)
lbl_8021E620:
/* 8021E620 0021B580  80 1D 05 6C */	lwz r0, 0x56c(r29)
/* 8021E624 0021B584  2C 00 00 03 */	cmpwi r0, 3
/* 8021E628 0021B588  41 82 00 0C */	beq lbl_8021E634
/* 8021E62C 0021B58C  C3 FD 06 B0 */	lfs f31, 0x6b0(r29)
/* 8021E630 0021B590  48 00 00 08 */	b lbl_8021E638
lbl_8021E634:
/* 8021E634 0021B594  C3 FD 08 EC */	lfs f31, 0x8ec(r29)
lbl_8021E638:
/* 8021E638 0021B598  A0 1D 09 F6 */	lhz r0, 0x9f6(r29)
/* 8021E63C 0021B59C  7F C3 F3 78 */	mr r3, r30
/* 8021E640 0021B5A0  38 81 00 0C */	addi r4, r1, 0xc
/* 8021E644 0021B5A4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021E648 0021B5A8  4B E2 DF 2D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021E64C 0021B5AC  7C 64 1B 78 */	mr r4, r3
/* 8021E650 0021B5B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8021E654 0021B5B4  4B E9 0C F9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021E658 0021B5B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8021E65C 0021B5BC  28 03 00 00 */	cmplwi r3, 0
/* 8021E660 0021B5C0  41 82 00 1C */	beq lbl_8021E67C
/* 8021E664 0021B5C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8021E668 0021B5C8  7F C4 F3 78 */	mr r4, r30
/* 8021E66C 0021B5CC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E670 0021B5D0  7D 89 03 A6 */	mtctr r12
/* 8021E674 0021B5D4  4E 80 04 21 */	bctrl
/* 8021E678 0021B5D8  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_8021E67C:
/* 8021E67C 0021B5DC  7F FC FB 78 */	mr r28, r31
/* 8021E680 0021B5E0  48 00 00 4C */	b lbl_8021E6CC
lbl_8021E684:
/* 8021E684 0021B5E4  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8021E688 0021B5E8  7F C3 F3 78 */	mr r3, r30
/* 8021E68C 0021B5EC  38 81 00 08 */	addi r4, r1, 8
/* 8021E690 0021B5F0  B0 01 00 08 */	sth r0, 8(r1)
/* 8021E694 0021B5F4  4B E2 DE E1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021E698 0021B5F8  7C 64 1B 78 */	mr r4, r3
/* 8021E69C 0021B5FC  38 61 00 24 */	addi r3, r1, 0x24
/* 8021E6A0 0021B600  4B E9 0C AD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021E6A4 0021B604  80 63 00 04 */	lwz r3, 4(r3)
/* 8021E6A8 0021B608  28 03 00 00 */	cmplwi r3, 0
/* 8021E6AC 0021B60C  41 82 00 1C */	beq lbl_8021E6C8
/* 8021E6B0 0021B610  81 83 00 00 */	lwz r12, 0(r3)
/* 8021E6B4 0021B614  7F C4 F3 78 */	mr r4, r30
/* 8021E6B8 0021B618  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E6BC 0021B61C  7D 89 03 A6 */	mtctr r12
/* 8021E6C0 0021B620  4E 80 04 21 */	bctrl
/* 8021E6C4 0021B624  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_8021E6C8:
/* 8021E6C8 0021B628  3B 9C 00 02 */	addi r28, r28, 2
lbl_8021E6CC:
/* 8021E6CC 0021B62C  80 1D 09 F8 */	lwz r0, 0x9f8(r29)
/* 8021E6D0 0021B630  54 00 08 3C */	slwi r0, r0, 1
/* 8021E6D4 0021B634  7C 1F 02 14 */	add r0, r31, r0
/* 8021E6D8 0021B638  7C 1C 00 40 */	cmplw r28, r0
/* 8021E6DC 0021B63C  40 82 FF A8 */	bne lbl_8021E684
lbl_8021E6E0:
/* 8021E6E0 0021B640  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8021E6E4 0021B644  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8021E6E8 0021B648  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8021E6EC 0021B64C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8021E6F0 0021B650  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8021E6F4 0021B654  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8021E6F8 0021B658  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8021E6FC 0021B65C  7C 08 03 A6 */	mtlr r0
/* 8021E700 0021B660  38 21 00 70 */	addi r1, r1, 0x70
/* 8021E704 0021B664  4E 80 00 20 */	blr

.global sub_8021e708
sub_8021e708:
/* 8021E708 0021B668  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8021E70C 0021B66C  7C 08 02 A6 */	mflr r0
/* 8021E710 0021B670  90 01 00 74 */	stw r0, 0x74(r1)
/* 8021E714 0021B674  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8021E718 0021B678  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8021E71C 0021B67C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8021E720 0021B680  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8021E724 0021B684  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8021E728 0021B688  93 81 00 50 */	stw r28, 0x50(r1)
/* 8021E72C 0021B68C  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8021E730 0021B690  7C 7D 1B 78 */	mr r29, r3
/* 8021E734 0021B694  7C 9E 23 78 */	mr r30, r4
/* 8021E738 0021B698  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8021E73C 0021B69C  41 82 02 90 */	beq lbl_8021E9CC
/* 8021E740 0021B6A0  80 1D 05 6C */	lwz r0, 0x56c(r29)
/* 8021E744 0021B6A4  2C 00 00 03 */	cmpwi r0, 3
/* 8021E748 0021B6A8  40 82 02 80 */	bne lbl_8021E9C8
/* 8021E74C 0021B6AC  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021E750 0021B6B0  7F C3 F3 78 */	mr r3, r30
/* 8021E754 0021B6B4  38 81 00 14 */	addi r4, r1, 0x14
/* 8021E758 0021B6B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8021E75C 0021B6BC  A0 1D 09 F6 */	lhz r0, 0x9f6(r29)
/* 8021E760 0021B6C0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8021E764 0021B6C4  4B E2 DE 11 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021E768 0021B6C8  7C 64 1B 78 */	mr r4, r3
/* 8021E76C 0021B6CC  38 61 00 3C */	addi r3, r1, 0x3c
/* 8021E770 0021B6D0  4B E9 0B DD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021E774 0021B6D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8021E778 0021B6D8  28 03 00 00 */	cmplwi r3, 0
/* 8021E77C 0021B6DC  41 82 00 3C */	beq lbl_8021E7B8
/* 8021E780 0021B6E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8021E784 0021B6E4  7F C4 F3 78 */	mr r4, r30
/* 8021E788 0021B6E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E78C 0021B6EC  7D 89 03 A6 */	mtctr r12
/* 8021E790 0021B6F0  4E 80 04 21 */	bctrl
/* 8021E794 0021B6F4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8021E798 0021B6F8  38 61 00 20 */	addi r3, r1, 0x20
/* 8021E79C 0021B6FC  C0 3D 08 EC */	lfs f1, 0x8ec(r29)
/* 8021E7A0 0021B700  38 81 00 1C */	addi r4, r1, 0x1c
/* 8021E7A4 0021B704  EC 01 00 28 */	fsubs f0, f1, f0
/* 8021E7A8 0021B708  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8021E7AC 0021B70C  4B E3 0F 85 */	bl "Max<f>__5CMathFRCfRCf"
/* 8021E7B0 0021B710  C0 03 00 00 */	lfs f0, 0(r3)
/* 8021E7B4 0021B714  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8021E7B8:
/* 8021E7B8 0021B718  3B FD 09 FC */	addi r31, r29, 0x9fc
/* 8021E7BC 0021B71C  7F FC FB 78 */	mr r28, r31
/* 8021E7C0 0021B720  48 00 00 6C */	b lbl_8021E82C
lbl_8021E7C4:
/* 8021E7C4 0021B724  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8021E7C8 0021B728  7F C3 F3 78 */	mr r3, r30
/* 8021E7CC 0021B72C  38 81 00 10 */	addi r4, r1, 0x10
/* 8021E7D0 0021B730  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8021E7D4 0021B734  4B E2 DD A1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021E7D8 0021B738  7C 64 1B 78 */	mr r4, r3
/* 8021E7DC 0021B73C  38 61 00 34 */	addi r3, r1, 0x34
/* 8021E7E0 0021B740  4B E9 0B 6D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021E7E4 0021B744  80 63 00 04 */	lwz r3, 4(r3)
/* 8021E7E8 0021B748  28 03 00 00 */	cmplwi r3, 0
/* 8021E7EC 0021B74C  41 82 00 3C */	beq lbl_8021E828
/* 8021E7F0 0021B750  81 83 00 00 */	lwz r12, 0(r3)
/* 8021E7F4 0021B754  7F C4 F3 78 */	mr r4, r30
/* 8021E7F8 0021B758  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E7FC 0021B75C  7D 89 03 A6 */	mtctr r12
/* 8021E800 0021B760  4E 80 04 21 */	bctrl
/* 8021E804 0021B764  C0 03 00 00 */	lfs f0, 0(r3)
/* 8021E808 0021B768  38 61 00 20 */	addi r3, r1, 0x20
/* 8021E80C 0021B76C  C0 3D 08 EC */	lfs f1, 0x8ec(r29)
/* 8021E810 0021B770  38 81 00 18 */	addi r4, r1, 0x18
/* 8021E814 0021B774  EC 01 00 28 */	fsubs f0, f1, f0
/* 8021E818 0021B778  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8021E81C 0021B77C  4B E3 0F 15 */	bl "Max<f>__5CMathFRCfRCf"
/* 8021E820 0021B780  C0 03 00 00 */	lfs f0, 0(r3)
/* 8021E824 0021B784  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8021E828:
/* 8021E828 0021B788  3B 9C 00 02 */	addi r28, r28, 2
lbl_8021E82C:
/* 8021E82C 0021B78C  80 1D 09 F8 */	lwz r0, 0x9f8(r29)
/* 8021E830 0021B790  54 00 08 3C */	slwi r0, r0, 1
/* 8021E834 0021B794  7C 1F 02 14 */	add r0, r31, r0
/* 8021E838 0021B798  7C 1C 00 40 */	cmplw r28, r0
/* 8021E83C 0021B79C  40 82 FF 88 */	bne lbl_8021E7C4
/* 8021E840 0021B7A0  7F A3 EB 78 */	mr r3, r29
/* 8021E844 0021B7A4  7F C4 F3 78 */	mr r4, r30
/* 8021E848 0021B7A8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8021E84C 0021B7AC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E850 0021B7B0  7D 89 03 A6 */	mtctr r12
/* 8021E854 0021B7B4  4E 80 04 21 */	bctrl
/* 8021E858 0021B7B8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8021E85C 0021B7BC  7F A3 EB 78 */	mr r3, r29
/* 8021E860 0021B7C0  81 9D 00 00 */	lwz r12, 0(r29)
/* 8021E864 0021B7C4  7F C4 F3 78 */	mr r4, r30
/* 8021E868 0021B7C8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8021E86C 0021B7CC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E870 0021B7D0  EF E1 00 28 */	fsubs f31, f1, f0
/* 8021E874 0021B7D4  7D 89 03 A6 */	mtctr r12
/* 8021E878 0021B7D8  4E 80 04 21 */	bctrl
/* 8021E87C 0021B7DC  D3 E3 00 00 */	stfs f31, 0(r3)
/* 8021E880 0021B7E0  7F A3 EB 78 */	mr r3, r29
/* 8021E884 0021B7E4  7F C4 F3 78 */	mr r4, r30
/* 8021E888 0021B7E8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8021E88C 0021B7EC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E890 0021B7F0  7D 89 03 A6 */	mtctr r12
/* 8021E894 0021B7F4  4E 80 04 21 */	bctrl
/* 8021E898 0021B7F8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8021E89C 0021B7FC  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021E8A0 0021B800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021E8A4 0021B804  4C 40 13 82 */	cror 2, 0, 2
/* 8021E8A8 0021B808  40 82 00 6C */	bne lbl_8021E914
/* 8021E8AC 0021B80C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8021E8B0 0021B810  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8021E8B4 0021B814  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 8021E8B8 0021B818  7F A3 EB 78 */	mr r3, r29
/* 8021E8BC 0021B81C  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8021E8C0 0021B820  7F C4 F3 78 */	mr r4, r30
/* 8021E8C4 0021B824  38 C0 00 14 */	li r6, 0x14
/* 8021E8C8 0021B828  7D 89 03 A6 */	mtctr r12
/* 8021E8CC 0021B82C  4E 80 04 21 */	bctrl
/* 8021E8D0 0021B830  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 8021E8D4 0021B834  38 60 00 01 */	li r3, 1
/* 8021E8D8 0021B838  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8021E8DC 0021B83C  38 A0 00 00 */	li r5, 0
/* 8021E8E0 0021B840  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 8021E8E4 0021B844  7F A3 EB 78 */	mr r3, r29
/* 8021E8E8 0021B848  7F C4 F3 78 */	mr r4, r30
/* 8021E8EC 0021B84C  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 8021E8F0 0021B850  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 8021E8F4 0021B854  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 8021E8F8 0021B858  4B FF ED 4D */	bl sub_8021d644
/* 8021E8FC 0021B85C  7F A3 EB 78 */	mr r3, r29
/* 8021E900 0021B860  7F C6 F3 78 */	mr r6, r30
/* 8021E904 0021B864  38 80 00 29 */	li r4, 0x29
/* 8021E908 0021B868  38 A0 00 28 */	li r5, 0x28
/* 8021E90C 0021B86C  4B E3 55 C9 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8021E910 0021B870  48 00 00 BC */	b lbl_8021E9CC
lbl_8021E914:
/* 8021E914 0021B874  A0 1D 09 F6 */	lhz r0, 0x9f6(r29)
/* 8021E918 0021B878  7F C3 F3 78 */	mr r3, r30
/* 8021E91C 0021B87C  38 81 00 0C */	addi r4, r1, 0xc
/* 8021E920 0021B880  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021E924 0021B884  4B E2 DC 51 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021E928 0021B888  7C 64 1B 78 */	mr r4, r3
/* 8021E92C 0021B88C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8021E930 0021B890  4B E9 0A 1D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021E934 0021B894  80 63 00 04 */	lwz r3, 4(r3)
/* 8021E938 0021B898  28 03 00 00 */	cmplwi r3, 0
/* 8021E93C 0021B89C  41 82 00 20 */	beq lbl_8021E95C
/* 8021E940 0021B8A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8021E944 0021B8A4  7F C4 F3 78 */	mr r4, r30
/* 8021E948 0021B8A8  C3 FD 08 EC */	lfs f31, 0x8ec(r29)
/* 8021E94C 0021B8AC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E950 0021B8B0  7D 89 03 A6 */	mtctr r12
/* 8021E954 0021B8B4  4E 80 04 21 */	bctrl
/* 8021E958 0021B8B8  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_8021E95C:
/* 8021E95C 0021B8BC  7F FC FB 78 */	mr r28, r31
/* 8021E960 0021B8C0  48 00 00 50 */	b lbl_8021E9B0
lbl_8021E964:
/* 8021E964 0021B8C4  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8021E968 0021B8C8  7F C3 F3 78 */	mr r3, r30
/* 8021E96C 0021B8CC  38 81 00 08 */	addi r4, r1, 8
/* 8021E970 0021B8D0  B0 01 00 08 */	sth r0, 8(r1)
/* 8021E974 0021B8D4  4B E2 DC 01 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021E978 0021B8D8  7C 64 1B 78 */	mr r4, r3
/* 8021E97C 0021B8DC  38 61 00 24 */	addi r3, r1, 0x24
/* 8021E980 0021B8E0  4B E9 09 CD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021E984 0021B8E4  80 63 00 04 */	lwz r3, 4(r3)
/* 8021E988 0021B8E8  28 03 00 00 */	cmplwi r3, 0
/* 8021E98C 0021B8EC  41 82 00 20 */	beq lbl_8021E9AC
/* 8021E990 0021B8F0  81 83 00 00 */	lwz r12, 0(r3)
/* 8021E994 0021B8F4  7F C4 F3 78 */	mr r4, r30
/* 8021E998 0021B8F8  C3 FD 08 EC */	lfs f31, 0x8ec(r29)
/* 8021E99C 0021B8FC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021E9A0 0021B900  7D 89 03 A6 */	mtctr r12
/* 8021E9A4 0021B904  4E 80 04 21 */	bctrl
/* 8021E9A8 0021B908  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_8021E9AC:
/* 8021E9AC 0021B90C  3B 9C 00 02 */	addi r28, r28, 2
lbl_8021E9B0:
/* 8021E9B0 0021B910  80 1D 09 F8 */	lwz r0, 0x9f8(r29)
/* 8021E9B4 0021B914  54 00 08 3C */	slwi r0, r0, 1
/* 8021E9B8 0021B918  7C 1F 02 14 */	add r0, r31, r0
/* 8021E9BC 0021B91C  7C 1C 00 40 */	cmplw r28, r0
/* 8021E9C0 0021B920  40 82 FF A4 */	bne lbl_8021E964
/* 8021E9C4 0021B924  48 00 00 08 */	b lbl_8021E9CC
lbl_8021E9C8:
/* 8021E9C8 0021B928  4B FF FA 2D */	bl sub_8021e3f4
lbl_8021E9CC:
/* 8021E9CC 0021B92C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8021E9D0 0021B930  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8021E9D4 0021B934  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8021E9D8 0021B938  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8021E9DC 0021B93C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8021E9E0 0021B940  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8021E9E4 0021B944  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8021E9E8 0021B948  7C 08 03 A6 */	mtlr r0
/* 8021E9EC 0021B94C  38 21 00 70 */	addi r1, r1, 0x70
/* 8021E9F0 0021B950  4E 80 00 20 */	blr

.global sub_8021e9f4
sub_8021e9f4:
/* 8021E9F4 0021B954  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8021E9F8 0021B958  7C 08 02 A6 */	mflr r0
/* 8021E9FC 0021B95C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8021EA00 0021B960  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 8021EA04 0021B964  7C 7A 1B 78 */	mr r26, r3
/* 8021EA08 0021B968  7C 9B 23 78 */	mr r27, r4
/* 8021EA0C 0021B96C  81 83 00 00 */	lwz r12, 0(r3)
/* 8021EA10 0021B970  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021EA14 0021B974  7D 89 03 A6 */	mtctr r12
/* 8021EA18 0021B978  4E 80 04 21 */	bctrl
/* 8021EA1C 0021B97C  A0 1A 09 F6 */	lhz r0, 0x9f6(r26)
/* 8021EA20 0021B980  7C 7F 1B 78 */	mr r31, r3
/* 8021EA24 0021B984  7F 63 DB 78 */	mr r3, r27
/* 8021EA28 0021B988  38 81 00 0C */	addi r4, r1, 0xc
/* 8021EA2C 0021B98C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021EA30 0021B990  4B E2 DB 45 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021EA34 0021B994  7C 64 1B 78 */	mr r4, r3
/* 8021EA38 0021B998  38 61 00 18 */	addi r3, r1, 0x18
/* 8021EA3C 0021B99C  4B E9 09 11 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021EA40 0021B9A0  83 C3 00 04 */	lwz r30, 4(r3)
/* 8021EA44 0021B9A4  28 1E 00 00 */	cmplwi r30, 0
/* 8021EA48 0021B9A8  41 82 00 38 */	beq lbl_8021EA80
/* 8021EA4C 0021B9AC  7F C3 F3 78 */	mr r3, r30
/* 8021EA50 0021B9B0  7F 64 DB 78 */	mr r4, r27
/* 8021EA54 0021B9B4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8021EA58 0021B9B8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021EA5C 0021B9BC  7D 89 03 A6 */	mtctr r12
/* 8021EA60 0021B9C0  4E 80 04 21 */	bctrl
/* 8021EA64 0021B9C4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8021EA68 0021B9C8  38 9A 09 8C */	addi r4, r26, 0x98c
/* 8021EA6C 0021B9CC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8021EA70 0021B9D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8021EA74 0021B9D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8021EA78 0021B9D8  7F C3 F3 78 */	mr r3, r30
/* 8021EA7C 0021B9DC  4B F8 A1 1D */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_8021EA80:
/* 8021EA80 0021B9E0  3B DA 09 FC */	addi r30, r26, 0x9fc
/* 8021EA84 0021B9E4  7F DD F3 78 */	mr r29, r30
/* 8021EA88 0021B9E8  48 00 00 68 */	b lbl_8021EAF0
lbl_8021EA8C:
/* 8021EA8C 0021B9EC  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8021EA90 0021B9F0  7F 63 DB 78 */	mr r3, r27
/* 8021EA94 0021B9F4  38 81 00 08 */	addi r4, r1, 8
/* 8021EA98 0021B9F8  B0 01 00 08 */	sth r0, 8(r1)
/* 8021EA9C 0021B9FC  4B E2 DA D9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021EAA0 0021BA00  7C 64 1B 78 */	mr r4, r3
/* 8021EAA4 0021BA04  38 61 00 10 */	addi r3, r1, 0x10
/* 8021EAA8 0021BA08  4B E9 08 A5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021EAAC 0021BA0C  83 83 00 04 */	lwz r28, 4(r3)
/* 8021EAB0 0021BA10  28 1C 00 00 */	cmplwi r28, 0
/* 8021EAB4 0021BA14  41 82 00 38 */	beq lbl_8021EAEC
/* 8021EAB8 0021BA18  7F 83 E3 78 */	mr r3, r28
/* 8021EABC 0021BA1C  7F 64 DB 78 */	mr r4, r27
/* 8021EAC0 0021BA20  81 9C 00 00 */	lwz r12, 0(r28)
/* 8021EAC4 0021BA24  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021EAC8 0021BA28  7D 89 03 A6 */	mtctr r12
/* 8021EACC 0021BA2C  4E 80 04 21 */	bctrl
/* 8021EAD0 0021BA30  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8021EAD4 0021BA34  38 9A 09 8C */	addi r4, r26, 0x98c
/* 8021EAD8 0021BA38  D0 03 00 00 */	stfs f0, 0(r3)
/* 8021EADC 0021BA3C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8021EAE0 0021BA40  D0 03 00 04 */	stfs f0, 4(r3)
/* 8021EAE4 0021BA44  7F 83 E3 78 */	mr r3, r28
/* 8021EAE8 0021BA48  4B F8 A0 B1 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_8021EAEC:
/* 8021EAEC 0021BA4C  3B BD 00 02 */	addi r29, r29, 2
lbl_8021EAF0:
/* 8021EAF0 0021BA50  80 1A 09 F8 */	lwz r0, 0x9f8(r26)
/* 8021EAF4 0021BA54  54 00 08 3C */	slwi r0, r0, 1
/* 8021EAF8 0021BA58  7C 1E 02 14 */	add r0, r30, r0
/* 8021EAFC 0021BA5C  7C 1D 00 40 */	cmplw r29, r0
/* 8021EB00 0021BA60  40 82 FF 8C */	bne lbl_8021EA8C
/* 8021EB04 0021BA64  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 8021EB08 0021BA68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8021EB0C 0021BA6C  7C 08 03 A6 */	mtlr r0
/* 8021EB10 0021BA70  38 21 00 40 */	addi r1, r1, 0x40
/* 8021EB14 0021BA74  4E 80 00 20 */	blr

.global sub_8021eb18
sub_8021eb18:
/* 8021EB18 0021BA78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8021EB1C 0021BA7C  7C 08 02 A6 */	mflr r0
/* 8021EB20 0021BA80  90 01 00 64 */	stw r0, 0x64(r1)
/* 8021EB24 0021BA84  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8021EB28 0021BA88  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8021EB2C 0021BA8C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8021EB30 0021BA90  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 8021EB34 0021BA94  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 8021EB38 0021BA98  81 83 00 00 */	lwz r12, 0(r3)
/* 8021EB3C 0021BA9C  7C 79 1B 78 */	mr r25, r3
/* 8021EB40 0021BAA0  7C 9A 23 78 */	mr r26, r4
/* 8021EB44 0021BAA4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021EB48 0021BAA8  7D 89 03 A6 */	mtctr r12
/* 8021EB4C 0021BAAC  4E 80 04 21 */	bctrl
/* 8021EB50 0021BAB0  7C 7F 1B 78 */	mr r31, r3
/* 8021EB54 0021BAB4  7F 43 D3 78 */	mr r3, r26
/* 8021EB58 0021BAB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8021EB5C 0021BABC  38 81 00 0C */	addi r4, r1, 0xc
/* 8021EB60 0021BAC0  D0 19 08 EC */	stfs f0, 0x8ec(r25)
/* 8021EB64 0021BAC4  A0 19 09 F6 */	lhz r0, 0x9f6(r25)
/* 8021EB68 0021BAC8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021EB6C 0021BACC  4B E2 DA 09 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021EB70 0021BAD0  7C 64 1B 78 */	mr r4, r3
/* 8021EB74 0021BAD4  38 61 00 18 */	addi r3, r1, 0x18
/* 8021EB78 0021BAD8  4B E9 07 D5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021EB7C 0021BADC  80 63 00 04 */	lwz r3, 4(r3)
/* 8021EB80 0021BAE0  28 03 00 00 */	cmplwi r3, 0
/* 8021EB84 0021BAE4  41 82 00 20 */	beq lbl_8021EBA4
/* 8021EB88 0021BAE8  81 83 00 00 */	lwz r12, 0(r3)
/* 8021EB8C 0021BAEC  7F 44 D3 78 */	mr r4, r26
/* 8021EB90 0021BAF0  C3 F9 06 B0 */	lfs f31, 0x6b0(r25)
/* 8021EB94 0021BAF4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021EB98 0021BAF8  7D 89 03 A6 */	mtctr r12
/* 8021EB9C 0021BAFC  4E 80 04 21 */	bctrl
/* 8021EBA0 0021BB00  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_8021EBA4:
/* 8021EBA4 0021BB04  3B B9 09 FC */	addi r29, r25, 0x9fc
/* 8021EBA8 0021BB08  3B D9 06 40 */	addi r30, r25, 0x640
/* 8021EBAC 0021BB0C  7F BC EB 78 */	mr r28, r29
/* 8021EBB0 0021BB10  48 00 00 68 */	b lbl_8021EC18
lbl_8021EBB4:
/* 8021EBB4 0021BB14  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8021EBB8 0021BB18  7F 43 D3 78 */	mr r3, r26
/* 8021EBBC 0021BB1C  38 81 00 08 */	addi r4, r1, 8
/* 8021EBC0 0021BB20  B0 01 00 08 */	sth r0, 8(r1)
/* 8021EBC4 0021BB24  4B E2 D9 B1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021EBC8 0021BB28  7C 64 1B 78 */	mr r4, r3
/* 8021EBCC 0021BB2C  38 61 00 10 */	addi r3, r1, 0x10
/* 8021EBD0 0021BB30  4B E9 07 7D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021EBD4 0021BB34  83 63 00 04 */	lwz r27, 4(r3)
/* 8021EBD8 0021BB38  28 1B 00 00 */	cmplwi r27, 0
/* 8021EBDC 0021BB3C  41 82 00 38 */	beq lbl_8021EC14
/* 8021EBE0 0021BB40  7F 63 DB 78 */	mr r3, r27
/* 8021EBE4 0021BB44  7F 44 D3 78 */	mr r4, r26
/* 8021EBE8 0021BB48  81 9B 00 00 */	lwz r12, 0(r27)
/* 8021EBEC 0021BB4C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8021EBF0 0021BB50  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021EBF4 0021BB54  C3 D9 06 B0 */	lfs f30, 0x6b0(r25)
/* 8021EBF8 0021BB58  7D 89 03 A6 */	mtctr r12
/* 8021EBFC 0021BB5C  4E 80 04 21 */	bctrl
/* 8021EC00 0021BB60  D3 C3 00 00 */	stfs f30, 0(r3)
/* 8021EC04 0021BB64  7F C4 F3 78 */	mr r4, r30
/* 8021EC08 0021BB68  D3 E3 00 04 */	stfs f31, 4(r3)
/* 8021EC0C 0021BB6C  7F 63 DB 78 */	mr r3, r27
/* 8021EC10 0021BB70  4B F8 9F 89 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_8021EC14:
/* 8021EC14 0021BB74  3B 9C 00 02 */	addi r28, r28, 2
lbl_8021EC18:
/* 8021EC18 0021BB78  80 19 09 F8 */	lwz r0, 0x9f8(r25)
/* 8021EC1C 0021BB7C  54 00 08 3C */	slwi r0, r0, 1
/* 8021EC20 0021BB80  7C 1D 02 14 */	add r0, r29, r0
/* 8021EC24 0021BB84  7C 1C 00 40 */	cmplw r28, r0
/* 8021EC28 0021BB88  40 82 FF 8C */	bne lbl_8021EBB4
/* 8021EC2C 0021BB8C  C0 19 06 B0 */	lfs f0, 0x6b0(r25)
/* 8021EC30 0021BB90  D0 19 0A 00 */	stfs f0, 0xa00(r25)
/* 8021EC34 0021BB94  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8021EC38 0021BB98  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8021EC3C 0021BB9C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8021EC40 0021BBA0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8021EC44 0021BBA4  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 8021EC48 0021BBA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8021EC4C 0021BBAC  7C 08 03 A6 */	mtlr r0
/* 8021EC50 0021BBB0  38 21 00 60 */	addi r1, r1, 0x60
/* 8021EC54 0021BBB4  4E 80 00 20 */	blr

.global sub_8021ec58
sub_8021ec58:
/* 8021EC58 0021BBB8  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8021EC5C 0021BBBC  7C 08 02 A6 */	mflr r0
/* 8021EC60 0021BBC0  90 01 01 54 */	stw r0, 0x154(r1)
/* 8021EC64 0021BBC4  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 8021EC68 0021BBC8  F3 E1 01 48 */	psq_st f31, 328(r1), 0, qr0
/* 8021EC6C 0021BBCC  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 8021EC70 0021BBD0  F3 C1 01 38 */	psq_st f30, 312(r1), 0, qr0
/* 8021EC74 0021BBD4  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 8021EC78 0021BBD8  F3 A1 01 28 */	psq_st f29, 296(r1), 0, qr0
/* 8021EC7C 0021BBDC  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 8021EC80 0021BBE0  F3 81 01 18 */	psq_st f28, 280(r1), 0, qr0
/* 8021EC84 0021BBE4  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 8021EC88 0021BBE8  F3 61 01 08 */	psq_st f27, 264(r1), 0, qr0
/* 8021EC8C 0021BBEC  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8021EC90 0021BBF0  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8021EC94 0021BBF4  7C 7E 1B 78 */	mr r30, r3
/* 8021EC98 0021BBF8  FF C0 08 90 */	fmr f30, f1
/* 8021EC9C 0021BBFC  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8021ECA0 0021BC00  7C 9F 23 78 */	mr r31, r4
/* 8021ECA4 0021BC04  80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 8021ECA8 0021BC08  2C 00 00 00 */	cmpwi r0, 0
/* 8021ECAC 0021BC0C  41 82 02 34 */	beq lbl_8021EEE0
/* 8021ECB0 0021BC10  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8021ECB4 0021BC14  2C 00 00 03 */	cmpwi r0, 3
/* 8021ECB8 0021BC18  41 82 02 28 */	beq lbl_8021EEE0
/* 8021ECBC 0021BC1C  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 8021ECC0 0021BC20  7F E5 FB 78 */	mr r5, r31
/* 8021ECC4 0021BC24  38 61 00 48 */	addi r3, r1, 0x48
/* 8021ECC8 0021BC28  38 C1 00 08 */	addi r6, r1, 8
/* 8021ECCC 0021BC2C  98 01 00 08 */	stb r0, 8(r1)
/* 8021ECD0 0021BC30  80 9E 09 28 */	lwz r4, 0x928(r30)
/* 8021ECD4 0021BC34  4B F8 83 C1 */	bl sub_801a7094
/* 8021ECD8 0021BC38  88 01 00 54 */	lbz r0, 0x54(r1)
/* 8021ECDC 0021BC3C  28 00 00 00 */	cmplwi r0, 0
/* 8021ECE0 0021BC40  98 01 00 88 */	stb r0, 0x88(r1)
/* 8021ECE4 0021BC44  41 82 00 24 */	beq lbl_8021ED08
/* 8021ECE8 0021BC48  34 61 00 7C */	addic. r3, r1, 0x7c
/* 8021ECEC 0021BC4C  41 82 00 1C */	beq lbl_8021ED08
/* 8021ECF0 0021BC50  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8021ECF4 0021BC54  D0 03 00 00 */	stfs f0, 0(r3)
/* 8021ECF8 0021BC58  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8021ECFC 0021BC5C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8021ED00 0021BC60  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8021ED04 0021BC64  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8021ED08:
/* 8021ED08 0021BC68  88 01 00 88 */	lbz r0, 0x88(r1)
/* 8021ED0C 0021BC6C  38 60 00 00 */	li r3, 0
/* 8021ED10 0021BC70  98 61 00 54 */	stb r3, 0x54(r1)
/* 8021ED14 0021BC74  28 00 00 00 */	cmplwi r0, 0
/* 8021ED18 0021BC78  41 82 01 C0 */	beq lbl_8021EED8
/* 8021ED1C 0021BC7C  83 FF 08 4C */	lwz r31, 0x84c(r31)
/* 8021ED20 0021BC80  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8021ED24 0021BC84  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 8021ED28 0021BC88  38 BE 00 34 */	addi r5, r30, 0x34
/* 8021ED2C 0021BC8C  4B EF 6A 89 */	bl GetBounds__10CModelDataCFRC12CTransform4f
/* 8021ED30 0021BC90  C0 A1 00 A4 */	lfs f5, 0xa4(r1)
/* 8021ED34 0021BC94  7F E4 FB 78 */	mr r4, r31
/* 8021ED38 0021BC98  C0 81 00 A8 */	lfs f4, 0xa8(r1)
/* 8021ED3C 0021BC9C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8021ED40 0021BCA0  C0 61 00 AC */	lfs f3, 0xac(r1)
/* 8021ED44 0021BCA4  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 8021ED48 0021BCA8  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 8021ED4C 0021BCAC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8021ED50 0021BCB0  D0 A1 00 D4 */	stfs f5, 0xd4(r1)
/* 8021ED54 0021BCB4  D0 81 00 D8 */	stfs f4, 0xd8(r1)
/* 8021ED58 0021BCB8  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 8021ED5C 0021BCBC  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 8021ED60 0021BCC0  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 8021ED64 0021BCC4  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 8021ED68 0021BCC8  4B EF BB C5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8021ED6C 0021BCCC  C0 A1 00 8C */	lfs f5, 0x8c(r1)
/* 8021ED70 0021BCD0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8021ED74 0021BCD4  C0 81 00 90 */	lfs f4, 0x90(r1)
/* 8021ED78 0021BCD8  38 81 00 BC */	addi r4, r1, 0xbc
/* 8021ED7C 0021BCDC  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 8021ED80 0021BCE0  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 8021ED84 0021BCE4  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 8021ED88 0021BCE8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8021ED8C 0021BCEC  D0 A1 00 BC */	stfs f5, 0xbc(r1)
/* 8021ED90 0021BCF0  D0 81 00 C0 */	stfs f4, 0xc0(r1)
/* 8021ED94 0021BCF4  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 8021ED98 0021BCF8  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 8021ED9C 0021BCFC  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 8021EDA0 0021BD00  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8021EDA4 0021BD04  48 11 8D E1 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 8021EDA8 0021BD08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021EDAC 0021BD0C  41 82 01 2C */	beq lbl_8021EED8
/* 8021EDB0 0021BD10  38 61 00 7C */	addi r3, r1, 0x7c
/* 8021EDB4 0021BD14  48 0F 5B 05 */	bl Magnitude__9CVector3fCFv
/* 8021EDB8 0021BD18  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8021EDBC 0021BD1C  C0 02 B4 2C */	lfs f0, lbl_805AD14C@sda21(r2)
/* 8021EDC0 0021BD20  C0 43 00 04 */	lfs f2, 4(r3)
/* 8021EDC4 0021BD24  C0 63 00 00 */	lfs f3, 0(r3)
/* 8021EDC8 0021BD28  EC A0 00 B2 */	fmuls f5, f0, f2
/* 8021EDCC 0021BD2C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8021EDD0 0021BD30  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8021EDD4 0021BD34  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 8021EDD8 0021BD38  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8021EDDC 0021BD3C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8021EDE0 0021BD40  40 81 00 F8 */	ble lbl_8021EED8
/* 8021EDE4 0021BD44  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 8021EDE8 0021BD48  EF 61 28 28 */	fsubs f27, f1, f5
/* 8021EDEC 0021BD4C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8021EDF0 0021BD50  38 61 00 24 */	addi r3, r1, 0x24
/* 8021EDF4 0021BD54  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8021EDF8 0021BD58  38 81 00 7C */	addi r4, r1, 0x7c
/* 8021EDFC 0021BD5C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8021EE00 0021BD60  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8021EE04 0021BD64  EF E4 00 28 */	fsubs f31, f4, f0
/* 8021EE08 0021BD68  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8021EE0C 0021BD6C  EF 83 10 28 */	fsubs f28, f3, f2
/* 8021EE10 0021BD70  EF A1 00 28 */	fsubs f29, f1, f0
/* 8021EE14 0021BD74  48 0F 5A 3D */	bl AsNormalized__9CVector3fCFv
/* 8021EE18 0021BD78  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8021EE1C 0021BD7C  EC 1C 07 32 */	fmuls f0, f28, f28
/* 8021EE20 0021BD80  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8021EE24 0021BD84  38 61 00 18 */	addi r3, r1, 0x18
/* 8021EE28 0021BD88  EC 5B 00 72 */	fmuls f2, f27, f1
/* 8021EE2C 0021BD8C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8021EE30 0021BD90  EC 7B 00 F2 */	fmuls f3, f27, f3
/* 8021EE34 0021BD94  EC 9B 00 72 */	fmuls f4, f27, f1
/* 8021EE38 0021BD98  38 9E 00 34 */	addi r4, r30, 0x34
/* 8021EE3C 0021BD9C  EC 3C 00 B2 */	fmuls f1, f28, f2
/* 8021EE40 0021BDA0  EC 1F 07 FA */	fmadds f0, f31, f31, f0
/* 8021EE44 0021BDA4  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8021EE48 0021BDA8  38 A1 00 70 */	addi r5, r1, 0x70
/* 8021EE4C 0021BDAC  EC 3F 08 FA */	fmadds f1, f31, f3, f1
/* 8021EE50 0021BDB0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8021EE54 0021BDB4  EC 1D 07 7A */	fmadds f0, f29, f29, f0
/* 8021EE58 0021BDB8  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 8021EE5C 0021BDBC  EC 3D 09 3A */	fmadds f1, f29, f4, f1
/* 8021EE60 0021BDC0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8021EE64 0021BDC4  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8021EE68 0021BDC8  EC 20 07 32 */	fmuls f1, f0, f28
/* 8021EE6C 0021BDCC  EC 00 07 72 */	fmuls f0, f0, f29
/* 8021EE70 0021BDD0  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8021EE74 0021BDD4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8021EE78 0021BDD8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8021EE7C 0021BDDC  48 0F 3B A9 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8021EE80 0021BDE0  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 8021EE84 0021BDE4  FC 20 F0 90 */	fmr f1, f30
/* 8021EE88 0021BDE8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8021EE8C 0021BDEC  7F C4 F3 78 */	mr r4, r30
/* 8021EE90 0021BDF0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8021EE94 0021BDF4  38 61 00 0C */	addi r3, r1, 0xc
/* 8021EE98 0021BDF8  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 8021EE9C 0021BDFC  38 A1 00 64 */	addi r5, r1, 0x64
/* 8021EEA0 0021BE00  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8021EEA4 0021BE04  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8021EEA8 0021BE08  4B EF C1 61 */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8021EEAC 0021BE0C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8021EEB0 0021BE10  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8021EEB4 0021BE14  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8021EEB8 0021BE18  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8021EEBC 0021BE1C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8021EEC0 0021BE20  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8021EEC4 0021BE24  4B DF C6 71 */	bl Identity__10CAxisAngleFv
/* 8021EEC8 0021BE28  7C 65 1B 78 */	mr r5, r3
/* 8021EECC 0021BE2C  7F C3 F3 78 */	mr r3, r30
/* 8021EED0 0021BE30  38 81 00 58 */	addi r4, r1, 0x58
/* 8021EED4 0021BE34  4B EF D4 C5 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_8021EED8:
/* 8021EED8 0021BE38  38 00 00 00 */	li r0, 0
/* 8021EEDC 0021BE3C  98 01 00 88 */	stb r0, 0x88(r1)
lbl_8021EEE0:
/* 8021EEE0 0021BE40  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 8021EEE4 0021BE44  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8021EEE8 0021BE48  E3 C1 01 38 */	psq_l f30, 312(r1), 0, qr0
/* 8021EEEC 0021BE4C  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 8021EEF0 0021BE50  E3 A1 01 28 */	psq_l f29, 296(r1), 0, qr0
/* 8021EEF4 0021BE54  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 8021EEF8 0021BE58  E3 81 01 18 */	psq_l f28, 280(r1), 0, qr0
/* 8021EEFC 0021BE5C  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 8021EF00 0021BE60  E3 61 01 08 */	psq_l f27, 264(r1), 0, qr0
/* 8021EF04 0021BE64  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 8021EF08 0021BE68  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8021EF0C 0021BE6C  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8021EF10 0021BE70  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 8021EF14 0021BE74  7C 08 03 A6 */	mtlr r0
/* 8021EF18 0021BE78  38 21 01 50 */	addi r1, r1, 0x150
/* 8021EF1C 0021BE7C  4E 80 00 20 */	blr

.global sub_8021ef20
sub_8021ef20:
/* 8021EF20 0021BE80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021EF24 0021BE84  7C 08 02 A6 */	mflr r0
/* 8021EF28 0021BE88  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021EF2C 0021BE8C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021EF30 0021BE90  3B E0 00 00 */	li r31, 0
/* 8021EF34 0021BE94  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8021EF38 0021BE98  7C BE 2B 78 */	mr r30, r5
/* 8021EF3C 0021BE9C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8021EF40 0021BEA0  7C 9D 23 78 */	mr r29, r4
/* 8021EF44 0021BEA4  93 81 00 20 */	stw r28, 0x20(r1)
/* 8021EF48 0021BEA8  7C 7C 1B 78 */	mr r28, r3
/* 8021EF4C 0021BEAC  48 00 00 5C */	b lbl_8021EFA8
lbl_8021EF50:
/* 8021EF50 0021BEB0  80 7C 09 28 */	lwz r3, 0x928(r28)
/* 8021EF54 0021BEB4  7F E4 FB 78 */	mr r4, r31
/* 8021EF58 0021BEB8  4B F8 82 E1 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8021EF5C 0021BEBC  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8021EF60 0021BEC0  7F A3 EB 78 */	mr r3, r29
/* 8021EF64 0021BEC4  38 81 00 08 */	addi r4, r1, 8
/* 8021EF68 0021BEC8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021EF6C 0021BECC  B0 01 00 08 */	sth r0, 8(r1)
/* 8021EF70 0021BED0  4B E2 D6 05 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021EF74 0021BED4  7C 64 1B 78 */	mr r4, r3
/* 8021EF78 0021BED8  38 61 00 10 */	addi r3, r1, 0x10
/* 8021EF7C 0021BEDC  4B E9 03 D1 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021EF80 0021BEE0  80 63 00 04 */	lwz r3, 4(r3)
/* 8021EF84 0021BEE4  28 03 00 00 */	cmplwi r3, 0
/* 8021EF88 0021BEE8  41 82 00 1C */	beq lbl_8021EFA4
/* 8021EF8C 0021BEEC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8021EF90 0021BEF0  D0 03 03 04 */	stfs f0, 0x304(r3)
/* 8021EF94 0021BEF4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8021EF98 0021BEF8  D0 03 03 08 */	stfs f0, 0x308(r3)
/* 8021EF9C 0021BEFC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8021EFA0 0021BF00  D0 03 03 0C */	stfs f0, 0x30c(r3)
lbl_8021EFA4:
/* 8021EFA4 0021BF04  3B FF 00 01 */	addi r31, r31, 1
lbl_8021EFA8:
/* 8021EFA8 0021BF08  80 7C 09 28 */	lwz r3, 0x928(r28)
/* 8021EFAC 0021BF0C  4B F8 82 9D */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8021EFB0 0021BF10  7C 1F 18 40 */	cmplw r31, r3
/* 8021EFB4 0021BF14  41 80 FF 9C */	blt lbl_8021EF50
/* 8021EFB8 0021BF18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021EFBC 0021BF1C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8021EFC0 0021BF20  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8021EFC4 0021BF24  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8021EFC8 0021BF28  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8021EFCC 0021BF2C  7C 08 03 A6 */	mtlr r0
/* 8021EFD0 0021BF30  38 21 00 30 */	addi r1, r1, 0x30
/* 8021EFD4 0021BF34  4E 80 00 20 */	blr

.global sub_8021efd8
sub_8021efd8:
/* 8021EFD8 0021BF38  80 03 09 F8 */	lwz r0, 0x9f8(r3)
/* 8021EFDC 0021BF3C  38 63 09 FC */	addi r3, r3, 0x9fc
/* 8021EFE0 0021BF40  7C 66 1B 78 */	mr r6, r3
/* 8021EFE4 0021BF44  54 00 08 3C */	slwi r0, r0, 1
/* 8021EFE8 0021BF48  7C A3 02 14 */	add r5, r3, r0
/* 8021EFEC 0021BF4C  48 00 00 20 */	b lbl_8021F00C
lbl_8021EFF0:
/* 8021EFF0 0021BF50  A0 66 00 00 */	lhz r3, 0(r6)
/* 8021EFF4 0021BF54  A0 04 00 00 */	lhz r0, 0(r4)
/* 8021EFF8 0021BF58  7C 03 00 40 */	cmplw r3, r0
/* 8021EFFC 0021BF5C  40 82 00 0C */	bne lbl_8021F008
/* 8021F000 0021BF60  38 60 00 01 */	li r3, 1
/* 8021F004 0021BF64  4E 80 00 20 */	blr
lbl_8021F008:
/* 8021F008 0021BF68  38 C6 00 02 */	addi r6, r6, 2
lbl_8021F00C:
/* 8021F00C 0021BF6C  7C 06 28 40 */	cmplw r6, r5
/* 8021F010 0021BF70  40 82 FF E0 */	bne lbl_8021EFF0
/* 8021F014 0021BF74  38 60 00 00 */	li r3, 0
/* 8021F018 0021BF78  4E 80 00 20 */	blr

.global sub_8021f01c
sub_8021f01c:
/* 8021F01C 0021BF7C  A0 84 00 00 */	lhz r4, 0(r4)
/* 8021F020 0021BF80  A0 03 09 F6 */	lhz r0, 0x9f6(r3)
/* 8021F024 0021BF84  7C 04 00 50 */	subf r0, r4, r0
/* 8021F028 0021BF88  7C 00 00 34 */	cntlzw r0, r0
/* 8021F02C 0021BF8C  54 03 D9 7E */	srwi r3, r0, 5
/* 8021F030 0021BF90  4E 80 00 20 */	blr

.global sub_8021f034
sub_8021f034:
/* 8021F034 0021BF94  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8021F038 0021BF98  7C 08 02 A6 */	mflr r0
/* 8021F03C 0021BF9C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8021F040 0021BFA0  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 8021F044 0021BFA4  7C B9 2B 78 */	mr r25, r5
/* 8021F048 0021BFA8  7C DA 33 78 */	mr r26, r6
/* 8021F04C 0021BFAC  7C 9E 23 78 */	mr r30, r4
/* 8021F050 0021BFB0  3B A1 00 60 */	addi r29, r1, 0x60
/* 8021F054 0021BFB4  3B 81 00 A4 */	addi r28, r1, 0xa4
/* 8021F058 0021BFB8  3B 60 00 00 */	li r27, 0
/* 8021F05C 0021BFBC  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8021F060 0021BFC0  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8021F064 0021BFC4  48 00 01 20 */	b lbl_8021F184
lbl_8021F068:
/* 8021F068 0021BFC8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8021F06C 0021BFCC  38 61 00 24 */	addi r3, r1, 0x24
/* 8021F070 0021BFD0  4B DE 5C 49 */	bl string_l__4rstlFPCc
/* 8021F074 0021BFD4  7F E4 FB 78 */	mr r4, r31
/* 8021F078 0021BFD8  38 61 00 0C */	addi r3, r1, 0xc
/* 8021F07C 0021BFDC  38 A1 00 24 */	addi r5, r1, 0x24
/* 8021F080 0021BFE0  4B E0 F7 B9 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8021F084 0021BFE4  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8021F088 0021BFE8  38 61 00 24 */	addi r3, r1, 0x24
/* 8021F08C 0021BFEC  98 01 00 10 */	stb r0, 0x10(r1)
/* 8021F090 0021BFF0  48 11 EA 51 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8021F094 0021BFF4  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8021F098 0021BFF8  28 00 00 FF */	cmplwi r0, 0xff
/* 8021F09C 0021BFFC  41 82 00 E0 */	beq lbl_8021F17C
/* 8021F0A0 0021C000  80 9E 00 00 */	lwz r4, 0(r30)
/* 8021F0A4 0021C004  38 61 00 14 */	addi r3, r1, 0x14
/* 8021F0A8 0021C008  4B DE 5C 11 */	bl string_l__4rstlFPCc
/* 8021F0AC 0021C00C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8021F0B0 0021C010  38 61 00 34 */	addi r3, r1, 0x34
/* 8021F0B4 0021C014  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8021F0B8 0021C018  38 81 00 08 */	addi r4, r1, 8
/* 8021F0BC 0021C01C  98 01 00 08 */	stb r0, 8(r1)
/* 8021F0C0 0021C020  38 A1 00 14 */	addi r5, r1, 0x14
/* 8021F0C4 0021C024  C0 42 B4 30 */	lfs f2, lbl_805AD150@sda21(r2)
/* 8021F0C8 0021C028  4B F8 97 45 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 8021F0CC 0021C02C  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 8021F0D0 0021C030  7F 83 E3 78 */	mr r3, r28
/* 8021F0D4 0021C034  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 8021F0D8 0021C038  7F A4 EB 78 */	mr r4, r29
/* 8021F0DC 0021C03C  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 8021F0E0 0021C040  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 8021F0E4 0021C044  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 8021F0E8 0021C048  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 8021F0EC 0021C04C  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 8021F0F0 0021C050  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 8021F0F4 0021C054  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 8021F0F8 0021C058  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8021F0FC 0021C05C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8021F100 0021C060  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8021F104 0021C064  90 E1 00 78 */	stw r7, 0x78(r1)
/* 8021F108 0021C068  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 8021F10C 0021C06C  98 A1 00 80 */	stb r5, 0x80(r1)
/* 8021F110 0021C070  98 01 00 81 */	stb r0, 0x81(r1)
/* 8021F114 0021C074  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 8021F118 0021C078  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 8021F11C 0021C07C  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 8021F120 0021C080  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8021F124 0021C084  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 8021F128 0021C088  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8021F12C 0021C08C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8021F130 0021C090  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8021F134 0021C094  48 11 F0 2D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8021F138 0021C098  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 8021F13C 0021C09C  28 1D 00 00 */	cmplwi r29, 0
/* 8021F140 0021C0A0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8021F144 0021C0A4  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 8021F148 0021C0A8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8021F14C 0021C0AC  41 82 00 0C */	beq lbl_8021F158
/* 8021F150 0021C0B0  7F A3 EB 78 */	mr r3, r29
/* 8021F154 0021C0B4  48 11 E9 8D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8021F158:
/* 8021F158 0021C0B8  38 61 00 14 */	addi r3, r1, 0x14
/* 8021F15C 0021C0BC  48 11 E9 85 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8021F160 0021C0C0  7F 43 D3 78 */	mr r3, r26
/* 8021F164 0021C0C4  38 81 00 78 */	addi r4, r1, 0x78
/* 8021F168 0021C0C8  4B F3 70 C9 */	bl sub_80156230
/* 8021F16C 0021C0CC  28 1C 00 00 */	cmplwi r28, 0
/* 8021F170 0021C0D0  41 82 00 0C */	beq lbl_8021F17C
/* 8021F174 0021C0D4  7F 83 E3 78 */	mr r3, r28
/* 8021F178 0021C0D8  48 11 E9 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8021F17C:
/* 8021F17C 0021C0DC  3B DE 00 08 */	addi r30, r30, 8
/* 8021F180 0021C0E0  3B 7B 00 01 */	addi r27, r27, 1
lbl_8021F184:
/* 8021F184 0021C0E4  7C 1B C8 00 */	cmpw r27, r25
/* 8021F188 0021C0E8  41 80 FE E0 */	blt lbl_8021F068
/* 8021F18C 0021C0EC  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 8021F190 0021C0F0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8021F194 0021C0F4  7C 08 03 A6 */	mtlr r0
/* 8021F198 0021C0F8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8021F19C 0021C0FC  4E 80 00 20 */	blr

.global sub_8021f1a0
sub_8021f1a0:
/* 8021F1A0 0021C100  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8021F1A4 0021C104  7C 08 02 A6 */	mflr r0
/* 8021F1A8 0021C108  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8021F1AC 0021C10C  38 00 00 00 */	li r0, 0
/* 8021F1B0 0021C110  BF 01 00 90 */	stmw r24, 0x90(r1)
/* 8021F1B4 0021C114  7C 7A 1B 78 */	mr r26, r3
/* 8021F1B8 0021C118  7C 9B 23 78 */	mr r27, r4
/* 8021F1BC 0021C11C  38 61 00 60 */	addi r3, r1, 0x60
/* 8021F1C0 0021C120  38 80 00 05 */	li r4, 5
/* 8021F1C4 0021C124  90 01 00 64 */	stw r0, 0x64(r1)
/* 8021F1C8 0021C128  90 01 00 68 */	stw r0, 0x68(r1)
/* 8021F1CC 0021C12C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8021F1D0 0021C130  4B F3 75 E9 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 8021F1D4 0021C134  3C 80 80 3D */	lis r4, lbl_803D31A8@ha
/* 8021F1D8 0021C138  7F 43 D3 78 */	mr r3, r26
/* 8021F1DC 0021C13C  38 84 31 A8 */	addi r4, r4, lbl_803D31A8@l
/* 8021F1E0 0021C140  38 C1 00 60 */	addi r6, r1, 0x60
/* 8021F1E4 0021C144  38 A0 00 05 */	li r5, 5
/* 8021F1E8 0021C148  4B FF FE 4D */	bl sub_8021f034
/* 8021F1EC 0021C14C  3C 80 80 3D */	lis r4, lbl_803D31D0@ha
/* 8021F1F0 0021C150  38 60 00 18 */	li r3, 0x18
/* 8021F1F4 0021C154  38 84 31 D0 */	addi r4, r4, lbl_803D31D0@l
/* 8021F1F8 0021C158  38 A0 00 00 */	li r5, 0
/* 8021F1FC 0021C15C  38 84 00 2D */	addi r4, r4, 0x2d
/* 8021F200 0021C160  48 0F 66 6D */	bl __nw__FUlPCcPCc
/* 8021F204 0021C164  7C 78 1B 79 */	or. r24, r3, r3
/* 8021F208 0021C168  41 82 00 38 */	beq lbl_8021F240
/* 8021F20C 0021C16C  81 3A 00 04 */	lwz r9, 4(r26)
/* 8021F210 0021C170  7F 64 DB 78 */	mr r4, r27
/* 8021F214 0021C174  38 A1 00 10 */	addi r5, r1, 0x10
/* 8021F218 0021C178  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8021F21C 0021C17C  91 21 00 1C */	stw r9, 0x1c(r1)
/* 8021F220 0021C180  38 E1 00 60 */	addi r7, r1, 0x60
/* 8021F224 0021C184  39 00 00 00 */	li r8, 0
/* 8021F228 0021C188  A0 1A 00 08 */	lhz r0, 8(r26)
/* 8021F22C 0021C18C  91 21 00 18 */	stw r9, 0x18(r1)
/* 8021F230 0021C190  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021F234 0021C194  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8021F238 0021C198  4B F8 86 F9 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 8021F23C 0021C19C  7C 78 1B 78 */	mr r24, r3
lbl_8021F240:
/* 8021F240 0021C1A0  80 7A 09 28 */	lwz r3, 0x928(r26)
/* 8021F244 0021C1A4  38 80 00 01 */	li r4, 1
/* 8021F248 0021C1A8  4B F8 86 95 */	bl sub_801a78dc
/* 8021F24C 0021C1AC  93 1A 09 28 */	stw r24, 0x928(r26)
/* 8021F250 0021C1B0  7F 64 DB 78 */	mr r4, r27
/* 8021F254 0021C1B4  88 1A 00 30 */	lbz r0, 0x30(r26)
/* 8021F258 0021C1B8  80 7A 09 28 */	lwz r3, 0x928(r26)
/* 8021F25C 0021C1BC  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 8021F260 0021C1C0  4B F8 80 99 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 8021F264 0021C1C4  3B FA 05 D8 */	addi r31, r26, 0x5d8
/* 8021F268 0021C1C8  3B DA 09 FC */	addi r30, r26, 0x9fc
/* 8021F26C 0021C1CC  3B A0 00 00 */	li r29, 0
/* 8021F270 0021C1D0  48 00 01 10 */	b lbl_8021F380
lbl_8021F274:
/* 8021F274 0021C1D4  80 7A 09 28 */	lwz r3, 0x928(r26)
/* 8021F278 0021C1D8  7F A4 EB 78 */	mr r4, r29
/* 8021F27C 0021C1DC  4B F8 7F BD */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8021F280 0021C1E0  7C 78 1B 78 */	mr r24, r3
/* 8021F284 0021C1E4  7F 63 DB 78 */	mr r3, r27
/* 8021F288 0021C1E8  A0 18 00 3C */	lhz r0, 0x3c(r24)
/* 8021F28C 0021C1EC  38 81 00 08 */	addi r4, r1, 8
/* 8021F290 0021C1F0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8021F294 0021C1F4  B0 01 00 08 */	sth r0, 8(r1)
/* 8021F298 0021C1F8  4B E2 D2 DD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8021F29C 0021C1FC  7C 64 1B 78 */	mr r4, r3
/* 8021F2A0 0021C200  38 61 00 28 */	addi r3, r1, 0x28
/* 8021F2A4 0021C204  4B E9 00 A9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021F2A8 0021C208  83 83 00 04 */	lwz r28, 4(r3)
/* 8021F2AC 0021C20C  28 1C 00 00 */	cmplwi r28, 0
/* 8021F2B0 0021C210  41 82 00 CC */	beq lbl_8021F37C
/* 8021F2B4 0021C214  7F 83 E3 78 */	mr r3, r28
/* 8021F2B8 0021C218  7F E4 FB 78 */	mr r4, r31
/* 8021F2BC 0021C21C  4B F8 98 DD */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 8021F2C0 0021C220  80 82 B3 F4 */	lwz r4, lbl_805AD114@sda21(r2)
/* 8021F2C4 0021C224  38 61 00 50 */	addi r3, r1, 0x50
/* 8021F2C8 0021C228  4B DE 59 F1 */	bl string_l__4rstlFPCc
/* 8021F2CC 0021C22C  38 78 00 2C */	addi r3, r24, 0x2c
/* 8021F2D0 0021C230  38 81 00 50 */	addi r4, r1, 0x50
/* 8021F2D4 0021C234  4B E3 33 0D */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 8021F2D8 0021C238  7C 79 1B 78 */	mr r25, r3
/* 8021F2DC 0021C23C  38 61 00 50 */	addi r3, r1, 0x50
/* 8021F2E0 0021C240  48 11 E8 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8021F2E4 0021C244  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 8021F2E8 0021C248  41 82 00 10 */	beq lbl_8021F2F8
/* 8021F2EC 0021C24C  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8021F2F0 0021C250  B0 1A 09 F6 */	sth r0, 0x9f6(r26)
/* 8021F2F4 0021C254  48 00 00 88 */	b lbl_8021F37C
lbl_8021F2F8:
/* 8021F2F8 0021C258  80 82 B3 F8 */	lwz r4, lbl_805AD118@sda21(r2)
/* 8021F2FC 0021C25C  38 61 00 40 */	addi r3, r1, 0x40
/* 8021F300 0021C260  4B DE 59 B9 */	bl string_l__4rstlFPCc
/* 8021F304 0021C264  38 78 00 2C */	addi r3, r24, 0x2c
/* 8021F308 0021C268  38 81 00 40 */	addi r4, r1, 0x40
/* 8021F30C 0021C26C  4B E3 32 D5 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 8021F310 0021C270  7C 79 1B 78 */	mr r25, r3
/* 8021F314 0021C274  38 61 00 40 */	addi r3, r1, 0x40
/* 8021F318 0021C278  48 11 E7 C9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8021F31C 0021C27C  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 8021F320 0021C280  40 82 00 30 */	bne lbl_8021F350
/* 8021F324 0021C284  80 82 B3 FC */	lwz r4, lbl_805AD11C@sda21(r2)
/* 8021F328 0021C288  38 61 00 30 */	addi r3, r1, 0x30
/* 8021F32C 0021C28C  4B DE 59 8D */	bl string_l__4rstlFPCc
/* 8021F330 0021C290  38 78 00 2C */	addi r3, r24, 0x2c
/* 8021F334 0021C294  38 81 00 30 */	addi r4, r1, 0x30
/* 8021F338 0021C298  4B E3 32 A9 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 8021F33C 0021C29C  7C 79 1B 78 */	mr r25, r3
/* 8021F340 0021C2A0  38 61 00 30 */	addi r3, r1, 0x30
/* 8021F344 0021C2A4  48 11 E7 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8021F348 0021C2A8  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 8021F34C 0021C2AC  41 82 00 30 */	beq lbl_8021F37C
lbl_8021F350:
/* 8021F350 0021C2B0  80 1A 09 F8 */	lwz r0, 0x9f8(r26)
/* 8021F354 0021C2B4  54 00 08 3C */	slwi r0, r0, 1
/* 8021F358 0021C2B8  7C 7E 02 15 */	add. r3, r30, r0
/* 8021F35C 0021C2BC  41 82 00 0C */	beq lbl_8021F368
/* 8021F360 0021C2C0  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8021F364 0021C2C4  B0 03 00 00 */	sth r0, 0(r3)
lbl_8021F368:
/* 8021F368 0021C2C8  80 7A 09 F8 */	lwz r3, 0x9f8(r26)
/* 8021F36C 0021C2CC  38 00 00 42 */	li r0, 0x42
/* 8021F370 0021C2D0  38 63 00 01 */	addi r3, r3, 1
/* 8021F374 0021C2D4  90 7A 09 F8 */	stw r3, 0x9f8(r26)
/* 8021F378 0021C2D8  90 1C 03 00 */	stw r0, 0x300(r28)
lbl_8021F37C:
/* 8021F37C 0021C2DC  3B BD 00 01 */	addi r29, r29, 1
lbl_8021F380:
/* 8021F380 0021C2E0  80 7A 09 28 */	lwz r3, 0x928(r26)
/* 8021F384 0021C2E4  4B F8 7E C5 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8021F388 0021C2E8  7C 1D 18 40 */	cmplw r29, r3
/* 8021F38C 0021C2EC  41 80 FE E8 */	blt lbl_8021F274
/* 8021F390 0021C2F0  7F 43 D3 78 */	mr r3, r26
/* 8021F394 0021C2F4  7F 64 DB 78 */	mr r4, r27
/* 8021F398 0021C2F8  4B FF F7 81 */	bl sub_8021eb18
/* 8021F39C 0021C2FC  80 AD 95 20 */	lwz r5, lbl_805A80E0@sda21(r13)
/* 8021F3A0 0021C300  38 60 00 00 */	li r3, 0
/* 8021F3A4 0021C304  38 80 00 01 */	li r4, 1
/* 8021F3A8 0021C308  48 16 AB 4D */	bl __shl2i
/* 8021F3AC 0021C30C  80 AD 95 24 */	lwz r5, lbl_805A80E4@sda21(r13)
/* 8021F3B0 0021C310  7C 99 23 78 */	mr r25, r4
/* 8021F3B4 0021C314  7C 78 1B 78 */	mr r24, r3
/* 8021F3B8 0021C318  38 60 00 00 */	li r3, 0
/* 8021F3BC 0021C31C  38 80 00 01 */	li r4, 1
/* 8021F3C0 0021C320  48 16 AB 35 */	bl __shl2i
/* 8021F3C4 0021C324  80 AD 95 28 */	lwz r5, lbl_805A80E8@sda21(r13)
/* 8021F3C8 0021C328  7F 39 23 78 */	or r25, r25, r4
/* 8021F3CC 0021C32C  7F 18 1B 78 */	or r24, r24, r3
/* 8021F3D0 0021C330  38 60 00 00 */	li r3, 0
/* 8021F3D4 0021C334  38 80 00 01 */	li r4, 1
/* 8021F3D8 0021C338  48 16 AB 1D */	bl __shl2i
/* 8021F3DC 0021C33C  80 AD 95 1C */	lwz r5, lbl_805A80DC@sda21(r13)
/* 8021F3E0 0021C340  7F 39 23 78 */	or r25, r25, r4
/* 8021F3E4 0021C344  7F 18 1B 78 */	or r24, r24, r3
/* 8021F3E8 0021C348  38 60 00 00 */	li r3, 0
/* 8021F3EC 0021C34C  38 80 00 01 */	li r4, 1
/* 8021F3F0 0021C350  48 16 AB 05 */	bl __shl2i
/* 8021F3F4 0021C354  38 00 00 03 */	li r0, 3
/* 8021F3F8 0021C358  90 81 00 74 */	stw r4, 0x74(r1)
/* 8021F3FC 0021C35C  38 81 00 70 */	addi r4, r1, 0x70
/* 8021F400 0021C360  90 61 00 70 */	stw r3, 0x70(r1)
/* 8021F404 0021C364  7F 43 D3 78 */	mr r3, r26
/* 8021F408 0021C368  93 21 00 7C */	stw r25, 0x7c(r1)
/* 8021F40C 0021C36C  93 01 00 78 */	stw r24, 0x78(r1)
/* 8021F410 0021C370  90 01 00 80 */	stw r0, 0x80(r1)
/* 8021F414 0021C374  4B E3 44 8D */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8021F418 0021C378  7F 43 D3 78 */	mr r3, r26
/* 8021F41C 0021C37C  7F 65 DB 78 */	mr r5, r27
/* 8021F420 0021C380  38 80 00 12 */	li r4, 0x12
/* 8021F424 0021C384  4B E3 4F 2D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8021F428 0021C388  38 00 00 00 */	li r0, 0
/* 8021F42C 0021C38C  80 AD 95 2C */	lwz r5, lbl_805A80EC@sda21(r13)
/* 8021F430 0021C390  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021F434 0021C394  38 60 00 00 */	li r3, 0
/* 8021F438 0021C398  38 80 00 01 */	li r4, 1
/* 8021F43C 0021C39C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8021F440 0021C3A0  48 16 AA B5 */	bl __shl2i
/* 8021F444 0021C3A4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8021F448 0021C3A8  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8021F44C 0021C3AC  7C 00 1B 78 */	or r0, r0, r3
/* 8021F450 0021C3B0  80 AD 95 30 */	lwz r5, lbl_805A80F0@sda21(r13)
/* 8021F454 0021C3B4  7C C4 23 78 */	or r4, r6, r4
/* 8021F458 0021C3B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8021F45C 0021C3BC  38 60 00 00 */	li r3, 0
/* 8021F460 0021C3C0  90 81 00 24 */	stw r4, 0x24(r1)
/* 8021F464 0021C3C4  38 80 00 01 */	li r4, 1
/* 8021F468 0021C3C8  48 16 AA 8D */	bl __shl2i
/* 8021F46C 0021C3CC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8021F470 0021C3D0  38 A1 00 20 */	addi r5, r1, 0x20
/* 8021F474 0021C3D4  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8021F478 0021C3D8  7C 00 1B 78 */	or r0, r0, r3
/* 8021F47C 0021C3DC  7C C3 23 78 */	or r3, r6, r4
/* 8021F480 0021C3E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8021F484 0021C3E4  7F 64 DB 78 */	mr r4, r27
/* 8021F488 0021C3E8  90 61 00 24 */	stw r3, 0x24(r1)
/* 8021F48C 0021C3EC  80 7A 09 28 */	lwz r3, 0x928(r26)
/* 8021F490 0021C3F0  4B F8 7D C1 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 8021F494 0021C3F4  38 61 00 60 */	addi r3, r1, 0x60
/* 8021F498 0021C3F8  38 80 FF FF */	li r4, -1
/* 8021F49C 0021C3FC  4B F3 6E 91 */	bl sub_8015632c
/* 8021F4A0 0021C400  BB 01 00 90 */	lmw r24, 0x90(r1)
/* 8021F4A4 0021C404  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8021F4A8 0021C408  7C 08 03 A6 */	mtlr r0
/* 8021F4AC 0021C40C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8021F4B0 0021C410  4E 80 00 20 */	blr

.global sub_8021f4b4
sub_8021f4b4:
/* 8021F4B4 0021C414  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8021F4B8 0021C418  7C 08 02 A6 */	mflr r0
/* 8021F4BC 0021C41C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8021F4C0 0021C420  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8021F4C4 0021C424  7C BF 2B 78 */	mr r31, r5
/* 8021F4C8 0021C428  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8021F4CC 0021C42C  7C 7E 1B 78 */	mr r30, r3
/* 8021F4D0 0021C430  7F E3 FB 78 */	mr r3, r31
/* 8021F4D4 0021C434  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8021F4D8 0021C438  A0 04 00 00 */	lhz r0, 0(r4)
/* 8021F4DC 0021C43C  38 81 00 3C */	addi r4, r1, 0x3c
/* 8021F4E0 0021C440  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 8021F4E4 0021C444  4B E2 D0 C1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8021F4E8 0021C448  7C 64 1B 78 */	mr r4, r3
/* 8021F4EC 0021C44C  38 61 00 40 */	addi r3, r1, 0x40
/* 8021F4F0 0021C450  4B E8 FE 5D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8021F4F4 0021C454  83 A3 00 04 */	lwz r29, 4(r3)
/* 8021F4F8 0021C458  28 1D 00 00 */	cmplwi r29, 0
/* 8021F4FC 0021C45C  41 82 01 98 */	beq lbl_8021F694
/* 8021F500 0021C460  7F C3 F3 78 */	mr r3, r30
/* 8021F504 0021C464  7F E4 FB 78 */	mr r4, r31
/* 8021F508 0021C468  81 9E 00 00 */	lwz r12, 0(r30)
/* 8021F50C 0021C46C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8021F510 0021C470  7D 89 03 A6 */	mtctr r12
/* 8021F514 0021C474  4E 80 04 21 */	bctrl
/* 8021F518 0021C478  C0 23 00 00 */	lfs f1, 0(r3)
/* 8021F51C 0021C47C  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021F520 0021C480  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021F524 0021C484  40 81 01 70 */	ble lbl_8021F694
/* 8021F528 0021C488  7F A4 EB 78 */	mr r4, r29
/* 8021F52C 0021C48C  38 61 00 38 */	addi r3, r1, 0x38
/* 8021F530 0021C490  4B F8 96 5D */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 8021F534 0021C494  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8021F538 0021C498  A0 81 00 38 */	lhz r4, 0x38(r1)
/* 8021F53C 0021C49C  A0 03 00 08 */	lhz r0, 8(r3)
/* 8021F540 0021C4A0  7C 04 00 40 */	cmplw r4, r0
/* 8021F544 0021C4A4  40 82 01 50 */	bne lbl_8021F694
/* 8021F548 0021C4A8  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 8021F54C 0021C4AC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8021F550 0021C4B0  41 82 00 98 */	beq lbl_8021F5E8
/* 8021F554 0021C4B4  80 AD 95 18 */	lwz r5, lbl_805A80D8@sda21(r13)
/* 8021F558 0021C4B8  38 60 00 00 */	li r3, 0
/* 8021F55C 0021C4BC  38 80 00 01 */	li r4, 1
/* 8021F560 0021C4C0  48 16 A9 95 */	bl __shl2i
/* 8021F564 0021C4C4  39 40 00 00 */	li r10, 0
/* 8021F568 0021C4C8  38 00 00 03 */	li r0, 3
/* 8021F56C 0021C4CC  90 81 00 84 */	stw r4, 0x84(r1)
/* 8021F570 0021C4D0  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8021F574 0021C4D4  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8021F578 0021C4D8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8021F57C 0021C4DC  90 61 00 80 */	stw r3, 0x80(r1)
/* 8021F580 0021C4E0  38 81 00 34 */	addi r4, r1, 0x34
/* 8021F584 0021C4E4  7F E3 FB 78 */	mr r3, r31
/* 8021F588 0021C4E8  38 C1 00 24 */	addi r6, r1, 0x24
/* 8021F58C 0021C4EC  91 41 00 8C */	stw r10, 0x8c(r1)
/* 8021F590 0021C4F0  38 FE 05 98 */	addi r7, r30, 0x598
/* 8021F594 0021C4F4  39 01 00 80 */	addi r8, r1, 0x80
/* 8021F598 0021C4F8  91 41 00 88 */	stw r10, 0x88(r1)
/* 8021F59C 0021C4FC  90 01 00 90 */	stw r0, 0x90(r1)
/* 8021F5A0 0021C500  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8021F5A4 0021C504  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8021F5A8 0021C508  81 5F 08 4C */	lwz r10, 0x84c(r31)
/* 8021F5AC 0021C50C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8021F5B0 0021C510  A1 4A 00 08 */	lhz r10, 8(r10)
/* 8021F5B4 0021C514  B1 41 00 2C */	sth r10, 0x2c(r1)
/* 8021F5B8 0021C518  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8021F5BC 0021C51C  B1 41 00 28 */	sth r10, 0x28(r1)
/* 8021F5C0 0021C520  B0 01 00 30 */	sth r0, 0x30(r1)
/* 8021F5C4 0021C524  B0 01 00 34 */	sth r0, 0x34(r1)
/* 8021F5C8 0021C528  4B E2 AA D9 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8021F5CC 0021C52C  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 8021F5D0 0021C530  38 60 00 00 */	li r3, 0
/* 8021F5D4 0021C534  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8021F5D8 0021C538  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 8021F5DC 0021C53C  C0 1E 04 24 */	lfs f0, 0x424(r30)
/* 8021F5E0 0021C540  D0 1E 04 20 */	stfs f0, 0x420(r30)
/* 8021F5E4 0021C544  48 00 00 B0 */	b lbl_8021F694
lbl_8021F5E8:
/* 8021F5E8 0021C548  C0 3E 04 20 */	lfs f1, 0x420(r30)
/* 8021F5EC 0021C54C  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021F5F0 0021C550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021F5F4 0021C554  4C 40 13 82 */	cror 2, 0, 2
/* 8021F5F8 0021C558  40 82 00 9C */	bne lbl_8021F694
/* 8021F5FC 0021C55C  80 AD 95 18 */	lwz r5, lbl_805A80D8@sda21(r13)
/* 8021F600 0021C560  38 60 00 00 */	li r3, 0
/* 8021F604 0021C564  38 80 00 01 */	li r4, 1
/* 8021F608 0021C568  48 16 A8 ED */	bl __shl2i
/* 8021F60C 0021C56C  38 A0 00 00 */	li r5, 0
/* 8021F610 0021C570  38 00 00 03 */	li r0, 3
/* 8021F614 0021C574  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8021F618 0021C578  7F C4 F3 78 */	mr r4, r30
/* 8021F61C 0021C57C  90 61 00 48 */	stw r3, 0x48(r1)
/* 8021F620 0021C580  38 61 00 60 */	addi r3, r1, 0x60
/* 8021F624 0021C584  90 A1 00 54 */	stw r5, 0x54(r1)
/* 8021F628 0021C588  90 A1 00 50 */	stw r5, 0x50(r1)
/* 8021F62C 0021C58C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8021F630 0021C590  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8021F634 0021C594  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021F638 0021C598  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8021F63C 0021C59C  B0 01 00 08 */	sth r0, 8(r1)
/* 8021F640 0021C5A0  A0 A5 00 08 */	lhz r5, 8(r5)
/* 8021F644 0021C5A4  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 8021F648 0021C5A8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8021F64C 0021C5AC  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8021F650 0021C5B0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8021F654 0021C5B4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8021F658 0021C5B8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8021F65C 0021C5BC  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 8021F660 0021C5C0  7D 89 03 A6 */	mtctr r12
/* 8021F664 0021C5C4  4E 80 04 21 */	bctrl
/* 8021F668 0021C5C8  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8021F66C 0021C5CC  7F E3 FB 78 */	mr r3, r31
/* 8021F670 0021C5D0  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8021F674 0021C5D4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8021F678 0021C5D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8021F67C 0021C5DC  38 C1 00 0C */	addi r6, r1, 0xc
/* 8021F680 0021C5E0  38 E1 00 60 */	addi r7, r1, 0x60
/* 8021F684 0021C5E4  39 01 00 48 */	addi r8, r1, 0x48
/* 8021F688 0021C5E8  4B E2 AA 19 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8021F68C 0021C5EC  C0 1E 04 24 */	lfs f0, 0x424(r30)
/* 8021F690 0021C5F0  D0 1E 04 20 */	stfs f0, 0x420(r30)
lbl_8021F694:
/* 8021F694 0021C5F4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8021F698 0021C5F8  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8021F69C 0021C5FC  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8021F6A0 0021C600  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 8021F6A4 0021C604  7C 08 03 A6 */	mtlr r0
/* 8021F6A8 0021C608  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8021F6AC 0021C60C  4E 80 00 20 */	blr

.global sub_8021f6b0
sub_8021f6b0:
/* 8021F6B0 0021C610  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8021F6B4 0021C614  7C 08 02 A6 */	mflr r0
/* 8021F6B8 0021C618  90 01 00 54 */	stw r0, 0x54(r1)
/* 8021F6BC 0021C61C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8021F6C0 0021C620  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8021F6C4 0021C624  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8021F6C8 0021C628  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8021F6CC 0021C62C  7C 7E 1B 78 */	mr r30, r3
/* 8021F6D0 0021C630  7C BF 2B 78 */	mr r31, r5
/* 8021F6D4 0021C634  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 8021F6D8 0021C638  7C 85 23 78 */	mr r5, r4
/* 8021F6DC 0021C63C  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 8021F6E0 0021C640  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8021F6E4 0021C644  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 8021F6E8 0021C648  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8021F6EC 0021C64C  D0 5F 00 04 */	stfs f2, 4(r31)
/* 8021F6F0 0021C650  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8021F6F4 0021C654  C0 03 08 D8 */	lfs f0, 0x8d8(r3)
/* 8021F6F8 0021C658  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8021F6FC 0021C65C  4C 40 13 82 */	cror 2, 0, 2
/* 8021F700 0021C660  40 82 00 C8 */	bne lbl_8021F7C8
/* 8021F704 0021C664  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 8021F708 0021C668  38 61 00 14 */	addi r3, r1, 0x14
/* 8021F70C 0021C66C  81 84 00 00 */	lwz r12, 0(r4)
/* 8021F710 0021C670  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8021F714 0021C674  7D 89 03 A6 */	mtctr r12
/* 8021F718 0021C678  4E 80 04 21 */	bctrl
/* 8021F71C 0021C67C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8021F720 0021C680  38 61 00 20 */	addi r3, r1, 0x20
/* 8021F724 0021C684  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021F728 0021C688  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8021F72C 0021C68C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8021F730 0021C690  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8021F734 0021C694  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8021F738 0021C698  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8021F73C 0021C69C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8021F740 0021C6A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8021F744 0021C6A4  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 8021F748 0021C6A8  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8021F74C 0021C6AC  EC A2 08 28 */	fsubs f5, f2, f1
/* 8021F750 0021C6B0  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8021F754 0021C6B4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8021F758 0021C6B8  EC 64 18 28 */	fsubs f3, f4, f3
/* 8021F75C 0021C6BC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8021F760 0021C6C0  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8021F764 0021C6C4  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8021F768 0021C6C8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8021F76C 0021C6CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8021F770 0021C6D0  48 0F 4F 89 */	bl CanBeNormalized__9CVector3fCFv
/* 8021F774 0021C6D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F778 0021C6D8  41 82 00 50 */	beq lbl_8021F7C8
/* 8021F77C 0021C6DC  C3 FE 02 FC */	lfs f31, 0x2fc(r30)
/* 8021F780 0021C6E0  38 61 00 08 */	addi r3, r1, 8
/* 8021F784 0021C6E4  38 81 00 20 */	addi r4, r1, 0x20
/* 8021F788 0021C6E8  48 0F 50 C9 */	bl AsNormalized__9CVector3fCFv
/* 8021F78C 0021C6EC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8021F790 0021C6F0  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8021F794 0021C6F4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8021F798 0021C6F8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8021F79C 0021C6FC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8021F7A0 0021C700  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 8021F7A4 0021C704  EC 01 00 2A */	fadds f0, f1, f0
/* 8021F7A8 0021C708  EC 3F 00 B2 */	fmuls f1, f31, f2
/* 8021F7AC 0021C70C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8021F7B0 0021C710  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8021F7B4 0021C714  EC 00 18 2A */	fadds f0, f0, f3
/* 8021F7B8 0021C718  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8021F7BC 0021C71C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8021F7C0 0021C720  EC 00 08 2A */	fadds f0, f0, f1
/* 8021F7C4 0021C724  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8021F7C8:
/* 8021F7C8 0021C728  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8021F7CC 0021C72C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8021F7D0 0021C730  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8021F7D4 0021C734  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8021F7D8 0021C738  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8021F7DC 0021C73C  7C 08 03 A6 */	mtlr r0
/* 8021F7E0 0021C740  38 21 00 50 */	addi r1, r1, 0x50
/* 8021F7E4 0021C744  4E 80 00 20 */	blr

.global sub_8021f7e8
sub_8021f7e8:
/* 8021F7E8 0021C748  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8021F7EC 0021C74C  7C 08 02 A6 */	mflr r0
/* 8021F7F0 0021C750  C0 62 B4 34 */	lfs f3, lbl_805AD154@sda21(r2)
/* 8021F7F4 0021C754  90 01 00 44 */	stw r0, 0x44(r1)
/* 8021F7F8 0021C758  38 81 00 14 */	addi r4, r1, 0x14
/* 8021F7FC 0021C75C  C0 22 B4 38 */	lfs f1, lbl_805AD158@sda21(r2)
/* 8021F800 0021C760  38 A1 00 08 */	addi r5, r1, 8
/* 8021F804 0021C764  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8021F808 0021C768  7C 7F 1B 78 */	mr r31, r3
/* 8021F80C 0021C76C  C0 42 B4 24 */	lfs f2, lbl_805AD144@sda21(r2)
/* 8021F810 0021C770  38 61 00 20 */	addi r3, r1, 0x20
/* 8021F814 0021C774  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021F818 0021C778  D0 61 00 08 */	stfs f3, 8(r1)
/* 8021F81C 0021C77C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8021F820 0021C780  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8021F824 0021C784  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8021F828 0021C788  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8021F82C 0021C78C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8021F830 0021C790  48 11 8C D9 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8021F834 0021C794  7F E3 FB 78 */	mr r3, r31
/* 8021F838 0021C798  38 81 00 20 */	addi r4, r1, 0x20
/* 8021F83C 0021C79C  4B EF AE 1D */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
/* 8021F840 0021C7A0  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8021F844 0021C7A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021F848 0021C7A8  90 7F 09 40 */	stw r3, 0x940(r31)
/* 8021F84C 0021C7AC  90 1F 09 44 */	stw r0, 0x944(r31)
/* 8021F850 0021C7B0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8021F854 0021C7B4  90 1F 09 48 */	stw r0, 0x948(r31)
/* 8021F858 0021C7B8  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8021F85C 0021C7BC  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8021F860 0021C7C0  90 7F 09 4C */	stw r3, 0x94c(r31)
/* 8021F864 0021C7C4  90 1F 09 50 */	stw r0, 0x950(r31)
/* 8021F868 0021C7C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021F86C 0021C7CC  90 1F 09 54 */	stw r0, 0x954(r31)
/* 8021F870 0021C7D0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8021F874 0021C7D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8021F878 0021C7D8  7C 08 03 A6 */	mtlr r0
/* 8021F87C 0021C7DC  38 21 00 40 */	addi r1, r1, 0x40
/* 8021F880 0021C7E0  4E 80 00 20 */	blr

.global TurnAround__9CBabygothFR13CStateManager9EStateMsgf
TurnAround__9CBabygothFR13CStateManager9EStateMsgf:
/* 8021F884 0021C7E4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8021F888 0021C7E8  7C 08 02 A6 */	mflr r0
/* 8021F88C 0021C7EC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8021F890 0021C7F0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8021F894 0021C7F4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8021F898 0021C7F8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8021F89C 0021C7FC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8021F8A0 0021C800  FF E0 08 90 */	fmr f31, f1
/* 8021F8A4 0021C804  2C 05 00 01 */	cmpwi r5, 1
/* 8021F8A8 0021C808  7C 7E 1B 78 */	mr r30, r3
/* 8021F8AC 0021C80C  7C 9F 23 78 */	mr r31, r4
/* 8021F8B0 0021C810  41 82 00 88 */	beq lbl_8021F938
/* 8021F8B4 0021C814  40 80 00 10 */	bge lbl_8021F8C4
/* 8021F8B8 0021C818  2C 05 00 00 */	cmpwi r5, 0
/* 8021F8BC 0021C81C  40 80 00 14 */	bge lbl_8021F8D0
/* 8021F8C0 0021C820  48 00 01 80 */	b lbl_8021FA40
lbl_8021F8C4:
/* 8021F8C4 0021C824  2C 05 00 03 */	cmpwi r5, 3
/* 8021F8C8 0021C828  40 80 01 78 */	bge lbl_8021FA40
/* 8021F8CC 0021C82C  48 00 01 68 */	b lbl_8021FA34
lbl_8021F8D0:
/* 8021F8D0 0021C830  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8021F8D4 0021C834  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 8021F8D8 0021C838  38 81 00 0C */	addi r4, r1, 0xc
/* 8021F8DC 0021C83C  A0 05 00 08 */	lhz r0, 8(r5)
/* 8021F8E0 0021C840  B0 01 00 08 */	sth r0, 8(r1)
/* 8021F8E4 0021C844  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021F8E8 0021C848  4B F5 59 31 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 8021F8EC 0021C84C  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 8021F8F0 0021C850  38 80 00 01 */	li r4, 1
/* 8021F8F4 0021C854  4B F5 59 31 */	bl SetActive__13CBoneTrackingFb
/* 8021F8F8 0021C858  7F C3 F3 78 */	mr r3, r30
/* 8021F8FC 0021C85C  7F E4 FB 78 */	mr r4, r31
/* 8021F900 0021C860  38 BE 02 E0 */	addi r5, r30, 0x2e0
/* 8021F904 0021C864  4B FF FD AD */	bl sub_8021f6b0
/* 8021F908 0021C868  7F C3 F3 78 */	mr r3, r30
/* 8021F90C 0021C86C  38 80 00 00 */	li r4, 0
/* 8021F910 0021C870  4B FF E7 8D */	bl sub_8021e09c
/* 8021F914 0021C874  FC 20 F8 90 */	fmr f1, f31
/* 8021F918 0021C878  7F C3 F3 78 */	mr r3, r30
/* 8021F91C 0021C87C  7F E4 FB 78 */	mr r4, r31
/* 8021F920 0021C880  38 A0 00 00 */	li r5, 0
/* 8021F924 0021C884  4B FD 6D A9 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8021F928 0021C888  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8021F92C 0021C88C  38 63 00 04 */	addi r3, r3, 4
/* 8021F930 0021C890  4B F1 1B 79 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 8021F934 0021C894  48 00 01 0C */	b lbl_8021FA40
lbl_8021F938:
/* 8021F938 0021C898  81 83 00 00 */	lwz r12, 0(r3)
/* 8021F93C 0021C89C  C0 22 B4 3C */	lfs f1, lbl_805AD15C@sda21(r2)
/* 8021F940 0021C8A0  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8021F944 0021C8A4  7D 89 03 A6 */	mtctr r12
/* 8021F948 0021C8A8  4E 80 04 21 */	bctrl
/* 8021F94C 0021C8AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F950 0021C8B0  41 82 00 F0 */	beq lbl_8021FA40
/* 8021F954 0021C8B4  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 8021F958 0021C8B8  7F E5 FB 78 */	mr r5, r31
/* 8021F95C 0021C8BC  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 8021F960 0021C8C0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8021F964 0021C8C4  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 8021F968 0021C8C8  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8021F96C 0021C8CC  C0 46 02 00 */	lfs f2, 0x200(r6)
/* 8021F970 0021C8D0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8021F974 0021C8D4  40 81 00 0C */	ble lbl_8021F980
/* 8021F978 0021C8D8  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 8021F97C 0021C8DC  EC 20 10 24 */	fdivs f1, f0, f2
lbl_8021F980:
/* 8021F980 0021C8E0  81 84 00 00 */	lwz r12, 0(r4)
/* 8021F984 0021C8E4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8021F988 0021C8E8  7D 89 03 A6 */	mtctr r12
/* 8021F98C 0021C8EC  4E 80 04 21 */	bctrl
/* 8021F990 0021C8F0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8021F994 0021C8F4  38 61 00 28 */	addi r3, r1, 0x28
/* 8021F998 0021C8F8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8021F99C 0021C8FC  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8021F9A0 0021C900  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8021F9A4 0021C904  EC 81 00 28 */	fsubs f4, f1, f0
/* 8021F9A8 0021C908  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8021F9AC 0021C90C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8021F9B0 0021C910  EC 43 10 28 */	fsubs f2, f3, f2
/* 8021F9B4 0021C914  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8021F9B8 0021C918  EC 21 00 28 */	fsubs f1, f1, f0
/* 8021F9BC 0021C91C  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8021F9C0 0021C920  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8021F9C4 0021C924  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8021F9C8 0021C928  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8021F9CC 0021C92C  48 0F 4D 2D */	bl CanBeNormalized__9CVector3fCFv
/* 8021F9D0 0021C930  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F9D4 0021C934  41 82 00 6C */	beq lbl_8021FA40
/* 8021F9D8 0021C938  38 61 00 10 */	addi r3, r1, 0x10
/* 8021F9DC 0021C93C  38 81 00 28 */	addi r4, r1, 0x28
/* 8021F9E0 0021C940  48 0F 4E 71 */	bl AsNormalized__9CVector3fCFv
/* 8021F9E4 0021C944  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8021F9E8 0021C948  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 8021F9EC 0021C94C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8021F9F0 0021C950  38 81 00 34 */	addi r4, r1, 0x34
/* 8021F9F4 0021C954  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8021F9F8 0021C958  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8021F9FC 0021C95C  C0 83 00 08 */	lfs f4, 8(r3)
/* 8021FA00 0021C960  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8021FA04 0021C964  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 8021FA08 0021C968  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 8021FA0C 0021C96C  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 8021FA10 0021C970  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8021FA14 0021C974  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8021FA18 0021C978  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8021FA1C 0021C97C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8021FA20 0021C980  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8021FA24 0021C984  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8021FA28 0021C988  38 63 00 04 */	addi r3, r3, 4
/* 8021FA2C 0021C98C  4B F1 1C ED */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8021FA30 0021C990  48 00 00 10 */	b lbl_8021FA40
lbl_8021FA34:
/* 8021FA34 0021C994  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 8021FA38 0021C998  38 80 00 00 */	li r4, 0
/* 8021FA3C 0021C99C  4B F5 57 E9 */	bl SetActive__13CBoneTrackingFb
lbl_8021FA40:
/* 8021FA40 0021C9A0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8021FA44 0021C9A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8021FA48 0021C9A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8021FA4C 0021C9AC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8021FA50 0021C9B0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8021FA54 0021C9B4  7C 08 03 A6 */	mtlr r0
/* 8021FA58 0021C9B8  38 21 00 70 */	addi r1, r1, 0x70
/* 8021FA5C 0021C9BC  4E 80 00 20 */	blr

.global GetUp__9CBabygothFR13CStateManager9EStateMsgf
GetUp__9CBabygothFR13CStateManager9EStateMsgf:
/* 8021FA60 0021C9C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021FA64 0021C9C4  7C 08 02 A6 */	mflr r0
/* 8021FA68 0021C9C8  2C 05 00 01 */	cmpwi r5, 1
/* 8021FA6C 0021C9CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021FA70 0021C9D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021FA74 0021C9D4  41 82 00 3C */	beq lbl_8021FAB0
/* 8021FA78 0021C9D8  40 80 00 10 */	bge lbl_8021FA88
/* 8021FA7C 0021C9DC  2C 05 00 00 */	cmpwi r5, 0
/* 8021FA80 0021C9E0  40 80 00 14 */	bge lbl_8021FA94
/* 8021FA84 0021C9E4  48 00 00 F0 */	b lbl_8021FB74
lbl_8021FA88:
/* 8021FA88 0021C9E8  2C 05 00 03 */	cmpwi r5, 3
/* 8021FA8C 0021C9EC  40 80 00 E8 */	bge lbl_8021FB74
/* 8021FA90 0021C9F0  48 00 00 D4 */	b lbl_8021FB64
lbl_8021FA94:
/* 8021FA94 0021C9F4  38 00 00 00 */	li r0, 0
/* 8021FA98 0021C9F8  38 80 00 01 */	li r4, 1
/* 8021FA9C 0021C9FC  90 03 05 68 */	stw r0, 0x568(r3)
/* 8021FAA0 0021CA00  88 03 0A 49 */	lbz r0, 0xa49(r3)
/* 8021FAA4 0021CA04  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8021FAA8 0021CA08  98 03 0A 49 */	stb r0, 0xa49(r3)
/* 8021FAAC 0021CA0C  48 00 00 C8 */	b lbl_8021FB74
lbl_8021FAB0:
/* 8021FAB0 0021CA10  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8021FAB4 0021CA14  2C 00 00 03 */	cmpwi r0, 3
/* 8021FAB8 0021CA18  41 82 00 90 */	beq lbl_8021FB48
/* 8021FABC 0021CA1C  40 80 00 B8 */	bge lbl_8021FB74
/* 8021FAC0 0021CA20  2C 00 00 00 */	cmpwi r0, 0
/* 8021FAC4 0021CA24  41 82 00 08 */	beq lbl_8021FACC
/* 8021FAC8 0021CA28  48 00 00 AC */	b lbl_8021FB74
lbl_8021FACC:
/* 8021FACC 0021CA2C  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8021FAD0 0021CA30  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8021FAD4 0021CA34  2C 00 00 01 */	cmpwi r0, 1
/* 8021FAD8 0021CA38  40 82 00 10 */	bne lbl_8021FAE8
/* 8021FADC 0021CA3C  38 00 00 03 */	li r0, 3
/* 8021FAE0 0021CA40  90 03 05 68 */	stw r0, 0x568(r3)
/* 8021FAE4 0021CA44  48 00 00 90 */	b lbl_8021FB74
lbl_8021FAE8:
/* 8021FAE8 0021CA48  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8021FAEC 0021CA4C  38 A0 00 00 */	li r5, 0
/* 8021FAF0 0021CA50  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8021FAF4 0021CA54  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 8021FAF8 0021CA58  90 01 00 08 */	stw r0, 8(r1)
/* 8021FAFC 0021CA5C  38 03 AA 20 */	addi r0, r3, lbl_803DAA20@l
/* 8021FB00 0021CA60  3B E4 00 04 */	addi r31, r4, 4
/* 8021FB04 0021CA64  38 80 00 00 */	li r4, 0
/* 8021FB08 0021CA68  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8021FB0C 0021CA6C  7F E3 FB 78 */	mr r3, r31
/* 8021FB10 0021CA70  90 01 00 08 */	stw r0, 8(r1)
/* 8021FB14 0021CA74  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8021FB18 0021CA78  4B F1 19 21 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8021FB1C 0021CA7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021FB20 0021CA80  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 8021FB24 0021CA84  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 8021FB28 0021CA88  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8021FB2C 0021CA8C  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 8021FB30 0021CA90  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8021FB34 0021CA94  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8021FB38 0021CA98  90 81 00 08 */	stw r4, 8(r1)
/* 8021FB3C 0021CA9C  90 7F 00 C0 */	stw r3, 0xc0(r31)
/* 8021FB40 0021CAA0  90 01 00 08 */	stw r0, 8(r1)
/* 8021FB44 0021CAA4  48 00 00 30 */	b lbl_8021FB74
lbl_8021FB48:
/* 8021FB48 0021CAA8  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8021FB4C 0021CAAC  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8021FB50 0021CAB0  2C 00 00 01 */	cmpwi r0, 1
/* 8021FB54 0021CAB4  41 82 00 20 */	beq lbl_8021FB74
/* 8021FB58 0021CAB8  38 00 00 04 */	li r0, 4
/* 8021FB5C 0021CABC  90 03 05 68 */	stw r0, 0x568(r3)
/* 8021FB60 0021CAC0  48 00 00 14 */	b lbl_8021FB74
lbl_8021FB64:
/* 8021FB64 0021CAC4  88 03 0A 49 */	lbz r0, 0xa49(r3)
/* 8021FB68 0021CAC8  38 80 00 00 */	li r4, 0
/* 8021FB6C 0021CACC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8021FB70 0021CAD0  98 03 0A 49 */	stb r0, 0xa49(r3)
lbl_8021FB74:
/* 8021FB74 0021CAD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021FB78 0021CAD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021FB7C 0021CADC  7C 08 03 A6 */	mtlr r0
/* 8021FB80 0021CAE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8021FB84 0021CAE4  4E 80 00 20 */	blr

.global Enraged__9CBabygothFR13CStateManager9EStateMsgf
Enraged__9CBabygothFR13CStateManager9EStateMsgf:
/* 8021FB88 0021CAE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021FB8C 0021CAEC  7C 08 02 A6 */	mflr r0
/* 8021FB90 0021CAF0  2C 05 00 01 */	cmpwi r5, 1
/* 8021FB94 0021CAF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021FB98 0021CAF8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021FB9C 0021CAFC  41 82 00 30 */	beq lbl_8021FBCC
/* 8021FBA0 0021CB00  40 80 01 4C */	bge lbl_8021FCEC
/* 8021FBA4 0021CB04  2C 05 00 00 */	cmpwi r5, 0
/* 8021FBA8 0021CB08  40 80 00 08 */	bge lbl_8021FBB0
/* 8021FBAC 0021CB0C  48 00 01 40 */	b lbl_8021FCEC
lbl_8021FBB0:
/* 8021FBB0 0021CB10  88 83 0A 48 */	lbz r4, 0xa48(r3)
/* 8021FBB4 0021CB14  38 00 00 01 */	li r0, 1
/* 8021FBB8 0021CB18  50 04 17 7A */	rlwimi r4, r0, 2, 0x1d, 0x1d
/* 8021FBBC 0021CB1C  38 00 00 00 */	li r0, 0
/* 8021FBC0 0021CB20  98 83 0A 48 */	stb r4, 0xa48(r3)
/* 8021FBC4 0021CB24  90 03 05 68 */	stw r0, 0x568(r3)
/* 8021FBC8 0021CB28  48 00 01 24 */	b lbl_8021FCEC
lbl_8021FBCC:
/* 8021FBCC 0021CB2C  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8021FBD0 0021CB30  2C 00 00 03 */	cmpwi r0, 3
/* 8021FBD4 0021CB34  41 82 01 00 */	beq lbl_8021FCD4
/* 8021FBD8 0021CB38  40 80 01 14 */	bge lbl_8021FCEC
/* 8021FBDC 0021CB3C  2C 00 00 00 */	cmpwi r0, 0
/* 8021FBE0 0021CB40  41 82 00 08 */	beq lbl_8021FBE8
/* 8021FBE4 0021CB44  48 00 01 08 */	b lbl_8021FCEC
lbl_8021FBE8:
/* 8021FBE8 0021CB48  81 43 04 50 */	lwz r10, 0x450(r3)
/* 8021FBEC 0021CB4C  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 8021FBF0 0021CB50  2C 00 00 0C */	cmpwi r0, 0xc
/* 8021FBF4 0021CB54  40 82 00 10 */	bne lbl_8021FC04
/* 8021FBF8 0021CB58  38 00 00 03 */	li r0, 3
/* 8021FBFC 0021CB5C  90 03 05 68 */	stw r0, 0x568(r3)
/* 8021FC00 0021CB60  48 00 00 EC */	b lbl_8021FCEC
lbl_8021FC04:
/* 8021FC04 0021CB64  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 8021FC08 0021CB68  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8021FC0C 0021CB6C  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 8021FC10 0021CB70  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8021FC14 0021CB74  38 60 00 00 */	li r3, 0
/* 8021FC18 0021CB78  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 8021FC1C 0021CB7C  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 8021FC20 0021CB80  C0 45 00 00 */	lfs f2, 0(r5)
/* 8021FC24 0021CB84  C0 25 00 04 */	lfs f1, 4(r5)
/* 8021FC28 0021CB88  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 8021FC2C 0021CB8C  C0 05 00 08 */	lfs f0, 8(r5)
/* 8021FC30 0021CB90  7C 80 23 78 */	mr r0, r4
/* 8021FC34 0021CB94  39 00 00 0E */	li r8, 0xe
/* 8021FC38 0021CB98  38 C0 00 03 */	li r6, 3
/* 8021FC3C 0021CB9C  38 A0 FF FF */	li r5, -1
/* 8021FC40 0021CBA0  3B EA 00 04 */	addi r31, r10, 4
/* 8021FC44 0021CBA4  91 21 00 08 */	stw r9, 8(r1)
/* 8021FC48 0021CBA8  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 8021FC4C 0021CBAC  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 8021FC50 0021CBB0  7F E3 FB 78 */	mr r3, r31
/* 8021FC54 0021CBB4  90 81 00 24 */	stw r4, 0x24(r1)
/* 8021FC58 0021CBB8  38 80 00 0E */	li r4, 0xe
/* 8021FC5C 0021CBBC  91 01 00 0C */	stw r8, 0xc(r1)
/* 8021FC60 0021CBC0  90 E1 00 08 */	stw r7, 8(r1)
/* 8021FC64 0021CBC4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8021FC68 0021CBC8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8021FC6C 0021CBCC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8021FC70 0021CBD0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8021FC74 0021CBD4  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8021FC78 0021CBD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021FC7C 0021CBDC  4B F1 17 BD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8021FC80 0021CBE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021FC84 0021CBE4  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8021FC88 0021CBE8  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8021FC8C 0021CBEC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8021FC90 0021CBF0  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8021FC94 0021CBF4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8021FC98 0021CBF8  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8021FC9C 0021CBFC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8021FCA0 0021CC00  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8021FCA4 0021CC04  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8021FCA8 0021CC08  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8021FCAC 0021CC0C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8021FCB0 0021CC10  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8021FCB4 0021CC14  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8021FCB8 0021CC18  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8021FCBC 0021CC1C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8021FCC0 0021CC20  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8021FCC4 0021CC24  90 81 00 08 */	stw r4, 8(r1)
/* 8021FCC8 0021CC28  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8021FCCC 0021CC2C  90 01 00 08 */	stw r0, 8(r1)
/* 8021FCD0 0021CC30  48 00 00 1C */	b lbl_8021FCEC
lbl_8021FCD4:
/* 8021FCD4 0021CC34  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8021FCD8 0021CC38  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8021FCDC 0021CC3C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8021FCE0 0021CC40  41 82 00 0C */	beq lbl_8021FCEC
/* 8021FCE4 0021CC44  38 00 00 04 */	li r0, 4
/* 8021FCE8 0021CC48  90 03 05 68 */	stw r0, 0x568(r3)
lbl_8021FCEC:
/* 8021FCEC 0021CC4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021FCF0 0021CC50  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8021FCF4 0021CC54  7C 08 03 A6 */	mtlr r0
/* 8021FCF8 0021CC58  38 21 00 30 */	addi r1, r1, 0x30
/* 8021FCFC 0021CC5C  4E 80 00 20 */	blr

.global FollowPattern__9CBabygothFR13CStateManager9EStateMsgf
FollowPattern__9CBabygothFR13CStateManager9EStateMsgf:
/* 8021FD00 0021CC60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021FD04 0021CC64  7C 08 02 A6 */	mflr r0
/* 8021FD08 0021CC68  2C 05 00 01 */	cmpwi r5, 1
/* 8021FD0C 0021CC6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021FD10 0021CC70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021FD14 0021CC74  7C 7F 1B 78 */	mr r31, r3
/* 8021FD18 0021CC78  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8021FD1C 0021CC7C  41 82 00 74 */	beq lbl_8021FD90
/* 8021FD20 0021CC80  40 80 00 10 */	bge lbl_8021FD30
/* 8021FD24 0021CC84  2C 05 00 00 */	cmpwi r5, 0
/* 8021FD28 0021CC88  40 80 00 14 */	bge lbl_8021FD3C
/* 8021FD2C 0021CC8C  48 00 01 68 */	b lbl_8021FE94
lbl_8021FD30:
/* 8021FD30 0021CC90  2C 05 00 03 */	cmpwi r5, 3
/* 8021FD34 0021CC94  40 80 01 60 */	bge lbl_8021FE94
/* 8021FD38 0021CC98  48 00 01 44 */	b lbl_8021FE7C
lbl_8021FD3C:
/* 8021FD3C 0021CC9C  88 1F 0A 49 */	lbz r0, 0xa49(r31)
/* 8021FD40 0021CCA0  38 60 00 04 */	li r3, 4
/* 8021FD44 0021CCA4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8021FD48 0021CCA8  41 82 00 08 */	beq lbl_8021FD50
/* 8021FD4C 0021CCAC  38 60 00 00 */	li r3, 0
lbl_8021FD50:
/* 8021FD50 0021CCB0  90 7F 05 68 */	stw r3, 0x568(r31)
/* 8021FD54 0021CCB4  38 A0 00 00 */	li r5, 0
/* 8021FD58 0021CCB8  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 8021FD5C 0021CCBC  88 1F 0A 49 */	lbz r0, 0xa49(r31)
/* 8021FD60 0021CCC0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8021FD64 0021CCC4  98 1F 0A 49 */	stb r0, 0xa49(r31)
/* 8021FD68 0021CCC8  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 8021FD6C 0021CCCC  38 81 00 0C */	addi r4, r1, 0xc
/* 8021FD70 0021CCD0  A0 05 00 08 */	lhz r0, 8(r5)
/* 8021FD74 0021CCD4  B0 01 00 08 */	sth r0, 8(r1)
/* 8021FD78 0021CCD8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021FD7C 0021CCDC  4B F5 54 9D */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 8021FD80 0021CCE0  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 8021FD84 0021CCE4  38 80 00 01 */	li r4, 1
/* 8021FD88 0021CCE8  4B F5 54 9D */	bl SetActive__13CBoneTrackingFb
/* 8021FD8C 0021CCEC  48 00 01 08 */	b lbl_8021FE94
lbl_8021FD90:
/* 8021FD90 0021CCF0  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8021FD94 0021CCF4  2C 00 00 03 */	cmpwi r0, 3
/* 8021FD98 0021CCF8  41 82 00 90 */	beq lbl_8021FE28
/* 8021FD9C 0021CCFC  40 80 00 F8 */	bge lbl_8021FE94
/* 8021FDA0 0021CD00  2C 00 00 00 */	cmpwi r0, 0
/* 8021FDA4 0021CD04  41 82 00 08 */	beq lbl_8021FDAC
/* 8021FDA8 0021CD08  48 00 00 EC */	b lbl_8021FE94
lbl_8021FDAC:
/* 8021FDAC 0021CD0C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8021FDB0 0021CD10  38 C0 00 01 */	li r6, 1
/* 8021FDB4 0021CD14  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8021FDB8 0021CD18  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8021FDBC 0021CD1C  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 8021FDC0 0021CD20  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021FDC4 0021CD24  38 A4 A9 E4 */	addi r5, r4, lbl_803DA9E4@l
/* 8021FDC8 0021CD28  38 00 00 00 */	li r0, 0
/* 8021FDCC 0021CD2C  3B C3 00 04 */	addi r30, r3, 4
/* 8021FDD0 0021CD30  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8021FDD4 0021CD34  7F C3 F3 78 */	mr r3, r30
/* 8021FDD8 0021CD38  38 80 00 01 */	li r4, 1
/* 8021FDDC 0021CD3C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8021FDE0 0021CD40  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8021FDE4 0021CD44  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8021FDE8 0021CD48  4B F1 16 51 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8021FDEC 0021CD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021FDF0 0021CD50  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8021FDF4 0021CD54  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8021FDF8 0021CD58  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8021FDFC 0021CD5C  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 8021FE00 0021CD60  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 8021FE04 0021CD64  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8021FE08 0021CD68  38 00 00 03 */	li r0, 3
/* 8021FE0C 0021CD6C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8021FE10 0021CD70  90 DE 00 CC */	stw r6, 0xcc(r30)
/* 8021FE14 0021CD74  90 BE 00 D0 */	stw r5, 0xd0(r30)
/* 8021FE18 0021CD78  90 81 00 10 */	stw r4, 0x10(r1)
/* 8021FE1C 0021CD7C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8021FE20 0021CD80  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8021FE24 0021CD84  48 00 00 70 */	b lbl_8021FE94
lbl_8021FE28:
/* 8021FE28 0021CD88  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 8021FE2C 0021CD8C  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8021FE30 0021CD90  2C 00 00 03 */	cmpwi r0, 3
/* 8021FE34 0021CD94  40 82 00 3C */	bne lbl_8021FE70
/* 8021FE38 0021CD98  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 8021FE3C 0021CD9C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8021FE40 0021CDA0  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8021FE44 0021CDA4  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8021FE48 0021CDA8  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8021FE4C 0021CDAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8021FE50 0021CDB0  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8021FE54 0021CDB4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8021FE58 0021CDB8  EC 64 18 28 */	fsubs f3, f4, f3
/* 8021FE5C 0021CDBC  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8021FE60 0021CDC0  EC 02 08 28 */	fsubs f0, f2, f1
/* 8021FE64 0021CDC4  D0 65 00 20 */	stfs f3, 0x20(r5)
/* 8021FE68 0021CDC8  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 8021FE6C 0021CDCC  48 00 00 28 */	b lbl_8021FE94
lbl_8021FE70:
/* 8021FE70 0021CDD0  38 00 00 04 */	li r0, 4
/* 8021FE74 0021CDD4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8021FE78 0021CDD8  48 00 00 1C */	b lbl_8021FE94
lbl_8021FE7C:
/* 8021FE7C 0021CDDC  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 8021FE80 0021CDE0  38 80 00 00 */	li r4, 0
/* 8021FE84 0021CDE4  4B F5 53 A1 */	bl SetActive__13CBoneTrackingFb
/* 8021FE88 0021CDE8  7F E3 FB 78 */	mr r3, r31
/* 8021FE8C 0021CDEC  38 80 00 00 */	li r4, 0
/* 8021FE90 0021CDF0  4B FF E2 0D */	bl sub_8021e09c
lbl_8021FE94:
/* 8021FE94 0021CDF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021FE98 0021CDF8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8021FE9C 0021CDFC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8021FEA0 0021CE00  7C 08 03 A6 */	mtlr r0
/* 8021FEA4 0021CE04  38 21 00 30 */	addi r1, r1, 0x30
/* 8021FEA8 0021CE08  4E 80 00 20 */	blr

.global Taunt__9CBabygothFR13CStateManager9EStateMsgf
Taunt__9CBabygothFR13CStateManager9EStateMsgf:
/* 8021FEAC 0021CE0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021FEB0 0021CE10  7C 08 02 A6 */	mflr r0
/* 8021FEB4 0021CE14  2C 05 00 01 */	cmpwi r5, 1
/* 8021FEB8 0021CE18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021FEBC 0021CE1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021FEC0 0021CE20  7C 7F 1B 78 */	mr r31, r3
/* 8021FEC4 0021CE24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021FEC8 0021CE28  41 82 00 84 */	beq lbl_8021FF4C
/* 8021FECC 0021CE2C  40 80 00 98 */	bge lbl_8021FF64
/* 8021FED0 0021CE30  2C 05 00 00 */	cmpwi r5, 0
/* 8021FED4 0021CE34  40 80 00 08 */	bge lbl_8021FEDC
/* 8021FED8 0021CE38  48 00 00 8C */	b lbl_8021FF64
lbl_8021FEDC:
/* 8021FEDC 0021CE3C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8021FEE0 0021CE40  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8021FEE4 0021CE44  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8021FEE8 0021CE48  3C 80 80 3E */	lis r4, lbl_803DAA14@ha
/* 8021FEEC 0021CE4C  90 01 00 08 */	stw r0, 8(r1)
/* 8021FEF0 0021CE50  38 A4 AA 14 */	addi r5, r4, lbl_803DAA14@l
/* 8021FEF4 0021CE54  38 80 00 12 */	li r4, 0x12
/* 8021FEF8 0021CE58  38 00 00 01 */	li r0, 1
/* 8021FEFC 0021CE5C  3B C3 00 04 */	addi r30, r3, 4
/* 8021FF00 0021CE60  90 81 00 0C */	stw r4, 0xc(r1)
/* 8021FF04 0021CE64  7F C3 F3 78 */	mr r3, r30
/* 8021FF08 0021CE68  38 80 00 12 */	li r4, 0x12
/* 8021FF0C 0021CE6C  90 A1 00 08 */	stw r5, 8(r1)
/* 8021FF10 0021CE70  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021FF14 0021CE74  4B F1 15 25 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8021FF18 0021CE78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021FF1C 0021CE7C  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 8021FF20 0021CE80  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 8021FF24 0021CE84  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8021FF28 0021CE88  90 1E 02 14 */	stw r0, 0x214(r30)
/* 8021FF2C 0021CE8C  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 8021FF30 0021CE90  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8021FF34 0021CE94  38 00 00 03 */	li r0, 3
/* 8021FF38 0021CE98  90 81 00 08 */	stw r4, 8(r1)
/* 8021FF3C 0021CE9C  90 BE 02 18 */	stw r5, 0x218(r30)
/* 8021FF40 0021CEA0  90 61 00 08 */	stw r3, 8(r1)
/* 8021FF44 0021CEA4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8021FF48 0021CEA8  48 00 00 1C */	b lbl_8021FF64
lbl_8021FF4C:
/* 8021FF4C 0021CEAC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8021FF50 0021CEB0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8021FF54 0021CEB4  2C 00 00 10 */	cmpwi r0, 0x10
/* 8021FF58 0021CEB8  41 82 00 0C */	beq lbl_8021FF64
/* 8021FF5C 0021CEBC  38 00 00 04 */	li r0, 4
/* 8021FF60 0021CEC0  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_8021FF64:
/* 8021FF64 0021CEC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021FF68 0021CEC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021FF6C 0021CECC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021FF70 0021CED0  7C 08 03 A6 */	mtlr r0
/* 8021FF74 0021CED4  38 21 00 20 */	addi r1, r1, 0x20
/* 8021FF78 0021CED8  4E 80 00 20 */	blr

.global Crouch__9CBabygothFR13CStateManager9EStateMsgf
Crouch__9CBabygothFR13CStateManager9EStateMsgf:
/* 8021FF7C 0021CEDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021FF80 0021CEE0  7C 08 02 A6 */	mflr r0
/* 8021FF84 0021CEE4  2C 05 00 01 */	cmpwi r5, 1
/* 8021FF88 0021CEE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021FF8C 0021CEEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021FF90 0021CEF0  7C 9F 23 78 */	mr r31, r4
/* 8021FF94 0021CEF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021FF98 0021CEF8  7C 7E 1B 78 */	mr r30, r3
/* 8021FF9C 0021CEFC  41 82 00 A8 */	beq lbl_80220044
/* 8021FFA0 0021CF00  40 80 00 10 */	bge lbl_8021FFB0
/* 8021FFA4 0021CF04  2C 05 00 00 */	cmpwi r5, 0
/* 8021FFA8 0021CF08  40 80 00 14 */	bge lbl_8021FFBC
/* 8021FFAC 0021CF0C  48 00 00 98 */	b lbl_80220044
lbl_8021FFB0:
/* 8021FFB0 0021CF10  2C 05 00 03 */	cmpwi r5, 3
/* 8021FFB4 0021CF14  40 80 00 90 */	bge lbl_80220044
/* 8021FFB8 0021CF18  48 00 00 7C */	b lbl_80220034
lbl_8021FFBC:
/* 8021FFBC 0021CF1C  7F E6 FB 78 */	mr r6, r31
/* 8021FFC0 0021CF20  38 80 00 29 */	li r4, 0x29
/* 8021FFC4 0021CF24  38 A0 00 28 */	li r5, 0x28
/* 8021FFC8 0021CF28  4B E3 3F 0D */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8021FFCC 0021CF2C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8021FFD0 0021CF30  7F E6 FB 78 */	mr r6, r31
/* 8021FFD4 0021CF34  38 81 00 0C */	addi r4, r1, 0xc
/* 8021FFD8 0021CF38  38 A0 00 08 */	li r5, 8
/* 8021FFDC 0021CF3C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8021FFE0 0021CF40  B0 01 00 08 */	sth r0, 8(r1)
/* 8021FFE4 0021CF44  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8021FFE8 0021CF48  4B F5 B2 6D */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
/* 8021FFEC 0021CF4C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8021FFF0 0021CF50  38 80 00 00 */	li r4, 0
/* 8021FFF4 0021CF54  4B F1 A9 E5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8021FFF8 0021CF58  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 8021FFFC 0021CF5C  38 80 00 00 */	li r4, 0
/* 80220000 0021CF60  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80220004 0021CF64  38 60 00 00 */	li r3, 0
/* 80220008 0021CF68  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 8022000C 0021CF6C  54 04 CF FE */	rlwinm r4, r0, 0x19, 0x1f, 0x1f
/* 80220010 0021CF70  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80220014 0021CF74  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 80220018 0021CF78  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8022001C 0021CF7C  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 80220020 0021CF80  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80220024 0021CF84  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80220028 0021CF88  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8022002C 0021CF8C  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80220030 0021CF90  48 00 00 14 */	b lbl_80220044
lbl_80220034:
/* 80220034 0021CF94  7F E6 FB 78 */	mr r6, r31
/* 80220038 0021CF98  38 80 00 29 */	li r4, 0x29
/* 8022003C 0021CF9C  38 A0 00 28 */	li r5, 0x28
/* 80220040 0021CFA0  4B E3 42 75 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
lbl_80220044:
/* 80220044 0021CFA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80220048 0021CFA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8022004C 0021CFAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80220050 0021CFB0  7C 08 03 A6 */	mtlr r0
/* 80220054 0021CFB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80220058 0021CFB8  4E 80 00 20 */	blr

.global Deactivate__9CBabygothFR13CStateManager9EStateMsgf
Deactivate__9CBabygothFR13CStateManager9EStateMsgf:
/* 8022005C 0021CFBC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80220060 0021CFC0  7C 08 02 A6 */	mflr r0
/* 80220064 0021CFC4  2C 05 00 01 */	cmpwi r5, 1
/* 80220068 0021CFC8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8022006C 0021CFCC  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80220070 0021CFD0  7C 7F 1B 78 */	mr r31, r3
/* 80220074 0021CFD4  41 82 00 20 */	beq lbl_80220094
/* 80220078 0021CFD8  40 80 02 98 */	bge lbl_80220310
/* 8022007C 0021CFDC  2C 05 00 00 */	cmpwi r5, 0
/* 80220080 0021CFE0  40 80 00 08 */	bge lbl_80220088
/* 80220084 0021CFE4  48 00 02 8C */	b lbl_80220310
lbl_80220088:
/* 80220088 0021CFE8  38 00 00 01 */	li r0, 1
/* 8022008C 0021CFEC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80220090 0021CFF0  48 00 02 80 */	b lbl_80220310
lbl_80220094:
/* 80220094 0021CFF4  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80220098 0021CFF8  2C 00 00 02 */	cmpwi r0, 2
/* 8022009C 0021CFFC  41 82 00 D8 */	beq lbl_80220174
/* 802200A0 0021D000  40 80 00 14 */	bge lbl_802200B4
/* 802200A4 0021D004  2C 00 00 00 */	cmpwi r0, 0
/* 802200A8 0021D008  41 82 01 58 */	beq lbl_80220200
/* 802200AC 0021D00C  40 80 00 14 */	bge lbl_802200C0
/* 802200B0 0021D010  48 00 02 60 */	b lbl_80220310
lbl_802200B4:
/* 802200B4 0021D014  2C 00 00 04 */	cmpwi r0, 4
/* 802200B8 0021D018  40 80 02 58 */	bge lbl_80220310
/* 802200BC 0021D01C  48 00 02 3C */	b lbl_802202F8
lbl_802200C0:
/* 802200C0 0021D020  38 DF 03 A0 */	addi r6, r31, 0x3a0
/* 802200C4 0021D024  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 802200C8 0021D028  C0 3F 03 A4 */	lfs f1, 0x3a4(r31)
/* 802200CC 0021D02C  C0 7F 03 A0 */	lfs f3, 0x3a0(r31)
/* 802200D0 0021D030  EC 81 00 28 */	fsubs f4, f1, f0
/* 802200D4 0021D034  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 802200D8 0021D038  C0 5F 03 A8 */	lfs f2, 0x3a8(r31)
/* 802200DC 0021D03C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 802200E0 0021D040  EC 63 08 28 */	fsubs f3, f3, f1
/* 802200E4 0021D044  EC 24 01 32 */	fmuls f1, f4, f4
/* 802200E8 0021D048  EC 42 00 28 */	fsubs f2, f2, f0
/* 802200EC 0021D04C  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 802200F0 0021D050  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 802200F4 0021D054  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 802200F8 0021D058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802200FC 0021D05C  4C 40 13 82 */	cror 2, 0, 2
/* 80220100 0021D060  40 82 00 10 */	bne lbl_80220110
/* 80220104 0021D064  38 00 00 02 */	li r0, 2
/* 80220108 0021D068  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8022010C 0021D06C  48 00 02 04 */	b lbl_80220310
lbl_80220110:
/* 80220110 0021D070  C0 22 B4 14 */	lfs f1, lbl_805AD134@sda21(r2)
/* 80220114 0021D074  7F E5 FB 78 */	mr r5, r31
/* 80220118 0021D078  38 61 00 08 */	addi r3, r1, 8
/* 8022011C 0021D07C  38 9F 04 5C */	addi r4, r31, 0x45c
/* 80220120 0021D080  4B F1 E9 FD */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 80220124 0021D084  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80220128 0021D088  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8022012C 0021D08C  C0 C1 00 08 */	lfs f6, 8(r1)
/* 80220130 0021D090  38 81 00 5C */	addi r4, r1, 0x5c
/* 80220134 0021D094  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80220138 0021D098  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 8022013C 0021D09C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80220140 0021D0A0  C0 23 00 08 */	lfs f1, 8(r3)
/* 80220144 0021D0A4  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 80220148 0021D0A8  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 8022014C 0021D0AC  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 80220150 0021D0B0  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 80220154 0021D0B4  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 80220158 0021D0B8  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8022015C 0021D0BC  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80220160 0021D0C0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80220164 0021D0C4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80220168 0021D0C8  38 63 00 04 */	addi r3, r3, 4
/* 8022016C 0021D0CC  4B F1 15 AD */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80220170 0021D0D0  48 00 01 A0 */	b lbl_80220310
lbl_80220174:
/* 80220174 0021D0D4  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80220178 0021D0D8  38 61 00 14 */	addi r3, r1, 0x14
/* 8022017C 0021D0DC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80220180 0021D0E0  38 9F 08 C4 */	addi r4, r31, 0x8c4
/* 80220184 0021D0E4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80220188 0021D0E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8022018C 0021D0EC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80220190 0021D0F0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80220194 0021D0F4  48 0F 44 9D */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 80220198 0021D0F8  C0 02 B4 40 */	lfs f0, lbl_805AD160@sda21(r2)
/* 8022019C 0021D0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802201A0 0021D100  40 81 00 54 */	ble lbl_802201F4
/* 802201A4 0021D104  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 802201A8 0021D108  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 802201AC 0021D10C  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 802201B0 0021D110  38 81 00 40 */	addi r4, r1, 0x40
/* 802201B4 0021D114  C0 43 00 04 */	lfs f2, 4(r3)
/* 802201B8 0021D118  C0 23 00 08 */	lfs f1, 8(r3)
/* 802201BC 0021D11C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 802201C0 0021D120  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 802201C4 0021D124  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 802201C8 0021D128  C0 3F 08 C4 */	lfs f1, 0x8c4(r31)
/* 802201CC 0021D12C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 802201D0 0021D130  C0 3F 08 C8 */	lfs f1, 0x8c8(r31)
/* 802201D4 0021D134  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 802201D8 0021D138  C0 3F 08 CC */	lfs f1, 0x8cc(r31)
/* 802201DC 0021D13C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 802201E0 0021D140  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 802201E4 0021D144  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 802201E8 0021D148  38 63 00 04 */	addi r3, r3, 4
/* 802201EC 0021D14C  4B F1 15 2D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 802201F0 0021D150  48 00 01 20 */	b lbl_80220310
lbl_802201F4:
/* 802201F4 0021D154  38 00 00 00 */	li r0, 0
/* 802201F8 0021D158  90 1F 05 68 */	stw r0, 0x568(r31)
/* 802201FC 0021D15C  48 00 01 14 */	b lbl_80220310
lbl_80220200:
/* 80220200 0021D160  81 5F 04 50 */	lwz r10, 0x450(r31)
/* 80220204 0021D164  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 80220208 0021D168  2C 00 00 0C */	cmpwi r0, 0xc
/* 8022020C 0021D16C  40 82 00 1C */	bne lbl_80220228
/* 80220210 0021D170  38 00 00 03 */	li r0, 3
/* 80220214 0021D174  38 80 00 00 */	li r4, 0
/* 80220218 0021D178  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8022021C 0021D17C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80220220 0021D180  4B F1 A7 B9 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80220224 0021D184  48 00 00 EC */	b lbl_80220310
lbl_80220228:
/* 80220228 0021D188  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 8022022C 0021D18C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80220230 0021D190  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 80220234 0021D194  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80220238 0021D198  38 60 00 00 */	li r3, 0
/* 8022023C 0021D19C  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 80220240 0021D1A0  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 80220244 0021D1A4  C0 45 00 00 */	lfs f2, 0(r5)
/* 80220248 0021D1A8  C0 25 00 04 */	lfs f1, 4(r5)
/* 8022024C 0021D1AC  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 80220250 0021D1B0  C0 05 00 08 */	lfs f0, 8(r5)
/* 80220254 0021D1B4  7C 80 23 78 */	mr r0, r4
/* 80220258 0021D1B8  39 00 00 0E */	li r8, 0xe
/* 8022025C 0021D1BC  38 C0 00 01 */	li r6, 1
/* 80220260 0021D1C0  38 A0 FF FF */	li r5, -1
/* 80220264 0021D1C4  3B EA 00 04 */	addi r31, r10, 4
/* 80220268 0021D1C8  91 21 00 20 */	stw r9, 0x20(r1)
/* 8022026C 0021D1CC  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 80220270 0021D1D0  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 80220274 0021D1D4  7F E3 FB 78 */	mr r3, r31
/* 80220278 0021D1D8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8022027C 0021D1DC  38 80 00 0E */	li r4, 0xe
/* 80220280 0021D1E0  91 01 00 24 */	stw r8, 0x24(r1)
/* 80220284 0021D1E4  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80220288 0021D1E8  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8022028C 0021D1EC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80220290 0021D1F0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80220294 0021D1F4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80220298 0021D1F8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8022029C 0021D1FC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802202A0 0021D200  4B F1 11 99 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 802202A4 0021D204  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802202A8 0021D208  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 802202AC 0021D20C  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 802202B0 0021D210  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 802202B4 0021D214  90 1F 01 90 */	stw r0, 0x190(r31)
/* 802202B8 0021D218  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 802202BC 0021D21C  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 802202C0 0021D220  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 802202C4 0021D224  90 BF 01 94 */	stw r5, 0x194(r31)
/* 802202C8 0021D228  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 802202CC 0021D22C  90 7F 01 98 */	stw r3, 0x198(r31)
/* 802202D0 0021D230  80 61 00 34 */	lwz r3, 0x34(r1)
/* 802202D4 0021D234  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 802202D8 0021D238  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 802202DC 0021D23C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 802202E0 0021D240  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 802202E4 0021D244  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 802202E8 0021D248  90 81 00 20 */	stw r4, 0x20(r1)
/* 802202EC 0021D24C  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 802202F0 0021D250  90 01 00 20 */	stw r0, 0x20(r1)
/* 802202F4 0021D254  48 00 00 1C */	b lbl_80220310
lbl_802202F8:
/* 802202F8 0021D258  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 802202FC 0021D25C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80220300 0021D260  2C 00 00 0C */	cmpwi r0, 0xc
/* 80220304 0021D264  41 82 00 0C */	beq lbl_80220310
/* 80220308 0021D268  38 00 00 04 */	li r0, 4
/* 8022030C 0021D26C  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80220310:
/* 80220310 0021D270  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80220314 0021D274  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80220318 0021D278  7C 08 03 A6 */	mtlr r0
/* 8022031C 0021D27C  38 21 00 80 */	addi r1, r1, 0x80
/* 80220320 0021D280  4E 80 00 20 */	blr

.global Generate__9CBabygothFR13CStateManager9EStateMsgf
Generate__9CBabygothFR13CStateManager9EStateMsgf:
/* 80220324 0021D284  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80220328 0021D288  7C 08 02 A6 */	mflr r0
/* 8022032C 0021D28C  2C 05 00 01 */	cmpwi r5, 1
/* 80220330 0021D290  90 01 00 34 */	stw r0, 0x34(r1)
/* 80220334 0021D294  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80220338 0021D298  7C 9F 23 78 */	mr r31, r4
/* 8022033C 0021D29C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80220340 0021D2A0  7C 7E 1B 78 */	mr r30, r3
/* 80220344 0021D2A4  41 82 00 38 */	beq lbl_8022037C
/* 80220348 0021D2A8  40 80 01 68 */	bge lbl_802204B0
/* 8022034C 0021D2AC  2C 05 00 00 */	cmpwi r5, 0
/* 80220350 0021D2B0  40 80 00 08 */	bge lbl_80220358
/* 80220354 0021D2B4  48 00 01 5C */	b lbl_802204B0
lbl_80220358:
/* 80220358 0021D2B8  38 00 00 00 */	li r0, 0
/* 8022035C 0021D2BC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80220360 0021D2C0  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 80220364 0021D2C4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80220368 0021D2C8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8022036C 0021D2CC  D0 1E 08 C4 */	stfs f0, 0x8c4(r30)
/* 80220370 0021D2D0  D0 3E 08 C8 */	stfs f1, 0x8c8(r30)
/* 80220374 0021D2D4  D0 5E 08 CC */	stfs f2, 0x8cc(r30)
/* 80220378 0021D2D8  48 00 01 38 */	b lbl_802204B0
lbl_8022037C:
/* 8022037C 0021D2DC  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 80220380 0021D2E0  2C 00 00 03 */	cmpwi r0, 3
/* 80220384 0021D2E4  41 82 01 14 */	beq lbl_80220498
/* 80220388 0021D2E8  40 80 01 28 */	bge lbl_802204B0
/* 8022038C 0021D2EC  2C 00 00 00 */	cmpwi r0, 0
/* 80220390 0021D2F0  41 82 00 08 */	beq lbl_80220398
/* 80220394 0021D2F4  48 00 01 1C */	b lbl_802204B0
lbl_80220398:
/* 80220398 0021D2F8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022039C 0021D2FC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 802203A0 0021D300  2C 00 00 0C */	cmpwi r0, 0xc
/* 802203A4 0021D304  40 82 00 2C */	bne lbl_802203D0
/* 802203A8 0021D308  38 80 00 01 */	li r4, 1
/* 802203AC 0021D30C  4B F1 A6 2D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802203B0 0021D310  38 00 00 03 */	li r0, 3
/* 802203B4 0021D314  7F C3 F3 78 */	mr r3, r30
/* 802203B8 0021D318  90 1E 05 68 */	stw r0, 0x568(r30)
/* 802203BC 0021D31C  7F E5 FB 78 */	mr r5, r31
/* 802203C0 0021D320  38 80 00 0A */	li r4, 0xa
/* 802203C4 0021D324  38 C0 FF FF */	li r6, -1
/* 802203C8 0021D328  4B E3 0C F9 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 802203CC 0021D32C  48 00 00 E4 */	b lbl_802204B0
lbl_802203D0:
/* 802203D0 0021D330  3C E0 80 3E */	lis r7, lbl_803DAA68@ha
/* 802203D4 0021D334  38 C0 00 00 */	li r6, 0
/* 802203D8 0021D338  39 27 AA 68 */	addi r9, r7, lbl_803DAA68@l
/* 802203DC 0021D33C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 802203E0 0021D340  50 C4 F8 00 */	rlwimi r4, r6, 0x1f, 0, 0
/* 802203E4 0021D344  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 802203E8 0021D348  C4 45 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r5)
/* 802203EC 0021D34C  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 802203F0 0021D350  7C 80 23 78 */	mr r0, r4
/* 802203F4 0021D354  90 81 00 24 */	stw r4, 0x24(r1)
/* 802203F8 0021D358  C0 25 00 04 */	lfs f1, 4(r5)
/* 802203FC 0021D35C  39 00 00 0E */	li r8, 0xe
/* 80220400 0021D360  C0 05 00 08 */	lfs f0, 8(r5)
/* 80220404 0021D364  38 A0 FF FF */	li r5, -1
/* 80220408 0021D368  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 8022040C 0021D36C  3B E3 00 04 */	addi r31, r3, 4
/* 80220410 0021D370  91 21 00 08 */	stw r9, 8(r1)
/* 80220414 0021D374  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 80220418 0021D378  7F E3 FB 78 */	mr r3, r31
/* 8022041C 0021D37C  38 80 00 0E */	li r4, 0xe
/* 80220420 0021D380  91 01 00 0C */	stw r8, 0xc(r1)
/* 80220424 0021D384  90 E1 00 08 */	stw r7, 8(r1)
/* 80220428 0021D388  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8022042C 0021D38C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80220430 0021D390  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80220434 0021D394  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80220438 0021D398  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8022043C 0021D39C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80220440 0021D3A0  4B F1 0F F9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80220444 0021D3A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80220448 0021D3A8  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8022044C 0021D3AC  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 80220450 0021D3B0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80220454 0021D3B4  90 1F 01 90 */	stw r0, 0x190(r31)
/* 80220458 0021D3B8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022045C 0021D3BC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80220460 0021D3C0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80220464 0021D3C4  90 BF 01 94 */	stw r5, 0x194(r31)
/* 80220468 0021D3C8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8022046C 0021D3CC  90 7F 01 98 */	stw r3, 0x198(r31)
/* 80220470 0021D3D0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80220474 0021D3D4  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 80220478 0021D3D8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8022047C 0021D3DC  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 80220480 0021D3E0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80220484 0021D3E4  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 80220488 0021D3E8  90 81 00 08 */	stw r4, 8(r1)
/* 8022048C 0021D3EC  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 80220490 0021D3F0  90 01 00 08 */	stw r0, 8(r1)
/* 80220494 0021D3F4  48 00 00 1C */	b lbl_802204B0
lbl_80220498:
/* 80220498 0021D3F8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022049C 0021D3FC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 802204A0 0021D400  2C 00 00 0C */	cmpwi r0, 0xc
/* 802204A4 0021D404  41 82 00 0C */	beq lbl_802204B0
/* 802204A8 0021D408  38 00 00 04 */	li r0, 4
/* 802204AC 0021D40C  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_802204B0:
/* 802204B0 0021D410  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802204B4 0021D414  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802204B8 0021D418  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802204BC 0021D41C  7C 08 03 A6 */	mtlr r0
/* 802204C0 0021D420  38 21 00 30 */	addi r1, r1, 0x30
/* 802204C4 0021D424  4E 80 00 20 */	blr

.global TargetPatrol__9CBabygothFR13CStateManager9EStateMsgf
TargetPatrol__9CBabygothFR13CStateManager9EStateMsgf:
/* 802204C8 0021D428  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802204CC 0021D42C  7C 08 02 A6 */	mflr r0
/* 802204D0 0021D430  90 01 00 54 */	stw r0, 0x54(r1)
/* 802204D4 0021D434  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802204D8 0021D438  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 802204DC 0021D43C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802204E0 0021D440  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802204E4 0021D444  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802204E8 0021D448  7C BF 2B 78 */	mr r31, r5
/* 802204EC 0021D44C  FF E0 08 90 */	fmr f31, f1
/* 802204F0 0021D450  2C 1F 00 01 */	cmpwi r31, 1
/* 802204F4 0021D454  7C 7D 1B 78 */	mr r29, r3
/* 802204F8 0021D458  7C 9E 23 78 */	mr r30, r4
/* 802204FC 0021D45C  41 82 00 F0 */	beq lbl_802205EC
/* 80220500 0021D460  40 80 01 BC */	bge lbl_802206BC
/* 80220504 0021D464  2C 1F 00 00 */	cmpwi r31, 0
/* 80220508 0021D468  40 80 00 08 */	bge lbl_80220510
/* 8022050C 0021D46C  48 00 01 B0 */	b lbl_802206BC
lbl_80220510:
/* 80220510 0021D470  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80220514 0021D474  38 A0 00 00 */	li r5, 0
/* 80220518 0021D478  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 8022051C 0021D47C  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 80220520 0021D480  4B FF D1 25 */	bl sub_8021d644
/* 80220524 0021D484  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 80220528 0021D488  38 60 00 00 */	li r3, 0
/* 8022052C 0021D48C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80220530 0021D490  38 80 00 01 */	li r4, 1
/* 80220534 0021D494  98 1D 04 00 */	stb r0, 0x400(r29)
/* 80220538 0021D498  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022053C 0021D49C  4B F1 A4 9D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80220540 0021D4A0  7F A3 EB 78 */	mr r3, r29
/* 80220544 0021D4A4  7F C4 F3 78 */	mr r4, r30
/* 80220548 0021D4A8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022054C 0021D4AC  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80220550 0021D4B0  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 80220554 0021D4B4  7D 89 03 A6 */	mtctr r12
/* 80220558 0021D4B8  4E 80 04 21 */	bctrl
/* 8022055C 0021D4BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220560 0021D4C0  41 82 00 28 */	beq lbl_80220588
/* 80220564 0021D4C4  FC 20 F8 90 */	fmr f1, f31
/* 80220568 0021D4C8  7F A3 EB 78 */	mr r3, r29
/* 8022056C 0021D4CC  7F C4 F3 78 */	mr r4, r30
/* 80220570 0021D4D0  7F E5 FB 78 */	mr r5, r31
/* 80220574 0021D4D4  4B FD 69 01 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 80220578 0021D4D8  7F A3 EB 78 */	mr r3, r29
/* 8022057C 0021D4DC  7F C4 F3 78 */	mr r4, r30
/* 80220580 0021D4E0  4B FD 4D 11 */	bl UpdateDest__10CPatternedFR13CStateManager
/* 80220584 0021D4E4  48 00 00 10 */	b lbl_80220594
lbl_80220588:
/* 80220588 0021D4E8  7F A3 EB 78 */	mr r3, r29
/* 8022058C 0021D4EC  38 9D 03 A0 */	addi r4, r29, 0x3a0
/* 80220590 0021D4F0  4B E5 C5 CD */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_80220594:
/* 80220594 0021D4F4  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 80220598 0021D4F8  7F A3 EB 78 */	mr r3, r29
/* 8022059C 0021D4FC  D0 1D 08 B8 */	stfs f0, 0x8b8(r29)
/* 802205A0 0021D500  C0 1D 02 E4 */	lfs f0, 0x2e4(r29)
/* 802205A4 0021D504  D0 1D 08 BC */	stfs f0, 0x8bc(r29)
/* 802205A8 0021D508  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 802205AC 0021D50C  D0 1D 08 C0 */	stfs f0, 0x8c0(r29)
/* 802205B0 0021D510  81 9D 00 00 */	lwz r12, 0(r29)
/* 802205B4 0021D514  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 802205B8 0021D518  7D 89 03 A6 */	mtctr r12
/* 802205BC 0021D51C  4E 80 04 21 */	bctrl
/* 802205C0 0021D520  28 03 00 00 */	cmplwi r3, 0
/* 802205C4 0021D524  41 82 00 F8 */	beq lbl_802206BC
/* 802205C8 0021D528  7F A3 EB 78 */	mr r3, r29
/* 802205CC 0021D52C  38 80 00 00 */	li r4, 0
/* 802205D0 0021D530  4B FF DA CD */	bl sub_8021e09c
/* 802205D4 0021D534  FC 20 F8 90 */	fmr f1, f31
/* 802205D8 0021D538  7F A3 EB 78 */	mr r3, r29
/* 802205DC 0021D53C  7F C4 F3 78 */	mr r4, r30
/* 802205E0 0021D540  7F E5 FB 78 */	mr r5, r31
/* 802205E4 0021D544  4B FD 60 E9 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 802205E8 0021D548  48 00 00 D4 */	b lbl_802206BC
lbl_802205EC:
/* 802205EC 0021D54C  81 83 00 00 */	lwz r12, 0(r3)
/* 802205F0 0021D550  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 802205F4 0021D554  7D 89 03 A6 */	mtctr r12
/* 802205F8 0021D558  4E 80 04 21 */	bctrl
/* 802205FC 0021D55C  28 03 00 00 */	cmplwi r3, 0
/* 80220600 0021D560  41 82 00 58 */	beq lbl_80220658
/* 80220604 0021D564  7F A3 EB 78 */	mr r3, r29
/* 80220608 0021D568  7F C4 F3 78 */	mr r4, r30
/* 8022060C 0021D56C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80220610 0021D570  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80220614 0021D574  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80220618 0021D578  7D 89 03 A6 */	mtctr r12
/* 8022061C 0021D57C  4E 80 04 21 */	bctrl
/* 80220620 0021D580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220624 0021D584  40 82 00 34 */	bne lbl_80220658
/* 80220628 0021D588  7F A3 EB 78 */	mr r3, r29
/* 8022062C 0021D58C  38 80 00 00 */	li r4, 0
/* 80220630 0021D590  4B FF DA 6D */	bl sub_8021e09c
/* 80220634 0021D594  FC 20 F8 90 */	fmr f1, f31
/* 80220638 0021D598  7F A3 EB 78 */	mr r3, r29
/* 8022063C 0021D59C  7F C4 F3 78 */	mr r4, r30
/* 80220640 0021D5A0  7F E5 FB 78 */	mr r5, r31
/* 80220644 0021D5A4  4B FD 60 89 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 80220648 0021D5A8  7F A3 EB 78 */	mr r3, r29
/* 8022064C 0021D5AC  7F C4 F3 78 */	mr r4, r30
/* 80220650 0021D5B0  4B FF D7 B9 */	bl sub_8021de08
/* 80220654 0021D5B4  48 00 00 68 */	b lbl_802206BC
lbl_80220658:
/* 80220658 0021D5B8  C0 22 B4 44 */	lfs f1, lbl_805AD164@sda21(r2)
/* 8022065C 0021D5BC  7F A5 EB 78 */	mr r5, r29
/* 80220660 0021D5C0  38 61 00 08 */	addi r3, r1, 8
/* 80220664 0021D5C4  38 9D 04 5C */	addi r4, r29, 0x45c
/* 80220668 0021D5C8  38 DD 08 B8 */	addi r6, r29, 0x8b8
/* 8022066C 0021D5CC  4B F1 E4 B1 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 80220670 0021D5D0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80220674 0021D5D4  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 80220678 0021D5D8  C0 C1 00 08 */	lfs f6, 8(r1)
/* 8022067C 0021D5DC  38 81 00 14 */	addi r4, r1, 0x14
/* 80220680 0021D5E0  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80220684 0021D5E4  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 80220688 0021D5E8  C0 43 00 04 */	lfs f2, 4(r3)
/* 8022068C 0021D5EC  C0 23 00 08 */	lfs f1, 8(r3)
/* 80220690 0021D5F0  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 80220694 0021D5F4  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 80220698 0021D5F8  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8022069C 0021D5FC  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 802206A0 0021D600  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 802206A4 0021D604  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 802206A8 0021D608  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 802206AC 0021D60C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802206B0 0021D610  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 802206B4 0021D614  38 63 00 04 */	addi r3, r3, 4
/* 802206B8 0021D618  4B F1 10 61 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_802206BC:
/* 802206BC 0021D61C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 802206C0 0021D620  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802206C4 0021D624  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802206C8 0021D628  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802206CC 0021D62C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802206D0 0021D630  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802206D4 0021D634  7C 08 03 A6 */	mtlr r0
/* 802206D8 0021D638  38 21 00 50 */	addi r1, r1, 0x50
/* 802206DC 0021D63C  4E 80 00 20 */	blr

.global Patrol__9CBabygothFR13CStateManager9EStateMsgf
Patrol__9CBabygothFR13CStateManager9EStateMsgf:
/* 802206E0 0021D640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802206E4 0021D644  7C 08 02 A6 */	mflr r0
/* 802206E8 0021D648  90 01 00 24 */	stw r0, 0x24(r1)
/* 802206EC 0021D64C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802206F0 0021D650  FF E0 08 90 */	fmr f31, f1
/* 802206F4 0021D654  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802206F8 0021D658  7C BF 2B 78 */	mr r31, r5
/* 802206FC 0021D65C  2C 1F 00 01 */	cmpwi r31, 1
/* 80220700 0021D660  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80220704 0021D664  7C 9E 23 78 */	mr r30, r4
/* 80220708 0021D668  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8022070C 0021D66C  7C 7D 1B 78 */	mr r29, r3
/* 80220710 0021D670  40 82 00 08 */	bne lbl_80220718
/* 80220714 0021D674  4B FF D6 F5 */	bl sub_8021de08
lbl_80220718:
/* 80220718 0021D678  FC 20 F8 90 */	fmr f1, f31
/* 8022071C 0021D67C  7F A3 EB 78 */	mr r3, r29
/* 80220720 0021D680  7F C4 F3 78 */	mr r4, r30
/* 80220724 0021D684  7F E5 FB 78 */	mr r5, r31
/* 80220728 0021D688  4B FD 67 4D */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8022072C 0021D68C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80220730 0021D690  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80220734 0021D694  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80220738 0021D698  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8022073C 0021D69C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80220740 0021D6A0  7C 08 03 A6 */	mtlr r0
/* 80220744 0021D6A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80220748 0021D6A8  4E 80 00 20 */	blr

.global Approach__9CBabygothFR13CStateManager9EStateMsgf
Approach__9CBabygothFR13CStateManager9EStateMsgf:
/* 8022074C 0021D6AC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80220750 0021D6B0  7C 08 02 A6 */	mflr r0
/* 80220754 0021D6B4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80220758 0021D6B8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8022075C 0021D6BC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80220760 0021D6C0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80220764 0021D6C4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80220768 0021D6C8  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8022076C 0021D6CC  7C BF 2B 78 */	mr r31, r5
/* 80220770 0021D6D0  FF E0 08 90 */	fmr f31, f1
/* 80220774 0021D6D4  2C 1F 00 01 */	cmpwi r31, 1
/* 80220778 0021D6D8  7C 7D 1B 78 */	mr r29, r3
/* 8022077C 0021D6DC  7C 9E 23 78 */	mr r30, r4
/* 80220780 0021D6E0  41 82 00 BC */	beq lbl_8022083C
/* 80220784 0021D6E4  40 80 00 10 */	bge lbl_80220794
/* 80220788 0021D6E8  2C 1F 00 00 */	cmpwi r31, 0
/* 8022078C 0021D6EC  40 80 00 14 */	bge lbl_802207A0
/* 80220790 0021D6F0  48 00 03 40 */	b lbl_80220AD0
lbl_80220794:
/* 80220794 0021D6F4  2C 1F 00 03 */	cmpwi r31, 3
/* 80220798 0021D6F8  40 80 03 38 */	bge lbl_80220AD0
/* 8022079C 0021D6FC  48 00 03 1C */	b lbl_80220AB8
lbl_802207A0:
/* 802207A0 0021D700  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 802207A4 0021D704  38 80 00 01 */	li r4, 1
/* 802207A8 0021D708  4B F1 A2 31 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802207AC 0021D70C  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 802207B0 0021D710  38 7D 08 F0 */	addi r3, r29, 0x8f0
/* 802207B4 0021D714  38 81 00 0C */	addi r4, r1, 0xc
/* 802207B8 0021D718  A0 05 00 08 */	lhz r0, 8(r5)
/* 802207BC 0021D71C  B0 01 00 08 */	sth r0, 8(r1)
/* 802207C0 0021D720  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802207C4 0021D724  4B F5 4A 55 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 802207C8 0021D728  38 7D 08 F0 */	addi r3, r29, 0x8f0
/* 802207CC 0021D72C  38 80 00 01 */	li r4, 1
/* 802207D0 0021D730  4B F5 4A 55 */	bl SetActive__13CBoneTrackingFb
/* 802207D4 0021D734  7F A3 EB 78 */	mr r3, r29
/* 802207D8 0021D738  7F C4 F3 78 */	mr r4, r30
/* 802207DC 0021D73C  38 BD 02 E0 */	addi r5, r29, 0x2e0
/* 802207E0 0021D740  4B FF EE D1 */	bl sub_8021f6b0
/* 802207E4 0021D744  7F A3 EB 78 */	mr r3, r29
/* 802207E8 0021D748  38 80 00 00 */	li r4, 0
/* 802207EC 0021D74C  4B FF D8 B1 */	bl sub_8021e09c
/* 802207F0 0021D750  FC 20 F8 90 */	fmr f1, f31
/* 802207F4 0021D754  7F A3 EB 78 */	mr r3, r29
/* 802207F8 0021D758  7F C4 F3 78 */	mr r4, r30
/* 802207FC 0021D75C  38 A0 00 00 */	li r5, 0
/* 80220800 0021D760  4B FD 5E CD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 80220804 0021D764  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80220808 0021D768  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8022080C 0021D76C  40 82 00 10 */	bne lbl_8022081C
/* 80220810 0021D770  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80220814 0021D774  38 63 00 04 */	addi r3, r3, 4
/* 80220818 0021D778  4B F1 0C 91 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
lbl_8022081C:
/* 8022081C 0021D77C  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80220820 0021D780  38 60 00 01 */	li r3, 1
/* 80220824 0021D784  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80220828 0021D788  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 8022082C 0021D78C  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80220830 0021D790  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80220834 0021D794  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 80220838 0021D798  48 00 02 98 */	b lbl_80220AD0
lbl_8022083C:
/* 8022083C 0021D79C  38 80 00 01 */	li r4, 1
/* 80220840 0021D7A0  4B FF D8 5D */	bl sub_8021e09c
/* 80220844 0021D7A4  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80220848 0021D7A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8022084C 0021D7AC  41 82 00 E8 */	beq lbl_80220934
/* 80220850 0021D7B0  C0 1D 08 B8 */	lfs f0, 0x8b8(r29)
/* 80220854 0021D7B4  38 7D 07 D0 */	addi r3, r29, 0x7d0
/* 80220858 0021D7B8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8022085C 0021D7BC  38 BD 02 E0 */	addi r5, r29, 0x2e0
/* 80220860 0021D7C0  D0 1D 02 E0 */	stfs f0, 0x2e0(r29)
/* 80220864 0021D7C4  C0 1D 08 BC */	lfs f0, 0x8bc(r29)
/* 80220868 0021D7C8  D0 1D 02 E4 */	stfs f0, 0x2e4(r29)
/* 8022086C 0021D7CC  C0 1D 08 C0 */	lfs f0, 0x8c0(r29)
/* 80220870 0021D7D0  D0 1D 02 E8 */	stfs f0, 0x2e8(r29)
/* 80220874 0021D7D4  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80220878 0021D7D8  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8022087C 0021D7DC  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80220880 0021D7E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80220884 0021D7E4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80220888 0021D7E8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8022088C 0021D7EC  4B FA 68 71 */	bl FindClosestReachablePoint__15CPathFindSearchCFRC9CVector3fR9CVector3f
/* 80220890 0021D7F0  2C 03 00 00 */	cmpwi r3, 0
/* 80220894 0021D7F4  40 82 00 90 */	bne lbl_80220924
/* 80220898 0021D7F8  C0 BD 00 50 */	lfs f5, 0x50(r29)
/* 8022089C 0021D7FC  C0 1D 02 E4 */	lfs f0, 0x2e4(r29)
/* 802208A0 0021D800  C0 DD 00 40 */	lfs f6, 0x40(r29)
/* 802208A4 0021D804  EC 20 28 28 */	fsubs f1, f0, f5
/* 802208A8 0021D808  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 802208AC 0021D80C  C0 9D 00 60 */	lfs f4, 0x60(r29)
/* 802208B0 0021D810  EC 60 30 28 */	fsubs f3, f0, f6
/* 802208B4 0021D814  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 802208B8 0021D818  EC 21 00 72 */	fmuls f1, f1, f1
/* 802208BC 0021D81C  EC 40 20 28 */	fsubs f2, f0, f4
/* 802208C0 0021D820  C0 02 B4 00 */	lfs f0, lbl_805AD120@sda21(r2)
/* 802208C4 0021D824  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 802208C8 0021D828  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 802208CC 0021D82C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802208D0 0021D830  40 80 00 10 */	bge lbl_802208E0
/* 802208D4 0021D834  D0 DD 02 E0 */	stfs f6, 0x2e0(r29)
/* 802208D8 0021D838  D0 BD 02 E4 */	stfs f5, 0x2e4(r29)
/* 802208DC 0021D83C  D0 9D 02 E8 */	stfs f4, 0x2e8(r29)
lbl_802208E0:
/* 802208E0 0021D840  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 802208E4 0021D844  FC 20 F8 90 */	fmr f1, f31
/* 802208E8 0021D848  7F A3 EB 78 */	mr r3, r29
/* 802208EC 0021D84C  7F C4 F3 78 */	mr r4, r30
/* 802208F0 0021D850  D0 1D 08 B8 */	stfs f0, 0x8b8(r29)
/* 802208F4 0021D854  38 A0 00 00 */	li r5, 0
/* 802208F8 0021D858  C0 1D 02 E4 */	lfs f0, 0x2e4(r29)
/* 802208FC 0021D85C  D0 1D 08 BC */	stfs f0, 0x8bc(r29)
/* 80220900 0021D860  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 80220904 0021D864  D0 1D 08 C0 */	stfs f0, 0x8c0(r29)
/* 80220908 0021D868  4B FD 5D C5 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8022090C 0021D86C  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80220910 0021D870  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80220914 0021D874  40 82 00 10 */	bne lbl_80220924
/* 80220918 0021D878  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022091C 0021D87C  38 63 00 04 */	addi r3, r3, 4
/* 80220920 0021D880  4B F1 0B 89 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
lbl_80220924:
/* 80220924 0021D884  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80220928 0021D888  38 60 00 00 */	li r3, 0
/* 8022092C 0021D88C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80220930 0021D890  98 1D 0A 48 */	stb r0, 0xa48(r29)
lbl_80220934:
/* 80220934 0021D894  7F A3 EB 78 */	mr r3, r29
/* 80220938 0021D898  7F C4 F3 78 */	mr r4, r30
/* 8022093C 0021D89C  4B FF D6 29 */	bl sub_8021df64
/* 80220940 0021D8A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80220944 0021D8A4  88 9D 0A 49 */	lbz r4, 0xa49(r29)
/* 80220948 0021D8A8  7C 00 00 34 */	cntlzw r0, r0
/* 8022094C 0021D8AC  54 03 D9 7E */	srwi r3, r0, 5
/* 80220950 0021D8B0  54 80 E7 FE */	rlwinm r0, r4, 0x1c, 0x1f, 0x1f
/* 80220954 0021D8B4  7C 00 18 38 */	and r0, r0, r3
/* 80220958 0021D8B8  50 04 26 F6 */	rlwimi r4, r0, 4, 0x1b, 0x1b
/* 8022095C 0021D8BC  98 9D 0A 49 */	stb r4, 0xa49(r29)
/* 80220960 0021D8C0  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80220964 0021D8C4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80220968 0021D8C8  41 82 00 7C */	beq lbl_802209E4
/* 8022096C 0021D8CC  7F A3 EB 78 */	mr r3, r29
/* 80220970 0021D8D0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80220974 0021D8D4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80220978 0021D8D8  7D 89 03 A6 */	mtctr r12
/* 8022097C 0021D8DC  4E 80 04 21 */	bctrl
/* 80220980 0021D8E0  28 03 00 00 */	cmplwi r3, 0
/* 80220984 0021D8E4  41 82 00 60 */	beq lbl_802209E4
/* 80220988 0021D8E8  7F A3 EB 78 */	mr r3, r29
/* 8022098C 0021D8EC  7F C4 F3 78 */	mr r4, r30
/* 80220990 0021D8F0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80220994 0021D8F4  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80220998 0021D8F8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8022099C 0021D8FC  7D 89 03 A6 */	mtctr r12
/* 802209A0 0021D900  4E 80 04 21 */	bctrl
/* 802209A4 0021D904  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802209A8 0021D908  40 82 00 3C */	bne lbl_802209E4
/* 802209AC 0021D90C  80 7D 07 D4 */	lwz r3, 0x7d4(r29)
/* 802209B0 0021D910  80 9D 08 98 */	lwz r4, 0x898(r29)
/* 802209B4 0021D914  38 03 FF FF */	addi r0, r3, -1
/* 802209B8 0021D918  7C 04 00 00 */	cmpw r4, r0
/* 802209BC 0021D91C  40 80 00 28 */	bge lbl_802209E4
/* 802209C0 0021D920  FC 20 F8 90 */	fmr f1, f31
/* 802209C4 0021D924  7F A3 EB 78 */	mr r3, r29
/* 802209C8 0021D928  7F C4 F3 78 */	mr r4, r30
/* 802209CC 0021D92C  7F E5 FB 78 */	mr r5, r31
/* 802209D0 0021D930  4B FD 5C FD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 802209D4 0021D934  7F A3 EB 78 */	mr r3, r29
/* 802209D8 0021D938  7F C4 F3 78 */	mr r4, r30
/* 802209DC 0021D93C  4B FF D4 2D */	bl sub_8021de08
/* 802209E0 0021D940  48 00 00 C4 */	b lbl_80220AA4
lbl_802209E4:
/* 802209E4 0021D944  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 802209E8 0021D948  7F A3 EB 78 */	mr r3, r29
/* 802209EC 0021D94C  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 802209F0 0021D950  7F C4 F3 78 */	mr r4, r30
/* 802209F4 0021D954  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 802209F8 0021D958  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 802209FC 0021D95C  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80220A00 0021D960  EC 82 00 28 */	fsubs f4, f2, f0
/* 80220A04 0021D964  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 80220A08 0021D968  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80220A0C 0021D96C  EC 63 08 28 */	fsubs f3, f3, f1
/* 80220A10 0021D970  C0 22 B4 3C */	lfs f1, lbl_805AD15C@sda21(r2)
/* 80220A14 0021D974  EC 02 00 28 */	fsubs f0, f2, f0
/* 80220A18 0021D978  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 80220A1C 0021D97C  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 80220A20 0021D980  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80220A24 0021D984  81 9D 00 00 */	lwz r12, 0(r29)
/* 80220A28 0021D988  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 80220A2C 0021D98C  7D 89 03 A6 */	mtctr r12
/* 80220A30 0021D990  4E 80 04 21 */	bctrl
/* 80220A34 0021D994  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220A38 0021D998  41 82 00 6C */	beq lbl_80220AA4
/* 80220A3C 0021D99C  38 61 00 28 */	addi r3, r1, 0x28
/* 80220A40 0021D9A0  48 0F 3C B9 */	bl CanBeNormalized__9CVector3fCFv
/* 80220A44 0021D9A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220A48 0021D9A8  41 82 00 5C */	beq lbl_80220AA4
/* 80220A4C 0021D9AC  38 61 00 10 */	addi r3, r1, 0x10
/* 80220A50 0021D9B0  38 81 00 28 */	addi r4, r1, 0x28
/* 80220A54 0021D9B4  48 0F 3D FD */	bl AsNormalized__9CVector3fCFv
/* 80220A58 0021D9B8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80220A5C 0021D9BC  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 80220A60 0021D9C0  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80220A64 0021D9C4  38 81 00 34 */	addi r4, r1, 0x34
/* 80220A68 0021D9C8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80220A6C 0021D9CC  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80220A70 0021D9D0  C0 83 00 08 */	lfs f4, 8(r3)
/* 80220A74 0021D9D4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80220A78 0021D9D8  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 80220A7C 0021D9DC  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 80220A80 0021D9E0  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 80220A84 0021D9E4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80220A88 0021D9E8  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80220A8C 0021D9EC  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80220A90 0021D9F0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80220A94 0021D9F4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80220A98 0021D9F8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80220A9C 0021D9FC  38 63 00 04 */	addi r3, r3, 4
/* 80220AA0 0021DA00  4B F1 0C 79 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80220AA4:
/* 80220AA4 0021DA04  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80220AA8 0021DA08  38 60 00 01 */	li r3, 1
/* 80220AAC 0021DA0C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80220AB0 0021DA10  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 80220AB4 0021DA14  48 00 00 1C */	b lbl_80220AD0
lbl_80220AB8:
/* 80220AB8 0021DA18  38 7D 08 F0 */	addi r3, r29, 0x8f0
/* 80220ABC 0021DA1C  38 80 00 00 */	li r4, 0
/* 80220AC0 0021DA20  4B F5 47 65 */	bl SetActive__13CBoneTrackingFb
/* 80220AC4 0021DA24  7F A3 EB 78 */	mr r3, r29
/* 80220AC8 0021DA28  38 80 00 00 */	li r4, 0
/* 80220ACC 0021DA2C  4B FF D5 D1 */	bl sub_8021e09c
lbl_80220AD0:
/* 80220AD0 0021DA30  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80220AD4 0021DA34  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80220AD8 0021DA38  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80220ADC 0021DA3C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80220AE0 0021DA40  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80220AE4 0021DA44  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80220AE8 0021DA48  7C 08 03 A6 */	mtlr r0
/* 80220AEC 0021DA4C  38 21 00 70 */	addi r1, r1, 0x70
/* 80220AF0 0021DA50  4E 80 00 20 */	blr

.global PathFind__9CBabygothFR13CStateManager9EStateMsgf
PathFind__9CBabygothFR13CStateManager9EStateMsgf:
/* 80220AF4 0021DA54  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80220AF8 0021DA58  7C 08 02 A6 */	mflr r0
/* 80220AFC 0021DA5C  90 01 01 04 */	stw r0, 0x104(r1)
/* 80220B00 0021DA60  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80220B04 0021DA64  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 80220B08 0021DA68  93 E1 00 EC */	stw r31, 0xec(r1)
/* 80220B0C 0021DA6C  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 80220B10 0021DA70  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 80220B14 0021DA74  7C BD 2B 78 */	mr r29, r5
/* 80220B18 0021DA78  FF E0 08 90 */	fmr f31, f1
/* 80220B1C 0021DA7C  2C 1D 00 01 */	cmpwi r29, 1
/* 80220B20 0021DA80  7C 7E 1B 78 */	mr r30, r3
/* 80220B24 0021DA84  7C 9F 23 78 */	mr r31, r4
/* 80220B28 0021DA88  41 82 00 D4 */	beq lbl_80220BFC
/* 80220B2C 0021DA8C  40 80 00 10 */	bge lbl_80220B3C
/* 80220B30 0021DA90  2C 1D 00 00 */	cmpwi r29, 0
/* 80220B34 0021DA94  40 80 00 14 */	bge lbl_80220B48
/* 80220B38 0021DA98  48 00 03 AC */	b lbl_80220EE4
lbl_80220B3C:
/* 80220B3C 0021DA9C  2C 1D 00 03 */	cmpwi r29, 3
/* 80220B40 0021DAA0  40 80 03 A4 */	bge lbl_80220EE4
/* 80220B44 0021DAA4  48 00 03 94 */	b lbl_80220ED8
lbl_80220B48:
/* 80220B48 0021DAA8  88 1E 0A 49 */	lbz r0, 0xa49(r30)
/* 80220B4C 0021DAAC  38 A0 00 00 */	li r5, 0
/* 80220B50 0021DAB0  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80220B54 0021DAB4  38 60 00 01 */	li r3, 1
/* 80220B58 0021DAB8  98 1E 0A 49 */	stb r0, 0xa49(r30)
/* 80220B5C 0021DABC  38 80 00 01 */	li r4, 1
/* 80220B60 0021DAC0  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80220B64 0021DAC4  88 1E 0A 49 */	lbz r0, 0xa49(r30)
/* 80220B68 0021DAC8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80220B6C 0021DACC  98 1E 0A 49 */	stb r0, 0xa49(r30)
/* 80220B70 0021DAD0  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 80220B74 0021DAD4  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80220B78 0021DAD8  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 80220B7C 0021DADC  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80220B80 0021DAE0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80220B84 0021DAE4  4B F1 9E 55 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80220B88 0021DAE8  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80220B8C 0021DAEC  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80220B90 0021DAF0  38 81 00 0C */	addi r4, r1, 0xc
/* 80220B94 0021DAF4  A0 05 00 08 */	lhz r0, 8(r5)
/* 80220B98 0021DAF8  B0 01 00 08 */	sth r0, 8(r1)
/* 80220B9C 0021DAFC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80220BA0 0021DB00  4B F5 46 79 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 80220BA4 0021DB04  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80220BA8 0021DB08  38 80 00 01 */	li r4, 1
/* 80220BAC 0021DB0C  4B F5 46 79 */	bl SetActive__13CBoneTrackingFb
/* 80220BB0 0021DB10  7F C3 F3 78 */	mr r3, r30
/* 80220BB4 0021DB14  7F E4 FB 78 */	mr r4, r31
/* 80220BB8 0021DB18  38 BE 02 E0 */	addi r5, r30, 0x2e0
/* 80220BBC 0021DB1C  4B FF EA F5 */	bl sub_8021f6b0
/* 80220BC0 0021DB20  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 80220BC4 0021DB24  7F C3 F3 78 */	mr r3, r30
/* 80220BC8 0021DB28  38 80 00 00 */	li r4, 0
/* 80220BCC 0021DB2C  D0 1E 08 B8 */	stfs f0, 0x8b8(r30)
/* 80220BD0 0021DB30  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 80220BD4 0021DB34  D0 1E 08 BC */	stfs f0, 0x8bc(r30)
/* 80220BD8 0021DB38  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 80220BDC 0021DB3C  D0 1E 08 C0 */	stfs f0, 0x8c0(r30)
/* 80220BE0 0021DB40  4B FF D4 BD */	bl sub_8021e09c
/* 80220BE4 0021DB44  FC 20 F8 90 */	fmr f1, f31
/* 80220BE8 0021DB48  7F C3 F3 78 */	mr r3, r30
/* 80220BEC 0021DB4C  7F E4 FB 78 */	mr r4, r31
/* 80220BF0 0021DB50  7F A5 EB 78 */	mr r5, r29
/* 80220BF4 0021DB54  4B FD 5A D9 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 80220BF8 0021DB58  48 00 02 EC */	b lbl_80220EE4
lbl_80220BFC:
/* 80220BFC 0021DB5C  38 80 00 00 */	li r4, 0
/* 80220C00 0021DB60  4B FF D4 9D */	bl sub_8021e09c
/* 80220C04 0021DB64  7F C3 F3 78 */	mr r3, r30
/* 80220C08 0021DB68  81 9E 00 00 */	lwz r12, 0(r30)
/* 80220C0C 0021DB6C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80220C10 0021DB70  7D 89 03 A6 */	mtctr r12
/* 80220C14 0021DB74  4E 80 04 21 */	bctrl
/* 80220C18 0021DB78  28 03 00 00 */	cmplwi r3, 0
/* 80220C1C 0021DB7C  41 82 02 1C */	beq lbl_80220E38
/* 80220C20 0021DB80  7F C3 F3 78 */	mr r3, r30
/* 80220C24 0021DB84  7F E4 FB 78 */	mr r4, r31
/* 80220C28 0021DB88  81 9E 00 00 */	lwz r12, 0(r30)
/* 80220C2C 0021DB8C  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80220C30 0021DB90  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80220C34 0021DB94  7D 89 03 A6 */	mtctr r12
/* 80220C38 0021DB98  4E 80 04 21 */	bctrl
/* 80220C3C 0021DB9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220C40 0021DBA0  40 82 01 F8 */	bne lbl_80220E38
/* 80220C44 0021DBA4  80 7E 06 F0 */	lwz r3, 0x6f0(r30)
/* 80220C48 0021DBA8  80 9E 07 B4 */	lwz r4, 0x7b4(r30)
/* 80220C4C 0021DBAC  38 03 FF FF */	addi r0, r3, -1
/* 80220C50 0021DBB0  7C 04 00 00 */	cmpw r4, r0
/* 80220C54 0021DBB4  40 80 01 E4 */	bge lbl_80220E38
/* 80220C58 0021DBB8  FC 20 F8 90 */	fmr f1, f31
/* 80220C5C 0021DBBC  7F C3 F3 78 */	mr r3, r30
/* 80220C60 0021DBC0  7F E4 FB 78 */	mr r4, r31
/* 80220C64 0021DBC4  7F A5 EB 78 */	mr r5, r29
/* 80220C68 0021DBC8  4B FD 5A 65 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 80220C6C 0021DBCC  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80220C70 0021DBD0  38 61 00 7C */	addi r3, r1, 0x7c
/* 80220C74 0021DBD4  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80220C78 0021DBD8  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 80220C7C 0021DBDC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80220C80 0021DBE0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80220C84 0021DBE4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80220C88 0021DBE8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80220C8C 0021DBEC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80220C90 0021DBF0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80220C94 0021DBF4  48 0F 3A 65 */	bl CanBeNormalized__9CVector3fCFv
/* 80220C98 0021DBF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220C9C 0021DBFC  41 82 00 D8 */	beq lbl_80220D74
/* 80220CA0 0021DC00  80 FF 08 4C */	lwz r7, 0x84c(r31)
/* 80220CA4 0021DC04  7F C5 F3 78 */	mr r5, r30
/* 80220CA8 0021DC08  C0 22 B4 14 */	lfs f1, lbl_805AD134@sda21(r2)
/* 80220CAC 0021DC0C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80220CB0 0021DC10  C0 67 00 60 */	lfs f3, 0x60(r7)
/* 80220CB4 0021DC14  38 9E 04 5C */	addi r4, r30, 0x45c
/* 80220CB8 0021DC18  C0 47 00 50 */	lfs f2, 0x50(r7)
/* 80220CBC 0021DC1C  38 C1 00 40 */	addi r6, r1, 0x40
/* 80220CC0 0021DC20  C0 07 00 40 */	lfs f0, 0x40(r7)
/* 80220CC4 0021DC24  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80220CC8 0021DC28  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80220CCC 0021DC2C  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 80220CD0 0021DC30  4B F1 DE 4D */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 80220CD4 0021DC34  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80220CD8 0021DC38  38 61 00 70 */	addi r3, r1, 0x70
/* 80220CDC 0021DC3C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80220CE0 0021DC40  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80220CE4 0021DC44  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80220CE8 0021DC48  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80220CEC 0021DC4C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80220CF0 0021DC50  48 0F 3B C9 */	bl Magnitude__9CVector3fCFv
/* 80220CF4 0021DC54  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80220CF8 0021DC58  FF E0 08 90 */	fmr f31, f1
/* 80220CFC 0021DC5C  38 63 00 04 */	addi r3, r3, 4
/* 80220D00 0021DC60  4B F1 07 A9 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 80220D04 0021DC64  38 61 00 28 */	addi r3, r1, 0x28
/* 80220D08 0021DC68  38 81 00 7C */	addi r4, r1, 0x7c
/* 80220D0C 0021DC6C  48 0F 3B 45 */	bl AsNormalized__9CVector3fCFv
/* 80220D10 0021DC70  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80220D14 0021DC74  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80220D18 0021DC78  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 80220D1C 0021DC7C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80220D20 0021DC80  EC DF 00 32 */	fmuls f6, f31, f0
/* 80220D24 0021DC84  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80220D28 0021DC88  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80220D2C 0021DC8C  EC BF 00 72 */	fmuls f5, f31, f1
/* 80220D30 0021DC90  C0 43 00 04 */	lfs f2, 4(r3)
/* 80220D34 0021DC94  EC 9F 00 32 */	fmuls f4, f31, f0
/* 80220D38 0021DC98  C0 23 00 08 */	lfs f1, 8(r3)
/* 80220D3C 0021DC9C  C0 02 B4 00 */	lfs f0, lbl_805AD120@sda21(r2)
/* 80220D40 0021DCA0  D0 A1 00 C0 */	stfs f5, 0xc0(r1)
/* 80220D44 0021DCA4  D0 81 00 C4 */	stfs f4, 0xc4(r1)
/* 80220D48 0021DCA8  D0 C1 00 C8 */	stfs f6, 0xc8(r1)
/* 80220D4C 0021DCAC  D0 61 00 CC */	stfs f3, 0xcc(r1)
/* 80220D50 0021DCB0  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 80220D54 0021DCB4  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80220D58 0021DCB8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80220D5C 0021DCBC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80220D60 0021DCC0  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 80220D64 0021DCC4  38 63 00 04 */	addi r3, r3, 4
/* 80220D68 0021DCC8  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 80220D6C 0021DCCC  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 80220D70 0021DCD0  4B F1 09 A9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80220D74:
/* 80220D74 0021DCD4  7F C3 F3 78 */	mr r3, r30
/* 80220D78 0021DCD8  7F E4 FB 78 */	mr r4, r31
/* 80220D7C 0021DCDC  4B FF D0 8D */	bl sub_8021de08
/* 80220D80 0021DCE0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80220D84 0021DCE4  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 80220D88 0021DCE8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80220D8C 0021DCEC  C0 9E 00 38 */	lfs f4, 0x38(r30)
/* 80220D90 0021DCF0  C0 63 00 04 */	lfs f3, 4(r3)
/* 80220D94 0021DCF4  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80220D98 0021DCF8  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80220D9C 0021DCFC  C0 43 00 08 */	lfs f2, 8(r3)
/* 80220DA0 0021DD00  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80220DA4 0021DD04  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80220DA8 0021DD08  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80220DAC 0021DD0C  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80220DB0 0021DD10  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80220DB4 0021DD14  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 80220DB8 0021DD18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220DBC 0021DD1C  40 80 01 28 */	bge lbl_80220EE4
/* 80220DC0 0021DD20  38 61 00 7C */	addi r3, r1, 0x7c
/* 80220DC4 0021DD24  48 0F 39 35 */	bl CanBeNormalized__9CVector3fCFv
/* 80220DC8 0021DD28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220DCC 0021DD2C  41 82 01 18 */	beq lbl_80220EE4
/* 80220DD0 0021DD30  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80220DD4 0021DD34  38 63 00 04 */	addi r3, r3, 4
/* 80220DD8 0021DD38  4B F1 06 D1 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 80220DDC 0021DD3C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80220DE0 0021DD40  38 81 00 64 */	addi r4, r1, 0x64
/* 80220DE4 0021DD44  48 0F 3A 6D */	bl AsNormalized__9CVector3fCFv
/* 80220DE8 0021DD48  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80220DEC 0021DD4C  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 80220DF0 0021DD50  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80220DF4 0021DD54  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80220DF8 0021DD58  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80220DFC 0021DD5C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80220E00 0021DD60  C0 83 00 08 */	lfs f4, 8(r3)
/* 80220E04 0021DD64  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80220E08 0021DD68  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 80220E0C 0021DD6C  D0 C1 00 A4 */	stfs f6, 0xa4(r1)
/* 80220E10 0021DD70  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 80220E14 0021DD74  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 80220E18 0021DD78  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 80220E1C 0021DD7C  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 80220E20 0021DD80  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80220E24 0021DD84  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80220E28 0021DD88  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80220E2C 0021DD8C  38 63 00 04 */	addi r3, r3, 4
/* 80220E30 0021DD90  4B F1 08 E9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80220E34 0021DD94  48 00 00 B0 */	b lbl_80220EE4
lbl_80220E38:
/* 80220E38 0021DD98  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80220E3C 0021DD9C  38 61 00 58 */	addi r3, r1, 0x58
/* 80220E40 0021DDA0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80220E44 0021DDA4  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80220E48 0021DDA8  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80220E4C 0021DDAC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80220E50 0021DDB0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80220E54 0021DDB4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80220E58 0021DDB8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80220E5C 0021DDBC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80220E60 0021DDC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80220E64 0021DDC4  D0 81 00 5C */	stfs f4, 0x5c(r1)
/* 80220E68 0021DDC8  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80220E6C 0021DDCC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80220E70 0021DDD0  48 0F 38 89 */	bl CanBeNormalized__9CVector3fCFv
/* 80220E74 0021DDD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220E78 0021DDD8  41 82 00 6C */	beq lbl_80220EE4
/* 80220E7C 0021DDDC  38 61 00 10 */	addi r3, r1, 0x10
/* 80220E80 0021DDE0  38 81 00 58 */	addi r4, r1, 0x58
/* 80220E84 0021DDE4  48 0F 39 CD */	bl AsNormalized__9CVector3fCFv
/* 80220E88 0021DDE8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80220E8C 0021DDEC  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 80220E90 0021DDF0  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80220E94 0021DDF4  38 81 00 88 */	addi r4, r1, 0x88
/* 80220E98 0021DDF8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80220E9C 0021DDFC  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80220EA0 0021DE00  C0 83 00 08 */	lfs f4, 8(r3)
/* 80220EA4 0021DE04  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80220EA8 0021DE08  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 80220EAC 0021DE0C  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 80220EB0 0021DE10  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 80220EB4 0021DE14  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 80220EB8 0021DE18  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 80220EBC 0021DE1C  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 80220EC0 0021DE20  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80220EC4 0021DE24  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80220EC8 0021DE28  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80220ECC 0021DE2C  38 63 00 04 */	addi r3, r3, 4
/* 80220ED0 0021DE30  4B F1 08 49 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80220ED4 0021DE34  48 00 00 10 */	b lbl_80220EE4
lbl_80220ED8:
/* 80220ED8 0021DE38  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80220EDC 0021DE3C  38 80 00 00 */	li r4, 0
/* 80220EE0 0021DE40  4B F5 43 45 */	bl SetActive__13CBoneTrackingFb
lbl_80220EE4:
/* 80220EE4 0021DE44  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 80220EE8 0021DE48  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80220EEC 0021DE4C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80220EF0 0021DE50  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 80220EF4 0021DE54  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 80220EF8 0021DE58  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 80220EFC 0021DE5C  7C 08 03 A6 */	mtlr r0
/* 80220F00 0021DE60  38 21 01 00 */	addi r1, r1, 0x100
/* 80220F04 0021DE64  4E 80 00 20 */	blr

.global SpecialAttack__9CBabygothFR13CStateManager9EStateMsgf
SpecialAttack__9CBabygothFR13CStateManager9EStateMsgf:
/* 80220F08 0021DE68  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80220F0C 0021DE6C  7C 08 02 A6 */	mflr r0
/* 80220F10 0021DE70  2C 05 00 01 */	cmpwi r5, 1
/* 80220F14 0021DE74  90 01 00 64 */	stw r0, 0x64(r1)
/* 80220F18 0021DE78  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80220F1C 0021DE7C  7C 7F 1B 78 */	mr r31, r3
/* 80220F20 0021DE80  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80220F24 0021DE84  7C 9E 23 78 */	mr r30, r4
/* 80220F28 0021DE88  41 82 00 D0 */	beq lbl_80220FF8
/* 80220F2C 0021DE8C  40 80 00 10 */	bge lbl_80220F3C
/* 80220F30 0021DE90  2C 05 00 00 */	cmpwi r5, 0
/* 80220F34 0021DE94  40 80 00 14 */	bge lbl_80220F48
/* 80220F38 0021DE98  48 00 02 50 */	b lbl_80221188
lbl_80220F3C:
/* 80220F3C 0021DE9C  2C 05 00 03 */	cmpwi r5, 3
/* 80220F40 0021DEA0  40 80 02 48 */	bge lbl_80221188
/* 80220F44 0021DEA4  48 00 01 C0 */	b lbl_80221104
lbl_80220F48:
/* 80220F48 0021DEA8  88 1F 0A 48 */	lbz r0, 0xa48(r31)
/* 80220F4C 0021DEAC  38 60 00 01 */	li r3, 1
/* 80220F50 0021DEB0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80220F54 0021DEB4  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80220F58 0021DEB8  98 1F 0A 48 */	stb r0, 0xa48(r31)
/* 80220F5C 0021DEBC  38 A0 00 00 */	li r5, 0
/* 80220F60 0021DEC0  7F C3 F3 78 */	mr r3, r30
/* 80220F64 0021DEC4  38 81 00 24 */	addi r4, r1, 0x24
/* 80220F68 0021DEC8  D0 1F 08 E8 */	stfs f0, 0x8e8(r31)
/* 80220F6C 0021DECC  88 1F 0A 49 */	lbz r0, 0xa49(r31)
/* 80220F70 0021DED0  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 80220F74 0021DED4  98 1F 0A 49 */	stb r0, 0xa49(r31)
/* 80220F78 0021DED8  A0 1F 06 E8 */	lhz r0, 0x6e8(r31)
/* 80220F7C 0021DEDC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80220F80 0021DEE0  4B E2 B5 F5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80220F84 0021DEE4  7C 64 1B 78 */	mr r4, r3
/* 80220F88 0021DEE8  38 61 00 30 */	addi r3, r1, 0x30
/* 80220F8C 0021DEEC  4B E8 65 E9 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 80220F90 0021DEF0  83 C3 00 04 */	lwz r30, 4(r3)
/* 80220F94 0021DEF4  28 1E 00 00 */	cmplwi r30, 0
/* 80220F98 0021DEF8  41 82 00 54 */	beq lbl_80220FEC
/* 80220F9C 0021DEFC  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80220FA0 0021DF00  7F C3 F3 78 */	mr r3, r30
/* 80220FA4 0021DF04  38 81 00 20 */	addi r4, r1, 0x20
/* 80220FA8 0021DF08  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80220FAC 0021DF0C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80220FB0 0021DF10  48 01 81 55 */	bl HasTeamAiRole__10CTeamAiMgrCF9TUniqueId
/* 80220FB4 0021DF14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220FB8 0021DF18  41 82 00 34 */	beq lbl_80220FEC
/* 80220FBC 0021DF1C  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80220FC0 0021DF20  7F C3 F3 78 */	mr r3, r30
/* 80220FC4 0021DF24  38 81 00 18 */	addi r4, r1, 0x18
/* 80220FC8 0021DF28  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80220FCC 0021DF2C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80220FD0 0021DF30  48 01 75 F5 */	bl AddProjectileAttacker__10CTeamAiMgrF9TUniqueId
/* 80220FD4 0021DF34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80220FD8 0021DF38  38 60 00 04 */	li r3, 4
/* 80220FDC 0021DF3C  41 82 00 08 */	beq lbl_80220FE4
/* 80220FE0 0021DF40  38 60 00 00 */	li r3, 0
lbl_80220FE4:
/* 80220FE4 0021DF44  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80220FE8 0021DF48  48 00 01 A0 */	b lbl_80221188
lbl_80220FEC:
/* 80220FEC 0021DF4C  38 00 00 00 */	li r0, 0
/* 80220FF0 0021DF50  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80220FF4 0021DF54  48 00 01 94 */	b lbl_80221188
lbl_80220FF8:
/* 80220FF8 0021DF58  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80220FFC 0021DF5C  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80221000 0021DF60  2C 00 00 03 */	cmpwi r0, 3
/* 80221004 0021DF64  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80221008 0021DF68  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8022100C 0021DF6C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80221010 0021DF70  41 82 00 D8 */	beq lbl_802210E8
/* 80221014 0021DF74  40 80 01 74 */	bge lbl_80221188
/* 80221018 0021DF78  2C 00 00 00 */	cmpwi r0, 0
/* 8022101C 0021DF7C  41 82 00 08 */	beq lbl_80221024
/* 80221020 0021DF80  48 00 01 68 */	b lbl_80221188
lbl_80221024:
/* 80221024 0021DF84  80 FF 04 50 */	lwz r7, 0x450(r31)
/* 80221028 0021DF88  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 8022102C 0021DF8C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80221030 0021DF90  40 82 00 20 */	bne lbl_80221050
/* 80221034 0021DF94  38 00 00 03 */	li r0, 3
/* 80221038 0021DF98  C0 22 B4 24 */	lfs f1, lbl_805AD144@sda21(r2)
/* 8022103C 0021DF9C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80221040 0021DFA0  C0 1F 08 D0 */	lfs f0, 0x8d0(r31)
/* 80221044 0021DFA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80221048 0021DFA8  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 8022104C 0021DFAC  48 00 01 3C */	b lbl_80221188
lbl_80221050:
/* 80221050 0021DFB0  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80221054 0021DFB4  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 80221058 0021DFB8  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8022105C 0021DFBC  38 80 00 06 */	li r4, 6
/* 80221060 0021DFC0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80221064 0021DFC4  38 C3 A9 CC */	addi r6, r3, lbl_803DA9CC@l
/* 80221068 0021DFC8  38 A0 00 01 */	li r5, 1
/* 8022106C 0021DFCC  38 00 00 00 */	li r0, 0
/* 80221070 0021DFD0  3B E7 00 04 */	addi r31, r7, 4
/* 80221074 0021DFD4  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80221078 0021DFD8  7F E3 FB 78 */	mr r3, r31
/* 8022107C 0021DFDC  38 80 00 06 */	li r4, 6
/* 80221080 0021DFE0  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80221084 0021DFE4  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80221088 0021DFE8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8022108C 0021DFEC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80221090 0021DFF0  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80221094 0021DFF4  98 01 00 50 */	stb r0, 0x50(r1)
/* 80221098 0021DFF8  4B F1 03 A1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8022109C 0021DFFC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802210A0 0021E000  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 802210A4 0021E004  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 802210A8 0021E008  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 802210AC 0021E00C  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 802210B0 0021E010  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 802210B4 0021E014  80 61 00 40 */	lwz r3, 0x40(r1)
/* 802210B8 0021E018  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 802210BC 0021E01C  90 7F 01 30 */	stw r3, 0x130(r31)
/* 802210C0 0021E020  80 61 00 48 */	lwz r3, 0x48(r1)
/* 802210C4 0021E024  90 BF 01 34 */	stw r5, 0x134(r31)
/* 802210C8 0021E028  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 802210CC 0021E02C  90 7F 01 38 */	stw r3, 0x138(r31)
/* 802210D0 0021E030  88 61 00 50 */	lbz r3, 0x50(r1)
/* 802210D4 0021E034  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 802210D8 0021E038  90 81 00 38 */	stw r4, 0x38(r1)
/* 802210DC 0021E03C  98 7F 01 40 */	stb r3, 0x140(r31)
/* 802210E0 0021E040  90 01 00 38 */	stw r0, 0x38(r1)
/* 802210E4 0021E044  48 00 00 A4 */	b lbl_80221188
lbl_802210E8:
/* 802210E8 0021E048  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 802210EC 0021E04C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 802210F0 0021E050  2C 00 00 12 */	cmpwi r0, 0x12
/* 802210F4 0021E054  41 82 00 94 */	beq lbl_80221188
/* 802210F8 0021E058  38 00 00 04 */	li r0, 4
/* 802210FC 0021E05C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80221100 0021E060  48 00 00 88 */	b lbl_80221188
lbl_80221104:
/* 80221104 0021E064  4B FF D2 3D */	bl sub_8021e340
/* 80221108 0021E068  88 1F 0A 48 */	lbz r0, 0xa48(r31)
/* 8022110C 0021E06C  38 60 00 00 */	li r3, 0
/* 80221110 0021E070  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80221114 0021E074  98 1F 0A 48 */	stb r0, 0xa48(r31)
/* 80221118 0021E078  C0 1F 08 D0 */	lfs f0, 0x8d0(r31)
/* 8022111C 0021E07C  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 80221120 0021E080  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 80221124 0021E084  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 80221128 0021E088  2C 00 00 12 */	cmpwi r0, 0x12
/* 8022112C 0021E08C  40 82 00 30 */	bne lbl_8022115C
/* 80221130 0021E090  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80221134 0021E094  38 00 00 0C */	li r0, 0xc
/* 80221138 0021E098  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 8022113C 0021E09C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80221140 0021E0A0  38 64 00 04 */	addi r3, r4, 4
/* 80221144 0021E0A4  38 81 00 28 */	addi r4, r1, 0x28
/* 80221148 0021E0A8  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8022114C 0021E0AC  4B F1 06 6D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 80221150 0021E0B0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80221154 0021E0B4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80221158 0021E0B8  90 01 00 28 */	stw r0, 0x28(r1)
lbl_8022115C:
/* 8022115C 0021E0BC  A1 1F 00 08 */	lhz r8, 8(r31)
/* 80221160 0021E0C0  7F C4 F3 78 */	mr r4, r30
/* 80221164 0021E0C4  38 A1 00 10 */	addi r5, r1, 0x10
/* 80221168 0021E0C8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8022116C 0021E0CC  B1 01 00 0C */	sth r8, 0xc(r1)
/* 80221170 0021E0D0  38 60 00 01 */	li r3, 1
/* 80221174 0021E0D4  38 E0 00 00 */	li r7, 0
/* 80221178 0021E0D8  A0 1F 06 E8 */	lhz r0, 0x6e8(r31)
/* 8022117C 0021E0DC  B1 01 00 08 */	sth r8, 8(r1)
/* 80221180 0021E0E0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80221184 0021E0E4  48 01 8D 4D */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
lbl_80221188:
/* 80221188 0021E0E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8022118C 0021E0EC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80221190 0021E0F0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80221194 0021E0F4  7C 08 03 A6 */	mtlr r0
/* 80221198 0021E0F8  38 21 00 60 */	addi r1, r1, 0x60
/* 8022119C 0021E0FC  4E 80 00 20 */	blr

.global Attack__9CBabygothFR13CStateManager9EStateMsgf
Attack__9CBabygothFR13CStateManager9EStateMsgf:
/* 802211A0 0021E100  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802211A4 0021E104  7C 08 02 A6 */	mflr r0
/* 802211A8 0021E108  90 01 00 44 */	stw r0, 0x44(r1)
/* 802211AC 0021E10C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802211B0 0021E110  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802211B4 0021E114  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802211B8 0021E118  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802211BC 0021E11C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802211C0 0021E120  7C BD 2B 78 */	mr r29, r5
/* 802211C4 0021E124  FF E0 08 90 */	fmr f31, f1
/* 802211C8 0021E128  2C 1D 00 01 */	cmpwi r29, 1
/* 802211CC 0021E12C  7C 7E 1B 78 */	mr r30, r3
/* 802211D0 0021E130  7C 9F 23 78 */	mr r31, r4
/* 802211D4 0021E134  41 82 00 F0 */	beq lbl_802212C4
/* 802211D8 0021E138  40 80 00 10 */	bge lbl_802211E8
/* 802211DC 0021E13C  2C 1D 00 00 */	cmpwi r29, 0
/* 802211E0 0021E140  40 80 00 14 */	bge lbl_802211F4
/* 802211E4 0021E144  48 00 01 B0 */	b lbl_80221394
lbl_802211E8:
/* 802211E8 0021E148  2C 1D 00 03 */	cmpwi r29, 3
/* 802211EC 0021E14C  40 80 01 A8 */	bge lbl_80221394
/* 802211F0 0021E150  48 00 00 DC */	b lbl_802212CC
lbl_802211F4:
/* 802211F4 0021E154  38 C0 00 00 */	li r6, 0
/* 802211F8 0021E158  38 80 00 01 */	li r4, 1
/* 802211FC 0021E15C  90 DE 05 68 */	stw r6, 0x568(r30)
/* 80221200 0021E160  7F E5 FB 78 */	mr r5, r31
/* 80221204 0021E164  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80221208 0021E168  38 61 00 14 */	addi r3, r1, 0x14
/* 8022120C 0021E16C  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 80221210 0021E170  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80221214 0021E174  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 80221218 0021E178  54 04 EF FE */	rlwinm r4, r0, 0x1d, 0x1f, 0x1f
/* 8022121C 0021E17C  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 80221220 0021E180  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80221224 0021E184  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 80221228 0021E188  D0 3E 08 E8 */	stfs f1, 0x8e8(r30)
/* 8022122C 0021E18C  88 1E 0A 49 */	lbz r0, 0xa49(r30)
/* 80221230 0021E190  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80221234 0021E194  98 1E 0A 49 */	stb r0, 0xa49(r30)
/* 80221238 0021E198  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8022123C 0021E19C  81 84 00 00 */	lwz r12, 0(r4)
/* 80221240 0021E1A0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80221244 0021E1A4  7D 89 03 A6 */	mtctr r12
/* 80221248 0021E1A8  4E 80 04 21 */	bctrl
/* 8022124C 0021E1AC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80221250 0021E1B0  7F C3 F3 78 */	mr r3, r30
/* 80221254 0021E1B4  38 80 00 00 */	li r4, 0
/* 80221258 0021E1B8  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 8022125C 0021E1BC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80221260 0021E1C0  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 80221264 0021E1C4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80221268 0021E1C8  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 8022126C 0021E1CC  4B FF CE 31 */	bl sub_8021e09c
/* 80221270 0021E1D0  FC 20 F8 90 */	fmr f1, f31
/* 80221274 0021E1D4  7F C3 F3 78 */	mr r3, r30
/* 80221278 0021E1D8  7F E4 FB 78 */	mr r4, r31
/* 8022127C 0021E1DC  7F A5 EB 78 */	mr r5, r29
/* 80221280 0021E1E0  4B FD 54 4D */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 80221284 0021E1E4  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80221288 0021E1E8  38 00 00 01 */	li r0, 1
/* 8022128C 0021E1EC  C0 22 B4 18 */	lfs f1, lbl_805AD138@sda21(r2)
/* 80221290 0021E1F0  D0 1E 08 DC */	stfs f0, 0x8dc(r30)
/* 80221294 0021E1F4  FC 40 08 90 */	fmr f2, f1
/* 80221298 0021E1F8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022129C 0021E1FC  90 03 00 34 */	stw r0, 0x34(r3)
/* 802212A0 0021E200  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 802212A4 0021E204  38 63 00 04 */	addi r3, r3, 4
/* 802212A8 0021E208  4B F1 05 41 */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 802212AC 0021E20C  3C 80 80 57 */	lis r4, lbl_80572128@ha
/* 802212B0 0021E210  7F C3 F3 78 */	mr r3, r30
/* 802212B4 0021E214  38 A4 21 28 */	addi r5, r4, lbl_80572128@l
/* 802212B8 0021E218  7F E4 FB 78 */	mr r4, r31
/* 802212BC 0021E21C  4B FF DC 65 */	bl sub_8021ef20
/* 802212C0 0021E220  48 00 00 D4 */	b lbl_80221394
lbl_802212C4:
/* 802212C4 0021E224  4B FF C8 DD */	bl sub_8021dba0
/* 802212C8 0021E228  48 00 00 CC */	b lbl_80221394
lbl_802212CC:
/* 802212CC 0021E22C  4B FF D0 75 */	bl sub_8021e340
/* 802212D0 0021E230  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 802212D4 0021E234  38 60 00 00 */	li r3, 0
/* 802212D8 0021E238  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802212DC 0021E23C  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 802212E0 0021E240  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 802212E4 0021E244  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 802212E8 0021E248  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 802212EC 0021E24C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802212F0 0021E250  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 802212F4 0021E254  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 802212F8 0021E258  D0 3E 08 E0 */	stfs f1, 0x8e0(r30)
/* 802212FC 0021E25C  D0 1E 08 DC */	stfs f0, 0x8dc(r30)
/* 80221300 0021E260  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80221304 0021E264  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80221308 0021E268  4B F1 2B A5 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 8022130C 0021E26C  FF E0 08 90 */	fmr f31, f1
/* 80221310 0021E270  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80221314 0021E274  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80221318 0021E278  40 81 00 1C */	ble lbl_80221334
/* 8022131C 0021E27C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80221320 0021E280  38 80 00 01 */	li r4, 1
/* 80221324 0021E284  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80221328 0021E288  4B F1 2A AD */	bl GetLocomotionSpeed__14CBodyStateInfoCFQ23pas15ELocomotionAnim
/* 8022132C 0021E28C  EC 41 F8 24 */	fdivs f2, f1, f31
/* 80221330 0021E290  48 00 00 08 */	b lbl_80221338
lbl_80221334:
/* 80221334 0021E294  C0 42 B4 18 */	lfs f2, lbl_805AD138@sda21(r2)
lbl_80221338:
/* 80221338 0021E298  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022133C 0021E29C  38 00 00 02 */	li r0, 2
/* 80221340 0021E2A0  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80221344 0021E2A4  90 03 00 34 */	stw r0, 0x34(r3)
/* 80221348 0021E2A8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022134C 0021E2AC  38 63 00 04 */	addi r3, r3, 4
/* 80221350 0021E2B0  4B F1 04 99 */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 80221354 0021E2B4  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80221358 0021E2B8  7F C3 F3 78 */	mr r3, r30
/* 8022135C 0021E2BC  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 80221360 0021E2C0  7F E4 FB 78 */	mr r4, r31
/* 80221364 0021E2C4  4B FF DB BD */	bl sub_8021ef20
/* 80221368 0021E2C8  A1 1E 00 08 */	lhz r8, 8(r30)
/* 8022136C 0021E2CC  7F E4 FB 78 */	mr r4, r31
/* 80221370 0021E2D0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80221374 0021E2D4  38 C1 00 0C */	addi r6, r1, 0xc
/* 80221378 0021E2D8  B1 01 00 0C */	sth r8, 0xc(r1)
/* 8022137C 0021E2DC  38 60 00 00 */	li r3, 0
/* 80221380 0021E2E0  38 E0 00 01 */	li r7, 1
/* 80221384 0021E2E4  A0 1E 06 E8 */	lhz r0, 0x6e8(r30)
/* 80221388 0021E2E8  B1 01 00 08 */	sth r8, 8(r1)
/* 8022138C 0021E2EC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80221390 0021E2F0  48 01 8B 41 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
lbl_80221394:
/* 80221394 0021E2F4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80221398 0021E2F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022139C 0021E2FC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802213A0 0021E300  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802213A4 0021E304  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802213A8 0021E308  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802213AC 0021E30C  7C 08 03 A6 */	mtlr r0
/* 802213B0 0021E310  38 21 00 40 */	addi r1, r1, 0x40
/* 802213B4 0021E314  4E 80 00 20 */	blr

.global ProjectileAttack__9CBabygothFR13CStateManager9EStateMsgf
ProjectileAttack__9CBabygothFR13CStateManager9EStateMsgf:
/* 802213B8 0021E318  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802213BC 0021E31C  7C 08 02 A6 */	mflr r0
/* 802213C0 0021E320  2C 05 00 01 */	cmpwi r5, 1
/* 802213C4 0021E324  90 01 00 84 */	stw r0, 0x84(r1)
/* 802213C8 0021E328  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 802213CC 0021E32C  7C 9F 23 78 */	mr r31, r4
/* 802213D0 0021E330  93 C1 00 78 */	stw r30, 0x78(r1)
/* 802213D4 0021E334  7C 7E 1B 78 */	mr r30, r3
/* 802213D8 0021E338  41 82 00 D0 */	beq lbl_802214A8
/* 802213DC 0021E33C  40 80 00 10 */	bge lbl_802213EC
/* 802213E0 0021E340  2C 05 00 00 */	cmpwi r5, 0
/* 802213E4 0021E344  40 80 00 14 */	bge lbl_802213F8
/* 802213E8 0021E348  48 00 03 14 */	b lbl_802216FC
lbl_802213EC:
/* 802213EC 0021E34C  2C 05 00 03 */	cmpwi r5, 3
/* 802213F0 0021E350  40 80 03 0C */	bge lbl_802216FC
/* 802213F4 0021E354  48 00 02 50 */	b lbl_80221644
lbl_802213F8:
/* 802213F8 0021E358  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 802213FC 0021E35C  38 60 00 01 */	li r3, 1
/* 80221400 0021E360  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80221404 0021E364  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80221408 0021E368  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 8022140C 0021E36C  38 A0 00 00 */	li r5, 0
/* 80221410 0021E370  7F E3 FB 78 */	mr r3, r31
/* 80221414 0021E374  38 81 00 2C */	addi r4, r1, 0x2c
/* 80221418 0021E378  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 8022141C 0021E37C  88 1E 0A 49 */	lbz r0, 0xa49(r30)
/* 80221420 0021E380  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 80221424 0021E384  98 1E 0A 49 */	stb r0, 0xa49(r30)
/* 80221428 0021E388  A0 1E 06 E8 */	lhz r0, 0x6e8(r30)
/* 8022142C 0021E38C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80221430 0021E390  4B E2 B1 45 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80221434 0021E394  7C 64 1B 78 */	mr r4, r3
/* 80221438 0021E398  38 61 00 38 */	addi r3, r1, 0x38
/* 8022143C 0021E39C  4B E8 61 39 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 80221440 0021E3A0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80221444 0021E3A4  28 1F 00 00 */	cmplwi r31, 0
/* 80221448 0021E3A8  41 82 00 54 */	beq lbl_8022149C
/* 8022144C 0021E3AC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80221450 0021E3B0  7F E3 FB 78 */	mr r3, r31
/* 80221454 0021E3B4  38 81 00 28 */	addi r4, r1, 0x28
/* 80221458 0021E3B8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8022145C 0021E3BC  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80221460 0021E3C0  48 01 7C A5 */	bl HasTeamAiRole__10CTeamAiMgrCF9TUniqueId
/* 80221464 0021E3C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221468 0021E3C8  41 82 00 34 */	beq lbl_8022149C
/* 8022146C 0021E3CC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80221470 0021E3D0  7F E3 FB 78 */	mr r3, r31
/* 80221474 0021E3D4  38 81 00 20 */	addi r4, r1, 0x20
/* 80221478 0021E3D8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8022147C 0021E3DC  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80221480 0021E3E0  48 01 71 45 */	bl AddProjectileAttacker__10CTeamAiMgrF9TUniqueId
/* 80221484 0021E3E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221488 0021E3E8  38 60 00 04 */	li r3, 4
/* 8022148C 0021E3EC  41 82 00 08 */	beq lbl_80221494
/* 80221490 0021E3F0  38 60 00 00 */	li r3, 0
lbl_80221494:
/* 80221494 0021E3F4  90 7E 05 68 */	stw r3, 0x568(r30)
/* 80221498 0021E3F8  48 00 02 64 */	b lbl_802216FC
lbl_8022149C:
/* 8022149C 0021E3FC  38 00 00 00 */	li r0, 0
/* 802214A0 0021E400  90 1E 05 68 */	stw r0, 0x568(r30)
/* 802214A4 0021E404  48 00 02 58 */	b lbl_802216FC
lbl_802214A8:
/* 802214A8 0021E408  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 802214AC 0021E40C  7F E5 FB 78 */	mr r5, r31
/* 802214B0 0021E410  38 61 00 40 */	addi r3, r1, 0x40
/* 802214B4 0021E414  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 802214B8 0021E418  81 84 00 00 */	lwz r12, 0(r4)
/* 802214BC 0021E41C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802214C0 0021E420  7D 89 03 A6 */	mtctr r12
/* 802214C4 0021E424  4E 80 04 21 */	bctrl
/* 802214C8 0021E428  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 802214CC 0021E42C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 802214D0 0021E430  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 802214D4 0021E434  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 802214D8 0021E438  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 802214DC 0021E43C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 802214E0 0021E440  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 802214E4 0021E444  2C 00 00 03 */	cmpwi r0, 3
/* 802214E8 0021E448  41 82 00 D8 */	beq lbl_802215C0
/* 802214EC 0021E44C  40 80 02 10 */	bge lbl_802216FC
/* 802214F0 0021E450  2C 00 00 00 */	cmpwi r0, 0
/* 802214F4 0021E454  41 82 00 08 */	beq lbl_802214FC
/* 802214F8 0021E458  48 00 02 04 */	b lbl_802216FC
lbl_802214FC:
/* 802214FC 0021E45C  80 FE 04 50 */	lwz r7, 0x450(r30)
/* 80221500 0021E460  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 80221504 0021E464  2C 00 00 12 */	cmpwi r0, 0x12
/* 80221508 0021E468  40 82 00 20 */	bne lbl_80221528
/* 8022150C 0021E46C  38 00 00 03 */	li r0, 3
/* 80221510 0021E470  C0 22 B4 24 */	lfs f1, lbl_805AD144@sda21(r2)
/* 80221514 0021E474  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80221518 0021E478  C0 1E 08 D0 */	lfs f0, 0x8d0(r30)
/* 8022151C 0021E47C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80221520 0021E480  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 80221524 0021E484  48 00 01 D8 */	b lbl_802216FC
lbl_80221528:
/* 80221528 0021E488  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8022152C 0021E48C  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 80221530 0021E490  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 80221534 0021E494  38 80 00 06 */	li r4, 6
/* 80221538 0021E498  90 01 00 58 */	stw r0, 0x58(r1)
/* 8022153C 0021E49C  38 C3 A9 CC */	addi r6, r3, lbl_803DA9CC@l
/* 80221540 0021E4A0  38 A0 00 02 */	li r5, 2
/* 80221544 0021E4A4  38 00 00 00 */	li r0, 0
/* 80221548 0021E4A8  3B C7 00 04 */	addi r30, r7, 4
/* 8022154C 0021E4AC  90 81 00 5C */	stw r4, 0x5c(r1)
/* 80221550 0021E4B0  7F C3 F3 78 */	mr r3, r30
/* 80221554 0021E4B4  38 80 00 06 */	li r4, 6
/* 80221558 0021E4B8  90 C1 00 58 */	stw r6, 0x58(r1)
/* 8022155C 0021E4BC  90 A1 00 60 */	stw r5, 0x60(r1)
/* 80221560 0021E4C0  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80221564 0021E4C4  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80221568 0021E4C8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8022156C 0021E4CC  98 01 00 70 */	stb r0, 0x70(r1)
/* 80221570 0021E4D0  4B F0 FE C9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80221574 0021E4D4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80221578 0021E4D8  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8022157C 0021E4DC  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 80221580 0021E4E0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80221584 0021E4E4  90 1E 01 2C */	stw r0, 0x12c(r30)
/* 80221588 0021E4E8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022158C 0021E4EC  80 61 00 60 */	lwz r3, 0x60(r1)
/* 80221590 0021E4F0  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 80221594 0021E4F4  90 7E 01 30 */	stw r3, 0x130(r30)
/* 80221598 0021E4F8  80 61 00 68 */	lwz r3, 0x68(r1)
/* 8022159C 0021E4FC  90 BE 01 34 */	stw r5, 0x134(r30)
/* 802215A0 0021E500  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 802215A4 0021E504  90 7E 01 38 */	stw r3, 0x138(r30)
/* 802215A8 0021E508  88 61 00 70 */	lbz r3, 0x70(r1)
/* 802215AC 0021E50C  90 BE 01 3C */	stw r5, 0x13c(r30)
/* 802215B0 0021E510  90 81 00 58 */	stw r4, 0x58(r1)
/* 802215B4 0021E514  98 7E 01 40 */	stb r3, 0x140(r30)
/* 802215B8 0021E518  90 01 00 58 */	stw r0, 0x58(r1)
/* 802215BC 0021E51C  48 00 01 40 */	b lbl_802216FC
lbl_802215C0:
/* 802215C0 0021E520  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 802215C4 0021E524  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 802215C8 0021E528  2C 00 00 12 */	cmpwi r0, 0x12
/* 802215CC 0021E52C  41 82 00 10 */	beq lbl_802215DC
/* 802215D0 0021E530  38 00 00 04 */	li r0, 4
/* 802215D4 0021E534  90 1E 05 68 */	stw r0, 0x568(r30)
/* 802215D8 0021E538  48 00 01 24 */	b lbl_802216FC
lbl_802215DC:
/* 802215DC 0021E53C  A0 1E 09 80 */	lhz r0, 0x980(r30)
/* 802215E0 0021E540  7F E3 FB 78 */	mr r3, r31
/* 802215E4 0021E544  38 81 00 18 */	addi r4, r1, 0x18
/* 802215E8 0021E548  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802215EC 0021E54C  4B E2 AF 89 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802215F0 0021E550  28 03 00 00 */	cmplwi r3, 0
/* 802215F4 0021E554  40 82 01 08 */	bne lbl_802216FC
/* 802215F8 0021E558  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 802215FC 0021E55C  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80221600 0021E560  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80221604 0021E564  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 80221608 0021E568  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8022160C 0021E56C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80221610 0021E570  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 80221614 0021E574  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80221618 0021E578  EC 64 18 28 */	fsubs f3, f4, f3
/* 8022161C 0021E57C  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 80221620 0021E580  EC 22 08 28 */	fsubs f1, f2, f1
/* 80221624 0021E584  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80221628 0021E588  D0 64 00 20 */	stfs f3, 0x20(r4)
/* 8022162C 0021E58C  D0 24 00 24 */	stfs f1, 0x24(r4)
/* 80221630 0021E590  4B F5 3B DD */	bl UnsetTarget__13CBoneTrackingFv
/* 80221634 0021E594  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80221638 0021E598  38 81 00 4C */	addi r4, r1, 0x4c
/* 8022163C 0021E59C  4B F5 3B 7D */	bl SetTargetPosition__13CBoneTrackingFRC9CVector3f
/* 80221640 0021E5A0  48 00 00 BC */	b lbl_802216FC
lbl_80221644:
/* 80221644 0021E5A4  4B FF CC FD */	bl sub_8021e340
/* 80221648 0021E5A8  A0 1E 09 80 */	lhz r0, 0x980(r30)
/* 8022164C 0021E5AC  7F E3 FB 78 */	mr r3, r31
/* 80221650 0021E5B0  38 81 00 14 */	addi r4, r1, 0x14
/* 80221654 0021E5B4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80221658 0021E5B8  4B E2 AF 1D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022165C 0021E5BC  28 03 00 00 */	cmplwi r3, 0
/* 80221660 0021E5C0  41 82 00 10 */	beq lbl_80221670
/* 80221664 0021E5C4  7F E4 FB 78 */	mr r4, r31
/* 80221668 0021E5C8  38 A0 00 00 */	li r5, 0
/* 8022166C 0021E5CC  4B F7 6B 55 */	bl Reset__13CFlameThrowerFR13CStateManagerb
lbl_80221670:
/* 80221670 0021E5D0  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 80221674 0021E5D4  38 60 00 00 */	li r3, 0
/* 80221678 0021E5D8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8022167C 0021E5DC  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 80221680 0021E5E0  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 80221684 0021E5E4  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 80221688 0021E5E8  2C 00 00 12 */	cmpwi r0, 0x12
/* 8022168C 0021E5EC  40 82 00 30 */	bne lbl_802216BC
/* 80221690 0021E5F0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80221694 0021E5F4  38 00 00 0C */	li r0, 0xc
/* 80221698 0021E5F8  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 8022169C 0021E5FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802216A0 0021E600  38 64 00 04 */	addi r3, r4, 4
/* 802216A4 0021E604  38 81 00 30 */	addi r4, r1, 0x30
/* 802216A8 0021E608  90 A1 00 30 */	stw r5, 0x30(r1)
/* 802216AC 0021E60C  4B F1 01 0D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 802216B0 0021E610  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 802216B4 0021E614  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 802216B8 0021E618  90 01 00 30 */	stw r0, 0x30(r1)
lbl_802216BC:
/* 802216BC 0021E61C  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 802216C0 0021E620  38 80 00 00 */	li r4, 0
/* 802216C4 0021E624  4B F5 3B 61 */	bl SetActive__13CBoneTrackingFb
/* 802216C8 0021E628  C0 1E 08 D0 */	lfs f0, 0x8d0(r30)
/* 802216CC 0021E62C  7F E4 FB 78 */	mr r4, r31
/* 802216D0 0021E630  38 A1 00 10 */	addi r5, r1, 0x10
/* 802216D4 0021E634  38 C1 00 0C */	addi r6, r1, 0xc
/* 802216D8 0021E638  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 802216DC 0021E63C  38 60 00 01 */	li r3, 1
/* 802216E0 0021E640  38 E0 00 00 */	li r7, 0
/* 802216E4 0021E644  A1 1E 00 08 */	lhz r8, 8(r30)
/* 802216E8 0021E648  B1 01 00 0C */	sth r8, 0xc(r1)
/* 802216EC 0021E64C  A0 1E 06 E8 */	lhz r0, 0x6e8(r30)
/* 802216F0 0021E650  B1 01 00 08 */	sth r8, 8(r1)
/* 802216F4 0021E654  B0 01 00 10 */	sth r0, 0x10(r1)
/* 802216F8 0021E658  48 01 87 D9 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
lbl_802216FC:
/* 802216FC 0021E65C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80221700 0021E660  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80221704 0021E664  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80221708 0021E668  7C 08 03 A6 */	mtlr r0
/* 8022170C 0021E66C  38 21 00 80 */	addi r1, r1, 0x80
/* 80221710 0021E670  4E 80 00 20 */	blr

.global sub_80221714
sub_80221714:
/* 80221714 0021E674  80 03 05 68 */	lwz r0, 0x568(r3)
/* 80221718 0021E678  20 00 00 04 */	subfic r0, r0, 4
/* 8022171C 0021E67C  7C 00 00 34 */	cntlzw r0, r0
/* 80221720 0021E680  54 03 D9 7E */	srwi r3, r0, 5
/* 80221724 0021E684  4E 80 00 20 */	blr

.global SpotPlayer__9CBabygothFR13CStateManagerf
SpotPlayer__9CBabygothFR13CStateManagerf:
/* 80221728 0021E688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022172C 0021E68C  7C 08 02 A6 */	mflr r0
/* 80221730 0021E690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80221734 0021E694  88 03 0A 48 */	lbz r0, 0xa48(r3)
/* 80221738 0021E698  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8022173C 0021E69C  41 82 00 08 */	beq lbl_80221744
/* 80221740 0021E6A0  48 00 00 0C */	b lbl_8022174C
lbl_80221744:
/* 80221744 0021E6A4  4B FD 4A B9 */	bl SpotPlayer__10CPatternedFR13CStateManagerf
/* 80221748 0021E6A8  7C 60 1B 78 */	mr r0, r3
lbl_8022174C:
/* 8022174C 0021E6AC  7C 03 03 78 */	mr r3, r0
/* 80221750 0021E6B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80221754 0021E6B4  7C 08 03 A6 */	mtlr r0
/* 80221758 0021E6B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022175C 0021E6BC  4E 80 00 20 */	blr

.global InDetectionRange__9CBabygothFR13CStateManagerf
InDetectionRange__9CBabygothFR13CStateManagerf:
/* 80221760 0021E6C0  88 03 0A 48 */	lbz r0, 0xa48(r3)
/* 80221764 0021E6C4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80221768 0021E6C8  40 82 00 90 */	bne lbl_802217F8
/* 8022176C 0021E6CC  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80221770 0021E6D0  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80221774 0021E6D4  C0 A4 00 40 */	lfs f5, 0x40(r4)
/* 80221778 0021E6D8  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 8022177C 0021E6DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221780 0021E6E0  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80221784 0021E6E4  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 80221788 0021E6E8  EC A5 10 28 */	fsubs f5, f5, f2
/* 8022178C 0021E6EC  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 80221790 0021E6F0  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80221794 0021E6F4  EC 84 18 28 */	fsubs f4, f4, f3
/* 80221798 0021E6F8  EC 62 00 28 */	fsubs f3, f2, f0
/* 8022179C 0021E6FC  40 81 00 08 */	ble lbl_802217A4
/* 802217A0 0021E700  48 00 00 08 */	b lbl_802217A8
lbl_802217A4:
/* 802217A4 0021E704  C0 22 B4 18 */	lfs f1, lbl_805AD138@sda21(r2)
lbl_802217A8:
/* 802217A8 0021E708  EC 04 01 32 */	fmuls f0, f4, f4
/* 802217AC 0021E70C  C0 43 03 BC */	lfs f2, 0x3bc(r3)
/* 802217B0 0021E710  EC 63 00 F2 */	fmuls f3, f3, f3
/* 802217B4 0021E714  EC 41 00 B2 */	fmuls f2, f1, f2
/* 802217B8 0021E718  EC 25 01 7A */	fmadds f1, f5, f5, f0
/* 802217BC 0021E71C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 802217C0 0021E720  EC 23 08 2A */	fadds f1, f3, f1
/* 802217C4 0021E724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802217C8 0021E728  40 80 00 30 */	bge lbl_802217F8
/* 802217CC 0021E72C  C0 23 03 C0 */	lfs f1, 0x3c0(r3)
/* 802217D0 0021E730  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 802217D4 0021E734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802217D8 0021E738  40 81 00 18 */	ble lbl_802217F0
/* 802217DC 0021E73C  EC 01 00 72 */	fmuls f0, f1, f1
/* 802217E0 0021E740  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802217E4 0021E744  7C 00 00 26 */	mfcr r0
/* 802217E8 0021E748  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802217EC 0021E74C  4E 80 00 20 */	blr
lbl_802217F0:
/* 802217F0 0021E750  38 60 00 01 */	li r3, 1
/* 802217F4 0021E754  4E 80 00 20 */	blr
lbl_802217F8:
/* 802217F8 0021E758  7C 03 03 78 */	mr r3, r0
/* 802217FC 0021E75C  4E 80 00 20 */	blr

.global InPosition__9CBabygothFR13CStateManagerf
InPosition__9CBabygothFR13CStateManagerf:
/* 80221800 0021E760  C0 23 08 BC */	lfs f1, 0x8bc(r3)
/* 80221804 0021E764  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80221808 0021E768  C0 63 08 B8 */	lfs f3, 0x8b8(r3)
/* 8022180C 0021E76C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80221810 0021E770  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80221814 0021E774  C0 43 08 C0 */	lfs f2, 0x8c0(r3)
/* 80221818 0021E778  EC 63 00 28 */	fsubs f3, f3, f0
/* 8022181C 0021E77C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80221820 0021E780  EC 21 00 72 */	fmuls f1, f1, f1
/* 80221824 0021E784  EC 42 00 28 */	fsubs f2, f2, f0
/* 80221828 0021E788  C0 02 B4 44 */	lfs f0, lbl_805AD164@sda21(r2)
/* 8022182C 0021E78C  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 80221830 0021E790  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80221834 0021E794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221838 0021E798  7C 00 00 26 */	mfcr r0
/* 8022183C 0021E79C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80221840 0021E7A0  4E 80 00 20 */	blr

.global ShouldTurn__9CBabygothFR13CStateManagerf
ShouldTurn__9CBabygothFR13CStateManagerf:
/* 80221844 0021E7A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80221848 0021E7A8  7C 08 02 A6 */	mflr r0
/* 8022184C 0021E7AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80221850 0021E7B0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80221854 0021E7B4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80221858 0021E7B8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8022185C 0021E7BC  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80221860 0021E7C0  7C 7F 1B 78 */	mr r31, r3
/* 80221864 0021E7C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221868 0021E7C8  40 82 00 0C */	bne lbl_80221874
/* 8022186C 0021E7CC  C3 E2 B4 48 */	lfs f31, lbl_805AD168@sda21(r2)
/* 80221870 0021E7D0  48 00 00 08 */	b lbl_80221878
lbl_80221874:
/* 80221874 0021E7D4  FF E0 08 90 */	fmr f31, f1
lbl_80221878:
/* 80221878 0021E7D8  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 8022187C 0021E7DC  7C 85 23 78 */	mr r5, r4
/* 80221880 0021E7E0  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80221884 0021E7E4  38 61 00 40 */	addi r3, r1, 0x40
/* 80221888 0021E7E8  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8022188C 0021E7EC  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80221890 0021E7F0  C0 46 02 00 */	lfs f2, 0x200(r6)
/* 80221894 0021E7F4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80221898 0021E7F8  40 81 00 0C */	ble lbl_802218A4
/* 8022189C 0021E7FC  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 802218A0 0021E800  EC 20 10 24 */	fdivs f1, f0, f2
lbl_802218A4:
/* 802218A4 0021E804  81 84 00 00 */	lwz r12, 0(r4)
/* 802218A8 0021E808  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802218AC 0021E80C  7D 89 03 A6 */	mtctr r12
/* 802218B0 0021E810  4E 80 04 21 */	bctrl
/* 802218B4 0021E814  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 802218B8 0021E818  38 61 00 10 */	addi r3, r1, 0x10
/* 802218BC 0021E81C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 802218C0 0021E820  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 802218C4 0021E824  EC 42 00 28 */	fsubs f2, f2, f0
/* 802218C8 0021E828  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802218CC 0021E82C  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 802218D0 0021E830  EC 21 00 28 */	fsubs f1, f1, f0
/* 802218D4 0021E834  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 802218D8 0021E838  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 802218DC 0021E83C  EC 03 00 28 */	fsubs f0, f3, f0
/* 802218E0 0021E840  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 802218E4 0021E844  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 802218E8 0021E848  48 0F 29 19 */	bl __ct__9CVector2fFff
/* 802218EC 0021E84C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 802218F0 0021E850  38 61 00 08 */	addi r3, r1, 8
/* 802218F4 0021E854  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802218F8 0021E858  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 802218FC 0021E85C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80221900 0021E860  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80221904 0021E864  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80221908 0021E868  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8022190C 0021E86C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80221910 0021E870  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80221914 0021E874  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80221918 0021E878  48 0F 28 E9 */	bl __ct__9CVector2fFff
/* 8022191C 0021E87C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80221920 0021E880  38 61 00 18 */	addi r3, r1, 0x18
/* 80221924 0021E884  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80221928 0021E888  38 81 00 20 */	addi r4, r1, 0x20
/* 8022192C 0021E88C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80221930 0021E890  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80221934 0021E894  48 0F 26 91 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 80221938 0021E898  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8022193C 0021E89C  7C 00 00 26 */	mfcr r0
/* 80221940 0021E8A0  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80221944 0021E8A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80221948 0021E8A8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8022194C 0021E8AC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80221950 0021E8B0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80221954 0021E8B4  7C 08 03 A6 */	mtlr r0
/* 80221958 0021E8B8  38 21 00 70 */	addi r1, r1, 0x70
/* 8022195C 0021E8BC  4E 80 00 20 */	blr

.global ShouldFire__9CBabygothFR13CStateManagerf
ShouldFire__9CBabygothFR13CStateManagerf:
/* 80221960 0021E8C0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80221964 0021E8C4  7C 08 02 A6 */	mflr r0
/* 80221968 0021E8C8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8022196C 0021E8CC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80221970 0021E8D0  7C 9F 23 78 */	mr r31, r4
/* 80221974 0021E8D4  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80221978 0021E8D8  7C 7E 1B 78 */	mr r30, r3
/* 8022197C 0021E8DC  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80221980 0021E8E0  80 63 00 04 */	lwz r3, 4(r3)
/* 80221984 0021E8E4  80 04 00 04 */	lwz r0, 4(r4)
/* 80221988 0021E8E8  7C 03 00 00 */	cmpw r3, r0
/* 8022198C 0021E8EC  40 82 00 FC */	bne lbl_80221A88
/* 80221990 0021E8F0  C0 1E 08 D8 */	lfs f0, 0x8d8(r30)
/* 80221994 0021E8F4  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80221998 0021E8F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8022199C 0021E8FC  4C 40 13 82 */	cror 2, 0, 2
/* 802219A0 0021E900  40 82 00 E8 */	bne lbl_80221A88
/* 802219A4 0021E904  81 84 00 00 */	lwz r12, 0(r4)
/* 802219A8 0021E908  7F E5 FB 78 */	mr r5, r31
/* 802219AC 0021E90C  38 61 00 08 */	addi r3, r1, 8
/* 802219B0 0021E910  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802219B4 0021E914  7D 89 03 A6 */	mtctr r12
/* 802219B8 0021E918  4E 80 04 21 */	bctrl
/* 802219BC 0021E91C  C0 41 00 08 */	lfs f2, 8(r1)
/* 802219C0 0021E920  7F C4 F3 78 */	mr r4, r30
/* 802219C4 0021E924  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 802219C8 0021E928  38 61 00 2C */	addi r3, r1, 0x2c
/* 802219CC 0021E92C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802219D0 0021E930  38 BE 09 F4 */	addi r5, r30, 0x9f4
/* 802219D4 0021E934  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 802219D8 0021E938  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 802219DC 0021E93C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802219E0 0021E940  4B E5 6E D9 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 802219E4 0021E944  38 61 00 5C */	addi r3, r1, 0x5c
/* 802219E8 0021E948  38 81 00 2C */	addi r4, r1, 0x2c
/* 802219EC 0021E94C  48 0F 11 89 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802219F0 0021E950  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 802219F4 0021E954  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802219F8 0021E958  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 802219FC 0021E95C  EC 80 10 28 */	fsubs f4, f0, f2
/* 80221A00 0021E960  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80221A04 0021E964  C0 C1 00 88 */	lfs f6, 0x88(r1)
/* 80221A08 0021E968  EC A0 18 28 */	fsubs f5, f0, f3
/* 80221A0C 0021E96C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80221A10 0021E970  EC 04 01 32 */	fmuls f0, f4, f4
/* 80221A14 0021E974  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80221A18 0021E978  EC 21 30 28 */	fsubs f1, f1, f6
/* 80221A1C 0021E97C  EC 05 01 7A */	fmadds f0, f5, f5, f0
/* 80221A20 0021E980  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80221A24 0021E984  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 80221A28 0021E988  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 80221A2C 0021E98C  C0 1E 03 00 */	lfs f0, 0x300(r30)
/* 80221A30 0021E990  EC 00 00 32 */	fmuls f0, f0, f0
/* 80221A34 0021E994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221A38 0021E998  4C 40 13 82 */	cror 2, 0, 2
/* 80221A3C 0021E99C  40 82 00 4C */	bne lbl_80221A88
/* 80221A40 0021E9A0  7F C3 F3 78 */	mr r3, r30
/* 80221A44 0021E9A4  7F E4 FB 78 */	mr r4, r31
/* 80221A48 0021E9A8  81 9E 00 00 */	lwz r12, 0(r30)
/* 80221A4C 0021E9AC  C0 22 B4 4C */	lfs f1, lbl_805AD16C@sda21(r2)
/* 80221A50 0021E9B0  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 80221A54 0021E9B4  7D 89 03 A6 */	mtctr r12
/* 80221A58 0021E9B8  4E 80 04 21 */	bctrl
/* 80221A5C 0021E9BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221A60 0021E9C0  40 82 00 28 */	bne lbl_80221A88
/* 80221A64 0021E9C4  7F C3 F3 78 */	mr r3, r30
/* 80221A68 0021E9C8  7F E4 FB 78 */	mr r4, r31
/* 80221A6C 0021E9CC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80221A70 0021E9D0  38 C1 00 20 */	addi r6, r1, 0x20
/* 80221A74 0021E9D4  4B FD 33 5D */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 80221A78 0021E9D8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80221A7C 0021E9DC  7C 00 00 34 */	cntlzw r0, r0
/* 80221A80 0021E9E0  54 03 D9 7E */	srwi r3, r0, 5
/* 80221A84 0021E9E4  48 00 00 08 */	b lbl_80221A8C
lbl_80221A88:
/* 80221A88 0021E9E8  38 60 00 00 */	li r3, 0
lbl_80221A8C:
/* 80221A8C 0021E9EC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80221A90 0021E9F0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80221A94 0021E9F4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80221A98 0021E9F8  7C 08 03 A6 */	mtlr r0
/* 80221A9C 0021E9FC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80221AA0 0021EA00  4E 80 00 20 */	blr

.global ShouldSpecialAttack__9CBabygothFR13CStateManagerf
ShouldSpecialAttack__9CBabygothFR13CStateManagerf:
/* 80221AA4 0021EA04  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80221AA8 0021EA08  7C 08 02 A6 */	mflr r0
/* 80221AAC 0021EA0C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80221AB0 0021EA10  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80221AB4 0021EA14  7C 9F 23 78 */	mr r31, r4
/* 80221AB8 0021EA18  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80221ABC 0021EA1C  7C 7E 1B 78 */	mr r30, r3
/* 80221AC0 0021EA20  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80221AC4 0021EA24  80 63 00 04 */	lwz r3, 4(r3)
/* 80221AC8 0021EA28  80 04 00 04 */	lwz r0, 4(r4)
/* 80221ACC 0021EA2C  7C 03 00 00 */	cmpw r3, r0
/* 80221AD0 0021EA30  40 82 00 FC */	bne lbl_80221BCC
/* 80221AD4 0021EA34  C0 1E 08 E4 */	lfs f0, 0x8e4(r30)
/* 80221AD8 0021EA38  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80221ADC 0021EA3C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80221AE0 0021EA40  4C 40 13 82 */	cror 2, 0, 2
/* 80221AE4 0021EA44  40 82 00 E8 */	bne lbl_80221BCC
/* 80221AE8 0021EA48  81 84 00 00 */	lwz r12, 0(r4)
/* 80221AEC 0021EA4C  7F E5 FB 78 */	mr r5, r31
/* 80221AF0 0021EA50  38 61 00 08 */	addi r3, r1, 8
/* 80221AF4 0021EA54  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80221AF8 0021EA58  7D 89 03 A6 */	mtctr r12
/* 80221AFC 0021EA5C  4E 80 04 21 */	bctrl
/* 80221B00 0021EA60  C0 41 00 08 */	lfs f2, 8(r1)
/* 80221B04 0021EA64  7F C4 F3 78 */	mr r4, r30
/* 80221B08 0021EA68  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80221B0C 0021EA6C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80221B10 0021EA70  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80221B14 0021EA74  38 BE 09 F4 */	addi r5, r30, 0x9f4
/* 80221B18 0021EA78  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80221B1C 0021EA7C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80221B20 0021EA80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80221B24 0021EA84  4B E5 6D 95 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80221B28 0021EA88  38 61 00 5C */	addi r3, r1, 0x5c
/* 80221B2C 0021EA8C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80221B30 0021EA90  48 0F 10 45 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80221B34 0021EA94  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 80221B38 0021EA98  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80221B3C 0021EA9C  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 80221B40 0021EAA0  EC 80 10 28 */	fsubs f4, f0, f2
/* 80221B44 0021EAA4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80221B48 0021EAA8  C0 C1 00 88 */	lfs f6, 0x88(r1)
/* 80221B4C 0021EAAC  EC A0 18 28 */	fsubs f5, f0, f3
/* 80221B50 0021EAB0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80221B54 0021EAB4  EC 04 01 32 */	fmuls f0, f4, f4
/* 80221B58 0021EAB8  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80221B5C 0021EABC  EC 21 30 28 */	fsubs f1, f1, f6
/* 80221B60 0021EAC0  EC 05 01 7A */	fmadds f0, f5, f5, f0
/* 80221B64 0021EAC4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80221B68 0021EAC8  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 80221B6C 0021EACC  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 80221B70 0021EAD0  C0 1E 03 00 */	lfs f0, 0x300(r30)
/* 80221B74 0021EAD4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80221B78 0021EAD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221B7C 0021EADC  4C 41 13 82 */	cror 2, 1, 2
/* 80221B80 0021EAE0  40 82 00 4C */	bne lbl_80221BCC
/* 80221B84 0021EAE4  7F C3 F3 78 */	mr r3, r30
/* 80221B88 0021EAE8  7F E4 FB 78 */	mr r4, r31
/* 80221B8C 0021EAEC  81 9E 00 00 */	lwz r12, 0(r30)
/* 80221B90 0021EAF0  C0 22 B4 3C */	lfs f1, lbl_805AD15C@sda21(r2)
/* 80221B94 0021EAF4  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 80221B98 0021EAF8  7D 89 03 A6 */	mtctr r12
/* 80221B9C 0021EAFC  4E 80 04 21 */	bctrl
/* 80221BA0 0021EB00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221BA4 0021EB04  40 82 00 28 */	bne lbl_80221BCC
/* 80221BA8 0021EB08  7F C3 F3 78 */	mr r3, r30
/* 80221BAC 0021EB0C  7F E4 FB 78 */	mr r4, r31
/* 80221BB0 0021EB10  38 A1 00 14 */	addi r5, r1, 0x14
/* 80221BB4 0021EB14  38 C1 00 20 */	addi r6, r1, 0x20
/* 80221BB8 0021EB18  4B FD 32 19 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 80221BBC 0021EB1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221BC0 0021EB20  40 82 00 0C */	bne lbl_80221BCC
/* 80221BC4 0021EB24  38 60 00 01 */	li r3, 1
/* 80221BC8 0021EB28  48 00 00 08 */	b lbl_80221BD0
lbl_80221BCC:
/* 80221BCC 0021EB2C  38 60 00 00 */	li r3, 0
lbl_80221BD0:
/* 80221BD0 0021EB30  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80221BD4 0021EB34  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80221BD8 0021EB38  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80221BDC 0021EB3C  7C 08 03 A6 */	mtlr r0
/* 80221BE0 0021EB40  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80221BE4 0021EB44  4E 80 00 20 */	blr

.global ShouldAttack__9CBabygothFR13CStateManagerf
ShouldAttack__9CBabygothFR13CStateManagerf:
/* 80221BE8 0021EB48  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80221BEC 0021EB4C  7C 08 02 A6 */	mflr r0
/* 80221BF0 0021EB50  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80221BF4 0021EB54  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80221BF8 0021EB58  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 80221BFC 0021EB5C  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80221C00 0021EB60  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 80221C04 0021EB64  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 80221C08 0021EB68  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 80221C0C 0021EB6C  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 80221C10 0021EB70  7C 9E 23 78 */	mr r30, r4
/* 80221C14 0021EB74  7C 7D 1B 78 */	mr r29, r3
/* 80221C18 0021EB78  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 80221C1C 0021EB7C  80 63 00 04 */	lwz r3, 4(r3)
/* 80221C20 0021EB80  80 1F 00 04 */	lwz r0, 4(r31)
/* 80221C24 0021EB84  7C 03 00 00 */	cmpw r3, r0
/* 80221C28 0021EB88  40 82 01 9C */	bne lbl_80221DC4
/* 80221C2C 0021EB8C  7F E3 FB 78 */	mr r3, r31
/* 80221C30 0021EB90  4B DF 40 CD */	bl GetFrozenState__7CPlayerCFv
/* 80221C34 0021EB94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221C38 0021EB98  40 82 01 8C */	bne lbl_80221DC4
/* 80221C3C 0021EB9C  C0 1D 08 D8 */	lfs f0, 0x8d8(r29)
/* 80221C40 0021EBA0  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80221C44 0021EBA4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80221C48 0021EBA8  4C 40 13 82 */	cror 2, 0, 2
/* 80221C4C 0021EBAC  40 82 01 78 */	bne lbl_80221DC4
/* 80221C50 0021EBB0  C0 1D 08 E0 */	lfs f0, 0x8e0(r29)
/* 80221C54 0021EBB4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80221C58 0021EBB8  4C 40 13 82 */	cror 2, 0, 2
/* 80221C5C 0021EBBC  40 82 01 68 */	bne lbl_80221DC4
/* 80221C60 0021EBC0  81 9F 00 00 */	lwz r12, 0(r31)
/* 80221C64 0021EBC4  7F E4 FB 78 */	mr r4, r31
/* 80221C68 0021EBC8  7F C5 F3 78 */	mr r5, r30
/* 80221C6C 0021EBCC  38 61 00 24 */	addi r3, r1, 0x24
/* 80221C70 0021EBD0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80221C74 0021EBD4  7D 89 03 A6 */	mtctr r12
/* 80221C78 0021EBD8  4E 80 04 21 */	bctrl
/* 80221C7C 0021EBDC  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 80221C80 0021EBE0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80221C84 0021EBE4  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 80221C88 0021EBE8  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 80221C8C 0021EBEC  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 80221C90 0021EBF0  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 80221C94 0021EBF4  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80221C98 0021EBF8  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 80221C9C 0021EBFC  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80221CA0 0021EC00  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80221CA4 0021EC04  EC 44 10 28 */	fsubs f2, f4, f2
/* 80221CA8 0021EC08  EC 23 08 28 */	fsubs f1, f3, f1
/* 80221CAC 0021EC0C  EC 05 00 28 */	fsubs f0, f5, f0
/* 80221CB0 0021EC10  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80221CB4 0021EC14  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80221CB8 0021EC18  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80221CBC 0021EC1C  48 0F 2B FD */	bl Magnitude__9CVector3fCFv
/* 80221CC0 0021EC20  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80221CC4 0021EC24  FF E0 08 90 */	fmr f31, f1
/* 80221CC8 0021EC28  C3 DD 06 D0 */	lfs f30, 0x6d0(r29)
/* 80221CCC 0021EC2C  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80221CD0 0021EC30  4B F1 21 DD */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 80221CD4 0021EC34  EC 01 07 B2 */	fmuls f0, f1, f30
/* 80221CD8 0021EC38  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80221CDC 0021EC3C  40 81 00 E8 */	ble lbl_80221DC4
/* 80221CE0 0021EC40  7F A3 EB 78 */	mr r3, r29
/* 80221CE4 0021EC44  7F C4 F3 78 */	mr r4, r30
/* 80221CE8 0021EC48  81 9D 00 00 */	lwz r12, 0(r29)
/* 80221CEC 0021EC4C  C0 22 B4 3C */	lfs f1, lbl_805AD15C@sda21(r2)
/* 80221CF0 0021EC50  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 80221CF4 0021EC54  7D 89 03 A6 */	mtctr r12
/* 80221CF8 0021EC58  4E 80 04 21 */	bctrl
/* 80221CFC 0021EC5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221D00 0021EC60  40 82 00 C4 */	bne lbl_80221DC4
/* 80221D04 0021EC64  7F A4 EB 78 */	mr r4, r29
/* 80221D08 0021EC68  38 61 00 54 */	addi r3, r1, 0x54
/* 80221D0C 0021EC6C  38 BD 09 F4 */	addi r5, r29, 0x9f4
/* 80221D10 0021EC70  4B E5 6B A9 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80221D14 0021EC74  38 61 00 84 */	addi r3, r1, 0x84
/* 80221D18 0021EC78  38 81 00 54 */	addi r4, r1, 0x54
/* 80221D1C 0021EC7C  48 0F 0E 59 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80221D20 0021EC80  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80221D24 0021EC84  7F A3 EB 78 */	mr r3, r29
/* 80221D28 0021EC88  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80221D2C 0021EC8C  7F C4 F3 78 */	mr r4, r30
/* 80221D30 0021EC90  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80221D34 0021EC94  38 A1 00 30 */	addi r5, r1, 0x30
/* 80221D38 0021EC98  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80221D3C 0021EC9C  38 C1 00 48 */	addi r6, r1, 0x48
/* 80221D40 0021ECA0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80221D44 0021ECA4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80221D48 0021ECA8  4B FD 30 89 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 80221D4C 0021ECAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221D50 0021ECB0  40 82 00 74 */	bne lbl_80221DC4
/* 80221D54 0021ECB4  A0 1D 06 E8 */	lhz r0, 0x6e8(r29)
/* 80221D58 0021ECB8  7F C3 F3 78 */	mr r3, r30
/* 80221D5C 0021ECBC  38 81 00 18 */	addi r4, r1, 0x18
/* 80221D60 0021ECC0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80221D64 0021ECC4  4B E2 A8 11 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80221D68 0021ECC8  7C 64 1B 78 */	mr r4, r3
/* 80221D6C 0021ECCC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80221D70 0021ECD0  4B E8 58 05 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 80221D74 0021ECD4  83 E3 00 04 */	lwz r31, 4(r3)
/* 80221D78 0021ECD8  28 1F 00 00 */	cmplwi r31, 0
/* 80221D7C 0021ECDC  41 82 00 40 */	beq lbl_80221DBC
/* 80221D80 0021ECE0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80221D84 0021ECE4  7F E3 FB 78 */	mr r3, r31
/* 80221D88 0021ECE8  38 81 00 14 */	addi r4, r1, 0x14
/* 80221D8C 0021ECEC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80221D90 0021ECF0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80221D94 0021ECF4  48 01 72 5D */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 80221D98 0021ECF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221D9C 0021ECFC  41 82 00 20 */	beq lbl_80221DBC
/* 80221DA0 0021ED00  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80221DA4 0021ED04  7F E3 FB 78 */	mr r3, r31
/* 80221DA8 0021ED08  38 81 00 0C */	addi r4, r1, 0xc
/* 80221DAC 0021ED0C  B0 01 00 08 */	sth r0, 8(r1)
/* 80221DB0 0021ED10  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80221DB4 0021ED14  48 01 6E F9 */	bl AddMeleeAttacker__10CTeamAiMgrF9TUniqueId
/* 80221DB8 0021ED18  48 00 00 10 */	b lbl_80221DC8
lbl_80221DBC:
/* 80221DBC 0021ED1C  38 60 00 01 */	li r3, 1
/* 80221DC0 0021ED20  48 00 00 08 */	b lbl_80221DC8
lbl_80221DC4:
/* 80221DC4 0021ED24  38 60 00 00 */	li r3, 0
lbl_80221DC8:
/* 80221DC8 0021ED28  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 80221DCC 0021ED2C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80221DD0 0021ED30  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 80221DD4 0021ED34  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80221DD8 0021ED38  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80221DDC 0021ED3C  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 80221DE0 0021ED40  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80221DE4 0021ED44  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 80221DE8 0021ED48  7C 08 03 A6 */	mtlr r0
/* 80221DEC 0021ED4C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80221DF0 0021ED50  4E 80 00 20 */	blr

.global Leash__9CBabygothFR13CStateManagerf
Leash__9CBabygothFR13CStateManagerf:
/* 80221DF4 0021ED54  C0 C3 00 50 */	lfs f6, 0x50(r3)
/* 80221DF8 0021ED58  C0 03 03 A4 */	lfs f0, 0x3a4(r3)
/* 80221DFC 0021ED5C  C0 43 03 C8 */	lfs f2, 0x3c8(r3)
/* 80221E00 0021ED60  EC 60 30 28 */	fsubs f3, f0, f6
/* 80221E04 0021ED64  C0 E3 00 40 */	lfs f7, 0x40(r3)
/* 80221E08 0021ED68  C0 23 03 A0 */	lfs f1, 0x3a0(r3)
/* 80221E0C 0021ED6C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80221E10 0021ED70  C0 A3 00 60 */	lfs f5, 0x60(r3)
/* 80221E14 0021ED74  C0 43 03 A8 */	lfs f2, 0x3a8(r3)
/* 80221E18 0021ED78  EC 81 38 28 */	fsubs f4, f1, f7
/* 80221E1C 0021ED7C  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80221E20 0021ED80  EC 42 28 28 */	fsubs f2, f2, f5
/* 80221E24 0021ED84  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80221E28 0021ED88  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80221E2C 0021ED8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221E30 0021ED90  40 81 00 5C */	ble lbl_80221E8C
/* 80221E34 0021ED94  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80221E38 0021ED98  38 00 00 00 */	li r0, 0
/* 80221E3C 0021ED9C  C0 03 03 CC */	lfs f0, 0x3cc(r3)
/* 80221E40 0021EDA0  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80221E44 0021EDA4  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80221E48 0021EDA8  EC 00 00 32 */	fmuls f0, f0, f0
/* 80221E4C 0021EDAC  EC 61 30 28 */	fsubs f3, f1, f6
/* 80221E50 0021EDB0  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 80221E54 0021EDB4  EC 82 38 28 */	fsubs f4, f2, f7
/* 80221E58 0021EDB8  EC 41 28 28 */	fsubs f2, f1, f5
/* 80221E5C 0021EDBC  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80221E60 0021EDC0  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80221E64 0021EDC4  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80221E68 0021EDC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221E6C 0021EDCC  40 81 00 18 */	ble lbl_80221E84
/* 80221E70 0021EDD0  C0 23 03 D4 */	lfs f1, 0x3d4(r3)
/* 80221E74 0021EDD4  C0 03 03 D0 */	lfs f0, 0x3d0(r3)
/* 80221E78 0021EDD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221E7C 0021EDDC  40 81 00 08 */	ble lbl_80221E84
/* 80221E80 0021EDE0  38 00 00 01 */	li r0, 1
lbl_80221E84:
/* 80221E84 0021EDE4  7C 03 03 78 */	mr r3, r0
/* 80221E88 0021EDE8  4E 80 00 20 */	blr
lbl_80221E8C:
/* 80221E8C 0021EDEC  38 60 00 00 */	li r3, 0
/* 80221E90 0021EDF0  4E 80 00 20 */	blr

.global LineOfSight__9CBabygothFR13CStateManagerf
LineOfSight__9CBabygothFR13CStateManagerf:
/* 80221E94 0021EDF4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80221E98 0021EDF8  7C 08 02 A6 */	mflr r0
/* 80221E9C 0021EDFC  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80221EA0 0021EE00  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80221EA4 0021EE04  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80221EA8 0021EE08  7C 9F 23 78 */	mr r31, r4
/* 80221EAC 0021EE0C  7F E5 FB 78 */	mr r5, r31
/* 80221EB0 0021EE10  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80221EB4 0021EE14  7C 7E 1B 78 */	mr r30, r3
/* 80221EB8 0021EE18  38 61 00 08 */	addi r3, r1, 8
/* 80221EBC 0021EE1C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80221EC0 0021EE20  81 84 00 00 */	lwz r12, 0(r4)
/* 80221EC4 0021EE24  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80221EC8 0021EE28  7D 89 03 A6 */	mtctr r12
/* 80221ECC 0021EE2C  4E 80 04 21 */	bctrl
/* 80221ED0 0021EE30  C0 41 00 08 */	lfs f2, 8(r1)
/* 80221ED4 0021EE34  7F C4 F3 78 */	mr r4, r30
/* 80221ED8 0021EE38  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80221EDC 0021EE3C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80221EE0 0021EE40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80221EE4 0021EE44  38 BE 09 F4 */	addi r5, r30, 0x9f4
/* 80221EE8 0021EE48  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80221EEC 0021EE4C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80221EF0 0021EE50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80221EF4 0021EE54  4B E5 69 C5 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80221EF8 0021EE58  38 61 00 5C */	addi r3, r1, 0x5c
/* 80221EFC 0021EE5C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80221F00 0021EE60  48 0F 0C 75 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80221F04 0021EE64  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 80221F08 0021EE68  7F C3 F3 78 */	mr r3, r30
/* 80221F0C 0021EE6C  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80221F10 0021EE70  7F E4 FB 78 */	mr r4, r31
/* 80221F14 0021EE74  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80221F18 0021EE78  38 A1 00 14 */	addi r5, r1, 0x14
/* 80221F1C 0021EE7C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80221F20 0021EE80  38 C1 00 20 */	addi r6, r1, 0x20
/* 80221F24 0021EE84  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80221F28 0021EE88  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80221F2C 0021EE8C  4B FD 2E A5 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 80221F30 0021EE90  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80221F34 0021EE94  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80221F38 0021EE98  7C 00 00 34 */	cntlzw r0, r0
/* 80221F3C 0021EE9C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80221F40 0021EEA0  54 03 D9 7E */	srwi r3, r0, 5
/* 80221F44 0021EEA4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80221F48 0021EEA8  7C 08 03 A6 */	mtlr r0
/* 80221F4C 0021EEAC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80221F50 0021EEB0  4E 80 00 20 */	blr

.global LostInterest__9CBabygothFR13CStateManagerf
LostInterest__9CBabygothFR13CStateManagerf:
/* 80221F54 0021EEB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80221F58 0021EEB8  7C 08 02 A6 */	mflr r0
/* 80221F5C 0021EEBC  7C 65 1B 78 */	mr r5, r3
/* 80221F60 0021EEC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80221F64 0021EEC4  C0 23 08 E8 */	lfs f1, 0x8e8(r3)
/* 80221F68 0021EEC8  C0 03 06 D8 */	lfs f0, 0x6d8(r3)
/* 80221F6C 0021EECC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221F70 0021EED0  4C 41 13 82 */	cror 2, 1, 2
/* 80221F74 0021EED4  40 82 00 34 */	bne lbl_80221FA8
/* 80221F78 0021EED8  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 80221F7C 0021EEDC  38 65 06 EC */	addi r3, r5, 0x6ec
/* 80221F80 0021EEE0  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80221F84 0021EEE4  38 81 00 08 */	addi r4, r1, 8
/* 80221F88 0021EEE8  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80221F8C 0021EEEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80221F90 0021EEF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80221F94 0021EEF4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80221F98 0021EEF8  4B FA 4B 9D */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 80221F9C 0021EEFC  7C 60 00 34 */	cntlzw r0, r3
/* 80221FA0 0021EF00  54 03 D9 7E */	srwi r3, r0, 5
/* 80221FA4 0021EF04  48 00 00 08 */	b lbl_80221FAC
lbl_80221FA8:
/* 80221FA8 0021EF08  38 60 00 00 */	li r3, 0
lbl_80221FAC:
/* 80221FAC 0021EF0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80221FB0 0021EF10  7C 08 03 A6 */	mtlr r0
/* 80221FB4 0021EF14  38 21 00 20 */	addi r1, r1, 0x20
/* 80221FB8 0021EF18  4E 80 00 20 */	blr

.global OffLine__9CBabygothFR13CStateManagerf
OffLine__9CBabygothFR13CStateManagerf:
/* 80221FBC 0021EF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80221FC0 0021EF20  7C 08 02 A6 */	mflr r0
/* 80221FC4 0021EF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80221FC8 0021EF28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80221FCC 0021EF2C  7C 9F 23 78 */	mr r31, r4
/* 80221FD0 0021EF30  38 80 00 00 */	li r4, 0
/* 80221FD4 0021EF34  93 C1 00 08 */	stw r30, 8(r1)
/* 80221FD8 0021EF38  7C 7E 1B 78 */	mr r30, r3
/* 80221FDC 0021EF3C  4B FF C0 C1 */	bl sub_8021e09c
/* 80221FE0 0021EF40  7F C3 F3 78 */	mr r3, r30
/* 80221FE4 0021EF44  7F E4 FB 78 */	mr r4, r31
/* 80221FE8 0021EF48  81 9E 00 00 */	lwz r12, 0(r30)
/* 80221FEC 0021EF4C  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80221FF0 0021EF50  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80221FF4 0021EF54  7D 89 03 A6 */	mtctr r12
/* 80221FF8 0021EF58  4E 80 04 21 */	bctrl
/* 80221FFC 0021EF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222000 0021EF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80222004 0021EF64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80222008 0021EF68  7C 08 03 A6 */	mtlr r0
/* 8022200C 0021EF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80222010 0021EF70  4E 80 00 20 */	blr

.global ShotAt__9CBabygothFR13CStateManagerf
ShotAt__9CBabygothFR13CStateManagerf:
/* 80222014 0021EF74  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80222018 0021EF78  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 8022201C 0021EF7C  7C 03 00 D0 */	neg r0, r3
/* 80222020 0021EF80  7C 00 1B 78 */	or r0, r0, r3
/* 80222024 0021EF84  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80222028 0021EF88  4E 80 00 20 */	blr

.global InMaxRange__9CBabygothFR13CStateManagerf
InMaxRange__9CBabygothFR13CStateManagerf:
/* 8022202C 0021EF8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80222030 0021EF90  C0 22 B4 34 */	lfs f1, lbl_805AD154@sda21(r2)
/* 80222034 0021EF94  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80222038 0021EF98  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8022203C 0021EF9C  C1 24 00 50 */	lfs f9, 0x50(r4)
/* 80222040 0021EFA0  C0 C4 00 40 */	lfs f6, 0x40(r4)
/* 80222044 0021EFA4  ED 09 00 28 */	fsubs f8, f9, f0
/* 80222048 0021EFA8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8022204C 0021EFAC  C1 44 00 60 */	lfs f10, 0x60(r4)
/* 80222050 0021EFB0  EC A6 00 28 */	fsubs f5, f6, f0
/* 80222054 0021EFB4  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80222058 0021EFB8  EC 48 02 32 */	fmuls f2, f8, f8
/* 8022205C 0021EFBC  EC EA 00 28 */	fsubs f7, f10, f0
/* 80222060 0021EFC0  C0 03 03 00 */	lfs f0, 0x300(r3)
/* 80222064 0021EFC4  EC 65 01 72 */	fmuls f3, f5, f5
/* 80222068 0021EFC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022206C 0021EFCC  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80222070 0021EFD0  EC 87 01 F2 */	fmuls f4, f7, f7
/* 80222074 0021EFD4  EC 43 10 2A */	fadds f2, f3, f2
/* 80222078 0021EFD8  D1 21 00 0C */	stfs f9, 0xc(r1)
/* 8022207C 0021EFDC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80222080 0021EFE0  D1 41 00 10 */	stfs f10, 0x10(r1)
/* 80222084 0021EFE4  EC 24 10 2A */	fadds f1, f4, f2
/* 80222088 0021EFE8  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 8022208C 0021EFEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80222090 0021EFF0  D1 01 00 18 */	stfs f8, 0x18(r1)
/* 80222094 0021EFF4  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 80222098 0021EFF8  7C 00 00 26 */	mfcr r0
/* 8022209C 0021EFFC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802220A0 0021F000  38 21 00 20 */	addi r1, r1, 0x20
/* 802220A4 0021F004  4E 80 00 20 */	blr

.global AggressionCheck__9CBabygothFR13CStateManagerf
AggressionCheck__9CBabygothFR13CStateManagerf:
/* 802220A8 0021F008  88 03 04 00 */	lbz r0, 0x400(r3)
/* 802220AC 0021F00C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802220B0 0021F010  41 82 00 24 */	beq lbl_802220D4
/* 802220B4 0021F014  88 03 0A 48 */	lbz r0, 0xa48(r3)
/* 802220B8 0021F018  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 802220BC 0021F01C  40 82 00 18 */	bne lbl_802220D4
/* 802220C0 0021F020  80 03 05 6C */	lwz r0, 0x56c(r3)
/* 802220C4 0021F024  2C 00 00 03 */	cmpwi r0, 3
/* 802220C8 0021F028  40 82 00 0C */	bne lbl_802220D4
/* 802220CC 0021F02C  38 60 00 01 */	li r3, 1
/* 802220D0 0021F030  4E 80 00 20 */	blr
lbl_802220D4:
/* 802220D4 0021F034  38 60 00 00 */	li r3, 0
/* 802220D8 0021F038  4E 80 00 20 */	blr

.global TooClose__9CBabygothFR13CStateManagerf
TooClose__9CBabygothFR13CStateManagerf:
/* 802220DC 0021F03C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802220E0 0021F040  7C 08 02 A6 */	mflr r0
/* 802220E4 0021F044  90 01 00 74 */	stw r0, 0x74(r1)
/* 802220E8 0021F048  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802220EC 0021F04C  7C 7F 1B 78 */	mr r31, r3
/* 802220F0 0021F050  38 61 00 20 */	addi r3, r1, 0x20
/* 802220F4 0021F054  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 802220F8 0021F058  4B EF 88 35 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 802220FC 0021F05C  C0 A1 00 20 */	lfs f5, 0x20(r1)
/* 80222100 0021F060  38 9F 09 30 */	addi r4, r31, 0x930
/* 80222104 0021F064  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 80222108 0021F068  38 61 00 08 */	addi r3, r1, 8
/* 8022210C 0021F06C  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 80222110 0021F070  38 BF 00 34 */	addi r5, r31, 0x34
/* 80222114 0021F074  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80222118 0021F078  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8022211C 0021F07C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80222120 0021F080  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 80222124 0021F084  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80222128 0021F088  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 8022212C 0021F08C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80222130 0021F090  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80222134 0021F094  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80222138 0021F098  81 9F 09 30 */	lwz r12, 0x930(r31)
/* 8022213C 0021F09C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80222140 0021F0A0  7D 89 03 A6 */	mtctr r12
/* 80222144 0021F0A4  4E 80 04 21 */	bctrl
/* 80222148 0021F0A8  C0 A1 00 08 */	lfs f5, 8(r1)
/* 8022214C 0021F0AC  38 61 00 38 */	addi r3, r1, 0x38
/* 80222150 0021F0B0  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 80222154 0021F0B4  38 81 00 50 */	addi r4, r1, 0x50
/* 80222158 0021F0B8  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8022215C 0021F0BC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80222160 0021F0C0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80222164 0021F0C4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80222168 0021F0C8  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 8022216C 0021F0CC  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80222170 0021F0D0  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80222174 0021F0D4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80222178 0021F0D8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8022217C 0021F0DC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80222180 0021F0E0  48 11 5A 05 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 80222184 0021F0E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222188 0021F0E8  41 82 00 1C */	beq lbl_802221A4
/* 8022218C 0021F0EC  88 1F 0A 49 */	lbz r0, 0xa49(r31)
/* 80222190 0021F0F0  38 60 00 01 */	li r3, 1
/* 80222194 0021F0F4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80222198 0021F0F8  38 60 00 01 */	li r3, 1
/* 8022219C 0021F0FC  98 1F 0A 49 */	stb r0, 0xa49(r31)
/* 802221A0 0021F100  48 00 00 08 */	b lbl_802221A8
lbl_802221A4:
/* 802221A4 0021F104  38 60 00 00 */	li r3, 0
lbl_802221A8:
/* 802221A8 0021F108  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802221AC 0021F10C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802221B0 0021F110  7C 08 03 A6 */	mtlr r0
/* 802221B4 0021F114  38 21 00 70 */	addi r1, r1, 0x70
/* 802221B8 0021F118  4E 80 00 20 */	blr

.global GetAimPosition__9CBabygothCFRC13CStateManagerf
GetAimPosition__9CBabygothCFRC13CStateManagerf:
/* 802221BC 0021F11C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 802221C0 0021F120  7C 08 02 A6 */	mflr r0
/* 802221C4 0021F124  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802221C8 0021F128  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 802221CC 0021F12C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 802221D0 0021F130  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 802221D4 0021F134  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 802221D8 0021F138  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 802221DC 0021F13C  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 802221E0 0021F140  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 802221E4 0021F144  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 802221E8 0021F148  BF 21 00 84 */	stmw r25, 0x84(r1)
/* 802221EC 0021F14C  7C 9E 23 78 */	mr r30, r4
/* 802221F0 0021F150  7C 7D 1B 78 */	mr r29, r3
/* 802221F4 0021F154  80 64 04 50 */	lwz r3, 0x450(r4)
/* 802221F8 0021F158  7C BF 2B 78 */	mr r31, r5
/* 802221FC 0021F15C  80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 80222200 0021F160  2C 00 00 00 */	cmpwi r0, 0
/* 80222204 0021F164  41 82 02 34 */	beq lbl_80222438
/* 80222208 0021F168  80 1E 09 F8 */	lwz r0, 0x9f8(r30)
/* 8022220C 0021F16C  2C 00 00 00 */	cmpwi r0, 0
/* 80222210 0021F170  41 82 02 28 */	beq lbl_80222438
/* 80222214 0021F174  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80222218 0021F178  3B 5E 09 FC */	addi r26, r30, 0x9fc
/* 8022221C 0021F17C  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 80222220 0021F180  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 80222224 0021F184  C3 E4 00 00 */	lfs f31, 0(r4)
/* 80222228 0021F188  7F 59 D3 78 */	mr r25, r26
/* 8022222C 0021F18C  C3 C4 00 04 */	lfs f30, 4(r4)
/* 80222230 0021F190  3B 83 66 F4 */	addi r28, r3, sUpVector__9CVector3f@l
/* 80222234 0021F194  C3 A4 00 08 */	lfs f29, 8(r4)
/* 80222238 0021F198  48 00 00 7C */	b lbl_802222B4
lbl_8022223C:
/* 8022223C 0021F19C  A0 19 00 00 */	lhz r0, 0(r25)
/* 80222240 0021F1A0  7F E3 FB 78 */	mr r3, r31
/* 80222244 0021F1A4  38 81 00 0C */	addi r4, r1, 0xc
/* 80222248 0021F1A8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8022224C 0021F1AC  4B E2 A3 59 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80222250 0021F1B0  7C 64 1B 78 */	mr r4, r3
/* 80222254 0021F1B4  38 61 00 18 */	addi r3, r1, 0x18
/* 80222258 0021F1B8  4B E8 D0 F5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8022225C 0021F1BC  83 63 00 04 */	lwz r27, 4(r3)
/* 80222260 0021F1C0  28 1B 00 00 */	cmplwi r27, 0
/* 80222264 0021F1C4  41 82 00 4C */	beq lbl_802222B0
/* 80222268 0021F1C8  7F 63 DB 78 */	mr r3, r27
/* 8022226C 0021F1CC  4B F8 69 11 */	bl GetSphereRadius__15CCollisionActorCFv
/* 80222270 0021F1D0  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 80222274 0021F1D4  C0 5C 00 04 */	lfs f2, 4(r28)
/* 80222278 0021F1D8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8022227C 0021F1DC  C0 83 66 F4 */	lfs f4, sUpVector__9CVector3f@l(r3)
/* 80222280 0021F1E0  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80222284 0021F1E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80222288 0021F1E8  C0 7B 00 50 */	lfs f3, 0x50(r27)
/* 8022228C 0021F1EC  EC 81 01 32 */	fmuls f4, f1, f4
/* 80222290 0021F1F0  C0 3B 00 60 */	lfs f1, 0x60(r27)
/* 80222294 0021F1F4  C0 BB 00 40 */	lfs f5, 0x40(r27)
/* 80222298 0021F1F8  EC 43 10 2A */	fadds f2, f3, f2
/* 8022229C 0021F1FC  EC 65 20 2A */	fadds f3, f5, f4
/* 802222A0 0021F200  EC 01 00 2A */	fadds f0, f1, f0
/* 802222A4 0021F204  EF DE 10 2A */	fadds f30, f30, f2
/* 802222A8 0021F208  EF FF 18 2A */	fadds f31, f31, f3
/* 802222AC 0021F20C  EF BD 00 2A */	fadds f29, f29, f0
lbl_802222B0:
/* 802222B0 0021F210  3B 39 00 02 */	addi r25, r25, 2
lbl_802222B4:
/* 802222B4 0021F214  80 7E 09 F8 */	lwz r3, 0x9f8(r30)
/* 802222B8 0021F218  54 60 08 3C */	slwi r0, r3, 1
/* 802222BC 0021F21C  7C 1A 02 14 */	add r0, r26, r0
/* 802222C0 0021F220  7C 19 00 40 */	cmplw r25, r0
/* 802222C4 0021F224  40 82 FF 78 */	bne lbl_8022223C
/* 802222C8 0021F228  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 802222CC 0021F22C  38 00 00 00 */	li r0, 0
/* 802222D0 0021F230  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 802222D4 0021F234  40 82 00 14 */	bne lbl_802222E8
/* 802222D8 0021F238  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 802222DC 0021F23C  40 82 00 0C */	bne lbl_802222E8
/* 802222E0 0021F240  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 802222E4 0021F244  41 82 00 08 */	beq lbl_802222EC
lbl_802222E8:
/* 802222E8 0021F248  38 00 00 01 */	li r0, 1
lbl_802222EC:
/* 802222EC 0021F24C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802222F0 0021F250  41 82 00 34 */	beq lbl_80222324
/* 802222F4 0021F254  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802222F8 0021F258  3C 00 43 30 */	lis r0, 0x4330
/* 802222FC 0021F25C  90 61 00 74 */	stw r3, 0x74(r1)
/* 80222300 0021F260  C8 22 B4 58 */	lfd f1, lbl_805AD178@sda21(r2)
/* 80222304 0021F264  90 01 00 70 */	stw r0, 0x70(r1)
/* 80222308 0021F268  C0 42 B4 18 */	lfs f2, lbl_805AD138@sda21(r2)
/* 8022230C 0021F26C  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80222310 0021F270  EC 00 08 28 */	fsubs f0, f0, f1
/* 80222314 0021F274  EC 02 00 24 */	fdivs f0, f2, f0
/* 80222318 0021F278  EF FF 00 32 */	fmuls f31, f31, f0
/* 8022231C 0021F27C  EF DE 00 32 */	fmuls f30, f30, f0
/* 80222320 0021F280  EF BD 00 32 */	fmuls f29, f29, f0
lbl_80222324:
/* 80222324 0021F284  A0 1E 09 F6 */	lhz r0, 0x9f6(r30)
/* 80222328 0021F288  FF 80 E8 90 */	fmr f28, f29
/* 8022232C 0021F28C  7F E3 FB 78 */	mr r3, r31
/* 80222330 0021F290  38 81 00 08 */	addi r4, r1, 8
/* 80222334 0021F294  B0 01 00 08 */	sth r0, 8(r1)
/* 80222338 0021F298  4B E2 A2 6D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8022233C 0021F29C  7C 64 1B 78 */	mr r4, r3
/* 80222340 0021F2A0  38 61 00 10 */	addi r3, r1, 0x10
/* 80222344 0021F2A4  4B E8 D0 09 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80222348 0021F2A8  80 63 00 04 */	lwz r3, 4(r3)
/* 8022234C 0021F2AC  28 03 00 00 */	cmplwi r3, 0
/* 80222350 0021F2B0  41 82 00 1C */	beq lbl_8022236C
/* 80222354 0021F2B4  C3 83 00 60 */	lfs f28, 0x60(r3)
/* 80222358 0021F2B8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8022235C 0021F2BC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80222360 0021F2C0  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80222364 0021F2C4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80222368 0021F2C8  D3 81 00 6C */	stfs f28, 0x6c(r1)
lbl_8022236C:
/* 8022236C 0021F2CC  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80222370 0021F2D0  38 61 00 28 */	addi r3, r1, 0x28
/* 80222374 0021F2D4  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80222378 0021F2D8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8022237C 0021F2DC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80222380 0021F2E0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80222384 0021F2E4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80222388 0021F2E8  48 0F 1E 79 */	bl __ct__9CVector2fFff
/* 8022238C 0021F2EC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80222390 0021F2F0  38 61 00 20 */	addi r3, r1, 0x20
/* 80222394 0021F2F4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80222398 0021F2F8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8022239C 0021F2FC  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 802223A0 0021F300  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 802223A4 0021F304  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 802223A8 0021F308  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 802223AC 0021F30C  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 802223B0 0021F310  EC 44 08 28 */	fsubs f2, f4, f1
/* 802223B4 0021F314  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 802223B8 0021F318  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 802223BC 0021F31C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 802223C0 0021F320  EC 20 08 28 */	fsubs f1, f0, f1
/* 802223C4 0021F324  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 802223C8 0021F328  EC 65 18 28 */	fsubs f3, f5, f3
/* 802223CC 0021F32C  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 802223D0 0021F330  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 802223D4 0021F334  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 802223D8 0021F338  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 802223DC 0021F33C  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 802223E0 0021F340  48 0F 1E 21 */	bl __ct__9CVector2fFff
/* 802223E4 0021F344  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 802223E8 0021F348  38 61 00 38 */	addi r3, r1, 0x38
/* 802223EC 0021F34C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802223F0 0021F350  38 81 00 30 */	addi r4, r1, 0x30
/* 802223F4 0021F354  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 802223F8 0021F358  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 802223FC 0021F35C  48 0F 1B C9 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 80222400 0021F360  C0 42 B4 50 */	lfs f2, lbl_805AD170@sda21(r2)
/* 80222404 0021F364  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 80222408 0021F368  EC 81 10 24 */	fdivs f4, f1, f2
/* 8022240C 0021F36C  EC 60 20 28 */	fsubs f3, f0, f4
/* 80222410 0021F370  EC 5F 01 32 */	fmuls f2, f31, f4
/* 80222414 0021F374  EC 3E 01 32 */	fmuls f1, f30, f4
/* 80222418 0021F378  EC 1D 01 32 */	fmuls f0, f29, f4
/* 8022241C 0021F37C  EC 5F 10 FA */	fmadds f2, f31, f3, f2
/* 80222420 0021F380  EC 3E 08 FA */	fmadds f1, f30, f3, f1
/* 80222424 0021F384  EC 1C 00 FA */	fmadds f0, f28, f3, f0
/* 80222428 0021F388  D0 5D 00 00 */	stfs f2, 0(r29)
/* 8022242C 0021F38C  D0 3D 00 04 */	stfs f1, 4(r29)
/* 80222430 0021F390  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80222434 0021F394  48 00 00 18 */	b lbl_8022244C
lbl_80222438:
/* 80222438 0021F398  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 8022243C 0021F39C  7F A3 EB 78 */	mr r3, r29
/* 80222440 0021F3A0  7F C4 F3 78 */	mr r4, r30
/* 80222444 0021F3A4  7F E5 FB 78 */	mr r5, r31
/* 80222448 0021F3A8  4B E5 61 A1 */	bl GetAimPosition__10CPatternedCFRC13CStateManagerf
lbl_8022244C:
/* 8022244C 0021F3AC  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 80222450 0021F3B0  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80222454 0021F3B4  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 80222458 0021F3B8  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8022245C 0021F3BC  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 80222460 0021F3C0  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80222464 0021F3C4  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 80222468 0021F3C8  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 8022246C 0021F3CC  BB 21 00 84 */	lmw r25, 0x84(r1)
/* 80222470 0021F3D0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80222474 0021F3D4  7C 08 03 A6 */	mtlr r0
/* 80222478 0021F3D8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8022247C 0021F3DC  4E 80 00 20 */	blr

.global DoUserAnimEvent__9CBabygothFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__9CBabygothFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80222480 0021F3E0  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80222484 0021F3E4  7C 08 02 A6 */	mflr r0
/* 80222488 0021F3E8  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 8022248C 0021F3EC  DB E1 01 C0 */	stfd f31, 0x1c0(r1)
/* 80222490 0021F3F0  F3 E1 01 C8 */	psq_st f31, 456(r1), 0, qr0
/* 80222494 0021F3F4  DB C1 01 B0 */	stfd f30, 0x1b0(r1)
/* 80222498 0021F3F8  F3 C1 01 B8 */	psq_st f30, 440(r1), 0, qr0
/* 8022249C 0021F3FC  DB A1 01 A0 */	stfd f29, 0x1a0(r1)
/* 802224A0 0021F400  F3 A1 01 A8 */	psq_st f29, 424(r1), 0, qr0
/* 802224A4 0021F404  DB 81 01 90 */	stfd f28, 0x190(r1)
/* 802224A8 0021F408  F3 81 01 98 */	psq_st f28, 408(r1), 0, qr0
/* 802224AC 0021F40C  BF 61 01 7C */	stmw r27, 0x17c(r1)
/* 802224B0 0021F410  7C DE 33 78 */	mr r30, r6
/* 802224B4 0021F414  FF E0 08 90 */	fmr f31, f1
/* 802224B8 0021F418  28 1E 00 17 */	cmplwi r30, 0x17
/* 802224BC 0021F41C  7C 7B 1B 78 */	mr r27, r3
/* 802224C0 0021F420  7C 9C 23 78 */	mr r28, r4
/* 802224C4 0021F424  7C BD 2B 78 */	mr r29, r5
/* 802224C8 0021F428  3B E0 00 00 */	li r31, 0
/* 802224CC 0021F42C  41 81 03 64 */	bgt lbl_80222830
/* 802224D0 0021F430  3C A0 80 3E */	lis r5, lbl_803E761C@ha
/* 802224D4 0021F434  57 C0 10 3A */	slwi r0, r30, 2
/* 802224D8 0021F438  38 A5 76 1C */	addi r5, r5, lbl_803E761C@l
/* 802224DC 0021F43C  7C 05 00 2E */	lwzx r0, r5, r0
/* 802224E0 0021F440  7C 09 03 A6 */	mtctr r0
/* 802224E4 0021F444  4E 80 04 20 */	bctr
.global lbl_802224E8
lbl_802224E8:
/* 802224E8 0021F448  7F 64 DB 78 */	mr r4, r27
/* 802224EC 0021F44C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 802224F0 0021F450  38 BD 00 3C */	addi r5, r29, 0x3c
/* 802224F4 0021F454  4B E5 64 85 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802224F8 0021F458  38 61 01 48 */	addi r3, r1, 0x148
/* 802224FC 0021F45C  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80222500 0021F460  48 0F 06 75 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80222504 0021F464  80 9C 08 4C */	lwz r4, 0x84c(r28)
/* 80222508 0021F468  7F 85 E3 78 */	mr r5, r28
/* 8022250C 0021F46C  38 61 00 7C */	addi r3, r1, 0x7c
/* 80222510 0021F470  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80222514 0021F474  81 84 00 00 */	lwz r12, 0(r4)
/* 80222518 0021F478  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8022251C 0021F47C  7D 89 03 A6 */	mtctr r12
/* 80222520 0021F480  4E 80 04 21 */	bctrl
/* 80222524 0021F484  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80222528 0021F488  7F 63 DB 78 */	mr r3, r27
/* 8022252C 0021F48C  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80222530 0021F490  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80222534 0021F494  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80222538 0021F498  C0 41 01 54 */	lfs f2, 0x154(r1)
/* 8022253C 0021F49C  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 80222540 0021F4A0  C0 21 01 64 */	lfs f1, 0x164(r1)
/* 80222544 0021F4A4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80222548 0021F4A8  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 8022254C 0021F4AC  83 FC 08 4C */	lwz r31, 0x84c(r28)
/* 80222550 0021F4B0  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80222554 0021F4B4  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80222558 0021F4B8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8022255C 0021F4BC  81 9B 00 00 */	lwz r12, 0(r27)
/* 80222560 0021F4C0  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80222564 0021F4C4  7D 89 03 A6 */	mtctr r12
/* 80222568 0021F4C8  4E 80 04 21 */	bctrl
/* 8022256C 0021F4CC  FC 20 F8 90 */	fmr f1, f31
/* 80222570 0021F4D0  7C 64 1B 78 */	mr r4, r3
/* 80222574 0021F4D4  7F E7 FB 78 */	mr r7, r31
/* 80222578 0021F4D8  38 61 00 70 */	addi r3, r1, 0x70
/* 8022257C 0021F4DC  38 A1 00 64 */	addi r5, r1, 0x64
/* 80222580 0021F4E0  38 C1 00 AC */	addi r6, r1, 0xac
/* 80222584 0021F4E4  39 00 00 00 */	li r8, 0
/* 80222588 0021F4E8  4B FF 99 65 */	bl PredictInterceptPos__15CProjectileInfoFRC9CVector3fRC9CVector3fRC7CPlayerbf
/* 8022258C 0021F4EC  C0 A1 00 70 */	lfs f5, 0x70(r1)
/* 80222590 0021F4F0  38 61 00 94 */	addi r3, r1, 0x94
/* 80222594 0021F4F4  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 80222598 0021F4F8  38 81 00 88 */	addi r4, r1, 0x88
/* 8022259C 0021F4FC  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 802225A0 0021F500  C0 41 01 64 */	lfs f2, 0x164(r1)
/* 802225A4 0021F504  C0 21 01 74 */	lfs f1, 0x174(r1)
/* 802225A8 0021F508  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 802225AC 0021F50C  EC C4 10 28 */	fsubs f6, f4, f2
/* 802225B0 0021F510  D0 A1 00 A0 */	stfs f5, 0xa0(r1)
/* 802225B4 0021F514  EC 43 08 28 */	fsubs f2, f3, f1
/* 802225B8 0021F518  EC 05 00 28 */	fsubs f0, f5, f0
/* 802225BC 0021F51C  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 802225C0 0021F520  D0 61 00 A8 */	stfs f3, 0xa8(r1)
/* 802225C4 0021F524  C0 9B 00 58 */	lfs f4, 0x58(r27)
/* 802225C8 0021F528  C0 7B 00 48 */	lfs f3, 0x48(r27)
/* 802225CC 0021F52C  C0 3B 00 38 */	lfs f1, 0x38(r27)
/* 802225D0 0021F530  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 802225D4 0021F534  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 802225D8 0021F538  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 802225DC 0021F53C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 802225E0 0021F540  D0 C1 00 8C */	stfs f6, 0x8c(r1)
/* 802225E4 0021F544  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 802225E8 0021F548  48 0F 20 49 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 802225EC 0021F54C  C0 02 B4 4C */	lfs f0, lbl_805AD16C@sda21(r2)
/* 802225F0 0021F550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802225F4 0021F554  40 81 00 C8 */	ble lbl_802226BC
/* 802225F8 0021F558  38 61 00 88 */	addi r3, r1, 0x88
/* 802225FC 0021F55C  48 0F 20 FD */	bl CanBeNormalized__9CVector3fCFv
/* 80222600 0021F560  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222604 0021F564  41 82 00 74 */	beq lbl_80222678
/* 80222608 0021F568  C0 02 B4 4C */	lfs f0, lbl_805AD16C@sda21(r2)
/* 8022260C 0021F56C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80222610 0021F570  38 81 00 88 */	addi r4, r1, 0x88
/* 80222614 0021F574  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80222618 0021F578  48 0F 22 39 */	bl AsNormalized__9CVector3fCFv
/* 8022261C 0021F57C  38 61 00 58 */	addi r3, r1, 0x58
/* 80222620 0021F580  38 81 00 94 */	addi r4, r1, 0x94
/* 80222624 0021F584  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80222628 0021F588  38 C1 00 20 */	addi r6, r1, 0x20
/* 8022262C 0021F58C  48 0F 23 29 */	bl Slerp__9CVector3fFRC9CVector3fRC9CVector3fRC9CRelAngle
/* 80222630 0021F590  C3 C1 00 58 */	lfs f30, 0x58(r1)
/* 80222634 0021F594  38 61 00 88 */	addi r3, r1, 0x88
/* 80222638 0021F598  C3 A1 00 5C */	lfs f29, 0x5c(r1)
/* 8022263C 0021F59C  C3 81 00 60 */	lfs f28, 0x60(r1)
/* 80222640 0021F5A0  48 0F 22 79 */	bl Magnitude__9CVector3fCFv
/* 80222644 0021F5A4  EC 81 07 72 */	fmuls f4, f1, f29
/* 80222648 0021F5A8  C0 A1 01 64 */	lfs f5, 0x164(r1)
/* 8022264C 0021F5AC  EC 41 07 32 */	fmuls f2, f1, f28
/* 80222650 0021F5B0  C0 61 01 74 */	lfs f3, 0x174(r1)
/* 80222654 0021F5B4  EC 01 07 B2 */	fmuls f0, f1, f30
/* 80222658 0021F5B8  C0 21 01 54 */	lfs f1, 0x154(r1)
/* 8022265C 0021F5BC  EC 85 20 2A */	fadds f4, f5, f4
/* 80222660 0021F5C0  EC 43 10 2A */	fadds f2, f3, f2
/* 80222664 0021F5C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80222668 0021F5C8  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 8022266C 0021F5CC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80222670 0021F5D0  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80222674 0021F5D4  48 00 00 48 */	b lbl_802226BC
lbl_80222678:
/* 80222678 0021F5D8  38 61 00 88 */	addi r3, r1, 0x88
/* 8022267C 0021F5DC  48 0F 22 3D */	bl Magnitude__9CVector3fCFv
/* 80222680 0021F5E0  C0 61 01 5C */	lfs f3, 0x15c(r1)
/* 80222684 0021F5E4  C0 41 01 6C */	lfs f2, 0x16c(r1)
/* 80222688 0021F5E8  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 8022268C 0021F5EC  EC 81 00 F2 */	fmuls f4, f1, f3
/* 80222690 0021F5F0  C0 A1 01 64 */	lfs f5, 0x164(r1)
/* 80222694 0021F5F4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80222698 0021F5F8  C0 61 01 74 */	lfs f3, 0x174(r1)
/* 8022269C 0021F5FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 802226A0 0021F600  C0 21 01 54 */	lfs f1, 0x154(r1)
/* 802226A4 0021F604  EC 85 20 2A */	fadds f4, f5, f4
/* 802226A8 0021F608  EC 43 10 2A */	fadds f2, f3, f2
/* 802226AC 0021F60C  EC 01 00 2A */	fadds f0, f1, f0
/* 802226B0 0021F610  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 802226B4 0021F614  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 802226B8 0021F618  D0 41 00 A8 */	stfs f2, 0xa8(r1)
lbl_802226BC:
/* 802226BC 0021F61C  C0 41 01 54 */	lfs f2, 0x154(r1)
/* 802226C0 0021F620  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 802226C4 0021F624  C0 21 01 64 */	lfs f1, 0x164(r1)
/* 802226C8 0021F628  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 802226CC 0021F62C  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 802226D0 0021F630  38 61 00 B8 */	addi r3, r1, 0xb8
/* 802226D4 0021F634  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 802226D8 0021F638  38 81 00 40 */	addi r4, r1, 0x40
/* 802226DC 0021F63C  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 802226E0 0021F640  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 802226E4 0021F644  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 802226E8 0021F648  48 0F 14 29 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 802226EC 0021F64C  38 61 01 18 */	addi r3, r1, 0x118
/* 802226F0 0021F650  38 81 00 B8 */	addi r4, r1, 0xb8
/* 802226F4 0021F654  48 0F 04 81 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802226F8 0021F658  C0 02 B4 18 */	lfs f0, lbl_805AD138@sda21(r2)
/* 802226FC 0021F65C  39 60 00 00 */	li r11, 0
/* 80222700 0021F660  99 61 00 3C */	stb r11, 0x3c(r1)
/* 80222704 0021F664  38 01 00 24 */	addi r0, r1, 0x24
/* 80222708 0021F668  A1 42 C5 FC */	lhz r10, lbl_805AE31C@sda21(r2)
/* 8022270C 0021F66C  7F 63 DB 78 */	mr r3, r27
/* 80222710 0021F670  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80222714 0021F674  7F 85 E3 78 */	mr r5, r28
/* 80222718 0021F678  38 81 01 18 */	addi r4, r1, 0x118
/* 8022271C 0021F67C  39 21 00 30 */	addi r9, r1, 0x30
/* 80222720 0021F680  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80222724 0021F684  38 C0 00 04 */	li r6, 4
/* 80222728 0021F688  38 E0 00 00 */	li r7, 0
/* 8022272C 0021F68C  39 00 00 00 */	li r8, 0
/* 80222730 0021F690  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80222734 0021F694  91 61 00 08 */	stw r11, 8(r1)
/* 80222738 0021F698  90 01 00 0C */	stw r0, 0xc(r1)
/* 8022273C 0021F69C  4B E5 52 BD */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 80222740 0021F6A0  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 80222744 0021F6A4  28 00 00 00 */	cmplwi r0, 0
/* 80222748 0021F6A8  41 82 00 1C */	beq lbl_80222764
/* 8022274C 0021F6AC  34 61 00 30 */	addic. r3, r1, 0x30
/* 80222750 0021F6B0  41 82 00 14 */	beq lbl_80222764
/* 80222754 0021F6B4  28 03 00 00 */	cmplwi r3, 0
/* 80222758 0021F6B8  41 82 00 0C */	beq lbl_80222764
/* 8022275C 0021F6BC  38 80 00 00 */	li r4, 0
/* 80222760 0021F6C0  48 11 E6 E1 */	bl __dt__6CTokenFv
lbl_80222764:
/* 80222764 0021F6C4  38 00 00 00 */	li r0, 0
/* 80222768 0021F6C8  3B E0 00 01 */	li r31, 1
/* 8022276C 0021F6CC  98 01 00 3C */	stb r0, 0x3c(r1)
/* 80222770 0021F6D0  48 00 00 C0 */	b lbl_80222830
.global lbl_80222774
lbl_80222774:
/* 80222774 0021F6D4  3B E0 00 01 */	li r31, 1
/* 80222778 0021F6D8  48 00 00 B8 */	b lbl_80222830
.global lbl_8022277C
lbl_8022277C:
/* 8022277C 0021F6DC  4B FF AE 29 */	bl sub_8021d5a4
/* 80222780 0021F6E0  3B E0 00 01 */	li r31, 1
/* 80222784 0021F6E4  48 00 00 AC */	b lbl_80222830
.global lbl_80222788
lbl_80222788:
/* 80222788 0021F6E8  88 1B 0A 48 */	lbz r0, 0xa48(r27)
/* 8022278C 0021F6EC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80222790 0021F6F0  41 82 00 A0 */	beq lbl_80222830
/* 80222794 0021F6F4  A0 1B 09 80 */	lhz r0, 0x980(r27)
/* 80222798 0021F6F8  7F 83 E3 78 */	mr r3, r28
/* 8022279C 0021F6FC  38 81 00 1C */	addi r4, r1, 0x1c
/* 802227A0 0021F700  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 802227A4 0021F704  4B E2 9D D1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802227A8 0021F708  28 03 00 00 */	cmplwi r3, 0
/* 802227AC 0021F70C  41 82 00 84 */	beq lbl_80222830
/* 802227B0 0021F710  7F 85 E3 78 */	mr r5, r28
/* 802227B4 0021F714  38 9B 00 34 */	addi r4, r27, 0x34
/* 802227B8 0021F718  38 C0 00 00 */	li r6, 0
/* 802227BC 0021F71C  4B F7 5B 31 */	bl Fire__13CFlameThrowerFRC12CTransform4fR13CStateManagerb
/* 802227C0 0021F720  48 00 00 70 */	b lbl_80222830
.global lbl_802227C4
lbl_802227C4:
/* 802227C4 0021F724  88 1B 0A 48 */	lbz r0, 0xa48(r27)
/* 802227C8 0021F728  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 802227CC 0021F72C  41 82 00 64 */	beq lbl_80222830
/* 802227D0 0021F730  A0 1B 09 80 */	lhz r0, 0x980(r27)
/* 802227D4 0021F734  7F 83 E3 78 */	mr r3, r28
/* 802227D8 0021F738  38 81 00 18 */	addi r4, r1, 0x18
/* 802227DC 0021F73C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802227E0 0021F740  4B E2 9D 95 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802227E4 0021F744  28 03 00 00 */	cmplwi r3, 0
/* 802227E8 0021F748  41 82 00 48 */	beq lbl_80222830
/* 802227EC 0021F74C  7F 84 E3 78 */	mr r4, r28
/* 802227F0 0021F750  38 A0 00 00 */	li r5, 0
/* 802227F4 0021F754  4B F7 59 CD */	bl Reset__13CFlameThrowerFR13CStateManagerb
/* 802227F8 0021F758  48 00 00 38 */	b lbl_80222830
.global lbl_802227FC
lbl_802227FC:
/* 802227FC 0021F75C  88 1B 0A 48 */	lbz r0, 0xa48(r27)
/* 80222800 0021F760  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80222804 0021F764  41 82 00 2C */	beq lbl_80222830
/* 80222808 0021F768  80 BC 08 4C */	lwz r5, 0x84c(r28)
/* 8022280C 0021F76C  38 7B 08 F0 */	addi r3, r27, 0x8f0
/* 80222810 0021F770  38 81 00 14 */	addi r4, r1, 0x14
/* 80222814 0021F774  A0 05 00 08 */	lhz r0, 8(r5)
/* 80222818 0021F778  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8022281C 0021F77C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80222820 0021F780  4B F5 29 F9 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 80222824 0021F784  38 7B 08 F0 */	addi r3, r27, 0x8f0
/* 80222828 0021F788  38 80 00 01 */	li r4, 1
/* 8022282C 0021F78C  4B F5 29 F9 */	bl SetActive__13CBoneTrackingFb
.global lbl_80222830
lbl_80222830:
/* 80222830 0021F790  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80222834 0021F794  40 82 00 1C */	bne lbl_80222850
/* 80222838 0021F798  FC 20 F8 90 */	fmr f1, f31
/* 8022283C 0021F79C  7F 63 DB 78 */	mr r3, r27
/* 80222840 0021F7A0  7F 84 E3 78 */	mr r4, r28
/* 80222844 0021F7A4  7F A5 EB 78 */	mr r5, r29
/* 80222848 0021F7A8  7F C6 F3 78 */	mr r6, r30
/* 8022284C 0021F7AC  4B E5 66 65 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80222850:
/* 80222850 0021F7B0  E3 E1 01 C8 */	psq_l f31, 456(r1), 0, qr0
/* 80222854 0021F7B4  CB E1 01 C0 */	lfd f31, 0x1c0(r1)
/* 80222858 0021F7B8  E3 C1 01 B8 */	psq_l f30, 440(r1), 0, qr0
/* 8022285C 0021F7BC  CB C1 01 B0 */	lfd f30, 0x1b0(r1)
/* 80222860 0021F7C0  E3 A1 01 A8 */	psq_l f29, 424(r1), 0, qr0
/* 80222864 0021F7C4  CB A1 01 A0 */	lfd f29, 0x1a0(r1)
/* 80222868 0021F7C8  E3 81 01 98 */	psq_l f28, 408(r1), 0, qr0
/* 8022286C 0021F7CC  CB 81 01 90 */	lfd f28, 0x190(r1)
/* 80222870 0021F7D0  BB 61 01 7C */	lmw r27, 0x17c(r1)
/* 80222874 0021F7D4  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 80222878 0021F7D8  7C 08 03 A6 */	mtlr r0
/* 8022287C 0021F7DC  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 80222880 0021F7E0  4E 80 00 20 */	blr

.global GetOrigin__9CBabygothCFv
GetOrigin__9CBabygothCFv:
/* 80222884 0021F7E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80222888 0021F7E8  7C 08 02 A6 */	mflr r0
/* 8022288C 0021F7EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80222890 0021F7F0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80222894 0021F7F4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80222898 0021F7F8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8022289C 0021F7FC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 802228A0 0021F800  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 802228A4 0021F804  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 802228A8 0021F808  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802228AC 0021F80C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802228B0 0021F810  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802228B4 0021F814  C3 E4 00 60 */	lfs f31, 0x60(r4)
/* 802228B8 0021F818  7C 7D 1B 78 */	mr r29, r3
/* 802228BC 0021F81C  C0 07 00 08 */	lfs f0, 8(r7)
/* 802228C0 0021F820  7C 9E 23 78 */	mr r30, r4
/* 802228C4 0021F824  C3 C4 00 50 */	lfs f30, 0x50(r4)
/* 802228C8 0021F828  7C FF 3B 78 */	mr r31, r7
/* 802228CC 0021F82C  EC 5F 00 28 */	fsubs f2, f31, f0
/* 802228D0 0021F830  C3 A4 00 40 */	lfs f29, 0x40(r4)
/* 802228D4 0021F834  C0 27 00 04 */	lfs f1, 4(r7)
/* 802228D8 0021F838  38 61 00 14 */	addi r3, r1, 0x14
/* 802228DC 0021F83C  C0 07 00 00 */	lfs f0, 0(r7)
/* 802228E0 0021F840  EC 7E 08 28 */	fsubs f3, f30, f1
/* 802228E4 0021F844  EC 3D 00 28 */	fsubs f1, f29, f0
/* 802228E8 0021F848  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802228EC 0021F84C  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 802228F0 0021F850  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 802228F4 0021F854  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802228F8 0021F858  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802228FC 0021F85C  48 0F 1D FD */	bl CanBeNormalized__9CVector3fCFv
/* 80222900 0021F860  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222904 0021F864  41 82 00 44 */	beq lbl_80222948
/* 80222908 0021F868  C3 FE 02 FC */	lfs f31, 0x2fc(r30)
/* 8022290C 0021F86C  38 61 00 08 */	addi r3, r1, 8
/* 80222910 0021F870  38 81 00 14 */	addi r4, r1, 0x14
/* 80222914 0021F874  48 0F 1F 3D */	bl AsNormalized__9CVector3fCFv
/* 80222918 0021F878  C0 41 00 08 */	lfs f2, 8(r1)
/* 8022291C 0021F87C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80222920 0021F880  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80222924 0021F884  EC 9F 00 B2 */	fmuls f4, f31, f2
/* 80222928 0021F888  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8022292C 0021F88C  EC 5F 00 72 */	fmuls f2, f31, f1
/* 80222930 0021F890  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80222934 0021F894  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80222938 0021F898  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8022293C 0021F89C  EF A5 20 2A */	fadds f29, f5, f4
/* 80222940 0021F8A0  EF C3 10 2A */	fadds f30, f3, f2
/* 80222944 0021F8A4  EF E1 00 2A */	fadds f31, f1, f0
lbl_80222948:
/* 80222948 0021F8A8  D3 BD 00 00 */	stfs f29, 0(r29)
/* 8022294C 0021F8AC  D3 DD 00 04 */	stfs f30, 4(r29)
/* 80222950 0021F8B0  D3 FD 00 08 */	stfs f31, 8(r29)
/* 80222954 0021F8B4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80222958 0021F8B8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8022295C 0021F8BC  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 80222960 0021F8C0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80222964 0021F8C4  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 80222968 0021F8C8  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8022296C 0021F8CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80222970 0021F8D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80222974 0021F8D4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80222978 0021F8D8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8022297C 0021F8DC  7C 08 03 A6 */	mtlr r0
/* 80222980 0021F8E0  38 21 00 60 */	addi r1, r1, 0x60
/* 80222984 0021F8E4  4E 80 00 20 */	blr

.global Listen__9CBabygothFRC9CVector3f16EListenNoiseType
Listen__9CBabygothFRC9CVector3f16EListenNoiseType:
/* 80222988 0021F8E8  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8022298C 0021F8EC  38 C0 00 00 */	li r6, 0
/* 80222990 0021F8F0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80222994 0021F8F4  41 82 00 58 */	beq lbl_802229EC
/* 80222998 0021F8F8  2C 05 00 00 */	cmpwi r5, 0
/* 8022299C 0021F8FC  40 82 00 50 */	bne lbl_802229EC
/* 802229A0 0021F900  C0 24 00 04 */	lfs f1, 4(r4)
/* 802229A4 0021F904  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 802229A8 0021F908  C0 64 00 00 */	lfs f3, 0(r4)
/* 802229AC 0021F90C  EC 21 00 28 */	fsubs f1, f1, f0
/* 802229B0 0021F910  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802229B4 0021F914  C0 44 00 08 */	lfs f2, 8(r4)
/* 802229B8 0021F918  EC 63 00 28 */	fsubs f3, f3, f0
/* 802229BC 0021F91C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 802229C0 0021F920  EC 21 00 72 */	fmuls f1, f1, f1
/* 802229C4 0021F924  EC 42 00 28 */	fsubs f2, f2, f0
/* 802229C8 0021F928  C0 02 B4 60 */	lfs f0, lbl_805AD180@sda21(r2)
/* 802229CC 0021F92C  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 802229D0 0021F930  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 802229D4 0021F934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802229D8 0021F938  40 80 00 14 */	bge lbl_802229EC
/* 802229DC 0021F93C  88 03 0A 48 */	lbz r0, 0xa48(r3)
/* 802229E0 0021F940  38 C0 00 01 */	li r6, 1
/* 802229E4 0021F944  50 C0 0F BC */	rlwimi r0, r6, 1, 0x1e, 0x1e
/* 802229E8 0021F948  98 03 0A 48 */	stb r0, 0xa48(r3)
lbl_802229EC:
/* 802229EC 0021F94C  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 802229F0 0021F950  4E 80 00 20 */	blr

.global GetDamageVulnerability__9CBabygothCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__9CBabygothCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 802229F4 0021F954  3C 60 80 57 */	lis r3, lbl_8056D7E8@ha
/* 802229F8 0021F958  38 63 D7 E8 */	addi r3, r3, lbl_8056D7E8@l
/* 802229FC 0021F95C  4E 80 00 20 */	blr

.global GetDamageVulnerability__9CBabygothCFv
GetDamageVulnerability__9CBabygothCFv:
/* 80222A00 0021F960  3C 60 80 57 */	lis r3, lbl_8056D7E8@ha
/* 80222A04 0021F964  38 63 D7 E8 */	addi r3, r3, lbl_8056D7E8@l
/* 80222A08 0021F968  4E 80 00 20 */	blr

.global TakeDamage__9CBabygothFRC9CVector3ff
TakeDamage__9CBabygothFRC9CVector3ff:
/* 80222A0C 0021F96C  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80222A10 0021F970  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80222A14 0021F974  4D 82 00 20 */	beqlr
/* 80222A18 0021F978  C0 02 88 F0 */	lfs f0, lbl_805AA610@sda21(r2)
/* 80222A1C 0021F97C  D0 03 04 28 */	stfs f0, 0x428(r3)
/* 80222A20 0021F980  4E 80 00 20 */	blr

.global Shock__9CBabygothFff
Shock__9CBabygothFff:
/* 80222A24 0021F984  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80222A28 0021F988  7C 08 02 A6 */	mflr r0
/* 80222A2C 0021F98C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80222A30 0021F990  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80222A34 0021F994  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80222A38 0021F998  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80222A3C 0021F99C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80222A40 0021F9A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80222A44 0021F9A4  80 03 09 F8 */	lwz r0, 0x9f8(r3)
/* 80222A48 0021F9A8  FF C0 08 90 */	fmr f30, f1
/* 80222A4C 0021F9AC  FF E0 10 90 */	fmr f31, f2
/* 80222A50 0021F9B0  7C 7F 1B 78 */	mr r31, r3
/* 80222A54 0021F9B4  2C 00 00 00 */	cmpwi r0, 0
/* 80222A58 0021F9B8  41 82 00 C4 */	beq lbl_80222B1C
/* 80222A5C 0021F9BC  A0 1F 09 FC */	lhz r0, 0x9fc(r31)
/* 80222A60 0021F9C0  7C 83 23 78 */	mr r3, r4
/* 80222A64 0021F9C4  38 81 00 08 */	addi r4, r1, 8
/* 80222A68 0021F9C8  B0 01 00 08 */	sth r0, 8(r1)
/* 80222A6C 0021F9CC  4B E2 9B 09 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80222A70 0021F9D0  7C 64 1B 78 */	mr r4, r3
/* 80222A74 0021F9D4  38 61 00 0C */	addi r3, r1, 0xc
/* 80222A78 0021F9D8  4B E8 C8 D5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80222A7C 0021F9DC  80 63 00 04 */	lwz r3, 4(r3)
/* 80222A80 0021F9E0  28 03 00 00 */	cmplwi r3, 0
/* 80222A84 0021F9E4  41 82 00 98 */	beq lbl_80222B1C
/* 80222A88 0021F9E8  88 01 00 18 */	lbz r0, 0x18(r1)
/* 80222A8C 0021F9EC  38 80 00 00 */	li r4, 0
/* 80222A90 0021F9F0  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80222A94 0021F9F4  38 A0 00 02 */	li r5, 2
/* 80222A98 0021F9F8  98 01 00 18 */	stb r0, 0x18(r1)
/* 80222A9C 0021F9FC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80222AA0 0021FA00  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80222AA4 0021FA04  98 01 00 18 */	stb r0, 0x18(r1)
/* 80222AA8 0021FA08  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80222AAC 0021FA0C  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80222AB0 0021FA10  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80222AB4 0021FA14  98 01 00 18 */	stb r0, 0x18(r1)
/* 80222AB8 0021FA18  81 83 00 00 */	lwz r12, 0(r3)
/* 80222ABC 0021FA1C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80222AC0 0021FA20  7D 89 03 A6 */	mtctr r12
/* 80222AC4 0021FA24  4E 80 04 21 */	bctrl
/* 80222AC8 0021FA28  38 81 00 14 */	addi r4, r1, 0x14
/* 80222ACC 0021FA2C  38 A0 00 00 */	li r5, 0
/* 80222AD0 0021FA30  4B ED F9 ED */	bl GetVulnerability__20CDamageVulnerabilityCFRC11CWeaponModei
/* 80222AD4 0021FA34  2C 03 00 01 */	cmpwi r3, 1
/* 80222AD8 0021FA38  41 82 00 34 */	beq lbl_80222B0C
/* 80222ADC 0021FA3C  40 80 00 40 */	bge lbl_80222B1C
/* 80222AE0 0021FA40  2C 03 00 00 */	cmpwi r3, 0
/* 80222AE4 0021FA44  40 80 00 08 */	bge lbl_80222AEC
/* 80222AE8 0021FA48  48 00 00 34 */	b lbl_80222B1C
lbl_80222AEC:
/* 80222AEC 0021FA4C  C0 02 B4 34 */	lfs f0, lbl_805AD154@sda21(r2)
/* 80222AF0 0021FA50  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80222AF4 0021FA54  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80222AF8 0021FA58  4B F1 74 75 */	bl SetElectrocuting__15CBodyControllerFf
/* 80222AFC 0021FA5C  C0 02 B4 34 */	lfs f0, lbl_805AD154@sda21(r2)
/* 80222B00 0021FA60  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80222B04 0021FA64  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 80222B08 0021FA68  48 00 00 14 */	b lbl_80222B1C
lbl_80222B0C:
/* 80222B0C 0021FA6C  FC 20 F0 90 */	fmr f1, f30
/* 80222B10 0021FA70  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80222B14 0021FA74  4B F1 74 59 */	bl SetElectrocuting__15CBodyControllerFf
/* 80222B18 0021FA78  D3 FF 03 F0 */	stfs f31, 0x3f0(r31)
lbl_80222B1C:
/* 80222B1C 0021FA7C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80222B20 0021FA80  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80222B24 0021FA84  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80222B28 0021FA88  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80222B2C 0021FA8C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80222B30 0021FA90  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80222B34 0021FA94  7C 08 03 A6 */	mtlr r0
/* 80222B38 0021FA98  38 21 00 50 */	addi r1, r1, 0x50
/* 80222B3C 0021FA9C  4E 80 00 20 */	blr

.global KnockBack__9CBabygothFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__9CBabygothFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 80222B40 0021FAA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80222B44 0021FAA4  7C 08 02 A6 */	mflr r0
/* 80222B48 0021FAA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80222B4C 0021FAAC  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 80222B50 0021FAB0  FF E0 08 90 */	fmr f31, f1
/* 80222B54 0021FAB4  BF 41 00 20 */	stmw r26, 0x20(r1)
/* 80222B58 0021FAB8  7C 9B 23 78 */	mr r27, r4
/* 80222B5C 0021FABC  7C 7A 1B 78 */	mr r26, r3
/* 80222B60 0021FAC0  7C BC 2B 78 */	mr r28, r5
/* 80222B64 0021FAC4  7C DD 33 78 */	mr r29, r6
/* 80222B68 0021FAC8  7C FE 3B 78 */	mr r30, r7
/* 80222B6C 0021FACC  7D 1F 43 78 */	mr r31, r8
/* 80222B70 0021FAD0  38 80 00 03 */	li r4, 3
/* 80222B74 0021FAD4  80 03 05 6C */	lwz r0, 0x56c(r3)
/* 80222B78 0021FAD8  38 7A 04 60 */	addi r3, r26, 0x460
/* 80222B7C 0021FADC  20 00 00 03 */	subfic r0, r0, 3
/* 80222B80 0021FAE0  7C 00 00 34 */	cntlzw r0, r0
/* 80222B84 0021FAE4  54 05 D9 7E */	srwi r5, r0, 5
/* 80222B88 0021FAE8  48 01 12 3D */	bl SetAvailableState__20CKnockBackControllerFib
/* 80222B8C 0021FAEC  FC 20 F8 90 */	fmr f1, f31
/* 80222B90 0021FAF0  7F 43 D3 78 */	mr r3, r26
/* 80222B94 0021FAF4  7F 64 DB 78 */	mr r4, r27
/* 80222B98 0021FAF8  7F 85 E3 78 */	mr r5, r28
/* 80222B9C 0021FAFC  7F A6 EB 78 */	mr r6, r29
/* 80222BA0 0021FB00  7F C7 F3 78 */	mr r7, r30
/* 80222BA4 0021FB04  7F E8 FB 78 */	mr r8, r31
/* 80222BA8 0021FB08  4B E5 7B D5 */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 80222BAC 0021FB0C  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 80222BB0 0021FB10  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80222BB4 0021FB14  41 82 00 50 */	beq lbl_80222C04
/* 80222BB8 0021FB18  80 1A 04 64 */	lwz r0, 0x464(r26)
/* 80222BBC 0021FB1C  2C 00 00 03 */	cmpwi r0, 3
/* 80222BC0 0021FB20  41 82 00 08 */	beq lbl_80222BC8
/* 80222BC4 0021FB24  48 00 00 40 */	b lbl_80222C04
lbl_80222BC8:
/* 80222BC8 0021FB28  3C 80 80 3D */	lis r4, lbl_803D31D0@ha
/* 80222BCC 0021FB2C  38 61 00 08 */	addi r3, r1, 8
/* 80222BD0 0021FB30  38 84 31 D0 */	addi r4, r4, lbl_803D31D0@l
/* 80222BD4 0021FB34  38 84 00 4C */	addi r4, r4, 0x4c
/* 80222BD8 0021FB38  4B DE 20 E1 */	bl string_l__4rstlFPCc
/* 80222BDC 0021FB3C  7F 43 D3 78 */	mr r3, r26
/* 80222BE0 0021FB40  4B E7 FD 19 */	bl GetStateMachine__3CAiFv
/* 80222BE4 0021FB44  7C 66 1B 78 */	mr r6, r3
/* 80222BE8 0021FB48  7F 84 E3 78 */	mr r4, r28
/* 80222BEC 0021FB4C  7F 45 D3 78 */	mr r5, r26
/* 80222BF0 0021FB50  38 7A 03 30 */	addi r3, r26, 0x330
/* 80222BF4 0021FB54  38 E1 00 08 */	addi r7, r1, 8
/* 80222BF8 0021FB58  4B E5 D0 0D */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80222BFC 0021FB5C  38 61 00 08 */	addi r3, r1, 8
/* 80222C00 0021FB60  48 11 AE E1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80222C04:
/* 80222C04 0021FB64  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 80222C08 0021FB68  BB 41 00 20 */	lmw r26, 0x20(r1)
/* 80222C0C 0021FB6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80222C10 0021FB70  7C 08 03 A6 */	mtlr r0
/* 80222C14 0021FB74  38 21 00 40 */	addi r1, r1, 0x40
/* 80222C18 0021FB78  4E 80 00 20 */	blr

.global ProjectileInfo__9CBabygothFv
ProjectileInfo__9CBabygothFv:
/* 80222C1C 0021FB7C  38 63 09 58 */	addi r3, r3, 0x958
/* 80222C20 0021FB80  4E 80 00 20 */	blr

.global PreRender__9CBabygothFR13CStateManagerRC14CFrustumPlanes
PreRender__9CBabygothFR13CStateManagerRC14CFrustumPlanes:
/* 80222C24 0021FB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80222C28 0021FB88  7C 08 02 A6 */	mflr r0
/* 80222C2C 0021FB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80222C30 0021FB90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80222C34 0021FB94  7C 7F 1B 78 */	mr r31, r3
/* 80222C38 0021FB98  4B E5 56 A5 */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 80222C3C 0021FB9C  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80222C40 0021FBA0  98 7F 00 B5 */	stb r3, 0xb5(r31)
/* 80222C44 0021FBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222C48 0021FBA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80222C4C 0021FBAC  7C 08 03 A6 */	mtlr r0
/* 80222C50 0021FBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80222C54 0021FBB4  4E 80 00 20 */	blr

.global Render__9CBabygothCFRC13CStateManager
Render__9CBabygothCFRC13CStateManager:
/* 80222C58 0021FBB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80222C5C 0021FBBC  7C 08 02 A6 */	mflr r0
/* 80222C60 0021FBC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80222C64 0021FBC4  4B E5 53 C9 */	bl Render__10CPatternedCFRC13CStateManager
/* 80222C68 0021FBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222C6C 0021FBCC  7C 08 03 A6 */	mtlr r0
/* 80222C70 0021FBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80222C74 0021FBD4  4E 80 00 20 */	blr

.global AcceptScriptMsg__9CBabygothF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__9CBabygothF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80222C78 0021FBD8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80222C7C 0021FBDC  7C 08 02 A6 */	mflr r0
/* 80222C80 0021FBE0  90 01 01 14 */	stw r0, 0x114(r1)
/* 80222C84 0021FBE4  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80222C88 0021FBE8  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 80222C8C 0021FBEC  BF 41 00 E8 */	stmw r26, 0xe8(r1)
/* 80222C90 0021FBF0  7C 9C 23 78 */	mr r28, r4
/* 80222C94 0021FBF4  7C 7B 1B 78 */	mr r27, r3
/* 80222C98 0021FBF8  28 1C 00 30 */	cmplwi r28, 0x30
/* 80222C9C 0021FBFC  7C BD 2B 78 */	mr r29, r5
/* 80222CA0 0021FC00  7C DE 33 78 */	mr r30, r6
/* 80222CA4 0021FC04  3B E0 00 01 */	li r31, 1
/* 80222CA8 0021FC08  41 81 05 D8 */	bgt lbl_80223280
/* 80222CAC 0021FC0C  3C 80 80 3E */	lis r4, lbl_803E767C@ha
/* 80222CB0 0021FC10  57 80 10 3A */	slwi r0, r28, 2
/* 80222CB4 0021FC14  38 84 76 7C */	addi r4, r4, lbl_803E767C@l
/* 80222CB8 0021FC18  7C 04 00 2E */	lwzx r0, r4, r0
/* 80222CBC 0021FC1C  7C 09 03 A6 */	mtctr r0
/* 80222CC0 0021FC20  4E 80 04 20 */	bctr
.global lbl_80222CC4
lbl_80222CC4:
/* 80222CC4 0021FC24  81 83 00 00 */	lwz r12, 0(r3)
/* 80222CC8 0021FC28  7F C4 F3 78 */	mr r4, r30
/* 80222CCC 0021FC2C  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80222CD0 0021FC30  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 80222CD4 0021FC34  7D 89 03 A6 */	mtctr r12
/* 80222CD8 0021FC38  4E 80 04 21 */	bctrl
/* 80222CDC 0021FC3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222CE0 0021FC40  40 82 00 10 */	bne lbl_80222CF0
/* 80222CE4 0021FC44  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80222CE8 0021FC48  38 80 00 00 */	li r4, 0
/* 80222CEC 0021FC4C  4B F1 7C ED */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80222CF0:
/* 80222CF0 0021FC50  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80222CF4 0021FC54  7F C4 F3 78 */	mr r4, r30
/* 80222CF8 0021FC58  4B F1 7F F9 */	bl Activate__15CBodyControllerFR13CStateManager
/* 80222CFC 0021FC5C  7F 63 DB 78 */	mr r3, r27
/* 80222D00 0021FC60  7F C4 F3 78 */	mr r4, r30
/* 80222D04 0021FC64  4B FF C4 9D */	bl sub_8021f1a0
/* 80222D08 0021FC68  7F 63 DB 78 */	mr r3, r27
/* 80222D0C 0021FC6C  7F C4 F3 78 */	mr r4, r30
/* 80222D10 0021FC70  4B FF B4 51 */	bl sub_8021e160
/* 80222D14 0021FC74  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80222D18 0021FC78  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80222D1C 0021FC7C  4B F1 11 91 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 80222D20 0021FC80  FF E0 08 90 */	fmr f31, f1
/* 80222D24 0021FC84  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80222D28 0021FC88  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80222D2C 0021FC8C  40 81 00 1C */	ble lbl_80222D48
/* 80222D30 0021FC90  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80222D34 0021FC94  38 80 00 01 */	li r4, 1
/* 80222D38 0021FC98  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80222D3C 0021FC9C  4B F1 10 99 */	bl GetLocomotionSpeed__14CBodyStateInfoCFQ23pas15ELocomotionAnim
/* 80222D40 0021FCA0  EC 41 F8 24 */	fdivs f2, f1, f31
/* 80222D44 0021FCA4  48 00 00 08 */	b lbl_80222D4C
lbl_80222D48:
/* 80222D48 0021FCA8  C0 42 B4 18 */	lfs f2, lbl_805AD138@sda21(r2)
lbl_80222D4C:
/* 80222D4C 0021FCAC  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80222D50 0021FCB0  38 00 00 02 */	li r0, 2
/* 80222D54 0021FCB4  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80222D58 0021FCB8  90 03 00 34 */	stw r0, 0x34(r3)
/* 80222D5C 0021FCBC  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80222D60 0021FCC0  38 63 00 04 */	addi r3, r3, 4
/* 80222D64 0021FCC4  4B F0 EA 85 */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 80222D68 0021FCC8  80 82 B3 F4 */	lwz r4, lbl_805AD114@sda21(r2)
/* 80222D6C 0021FCCC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80222D70 0021FCD0  4B DE 1F 49 */	bl string_l__4rstlFPCc
/* 80222D74 0021FCD4  80 9B 00 64 */	lwz r4, 0x64(r27)
/* 80222D78 0021FCD8  38 61 00 08 */	addi r3, r1, 8
/* 80222D7C 0021FCDC  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 80222D80 0021FCE0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80222D84 0021FCE4  4B E0 BA B5 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80222D88 0021FCE8  88 01 00 08 */	lbz r0, 8(r1)
/* 80222D8C 0021FCEC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80222D90 0021FCF0  98 1B 09 F4 */	stb r0, 0x9f4(r27)
/* 80222D94 0021FCF4  48 11 AD 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80222D98 0021FCF8  48 00 04 E8 */	b lbl_80223280
.global lbl_80222D9C
lbl_80222D9C:
/* 80222D9C 0021FCFC  80 7B 09 28 */	lwz r3, 0x928(r27)
/* 80222DA0 0021FD00  7F C4 F3 78 */	mr r4, r30
/* 80222DA4 0021FD04  38 A0 00 01 */	li r5, 1
/* 80222DA8 0021FD08  4B F8 45 51 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 80222DAC 0021FD0C  48 00 04 D4 */	b lbl_80223280
.global lbl_80222DB0
lbl_80222DB0:
/* 80222DB0 0021FD10  80 7B 09 28 */	lwz r3, 0x928(r27)
/* 80222DB4 0021FD14  7F C4 F3 78 */	mr r4, r30
/* 80222DB8 0021FD18  38 A0 00 00 */	li r5, 0
/* 80222DBC 0021FD1C  4B F8 45 3D */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 80222DC0 0021FD20  88 1B 0A 49 */	lbz r0, 0xa49(r27)
/* 80222DC4 0021FD24  38 60 00 00 */	li r3, 0
/* 80222DC8 0021FD28  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80222DCC 0021FD2C  7F 63 DB 78 */	mr r3, r27
/* 80222DD0 0021FD30  98 1B 0A 49 */	stb r0, 0xa49(r27)
/* 80222DD4 0021FD34  7F C4 F3 78 */	mr r4, r30
/* 80222DD8 0021FD38  4B FF A8 6D */	bl sub_8021d644
/* 80222DDC 0021FD3C  48 00 04 A4 */	b lbl_80223280
.global lbl_80222DE0
lbl_80222DE0:
/* 80222DE0 0021FD40  80 7B 09 28 */	lwz r3, 0x928(r27)
/* 80222DE4 0021FD44  7F C4 F3 78 */	mr r4, r30
/* 80222DE8 0021FD48  4B F8 45 DD */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 80222DEC 0021FD4C  A0 7B 09 80 */	lhz r3, 0x980(r27)
/* 80222DF0 0021FD50  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80222DF4 0021FD54  7C 03 00 40 */	cmplw r3, r0
/* 80222DF8 0021FD58  41 82 00 20 */	beq lbl_80222E18
/* 80222DFC 0021FD5C  A0 1B 09 80 */	lhz r0, 0x980(r27)
/* 80222E00 0021FD60  7F C3 F3 78 */	mr r3, r30
/* 80222E04 0021FD64  38 81 00 3C */	addi r4, r1, 0x3c
/* 80222E08 0021FD68  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80222E0C 0021FD6C  4B E2 94 61 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 80222E10 0021FD70  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80222E14 0021FD74  B0 1B 09 80 */	sth r0, 0x980(r27)
lbl_80222E18:
/* 80222E18 0021FD78  7F 63 DB 78 */	mr r3, r27
/* 80222E1C 0021FD7C  7F C4 F3 78 */	mr r4, r30
/* 80222E20 0021FD80  4B FF A8 25 */	bl sub_8021d644
/* 80222E24 0021FD84  48 00 04 5C */	b lbl_80223280
.global lbl_80222E28
lbl_80222E28:
/* 80222E28 0021FD88  80 9B 04 50 */	lwz r4, 0x450(r27)
/* 80222E2C 0021FD8C  88 04 03 00 */	lbz r0, 0x300(r4)
/* 80222E30 0021FD90  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80222E34 0021FD94  40 82 00 50 */	bne lbl_80222E84
/* 80222E38 0021FD98  81 83 00 00 */	lwz r12, 0(r3)
/* 80222E3C 0021FD9C  C3 FB 00 E8 */	lfs f31, 0xe8(r27)
/* 80222E40 0021FDA0  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 80222E44 0021FDA4  7D 89 03 A6 */	mtctr r12
/* 80222E48 0021FDA8  4E 80 04 21 */	bctrl
/* 80222E4C 0021FDAC  EC 01 07 F2 */	fmuls f0, f1, f31
/* 80222E50 0021FDB0  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80222E54 0021FDB4  38 C0 00 00 */	li r6, 0
/* 80222E58 0021FDB8  7F 63 DB 78 */	mr r3, r27
/* 80222E5C 0021FDBC  D0 3B 01 50 */	stfs f1, 0x150(r27)
/* 80222E60 0021FDC0  7F C5 F3 78 */	mr r5, r30
/* 80222E64 0021FDC4  FC 00 00 50 */	fneg f0, f0
/* 80222E68 0021FDC8  D0 3B 01 54 */	stfs f1, 0x154(r27)
/* 80222E6C 0021FDCC  38 80 00 25 */	li r4, 0x25
/* 80222E70 0021FDD0  D0 1B 01 58 */	stfs f0, 0x158(r27)
/* 80222E74 0021FDD4  88 1B 03 28 */	lbz r0, 0x328(r27)
/* 80222E78 0021FDD8  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 80222E7C 0021FDDC  98 1B 03 28 */	stb r0, 0x328(r27)
/* 80222E80 0021FDE0  4B E3 11 01 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_80222E84:
/* 80222E84 0021FDE4  3B E0 00 00 */	li r31, 0
/* 80222E88 0021FDE8  48 00 03 F8 */	b lbl_80223280
.global lbl_80222E8C
lbl_80222E8C:
/* 80222E8C 0021FDEC  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80222E90 0021FDF0  38 C0 00 01 */	li r6, 1
/* 80222E94 0021FDF4  38 E4 66 A0 */	addi r7, r4, sZeroVector__9CVector3f@l
/* 80222E98 0021FDF8  7F C5 F3 78 */	mr r5, r30
/* 80222E9C 0021FDFC  C0 07 00 00 */	lfs f0, 0(r7)
/* 80222EA0 0021FE00  38 80 00 25 */	li r4, 0x25
/* 80222EA4 0021FE04  D0 1B 01 50 */	stfs f0, 0x150(r27)
/* 80222EA8 0021FE08  C0 07 00 04 */	lfs f0, 4(r7)
/* 80222EAC 0021FE0C  D0 1B 01 54 */	stfs f0, 0x154(r27)
/* 80222EB0 0021FE10  C0 07 00 08 */	lfs f0, 8(r7)
/* 80222EB4 0021FE14  D0 1B 01 58 */	stfs f0, 0x158(r27)
/* 80222EB8 0021FE18  88 1B 03 28 */	lbz r0, 0x328(r27)
/* 80222EBC 0021FE1C  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 80222EC0 0021FE20  98 1B 03 28 */	stb r0, 0x328(r27)
/* 80222EC4 0021FE24  4B E3 14 8D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80222EC8 0021FE28  3B E0 00 00 */	li r31, 0
/* 80222ECC 0021FE2C  48 00 03 B4 */	b lbl_80223280
.global lbl_80222ED0
lbl_80222ED0:
/* 80222ED0 0021FE30  88 1B 0A 48 */	lbz r0, 0xa48(r27)
/* 80222ED4 0021FE34  38 60 00 01 */	li r3, 1
/* 80222ED8 0021FE38  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80222EDC 0021FE3C  98 1B 0A 48 */	stb r0, 0xa48(r27)
/* 80222EE0 0021FE40  48 00 03 A0 */	b lbl_80223280
.global lbl_80222EE4
lbl_80222EE4:
/* 80222EE4 0021FE44  80 BB 00 04 */	lwz r5, 4(r27)
/* 80222EE8 0021FE48  80 9E 08 50 */	lwz r4, 0x850(r30)
/* 80222EEC 0021FE4C  54 A3 18 38 */	slwi r3, r5, 3
/* 80222EF0 0021FE50  90 A1 00 50 */	stw r5, 0x50(r1)
/* 80222EF4 0021FE54  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80222EF8 0021FE58  38 03 00 04 */	addi r0, r3, 4
/* 80222EFC 0021FE5C  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 80222F00 0021FE60  7C 84 00 2E */	lwzx r4, r4, r0
/* 80222F04 0021FE64  80 64 01 2C */	lwz r3, 0x12c(r4)
/* 80222F08 0021FE68  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 80222F0C 0021FE6C  90 1B 06 EC */	stw r0, 0x6ec(r27)
/* 80222F10 0021FE70  80 64 01 2C */	lwz r3, 0x12c(r4)
/* 80222F14 0021FE74  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 80222F18 0021FE78  90 1B 07 D0 */	stw r0, 0x7d0(r27)
/* 80222F1C 0021FE7C  A0 7B 06 E8 */	lhz r3, 0x6e8(r27)
/* 80222F20 0021FE80  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80222F24 0021FE84  7C 03 00 40 */	cmplw r3, r0
/* 80222F28 0021FE88  40 82 03 58 */	bne lbl_80223280
/* 80222F2C 0021FE8C  7F 64 DB 78 */	mr r4, r27
/* 80222F30 0021FE90  7F C5 F3 78 */	mr r5, r30
/* 80222F34 0021FE94  38 61 00 38 */	addi r3, r1, 0x38
/* 80222F38 0021FE98  48 01 72 B1 */	bl GetTeamAiMgr__10CTeamAiMgrF3CAiRC13CStateManager
/* 80222F3C 0021FE9C  A0 01 00 38 */	lhz r0, 0x38(r1)
/* 80222F40 0021FEA0  B0 1B 06 E8 */	sth r0, 0x6e8(r27)
/* 80222F44 0021FEA4  48 00 03 3C */	b lbl_80223280
.global lbl_80222F48
lbl_80222F48:
/* 80222F48 0021FEA8  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80222F4C 0021FEAC  7F C5 F3 78 */	mr r5, r30
/* 80222F50 0021FEB0  38 81 00 34 */	addi r4, r1, 0x34
/* 80222F54 0021FEB4  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80222F58 0021FEB8  4B FF C5 5D */	bl sub_8021f4b4
/* 80222F5C 0021FEBC  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80222F60 0021FEC0  7F C3 F3 78 */	mr r3, r30
/* 80222F64 0021FEC4  38 81 00 30 */	addi r4, r1, 0x30
/* 80222F68 0021FEC8  B0 01 00 30 */	sth r0, 0x30(r1)
/* 80222F6C 0021FECC  4B E2 96 09 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80222F70 0021FED0  7C 64 1B 78 */	mr r4, r3
/* 80222F74 0021FED4  38 61 00 74 */	addi r3, r1, 0x74
/* 80222F78 0021FED8  4B E8 C3 D5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80222F7C 0021FEDC  80 83 00 04 */	lwz r4, 4(r3)
/* 80222F80 0021FEE0  28 04 00 00 */	cmplwi r4, 0
/* 80222F84 0021FEE4  41 82 02 FC */	beq lbl_80223280
/* 80222F88 0021FEE8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80222F8C 0021FEEC  4B F8 5C 01 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 80222F90 0021FEF0  A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 80222F94 0021FEF4  7F C3 F3 78 */	mr r3, r30
/* 80222F98 0021FEF8  38 81 00 28 */	addi r4, r1, 0x28
/* 80222F9C 0021FEFC  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80222FA0 0021FF00  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80222FA4 0021FF04  4B E2 96 01 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80222FA8 0021FF08  7C 64 1B 78 */	mr r4, r3
/* 80222FAC 0021FF0C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80222FB0 0021FF10  4B E8 28 E9 */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 80222FB4 0021FF14  80 83 00 04 */	lwz r4, 4(r3)
/* 80222FB8 0021FF18  28 04 00 00 */	cmplwi r4, 0
/* 80222FBC 0021FF1C  41 82 02 C4 */	beq lbl_80223280
/* 80222FC0 0021FF20  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80222FC4 0021FF24  A0 84 00 EC */	lhz r4, 0xec(r4)
/* 80222FC8 0021FF28  A0 03 00 08 */	lhz r0, 8(r3)
/* 80222FCC 0021FF2C  7C 04 00 40 */	cmplw r4, r0
/* 80222FD0 0021FF30  40 82 02 B0 */	bne lbl_80223280
/* 80222FD4 0021FF34  88 1B 0A 48 */	lbz r0, 0xa48(r27)
/* 80222FD8 0021FF38  38 60 00 01 */	li r3, 1
/* 80222FDC 0021FF3C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80222FE0 0021FF40  98 1B 0A 48 */	stb r0, 0xa48(r27)
/* 80222FE4 0021FF44  48 00 02 9C */	b lbl_80223280
.global lbl_80222FE8
lbl_80222FE8:
/* 80222FE8 0021FF48  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80222FEC 0021FF4C  7F C3 F3 78 */	mr r3, r30
/* 80222FF0 0021FF50  38 81 00 24 */	addi r4, r1, 0x24
/* 80222FF4 0021FF54  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80222FF8 0021FF58  4B E2 95 7D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80222FFC 0021FF5C  7C 64 1B 78 */	mr r4, r3
/* 80223000 0021FF60  38 61 00 6C */	addi r3, r1, 0x6c
/* 80223004 0021FF64  4B E8 C3 49 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80223008 0021FF68  80 83 00 04 */	lwz r4, 4(r3)
/* 8022300C 0021FF6C  28 04 00 00 */	cmplwi r4, 0
/* 80223010 0021FF70  41 82 01 98 */	beq lbl_802231A8
/* 80223014 0021FF74  38 61 00 20 */	addi r3, r1, 0x20
/* 80223018 0021FF78  4B F8 5B 75 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 8022301C 0021FF7C  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80223020 0021FF80  7F C3 F3 78 */	mr r3, r30
/* 80223024 0021FF84  38 81 00 1C */	addi r4, r1, 0x1c
/* 80223028 0021FF88  B0 01 00 40 */	sth r0, 0x40(r1)
/* 8022302C 0021FF8C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80223030 0021FF90  4B E2 95 75 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80223034 0021FF94  7C 64 1B 78 */	mr r4, r3
/* 80223038 0021FF98  38 61 00 54 */	addi r3, r1, 0x54
/* 8022303C 0021FF9C  4B E8 28 5D */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 80223040 0021FFA0  83 43 00 04 */	lwz r26, 4(r3)
/* 80223044 0021FFA4  28 1A 00 00 */	cmplwi r26, 0
/* 80223048 0021FFA8  41 82 01 1C */	beq lbl_80223164
/* 8022304C 0021FFAC  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80223050 0021FFB0  A0 9A 00 EC */	lhz r4, 0xec(r26)
/* 80223054 0021FFB4  A0 03 00 08 */	lhz r0, 8(r3)
/* 80223058 0021FFB8  7C 04 00 40 */	cmplw r4, r0
/* 8022305C 0021FFBC  40 82 01 08 */	bne lbl_80223164
/* 80223060 0021FFC0  7F 63 DB 78 */	mr r3, r27
/* 80223064 0021FFC4  7F A4 EB 78 */	mr r4, r29
/* 80223068 0021FFC8  4B FF BF B5 */	bl sub_8021f01c
/* 8022306C 0021FFCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80223070 0021FFD0  41 82 00 28 */	beq lbl_80223098
/* 80223074 0021FFD4  81 9B 00 00 */	lwz r12, 0(r27)
/* 80223078 0021FFD8  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8022307C 0021FFDC  7F 63 DB 78 */	mr r3, r27
/* 80223080 0021FFE0  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 80223084 0021FFE4  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 80223088 0021FFE8  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8022308C 0021FFEC  7D 89 03 A6 */	mtctr r12
/* 80223090 0021FFF0  4E 80 04 21 */	bctrl
/* 80223094 0021FFF4  48 00 00 8C */	b lbl_80223120
lbl_80223098:
/* 80223098 0021FFF8  7F 63 DB 78 */	mr r3, r27
/* 8022309C 0021FFFC  7F A4 EB 78 */	mr r4, r29
/* 802230A0 00220000  4B FF BF 39 */	bl sub_8021efd8
/* 802230A4 00220004  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802230A8 00220008  41 82 00 78 */	beq lbl_80223120
/* 802230AC 0022000C  81 9B 00 00 */	lwz r12, 0(r27)
/* 802230B0 00220010  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 802230B4 00220014  7F 63 DB 78 */	mr r3, r27
/* 802230B8 00220018  C0 22 B4 04 */	lfs f1, lbl_805AD124@sda21(r2)
/* 802230BC 0022001C  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 802230C0 00220020  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 802230C4 00220024  7D 89 03 A6 */	mtctr r12
/* 802230C8 00220028  4E 80 04 21 */	bctrl
/* 802230CC 0022002C  80 1B 05 6C */	lwz r0, 0x56c(r27)
/* 802230D0 00220030  2C 00 00 03 */	cmpwi r0, 3
/* 802230D4 00220034  41 82 00 4C */	beq lbl_80223120
/* 802230D8 00220038  88 1B 0A 44 */	lbz r0, 0xa44(r27)
/* 802230DC 0022003C  28 00 00 00 */	cmplwi r0, 0
/* 802230E0 00220040  41 82 00 40 */	beq lbl_80223120
/* 802230E4 00220044  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802230E8 00220048  38 9A 00 34 */	addi r4, r26, 0x34
/* 802230EC 0022004C  48 0E FA 89 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802230F0 00220050  C0 02 B4 50 */	lfs f0, lbl_805AD170@sda21(r2)
/* 802230F4 00220054  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802230F8 00220058  38 81 00 48 */	addi r4, r1, 0x48
/* 802230FC 0022005C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80223100 00220060  48 0F 03 BD */	bl RotateLocalZ__12CTransform4fFRC9CRelAngle
/* 80223104 00220064  A0 FB 06 B4 */	lhz r7, 0x6b4(r27)
/* 80223108 00220068  7F 63 DB 78 */	mr r3, r27
/* 8022310C 0022006C  7F C4 F3 78 */	mr r4, r30
/* 80223110 00220070  38 BB 0A 38 */	addi r5, r27, 0xa38
/* 80223114 00220074  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 80223118 00220078  39 00 00 00 */	li r8, 0
/* 8022311C 0022007C  4B FF A6 C5 */	bl sub_8021d7e0
lbl_80223120:
/* 80223120 00220080  C0 3A 01 40 */	lfs f1, 0x140(r26)
/* 80223124 00220084  7F 63 DB 78 */	mr r3, r27
/* 80223128 00220088  C0 7A 00 58 */	lfs f3, 0x58(r26)
/* 8022312C 0022008C  7F C5 F3 78 */	mr r5, r30
/* 80223130 00220090  C0 5A 00 48 */	lfs f2, 0x48(r26)
/* 80223134 00220094  38 81 00 94 */	addi r4, r1, 0x94
/* 80223138 00220098  C0 1A 00 38 */	lfs f0, 0x38(r26)
/* 8022313C 0022009C  38 DA 01 2C */	addi r6, r26, 0x12c
/* 80223140 002200A0  38 E0 00 01 */	li r7, 1
/* 80223144 002200A4  39 00 00 00 */	li r8, 0
/* 80223148 002200A8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8022314C 002200AC  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 80223150 002200B0  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 80223154 002200B4  81 9B 00 00 */	lwz r12, 0(r27)
/* 80223158 002200B8  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 8022315C 002200BC  7D 89 03 A6 */	mtctr r12
/* 80223160 002200C0  4E 80 04 21 */	bctrl
lbl_80223164:
/* 80223164 002200C4  88 1B 0A 48 */	lbz r0, 0xa48(r27)
/* 80223168 002200C8  38 60 00 01 */	li r3, 1
/* 8022316C 002200CC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80223170 002200D0  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80223174 002200D4  98 1B 0A 48 */	stb r0, 0xa48(r27)
/* 80223178 002200D8  7F C3 F3 78 */	mr r3, r30
/* 8022317C 002200DC  38 81 00 88 */	addi r4, r1, 0x88
/* 80223180 002200E0  38 A0 00 00 */	li r5, 0
/* 80223184 002200E4  D0 1B 08 E8 */	stfs f0, 0x8e8(r27)
/* 80223188 002200E8  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 8022318C 002200EC  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 80223190 002200F0  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80223194 002200F4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80223198 002200F8  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8022319C 002200FC  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 802231A0 00220100  4B E2 55 E5 */	bl InformListeners__13CStateManagerFRC9CVector3f16EListenNoiseType
/* 802231A4 00220104  48 00 00 1C */	b lbl_802231C0
lbl_802231A8:
/* 802231A8 00220108  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802231AC 0022010C  7F 63 DB 78 */	mr r3, r27
/* 802231B0 00220110  7F C4 F3 78 */	mr r4, r30
/* 802231B4 00220114  38 A1 00 18 */	addi r5, r1, 0x18
/* 802231B8 00220118  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802231BC 0022011C  4B FF A2 BD */	bl sub_8021d478
lbl_802231C0:
/* 802231C0 00220120  88 1B 04 00 */	lbz r0, 0x400(r27)
/* 802231C4 00220124  38 60 00 01 */	li r3, 1
/* 802231C8 00220128  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802231CC 0022012C  98 1B 04 00 */	stb r0, 0x400(r27)
/* 802231D0 00220130  48 00 00 B0 */	b lbl_80223280
.global lbl_802231D4
lbl_802231D4:
/* 802231D4 00220134  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 802231D8 00220138  7F C3 F3 78 */	mr r3, r30
/* 802231DC 0022013C  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 802231E0 00220140  38 81 00 7C */	addi r4, r1, 0x7c
/* 802231E4 00220144  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 802231E8 00220148  38 A0 00 00 */	li r5, 0
/* 802231EC 0022014C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 802231F0 00220150  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 802231F4 00220154  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 802231F8 00220158  4B E2 55 8D */	bl InformListeners__13CStateManagerFRC9CVector3f16EListenNoiseType
/* 802231FC 0022015C  88 1B 04 00 */	lbz r0, 0x400(r27)
/* 80223200 00220160  38 A0 00 01 */	li r5, 1
/* 80223204 00220164  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80223208 00220168  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8022320C 0022016C  98 1B 04 00 */	stb r0, 0x400(r27)
/* 80223210 00220170  7F C3 F3 78 */	mr r3, r30
/* 80223214 00220174  38 81 00 14 */	addi r4, r1, 0x14
/* 80223218 00220178  88 1B 0A 48 */	lbz r0, 0xa48(r27)
/* 8022321C 0022017C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80223220 00220180  98 1B 0A 48 */	stb r0, 0xa48(r27)
/* 80223224 00220184  D0 1B 08 E8 */	stfs f0, 0x8e8(r27)
/* 80223228 00220188  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8022322C 0022018C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80223230 00220190  4B E2 93 45 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80223234 00220194  7C 64 1B 78 */	mr r4, r3
/* 80223238 00220198  38 61 00 64 */	addi r3, r1, 0x64
/* 8022323C 0022019C  4B E8 C1 11 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80223240 002201A0  80 03 00 04 */	lwz r0, 4(r3)
/* 80223244 002201A4  28 00 00 00 */	cmplwi r0, 0
/* 80223248 002201A8  40 82 00 38 */	bne lbl_80223280
/* 8022324C 002201AC  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80223250 002201B0  7F 63 DB 78 */	mr r3, r27
/* 80223254 002201B4  7F C4 F3 78 */	mr r4, r30
/* 80223258 002201B8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8022325C 002201BC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80223260 002201C0  4B FF A2 19 */	bl sub_8021d478
/* 80223264 002201C4  48 00 00 1C */	b lbl_80223280
.global lbl_80223268
lbl_80223268:
/* 80223268 002201C8  80 7B 09 28 */	lwz r3, 0x928(r27)
/* 8022326C 002201CC  28 03 00 00 */	cmplwi r3, 0
/* 80223270 002201D0  41 82 00 10 */	beq lbl_80223280
/* 80223274 002201D4  7F C4 F3 78 */	mr r4, r30
/* 80223278 002201D8  38 A0 00 00 */	li r5, 0
/* 8022327C 002201DC  4B F8 3C 45 */	bl SetMovable__22CCollisionActorManagerFb
.global lbl_80223280
lbl_80223280:
/* 80223280 002201E0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80223284 002201E4  41 82 00 20 */	beq lbl_802232A4
/* 80223288 002201E8  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8022328C 002201EC  7F 63 DB 78 */	mr r3, r27
/* 80223290 002201F0  7F 84 E3 78 */	mr r4, r28
/* 80223294 002201F4  7F C6 F3 78 */	mr r6, r30
/* 80223298 002201F8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8022329C 002201FC  38 A1 00 0C */	addi r5, r1, 0xc
/* 802232A0 00220200  4B E5 98 D9 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
lbl_802232A4:
/* 802232A4 00220204  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 802232A8 00220208  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 802232AC 0022020C  BB 41 00 E8 */	lmw r26, 0xe8(r1)
/* 802232B0 00220210  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802232B4 00220214  7C 08 03 A6 */	mtlr r0
/* 802232B8 00220218  38 21 01 10 */	addi r1, r1, 0x110
/* 802232BC 0022021C  4E 80 00 20 */	blr

.global Think__9CBabygothFfR13CStateManager
Think__9CBabygothFfR13CStateManager:
/* 802232C0 00220220  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802232C4 00220224  7C 08 02 A6 */	mflr r0
/* 802232C8 00220228  90 01 00 44 */	stw r0, 0x44(r1)
/* 802232CC 0022022C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802232D0 00220230  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802232D4 00220234  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802232D8 00220238  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802232DC 0022023C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 802232E0 00220240  FF E0 08 90 */	fmr f31, f1
/* 802232E4 00220244  7C 7E 1B 78 */	mr r30, r3
/* 802232E8 00220248  7C 9F 23 78 */	mr r31, r4
/* 802232EC 0022024C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802232F0 00220250  41 82 01 80 */	beq lbl_80223470
/* 802232F4 00220254  4B FF B9 65 */	bl sub_8021ec58
/* 802232F8 00220258  88 1E 0A 49 */	lbz r0, 0xa49(r30)
/* 802232FC 0022025C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80223300 00220260  41 82 00 3C */	beq lbl_8022333C
/* 80223304 00220264  A0 DE 00 08 */	lhz r6, 8(r30)
/* 80223308 00220268  7F E3 FB 78 */	mr r3, r31
/* 8022330C 0022026C  38 81 00 10 */	addi r4, r1, 0x10
/* 80223310 00220270  38 A1 00 0C */	addi r5, r1, 0xc
/* 80223314 00220274  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 80223318 00220278  A0 1E 06 E8 */	lhz r0, 0x6e8(r30)
/* 8022331C 0022027C  B0 C1 00 08 */	sth r6, 8(r1)
/* 80223320 00220280  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80223324 00220284  48 01 6E 5D */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 80223328 00220288  28 03 00 00 */	cmplwi r3, 0
/* 8022332C 0022028C  40 82 00 10 */	bne lbl_8022333C
/* 80223330 00220290  7F C3 F3 78 */	mr r3, r30
/* 80223334 00220294  7F E4 FB 78 */	mr r4, r31
/* 80223338 00220298  4B FF A3 B1 */	bl sub_8021d6e8
lbl_8022333C:
/* 8022333C 0022029C  FC 20 F8 90 */	fmr f1, f31
/* 80223340 002202A0  7F C3 F3 78 */	mr r3, r30
/* 80223344 002202A4  7F E4 FB 78 */	mr r4, r31
/* 80223348 002202A8  4B E5 67 D1 */	bl Think__10CPatternedFfR13CStateManager
/* 8022334C 002202AC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80223350 002202B0  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 80223354 002202B4  C0 23 03 24 */	lfs f1, 0x324(r3)
/* 80223358 002202B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022335C 002202BC  40 81 00 10 */	ble lbl_8022336C
/* 80223360 002202C0  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80223364 002202C4  38 80 00 00 */	li r4, 0
/* 80223368 002202C8  4B F5 1E BD */	bl SetActive__13CBoneTrackingFb
lbl_8022336C:
/* 8022336C 002202CC  FC 20 F8 90 */	fmr f1, f31
/* 80223370 002202D0  7F C3 F3 78 */	mr r3, r30
/* 80223374 002202D4  4B FF AF 51 */	bl sub_8021e2c4
/* 80223378 002202D8  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8022337C 002202DC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80223380 002202E0  4B E0 96 85 */	bl PreRender__9CAnimDataFv
/* 80223384 002202E4  FC 20 F8 90 */	fmr f1, f31
/* 80223388 002202E8  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 8022338C 002202EC  4B F5 26 1D */	bl Update__13CBoneTrackingFf
/* 80223390 002202F0  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80223394 002202F4  7F E4 FB 78 */	mr r4, r31
/* 80223398 002202F8  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 8022339C 002202FC  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 802233A0 00220300  C0 05 00 00 */	lfs f0, 0(r5)
/* 802233A4 00220304  38 DE 00 34 */	addi r6, r30, 0x34
/* 802233A8 00220308  38 E1 00 14 */	addi r7, r1, 0x14
/* 802233AC 0022030C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802233B0 00220310  C0 05 00 04 */	lfs f0, 4(r5)
/* 802233B4 00220314  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802233B8 00220318  C0 05 00 08 */	lfs f0, 8(r5)
/* 802233BC 0022031C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802233C0 00220320  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 802233C4 00220324  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 802233C8 00220328  4B F5 25 49 */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 802233CC 0022032C  88 1E 0A 49 */	lbz r0, 0xa49(r30)
/* 802233D0 00220330  FC 20 F8 90 */	fmr f1, f31
/* 802233D4 00220334  80 7E 09 28 */	lwz r3, 0x928(r30)
/* 802233D8 00220338  7F E4 FB 78 */	mr r4, r31
/* 802233DC 0022033C  54 00 F7 FE */	rlwinm r0, r0, 0x1e, 0x1f, 0x1f
/* 802233E0 00220340  7C 00 00 34 */	cntlzw r0, r0
/* 802233E4 00220344  54 05 D9 7E */	srwi r5, r0, 5
/* 802233E8 00220348  4B F8 40 69 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 802233EC 0022034C  88 1E 0A 49 */	lbz r0, 0xa49(r30)
/* 802233F0 00220350  38 60 00 01 */	li r3, 1
/* 802233F4 00220354  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802233F8 00220358  7F C3 F3 78 */	mr r3, r30
/* 802233FC 0022035C  98 1E 0A 49 */	stb r0, 0xa49(r30)
/* 80223400 00220360  7F E4 FB 78 */	mr r4, r31
/* 80223404 00220364  4B FF B3 05 */	bl sub_8021e708
/* 80223408 00220368  FC 20 F8 90 */	fmr f1, f31
/* 8022340C 0022036C  7F C3 F3 78 */	mr r3, r30
/* 80223410 00220370  7F E4 FB 78 */	mr r4, r31
/* 80223414 00220374  4B FF AC 91 */	bl sub_8021e0a4
/* 80223418 00220378  7F C3 F3 78 */	mr r3, r30
/* 8022341C 0022037C  7F E4 FB 78 */	mr r4, r31
/* 80223420 00220380  4B FF A6 E5 */	bl sub_8021db04
/* 80223424 00220384  FC 20 F8 90 */	fmr f1, f31
/* 80223428 00220388  7F C3 F3 78 */	mr r3, r30
/* 8022342C 0022038C  7F E4 FB 78 */	mr r4, r31
/* 80223430 00220390  4B FF A6 3D */	bl sub_8021da6c
/* 80223434 00220394  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80223438 00220398  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8022343C 0022039C  40 82 00 34 */	bne lbl_80223470
/* 80223440 002203A0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80223444 002203A4  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80223448 002203A8  4B F1 0C 31 */	bl GetCurrentState__14CBodyStateInfoCFv
/* 8022344C 002203AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80223450 002203B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80223454 002203B4  7D 89 03 A6 */	mtctr r12
/* 80223458 002203B8  4E 80 04 21 */	bctrl
/* 8022345C 002203BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80223460 002203C0  41 82 00 10 */	beq lbl_80223470
/* 80223464 002203C4  7F C3 F3 78 */	mr r3, r30
/* 80223468 002203C8  7F E4 FB 78 */	mr r4, r31
/* 8022346C 002203CC  4B FF A1 39 */	bl sub_8021d5a4
lbl_80223470:
/* 80223470 002203D0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80223474 002203D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80223478 002203D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8022347C 002203DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80223480 002203E0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80223484 002203E4  7C 08 03 A6 */	mtlr r0
/* 80223488 002203E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8022348C 002203EC  4E 80 00 20 */	blr

.global Accept__9CBabygothFR8IVisitor
Accept__9CBabygothFR8IVisitor:
/* 80223490 002203F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223494 002203F4  7C 08 02 A6 */	mflr r0
/* 80223498 002203F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022349C 002203FC  7C 60 1B 78 */	mr r0, r3
/* 802234A0 00220400  7C 83 23 78 */	mr r3, r4
/* 802234A4 00220404  81 84 00 00 */	lwz r12, 0(r4)
/* 802234A8 00220408  7C 04 03 78 */	mr r4, r0
/* 802234AC 0022040C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802234B0 00220410  7D 89 03 A6 */	mtctr r12
/* 802234B4 00220414  4E 80 04 21 */	bctrl
/* 802234B8 00220418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802234BC 0022041C  7C 08 03 A6 */	mtlr r0
/* 802234C0 00220420  38 21 00 10 */	addi r1, r1, 0x10
/* 802234C4 00220424  4E 80 00 20 */	blr

.global __dt__9CBabygothFv
__dt__9CBabygothFv:
/* 802234C8 00220428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802234CC 0022042C  7C 08 02 A6 */	mflr r0
/* 802234D0 00220430  90 01 00 14 */	stw r0, 0x14(r1)
/* 802234D4 00220434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802234D8 00220438  7C 9F 23 78 */	mr r31, r4
/* 802234DC 0022043C  93 C1 00 08 */	stw r30, 8(r1)
/* 802234E0 00220440  7C 7E 1B 79 */	or. r30, r3, r3
/* 802234E4 00220444  41 82 02 80 */	beq lbl_80223764
/* 802234E8 00220448  3C 60 80 3E */	lis r3, lbl_803E7350@ha
/* 802234EC 0022044C  34 1E 0A 38 */	addic. r0, r30, 0xa38
/* 802234F0 00220450  38 03 73 50 */	addi r0, r3, lbl_803E7350@l
/* 802234F4 00220454  90 1E 00 00 */	stw r0, 0(r30)
/* 802234F8 00220458  41 82 00 30 */	beq lbl_80223528
/* 802234FC 0022045C  88 1E 0A 44 */	lbz r0, 0xa44(r30)
/* 80223500 00220460  28 00 00 00 */	cmplwi r0, 0
/* 80223504 00220464  41 82 00 1C */	beq lbl_80223520
/* 80223508 00220468  34 7E 0A 38 */	addic. r3, r30, 0xa38
/* 8022350C 0022046C  41 82 00 14 */	beq lbl_80223520
/* 80223510 00220470  28 03 00 00 */	cmplwi r3, 0
/* 80223514 00220474  41 82 00 0C */	beq lbl_80223520
/* 80223518 00220478  38 80 00 00 */	li r4, 0
/* 8022351C 0022047C  48 11 D9 25 */	bl __dt__6CTokenFv
lbl_80223520:
/* 80223520 00220480  38 00 00 00 */	li r0, 0
/* 80223524 00220484  98 1E 0A 44 */	stb r0, 0xa44(r30)
lbl_80223528:
/* 80223528 00220488  34 1E 0A 2C */	addic. r0, r30, 0xa2c
/* 8022352C 0022048C  41 82 00 18 */	beq lbl_80223544
/* 80223530 00220490  34 1E 0A 2C */	addic. r0, r30, 0xa2c
/* 80223534 00220494  41 82 00 10 */	beq lbl_80223544
/* 80223538 00220498  38 7E 0A 2C */	addi r3, r30, 0xa2c
/* 8022353C 0022049C  38 80 00 00 */	li r4, 0
/* 80223540 002204A0  48 11 D9 01 */	bl __dt__6CTokenFv
lbl_80223544:
/* 80223544 002204A4  34 1E 0A 20 */	addic. r0, r30, 0xa20
/* 80223548 002204A8  41 82 00 18 */	beq lbl_80223560
/* 8022354C 002204AC  34 1E 0A 20 */	addic. r0, r30, 0xa20
/* 80223550 002204B0  41 82 00 10 */	beq lbl_80223560
/* 80223554 002204B4  38 7E 0A 20 */	addi r3, r30, 0xa20
/* 80223558 002204B8  38 80 00 00 */	li r4, 0
/* 8022355C 002204BC  48 11 D8 E5 */	bl __dt__6CTokenFv
lbl_80223560:
/* 80223560 002204C0  34 1E 0A 14 */	addic. r0, r30, 0xa14
/* 80223564 002204C4  41 82 00 18 */	beq lbl_8022357C
/* 80223568 002204C8  34 1E 0A 14 */	addic. r0, r30, 0xa14
/* 8022356C 002204CC  41 82 00 10 */	beq lbl_8022357C
/* 80223570 002204D0  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 80223574 002204D4  38 80 00 00 */	li r4, 0
/* 80223578 002204D8  48 11 D8 C9 */	bl __dt__6CTokenFv
lbl_8022357C:
/* 8022357C 002204DC  34 1E 0A 08 */	addic. r0, r30, 0xa08
/* 80223580 002204E0  41 82 00 18 */	beq lbl_80223598
/* 80223584 002204E4  34 1E 0A 08 */	addic. r0, r30, 0xa08
/* 80223588 002204E8  41 82 00 10 */	beq lbl_80223598
/* 8022358C 002204EC  38 7E 0A 08 */	addi r3, r30, 0xa08
/* 80223590 002204F0  38 80 00 00 */	li r4, 0
/* 80223594 002204F4  48 11 D8 AD */	bl __dt__6CTokenFv
lbl_80223598:
/* 80223598 002204F8  34 1E 09 F8 */	addic. r0, r30, 0x9f8
/* 8022359C 002204FC  41 82 00 58 */	beq lbl_802235F4
/* 802235A0 00220500  80 BE 09 F8 */	lwz r5, 0x9f8(r30)
/* 802235A4 00220504  38 60 00 00 */	li r3, 0
/* 802235A8 00220508  2C 05 00 00 */	cmpwi r5, 0
/* 802235AC 0022050C  40 81 00 40 */	ble lbl_802235EC
/* 802235B0 00220510  2C 05 00 08 */	cmpwi r5, 8
/* 802235B4 00220514  38 85 FF F8 */	addi r4, r5, -8
/* 802235B8 00220518  40 81 00 20 */	ble lbl_802235D8
/* 802235BC 0022051C  38 04 00 07 */	addi r0, r4, 7
/* 802235C0 00220520  54 00 E8 FE */	srwi r0, r0, 3
/* 802235C4 00220524  7C 09 03 A6 */	mtctr r0
/* 802235C8 00220528  2C 04 00 00 */	cmpwi r4, 0
/* 802235CC 0022052C  40 81 00 0C */	ble lbl_802235D8
lbl_802235D0:
/* 802235D0 00220530  38 63 00 08 */	addi r3, r3, 8
/* 802235D4 00220534  42 00 FF FC */	bdnz lbl_802235D0
lbl_802235D8:
/* 802235D8 00220538  7C 03 28 50 */	subf r0, r3, r5
/* 802235DC 0022053C  7C 09 03 A6 */	mtctr r0
/* 802235E0 00220540  7C 03 28 00 */	cmpw r3, r5
/* 802235E4 00220544  40 80 00 08 */	bge lbl_802235EC
lbl_802235E8:
/* 802235E8 00220548  42 00 00 00 */	bdnz lbl_802235E8
lbl_802235EC:
/* 802235EC 0022054C  38 00 00 00 */	li r0, 0
/* 802235F0 00220550  90 1E 09 F8 */	stw r0, 0x9f8(r30)
lbl_802235F4:
/* 802235F4 00220554  34 1E 09 84 */	addic. r0, r30, 0x984
/* 802235F8 00220558  41 82 00 10 */	beq lbl_80223608
/* 802235FC 0022055C  38 7E 09 84 */	addi r3, r30, 0x984
/* 80223600 00220560  38 80 00 00 */	li r4, 0
/* 80223604 00220564  48 11 D8 3D */	bl __dt__6CTokenFv
lbl_80223608:
/* 80223608 00220568  34 1E 09 58 */	addic. r0, r30, 0x958
/* 8022360C 0022056C  41 82 00 20 */	beq lbl_8022362C
/* 80223610 00220570  34 1E 09 58 */	addic. r0, r30, 0x958
/* 80223614 00220574  41 82 00 18 */	beq lbl_8022362C
/* 80223618 00220578  34 1E 09 58 */	addic. r0, r30, 0x958
/* 8022361C 0022057C  41 82 00 10 */	beq lbl_8022362C
/* 80223620 00220580  38 7E 09 58 */	addi r3, r30, 0x958
/* 80223624 00220584  38 80 00 00 */	li r4, 0
/* 80223628 00220588  48 11 D8 19 */	bl __dt__6CTokenFv
lbl_8022362C:
/* 8022362C 0022058C  34 1E 09 30 */	addic. r0, r30, 0x930
/* 80223630 00220590  41 82 00 24 */	beq lbl_80223654
/* 80223634 00220594  3C 60 80 3F */	lis r3, lbl_803ECAD0@ha
/* 80223638 00220598  34 1E 09 30 */	addic. r0, r30, 0x930
/* 8022363C 0022059C  38 03 CA D0 */	addi r0, r3, lbl_803ECAD0@l
/* 80223640 002205A0  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80223644 002205A4  41 82 00 10 */	beq lbl_80223654
/* 80223648 002205A8  3C 60 80 3E */	lis r3, __vt__19CCollisionPrimitive@ha
/* 8022364C 002205AC  38 03 97 E4 */	addi r0, r3, __vt__19CCollisionPrimitive@l
/* 80223650 002205B0  90 1E 09 30 */	stw r0, 0x930(r30)
lbl_80223654:
/* 80223654 002205B4  34 1E 09 28 */	addic. r0, r30, 0x928
/* 80223658 002205B8  41 82 00 10 */	beq lbl_80223668
/* 8022365C 002205BC  80 7E 09 28 */	lwz r3, 0x928(r30)
/* 80223660 002205C0  38 80 00 01 */	li r4, 1
/* 80223664 002205C4  4B F8 42 79 */	bl sub_801a78dc
lbl_80223668:
/* 80223668 002205C8  34 1E 08 F0 */	addic. r0, r30, 0x8f0
/* 8022366C 002205CC  41 82 00 14 */	beq lbl_80223680
/* 80223670 002205D0  34 1E 09 14 */	addic. r0, r30, 0x914
/* 80223674 002205D4  41 82 00 0C */	beq lbl_80223680
/* 80223678 002205D8  38 00 00 00 */	li r0, 0
/* 8022367C 002205DC  98 1E 09 20 */	stb r0, 0x920(r30)
lbl_80223680:
/* 80223680 002205E0  34 1E 07 D0 */	addic. r0, r30, 0x7d0
/* 80223684 002205E4  41 82 00 60 */	beq lbl_802236E4
/* 80223688 002205E8  34 1E 07 D4 */	addic. r0, r30, 0x7d4
/* 8022368C 002205EC  41 82 00 58 */	beq lbl_802236E4
/* 80223690 002205F0  80 BE 07 D4 */	lwz r5, 0x7d4(r30)
/* 80223694 002205F4  38 60 00 00 */	li r3, 0
/* 80223698 002205F8  2C 05 00 00 */	cmpwi r5, 0
/* 8022369C 002205FC  40 81 00 40 */	ble lbl_802236DC
/* 802236A0 00220600  2C 05 00 08 */	cmpwi r5, 8
/* 802236A4 00220604  38 85 FF F8 */	addi r4, r5, -8
/* 802236A8 00220608  40 81 00 20 */	ble lbl_802236C8
/* 802236AC 0022060C  38 04 00 07 */	addi r0, r4, 7
/* 802236B0 00220610  54 00 E8 FE */	srwi r0, r0, 3
/* 802236B4 00220614  7C 09 03 A6 */	mtctr r0
/* 802236B8 00220618  2C 04 00 00 */	cmpwi r4, 0
/* 802236BC 0022061C  40 81 00 0C */	ble lbl_802236C8
lbl_802236C0:
/* 802236C0 00220620  38 63 00 08 */	addi r3, r3, 8
/* 802236C4 00220624  42 00 FF FC */	bdnz lbl_802236C0
lbl_802236C8:
/* 802236C8 00220628  7C 03 28 50 */	subf r0, r3, r5
/* 802236CC 0022062C  7C 09 03 A6 */	mtctr r0
/* 802236D0 00220630  7C 03 28 00 */	cmpw r3, r5
/* 802236D4 00220634  40 80 00 08 */	bge lbl_802236DC
lbl_802236D8:
/* 802236D8 00220638  42 00 00 00 */	bdnz lbl_802236D8
lbl_802236DC:
/* 802236DC 0022063C  38 00 00 00 */	li r0, 0
/* 802236E0 00220640  90 1E 07 D4 */	stw r0, 0x7d4(r30)
lbl_802236E4:
/* 802236E4 00220644  34 1E 06 EC */	addic. r0, r30, 0x6ec
/* 802236E8 00220648  41 82 00 60 */	beq lbl_80223748
/* 802236EC 0022064C  34 1E 06 F0 */	addic. r0, r30, 0x6f0
/* 802236F0 00220650  41 82 00 58 */	beq lbl_80223748
/* 802236F4 00220654  80 BE 06 F0 */	lwz r5, 0x6f0(r30)
/* 802236F8 00220658  38 60 00 00 */	li r3, 0
/* 802236FC 0022065C  2C 05 00 00 */	cmpwi r5, 0
/* 80223700 00220660  40 81 00 40 */	ble lbl_80223740
/* 80223704 00220664  2C 05 00 08 */	cmpwi r5, 8
/* 80223708 00220668  38 85 FF F8 */	addi r4, r5, -8
/* 8022370C 0022066C  40 81 00 20 */	ble lbl_8022372C
/* 80223710 00220670  38 04 00 07 */	addi r0, r4, 7
/* 80223714 00220674  54 00 E8 FE */	srwi r0, r0, 3
/* 80223718 00220678  7C 09 03 A6 */	mtctr r0
/* 8022371C 0022067C  2C 04 00 00 */	cmpwi r4, 0
/* 80223720 00220680  40 81 00 0C */	ble lbl_8022372C
lbl_80223724:
/* 80223724 00220684  38 63 00 08 */	addi r3, r3, 8
/* 80223728 00220688  42 00 FF FC */	bdnz lbl_80223724
lbl_8022372C:
/* 8022372C 0022068C  7C 03 28 50 */	subf r0, r3, r5
/* 80223730 00220690  7C 09 03 A6 */	mtctr r0
/* 80223734 00220694  7C 03 28 00 */	cmpw r3, r5
/* 80223738 00220698  40 80 00 08 */	bge lbl_80223740
lbl_8022373C:
/* 8022373C 0022069C  42 00 00 00 */	bdnz lbl_8022373C
lbl_80223740:
/* 80223740 002206A0  38 00 00 00 */	li r0, 0
/* 80223744 002206A4  90 1E 06 F0 */	stw r0, 0x6f0(r30)
lbl_80223748:
/* 80223748 002206A8  7F C3 F3 78 */	mr r3, r30
/* 8022374C 002206AC  38 80 00 00 */	li r4, 0
/* 80223750 002206B0  4B E5 3E 21 */	bl __dt__10CPatternedFv
/* 80223754 002206B4  7F E0 07 35 */	extsh. r0, r31
/* 80223758 002206B8  40 81 00 0C */	ble lbl_80223764
/* 8022375C 002206BC  7F C3 F3 78 */	mr r3, r30
/* 80223760 002206C0  48 0F 21 D1 */	bl Free__7CMemoryFPCv
lbl_80223764:
/* 80223764 002206C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223768 002206C8  7F C3 F3 78 */	mr r3, r30
/* 8022376C 002206CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223770 002206D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80223774 002206D4  7C 08 03 A6 */	mtlr r0
/* 80223778 002206D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022377C 002206DC  4E 80 00 20 */	blr

.global "__ct__9CBabygothF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC13CBabygothData"
"__ct__9CBabygothF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC13CBabygothData":
/* 80223780 002206E0  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80223784 002206E4  7C 08 02 A6 */	mflr r0
/* 80223788 002206E8  7C CC 33 78 */	mr r12, r6
/* 8022378C 002206EC  7D 0B 43 78 */	mr r11, r8
/* 80223790 002206F0  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80223794 002206F4  7C A6 2B 78 */	mr r6, r5
/* 80223798 002206F8  7D 88 63 78 */	mr r8, r12
/* 8022379C 002206FC  38 A1 00 20 */	addi r5, r1, 0x20
/* 802237A0 00220700  BF 01 01 B0 */	stmw r24, 0x1b0(r1)
/* 802237A4 00220704  7D 3E 4B 78 */	mr r30, r9
/* 802237A8 00220708  7C E9 3B 78 */	mr r9, r7
/* 802237AC 0022070C  83 E1 01 D8 */	lwz r31, 0x1d8(r1)
/* 802237B0 00220710  7C 7D 1B 78 */	mr r29, r3
/* 802237B4 00220714  38 E0 00 00 */	li r7, 0
/* 802237B8 00220718  A0 04 00 00 */	lhz r0, 0(r4)
/* 802237BC 0022071C  38 80 00 00 */	li r4, 0
/* 802237C0 00220720  B0 01 00 20 */	sth r0, 0x20(r1)
/* 802237C4 00220724  38 00 00 01 */	li r0, 1
/* 802237C8 00220728  93 C1 00 08 */	stw r30, 8(r1)
/* 802237CC 0022072C  90 81 00 0C */	stw r4, 0xc(r1)
/* 802237D0 00220730  38 80 00 02 */	li r4, 2
/* 802237D4 00220734  90 01 00 10 */	stw r0, 0x10(r1)
/* 802237D8 00220738  90 01 00 14 */	stw r0, 0x14(r1)
/* 802237DC 0022073C  91 41 00 18 */	stw r10, 0x18(r1)
/* 802237E0 00220740  7D 6A 5B 78 */	mr r10, r11
/* 802237E4 00220744  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802237E8 00220748  4B E5 9C 69 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 802237EC 0022074C  3C 60 80 3E */	lis r3, lbl_803E7350@ha
/* 802237F0 00220750  38 A0 FF FF */	li r5, -1
/* 802237F4 00220754  38 63 73 50 */	addi r3, r3, lbl_803E7350@l
/* 802237F8 00220758  38 00 00 00 */	li r0, 0
/* 802237FC 0022075C  90 7D 00 00 */	stw r3, 0(r29)
/* 80223800 00220760  7F E4 FB 78 */	mr r4, r31
/* 80223804 00220764  38 7D 05 70 */	addi r3, r29, 0x570
/* 80223808 00220768  90 BD 05 68 */	stw r5, 0x568(r29)
/* 8022380C 0022076C  90 1D 05 6C */	stw r0, 0x56c(r29)
/* 80223810 00220770  48 00 09 C9 */	bl __ct__13CBabygothDataFRC13CBabygothData
/* 80223814 00220774  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80223818 00220778  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 8022381C 0022077C  C0 22 B4 18 */	lfs f1, lbl_805AD138@sda21(r2)
/* 80223820 00220780  38 80 00 00 */	li r4, 0
/* 80223824 00220784  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
/* 80223828 00220788  38 A0 00 01 */	li r5, 1
/* 8022382C 0022078C  FC 40 08 90 */	fmr f2, f1
/* 80223830 00220790  80 DE 01 0C */	lwz r6, 0x10c(r30)
/* 80223834 00220794  4B FA 55 61 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 80223838 00220798  C0 22 B4 18 */	lfs f1, lbl_805AD138@sda21(r2)
/* 8022383C 0022079C  38 7D 07 D0 */	addi r3, r29, 0x7d0
/* 80223840 002207A0  80 DE 01 0C */	lwz r6, 0x10c(r30)
/* 80223844 002207A4  38 80 00 00 */	li r4, 0
/* 80223848 002207A8  FC 40 08 90 */	fmr f2, f1
/* 8022384C 002207AC  38 A0 00 01 */	li r5, 1
/* 80223850 002207B0  4B FA 55 45 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 80223854 002207B4  38 00 00 00 */	li r0, 0
/* 80223858 002207B8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8022385C 002207BC  90 1D 08 B4 */	stw r0, 0x8b4(r29)
/* 80223860 002207C0  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 80223864 002207C4  3C 60 80 3D */	lis r3, lbl_803D31D0@ha
/* 80223868 002207C8  C0 02 B4 04 */	lfs f0, lbl_805AD124@sda21(r2)
/* 8022386C 002207CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80223870 002207D0  38 83 31 D0 */	addi r4, r3, lbl_803D31D0@l
/* 80223874 002207D4  38 61 01 40 */	addi r3, r1, 0x140
/* 80223878 002207D8  D0 3D 08 B8 */	stfs f1, 0x8b8(r29)
/* 8022387C 002207DC  38 84 00 64 */	addi r4, r4, 0x64
/* 80223880 002207E0  C0 25 00 04 */	lfs f1, 4(r5)
/* 80223884 002207E4  D0 3D 08 BC */	stfs f1, 0x8bc(r29)
/* 80223888 002207E8  C0 25 00 08 */	lfs f1, 8(r5)
/* 8022388C 002207EC  D0 3D 08 C0 */	stfs f1, 0x8c0(r29)
/* 80223890 002207F0  C0 25 00 00 */	lfs f1, 0(r5)
/* 80223894 002207F4  D0 3D 08 C4 */	stfs f1, 0x8c4(r29)
/* 80223898 002207F8  C0 25 00 04 */	lfs f1, 4(r5)
/* 8022389C 002207FC  D0 3D 08 C8 */	stfs f1, 0x8c8(r29)
/* 802238A0 00220800  C0 25 00 08 */	lfs f1, 8(r5)
/* 802238A4 00220804  D0 3D 08 CC */	stfs f1, 0x8cc(r29)
/* 802238A8 00220808  C0 3D 03 B4 */	lfs f1, 0x3b4(r29)
/* 802238AC 0022080C  D0 3D 08 D0 */	stfs f1, 0x8d0(r29)
/* 802238B0 00220810  D0 1D 08 D4 */	stfs f0, 0x8d4(r29)
/* 802238B4 00220814  D0 1D 08 D8 */	stfs f0, 0x8d8(r29)
/* 802238B8 00220818  D0 1D 08 DC */	stfs f0, 0x8dc(r29)
/* 802238BC 0022081C  D0 1D 08 E0 */	stfs f0, 0x8e0(r29)
/* 802238C0 00220820  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 802238C4 00220824  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 802238C8 00220828  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 802238CC 0022082C  4B DE 13 ED */	bl string_l__4rstlFPCc
/* 802238D0 00220830  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 802238D4 00220834  38 7D 08 F0 */	addi r3, r29, 0x8f0
/* 802238D8 00220838  C0 22 B4 64 */	lfs f1, lbl_805AD184@sda21(r2)
/* 802238DC 0022083C  38 A1 01 40 */	addi r5, r1, 0x140
/* 802238E0 00220840  80 84 00 10 */	lwz r4, 0x10(r4)
/* 802238E4 00220844  38 C0 00 00 */	li r6, 0
/* 802238E8 00220848  C0 42 B4 50 */	lfs f2, lbl_805AD170@sda21(r2)
/* 802238EC 0022084C  4B F5 20 CD */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 802238F0 00220850  38 61 01 40 */	addi r3, r1, 0x140
/* 802238F4 00220854  48 11 A1 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802238F8 00220858  38 00 00 00 */	li r0, 0
/* 802238FC 0022085C  7F A4 EB 78 */	mr r4, r29
/* 80223900 00220860  90 1D 09 28 */	stw r0, 0x928(r29)
/* 80223904 00220864  3B 3D 00 68 */	addi r25, r29, 0x68
/* 80223908 00220868  38 61 01 50 */	addi r3, r1, 0x150
/* 8022390C 0022086C  4B EF 70 21 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80223910 00220870  3B 5D 09 30 */	addi r26, r29, 0x930
/* 80223914 00220874  7F 24 CB 78 */	mr r4, r25
/* 80223918 00220878  7F 43 D3 78 */	mr r3, r26
/* 8022391C 0022087C  48 0A BF 99 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 80223920 00220880  3C 80 80 3F */	lis r4, lbl_803ECAD0@ha
/* 80223924 00220884  38 7D 09 58 */	addi r3, r29, 0x958
/* 80223928 00220888  38 04 CA D0 */	addi r0, r4, lbl_803ECAD0@l
/* 8022392C 0022088C  38 BF 00 0C */	addi r5, r31, 0xc
/* 80223930 00220890  90 1A 00 00 */	stw r0, 0(r26)
/* 80223934 00220894  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 80223938 00220898  D0 1A 00 10 */	stfs f0, 0x10(r26)
/* 8022393C 0022089C  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 80223940 002208A0  D0 1A 00 14 */	stfs f0, 0x14(r26)
/* 80223944 002208A4  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 80223948 002208A8  D0 1A 00 18 */	stfs f0, 0x18(r26)
/* 8022394C 002208AC  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 80223950 002208B0  D0 1A 00 1C */	stfs f0, 0x1c(r26)
/* 80223954 002208B4  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 80223958 002208B8  D0 1A 00 20 */	stfs f0, 0x20(r26)
/* 8022395C 002208BC  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 80223960 002208C0  D0 1A 00 24 */	stfs f0, 0x24(r26)
/* 80223964 002208C4  80 9F 00 08 */	lwz r4, 8(r31)
/* 80223968 002208C8  4B FF 87 41 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 8022396C 002208CC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80223970 002208D0  3B 20 00 00 */	li r25, 0
/* 80223974 002208D4  3B 40 00 00 */	li r26, 0
/* 80223978 002208D8  B0 1D 09 80 */	sth r0, 0x980(r29)
/* 8022397C 002208DC  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80223980 002208E0  3C 04 00 01 */	addis r0, r4, 1
/* 80223984 002208E4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80223988 002208E8  41 82 00 3C */	beq lbl_802239C4
/* 8022398C 002208EC  3C 60 57 50 */	lis r3, 0x57505343@ha
/* 80223990 002208F0  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 80223994 002208F4  38 03 53 43 */	addi r0, r3, 0x57505343@l
/* 80223998 002208F8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8022399C 002208FC  90 01 00 DC */	stw r0, 0xdc(r1)
/* 802239A0 00220900  38 61 00 D4 */	addi r3, r1, 0xd4
/* 802239A4 00220904  38 A1 00 DC */	addi r5, r1, 0xdc
/* 802239A8 00220908  81 84 00 00 */	lwz r12, 0(r4)
/* 802239AC 0022090C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802239B0 00220910  7D 89 03 A6 */	mtctr r12
/* 802239B4 00220914  4E 80 04 21 */	bctrl
/* 802239B8 00220918  38 81 00 D4 */	addi r4, r1, 0xd4
/* 802239BC 0022091C  3B 20 00 01 */	li r25, 1
/* 802239C0 00220920  48 00 00 30 */	b lbl_802239F0
lbl_802239C4:
/* 802239C4 00220924  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 802239C8 00220928  3C 60 80 3D */	lis r3, lbl_803D31D0@ha
/* 802239CC 0022092C  38 A3 31 D0 */	addi r5, r3, lbl_803D31D0@l
/* 802239D0 00220930  38 61 00 CC */	addi r3, r1, 0xcc
/* 802239D4 00220934  81 84 00 00 */	lwz r12, 0(r4)
/* 802239D8 00220938  38 A5 00 6B */	addi r5, r5, 0x6b
/* 802239DC 0022093C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802239E0 00220940  7D 89 03 A6 */	mtctr r12
/* 802239E4 00220944  4E 80 04 21 */	bctrl
/* 802239E8 00220948  3B 40 00 01 */	li r26, 1
/* 802239EC 0022094C  38 81 00 CC */	addi r4, r1, 0xcc
lbl_802239F0:
/* 802239F0 00220950  38 7D 09 84 */	addi r3, r29, 0x984
/* 802239F4 00220954  48 11 D4 B5 */	bl __ct__6CTokenFRC6CToken
/* 802239F8 00220958  7F 40 07 75 */	extsb. r0, r26
/* 802239FC 0022095C  41 82 00 10 */	beq lbl_80223A0C
/* 80223A00 00220960  38 61 00 CC */	addi r3, r1, 0xcc
/* 80223A04 00220964  38 80 FF FF */	li r4, -1
/* 80223A08 00220968  48 11 D4 39 */	bl __dt__6CTokenFv
lbl_80223A0C:
/* 80223A0C 0022096C  7F 20 07 75 */	extsb. r0, r25
/* 80223A10 00220970  41 82 00 10 */	beq lbl_80223A20
/* 80223A14 00220974  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80223A18 00220978  38 80 FF FF */	li r4, -1
/* 80223A1C 0022097C  48 11 D4 25 */	bl __dt__6CTokenFv
lbl_80223A20:
/* 80223A20 00220980  80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 80223A24 00220984  3C 60 80 3D */	lis r3, lbl_803D31D0@ha
/* 80223A28 00220988  80 BE 00 60 */	lwz r5, 0x60(r30)
/* 80223A2C 0022098C  38 63 31 D0 */	addi r3, r3, lbl_803D31D0@l
/* 80223A30 00220990  38 C0 00 FF */	li r6, 0xff
/* 80223A34 00220994  38 00 00 00 */	li r0, 0
/* 80223A38 00220998  90 9D 09 8C */	stw r4, 0x98c(r29)
/* 80223A3C 0022099C  38 83 00 2D */	addi r4, r3, 0x2d
/* 80223A40 002209A0  3B 80 00 00 */	li r28, 0
/* 80223A44 002209A4  3B 60 00 00 */	li r27, 0
/* 80223A48 002209A8  90 BD 09 90 */	stw r5, 0x990(r29)
/* 80223A4C 002209AC  3B 40 00 00 */	li r26, 0
/* 80223A50 002209B0  3B 20 00 00 */	li r25, 0
/* 80223A54 002209B4  38 60 00 3C */	li r3, 0x3c
/* 80223A58 002209B8  81 1E 00 64 */	lwz r8, 0x64(r30)
/* 80223A5C 002209BC  38 A0 00 00 */	li r5, 0
/* 80223A60 002209C0  80 FE 00 68 */	lwz r7, 0x68(r30)
/* 80223A64 002209C4  91 1D 09 94 */	stw r8, 0x994(r29)
/* 80223A68 002209C8  90 FD 09 98 */	stw r7, 0x998(r29)
/* 80223A6C 002209CC  81 1E 00 6C */	lwz r8, 0x6c(r30)
/* 80223A70 002209D0  80 FE 00 70 */	lwz r7, 0x70(r30)
/* 80223A74 002209D4  91 1D 09 9C */	stw r8, 0x99c(r29)
/* 80223A78 002209D8  90 FD 09 A0 */	stw r7, 0x9a0(r29)
/* 80223A7C 002209DC  81 1E 00 74 */	lwz r8, 0x74(r30)
/* 80223A80 002209E0  80 FE 00 78 */	lwz r7, 0x78(r30)
/* 80223A84 002209E4  91 1D 09 A4 */	stw r8, 0x9a4(r29)
/* 80223A88 002209E8  90 FD 09 A8 */	stw r7, 0x9a8(r29)
/* 80223A8C 002209EC  81 1E 00 7C */	lwz r8, 0x7c(r30)
/* 80223A90 002209F0  80 FE 00 80 */	lwz r7, 0x80(r30)
/* 80223A94 002209F4  91 1D 09 AC */	stw r8, 0x9ac(r29)
/* 80223A98 002209F8  90 FD 09 B0 */	stw r7, 0x9b0(r29)
/* 80223A9C 002209FC  81 1E 00 84 */	lwz r8, 0x84(r30)
/* 80223AA0 00220A00  80 FE 00 88 */	lwz r7, 0x88(r30)
/* 80223AA4 00220A04  91 1D 09 B4 */	stw r8, 0x9b4(r29)
/* 80223AA8 00220A08  90 FD 09 B8 */	stw r7, 0x9b8(r29)
/* 80223AAC 00220A0C  81 1E 00 8C */	lwz r8, 0x8c(r30)
/* 80223AB0 00220A10  80 FE 00 90 */	lwz r7, 0x90(r30)
/* 80223AB4 00220A14  91 1D 09 BC */	stw r8, 0x9bc(r29)
/* 80223AB8 00220A18  90 FD 09 C0 */	stw r7, 0x9c0(r29)
/* 80223ABC 00220A1C  80 FE 00 94 */	lwz r7, 0x94(r30)
/* 80223AC0 00220A20  90 FD 09 C4 */	stw r7, 0x9c4(r29)
/* 80223AC4 00220A24  81 1E 00 98 */	lwz r8, 0x98(r30)
/* 80223AC8 00220A28  80 FE 00 9C */	lwz r7, 0x9c(r30)
/* 80223ACC 00220A2C  91 1D 09 C8 */	stw r8, 0x9c8(r29)
/* 80223AD0 00220A30  90 FD 09 CC */	stw r7, 0x9cc(r29)
/* 80223AD4 00220A34  81 1E 00 A0 */	lwz r8, 0xa0(r30)
/* 80223AD8 00220A38  80 FE 00 A4 */	lwz r7, 0xa4(r30)
/* 80223ADC 00220A3C  91 1D 09 D0 */	stw r8, 0x9d0(r29)
/* 80223AE0 00220A40  90 FD 09 D4 */	stw r7, 0x9d4(r29)
/* 80223AE4 00220A44  81 1E 00 A8 */	lwz r8, 0xa8(r30)
/* 80223AE8 00220A48  80 FE 00 AC */	lwz r7, 0xac(r30)
/* 80223AEC 00220A4C  91 1D 09 D8 */	stw r8, 0x9d8(r29)
/* 80223AF0 00220A50  90 FD 09 DC */	stw r7, 0x9dc(r29)
/* 80223AF4 00220A54  81 1E 00 B0 */	lwz r8, 0xb0(r30)
/* 80223AF8 00220A58  80 FE 00 B4 */	lwz r7, 0xb4(r30)
/* 80223AFC 00220A5C  91 1D 09 E0 */	stw r8, 0x9e0(r29)
/* 80223B00 00220A60  90 FD 09 E4 */	stw r7, 0x9e4(r29)
/* 80223B04 00220A64  80 FE 00 B8 */	lwz r7, 0xb8(r30)
/* 80223B08 00220A68  90 FD 09 E8 */	stw r7, 0x9e8(r29)
/* 80223B0C 00220A6C  80 FE 00 BC */	lwz r7, 0xbc(r30)
/* 80223B10 00220A70  90 FD 09 EC */	stw r7, 0x9ec(r29)
/* 80223B14 00220A74  80 FE 00 C0 */	lwz r7, 0xc0(r30)
/* 80223B18 00220A78  90 FD 09 F0 */	stw r7, 0x9f0(r29)
/* 80223B1C 00220A7C  98 DD 09 F4 */	stb r6, 0x9f4(r29)
/* 80223B20 00220A80  A0 CD A3 8C */	lhz r6, kInvalidUniqueId@sda21(r13)
/* 80223B24 00220A84  B0 DD 09 F6 */	sth r6, 0x9f6(r29)
/* 80223B28 00220A88  90 1D 09 F8 */	stw r0, 0x9f8(r29)
/* 80223B2C 00220A8C  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80223B30 00220A90  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 80223B34 00220A94  90 1D 0A 04 */	stw r0, 0xa04(r29)
/* 80223B38 00220A98  48 0F 1D 35 */	bl __nw__FUlPCcPCc
/* 80223B3C 00220A9C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80223B40 00220AA0  41 82 00 DC */	beq lbl_80223C1C
/* 80223B44 00220AA4  80 DF 01 38 */	lwz r6, 0x138(r31)
/* 80223B48 00220AA8  3C 60 43 4D */	lis r3, 0x434D444C@ha
/* 80223B4C 00220AAC  38 03 44 4C */	addi r0, r3, 0x434D444C@l
/* 80223B50 00220AB0  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80223B54 00220AB4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80223B58 00220AB8  38 61 00 AC */	addi r3, r1, 0xac
/* 80223B5C 00220ABC  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 80223B60 00220AC0  90 C1 00 B8 */	stw r6, 0xb8(r1)
/* 80223B64 00220AC4  81 84 00 00 */	lwz r12, 0(r4)
/* 80223B68 00220AC8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80223B6C 00220ACC  7D 89 03 A6 */	mtctr r12
/* 80223B70 00220AD0  4E 80 04 21 */	bctrl
/* 80223B74 00220AD4  3B 21 01 28 */	addi r25, r1, 0x128
/* 80223B78 00220AD8  38 81 00 AC */	addi r4, r1, 0xac
/* 80223B7C 00220ADC  7F 23 CB 78 */	mr r3, r25
/* 80223B80 00220AE0  3B 40 00 01 */	li r26, 1
/* 80223B84 00220AE4  48 11 D3 25 */	bl __ct__6CTokenFRC6CToken
/* 80223B88 00220AE8  7F 23 CB 78 */	mr r3, r25
/* 80223B8C 00220AEC  48 11 D2 81 */	bl GetObj__6CTokenFv
/* 80223B90 00220AF0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80223B94 00220AF4  3C 60 43 53 */	lis r3, 0x43534B52@ha
/* 80223B98 00220AF8  38 03 4B 52 */	addi r0, r3, 0x43534B52@l
/* 80223B9C 00220AFC  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80223BA0 00220B00  90 A1 01 30 */	stw r5, 0x130(r1)
/* 80223BA4 00220B04  38 61 00 BC */	addi r3, r1, 0xbc
/* 80223BA8 00220B08  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 80223BAC 00220B0C  3B 20 00 01 */	li r25, 1
/* 80223BB0 00220B10  80 DF 01 3C */	lwz r6, 0x13c(r31)
/* 80223BB4 00220B14  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80223BB8 00220B18  90 C1 00 C8 */	stw r6, 0xc8(r1)
/* 80223BBC 00220B1C  81 84 00 00 */	lwz r12, 0(r4)
/* 80223BC0 00220B20  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80223BC4 00220B24  7D 89 03 A6 */	mtctr r12
/* 80223BC8 00220B28  4E 80 04 21 */	bctrl
/* 80223BCC 00220B2C  3B 61 01 34 */	addi r27, r1, 0x134
/* 80223BD0 00220B30  38 81 00 BC */	addi r4, r1, 0xbc
/* 80223BD4 00220B34  7F 63 DB 78 */	mr r3, r27
/* 80223BD8 00220B38  3B 80 00 01 */	li r28, 1
/* 80223BDC 00220B3C  48 11 D2 CD */	bl __ct__6CTokenFRC6CToken
/* 80223BE0 00220B40  7F 63 DB 78 */	mr r3, r27
/* 80223BE4 00220B44  48 11 D2 29 */	bl GetObj__6CTokenFv
/* 80223BE8 00220B48  80 03 00 04 */	lwz r0, 4(r3)
/* 80223BEC 00220B4C  7F 65 DB 78 */	mr r5, r27
/* 80223BF0 00220B50  7F C3 F3 78 */	mr r3, r30
/* 80223BF4 00220B54  38 81 01 28 */	addi r4, r1, 0x128
/* 80223BF8 00220B58  90 01 01 3C */	stw r0, 0x13c(r1)
/* 80223BFC 00220B5C  3B 60 00 01 */	li r27, 1
/* 80223C00 00220B60  38 E0 00 01 */	li r7, 1
/* 80223C04 00220B64  80 DD 00 64 */	lwz r6, 0x64(r29)
/* 80223C08 00220B68  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 80223C0C 00220B6C  80 C6 00 E0 */	lwz r6, 0xe0(r6)
/* 80223C10 00220B70  38 C6 00 1C */	addi r6, r6, 0x1c
/* 80223C14 00220B74  48 12 F8 25 */	bl "__ct__13CSkinnedModelFRC21TLockedToken<6CModel>RC26TLockedToken<10CSkinRules>RC31TLockedToken<15CCharLayoutInfo>Q213CSkinnedModel14EDataOwnership"
/* 80223C18 00220B78  7C 7E 1B 78 */	mr r30, r3
lbl_80223C1C:
/* 80223C1C 00220B7C  3B 01 01 1C */	addi r24, r1, 0x11c
/* 80223C20 00220B80  7F C4 F3 78 */	mr r4, r30
/* 80223C24 00220B84  38 61 00 24 */	addi r3, r1, 0x24
/* 80223C28 00220B88  4B F3 6F 91 */	bl sub_8015abb8
/* 80223C2C 00220B8C  38 00 00 00 */	li r0, 0
/* 80223C30 00220B90  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80223C34 00220B94  98 01 00 24 */	stb r0, 0x24(r1)
/* 80223C38 00220B98  7F 03 C3 78 */	mr r3, r24
/* 80223C3C 00220B9C  48 11 D2 C9 */	bl __ct__6CTokenFP4IObj
/* 80223C40 00220BA0  88 01 00 24 */	lbz r0, 0x24(r1)
/* 80223C44 00220BA4  28 00 00 00 */	cmplwi r0, 0
/* 80223C48 00220BA8  41 82 00 24 */	beq lbl_80223C6C
/* 80223C4C 00220BAC  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80223C50 00220BB0  28 03 00 00 */	cmplwi r3, 0
/* 80223C54 00220BB4  41 82 00 18 */	beq lbl_80223C6C
/* 80223C58 00220BB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80223C5C 00220BBC  38 80 00 01 */	li r4, 1
/* 80223C60 00220BC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80223C64 00220BC4  7D 89 03 A6 */	mtctr r12
/* 80223C68 00220BC8  4E 80 04 21 */	bctrl
lbl_80223C6C:
/* 80223C6C 00220BCC  93 C1 01 24 */	stw r30, 0x124(r1)
/* 80223C70 00220BD0  7F 03 C3 78 */	mr r3, r24
/* 80223C74 00220BD4  48 11 D1 11 */	bl Lock__6CTokenFv
/* 80223C78 00220BD8  3B 1D 0A 08 */	addi r24, r29, 0xa08
/* 80223C7C 00220BDC  38 81 01 1C */	addi r4, r1, 0x11c
/* 80223C80 00220BE0  7F 03 C3 78 */	mr r3, r24
/* 80223C84 00220BE4  48 11 D2 25 */	bl __ct__6CTokenFRC6CToken
/* 80223C88 00220BE8  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80223C8C 00220BEC  7F 03 C3 78 */	mr r3, r24
/* 80223C90 00220BF0  90 18 00 08 */	stw r0, 8(r24)
/* 80223C94 00220BF4  48 11 D0 F1 */	bl Lock__6CTokenFv
/* 80223C98 00220BF8  38 61 01 1C */	addi r3, r1, 0x11c
/* 80223C9C 00220BFC  38 80 00 00 */	li r4, 0
/* 80223CA0 00220C00  48 11 D1 A1 */	bl __dt__6CTokenFv
/* 80223CA4 00220C04  7F 20 07 75 */	extsb. r0, r25
/* 80223CA8 00220C08  41 82 00 10 */	beq lbl_80223CB8
/* 80223CAC 00220C0C  38 61 01 28 */	addi r3, r1, 0x128
/* 80223CB0 00220C10  38 80 00 00 */	li r4, 0
/* 80223CB4 00220C14  48 11 D1 8D */	bl __dt__6CTokenFv
lbl_80223CB8:
/* 80223CB8 00220C18  7F 40 07 75 */	extsb. r0, r26
/* 80223CBC 00220C1C  41 82 00 10 */	beq lbl_80223CCC
/* 80223CC0 00220C20  38 61 00 AC */	addi r3, r1, 0xac
/* 80223CC4 00220C24  38 80 FF FF */	li r4, -1
/* 80223CC8 00220C28  48 11 D1 79 */	bl __dt__6CTokenFv
lbl_80223CCC:
/* 80223CCC 00220C2C  7F 60 07 75 */	extsb. r0, r27
/* 80223CD0 00220C30  41 82 00 10 */	beq lbl_80223CE0
/* 80223CD4 00220C34  38 61 01 34 */	addi r3, r1, 0x134
/* 80223CD8 00220C38  38 80 00 00 */	li r4, 0
/* 80223CDC 00220C3C  48 11 D1 65 */	bl __dt__6CTokenFv
lbl_80223CE0:
/* 80223CE0 00220C40  7F 80 07 75 */	extsb. r0, r28
/* 80223CE4 00220C44  41 82 00 10 */	beq lbl_80223CF4
/* 80223CE8 00220C48  38 61 00 BC */	addi r3, r1, 0xbc
/* 80223CEC 00220C4C  38 80 FF FF */	li r4, -1
/* 80223CF0 00220C50  48 11 D1 51 */	bl __dt__6CTokenFv
lbl_80223CF4:
/* 80223CF4 00220C54  80 DF 01 4C */	lwz r6, 0x14c(r31)
/* 80223CF8 00220C58  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80223CFC 00220C5C  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80223D00 00220C60  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80223D04 00220C64  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80223D08 00220C68  38 61 00 9C */	addi r3, r1, 0x9c
/* 80223D0C 00220C6C  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80223D10 00220C70  90 C1 00 A8 */	stw r6, 0xa8(r1)
/* 80223D14 00220C74  81 84 00 00 */	lwz r12, 0(r4)
/* 80223D18 00220C78  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80223D1C 00220C7C  7D 89 03 A6 */	mtctr r12
/* 80223D20 00220C80  4E 80 04 21 */	bctrl
/* 80223D24 00220C84  3B 1D 0A 14 */	addi r24, r29, 0xa14
/* 80223D28 00220C88  38 81 00 9C */	addi r4, r1, 0x9c
/* 80223D2C 00220C8C  7F 03 C3 78 */	mr r3, r24
/* 80223D30 00220C90  48 11 D1 79 */	bl __ct__6CTokenFRC6CToken
/* 80223D34 00220C94  7F 03 C3 78 */	mr r3, r24
/* 80223D38 00220C98  48 11 D0 D5 */	bl GetObj__6CTokenFv
/* 80223D3C 00220C9C  80 03 00 04 */	lwz r0, 4(r3)
/* 80223D40 00220CA0  38 61 00 9C */	addi r3, r1, 0x9c
/* 80223D44 00220CA4  38 80 FF FF */	li r4, -1
/* 80223D48 00220CA8  90 18 00 08 */	stw r0, 8(r24)
/* 80223D4C 00220CAC  48 11 D0 F5 */	bl __dt__6CTokenFv
/* 80223D50 00220CB0  80 DF 01 50 */	lwz r6, 0x150(r31)
/* 80223D54 00220CB4  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80223D58 00220CB8  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80223D5C 00220CBC  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80223D60 00220CC0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80223D64 00220CC4  38 61 00 8C */	addi r3, r1, 0x8c
/* 80223D68 00220CC8  38 A1 00 94 */	addi r5, r1, 0x94
/* 80223D6C 00220CCC  90 C1 00 98 */	stw r6, 0x98(r1)
/* 80223D70 00220CD0  81 84 00 00 */	lwz r12, 0(r4)
/* 80223D74 00220CD4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80223D78 00220CD8  7D 89 03 A6 */	mtctr r12
/* 80223D7C 00220CDC  4E 80 04 21 */	bctrl
/* 80223D80 00220CE0  3B 1D 0A 20 */	addi r24, r29, 0xa20
/* 80223D84 00220CE4  38 81 00 8C */	addi r4, r1, 0x8c
/* 80223D88 00220CE8  7F 03 C3 78 */	mr r3, r24
/* 80223D8C 00220CEC  48 11 D1 1D */	bl __ct__6CTokenFRC6CToken
/* 80223D90 00220CF0  7F 03 C3 78 */	mr r3, r24
/* 80223D94 00220CF4  48 11 D0 79 */	bl GetObj__6CTokenFv
/* 80223D98 00220CF8  80 03 00 04 */	lwz r0, 4(r3)
/* 80223D9C 00220CFC  38 61 00 8C */	addi r3, r1, 0x8c
/* 80223DA0 00220D00  38 80 FF FF */	li r4, -1
/* 80223DA4 00220D04  90 18 00 08 */	stw r0, 8(r24)
/* 80223DA8 00220D08  48 11 D0 99 */	bl __dt__6CTokenFv
/* 80223DAC 00220D0C  80 DF 01 54 */	lwz r6, 0x154(r31)
/* 80223DB0 00220D10  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80223DB4 00220D14  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80223DB8 00220D18  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80223DBC 00220D1C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80223DC0 00220D20  38 61 00 7C */	addi r3, r1, 0x7c
/* 80223DC4 00220D24  38 A1 00 84 */	addi r5, r1, 0x84
/* 80223DC8 00220D28  90 C1 00 88 */	stw r6, 0x88(r1)
/* 80223DCC 00220D2C  81 84 00 00 */	lwz r12, 0(r4)
/* 80223DD0 00220D30  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80223DD4 00220D34  7D 89 03 A6 */	mtctr r12
/* 80223DD8 00220D38  4E 80 04 21 */	bctrl
/* 80223DDC 00220D3C  3B 1D 0A 2C */	addi r24, r29, 0xa2c
/* 80223DE0 00220D40  38 81 00 7C */	addi r4, r1, 0x7c
/* 80223DE4 00220D44  7F 03 C3 78 */	mr r3, r24
/* 80223DE8 00220D48  48 11 D0 C1 */	bl __ct__6CTokenFRC6CToken
/* 80223DEC 00220D4C  7F 03 C3 78 */	mr r3, r24
/* 80223DF0 00220D50  48 11 D0 1D */	bl GetObj__6CTokenFv
/* 80223DF4 00220D54  80 03 00 04 */	lwz r0, 4(r3)
/* 80223DF8 00220D58  38 61 00 7C */	addi r3, r1, 0x7c
/* 80223DFC 00220D5C  38 80 FF FF */	li r4, -1
/* 80223E00 00220D60  90 18 00 08 */	stw r0, 8(r24)
/* 80223E04 00220D64  48 11 D0 3D */	bl __dt__6CTokenFv
/* 80223E08 00220D68  80 9F 01 48 */	lwz r4, 0x148(r31)
/* 80223E0C 00220D6C  3B 20 00 00 */	li r25, 0
/* 80223E10 00220D70  3B 40 00 00 */	li r26, 0
/* 80223E14 00220D74  3B 00 00 00 */	li r24, 0
/* 80223E18 00220D78  3C 04 00 01 */	addis r0, r4, 1
/* 80223E1C 00220D7C  3B 60 00 00 */	li r27, 0
/* 80223E20 00220D80  28 00 FF FF */	cmplwi r0, 0xffff
/* 80223E24 00220D84  41 82 00 90 */	beq lbl_80223EB4
/* 80223E28 00220D88  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80223E2C 00220D8C  90 81 00 78 */	stw r4, 0x78(r1)
/* 80223E30 00220D90  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80223E34 00220D94  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80223E38 00220D98  90 01 00 74 */	stw r0, 0x74(r1)
/* 80223E3C 00220D9C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80223E40 00220DA0  38 A1 00 74 */	addi r5, r1, 0x74
/* 80223E44 00220DA4  81 84 00 00 */	lwz r12, 0(r4)
/* 80223E48 00220DA8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80223E4C 00220DAC  7D 89 03 A6 */	mtctr r12
/* 80223E50 00220DB0  4E 80 04 21 */	bctrl
/* 80223E54 00220DB4  3B 01 01 10 */	addi r24, r1, 0x110
/* 80223E58 00220DB8  38 81 00 6C */	addi r4, r1, 0x6c
/* 80223E5C 00220DBC  7F 03 C3 78 */	mr r3, r24
/* 80223E60 00220DC0  3B 20 00 01 */	li r25, 1
/* 80223E64 00220DC4  48 11 D0 45 */	bl __ct__6CTokenFRC6CToken
/* 80223E68 00220DC8  7F 03 C3 78 */	mr r3, r24
/* 80223E6C 00220DCC  48 11 CF A1 */	bl GetObj__6CTokenFv
/* 80223E70 00220DD0  80 63 00 04 */	lwz r3, 4(r3)
/* 80223E74 00220DD4  38 00 00 01 */	li r0, 1
/* 80223E78 00220DD8  37 81 01 00 */	addic. r28, r1, 0x100
/* 80223E7C 00220DDC  3B 40 00 01 */	li r26, 1
/* 80223E80 00220DE0  90 61 01 18 */	stw r3, 0x118(r1)
/* 80223E84 00220DE4  98 01 01 0C */	stb r0, 0x10c(r1)
/* 80223E88 00220DE8  41 82 00 20 */	beq lbl_80223EA8
/* 80223E8C 00220DEC  7F 83 E3 78 */	mr r3, r28
/* 80223E90 00220DF0  7F 04 C3 78 */	mr r4, r24
/* 80223E94 00220DF4  48 11 D0 15 */	bl __ct__6CTokenFRC6CToken
/* 80223E98 00220DF8  80 01 01 18 */	lwz r0, 0x118(r1)
/* 80223E9C 00220DFC  7F 83 E3 78 */	mr r3, r28
/* 80223EA0 00220E00  90 1C 00 08 */	stw r0, 8(r28)
/* 80223EA4 00220E04  48 11 CE E1 */	bl Lock__6CTokenFv
lbl_80223EA8:
/* 80223EA8 00220E08  3B 81 01 00 */	addi r28, r1, 0x100
/* 80223EAC 00220E0C  3B 00 00 01 */	li r24, 1
/* 80223EB0 00220E10  48 00 00 14 */	b lbl_80223EC4
lbl_80223EB4:
/* 80223EB4 00220E14  38 00 00 00 */	li r0, 0
/* 80223EB8 00220E18  3B 81 00 F0 */	addi r28, r1, 0xf0
/* 80223EBC 00220E1C  98 01 00 FC */	stb r0, 0xfc(r1)
/* 80223EC0 00220E20  3B 60 00 01 */	li r27, 1
lbl_80223EC4:
/* 80223EC4 00220E24  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 80223EC8 00220E28  98 1D 0A 44 */	stb r0, 0xa44(r29)
/* 80223ECC 00220E2C  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 80223ED0 00220E30  28 00 00 00 */	cmplwi r0, 0
/* 80223ED4 00220E34  41 82 00 28 */	beq lbl_80223EFC
/* 80223ED8 00220E38  37 DD 0A 38 */	addic. r30, r29, 0xa38
/* 80223EDC 00220E3C  41 82 00 20 */	beq lbl_80223EFC
/* 80223EE0 00220E40  7F C3 F3 78 */	mr r3, r30
/* 80223EE4 00220E44  7F 84 E3 78 */	mr r4, r28
/* 80223EE8 00220E48  48 11 CF C1 */	bl __ct__6CTokenFRC6CToken
/* 80223EEC 00220E4C  80 1C 00 08 */	lwz r0, 8(r28)
/* 80223EF0 00220E50  7F C3 F3 78 */	mr r3, r30
/* 80223EF4 00220E54  90 1E 00 08 */	stw r0, 8(r30)
/* 80223EF8 00220E58  48 11 CE 8D */	bl Lock__6CTokenFv
lbl_80223EFC:
/* 80223EFC 00220E5C  7F 60 07 75 */	extsb. r0, r27
/* 80223F00 00220E60  41 82 00 30 */	beq lbl_80223F30
/* 80223F04 00220E64  88 01 00 FC */	lbz r0, 0xfc(r1)
/* 80223F08 00220E68  28 00 00 00 */	cmplwi r0, 0
/* 80223F0C 00220E6C  41 82 00 1C */	beq lbl_80223F28
/* 80223F10 00220E70  34 61 00 F0 */	addic. r3, r1, 0xf0
/* 80223F14 00220E74  41 82 00 14 */	beq lbl_80223F28
/* 80223F18 00220E78  28 03 00 00 */	cmplwi r3, 0
/* 80223F1C 00220E7C  41 82 00 0C */	beq lbl_80223F28
/* 80223F20 00220E80  38 80 00 00 */	li r4, 0
/* 80223F24 00220E84  48 11 CF 1D */	bl __dt__6CTokenFv
lbl_80223F28:
/* 80223F28 00220E88  38 00 00 00 */	li r0, 0
/* 80223F2C 00220E8C  98 01 00 FC */	stb r0, 0xfc(r1)
lbl_80223F30:
/* 80223F30 00220E90  7F 00 07 75 */	extsb. r0, r24
/* 80223F34 00220E94  41 82 00 30 */	beq lbl_80223F64
/* 80223F38 00220E98  88 01 01 0C */	lbz r0, 0x10c(r1)
/* 80223F3C 00220E9C  28 00 00 00 */	cmplwi r0, 0
/* 80223F40 00220EA0  41 82 00 1C */	beq lbl_80223F5C
/* 80223F44 00220EA4  34 61 01 00 */	addic. r3, r1, 0x100
/* 80223F48 00220EA8  41 82 00 14 */	beq lbl_80223F5C
/* 80223F4C 00220EAC  28 03 00 00 */	cmplwi r3, 0
/* 80223F50 00220EB0  41 82 00 0C */	beq lbl_80223F5C
/* 80223F54 00220EB4  38 80 00 00 */	li r4, 0
/* 80223F58 00220EB8  48 11 CE E9 */	bl __dt__6CTokenFv
lbl_80223F5C:
/* 80223F5C 00220EBC  38 00 00 00 */	li r0, 0
/* 80223F60 00220EC0  98 01 01 0C */	stb r0, 0x10c(r1)
lbl_80223F64:
/* 80223F64 00220EC4  7F 40 07 75 */	extsb. r0, r26
/* 80223F68 00220EC8  41 82 00 10 */	beq lbl_80223F78
/* 80223F6C 00220ECC  38 61 01 10 */	addi r3, r1, 0x110
/* 80223F70 00220ED0  38 80 00 00 */	li r4, 0
/* 80223F74 00220ED4  48 11 CE CD */	bl __dt__6CTokenFv
lbl_80223F78:
/* 80223F78 00220ED8  7F 20 07 75 */	extsb. r0, r25
/* 80223F7C 00220EDC  41 82 00 10 */	beq lbl_80223F8C
/* 80223F80 00220EE0  38 61 00 6C */	addi r3, r1, 0x6c
/* 80223F84 00220EE4  38 80 FF FF */	li r4, -1
/* 80223F88 00220EE8  48 11 CE B9 */	bl __dt__6CTokenFv
lbl_80223F8C:
/* 80223F8C 00220EEC  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80223F90 00220EF0  38 A0 00 00 */	li r5, 0
/* 80223F94 00220EF4  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80223F98 00220EF8  38 80 00 01 */	li r4, 1
/* 80223F9C 00220EFC  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 80223FA0 00220F00  38 7D 09 58 */	addi r3, r29, 0x958
/* 80223FA4 00220F04  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80223FA8 00220F08  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80223FAC 00220F0C  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 80223FB0 00220F10  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80223FB4 00220F14  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80223FB8 00220F18  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 80223FBC 00220F1C  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80223FC0 00220F20  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 80223FC4 00220F24  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 80223FC8 00220F28  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80223FCC 00220F2C  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80223FD0 00220F30  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 80223FD4 00220F34  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80223FD8 00220F38  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80223FDC 00220F3C  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 80223FE0 00220F40  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80223FE4 00220F44  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 80223FE8 00220F48  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 80223FEC 00220F4C  88 1D 0A 48 */	lbz r0, 0xa48(r29)
/* 80223FF0 00220F50  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80223FF4 00220F54  98 1D 0A 48 */	stb r0, 0xa48(r29)
/* 80223FF8 00220F58  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80223FFC 00220F5C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80224000 00220F60  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 80224004 00220F64  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80224008 00220F68  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8022400C 00220F6C  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 80224010 00220F70  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80224014 00220F74  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80224018 00220F78  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 8022401C 00220F7C  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80224020 00220F80  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 80224024 00220F84  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 80224028 00220F88  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 8022402C 00220F8C  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80224030 00220F90  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 80224034 00220F94  88 1D 0A 49 */	lbz r0, 0xa49(r29)
/* 80224038 00220F98  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8022403C 00220F9C  98 1D 0A 49 */	stb r0, 0xa49(r29)
/* 80224040 00220FA0  48 11 CD 45 */	bl Lock__6CTokenFv
/* 80224044 00220FA4  7F A3 EB 78 */	mr r3, r29
/* 80224048 00220FA8  4B FF B7 A1 */	bl sub_8021f7e8
/* 8022404C 00220FAC  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 80224050 00220FB0  38 A0 00 00 */	li r5, 0
/* 80224054 00220FB4  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80224058 00220FB8  38 80 00 01 */	li r4, 1
/* 8022405C 00220FBC  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 80224060 00220FC0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80224064 00220FC4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80224068 00220FC8  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8022406C 00220FCC  98 1D 04 E2 */	stb r0, 0x4e2(r29)
/* 80224070 00220FD0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80224074 00220FD4  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80224078 00220FD8  98 1D 04 E2 */	stb r0, 0x4e2(r29)
/* 8022407C 00220FDC  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 80224080 00220FE0  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80224084 00220FE4  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 80224088 00220FE8  48 0B EF F5 */	bl NoParameter__12CPASAnimParmFv
/* 8022408C 00220FEC  38 61 00 34 */	addi r3, r1, 0x34
/* 80224090 00220FF0  48 0B EF ED */	bl NoParameter__12CPASAnimParmFv
/* 80224094 00220FF4  38 61 00 3C */	addi r3, r1, 0x3c
/* 80224098 00220FF8  48 0B EF E5 */	bl NoParameter__12CPASAnimParmFv
/* 8022409C 00220FFC  38 61 00 44 */	addi r3, r1, 0x44
/* 802240A0 00221000  48 0B EF DD */	bl NoParameter__12CPASAnimParmFv
/* 802240A4 00221004  38 61 00 4C */	addi r3, r1, 0x4c
/* 802240A8 00221008  48 0B EF D5 */	bl NoParameter__12CPASAnimParmFv
/* 802240AC 0022100C  38 61 00 54 */	addi r3, r1, 0x54
/* 802240B0 00221010  48 0B EF CD */	bl NoParameter__12CPASAnimParmFv
/* 802240B4 00221014  38 61 00 5C */	addi r3, r1, 0x5c
/* 802240B8 00221018  38 80 00 00 */	li r4, 0
/* 802240BC 0022101C  48 0B EE C9 */	bl FromEnum__12CPASAnimParmFi
/* 802240C0 00221020  38 61 00 64 */	addi r3, r1, 0x64
/* 802240C4 00221024  38 80 00 01 */	li r4, 1
/* 802240C8 00221028  48 0B EE BD */	bl FromEnum__12CPASAnimParmFi
/* 802240CC 0022102C  38 61 00 34 */	addi r3, r1, 0x34
/* 802240D0 00221030  38 01 00 2C */	addi r0, r1, 0x2c
/* 802240D4 00221034  90 61 00 08 */	stw r3, 8(r1)
/* 802240D8 00221038  38 61 01 68 */	addi r3, r1, 0x168
/* 802240DC 0022103C  38 A1 00 64 */	addi r5, r1, 0x64
/* 802240E0 00221040  38 C1 00 5C */	addi r6, r1, 0x5c
/* 802240E4 00221044  90 01 00 0C */	stw r0, 0xc(r1)
/* 802240E8 00221048  38 E1 00 54 */	addi r7, r1, 0x54
/* 802240EC 0022104C  39 01 00 4C */	addi r8, r1, 0x4c
/* 802240F0 00221050  39 21 00 44 */	addi r9, r1, 0x44
/* 802240F4 00221054  39 41 00 3C */	addi r10, r1, 0x3c
/* 802240F8 00221058  38 80 00 03 */	li r4, 3
/* 802240FC 0022105C  4B E5 91 C9 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 80224100 00221060  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80224104 00221064  7F A3 EB 78 */	mr r3, r29
/* 80224108 00221068  38 81 01 68 */	addi r4, r1, 0x168
/* 8022410C 0022106C  C0 45 00 00 */	lfs f2, 0(r5)
/* 80224110 00221070  C0 25 00 04 */	lfs f1, 4(r5)
/* 80224114 00221074  C0 05 00 08 */	lfs f0, 8(r5)
/* 80224118 00221078  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 8022411C 0022107C  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 80224120 00221080  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80224124 00221084  4B E5 88 DD */	bl func_8007CA00
/* 80224128 00221088  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8022412C 0022108C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80224130 00221090  D0 1D 08 D4 */	stfs f0, 0x8d4(r29)
/* 80224134 00221094  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80224138 00221098  83 5D 0A 10 */	lwz r26, 0xa10(r29)
/* 8022413C 0022109C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80224140 002210A0  38 7A 00 1C */	addi r3, r26, 0x1c
/* 80224144 002210A4  80 84 00 E0 */	lwz r4, 0xe0(r4)
/* 80224148 002210A8  3B 24 00 1C */	addi r25, r4, 0x1c
/* 8022414C 002210AC  7F 24 CB 78 */	mr r4, r25
/* 80224150 002210B0  48 11 CB 75 */	bl __as__6CTokenFRC6CToken
/* 80224154 002210B4  80 19 00 08 */	lwz r0, 8(r25)
/* 80224158 002210B8  7F A3 EB 78 */	mr r3, r29
/* 8022415C 002210BC  90 1A 00 24 */	stw r0, 0x24(r26)
/* 80224160 002210C0  4B E5 37 35 */	bl MakeThermalColdAndHot__10CPatternedFv
/* 80224164 002210C4  34 A1 01 6C */	addic. r5, r1, 0x16c
/* 80224168 002210C8  41 82 00 58 */	beq lbl_802241C0
/* 8022416C 002210CC  80 C5 00 00 */	lwz r6, 0(r5)
/* 80224170 002210D0  38 60 00 00 */	li r3, 0
/* 80224174 002210D4  2C 06 00 00 */	cmpwi r6, 0
/* 80224178 002210D8  40 81 00 40 */	ble lbl_802241B8
/* 8022417C 002210DC  2C 06 00 08 */	cmpwi r6, 8
/* 80224180 002210E0  38 86 FF F8 */	addi r4, r6, -8
/* 80224184 002210E4  40 81 00 20 */	ble lbl_802241A4
/* 80224188 002210E8  38 04 00 07 */	addi r0, r4, 7
/* 8022418C 002210EC  54 00 E8 FE */	srwi r0, r0, 3
/* 80224190 002210F0  7C 09 03 A6 */	mtctr r0
/* 80224194 002210F4  2C 04 00 00 */	cmpwi r4, 0
/* 80224198 002210F8  40 81 00 0C */	ble lbl_802241A4
lbl_8022419C:
/* 8022419C 002210FC  38 63 00 08 */	addi r3, r3, 8
/* 802241A0 00221100  42 00 FF FC */	bdnz lbl_8022419C
lbl_802241A4:
/* 802241A4 00221104  7C 03 30 50 */	subf r0, r3, r6
/* 802241A8 00221108  7C 09 03 A6 */	mtctr r0
/* 802241AC 0022110C  7C 03 30 00 */	cmpw r3, r6
/* 802241B0 00221110  40 80 00 08 */	bge lbl_802241B8
lbl_802241B4:
/* 802241B4 00221114  42 00 00 00 */	bdnz lbl_802241B4
lbl_802241B8:
/* 802241B8 00221118  38 00 00 00 */	li r0, 0
/* 802241BC 0022111C  90 05 00 00 */	stw r0, 0(r5)
lbl_802241C0:
/* 802241C0 00221120  7F A3 EB 78 */	mr r3, r29
/* 802241C4 00221124  BB 01 01 B0 */	lmw r24, 0x1b0(r1)
/* 802241C8 00221128  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 802241CC 0022112C  7C 08 03 A6 */	mtlr r0
/* 802241D0 00221130  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 802241D4 00221134  4E 80 00 20 */	blr

.global __ct__13CBabygothDataFRC13CBabygothData
__ct__13CBabygothDataFRC13CBabygothData:
/* 802241D8 00221138  C0 04 00 00 */	lfs f0, 0(r4)
/* 802241DC 0022113C  D0 03 00 00 */	stfs f0, 0(r3)
/* 802241E0 00221140  C0 04 00 04 */	lfs f0, 4(r4)
/* 802241E4 00221144  D0 03 00 04 */	stfs f0, 4(r3)
/* 802241E8 00221148  80 04 00 08 */	lwz r0, 8(r4)
/* 802241EC 0022114C  90 03 00 08 */	stw r0, 8(r3)
/* 802241F0 00221150  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802241F4 00221154  90 03 00 0C */	stw r0, 0xc(r3)
/* 802241F8 00221158  88 04 00 10 */	lbz r0, 0x10(r4)
/* 802241FC 0022115C  98 03 00 10 */	stb r0, 0x10(r3)
/* 80224200 00221160  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80224204 00221164  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80224208 00221168  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8022420C 0022116C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80224210 00221170  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80224214 00221174  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80224218 00221178  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8022421C 0022117C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80224220 00221180  88 04 00 24 */	lbz r0, 0x24(r4)
/* 80224224 00221184  98 03 00 24 */	stb r0, 0x24(r3)
/* 80224228 00221188  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8022422C 0022118C  90 03 00 28 */	stw r0, 0x28(r3)
/* 80224230 00221190  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 80224234 00221194  98 03 00 2C */	stb r0, 0x2c(r3)
/* 80224238 00221198  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 8022423C 0022119C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80224240 002211A0  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 80224244 002211A4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80224248 002211A8  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 8022424C 002211AC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80224250 002211B0  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80224254 002211B4  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80224258 002211B8  88 04 00 40 */	lbz r0, 0x40(r4)
/* 8022425C 002211BC  98 03 00 40 */	stb r0, 0x40(r3)
/* 80224260 002211C0  80 04 00 44 */	lwz r0, 0x44(r4)
/* 80224264 002211C4  90 03 00 44 */	stw r0, 0x44(r3)
/* 80224268 002211C8  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8022426C 002211CC  90 03 00 48 */	stw r0, 0x48(r3)
/* 80224270 002211D0  80 04 00 4C */	lwz r0, 0x4c(r4)
/* 80224274 002211D4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80224278 002211D8  88 04 00 50 */	lbz r0, 0x50(r4)
/* 8022427C 002211DC  98 03 00 50 */	stb r0, 0x50(r3)
/* 80224280 002211E0  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 80224284 002211E4  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 80224288 002211E8  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 8022428C 002211EC  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80224290 002211F0  C0 04 00 5C */	lfs f0, 0x5c(r4)
/* 80224294 002211F4  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80224298 002211F8  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 8022429C 002211FC  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 802242A0 00221200  88 04 00 64 */	lbz r0, 0x64(r4)
/* 802242A4 00221204  98 03 00 64 */	stb r0, 0x64(r3)
/* 802242A8 00221208  80 A4 00 68 */	lwz r5, 0x68(r4)
/* 802242AC 0022120C  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 802242B0 00221210  90 A3 00 68 */	stw r5, 0x68(r3)
/* 802242B4 00221214  90 03 00 6C */	stw r0, 0x6c(r3)
/* 802242B8 00221218  80 A4 00 70 */	lwz r5, 0x70(r4)
/* 802242BC 0022121C  80 04 00 74 */	lwz r0, 0x74(r4)
/* 802242C0 00221220  90 A3 00 70 */	stw r5, 0x70(r3)
/* 802242C4 00221224  90 03 00 74 */	stw r0, 0x74(r3)
/* 802242C8 00221228  80 A4 00 78 */	lwz r5, 0x78(r4)
/* 802242CC 0022122C  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 802242D0 00221230  90 A3 00 78 */	stw r5, 0x78(r3)
/* 802242D4 00221234  90 03 00 7C */	stw r0, 0x7c(r3)
/* 802242D8 00221238  80 A4 00 80 */	lwz r5, 0x80(r4)
/* 802242DC 0022123C  80 04 00 84 */	lwz r0, 0x84(r4)
/* 802242E0 00221240  90 A3 00 80 */	stw r5, 0x80(r3)
/* 802242E4 00221244  90 03 00 84 */	stw r0, 0x84(r3)
/* 802242E8 00221248  80 A4 00 88 */	lwz r5, 0x88(r4)
/* 802242EC 0022124C  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 802242F0 00221250  90 A3 00 88 */	stw r5, 0x88(r3)
/* 802242F4 00221254  90 03 00 8C */	stw r0, 0x8c(r3)
/* 802242F8 00221258  80 A4 00 90 */	lwz r5, 0x90(r4)
/* 802242FC 0022125C  80 04 00 94 */	lwz r0, 0x94(r4)
/* 80224300 00221260  90 A3 00 90 */	stw r5, 0x90(r3)
/* 80224304 00221264  90 03 00 94 */	stw r0, 0x94(r3)
/* 80224308 00221268  80 A4 00 98 */	lwz r5, 0x98(r4)
/* 8022430C 0022126C  80 04 00 9C */	lwz r0, 0x9c(r4)
/* 80224310 00221270  90 A3 00 98 */	stw r5, 0x98(r3)
/* 80224314 00221274  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80224318 00221278  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8022431C 0022127C  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 80224320 00221280  80 A4 00 A4 */	lwz r5, 0xa4(r4)
/* 80224324 00221284  80 04 00 A8 */	lwz r0, 0xa8(r4)
/* 80224328 00221288  90 A3 00 A4 */	stw r5, 0xa4(r3)
/* 8022432C 0022128C  90 03 00 A8 */	stw r0, 0xa8(r3)
/* 80224330 00221290  80 A4 00 AC */	lwz r5, 0xac(r4)
/* 80224334 00221294  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 80224338 00221298  90 A3 00 AC */	stw r5, 0xac(r3)
/* 8022433C 0022129C  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80224340 002212A0  80 A4 00 B4 */	lwz r5, 0xb4(r4)
/* 80224344 002212A4  80 04 00 B8 */	lwz r0, 0xb8(r4)
/* 80224348 002212A8  90 A3 00 B4 */	stw r5, 0xb4(r3)
/* 8022434C 002212AC  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 80224350 002212B0  80 A4 00 BC */	lwz r5, 0xbc(r4)
/* 80224354 002212B4  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 80224358 002212B8  90 A3 00 BC */	stw r5, 0xbc(r3)
/* 8022435C 002212BC  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80224360 002212C0  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 80224364 002212C4  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 80224368 002212C8  80 04 00 C8 */	lwz r0, 0xc8(r4)
/* 8022436C 002212CC  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 80224370 002212D0  80 04 00 CC */	lwz r0, 0xcc(r4)
/* 80224374 002212D4  90 03 00 CC */	stw r0, 0xcc(r3)
/* 80224378 002212D8  80 A4 00 D0 */	lwz r5, 0xd0(r4)
/* 8022437C 002212DC  80 04 00 D4 */	lwz r0, 0xd4(r4)
/* 80224380 002212E0  90 A3 00 D0 */	stw r5, 0xd0(r3)
/* 80224384 002212E4  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 80224388 002212E8  80 A4 00 D8 */	lwz r5, 0xd8(r4)
/* 8022438C 002212EC  80 04 00 DC */	lwz r0, 0xdc(r4)
/* 80224390 002212F0  90 A3 00 D8 */	stw r5, 0xd8(r3)
/* 80224394 002212F4  90 03 00 DC */	stw r0, 0xdc(r3)
/* 80224398 002212F8  80 A4 00 E0 */	lwz r5, 0xe0(r4)
/* 8022439C 002212FC  80 04 00 E4 */	lwz r0, 0xe4(r4)
/* 802243A0 00221300  90 A3 00 E0 */	stw r5, 0xe0(r3)
/* 802243A4 00221304  90 03 00 E4 */	stw r0, 0xe4(r3)
/* 802243A8 00221308  80 A4 00 E8 */	lwz r5, 0xe8(r4)
/* 802243AC 0022130C  80 04 00 EC */	lwz r0, 0xec(r4)
/* 802243B0 00221310  90 A3 00 E8 */	stw r5, 0xe8(r3)
/* 802243B4 00221314  90 03 00 EC */	stw r0, 0xec(r3)
/* 802243B8 00221318  80 A4 00 F0 */	lwz r5, 0xf0(r4)
/* 802243BC 0022131C  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 802243C0 00221320  90 A3 00 F0 */	stw r5, 0xf0(r3)
/* 802243C4 00221324  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 802243C8 00221328  80 A4 00 F8 */	lwz r5, 0xf8(r4)
/* 802243CC 0022132C  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 802243D0 00221330  90 A3 00 F8 */	stw r5, 0xf8(r3)
/* 802243D4 00221334  90 03 00 FC */	stw r0, 0xfc(r3)
/* 802243D8 00221338  80 A4 01 00 */	lwz r5, 0x100(r4)
/* 802243DC 0022133C  80 04 01 04 */	lwz r0, 0x104(r4)
/* 802243E0 00221340  90 A3 01 00 */	stw r5, 0x100(r3)
/* 802243E4 00221344  90 03 01 04 */	stw r0, 0x104(r3)
/* 802243E8 00221348  80 04 01 08 */	lwz r0, 0x108(r4)
/* 802243EC 0022134C  90 03 01 08 */	stw r0, 0x108(r3)
/* 802243F0 00221350  80 A4 01 0C */	lwz r5, 0x10c(r4)
/* 802243F4 00221354  80 04 01 10 */	lwz r0, 0x110(r4)
/* 802243F8 00221358  90 A3 01 0C */	stw r5, 0x10c(r3)
/* 802243FC 0022135C  90 03 01 10 */	stw r0, 0x110(r3)
/* 80224400 00221360  80 A4 01 14 */	lwz r5, 0x114(r4)
/* 80224404 00221364  80 04 01 18 */	lwz r0, 0x118(r4)
/* 80224408 00221368  90 A3 01 14 */	stw r5, 0x114(r3)
/* 8022440C 0022136C  90 03 01 18 */	stw r0, 0x118(r3)
/* 80224410 00221370  80 A4 01 1C */	lwz r5, 0x11c(r4)
/* 80224414 00221374  80 04 01 20 */	lwz r0, 0x120(r4)
/* 80224418 00221378  90 A3 01 1C */	stw r5, 0x11c(r3)
/* 8022441C 0022137C  90 03 01 20 */	stw r0, 0x120(r3)
/* 80224420 00221380  80 A4 01 24 */	lwz r5, 0x124(r4)
/* 80224424 00221384  80 04 01 28 */	lwz r0, 0x128(r4)
/* 80224428 00221388  90 A3 01 24 */	stw r5, 0x124(r3)
/* 8022442C 0022138C  90 03 01 28 */	stw r0, 0x128(r3)
/* 80224430 00221390  80 04 01 2C */	lwz r0, 0x12c(r4)
/* 80224434 00221394  90 03 01 2C */	stw r0, 0x12c(r3)
/* 80224438 00221398  80 04 01 30 */	lwz r0, 0x130(r4)
/* 8022443C 0022139C  90 03 01 30 */	stw r0, 0x130(r3)
/* 80224440 002213A0  80 04 01 34 */	lwz r0, 0x134(r4)
/* 80224444 002213A4  90 03 01 34 */	stw r0, 0x134(r3)
/* 80224448 002213A8  80 04 01 38 */	lwz r0, 0x138(r4)
/* 8022444C 002213AC  90 03 01 38 */	stw r0, 0x138(r3)
/* 80224450 002213B0  80 04 01 3C */	lwz r0, 0x13c(r4)
/* 80224454 002213B4  90 03 01 3C */	stw r0, 0x13c(r3)
/* 80224458 002213B8  C0 04 01 40 */	lfs f0, 0x140(r4)
/* 8022445C 002213BC  D0 03 01 40 */	stfs f0, 0x140(r3)
/* 80224460 002213C0  A0 04 01 44 */	lhz r0, 0x144(r4)
/* 80224464 002213C4  B0 03 01 44 */	sth r0, 0x144(r3)
/* 80224468 002213C8  80 04 01 48 */	lwz r0, 0x148(r4)
/* 8022446C 002213CC  90 03 01 48 */	stw r0, 0x148(r3)
/* 80224470 002213D0  80 04 01 4C */	lwz r0, 0x14c(r4)
/* 80224474 002213D4  90 03 01 4C */	stw r0, 0x14c(r3)
/* 80224478 002213D8  80 04 01 50 */	lwz r0, 0x150(r4)
/* 8022447C 002213DC  90 03 01 50 */	stw r0, 0x150(r3)
/* 80224480 002213E0  80 04 01 54 */	lwz r0, 0x154(r4)
/* 80224484 002213E4  90 03 01 54 */	stw r0, 0x154(r3)
/* 80224488 002213E8  A0 04 01 58 */	lhz r0, 0x158(r4)
/* 8022448C 002213EC  B0 03 01 58 */	sth r0, 0x158(r3)
/* 80224490 002213F0  A0 04 01 5A */	lhz r0, 0x15a(r4)
/* 80224494 002213F4  B0 03 01 5A */	sth r0, 0x15a(r3)
/* 80224498 002213F8  A0 04 01 5C */	lhz r0, 0x15c(r4)
/* 8022449C 002213FC  B0 03 01 5C */	sth r0, 0x15c(r3)
/* 802244A0 00221400  C0 04 01 60 */	lfs f0, 0x160(r4)
/* 802244A4 00221404  D0 03 01 60 */	stfs f0, 0x160(r3)
/* 802244A8 00221408  C0 04 01 64 */	lfs f0, 0x164(r4)
/* 802244AC 0022140C  D0 03 01 64 */	stfs f0, 0x164(r3)
/* 802244B0 00221410  C0 04 01 68 */	lfs f0, 0x168(r4)
/* 802244B4 00221414  D0 03 01 68 */	stfs f0, 0x168(r3)
/* 802244B8 00221418  80 04 01 6C */	lwz r0, 0x16c(r4)
/* 802244BC 0022141C  90 03 01 6C */	stw r0, 0x16c(r3)
/* 802244C0 00221420  A0 04 01 70 */	lhz r0, 0x170(r4)
/* 802244C4 00221424  B0 03 01 70 */	sth r0, 0x170(r3)
/* 802244C8 00221428  80 04 01 74 */	lwz r0, 0x174(r4)
/* 802244CC 0022142C  90 03 01 74 */	stw r0, 0x174(r3)
/* 802244D0 00221430  4E 80 00 20 */	blr

.global __ct__13CBabygothDataFR12CInputStream
__ct__13CBabygothDataFR12CInputStream:
/* 802244D4 00221434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802244D8 00221438  7C 08 02 A6 */	mflr r0
/* 802244DC 0022143C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802244E0 00221440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802244E4 00221444  7C 9F 23 78 */	mr r31, r4
/* 802244E8 00221448  93 C1 00 08 */	stw r30, 8(r1)
/* 802244EC 0022144C  7C 7E 1B 78 */	mr r30, r3
/* 802244F0 00221450  7F E3 FB 78 */	mr r3, r31
/* 802244F4 00221454  48 11 A7 35 */	bl ReadFloat__12CInputStreamFv
/* 802244F8 00221458  D0 3E 00 00 */	stfs f1, 0(r30)
/* 802244FC 0022145C  7F E3 FB 78 */	mr r3, r31
/* 80224500 00221460  48 11 A7 29 */	bl ReadFloat__12CInputStreamFv
/* 80224504 00221464  D0 3E 00 04 */	stfs f1, 4(r30)
/* 80224508 00221468  7F E3 FB 78 */	mr r3, r31
/* 8022450C 0022146C  48 11 A7 79 */	bl ReadLong__12CInputStreamFv
/* 80224510 00221470  90 7E 00 08 */	stw r3, 8(r30)
/* 80224514 00221474  7F E4 FB 78 */	mr r4, r31
/* 80224518 00221478  38 7E 00 0C */	addi r3, r30, 0xc
/* 8022451C 0022147C  4B E9 F0 45 */	bl __ct__11CDamageInfoFR12CInputStream
/* 80224520 00221480  7F E4 FB 78 */	mr r4, r31
/* 80224524 00221484  38 7E 00 28 */	addi r3, r30, 0x28
/* 80224528 00221488  4B E9 F0 39 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8022452C 0022148C  7F E3 FB 78 */	mr r3, r31
/* 80224530 00221490  48 11 A7 55 */	bl ReadLong__12CInputStreamFv
/* 80224534 00221494  90 7E 00 44 */	stw r3, 0x44(r30)
/* 80224538 00221498  7F E3 FB 78 */	mr r3, r31
/* 8022453C 0022149C  48 11 A7 49 */	bl ReadLong__12CInputStreamFv
/* 80224540 002214A0  90 7E 00 48 */	stw r3, 0x48(r30)
/* 80224544 002214A4  7F E4 FB 78 */	mr r4, r31
/* 80224548 002214A8  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8022454C 002214AC  4B E9 F0 15 */	bl __ct__11CDamageInfoFR12CInputStream
/* 80224550 002214B0  7F E4 FB 78 */	mr r4, r31
/* 80224554 002214B4  38 7E 00 68 */	addi r3, r30, 0x68
/* 80224558 002214B8  4B ED E6 01 */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 8022455C 002214BC  7F E4 FB 78 */	mr r4, r31
/* 80224560 002214C0  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 80224564 002214C4  4B ED E5 F5 */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 80224568 002214C8  7F E3 FB 78 */	mr r3, r31
/* 8022456C 002214CC  48 11 A7 19 */	bl ReadLong__12CInputStreamFv
/* 80224570 002214D0  90 7E 01 38 */	stw r3, 0x138(r30)
/* 80224574 002214D4  7F E3 FB 78 */	mr r3, r31
/* 80224578 002214D8  48 11 A7 0D */	bl ReadLong__12CInputStreamFv
/* 8022457C 002214DC  90 7E 01 3C */	stw r3, 0x13c(r30)
/* 80224580 002214E0  7F E3 FB 78 */	mr r3, r31
/* 80224584 002214E4  48 11 A6 A5 */	bl ReadFloat__12CInputStreamFv
/* 80224588 002214E8  D0 3E 01 40 */	stfs f1, 0x140(r30)
/* 8022458C 002214EC  7F E3 FB 78 */	mr r3, r31
/* 80224590 002214F0  48 11 A6 F5 */	bl ReadLong__12CInputStreamFv
/* 80224594 002214F4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80224598 002214F8  48 0C 44 19 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8022459C 002214FC  B0 7E 01 44 */	sth r3, 0x144(r30)
/* 802245A0 00221500  7F E3 FB 78 */	mr r3, r31
/* 802245A4 00221504  48 11 A6 E1 */	bl ReadLong__12CInputStreamFv
/* 802245A8 00221508  90 7E 01 48 */	stw r3, 0x148(r30)
/* 802245AC 0022150C  7F E3 FB 78 */	mr r3, r31
/* 802245B0 00221510  48 11 A6 D5 */	bl ReadLong__12CInputStreamFv
/* 802245B4 00221514  90 7E 01 4C */	stw r3, 0x14c(r30)
/* 802245B8 00221518  7F E3 FB 78 */	mr r3, r31
/* 802245BC 0022151C  48 11 A6 C9 */	bl ReadLong__12CInputStreamFv
/* 802245C0 00221520  90 7E 01 50 */	stw r3, 0x150(r30)
/* 802245C4 00221524  7F E3 FB 78 */	mr r3, r31
/* 802245C8 00221528  48 11 A6 BD */	bl ReadLong__12CInputStreamFv
/* 802245CC 0022152C  90 7E 01 54 */	stw r3, 0x154(r30)
/* 802245D0 00221530  7F E3 FB 78 */	mr r3, r31
/* 802245D4 00221534  48 11 A6 B1 */	bl ReadLong__12CInputStreamFv
/* 802245D8 00221538  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802245DC 0022153C  48 0C 43 D5 */	bl TranslateSFXID__11CSfxManagerFUs
/* 802245E0 00221540  B0 7E 01 58 */	sth r3, 0x158(r30)
/* 802245E4 00221544  7F E3 FB 78 */	mr r3, r31
/* 802245E8 00221548  48 11 A6 9D */	bl ReadLong__12CInputStreamFv
/* 802245EC 0022154C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802245F0 00221550  48 0C 43 C1 */	bl TranslateSFXID__11CSfxManagerFUs
/* 802245F4 00221554  B0 7E 01 5A */	sth r3, 0x15a(r30)
/* 802245F8 00221558  7F E3 FB 78 */	mr r3, r31
/* 802245FC 0022155C  48 11 A6 89 */	bl ReadLong__12CInputStreamFv
/* 80224600 00221560  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80224604 00221564  48 0C 43 AD */	bl TranslateSFXID__11CSfxManagerFUs
/* 80224608 00221568  B0 7E 01 5C */	sth r3, 0x15c(r30)
/* 8022460C 0022156C  7F E3 FB 78 */	mr r3, r31
/* 80224610 00221570  48 11 A6 19 */	bl ReadFloat__12CInputStreamFv
/* 80224614 00221574  D0 3E 01 60 */	stfs f1, 0x160(r30)
/* 80224618 00221578  7F E3 FB 78 */	mr r3, r31
/* 8022461C 0022157C  48 11 A6 0D */	bl ReadFloat__12CInputStreamFv
/* 80224620 00221580  D0 3E 01 64 */	stfs f1, 0x164(r30)
/* 80224624 00221584  7F E3 FB 78 */	mr r3, r31
/* 80224628 00221588  48 11 A6 01 */	bl ReadFloat__12CInputStreamFv
/* 8022462C 0022158C  D0 3E 01 68 */	stfs f1, 0x168(r30)
/* 80224630 00221590  7F E3 FB 78 */	mr r3, r31
/* 80224634 00221594  48 11 A6 51 */	bl ReadLong__12CInputStreamFv
/* 80224638 00221598  90 7E 01 6C */	stw r3, 0x16c(r30)
/* 8022463C 0022159C  7F E3 FB 78 */	mr r3, r31
/* 80224640 002215A0  48 11 A6 45 */	bl ReadLong__12CInputStreamFv
/* 80224644 002215A4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80224648 002215A8  48 0C 43 69 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8022464C 002215AC  B0 7E 01 70 */	sth r3, 0x170(r30)
/* 80224650 002215B0  7F E3 FB 78 */	mr r3, r31
/* 80224654 002215B4  48 11 A6 31 */	bl ReadLong__12CInputStreamFv
/* 80224658 002215B8  90 7E 01 74 */	stw r3, 0x174(r30)
/* 8022465C 002215BC  7F C3 F3 78 */	mr r3, r30
/* 80224660 002215C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224664 002215C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224668 002215C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8022466C 002215CC  7C 08 03 A6 */	mtlr r0
/* 80224670 002215D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80224674 002215D4  4E 80 00 20 */	blr

.global __sinit_CBabygoth_cpp
__sinit_CBabygoth_cpp:
/* 80224678 002215D8  C0 02 B4 68 */	lfs f0, lbl_805AD188@sda21(r2)
/* 8022467C 002215DC  3C 60 80 57 */	lis r3, lbl_80572128@ha
/* 80224680 002215E0  D4 03 21 28 */	stfsu f0, lbl_80572128@l(r3)
/* 80224684 002215E4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80224688 002215E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8022468C 002215EC  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD110
lbl_805AD110:
	# ROM: 0x3F99B0
	.4byte 0x00000021

.global lbl_805AD114
lbl_805AD114:
	# ROM: 0x3F99B4
	.4byte lbl_803D31DE

.global lbl_805AD118
lbl_805AD118:
	# ROM: 0x3F99B8
	.4byte lbl_803D31EC

.global lbl_805AD11C
lbl_805AD11C:
	# ROM: 0x3F99BC
	.4byte lbl_803D31F3

.global lbl_805AD120
lbl_805AD120:
	# ROM: 0x3F99C0
	.4byte 0x41200000

.global lbl_805AD124
lbl_805AD124:
	# ROM: 0x3F99C4
	.4byte 0

.global lbl_805AD128
lbl_805AD128:
	# ROM: 0x3F99C8
	.4byte 0x3F2AAAAB

.global lbl_805AD12C
lbl_805AD12C:
	# ROM: 0x3F99CC
	.float 0.33333334

.global lbl_805AD130
lbl_805AD130:
	# ROM: 0x3F99D0
	.float 0.5

.global lbl_805AD134
lbl_805AD134:
	# ROM: 0x3F99D4
	.float 15.0

.global lbl_805AD138
lbl_805AD138:
	# ROM: 0x3F99D8
	.float 1.0

.global lbl_805AD13C
lbl_805AD13C:
	# ROM: 0x3F99DC
	.4byte 0x3D800000

.global lbl_805AD140
lbl_805AD140:
	# ROM: 0x3F99E0
	.4byte 0x41A00000

.global lbl_805AD144
lbl_805AD144:
	# ROM: 0x3F99E4
	.float 2.0

.global lbl_805AD148
lbl_805AD148:
	# ROM: 0x3F99E8
	.float 0.6

.global lbl_805AD14C
lbl_805AD14C:
	# ROM: 0x3F99EC
	.float 0.9

.global lbl_805AD150
lbl_805AD150:
	# ROM: 0x3F99F0
	.4byte 0x447A0000

.global lbl_805AD154
lbl_805AD154:
	# ROM: 0x3F99F4
	.float 1.5

.global lbl_805AD158
lbl_805AD158:
	# ROM: 0x3F99F8
	.4byte 0xBFC00000

.global lbl_805AD15C
lbl_805AD15C:
	# ROM: 0x3F99FC
	.4byte 0x3EDF66F3

.global lbl_805AD160
lbl_805AD160:
	# ROM: 0x3F9A00
	.4byte 0x3DB2B8C2

.global lbl_805AD164
lbl_805AD164:
	# ROM: 0x3F9A04
	.4byte 0x41100000

.global lbl_805AD168
lbl_805AD168:
	# ROM: 0x3F9A08
	.float 0.7853982

.global lbl_805AD16C
lbl_805AD16C:
	# ROM: 0x3F9A0C
	.4byte 0x3F060A92

.global lbl_805AD170
lbl_805AD170:
	# ROM: 0x3F9A10
	.4byte 0x40490FDB
	.4byte 0

.global lbl_805AD178
lbl_805AD178:
	# ROM: 0x3F9A18
	.double 4.503601774854144E15

.global lbl_805AD180
lbl_805AD180:
	# ROM: 0x3F9A20
	.4byte 0x44C80000

.global lbl_805AD184
lbl_805AD184:
	# ROM: 0x3F9A24
	.4byte 0x3FB2B8C3

.global lbl_805AD188
lbl_805AD188:
	# ROM: 0x3F9A28
	.float 0.2
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D31A8
lbl_803D31A8:
	# ROM: 0x3D01A8
	.4byte lbl_803D31D0
	.4byte 0x3F99999A
	.4byte lbl_803D31D7
	.4byte 0x3F99999A
	.4byte lbl_803D31DE
	.4byte 0x3FD9999A
	.4byte lbl_803D31EC
	.4byte 0x3F99999A
	.4byte lbl_803D31F3
	.float 0.9

.global lbl_803D31D0
lbl_803D31D0:

	# ROM: 0x3D01D0
	.asciz "L_knee"

.global lbl_803D31D7
lbl_803D31D7:

	# ROM: 0x3D01D7
	.byte 0x52
	.asciz "_knee"

.global lbl_803D31DE
lbl_803D31DE:

	# ROM: 0x3D01DE
	.byte 0x4C, 0x43
	.asciz "TR_SHEMOUTH"

.global lbl_803D31EC
lbl_803D31EC:

	# ROM: 0x3D01EC
	.asciz "Pelvis"

.global lbl_803D31F3
lbl_803D31F3:

	# ROM: 0x3D01F3
	.byte 0x62
	.asciz "utt_LCTR"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "Babygoth Shell Crack Fx"
	.asciz "GetUp"
	.byte 0x49, 0x63
	.asciz "eSheegoth_Flame"
	.asciz "Head_1"
	.byte 0x46
	.asciz "lameThrower"

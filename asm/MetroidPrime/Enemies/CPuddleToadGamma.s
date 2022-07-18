.include "macros.inc"

.section .data

.global lbl_803E24E0
lbl_803E24E0:
	# ROM: 0x3DF4E0
	.4byte 0
	.4byte 0
	.4byte __dt__16CPuddleToadGammaFv
	.4byte Accept__16CPuddleToadGammaFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__16CPuddleToadGammaFfR13CStateManager
	.4byte AcceptScriptMsg__16CPuddleToadGammaF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__16CPuddleToadGammaCFv
	.4byte GetDamageVulnerability__16CPuddleToadGammaCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__16CPuddleToadGammaCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__16CPuddleToadGammaFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__16CPuddleToadGammaCFv
	.4byte GetPrimitiveTransform__16CPuddleToadGammaCFv
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
	.4byte Attack__16CPuddleToadGammaFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__16CPuddleToadGammaFR13CStateManager9EStateMsgf
	.4byte InActive__16CPuddleToadGammaFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__16CPuddleToadGammaFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__16CPuddleToadGammaFR13CStateManager9EStateMsgf
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
	.4byte InAttackPosition__16CPuddleToadGammaFR13CStateManagerf
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
	.4byte SpotPlayer__16CPuddleToadGammaFR13CStateManagerf
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
	.4byte ShouldAttack__16CPuddleToadGammaFR13CStateManagerf
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
	.4byte Inside__16CPuddleToadGammaFR13CStateManagerf
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
	.4byte LostInterest__16CPuddleToadGammaFR13CStateManagerf
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

.global lbl_805A77B8
lbl_805A77B8:
	# ROM: 0x3F5158
	.4byte 0x00000013

.global lbl_805A77BC
lbl_805A77BC:
	# ROM: 0x3F515C
	.4byte 0x803D0170

.global lbl_805A77C0
lbl_805A77C0:
	# ROM: 0x3F5160
	.4byte 0x803D017F

.global lbl_805A77C4
lbl_805A77C4:
	# ROM: 0x3F5164
	.4byte 0x00000013

.global lbl_805A77C8
lbl_805A77C8:
	# ROM: 0x3F5168
	.4byte 0x00000021

.global lbl_805A77CC
lbl_805A77CC:
	# ROM: 0x3F516C
	.4byte 0x00000020

.global lbl_805A77D0
lbl_805A77D0:
	# ROM: 0x3F5170
	.4byte 0x00000012

.global lbl_805A77D4
lbl_805A77D4:
	# ROM: 0x3F5174
	.4byte 0x00000024

.section .bss

.global lbl_8046C758
lbl_8046C758:
	.skip 0x18

.section .sbss

# CPuddleToadGamma
.global lbl_805A8FA0
lbl_805A8FA0:
	.skip 0x8

.section .text, "ax"

.global __dt__16CPuddleToadGammaFv
__dt__16CPuddleToadGammaFv:
/* 8014B420 00148380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014B424 00148384  7C 08 02 A6 */	mflr r0
.global lbl_8014B428
lbl_8014B428:
/* 8014B428 00148388  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014B42C 0014838C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014B430 00148390  7C 9F 23 78 */	mr r31, r4
/* 8014B434 00148394  93 C1 00 08 */	stw r30, 8(r1)
/* 8014B438 00148398  7C 7E 1B 79 */	or. r30, r3, r3
/* 8014B43C 0014839C  41 82 00 54 */	beq lbl_8014B490
/* 8014B440 001483A0  3C 60 80 3E */	lis r3, lbl_803E24E0@ha
/* 8014B444 001483A4  34 1E 05 E4 */	addic. r0, r30, 0x5e4
/* 8014B448 001483A8  38 03 24 E0 */	addi r0, r3, lbl_803E24E0@l
/* 8014B44C 001483AC  90 1E 00 00 */	stw r0, 0(r30)
/* 8014B450 001483B0  41 82 00 24 */	beq lbl_8014B474
/* 8014B454 001483B4  80 7E 05 E4 */	lwz r3, 0x5e4(r30)
/* 8014B458 001483B8  28 03 00 00 */	cmplwi r3, 0
/* 8014B45C 001483BC  41 82 00 18 */	beq lbl_8014B474
/* 8014B460 001483C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8014B464 001483C4  38 80 00 01 */	li r4, 1
/* 8014B468 001483C8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8014B46C 001483CC  7D 89 03 A6 */	mtctr r12
/* 8014B470 001483D0  4E 80 04 21 */	bctrl
lbl_8014B474:
/* 8014B474 001483D4  7F C3 F3 78 */	mr r3, r30
/* 8014B478 001483D8  38 80 00 00 */	li r4, 0
/* 8014B47C 001483DC  4B F2 C0 F5 */	bl __dt__10CPatternedFv
/* 8014B480 001483E0  7F E0 07 35 */	extsh. r0, r31
/* 8014B484 001483E4  40 81 00 0C */	ble lbl_8014B490
/* 8014B488 001483E8  7F C3 F3 78 */	mr r3, r30
/* 8014B48C 001483EC  48 1C A4 A5 */	bl Free__7CMemoryFPCv
lbl_8014B490:
/* 8014B490 001483F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014B494 001483F4  7F C3 F3 78 */	mr r3, r30
/* 8014B498 001483F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014B49C 001483FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014B4A0 00148400  7C 08 03 A6 */	mtlr r0
/* 8014B4A4 00148404  38 21 00 10 */	addi r1, r1, 0x10
/* 8014B4A8 00148408  4E 80 00 20 */	blr

.global GetPrimitiveTransform__16CPuddleToadGammaCFv
GetPrimitiveTransform__16CPuddleToadGammaCFv:
/* 8014B4AC 0014840C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8014B4B0 00148410  7C 08 02 A6 */	mflr r0
/* 8014B4B4 00148414  90 01 00 54 */	stw r0, 0x54(r1)
/* 8014B4B8 00148418  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8014B4BC 0014841C  7C 9F 23 78 */	mr r31, r4
/* 8014B4C0 00148420  38 9F 00 34 */	addi r4, r31, 0x34
/* 8014B4C4 00148424  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8014B4C8 00148428  7C 7E 1B 78 */	mr r30, r3
/* 8014B4CC 0014842C  38 61 00 14 */	addi r3, r1, 0x14
/* 8014B4D0 00148430  48 1C 76 A5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8014B4D4 00148434  7F E4 FB 78 */	mr r4, r31
/* 8014B4D8 00148438  38 61 00 08 */	addi r3, r1, 8
/* 8014B4DC 0014843C  4B FC F1 51 */	bl GetPrimitiveOffset__13CPhysicsActorCFv
/* 8014B4E0 00148440  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8014B4E4 00148444  7F C3 F3 78 */	mr r3, r30
/* 8014B4E8 00148448  C0 01 00 08 */	lfs f0, 8(r1)
/* 8014B4EC 0014844C  38 81 00 14 */	addi r4, r1, 0x14
/* 8014B4F0 00148450  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 8014B4F4 00148454  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8014B4F8 00148458  EC 81 00 2A */	fadds f4, f1, f0
/* 8014B4FC 0014845C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8014B500 00148460  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8014B504 00148464  EC 43 10 2A */	fadds f2, f3, f2
/* 8014B508 00148468  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8014B50C 0014846C  EC 01 00 2A */	fadds f0, f1, f0
/* 8014B510 00148470  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8014B514 00148474  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8014B518 00148478  48 1C 76 5D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8014B51C 0014847C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8014B520 00148480  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8014B524 00148484  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8014B528 00148488  7C 08 03 A6 */	mtlr r0
/* 8014B52C 0014848C  38 21 00 50 */	addi r1, r1, 0x50
/* 8014B530 00148490  4E 80 00 20 */	blr

.global GetCollisionPrimitive__16CPuddleToadGammaCFv
GetCollisionPrimitive__16CPuddleToadGammaCFv:
/* 8014B534 00148494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014B538 00148498  7C 08 02 A6 */	mflr r0
/* 8014B53C 0014849C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014B540 001484A0  80 03 05 E4 */	lwz r0, 0x5e4(r3)
/* 8014B544 001484A4  28 00 00 00 */	cmplwi r0, 0
/* 8014B548 001484A8  40 82 00 0C */	bne lbl_8014B554
/* 8014B54C 001484AC  4B FC F5 09 */	bl GetCollisionPrimitive__13CPhysicsActorCFv
/* 8014B550 001484B0  48 00 00 08 */	b lbl_8014B558
lbl_8014B554:
/* 8014B554 001484B4  7C 03 03 78 */	mr r3, r0
lbl_8014B558:
/* 8014B558 001484B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014B55C 001484BC  7C 08 03 A6 */	mtlr r0
/* 8014B560 001484C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8014B564 001484C4  4E 80 00 20 */	blr

.global GetTouchBounds__16CPuddleToadGammaCFv
GetTouchBounds__16CPuddleToadGammaCFv:
/* 8014B568 001484C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014B56C 001484CC  7C 08 02 A6 */	mflr r0
/* 8014B570 001484D0  7C 85 23 78 */	mr r5, r4
/* 8014B574 001484D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014B578 001484D8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8014B57C 001484DC  7C 7F 1B 78 */	mr r31, r3
/* 8014B580 001484E0  88 04 00 30 */	lbz r0, 0x30(r4)
/* 8014B584 001484E4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8014B588 001484E8  41 82 00 BC */	beq lbl_8014B644
/* 8014B58C 001484EC  80 05 05 E4 */	lwz r0, 0x5e4(r5)
/* 8014B590 001484F0  28 00 00 00 */	cmplwi r0, 0
/* 8014B594 001484F4  41 82 00 64 */	beq lbl_8014B5F8
/* 8014B598 001484F8  7C 04 03 78 */	mr r4, r0
/* 8014B59C 001484FC  38 61 00 20 */	addi r3, r1, 0x20
/* 8014B5A0 00148500  81 84 00 00 */	lwz r12, 0(r4)
/* 8014B5A4 00148504  38 A5 00 34 */	addi r5, r5, 0x34
/* 8014B5A8 00148508  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8014B5AC 0014850C  7D 89 03 A6 */	mtctr r12
/* 8014B5B0 00148510  4E 80 04 21 */	bctrl
/* 8014B5B4 00148514  38 00 00 01 */	li r0, 1
/* 8014B5B8 00148518  28 1F 00 00 */	cmplwi r31, 0
/* 8014B5BC 0014851C  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8014B5C0 00148520  41 82 00 8C */	beq lbl_8014B64C
/* 8014B5C4 00148524  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8014B5C8 00148528  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8014B5CC 0014852C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8014B5D0 00148530  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8014B5D4 00148534  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8014B5D8 00148538  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8014B5DC 0014853C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8014B5E0 00148540  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8014B5E4 00148544  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8014B5E8 00148548  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8014B5EC 0014854C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8014B5F0 00148550  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8014B5F4 00148554  48 00 00 58 */	b lbl_8014B64C
lbl_8014B5F8:
/* 8014B5F8 00148558  38 61 00 08 */	addi r3, r1, 8
/* 8014B5FC 0014855C  4B FC F3 31 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8014B600 00148560  38 00 00 01 */	li r0, 1
/* 8014B604 00148564  28 1F 00 00 */	cmplwi r31, 0
/* 8014B608 00148568  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8014B60C 0014856C  41 82 00 40 */	beq lbl_8014B64C
/* 8014B610 00148570  C0 01 00 08 */	lfs f0, 8(r1)
/* 8014B614 00148574  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8014B618 00148578  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8014B61C 0014857C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8014B620 00148580  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8014B624 00148584  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8014B628 00148588  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8014B62C 0014858C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8014B630 00148590  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8014B634 00148594  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8014B638 00148598  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8014B63C 0014859C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8014B640 001485A0  48 00 00 0C */	b lbl_8014B64C
lbl_8014B644:
/* 8014B644 001485A4  38 00 00 00 */	li r0, 0
/* 8014B648 001485A8  98 1F 00 18 */	stb r0, 0x18(r31)
lbl_8014B64C:
/* 8014B64C 001485AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8014B650 001485B0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8014B654 001485B4  7C 08 03 A6 */	mtlr r0
/* 8014B658 001485B8  38 21 00 40 */	addi r1, r1, 0x40
/* 8014B65C 001485BC  4E 80 00 20 */	blr

.global Attack__16CPuddleToadGammaFR13CStateManager9EStateMsgf
Attack__16CPuddleToadGammaFR13CStateManager9EStateMsgf:
/* 8014B660 001485C0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8014B664 001485C4  7C 08 02 A6 */	mflr r0
/* 8014B668 001485C8  2C 05 00 01 */	cmpwi r5, 1
/* 8014B66C 001485CC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8014B670 001485D0  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8014B674 001485D4  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8014B678 001485D8  7C 9E 23 78 */	mr r30, r4
/* 8014B67C 001485DC  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8014B680 001485E0  7C 7D 1B 78 */	mr r29, r3
/* 8014B684 001485E4  41 82 01 10 */	beq lbl_8014B794
/* 8014B688 001485E8  40 80 00 10 */	bge lbl_8014B698
/* 8014B68C 001485EC  2C 05 00 00 */	cmpwi r5, 0
/* 8014B690 001485F0  40 80 00 14 */	bge lbl_8014B6A4
/* 8014B694 001485F4  48 00 01 F8 */	b lbl_8014B88C
lbl_8014B698:
/* 8014B698 001485F8  2C 05 00 03 */	cmpwi r5, 3
/* 8014B69C 001485FC  40 80 01 F0 */	bge lbl_8014B88C
/* 8014B6A0 00148600  48 00 01 B8 */	b lbl_8014B858
lbl_8014B6A4:
/* 8014B6A4 00148604  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8014B6A8 00148608  4B FC FC D1 */	bl Stop__13CPhysicsActorFv
/* 8014B6AC 0014860C  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8014B6B0 00148610  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8014B6B4 00148614  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 8014B6B8 00148618  4B FC F5 E9 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8014B6BC 0014861C  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8014B6C0 00148620  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8014B6C4 00148624  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 8014B6C8 00148628  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8014B6CC 0014862C  39 05 AA 68 */	addi r8, r5, lbl_803DAA68@l
/* 8014B6D0 00148630  C0 44 00 00 */	lfs f2, 0(r4)
/* 8014B6D4 00148634  C0 24 00 04 */	lfs f1, 4(r4)
/* 8014B6D8 00148638  3C C0 80 3E */	lis r6, lbl_803DA9D8@ha
/* 8014B6DC 0014863C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8014B6E0 00148640  38 E0 00 05 */	li r7, 5
/* 8014B6E4 00148644  38 A0 00 01 */	li r5, 1
/* 8014B6E8 00148648  38 00 00 00 */	li r0, 0
/* 8014B6EC 0014864C  3B E3 00 04 */	addi r31, r3, 4
/* 8014B6F0 00148650  91 01 00 24 */	stw r8, 0x24(r1)
/* 8014B6F4 00148654  38 C6 A9 D8 */	addi r6, r6, lbl_803DA9D8@l
/* 8014B6F8 00148658  38 80 00 05 */	li r4, 5
/* 8014B6FC 0014865C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8014B700 00148660  7F E3 FB 78 */	mr r3, r31
/* 8014B704 00148664  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8014B708 00148668  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8014B70C 0014866C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8014B710 00148670  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8014B714 00148674  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8014B718 00148678  98 01 00 3C */	stb r0, 0x3c(r1)
/* 8014B71C 0014867C  4B FE 5D 1D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014B720 00148680  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8014B724 00148684  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8014B728 00148688  38 E3 A9 D8 */	addi r7, r3, lbl_803DA9D8@l
/* 8014B72C 0014868C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8014B730 00148690  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8014B734 00148694  38 A0 00 00 */	li r5, 0
/* 8014B738 00148698  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8014B73C 0014869C  38 C3 AA 68 */	addi r6, r3, lbl_803DAA68@l
/* 8014B740 001486A0  80 61 00 30 */	lwz r3, 0x30(r1)
/* 8014B744 001486A4  38 80 00 01 */	li r4, 1
/* 8014B748 001486A8  90 1F 01 14 */	stw r0, 0x114(r31)
/* 8014B74C 001486AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014B750 001486B0  90 7F 01 18 */	stw r3, 0x118(r31)
/* 8014B754 001486B4  80 61 00 38 */	lwz r3, 0x38(r1)
/* 8014B758 001486B8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8014B75C 001486BC  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 8014B760 001486C0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8014B764 001486C4  98 1F 01 24 */	stb r0, 0x124(r31)
/* 8014B768 001486C8  88 1D 05 E8 */	lbz r0, 0x5e8(r29)
/* 8014B76C 001486CC  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 8014B770 001486D0  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8014B774 001486D4  98 1D 05 E8 */	stb r0, 0x5e8(r29)
/* 8014B778 001486D8  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8014B77C 001486DC  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8014B780 001486E0  98 A3 05 90 */	stb r5, 0x590(r3)
/* 8014B784 001486E4  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8014B788 001486E8  80 63 07 68 */	lwz r3, 0x768(r3)
/* 8014B78C 001486EC  4B FA 38 05 */	bl SetBombJumpState__10CMorphBallFQ210CMorphBall14EBombJumpState
/* 8014B790 001486F0  48 00 00 FC */	b lbl_8014B88C
lbl_8014B794:
/* 8014B794 001486F4  88 1D 05 E8 */	lbz r0, 0x5e8(r29)
/* 8014B798 001486F8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8014B79C 001486FC  40 82 00 8C */	bne lbl_8014B828
/* 8014B7A0 00148700  80 8D 8C 00 */	lwz r4, lbl_805A77C0@sda21(r13)
/* 8014B7A4 00148704  38 61 00 14 */	addi r3, r1, 0x14
/* 8014B7A8 00148708  4B EB 95 11 */	bl string_l__4rstlFPCc
/* 8014B7AC 0014870C  7F A4 EB 78 */	mr r4, r29
/* 8014B7B0 00148710  38 61 00 40 */	addi r3, r1, 0x40
/* 8014B7B4 00148714  38 A1 00 14 */	addi r5, r1, 0x14
/* 8014B7B8 00148718  4B F2 D1 C1 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8014B7BC 0014871C  38 61 00 70 */	addi r3, r1, 0x70
/* 8014B7C0 00148720  38 81 00 40 */	addi r4, r1, 0x40
/* 8014B7C4 00148724  48 1C 73 B1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8014B7C8 00148728  38 61 00 14 */	addi r3, r1, 0x14
/* 8014B7CC 0014872C  48 1F 23 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8014B7D0 00148730  3C 80 80 57 */	lis r4, lbl_805719DC@ha
/* 8014B7D4 00148734  38 61 00 08 */	addi r3, r1, 8
/* 8014B7D8 00148738  38 A4 19 DC */	addi r5, r4, lbl_805719DC@l
/* 8014B7DC 0014873C  38 9D 00 34 */	addi r4, r29, 0x34
/* 8014B7E0 00148740  48 1C 72 A1 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8014B7E4 00148744  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8014B7E8 00148748  7F A3 EB 78 */	mr r3, r29
/* 8014B7EC 0014874C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8014B7F0 00148750  7F C4 F3 78 */	mr r4, r30
/* 8014B7F4 00148754  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 8014B7F8 00148758  38 BD 05 CC */	addi r5, r29, 0x5cc
/* 8014B7FC 0014875C  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8014B800 00148760  EC 01 00 2A */	fadds f0, f1, f0
/* 8014B804 00148764  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 8014B808 00148768  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8014B80C 0014876C  EC 64 18 2A */	fadds f3, f4, f3
/* 8014B810 00148770  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 8014B814 00148774  EC 02 08 2A */	fadds f0, f2, f1
/* 8014B818 00148778  D0 7D 05 D0 */	stfs f3, 0x5d0(r29)
/* 8014B81C 0014877C  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 8014B820 00148780  48 00 06 F1 */	bl sub_8014bf10
/* 8014B824 00148784  48 00 00 68 */	b lbl_8014B88C
lbl_8014B828:
/* 8014B828 00148788  81 83 00 00 */	lwz r12, 0(r3)
/* 8014B82C 0014878C  C0 22 9C F0 */	lfs f1, lbl_805ABA10@sda21(r2)
/* 8014B830 00148790  81 8C 02 74 */	lwz r12, 0x274(r12)
/* 8014B834 00148794  7D 89 03 A6 */	mtctr r12
/* 8014B838 00148798  4E 80 04 21 */	bctrl
/* 8014B83C 0014879C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014B840 001487A0  41 82 00 4C */	beq lbl_8014B88C
/* 8014B844 001487A4  7F A3 EB 78 */	mr r3, r29
/* 8014B848 001487A8  7F C4 F3 78 */	mr r4, r30
/* 8014B84C 001487AC  38 A0 00 01 */	li r5, 1
/* 8014B850 001487B0  48 00 0B 1D */	bl SetSolid__16CPuddleToadGammaFR13CStateManagerb
/* 8014B854 001487B4  48 00 00 38 */	b lbl_8014B88C
lbl_8014B858:
/* 8014B858 001487B8  38 A0 00 01 */	li r5, 1
/* 8014B85C 001487BC  48 00 0B 11 */	bl SetSolid__16CPuddleToadGammaFR13CStateManagerb
/* 8014B860 001487C0  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8014B864 001487C4  38 00 00 01 */	li r0, 1
/* 8014B868 001487C8  38 80 00 00 */	li r4, 0
/* 8014B86C 001487CC  98 03 05 90 */	stb r0, 0x590(r3)
/* 8014B870 001487D0  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8014B874 001487D4  80 63 07 68 */	lwz r3, 0x768(r3)
/* 8014B878 001487D8  4B FA 37 19 */	bl SetBombJumpState__10CMorphBallFQ210CMorphBall14EBombJumpState
/* 8014B87C 001487DC  88 1D 05 E8 */	lbz r0, 0x5e8(r29)
/* 8014B880 001487E0  38 60 00 00 */	li r3, 0
/* 8014B884 001487E4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8014B888 001487E8  98 1D 05 E8 */	stb r0, 0x5e8(r29)
lbl_8014B88C:
/* 8014B88C 001487EC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8014B890 001487F0  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8014B894 001487F4  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8014B898 001487F8  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 8014B89C 001487FC  7C 08 03 A6 */	mtlr r0
/* 8014B8A0 00148800  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8014B8A4 00148804  4E 80 00 20 */	blr

.global Crouch__16CPuddleToadGammaFR13CStateManager9EStateMsgf
Crouch__16CPuddleToadGammaFR13CStateManager9EStateMsgf:
/* 8014B8A8 00148808  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8014B8AC 0014880C  7C 08 02 A6 */	mflr r0
/* 8014B8B0 00148810  2C 05 00 01 */	cmpwi r5, 1
/* 8014B8B4 00148814  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8014B8B8 00148818  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8014B8BC 0014881C  7C 9F 23 78 */	mr r31, r4
/* 8014B8C0 00148820  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8014B8C4 00148824  7C 7E 1B 78 */	mr r30, r3
/* 8014B8C8 00148828  41 82 00 E0 */	beq lbl_8014B9A8
/* 8014B8CC 0014882C  40 80 00 10 */	bge lbl_8014B8DC
/* 8014B8D0 00148830  2C 05 00 00 */	cmpwi r5, 0
/* 8014B8D4 00148834  40 80 00 14 */	bge lbl_8014B8E8
/* 8014B8D8 00148838  48 00 01 CC */	b lbl_8014BAA4
lbl_8014B8DC:
/* 8014B8DC 0014883C  2C 05 00 03 */	cmpwi r5, 3
/* 8014B8E0 00148840  40 80 01 C4 */	bge lbl_8014BAA4
/* 8014B8E4 00148844  48 00 01 8C */	b lbl_8014BA70
lbl_8014B8E8:
/* 8014B8E8 00148848  38 00 00 00 */	li r0, 0
/* 8014B8EC 0014884C  C0 02 9C F0 */	lfs f0, lbl_805ABA10@sda21(r2)
/* 8014B8F0 00148850  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8014B8F4 00148854  38 60 00 01 */	li r3, 1
/* 8014B8F8 00148858  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 8014B8FC 0014885C  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 8014B900 00148860  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8014B904 00148864  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 8014B908 00148868  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 8014B90C 0014886C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8014B910 00148870  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 8014B914 00148874  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014B918 00148878  4B FC FA 61 */	bl Stop__13CPhysicsActorFv
/* 8014B91C 0014887C  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8014B920 00148880  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014B924 00148884  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 8014B928 00148888  4B FC F3 79 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8014B92C 0014888C  7F C3 F3 78 */	mr r3, r30
/* 8014B930 00148890  7F E5 FB 78 */	mr r5, r31
/* 8014B934 00148894  38 80 00 06 */	li r4, 6
/* 8014B938 00148898  38 C0 FF FF */	li r6, -1
/* 8014B93C 0014889C  4B F0 57 85 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8014B940 001488A0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8014B944 001488A4  38 81 00 0C */	addi r4, r1, 0xc
/* 8014B948 001488A8  38 A0 00 00 */	li r5, 0
/* 8014B94C 001488AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8014B950 001488B0  B0 01 00 08 */	sth r0, 8(r1)
/* 8014B954 001488B4  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014B958 001488B8  4B EC 90 79 */	bl AttachActorToPlayer__7CPlayerF9TUniqueId
/* 8014B95C 001488BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014B960 001488C0  40 82 00 0C */	bne lbl_8014B96C
/* 8014B964 001488C4  C0 02 9C F4 */	lfs f0, lbl_805ABA14@sda21(r2)
/* 8014B968 001488C8  D0 1E 05 6C */	stfs f0, 0x56c(r30)
lbl_8014B96C:
/* 8014B96C 001488CC  7F C3 F3 78 */	mr r3, r30
/* 8014B970 001488D0  7F E4 FB 78 */	mr r4, r31
/* 8014B974 001488D4  38 A0 00 00 */	li r5, 0
/* 8014B978 001488D8  48 00 09 F5 */	bl SetSolid__16CPuddleToadGammaFR13CStateManagerb
/* 8014B97C 001488DC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014B980 001488E0  38 00 00 00 */	li r0, 0
/* 8014B984 001488E4  98 03 05 90 */	stb r0, 0x590(r3)
/* 8014B988 001488E8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014B98C 001488EC  80 63 07 68 */	lwz r3, 0x768(r3)
/* 8014B990 001488F0  4B FA 5F 65 */	bl DisableHalfPipeStatus__10CMorphBallFv
/* 8014B994 001488F4  7F C3 F3 78 */	mr r3, r30
/* 8014B998 001488F8  7F E4 FB 78 */	mr r4, r31
/* 8014B99C 001488FC  38 A0 00 00 */	li r5, 0
/* 8014B9A0 00148900  48 00 09 CD */	bl SetSolid__16CPuddleToadGammaFR13CStateManagerb
/* 8014B9A4 00148904  48 00 01 00 */	b lbl_8014BAA4
lbl_8014B9A8:
/* 8014B9A8 00148908  80 8D 8C 00 */	lwz r4, lbl_805A77C0@sda21(r13)
/* 8014B9AC 0014890C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8014B9B0 00148910  4B EB 93 09 */	bl string_l__4rstlFPCc
/* 8014B9B4 00148914  7F C4 F3 78 */	mr r4, r30
/* 8014B9B8 00148918  38 61 00 2C */	addi r3, r1, 0x2c
/* 8014B9BC 0014891C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8014B9C0 00148920  4B F2 CF B9 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8014B9C4 00148924  38 61 00 5C */	addi r3, r1, 0x5c
/* 8014B9C8 00148928  38 81 00 2C */	addi r4, r1, 0x2c
/* 8014B9CC 0014892C  48 1C 71 A9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8014B9D0 00148930  38 61 00 1C */	addi r3, r1, 0x1c
/* 8014B9D4 00148934  48 1F 21 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8014B9D8 00148938  3C 80 80 57 */	lis r4, lbl_805719DC@ha
/* 8014B9DC 0014893C  38 61 00 10 */	addi r3, r1, 0x10
/* 8014B9E0 00148940  38 A4 19 DC */	addi r5, r4, lbl_805719DC@l
/* 8014B9E4 00148944  38 9E 00 34 */	addi r4, r30, 0x34
/* 8014B9E8 00148948  48 1C 70 99 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8014B9EC 0014894C  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8014B9F0 00148950  7F C3 F3 78 */	mr r3, r30
/* 8014B9F4 00148954  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8014B9F8 00148958  7F E4 FB 78 */	mr r4, r31
/* 8014B9FC 0014895C  C0 81 00 78 */	lfs f4, 0x78(r1)
/* 8014BA00 00148960  38 BE 05 CC */	addi r5, r30, 0x5cc
/* 8014BA04 00148964  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8014BA08 00148968  EC 01 00 2A */	fadds f0, f1, f0
/* 8014BA0C 0014896C  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 8014BA10 00148970  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8014BA14 00148974  EC 64 18 2A */	fadds f3, f4, f3
/* 8014BA18 00148978  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 8014BA1C 0014897C  EC 02 08 2A */	fadds f0, f2, f1
/* 8014BA20 00148980  D0 7E 05 D0 */	stfs f3, 0x5d0(r30)
/* 8014BA24 00148984  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 8014BA28 00148988  48 00 04 E9 */	bl sub_8014bf10
/* 8014BA2C 0014898C  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 8014BA30 00148990  2C 00 00 01 */	cmpwi r0, 1
/* 8014BA34 00148994  41 82 00 70 */	beq lbl_8014BAA4
/* 8014BA38 00148998  40 80 00 6C */	bge lbl_8014BAA4
/* 8014BA3C 0014899C  2C 00 00 00 */	cmpwi r0, 0
/* 8014BA40 001489A0  40 80 00 08 */	bge lbl_8014BA48
/* 8014BA44 001489A4  48 00 00 60 */	b lbl_8014BAA4
lbl_8014BA48:
/* 8014BA48 001489A8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8014BA4C 001489AC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8014BA50 001489B0  2C 00 00 05 */	cmpwi r0, 5
/* 8014BA54 001489B4  40 82 00 10 */	bne lbl_8014BA64
/* 8014BA58 001489B8  38 00 00 01 */	li r0, 1
/* 8014BA5C 001489BC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8014BA60 001489C0  48 00 00 44 */	b lbl_8014BAA4
lbl_8014BA64:
/* 8014BA64 001489C4  38 80 00 03 */	li r4, 3
/* 8014BA68 001489C8  4B FE EF 71 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8014BA6C 001489CC  48 00 00 38 */	b lbl_8014BAA4
lbl_8014BA70:
/* 8014BA70 001489D0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014BA74 001489D4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8014BA78 001489D8  A0 83 02 6C */	lhz r4, 0x26c(r3)
/* 8014BA7C 001489DC  7C 04 00 40 */	cmplw r4, r0
/* 8014BA80 001489E0  40 82 00 08 */	bne lbl_8014BA88
/* 8014BA84 001489E4  4B EC 8F 21 */	bl DetachActorFromPlayer__7CPlayerFv
lbl_8014BA88:
/* 8014BA88 001489E8  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8014BA8C 001489EC  38 00 00 01 */	li r0, 1
/* 8014BA90 001489F0  38 60 00 00 */	li r3, 0
/* 8014BA94 001489F4  98 04 05 90 */	stb r0, 0x590(r4)
/* 8014BA98 001489F8  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 8014BA9C 001489FC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8014BAA0 00148A00  98 1E 05 E8 */	stb r0, 0x5e8(r30)
lbl_8014BAA4:
/* 8014BAA4 00148A04  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8014BAA8 00148A08  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8014BAAC 00148A0C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8014BAB0 00148A10  7C 08 03 A6 */	mtlr r0
/* 8014BAB4 00148A14  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8014BAB8 00148A18  4E 80 00 20 */	blr

.global LostInterest__16CPuddleToadGammaFR13CStateManagerf
LostInterest__16CPuddleToadGammaFR13CStateManagerf:
/* 8014BABC 00148A1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8014BAC0 00148A20  7C 08 02 A6 */	mflr r0
/* 8014BAC4 00148A24  90 01 00 54 */	stw r0, 0x54(r1)
/* 8014BAC8 00148A28  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8014BACC 00148A2C  7C 9F 23 78 */	mr r31, r4
/* 8014BAD0 00148A30  7C 64 1B 78 */	mr r4, r3
/* 8014BAD4 00148A34  38 61 00 20 */	addi r3, r1, 0x20
/* 8014BAD8 00148A38  81 84 00 00 */	lwz r12, 0(r4)
/* 8014BADC 00148A3C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8014BAE0 00148A40  7D 89 03 A6 */	mtctr r12
/* 8014BAE4 00148A44  4E 80 04 21 */	bctrl
/* 8014BAE8 00148A48  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8014BAEC 00148A4C  38 61 00 08 */	addi r3, r1, 8
/* 8014BAF0 00148A50  4B FC EE 3D */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8014BAF4 00148A54  38 61 00 20 */	addi r3, r1, 0x20
/* 8014BAF8 00148A58  38 81 00 08 */	addi r4, r1, 8
/* 8014BAFC 00148A5C  48 1E C0 89 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 8014BB00 00148A60  38 00 00 00 */	li r0, 0
/* 8014BB04 00148A64  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8014BB08 00148A68  98 01 00 38 */	stb r0, 0x38(r1)
/* 8014BB0C 00148A6C  7C 63 00 34 */	cntlzw r3, r3
/* 8014BB10 00148A70  54 63 D9 7E */	srwi r3, r3, 5
/* 8014BB14 00148A74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8014BB18 00148A78  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8014BB1C 00148A7C  7C 08 03 A6 */	mtlr r0
/* 8014BB20 00148A80  38 21 00 50 */	addi r1, r1, 0x50
/* 8014BB24 00148A84  4E 80 00 20 */	blr

.global Suck__16CPuddleToadGammaFR13CStateManager9EStateMsgf
Suck__16CPuddleToadGammaFR13CStateManager9EStateMsgf:
/* 8014BB28 00148A88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014BB2C 00148A8C  7C 08 02 A6 */	mflr r0
/* 8014BB30 00148A90  2C 05 00 01 */	cmpwi r5, 1
/* 8014BB34 00148A94  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014BB38 00148A98  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8014BB3C 00148A9C  7C 9F 23 78 */	mr r31, r4
/* 8014BB40 00148AA0  41 82 00 4C */	beq lbl_8014BB8C
/* 8014BB44 00148AA4  40 80 00 10 */	bge lbl_8014BB54
/* 8014BB48 00148AA8  2C 05 00 00 */	cmpwi r5, 0
/* 8014BB4C 00148AAC  40 80 00 14 */	bge lbl_8014BB60
/* 8014BB50 00148AB0  48 00 01 10 */	b lbl_8014BC60
lbl_8014BB54:
/* 8014BB54 00148AB4  2C 05 00 03 */	cmpwi r5, 3
/* 8014BB58 00148AB8  40 80 01 08 */	bge lbl_8014BC60
/* 8014BB5C 00148ABC  48 00 00 D4 */	b lbl_8014BC30
lbl_8014BB60:
/* 8014BB60 00148AC0  38 00 00 00 */	li r0, 0
/* 8014BB64 00148AC4  38 A0 00 00 */	li r5, 0
/* 8014BB68 00148AC8  90 03 05 68 */	stw r0, 0x568(r3)
/* 8014BB6C 00148ACC  48 00 08 01 */	bl SetSolid__16CPuddleToadGammaFR13CStateManagerb
/* 8014BB70 00148AD0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014BB74 00148AD4  38 00 00 00 */	li r0, 0
/* 8014BB78 00148AD8  98 03 05 90 */	stb r0, 0x590(r3)
/* 8014BB7C 00148ADC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014BB80 00148AE0  80 63 07 68 */	lwz r3, 0x768(r3)
/* 8014BB84 00148AE4  4B FA 5D 71 */	bl DisableHalfPipeStatus__10CMorphBallFv
/* 8014BB88 00148AE8  48 00 00 D8 */	b lbl_8014BC60
lbl_8014BB8C:
/* 8014BB8C 00148AEC  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8014BB90 00148AF0  2C 00 00 01 */	cmpwi r0, 1
/* 8014BB94 00148AF4  41 82 00 94 */	beq lbl_8014BC28
/* 8014BB98 00148AF8  40 80 00 C8 */	bge lbl_8014BC60
/* 8014BB9C 00148AFC  2C 00 00 00 */	cmpwi r0, 0
/* 8014BBA0 00148B00  40 80 00 08 */	bge lbl_8014BBA8
/* 8014BBA4 00148B04  48 00 00 BC */	b lbl_8014BC60
lbl_8014BBA8:
/* 8014BBA8 00148B08  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 8014BBAC 00148B0C  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 8014BBB0 00148B10  2C 00 00 0A */	cmpwi r0, 0xa
/* 8014BBB4 00148B14  40 82 00 10 */	bne lbl_8014BBC4
/* 8014BBB8 00148B18  38 00 00 01 */	li r0, 1
/* 8014BBBC 00148B1C  90 03 05 68 */	stw r0, 0x568(r3)
/* 8014BBC0 00148B20  48 00 00 A0 */	b lbl_8014BC60
lbl_8014BBC4:
/* 8014BBC4 00148B24  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8014BBC8 00148B28  3C 60 80 3E */	lis r3, lbl_803DAA2C@ha
/* 8014BBCC 00148B2C  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8014BBD0 00148B30  38 80 00 08 */	li r4, 8
/* 8014BBD4 00148B34  90 01 00 10 */	stw r0, 0x10(r1)
/* 8014BBD8 00148B38  38 A3 AA 2C */	addi r5, r3, lbl_803DAA2C@l
/* 8014BBDC 00148B3C  38 00 00 00 */	li r0, 0
/* 8014BBE0 00148B40  3B E6 00 04 */	addi r31, r6, 4
/* 8014BBE4 00148B44  90 81 00 14 */	stw r4, 0x14(r1)
/* 8014BBE8 00148B48  7F E3 FB 78 */	mr r3, r31
/* 8014BBEC 00148B4C  38 80 00 08 */	li r4, 8
/* 8014BBF0 00148B50  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8014BBF4 00148B54  90 01 00 18 */	stw r0, 0x18(r1)
/* 8014BBF8 00148B58  4B FE 58 41 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014BBFC 00148B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BC00 00148B60  3C 60 80 3E */	lis r3, lbl_803DAA2C@ha
/* 8014BC04 00148B64  38 83 AA 2C */	addi r4, r3, lbl_803DAA2C@l
/* 8014BC08 00148B68  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8014BC0C 00148B6C  90 1F 01 58 */	stw r0, 0x158(r31)
/* 8014BC10 00148B70  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8014BC14 00148B74  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8014BC18 00148B78  90 81 00 10 */	stw r4, 0x10(r1)
/* 8014BC1C 00148B7C  90 7F 01 5C */	stw r3, 0x15c(r31)
/* 8014BC20 00148B80  90 01 00 10 */	stw r0, 0x10(r1)
/* 8014BC24 00148B84  48 00 00 3C */	b lbl_8014BC60
lbl_8014BC28:
/* 8014BC28 00148B88  48 00 0B 51 */	bl sub_8014c778
/* 8014BC2C 00148B8C  48 00 00 34 */	b lbl_8014BC60
lbl_8014BC30:
/* 8014BC30 00148B90  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8014BC34 00148B94  38 00 00 0A */	li r0, 0xa
/* 8014BC38 00148B98  38 A4 AA 68 */	addi r5, r4, lbl_803DAA68@l
/* 8014BC3C 00148B9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014BC40 00148BA0  38 81 00 08 */	addi r4, r1, 8
/* 8014BC44 00148BA4  90 A1 00 08 */	stw r5, 8(r1)
/* 8014BC48 00148BA8  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8014BC4C 00148BAC  38 63 00 04 */	addi r3, r3, 4
/* 8014BC50 00148BB0  4B FE 5B 69 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 8014BC54 00148BB4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8014BC58 00148BB8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8014BC5C 00148BBC  90 01 00 08 */	stw r0, 8(r1)
lbl_8014BC60:
/* 8014BC60 00148BC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014BC64 00148BC4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8014BC68 00148BC8  7C 08 03 A6 */	mtlr r0
/* 8014BC6C 00148BCC  38 21 00 30 */	addi r1, r1, 0x30
/* 8014BC70 00148BD0  4E 80 00 20 */	blr

.global Active__16CPuddleToadGammaFR13CStateManager9EStateMsgf
Active__16CPuddleToadGammaFR13CStateManager9EStateMsgf:
/* 8014BC74 00148BD4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8014BC78 00148BD8  7C 08 02 A6 */	mflr r0
/* 8014BC7C 00148BDC  2C 05 00 01 */	cmpwi r5, 1
/* 8014BC80 00148BE0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8014BC84 00148BE4  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8014BC88 00148BE8  7C 9F 23 78 */	mr r31, r4
/* 8014BC8C 00148BEC  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8014BC90 00148BF0  7C 7E 1B 78 */	mr r30, r3
/* 8014BC94 00148BF4  41 82 00 E8 */	beq lbl_8014BD7C
/* 8014BC98 00148BF8  40 80 00 10 */	bge lbl_8014BCA8
/* 8014BC9C 00148BFC  2C 05 00 00 */	cmpwi r5, 0
/* 8014BCA0 00148C00  40 80 00 14 */	bge lbl_8014BCB4
/* 8014BCA4 00148C04  48 00 00 D8 */	b lbl_8014BD7C
lbl_8014BCA8:
/* 8014BCA8 00148C08  2C 05 00 03 */	cmpwi r5, 3
/* 8014BCAC 00148C0C  40 80 00 D0 */	bge lbl_8014BD7C
/* 8014BCB0 00148C10  48 00 00 BC */	b lbl_8014BD6C
lbl_8014BCB4:
/* 8014BCB4 00148C14  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8014BCB8 00148C18  38 80 00 02 */	li r4, 2
/* 8014BCBC 00148C1C  4B FE ED 1D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8014BCC0 00148C20  80 8D 8C 00 */	lwz r4, lbl_805A77C0@sda21(r13)
/* 8014BCC4 00148C24  38 61 00 14 */	addi r3, r1, 0x14
/* 8014BCC8 00148C28  4B EB 8F F1 */	bl string_l__4rstlFPCc
/* 8014BCCC 00148C2C  7F C4 F3 78 */	mr r4, r30
/* 8014BCD0 00148C30  38 61 00 24 */	addi r3, r1, 0x24
/* 8014BCD4 00148C34  38 A1 00 14 */	addi r5, r1, 0x14
/* 8014BCD8 00148C38  4B F2 CC A1 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8014BCDC 00148C3C  38 61 00 54 */	addi r3, r1, 0x54
/* 8014BCE0 00148C40  38 81 00 24 */	addi r4, r1, 0x24
/* 8014BCE4 00148C44  48 1C 6E 91 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8014BCE8 00148C48  38 61 00 14 */	addi r3, r1, 0x14
/* 8014BCEC 00148C4C  48 1F 1D F5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8014BCF0 00148C50  3C 80 80 57 */	lis r4, lbl_805719DC@ha
/* 8014BCF4 00148C54  38 61 00 08 */	addi r3, r1, 8
/* 8014BCF8 00148C58  38 A4 19 DC */	addi r5, r4, lbl_805719DC@l
/* 8014BCFC 00148C5C  38 9E 00 34 */	addi r4, r30, 0x34
/* 8014BD00 00148C60  48 1C 6D 81 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8014BD04 00148C64  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8014BD08 00148C68  38 C0 00 01 */	li r6, 1
/* 8014BD0C 00148C6C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8014BD10 00148C70  7F C3 F3 78 */	mr r3, r30
/* 8014BD14 00148C74  C0 A1 00 70 */	lfs f5, 0x70(r1)
/* 8014BD18 00148C78  7F E4 FB 78 */	mr r4, r31
/* 8014BD1C 00148C7C  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 8014BD20 00148C80  EC 21 00 2A */	fadds f1, f1, f0
/* 8014BD24 00148C84  C0 61 00 80 */	lfs f3, 0x80(r1)
/* 8014BD28 00148C88  38 A0 00 01 */	li r5, 1
/* 8014BD2C 00148C8C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8014BD30 00148C90  EC 85 20 2A */	fadds f4, f5, f4
/* 8014BD34 00148C94  C0 02 9C F0 */	lfs f0, lbl_805ABA10@sda21(r2)
/* 8014BD38 00148C98  D0 3E 05 CC */	stfs f1, 0x5cc(r30)
/* 8014BD3C 00148C9C  EC 23 10 2A */	fadds f1, f3, f2
/* 8014BD40 00148CA0  D0 9E 05 D0 */	stfs f4, 0x5d0(r30)
/* 8014BD44 00148CA4  D0 3E 05 D4 */	stfs f1, 0x5d4(r30)
/* 8014BD48 00148CA8  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 8014BD4C 00148CAC  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 8014BD50 00148CB0  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 8014BD54 00148CB4  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 8014BD58 00148CB8  48 00 06 15 */	bl SetSolid__16CPuddleToadGammaFR13CStateManagerb
/* 8014BD5C 00148CBC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014BD60 00148CC0  38 00 00 01 */	li r0, 1
/* 8014BD64 00148CC4  98 03 05 90 */	stb r0, 0x590(r3)
/* 8014BD68 00148CC8  48 00 00 14 */	b lbl_8014BD7C
lbl_8014BD6C:
/* 8014BD6C 00148CCC  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 8014BD70 00148CD0  38 60 00 00 */	li r3, 0
/* 8014BD74 00148CD4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8014BD78 00148CD8  98 1E 05 E8 */	stb r0, 0x5e8(r30)
lbl_8014BD7C:
/* 8014BD7C 00148CDC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8014BD80 00148CE0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8014BD84 00148CE4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8014BD88 00148CE8  7C 08 03 A6 */	mtlr r0
/* 8014BD8C 00148CEC  38 21 00 90 */	addi r1, r1, 0x90
/* 8014BD90 00148CF0  4E 80 00 20 */	blr

.global InActive__16CPuddleToadGammaFR13CStateManager9EStateMsgf
InActive__16CPuddleToadGammaFR13CStateManager9EStateMsgf:
/* 8014BD94 00148CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BD98 00148CF8  7C 08 02 A6 */	mflr r0
/* 8014BD9C 00148CFC  2C 05 00 00 */	cmpwi r5, 0
/* 8014BDA0 00148D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BDA4 00148D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014BDA8 00148D08  7C 9F 23 78 */	mr r31, r4
/* 8014BDAC 00148D0C  93 C1 00 08 */	stw r30, 8(r1)
/* 8014BDB0 00148D10  7C 7E 1B 78 */	mr r30, r3
/* 8014BDB4 00148D14  41 82 00 0C */	beq lbl_8014BDC0
/* 8014BDB8 00148D18  41 80 00 38 */	blt lbl_8014BDF0
/* 8014BDBC 00148D1C  48 00 00 34 */	b lbl_8014BDF0
lbl_8014BDC0:
/* 8014BDC0 00148D20  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8014BDC4 00148D24  38 80 00 01 */	li r4, 1
/* 8014BDC8 00148D28  4B FE EC 11 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8014BDCC 00148D2C  7F C3 F3 78 */	mr r3, r30
/* 8014BDD0 00148D30  7F E4 FB 78 */	mr r4, r31
/* 8014BDD4 00148D34  38 A0 00 01 */	li r5, 1
/* 8014BDD8 00148D38  48 00 05 95 */	bl SetSolid__16CPuddleToadGammaFR13CStateManagerb
/* 8014BDDC 00148D3C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014BDE0 00148D40  38 00 00 01 */	li r0, 1
/* 8014BDE4 00148D44  C0 02 9C F8 */	lfs f0, lbl_805ABA18@sda21(r2)
/* 8014BDE8 00148D48  98 03 05 90 */	stb r0, 0x590(r3)
/* 8014BDEC 00148D4C  D0 1E 03 40 */	stfs f0, 0x340(r30)
lbl_8014BDF0:
/* 8014BDF0 00148D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BDF4 00148D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014BDF8 00148D58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014BDFC 00148D5C  7C 08 03 A6 */	mtlr r0
/* 8014BE00 00148D60  38 21 00 10 */	addi r1, r1, 0x10
/* 8014BE04 00148D64  4E 80 00 20 */	blr

.global SpotPlayer__16CPuddleToadGammaFR13CStateManagerf
SpotPlayer__16CPuddleToadGammaFR13CStateManagerf:
/* 8014BE08 00148D68  C0 23 05 6C */	lfs f1, 0x56c(r3)
/* 8014BE0C 00148D6C  C0 03 05 C8 */	lfs f0, 0x5c8(r3)
/* 8014BE10 00148D70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014BE14 00148D74  4C 41 13 82 */	cror 2, 1, 2
/* 8014BE18 00148D78  7C 00 00 26 */	mfcr r0
/* 8014BE1C 00148D7C  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8014BE20 00148D80  4E 80 00 20 */	blr

.global ShouldAttack__16CPuddleToadGammaFR13CStateManagerf
ShouldAttack__16CPuddleToadGammaFR13CStateManagerf:
/* 8014BE24 00148D84  C0 23 05 6C */	lfs f1, 0x56c(r3)
/* 8014BE28 00148D88  C0 03 05 C4 */	lfs f0, 0x5c4(r3)
/* 8014BE2C 00148D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014BE30 00148D90  4C 41 13 82 */	cror 2, 1, 2
/* 8014BE34 00148D94  7C 00 00 26 */	mfcr r0
/* 8014BE38 00148D98  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8014BE3C 00148D9C  4E 80 00 20 */	blr

.global Inside__16CPuddleToadGammaFR13CStateManagerf
Inside__16CPuddleToadGammaFR13CStateManagerf:
/* 8014BE40 00148DA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014BE44 00148DA4  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8014BE48 00148DA8  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 8014BE4C 00148DAC  2C 00 00 01 */	cmpwi r0, 1
/* 8014BE50 00148DB0  40 82 00 7C */	bne lbl_8014BECC
/* 8014BE54 00148DB4  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8014BE58 00148DB8  C0 03 05 D0 */	lfs f0, 0x5d0(r3)
/* 8014BE5C 00148DBC  C0 C3 00 48 */	lfs f6, 0x48(r3)
/* 8014BE60 00148DC0  EC 81 00 28 */	fsubs f4, f1, f0
/* 8014BE64 00148DC4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8014BE68 00148DC8  C0 03 05 CC */	lfs f0, 0x5cc(r3)
/* 8014BE6C 00148DCC  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8014BE70 00148DD0  EC A1 00 28 */	fsubs f5, f1, f0
/* 8014BE74 00148DD4  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8014BE78 00148DD8  EC 04 01 B2 */	fmuls f0, f4, f6
/* 8014BE7C 00148DDC  C0 23 05 D4 */	lfs f1, 0x5d4(r3)
/* 8014BE80 00148DE0  C0 E3 00 58 */	lfs f7, 0x58(r3)
/* 8014BE84 00148DE4  EC 63 08 28 */	fsubs f3, f3, f1
/* 8014BE88 00148DE8  EC 25 00 BA */	fmadds f1, f5, f2, f0
/* 8014BE8C 00148DEC  C0 02 9C F0 */	lfs f0, lbl_805ABA10@sda21(r2)
/* 8014BE90 00148DF0  D0 41 00 08 */	stfs f2, 8(r1)
/* 8014BE94 00148DF4  EC 23 09 FA */	fmadds f1, f3, f7, f1
/* 8014BE98 00148DF8  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 8014BE9C 00148DFC  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 8014BEA0 00148E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014BEA4 00148E04  4C 40 13 82 */	cror 2, 0, 2
/* 8014BEA8 00148E08  40 82 00 24 */	bne lbl_8014BECC
/* 8014BEAC 00148E0C  EC 24 01 32 */	fmuls f1, f4, f4
/* 8014BEB0 00148E10  C0 02 9C F8 */	lfs f0, lbl_805ABA18@sda21(r2)
/* 8014BEB4 00148E14  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 8014BEB8 00148E18  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8014BEBC 00148E1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014BEC0 00148E20  40 80 00 0C */	bge lbl_8014BECC
/* 8014BEC4 00148E24  38 60 00 01 */	li r3, 1
/* 8014BEC8 00148E28  48 00 00 08 */	b lbl_8014BED0
lbl_8014BECC:
/* 8014BECC 00148E2C  38 60 00 00 */	li r3, 0
lbl_8014BED0:
/* 8014BED0 00148E30  38 21 00 20 */	addi r1, r1, 0x20
/* 8014BED4 00148E34  4E 80 00 20 */	blr

.global InAttackPosition__16CPuddleToadGammaFR13CStateManagerf
InAttackPosition__16CPuddleToadGammaFR13CStateManagerf:
/* 8014BED8 00148E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BEDC 00148E3C  7C 08 02 A6 */	mflr r0
/* 8014BEE0 00148E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BEE4 00148E44  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 8014BEE8 00148E48  80 05 02 F8 */	lwz r0, 0x2f8(r5)
/* 8014BEEC 00148E4C  2C 00 00 01 */	cmpwi r0, 1
/* 8014BEF0 00148E50  40 82 00 0C */	bne lbl_8014BEFC
/* 8014BEF4 00148E54  48 00 09 B1 */	bl sub_8014c8a4
/* 8014BEF8 00148E58  48 00 00 08 */	b lbl_8014BF00
lbl_8014BEFC:
/* 8014BEFC 00148E5C  38 60 00 00 */	li r3, 0
lbl_8014BF00:
/* 8014BF00 00148E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BF04 00148E64  7C 08 03 A6 */	mtlr r0
/* 8014BF08 00148E68  38 21 00 10 */	addi r1, r1, 0x10
/* 8014BF0C 00148E6C  4E 80 00 20 */	blr

.global sub_8014bf10
sub_8014bf10:
/* 8014BF10 00148E70  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8014BF14 00148E74  7C 08 02 A6 */	mflr r0
/* 8014BF18 00148E78  90 01 01 14 */	stw r0, 0x114(r1)
/* 8014BF1C 00148E7C  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8014BF20 00148E80  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 8014BF24 00148E84  BF 41 00 E8 */	stmw r26, 0xe8(r1)
/* 8014BF28 00148E88  7C 9C 23 78 */	mr r28, r4
/* 8014BF2C 00148E8C  7C 7B 1B 78 */	mr r27, r3
/* 8014BF30 00148E90  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8014BF34 00148E94  7C BD 2B 78 */	mr r29, r5
/* 8014BF38 00148E98  C3 E3 05 00 */	lfs f31, 0x500(r3)
/* 8014BF3C 00148E9C  7F E3 FB 78 */	mr r3, r31
/* 8014BF40 00148EA0  4B FC F4 39 */	bl Stop__13CPhysicsActorFv
/* 8014BF44 00148EA4  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8014BF48 00148EA8  7F E3 FB 78 */	mr r3, r31
/* 8014BF4C 00148EAC  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 8014BF50 00148EB0  4B FC ED 51 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8014BF54 00148EB4  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8014BF58 00148EB8  38 00 00 20 */	li r0, 0x20
/* 8014BF5C 00148EBC  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 8014BF60 00148EC0  3B C0 00 00 */	li r30, 0
/* 8014BF64 00148EC4  7C 60 00 38 */	and r0, r3, r0
/* 8014BF68 00148EC8  7C 83 F0 38 */	and r3, r4, r30
/* 8014BF6C 00148ECC  7C 63 F2 78 */	xor r3, r3, r30
/* 8014BF70 00148ED0  7C 00 F2 78 */	xor r0, r0, r30
/* 8014BF74 00148ED4  7C 60 03 79 */	or. r0, r3, r0
/* 8014BF78 00148ED8  41 82 00 08 */	beq lbl_8014BF80
/* 8014BF7C 00148EDC  3B C0 00 01 */	li r30, 1
lbl_8014BF80:
/* 8014BF80 00148EE0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8014BF84 00148EE4  41 82 00 14 */	beq lbl_8014BF98
/* 8014BF88 00148EE8  7F E3 FB 78 */	mr r3, r31
/* 8014BF8C 00148EEC  7F 85 E3 78 */	mr r5, r28
/* 8014BF90 00148EF0  38 80 00 25 */	li r4, 0x25
/* 8014BF94 00148EF4  4B F0 7F ED */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8014BF98:
/* 8014BF98 00148EF8  7F E3 FB 78 */	mr r3, r31
/* 8014BF9C 00148EFC  7F 85 E3 78 */	mr r5, r28
/* 8014BFA0 00148F00  38 80 00 20 */	li r4, 0x20
/* 8014BFA4 00148F04  4B F0 7F DD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8014BFA8 00148F08  80 1B 00 68 */	lwz r0, 0x68(r27)
/* 8014BFAC 00148F0C  3B 40 00 00 */	li r26, 0
/* 8014BFB0 00148F10  80 9B 00 6C */	lwz r4, 0x6c(r27)
/* 8014BFB4 00148F14  3C 60 00 08 */	lis r3, 8
/* 8014BFB8 00148F18  7C 00 D0 38 */	and r0, r0, r26
/* 8014BFBC 00148F1C  7C 83 18 38 */	and r3, r4, r3
/* 8014BFC0 00148F20  7C 63 D2 78 */	xor r3, r3, r26
/* 8014BFC4 00148F24  7C 00 D2 78 */	xor r0, r0, r26
/* 8014BFC8 00148F28  7C 60 03 79 */	or. r0, r3, r0
/* 8014BFCC 00148F2C  41 82 00 08 */	beq lbl_8014BFD4
/* 8014BFD0 00148F30  3B 40 00 01 */	li r26, 1
lbl_8014BFD4:
/* 8014BFD4 00148F34  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8014BFD8 00148F38  41 82 00 14 */	beq lbl_8014BFEC
/* 8014BFDC 00148F3C  7F 63 DB 78 */	mr r3, r27
/* 8014BFE0 00148F40  7F 85 E3 78 */	mr r5, r28
/* 8014BFE4 00148F44  38 80 00 13 */	li r4, 0x13
/* 8014BFE8 00148F48  4B F0 7F 99 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8014BFEC:
/* 8014BFEC 00148F4C  7F E4 FB 78 */	mr r4, r31
/* 8014BFF0 00148F50  38 61 00 08 */	addi r3, r1, 8
/* 8014BFF4 00148F54  4B FC FF F9 */	bl GetPhysicsState__13CPhysicsActorCFv
/* 8014BFF8 00148F58  38 61 00 78 */	addi r3, r1, 0x78
/* 8014BFFC 00148F5C  38 81 00 08 */	addi r4, r1, 8
/* 8014C000 00148F60  4B F6 74 C1 */	bl __ct__13CPhysicsStateFRC13CPhysicsState
/* 8014C004 00148F64  7F E3 FB 78 */	mr r3, r31
/* 8014C008 00148F68  4B FC F3 71 */	bl Stop__13CPhysicsActorFv
/* 8014C00C 00148F6C  FC 20 F8 90 */	fmr f1, f31
/* 8014C010 00148F70  7F E3 FB 78 */	mr r3, r31
/* 8014C014 00148F74  7F A4 EB 78 */	mr r4, r29
/* 8014C018 00148F78  4B FC F0 F1 */	bl MoveToWR__13CPhysicsActorFRC9CVector3ff
/* 8014C01C 00148F7C  FC 20 F8 90 */	fmr f1, f31
/* 8014C020 00148F80  7F 83 E3 78 */	mr r3, r28
/* 8014C024 00148F84  7F E4 FB 78 */	mr r4, r31
/* 8014C028 00148F88  38 A0 00 00 */	li r5, 0
/* 8014C02C 00148F8C  48 03 5D 0D */	bl "Move__14CGameCollisionFR13CStateManagerR13CPhysicsActorfPCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 8014C030 00148F90  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8014C034 00148F94  7F E3 FB 78 */	mr r3, r31
/* 8014C038 00148F98  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8014C03C 00148F9C  38 81 00 78 */	addi r4, r1, 0x78
/* 8014C040 00148FA0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8014C044 00148FA4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8014C048 00148FA8  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8014C04C 00148FAC  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 8014C050 00148FB0  4B FC FD D5 */	bl SetPhysicsState__13CPhysicsActorFRC13CPhysicsState
/* 8014C054 00148FB4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8014C058 00148FB8  41 82 00 14 */	beq lbl_8014C06C
/* 8014C05C 00148FBC  7F E3 FB 78 */	mr r3, r31
/* 8014C060 00148FC0  7F 85 E3 78 */	mr r5, r28
/* 8014C064 00148FC4  38 80 00 25 */	li r4, 0x25
/* 8014C068 00148FC8  4B F0 82 E9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8014C06C:
/* 8014C06C 00148FCC  7F E3 FB 78 */	mr r3, r31
/* 8014C070 00148FD0  7F 85 E3 78 */	mr r5, r28
/* 8014C074 00148FD4  38 80 00 20 */	li r4, 0x20
/* 8014C078 00148FD8  4B F0 82 D9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8014C07C 00148FDC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8014C080 00148FE0  41 82 00 14 */	beq lbl_8014C094
/* 8014C084 00148FE4  7F 63 DB 78 */	mr r3, r27
/* 8014C088 00148FE8  7F 85 E3 78 */	mr r5, r28
/* 8014C08C 00148FEC  38 80 00 13 */	li r4, 0x13
/* 8014C090 00148FF0  4B F0 82 C1 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8014C094:
/* 8014C094 00148FF4  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 8014C098 00148FF8  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8014C09C 00148FFC  BB 41 00 E8 */	lmw r26, 0xe8(r1)
/* 8014C0A0 00149000  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8014C0A4 00149004  7C 08 03 A6 */	mtlr r0
/* 8014C0A8 00149008  38 21 01 10 */	addi r1, r1, 0x110
/* 8014C0AC 0014900C  4E 80 00 20 */	blr

.global AcceptScriptMsg__16CPuddleToadGammaF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__16CPuddleToadGammaF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8014C0B0 00149010  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8014C0B4 00149014  7C 08 02 A6 */	mflr r0
/* 8014C0B8 00149018  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8014C0BC 0014901C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8014C0C0 00149020  7C DF 33 78 */	mr r31, r6
/* 8014C0C4 00149024  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8014C0C8 00149028  7C 9E 23 78 */	mr r30, r4
/* 8014C0CC 0014902C  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8014C0D0 00149030  7C 7D 1B 78 */	mr r29, r3
/* 8014C0D4 00149034  A0 05 00 00 */	lhz r0, 0(r5)
/* 8014C0D8 00149038  38 A1 00 08 */	addi r5, r1, 8
/* 8014C0DC 0014903C  B0 01 00 08 */	sth r0, 8(r1)
/* 8014C0E0 00149040  4B F3 0A 99 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8014C0E4 00149044  2C 1E 00 21 */	cmpwi r30, 0x21
/* 8014C0E8 00149048  41 82 00 14 */	beq lbl_8014C0FC
/* 8014C0EC 0014904C  40 80 00 DC */	bge lbl_8014C1C8
/* 8014C0F0 00149050  2C 1E 00 01 */	cmpwi r30, 1
/* 8014C0F4 00149054  41 82 00 D4 */	beq lbl_8014C1C8
/* 8014C0F8 00149058  48 00 00 D0 */	b lbl_8014C1C8
lbl_8014C0FC:
/* 8014C0FC 0014905C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8014C100 00149060  7F E4 FB 78 */	mr r4, r31
/* 8014C104 00149064  4B FE EB ED */	bl Activate__15CBodyControllerFR13CStateManager
/* 8014C108 00149068  80 8D 8C 00 */	lwz r4, lbl_805A77C0@sda21(r13)
/* 8014C10C 0014906C  38 61 00 18 */	addi r3, r1, 0x18
/* 8014C110 00149070  4B EB 8B A9 */	bl string_l__4rstlFPCc
/* 8014C114 00149074  7F A4 EB 78 */	mr r4, r29
/* 8014C118 00149078  38 61 00 28 */	addi r3, r1, 0x28
/* 8014C11C 0014907C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8014C120 00149080  4B F2 C8 59 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8014C124 00149084  38 61 00 58 */	addi r3, r1, 0x58
/* 8014C128 00149088  38 81 00 28 */	addi r4, r1, 0x28
/* 8014C12C 0014908C  48 1C 6A 49 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8014C130 00149090  38 61 00 18 */	addi r3, r1, 0x18
/* 8014C134 00149094  48 1F 19 AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8014C138 00149098  3C 80 80 57 */	lis r4, lbl_805719DC@ha
/* 8014C13C 0014909C  38 61 00 0C */	addi r3, r1, 0xc
/* 8014C140 001490A0  38 A4 19 DC */	addi r5, r4, lbl_805719DC@l
/* 8014C144 001490A4  38 9D 00 34 */	addi r4, r29, 0x34
/* 8014C148 001490A8  48 1C 69 39 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8014C14C 001490AC  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8014C150 001490B0  7F A3 EB 78 */	mr r3, r29
/* 8014C154 001490B4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8014C158 001490B8  7F E6 FB 78 */	mr r6, r31
/* 8014C15C 001490BC  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 8014C160 001490C0  38 80 00 28 */	li r4, 0x28
/* 8014C164 001490C4  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8014C168 001490C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8014C16C 001490CC  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 8014C170 001490D0  38 A0 00 29 */	li r5, 0x29
/* 8014C174 001490D4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8014C178 001490D8  EC 64 18 2A */	fadds f3, f4, f3
/* 8014C17C 001490DC  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 8014C180 001490E0  EC 02 08 2A */	fadds f0, f2, f1
/* 8014C184 001490E4  D0 7D 05 D0 */	stfs f3, 0x5d0(r29)
/* 8014C188 001490E8  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 8014C18C 001490EC  C0 1D 05 CC */	lfs f0, 0x5cc(r29)
/* 8014C190 001490F0  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 8014C194 001490F4  C0 1D 05 D0 */	lfs f0, 0x5d0(r29)
/* 8014C198 001490F8  D0 1D 05 DC */	stfs f0, 0x5dc(r29)
/* 8014C19C 001490FC  C0 1D 05 D4 */	lfs f0, 0x5d4(r29)
/* 8014C1A0 00149100  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 8014C1A4 00149104  4B F0 7D 31 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8014C1A8 00149108  7F A3 EB 78 */	mr r3, r29
/* 8014C1AC 0014910C  7F E5 FB 78 */	mr r5, r31
/* 8014C1B0 00149110  38 80 00 2B */	li r4, 0x2b
/* 8014C1B4 00149114  4B F0 81 9D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8014C1B8 00149118  7F A3 EB 78 */	mr r3, r29
/* 8014C1BC 0014911C  7F E5 FB 78 */	mr r5, r31
/* 8014C1C0 00149120  38 80 00 37 */	li r4, 0x37
/* 8014C1C4 00149124  4B F0 81 8D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8014C1C8:
/* 8014C1C8 00149128  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8014C1CC 0014912C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8014C1D0 00149130  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8014C1D4 00149134  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8014C1D8 00149138  7C 08 03 A6 */	mtlr r0
/* 8014C1DC 0014913C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8014C1E0 00149140  4E 80 00 20 */	blr

.global Accept__16CPuddleToadGammaFR8IVisitor
Accept__16CPuddleToadGammaFR8IVisitor:
/* 8014C1E4 00149144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C1E8 00149148  7C 08 02 A6 */	mflr r0
/* 8014C1EC 0014914C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C1F0 00149150  7C 60 1B 78 */	mr r0, r3
/* 8014C1F4 00149154  7C 83 23 78 */	mr r3, r4
/* 8014C1F8 00149158  81 84 00 00 */	lwz r12, 0(r4)
/* 8014C1FC 0014915C  7C 04 03 78 */	mr r4, r0
/* 8014C200 00149160  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8014C204 00149164  7D 89 03 A6 */	mtctr r12
/* 8014C208 00149168  4E 80 04 21 */	bctrl
/* 8014C20C 0014916C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C210 00149170  7C 08 03 A6 */	mtlr r0
/* 8014C214 00149174  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C218 00149178  4E 80 00 20 */	blr

.global CenterPlayer__16CPuddleToadGammaFR13CStateManagerRC9CVector3f
CenterPlayer__16CPuddleToadGammaFR13CStateManagerRC9CVector3f:
/* 8014C21C 0014917C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8014C220 00149180  7C 08 02 A6 */	mflr r0
/* 8014C224 00149184  90 01 00 54 */	stw r0, 0x54(r1)
/* 8014C228 00149188  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8014C22C 0014918C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8014C230 00149190  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8014C234 00149194  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8014C238 00149198  FF E0 08 90 */	fmr f31, f1
/* 8014C23C 0014919C  C0 25 00 04 */	lfs f1, 4(r5)
/* 8014C240 001491A0  38 61 00 14 */	addi r3, r1, 0x14
/* 8014C244 001491A4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8014C248 001491A8  38 81 00 08 */	addi r4, r1, 8
/* 8014C24C 001491AC  C0 65 00 08 */	lfs f3, 8(r5)
/* 8014C250 001491B0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8014C254 001491B4  EC 81 00 28 */	fsubs f4, f1, f0
/* 8014C258 001491B8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8014C25C 001491BC  C0 25 00 00 */	lfs f1, 0(r5)
/* 8014C260 001491C0  EC 43 10 28 */	fsubs f2, f3, f2
/* 8014C264 001491C4  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8014C268 001491C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8014C26C 001491CC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8014C270 001491D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014C274 001491D4  48 1C 85 DD */	bl AsNormalized__9CVector3fCFv
/* 8014C278 001491D8  C0 02 9C F8 */	lfs f0, lbl_805ABA18@sda21(r2)
/* 8014C27C 001491DC  7F E3 FB 78 */	mr r3, r31
/* 8014C280 001491E0  C0 82 9C FC */	lfs f4, lbl_805ABA1C@sda21(r2)
/* 8014C284 001491E4  38 81 00 20 */	addi r4, r1, 0x20
/* 8014C288 001491E8  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8014C28C 001491EC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8014C290 001491F0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8014C294 001491F4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8014C298 001491F8  EC 64 18 24 */	fdivs f3, f4, f3
/* 8014C29C 001491FC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8014C2A0 00149200  EC 23 00 72 */	fmuls f1, f3, f1
/* 8014C2A4 00149204  EC 03 00 32 */	fmuls f0, f3, f0
/* 8014C2A8 00149208  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8014C2AC 0014920C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8014C2B0 00149210  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8014C2B4 00149214  4B FC E9 ED */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8014C2B8 00149218  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8014C2BC 0014921C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8014C2C0 00149220  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8014C2C4 00149224  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8014C2C8 00149228  7C 08 03 A6 */	mtlr r0
/* 8014C2CC 0014922C  38 21 00 50 */	addi r1, r1, 0x50
/* 8014C2D0 00149230  4E 80 00 20 */	blr

.global DoUserAnimEvent__16CPuddleToadGammaFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__16CPuddleToadGammaFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 8014C2D4 00149234  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014C2D8 00149238  7C 08 02 A6 */	mflr r0
/* 8014C2DC 0014923C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014C2E0 00149240  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8014C2E4 00149244  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8014C2E8 00149248  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014C2EC 0014924C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014C2F0 00149250  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014C2F4 00149254  93 81 00 10 */	stw r28, 0x10(r1)
/* 8014C2F8 00149258  7C DF 33 79 */	or. r31, r6, r6
/* 8014C2FC 0014925C  FF E0 08 90 */	fmr f31, f1
/* 8014C300 00149260  7C 7C 1B 78 */	mr r28, r3
/* 8014C304 00149264  7C 9D 23 78 */	mr r29, r4
/* 8014C308 00149268  7C BE 2B 78 */	mr r30, r5
/* 8014C30C 0014926C  38 00 00 00 */	li r0, 0
/* 8014C310 00149270  41 82 00 08 */	beq lbl_8014C318
/* 8014C314 00149274  48 00 00 10 */	b lbl_8014C324
lbl_8014C318:
/* 8014C318 00149278  C0 3C 05 C0 */	lfs f1, 0x5c0(r28)
/* 8014C31C 0014927C  48 00 00 C9 */	bl ShootPlayer__16CPuddleToadGammaFR13CStateManagerf
/* 8014C320 00149280  38 00 00 01 */	li r0, 1
lbl_8014C324:
/* 8014C324 00149284  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8014C328 00149288  40 82 00 1C */	bne lbl_8014C344
/* 8014C32C 0014928C  FC 20 F8 90 */	fmr f1, f31
/* 8014C330 00149290  7F 83 E3 78 */	mr r3, r28
/* 8014C334 00149294  7F A4 EB 78 */	mr r4, r29
/* 8014C338 00149298  7F C5 F3 78 */	mr r5, r30
/* 8014C33C 0014929C  7F E6 FB 78 */	mr r6, r31
/* 8014C340 001492A0  4B F2 CB 71 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_8014C344:
/* 8014C344 001492A4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8014C348 001492A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014C34C 001492AC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8014C350 001492B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014C354 001492B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014C358 001492B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014C35C 001492BC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8014C360 001492C0  7C 08 03 A6 */	mtlr r0
/* 8014C364 001492C4  38 21 00 30 */	addi r1, r1, 0x30
/* 8014C368 001492C8  4E 80 00 20 */	blr

.global SetSolid__16CPuddleToadGammaFR13CStateManagerb
SetSolid__16CPuddleToadGammaFR13CStateManagerb:
/* 8014C36C 001492CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C370 001492D0  7C 08 02 A6 */	mflr r0
/* 8014C374 001492D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C378 001492D8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8014C37C 001492DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014C380 001492E0  7C 9F 23 78 */	mr r31, r4
/* 8014C384 001492E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8014C388 001492E8  7C 7E 1B 78 */	mr r30, r3
/* 8014C38C 001492EC  41 82 00 24 */	beq lbl_8014C3B0
/* 8014C390 001492F0  7F E5 FB 78 */	mr r5, r31
/* 8014C394 001492F4  38 80 00 13 */	li r4, 0x13
/* 8014C398 001492F8  4B F0 7F B9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8014C39C 001492FC  7F C3 F3 78 */	mr r3, r30
/* 8014C3A0 00149300  7F E5 FB 78 */	mr r5, r31
/* 8014C3A4 00149304  38 80 00 32 */	li r4, 0x32
/* 8014C3A8 00149308  4B F0 7B D9 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8014C3AC 0014930C  48 00 00 20 */	b lbl_8014C3CC
lbl_8014C3B0:
/* 8014C3B0 00149310  7F E5 FB 78 */	mr r5, r31
/* 8014C3B4 00149314  38 80 00 13 */	li r4, 0x13
/* 8014C3B8 00149318  4B F0 7B C9 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8014C3BC 0014931C  7F C3 F3 78 */	mr r3, r30
/* 8014C3C0 00149320  7F E5 FB 78 */	mr r5, r31
/* 8014C3C4 00149324  38 80 00 32 */	li r4, 0x32
/* 8014C3C8 00149328  4B F0 7F 89 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8014C3CC:
/* 8014C3CC 0014932C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C3D0 00149330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014C3D4 00149334  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014C3D8 00149338  7C 08 03 A6 */	mtlr r0
/* 8014C3DC 0014933C  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C3E0 00149340  4E 80 00 20 */	blr

.global ShootPlayer__16CPuddleToadGammaFR13CStateManagerf
ShootPlayer__16CPuddleToadGammaFR13CStateManagerf:
/* 8014C3E4 00149344  94 21 F7 00 */	stwu r1, -0x900(r1)
/* 8014C3E8 00149348  7C 08 02 A6 */	mflr r0
/* 8014C3EC 0014934C  90 01 09 04 */	stw r0, 0x904(r1)
/* 8014C3F0 00149350  DB E1 08 F0 */	stfd f31, 0x8f0(r1)
/* 8014C3F4 00149354  F3 E1 08 F8 */	psq_st f31, -1800(r1), 0, qr0
/* 8014C3F8 00149358  DB C1 08 E0 */	stfd f30, 0x8e0(r1)
/* 8014C3FC 0014935C  F3 C1 08 E8 */	psq_st f30, -1816(r1), 0, qr0
/* 8014C400 00149360  DB A1 08 D0 */	stfd f29, 0x8d0(r1)
/* 8014C404 00149364  F3 A1 08 D8 */	psq_st f29, -1832(r1), 0, qr0
/* 8014C408 00149368  DB 81 08 C0 */	stfd f28, 0x8c0(r1)
/* 8014C40C 0014936C  F3 81 08 C8 */	psq_st f28, -1848(r1), 0, qr0
/* 8014C410 00149370  93 E1 08 BC */	stw r31, 0x8bc(r1)
/* 8014C414 00149374  93 C1 08 B8 */	stw r30, 0x8b8(r1)
/* 8014C418 00149378  93 A1 08 B4 */	stw r29, 0x8b4(r1)
/* 8014C41C 0014937C  93 81 08 B0 */	stw r28, 0x8b0(r1)
/* 8014C420 00149380  7C 9E 23 78 */	mr r30, r4
/* 8014C424 00149384  FF 80 08 90 */	fmr f28, f1
/* 8014C428 00149388  7C 7D 1B 78 */	mr r29, r3
/* 8014C42C 0014938C  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8014C430 00149390  38 61 00 44 */	addi r3, r1, 0x44
/* 8014C434 00149394  38 9D 05 B4 */	addi r4, r29, 0x5b4
/* 8014C438 00149398  48 1C 84 19 */	bl AsNormalized__9CVector3fCFv
/* 8014C43C 0014939C  38 61 00 50 */	addi r3, r1, 0x50
/* 8014C440 001493A0  38 9D 00 34 */	addi r4, r29, 0x34
/* 8014C444 001493A4  38 A1 00 44 */	addi r5, r1, 0x44
/* 8014C448 001493A8  48 1C 66 39 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8014C44C 001493AC  C3 E1 00 50 */	lfs f31, 0x50(r1)
/* 8014C450 001493B0  38 60 00 01 */	li r3, 1
/* 8014C454 001493B4  C3 C1 00 54 */	lfs f30, 0x54(r1)
/* 8014C458 001493B8  C3 A1 00 58 */	lfs f29, 0x58(r1)
/* 8014C45C 001493BC  98 7F 05 90 */	stb r3, 0x590(r31)
/* 8014C460 001493C0  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8014C464 001493C4  2C 00 00 01 */	cmpwi r0, 1
/* 8014C468 001493C8  40 82 02 3C */	bne lbl_8014C6A4
/* 8014C46C 001493CC  88 1D 05 E8 */	lbz r0, 0x5e8(r29)
/* 8014C470 001493D0  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8014C474 001493D4  7F E3 FB 78 */	mr r3, r31
/* 8014C478 001493D8  98 1D 05 E8 */	stb r0, 0x5e8(r29)
/* 8014C47C 001493DC  4B FC EE FD */	bl Stop__13CPhysicsActorFv
/* 8014C480 001493E0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8014C484 001493E4  7F E3 FB 78 */	mr r3, r31
/* 8014C488 001493E8  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 8014C48C 001493EC  4B FC E8 15 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8014C490 001493F0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8014C494 001493F4  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8014C498 001493F8  EC 40 07 B2 */	fmuls f2, f0, f30
/* 8014C49C 001493FC  EC 20 07 72 */	fmuls f1, f0, f29
/* 8014C4A0 00149400  EC 1C 00 F2 */	fmuls f0, f28, f3
/* 8014C4A4 00149404  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8014C4A8 00149408  EC 9C 00 B2 */	fmuls f4, f28, f2
/* 8014C4AC 0014940C  EC 7C 00 72 */	fmuls f3, f28, f1
/* 8014C4B0 00149410  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8014C4B4 00149414  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8014C4B8 00149418  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8014C4BC 0014941C  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8014C4C0 00149420  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8014C4C4 00149424  4B EC F0 71 */	bl Identity__10CAxisAngleFv
/* 8014C4C8 00149428  7C 65 1B 78 */	mr r5, r3
/* 8014C4CC 0014942C  7F E3 FB 78 */	mr r3, r31
/* 8014C4D0 00149430  38 81 00 38 */	addi r4, r1, 0x38
/* 8014C4D4 00149434  4B FC FE C5 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 8014C4D8 00149438  7F E3 FB 78 */	mr r3, r31
/* 8014C4DC 0014943C  7F C5 F3 78 */	mr r5, r30
/* 8014C4E0 00149440  38 80 00 02 */	li r4, 2
/* 8014C4E4 00149444  48 13 9F 09 */	bl SetMoveState__7CPlayerFQ27NPlayer20EPlayerMovementStateR13CStateManager
/* 8014C4E8 00149448  80 AD 8B F8 */	lwz r5, lbl_805A77B8@sda21(r13)
/* 8014C4EC 0014944C  38 60 00 00 */	li r3, 0
/* 8014C4F0 00149450  38 80 00 01 */	li r4, 1
/* 8014C4F4 00149454  48 23 DA 01 */	bl __shl2i
/* 8014C4F8 00149458  39 40 00 00 */	li r10, 0
/* 8014C4FC 0014945C  38 00 00 03 */	li r0, 3
/* 8014C500 00149460  90 81 00 94 */	stw r4, 0x94(r1)
/* 8014C504 00149464  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8014C508 00149468  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 8014C50C 0014946C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8014C510 00149470  90 61 00 90 */	stw r3, 0x90(r1)
/* 8014C514 00149474  38 81 00 20 */	addi r4, r1, 0x20
/* 8014C518 00149478  7F C3 F3 78 */	mr r3, r30
/* 8014C51C 0014947C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8014C520 00149480  91 41 00 9C */	stw r10, 0x9c(r1)
/* 8014C524 00149484  38 FD 05 70 */	addi r7, r29, 0x570
/* 8014C528 00149488  39 01 00 90 */	addi r8, r1, 0x90
/* 8014C52C 0014948C  91 41 00 98 */	stw r10, 0x98(r1)
/* 8014C530 00149490  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8014C534 00149494  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8014C538 00149498  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8014C53C 0014949C  81 5E 08 4C */	lwz r10, 0x84c(r30)
/* 8014C540 001494A0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8014C544 001494A4  A1 4A 00 08 */	lhz r10, 8(r10)
/* 8014C548 001494A8  B1 41 00 18 */	sth r10, 0x18(r1)
/* 8014C54C 001494AC  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8014C550 001494B0  B1 41 00 14 */	sth r10, 0x14(r1)
/* 8014C554 001494B4  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8014C558 001494B8  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8014C55C 001494BC  4B EF DB 45 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8014C560 001494C0  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8014C564 001494C4  4B FA 2A 4D */	bl SetAsProjectile__10CMorphBallFv
/* 8014C568 001494C8  38 00 00 00 */	li r0, 0
/* 8014C56C 001494CC  80 AD 8C 14 */	lwz r5, lbl_805A77D4@sda21(r13)
/* 8014C570 001494D0  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8014C574 001494D4  38 60 00 00 */	li r3, 0
/* 8014C578 001494D8  38 80 00 01 */	li r4, 1
/* 8014C57C 001494DC  48 23 D9 79 */	bl __shl2i
/* 8014C580 001494E0  38 A0 00 00 */	li r5, 0
/* 8014C584 001494E4  38 00 00 01 */	li r0, 1
/* 8014C588 001494E8  90 81 00 64 */	stw r4, 0x64(r1)
/* 8014C58C 001494EC  7F A4 EB 78 */	mr r4, r29
/* 8014C590 001494F0  90 61 00 60 */	stw r3, 0x60(r1)
/* 8014C594 001494F4  38 61 00 78 */	addi r3, r1, 0x78
/* 8014C598 001494F8  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 8014C59C 001494FC  90 A1 00 68 */	stw r5, 0x68(r1)
/* 8014C5A0 00149500  90 01 00 70 */	stw r0, 0x70(r1)
/* 8014C5A4 00149504  4B FC E3 89 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8014C5A8 00149508  7F C3 F3 78 */	mr r3, r30
/* 8014C5AC 0014950C  7F A7 EB 78 */	mr r7, r29
/* 8014C5B0 00149510  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8014C5B4 00149514  38 A1 00 78 */	addi r5, r1, 0x78
/* 8014C5B8 00149518  38 C1 00 60 */	addi r6, r1, 0x60
/* 8014C5BC 0014951C  4B F0 01 65 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 8014C5C0 00149520  3B A1 00 AC */	addi r29, r1, 0xac
/* 8014C5C4 00149524  7F BF EB 78 */	mr r31, r29
/* 8014C5C8 00149528  48 00 00 78 */	b lbl_8014C640
lbl_8014C5CC:
/* 8014C5CC 0014952C  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8014C5D0 00149530  7F C3 F3 78 */	mr r3, r30
/* 8014C5D4 00149534  38 81 00 08 */	addi r4, r1, 8
/* 8014C5D8 00149538  B0 01 00 08 */	sth r0, 8(r1)
/* 8014C5DC 0014953C  4B EF FF 99 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8014C5E0 00149540  7C 64 1B 78 */	mr r4, r3
/* 8014C5E4 00149544  38 61 00 24 */	addi r3, r1, 0x24
/* 8014C5E8 00149548  4B F6 34 55 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8014C5EC 0014954C  83 83 00 04 */	lwz r28, 4(r3)
/* 8014C5F0 00149550  28 1C 00 00 */	cmplwi r28, 0
/* 8014C5F4 00149554  41 82 00 48 */	beq lbl_8014C63C
/* 8014C5F8 00149558  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8014C5FC 0014955C  48 1C 5E E1 */	bl Float__9CRandom16Fv
/* 8014C600 00149560  C0 62 9D 04 */	lfs f3, lbl_805ABA24@sda21(r2)
/* 8014C604 00149564  C0 02 9D 00 */	lfs f0, lbl_805ABA20@sda21(r2)
/* 8014C608 00149568  C0 42 96 A0 */	lfs f2, skGravityConstant__13CPhysicsActor@sda21(r2)
/* 8014C60C 0014956C  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 8014C610 00149570  C0 02 9C F0 */	lfs f0, lbl_805ABA10@sda21(r2)
/* 8014C614 00149574  FC 80 10 50 */	fneg f4, f2
/* 8014C618 00149578  EC 61 07 F2 */	fmuls f3, f1, f31
/* 8014C61C 0014957C  EC 41 07 B2 */	fmuls f2, f1, f30
/* 8014C620 00149580  EC 21 07 72 */	fmuls f1, f1, f29
/* 8014C624 00149584  D0 7C 01 58 */	stfs f3, 0x158(r28)
/* 8014C628 00149588  D0 5C 01 5C */	stfs f2, 0x15c(r28)
/* 8014C62C 0014958C  D0 3C 01 60 */	stfs f1, 0x160(r28)
/* 8014C630 00149590  D0 1C 01 64 */	stfs f0, 0x164(r28)
/* 8014C634 00149594  D0 1C 01 68 */	stfs f0, 0x168(r28)
/* 8014C638 00149598  D0 9C 01 6C */	stfs f4, 0x16c(r28)
lbl_8014C63C:
/* 8014C63C 0014959C  3B FF 00 02 */	addi r31, r31, 2
lbl_8014C640:
/* 8014C640 001495A0  80 A1 00 A8 */	lwz r5, 0xa8(r1)
/* 8014C644 001495A4  54 A0 08 3C */	slwi r0, r5, 1
/* 8014C648 001495A8  7C 1D 02 14 */	add r0, r29, r0
/* 8014C64C 001495AC  7C 1F 00 40 */	cmplw r31, r0
/* 8014C650 001495B0  40 82 FF 7C */	bne lbl_8014C5CC
/* 8014C654 001495B4  2C 05 00 00 */	cmpwi r5, 0
/* 8014C658 001495B8  38 60 00 00 */	li r3, 0
/* 8014C65C 001495BC  40 81 00 40 */	ble lbl_8014C69C
/* 8014C660 001495C0  2C 05 00 08 */	cmpwi r5, 8
/* 8014C664 001495C4  38 85 FF F8 */	addi r4, r5, -8
/* 8014C668 001495C8  40 81 00 20 */	ble lbl_8014C688
/* 8014C66C 001495CC  38 04 00 07 */	addi r0, r4, 7
/* 8014C670 001495D0  54 00 E8 FE */	srwi r0, r0, 3
/* 8014C674 001495D4  7C 09 03 A6 */	mtctr r0
/* 8014C678 001495D8  2C 04 00 00 */	cmpwi r4, 0
/* 8014C67C 001495DC  40 81 00 0C */	ble lbl_8014C688
lbl_8014C680:
/* 8014C680 001495E0  38 63 00 08 */	addi r3, r3, 8
/* 8014C684 001495E4  42 00 FF FC */	bdnz lbl_8014C680
lbl_8014C688:
/* 8014C688 001495E8  7C 03 28 50 */	subf r0, r3, r5
/* 8014C68C 001495EC  7C 09 03 A6 */	mtctr r0
/* 8014C690 001495F0  7C 03 28 00 */	cmpw r3, r5
/* 8014C694 001495F4  40 80 00 08 */	bge lbl_8014C69C
lbl_8014C698:
/* 8014C698 001495F8  42 00 00 00 */	bdnz lbl_8014C698
lbl_8014C69C:
/* 8014C69C 001495FC  38 00 00 00 */	li r0, 0
/* 8014C6A0 00149600  90 01 00 A8 */	stw r0, 0xa8(r1)
lbl_8014C6A4:
/* 8014C6A4 00149604  E3 E1 08 F8 */	psq_l f31, -1800(r1), 0, qr0
/* 8014C6A8 00149608  CB E1 08 F0 */	lfd f31, 0x8f0(r1)
/* 8014C6AC 0014960C  E3 C1 08 E8 */	psq_l f30, -1816(r1), 0, qr0
/* 8014C6B0 00149610  CB C1 08 E0 */	lfd f30, 0x8e0(r1)
/* 8014C6B4 00149614  E3 A1 08 D8 */	psq_l f29, -1832(r1), 0, qr0
/* 8014C6B8 00149618  CB A1 08 D0 */	lfd f29, 0x8d0(r1)
/* 8014C6BC 0014961C  E3 81 08 C8 */	psq_l f28, -1848(r1), 0, qr0
/* 8014C6C0 00149620  CB 81 08 C0 */	lfd f28, 0x8c0(r1)
/* 8014C6C4 00149624  83 E1 08 BC */	lwz r31, 0x8bc(r1)
/* 8014C6C8 00149628  83 C1 08 B8 */	lwz r30, 0x8b8(r1)
/* 8014C6CC 0014962C  83 A1 08 B4 */	lwz r29, 0x8b4(r1)
/* 8014C6D0 00149630  80 01 09 04 */	lwz r0, 0x904(r1)
/* 8014C6D4 00149634  83 81 08 B0 */	lwz r28, 0x8b0(r1)
/* 8014C6D8 00149638  7C 08 03 A6 */	mtlr r0
/* 8014C6DC 0014963C  38 21 09 00 */	addi r1, r1, 0x900
/* 8014C6E0 00149640  4E 80 00 20 */	blr

.global GetDamageVulnerability__16CPuddleToadGammaCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__16CPuddleToadGammaCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 8014C6E4 00149644  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C6E8 00149648  7C 08 02 A6 */	mflr r0
/* 8014C6EC 0014964C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C6F0 00149650  88 03 05 E8 */	lbz r0, 0x5e8(r3)
/* 8014C6F4 00149654  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8014C6F8 00149658  41 82 00 5C */	beq lbl_8014C754
/* 8014C6FC 0014965C  C0 43 05 DC */	lfs f2, 0x5dc(r3)
/* 8014C700 00149660  C0 04 00 04 */	lfs f0, 4(r4)
/* 8014C704 00149664  C0 23 05 D8 */	lfs f1, 0x5d8(r3)
/* 8014C708 00149668  EC A2 00 28 */	fsubs f5, f2, f0
/* 8014C70C 0014966C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8014C710 00149670  C0 43 05 E0 */	lfs f2, 0x5e0(r3)
/* 8014C714 00149674  EC 61 00 28 */	fsubs f3, f1, f0
/* 8014C718 00149678  C0 04 00 08 */	lfs f0, 8(r4)
/* 8014C71C 0014967C  EC 25 01 72 */	fmuls f1, f5, f5
/* 8014C720 00149680  EC 82 00 28 */	fsubs f4, f2, f0
/* 8014C724 00149684  C0 02 9D 08 */	lfs f0, lbl_805ABA28@sda21(r2)
/* 8014C728 00149688  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8014C72C 0014968C  D0 61 00 08 */	stfs f3, 8(r1)
/* 8014C730 00149690  EC 64 01 32 */	fmuls f3, f4, f4
/* 8014C734 00149694  EC 22 08 2A */	fadds f1, f2, f1
/* 8014C738 00149698  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 8014C73C 0014969C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8014C740 001496A0  EC 23 08 2A */	fadds f1, f3, f1
/* 8014C744 001496A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014C748 001496A8  40 80 00 0C */	bge lbl_8014C754
/* 8014C74C 001496AC  4B F5 66 25 */	bl GetDamageVulnerability__3CAiCFv
/* 8014C750 001496B0  48 00 00 0C */	b lbl_8014C75C
lbl_8014C754:
/* 8014C754 001496B4  3C 60 80 57 */	lis r3, lbl_8056D718@ha
/* 8014C758 001496B8  38 63 D7 18 */	addi r3, r3, lbl_8056D718@l
lbl_8014C75C:
/* 8014C75C 001496BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C760 001496C0  7C 08 03 A6 */	mtlr r0
/* 8014C764 001496C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C768 001496C8  4E 80 00 20 */	blr

.global GetDamageVulnerability__16CPuddleToadGammaCFv
GetDamageVulnerability__16CPuddleToadGammaCFv:
/* 8014C76C 001496CC  3C 60 80 57 */	lis r3, lbl_8056D718@ha
/* 8014C770 001496D0  38 63 D7 18 */	addi r3, r3, lbl_8056D718@l
/* 8014C774 001496D4  4E 80 00 20 */	blr

.global sub_8014c778
sub_8014c778:
/* 8014C778 001496D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014C77C 001496DC  7C 08 02 A6 */	mflr r0
/* 8014C780 001496E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014C784 001496E4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8014C788 001496E8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8014C78C 001496EC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8014C790 001496F0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8014C794 001496F4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8014C798 001496F8  7C 9E 23 78 */	mr r30, r4
/* 8014C79C 001496FC  7C 7D 1B 78 */	mr r29, r3
/* 8014C7A0 00149700  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8014C7A4 00149704  FF E0 08 90 */	fmr f31, f1
/* 8014C7A8 00149708  C0 03 05 D0 */	lfs f0, 0x5d0(r3)
/* 8014C7AC 0014970C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8014C7B0 00149710  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8014C7B4 00149714  C0 43 05 D4 */	lfs f2, 0x5d4(r3)
/* 8014C7B8 00149718  EC 81 00 28 */	fsubs f4, f1, f0
/* 8014C7BC 0014971C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8014C7C0 00149720  C0 03 05 CC */	lfs f0, 0x5cc(r3)
/* 8014C7C4 00149724  EC 43 10 28 */	fsubs f2, f3, f2
/* 8014C7C8 00149728  EC 01 00 28 */	fsubs f0, f1, f0
/* 8014C7CC 0014972C  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8014C7D0 00149730  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8014C7D4 00149734  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014C7D8 00149738  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8014C7DC 0014973C  2C 00 00 01 */	cmpwi r0, 1
/* 8014C7E0 00149740  40 82 00 A0 */	bne lbl_8014C880
/* 8014C7E4 00149744  38 61 00 14 */	addi r3, r1, 0x14
/* 8014C7E8 00149748  48 1C 80 D1 */	bl Magnitude__9CVector3fCFv
/* 8014C7EC 0014974C  C0 02 9D 0C */	lfs f0, lbl_805ABA2C@sda21(r2)
/* 8014C7F0 00149750  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014C7F4 00149754  40 80 00 24 */	bge lbl_8014C818
/* 8014C7F8 00149758  7F E3 FB 78 */	mr r3, r31
/* 8014C7FC 0014975C  4B FC EB 7D */	bl Stop__13CPhysicsActorFv
/* 8014C800 00149760  FC 20 F8 90 */	fmr f1, f31
/* 8014C804 00149764  7F A3 EB 78 */	mr r3, r29
/* 8014C808 00149768  7F C4 F3 78 */	mr r4, r30
/* 8014C80C 0014976C  38 BD 05 CC */	addi r5, r29, 0x5cc
/* 8014C810 00149770  4B FF FA 0D */	bl CenterPlayer__16CPuddleToadGammaFR13CStateManagerRC9CVector3f
/* 8014C814 00149774  48 00 00 6C */	b lbl_8014C880
lbl_8014C818:
/* 8014C818 00149778  EC 01 00 72 */	fmuls f0, f1, f1
/* 8014C81C 0014977C  C0 7D 05 B0 */	lfs f3, 0x5b0(r29)
/* 8014C820 00149780  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8014C824 00149784  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8014C828 00149788  EC 63 00 24 */	fdivs f3, f3, f0
/* 8014C82C 0014978C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8014C830 00149790  C0 9D 05 A8 */	lfs f4, 0x5a8(r29)
/* 8014C834 00149794  C0 BF 00 E8 */	lfs f5, 0xe8(r31)
/* 8014C838 00149798  FC 40 10 50 */	fneg f2, f2
/* 8014C83C 0014979C  FC 20 08 50 */	fneg f1, f1
/* 8014C840 001497A0  FC 00 00 50 */	fneg f0, f0
/* 8014C844 001497A4  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8014C848 001497A8  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8014C84C 001497AC  EC 25 00 72 */	fmuls f1, f5, f1
/* 8014C850 001497B0  EC 05 00 32 */	fmuls f0, f5, f0
/* 8014C854 001497B4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8014C858 001497B8  EC 23 00 72 */	fmuls f1, f3, f1
/* 8014C85C 001497BC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8014C860 001497C0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8014C864 001497C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014C868 001497C8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8014C86C 001497CC  4B EC EC C9 */	bl Identity__10CAxisAngleFv
/* 8014C870 001497D0  7C 65 1B 78 */	mr r5, r3
/* 8014C874 001497D4  7F E3 FB 78 */	mr r3, r31
/* 8014C878 001497D8  38 81 00 08 */	addi r4, r1, 8
/* 8014C87C 001497DC  4B FC FA 49 */	bl ApplyForceWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_8014C880:
/* 8014C880 001497E0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8014C884 001497E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8014C888 001497E8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8014C88C 001497EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8014C890 001497F0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8014C894 001497F4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8014C898 001497F8  7C 08 03 A6 */	mtlr r0
/* 8014C89C 001497FC  38 21 00 40 */	addi r1, r1, 0x40
/* 8014C8A0 00149800  4E 80 00 20 */	blr

.global sub_8014c8a4
sub_8014c8a4:
/* 8014C8A4 00149804  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 8014C8A8 00149808  7C 08 02 A6 */	mflr r0
/* 8014C8AC 0014980C  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 8014C8B0 00149810  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 8014C8B4 00149814  F3 E1 01 98 */	psq_st f31, 408(r1), 0, qr0
/* 8014C8B8 00149818  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 8014C8BC 0014981C  F3 C1 01 88 */	psq_st f30, 392(r1), 0, qr0
/* 8014C8C0 00149820  DB A1 01 70 */	stfd f29, 0x170(r1)
/* 8014C8C4 00149824  F3 A1 01 78 */	psq_st f29, 376(r1), 0, qr0
/* 8014C8C8 00149828  DB 81 01 60 */	stfd f28, 0x160(r1)
/* 8014C8CC 0014982C  F3 81 01 68 */	psq_st f28, 360(r1), 0, qr0
/* 8014C8D0 00149830  DB 61 01 50 */	stfd f27, 0x150(r1)
/* 8014C8D4 00149834  F3 61 01 58 */	psq_st f27, 344(r1), 0, qr0
/* 8014C8D8 00149838  DB 41 01 40 */	stfd f26, 0x140(r1)
/* 8014C8DC 0014983C  F3 41 01 48 */	psq_st f26, 328(r1), 0, qr0
/* 8014C8E0 00149840  BF 61 01 2C */	stmw r27, 0x12c(r1)
/* 8014C8E4 00149844  7C 9F 23 78 */	mr r31, r4
/* 8014C8E8 00149848  7C 7E 1B 78 */	mr r30, r3
/* 8014C8EC 0014984C  83 A4 08 4C */	lwz r29, 0x84c(r4)
/* 8014C8F0 00149850  38 61 00 50 */	addi r3, r1, 0x50
/* 8014C8F4 00149854  80 8D 8B FC */	lwz r4, lbl_805A77BC@sda21(r13)
/* 8014C8F8 00149858  4B EB 83 C1 */	bl string_l__4rstlFPCc
/* 8014C8FC 0014985C  7F C4 F3 78 */	mr r4, r30
/* 8014C900 00149860  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8014C904 00149864  38 A1 00 50 */	addi r5, r1, 0x50
/* 8014C908 00149868  4B F2 C0 71 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8014C90C 0014986C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8014C910 00149870  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8014C914 00149874  48 1C 62 61 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8014C918 00149878  38 61 00 50 */	addi r3, r1, 0x50
/* 8014C91C 0014987C  48 1F 11 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8014C920 00149880  80 7D 07 68 */	lwz r3, 0x768(r29)
/* 8014C924 00149884  4B FA C4 E1 */	bl GetBallRadius__10CMorphBallCFv
/* 8014C928 00149888  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 8014C92C 0014988C  38 61 00 44 */	addi r3, r1, 0x44
/* 8014C930 00149890  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 8014C934 00149894  38 9E 00 34 */	addi r4, r30, 0x34
/* 8014C938 00149898  C0 42 9C F0 */	lfs f2, lbl_805ABA10@sda21(r2)
/* 8014C93C 0014989C  EF E0 08 2A */	fadds f31, f0, f1
/* 8014C940 001498A0  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8014C944 001498A4  38 A1 00 38 */	addi r5, r1, 0x38
/* 8014C948 001498A8  C0 02 9C FC */	lfs f0, lbl_805ABA1C@sda21(r2)
/* 8014C94C 001498AC  EF 43 10 2A */	fadds f26, f3, f2
/* 8014C950 001498B0  EF 61 10 2A */	fadds f27, f1, f2
/* 8014C954 001498B4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8014C958 001498B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8014C95C 001498BC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8014C960 001498C0  48 1C 61 21 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8014C964 001498C4  C3 81 00 44 */	lfs f28, 0x44(r1)
/* 8014C968 001498C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8014C96C 001498CC  C0 02 9C FC */	lfs f0, lbl_805ABA1C@sda21(r2)
/* 8014C970 001498D0  38 81 00 6C */	addi r4, r1, 0x6c
/* 8014C974 001498D4  C3 C1 00 48 */	lfs f30, 0x48(r1)
/* 8014C978 001498D8  C3 A1 00 4C */	lfs f29, 0x4c(r1)
/* 8014C97C 001498DC  EC 60 07 32 */	fmuls f3, f0, f28
/* 8014C980 001498E0  C1 01 00 FC */	lfs f8, 0xfc(r1)
/* 8014C984 001498E4  EC 40 07 B2 */	fmuls f2, f0, f30
/* 8014C988 001498E8  C0 E1 01 0C */	lfs f7, 0x10c(r1)
/* 8014C98C 001498EC  EC 20 07 72 */	fmuls f1, f0, f29
/* 8014C990 001498F0  C0 C1 01 1C */	lfs f6, 0x11c(r1)
/* 8014C994 001498F4  C0 02 9D 08 */	lfs f0, lbl_805ABA28@sda21(r2)
/* 8014C998 001498F8  EC 68 18 28 */	fsubs f3, f8, f3
/* 8014C99C 001498FC  EC 47 10 28 */	fsubs f2, f7, f2
/* 8014C9A0 00149900  EC 26 08 28 */	fsubs f1, f6, f1
/* 8014C9A4 00149904  EC BA 18 28 */	fsubs f5, f26, f3
/* 8014C9A8 00149908  EC 9B 10 28 */	fsubs f4, f27, f2
/* 8014C9AC 0014990C  EC 7F 08 28 */	fsubs f3, f31, f1
/* 8014C9B0 00149910  EC 40 07 B2 */	fmuls f2, f0, f30
/* 8014C9B4 00149914  D0 A1 00 6C */	stfs f5, 0x6c(r1)
/* 8014C9B8 00149918  EC 20 07 72 */	fmuls f1, f0, f29
/* 8014C9BC 0014991C  EC 00 07 32 */	fmuls f0, f0, f28
/* 8014C9C0 00149920  D0 81 00 70 */	stfs f4, 0x70(r1)
/* 8014C9C4 00149924  EC 87 10 28 */	fsubs f4, f7, f2
/* 8014C9C8 00149928  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 8014C9CC 0014992C  EC 46 08 28 */	fsubs f2, f6, f1
/* 8014C9D0 00149930  EC 08 00 28 */	fsubs f0, f8, f0
/* 8014C9D4 00149934  C0 BD 00 50 */	lfs f5, 0x50(r29)
/* 8014C9D8 00149938  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 8014C9DC 0014993C  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8014C9E0 00149940  EC 85 20 28 */	fsubs f4, f5, f4
/* 8014C9E4 00149944  EC 43 10 28 */	fsubs f2, f3, f2
/* 8014C9E8 00149948  EC 01 00 28 */	fsubs f0, f1, f0
/* 8014C9EC 0014994C  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 8014C9F0 00149950  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8014C9F4 00149954  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8014C9F8 00149958  48 1C 7E 59 */	bl AsNormalized__9CVector3fCFv
/* 8014C9FC 0014995C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8014CA00 00149960  38 61 00 20 */	addi r3, r1, 0x20
/* 8014CA04 00149964  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8014CA08 00149968  38 81 00 60 */	addi r4, r1, 0x60
/* 8014CA0C 0014996C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8014CA10 00149970  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8014CA14 00149974  EC 01 07 3A */	fmadds f0, f1, f28, f0
/* 8014CA18 00149978  EF E2 07 7A */	fmadds f31, f2, f29, f0
/* 8014CA1C 0014997C  48 1C 7E 35 */	bl AsNormalized__9CVector3fCFv
/* 8014CA20 00149980  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8014CA24 00149984  38 61 00 6C */	addi r3, r1, 0x6c
/* 8014CA28 00149988  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8014CA2C 0014998C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8014CA30 00149990  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8014CA34 00149994  EC 01 07 3A */	fmadds f0, f1, f28, f0
/* 8014CA38 00149998  EF 42 07 7A */	fmadds f26, f2, f29, f0
/* 8014CA3C 0014999C  48 1C 7E 7D */	bl Magnitude__9CVector3fCFv
/* 8014CA40 001499A0  88 0D A3 E0 */	lbz r0, lbl_805A8FA0@sda21(r13)
/* 8014CA44 001499A4  FF 80 08 90 */	fmr f28, f1
/* 8014CA48 001499A8  7C 00 07 75 */	extsb. r0, r0
/* 8014CA4C 001499AC  40 82 00 88 */	bne lbl_8014CAD4
/* 8014CA50 001499B0  80 AD 8C 08 */	lwz r5, lbl_805A77C8@sda21(r13)
/* 8014CA54 001499B4  38 60 00 00 */	li r3, 0
/* 8014CA58 001499B8  38 80 00 01 */	li r4, 1
/* 8014CA5C 001499BC  48 23 D4 99 */	bl __shl2i
/* 8014CA60 001499C0  80 AD 8C 0C */	lwz r5, lbl_805A77CC@sda21(r13)
/* 8014CA64 001499C4  7C 9B 23 78 */	mr r27, r4
/* 8014CA68 001499C8  7C 7C 1B 78 */	mr r28, r3
/* 8014CA6C 001499CC  38 60 00 00 */	li r3, 0
/* 8014CA70 001499D0  38 80 00 01 */	li r4, 1
/* 8014CA74 001499D4  48 23 D4 81 */	bl __shl2i
/* 8014CA78 001499D8  80 AD 8C 10 */	lwz r5, lbl_805A77D0@sda21(r13)
/* 8014CA7C 001499DC  7F 7B 23 78 */	or r27, r27, r4
/* 8014CA80 001499E0  7F 9C 1B 78 */	or r28, r28, r3
/* 8014CA84 001499E4  38 60 00 00 */	li r3, 0
/* 8014CA88 001499E8  38 80 00 01 */	li r4, 1
/* 8014CA8C 001499EC  48 23 D4 69 */	bl __shl2i
/* 8014CA90 001499F0  80 AD 8C 04 */	lwz r5, lbl_805A77C4@sda21(r13)
/* 8014CA94 001499F4  7F 7B 23 78 */	or r27, r27, r4
/* 8014CA98 001499F8  7F 9C 1B 78 */	or r28, r28, r3
/* 8014CA9C 001499FC  38 60 00 00 */	li r3, 0
/* 8014CAA0 00149A00  38 80 00 01 */	li r4, 1
/* 8014CAA4 00149A04  48 23 D4 51 */	bl __shl2i
/* 8014CAA8 00149A08  3C A0 80 47 */	lis r5, lbl_8046C758@ha
/* 8014CAAC 00149A0C  38 C0 00 03 */	li r6, 3
/* 8014CAB0 00149A10  38 A5 C7 58 */	addi r5, r5, lbl_8046C758@l
/* 8014CAB4 00149A14  38 00 00 01 */	li r0, 1
/* 8014CAB8 00149A18  90 C1 00 88 */	stw r6, 0x88(r1)
/* 8014CABC 00149A1C  90 85 00 04 */	stw r4, 4(r5)
/* 8014CAC0 00149A20  90 65 00 00 */	stw r3, 0(r5)
/* 8014CAC4 00149A24  93 65 00 0C */	stw r27, 0xc(r5)
/* 8014CAC8 00149A28  93 85 00 08 */	stw r28, 8(r5)
/* 8014CACC 00149A2C  90 C5 00 10 */	stw r6, 0x10(r5)
/* 8014CAD0 00149A30  98 0D A3 E0 */	stb r0, lbl_805A8FA0@sda21(r13)
lbl_8014CAD4:
/* 8014CAD4 00149A34  C0 02 9C F8 */	lfs f0, lbl_805ABA18@sda21(r2)
/* 8014CAD8 00149A38  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8014CADC 00149A3C  40 81 00 84 */	ble lbl_8014CB60
/* 8014CAE0 00149A40  C0 02 9C FC */	lfs f0, lbl_805ABA1C@sda21(r2)
/* 8014CAE4 00149A44  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8014CAE8 00149A48  EC C0 E0 24 */	fdivs f6, f0, f28
/* 8014CAEC 00149A4C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8014CAF0 00149A50  C0 61 00 74 */	lfs f3, 0x74(r1)
/* 8014CAF4 00149A54  80 7D 07 68 */	lwz r3, 0x768(r29)
/* 8014CAF8 00149A58  C0 41 00 FC */	lfs f2, 0xfc(r1)
/* 8014CAFC 00149A5C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8014CB00 00149A60  EC A6 00 72 */	fmuls f5, f6, f1
/* 8014CB04 00149A64  C0 21 01 0C */	lfs f1, 0x10c(r1)
/* 8014CB08 00149A68  EC 86 00 32 */	fmuls f4, f6, f0
/* 8014CB0C 00149A6C  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8014CB10 00149A70  EC 66 00 F2 */	fmuls f3, f6, f3
/* 8014CB14 00149A74  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8014CB18 00149A78  D0 A1 00 08 */	stfs f5, 8(r1)
/* 8014CB1C 00149A7C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8014CB20 00149A80  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8014CB24 00149A84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8014CB28 00149A88  4B FA C2 DD */	bl GetBallRadius__10CMorphBallCFv
/* 8014CB2C 00149A8C  EC 3C 08 28 */	fsubs f1, f28, f1
/* 8014CB30 00149A90  3C 60 80 47 */	lis r3, lbl_8046C758@ha
/* 8014CB34 00149A94  38 E3 C7 58 */	addi r7, r3, lbl_8046C758@l
/* 8014CB38 00149A98  7F E4 FB 78 */	mr r4, r31
/* 8014CB3C 00149A9C  38 61 00 90 */	addi r3, r1, 0x90
/* 8014CB40 00149AA0  38 A1 00 14 */	addi r5, r1, 0x14
/* 8014CB44 00149AA4  38 C1 00 08 */	addi r6, r1, 8
/* 8014CB48 00149AA8  4B F0 04 51 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8014CB4C 00149AAC  88 01 00 B0 */	lbz r0, 0xb0(r1)
/* 8014CB50 00149AB0  28 00 00 00 */	cmplwi r0, 0
/* 8014CB54 00149AB4  41 82 00 0C */	beq lbl_8014CB60
/* 8014CB58 00149AB8  38 60 00 00 */	li r3, 0
/* 8014CB5C 00149ABC  48 00 00 38 */	b lbl_8014CB94
lbl_8014CB60:
/* 8014CB60 00149AC0  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 8014CB64 00149AC4  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8014CB68 00149AC8  40 80 00 28 */	bge lbl_8014CB90
/* 8014CB6C 00149ACC  C0 02 9C F0 */	lfs f0, lbl_805ABA10@sda21(r2)
/* 8014CB70 00149AD0  38 60 00 00 */	li r3, 0
/* 8014CB74 00149AD4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8014CB78 00149AD8  40 81 00 1C */	ble lbl_8014CB94
/* 8014CB7C 00149ADC  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 8014CB80 00149AE0  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 8014CB84 00149AE4  40 81 00 10 */	ble lbl_8014CB94
/* 8014CB88 00149AE8  38 60 00 01 */	li r3, 1
/* 8014CB8C 00149AEC  48 00 00 08 */	b lbl_8014CB94
lbl_8014CB90:
/* 8014CB90 00149AF0  38 60 00 00 */	li r3, 0
lbl_8014CB94:
/* 8014CB94 00149AF4  E3 E1 01 98 */	psq_l f31, 408(r1), 0, qr0
/* 8014CB98 00149AF8  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 8014CB9C 00149AFC  E3 C1 01 88 */	psq_l f30, 392(r1), 0, qr0
/* 8014CBA0 00149B00  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 8014CBA4 00149B04  E3 A1 01 78 */	psq_l f29, 376(r1), 0, qr0
/* 8014CBA8 00149B08  CB A1 01 70 */	lfd f29, 0x170(r1)
/* 8014CBAC 00149B0C  E3 81 01 68 */	psq_l f28, 360(r1), 0, qr0
/* 8014CBB0 00149B10  CB 81 01 60 */	lfd f28, 0x160(r1)
/* 8014CBB4 00149B14  E3 61 01 58 */	psq_l f27, 344(r1), 0, qr0
/* 8014CBB8 00149B18  CB 61 01 50 */	lfd f27, 0x150(r1)
/* 8014CBBC 00149B1C  E3 41 01 48 */	psq_l f26, 328(r1), 0, qr0
/* 8014CBC0 00149B20  CB 41 01 40 */	lfd f26, 0x140(r1)
/* 8014CBC4 00149B24  BB 61 01 2C */	lmw r27, 0x12c(r1)
/* 8014CBC8 00149B28  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 8014CBCC 00149B2C  7C 08 03 A6 */	mtlr r0
/* 8014CBD0 00149B30  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 8014CBD4 00149B34  4E 80 00 20 */	blr

.global Think__16CPuddleToadGammaFfR13CStateManager
Think__16CPuddleToadGammaFfR13CStateManager:
/* 8014CBD8 00149B38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014CBDC 00149B3C  7C 08 02 A6 */	mflr r0
/* 8014CBE0 00149B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014CBE4 00149B44  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8014CBE8 00149B48  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8014CBEC 00149B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014CBF0 00149B50  7C 7F 1B 78 */	mr r31, r3
/* 8014CBF4 00149B54  FF E0 08 90 */	fmr f31, f1
/* 8014CBF8 00149B58  4B F2 CF 21 */	bl Think__10CPatternedFfR13CStateManager
/* 8014CBFC 00149B5C  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 8014CC00 00149B60  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8014CC04 00149B64  41 82 00 10 */	beq lbl_8014CC14
/* 8014CC08 00149B68  C0 1F 05 6C */	lfs f0, 0x56c(r31)
/* 8014CC0C 00149B6C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8014CC10 00149B70  D0 1F 05 6C */	stfs f0, 0x56c(r31)
lbl_8014CC14:
/* 8014CC14 00149B74  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8014CC18 00149B78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014CC1C 00149B7C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8014CC20 00149B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014CC24 00149B84  7C 08 03 A6 */	mtlr r0
/* 8014CC28 00149B88  38 21 00 20 */	addi r1, r1, 0x20
/* 8014CC2C 00149B8C  4E 80 00 20 */	blr

.global "__ct__16CPuddleToadGammaF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersfff9CVector3ffffRC11CDamageInfoRC11CDamageInfo"
"__ct__16CPuddleToadGammaF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersfff9CVector3ffffRC11CDamageInfoRC11CDamageInfo":
/* 8014CC30 00149B90  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8014CC34 00149B94  7C 08 02 A6 */	mflr r0
/* 8014CC38 00149B98  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8014CC3C 00149B9C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8014CC40 00149BA0  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 8014CC44 00149BA4  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8014CC48 00149BA8  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 8014CC4C 00149BAC  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8014CC50 00149BB0  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, qr0
/* 8014CC54 00149BB4  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 8014CC58 00149BB8  F3 81 00 98 */	psq_st f28, 152(r1), 0, qr0
/* 8014CC5C 00149BBC  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 8014CC60 00149BC0  F3 61 00 88 */	psq_st f27, 136(r1), 0, qr0
/* 8014CC64 00149BC4  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 8014CC68 00149BC8  F3 41 00 78 */	psq_st f26, 120(r1), 0, qr0
/* 8014CC6C 00149BCC  BF 21 00 54 */	stmw r25, 0x54(r1)
/* 8014CC70 00149BD0  A0 04 00 00 */	lhz r0, 0(r4)
/* 8014CC74 00149BD4  7C D9 33 78 */	mr r25, r6
/* 8014CC78 00149BD8  7C FA 3B 78 */	mr r26, r7
/* 8014CC7C 00149BDC  7D 0C 43 78 */	mr r12, r8
/* 8014CC80 00149BE0  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8014CC84 00149BE4  7D 2B 4B 78 */	mr r11, r9
/* 8014CC88 00149BE8  38 C0 00 01 */	li r6, 1
/* 8014CC8C 00149BEC  38 80 00 00 */	li r4, 0
/* 8014CC90 00149BF0  91 41 00 08 */	stw r10, 8(r1)
/* 8014CC94 00149BF4  38 00 00 02 */	li r0, 2
/* 8014CC98 00149BF8  80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 8014CC9C 00149BFC  FF 40 08 90 */	fmr f26, f1
/* 8014CCA0 00149C00  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8014CCA4 00149C04  7C A6 2B 78 */	mr r6, r5
/* 8014CCA8 00149C08  FF 60 10 90 */	fmr f27, f2
/* 8014CCAC 00149C0C  83 C1 00 DC */	lwz r30, 0xdc(r1)
/* 8014CCB0 00149C10  90 81 00 10 */	stw r4, 0x10(r1)
/* 8014CCB4 00149C14  FF 80 18 90 */	fmr f28, f3
/* 8014CCB8 00149C18  83 61 00 E0 */	lwz r27, 0xe0(r1)
/* 8014CCBC 00149C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CCC0 00149C20  FF A0 20 90 */	fmr f29, f4
/* 8014CCC4 00149C24  83 81 00 E4 */	lwz r28, 0xe4(r1)
/* 8014CCC8 00149C28  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8014CCCC 00149C2C  FF C0 28 90 */	fmr f30, f5
/* 8014CCD0 00149C30  83 E1 00 E8 */	lwz r31, 0xe8(r1)
/* 8014CCD4 00149C34  FF E0 30 90 */	fmr f31, f6
/* 8014CCD8 00149C38  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8014CCDC 00149C3C  7C 7D 1B 78 */	mr r29, r3
/* 8014CCE0 00149C40  7F 27 CB 78 */	mr r7, r25
/* 8014CCE4 00149C44  7F 48 D3 78 */	mr r8, r26
/* 8014CCE8 00149C48  7D 89 63 78 */	mr r9, r12
/* 8014CCEC 00149C4C  7D 6A 5B 78 */	mr r10, r11
/* 8014CCF0 00149C50  38 A1 00 20 */	addi r5, r1, 0x20
/* 8014CCF4 00149C54  38 80 00 1C */	li r4, 0x1c
/* 8014CCF8 00149C58  4B F3 07 59 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 8014CCFC 00149C5C  3C 60 80 3E */	lis r3, lbl_803E24E0@ha
/* 8014CD00 00149C60  C0 02 9D 14 */	lfs f0, lbl_805ABA34@sda21(r2)
/* 8014CD04 00149C64  38 63 24 E0 */	addi r3, r3, lbl_803E24E0@l
/* 8014CD08 00149C68  38 00 00 00 */	li r0, 0
/* 8014CD0C 00149C6C  90 7D 00 00 */	stw r3, 0(r29)
/* 8014CD10 00149C70  EC 1B 00 32 */	fmuls f0, f27, f0
/* 8014CD14 00149C74  C0 22 9D 10 */	lfs f1, lbl_805ABA30@sda21(r2)
/* 8014CD18 00149C78  90 1D 05 68 */	stw r0, 0x568(r29)
/* 8014CD1C 00149C7C  C0 42 9C F0 */	lfs f2, lbl_805ABA10@sda21(r2)
/* 8014CD20 00149C80  EC 21 00 32 */	fmuls f1, f1, f0
/* 8014CD24 00149C84  D0 5D 05 6C */	stfs f2, 0x56c(r29)
/* 8014CD28 00149C88  80 1B 00 00 */	lwz r0, 0(r27)
/* 8014CD2C 00149C8C  90 1D 05 70 */	stw r0, 0x570(r29)
/* 8014CD30 00149C90  88 1B 00 04 */	lbz r0, 4(r27)
/* 8014CD34 00149C94  98 1D 05 74 */	stb r0, 0x574(r29)
/* 8014CD38 00149C98  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8014CD3C 00149C9C  D0 1D 05 78 */	stfs f0, 0x578(r29)
/* 8014CD40 00149CA0  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8014CD44 00149CA4  D0 1D 05 7C */	stfs f0, 0x57c(r29)
/* 8014CD48 00149CA8  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 8014CD4C 00149CAC  D0 1D 05 80 */	stfs f0, 0x580(r29)
/* 8014CD50 00149CB0  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 8014CD54 00149CB4  D0 1D 05 84 */	stfs f0, 0x584(r29)
/* 8014CD58 00149CB8  88 1B 00 18 */	lbz r0, 0x18(r27)
/* 8014CD5C 00149CBC  98 1D 05 88 */	stb r0, 0x588(r29)
/* 8014CD60 00149CC0  80 1C 00 00 */	lwz r0, 0(r28)
/* 8014CD64 00149CC4  90 1D 05 8C */	stw r0, 0x58c(r29)
/* 8014CD68 00149CC8  88 1C 00 04 */	lbz r0, 4(r28)
/* 8014CD6C 00149CCC  98 1D 05 90 */	stb r0, 0x590(r29)
/* 8014CD70 00149CD0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8014CD74 00149CD4  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 8014CD78 00149CD8  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8014CD7C 00149CDC  D0 1D 05 98 */	stfs f0, 0x598(r29)
/* 8014CD80 00149CE0  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8014CD84 00149CE4  D0 1D 05 9C */	stfs f0, 0x59c(r29)
/* 8014CD88 00149CE8  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 8014CD8C 00149CEC  D0 1D 05 A0 */	stfs f0, 0x5a0(r29)
/* 8014CD90 00149CF0  88 1C 00 18 */	lbz r0, 0x18(r28)
/* 8014CD94 00149CF4  98 1D 05 A4 */	stb r0, 0x5a4(r29)
/* 8014CD98 00149CF8  D3 5D 05 A8 */	stfs f26, 0x5a8(r29)
/* 8014CD9C 00149CFC  48 24 76 55 */	bl cos
/* 8014CDA0 00149D00  FC 00 08 18 */	frsp f0, f1
/* 8014CDA4 00149D04  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8014CDA8 00149D08  3C 1F 00 01 */	addis r0, r31, 1
/* 8014CDAC 00149D0C  38 80 00 00 */	li r4, 0
/* 8014CDB0 00149D10  38 A3 66 A0 */	addi r5, r3, skZero3f@l
/* 8014CDB4 00149D14  38 60 00 01 */	li r3, 1
/* 8014CDB8 00149D18  D0 1D 05 AC */	stfs f0, 0x5ac(r29)
/* 8014CDBC 00149D1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8014CDC0 00149D20  D3 9D 05 B0 */	stfs f28, 0x5b0(r29)
/* 8014CDC4 00149D24  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8014CDC8 00149D28  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
/* 8014CDCC 00149D2C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8014CDD0 00149D30  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 8014CDD4 00149D34  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8014CDD8 00149D38  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 8014CDDC 00149D3C  D3 BD 05 C0 */	stfs f29, 0x5c0(r29)
/* 8014CDE0 00149D40  D3 DD 05 C4 */	stfs f30, 0x5c4(r29)
/* 8014CDE4 00149D44  D3 FD 05 C8 */	stfs f31, 0x5c8(r29)
/* 8014CDE8 00149D48  C0 05 00 00 */	lfs f0, 0(r5)
/* 8014CDEC 00149D4C  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 8014CDF0 00149D50  C0 05 00 04 */	lfs f0, 4(r5)
/* 8014CDF4 00149D54  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 8014CDF8 00149D58  C0 05 00 08 */	lfs f0, 8(r5)
/* 8014CDFC 00149D5C  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 8014CE00 00149D60  C0 05 00 00 */	lfs f0, 0(r5)
/* 8014CE04 00149D64  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 8014CE08 00149D68  C0 05 00 04 */	lfs f0, 4(r5)
/* 8014CE0C 00149D6C  D0 1D 05 DC */	stfs f0, 0x5dc(r29)
/* 8014CE10 00149D70  C0 05 00 08 */	lfs f0, 8(r5)
/* 8014CE14 00149D74  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 8014CE18 00149D78  90 9D 05 E4 */	stw r4, 0x5e4(r29)
/* 8014CE1C 00149D7C  88 1D 05 E8 */	lbz r0, 0x5e8(r29)
/* 8014CE20 00149D80  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8014CE24 00149D84  98 1D 05 E8 */	stb r0, 0x5e8(r29)
/* 8014CE28 00149D88  88 1D 05 E8 */	lbz r0, 0x5e8(r29)
/* 8014CE2C 00149D8C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8014CE30 00149D90  98 1D 05 E8 */	stb r0, 0x5e8(r29)
/* 8014CE34 00149D94  88 1D 05 E8 */	lbz r0, 0x5e8(r29)
/* 8014CE38 00149D98  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8014CE3C 00149D9C  98 1D 05 E8 */	stb r0, 0x5e8(r29)
/* 8014CE40 00149DA0  88 1D 04 01 */	lbz r0, 0x401(r29)
/* 8014CE44 00149DA4  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8014CE48 00149DA8  98 1D 04 01 */	stb r0, 0x401(r29)
/* 8014CE4C 00149DAC  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8014CE50 00149DB0  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8014CE54 00149DB4  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8014CE58 00149DB8  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8014CE5C 00149DBC  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8014CE60 00149DC0  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8014CE64 00149DC4  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8014CE68 00149DC8  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8014CE6C 00149DCC  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8014CE70 00149DD0  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8014CE74 00149DD4  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8014CE78 00149DD8  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8014CE7C 00149DDC  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8014CE80 00149DE0  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 8014CE84 00149DE4  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8014CE88 00149DE8  88 1D 00 F8 */	lbz r0, 0xf8(r29)
/* 8014CE8C 00149DEC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8014CE90 00149DF0  98 1D 00 F8 */	stb r0, 0xf8(r29)
/* 8014CE94 00149DF4  41 82 01 00 */	beq lbl_8014CF94
/* 8014CE98 00149DF8  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 8014CE9C 00149DFC  7F E4 FB 78 */	mr r4, r31
/* 8014CEA0 00149E00  38 63 00 04 */	addi r3, r3, 4
/* 8014CEA4 00149E04  48 1E EE 29 */	bl GetResourceTypeById__10CResLoaderCFUi
/* 8014CEA8 00149E08  28 03 00 00 */	cmplwi r3, 0
/* 8014CEAC 00149E0C  41 82 00 E8 */	beq lbl_8014CF94
/* 8014CEB0 00149E10  3C 60 44 43 */	lis r3, 0x44434C4E@ha
/* 8014CEB4 00149E14  93 E1 00 30 */	stw r31, 0x30(r1)
/* 8014CEB8 00149E18  38 03 4C 4E */	addi r0, r3, 0x44434C4E@l
/* 8014CEBC 00149E1C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8014CEC0 00149E20  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8014CEC4 00149E24  38 61 00 24 */	addi r3, r1, 0x24
/* 8014CEC8 00149E28  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8014CECC 00149E2C  81 84 00 00 */	lwz r12, 0(r4)
/* 8014CED0 00149E30  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8014CED4 00149E34  7D 89 03 A6 */	mtctr r12
/* 8014CED8 00149E38  4E 80 04 21 */	bctrl
/* 8014CEDC 00149E3C  3B 21 00 34 */	addi r25, r1, 0x34
/* 8014CEE0 00149E40  38 81 00 24 */	addi r4, r1, 0x24
/* 8014CEE4 00149E44  7F 23 CB 78 */	mr r3, r25
/* 8014CEE8 00149E48  48 1F 3F C1 */	bl __ct__6CTokenFRC6CToken
/* 8014CEEC 00149E4C  7F 23 CB 78 */	mr r3, r25
/* 8014CEF0 00149E50  48 1F 3F 1D */	bl GetObj__6CTokenFv
/* 8014CEF4 00149E54  80 03 00 04 */	lwz r0, 4(r3)
/* 8014CEF8 00149E58  3B 21 00 40 */	addi r25, r1, 0x40
/* 8014CEFC 00149E5C  7F 23 CB 78 */	mr r3, r25
/* 8014CF00 00149E60  38 81 00 34 */	addi r4, r1, 0x34
/* 8014CF04 00149E64  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8014CF08 00149E68  48 1F 3F A1 */	bl __ct__6CTokenFRC6CToken
/* 8014CF0C 00149E6C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8014CF10 00149E70  7F 23 CB 78 */	mr r3, r25
/* 8014CF14 00149E74  90 01 00 48 */	stw r0, 0x48(r1)
/* 8014CF18 00149E78  48 1F 3E 6D */	bl Lock__6CTokenFv
/* 8014CF1C 00149E7C  38 61 00 34 */	addi r3, r1, 0x34
/* 8014CF20 00149E80  38 80 00 00 */	li r4, 0
/* 8014CF24 00149E84  48 1F 3F 1D */	bl __dt__6CTokenFv
/* 8014CF28 00149E88  38 61 00 24 */	addi r3, r1, 0x24
/* 8014CF2C 00149E8C  38 80 FF FF */	li r4, -1
/* 8014CF30 00149E90  48 1F 3F 11 */	bl __dt__6CTokenFv
/* 8014CF34 00149E94  3C 80 80 3D */	lis r4, lbl_803D0170@ha
/* 8014CF38 00149E98  38 60 00 18 */	li r3, 0x18
/* 8014CF3C 00149E9C  38 84 01 70 */	addi r4, r4, lbl_803D0170@l
/* 8014CF40 00149EA0  38 A0 00 00 */	li r5, 0
/* 8014CF44 00149EA4  38 84 00 22 */	addi r4, r4, 0x22
/* 8014CF48 00149EA8  48 1C 89 25 */	bl __nw__FUlPCcPCc
/* 8014CF4C 00149EAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8014CF50 00149EB0  41 82 00 14 */	beq lbl_8014CF64
/* 8014CF54 00149EB4  80 81 00 48 */	lwz r4, 0x48(r1)
/* 8014CF58 00149EB8  38 BD 00 68 */	addi r5, r29, 0x68
/* 8014CF5C 00149EBC  48 16 0A 09 */	bl "__ct__23CCollidableOBBTreeGroupFRCQ24rstl42vector<6CAABox,Q24rstl17rmemory_allocator>R14CCMaterialList"
/* 8014CF60 00149EC0  7C 7E 1B 78 */	mr r30, r3
lbl_8014CF64:
/* 8014CF64 00149EC4  80 7D 05 E4 */	lwz r3, 0x5e4(r29)
/* 8014CF68 00149EC8  28 03 00 00 */	cmplwi r3, 0
/* 8014CF6C 00149ECC  41 82 00 18 */	beq lbl_8014CF84
/* 8014CF70 00149ED0  81 83 00 00 */	lwz r12, 0(r3)
/* 8014CF74 00149ED4  38 80 00 01 */	li r4, 1
/* 8014CF78 00149ED8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8014CF7C 00149EDC  7D 89 03 A6 */	mtctr r12
/* 8014CF80 00149EE0  4E 80 04 21 */	bctrl
lbl_8014CF84:
/* 8014CF84 00149EE4  93 DD 05 E4 */	stw r30, 0x5e4(r29)
/* 8014CF88 00149EE8  38 61 00 40 */	addi r3, r1, 0x40
/* 8014CF8C 00149EEC  38 80 00 00 */	li r4, 0
/* 8014CF90 00149EF0  48 1F 3E B1 */	bl __dt__6CTokenFv
lbl_8014CF94:
/* 8014CF94 00149EF4  7F A3 EB 78 */	mr r3, r29
/* 8014CF98 00149EF8  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 8014CF9C 00149EFC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8014CFA0 00149F00  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 8014CFA4 00149F04  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8014CFA8 00149F08  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, qr0
/* 8014CFAC 00149F0C  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 8014CFB0 00149F10  E3 81 00 98 */	psq_l f28, 152(r1), 0, qr0
/* 8014CFB4 00149F14  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 8014CFB8 00149F18  E3 61 00 88 */	psq_l f27, 136(r1), 0, qr0
/* 8014CFBC 00149F1C  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 8014CFC0 00149F20  E3 41 00 78 */	psq_l f26, 120(r1), 0, qr0
/* 8014CFC4 00149F24  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 8014CFC8 00149F28  BB 21 00 54 */	lmw r25, 0x54(r1)
/* 8014CFCC 00149F2C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8014CFD0 00149F30  7C 08 03 A6 */	mtlr r0
/* 8014CFD4 00149F34  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8014CFD8 00149F38  4E 80 00 20 */	blr

.global __sinit_CPuddleToadGamma_cpp
__sinit_CPuddleToadGamma_cpp:
/* 8014CFDC 00149F3C  C0 42 9C F0 */	lfs f2, lbl_805ABA10@sda21(r2)
/* 8014CFE0 00149F40  3C 60 80 57 */	lis r3, lbl_805719DC@ha
/* 8014CFE4 00149F44  C0 22 9D 18 */	lfs f1, lbl_805ABA38@sda21(r2)
/* 8014CFE8 00149F48  D4 43 19 DC */	stfsu f2, lbl_805719DC@l(r3)
/* 8014CFEC 00149F4C  C0 02 9D 1C */	lfs f0, lbl_805ABA3C@sda21(r2)
/* 8014CFF0 00149F50  D0 23 00 04 */	stfs f1, 4(r3)
/* 8014CFF4 00149F54  D0 03 00 08 */	stfs f0, 8(r3)
/* 8014CFF8 00149F58  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805ABA10
lbl_805ABA10:
	# ROM: 0x3F82B0
	.4byte 0

.global lbl_805ABA14
lbl_805ABA14:
	# ROM: 0x3F82B4
	.4byte 0x42C80000

.global lbl_805ABA18
lbl_805ABA18:
	# ROM: 0x3F82B8
	.float 2.0

.global lbl_805ABA1C
lbl_805ABA1C:
	# ROM: 0x3F82BC
	.float 1.0

.global lbl_805ABA20
lbl_805ABA20:
	# ROM: 0x3F82C0
	.4byte 0x41A00000

.global lbl_805ABA24
lbl_805ABA24:
	# ROM: 0x3F82C4
	.float 5.0

.global lbl_805ABA28
lbl_805ABA28:
	# ROM: 0x3F82C8
	.float 4.0

.global lbl_805ABA2C
lbl_805ABA2C:
	# ROM: 0x3F82CC
	.4byte 0x40400000

.global lbl_805ABA30
lbl_805ABA30:
	# ROM: 0x3F82D0
	.float 0.017453292

.global lbl_805ABA34
lbl_805ABA34:
	# ROM: 0x3F82D4
	.float 0.5

.global lbl_805ABA38
lbl_805ABA38:
	# ROM: 0x3F82D8
	.float 0.1

.global lbl_805ABA3C
lbl_805ABA3C:
	# ROM: 0x3F82DC
	.4byte 0xBE99999A


.section .rodata
.global lbl_803D0170
lbl_803D0170:
	# ROM: 0x3CD170
	.asciz "MOUTH_LCTR_SDK"
	.byte 0x53
	.asciz "AMUS_POS_LCTR_SDK"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4
	.4byte 0


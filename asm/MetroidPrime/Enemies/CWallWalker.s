.include "macros.inc"

.section .data
.balign 8

.global lbl_803EA0F0
lbl_803EA0F0:
	# ROM: 0x3E70F0
	.4byte 0
	.4byte 0
	.4byte __dt__11CWallWalkerFv
	.4byte Accept__10CPatternedFR8IVisitor
	.4byte PreThink__11CWallWalkerFfR13CStateManager
	.4byte Think__11CWallWalkerFfR13CStateManager
	.4byte AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__11CWallWalkerCFRC13CStateManager
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
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__11CWallWalkerCFv
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
	.4byte GetSearchPath__10CPatternedFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte 0


.section .text, "ax"

.global Think__11CWallWalkerFfR13CStateManager
Think__11CWallWalkerFfR13CStateManager:
/* 8026856C 002654CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80268570 002654D0  7C 08 02 A6 */	mflr r0
/* 80268574 002654D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80268578 002654D8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8026857C 002654DC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80268580 002654E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80268584 002654E4  7C 7F 1B 78 */	mr r31, r3
/* 80268588 002654E8  FF E0 08 90 */	fmr f31, f1
/* 8026858C 002654EC  4B E1 15 8D */	bl Think__10CPatternedFfR13CStateManager
/* 80268590 002654F0  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 80268594 002654F4  2C 00 FF FF */	cmpwi r0, -1
/* 80268598 002654F8  41 82 01 18 */	beq lbl_802686B0
/* 8026859C 002654FC  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 802685A0 00265500  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 802685A4 00265504  41 82 00 50 */	beq lbl_802685F4
/* 802685A8 00265508  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 802685AC 0026550C  C0 02 BA FC */	lfs f0, lbl_805AD81C@sda21(r2)
/* 802685B0 00265510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802685B4 00265514  40 80 00 88 */	bge lbl_8026863C
/* 802685B8 00265518  38 7F 01 38 */	addi r3, r31, 0x138
/* 802685BC 0026551C  48 0A C2 FD */	bl Magnitude__9CVector3fCFv
/* 802685C0 00265520  EC 5F 00 72 */	fmuls f2, f31, f1
/* 802685C4 00265524  C0 22 BB 00 */	lfs f1, lbl_805AD820@sda21(r2)
/* 802685C8 00265528  C0 7F 05 C8 */	lfs f3, 0x5c8(r31)
/* 802685CC 0026552C  C0 02 BA FC */	lfs f0, lbl_805AD81C@sda21(r2)
/* 802685D0 00265530  EC 22 08 24 */	fdivs f1, f2, f1
/* 802685D4 00265534  EC 23 08 2A */	fadds f1, f3, f1
/* 802685D8 00265538  D0 3F 05 C8 */	stfs f1, 0x5c8(r31)
/* 802685DC 0026553C  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 802685E0 00265540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802685E4 00265544  4C 41 13 82 */	cror 2, 1, 2
/* 802685E8 00265548  40 82 00 54 */	bne lbl_8026863C
/* 802685EC 0026554C  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 802685F0 00265550  48 00 00 4C */	b lbl_8026863C
lbl_802685F4:
/* 802685F4 00265554  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 802685F8 00265558  C0 02 BB 04 */	lfs f0, lbl_805AD824@sda21(r2)
/* 802685FC 0026555C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268600 00265560  40 81 00 3C */	ble lbl_8026863C
/* 80268604 00265564  38 7F 01 38 */	addi r3, r31, 0x138
/* 80268608 00265568  48 0A C2 B1 */	bl Magnitude__9CVector3fCFv
/* 8026860C 0026556C  EC 5F 00 72 */	fmuls f2, f31, f1
/* 80268610 00265570  C0 22 BB 08 */	lfs f1, lbl_805AD828@sda21(r2)
/* 80268614 00265574  C0 7F 05 C8 */	lfs f3, 0x5c8(r31)
/* 80268618 00265578  C0 02 BB 04 */	lfs f0, lbl_805AD824@sda21(r2)
/* 8026861C 0026557C  EC 22 08 24 */	fdivs f1, f2, f1
/* 80268620 00265580  EC 23 08 28 */	fsubs f1, f3, f1
/* 80268624 00265584  D0 3F 05 C8 */	stfs f1, 0x5c8(r31)
/* 80268628 00265588  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 8026862C 0026558C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268630 00265590  4C 40 13 82 */	cror 2, 0, 2
/* 80268634 00265594  40 82 00 08 */	bne lbl_8026863C
/* 80268638 00265598  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
lbl_8026863C:
/* 8026863C 0026559C  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 80268640 002655A0  C0 02 BB 04 */	lfs f0, lbl_805AD824@sda21(r2)
/* 80268644 002655A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268648 002655A8  41 81 00 10 */	bgt lbl_80268658
/* 8026864C 002655AC  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 80268650 002655B0  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80268654 002655B4  41 82 00 5C */	beq lbl_802686B0
lbl_80268658:
/* 80268658 002655B8  C0 02 BB 0C */	lfs f0, lbl_805AD82C@sda21(r2)
/* 8026865C 002655BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268660 002655C0  40 81 00 30 */	ble lbl_80268690
/* 80268664 002655C4  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80268668 002655C8  38 A0 00 01 */	li r5, 1
/* 8026866C 002655CC  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80268670 002655D0  38 C0 00 00 */	li r6, 0
/* 80268674 002655D4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80268678 002655D8  4B DC 1B 59 */	bl AddAdditiveAnimation__9CAnimDataFUifbb
/* 8026867C 002655DC  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 80268680 002655E0  38 60 00 01 */	li r3, 1
/* 80268684 002655E4  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80268688 002655E8  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 8026868C 002655EC  48 00 00 24 */	b lbl_802686B0
lbl_80268690:
/* 80268690 002655F0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80268694 002655F4  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80268698 002655F8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8026869C 002655FC  4B DC 1A BD */	bl DelAdditiveAnimation__9CAnimDataFUi
/* 802686A0 00265600  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 802686A4 00265604  38 60 00 00 */	li r3, 0
/* 802686A8 00265608  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802686AC 0026560C  98 1F 05 D6 */	stb r0, 0x5d6(r31)
lbl_802686B0:
/* 802686B0 00265610  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 802686B4 00265614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802686B8 00265618  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 802686BC 0026561C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802686C0 00265620  7C 08 03 A6 */	mtlr r0
/* 802686C4 00265624  38 21 00 20 */	addi r1, r1, 0x20
/* 802686C8 00265628  4E 80 00 20 */	blr

.global Render__11CWallWalkerCFRC13CStateManager
Render__11CWallWalkerCFRC13CStateManager:
/* 802686CC 0026562C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802686D0 00265630  7C 08 02 A6 */	mflr r0
/* 802686D4 00265634  90 01 00 14 */	stw r0, 0x14(r1)
/* 802686D8 00265638  4B E0 F9 55 */	bl Render__10CPatternedCFRC13CStateManager
/* 802686DC 0026563C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802686E0 00265640  7C 08 03 A6 */	mtlr r0
/* 802686E4 00265644  38 21 00 10 */	addi r1, r1, 0x10
/* 802686E8 00265648  4E 80 00 20 */	blr

.global GotoNextWaypoint__11CWallWalkerFR13CStateManager
GotoNextWaypoint__11CWallWalkerFR13CStateManager:
/* 802686EC 0026564C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802686F0 00265650  7C 08 02 A6 */	mflr r0
/* 802686F4 00265654  90 01 00 54 */	stw r0, 0x54(r1)
/* 802686F8 00265658  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802686FC 0026565C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80268700 00265660  7C 9E 23 78 */	mr r30, r4
/* 80268704 00265664  38 81 00 14 */	addi r4, r1, 0x14
/* 80268708 00265668  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8026870C 0026566C  7C 7D 1B 78 */	mr r29, r3
/* 80268710 00265670  A0 03 02 DC */	lhz r0, 0x2dc(r3)
/* 80268714 00265674  7F C3 F3 78 */	mr r3, r30
/* 80268718 00265678  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8026871C 0026567C  4B DE 3E 59 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80268720 00265680  7C 64 1B 78 */	mr r4, r3
/* 80268724 00265684  38 61 00 18 */	addi r3, r1, 0x18
/* 80268728 00265688  4B E3 DE 25 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 8026872C 0026568C  83 E3 00 04 */	lwz r31, 4(r3)
/* 80268730 00265690  28 1F 00 00 */	cmplwi r31, 0
/* 80268734 00265694  41 82 00 E0 */	beq lbl_80268814
/* 80268738 00265698  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8026873C 0026569C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80268740 002656A0  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80268744 002656A4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80268748 002656A8  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8026874C 002656AC  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80268750 002656B0  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80268754 002656B4  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80268758 002656B8  EC A3 08 28 */	fsubs f5, f3, f1
/* 8026875C 002656BC  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80268760 002656C0  EC 02 00 28 */	fsubs f0, f2, f0
/* 80268764 002656C4  C0 DD 05 C0 */	lfs f6, 0x5c0(r29)
/* 80268768 002656C8  EC 84 08 28 */	fsubs f4, f4, f1
/* 8026876C 002656CC  EC 25 01 72 */	fmuls f1, f5, f5
/* 80268770 002656D0  EC 40 00 32 */	fmuls f2, f0, f0
/* 80268774 002656D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80268778 002656D8  EC 64 01 32 */	fmuls f3, f4, f4
/* 8026877C 002656DC  EC 06 01 B2 */	fmuls f0, f6, f6
/* 80268780 002656E0  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80268784 002656E4  EC 22 08 2A */	fadds f1, f2, f1
/* 80268788 002656E8  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8026878C 002656EC  EC 23 08 2A */	fadds f1, f3, f1
/* 80268790 002656F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268794 002656F4  40 80 00 74 */	bge lbl_80268808
/* 80268798 002656F8  7F E4 FB 78 */	mr r4, r31
/* 8026879C 002656FC  7F C5 F3 78 */	mr r5, r30
/* 802687A0 00265700  38 61 00 10 */	addi r3, r1, 0x10
/* 802687A4 00265704  4B E0 E9 91 */	bl NextWaypoint__15CScriptWaypointCFR13CStateManager
/* 802687A8 00265708  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 802687AC 0026570C  C0 22 BB 04 */	lfs f1, lbl_805AD824@sda21(r2)
/* 802687B0 00265710  B0 1D 02 DC */	sth r0, 0x2dc(r29)
/* 802687B4 00265714  C0 02 BB 10 */	lfs f0, lbl_805AD830@sda21(r2)
/* 802687B8 00265718  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 802687BC 0026571C  EC 22 08 28 */	fsubs f1, f2, f1
/* 802687C0 00265720  FC 20 0A 10 */	fabs f1, f1
/* 802687C4 00265724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802687C8 00265728  41 80 00 20 */	blt lbl_802687E8
/* 802687CC 0026572C  D0 5D 05 BC */	stfs f2, 0x5bc(r29)
/* 802687D0 00265730  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 802687D4 00265734  2C 00 00 00 */	cmpwi r0, 0
/* 802687D8 00265738  40 82 00 10 */	bne lbl_802687E8
/* 802687DC 0026573C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 802687E0 00265740  38 80 00 01 */	li r4, 1
/* 802687E4 00265744  4B ED 21 F5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_802687E8:
/* 802687E8 00265748  A0 1D 00 08 */	lhz r0, 8(r29)
/* 802687EC 0026574C  7F C3 F3 78 */	mr r3, r30
/* 802687F0 00265750  7F E4 FB 78 */	mr r4, r31
/* 802687F4 00265754  38 A1 00 0C */	addi r5, r1, 0xc
/* 802687F8 00265758  B0 01 00 08 */	sth r0, 8(r1)
/* 802687FC 0026575C  38 C0 00 02 */	li r6, 2
/* 80268800 00265760  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80268804 00265764  4B DD B6 CD */	bl SendScriptMsg__13CStateManagerFP7CEntity9TEditorId20EScriptObjectMessage
lbl_80268808:
/* 80268808 00265768  7F A3 EB 78 */	mr r3, r29
/* 8026880C 0026576C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80268810 00265770  4B E1 43 4D */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_80268814:
/* 80268814 00265774  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80268818 00265778  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8026881C 0026577C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80268820 00265780  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80268824 00265784  7C 08 03 A6 */	mtlr r0
/* 80268828 00265788  38 21 00 50 */	addi r1, r1, 0x50
/* 8026882C 0026578C  4E 80 00 20 */	blr

.global PreThink__11CWallWalkerFfR13CStateManager
PreThink__11CWallWalkerFfR13CStateManager:
/* 80268830 00265790  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80268834 00265794  7C 08 02 A6 */	mflr r0
/* 80268838 00265798  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8026883C 0026579C  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80268840 002657A0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 80268844 002657A4  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 80268848 002657A8  7C 7F 1B 78 */	mr r31, r3
/* 8026884C 002657AC  FF E0 08 90 */	fmr f31, f1
/* 80268850 002657B0  4B E0 F1 41 */	bl PreThink__10CPatternedFfR13CStateManager
/* 80268854 002657B4  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80268858 002657B8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8026885C 002657BC  41 82 01 C8 */	beq lbl_80268A24
/* 80268860 002657C0  88 7F 05 D6 */	lbz r3, 0x5d6(r31)
/* 80268864 002657C4  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80268868 002657C8  40 82 01 BC */	bne lbl_80268A24
/* 8026886C 002657CC  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80268870 002657D0  C0 02 BB 04 */	lfs f0, lbl_805AD824@sda21(r2)
/* 80268874 002657D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268878 002657D8  4C 40 13 82 */	cror 2, 0, 2
/* 8026887C 002657DC  40 82 01 A8 */	bne lbl_80268A24
/* 80268880 002657E0  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 80268884 002657E4  40 82 01 A0 */	bne lbl_80268A24
/* 80268888 002657E8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8026888C 002657EC  4B ED 18 41 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 80268890 002657F0  C0 42 BB 04 */	lfs f2, lbl_805AD824@sda21(r2)
/* 80268894 002657F4  C0 02 BB 10 */	lfs f0, lbl_805AD830@sda21(r2)
/* 80268898 002657F8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8026889C 002657FC  FC 20 0A 10 */	fabs f1, f1
/* 802688A0 00265800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802688A4 00265804  40 80 01 80 */	bge lbl_80268A24
/* 802688A8 00265808  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 802688AC 0026580C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802688B0 00265810  41 82 01 74 */	beq lbl_80268A24
/* 802688B4 00265814  38 61 00 34 */	addi r3, r1, 0x34
/* 802688B8 00265818  38 9F 00 34 */	addi r4, r31, 0x34
/* 802688BC 0026581C  48 0A 98 6D */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 802688C0 00265820  FC 20 F8 90 */	fmr f1, f31
/* 802688C4 00265824  7F E4 FB 78 */	mr r4, r31
/* 802688C8 00265828  38 61 00 54 */	addi r3, r1, 0x54
/* 802688CC 0026582C  4B EB 33 E5 */	bl PredictMotion__13CPhysicsActorCFf
/* 802688D0 00265830  C1 81 00 54 */	lfs f12, 0x54(r1)
/* 802688D4 00265834  7F E3 FB 78 */	mr r3, r31
/* 802688D8 00265838  C1 61 00 58 */	lfs f11, 0x58(r1)
/* 802688DC 0026583C  38 81 00 88 */	addi r4, r1, 0x88
/* 802688E0 00265840  C1 41 00 5C */	lfs f10, 0x5c(r1)
/* 802688E4 00265844  C1 21 00 60 */	lfs f9, 0x60(r1)
/* 802688E8 00265848  C1 01 00 64 */	lfs f8, 0x64(r1)
/* 802688EC 0026584C  C0 E1 00 68 */	lfs f7, 0x68(r1)
/* 802688F0 00265850  C0 C1 00 6C */	lfs f6, 0x6c(r1)
/* 802688F4 00265854  C0 A1 00 70 */	lfs f5, 0x70(r1)
/* 802688F8 00265858  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 802688FC 0026585C  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 80268900 00265860  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80268904 00265864  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80268908 00265868  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8026890C 0026586C  D1 81 00 88 */	stfs f12, 0x88(r1)
/* 80268910 00265870  D1 61 00 8C */	stfs f11, 0x8c(r1)
/* 80268914 00265874  D1 41 00 90 */	stfs f10, 0x90(r1)
/* 80268918 00265878  D1 21 00 94 */	stfs f9, 0x94(r1)
/* 8026891C 0026587C  D1 01 00 98 */	stfs f8, 0x98(r1)
/* 80268920 00265880  D0 E1 00 9C */	stfs f7, 0x9c(r1)
/* 80268924 00265884  D0 C1 00 A0 */	stfs f6, 0xa0(r1)
/* 80268928 00265888  D0 A1 00 A4 */	stfs f5, 0xa4(r1)
/* 8026892C 0026588C  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 80268930 00265890  D0 61 00 AC */	stfs f3, 0xac(r1)
/* 80268934 00265894  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 80268938 00265898  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 8026893C 0026589C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80268940 002658A0  4B EB 2B D5 */	bl AddMotionState__13CPhysicsActorFRC12CMotionState
/* 80268944 002658A4  38 61 00 24 */	addi r3, r1, 0x24
/* 80268948 002658A8  38 9F 00 34 */	addi r4, r31, 0x34
/* 8026894C 002658AC  48 0A 97 DD */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 80268950 002658B0  7F E3 FB 78 */	mr r3, r31
/* 80268954 002658B4  4B EB 29 61 */	bl ClearForcesAndTorques__13CPhysicsActorFv
/* 80268958 002658B8  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 8026895C 002658BC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80268960 002658C0  41 82 00 B4 */	beq lbl_80268A14
/* 80268964 002658C4  38 61 00 14 */	addi r3, r1, 0x14
/* 80268968 002658C8  38 9F 05 68 */	addi r4, r31, 0x568
/* 8026896C 002658CC  48 03 9C C9 */	bl GetPlane__17CCollisionSurfaceCFv
/* 80268970 002658D0  C0 C1 00 18 */	lfs f6, 0x18(r1)
/* 80268974 002658D4  7F E3 FB 78 */	mr r3, r31
/* 80268978 002658D8  C1 5F 00 50 */	lfs f10, 0x50(r31)
/* 8026897C 002658DC  38 81 00 08 */	addi r4, r1, 8
/* 80268980 002658E0  C0 E1 00 14 */	lfs f7, 0x14(r1)
/* 80268984 002658E4  EC 06 02 B2 */	fmuls f0, f6, f10
/* 80268988 002658E8  C1 7F 00 40 */	lfs f11, 0x40(r31)
/* 8026898C 002658EC  C0 A1 00 1C */	lfs f5, 0x1c(r1)
/* 80268990 002658F0  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 80268994 002658F4  EC 27 02 FA */	fmadds f1, f7, f11, f0
/* 80268998 002658F8  C1 3F 00 60 */	lfs f9, 0x60(r31)
/* 8026899C 002658FC  C0 02 BB 18 */	lfs f0, lbl_805AD838@sda21(r2)
/* 802689A0 00265900  C0 5F 05 AC */	lfs f2, 0x5ac(r31)
/* 802689A4 00265904  EC 65 0A 7A */	fmadds f3, f5, f9, f1
/* 802689A8 00265908  C0 22 BB 14 */	lfs f1, lbl_805AD834@sda21(r2)
/* 802689AC 0026590C  ED 80 07 F2 */	fmuls f12, f0, f31
/* 802689B0 00265910  C0 02 BA FC */	lfs f0, lbl_805AD81C@sda21(r2)
/* 802689B4 00265914  D0 E1 00 44 */	stfs f7, 0x44(r1)
/* 802689B8 00265918  ED 03 20 28 */	fsubs f8, f3, f4
/* 802689BC 0026591C  EC 60 60 28 */	fsubs f3, f0, f12
/* 802689C0 00265920  D0 C1 00 48 */	stfs f6, 0x48(r1)
/* 802689C4 00265924  EC 08 10 28 */	fsubs f0, f8, f2
/* 802689C8 00265928  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 802689CC 0026592C  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 802689D0 00265930  EC 00 08 28 */	fsubs f0, f0, f1
/* 802689D4 00265934  EC 40 01 F2 */	fmuls f2, f0, f7
/* 802689D8 00265938  EC 20 01 B2 */	fmuls f1, f0, f6
/* 802689DC 0026593C  EC 00 01 72 */	fmuls f0, f0, f5
/* 802689E0 00265940  EC 4B 10 28 */	fsubs f2, f11, f2
/* 802689E4 00265944  EC 2A 08 28 */	fsubs f1, f10, f1
/* 802689E8 00265948  EC 09 00 28 */	fsubs f0, f9, f0
/* 802689EC 0026594C  EC 42 03 32 */	fmuls f2, f2, f12
/* 802689F0 00265950  EC 21 03 32 */	fmuls f1, f1, f12
/* 802689F4 00265954  EC 00 03 32 */	fmuls f0, f0, f12
/* 802689F8 00265958  EC 4B 10 FA */	fmadds f2, f11, f3, f2
/* 802689FC 0026595C  EC 2A 08 FA */	fmadds f1, f10, f3, f1
/* 80268A00 00265960  EC 09 00 FA */	fmadds f0, f9, f3, f0
/* 80268A04 00265964  D0 41 00 08 */	stfs f2, 8(r1)
/* 80268A08 00265968  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80268A0C 0026596C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80268A10 00265970  4B DE A4 7D */	bl SetTranslation__6CActorFRC9CVector3f
lbl_80268A14:
/* 80268A14 00265974  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80268A18 00265978  7F E3 FB 78 */	mr r3, r31
/* 80268A1C 0026597C  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 80268A20 00265980  4B EB 20 19 */	bl MoveCollisionPrimitive__13CPhysicsActorFRC9CVector3f
lbl_80268A24:
/* 80268A24 00265984  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 80268A28 00265988  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80268A2C 0026598C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80268A30 00265990  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80268A34 00265994  7C 08 03 A6 */	mtlr r0
/* 80268A38 00265998  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80268A3C 0026599C  4E 80 00 20 */	blr

.global GetCollisionPrimitive__11CWallWalkerCFv
GetCollisionPrimitive__11CWallWalkerCFv:
/* 80268A40 002659A0  38 63 05 90 */	addi r3, r3, 0x590
/* 80268A44 002659A4  4E 80 00 20 */	blr

.global AlignToFloor__11CWallWalkerFR13CStateManagerfRC9CVector3ff
AlignToFloor__11CWallWalkerFR13CStateManagerfRC9CVector3ff:
/* 80268A48 002659A8  94 21 E3 90 */	stwu r1, -0x1c70(r1)
/* 80268A4C 002659AC  7C 08 02 A6 */	mflr r0
/* 80268A50 002659B0  90 01 1C 74 */	stw r0, 0x1c74(r1)
/* 80268A54 002659B4  38 00 1C 68 */	li r0, 0x1c68
/* 80268A58 002659B8  DB E1 1C 60 */	stfd f31, 0x1c60(r1)
/* 80268A5C 002659BC  13 E1 00 0E */	psq_stx f31, r1, r0, 0, qr0
/* 80268A60 002659C0  38 00 1C 58 */	li r0, 0x1c58
/* 80268A64 002659C4  DB C1 1C 50 */	stfd f30, 0x1c50(r1)
/* 80268A68 002659C8  13 C1 00 0E */	psq_stx f30, r1, r0, 0, qr0
/* 80268A6C 002659CC  38 00 1C 48 */	li r0, 0x1c48
/* 80268A70 002659D0  DB A1 1C 40 */	stfd f29, 0x1c40(r1)
/* 80268A74 002659D4  13 A1 00 0E */	psq_stx f29, r1, r0, 0, qr0
/* 80268A78 002659D8  BE 81 1C 10 */	stmw r20, 0x1c10(r1)
/* 80268A7C 002659DC  7C 74 1B 78 */	mr r20, r3
/* 80268A80 002659E0  FF A0 08 90 */	fmr f29, f1
/* 80268A84 002659E4  C0 03 05 B0 */	lfs f0, 0x5b0(r3)
/* 80268A88 002659E8  7C B5 2B 78 */	mr r21, r5
/* 80268A8C 002659EC  7C 96 23 78 */	mr r22, r4
/* 80268A90 002659F0  C0 85 00 04 */	lfs f4, 4(r5)
/* 80268A94 002659F4  EC FD 00 2A */	fadds f7, f29, f0
/* 80268A98 002659F8  C0 65 00 08 */	lfs f3, 8(r5)
/* 80268A9C 002659FC  FF E0 10 90 */	fmr f31, f2
/* 80268AA0 00265A00  C0 05 00 00 */	lfs f0, 0(r5)
/* 80268AA4 00265A04  38 61 00 80 */	addi r3, r1, 0x80
/* 80268AA8 00265A08  EC C4 38 2A */	fadds f6, f4, f7
/* 80268AAC 00265A0C  EC A3 38 2A */	fadds f5, f3, f7
/* 80268AB0 00265A10  38 81 00 74 */	addi r4, r1, 0x74
/* 80268AB4 00265A14  EC 20 38 2A */	fadds f1, f0, f7
/* 80268AB8 00265A18  38 A1 00 68 */	addi r5, r1, 0x68
/* 80268ABC 00265A1C  EC 84 38 28 */	fsubs f4, f4, f7
/* 80268AC0 00265A20  EC 43 38 28 */	fsubs f2, f3, f7
/* 80268AC4 00265A24  EC 00 38 28 */	fsubs f0, f0, f7
/* 80268AC8 00265A28  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80268ACC 00265A2C  3B 60 00 00 */	li r27, 0
/* 80268AD0 00265A30  D0 C1 00 6C */	stfs f6, 0x6c(r1)
/* 80268AD4 00265A34  D0 A1 00 70 */	stfs f5, 0x70(r1)
/* 80268AD8 00265A38  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80268ADC 00265A3C  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 80268AE0 00265A40  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80268AE4 00265A44  48 0C FA 25 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80268AE8 00265A48  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80268AEC 00265A4C  38 81 00 80 */	addi r4, r1, 0x80
/* 80268AF0 00265A50  48 03 AF A1 */	bl __ct__19CAreaCollisionCacheFRC6CAABox
/* 80268AF4 00265A54  7E C3 B3 78 */	mr r3, r22
/* 80268AF8 00265A58  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80268AFC 00265A5C  4B F1 BB C9 */	bl BuildAreaCollisionCache__14CGameCollisionFRC13CStateManagerR19CAreaCollisionCache
/* 80268B00 00265A60  88 14 05 D6 */	lbz r0, 0x5d6(r20)
/* 80268B04 00265A64  C0 14 05 B0 */	lfs f0, 0x5b0(r20)
/* 80268B08 00265A68  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80268B0C 00265A6C  EF BD 00 2A */	fadds f29, f29, f0
/* 80268B10 00265A70  41 82 00 1C */	beq lbl_80268B2C
/* 80268B14 00265A74  7E A4 AB 78 */	mr r4, r21
/* 80268B18 00265A78  38 74 05 68 */	addi r3, r20, 0x568
/* 80268B1C 00265A7C  48 00 05 29 */	bl PointOnSurface__11CWallWalkerFRC17CCollisionSurfaceRC9CVector3f
/* 80268B20 00265A80  88 14 05 D6 */	lbz r0, 0x5d6(r20)
/* 80268B24 00265A84  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80268B28 00265A88  98 14 05 D6 */	stb r0, 0x5d6(r20)
lbl_80268B2C:
/* 80268B2C 00265A8C  88 14 05 D6 */	lbz r0, 0x5d6(r20)
/* 80268B30 00265A90  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80268B34 00265A94  41 82 00 10 */	beq lbl_80268B44
/* 80268B38 00265A98  A8 14 05 D4 */	lha r0, 0x5d4(r20)
/* 80268B3C 00265A9C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80268B40 00265AA0  40 82 01 54 */	bne lbl_80268C94
lbl_80268B44:
/* 80268B44 00265AA4  3B A1 00 DC */	addi r29, r1, 0xdc
/* 80268B48 00265AA8  3A C1 00 98 */	addi r22, r1, 0x98
/* 80268B4C 00265AAC  3B 40 00 00 */	li r26, 0
/* 80268B50 00265AB0  48 00 01 2C */	b lbl_80268C7C
lbl_80268B54:
/* 80268B54 00265AB4  3B DD 00 08 */	addi r30, r29, 8
/* 80268B58 00265AB8  3B 20 00 00 */	li r25, 0
/* 80268B5C 00265ABC  48 00 01 0C */	b lbl_80268C68
lbl_80268B60:
/* 80268B60 00265AC0  7F C4 F3 78 */	mr r4, r30
/* 80268B64 00265AC4  38 61 00 08 */	addi r3, r1, 8
/* 80268B68 00265AC8  48 03 A1 D5 */	bl GetTriangleArray__Q212CAreaOctTree4NodeCFv
/* 80268B6C 00265ACC  83 81 00 08 */	lwz r28, 8(r1)
/* 80268B70 00265AD0  3A E0 00 00 */	li r23, 0
/* 80268B74 00265AD4  83 FE 00 1C */	lwz r31, 0x1c(r30)
/* 80268B78 00265AD8  A3 1C 00 18 */	lhz r24, 0x18(r28)
/* 80268B7C 00265ADC  48 00 00 DC */	b lbl_80268C58
lbl_80268B80:
/* 80268B80 00265AE0  A0 BC 00 1A */	lhz r5, 0x1a(r28)
/* 80268B84 00265AE4  7F E4 FB 78 */	mr r4, r31
/* 80268B88 00265AE8  38 61 00 98 */	addi r3, r1, 0x98
/* 80268B8C 00265AEC  48 03 9E A9 */	bl GetMasterListTriangle__12CAreaOctTreeCFUs
/* 80268B90 00265AF0  7E C4 B3 78 */	mr r4, r22
/* 80268B94 00265AF4  38 61 00 4C */	addi r3, r1, 0x4c
/* 80268B98 00265AF8  48 03 9A 9D */	bl GetPlane__17CCollisionSurfaceCFv
/* 80268B9C 00265AFC  C3 C1 00 58 */	lfs f30, 0x58(r1)
/* 80268BA0 00265B00  7E C4 B3 78 */	mr r4, r22
/* 80268BA4 00265B04  38 61 00 5C */	addi r3, r1, 0x5c
/* 80268BA8 00265B08  48 03 9A FD */	bl GetNormal__17CCollisionSurfaceCFv
/* 80268BAC 00265B0C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80268BB0 00265B10  C0 15 00 04 */	lfs f0, 4(r21)
/* 80268BB4 00265B14  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 80268BB8 00265B18  EC 01 00 32 */	fmuls f0, f1, f0
/* 80268BBC 00265B1C  C0 35 00 00 */	lfs f1, 0(r21)
/* 80268BC0 00265B20  C0 81 00 64 */	lfs f4, 0x64(r1)
/* 80268BC4 00265B24  C0 75 00 08 */	lfs f3, 8(r21)
/* 80268BC8 00265B28  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80268BCC 00265B2C  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 80268BD0 00265B30  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80268BD4 00265B34  FC 00 02 10 */	fabs f0, f0
/* 80268BD8 00265B38  FF C0 00 18 */	frsp f30, f0
/* 80268BDC 00265B3C  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 80268BE0 00265B40  40 80 00 70 */	bge lbl_80268C50
/* 80268BE4 00265B44  7E C3 B3 78 */	mr r3, r22
/* 80268BE8 00265B48  7E A4 AB 78 */	mr r4, r21
/* 80268BEC 00265B4C  48 00 04 59 */	bl PointOnSurface__11CWallWalkerFRC17CCollisionSurfaceRC9CVector3f
/* 80268BF0 00265B50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80268BF4 00265B54  41 82 00 5C */	beq lbl_80268C50
/* 80268BF8 00265B58  80 61 00 98 */	lwz r3, 0x98(r1)
/* 80268BFC 00265B5C  FF A0 F0 90 */	fmr f29, f30
/* 80268C00 00265B60  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80268C04 00265B64  3B 60 00 01 */	li r27, 1
/* 80268C08 00265B68  90 74 05 68 */	stw r3, 0x568(r20)
/* 80268C0C 00265B6C  90 14 05 6C */	stw r0, 0x56c(r20)
/* 80268C10 00265B70  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 80268C14 00265B74  90 14 05 70 */	stw r0, 0x570(r20)
/* 80268C18 00265B78  80 61 00 A4 */	lwz r3, 0xa4(r1)
/* 80268C1C 00265B7C  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 80268C20 00265B80  90 74 05 74 */	stw r3, 0x574(r20)
/* 80268C24 00265B84  90 14 05 78 */	stw r0, 0x578(r20)
/* 80268C28 00265B88  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80268C2C 00265B8C  90 14 05 7C */	stw r0, 0x57c(r20)
/* 80268C30 00265B90  80 61 00 B0 */	lwz r3, 0xb0(r1)
/* 80268C34 00265B94  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80268C38 00265B98  90 74 05 80 */	stw r3, 0x580(r20)
/* 80268C3C 00265B9C  90 14 05 84 */	stw r0, 0x584(r20)
/* 80268C40 00265BA0  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 80268C44 00265BA4  90 14 05 88 */	stw r0, 0x588(r20)
/* 80268C48 00265BA8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80268C4C 00265BAC  90 14 05 8C */	stw r0, 0x58c(r20)
lbl_80268C50:
/* 80268C50 00265BB0  3B 9C 00 02 */	addi r28, r28, 2
/* 80268C54 00265BB4  3A F7 00 01 */	addi r23, r23, 1
lbl_80268C58:
/* 80268C58 00265BB8  7C 17 C0 00 */	cmpw r23, r24
/* 80268C5C 00265BBC  41 80 FF 24 */	blt lbl_80268B80
/* 80268C60 00265BC0  3B DE 00 24 */	addi r30, r30, 0x24
/* 80268C64 00265BC4  3B 39 00 01 */	addi r25, r25, 1
lbl_80268C68:
/* 80268C68 00265BC8  80 1D 00 04 */	lwz r0, 4(r29)
/* 80268C6C 00265BCC  7C 19 00 00 */	cmpw r25, r0
/* 80268C70 00265BD0  41 80 FE F0 */	blt lbl_80268B60
/* 80268C74 00265BD4  3B BD 09 0C */	addi r29, r29, 0x90c
/* 80268C78 00265BD8  3B 5A 00 01 */	addi r26, r26, 1
lbl_80268C7C:
/* 80268C7C 00265BDC  80 01 00 D8 */	lwz r0, 0xd8(r1)
/* 80268C80 00265BE0  7C 1A 00 00 */	cmpw r26, r0
/* 80268C84 00265BE4  41 80 FE D0 */	blt lbl_80268B54
/* 80268C88 00265BE8  88 14 05 D6 */	lbz r0, 0x5d6(r20)
/* 80268C8C 00265BEC  53 60 36 72 */	rlwimi r0, r27, 6, 0x19, 0x19
/* 80268C90 00265BF0  98 14 05 D6 */	stb r0, 0x5d6(r20)
lbl_80268C94:
/* 80268C94 00265BF4  88 14 05 D6 */	lbz r0, 0x5d6(r20)
/* 80268C98 00265BF8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80268C9C 00265BFC  41 82 00 58 */	beq lbl_80268CF4
/* 80268CA0 00265C00  38 61 00 34 */	addi r3, r1, 0x34
/* 80268CA4 00265C04  38 94 05 68 */	addi r4, r20, 0x568
/* 80268CA8 00265C08  48 03 99 FD */	bl GetNormal__17CCollisionSurfaceCFv
/* 80268CAC 00265C0C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80268CB0 00265C10  7E 83 A3 78 */	mr r3, r20
/* 80268CB4 00265C14  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80268CB8 00265C18  38 81 00 40 */	addi r4, r1, 0x40
/* 80268CBC 00265C1C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80268CC0 00265C20  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80268CC4 00265C24  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80268CC8 00265C28  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80268CCC 00265C2C  C0 14 05 B4 */	lfs f0, 0x5b4(r20)
/* 80268CD0 00265C30  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80268CD4 00265C34  48 00 01 E9 */	bl OrientToSurfaceNormal__11CWallWalkerFRC9CVector3ff
/* 80268CD8 00265C38  C0 02 BB 04 */	lfs f0, lbl_805AD824@sda21(r2)
/* 80268CDC 00265C3C  38 60 00 00 */	li r3, 0
/* 80268CE0 00265C40  D0 14 05 B8 */	stfs f0, 0x5b8(r20)
/* 80268CE4 00265C44  88 14 05 D6 */	lbz r0, 0x5d6(r20)
/* 80268CE8 00265C48  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80268CEC 00265C4C  98 14 05 D6 */	stb r0, 0x5d6(r20)
/* 80268CF0 00265C50  48 00 00 FC */	b lbl_80268DEC
lbl_80268CF4:
/* 80268CF4 00265C54  38 74 01 38 */	addi r3, r20, 0x138
/* 80268CF8 00265C58  48 0A BB C1 */	bl Magnitude__9CVector3fCFv
/* 80268CFC 00265C5C  C0 02 BB 1C */	lfs f0, lbl_805AD83C@sda21(r2)
/* 80268D00 00265C60  7E 83 A3 78 */	mr r3, r20
/* 80268D04 00265C64  C0 94 00 58 */	lfs f4, 0x58(r20)
/* 80268D08 00265C68  38 81 00 28 */	addi r4, r1, 0x28
/* 80268D0C 00265C6C  EC 40 00 72 */	fmuls f2, f0, f1
/* 80268D10 00265C70  C0 34 05 AC */	lfs f1, 0x5ac(r20)
/* 80268D14 00265C74  C0 74 00 48 */	lfs f3, 0x48(r20)
/* 80268D18 00265C78  C0 14 00 38 */	lfs f0, 0x38(r20)
/* 80268D1C 00265C7C  EC 22 08 24 */	fdivs f1, f2, f1
/* 80268D20 00265C80  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80268D24 00265C84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80268D28 00265C88  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80268D2C 00265C8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80268D30 00265C90  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80268D34 00265C94  EF C1 07 F2 */	fmuls f30, f1, f31
/* 80268D38 00265C98  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80268D3C 00265C9C  FC 20 F0 90 */	fmr f1, f30
/* 80268D40 00265CA0  48 00 01 7D */	bl OrientToSurfaceNormal__11CWallWalkerFRC9CVector3ff
/* 80268D44 00265CA4  80 74 04 50 */	lwz r3, 0x450(r20)
/* 80268D48 00265CA8  38 80 00 03 */	li r4, 3
/* 80268D4C 00265CAC  4B ED 1E 69 */	bl HasBodyState__15CBodyControllerCFQ23pas15EAnimationState
/* 80268D50 00265CB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80268D54 00265CB4  41 82 00 7C */	beq lbl_80268DD0
/* 80268D58 00265CB8  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80268D5C 00265CBC  80 74 04 50 */	lwz r3, 0x450(r20)
/* 80268D60 00265CC0  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 80268D64 00265CC4  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 80268D68 00265CC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80268D6C 00265CCC  38 C4 A9 E4 */	addi r6, r4, lbl_803DA9E4@l
/* 80268D70 00265CD0  38 80 00 01 */	li r4, 1
/* 80268D74 00265CD4  38 A0 00 05 */	li r5, 5
/* 80268D78 00265CD8  38 00 00 00 */	li r0, 0
/* 80268D7C 00265CDC  3A A3 00 04 */	addi r21, r3, 4
/* 80268D80 00265CE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80268D84 00265CE4  7E A3 AB 78 */	mr r3, r21
/* 80268D88 00265CE8  38 80 00 01 */	li r4, 1
/* 80268D8C 00265CEC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80268D90 00265CF0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80268D94 00265CF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80268D98 00265CF8  4B EC 86 A1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80268D9C 00265CFC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80268DA0 00265D00  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80268DA4 00265D04  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 80268DA8 00265D08  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80268DAC 00265D0C  90 15 00 C8 */	stw r0, 0xc8(r21)
/* 80268DB0 00265D10  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80268DB4 00265D14  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80268DB8 00265D18  90 81 00 0C */	stw r4, 0xc(r1)
/* 80268DBC 00265D1C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80268DC0 00265D20  90 B5 00 CC */	stw r5, 0xcc(r21)
/* 80268DC4 00265D24  90 75 00 D0 */	stw r3, 0xd0(r21)
/* 80268DC8 00265D28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80268DCC 00265D2C  48 00 00 14 */	b lbl_80268DE0
lbl_80268DD0:
/* 80268DD0 00265D30  88 14 05 D6 */	lbz r0, 0x5d6(r20)
/* 80268DD4 00265D34  38 60 00 01 */	li r3, 1
/* 80268DD8 00265D38  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80268DDC 00265D3C  98 14 05 D6 */	stb r0, 0x5d6(r20)
lbl_80268DE0:
/* 80268DE0 00265D40  C0 14 05 B8 */	lfs f0, 0x5b8(r20)
/* 80268DE4 00265D44  EC 00 F0 2A */	fadds f0, f0, f30
/* 80268DE8 00265D48  D0 14 05 B8 */	stfs f0, 0x5b8(r20)
lbl_80268DEC:
/* 80268DEC 00265D4C  34 E1 00 D8 */	addic. r7, r1, 0xd8
/* 80268DF0 00265D50  41 82 00 94 */	beq lbl_80268E84
/* 80268DF4 00265D54  38 C7 00 04 */	addi r6, r7, 4
/* 80268DF8 00265D58  38 60 00 00 */	li r3, 0
/* 80268DFC 00265D5C  48 00 00 74 */	b lbl_80268E70
lbl_80268E00:
/* 80268E00 00265D60  28 06 00 00 */	cmplwi r6, 0
/* 80268E04 00265D64  41 82 00 64 */	beq lbl_80268E68
/* 80268E08 00265D68  34 06 00 04 */	addic. r0, r6, 4
/* 80268E0C 00265D6C  41 82 00 5C */	beq lbl_80268E68
/* 80268E10 00265D70  81 06 00 04 */	lwz r8, 4(r6)
/* 80268E14 00265D74  38 80 00 00 */	li r4, 0
/* 80268E18 00265D78  2C 08 00 00 */	cmpwi r8, 0
/* 80268E1C 00265D7C  40 81 00 44 */	ble lbl_80268E60
/* 80268E20 00265D80  2C 08 00 08 */	cmpwi r8, 8
/* 80268E24 00265D84  38 A8 FF F8 */	addi r5, r8, -8
/* 80268E28 00265D88  40 81 00 20 */	ble lbl_80268E48
/* 80268E2C 00265D8C  38 05 00 07 */	addi r0, r5, 7
/* 80268E30 00265D90  54 00 E8 FE */	srwi r0, r0, 3
/* 80268E34 00265D94  7C 09 03 A6 */	mtctr r0
/* 80268E38 00265D98  2C 05 00 00 */	cmpwi r5, 0
/* 80268E3C 00265D9C  40 81 00 0C */	ble lbl_80268E48
lbl_80268E40:
/* 80268E40 00265DA0  38 84 00 08 */	addi r4, r4, 8
/* 80268E44 00265DA4  42 00 FF FC */	bdnz lbl_80268E40
lbl_80268E48:
/* 80268E48 00265DA8  7C 04 40 50 */	subf r0, r4, r8
/* 80268E4C 00265DAC  7C 09 03 A6 */	mtctr r0
/* 80268E50 00265DB0  7C 04 40 00 */	cmpw r4, r8
/* 80268E54 00265DB4  40 80 00 0C */	bge lbl_80268E60
lbl_80268E58:
/* 80268E58 00265DB8  38 84 00 01 */	addi r4, r4, 1
/* 80268E5C 00265DBC  42 00 FF FC */	bdnz lbl_80268E58
lbl_80268E60:
/* 80268E60 00265DC0  38 00 00 00 */	li r0, 0
/* 80268E64 00265DC4  90 06 00 04 */	stw r0, 4(r6)
lbl_80268E68:
/* 80268E68 00265DC8  38 C6 09 0C */	addi r6, r6, 0x90c
/* 80268E6C 00265DCC  38 63 00 01 */	addi r3, r3, 1
lbl_80268E70:
/* 80268E70 00265DD0  80 07 00 00 */	lwz r0, 0(r7)
/* 80268E74 00265DD4  7C 03 00 00 */	cmpw r3, r0
/* 80268E78 00265DD8  41 80 FF 88 */	blt lbl_80268E00
/* 80268E7C 00265DDC  38 00 00 00 */	li r0, 0
/* 80268E80 00265DE0  90 07 00 00 */	stw r0, 0(r7)
lbl_80268E84:
/* 80268E84 00265DE4  38 00 1C 68 */	li r0, 0x1c68
/* 80268E88 00265DE8  13 E1 00 0C */	psq_lx f31, r1, r0, 0, qr0
/* 80268E8C 00265DEC  CB E1 1C 60 */	lfd f31, 0x1c60(r1)
/* 80268E90 00265DF0  38 00 1C 58 */	li r0, 0x1c58
/* 80268E94 00265DF4  13 C1 00 0C */	psq_lx f30, r1, r0, 0, qr0
/* 80268E98 00265DF8  CB C1 1C 50 */	lfd f30, 0x1c50(r1)
/* 80268E9C 00265DFC  38 00 1C 48 */	li r0, 0x1c48
/* 80268EA0 00265E00  13 A1 00 0C */	psq_lx f29, r1, r0, 0, qr0
/* 80268EA4 00265E04  CB A1 1C 40 */	lfd f29, 0x1c40(r1)
/* 80268EA8 00265E08  BA 81 1C 10 */	lmw r20, 0x1c10(r1)
/* 80268EAC 00265E0C  80 01 1C 74 */	lwz r0, 0x1c74(r1)
/* 80268EB0 00265E10  7C 08 03 A6 */	mtlr r0
/* 80268EB4 00265E14  38 21 1C 70 */	addi r1, r1, 0x1c70
/* 80268EB8 00265E18  4E 80 00 20 */	blr

.global OrientToSurfaceNormal__11CWallWalkerFRC9CVector3ff
OrientToSurfaceNormal__11CWallWalkerFRC9CVector3ff:
/* 80268EBC 00265E1C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80268EC0 00265E20  7C 08 02 A6 */	mflr r0
/* 80268EC4 00265E24  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80268EC8 00265E28  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80268ECC 00265E2C  7C 7F 1B 78 */	mr r31, r3
/* 80268ED0 00265E30  C0 C3 00 4C */	lfs f6, 0x4c(r3)
/* 80268ED4 00265E34  C0 04 00 04 */	lfs f0, 4(r4)
/* 80268ED8 00265E38  C0 A3 00 3C */	lfs f5, 0x3c(r3)
/* 80268EDC 00265E3C  EC 06 00 32 */	fmuls f0, f6, f0
/* 80268EE0 00265E40  C0 44 00 00 */	lfs f2, 0(r4)
/* 80268EE4 00265E44  C0 E3 00 5C */	lfs f7, 0x5c(r3)
/* 80268EE8 00265E48  C0 84 00 08 */	lfs f4, 8(r4)
/* 80268EEC 00265E4C  EC 65 00 BA */	fmadds f3, f5, f2, f0
/* 80268EF0 00265E50  C0 42 BA FC */	lfs f2, lbl_805AD81C@sda21(r2)
/* 80268EF4 00265E54  C0 02 BB 10 */	lfs f0, lbl_805AD830@sda21(r2)
/* 80268EF8 00265E58  D0 A1 00 70 */	stfs f5, 0x70(r1)
/* 80268EFC 00265E5C  EC 67 19 3A */	fmadds f3, f7, f4, f3
/* 80268F00 00265E60  D0 C1 00 74 */	stfs f6, 0x74(r1)
/* 80268F04 00265E64  EC 43 10 28 */	fsubs f2, f3, f2
/* 80268F08 00265E68  D0 E1 00 78 */	stfs f7, 0x78(r1)
/* 80268F0C 00265E6C  FC 40 12 10 */	fabs f2, f2
/* 80268F10 00265E70  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80268F14 00265E74  41 80 01 1C */	blt lbl_80269030
/* 80268F18 00265E78  C0 02 BB 20 */	lfs f0, lbl_805AD840@sda21(r2)
/* 80268F1C 00265E7C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80268F20 00265E80  41 80 01 10 */	blt lbl_80269030
/* 80268F24 00265E84  C0 02 BB 24 */	lfs f0, lbl_805AD844@sda21(r2)
/* 80268F28 00265E88  7C 85 23 78 */	mr r5, r4
/* 80268F2C 00265E8C  38 61 00 60 */	addi r3, r1, 0x60
/* 80268F30 00265E90  38 81 00 54 */	addi r4, r1, 0x54
/* 80268F34 00265E94  EC 00 00 72 */	fmuls f0, f0, f1
/* 80268F38 00265E98  38 C1 00 08 */	addi r6, r1, 8
/* 80268F3C 00265E9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80268F40 00265EA0  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80268F44 00265EA4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80268F48 00265EA8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80268F4C 00265EAC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80268F50 00265EB0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80268F54 00265EB4  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80268F58 00265EB8  48 0A 80 C9 */	bl ClampedRotateTo__11CQuaternionFRC10UnitVectorRC10UnitVectorRC9CRelAngle
/* 80268F5C 00265EBC  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 80268F60 00265EC0  38 A1 00 90 */	addi r5, r1, 0x90
/* 80268F64 00265EC4  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 80268F68 00265EC8  38 61 00 48 */	addi r3, r1, 0x48
/* 80268F6C 00265ECC  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80268F70 00265ED0  38 9F 00 34 */	addi r4, r31, 0x34
/* 80268F74 00265ED4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80268F78 00265ED8  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 80268F7C 00265EDC  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 80268F80 00265EE0  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80268F84 00265EE4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80268F88 00265EE8  48 0A 9A 9D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80268F8C 00265EEC  C0 61 00 8C */	lfs f3, 0x8c(r1)
/* 80268F90 00265EF0  38 61 00 18 */	addi r3, r1, 0x18
/* 80268F94 00265EF4  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 80268F98 00265EF8  38 9F 00 34 */	addi r4, r31, 0x34
/* 80268F9C 00265EFC  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80268FA0 00265F00  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80268FA4 00265F04  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 80268FA8 00265F08  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80268FAC 00265F0C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80268FB0 00265F10  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80268FB4 00265F14  48 0A 91 75 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 80268FB8 00265F18  38 61 00 28 */	addi r3, r1, 0x28
/* 80268FBC 00265F1C  38 81 00 18 */	addi r4, r1, 0x18
/* 80268FC0 00265F20  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80268FC4 00265F24  48 0A 81 DD */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 80268FC8 00265F28  38 61 00 38 */	addi r3, r1, 0x38
/* 80268FCC 00265F2C  38 81 00 28 */	addi r4, r1, 0x28
/* 80268FD0 00265F30  48 0A 83 CD */	bl BuildNormalized__11CQuaternionCFv
/* 80268FD4 00265F34  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80268FD8 00265F38  38 61 00 9C */	addi r3, r1, 0x9c
/* 80268FDC 00265F3C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80268FE0 00265F40  38 81 00 38 */	addi r4, r1, 0x38
/* 80268FE4 00265F44  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80268FE8 00265F48  38 A1 00 0C */	addi r5, r1, 0xc
/* 80268FEC 00265F4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80268FF0 00265F50  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80268FF4 00265F54  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80268FF8 00265F58  48 0A 8E C5 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 80268FFC 00265F5C  38 7F 00 34 */	addi r3, r31, 0x34
/* 80269000 00265F60  38 81 00 9C */	addi r4, r1, 0x9c
/* 80269004 00265F64  48 0A 9B 3D */	bl __as__12CTransform4fFRC12CTransform4f
/* 80269008 00265F68  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8026900C 00265F6C  38 60 00 01 */	li r3, 1
/* 80269010 00265F70  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80269014 00265F74  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80269018 00265F78  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8026901C 00265F7C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80269020 00265F80  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80269024 00265F84  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80269028 00265F88  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8026902C 00265F8C  98 1F 00 E4 */	stb r0, 0xe4(r31)
lbl_80269030:
/* 80269030 00265F90  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80269034 00265F94  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80269038 00265F98  7C 08 03 A6 */	mtlr r0
/* 8026903C 00265F9C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80269040 00265FA0  4E 80 00 20 */	blr

.global PointOnSurface__11CWallWalkerFRC17CCollisionSurfaceRC9CVector3f
PointOnSurface__11CWallWalkerFRC17CCollisionSurfaceRC9CVector3f:
/* 80269044 00265FA4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80269048 00265FA8  7C 08 02 A6 */	mflr r0
/* 8026904C 00265FAC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80269050 00265FB0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80269054 00265FB4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80269058 00265FB8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8026905C 00265FBC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80269060 00265FC0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80269064 00265FC4  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 80269068 00265FC8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8026906C 00265FCC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80269070 00265FD0  7C 7E 1B 78 */	mr r30, r3
/* 80269074 00265FD4  7C 9F 23 78 */	mr r31, r4
/* 80269078 00265FD8  7F C4 F3 78 */	mr r4, r30
/* 8026907C 00265FDC  38 61 00 14 */	addi r3, r1, 0x14
/* 80269080 00265FE0  48 03 96 25 */	bl GetNormal__17CCollisionSurfaceCFv
/* 80269084 00265FE4  7F E4 FB 78 */	mr r4, r31
/* 80269088 00265FE8  7F C5 F3 78 */	mr r5, r30
/* 8026908C 00265FEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80269090 00265FF0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80269094 00265FF4  48 00 01 55 */	bl ProjectPointToPlane__11CWallWalkerFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80269098 00265FF8  C3 E1 00 20 */	lfs f31, 0x20(r1)
/* 8026909C 00265FFC  7F C4 F3 78 */	mr r4, r30
/* 802690A0 00266000  C3 C1 00 24 */	lfs f30, 0x24(r1)
/* 802690A4 00266004  38 61 00 08 */	addi r3, r1, 8
/* 802690A8 00266008  C3 A1 00 28 */	lfs f29, 0x28(r1)
/* 802690AC 0026600C  48 03 95 F9 */	bl GetNormal__17CCollisionSurfaceCFv
/* 802690B0 00266010  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 802690B4 00266014  38 00 00 03 */	li r0, 3
/* 802690B8 00266018  7F C6 F3 78 */	mr r6, r30
/* 802690BC 0026601C  C1 41 00 08 */	lfs f10, 8(r1)
/* 802690C0 00266020  38 63 55 56 */	addi r3, r3, 0x55555556@l
/* 802690C4 00266024  C1 61 00 0C */	lfs f11, 0xc(r1)
/* 802690C8 00266028  C1 81 00 10 */	lfs f12, 0x10(r1)
/* 802690CC 0026602C  38 E0 00 00 */	li r7, 0
/* 802690D0 00266030  C0 02 BB 04 */	lfs f0, lbl_805AD824@sda21(r2)
/* 802690D4 00266034  7C 09 03 A6 */	mtctr r0
lbl_802690D8:
/* 802690D8 00266038  38 A7 00 02 */	addi r5, r7, 2
/* 802690DC 0026603C  C0 66 00 00 */	lfs f3, 0(r6)
/* 802690E0 00266040  7C 83 28 96 */	mulhw r4, r3, r5
/* 802690E4 00266044  C0 86 00 08 */	lfs f4, 8(r6)
/* 802690E8 00266048  C0 A6 00 04 */	lfs f5, 4(r6)
/* 802690EC 0026604C  ED 3F 18 28 */	fsubs f9, f31, f3
/* 802690F0 00266050  EC FD 20 28 */	fsubs f7, f29, f4
/* 802690F4 00266054  ED 1E 28 28 */	fsubs f8, f30, f5
/* 802690F8 00266058  54 80 0F FE */	srwi r0, r4, 0x1f
/* 802690FC 0026605C  7C 04 02 14 */	add r0, r4, r0
/* 80269100 00266060  1C 00 00 03 */	mulli r0, r0, 3
/* 80269104 00266064  7C 00 28 50 */	subf r0, r0, r5
/* 80269108 00266068  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8026910C 0026606C  7C 9E 02 14 */	add r4, r30, r0
/* 80269110 00266070  C0 24 00 08 */	lfs f1, 8(r4)
/* 80269114 00266074  C0 44 00 00 */	lfs f2, 0(r4)
/* 80269118 00266078  EC 81 20 28 */	fsubs f4, f1, f4
/* 8026911C 0026607C  C0 24 00 04 */	lfs f1, 4(r4)
/* 80269120 00266080  EC C2 18 28 */	fsubs f6, f2, f3
/* 80269124 00266084  EC A1 28 28 */	fsubs f5, f1, f5
/* 80269128 00266088  EC 24 02 72 */	fmuls f1, f4, f9
/* 8026912C 0026608C  EC 66 02 32 */	fmuls f3, f6, f8
/* 80269130 00266090  EC 45 01 F2 */	fmuls f2, f5, f7
/* 80269134 00266094  EC 27 09 B8 */	fmsubs f1, f7, f6, f1
/* 80269138 00266098  EC 69 19 78 */	fmsubs f3, f9, f5, f3
/* 8026913C 0026609C  EC 48 11 38 */	fmsubs f2, f8, f4, f2
/* 80269140 002660A0  EC 2B 00 72 */	fmuls f1, f11, f1
/* 80269144 002660A4  EC 2A 08 BA */	fmadds f1, f10, f2, f1
/* 80269148 002660A8  EC 2C 08 FA */	fmadds f1, f12, f3, f1
/* 8026914C 002660AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80269150 002660B0  40 80 00 0C */	bge lbl_8026915C
/* 80269154 002660B4  38 60 00 00 */	li r3, 0
/* 80269158 002660B8  48 00 00 14 */	b lbl_8026916C
lbl_8026915C:
/* 8026915C 002660BC  38 C6 00 0C */	addi r6, r6, 0xc
/* 80269160 002660C0  38 E7 00 01 */	addi r7, r7, 1
/* 80269164 002660C4  42 00 FF 74 */	bdnz lbl_802690D8
/* 80269168 002660C8  38 60 00 01 */	li r3, 1
lbl_8026916C:
/* 8026916C 002660CC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80269170 002660D0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80269174 002660D4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80269178 002660D8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8026917C 002660DC  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80269180 002660E0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80269184 002660E4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80269188 002660E8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8026918C 002660EC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80269190 002660F0  7C 08 03 A6 */	mtlr r0
/* 80269194 002660F4  38 21 00 70 */	addi r1, r1, 0x70
/* 80269198 002660F8  4E 80 00 20 */	blr

.global ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f:
/* 8026919C 002660FC  C0 C4 00 04 */	lfs f6, 4(r4)
/* 802691A0 00266100  C0 65 00 04 */	lfs f3, 4(r5)
/* 802691A4 00266104  C0 A4 00 00 */	lfs f5, 0(r4)
/* 802691A8 00266108  EC 06 00 F2 */	fmuls f0, f6, f3
/* 802691AC 0026610C  C0 25 00 00 */	lfs f1, 0(r5)
/* 802691B0 00266110  C0 E4 00 08 */	lfs f7, 8(r4)
/* 802691B4 00266114  C0 85 00 08 */	lfs f4, 8(r5)
/* 802691B8 00266118  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 802691BC 0026611C  EC 07 01 3A */	fmadds f0, f7, f4, f0
/* 802691C0 00266120  EC 40 00 72 */	fmuls f2, f0, f1
/* 802691C4 00266124  EC 20 00 F2 */	fmuls f1, f0, f3
/* 802691C8 00266128  EC 00 01 32 */	fmuls f0, f0, f4
/* 802691CC 0026612C  EC 45 10 28 */	fsubs f2, f5, f2
/* 802691D0 00266130  EC 26 08 28 */	fsubs f1, f6, f1
/* 802691D4 00266134  EC 07 00 28 */	fsubs f0, f7, f0
/* 802691D8 00266138  D0 43 00 00 */	stfs f2, 0(r3)
/* 802691DC 0026613C  D0 23 00 04 */	stfs f1, 4(r3)
/* 802691E0 00266140  D0 03 00 08 */	stfs f0, 8(r3)
/* 802691E4 00266144  4E 80 00 20 */	blr

.global ProjectPointToPlane__11CWallWalkerFRC9CVector3fRC9CVector3fRC9CVector3f
ProjectPointToPlane__11CWallWalkerFRC9CVector3fRC9CVector3fRC9CVector3f:
/* 802691E8 00266148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802691EC 0026614C  C1 04 00 04 */	lfs f8, 4(r4)
/* 802691F0 00266150  C0 05 00 04 */	lfs f0, 4(r5)
/* 802691F4 00266154  C0 E4 00 00 */	lfs f7, 0(r4)
/* 802691F8 00266158  EC 48 00 28 */	fsubs f2, f8, f0
/* 802691FC 0026615C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80269200 00266160  C0 A6 00 04 */	lfs f5, 4(r6)
/* 80269204 00266164  EC 67 00 28 */	fsubs f3, f7, f0
/* 80269208 00266168  C1 24 00 08 */	lfs f9, 8(r4)
/* 8026920C 0026616C  C0 25 00 08 */	lfs f1, 8(r5)
/* 80269210 00266170  EC 02 01 72 */	fmuls f0, f2, f5
/* 80269214 00266174  C0 86 00 00 */	lfs f4, 0(r6)
/* 80269218 00266178  EC 29 08 28 */	fsubs f1, f9, f1
/* 8026921C 0026617C  C0 C6 00 08 */	lfs f6, 8(r6)
/* 80269220 00266180  EC 03 01 3A */	fmadds f0, f3, f4, f0
/* 80269224 00266184  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80269228 00266188  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8026922C 0026618C  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 80269230 00266190  D0 61 00 08 */	stfs f3, 8(r1)
/* 80269234 00266194  EC 40 01 32 */	fmuls f2, f0, f4
/* 80269238 00266198  EC 20 01 72 */	fmuls f1, f0, f5
/* 8026923C 0026619C  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80269240 002661A0  EC 47 10 28 */	fsubs f2, f7, f2
/* 80269244 002661A4  EC 28 08 28 */	fsubs f1, f8, f1
/* 80269248 002661A8  EC 09 00 28 */	fsubs f0, f9, f0
/* 8026924C 002661AC  D0 43 00 00 */	stfs f2, 0(r3)
/* 80269250 002661B0  D0 23 00 04 */	stfs f1, 4(r3)
/* 80269254 002661B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80269258 002661B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8026925C 002661BC  4E 80 00 20 */	blr

.global "__ct__11CWallWalkerFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUiUi"
"__ct__11CWallWalkerFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUiUi":
/* 80269260 002661C0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80269264 002661C4  7C 08 02 A6 */	mflr r0
/* 80269268 002661C8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8026926C 002661CC  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80269270 002661D0  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 80269274 002661D4  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80269278 002661D8  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 8026927C 002661DC  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80269280 002661E0  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, qr0
/* 80269284 002661E4  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 80269288 002661E8  F3 81 00 98 */	psq_st f28, 152(r1), 0, qr0
/* 8026928C 002661EC  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 80269290 002661F0  F3 61 00 88 */	psq_st f27, 136(r1), 0, qr0
/* 80269294 002661F4  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 80269298 002661F8  F3 41 00 78 */	psq_st f26, 120(r1), 0, qr0
/* 8026929C 002661FC  DB 21 00 60 */	stfd f25, 0x60(r1)
/* 802692A0 00266200  F3 21 00 68 */	psq_st f25, 104(r1), 0, qr0
/* 802692A4 00266204  DB 01 00 50 */	stfd f24, 0x50(r1)
/* 802692A8 00266208  F3 01 00 58 */	psq_st f24, 88(r1), 0, qr0
/* 802692AC 0026620C  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 802692B0 00266210  A0 05 00 00 */	lhz r0, 0(r5)
/* 802692B4 00266214  FF 00 08 90 */	fmr f24, f1
/* 802692B8 00266218  83 A1 00 D8 */	lwz r29, 0xd8(r1)
/* 802692BC 0026621C  FF 20 10 90 */	fmr f25, f2
/* 802692C0 00266220  B0 01 00 20 */	sth r0, 0x20(r1)
/* 802692C4 00266224  FF 40 18 90 */	fmr f26, f3
/* 802692C8 00266228  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 802692CC 0026622C  93 A1 00 08 */	stw r29, 8(r1)
/* 802692D0 00266230  FF 60 20 90 */	fmr f27, f4
/* 802692D4 00266234  81 61 00 E0 */	lwz r11, 0xe0(r1)
/* 802692D8 00266238  7C 7C 1B 78 */	mr r28, r3
/* 802692DC 0026623C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802692E0 00266240  38 A1 00 20 */	addi r5, r1, 0x20
/* 802692E4 00266244  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802692E8 00266248  91 61 00 10 */	stw r11, 0x10(r1)
/* 802692EC 0026624C  81 61 00 E8 */	lwz r11, 0xe8(r1)
/* 802692F0 00266250  90 01 00 14 */	stw r0, 0x14(r1)
/* 802692F4 00266254  80 01 00 EC */	lwz r0, 0xec(r1)
/* 802692F8 00266258  91 61 00 18 */	stw r11, 0x18(r1)
/* 802692FC 0026625C  83 C1 00 F0 */	lwz r30, 0xf0(r1)
/* 80269300 00266260  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80269304 00266264  8B E1 00 F7 */	lbz r31, 0xf7(r1)
/* 80269308 00266268  4B E1 41 49 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 8026930C 0026626C  3C 60 80 3F */	lis r3, lbl_803EA0F0@ha
/* 80269310 00266270  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80269314 00266274  38 03 A0 F0 */	addi r0, r3, lbl_803EA0F0@l
/* 80269318 00266278  3C A0 80 5A */	lis r5, sRightVector__9CVector3f@ha
/* 8026931C 0026627C  3C 60 80 5A */	lis r3, sForwardVector__9CVector3f@ha
/* 80269320 00266280  90 1C 00 00 */	stw r0, 0(r28)
/* 80269324 00266284  38 C3 67 24 */	addi r6, r3, sForwardVector__9CVector3f@l
/* 80269328 00266288  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8026932C 0026628C  38 A5 67 18 */	addi r5, r5, sRightVector__9CVector3f@l
/* 80269330 00266290  38 7C 05 68 */	addi r3, r28, 0x568
/* 80269334 00266294  38 E0 FF FF */	li r7, -1
/* 80269338 00266298  48 03 93 F1 */	bl __ct__17CCollisionSurfaceFRC9CVector3fRC9CVector3fRC9CVector3fUi
/* 8026933C 0026629C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80269340 002662A0  3B 7C 05 90 */	addi r27, r28, 0x590
/* 80269344 002662A4  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 80269348 002662A8  C3 9D 00 C4 */	lfs f28, 0xc4(r29)
/* 8026934C 002662AC  C3 E5 00 00 */	lfs f31, 0(r5)
/* 80269350 002662B0  38 9C 00 68 */	addi r4, r28, 0x68
/* 80269354 002662B4  C3 C5 00 04 */	lfs f30, 4(r5)
/* 80269358 002662B8  7F 63 DB 78 */	mr r3, r27
/* 8026935C 002662BC  C3 A5 00 08 */	lfs f29, 8(r5)
/* 80269360 002662C0  48 06 65 55 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 80269364 002662C4  3C 60 80 3F */	lis r3, lbl_803ECAF8@ha
/* 80269368 002662C8  C0 02 BB 04 */	lfs f0, lbl_805AD824@sda21(r2)
/* 8026936C 002662CC  38 03 CA F8 */	addi r0, r3, lbl_803ECAF8@l
/* 80269370 002662D0  80 82 BA F8 */	lwz r4, lbl_805AD818@sda21(r2)
/* 80269374 002662D4  90 1B 00 00 */	stw r0, 0(r27)
/* 80269378 002662D8  38 61 00 24 */	addi r3, r1, 0x24
/* 8026937C 002662DC  D3 FB 00 10 */	stfs f31, 0x10(r27)
/* 80269380 002662E0  D3 DB 00 14 */	stfs f30, 0x14(r27)
/* 80269384 002662E4  D3 BB 00 18 */	stfs f29, 0x18(r27)
/* 80269388 002662E8  D3 9B 00 1C */	stfs f28, 0x1c(r27)
/* 8026938C 002662EC  D3 1C 05 B0 */	stfs f24, 0x5b0(r28)
/* 80269390 002662F0  D3 3C 05 B4 */	stfs f25, 0x5b4(r28)
/* 80269394 002662F4  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 80269398 002662F8  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 8026939C 002662FC  D3 5C 05 C0 */	stfs f26, 0x5c0(r28)
/* 802693A0 00266300  D3 7C 05 C4 */	stfs f27, 0x5c4(r28)
/* 802693A4 00266304  D0 1C 05 C8 */	stfs f0, 0x5c8(r28)
/* 802693A8 00266308  4B D9 B9 11 */	bl string_l__4rstlFPCc
/* 802693AC 0026630C  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 802693B0 00266310  38 81 00 24 */	addi r4, r1, 0x24
/* 802693B4 00266314  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802693B8 00266318  38 63 00 0C */	addi r3, r3, 0xc
/* 802693BC 0026631C  48 07 44 E1 */	bl sub_802dd89c
/* 802693C0 00266320  90 7C 05 CC */	stw r3, 0x5cc(r28)
/* 802693C4 00266324  38 61 00 24 */	addi r3, r1, 0x24
/* 802693C8 00266328  48 0D 47 19 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802693CC 0026632C  93 DC 05 D0 */	stw r30, 0x5d0(r28)
/* 802693D0 00266330  38 80 00 00 */	li r4, 0
/* 802693D4 00266334  7F 83 E3 78 */	mr r3, r28
/* 802693D8 00266338  B0 9C 05 D4 */	sth r4, 0x5d4(r28)
/* 802693DC 0026633C  88 1C 05 D6 */	lbz r0, 0x5d6(r28)
/* 802693E0 00266340  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802693E4 00266344  98 1C 05 D6 */	stb r0, 0x5d6(r28)
/* 802693E8 00266348  88 1C 05 D6 */	lbz r0, 0x5d6(r28)
/* 802693EC 0026634C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 802693F0 00266350  98 1C 05 D6 */	stb r0, 0x5d6(r28)
/* 802693F4 00266354  88 1C 05 D6 */	lbz r0, 0x5d6(r28)
/* 802693F8 00266358  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 802693FC 0026635C  98 1C 05 D6 */	stb r0, 0x5d6(r28)
/* 80269400 00266360  88 1C 05 D6 */	lbz r0, 0x5d6(r28)
/* 80269404 00266364  53 E0 26 F6 */	rlwimi r0, r31, 4, 0x1b, 0x1b
/* 80269408 00266368  98 1C 05 D6 */	stb r0, 0x5d6(r28)
/* 8026940C 0026636C  88 1C 05 D6 */	lbz r0, 0x5d6(r28)
/* 80269410 00266370  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80269414 00266374  98 1C 05 D6 */	stb r0, 0x5d6(r28)
/* 80269418 00266378  88 1C 05 D6 */	lbz r0, 0x5d6(r28)
/* 8026941C 0026637C  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80269420 00266380  98 1C 05 D6 */	stb r0, 0x5d6(r28)
/* 80269424 00266384  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 80269428 00266388  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8026942C 0026638C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 80269430 00266390  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80269434 00266394  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, qr0
/* 80269438 00266398  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 8026943C 0026639C  E3 81 00 98 */	psq_l f28, 152(r1), 0, qr0
/* 80269440 002663A0  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 80269444 002663A4  E3 61 00 88 */	psq_l f27, 136(r1), 0, qr0
/* 80269448 002663A8  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 8026944C 002663AC  E3 41 00 78 */	psq_l f26, 120(r1), 0, qr0
/* 80269450 002663B0  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 80269454 002663B4  E3 21 00 68 */	psq_l f25, 104(r1), 0, qr0
/* 80269458 002663B8  CB 21 00 60 */	lfd f25, 0x60(r1)
/* 8026945C 002663BC  E3 01 00 58 */	psq_l f24, 88(r1), 0, qr0
/* 80269460 002663C0  CB 01 00 50 */	lfd f24, 0x50(r1)
/* 80269464 002663C4  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 80269468 002663C8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8026946C 002663CC  7C 08 03 A6 */	mtlr r0
/* 80269470 002663D0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80269474 002663D4  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD818
lbl_805AD818:
	# ROM: 0x3FA0B8
	.4byte lbl_803D53C8

.global lbl_805AD81C
lbl_805AD81C:
	# ROM: 0x3FA0BC
	.float 1.0

.global lbl_805AD820
lbl_805AD820:
	# ROM: 0x3FA0C0
	.float 0.6

.global lbl_805AD824
lbl_805AD824:
	# ROM: 0x3FA0C4
	.4byte 0

.global lbl_805AD828
lbl_805AD828:
	# ROM: 0x3FA0C8
	.float 1.5

.global lbl_805AD82C
lbl_805AD82C:
	# ROM: 0x3FA0CC
	.float 1.0E-4

.global lbl_805AD830
lbl_805AD830:
	# ROM: 0x3FA0D0
	.4byte 0x3727C5AC

.global lbl_805AD834
lbl_805AD834:
	# ROM: 0x3FA0D4
	.float 0.01

.global lbl_805AD838
lbl_805AD838:
	# ROM: 0x3FA0D8
	.4byte 0x41200000

.global lbl_805AD83C
lbl_805AD83C:
	# ROM: 0x3FA0DC
	.4byte 0x42652EE0

.global lbl_805AD840
lbl_805AD840:
	# ROM: 0x3FA0E0
	.4byte 0xBF7FBE77

.global lbl_805AD844
lbl_805AD844:
	# ROM: 0x3FA0E4
	.float 0.017453292

.section .rodata
.balign 8

.global lbl_803D53C8
lbl_803D53C8:

	# ROM: 0x3D23C8
	.asciz "BendingAnimationHack"
	.balign 4
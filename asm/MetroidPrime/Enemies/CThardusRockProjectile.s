.include "macros.inc"

.section .data

.global lbl_803E6BE0
lbl_803E6BE0:
	# ROM: 0x3E3BE0
	.4byte 0
	.4byte 0
	.4byte __dt__22CThardusRockProjectileFv
	.4byte Accept__22CThardusRockProjectileFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__22CThardusRockProjectileFfR13CStateManager
	.4byte AcceptScriptMsg__22CThardusRockProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__22CThardusRockProjectileCFRC13CStateManager
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
	.4byte Patrol__22CThardusRockProjectileFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__22CThardusRockProjectileFR13CStateManager9EStateMsgf
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
	.4byte LoopedAttack__22CThardusRockProjectileFR13CStateManager9EStateMsgf
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
	.4byte GetUp__22CThardusRockProjectileFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__22CThardusRockProjectileFR13CStateManager9EStateMsgf
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
	.4byte Delay__22CThardusRockProjectileFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte sub_802047d4
	.4byte ShouldAttack__22CThardusRockProjectileFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__22CThardusRockProjectileFR13CStateManagerf
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
	.4byte ShouldMove__22CThardusRockProjectileFR13CStateManagerf
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

.global lbl_805A7F10
lbl_805A7F10:
	# ROM: 0x3F58B0
	.4byte 0x00000013

.global lbl_805A7F14
lbl_805A7F14:
	# ROM: 0x3F58B4
	.4byte 0x00000020

.global lbl_805A7F18
lbl_805A7F18:
	# ROM: 0x3F58B8
	.4byte 0x00000021

.global lbl_805A7F1C
lbl_805A7F1C:
	# ROM: 0x3F58BC
	.4byte 0x00000014

.global lbl_805A7F20
lbl_805A7F20:
	# ROM: 0x3F58C0
	.4byte 0

.global lbl_805A7F24
lbl_805A7F24:
	# ROM: 0x3F58C4
	.4byte 0

.global lbl_805A7F28
lbl_805A7F28:
	# ROM: 0x3F58C8
	.4byte 0

.global lbl_805A7F2C
lbl_805A7F2C:
	# ROM: 0x3F58CC
	.4byte 0

.global lbl_805A7F30
lbl_805A7F30:
	# ROM: 0x3F58D0
	.4byte 0x00000013

.global lbl_805A7F34
lbl_805A7F34:
	# ROM: 0x3F58D4
	.4byte 0x00000013

.global lbl_805A7F38
lbl_805A7F38:
	# ROM: 0x3F58D8
	.4byte 0x0000001E

.global lbl_805A7F3C
lbl_805A7F3C:
	# ROM: 0x3F58DC
	.4byte 0x00000013


.section .text, "ax"

.global __dt__22CThardusRockProjectileFv
__dt__22CThardusRockProjectileFv:
/* 80203700 00200660  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80203704 00200664  7C 08 02 A6 */	mflr r0
/* 80203708 00200668  90 01 00 44 */	stw r0, 0x44(r1)
/* 8020370C 0020066C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80203710 00200670  7C 9F 23 78 */	mr r31, r4
/* 80203714 00200674  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80203718 00200678  7C 7E 1B 79 */	or. r30, r3, r3
/* 8020371C 0020067C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80203720 00200680  93 81 00 30 */	stw r28, 0x30(r1)
/* 80203724 00200684  41 82 00 DC */	beq lbl_80203800
/* 80203728 00200688  3C 60 80 3E */	lis r3, lbl_803E6BE0@ha
/* 8020372C 0020068C  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80203730 00200690  38 03 6B E0 */	addi r0, r3, lbl_803E6BE0@l
/* 80203734 00200694  90 1E 00 00 */	stw r0, 0(r30)
/* 80203738 00200698  41 82 00 44 */	beq lbl_8020377C
/* 8020373C 0020069C  80 1E 05 90 */	lwz r0, 0x590(r30)
/* 80203740 002006A0  80 7E 05 98 */	lwz r3, 0x598(r30)
/* 80203744 002006A4  54 00 08 3C */	slwi r0, r0, 1
/* 80203748 002006A8  7C 03 02 14 */	add r0, r3, r0
/* 8020374C 002006AC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80203750 002006B0  7C 64 1B 78 */	mr r4, r3
/* 80203754 002006B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80203758 002006B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8020375C 002006BC  90 61 00 18 */	stw r3, 0x18(r1)
/* 80203760 002006C0  48 00 00 08 */	b lbl_80203768
lbl_80203764:
/* 80203764 002006C4  38 84 00 02 */	addi r4, r4, 2
lbl_80203768:
/* 80203768 002006C8  7C 04 00 40 */	cmplw r4, r0
/* 8020376C 002006CC  40 82 FF F8 */	bne lbl_80203764
/* 80203770 002006D0  28 03 00 00 */	cmplwi r3, 0
/* 80203774 002006D4  41 82 00 08 */	beq lbl_8020377C
/* 80203778 002006D8  48 11 21 B9 */	bl Free__7CMemoryFPCv
lbl_8020377C:
/* 8020377C 002006DC  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80203780 002006E0  41 82 00 50 */	beq lbl_802037D0
/* 80203784 002006E4  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 80203788 002006E8  83 9E 05 88 */	lwz r28, 0x588(r30)
/* 8020378C 002006EC  1C 00 00 4C */	mulli r0, r0, 0x4c
/* 80203790 002006F0  93 81 00 0C */	stw r28, 0xc(r1)
/* 80203794 002006F4  7F BC 02 14 */	add r29, r28, r0
/* 80203798 002006F8  93 81 00 08 */	stw r28, 8(r1)
/* 8020379C 002006FC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802037A0 00200700  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802037A4 00200704  48 00 00 14 */	b lbl_802037B8
lbl_802037A8:
/* 802037A8 00200708  7F 83 E3 78 */	mr r3, r28
/* 802037AC 0020070C  38 80 FF FF */	li r4, -1
/* 802037B0 00200710  4B F1 32 9D */	bl __dt__10CModelDataFv
/* 802037B4 00200714  3B 9C 00 4C */	addi r28, r28, 0x4c
lbl_802037B8:
/* 802037B8 00200718  7C 1C E8 40 */	cmplw r28, r29
/* 802037BC 0020071C  40 82 FF EC */	bne lbl_802037A8
/* 802037C0 00200720  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 802037C4 00200724  28 03 00 00 */	cmplwi r3, 0
/* 802037C8 00200728  41 82 00 08 */	beq lbl_802037D0
/* 802037CC 0020072C  48 11 21 65 */	bl Free__7CMemoryFPCv
lbl_802037D0:
/* 802037D0 00200730  34 1E 05 78 */	addic. r0, r30, 0x578
/* 802037D4 00200734  41 82 00 10 */	beq lbl_802037E4
/* 802037D8 00200738  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 802037DC 0020073C  38 80 00 01 */	li r4, 1
/* 802037E0 00200740  4B FA 40 FD */	bl sub_801a78dc
lbl_802037E4:
/* 802037E4 00200744  7F C3 F3 78 */	mr r3, r30
/* 802037E8 00200748  38 80 00 00 */	li r4, 0
/* 802037EC 0020074C  4B E7 3D 85 */	bl __dt__10CPatternedFv
/* 802037F0 00200750  7F E0 07 35 */	extsh. r0, r31
/* 802037F4 00200754  40 81 00 0C */	ble lbl_80203800
/* 802037F8 00200758  7F C3 F3 78 */	mr r3, r30
/* 802037FC 0020075C  48 11 21 35 */	bl Free__7CMemoryFPCv
lbl_80203800:
/* 80203800 00200760  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80203804 00200764  7F C3 F3 78 */	mr r3, r30
/* 80203808 00200768  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8020380C 0020076C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80203810 00200770  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80203814 00200774  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80203818 00200778  7C 08 03 A6 */	mtlr r0
/* 8020381C 0020077C  38 21 00 40 */	addi r1, r1, 0x40
/* 80203820 00200780  4E 80 00 20 */	blr

.global sub_80203824
sub_80203824:
/* 80203824 00200784  94 21 FB 00 */	stwu r1, -0x500(r1)
/* 80203828 00200788  7C 08 02 A6 */	mflr r0
/* 8020382C 0020078C  90 01 05 04 */	stw r0, 0x504(r1)
/* 80203830 00200790  38 61 00 18 */	addi r3, r1, 0x18
/* 80203834 00200794  BE A1 04 D4 */	stmw r21, 0x4d4(r1)
/* 80203838 00200798  7C 9A 23 78 */	mr r26, r4
/* 8020383C 0020079C  7C BB 2B 78 */	mr r27, r5
/* 80203840 002007A0  7C DC 33 78 */	mr r28, r6
/* 80203844 002007A4  7C FD 3B 78 */	mr r29, r7
/* 80203848 002007A8  7D 1E 43 78 */	mr r30, r8
/* 8020384C 002007AC  4B E4 98 91 */	bl AllocateUniqueId__13CStateManagerFv
/* 80203850 002007B0  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 80203854 002007B4  3C 60 80 3D */	lis r3, lbl_803D2590@ha
/* 80203858 002007B8  38 83 25 90 */	addi r4, r3, lbl_803D2590@l
/* 8020385C 002007BC  7F 65 DB 78 */	mr r5, r27
/* 80203860 002007C0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80203864 002007C4  54 06 05 BE */	clrlwi r6, r0, 0x16
/* 80203868 002007C8  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8020386C 002007CC  38 84 00 17 */	addi r4, r4, 0x17
/* 80203870 002007D0  4C C6 31 82 */	crclr 6
/* 80203874 002007D4  48 18 A4 69 */	bl sprintf
/* 80203878 002007D8  3C 60 80 3D */	lis r3, lbl_803D2590@ha
/* 8020387C 002007DC  3B 20 00 00 */	li r25, 0
/* 80203880 002007E0  38 63 25 90 */	addi r3, r3, lbl_803D2590@l
/* 80203884 002007E4  3B 00 00 00 */	li r24, 0
/* 80203888 002007E8  38 83 00 34 */	addi r4, r3, 0x34
/* 8020388C 002007EC  3A E0 00 00 */	li r23, 0
/* 80203890 002007F0  3A C0 00 00 */	li r22, 0
/* 80203894 002007F4  3A A0 00 00 */	li r21, 0
/* 80203898 002007F8  38 60 01 00 */	li r3, 0x100
/* 8020389C 002007FC  38 A0 00 00 */	li r5, 0
/* 802038A0 00200800  48 11 1F CD */	bl __nw__FUlPCcPCc
/* 802038A4 00200804  7C 7F 1B 79 */	or. r31, r3, r3
/* 802038A8 00200808  41 82 01 04 */	beq lbl_802039AC
/* 802038AC 0020080C  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 802038B0 00200810  93 61 00 58 */	stw r27, 0x58(r1)
/* 802038B4 00200814  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 802038B8 00200818  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 802038BC 0020081C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802038C0 00200820  38 61 00 4C */	addi r3, r1, 0x4c
/* 802038C4 00200824  38 A1 00 54 */	addi r5, r1, 0x54
/* 802038C8 00200828  81 84 00 00 */	lwz r12, 0(r4)
/* 802038CC 0020082C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802038D0 00200830  7D 89 03 A6 */	mtctr r12
/* 802038D4 00200834  4E 80 04 21 */	bctrl
/* 802038D8 00200838  3A A1 00 5C */	addi r21, r1, 0x5c
/* 802038DC 0020083C  38 81 00 4C */	addi r4, r1, 0x4c
/* 802038E0 00200840  7E A3 AB 78 */	mr r3, r21
/* 802038E4 00200844  3A C0 00 01 */	li r22, 1
/* 802038E8 00200848  48 13 D5 C1 */	bl __ct__6CTokenFRC6CToken
/* 802038EC 0020084C  7E A3 AB 78 */	mr r3, r21
/* 802038F0 00200850  48 13 D5 1D */	bl GetObj__6CTokenFv
/* 802038F4 00200854  80 03 00 04 */	lwz r0, 4(r3)
/* 802038F8 00200858  38 E0 00 00 */	li r7, 0
/* 802038FC 0020085C  A0 C1 00 1C */	lhz r6, 0x1c(r1)
/* 80203900 00200860  38 61 00 88 */	addi r3, r1, 0x88
/* 80203904 00200864  90 01 00 64 */	stw r0, 0x64(r1)
/* 80203908 00200868  38 81 00 44 */	addi r4, r1, 0x44
/* 8020390C 0020086C  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 80203910 00200870  38 A1 00 68 */	addi r5, r1, 0x68
/* 80203914 00200874  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 80203918 00200878  38 C1 00 48 */	addi r6, r1, 0x48
/* 8020391C 0020087C  3A A0 00 01 */	li r21, 1
/* 80203920 00200880  3B 00 00 01 */	li r24, 1
/* 80203924 00200884  81 1A 08 CC */	lwz r8, 0x8cc(r26)
/* 80203928 00200888  91 01 00 40 */	stw r8, 0x40(r1)
/* 8020392C 0020088C  91 01 00 44 */	stw r8, 0x44(r1)
/* 80203930 00200890  90 E1 00 6C */	stw r7, 0x6c(r1)
/* 80203934 00200894  90 E1 00 70 */	stw r7, 0x70(r1)
/* 80203938 00200898  90 E1 00 74 */	stw r7, 0x74(r1)
/* 8020393C 0020089C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80203940 002008A0  4B E4 DB 45 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 80203944 002008A4  38 61 00 78 */	addi r3, r1, 0x78
/* 80203948 002008A8  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8020394C 002008AC  38 C1 00 10 */	addi r6, r1, 0x10
/* 80203950 002008B0  3A E0 00 01 */	li r23, 1
/* 80203954 002008B4  38 A0 FF FF */	li r5, -1
/* 80203958 002008B8  48 13 A8 3D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 8020395C 002008BC  3B 20 00 01 */	li r25, 1
/* 80203960 002008C0  48 14 66 4D */	bl White__6CColorFv
/* 80203964 002008C4  3C 80 80 5A */	lis r4, lbl_805A65FC@ha
/* 80203968 002008C8  7C 7B 1B 78 */	mr r27, r3
/* 8020396C 002008CC  38 84 65 FC */	addi r4, r4, lbl_805A65FC@l
/* 80203970 002008D0  7F 85 E3 78 */	mr r5, r28
/* 80203974 002008D4  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80203978 002008D8  48 10 F9 01 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 8020397C 002008DC  93 A1 00 08 */	stw r29, 8(r1)
/* 80203980 002008E0  7C 69 1B 78 */	mr r9, r3
/* 80203984 002008E4  7F E3 FB 78 */	mr r3, r31
/* 80203988 002008E8  7F CA F3 78 */	mr r10, r30
/* 8020398C 002008EC  93 61 00 0C */	stw r27, 0xc(r1)
/* 80203990 002008F0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80203994 002008F4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80203998 002008F8  38 E1 00 88 */	addi r7, r1, 0x88
/* 8020399C 002008FC  39 01 00 78 */	addi r8, r1, 0x78
/* 802039A0 00200900  38 C0 00 01 */	li r6, 1
/* 802039A4 00200904  4B E5 71 55 */	bl "__ct__10CExplosionFRC31TLockedToken<15CGenDescription>9TUniqueIdbRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4fUiRC9CVector3fRC6CColor"
/* 802039A8 00200908  7C 7F 1B 78 */	mr r31, r3
lbl_802039AC:
/* 802039AC 0020090C  7E A0 07 75 */	extsb. r0, r21
/* 802039B0 00200910  41 82 00 10 */	beq lbl_802039C0
/* 802039B4 00200914  38 61 00 5C */	addi r3, r1, 0x5c
/* 802039B8 00200918  38 80 00 00 */	li r4, 0
/* 802039BC 0020091C  48 13 D4 85 */	bl __dt__6CTokenFv
lbl_802039C0:
/* 802039C0 00200920  7E C0 07 75 */	extsb. r0, r22
/* 802039C4 00200924  41 82 00 10 */	beq lbl_802039D4
/* 802039C8 00200928  38 61 00 4C */	addi r3, r1, 0x4c
/* 802039CC 0020092C  38 80 FF FF */	li r4, -1
/* 802039D0 00200930  48 13 D4 71 */	bl __dt__6CTokenFv
lbl_802039D4:
/* 802039D4 00200934  7E E0 07 75 */	extsb. r0, r23
/* 802039D8 00200938  41 82 00 44 */	beq lbl_80203A1C
/* 802039DC 0020093C  80 01 00 90 */	lwz r0, 0x90(r1)
/* 802039E0 00200940  80 61 00 98 */	lwz r3, 0x98(r1)
/* 802039E4 00200944  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802039E8 00200948  90 61 00 24 */	stw r3, 0x24(r1)
/* 802039EC 0020094C  7C 64 1B 78 */	mr r4, r3
/* 802039F0 00200950  7C 03 02 14 */	add r0, r3, r0
/* 802039F4 00200954  90 61 00 20 */	stw r3, 0x20(r1)
/* 802039F8 00200958  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802039FC 0020095C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80203A00 00200960  48 00 00 08 */	b lbl_80203A08
lbl_80203A04:
/* 80203A04 00200964  38 84 00 0C */	addi r4, r4, 0xc
lbl_80203A08:
/* 80203A08 00200968  7C 04 00 40 */	cmplw r4, r0
/* 80203A0C 0020096C  40 82 FF F8 */	bne lbl_80203A04
/* 80203A10 00200970  28 03 00 00 */	cmplwi r3, 0
/* 80203A14 00200974  41 82 00 08 */	beq lbl_80203A1C
/* 80203A18 00200978  48 11 1F 19 */	bl Free__7CMemoryFPCv
lbl_80203A1C:
/* 80203A1C 0020097C  7F 00 07 75 */	extsb. r0, r24
/* 80203A20 00200980  41 82 00 44 */	beq lbl_80203A64
/* 80203A24 00200984  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80203A28 00200988  80 61 00 74 */	lwz r3, 0x74(r1)
/* 80203A2C 0020098C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80203A30 00200990  90 61 00 34 */	stw r3, 0x34(r1)
/* 80203A34 00200994  7C 64 1B 78 */	mr r4, r3
/* 80203A38 00200998  7C 03 02 14 */	add r0, r3, r0
/* 80203A3C 0020099C  90 61 00 30 */	stw r3, 0x30(r1)
/* 80203A40 002009A0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80203A44 002009A4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80203A48 002009A8  48 00 00 08 */	b lbl_80203A50
lbl_80203A4C:
/* 80203A4C 002009AC  38 84 00 0C */	addi r4, r4, 0xc
lbl_80203A50:
/* 80203A50 002009B0  7C 04 00 40 */	cmplw r4, r0
/* 80203A54 002009B4  40 82 FF F8 */	bne lbl_80203A4C
/* 80203A58 002009B8  28 03 00 00 */	cmplwi r3, 0
/* 80203A5C 002009BC  41 82 00 08 */	beq lbl_80203A64
/* 80203A60 002009C0  48 11 1E D1 */	bl Free__7CMemoryFPCv
lbl_80203A64:
/* 80203A64 002009C4  7F 20 07 75 */	extsb. r0, r25
/* 80203A68 002009C8  41 82 00 0C */	beq lbl_80203A74
/* 80203A6C 002009CC  38 61 00 78 */	addi r3, r1, 0x78
/* 80203A70 002009D0  48 13 A0 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80203A74:
/* 80203A74 002009D4  7F 43 D3 78 */	mr r3, r26
/* 80203A78 002009D8  7F E4 FB 78 */	mr r4, r31
/* 80203A7C 002009DC  4B E4 90 99 */	bl AddObject__13CStateManagerFR7CEntity
/* 80203A80 002009E0  BA A1 04 D4 */	lmw r21, 0x4d4(r1)
/* 80203A84 002009E4  80 01 05 04 */	lwz r0, 0x504(r1)
/* 80203A88 002009E8  7C 08 03 A6 */	mtlr r0
/* 80203A8C 002009EC  38 21 05 00 */	addi r1, r1, 0x500
/* 80203A90 002009F0  4E 80 00 20 */	blr

.global sub_80203a94
sub_80203a94:
/* 80203A94 002009F4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80203A98 002009F8  7C 08 02 A6 */	mflr r0
/* 80203A9C 002009FC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80203AA0 00200A00  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80203AA4 00200A04  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 80203AA8 00200A08  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80203AAC 00200A0C  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 80203AB0 00200A10  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 80203AB4 00200A14  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 80203AB8 00200A18  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 80203ABC 00200A1C  93 81 00 C0 */	stw r28, 0xc0(r1)
/* 80203AC0 00200A20  7C 7D 1B 78 */	mr r29, r3
/* 80203AC4 00200A24  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80203AC8 00200A28  A0 63 05 D0 */	lhz r3, 0x5d0(r3)
/* 80203ACC 00200A2C  7C 9E 23 78 */	mr r30, r4
/* 80203AD0 00200A30  7C BC 2B 78 */	mr r28, r5
/* 80203AD4 00200A34  7C 03 00 40 */	cmplw r3, r0
/* 80203AD8 00200A38  41 82 02 50 */	beq lbl_80203D28
/* 80203ADC 00200A3C  A0 1D 05 D0 */	lhz r0, 0x5d0(r29)
/* 80203AE0 00200A40  7F C3 F3 78 */	mr r3, r30
/* 80203AE4 00200A44  38 81 00 28 */	addi r4, r1, 0x28
/* 80203AE8 00200A48  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80203AEC 00200A4C  4B E4 8A 89 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80203AF0 00200A50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80203AF4 00200A54  41 82 02 34 */	beq lbl_80203D28
/* 80203AF8 00200A58  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80203AFC 00200A5C  7F A3 EB 78 */	mr r3, r29
/* 80203B00 00200A60  7F C4 F3 78 */	mr r4, r30
/* 80203B04 00200A64  7F 86 E3 78 */	mr r6, r28
/* 80203B08 00200A68  C0 05 00 00 */	lfs f0, 0(r5)
/* 80203B0C 00200A6C  38 E1 00 4C */	addi r7, r1, 0x4c
/* 80203B10 00200A70  39 00 00 00 */	li r8, 0
/* 80203B14 00200A74  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80203B18 00200A78  C0 05 00 04 */	lfs f0, 4(r5)
/* 80203B1C 00200A7C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80203B20 00200A80  C0 05 00 08 */	lfs f0, 8(r5)
/* 80203B24 00200A84  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80203B28 00200A88  80 BD 05 C8 */	lwz r5, 0x5c8(r29)
/* 80203B2C 00200A8C  4B FF FC F9 */	bl sub_80203824
/* 80203B30 00200A90  C0 22 B0 80 */	lfs f1, lbl_805ACDA0@sda21(r2)
/* 80203B34 00200A94  7F E3 FB 78 */	mr r3, r31
/* 80203B38 00200A98  C0 42 B0 84 */	lfs f2, lbl_805ACDA4@sda21(r2)
/* 80203B3C 00200A9C  7F C4 F3 78 */	mr r4, r30
/* 80203B40 00200AA0  C0 62 B0 88 */	lfs f3, lbl_805ACDA8@sda21(r2)
/* 80203B44 00200AA4  7F 85 E3 78 */	mr r5, r28
/* 80203B48 00200AA8  4B FD 7E D9 */	bl sub_801dba20
/* 80203B4C 00200AAC  83 9E 08 4C */	lwz r28, 0x84c(r30)
/* 80203B50 00200AB0  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80203B54 00200AB4  C0 5C 00 50 */	lfs f2, 0x50(r28)
/* 80203B58 00200AB8  C0 7C 00 60 */	lfs f3, 0x60(r28)
/* 80203B5C 00200ABC  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80203B60 00200AC0  EC C2 08 28 */	fsubs f6, f2, f1
/* 80203B64 00200AC4  C0 5C 00 40 */	lfs f2, 0x40(r28)
/* 80203B68 00200AC8  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80203B6C 00200ACC  EC A3 00 28 */	fsubs f5, f3, f0
/* 80203B70 00200AD0  EC 06 01 B2 */	fmuls f0, f6, f6
/* 80203B74 00200AD4  C0 82 B0 8C */	lfs f4, lbl_805ACDAC@sda21(r2)
/* 80203B78 00200AD8  EC 62 08 28 */	fsubs f3, f2, f1
/* 80203B7C 00200ADC  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 80203B80 00200AE0  EC 45 01 72 */	fmuls f2, f5, f5
/* 80203B84 00200AE4  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 80203B88 00200AE8  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80203B8C 00200AEC  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80203B90 00200AF0  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80203B94 00200AF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80203B98 00200AF8  C0 63 00 00 */	lfs f3, 0(r3)
/* 80203B9C 00200AFC  EC 22 00 2A */	fadds f1, f2, f0
/* 80203BA0 00200B00  EF C4 00 F2 */	fmuls f30, f4, f3
/* 80203BA4 00200B04  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80203BA8 00200B08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80203BAC 00200B0C  40 80 00 F0 */	bge lbl_80203C9C
/* 80203BB0 00200B10  7F A4 EB 78 */	mr r4, r29
/* 80203BB4 00200B14  38 61 00 64 */	addi r3, r1, 0x64
/* 80203BB8 00200B18  81 9D 00 00 */	lwz r12, 0(r29)
/* 80203BBC 00200B1C  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 80203BC0 00200B20  7D 89 03 A6 */	mtctr r12
/* 80203BC4 00200B24  4E 80 04 21 */	bctrl
/* 80203BC8 00200B28  7F A4 EB 78 */	mr r4, r29
/* 80203BCC 00200B2C  38 61 00 80 */	addi r3, r1, 0x80
/* 80203BD0 00200B30  81 9D 00 00 */	lwz r12, 0(r29)
/* 80203BD4 00200B34  C3 E1 00 78 */	lfs f31, 0x78(r1)
/* 80203BD8 00200B38  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 80203BDC 00200B3C  7D 89 03 A6 */	mtctr r12
/* 80203BE0 00200B40  4E 80 04 21 */	bctrl
/* 80203BE4 00200B44  C0 02 B0 90 */	lfs f0, lbl_805ACDB0@sda21(r2)
/* 80203BE8 00200B48  39 00 00 09 */	li r8, 9
/* 80203BEC 00200B4C  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80203BF0 00200B50  38 60 00 00 */	li r3, 0
/* 80203BF4 00200B54  88 C1 00 30 */	lbz r6, 0x30(r1)
/* 80203BF8 00200B58  50 66 3E 30 */	rlwimi r6, r3, 7, 0x18, 0x18
/* 80203BFC 00200B5C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80203C00 00200B60  88 01 00 B4 */	lbz r0, 0xb4(r1)
/* 80203C04 00200B64  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80203C08 00200B68  54 C5 06 3E */	clrlwi r5, r6, 0x18
/* 80203C0C 00200B6C  50 65 36 72 */	rlwimi r5, r3, 6, 0x19, 0x19
/* 80203C10 00200B70  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80203C14 00200B74  54 A7 06 3E */	clrlwi r7, r5, 0x18
/* 80203C18 00200B78  98 C1 00 30 */	stb r6, 0x30(r1)
/* 80203C1C 00200B7C  50 67 2E B4 */	rlwimi r7, r3, 5, 0x1a, 0x1a
/* 80203C20 00200B80  38 61 00 40 */	addi r3, r1, 0x40
/* 80203C24 00200B84  91 01 00 9C */	stw r8, 0x9c(r1)
/* 80203C28 00200B88  38 81 00 58 */	addi r4, r1, 0x58
/* 80203C2C 00200B8C  98 A1 00 30 */	stb r5, 0x30(r1)
/* 80203C30 00200B90  98 E1 00 A0 */	stb r7, 0xa0(r1)
/* 80203C34 00200B94  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80203C38 00200B98  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80203C3C 00200B9C  D3 C1 00 AC */	stfs f30, 0xac(r1)
/* 80203C40 00200BA0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80203C44 00200BA4  98 01 00 B4 */	stb r0, 0xb4(r1)
/* 80203C48 00200BA8  A0 DD 00 08 */	lhz r6, 8(r29)
/* 80203C4C 00200BAC  91 01 00 2C */	stw r8, 0x2c(r1)
/* 80203C50 00200BB0  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 80203C54 00200BB4  A0 BC 00 08 */	lhz r5, 8(r28)
/* 80203C58 00200BB8  98 E1 00 30 */	stb r7, 0x30(r1)
/* 80203C5C 00200BBC  B0 A1 00 1C */	sth r5, 0x1c(r1)
/* 80203C60 00200BC0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80203C64 00200BC4  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 80203C68 00200BC8  B0 A1 00 18 */	sth r5, 0x18(r1)
/* 80203C6C 00200BCC  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80203C70 00200BD0  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80203C74 00200BD4  48 11 0B DD */	bl AsNormalized__9CVector3fCFv
/* 80203C78 00200BD8  3C 80 80 5A */	lis r4, lbl_8059FD18@ha
/* 80203C7C 00200BDC  7F C3 F3 78 */	mr r3, r30
/* 80203C80 00200BE0  39 04 FD 18 */	addi r8, r4, lbl_8059FD18@l
/* 80203C84 00200BE4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80203C88 00200BE8  38 81 00 24 */	addi r4, r1, 0x24
/* 80203C8C 00200BEC  38 C1 00 14 */	addi r6, r1, 0x14
/* 80203C90 00200BF0  38 E1 00 9C */	addi r7, r1, 0x9c
/* 80203C94 00200BF4  39 21 00 40 */	addi r9, r1, 0x40
/* 80203C98 00200BF8  4B E4 64 09 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_80203C9C:
/* 80203C9C 00200BFC  81 5E 08 CC */	lwz r10, 0x8cc(r30)
/* 80203CA0 00200C00  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80203CA4 00200C04  C0 9D 00 60 */	lfs f4, 0x60(r29)
/* 80203CA8 00200C08  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 80203CAC 00200C0C  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 80203CB0 00200C10  38 00 00 01 */	li r0, 1
/* 80203CB4 00200C14  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80203CB8 00200C18  7F A3 EB 78 */	mr r3, r29
/* 80203CBC 00200C1C  C0 22 B0 88 */	lfs f1, lbl_805ACDA8@sda21(r2)
/* 80203CC0 00200C20  39 21 00 34 */	addi r9, r1, 0x34
/* 80203CC4 00200C24  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80203CC8 00200C28  38 A0 00 00 */	li r5, 0
/* 80203CCC 00200C2C  C0 42 B0 94 */	lfs f2, lbl_805ACDB4@sda21(r2)
/* 80203CD0 00200C30  38 C0 00 14 */	li r6, 0x14
/* 80203CD4 00200C34  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80203CD8 00200C38  38 E0 00 7F */	li r7, 0x7f
/* 80203CDC 00200C3C  C0 62 B0 98 */	lfs f3, lbl_805ACDB8@sda21(r2)
/* 80203CE0 00200C40  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80203CE4 00200C44  93 C1 00 08 */	stw r30, 8(r1)
/* 80203CE8 00200C48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80203CEC 00200C4C  80 9D 05 D8 */	lwz r4, 0x5d8(r29)
/* 80203CF0 00200C50  4B E4 F2 41 */	bl ProcessSoundEvent__6CActorFififfUcUcRC9CVector3fRC9CVector3fiR13CStateManager
/* 80203CF4 00200C54  88 1D 05 DD */	lbz r0, 0x5dd(r29)
/* 80203CF8 00200C58  28 00 00 00 */	cmplwi r0, 0
/* 80203CFC 00200C5C  41 82 00 2C */	beq lbl_80203D28
/* 80203D00 00200C60  C0 22 B0 9C */	lfs f1, lbl_805ACDBC@sda21(r2)
/* 80203D04 00200C64  7F E3 FB 78 */	mr r3, r31
/* 80203D08 00200C68  7F C4 F3 78 */	mr r4, r30
/* 80203D0C 00200C6C  7F A5 EB 78 */	mr r5, r29
/* 80203D10 00200C70  4B FD 7F 89 */	bl sub_801dbc98
/* 80203D14 00200C74  7F A3 EB 78 */	mr r3, r29
/* 80203D18 00200C78  7F C5 F3 78 */	mr r5, r30
/* 80203D1C 00200C7C  38 80 00 09 */	li r4, 9
/* 80203D20 00200C80  38 C0 FF FF */	li r6, -1
/* 80203D24 00200C84  4B E4 D3 9D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_80203D28:
/* 80203D28 00200C88  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 80203D2C 00200C8C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80203D30 00200C90  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 80203D34 00200C94  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80203D38 00200C98  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80203D3C 00200C9C  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 80203D40 00200CA0  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 80203D44 00200CA4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80203D48 00200CA8  83 81 00 C0 */	lwz r28, 0xc0(r1)
/* 80203D4C 00200CAC  7C 08 03 A6 */	mtlr r0
/* 80203D50 00200CB0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80203D54 00200CB4  4E 80 00 20 */	blr

.global sub_80203d58
sub_80203d58:
/* 80203D58 00200CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80203D5C 00200CBC  7C 08 02 A6 */	mflr r0
/* 80203D60 00200CC0  38 80 00 00 */	li r4, 0
/* 80203D64 00200CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80203D68 00200CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80203D6C 00200CCC  7C 7F 1B 78 */	mr r31, r3
/* 80203D70 00200CD0  88 03 03 28 */	lbz r0, 0x328(r3)
/* 80203D74 00200CD4  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80203D78 00200CD8  98 03 03 28 */	stb r0, 0x328(r3)
/* 80203D7C 00200CDC  4B F1 75 FD */	bl Stop__13CPhysicsActorFv
/* 80203D80 00200CE0  7F E3 FB 78 */	mr r3, r31
/* 80203D84 00200CE4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80203D88 00200CE8  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80203D8C 00200CEC  7D 89 03 A6 */	mtctr r12
/* 80203D90 00200CF0  4E 80 04 21 */	bctrl
/* 80203D94 00200CF4  C0 02 B0 A0 */	lfs f0, lbl_805ACDC0@sda21(r2)
/* 80203D98 00200CF8  FC 40 08 50 */	fneg f2, f1
/* 80203D9C 00200CFC  C0 22 B0 9C */	lfs f1, lbl_805ACDBC@sda21(r2)
/* 80203DA0 00200D00  38 00 00 03 */	li r0, 3
/* 80203DA4 00200D04  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 80203DA8 00200D08  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80203DAC 00200D0C  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 80203DB0 00200D10  D0 3F 01 58 */	stfs f1, 0x158(r31)
/* 80203DB4 00200D14  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80203DB8 00200D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80203DBC 00200D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80203DC0 00200D20  7C 08 03 A6 */	mtlr r0
/* 80203DC4 00200D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80203DC8 00200D28  4E 80 00 20 */	blr

.global Render__22CThardusRockProjectileCFRC13CStateManager
Render__22CThardusRockProjectileCFRC13CStateManager:
/* 80203DCC 00200D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80203DD0 00200D30  7C 08 02 A6 */	mflr r0
/* 80203DD4 00200D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80203DD8 00200D38  4B E7 42 55 */	bl Render__10CPatternedCFRC13CStateManager
/* 80203DDC 00200D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80203DE0 00200D40  7C 08 03 A6 */	mtlr r0
/* 80203DE4 00200D44  38 21 00 10 */	addi r1, r1, 0x10
/* 80203DE8 00200D48  4E 80 00 20 */	blr

.global sub_80203dec
sub_80203dec:
/* 80203DEC 00200D4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80203DF0 00200D50  7C 08 02 A6 */	mflr r0
/* 80203DF4 00200D54  90 01 00 54 */	stw r0, 0x54(r1)
/* 80203DF8 00200D58  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 80203DFC 00200D5C  7C 77 1B 78 */	mr r23, r3
/* 80203E00 00200D60  7C 98 23 78 */	mr r24, r4
/* 80203E04 00200D64  7C B9 2B 78 */	mr r25, r5
/* 80203E08 00200D68  7C DA 33 78 */	mr r26, r6
/* 80203E0C 00200D6C  3B 60 00 00 */	li r27, 0
/* 80203E10 00200D70  3B E0 00 00 */	li r31, 0
/* 80203E14 00200D74  83 83 05 90 */	lwz r28, 0x590(r3)
/* 80203E18 00200D78  48 00 00 E0 */	b lbl_80203EF8
lbl_80203E1C:
/* 80203E1C 00200D7C  80 B7 05 98 */	lwz r5, 0x598(r23)
/* 80203E20 00200D80  7F 64 DB 78 */	mr r4, r27
/* 80203E24 00200D84  80 77 05 78 */	lwz r3, 0x578(r23)
/* 80203E28 00200D88  7C 05 FA 2E */	lhzx r0, r5, r31
/* 80203E2C 00200D8C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80203E30 00200D90  4B FA 34 09 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80203E34 00200D94  A0 A3 00 3C */	lhz r5, 0x3c(r3)
/* 80203E38 00200D98  7F 03 C3 78 */	mr r3, r24
/* 80203E3C 00200D9C  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80203E40 00200DA0  38 81 00 0C */	addi r4, r1, 0xc
/* 80203E44 00200DA4  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80203E48 00200DA8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80203E4C 00200DAC  4B E4 87 29 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80203E50 00200DB0  7C 64 1B 78 */	mr r4, r3
/* 80203E54 00200DB4  38 61 00 20 */	addi r3, r1, 0x20
/* 80203E58 00200DB8  4B EA BE 39 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 80203E5C 00200DBC  83 C3 00 04 */	lwz r30, 4(r3)
/* 80203E60 00200DC0  28 1E 00 00 */	cmplwi r30, 0
/* 80203E64 00200DC4  41 82 00 8C */	beq lbl_80203EF0
/* 80203E68 00200DC8  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80203E6C 00200DCC  7F 03 C3 78 */	mr r3, r24
/* 80203E70 00200DD0  38 81 00 08 */	addi r4, r1, 8
/* 80203E74 00200DD4  B0 01 00 08 */	sth r0, 8(r1)
/* 80203E78 00200DD8  4B E4 86 FD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80203E7C 00200DDC  7C 64 1B 78 */	mr r4, r3
/* 80203E80 00200DE0  38 61 00 18 */	addi r3, r1, 0x18
/* 80203E84 00200DE4  4B EA BE 0D */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 80203E88 00200DE8  83 A3 00 04 */	lwz r29, 4(r3)
/* 80203E8C 00200DEC  28 1D 00 00 */	cmplwi r29, 0
/* 80203E90 00200DF0  41 82 00 60 */	beq lbl_80203EF0
/* 80203E94 00200DF4  2C 19 00 01 */	cmpwi r25, 1
/* 80203E98 00200DF8  41 82 00 38 */	beq lbl_80203ED0
/* 80203E9C 00200DFC  40 80 00 54 */	bge lbl_80203EF0
/* 80203EA0 00200E00  2C 19 00 00 */	cmpwi r25, 0
/* 80203EA4 00200E04  40 80 00 08 */	bge lbl_80203EAC
/* 80203EA8 00200E08  48 00 00 48 */	b lbl_80203EF0
lbl_80203EAC:
/* 80203EAC 00200E0C  7F C3 F3 78 */	mr r3, r30
/* 80203EB0 00200E10  7F 44 D3 78 */	mr r4, r26
/* 80203EB4 00200E14  7F 05 C3 78 */	mr r5, r24
/* 80203EB8 00200E18  4B E5 04 99 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80203EBC 00200E1C  7F A3 EB 78 */	mr r3, r29
/* 80203EC0 00200E20  7F 44 D3 78 */	mr r4, r26
/* 80203EC4 00200E24  7F 05 C3 78 */	mr r5, r24
/* 80203EC8 00200E28  4B E5 04 89 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80203ECC 00200E2C  48 00 00 24 */	b lbl_80203EF0
lbl_80203ED0:
/* 80203ED0 00200E30  7F C3 F3 78 */	mr r3, r30
/* 80203ED4 00200E34  7F 44 D3 78 */	mr r4, r26
/* 80203ED8 00200E38  7F 05 C3 78 */	mr r5, r24
/* 80203EDC 00200E3C  4B E5 00 A5 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80203EE0 00200E40  7F A3 EB 78 */	mr r3, r29
/* 80203EE4 00200E44  7F 44 D3 78 */	mr r4, r26
/* 80203EE8 00200E48  7F 05 C3 78 */	mr r5, r24
/* 80203EEC 00200E4C  4B E5 00 95 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_80203EF0:
/* 80203EF0 00200E50  3B 7B 00 01 */	addi r27, r27, 1
/* 80203EF4 00200E54  3B FF 00 02 */	addi r31, r31, 2
lbl_80203EF8:
/* 80203EF8 00200E58  7C 1B E0 40 */	cmplw r27, r28
/* 80203EFC 00200E5C  41 80 FF 20 */	blt lbl_80203E1C
/* 80203F00 00200E60  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 80203F04 00200E64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80203F08 00200E68  7C 08 03 A6 */	mtlr r0
/* 80203F0C 00200E6C  38 21 00 50 */	addi r1, r1, 0x50
/* 80203F10 00200E70  4E 80 00 20 */	blr

.global SetChildrenActive__22CThardusRockProjectileFR13CStateManagerb
SetChildrenActive__22CThardusRockProjectileFR13CStateManagerb:
/* 80203F14 00200E74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80203F18 00200E78  7C 08 02 A6 */	mflr r0
/* 80203F1C 00200E7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80203F20 00200E80  BF 01 00 20 */	stmw r24, 0x20(r1)
/* 80203F24 00200E84  7C 78 1B 78 */	mr r24, r3
/* 80203F28 00200E88  7C 99 23 78 */	mr r25, r4
/* 80203F2C 00200E8C  54 BE 06 3E */	clrlwi r30, r5, 0x18
/* 80203F30 00200E90  3B 80 00 00 */	li r28, 0
/* 80203F34 00200E94  3B E0 00 00 */	li r31, 0
/* 80203F38 00200E98  83 A3 05 90 */	lwz r29, 0x590(r3)
/* 80203F3C 00200E9C  48 00 00 94 */	b lbl_80203FD0
lbl_80203F40:
/* 80203F40 00200EA0  80 B8 05 98 */	lwz r5, 0x598(r24)
/* 80203F44 00200EA4  7F 84 E3 78 */	mr r4, r28
/* 80203F48 00200EA8  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80203F4C 00200EAC  7C 05 FA 2E */	lhzx r0, r5, r31
/* 80203F50 00200EB0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80203F54 00200EB4  4B FA 32 E5 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80203F58 00200EB8  A0 A3 00 3C */	lhz r5, 0x3c(r3)
/* 80203F5C 00200EBC  7F 23 CB 78 */	mr r3, r25
/* 80203F60 00200EC0  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80203F64 00200EC4  38 81 00 0C */	addi r4, r1, 0xc
/* 80203F68 00200EC8  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80203F6C 00200ECC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80203F70 00200ED0  4B E4 86 05 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80203F74 00200ED4  7C 7B 1B 79 */	or. r27, r3, r3
/* 80203F78 00200ED8  41 82 00 50 */	beq lbl_80203FC8
/* 80203F7C 00200EDC  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80203F80 00200EE0  7F 23 CB 78 */	mr r3, r25
/* 80203F84 00200EE4  38 81 00 08 */	addi r4, r1, 8
/* 80203F88 00200EE8  B0 01 00 08 */	sth r0, 8(r1)
/* 80203F8C 00200EEC  4B E4 85 E9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80203F90 00200EF0  7C 7A 1B 79 */	or. r26, r3, r3
/* 80203F94 00200EF4  41 82 00 34 */	beq lbl_80203FC8
/* 80203F98 00200EF8  7F 63 DB 78 */	mr r3, r27
/* 80203F9C 00200EFC  7F C4 F3 78 */	mr r4, r30
/* 80203FA0 00200F00  81 9B 00 00 */	lwz r12, 0(r27)
/* 80203FA4 00200F04  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80203FA8 00200F08  7D 89 03 A6 */	mtctr r12
/* 80203FAC 00200F0C  4E 80 04 21 */	bctrl
/* 80203FB0 00200F10  7F 43 D3 78 */	mr r3, r26
/* 80203FB4 00200F14  7F C4 F3 78 */	mr r4, r30
/* 80203FB8 00200F18  81 9A 00 00 */	lwz r12, 0(r26)
/* 80203FBC 00200F1C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80203FC0 00200F20  7D 89 03 A6 */	mtctr r12
/* 80203FC4 00200F24  4E 80 04 21 */	bctrl
lbl_80203FC8:
/* 80203FC8 00200F28  3B 9C 00 01 */	addi r28, r28, 1
/* 80203FCC 00200F2C  3B FF 00 02 */	addi r31, r31, 2
lbl_80203FD0:
/* 80203FD0 00200F30  7C 1C E8 40 */	cmplw r28, r29
/* 80203FD4 00200F34  41 80 FF 6C */	blt lbl_80203F40
/* 80203FD8 00200F38  BB 01 00 20 */	lmw r24, 0x20(r1)
/* 80203FDC 00200F3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80203FE0 00200F40  7C 08 03 A6 */	mtlr r0
/* 80203FE4 00200F44  38 21 00 40 */	addi r1, r1, 0x40
/* 80203FE8 00200F48  4E 80 00 20 */	blr

.global UpdateDestroyableRockCollisionActors__22CThardusRockProjectileFR13CStateManager
UpdateDestroyableRockCollisionActors__22CThardusRockProjectileFR13CStateManager:
/* 80203FEC 00200F4C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80203FF0 00200F50  7C 08 02 A6 */	mflr r0
/* 80203FF4 00200F54  90 01 00 84 */	stw r0, 0x84(r1)
/* 80203FF8 00200F58  BE E1 00 5C */	stmw r23, 0x5c(r1)
/* 80203FFC 00200F5C  7C 79 1B 78 */	mr r25, r3
/* 80204000 00200F60  7C 9A 23 78 */	mr r26, r4
/* 80204004 00200F64  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80204008 00200F68  4B FA 32 41 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8020400C 00200F6C  7C 7E 1B 78 */	mr r30, r3
/* 80204010 00200F70  3B 80 00 00 */	li r28, 0
/* 80204014 00200F74  3B 00 00 00 */	li r24, 0
/* 80204018 00200F78  48 00 02 0C */	b lbl_80204224
lbl_8020401C:
/* 8020401C 00200F7C  80 79 05 78 */	lwz r3, 0x578(r25)
/* 80204020 00200F80  7F 84 E3 78 */	mr r4, r28
/* 80204024 00200F84  4B FA 32 15 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80204028 00200F88  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8020402C 00200F8C  7F 43 D3 78 */	mr r3, r26
/* 80204030 00200F90  38 81 00 0C */	addi r4, r1, 0xc
/* 80204034 00200F94  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80204038 00200F98  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8020403C 00200F9C  4B E4 85 39 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80204040 00200FA0  7C 64 1B 78 */	mr r4, r3
/* 80204044 00200FA4  38 61 00 18 */	addi r3, r1, 0x18
/* 80204048 00200FA8  4B EA B3 05 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8020404C 00200FAC  83 A3 00 04 */	lwz r29, 4(r3)
/* 80204050 00200FB0  28 1D 00 00 */	cmplwi r29, 0
/* 80204054 00200FB4  41 82 01 C8 */	beq lbl_8020421C
/* 80204058 00200FB8  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 8020405C 00200FBC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80204060 00200FC0  41 82 01 BC */	beq lbl_8020421C
/* 80204064 00200FC4  80 B9 05 98 */	lwz r5, 0x598(r25)
/* 80204068 00200FC8  7F 43 D3 78 */	mr r3, r26
/* 8020406C 00200FCC  38 81 00 08 */	addi r4, r1, 8
/* 80204070 00200FD0  7C 05 C2 2E */	lhzx r0, r5, r24
/* 80204074 00200FD4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80204078 00200FD8  B0 01 00 08 */	sth r0, 8(r1)
/* 8020407C 00200FDC  4B E4 84 F9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80204080 00200FE0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80204084 00200FE4  41 82 01 98 */	beq lbl_8020421C
/* 80204088 00200FE8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020408C 00200FEC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80204090 00200FF0  7D 89 03 A6 */	mtctr r12
/* 80204094 00200FF4  4E 80 04 21 */	bctrl
/* 80204098 00200FF8  7C 64 1B 78 */	mr r4, r3
/* 8020409C 00200FFC  7F A3 EB 78 */	mr r3, r29
/* 802040A0 00201000  4B FA 4A F9 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 802040A4 00201004  7F A3 EB 78 */	mr r3, r29
/* 802040A8 00201008  7F 44 D3 78 */	mr r4, r26
/* 802040AC 0020100C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802040B0 00201010  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802040B4 00201014  7D 89 03 A6 */	mtctr r12
/* 802040B8 00201018  4E 80 04 21 */	bctrl
/* 802040BC 0020101C  7C 7F 1B 78 */	mr r31, r3
/* 802040C0 00201020  7F 63 DB 78 */	mr r3, r27
/* 802040C4 00201024  81 9B 00 00 */	lwz r12, 0(r27)
/* 802040C8 00201028  7F 44 D3 78 */	mr r4, r26
/* 802040CC 0020102C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802040D0 00201030  7D 89 03 A6 */	mtctr r12
/* 802040D4 00201034  4E 80 04 21 */	bctrl
/* 802040D8 00201038  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802040DC 0020103C  38 80 00 00 */	li r4, 0
/* 802040E0 00201040  D0 03 00 00 */	stfs f0, 0(r3)
/* 802040E4 00201044  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802040E8 00201048  D0 03 00 04 */	stfs f0, 4(r3)
/* 802040EC 0020104C  88 19 05 BC */	lbz r0, 0x5bc(r25)
/* 802040F0 00201050  28 00 00 00 */	cmplwi r0, 0
/* 802040F4 00201054  41 82 00 14 */	beq lbl_80204108
/* 802040F8 00201058  80 19 05 6C */	lwz r0, 0x56c(r25)
/* 802040FC 0020105C  2C 00 00 03 */	cmpwi r0, 3
/* 80204100 00201060  41 82 00 08 */	beq lbl_80204108
/* 80204104 00201064  38 80 00 01 */	li r4, 1
lbl_80204108:
/* 80204108 00201068  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8020410C 0020106C  41 82 00 38 */	beq lbl_80204144
/* 80204110 00201070  80 AD 93 78 */	lwz r5, lbl_805A7F38@sda21(r13)
/* 80204114 00201074  38 60 00 00 */	li r3, 0
/* 80204118 00201078  38 80 00 01 */	li r4, 1
/* 8020411C 0020107C  48 18 5D D9 */	bl __shl2i
/* 80204120 00201080  38 A0 00 00 */	li r5, 0
/* 80204124 00201084  38 00 00 01 */	li r0, 1
/* 80204128 00201088  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8020412C 0020108C  3A E1 00 38 */	addi r23, r1, 0x38
/* 80204130 00201090  90 61 00 38 */	stw r3, 0x38(r1)
/* 80204134 00201094  90 A1 00 44 */	stw r5, 0x44(r1)
/* 80204138 00201098  90 A1 00 40 */	stw r5, 0x40(r1)
/* 8020413C 0020109C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80204140 002010A0  48 00 00 34 */	b lbl_80204174
lbl_80204144:
/* 80204144 002010A4  80 AD 93 7C */	lwz r5, lbl_805A7F3C@sda21(r13)
/* 80204148 002010A8  38 60 00 00 */	li r3, 0
/* 8020414C 002010AC  38 80 00 01 */	li r4, 1
/* 80204150 002010B0  48 18 5D A5 */	bl __shl2i
/* 80204154 002010B4  38 A0 00 00 */	li r5, 0
/* 80204158 002010B8  38 00 00 01 */	li r0, 1
/* 8020415C 002010BC  90 81 00 24 */	stw r4, 0x24(r1)
/* 80204160 002010C0  3A E1 00 20 */	addi r23, r1, 0x20
/* 80204164 002010C4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80204168 002010C8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8020416C 002010CC  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80204170 002010D0  90 01 00 30 */	stw r0, 0x30(r1)
lbl_80204174:
/* 80204174 002010D4  7F A3 EB 78 */	mr r3, r29
/* 80204178 002010D8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8020417C 002010DC  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80204180 002010E0  7D 89 03 A6 */	mtctr r12
/* 80204184 002010E4  4E 80 04 21 */	bctrl
/* 80204188 002010E8  7C 64 1B 78 */	mr r4, r3
/* 8020418C 002010EC  7F 43 D3 78 */	mr r3, r26
/* 80204190 002010F0  7E E6 BB 78 */	mr r6, r23
/* 80204194 002010F4  38 BD 00 34 */	addi r5, r29, 0x34
/* 80204198 002010F8  4B F7 F2 09 */	bl DetectStaticCollisionBoolean__14CGameCollisionFRC13CStateManagerRC19CCollisionPrimitiveRC12CTransform4fRC15CMaterialFilter
/* 8020419C 002010FC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802041A0 00201100  C0 02 B0 A0 */	lfs f0, lbl_805ACDC0@sda21(r2)
/* 802041A4 00201104  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802041A8 00201108  4C 40 13 82 */	cror 2, 0, 2
/* 802041AC 0020110C  41 82 00 18 */	beq lbl_802041C4
/* 802041B0 00201110  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802041B4 00201114  41 82 00 68 */	beq lbl_8020421C
/* 802041B8 00201118  88 19 05 A4 */	lbz r0, 0x5a4(r25)
/* 802041BC 0020111C  28 00 00 00 */	cmplwi r0, 0
/* 802041C0 00201120  41 82 00 5C */	beq lbl_8020421C
lbl_802041C4:
/* 802041C4 00201124  7F 63 DB 78 */	mr r3, r27
/* 802041C8 00201128  38 80 00 00 */	li r4, 0
/* 802041CC 0020112C  81 9B 00 00 */	lwz r12, 0(r27)
/* 802041D0 00201130  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802041D4 00201134  7D 89 03 A6 */	mtctr r12
/* 802041D8 00201138  4E 80 04 21 */	bctrl
/* 802041DC 0020113C  7F A3 EB 78 */	mr r3, r29
/* 802041E0 00201140  38 80 00 00 */	li r4, 0
/* 802041E4 00201144  81 9D 00 00 */	lwz r12, 0(r29)
/* 802041E8 00201148  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802041EC 0020114C  7D 89 03 A6 */	mtctr r12
/* 802041F0 00201150  4E 80 04 21 */	bctrl
/* 802041F4 00201154  80 79 05 A0 */	lwz r3, 0x5a0(r25)
/* 802041F8 00201158  C0 02 B0 A0 */	lfs f0, lbl_805ACDC0@sda21(r2)
/* 802041FC 0020115C  38 03 00 01 */	addi r0, r3, 1
/* 80204200 00201160  90 19 05 A0 */	stw r0, 0x5a0(r25)
/* 80204204 00201164  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80204208 00201168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020420C 0020116C  4C 40 13 82 */	cror 2, 0, 2
/* 80204210 00201170  40 82 00 0C */	bne lbl_8020421C
/* 80204214 00201174  38 00 00 01 */	li r0, 1
/* 80204218 00201178  98 19 05 DD */	stb r0, 0x5dd(r25)
lbl_8020421C:
/* 8020421C 0020117C  3B 9C 00 01 */	addi r28, r28, 1
/* 80204220 00201180  3B 18 00 02 */	addi r24, r24, 2
lbl_80204224:
/* 80204224 00201184  7C 1C F0 40 */	cmplw r28, r30
/* 80204228 00201188  41 80 FD F4 */	blt lbl_8020401C
/* 8020422C 0020118C  BA E1 00 5C */	lmw r23, 0x5c(r1)
/* 80204230 00201190  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80204234 00201194  7C 08 03 A6 */	mtlr r0
/* 80204238 00201198  38 21 00 80 */	addi r1, r1, 0x80
/* 8020423C 0020119C  4E 80 00 20 */	blr

.global UpdateDestroyableRockPositions__22CThardusRockProjectileFR13CStateManager
UpdateDestroyableRockPositions__22CThardusRockProjectileFR13CStateManager:
/* 80204240 002011A0  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80204244 002011A4  7C 08 02 A6 */	mflr r0
/* 80204248 002011A8  90 01 01 54 */	stw r0, 0x154(r1)
/* 8020424C 002011AC  BE E1 01 2C */	stmw r23, 0x12c(r1)
/* 80204250 002011B0  7C 7B 1B 78 */	mr r27, r3
/* 80204254 002011B4  7C 9C 23 78 */	mr r28, r4
/* 80204258 002011B8  3B 01 00 2C */	addi r24, r1, 0x2c
/* 8020425C 002011BC  3B 3B 00 34 */	addi r25, r27, 0x34
/* 80204260 002011C0  3B A0 00 00 */	li r29, 0
/* 80204264 002011C4  3B 40 00 00 */	li r26, 0
/* 80204268 002011C8  3B E2 B0 78 */	addi r31, r2, lbl_805ACD98@sda21
/* 8020426C 002011CC  80 63 00 64 */	lwz r3, 0x64(r3)
/* 80204270 002011D0  83 DB 05 90 */	lwz r30, 0x590(r27)
/* 80204274 002011D4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80204278 002011D8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8020427C 002011DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80204280 002011E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80204284 002011E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80204288 002011E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8020428C 002011EC  48 00 00 E4 */	b lbl_80204370
lbl_80204290:
/* 80204290 002011F0  80 9F 00 00 */	lwz r4, 0(r31)
/* 80204294 002011F4  38 61 00 1C */	addi r3, r1, 0x1c
/* 80204298 002011F8  38 C1 00 08 */	addi r6, r1, 8
/* 8020429C 002011FC  38 A0 FF FF */	li r5, -1
/* 802042A0 00201200  48 13 9E F5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 802042A4 00201204  80 9B 00 64 */	lwz r4, 0x64(r27)
/* 802042A8 00201208  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802042AC 0020120C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802042B0 00201210  38 C0 00 00 */	li r6, 0
/* 802042B4 00201214  80 84 00 10 */	lwz r4, 0x10(r4)
/* 802042B8 00201218  4B E2 80 C9 */	bl "GetLocatorTransform__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>PC13CCharAnimTime"
/* 802042BC 0020121C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 802042C0 00201220  38 81 00 C8 */	addi r4, r1, 0xc8
/* 802042C4 00201224  48 10 E8 B1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802042C8 00201228  38 61 00 1C */	addi r3, r1, 0x1c
/* 802042CC 0020122C  48 13 98 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802042D0 00201230  80 BB 05 98 */	lwz r5, 0x598(r27)
/* 802042D4 00201234  7F 83 E3 78 */	mr r3, r28
/* 802042D8 00201238  38 81 00 0C */	addi r4, r1, 0xc
/* 802042DC 0020123C  7C 05 D2 2E */	lhzx r0, r5, r26
/* 802042E0 00201240  B0 01 00 10 */	sth r0, 0x10(r1)
/* 802042E4 00201244  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802042E8 00201248  4B E4 82 8D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802042EC 0020124C  7C 64 1B 78 */	mr r4, r3
/* 802042F0 00201250  38 61 00 14 */	addi r3, r1, 0x14
/* 802042F4 00201254  4B EA B9 9D */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 802042F8 00201258  82 E3 00 04 */	lwz r23, 4(r3)
/* 802042FC 0020125C  28 17 00 00 */	cmplwi r23, 0
/* 80204300 00201260  41 82 00 64 */	beq lbl_80204364
/* 80204304 00201264  7F 04 C3 78 */	mr r4, r24
/* 80204308 00201268  38 61 00 38 */	addi r3, r1, 0x38
/* 8020430C 0020126C  48 10 EE B9 */	bl Scale__12CTransform4fFRC9CVector3f
/* 80204310 00201270  38 61 00 68 */	addi r3, r1, 0x68
/* 80204314 00201274  38 81 00 38 */	addi r4, r1, 0x38
/* 80204318 00201278  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 8020431C 0020127C  48 10 E6 35 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80204320 00201280  7F 24 CB 78 */	mr r4, r25
/* 80204324 00201284  38 61 00 98 */	addi r3, r1, 0x98
/* 80204328 00201288  38 A1 00 68 */	addi r5, r1, 0x68
/* 8020432C 0020128C  48 10 E6 25 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80204330 00201290  38 77 00 34 */	addi r3, r23, 0x34
/* 80204334 00201294  38 81 00 98 */	addi r4, r1, 0x98
/* 80204338 00201298  48 10 E8 09 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8020433C 0020129C  88 17 00 E4 */	lbz r0, 0xe4(r23)
/* 80204340 002012A0  38 60 00 01 */	li r3, 1
/* 80204344 002012A4  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80204348 002012A8  98 17 00 E4 */	stb r0, 0xe4(r23)
/* 8020434C 002012AC  88 17 00 E4 */	lbz r0, 0xe4(r23)
/* 80204350 002012B0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80204354 002012B4  98 17 00 E4 */	stb r0, 0xe4(r23)
/* 80204358 002012B8  88 17 00 E4 */	lbz r0, 0xe4(r23)
/* 8020435C 002012BC  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80204360 002012C0  98 17 00 E4 */	stb r0, 0xe4(r23)
lbl_80204364:
/* 80204364 002012C4  3B FF 00 08 */	addi r31, r31, 8
/* 80204368 002012C8  3B BD 00 01 */	addi r29, r29, 1
/* 8020436C 002012CC  3B 5A 00 02 */	addi r26, r26, 2
lbl_80204370:
/* 80204370 002012D0  7C 1D F0 40 */	cmplw r29, r30
/* 80204374 002012D4  41 80 FF 1C */	blt lbl_80204290
/* 80204378 002012D8  BA E1 01 2C */	lmw r23, 0x12c(r1)
/* 8020437C 002012DC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80204380 002012E0  7C 08 03 A6 */	mtlr r0
/* 80204384 002012E4  38 21 01 50 */	addi r1, r1, 0x150
/* 80204388 002012E8  4E 80 00 20 */	blr

.global sub_8020438c
sub_8020438c:
/* 8020438C 002012EC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80204390 002012F0  7C 08 02 A6 */	mflr r0
/* 80204394 002012F4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80204398 002012F8  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 8020439C 002012FC  7C B9 2B 78 */	mr r25, r5
/* 802043A0 00201300  7C DA 33 78 */	mr r26, r6
/* 802043A4 00201304  7C 9E 23 78 */	mr r30, r4
/* 802043A8 00201308  3B A1 00 60 */	addi r29, r1, 0x60
/* 802043AC 0020130C  3B 81 00 A4 */	addi r28, r1, 0xa4
/* 802043B0 00201310  3B 60 00 00 */	li r27, 0
/* 802043B4 00201314  80 63 00 64 */	lwz r3, 0x64(r3)
/* 802043B8 00201318  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 802043BC 0020131C  48 00 01 20 */	b lbl_802044DC
lbl_802043C0:
/* 802043C0 00201320  80 9E 00 00 */	lwz r4, 0(r30)
/* 802043C4 00201324  38 61 00 24 */	addi r3, r1, 0x24
/* 802043C8 00201328  4B E0 08 F1 */	bl string_l__4rstlFPCc
/* 802043CC 0020132C  7F E4 FB 78 */	mr r4, r31
/* 802043D0 00201330  38 61 00 0C */	addi r3, r1, 0xc
/* 802043D4 00201334  38 A1 00 24 */	addi r5, r1, 0x24
/* 802043D8 00201338  4B E2 A4 61 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802043DC 0020133C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802043E0 00201340  38 61 00 24 */	addi r3, r1, 0x24
/* 802043E4 00201344  98 01 00 10 */	stb r0, 0x10(r1)
/* 802043E8 00201348  48 13 96 F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802043EC 0020134C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802043F0 00201350  28 00 00 FF */	cmplwi r0, 0xff
/* 802043F4 00201354  41 82 00 E0 */	beq lbl_802044D4
/* 802043F8 00201358  80 9E 00 00 */	lwz r4, 0(r30)
/* 802043FC 0020135C  38 61 00 14 */	addi r3, r1, 0x14
/* 80204400 00201360  4B E0 08 B9 */	bl string_l__4rstlFPCc
/* 80204404 00201364  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80204408 00201368  38 61 00 34 */	addi r3, r1, 0x34
/* 8020440C 0020136C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80204410 00201370  38 81 00 08 */	addi r4, r1, 8
/* 80204414 00201374  98 01 00 08 */	stb r0, 8(r1)
/* 80204418 00201378  38 A1 00 14 */	addi r5, r1, 0x14
/* 8020441C 0020137C  C0 42 B0 A4 */	lfs f2, lbl_805ACDC4@sda21(r2)
/* 80204420 00201380  4B FA 43 ED */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 80204424 00201384  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 80204428 00201388  7F 83 E3 78 */	mr r3, r28
/* 8020442C 0020138C  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 80204430 00201390  7F A4 EB 78 */	mr r4, r29
/* 80204434 00201394  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 80204438 00201398  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 8020443C 0020139C  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 80204440 002013A0  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 80204444 002013A4  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 80204448 002013A8  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 8020444C 002013AC  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 80204450 002013B0  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 80204454 002013B4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80204458 002013B8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8020445C 002013BC  90 E1 00 78 */	stw r7, 0x78(r1)
/* 80204460 002013C0  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 80204464 002013C4  98 A1 00 80 */	stb r5, 0x80(r1)
/* 80204468 002013C8  98 01 00 81 */	stb r0, 0x81(r1)
/* 8020446C 002013CC  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 80204470 002013D0  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 80204474 002013D4  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 80204478 002013D8  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8020447C 002013DC  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 80204480 002013E0  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 80204484 002013E4  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80204488 002013E8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8020448C 002013EC  48 13 9C D5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80204490 002013F0  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 80204494 002013F4  28 1D 00 00 */	cmplwi r29, 0
/* 80204498 002013F8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8020449C 002013FC  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 802044A0 00201400  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 802044A4 00201404  41 82 00 0C */	beq lbl_802044B0
/* 802044A8 00201408  7F A3 EB 78 */	mr r3, r29
/* 802044AC 0020140C  48 13 96 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802044B0:
/* 802044B0 00201410  38 61 00 14 */	addi r3, r1, 0x14
/* 802044B4 00201414  48 13 96 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802044B8 00201418  7F 43 D3 78 */	mr r3, r26
/* 802044BC 0020141C  38 81 00 78 */	addi r4, r1, 0x78
/* 802044C0 00201420  4B F5 1D 71 */	bl sub_80156230
/* 802044C4 00201424  28 1C 00 00 */	cmplwi r28, 0
/* 802044C8 00201428  41 82 00 0C */	beq lbl_802044D4
/* 802044CC 0020142C  7F 83 E3 78 */	mr r3, r28
/* 802044D0 00201430  48 13 96 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802044D4:
/* 802044D4 00201434  3B DE 00 08 */	addi r30, r30, 8
/* 802044D8 00201438  3B 7B 00 01 */	addi r27, r27, 1
lbl_802044DC:
/* 802044DC 0020143C  7C 1B C8 00 */	cmpw r27, r25
/* 802044E0 00201440  41 80 FE E0 */	blt lbl_802043C0
/* 802044E4 00201444  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 802044E8 00201448  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802044EC 0020144C  7C 08 03 A6 */	mtlr r0
/* 802044F0 00201450  38 21 00 E0 */	addi r1, r1, 0xe0
/* 802044F4 00201454  4E 80 00 20 */	blr

.global "SetMaterialProperties__22CThardusRockProjectileFRQ24rstl36single_ptr<22CCollisionActorManager>R13CStateManager"
"SetMaterialProperties__22CThardusRockProjectileFRQ24rstl36single_ptr<22CCollisionActorManager>R13CStateManager":
/* 802044F8 00201458  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802044FC 0020145C  7C 08 02 A6 */	mflr r0
/* 80204500 00201460  90 01 00 64 */	stw r0, 0x64(r1)
/* 80204504 00201464  BE A1 00 34 */	stmw r21, 0x34(r1)
/* 80204508 00201468  7C 7B 1B 78 */	mr r27, r3
/* 8020450C 0020146C  7C 9C 23 78 */	mr r28, r4
/* 80204510 00201470  7C BD 2B 78 */	mr r29, r5
/* 80204514 00201474  3B E0 00 00 */	li r31, 0
/* 80204518 00201478  48 00 00 B4 */	b lbl_802045CC
lbl_8020451C:
/* 8020451C 0020147C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80204520 00201480  7F E4 FB 78 */	mr r4, r31
/* 80204524 00201484  4B FA 2D 15 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80204528 00201488  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8020452C 0020148C  7F A3 EB 78 */	mr r3, r29
/* 80204530 00201490  38 81 00 08 */	addi r4, r1, 8
/* 80204534 00201494  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80204538 00201498  B0 01 00 08 */	sth r0, 8(r1)
/* 8020453C 0020149C  4B E4 80 39 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80204540 002014A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80204544 002014A4  41 82 00 84 */	beq lbl_802045C8
/* 80204548 002014A8  7F A5 EB 78 */	mr r5, r29
/* 8020454C 002014AC  38 80 00 1B */	li r4, 0x1b
/* 80204550 002014B0  4B E4 FE 01 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80204554 002014B4  7F 63 DB 78 */	mr r3, r27
/* 80204558 002014B8  4B E4 F3 65 */	bl GetMaterialFilter__6CActorCFv
/* 8020455C 002014BC  83 43 00 00 */	lwz r26, 0(r3)
/* 80204560 002014C0  83 23 00 04 */	lwz r25, 4(r3)
/* 80204564 002014C4  7F 63 DB 78 */	mr r3, r27
/* 80204568 002014C8  4B E4 F3 55 */	bl GetMaterialFilter__6CActorCFv
/* 8020456C 002014CC  83 03 00 08 */	lwz r24, 8(r3)
/* 80204570 002014D0  82 E3 00 0C */	lwz r23, 0xc(r3)
/* 80204574 002014D4  7F C3 F3 78 */	mr r3, r30
/* 80204578 002014D8  4B E4 F3 45 */	bl GetMaterialFilter__6CActorCFv
/* 8020457C 002014DC  82 C3 00 00 */	lwz r22, 0(r3)
/* 80204580 002014E0  82 A3 00 04 */	lwz r21, 4(r3)
/* 80204584 002014E4  7F C3 F3 78 */	mr r3, r30
/* 80204588 002014E8  4B E4 F3 35 */	bl GetMaterialFilter__6CActorCFv
/* 8020458C 002014EC  80 03 00 08 */	lwz r0, 8(r3)
/* 80204590 002014F0  7F 24 AB 78 */	or r4, r25, r21
/* 80204594 002014F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80204598 002014F8  7F 45 B3 78 */	or r5, r26, r22
/* 8020459C 002014FC  7F 06 03 78 */	or r6, r24, r0
/* 802045A0 00201500  38 00 00 03 */	li r0, 3
/* 802045A4 00201504  7E E7 1B 78 */	or r7, r23, r3
/* 802045A8 00201508  90 81 00 14 */	stw r4, 0x14(r1)
/* 802045AC 0020150C  7F C3 F3 78 */	mr r3, r30
/* 802045B0 00201510  38 81 00 10 */	addi r4, r1, 0x10
/* 802045B4 00201514  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802045B8 00201518  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 802045BC 0020151C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802045C0 00201520  90 01 00 20 */	stw r0, 0x20(r1)
/* 802045C4 00201524  4B E4 F2 DD */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
lbl_802045C8:
/* 802045C8 00201528  3B FF 00 01 */	addi r31, r31, 1
lbl_802045CC:
/* 802045CC 0020152C  80 7C 00 00 */	lwz r3, 0(r28)
/* 802045D0 00201530  4B FA 2C 79 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 802045D4 00201534  7C 1F 18 40 */	cmplw r31, r3
/* 802045D8 00201538  41 80 FF 44 */	blt lbl_8020451C
/* 802045DC 0020153C  BA A1 00 34 */	lmw r21, 0x34(r1)
/* 802045E0 00201540  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802045E4 00201544  7C 08 03 A6 */	mtlr r0
/* 802045E8 00201548  38 21 00 60 */	addi r1, r1, 0x60
/* 802045EC 0020154C  4E 80 00 20 */	blr

.global InitializeCollisionManager__22CThardusRockProjectileFR13CStateManager
InitializeCollisionManager__22CThardusRockProjectileFR13CStateManager:
/* 802045F0 00201550  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802045F4 00201554  7C 08 02 A6 */	mflr r0
/* 802045F8 00201558  90 01 00 64 */	stw r0, 0x64(r1)
/* 802045FC 0020155C  38 00 00 00 */	li r0, 0
/* 80204600 00201560  BF 21 00 44 */	stmw r25, 0x44(r1)
/* 80204604 00201564  7C 7E 1B 78 */	mr r30, r3
/* 80204608 00201568  7C 9F 23 78 */	mr r31, r4
/* 8020460C 0020156C  38 61 00 30 */	addi r3, r1, 0x30
/* 80204610 00201570  38 80 00 01 */	li r4, 1
/* 80204614 00201574  90 01 00 34 */	stw r0, 0x34(r1)
/* 80204618 00201578  90 01 00 38 */	stw r0, 0x38(r1)
/* 8020461C 0020157C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80204620 00201580  4B F5 21 99 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 80204624 00201584  7F C3 F3 78 */	mr r3, r30
/* 80204628 00201588  38 C1 00 30 */	addi r6, r1, 0x30
/* 8020462C 0020158C  38 82 B0 78 */	addi r4, r2, lbl_805ACD98@sda21
/* 80204630 00201590  38 A0 00 01 */	li r5, 1
/* 80204634 00201594  4B FF FD 59 */	bl sub_8020438c
/* 80204638 00201598  3C 80 80 3D */	lis r4, lbl_803D2590@ha
/* 8020463C 0020159C  38 60 00 18 */	li r3, 0x18
/* 80204640 002015A0  38 84 25 90 */	addi r4, r4, lbl_803D2590@l
/* 80204644 002015A4  38 A0 00 00 */	li r5, 0
/* 80204648 002015A8  38 84 00 34 */	addi r4, r4, 0x34
/* 8020464C 002015AC  48 11 12 21 */	bl __nw__FUlPCcPCc
/* 80204650 002015B0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80204654 002015B4  41 82 00 38 */	beq lbl_8020468C
/* 80204658 002015B8  81 3E 00 04 */	lwz r9, 4(r30)
/* 8020465C 002015BC  7F E4 FB 78 */	mr r4, r31
/* 80204660 002015C0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80204664 002015C4  38 C1 00 24 */	addi r6, r1, 0x24
/* 80204668 002015C8  91 21 00 24 */	stw r9, 0x24(r1)
/* 8020466C 002015CC  38 E1 00 30 */	addi r7, r1, 0x30
/* 80204670 002015D0  39 00 00 01 */	li r8, 1
/* 80204674 002015D4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80204678 002015D8  91 21 00 20 */	stw r9, 0x20(r1)
/* 8020467C 002015DC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80204680 002015E0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80204684 002015E4  4B FA 32 AD */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 80204688 002015E8  7C 7B 1B 78 */	mr r27, r3
lbl_8020468C:
/* 8020468C 002015EC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80204690 002015F0  38 80 00 01 */	li r4, 1
/* 80204694 002015F4  4B FA 32 49 */	bl sub_801a78dc
/* 80204698 002015F8  93 7E 05 78 */	stw r27, 0x578(r30)
/* 8020469C 002015FC  7F C3 F3 78 */	mr r3, r30
/* 802046A0 00201600  7F E5 FB 78 */	mr r5, r31
/* 802046A4 00201604  38 9E 05 78 */	addi r4, r30, 0x578
/* 802046A8 00201608  4B FF FE 51 */	bl "SetMaterialProperties__22CThardusRockProjectileFRQ24rstl36single_ptr<22CCollisionActorManager>R13CStateManager"
/* 802046AC 0020160C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 802046B0 00201610  4B FA 2B 99 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 802046B4 00201614  7C 7B 1B 78 */	mr r27, r3
/* 802046B8 00201618  3B 20 00 00 */	li r25, 0
/* 802046BC 0020161C  3B A0 00 00 */	li r29, 0
/* 802046C0 00201620  48 00 00 D4 */	b lbl_80204794
lbl_802046C4:
/* 802046C4 00201624  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 802046C8 00201628  7F 24 CB 78 */	mr r4, r25
/* 802046CC 0020162C  4B FA 2B 6D */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 802046D0 00201630  80 BE 05 98 */	lwz r5, 0x598(r30)
/* 802046D4 00201634  38 81 00 0C */	addi r4, r1, 0xc
/* 802046D8 00201638  A0 C3 00 3C */	lhz r6, 0x3c(r3)
/* 802046DC 0020163C  7F E3 FB 78 */	mr r3, r31
/* 802046E0 00201640  7C 05 EA 2E */	lhzx r0, r5, r29
/* 802046E4 00201644  B0 C1 00 1C */	sth r6, 0x1c(r1)
/* 802046E8 00201648  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802046EC 0020164C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802046F0 00201650  4B E4 7E B5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 802046F4 00201654  7C 7C 1B 79 */	or. r28, r3, r3
/* 802046F8 00201658  41 82 00 94 */	beq lbl_8020478C
/* 802046FC 0020165C  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 80204700 00201660  7F E3 FB 78 */	mr r3, r31
/* 80204704 00201664  38 81 00 08 */	addi r4, r1, 8
/* 80204708 00201668  B0 01 00 08 */	sth r0, 8(r1)
/* 8020470C 0020166C  4B E4 7E 69 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80204710 00201670  7C 64 1B 78 */	mr r4, r3
/* 80204714 00201674  38 61 00 28 */	addi r3, r1, 0x28
/* 80204718 00201678  4B EA AC 35 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8020471C 0020167C  83 43 00 04 */	lwz r26, 4(r3)
/* 80204720 00201680  28 1A 00 00 */	cmplwi r26, 0
/* 80204724 00201684  41 82 00 68 */	beq lbl_8020478C
/* 80204728 00201688  7F 83 E3 78 */	mr r3, r28
/* 8020472C 0020168C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80204730 00201690  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80204734 00201694  7D 89 03 A6 */	mtctr r12
/* 80204738 00201698  4E 80 04 21 */	bctrl
/* 8020473C 0020169C  7C 64 1B 78 */	mr r4, r3
/* 80204740 002016A0  7F 43 D3 78 */	mr r3, r26
/* 80204744 002016A4  4B FA 44 55 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 80204748 002016A8  7F 83 E3 78 */	mr r3, r28
/* 8020474C 002016AC  7F E4 FB 78 */	mr r4, r31
/* 80204750 002016B0  81 9C 00 00 */	lwz r12, 0(r28)
/* 80204754 002016B4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80204758 002016B8  7D 89 03 A6 */	mtctr r12
/* 8020475C 002016BC  4E 80 04 21 */	bctrl
/* 80204760 002016C0  7C 7C 1B 78 */	mr r28, r3
/* 80204764 002016C4  7F 43 D3 78 */	mr r3, r26
/* 80204768 002016C8  81 9A 00 00 */	lwz r12, 0(r26)
/* 8020476C 002016CC  7F E4 FB 78 */	mr r4, r31
/* 80204770 002016D0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80204774 002016D4  7D 89 03 A6 */	mtctr r12
/* 80204778 002016D8  4E 80 04 21 */	bctrl
/* 8020477C 002016DC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80204780 002016E0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80204784 002016E4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80204788 002016E8  D0 03 00 04 */	stfs f0, 4(r3)
lbl_8020478C:
/* 8020478C 002016EC  3B 39 00 01 */	addi r25, r25, 1
/* 80204790 002016F0  3B BD 00 02 */	addi r29, r29, 2
lbl_80204794:
/* 80204794 002016F4  7C 19 D8 40 */	cmplw r25, r27
/* 80204798 002016F8  41 80 FF 2C */	blt lbl_802046C4
/* 8020479C 002016FC  38 61 00 30 */	addi r3, r1, 0x30
/* 802047A0 00201700  38 80 FF FF */	li r4, -1
/* 802047A4 00201704  4B F5 1B 89 */	bl sub_8015632c
/* 802047A8 00201708  BB 21 00 44 */	lmw r25, 0x44(r1)
/* 802047AC 0020170C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802047B0 00201710  7C 08 03 A6 */	mtlr r0
/* 802047B4 00201714  38 21 00 60 */	addi r1, r1, 0x60
/* 802047B8 00201718  4E 80 00 20 */	blr

.global Delay__22CThardusRockProjectileFR13CStateManagerf
Delay__22CThardusRockProjectileFR13CStateManagerf:
/* 802047BC 0020171C  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 802047C0 00201720  C0 03 05 A8 */	lfs f0, 0x5a8(r3)
/* 802047C4 00201724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802047C8 00201728  7C 00 00 26 */	mfcr r0
/* 802047CC 0020172C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 802047D0 00201730  4E 80 00 20 */	blr

.global sub_802047d4
sub_802047d4:
/* 802047D4 00201734  80 03 05 74 */	lwz r0, 0x574(r3)
/* 802047D8 00201738  20 00 00 03 */	subfic r0, r0, 3
/* 802047DC 0020173C  7C 00 00 34 */	cntlzw r0, r0
/* 802047E0 00201740  54 03 D9 7E */	srwi r3, r0, 5
/* 802047E4 00201744  4E 80 00 20 */	blr

.global HitSomething__22CThardusRockProjectileFR13CStateManagerf
HitSomething__22CThardusRockProjectileFR13CStateManagerf:
/* 802047E8 00201748  88 63 05 72 */	lbz r3, 0x572(r3)
/* 802047EC 0020174C  4E 80 00 20 */	blr

.global ShouldAttack__22CThardusRockProjectileFR13CStateManagerf
ShouldAttack__22CThardusRockProjectileFR13CStateManagerf:
/* 802047F0 00201750  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 802047F4 00201754  C0 03 05 AC */	lfs f0, 0x5ac(r3)
/* 802047F8 00201758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802047FC 0020175C  40 81 00 20 */	ble lbl_8020481C
/* 80204800 00201760  80 03 05 6C */	lwz r0, 0x56c(r3)
/* 80204804 00201764  2C 00 00 03 */	cmpwi r0, 3
/* 80204808 00201768  41 82 00 14 */	beq lbl_8020481C
/* 8020480C 0020176C  38 00 00 02 */	li r0, 2
/* 80204810 00201770  90 03 05 6C */	stw r0, 0x56c(r3)
/* 80204814 00201774  38 60 00 01 */	li r3, 1
/* 80204818 00201778  4E 80 00 20 */	blr
lbl_8020481C:
/* 8020481C 0020177C  38 60 00 00 */	li r3, 0
/* 80204820 00201780  4E 80 00 20 */	blr

.global ShouldMove__22CThardusRockProjectileFR13CStateManagerf
ShouldMove__22CThardusRockProjectileFR13CStateManagerf:
/* 80204824 00201784  80 A3 05 6C */	lwz r5, 0x56c(r3)
/* 80204828 00201788  38 00 00 01 */	li r0, 1
/* 8020482C 0020178C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80204830 00201790  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 80204834 00201794  7C 00 28 10 */	subfc r0, r0, r5
/* 80204838 00201798  7C 64 19 14 */	adde r3, r4, r3
/* 8020483C 0020179C  4E 80 00 20 */	blr

.global Lurk__22CThardusRockProjectileFR13CStateManager9EStateMsgf
Lurk__22CThardusRockProjectileFR13CStateManager9EStateMsgf:
/* 80204840 002017A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80204844 002017A4  7C 08 02 A6 */	mflr r0
/* 80204848 002017A8  2C 05 00 01 */	cmpwi r5, 1
/* 8020484C 002017AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80204850 002017B0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80204854 002017B4  7C 7F 1B 78 */	mr r31, r3
/* 80204858 002017B8  41 82 00 10 */	beq lbl_80204868
/* 8020485C 002017BC  40 80 00 98 */	bge lbl_802048F4
/* 80204860 002017C0  48 00 00 94 */	b lbl_802048F4
/* 80204864 002017C4  48 00 00 90 */	b lbl_802048F4
lbl_80204868:
/* 80204868 002017C8  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 8020486C 002017CC  38 61 00 08 */	addi r3, r1, 8
/* 80204870 002017D0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80204874 002017D4  38 81 00 14 */	addi r4, r1, 0x14
/* 80204878 002017D8  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8020487C 002017DC  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 80204880 002017E0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80204884 002017E4  EC 81 00 28 */	fsubs f4, f1, f0
/* 80204888 002017E8  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 8020488C 002017EC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80204890 002017F0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80204894 002017F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80204898 002017F8  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8020489C 002017FC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802048A0 00201800  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802048A4 00201804  48 10 FF AD */	bl AsNormalized__9CVector3fCFv
/* 802048A8 00201808  3C 60 80 5A */	lis r3, skZero3f@ha
/* 802048AC 0020180C  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 802048B0 00201810  C0 61 00 08 */	lfs f3, 8(r1)
/* 802048B4 00201814  38 81 00 20 */	addi r4, r1, 0x20
/* 802048B8 00201818  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 802048BC 0020181C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 802048C0 00201820  C0 83 00 08 */	lfs f4, 8(r3)
/* 802048C4 00201824  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 802048C8 00201828  C0 02 B0 88 */	lfs f0, lbl_805ACDA8@sda21(r2)
/* 802048CC 0020182C  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 802048D0 00201830  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 802048D4 00201834  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 802048D8 00201838  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 802048DC 0020183C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 802048E0 00201840  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 802048E4 00201844  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802048E8 00201848  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 802048EC 0020184C  38 63 00 04 */	addi r3, r3, 4
/* 802048F0 00201850  4B F2 CE 29 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_802048F4:
/* 802048F4 00201854  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802048F8 00201858  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802048FC 0020185C  7C 08 03 A6 */	mtlr r0
/* 80204900 00201860  38 21 00 50 */	addi r1, r1, 0x50
/* 80204904 00201864  4E 80 00 20 */	blr

.global Dead__22CThardusRockProjectileFR13CStateManager9EStateMsgf
Dead__22CThardusRockProjectileFR13CStateManager9EStateMsgf:
/* 80204908 00201868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020490C 0020186C  7C 08 02 A6 */	mflr r0
/* 80204910 00201870  2C 05 00 00 */	cmpwi r5, 0
/* 80204914 00201874  90 01 00 24 */	stw r0, 0x24(r1)
/* 80204918 00201878  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020491C 0020187C  7C 9F 23 78 */	mr r31, r4
/* 80204920 00201880  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80204924 00201884  7C 7E 1B 78 */	mr r30, r3
/* 80204928 00201888  41 82 00 0C */	beq lbl_80204934
/* 8020492C 0020188C  41 80 00 40 */	blt lbl_8020496C
/* 80204930 00201890  48 00 00 3C */	b lbl_8020496C
lbl_80204934:
/* 80204934 00201894  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80204938 00201898  7F E3 FB 78 */	mr r3, r31
/* 8020493C 0020189C  38 81 00 0C */	addi r4, r1, 0xc
/* 80204940 002018A0  B0 01 00 08 */	sth r0, 8(r1)
/* 80204944 002018A4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80204948 002018A8  4B E4 79 25 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8020494C 002018AC  7F C3 F3 78 */	mr r3, r30
/* 80204950 002018B0  7F E5 FB 78 */	mr r5, r31
/* 80204954 002018B4  38 80 00 13 */	li r4, 0x13
/* 80204958 002018B8  38 C0 FF FF */	li r6, -1
/* 8020495C 002018BC  4B E4 C7 65 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80204960 002018C0  7F C3 F3 78 */	mr r3, r30
/* 80204964 002018C4  7F E4 FB 78 */	mr r4, r31
/* 80204968 002018C8  4B E7 66 71 */	bl GenerateDeathExplosion__10CPatternedFR13CStateManager
lbl_8020496C:
/* 8020496C 002018CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80204970 002018D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80204974 002018D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80204978 002018D8  7C 08 03 A6 */	mtlr r0
/* 8020497C 002018DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80204980 002018E0  4E 80 00 20 */	blr

.global LoopedAttack__22CThardusRockProjectileFR13CStateManager9EStateMsgf
LoopedAttack__22CThardusRockProjectileFR13CStateManager9EStateMsgf:
/* 80204984 002018E4  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80204988 002018E8  7C 08 02 A6 */	mflr r0
/* 8020498C 002018EC  90 01 01 54 */	stw r0, 0x154(r1)
/* 80204990 002018F0  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80204994 002018F4  F3 E1 01 48 */	psq_st f31, 328(r1), 0, qr0
/* 80204998 002018F8  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 8020499C 002018FC  F3 C1 01 38 */	psq_st f30, 312(r1), 0, qr0
/* 802049A0 00201900  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 802049A4 00201904  F3 A1 01 28 */	psq_st f29, 296(r1), 0, qr0
/* 802049A8 00201908  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 802049AC 0020190C  F3 81 01 18 */	psq_st f28, 280(r1), 0, qr0
/* 802049B0 00201910  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 802049B4 00201914  93 C1 01 08 */	stw r30, 0x108(r1)
/* 802049B8 00201918  2C 05 00 01 */	cmpwi r5, 1
/* 802049BC 0020191C  7C 7F 1B 78 */	mr r31, r3
/* 802049C0 00201920  7C 9E 23 78 */	mr r30, r4
/* 802049C4 00201924  41 82 00 24 */	beq lbl_802049E8
/* 802049C8 00201928  40 80 02 64 */	bge lbl_80204C2C
/* 802049CC 0020192C  2C 05 00 00 */	cmpwi r5, 0
/* 802049D0 00201930  40 80 00 0C */	bge lbl_802049DC
/* 802049D4 00201934  48 00 02 58 */	b lbl_80204C2C
/* 802049D8 00201938  48 00 02 54 */	b lbl_80204C2C
lbl_802049DC:
/* 802049DC 0020193C  38 00 00 01 */	li r0, 1
/* 802049E0 00201940  98 1F 05 A4 */	stb r0, 0x5a4(r31)
/* 802049E4 00201944  48 00 02 48 */	b lbl_80204C2C
lbl_802049E8:
/* 802049E8 00201948  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 802049EC 0020194C  7F C5 F3 78 */	mr r5, r30
/* 802049F0 00201950  38 61 00 50 */	addi r3, r1, 0x50
/* 802049F4 00201954  C0 22 B0 A0 */	lfs f1, lbl_805ACDC0@sda21(r2)
/* 802049F8 00201958  81 84 00 00 */	lwz r12, 0(r4)
/* 802049FC 0020195C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80204A00 00201960  7D 89 03 A6 */	mtctr r12
/* 80204A04 00201964  4E 80 04 21 */	bctrl
/* 80204A08 00201968  C0 A1 00 50 */	lfs f5, 0x50(r1)
/* 80204A0C 0020196C  C0 81 00 54 */	lfs f4, 0x54(r1)
/* 80204A10 00201970  C0 61 00 58 */	lfs f3, 0x58(r1)
/* 80204A14 00201974  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 80204A18 00201978  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 80204A1C 0020197C  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80204A20 00201980  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80204A24 00201984  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80204A28 00201988  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80204A2C 0020198C  EC A5 10 28 */	fsubs f5, f5, f2
/* 80204A30 00201990  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80204A34 00201994  EC 24 08 28 */	fsubs f1, f4, f1
/* 80204A38 00201998  EC 43 00 28 */	fsubs f2, f3, f0
/* 80204A3C 0020199C  28 00 00 00 */	cmplwi r0, 0
/* 80204A40 002019A0  41 82 00 5C */	beq lbl_80204A9C
/* 80204A44 002019A4  EC 21 00 72 */	fmuls f1, f1, f1
/* 80204A48 002019A8  C0 1F 05 C0 */	lfs f0, 0x5c0(r31)
/* 80204A4C 002019AC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80204A50 002019B0  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 80204A54 002019B4  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80204A58 002019B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80204A5C 002019BC  40 81 00 40 */	ble lbl_80204A9C
/* 80204A60 002019C0  C0 22 B0 A0 */	lfs f1, lbl_805ACDC0@sda21(r2)
/* 80204A64 002019C4  7F E5 FB 78 */	mr r5, r31
/* 80204A68 002019C8  38 61 00 44 */	addi r3, r1, 0x44
/* 80204A6C 002019CC  38 9F 04 5C */	addi r4, r31, 0x45c
/* 80204A70 002019D0  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80204A74 002019D4  4B F3 A0 A9 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 80204A78 002019D8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80204A7C 002019DC  38 00 00 01 */	li r0, 1
/* 80204A80 002019E0  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80204A84 002019E4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80204A88 002019E8  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80204A8C 002019EC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80204A90 002019F0  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80204A94 002019F4  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 80204A98 002019F8  48 00 00 0C */	b lbl_80204AA4
lbl_80204A9C:
/* 80204A9C 002019FC  38 00 00 00 */	li r0, 0
/* 80204AA0 00201A00  98 1F 05 BC */	stb r0, 0x5bc(r31)
lbl_80204AA4:
/* 80204AA4 00201A04  38 C2 B0 78 */	addi r6, r2, lbl_805ACD98@sda21
/* 80204AA8 00201A08  80 AD 93 74 */	lwz r5, lbl_805A7F34@sda21(r13)
/* 80204AAC 00201A0C  C3 FF 05 B0 */	lfs f31, 0x5b0(r31)
/* 80204AB0 00201A10  38 60 00 00 */	li r3, 0
/* 80204AB4 00201A14  C3 DF 05 B4 */	lfs f30, 0x5b4(r31)
/* 80204AB8 00201A18  38 80 00 01 */	li r4, 1
/* 80204ABC 00201A1C  C3 BF 05 B8 */	lfs f29, 0x5b8(r31)
/* 80204AC0 00201A20  C3 86 00 04 */	lfs f28, 4(r6)
/* 80204AC4 00201A24  48 18 54 31 */	bl __shl2i
/* 80204AC8 00201A28  39 00 00 00 */	li r8, 0
/* 80204ACC 00201A2C  38 00 00 01 */	li r0, 1
/* 80204AD0 00201A30  90 81 00 8C */	stw r4, 0x8c(r1)
/* 80204AD4 00201A34  3C 80 80 5A */	lis r4, lbl_805A6700@ha
/* 80204AD8 00201A38  38 C4 67 00 */	addi r6, r4, lbl_805A6700@l
/* 80204ADC 00201A3C  C0 22 B0 A8 */	lfs f1, lbl_805ACDC8@sda21(r2)
/* 80204AE0 00201A40  90 61 00 88 */	stw r3, 0x88(r1)
/* 80204AE4 00201A44  7F C4 F3 78 */	mr r4, r30
/* 80204AE8 00201A48  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80204AEC 00201A4C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80204AF0 00201A50  91 01 00 94 */	stw r8, 0x94(r1)
/* 80204AF4 00201A54  38 E1 00 88 */	addi r7, r1, 0x88
/* 80204AF8 00201A58  91 01 00 90 */	stw r8, 0x90(r1)
/* 80204AFC 00201A5C  90 01 00 98 */	stw r0, 0x98(r1)
/* 80204B00 00201A60  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80204B04 00201A64  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80204B08 00201A68  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80204B0C 00201A6C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80204B10 00201A70  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80204B14 00201A74  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80204B18 00201A78  4B E4 84 81 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80204B1C 00201A7C  88 81 00 C0 */	lbz r4, 0xc0(r1)
/* 80204B20 00201A80  38 C1 00 D4 */	addi r6, r1, 0xd4
/* 80204B24 00201A84  C0 E1 00 A0 */	lfs f7, 0xa0(r1)
/* 80204B28 00201A88  C0 C1 00 A4 */	lfs f6, 0xa4(r1)
/* 80204B2C 00201A8C  28 04 00 00 */	cmplwi r4, 0
/* 80204B30 00201A90  C0 A1 00 A8 */	lfs f5, 0xa8(r1)
/* 80204B34 00201A94  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 80204B38 00201A98  C0 61 00 B0 */	lfs f3, 0xb0(r1)
/* 80204B3C 00201A9C  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 80204B40 00201AA0  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 80204B44 00201AA4  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80204B48 00201AA8  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 80204B4C 00201AAC  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 80204B50 00201AB0  D0 E1 00 D0 */	stfs f7, 0xd0(r1)
/* 80204B54 00201AB4  D0 C1 00 D4 */	stfs f6, 0xd4(r1)
/* 80204B58 00201AB8  D0 A1 00 D8 */	stfs f5, 0xd8(r1)
/* 80204B5C 00201ABC  D0 81 00 DC */	stfs f4, 0xdc(r1)
/* 80204B60 00201AC0  D0 61 00 E0 */	stfs f3, 0xe0(r1)
/* 80204B64 00201AC4  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 80204B68 00201AC8  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 80204B6C 00201ACC  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80204B70 00201AD0  98 81 00 F0 */	stb r4, 0xf0(r1)
/* 80204B74 00201AD4  90 61 00 FC */	stw r3, 0xfc(r1)
/* 80204B78 00201AD8  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80204B7C 00201ADC  41 82 00 70 */	beq lbl_80204BEC
/* 80204B80 00201AE0  C0 02 B0 9C */	lfs f0, lbl_805ACDBC@sda21(r2)
/* 80204B84 00201AE4  7F E5 FB 78 */	mr r5, r31
/* 80204B88 00201AE8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80204B8C 00201AEC  38 9F 04 5C */	addi r4, r31, 0x45c
/* 80204B90 00201AF0  EC 20 07 32 */	fmuls f1, f0, f28
/* 80204B94 00201AF4  4B F3 9D 5D */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 80204B98 00201AF8  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 80204B9C 00201AFC  38 61 00 20 */	addi r3, r1, 0x20
/* 80204BA0 00201B00  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80204BA4 00201B04  38 81 00 14 */	addi r4, r1, 0x14
/* 80204BA8 00201B08  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80204BAC 00201B0C  C0 3F 05 B8 */	lfs f1, 0x5b8(r31)
/* 80204BB0 00201B10  EC 63 00 2A */	fadds f3, f3, f0
/* 80204BB4 00201B14  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80204BB8 00201B18  EC 42 08 2A */	fadds f2, f2, f1
/* 80204BBC 00201B1C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80204BC0 00201B20  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80204BC4 00201B24  EC 01 00 2A */	fadds f0, f1, f0
/* 80204BC8 00201B28  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80204BCC 00201B2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80204BD0 00201B30  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80204BD4 00201B34  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80204BD8 00201B38  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80204BDC 00201B3C  48 10 FC 75 */	bl AsNormalized__9CVector3fCFv
/* 80204BE0 00201B40  C3 E1 00 20 */	lfs f31, 0x20(r1)
/* 80204BE4 00201B44  C3 C1 00 24 */	lfs f30, 0x24(r1)
/* 80204BE8 00201B48  C3 A1 00 28 */	lfs f29, 0x28(r1)
lbl_80204BEC:
/* 80204BEC 00201B4C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80204BF0 00201B50  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 80204BF4 00201B54  C0 02 B0 88 */	lfs f0, lbl_805ACDA8@sda21(r2)
/* 80204BF8 00201B58  38 81 00 68 */	addi r4, r1, 0x68
/* 80204BFC 00201B5C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80204C00 00201B60  C0 23 00 08 */	lfs f1, 8(r3)
/* 80204C04 00201B64  D3 E1 00 68 */	stfs f31, 0x68(r1)
/* 80204C08 00201B68  D3 C1 00 6C */	stfs f30, 0x6c(r1)
/* 80204C0C 00201B6C  D3 A1 00 70 */	stfs f29, 0x70(r1)
/* 80204C10 00201B70  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 80204C14 00201B74  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80204C18 00201B78  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80204C1C 00201B7C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80204C20 00201B80  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80204C24 00201B84  38 63 00 04 */	addi r3, r3, 4
/* 80204C28 00201B88  4B F2 CA F1 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80204C2C:
/* 80204C2C 00201B8C  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 80204C30 00201B90  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80204C34 00201B94  E3 C1 01 38 */	psq_l f30, 312(r1), 0, qr0
/* 80204C38 00201B98  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 80204C3C 00201B9C  E3 A1 01 28 */	psq_l f29, 296(r1), 0, qr0
/* 80204C40 00201BA0  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 80204C44 00201BA4  E3 81 01 18 */	psq_l f28, 280(r1), 0, qr0
/* 80204C48 00201BA8  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 80204C4C 00201BAC  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 80204C50 00201BB0  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80204C54 00201BB4  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 80204C58 00201BB8  7C 08 03 A6 */	mtlr r0
/* 80204C5C 00201BBC  38 21 01 50 */	addi r1, r1, 0x150
/* 80204C60 00201BC0  4E 80 00 20 */	blr

.global Patrol__22CThardusRockProjectileFR13CStateManager9EStateMsgf
Patrol__22CThardusRockProjectileFR13CStateManager9EStateMsgf:
/* 80204C64 00201BC4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80204C68 00201BC8  7C 08 02 A6 */	mflr r0
/* 80204C6C 00201BCC  2C 05 00 01 */	cmpwi r5, 1
/* 80204C70 00201BD0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80204C74 00201BD4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80204C78 00201BD8  7C 7F 1B 78 */	mr r31, r3
/* 80204C7C 00201BDC  41 82 00 10 */	beq lbl_80204C8C
/* 80204C80 00201BE0  40 80 00 98 */	bge lbl_80204D18
/* 80204C84 00201BE4  48 00 00 94 */	b lbl_80204D18
/* 80204C88 00201BE8  48 00 00 90 */	b lbl_80204D18
lbl_80204C8C:
/* 80204C8C 00201BEC  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 80204C90 00201BF0  38 61 00 08 */	addi r3, r1, 8
/* 80204C94 00201BF4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80204C98 00201BF8  38 81 00 14 */	addi r4, r1, 0x14
/* 80204C9C 00201BFC  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80204CA0 00201C00  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 80204CA4 00201C04  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80204CA8 00201C08  EC 81 00 28 */	fsubs f4, f1, f0
/* 80204CAC 00201C0C  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 80204CB0 00201C10  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80204CB4 00201C14  EC 43 10 28 */	fsubs f2, f3, f2
/* 80204CB8 00201C18  EC 01 00 28 */	fsubs f0, f1, f0
/* 80204CBC 00201C1C  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80204CC0 00201C20  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80204CC4 00201C24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80204CC8 00201C28  48 10 FB 89 */	bl AsNormalized__9CVector3fCFv
/* 80204CCC 00201C2C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80204CD0 00201C30  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 80204CD4 00201C34  C0 61 00 08 */	lfs f3, 8(r1)
/* 80204CD8 00201C38  38 81 00 20 */	addi r4, r1, 0x20
/* 80204CDC 00201C3C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80204CE0 00201C40  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80204CE4 00201C44  C0 83 00 08 */	lfs f4, 8(r3)
/* 80204CE8 00201C48  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80204CEC 00201C4C  C0 02 B0 88 */	lfs f0, lbl_805ACDA8@sda21(r2)
/* 80204CF0 00201C50  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 80204CF4 00201C54  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80204CF8 00201C58  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 80204CFC 00201C5C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80204D00 00201C60  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80204D04 00201C64  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80204D08 00201C68  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80204D0C 00201C6C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80204D10 00201C70  38 63 00 04 */	addi r3, r3, 4
/* 80204D14 00201C74  4B F2 CA 05 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80204D18:
/* 80204D18 00201C78  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80204D1C 00201C7C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80204D20 00201C80  7C 08 03 A6 */	mtlr r0
/* 80204D24 00201C84  38 21 00 50 */	addi r1, r1, 0x50
/* 80204D28 00201C88  4E 80 00 20 */	blr

.global GetUp__22CThardusRockProjectileFR13CStateManager9EStateMsgf
GetUp__22CThardusRockProjectileFR13CStateManager9EStateMsgf:
/* 80204D2C 00201C8C  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80204D30 00201C90  7C 08 02 A6 */	mflr r0
/* 80204D34 00201C94  2C 05 00 01 */	cmpwi r5, 1
/* 80204D38 00201C98  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80204D3C 00201C9C  93 E1 01 CC */	stw r31, 0x1cc(r1)
/* 80204D40 00201CA0  7C 9F 23 78 */	mr r31, r4
/* 80204D44 00201CA4  93 C1 01 C8 */	stw r30, 0x1c8(r1)
/* 80204D48 00201CA8  7C 7E 1B 78 */	mr r30, r3
/* 80204D4C 00201CAC  93 A1 01 C4 */	stw r29, 0x1c4(r1)
/* 80204D50 00201CB0  41 82 00 24 */	beq lbl_80204D74
/* 80204D54 00201CB4  40 80 03 30 */	bge lbl_80205084
/* 80204D58 00201CB8  2C 05 00 00 */	cmpwi r5, 0
/* 80204D5C 00201CBC  40 80 00 0C */	bge lbl_80204D68
/* 80204D60 00201CC0  48 00 03 24 */	b lbl_80205084
/* 80204D64 00201CC4  48 00 03 20 */	b lbl_80205084
lbl_80204D68:
/* 80204D68 00201CC8  38 00 00 00 */	li r0, 0
/* 80204D6C 00201CCC  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80204D70 00201CD0  48 00 03 14 */	b lbl_80205084
lbl_80204D74:
/* 80204D74 00201CD4  80 AD 93 70 */	lwz r5, lbl_805A7F30@sda21(r13)
/* 80204D78 00201CD8  38 60 00 00 */	li r3, 0
/* 80204D7C 00201CDC  38 80 00 01 */	li r4, 1
/* 80204D80 00201CE0  48 18 51 75 */	bl __shl2i
/* 80204D84 00201CE4  39 00 00 00 */	li r8, 0
/* 80204D88 00201CE8  38 00 00 01 */	li r0, 1
/* 80204D8C 00201CEC  90 81 00 74 */	stw r4, 0x74(r1)
/* 80204D90 00201CF0  3C 80 80 5A */	lis r4, lbl_805A6700@ha
/* 80204D94 00201CF4  38 C4 67 00 */	addi r6, r4, lbl_805A6700@l
/* 80204D98 00201CF8  C0 22 B0 9C */	lfs f1, lbl_805ACDBC@sda21(r2)
/* 80204D9C 00201CFC  90 61 00 70 */	stw r3, 0x70(r1)
/* 80204DA0 00201D00  7F E4 FB 78 */	mr r4, r31
/* 80204DA4 00201D04  38 61 00 88 */	addi r3, r1, 0x88
/* 80204DA8 00201D08  38 A1 00 54 */	addi r5, r1, 0x54
/* 80204DAC 00201D0C  91 01 00 7C */	stw r8, 0x7c(r1)
/* 80204DB0 00201D10  38 E1 00 70 */	addi r7, r1, 0x70
/* 80204DB4 00201D14  91 01 00 78 */	stw r8, 0x78(r1)
/* 80204DB8 00201D18  90 01 00 80 */	stw r0, 0x80(r1)
/* 80204DBC 00201D1C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80204DC0 00201D20  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80204DC4 00201D24  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80204DC8 00201D28  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80204DCC 00201D2C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80204DD0 00201D30  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80204DD4 00201D34  4B E4 81 C5 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80204DD8 00201D38  88 81 00 A8 */	lbz r4, 0xa8(r1)
/* 80204DDC 00201D3C  C0 E1 00 88 */	lfs f7, 0x88(r1)
/* 80204DE0 00201D40  C0 C1 00 8C */	lfs f6, 0x8c(r1)
/* 80204DE4 00201D44  28 04 00 00 */	cmplwi r4, 0
/* 80204DE8 00201D48  C0 A1 00 90 */	lfs f5, 0x90(r1)
/* 80204DEC 00201D4C  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 80204DF0 00201D50  C0 61 00 98 */	lfs f3, 0x98(r1)
/* 80204DF4 00201D54  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80204DF8 00201D58  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80204DFC 00201D5C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80204E00 00201D60  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 80204E04 00201D64  80 61 00 B4 */	lwz r3, 0xb4(r1)
/* 80204E08 00201D68  D0 E1 00 B8 */	stfs f7, 0xb8(r1)
/* 80204E0C 00201D6C  D0 C1 00 BC */	stfs f6, 0xbc(r1)
/* 80204E10 00201D70  D0 A1 00 C0 */	stfs f5, 0xc0(r1)
/* 80204E14 00201D74  D0 81 00 C4 */	stfs f4, 0xc4(r1)
/* 80204E18 00201D78  D0 61 00 C8 */	stfs f3, 0xc8(r1)
/* 80204E1C 00201D7C  D0 41 00 CC */	stfs f2, 0xcc(r1)
/* 80204E20 00201D80  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 80204E24 00201D84  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80204E28 00201D88  98 81 00 D8 */	stb r4, 0xd8(r1)
/* 80204E2C 00201D8C  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 80204E30 00201D90  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80204E34 00201D94  40 82 00 BC */	bne lbl_80204EF0
/* 80204E38 00201D98  80 9F 08 70 */	lwz r4, 0x870(r31)
/* 80204E3C 00201D9C  38 61 00 14 */	addi r3, r1, 0x14
/* 80204E40 00201DA0  80 A4 00 7C */	lwz r5, 0x7c(r4)
/* 80204E44 00201DA4  A3 A5 00 08 */	lhz r29, 8(r5)
/* 80204E48 00201DA8  4B E0 6D 91 */	bl GetCurrentCameraId__14CCameraManagerCFv
/* 80204E4C 00201DAC  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80204E50 00201DB0  7C 00 E8 40 */	cmplw r0, r29
/* 80204E54 00201DB4  40 82 01 74 */	bne lbl_80204FC8
/* 80204E58 00201DB8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80204E5C 00201DBC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80204E60 00201DC0  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80204E64 00201DC4  38 81 00 48 */	addi r4, r1, 0x48
/* 80204E68 00201DC8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80204E6C 00201DCC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80204E70 00201DD0  C0 22 B0 AC */	lfs f1, lbl_805ACDCC@sda21(r2)
/* 80204E74 00201DD4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80204E78 00201DD8  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 80204E7C 00201DDC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80204E80 00201DE0  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 80204E84 00201DE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80204E88 00201DE8  90 C1 00 48 */	stw r6, 0x48(r1)
/* 80204E8C 00201DEC  C0 42 B0 90 */	lfs f2, lbl_805ACDB0@sda21(r2)
/* 80204E90 00201DF0  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 80204E94 00201DF4  C0 62 B0 B0 */	lfs f3, lbl_805ACDD0@sda21(r2)
/* 80204E98 00201DF8  90 01 00 50 */	stw r0, 0x50(r1)
/* 80204E9C 00201DFC  4B F5 86 29 */	bl BuildMissileShakeData__16CCameraShakeDataFfffRC9CVector3f
/* 80204EA0 00201E00  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 80204EA4 00201E04  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80204EA8 00201E08  38 A0 00 01 */	li r5, 1
/* 80204EAC 00201E0C  4B E0 5B 75 */	bl AddCameraShaker__14CCameraManagerFRC16CCameraShakeDatab
/* 80204EB0 00201E10  34 81 01 68 */	addic. r4, r1, 0x168
/* 80204EB4 00201E14  41 82 00 10 */	beq lbl_80204EC4
/* 80204EB8 00201E18  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80204EBC 00201E1C  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 80204EC0 00201E20  90 04 00 00 */	stw r0, 0(r4)
lbl_80204EC4:
/* 80204EC4 00201E24  34 81 01 2C */	addic. r4, r1, 0x12c
/* 80204EC8 00201E28  41 82 00 10 */	beq lbl_80204ED8
/* 80204ECC 00201E2C  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80204ED0 00201E30  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 80204ED4 00201E34  90 04 00 00 */	stw r0, 0(r4)
lbl_80204ED8:
/* 80204ED8 00201E38  34 81 00 F0 */	addic. r4, r1, 0xf0
/* 80204EDC 00201E3C  41 82 00 EC */	beq lbl_80204FC8
/* 80204EE0 00201E40  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80204EE4 00201E44  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 80204EE8 00201E48  90 04 00 00 */	stw r0, 0(r4)
/* 80204EEC 00201E4C  48 00 00 DC */	b lbl_80204FC8
lbl_80204EF0:
/* 80204EF0 00201E50  A0 1E 05 D0 */	lhz r0, 0x5d0(r30)
/* 80204EF4 00201E54  7F E3 FB 78 */	mr r3, r31
/* 80204EF8 00201E58  38 81 00 10 */	addi r4, r1, 0x10
/* 80204EFC 00201E5C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80204F00 00201E60  4B E4 76 75 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80204F04 00201E64  28 03 00 00 */	cmplwi r3, 0
/* 80204F08 00201E68  41 82 00 C0 */	beq lbl_80204FC8
/* 80204F0C 00201E6C  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80204F10 00201E70  28 00 00 00 */	cmplwi r0, 0
/* 80204F14 00201E74  40 82 00 B4 */	bne lbl_80204FC8
/* 80204F18 00201E78  38 00 00 01 */	li r0, 1
/* 80204F1C 00201E7C  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 80204F20 00201E80  98 1E 05 DC */	stb r0, 0x5dc(r30)
/* 80204F24 00201E84  7F C3 F3 78 */	mr r3, r30
/* 80204F28 00201E88  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 80204F2C 00201E8C  7F E4 FB 78 */	mr r4, r31
/* 80204F30 00201E90  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80204F34 00201E94  38 C1 00 60 */	addi r6, r1, 0x60
/* 80204F38 00201E98  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80204F3C 00201E9C  38 E1 00 30 */	addi r7, r1, 0x30
/* 80204F40 00201EA0  39 00 00 00 */	li r8, 0
/* 80204F44 00201EA4  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80204F48 00201EA8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80204F4C 00201EAC  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80204F50 00201EB0  C0 05 00 00 */	lfs f0, 0(r5)
/* 80204F54 00201EB4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80204F58 00201EB8  C0 05 00 04 */	lfs f0, 4(r5)
/* 80204F5C 00201EBC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80204F60 00201EC0  C0 05 00 08 */	lfs f0, 8(r5)
/* 80204F64 00201EC4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80204F68 00201EC8  80 BE 05 CC */	lwz r5, 0x5cc(r30)
/* 80204F6C 00201ECC  4B FF E8 B9 */	bl sub_80203824
/* 80204F70 00201ED0  81 5F 08 CC */	lwz r10, 0x8cc(r31)
/* 80204F74 00201ED4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80204F78 00201ED8  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 80204F7C 00201EDC  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 80204F80 00201EE0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80204F84 00201EE4  38 00 00 00 */	li r0, 0
/* 80204F88 00201EE8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80204F8C 00201EEC  7F C3 F3 78 */	mr r3, r30
/* 80204F90 00201EF0  C0 22 B0 88 */	lfs f1, lbl_805ACDA8@sda21(r2)
/* 80204F94 00201EF4  39 21 00 24 */	addi r9, r1, 0x24
/* 80204F98 00201EF8  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80204F9C 00201EFC  38 80 07 AE */	li r4, 0x7ae
/* 80204FA0 00201F00  C0 42 B0 94 */	lfs f2, lbl_805ACDB4@sda21(r2)
/* 80204FA4 00201F04  38 A0 00 00 */	li r5, 0
/* 80204FA8 00201F08  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80204FAC 00201F0C  38 C0 00 14 */	li r6, 0x14
/* 80204FB0 00201F10  C0 62 B0 98 */	lfs f3, lbl_805ACDB8@sda21(r2)
/* 80204FB4 00201F14  38 E0 00 7F */	li r7, 0x7f
/* 80204FB8 00201F18  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 80204FBC 00201F1C  93 E1 00 08 */	stw r31, 8(r1)
/* 80204FC0 00201F20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80204FC4 00201F24  4B E4 DF 6D */	bl ProcessSoundEvent__6CActorFififfUcUcRC9CVector3fRC9CVector3fiR13CStateManager
lbl_80204FC8:
/* 80204FC8 00201F28  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80204FCC 00201F2C  2C 00 00 01 */	cmpwi r0, 1
/* 80204FD0 00201F30  41 82 00 B4 */	beq lbl_80205084
/* 80204FD4 00201F34  40 80 00 10 */	bge lbl_80204FE4
/* 80204FD8 00201F38  2C 00 00 00 */	cmpwi r0, 0
/* 80204FDC 00201F3C  40 80 00 14 */	bge lbl_80204FF0
/* 80204FE0 00201F40  48 00 00 A4 */	b lbl_80205084
lbl_80204FE4:
/* 80204FE4 00201F44  2C 00 00 03 */	cmpwi r0, 3
/* 80204FE8 00201F48  40 80 00 9C */	bge lbl_80205084
/* 80204FEC 00201F4C  48 00 00 80 */	b lbl_8020506C
lbl_80204FF0:
/* 80204FF0 00201F50  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 80204FF4 00201F54  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 80204FF8 00201F58  2C 00 00 01 */	cmpwi r0, 1
/* 80204FFC 00201F5C  40 82 00 10 */	bne lbl_8020500C
/* 80205000 00201F60  38 00 00 02 */	li r0, 2
/* 80205004 00201F64  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80205008 00201F68  48 00 00 7C */	b lbl_80205084
lbl_8020500C:
/* 8020500C 00201F6C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80205010 00201F70  38 A0 00 00 */	li r5, 0
/* 80205014 00201F74  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80205018 00201F78  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 8020501C 00201F7C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80205020 00201F80  38 03 AA 20 */	addi r0, r3, lbl_803DAA20@l
/* 80205024 00201F84  3B C4 00 04 */	addi r30, r4, 4
/* 80205028 00201F88  38 80 00 00 */	li r4, 0
/* 8020502C 00201F8C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80205030 00201F90  7F C3 F3 78 */	mr r3, r30
/* 80205034 00201F94  90 01 00 18 */	stw r0, 0x18(r1)
/* 80205038 00201F98  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8020503C 00201F9C  4B F2 C3 FD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80205040 00201FA0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80205044 00201FA4  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 80205048 00201FA8  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 8020504C 00201FAC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80205050 00201FB0  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 80205054 00201FB4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80205058 00201FB8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8020505C 00201FBC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80205060 00201FC0  90 7E 00 C0 */	stw r3, 0xc0(r30)
/* 80205064 00201FC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80205068 00201FC8  48 00 00 1C */	b lbl_80205084
lbl_8020506C:
/* 8020506C 00201FCC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80205070 00201FD0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80205074 00201FD4  2C 00 00 01 */	cmpwi r0, 1
/* 80205078 00201FD8  41 82 00 0C */	beq lbl_80205084
/* 8020507C 00201FDC  38 00 00 03 */	li r0, 3
/* 80205080 00201FE0  90 1E 05 74 */	stw r0, 0x574(r30)
lbl_80205084:
/* 80205084 00201FE4  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 80205088 00201FE8  83 E1 01 CC */	lwz r31, 0x1cc(r1)
/* 8020508C 00201FEC  83 C1 01 C8 */	lwz r30, 0x1c8(r1)
/* 80205090 00201FF0  83 A1 01 C4 */	lwz r29, 0x1c4(r1)
/* 80205094 00201FF4  7C 08 03 A6 */	mtlr r0
/* 80205098 00201FF8  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 8020509C 00201FFC  4E 80 00 20 */	blr

.global Think__22CThardusRockProjectileFfR13CStateManager
Think__22CThardusRockProjectileFfR13CStateManager:
/* 802050A0 00202000  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802050A4 00202004  7C 08 02 A6 */	mflr r0
/* 802050A8 00202008  90 01 00 34 */	stw r0, 0x34(r1)
/* 802050AC 0020200C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802050B0 00202010  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802050B4 00202014  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802050B8 00202018  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802050BC 0020201C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 802050C0 00202020  FF E0 08 90 */	fmr f31, f1
/* 802050C4 00202024  7C 7E 1B 78 */	mr r30, r3
/* 802050C8 00202028  7C 9F 23 78 */	mr r31, r4
/* 802050CC 0020202C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802050D0 00202030  41 82 01 70 */	beq lbl_80205240
/* 802050D4 00202034  A0 1E 05 D0 */	lhz r0, 0x5d0(r30)
/* 802050D8 00202038  7F E3 FB 78 */	mr r3, r31
/* 802050DC 0020203C  38 81 00 08 */	addi r4, r1, 8
/* 802050E0 00202040  B0 01 00 08 */	sth r0, 8(r1)
/* 802050E4 00202044  4B E4 74 91 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802050E8 00202048  28 03 00 00 */	cmplwi r3, 0
/* 802050EC 0020204C  41 82 00 A8 */	beq lbl_80205194
/* 802050F0 00202050  7F E4 FB 78 */	mr r4, r31
/* 802050F4 00202054  4B FD 64 C1 */	bl sub_801db5b4
/* 802050F8 00202058  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802050FC 0020205C  40 82 00 50 */	bne lbl_8020514C
/* 80205100 00202060  7F C3 F3 78 */	mr r3, r30
/* 80205104 00202064  7F E5 FB 78 */	mr r5, r31
/* 80205108 00202068  38 80 00 29 */	li r4, 0x29
/* 8020510C 0020206C  4B E4 EE 75 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80205110 00202070  7F C3 F3 78 */	mr r3, r30
/* 80205114 00202074  7F E5 FB 78 */	mr r5, r31
/* 80205118 00202078  38 80 00 28 */	li r4, 0x28
/* 8020511C 0020207C  4B E4 EE 65 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80205120 00202080  7F C3 F3 78 */	mr r3, r30
/* 80205124 00202084  7F E4 FB 78 */	mr r4, r31
/* 80205128 00202088  38 A0 00 01 */	li r5, 1
/* 8020512C 0020208C  38 C0 00 29 */	li r6, 0x29
/* 80205130 00202090  4B FF EC BD */	bl sub_80203dec
/* 80205134 00202094  7F C3 F3 78 */	mr r3, r30
/* 80205138 00202098  7F E4 FB 78 */	mr r4, r31
/* 8020513C 0020209C  38 A0 00 01 */	li r5, 1
/* 80205140 002020A0  38 C0 00 28 */	li r6, 0x28
/* 80205144 002020A4  4B FF EC A9 */	bl sub_80203dec
/* 80205148 002020A8  48 00 00 4C */	b lbl_80205194
lbl_8020514C:
/* 8020514C 002020AC  7F C3 F3 78 */	mr r3, r30
/* 80205150 002020B0  7F E5 FB 78 */	mr r5, r31
/* 80205154 002020B4  38 80 00 29 */	li r4, 0x29
/* 80205158 002020B8  4B E4 F1 F9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8020515C 002020BC  7F C3 F3 78 */	mr r3, r30
/* 80205160 002020C0  7F E5 FB 78 */	mr r5, r31
/* 80205164 002020C4  38 80 00 28 */	li r4, 0x28
/* 80205168 002020C8  4B E4 F1 E9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8020516C 002020CC  7F C3 F3 78 */	mr r3, r30
/* 80205170 002020D0  7F E4 FB 78 */	mr r4, r31
/* 80205174 002020D4  38 A0 00 00 */	li r5, 0
/* 80205178 002020D8  38 C0 00 29 */	li r6, 0x29
/* 8020517C 002020DC  4B FF EC 71 */	bl sub_80203dec
/* 80205180 002020E0  7F C3 F3 78 */	mr r3, r30
/* 80205184 002020E4  7F E4 FB 78 */	mr r4, r31
/* 80205188 002020E8  38 A0 00 00 */	li r5, 0
/* 8020518C 002020EC  38 C0 00 28 */	li r6, 0x28
/* 80205190 002020F0  4B FF EC 5D */	bl sub_80203dec
lbl_80205194:
/* 80205194 002020F4  FC 20 F8 90 */	fmr f1, f31
/* 80205198 002020F8  7F C3 F3 78 */	mr r3, r30
/* 8020519C 002020FC  7F E4 FB 78 */	mr r4, r31
/* 802051A0 00202100  4B E7 49 79 */	bl Think__10CPatternedFfR13CStateManager
/* 802051A4 00202104  88 1E 05 DE */	lbz r0, 0x5de(r30)
/* 802051A8 00202108  28 00 00 00 */	cmplwi r0, 0
/* 802051AC 0020210C  41 82 00 0C */	beq lbl_802051B8
/* 802051B0 00202110  C0 02 B0 B4 */	lfs f0, lbl_805ACDD4@sda21(r2)
/* 802051B4 00202114  48 00 00 08 */	b lbl_802051BC
lbl_802051B8:
/* 802051B8 00202118  C0 02 B0 B8 */	lfs f0, lbl_805ACDD8@sda21(r2)
lbl_802051BC:
/* 802051BC 0020211C  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 802051C0 00202120  38 60 00 02 */	li r3, 2
/* 802051C4 00202124  FC 20 F8 90 */	fmr f1, f31
/* 802051C8 00202128  7F E4 FB 78 */	mr r4, r31
/* 802051CC 0020212C  88 1E 00 E6 */	lbz r0, 0xe6(r30)
/* 802051D0 00202130  50 60 1E F8 */	rlwimi r0, r3, 3, 0x1b, 0x1c
/* 802051D4 00202134  38 A0 00 00 */	li r5, 0
/* 802051D8 00202138  98 1E 00 E6 */	stb r0, 0xe6(r30)
/* 802051DC 0020213C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 802051E0 00202140  4B FA 22 71 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 802051E4 00202144  7F C3 F3 78 */	mr r3, r30
/* 802051E8 00202148  7F E4 FB 78 */	mr r4, r31
/* 802051EC 0020214C  4B FF F0 55 */	bl UpdateDestroyableRockPositions__22CThardusRockProjectileFR13CStateManager
/* 802051F0 00202150  7F C3 F3 78 */	mr r3, r30
/* 802051F4 00202154  7F E4 FB 78 */	mr r4, r31
/* 802051F8 00202158  4B FF ED F5 */	bl UpdateDestroyableRockCollisionActors__22CThardusRockProjectileFR13CStateManager
/* 802051FC 0020215C  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80205200 00202160  80 1E 05 90 */	lwz r0, 0x590(r30)
/* 80205204 00202164  7C 03 00 40 */	cmplw r3, r0
/* 80205208 00202168  41 80 00 38 */	blt lbl_80205240
/* 8020520C 0020216C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80205210 00202170  7F C3 F3 78 */	mr r3, r30
/* 80205214 00202174  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80205218 00202178  7F E4 FB 78 */	mr r4, r31
/* 8020521C 0020217C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80205220 00202180  38 A1 00 0C */	addi r5, r1, 0xc
/* 80205224 00202184  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80205228 00202188  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8020522C 0020218C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80205230 00202190  4B FF E8 65 */	bl sub_80203a94
/* 80205234 00202194  7F C3 F3 78 */	mr r3, r30
/* 80205238 00202198  7F E4 FB 78 */	mr r4, r31
/* 8020523C 0020219C  4B E7 37 C5 */	bl DeathDelete__10CPatternedFR13CStateManager
lbl_80205240:
/* 80205240 002021A0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80205244 002021A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80205248 002021A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8020524C 002021AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80205250 002021B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80205254 002021B4  7C 08 03 A6 */	mtlr r0
/* 80205258 002021B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8020525C 002021BC  4E 80 00 20 */	blr

.global AcceptScriptMsg__22CThardusRockProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__22CThardusRockProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80205260 002021C0  94 21 FD 80 */	stwu r1, -0x280(r1)
/* 80205264 002021C4  7C 08 02 A6 */	mflr r0
/* 80205268 002021C8  90 01 02 84 */	stw r0, 0x284(r1)
/* 8020526C 002021CC  BE 21 02 44 */	stmw r17, 0x244(r1)
/* 80205270 002021D0  7C B2 2B 78 */	mr r18, r5
/* 80205274 002021D4  7C 7F 1B 78 */	mr r31, r3
/* 80205278 002021D8  7C 91 23 78 */	mr r17, r4
/* 8020527C 002021DC  7C DE 33 78 */	mr r30, r6
/* 80205280 002021E0  A0 05 00 00 */	lhz r0, 0(r5)
/* 80205284 002021E4  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80205288 002021E8  B0 01 00 6C */	sth r0, 0x6c(r1)
/* 8020528C 002021EC  4B E7 78 ED */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80205290 002021F0  2C 11 00 1E */	cmpwi r17, 0x1e
/* 80205294 002021F4  41 82 06 3C */	beq lbl_802058D0
/* 80205298 002021F8  40 80 00 1C */	bge lbl_802052B4
/* 8020529C 002021FC  2C 11 00 04 */	cmpwi r17, 4
/* 802052A0 00202200  41 82 08 5C */	beq lbl_80205AFC
/* 802052A4 00202204  40 80 08 68 */	bge lbl_80205B0C
/* 802052A8 00202208  2C 11 00 01 */	cmpwi r17, 1
/* 802052AC 0020220C  41 82 08 3C */	beq lbl_80205AE8
/* 802052B0 00202210  48 00 08 5C */	b lbl_80205B0C
lbl_802052B4:
/* 802052B4 00202214  2C 11 00 22 */	cmpwi r17, 0x22
/* 802052B8 00202218  41 82 03 D4 */	beq lbl_8020568C
/* 802052BC 0020221C  40 80 00 10 */	bge lbl_802052CC
/* 802052C0 00202220  2C 11 00 21 */	cmpwi r17, 0x21
/* 802052C4 00202224  40 80 00 14 */	bge lbl_802052D8
/* 802052C8 00202228  48 00 08 44 */	b lbl_80205B0C
lbl_802052CC:
/* 802052CC 0020222C  2C 11 00 29 */	cmpwi r17, 0x29
/* 802052D0 00202230  41 82 04 04 */	beq lbl_802056D4
/* 802052D4 00202234  48 00 08 38 */	b lbl_80205B0C
lbl_802052D8:
/* 802052D8 00202238  7F E3 FB 78 */	mr r3, r31
/* 802052DC 0020223C  7F C5 F3 78 */	mr r5, r30
/* 802052E0 00202240  38 80 00 13 */	li r4, 0x13
/* 802052E4 00202244  4B E4 EC 9D */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 802052E8 00202248  83 5F 05 80 */	lwz r26, 0x580(r31)
/* 802052EC 0020224C  38 7F 05 8C */	addi r3, r31, 0x58c
/* 802052F0 00202250  7F 44 D3 78 */	mr r4, r26
/* 802052F4 00202254  4B E0 71 15 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
/* 802052F8 00202258  3C 60 80 3D */	lis r3, lbl_803D2590@ha
/* 802052FC 0020225C  3B 01 01 7C */	addi r24, r1, 0x17c
/* 80205300 00202260  3B 83 25 90 */	addi r28, r3, lbl_803D2590@l
/* 80205304 00202264  3B 20 00 00 */	li r25, 0
/* 80205308 00202268  3B A0 00 00 */	li r29, 0
/* 8020530C 0020226C  3B 62 B0 78 */	addi r27, r2, lbl_805ACD98@sda21
/* 80205310 00202270  48 00 03 20 */	b lbl_80205630
lbl_80205314:
/* 80205314 00202274  7F C4 F3 78 */	mr r4, r30
/* 80205318 00202278  38 61 00 68 */	addi r3, r1, 0x68
/* 8020531C 0020227C  4B E4 7D C1 */	bl AllocateUniqueId__13CStateManagerFv
/* 80205320 00202280  A0 01 00 68 */	lhz r0, 0x68(r1)
/* 80205324 00202284  38 9C 00 34 */	addi r4, r28, 0x34
/* 80205328 00202288  3A C0 00 00 */	li r22, 0
/* 8020532C 0020228C  3A A0 00 00 */	li r21, 0
/* 80205330 00202290  B0 01 00 80 */	sth r0, 0x80(r1)
/* 80205334 00202294  3A 80 00 00 */	li r20, 0
/* 80205338 00202298  3A 20 00 00 */	li r17, 0
/* 8020533C 0020229C  38 60 03 48 */	li r3, 0x348
/* 80205340 002022A0  38 A0 00 00 */	li r5, 0
/* 80205344 002022A4  48 11 05 29 */	bl __nw__FUlPCcPCc
/* 80205348 002022A8  7C 77 1B 79 */	or. r23, r3, r3
/* 8020534C 002022AC  41 82 01 E0 */	beq lbl_8020552C
/* 80205350 002022B0  81 3F 05 88 */	lwz r9, 0x588(r31)
/* 80205354 002022B4  38 00 00 0F */	li r0, 0xf
/* 80205358 002022B8  81 01 00 A8 */	lwz r8, 0xa8(r1)
/* 8020535C 002022BC  50 08 E0 06 */	rlwimi r8, r0, 0x1c, 0, 3
/* 80205360 002022C0  38 60 00 00 */	li r3, 0
/* 80205364 002022C4  C0 22 B0 88 */	lfs f1, lbl_805ACDA8@sda21(r2)
/* 80205368 002022C8  91 01 00 A8 */	stw r8, 0xa8(r1)
/* 8020536C 002022CC  50 68 D9 08 */	rlwimi r8, r3, 0x1b, 4, 4
/* 80205370 002022D0  C0 02 B0 A0 */	lfs f0, lbl_805ACDC0@sda21(r2)
/* 80205374 002022D4  38 00 FF FF */	li r0, -1
/* 80205378 002022D8  80 ED 93 68 */	lwz r7, lbl_805A7F28@sda21(r13)
/* 8020537C 002022DC  FC 40 08 90 */	fmr f2, f1
/* 80205380 002022E0  80 CD 93 6C */	lwz r6, lbl_805A7F2C@sda21(r13)
/* 80205384 002022E4  FC 60 08 90 */	fmr f3, f1
/* 80205388 002022E8  80 AD 93 60 */	lwz r5, lbl_805A7F20@sda21(r13)
/* 8020538C 002022EC  FC 80 08 90 */	fmr f4, f1
/* 80205390 002022F0  80 8D 93 64 */	lwz r4, lbl_805A7F24@sda21(r13)
/* 80205394 002022F4  91 01 00 A8 */	stw r8, 0xa8(r1)
/* 80205398 002022F8  50 68 D1 4A */	rlwimi r8, r3, 0x1a, 5, 5
/* 8020539C 002022FC  7E 69 EA 14 */	add r19, r9, r29
/* 802053A0 00202300  38 61 00 A0 */	addi r3, r1, 0xa0
/* 802053A4 00202304  91 01 00 A8 */	stw r8, 0xa8(r1)
/* 802053A8 00202308  90 E1 00 D4 */	stw r7, 0xd4(r1)
/* 802053AC 0020230C  90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 802053B0 00202310  90 A1 00 CC */	stw r5, 0xcc(r1)
/* 802053B4 00202314  90 81 00 D0 */	stw r4, 0xd0(r1)
/* 802053B8 00202318  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802053BC 0020231C  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 802053C0 00202320  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 802053C4 00202324  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 802053C8 00202328  48 15 E0 25 */	bl __ct__6CColorFffff
/* 802053CC 0020232C  38 80 FF FF */	li r4, -1
/* 802053D0 00202330  C0 22 B0 A0 */	lfs f1, lbl_805ACDC0@sda21(r2)
/* 802053D4 00202334  90 81 00 08 */	stw r4, 8(r1)
/* 802053D8 00202338  7C 66 1B 78 */	mr r6, r3
/* 802053DC 0020233C  38 00 00 00 */	li r0, 0
/* 802053E0 00202340  FC 40 08 90 */	fmr f2, f1
/* 802053E4 00202344  90 81 00 0C */	stw r4, 0xc(r1)
/* 802053E8 00202348  FC 60 08 90 */	fmr f3, f1
/* 802053EC 0020234C  38 61 01 90 */	addi r3, r1, 0x190
/* 802053F0 00202350  39 41 01 1C */	addi r10, r1, 0x11c
/* 802053F4 00202354  90 01 00 10 */	stw r0, 0x10(r1)
/* 802053F8 00202358  38 80 00 00 */	li r4, 0
/* 802053FC 0020235C  38 A0 FF FF */	li r5, -1
/* 80205400 00202360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80205404 00202364  38 E0 00 01 */	li r7, 1
/* 80205408 00202368  39 00 00 02 */	li r8, 2
/* 8020540C 0020236C  39 20 00 00 */	li r9, 0
/* 80205410 00202370  4B F0 12 E9 */	bl __ct__16CLightParametersFbfQ216CLightParameters19EShadowTessellationffRC6CColorbQ216CLightParameters21EWorldLightingOptionsQ216CLightParameters26ELightRecalculationOptionsRC9CVector3fii
/* 80205414 00202374  C0 22 B0 A0 */	lfs f1, lbl_805ACDC0@sda21(r2)
/* 80205418 00202378  38 00 00 00 */	li r0, 0
/* 8020541C 0020237C  90 01 00 08 */	stw r0, 8(r1)
/* 80205420 00202380  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 80205424 00202384  FC 40 08 90 */	fmr f2, f1
/* 80205428 00202388  C0 62 B0 88 */	lfs f3, lbl_805ACDA8@sda21(r2)
/* 8020542C 0020238C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80205430 00202390  38 81 01 90 */	addi r4, r1, 0x190
/* 80205434 00202394  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80205438 00202398  38 C1 00 CC */	addi r6, r1, 0xcc
/* 8020543C 0020239C  38 E1 00 D4 */	addi r7, r1, 0xd4
/* 80205440 002023A0  39 01 00 A8 */	addi r8, r1, 0xa8
/* 80205444 002023A4  3A C0 00 01 */	li r22, 1
/* 80205448 002023A8  39 20 00 01 */	li r9, 1
/* 8020544C 002023AC  39 40 00 01 */	li r10, 1
/* 80205450 002023B0  4B F0 14 79 */	bl sub_801068c8
/* 80205454 002023B4  7F E3 FB 78 */	mr r3, r31
/* 80205458 002023B8  7F C4 F3 78 */	mr r4, r30
/* 8020545C 002023BC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80205460 002023C0  3A A0 00 01 */	li r21, 1
/* 80205464 002023C4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80205468 002023C8  7D 89 03 A6 */	mtctr r12
/* 8020546C 002023CC  4E 80 04 21 */	bctrl
/* 80205470 002023D0  80 DF 05 88 */	lwz r6, 0x588(r31)
/* 80205474 002023D4  3C 80 80 57 */	lis r4, lbl_8056D410@ha
/* 80205478 002023D8  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8020547C 002023DC  38 A4 D4 10 */	addi r5, r4, lbl_8056D410@l
/* 80205480 002023E0  7C 72 1B 78 */	mr r18, r3
/* 80205484 002023E4  7E 26 EA 14 */	add r17, r6, r29
/* 80205488 002023E8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8020548C 002023EC  38 61 01 78 */	addi r3, r1, 0x178
/* 80205490 002023F0  38 81 00 98 */	addi r4, r1, 0x98
/* 80205494 002023F4  38 C1 00 9C */	addi r6, r1, 0x9c
/* 80205498 002023F8  80 1F 00 04 */	lwz r0, 4(r31)
/* 8020549C 002023FC  90 01 00 94 */	stw r0, 0x94(r1)
/* 802054A0 00202400  90 01 00 98 */	stw r0, 0x98(r1)
/* 802054A4 00202404  4B E4 BF E1 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 802054A8 00202408  80 9B 00 00 */	lwz r4, 0(r27)
/* 802054AC 0020240C  38 61 01 0C */	addi r3, r1, 0x10c
/* 802054B0 00202410  38 C1 00 20 */	addi r6, r1, 0x20
/* 802054B4 00202414  3A 80 00 01 */	li r20, 1
/* 802054B8 00202418  38 A0 FF FF */	li r5, -1
/* 802054BC 0020241C  48 13 8C D9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 802054C0 00202420  A0 01 00 80 */	lhz r0, 0x80(r1)
/* 802054C4 00202424  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 802054C8 00202428  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 802054CC 0020242C  7E 29 8B 78 */	mr r9, r17
/* 802054D0 00202430  3C A0 80 57 */	lis r5, lbl_8056D578@ha
/* 802054D4 00202434  B0 01 00 64 */	sth r0, 0x64(r1)
/* 802054D8 00202438  38 05 D5 78 */	addi r0, r5, lbl_8056D578@l
/* 802054DC 0020243C  38 9F 00 68 */	addi r4, r31, 0x68
/* 802054E0 00202440  90 01 00 08 */	stw r0, 8(r1)
/* 802054E4 00202444  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 802054E8 00202448  38 00 00 01 */	li r0, 1
/* 802054EC 0020244C  C0 22 B0 A0 */	lfs f1, lbl_805ACDC0@sda21(r2)
/* 802054F0 00202450  90 81 00 0C */	stw r4, 0xc(r1)
/* 802054F4 00202454  7E E3 BB 78 */	mr r3, r23
/* 802054F8 00202458  7E 4A 93 78 */	mr r10, r18
/* 802054FC 0020245C  38 81 00 64 */	addi r4, r1, 0x64
/* 80205500 00202460  80 BF 05 9C */	lwz r5, 0x59c(r31)
/* 80205504 00202464  38 C1 01 0C */	addi r6, r1, 0x10c
/* 80205508 00202468  38 E1 01 78 */	addi r7, r1, 0x178
/* 8020550C 0020246C  3A 20 00 01 */	li r17, 1
/* 80205510 00202470  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80205514 00202474  38 A0 00 01 */	li r5, 1
/* 80205518 00202478  91 61 00 14 */	stw r11, 0x14(r1)
/* 8020551C 0020247C  92 61 00 18 */	stw r19, 0x18(r1)
/* 80205520 00202480  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80205524 00202484  4B FD E1 85 */	bl "__ct__16CDestroyableRockF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDatafRC11CHealthInfoRC20CDamageVulnerabilityRC13CMaterialListUiRC16CActorParametersRC10CModelData"
/* 80205528 00202488  7C 77 1B 78 */	mr r23, r3
lbl_8020552C:
/* 8020552C 0020248C  7E 20 07 75 */	extsb. r0, r17
/* 80205530 00202490  7E F1 BB 78 */	mr r17, r23
/* 80205534 00202494  41 82 00 0C */	beq lbl_80205540
/* 80205538 00202498  38 61 01 0C */	addi r3, r1, 0x10c
/* 8020553C 0020249C  48 13 85 A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80205540:
/* 80205540 002024A0  7E 80 07 75 */	extsb. r0, r20
/* 80205544 002024A4  41 82 00 4C */	beq lbl_80205590
/* 80205548 002024A8  28 18 00 00 */	cmplwi r24, 0
/* 8020554C 002024AC  41 82 00 44 */	beq lbl_80205590
/* 80205550 002024B0  80 01 01 80 */	lwz r0, 0x180(r1)
/* 80205554 002024B4  80 61 01 88 */	lwz r3, 0x188(r1)
/* 80205558 002024B8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8020555C 002024BC  90 61 00 88 */	stw r3, 0x88(r1)
/* 80205560 002024C0  7C 64 1B 78 */	mr r4, r3
/* 80205564 002024C4  7C 03 02 14 */	add r0, r3, r0
/* 80205568 002024C8  90 61 00 84 */	stw r3, 0x84(r1)
/* 8020556C 002024CC  90 01 00 90 */	stw r0, 0x90(r1)
/* 80205570 002024D0  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80205574 002024D4  48 00 00 08 */	b lbl_8020557C
lbl_80205578:
/* 80205578 002024D8  38 84 00 0C */	addi r4, r4, 0xc
lbl_8020557C:
/* 8020557C 002024DC  7C 04 00 40 */	cmplw r4, r0
/* 80205580 002024E0  40 82 FF F8 */	bne lbl_80205578
/* 80205584 002024E4  28 03 00 00 */	cmplwi r3, 0
/* 80205588 002024E8  41 82 00 08 */	beq lbl_80205590
/* 8020558C 002024EC  48 11 03 A5 */	bl Free__7CMemoryFPCv
lbl_80205590:
/* 80205590 002024F0  7E A0 07 75 */	extsb. r0, r21
/* 80205594 002024F4  41 82 00 10 */	beq lbl_802055A4
/* 80205598 002024F8  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8020559C 002024FC  38 80 FF FF */	li r4, -1
/* 802055A0 00202500  4B F0 10 69 */	bl __dt__16CActorParametersFv
lbl_802055A4:
/* 802055A4 00202504  7E C0 07 75 */	extsb. r0, r22
/* 802055A8 00202508  41 82 00 10 */	beq lbl_802055B8
/* 802055AC 0020250C  38 61 01 90 */	addi r3, r1, 0x190
/* 802055B0 00202510  38 80 FF FF */	li r4, -1
/* 802055B4 00202514  4B F0 10 55 */	bl __dt__16CActorParametersFv
lbl_802055B8:
/* 802055B8 00202518  38 00 00 00 */	li r0, 0
/* 802055BC 0020251C  7F C3 F3 78 */	mr r3, r30
/* 802055C0 00202520  98 11 03 40 */	stb r0, 0x340(r17)
/* 802055C4 00202524  7E 24 8B 78 */	mr r4, r17
/* 802055C8 00202528  C0 1F 05 0C */	lfs f0, 0x50c(r31)
/* 802055CC 0020252C  D0 11 03 2C */	stfs f0, 0x32c(r17)
/* 802055D0 00202530  4B E4 77 25 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 802055D4 00202534  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 802055D8 00202538  80 BF 05 94 */	lwz r5, 0x594(r31)
/* 802055DC 0020253C  7C 00 28 00 */	cmpw r0, r5
/* 802055E0 00202540  41 80 00 1C */	blt lbl_802055FC
/* 802055E4 00202544  2C 05 00 00 */	cmpwi r5, 0
/* 802055E8 00202548  38 7F 05 8C */	addi r3, r31, 0x58c
/* 802055EC 0020254C  38 80 00 04 */	li r4, 4
/* 802055F0 00202550  41 82 00 08 */	beq lbl_802055F8
/* 802055F4 00202554  54 A4 08 3C */	slwi r4, r5, 1
lbl_802055F8:
/* 802055F8 00202558  4B E0 6E 11 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_802055FC:
/* 802055FC 0020255C  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 80205600 00202560  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80205604 00202564  54 00 08 3C */	slwi r0, r0, 1
/* 80205608 00202568  7C 63 02 15 */	add. r3, r3, r0
/* 8020560C 0020256C  41 82 00 0C */	beq lbl_80205618
/* 80205610 00202570  A0 01 00 80 */	lhz r0, 0x80(r1)
/* 80205614 00202574  B0 03 00 00 */	sth r0, 0(r3)
lbl_80205618:
/* 80205618 00202578  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 8020561C 0020257C  3B 7B 00 08 */	addi r27, r27, 8
/* 80205620 00202580  3B 39 00 01 */	addi r25, r25, 1
/* 80205624 00202584  3B BD 00 4C */	addi r29, r29, 0x4c
/* 80205628 00202588  38 03 00 01 */	addi r0, r3, 1
/* 8020562C 0020258C  90 1F 05 90 */	stw r0, 0x590(r31)
lbl_80205630:
/* 80205630 00202590  7C 19 D0 40 */	cmplw r25, r26
/* 80205634 00202594  41 80 FC E0 */	blt lbl_80205314
/* 80205638 00202598  7F E3 FB 78 */	mr r3, r31
/* 8020563C 0020259C  7F C5 F3 78 */	mr r5, r30
/* 80205640 002025A0  38 80 00 1B */	li r4, 0x1b
/* 80205644 002025A4  4B E4 ED 0D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80205648 002025A8  7F E3 FB 78 */	mr r3, r31
/* 8020564C 002025AC  7F C4 F3 78 */	mr r4, r30
/* 80205650 002025B0  4B FF EF A1 */	bl InitializeCollisionManager__22CThardusRockProjectileFR13CStateManager
/* 80205654 002025B4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80205658 002025B8  7F C4 F3 78 */	mr r4, r30
/* 8020565C 002025BC  4B F3 56 95 */	bl Activate__15CBodyControllerFR13CStateManager
/* 80205660 002025C0  7F E3 FB 78 */	mr r3, r31
/* 80205664 002025C4  38 80 00 00 */	li r4, 0
/* 80205668 002025C8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8020566C 002025CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80205670 002025D0  7D 89 03 A6 */	mtctr r12
/* 80205674 002025D4  4E 80 04 21 */	bctrl
/* 80205678 002025D8  7F E3 FB 78 */	mr r3, r31
/* 8020567C 002025DC  7F C4 F3 78 */	mr r4, r30
/* 80205680 002025E0  38 A0 00 00 */	li r5, 0
/* 80205684 002025E4  4B FF E8 91 */	bl SetChildrenActive__22CThardusRockProjectileFR13CStateManagerb
/* 80205688 002025E8  48 00 04 84 */	b lbl_80205B0C
lbl_8020568C:
/* 8020568C 002025EC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80205690 002025F0  7F C4 F3 78 */	mr r4, r30
/* 80205694 002025F4  4B FA 1D 31 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 80205698 002025F8  82 5F 05 90 */	lwz r18, 0x590(r31)
/* 8020569C 002025FC  3A 60 00 00 */	li r19, 0
/* 802056A0 00202600  3A 20 00 00 */	li r17, 0
/* 802056A4 00202604  48 00 00 24 */	b lbl_802056C8
lbl_802056A8:
/* 802056A8 00202608  80 BF 05 98 */	lwz r5, 0x598(r31)
/* 802056AC 0020260C  7F C3 F3 78 */	mr r3, r30
/* 802056B0 00202610  38 81 00 60 */	addi r4, r1, 0x60
/* 802056B4 00202614  7C 05 8A 2E */	lhzx r0, r5, r17
/* 802056B8 00202618  B0 01 00 60 */	sth r0, 0x60(r1)
/* 802056BC 0020261C  4B E4 6B B1 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 802056C0 00202620  3A 73 00 01 */	addi r19, r19, 1
/* 802056C4 00202624  3A 31 00 02 */	addi r17, r17, 2
lbl_802056C8:
/* 802056C8 00202628  7C 13 90 40 */	cmplw r19, r18
/* 802056CC 0020262C  41 80 FF DC */	blt lbl_802056A8
/* 802056D0 00202630  48 00 04 3C */	b lbl_80205B0C
lbl_802056D4:
/* 802056D4 00202634  A0 12 00 00 */	lhz r0, 0(r18)
/* 802056D8 00202638  7F C3 F3 78 */	mr r3, r30
/* 802056DC 0020263C  38 81 00 5C */	addi r4, r1, 0x5c
/* 802056E0 00202640  B0 01 00 5C */	sth r0, 0x5c(r1)
/* 802056E4 00202644  4B E4 6E 91 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802056E8 00202648  7C 64 1B 78 */	mr r4, r3
/* 802056EC 0020264C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 802056F0 00202650  4B EA 9C 5D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802056F4 00202654  82 63 00 04 */	lwz r19, 4(r3)
/* 802056F8 00202658  28 13 00 00 */	cmplwi r19, 0
/* 802056FC 0020265C  41 82 04 10 */	beq lbl_80205B0C
/* 80205700 00202660  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80205704 00202664  4B FA 1B 45 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80205708 00202668  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8020570C 0020266C  7C 71 1B 78 */	mr r17, r3
/* 80205710 00202670  3A 80 00 00 */	li r20, 0
/* 80205714 00202674  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 80205718 00202678  48 00 00 38 */	b lbl_80205750
lbl_8020571C:
/* 8020571C 0020267C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80205720 00202680  7E 84 A3 78 */	mr r4, r20
/* 80205724 00202684  4B FA 1B 15 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80205728 00202688  A0 92 00 00 */	lhz r4, 0(r18)
/* 8020572C 0020268C  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 80205730 00202690  7C 04 00 40 */	cmplw r4, r0
/* 80205734 00202694  40 82 00 18 */	bne lbl_8020574C
/* 80205738 00202698  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 8020573C 0020269C  56 80 08 3C */	slwi r0, r20, 1
/* 80205740 002026A0  7C 03 02 2E */	lhzx r0, r3, r0
/* 80205744 002026A4  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 80205748 002026A8  48 00 00 10 */	b lbl_80205758
lbl_8020574C:
/* 8020574C 002026AC  3A 94 00 01 */	addi r20, r20, 1
lbl_80205750:
/* 80205750 002026B0  7C 14 88 40 */	cmplw r20, r17
/* 80205754 002026B4  41 80 FF C8 */	blt lbl_8020571C
lbl_80205758:
/* 80205758 002026B8  A0 01 00 7C */	lhz r0, 0x7c(r1)
/* 8020575C 002026BC  7F C3 F3 78 */	mr r3, r30
/* 80205760 002026C0  38 81 00 58 */	addi r4, r1, 0x58
/* 80205764 002026C4  B0 01 00 58 */	sth r0, 0x58(r1)
/* 80205768 002026C8  4B E4 6E 0D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8020576C 002026CC  28 03 00 00 */	cmplwi r3, 0
/* 80205770 002026D0  41 82 03 9C */	beq lbl_80205B0C
/* 80205774 002026D4  C0 22 B0 A0 */	lfs f1, lbl_805ACDC0@sda21(r2)
/* 80205778 002026D8  38 81 01 00 */	addi r4, r1, 0x100
/* 8020577C 002026DC  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 80205780 002026E0  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80205784 002026E4  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 80205788 002026E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020578C 002026EC  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 80205790 002026F0  7D 89 03 A6 */	mtctr r12
/* 80205794 002026F4  4E 80 04 21 */	bctrl
/* 80205798 002026F8  7E 64 9B 78 */	mr r4, r19
/* 8020579C 002026FC  38 61 00 54 */	addi r3, r1, 0x54
/* 802057A0 00202700  4B FA 33 ED */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 802057A4 00202704  A0 01 00 54 */	lhz r0, 0x54(r1)
/* 802057A8 00202708  7F C3 F3 78 */	mr r3, r30
/* 802057AC 0020270C  38 81 00 50 */	addi r4, r1, 0x50
/* 802057B0 00202710  B0 01 00 78 */	sth r0, 0x78(r1)
/* 802057B4 00202714  B0 01 00 50 */	sth r0, 0x50(r1)
/* 802057B8 00202718  4B E4 6D ED */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 802057BC 0020271C  7C 64 1B 78 */	mr r4, r3
/* 802057C0 00202720  38 61 00 AC */	addi r3, r1, 0xac
/* 802057C4 00202724  4B EA 7F 49 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 802057C8 00202728  82 23 00 04 */	lwz r17, 4(r3)
/* 802057CC 0020272C  28 11 00 00 */	cmplwi r17, 0
/* 802057D0 00202730  41 82 03 3C */	beq lbl_80205B0C
/* 802057D4 00202734  A0 7F 05 D0 */	lhz r3, 0x5d0(r31)
/* 802057D8 00202738  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802057DC 0020273C  7C 03 00 40 */	cmplw r3, r0
/* 802057E0 00202740  41 82 03 2C */	beq lbl_80205B0C
/* 802057E4 00202744  A0 1F 05 D0 */	lhz r0, 0x5d0(r31)
/* 802057E8 00202748  7F C3 F3 78 */	mr r3, r30
/* 802057EC 0020274C  38 81 00 4C */	addi r4, r1, 0x4c
/* 802057F0 00202750  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 802057F4 00202754  4B E4 6D 81 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802057F8 00202758  28 03 00 00 */	cmplwi r3, 0
/* 802057FC 0020275C  41 82 03 10 */	beq lbl_80205B0C
/* 80205800 00202760  80 9E 08 B8 */	lwz r4, 0x8b8(r30)
/* 80205804 00202764  80 84 00 00 */	lwz r4, 0(r4)
/* 80205808 00202768  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8020580C 0020276C  2C 00 00 03 */	cmpwi r0, 3
/* 80205810 00202770  40 82 00 14 */	bne lbl_80205824
/* 80205814 00202774  40 82 00 60 */	bne lbl_80205874
/* 80205818 00202778  80 03 07 C4 */	lwz r0, 0x7c4(r3)
/* 8020581C 0020277C  2C 00 00 03 */	cmpwi r0, 3
/* 80205820 00202780  41 82 00 54 */	beq lbl_80205874
lbl_80205824:
/* 80205824 00202784  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 80205828 00202788  7F E3 FB 78 */	mr r3, r31
/* 8020582C 0020278C  7F C4 F3 78 */	mr r4, r30
/* 80205830 00202790  38 C1 00 F4 */	addi r6, r1, 0xf4
/* 80205834 00202794  C0 05 00 00 */	lfs f0, 0(r5)
/* 80205838 00202798  38 E1 00 E8 */	addi r7, r1, 0xe8
/* 8020583C 0020279C  39 00 00 00 */	li r8, 0
/* 80205840 002027A0  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80205844 002027A4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80205848 002027A8  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 8020584C 002027AC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80205850 002027B0  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80205854 002027B4  C0 51 00 60 */	lfs f2, 0x60(r17)
/* 80205858 002027B8  C0 31 00 50 */	lfs f1, 0x50(r17)
/* 8020585C 002027BC  C0 11 00 40 */	lfs f0, 0x40(r17)
/* 80205860 002027C0  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80205864 002027C4  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 80205868 002027C8  D0 41 00 FC */	stfs f2, 0xfc(r1)
/* 8020586C 002027CC  80 BF 05 C4 */	lwz r5, 0x5c4(r31)
/* 80205870 002027D0  4B FF DF B5 */	bl sub_80203824
lbl_80205874:
/* 80205874 002027D4  81 5E 08 CC */	lwz r10, 0x8cc(r30)
/* 80205878 002027D8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8020587C 002027DC  C0 91 00 60 */	lfs f4, 0x60(r17)
/* 80205880 002027E0  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 80205884 002027E4  C0 71 00 50 */	lfs f3, 0x50(r17)
/* 80205888 002027E8  38 00 00 01 */	li r0, 1
/* 8020588C 002027EC  C0 11 00 40 */	lfs f0, 0x40(r17)
/* 80205890 002027F0  7F E3 FB 78 */	mr r3, r31
/* 80205894 002027F4  C0 22 B0 88 */	lfs f1, lbl_805ACDA8@sda21(r2)
/* 80205898 002027F8  39 21 00 DC */	addi r9, r1, 0xdc
/* 8020589C 002027FC  D0 61 00 E0 */	stfs f3, 0xe0(r1)
/* 802058A0 00202800  38 A0 00 00 */	li r5, 0
/* 802058A4 00202804  C0 42 B0 94 */	lfs f2, lbl_805ACDB4@sda21(r2)
/* 802058A8 00202808  38 C0 00 14 */	li r6, 0x14
/* 802058AC 0020280C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 802058B0 00202810  38 E0 00 7F */	li r7, 0x7f
/* 802058B4 00202814  C0 62 B0 98 */	lfs f3, lbl_805ACDB8@sda21(r2)
/* 802058B8 00202818  D0 81 00 E4 */	stfs f4, 0xe4(r1)
/* 802058BC 0020281C  93 C1 00 08 */	stw r30, 8(r1)
/* 802058C0 00202820  90 01 00 0C */	stw r0, 0xc(r1)
/* 802058C4 00202824  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 802058C8 00202828  4B E4 D6 69 */	bl ProcessSoundEvent__6CActorFififfUcUcRC9CVector3fRC9CVector3fiR13CStateManager
/* 802058CC 0020282C  48 00 02 40 */	b lbl_80205B0C
lbl_802058D0:
/* 802058D0 00202830  A0 12 00 00 */	lhz r0, 0(r18)
/* 802058D4 00202834  7F C3 F3 78 */	mr r3, r30
/* 802058D8 00202838  38 81 00 48 */	addi r4, r1, 0x48
/* 802058DC 0020283C  B0 01 00 48 */	sth r0, 0x48(r1)
/* 802058E0 00202840  4B E4 6C 95 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802058E4 00202844  7C 60 1B 78 */	mr r0, r3
/* 802058E8 00202848  38 61 00 BC */	addi r3, r1, 0xbc
/* 802058EC 0020284C  7C 04 03 78 */	mr r4, r0
/* 802058F0 00202850  4B EA 9A 5D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802058F4 00202854  82 23 00 04 */	lwz r17, 4(r3)
/* 802058F8 00202858  28 11 00 00 */	cmplwi r17, 0
/* 802058FC 0020285C  41 82 02 10 */	beq lbl_80205B0C
/* 80205900 00202860  7E 24 8B 78 */	mr r4, r17
/* 80205904 00202864  38 61 00 44 */	addi r3, r1, 0x44
/* 80205908 00202868  4B FA 32 85 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 8020590C 0020286C  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 80205910 00202870  7F C3 F3 78 */	mr r3, r30
/* 80205914 00202874  38 81 00 40 */	addi r4, r1, 0x40
/* 80205918 00202878  B0 01 00 74 */	sth r0, 0x74(r1)
/* 8020591C 0020287C  B0 01 00 40 */	sth r0, 0x40(r1)
/* 80205920 00202880  4B E4 6C 55 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80205924 00202884  7C 60 1B 78 */	mr r0, r3
/* 80205928 00202888  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8020592C 0020288C  7C 04 03 78 */	mr r4, r0
/* 80205930 00202890  4B EA 6A 65 */	bl "__ct__20TCastToPtr<7CPlayer>FP7CEntity"
/* 80205934 00202894  82 63 00 04 */	lwz r19, 4(r3)
/* 80205938 00202898  28 13 00 00 */	cmplwi r19, 0
/* 8020593C 0020289C  41 82 01 D0 */	beq lbl_80205B0C
/* 80205940 002028A0  C0 3F 04 20 */	lfs f1, 0x420(r31)
/* 80205944 002028A4  C0 02 B0 A0 */	lfs f0, lbl_805ACDC0@sda21(r2)
/* 80205948 002028A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020594C 002028AC  4C 40 13 82 */	cror 2, 0, 2
/* 80205950 002028B0  40 82 00 CC */	bne lbl_80205A1C
/* 80205954 002028B4  7F E4 FB 78 */	mr r4, r31
/* 80205958 002028B8  38 61 01 5C */	addi r3, r1, 0x15c
/* 8020595C 002028BC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80205960 002028C0  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 80205964 002028C4  7D 89 03 A6 */	mtctr r12
/* 80205968 002028C8  4E 80 04 21 */	bctrl
/* 8020596C 002028CC  80 AD 93 50 */	lwz r5, lbl_805A7F10@sda21(r13)
/* 80205970 002028D0  38 60 00 00 */	li r3, 0
/* 80205974 002028D4  38 80 00 01 */	li r4, 1
/* 80205978 002028D8  48 18 45 7D */	bl __shl2i
/* 8020597C 002028DC  38 A0 00 00 */	li r5, 0
/* 80205980 002028E0  38 00 00 03 */	li r0, 3
/* 80205984 002028E4  90 81 01 2C */	stw r4, 0x12c(r1)
/* 80205988 002028E8  7F E4 FB 78 */	mr r4, r31
/* 8020598C 002028EC  90 61 01 28 */	stw r3, 0x128(r1)
/* 80205990 002028F0  38 61 01 40 */	addi r3, r1, 0x140
/* 80205994 002028F4  90 A1 01 34 */	stw r5, 0x134(r1)
/* 80205998 002028F8  90 A1 01 30 */	stw r5, 0x130(r1)
/* 8020599C 002028FC  90 01 01 38 */	stw r0, 0x138(r1)
/* 802059A0 00202900  A0 1F 00 08 */	lhz r0, 8(r31)
/* 802059A4 00202904  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 802059A8 00202908  A0 B3 00 08 */	lhz r5, 8(r19)
/* 802059AC 0020290C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 802059B0 00202910  B0 A1 00 34 */	sth r5, 0x34(r1)
/* 802059B4 00202914  A0 1F 00 08 */	lhz r0, 8(r31)
/* 802059B8 00202918  B0 A1 00 30 */	sth r5, 0x30(r1)
/* 802059BC 0020291C  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 802059C0 00202920  81 9F 00 00 */	lwz r12, 0(r31)
/* 802059C4 00202924  B0 01 00 38 */	sth r0, 0x38(r1)
/* 802059C8 00202928  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 802059CC 0020292C  7D 89 03 A6 */	mtctr r12
/* 802059D0 00202930  4E 80 04 21 */	bctrl
/* 802059D4 00202934  3C 80 80 5A */	lis r4, skZero3f@ha
/* 802059D8 00202938  7F C3 F3 78 */	mr r3, r30
/* 802059DC 0020293C  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 802059E0 00202940  38 A1 00 34 */	addi r5, r1, 0x34
/* 802059E4 00202944  38 81 00 3C */	addi r4, r1, 0x3c
/* 802059E8 00202948  38 C1 00 2C */	addi r6, r1, 0x2c
/* 802059EC 0020294C  38 E1 01 40 */	addi r7, r1, 0x140
/* 802059F0 00202950  39 01 01 28 */	addi r8, r1, 0x128
/* 802059F4 00202954  4B E4 46 AD */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 802059F8 00202958  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 802059FC 0020295C  D0 1F 04 20 */	stfs f0, 0x420(r31)
/* 80205A00 00202960  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80205A04 00202964  4B E1 02 F9 */	bl GetFrozenState__7CPlayerCFv
/* 80205A08 00202968  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80205A0C 0020296C  41 82 00 10 */	beq lbl_80205A1C
/* 80205A10 00202970  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80205A14 00202974  7F C4 F3 78 */	mr r4, r30
/* 80205A18 00202978  4B E1 00 15 */	bl UnFreeze__7CPlayerFR13CStateManager
lbl_80205A1C:
/* 80205A1C 0020297C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80205A20 00202980  4B FA 18 29 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80205A24 00202984  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80205A28 00202988  7C 73 1B 78 */	mr r19, r3
/* 80205A2C 0020298C  3A 80 00 00 */	li r20, 0
/* 80205A30 00202990  B0 01 00 70 */	sth r0, 0x70(r1)
/* 80205A34 00202994  48 00 00 38 */	b lbl_80205A6C
lbl_80205A38:
/* 80205A38 00202998  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80205A3C 0020299C  7E 84 A3 78 */	mr r4, r20
/* 80205A40 002029A0  4B FA 17 F9 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80205A44 002029A4  A0 63 00 3C */	lhz r3, 0x3c(r3)
/* 80205A48 002029A8  A0 12 00 00 */	lhz r0, 0(r18)
/* 80205A4C 002029AC  7C 03 00 40 */	cmplw r3, r0
/* 80205A50 002029B0  40 82 00 18 */	bne lbl_80205A68
/* 80205A54 002029B4  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80205A58 002029B8  56 80 08 3C */	slwi r0, r20, 1
/* 80205A5C 002029BC  7C 03 02 2E */	lhzx r0, r3, r0
/* 80205A60 002029C0  B0 01 00 70 */	sth r0, 0x70(r1)
/* 80205A64 002029C4  48 00 00 10 */	b lbl_80205A74
lbl_80205A68:
/* 80205A68 002029C8  3A 94 00 01 */	addi r20, r20, 1
lbl_80205A6C:
/* 80205A6C 002029CC  7C 14 98 40 */	cmplw r20, r19
/* 80205A70 002029D0  41 80 FF C8 */	blt lbl_80205A38
lbl_80205A74:
/* 80205A74 002029D4  A0 61 00 70 */	lhz r3, 0x70(r1)
/* 80205A78 002029D8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80205A7C 002029DC  7C 03 00 40 */	cmplw r3, r0
/* 80205A80 002029E0  41 82 00 8C */	beq lbl_80205B0C
/* 80205A84 002029E4  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 80205A88 002029E8  7F C3 F3 78 */	mr r3, r30
/* 80205A8C 002029EC  38 81 00 24 */	addi r4, r1, 0x24
/* 80205A90 002029F0  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80205A94 002029F4  4B E4 6A E1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80205A98 002029F8  28 03 00 00 */	cmplwi r3, 0
/* 80205A9C 002029FC  41 82 00 70 */	beq lbl_80205B0C
/* 80205AA0 00202A00  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80205AA4 00202A04  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80205AA8 00202A08  41 82 00 64 */	beq lbl_80205B0C
/* 80205AAC 00202A0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80205AB0 00202A10  38 80 00 00 */	li r4, 0
/* 80205AB4 00202A14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80205AB8 00202A18  7D 89 03 A6 */	mtctr r12
/* 80205ABC 00202A1C  4E 80 04 21 */	bctrl
/* 80205AC0 00202A20  7E 23 8B 78 */	mr r3, r17
/* 80205AC4 00202A24  38 80 00 00 */	li r4, 0
/* 80205AC8 00202A28  81 91 00 00 */	lwz r12, 0(r17)
/* 80205ACC 00202A2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80205AD0 00202A30  7D 89 03 A6 */	mtctr r12
/* 80205AD4 00202A34  4E 80 04 21 */	bctrl
/* 80205AD8 00202A38  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80205ADC 00202A3C  38 03 00 01 */	addi r0, r3, 1
/* 80205AE0 00202A40  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80205AE4 00202A44  48 00 00 28 */	b lbl_80205B0C
lbl_80205AE8:
/* 80205AE8 00202A48  7F E3 FB 78 */	mr r3, r31
/* 80205AEC 00202A4C  7F C4 F3 78 */	mr r4, r30
/* 80205AF0 00202A50  38 A0 00 01 */	li r5, 1
/* 80205AF4 00202A54  4B FF E4 21 */	bl SetChildrenActive__22CThardusRockProjectileFR13CStateManagerb
/* 80205AF8 00202A58  48 00 00 14 */	b lbl_80205B0C
lbl_80205AFC:
/* 80205AFC 00202A5C  7F E3 FB 78 */	mr r3, r31
/* 80205B00 00202A60  7F C4 F3 78 */	mr r4, r30
/* 80205B04 00202A64  38 A0 00 00 */	li r5, 0
/* 80205B08 00202A68  4B FF E4 0D */	bl SetChildrenActive__22CThardusRockProjectileFR13CStateManagerb
lbl_80205B0C:
/* 80205B0C 00202A6C  BA 21 02 44 */	lmw r17, 0x244(r1)
/* 80205B10 00202A70  80 01 02 84 */	lwz r0, 0x284(r1)
/* 80205B14 00202A74  7C 08 03 A6 */	mtlr r0
/* 80205B18 00202A78  38 21 02 80 */	addi r1, r1, 0x280
/* 80205B1C 00202A7C  4E 80 00 20 */	blr

.global Accept__22CThardusRockProjectileFR8IVisitor
Accept__22CThardusRockProjectileFR8IVisitor:
/* 80205B20 00202A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80205B24 00202A84  7C 08 02 A6 */	mflr r0
/* 80205B28 00202A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80205B2C 00202A8C  7C 60 1B 78 */	mr r0, r3
/* 80205B30 00202A90  7C 83 23 78 */	mr r3, r4
/* 80205B34 00202A94  81 84 00 00 */	lwz r12, 0(r4)
/* 80205B38 00202A98  7C 04 03 78 */	mr r4, r0
/* 80205B3C 00202A9C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80205B40 00202AA0  7D 89 03 A6 */	mtctr r12
/* 80205B44 00202AA4  4E 80 04 21 */	bctrl
/* 80205B48 00202AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80205B4C 00202AAC  7C 08 03 A6 */	mtlr r0
/* 80205B50 00202AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80205B54 00202AB4  4E 80 00 20 */	blr

.global "__ct__22CThardusRockProjectileF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoRCQ24rstl47vector<10CModelData,Q24rstl17rmemory_allocator>Ui"
"__ct__22CThardusRockProjectileF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoRCQ24rstl47vector<10CModelData,Q24rstl17rmemory_allocator>Ui":
/* 80205B58 00202AB8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80205B5C 00202ABC  7C 08 02 A6 */	mflr r0
/* 80205B60 00202AC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80205B64 00202AC4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80205B68 00202AC8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80205B6C 00202ACC  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 80205B70 00202AD0  A0 04 00 00 */	lhz r0, 0(r4)
/* 80205B74 00202AD4  7C DD 33 78 */	mr r29, r6
/* 80205B78 00202AD8  7C EC 3B 78 */	mr r12, r7
/* 80205B7C 00202ADC  7D 04 43 78 */	mr r4, r8
/* 80205B80 00202AE0  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80205B84 00202AE4  7C A6 2B 78 */	mr r6, r5
/* 80205B88 00202AE8  39 60 00 01 */	li r11, 1
/* 80205B8C 00202AEC  38 00 00 03 */	li r0, 3
/* 80205B90 00202AF0  91 41 00 08 */	stw r10, 8(r1)
/* 80205B94 00202AF4  7C 8A 23 78 */	mr r10, r4
/* 80205B98 00202AF8  FF E0 08 90 */	fmr f31, f1
/* 80205B9C 00202AFC  83 81 00 78 */	lwz r28, 0x78(r1)
/* 80205BA0 00202B00  91 61 00 0C */	stw r11, 0xc(r1)
/* 80205BA4 00202B04  7C 7F 1B 78 */	mr r31, r3
/* 80205BA8 00202B08  83 61 00 7C */	lwz r27, 0x7c(r1)
/* 80205BAC 00202B0C  7F A8 EB 78 */	mr r8, r29
/* 80205BB0 00202B10  91 61 00 10 */	stw r11, 0x10(r1)
/* 80205BB4 00202B14  38 A1 00 20 */	addi r5, r1, 0x20
/* 80205BB8 00202B18  38 80 00 25 */	li r4, 0x25
/* 80205BBC 00202B1C  38 E0 00 00 */	li r7, 0
/* 80205BC0 00202B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80205BC4 00202B24  91 21 00 18 */	stw r9, 0x18(r1)
/* 80205BC8 00202B28  7D 89 63 78 */	mr r9, r12
/* 80205BCC 00202B2C  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80205BD0 00202B30  4B E7 78 81 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 80205BD4 00202B34  3C 60 80 3E */	lis r3, lbl_803E6BE0@ha
/* 80205BD8 00202B38  C0 02 B0 88 */	lfs f0, lbl_805ACDA8@sda21(r2)
/* 80205BDC 00202B3C  38 03 6B E0 */	addi r0, r3, lbl_803E6BE0@l
/* 80205BE0 00202B40  38 A0 00 00 */	li r5, 0
/* 80205BE4 00202B44  90 1F 00 00 */	stw r0, 0(r31)
/* 80205BE8 00202B48  38 00 FF FF */	li r0, -1
/* 80205BEC 00202B4C  7F 84 E3 78 */	mr r4, r28
/* 80205BF0 00202B50  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80205BF4 00202B54  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80205BF8 00202B58  A0 CD A3 8C */	lhz r6, kInvalidUniqueId@sda21(r13)
/* 80205BFC 00202B5C  B0 DF 05 70 */	sth r6, 0x570(r31)
/* 80205C00 00202B60  98 BF 05 72 */	stb r5, 0x572(r31)
/* 80205C04 00202B64  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80205C08 00202B68  90 BF 05 78 */	stw r5, 0x578(r31)
/* 80205C0C 00202B6C  4B FD D2 01 */	bl sub_801e2e0c
/* 80205C10 00202B70  38 80 00 00 */	li r4, 0
/* 80205C14 00202B74  38 00 00 01 */	li r0, 1
/* 80205C18 00202B78  90 9F 05 90 */	stw r4, 0x590(r31)
/* 80205C1C 00202B7C  7F E3 FB 78 */	mr r3, r31
/* 80205C20 00202B80  C0 22 B0 A0 */	lfs f1, lbl_805ACDC0@sda21(r2)
/* 80205C24 00202B84  90 9F 05 94 */	stw r4, 0x594(r31)
/* 80205C28 00202B88  C0 02 B0 88 */	lfs f0, lbl_805ACDA8@sda21(r2)
/* 80205C2C 00202B8C  90 9F 05 98 */	stw r4, 0x598(r31)
/* 80205C30 00202B90  93 7F 05 9C */	stw r27, 0x59c(r31)
/* 80205C34 00202B94  90 9F 05 A0 */	stw r4, 0x5a0(r31)
/* 80205C38 00202B98  98 1F 05 A4 */	stb r0, 0x5a4(r31)
/* 80205C3C 00202B9C  D0 3F 05 A8 */	stfs f1, 0x5a8(r31)
/* 80205C40 00202BA0  D0 3F 05 AC */	stfs f1, 0x5ac(r31)
/* 80205C44 00202BA4  D0 3F 05 B0 */	stfs f1, 0x5b0(r31)
/* 80205C48 00202BA8  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80205C4C 00202BAC  D0 3F 05 B8 */	stfs f1, 0x5b8(r31)
/* 80205C50 00202BB0  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 80205C54 00202BB4  D3 FF 05 C0 */	stfs f31, 0x5c0(r31)
/* 80205C58 00202BB8  90 9F 05 C4 */	stw r4, 0x5c4(r31)
/* 80205C5C 00202BBC  90 9F 05 C8 */	stw r4, 0x5c8(r31)
/* 80205C60 00202BC0  90 9F 05 CC */	stw r4, 0x5cc(r31)
/* 80205C64 00202BC4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80205C68 00202BC8  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 80205C6C 00202BCC  90 9F 05 D4 */	stw r4, 0x5d4(r31)
/* 80205C70 00202BD0  90 9F 05 D8 */	stw r4, 0x5d8(r31)
/* 80205C74 00202BD4  98 9F 05 DC */	stb r4, 0x5dc(r31)
/* 80205C78 00202BD8  98 9F 05 DD */	stb r4, 0x5dd(r31)
/* 80205C7C 00202BDC  4B E4 DC 41 */	bl GetMaterialFilter__6CActorCFv
/* 80205C80 00202BE0  80 AD 93 54 */	lwz r5, lbl_805A7F14@sda21(r13)
/* 80205C84 00202BE4  38 80 00 01 */	li r4, 1
/* 80205C88 00202BE8  83 C3 00 08 */	lwz r30, 8(r3)
/* 80205C8C 00202BEC  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 80205C90 00202BF0  38 60 00 00 */	li r3, 0
/* 80205C94 00202BF4  48 18 42 61 */	bl __shl2i
/* 80205C98 00202BF8  80 AD 93 58 */	lwz r5, lbl_805A7F18@sda21(r13)
/* 80205C9C 00202BFC  7C 9B 23 78 */	mr r27, r4
/* 80205CA0 00202C00  7C 7C 1B 78 */	mr r28, r3
/* 80205CA4 00202C04  38 60 00 00 */	li r3, 0
/* 80205CA8 00202C08  38 80 00 01 */	li r4, 1
/* 80205CAC 00202C0C  48 18 42 49 */	bl __shl2i
/* 80205CB0 00202C10  80 AD 93 5C */	lwz r5, lbl_805A7F1C@sda21(r13)
/* 80205CB4 00202C14  7F 7B 23 78 */	or r27, r27, r4
/* 80205CB8 00202C18  7F 9C 1B 78 */	or r28, r28, r3
/* 80205CBC 00202C1C  38 60 00 00 */	li r3, 0
/* 80205CC0 00202C20  38 80 00 01 */	li r4, 1
/* 80205CC4 00202C24  48 18 42 31 */	bl __shl2i
/* 80205CC8 00202C28  7F 9C 1B 78 */	or r28, r28, r3
/* 80205CCC 00202C2C  7F 7B 23 78 */	or r27, r27, r4
/* 80205CD0 00202C30  7F E3 FB 78 */	mr r3, r31
/* 80205CD4 00202C34  7F BD DB 78 */	or r29, r29, r27
/* 80205CD8 00202C38  7F DE E3 78 */	or r30, r30, r28
/* 80205CDC 00202C3C  4B E4 DB E1 */	bl GetMaterialFilter__6CActorCFv
/* 80205CE0 00202C40  80 A3 00 00 */	lwz r5, 0(r3)
/* 80205CE4 00202C44  38 00 00 03 */	li r0, 3
/* 80205CE8 00202C48  80 C3 00 04 */	lwz r6, 4(r3)
/* 80205CEC 00202C4C  7F E3 FB 78 */	mr r3, r31
/* 80205CF0 00202C50  38 81 00 28 */	addi r4, r1, 0x28
/* 80205CF4 00202C54  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80205CF8 00202C58  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80205CFC 00202C5C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80205D00 00202C60  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80205D04 00202C64  90 01 00 38 */	stw r0, 0x38(r1)
/* 80205D08 00202C68  4B E4 DB 99 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80205D0C 00202C6C  C0 02 B0 88 */	lfs f0, lbl_805ACDA8@sda21(r2)
/* 80205D10 00202C70  7F E3 FB 78 */	mr r3, r31
/* 80205D14 00202C74  D0 1F 05 0C */	stfs f0, 0x50c(r31)
/* 80205D18 00202C78  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80205D1C 00202C7C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80205D20 00202C80  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 80205D24 00202C84  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80205D28 00202C88  7C 08 03 A6 */	mtlr r0
/* 80205D2C 00202C8C  38 21 00 70 */	addi r1, r1, 0x70
/* 80205D30 00202C90  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805ACD98
lbl_805ACD98:
	# ROM: 0x3F9638
	.4byte 0x803D2590
	.float 1.5

.global lbl_805ACDA0
lbl_805ACDA0:
	# ROM: 0x3F9640
	.float 0.75

.global lbl_805ACDA4
lbl_805ACDA4:
	# ROM: 0x3F9644
	.4byte 0x42FA0000

.global lbl_805ACDA8
lbl_805ACDA8:
	# ROM: 0x3F9648
	.float 1.0

.global lbl_805ACDAC
lbl_805ACDAC:
	# ROM: 0x3F964C
	.4byte 0x41200000

.global lbl_805ACDB0
lbl_805ACDB0:
	# ROM: 0x3F9650
	.float 0.5

.global lbl_805ACDB4
lbl_805ACDB4:
	# ROM: 0x3F9654
	.float 0.1

.global lbl_805ACDB8
lbl_805ACDB8:
	# ROM: 0x3F9658
	.4byte 0x447A0000

.global lbl_805ACDBC
lbl_805ACDBC:
	# ROM: 0x3F965C
	.float 2.0

.global lbl_805ACDC0
lbl_805ACDC0:
	# ROM: 0x3F9660
	.4byte 0

.global lbl_805ACDC4
lbl_805ACDC4:
	# ROM: 0x3F9664
	.float 0.001

.global lbl_805ACDC8
lbl_805ACDC8:
	# ROM: 0x3F9668
	.4byte 0x42C80000

.global lbl_805ACDCC
lbl_805ACDCC:
	# ROM: 0x3F966C
	.float 0.25

.global lbl_805ACDD0
lbl_805ACDD0:
	# ROM: 0x3F9670
	.4byte 0x42480000

.global lbl_805ACDD4
lbl_805ACDD4:
	# ROM: 0x3F9674
	.float 0.7

.global lbl_805ACDD8
lbl_805ACDD8:
	# ROM: 0x3F9678
	.asciz "?&ff"
	.balign 4


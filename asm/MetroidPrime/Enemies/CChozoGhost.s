.include "macros.inc"

.section .data


.global lbl_803E18E8
lbl_803E18E8:
	# ROM: 0x3DE8E8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryJump__10CPatternedFR13CStateManageri

.global lbl_803E18F4
lbl_803E18F4:
	# ROM: 0x3DE8F4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E1900
lbl_803E1900:
	# ROM: 0x3DE900
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTaunt__10CPatternedFR13CStateManageri

.global lbl_803E190C
lbl_803E190C:
	# ROM: 0x3DE90C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007c1a8

.global lbl_803E1918
lbl_803E1918:
	# ROM: 0x3DE918
	.4byte 0
	.4byte 0
	.4byte __dt__11CChozoGhostFv
	.4byte Accept__11CChozoGhostFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__11CChozoGhostFfR13CStateManager
	.4byte AcceptScriptMsg__11CChozoGhostF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__11CChozoGhostFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__11CChozoGhostCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__11CChozoGhostCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__11CChozoGhostFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__11CChozoGhostCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__11CChozoGhostFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
	.4byte KnockBack__11CChozoGhostFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__11CChozoGhostFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__11CChozoGhostCFv
	.4byte Patrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte PathFind__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte Generate__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte Deactivate__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte Attack__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__3CAiFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte Enraged__3CAiFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Growth__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__11CChozoGhostFR13CStateManager9EStateMsgf
	.4byte Bounce__3CAiFR13CStateManager9EStateMsgf
	.4byte PathFindEx__3CAiFR13CStateManager9EStateMsgf
	.4byte Dizzy__3CAiFR13CStateManager9EStateMsgf
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__3CAiFR13CStateManagerf
	.4byte Leash__11CChozoGhostFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__11CChozoGhostFR13CStateManagerf
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
	.4byte sub_801403dc
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
	.4byte AggressionCheck__11CChozoGhostFR13CStateManagerf
	.4byte AttackOver__3CAiFR13CStateManagerf
	.4byte sub_8013ff04
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__11CChozoGhostFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte sub_8013fb78
	.4byte ShotAt__3CAiFR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__3CAiFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__11CChozoGhostFR13CStateManagerf
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
	.4byte GetModelAlphau8__11CChozoGhostCFRC13CStateManager
	.4byte sub_80141590
	.4byte GetGravityConstant__11CChozoGhostCFv
	.4byte ProjectileInfo__11CChozoGhostFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E1BE4
lbl_803E1BE4:
	# ROM: 0x3DEBE4
	.4byte lbl_80141DE8
	.4byte lbl_80141D44
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141D9C
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141D7C
	.4byte lbl_80141DE8
	.4byte lbl_80141D54
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DAC
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141D9C
	.4byte lbl_80141D28
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DE8
	.4byte lbl_80141DAC

.section .sdata


.global lbl_805A7758
lbl_805A7758:
	# ROM: 0x3F50F8
	.4byte 0x00000013

.global lbl_805A775C
lbl_805A775C:
	# ROM: 0x3F50FC
	.4byte 0

.global lbl_805A7760
lbl_805A7760:
	# ROM: 0x3F5100
	.4byte 0

.global lbl_805A7764
lbl_805A7764:
	# ROM: 0x3F5104
	.4byte 0x0000001F

.global lbl_805A7768
lbl_805A7768:
	# ROM: 0x3F5108
	.4byte 0x00000013

.global lbl_805A776C
lbl_805A776C:
	# ROM: 0x3F510C
	.4byte 0x0000001F

.global lbl_805A7770
lbl_805A7770:
	# ROM: 0x3F5110
	.4byte 0x00000013

.global lbl_805A7774
lbl_805A7774:
	# ROM: 0x3F5114
	.4byte 0x0000001F

.global lbl_805A7778
lbl_805A7778:
	# ROM: 0x3F5118
	.4byte 0
	.4byte 0

.section .bss

.global lbl_8046C748
lbl_8046C748:
	.skip 0x10

.section .text, "ax"

.global __dt__11CChozoGhostFv
__dt__11CChozoGhostFv:
/* 8013F2F0 0013C250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F2F4 0013C254  7C 08 02 A6 */	mflr r0
/* 8013F2F8 0013C258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F2FC 0013C25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F300 0013C260  7C 9F 23 78 */	mr r31, r4
/* 8013F304 0013C264  93 C1 00 08 */	stw r30, 8(r1)
/* 8013F308 0013C268  7C 7E 1B 79 */	or. r30, r3, r3
/* 8013F30C 0013C26C  41 82 00 C0 */	beq lbl_8013F3CC
/* 8013F310 0013C270  3C 60 80 3E */	lis r3, lbl_803E1918@ha
/* 8013F314 0013C274  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 8013F318 0013C278  38 03 19 18 */	addi r0, r3, lbl_803E1918@l
/* 8013F31C 0013C27C  90 1E 00 00 */	stw r0, 0(r30)
/* 8013F320 0013C280  41 82 00 14 */	beq lbl_8013F334
/* 8013F324 0013C284  34 1E 06 B0 */	addic. r0, r30, 0x6b0
/* 8013F328 0013C288  41 82 00 0C */	beq lbl_8013F334
/* 8013F32C 0013C28C  38 00 00 00 */	li r0, 0
/* 8013F330 0013C290  98 1E 06 BC */	stb r0, 0x6bc(r30)
lbl_8013F334:
/* 8013F334 0013C294  34 1E 06 40 */	addic. r0, r30, 0x640
/* 8013F338 0013C298  41 82 00 30 */	beq lbl_8013F368
/* 8013F33C 0013C29C  88 1E 06 4C */	lbz r0, 0x64c(r30)
/* 8013F340 0013C2A0  28 00 00 00 */	cmplwi r0, 0
/* 8013F344 0013C2A4  41 82 00 1C */	beq lbl_8013F360
/* 8013F348 0013C2A8  34 7E 06 40 */	addic. r3, r30, 0x640
/* 8013F34C 0013C2AC  41 82 00 14 */	beq lbl_8013F360
/* 8013F350 0013C2B0  28 03 00 00 */	cmplwi r3, 0
/* 8013F354 0013C2B4  41 82 00 0C */	beq lbl_8013F360
/* 8013F358 0013C2B8  38 80 00 00 */	li r4, 0
/* 8013F35C 0013C2BC  48 20 1A E5 */	bl __dt__6CTokenFv
lbl_8013F360:
/* 8013F360 0013C2C0  38 00 00 00 */	li r0, 0
/* 8013F364 0013C2C4  98 1E 06 4C */	stb r0, 0x64c(r30)
lbl_8013F368:
/* 8013F368 0013C2C8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8013F36C 0013C2CC  41 82 00 20 */	beq lbl_8013F38C
/* 8013F370 0013C2D0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8013F374 0013C2D4  41 82 00 18 */	beq lbl_8013F38C
/* 8013F378 0013C2D8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8013F37C 0013C2DC  41 82 00 10 */	beq lbl_8013F38C
/* 8013F380 0013C2E0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 8013F384 0013C2E4  38 80 00 00 */	li r4, 0
/* 8013F388 0013C2E8  48 20 1A B9 */	bl __dt__6CTokenFv
lbl_8013F38C:
/* 8013F38C 0013C2EC  34 1E 05 78 */	addic. r0, r30, 0x578
/* 8013F390 0013C2F0  41 82 00 20 */	beq lbl_8013F3B0
/* 8013F394 0013C2F4  34 1E 05 78 */	addic. r0, r30, 0x578
/* 8013F398 0013C2F8  41 82 00 18 */	beq lbl_8013F3B0
/* 8013F39C 0013C2FC  34 1E 05 78 */	addic. r0, r30, 0x578
/* 8013F3A0 0013C300  41 82 00 10 */	beq lbl_8013F3B0
/* 8013F3A4 0013C304  38 7E 05 78 */	addi r3, r30, 0x578
/* 8013F3A8 0013C308  38 80 00 00 */	li r4, 0
/* 8013F3AC 0013C30C  48 20 1A 95 */	bl __dt__6CTokenFv
lbl_8013F3B0:
/* 8013F3B0 0013C310  7F C3 F3 78 */	mr r3, r30
/* 8013F3B4 0013C314  38 80 00 00 */	li r4, 0
/* 8013F3B8 0013C318  4B F3 81 B9 */	bl __dt__10CPatternedFv
/* 8013F3BC 0013C31C  7F E0 07 35 */	extsh. r0, r31
/* 8013F3C0 0013C320  40 81 00 0C */	ble lbl_8013F3CC
/* 8013F3C4 0013C324  7F C3 F3 78 */	mr r3, r30
/* 8013F3C8 0013C328  48 1D 65 69 */	bl Free__7CMemoryFPCv
lbl_8013F3CC:
/* 8013F3CC 0013C32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F3D0 0013C330  7F C3 F3 78 */	mr r3, r30
/* 8013F3D4 0013C334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F3D8 0013C338  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013F3DC 0013C33C  7C 08 03 A6 */	mtlr r0
/* 8013F3E0 0013C340  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F3E4 0013C344  4E 80 00 20 */	blr

.global GetGravityConstant__11CChozoGhostCFv
GetGravityConstant__11CChozoGhostCFv:
/* 8013F3E8 0013C348  C0 22 9B 58 */	lfs f1, lbl_805AB878@sda21(r2)
/* 8013F3EC 0013C34C  4E 80 00 20 */	blr

.global Think__11CChozoGhostFfR13CStateManager
Think__11CChozoGhostFfR13CStateManager:
/* 8013F3F0 0013C350  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013F3F4 0013C354  7C 08 02 A6 */	mflr r0
/* 8013F3F8 0013C358  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013F3FC 0013C35C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8013F400 0013C360  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8013F404 0013C364  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013F408 0013C368  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013F40C 0013C36C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8013F410 0013C370  FF E0 08 90 */	fmr f31, f1
/* 8013F414 0013C374  7C 7E 1B 78 */	mr r30, r3
/* 8013F418 0013C378  7C 9F 23 78 */	mr r31, r4
/* 8013F41C 0013C37C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013F420 0013C380  41 82 00 58 */	beq lbl_8013F478
/* 8013F424 0013C384  4B F3 A6 F5 */	bl Think__10CPatternedFfR13CStateManager
/* 8013F428 0013C388  7F C3 F3 78 */	mr r3, r30
/* 8013F42C 0013C38C  38 80 00 00 */	li r4, 0
/* 8013F430 0013C390  4B F3 84 25 */	bl UpdateThermalFrozenState__10CPatternedFb
/* 8013F434 0013C394  FC 20 F8 90 */	fmr f1, f31
/* 8013F438 0013C398  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8013F43C 0013C39C  48 03 65 6D */	bl Update__13CBoneTrackingFf
/* 8013F440 0013C3A0  C0 1E 06 C8 */	lfs f0, 0x6c8(r30)
/* 8013F444 0013C3A4  38 81 00 08 */	addi r4, r1, 8
/* 8013F448 0013C3A8  38 6D 8B B8 */	addi r3, r13, lbl_805A7778@sda21
/* 8013F44C 0013C3AC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8013F450 0013C3B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8013F454 0013C3B4  4B F1 02 DD */	bl "Max<f>__5CMathFRCfRCf"
/* 8013F458 0013C3B8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8013F45C 0013C3BC  7F C3 F3 78 */	mr r3, r30
/* 8013F460 0013C3C0  7F E4 FB 78 */	mr r4, r31
/* 8013F464 0013C3C4  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 8013F468 0013C3C8  48 00 22 F9 */	bl sub_80141760
/* 8013F46C 0013C3CC  88 1E 00 E7 */	lbz r0, 0xe7(r30)
/* 8013F470 0013C3D0  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8013F474 0013C3D4  98 1E 00 E7 */	stb r0, 0xe7(r30)
lbl_8013F478:
/* 8013F478 0013C3D8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8013F47C 0013C3DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013F480 0013C3E0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8013F484 0013C3E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013F488 0013C3E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8013F48C 0013C3EC  7C 08 03 A6 */	mtlr r0
/* 8013F490 0013C3F0  38 21 00 30 */	addi r1, r1, 0x30
/* 8013F494 0013C3F4  4E 80 00 20 */	blr

.global KnockBack__11CChozoGhostFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__11CChozoGhostFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 8013F498 0013C3F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013F49C 0013C3FC  7C 08 02 A6 */	mflr r0
/* 8013F4A0 0013C400  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013F4A4 0013C404  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8013F4A8 0013C408  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8013F4AC 0013C40C  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8013F4B0 0013C410  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8013F4B4 0013C414  FF E0 08 90 */	fmr f31, f1
/* 8013F4B8 0013C418  7C 7F 1B 78 */	mr r31, r3
/* 8013F4BC 0013C41C  7C 9A 23 78 */	mr r26, r4
/* 8013F4C0 0013C420  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8013F4C4 0013C424  7C BB 2B 78 */	mr r27, r5
/* 8013F4C8 0013C428  7C DC 33 78 */	mr r28, r6
/* 8013F4CC 0013C42C  7C FD 3B 78 */	mr r29, r7
/* 8013F4D0 0013C430  7D 1E 43 78 */	mr r30, r8
/* 8013F4D4 0013C434  40 82 00 18 */	bne lbl_8013F4EC
/* 8013F4D8 0013C438  38 7F 04 60 */	addi r3, r31, 0x460
/* 8013F4DC 0013C43C  38 80 00 03 */	li r4, 3
/* 8013F4E0 0013C440  38 A0 00 00 */	li r5, 0
/* 8013F4E4 0013C444  48 0F 48 E1 */	bl SetAvailableState__20CKnockBackControllerFib
/* 8013F4E8 0013C448  48 00 00 34 */	b lbl_8013F51C
lbl_8013F4EC:
/* 8013F4EC 0013C44C  38 7F 04 60 */	addi r3, r31, 0x460
/* 8013F4F0 0013C450  38 80 00 02 */	li r4, 2
/* 8013F4F4 0013C454  48 0F 48 AD */	bl TestAvailableState__20CKnockBackControllerCFi
/* 8013F4F8 0013C458  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013F4FC 0013C45C  40 82 00 20 */	bne lbl_8013F51C
/* 8013F500 0013C460  88 1C 00 04 */	lbz r0, 4(r28)
/* 8013F504 0013C464  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013F508 0013C468  41 82 00 14 */	beq lbl_8013F51C
/* 8013F50C 0013C46C  38 7F 04 60 */	addi r3, r31, 0x460
/* 8013F510 0013C470  38 80 00 03 */	li r4, 3
/* 8013F514 0013C474  38 A0 00 04 */	li r5, 4
/* 8013F518 0013C478  48 0F 48 7D */	bl SetAnimationStateRange__20CKnockBackControllerF24EKnockBackAnimationState24EKnockBackAnimationState
lbl_8013F51C:
/* 8013F51C 0013C47C  FC 20 F8 90 */	fmr f1, f31
/* 8013F520 0013C480  7F E3 FB 78 */	mr r3, r31
/* 8013F524 0013C484  7F 44 D3 78 */	mr r4, r26
/* 8013F528 0013C488  7F 65 DB 78 */	mr r5, r27
/* 8013F52C 0013C48C  7F 86 E3 78 */	mr r6, r28
/* 8013F530 0013C490  7F A7 EB 78 */	mr r7, r29
/* 8013F534 0013C494  7F C8 F3 78 */	mr r8, r30
/* 8013F538 0013C498  4B F3 B2 45 */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 8013F53C 0013C49C  38 7F 04 60 */	addi r3, r31, 0x460
/* 8013F540 0013C4A0  38 80 00 01 */	li r4, 1
/* 8013F544 0013C4A4  38 A0 00 04 */	li r5, 4
/* 8013F548 0013C4A8  48 0F 48 4D */	bl SetAnimationStateRange__20CKnockBackControllerF24EKnockBackAnimationState24EKnockBackAnimationState
/* 8013F54C 0013C4AC  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 8013F550 0013C4B0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8013F554 0013C4B4  41 82 00 4C */	beq lbl_8013F5A0
/* 8013F558 0013C4B8  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 8013F55C 0013C4BC  2C 00 00 03 */	cmpwi r0, 3
/* 8013F560 0013C4C0  40 82 00 64 */	bne lbl_8013F5C4
/* 8013F564 0013C4C4  3C 80 80 3D */	lis r4, lbl_803D0078@ha
/* 8013F568 0013C4C8  38 61 00 08 */	addi r3, r1, 8
/* 8013F56C 0013C4CC  38 84 00 78 */	addi r4, r4, lbl_803D0078@l
/* 8013F570 0013C4D0  4B EC 57 49 */	bl string_l__4rstlFPCc
/* 8013F574 0013C4D4  7F E3 FB 78 */	mr r3, r31
/* 8013F578 0013C4D8  4B F6 33 81 */	bl GetStateMachine__3CAiFv
/* 8013F57C 0013C4DC  7C 66 1B 78 */	mr r6, r3
/* 8013F580 0013C4E0  7F 64 DB 78 */	mr r4, r27
/* 8013F584 0013C4E4  7F E5 FB 78 */	mr r5, r31
/* 8013F588 0013C4E8  38 7F 03 30 */	addi r3, r31, 0x330
/* 8013F58C 0013C4EC  38 E1 00 08 */	addi r7, r1, 8
/* 8013F590 0013C4F0  4B F4 06 75 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8013F594 0013C4F4  38 61 00 08 */	addi r3, r1, 8
/* 8013F598 0013C4F8  48 1F E5 49 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8013F59C 0013C4FC  48 00 00 28 */	b lbl_8013F5C4
lbl_8013F5A0:
/* 8013F5A0 0013C500  7F E3 FB 78 */	mr r3, r31
/* 8013F5A4 0013C504  4B FD BD D5 */	bl Stop__13CPhysicsActorFv
/* 8013F5A8 0013C508  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8013F5AC 0013C50C  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 8013F5B0 0013C510  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 8013F5B4 0013C514  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013F5B8 0013C518  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8013F5BC 0013C51C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013F5C0 0013C520  D0 1F 01 58 */	stfs f0, 0x158(r31)
lbl_8013F5C4:
/* 8013F5C4 0013C524  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8013F5C8 0013C528  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8013F5CC 0013C52C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8013F5D0 0013C530  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8013F5D4 0013C534  7C 08 03 A6 */	mtlr r0
/* 8013F5D8 0013C538  38 21 00 40 */	addi r1, r1, 0x40
/* 8013F5DC 0013C53C  4E 80 00 20 */	blr

.global DoUserAnimEvent__11CChozoGhostFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__11CChozoGhostFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 8013F5E0 0013C540  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8013F5E4 0013C544  7C 08 02 A6 */	mflr r0
/* 8013F5E8 0013C548  90 01 01 64 */	stw r0, 0x164(r1)
/* 8013F5EC 0013C54C  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 8013F5F0 0013C550  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 8013F5F4 0013C554  BF 61 01 3C */	stmw r27, 0x13c(r1)
/* 8013F5F8 0013C558  7C DF 33 78 */	mr r31, r6
/* 8013F5FC 0013C55C  FF E0 08 90 */	fmr f31, f1
/* 8013F600 0013C560  2C 1F 00 0E */	cmpwi r31, 0xe
/* 8013F604 0013C564  7C 7C 1B 78 */	mr r28, r3
/* 8013F608 0013C568  7C 9D 23 78 */	mr r29, r4
/* 8013F60C 0013C56C  7C BE 2B 78 */	mr r30, r5
/* 8013F610 0013C570  38 80 00 00 */	li r4, 0
/* 8013F614 0013C574  41 82 01 F8 */	beq lbl_8013F80C
/* 8013F618 0013C578  40 80 00 10 */	bge lbl_8013F628
/* 8013F61C 0013C57C  2C 1F 00 00 */	cmpwi r31, 0
/* 8013F620 0013C580  41 82 00 14 */	beq lbl_8013F634
/* 8013F624 0013C584  48 00 03 08 */	b lbl_8013F92C
lbl_8013F628:
/* 8013F628 0013C588  2C 1F 00 10 */	cmpwi r31, 0x10
/* 8013F62C 0013C58C  40 80 03 00 */	bge lbl_8013F92C
/* 8013F630 0013C590  48 00 02 68 */	b lbl_8013F898
lbl_8013F634:
/* 8013F634 0013C594  7F 84 E3 78 */	mr r4, r28
/* 8013F638 0013C598  38 61 00 9C */	addi r3, r1, 0x9c
/* 8013F63C 0013C59C  38 BE 00 3C */	addi r5, r30, 0x3c
/* 8013F640 0013C5A0  4B F3 93 39 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8013F644 0013C5A4  38 61 00 FC */	addi r3, r1, 0xfc
/* 8013F648 0013C5A8  38 81 00 9C */	addi r4, r1, 0x9c
/* 8013F64C 0013C5AC  48 1D 35 29 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8013F650 0013C5B0  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 8013F654 0013C5B4  7F A5 EB 78 */	mr r5, r29
/* 8013F658 0013C5B8  38 61 00 54 */	addi r3, r1, 0x54
/* 8013F65C 0013C5BC  C0 22 9B 5C */	lfs f1, lbl_805AB87C@sda21(r2)
/* 8013F660 0013C5C0  81 84 00 00 */	lwz r12, 0(r4)
/* 8013F664 0013C5C4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8013F668 0013C5C8  7D 89 03 A6 */	mtctr r12
/* 8013F66C 0013C5CC  4E 80 04 21 */	bctrl
/* 8013F670 0013C5D0  C0 A1 00 54 */	lfs f5, 0x54(r1)
/* 8013F674 0013C5D4  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 8013F678 0013C5D8  C0 81 00 58 */	lfs f4, 0x58(r1)
/* 8013F67C 0013C5DC  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 8013F680 0013C5E0  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 8013F684 0013C5E4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8013F688 0013C5E8  C0 41 01 08 */	lfs f2, 0x108(r1)
/* 8013F68C 0013C5EC  38 81 00 48 */	addi r4, r1, 0x48
/* 8013F690 0013C5F0  C0 21 01 18 */	lfs f1, 0x118(r1)
/* 8013F694 0013C5F4  38 A1 00 60 */	addi r5, r1, 0x60
/* 8013F698 0013C5F8  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 8013F69C 0013C5FC  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 8013F6A0 0013C600  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 8013F6A4 0013C604  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 8013F6A8 0013C608  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8013F6AC 0013C60C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8013F6B0 0013C610  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8013F6B4 0013C614  48 1D 44 5D */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8013F6B8 0013C618  38 61 00 CC */	addi r3, r1, 0xcc
/* 8013F6BC 0013C61C  38 81 00 6C */	addi r4, r1, 0x6c
/* 8013F6C0 0013C620  48 1D 34 B5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8013F6C4 0013C624  80 1C 06 7C */	lwz r0, 0x67c(r28)
/* 8013F6C8 0013C628  2C 00 00 02 */	cmpwi r0, 2
/* 8013F6CC 0013C62C  41 82 00 08 */	beq lbl_8013F6D4
/* 8013F6D0 0013C630  48 00 00 84 */	b lbl_8013F754
lbl_8013F6D4:
/* 8013F6D4 0013C634  C0 02 9B 60 */	lfs f0, lbl_805AB880@sda21(r2)
/* 8013F6D8 0013C638  39 40 00 00 */	li r10, 0
/* 8013F6DC 0013C63C  38 01 00 3C */	addi r0, r1, 0x3c
/* 8013F6E0 0013C640  7F 83 E3 78 */	mr r3, r28
/* 8013F6E4 0013C644  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8013F6E8 0013C648  7F A5 EB 78 */	mr r5, r29
/* 8013F6EC 0013C64C  38 81 00 CC */	addi r4, r1, 0xcc
/* 8013F6F0 0013C650  39 3C 06 40 */	addi r9, r28, 0x640
/* 8013F6F4 0013C654  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8013F6F8 0013C658  38 C0 00 02 */	li r6, 2
/* 8013F6FC 0013C65C  38 E0 50 00 */	li r7, 0x5000
/* 8013F700 0013C660  39 00 00 01 */	li r8, 1
/* 8013F704 0013C664  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8013F708 0013C668  91 41 00 08 */	stw r10, 8(r1)
/* 8013F70C 0013C66C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013F710 0013C670  A1 5C 06 50 */	lhz r10, 0x650(r28)
/* 8013F714 0013C674  4B F3 82 E5 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 8013F718 0013C678  28 03 00 00 */	cmplwi r3, 0
/* 8013F71C 0013C67C  41 82 00 E8 */	beq lbl_8013F804
/* 8013F720 0013C680  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 8013F724 0013C684  C0 1C 06 2C */	lfs f0, 0x62c(r28)
/* 8013F728 0013C688  60 00 10 00 */	ori r0, r0, 0x1000
/* 8013F72C 0013C68C  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 8013F730 0013C690  D0 03 01 50 */	stfs f0, 0x150(r3)
/* 8013F734 0013C694  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 8013F738 0013C698  C0 1C 06 2C */	lfs f0, 0x62c(r28)
/* 8013F73C 0013C69C  60 00 40 00 */	ori r0, r0, 0x4000
/* 8013F740 0013C6A0  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 8013F744 0013C6A4  D0 03 01 54 */	stfs f0, 0x154(r3)
/* 8013F748 0013C6A8  C0 1C 06 34 */	lfs f0, 0x634(r28)
/* 8013F74C 0013C6AC  D0 03 02 E0 */	stfs f0, 0x2e0(r3)
/* 8013F750 0013C6B0  48 00 00 B4 */	b lbl_8013F804
lbl_8013F754:
/* 8013F754 0013C6B4  C0 02 9B 60 */	lfs f0, lbl_805AB880@sda21(r2)
/* 8013F758 0013C6B8  39 40 00 00 */	li r10, 0
/* 8013F75C 0013C6BC  38 01 00 30 */	addi r0, r1, 0x30
/* 8013F760 0013C6C0  7F 83 E3 78 */	mr r3, r28
/* 8013F764 0013C6C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8013F768 0013C6C8  7F A5 EB 78 */	mr r5, r29
/* 8013F76C 0013C6CC  38 81 00 CC */	addi r4, r1, 0xcc
/* 8013F770 0013C6D0  39 3C 06 40 */	addi r9, r28, 0x640
/* 8013F774 0013C6D4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8013F778 0013C6D8  38 C0 00 05 */	li r6, 5
/* 8013F77C 0013C6DC  38 E0 60 00 */	li r7, 0x6000
/* 8013F780 0013C6E0  39 00 00 01 */	li r8, 1
/* 8013F784 0013C6E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8013F788 0013C6E8  91 41 00 08 */	stw r10, 8(r1)
/* 8013F78C 0013C6EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013F790 0013C6F0  A1 5C 06 50 */	lhz r10, 0x650(r28)
/* 8013F794 0013C6F4  4B F3 82 65 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 8013F798 0013C6F8  7C 7B 1B 79 */	or. r27, r3, r3
/* 8013F79C 0013C6FC  41 82 00 68 */	beq lbl_8013F804
/* 8013F7A0 0013C700  7F 83 E3 78 */	mr r3, r28
/* 8013F7A4 0013C704  81 9C 00 00 */	lwz r12, 0(r28)
/* 8013F7A8 0013C708  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 8013F7AC 0013C70C  7D 89 03 A6 */	mtctr r12
/* 8013F7B0 0013C710  4E 80 04 21 */	bctrl
/* 8013F7B4 0013C714  48 0D C7 A1 */	bl GetProjectileSpeed__15CProjectileInfoCFv
/* 8013F7B8 0013C718  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 8013F7BC 0013C71C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013F7C0 0013C720  40 81 00 14 */	ble lbl_8013F7D4
/* 8013F7C4 0013C724  C0 02 9B 64 */	lfs f0, lbl_805AB884@sda21(r2)
/* 8013F7C8 0013C728  7F 63 DB 78 */	mr r3, r27
/* 8013F7CC 0013C72C  EC 20 08 24 */	fdivs f1, f0, f1
/* 8013F7D0 0013C730  4B FC 2A 49 */	bl sub_80102218
lbl_8013F7D4:
/* 8013F7D4 0013C734  80 1B 00 E8 */	lwz r0, 0xe8(r27)
/* 8013F7D8 0013C738  C0 1C 06 2C */	lfs f0, 0x62c(r28)
/* 8013F7DC 0013C73C  60 00 10 00 */	ori r0, r0, 0x1000
/* 8013F7E0 0013C740  90 1B 00 E8 */	stw r0, 0xe8(r27)
/* 8013F7E4 0013C744  D0 1B 01 50 */	stfs f0, 0x150(r27)
/* 8013F7E8 0013C748  80 1B 00 E8 */	lwz r0, 0xe8(r27)
/* 8013F7EC 0013C74C  C0 1C 06 2C */	lfs f0, 0x62c(r28)
/* 8013F7F0 0013C750  60 00 40 00 */	ori r0, r0, 0x4000
/* 8013F7F4 0013C754  90 1B 00 E8 */	stw r0, 0xe8(r27)
/* 8013F7F8 0013C758  D0 1B 01 54 */	stfs f0, 0x154(r27)
/* 8013F7FC 0013C75C  C0 1C 06 34 */	lfs f0, 0x634(r28)
/* 8013F800 0013C760  D0 1B 02 E0 */	stfs f0, 0x2e0(r27)
lbl_8013F804:
/* 8013F804 0013C764  38 80 00 01 */	li r4, 1
/* 8013F808 0013C768  48 00 01 24 */	b lbl_8013F92C
lbl_8013F80C:
/* 8013F80C 0013C76C  88 1C 06 64 */	lbz r0, 0x664(r28)
/* 8013F810 0013C770  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8013F814 0013C774  41 82 00 4C */	beq lbl_8013F860
/* 8013F818 0013C778  C0 02 9B 68 */	lfs f0, lbl_805AB888@sda21(r2)
/* 8013F81C 0013C77C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8013F820 0013C780  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 8013F824 0013C784  A9 22 C5 FA */	lha r9, lbl_805AE31A@sda21(r2)
/* 8013F828 0013C788  D0 1C 03 E8 */	stfs f0, 0x3e8(r28)
/* 8013F82C 0013C78C  38 61 00 14 */	addi r3, r1, 0x14
/* 8013F830 0013C790  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8013F834 0013C794  38 A1 00 24 */	addi r5, r1, 0x24
/* 8013F838 0013C798  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 8013F83C 0013C79C  38 E0 00 00 */	li r7, 0
/* 8013F840 0013C7A0  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 8013F844 0013C7A4  39 00 00 00 */	li r8, 0
/* 8013F848 0013C7A8  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8013F84C 0013C7AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8013F850 0013C7B0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8013F854 0013C7B4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8013F858 0013C7B8  A0 9C 06 30 */	lhz r4, 0x630(r28)
/* 8013F85C 0013C7BC  48 1A AA 55 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
lbl_8013F860:
/* 8013F860 0013C7C0  7F 83 E3 78 */	mr r3, r28
/* 8013F864 0013C7C4  7F A5 EB 78 */	mr r5, r29
/* 8013F868 0013C7C8  38 80 00 28 */	li r4, 0x28
/* 8013F86C 0013C7CC  4B F1 4A E5 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8013F870 0013C7D0  88 1C 06 64 */	lbz r0, 0x664(r28)
/* 8013F874 0013C7D4  38 60 00 00 */	li r3, 0
/* 8013F878 0013C7D8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8013F87C 0013C7DC  38 60 00 01 */	li r3, 1
/* 8013F880 0013C7E0  98 1C 06 64 */	stb r0, 0x664(r28)
/* 8013F884 0013C7E4  38 80 00 01 */	li r4, 1
/* 8013F888 0013C7E8  88 1C 06 64 */	lbz r0, 0x664(r28)
/* 8013F88C 0013C7EC  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8013F890 0013C7F0  98 1C 06 64 */	stb r0, 0x664(r28)
/* 8013F894 0013C7F4  48 00 00 98 */	b lbl_8013F92C
lbl_8013F898:
/* 8013F898 0013C7F8  88 1C 06 64 */	lbz r0, 0x664(r28)
/* 8013F89C 0013C7FC  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8013F8A0 0013C800  41 82 00 4C */	beq lbl_8013F8EC
/* 8013F8A4 0013C804  C0 02 9B 6C */	lfs f0, lbl_805AB88C@sda21(r2)
/* 8013F8A8 0013C808  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8013F8AC 0013C80C  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 8013F8B0 0013C810  A9 22 C5 FA */	lha r9, lbl_805AE31A@sda21(r2)
/* 8013F8B4 0013C814  D0 1C 03 E8 */	stfs f0, 0x3e8(r28)
/* 8013F8B8 0013C818  38 61 00 10 */	addi r3, r1, 0x10
/* 8013F8BC 0013C81C  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8013F8C0 0013C820  38 A1 00 18 */	addi r5, r1, 0x18
/* 8013F8C4 0013C824  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 8013F8C8 0013C828  38 E0 00 00 */	li r7, 0
/* 8013F8CC 0013C82C  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 8013F8D0 0013C830  39 00 00 00 */	li r8, 0
/* 8013F8D4 0013C834  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8013F8D8 0013C838  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8013F8DC 0013C83C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8013F8E0 0013C840  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8013F8E4 0013C844  A0 9C 06 32 */	lhz r4, 0x632(r28)
/* 8013F8E8 0013C848  48 1A A9 C9 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
lbl_8013F8EC:
/* 8013F8EC 0013C84C  7F 83 E3 78 */	mr r3, r28
/* 8013F8F0 0013C850  7F A5 EB 78 */	mr r5, r29
/* 8013F8F4 0013C854  38 80 00 28 */	li r4, 0x28
/* 8013F8F8 0013C858  4B F1 46 89 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8013F8FC 0013C85C  88 1C 06 64 */	lbz r0, 0x664(r28)
/* 8013F900 0013C860  38 60 00 00 */	li r3, 0
/* 8013F904 0013C864  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8013F908 0013C868  38 60 00 01 */	li r3, 1
/* 8013F90C 0013C86C  98 1C 06 64 */	stb r0, 0x664(r28)
/* 8013F910 0013C870  38 80 00 01 */	li r4, 1
/* 8013F914 0013C874  88 1C 06 64 */	lbz r0, 0x664(r28)
/* 8013F918 0013C878  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8013F91C 0013C87C  98 1C 06 64 */	stb r0, 0x664(r28)
/* 8013F920 0013C880  88 1C 06 65 */	lbz r0, 0x665(r28)
/* 8013F924 0013C884  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8013F928 0013C888  98 1C 06 65 */	stb r0, 0x665(r28)
lbl_8013F92C:
/* 8013F92C 0013C88C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8013F930 0013C890  40 82 00 1C */	bne lbl_8013F94C
/* 8013F934 0013C894  FC 20 F8 90 */	fmr f1, f31
/* 8013F938 0013C898  7F 83 E3 78 */	mr r3, r28
/* 8013F93C 0013C89C  7F A4 EB 78 */	mr r4, r29
/* 8013F940 0013C8A0  7F C5 F3 78 */	mr r5, r30
/* 8013F944 0013C8A4  7F E6 FB 78 */	mr r6, r31
/* 8013F948 0013C8A8  4B F3 95 69 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_8013F94C:
/* 8013F94C 0013C8AC  2C 1F 00 06 */	cmpwi r31, 6
/* 8013F950 0013C8B0  40 82 00 0C */	bne lbl_8013F95C
/* 8013F954 0013C8B4  C0 02 9B 70 */	lfs f0, lbl_805AB890@sda21(r2)
/* 8013F958 0013C8B8  D0 1C 03 E8 */	stfs f0, 0x3e8(r28)
lbl_8013F95C:
/* 8013F95C 0013C8BC  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 8013F960 0013C8C0  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 8013F964 0013C8C4  BB 61 01 3C */	lmw r27, 0x13c(r1)
/* 8013F968 0013C8C8  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8013F96C 0013C8CC  7C 08 03 A6 */	mtlr r0
/* 8013F970 0013C8D0  38 21 01 60 */	addi r1, r1, 0x160
/* 8013F974 0013C8D4  4E 80 00 20 */	blr

.global ProjectileInfo__11CChozoGhostFv
ProjectileInfo__11CChozoGhostFv:
/* 8013F978 0013C8D8  80 03 06 7C */	lwz r0, 0x67c(r3)
/* 8013F97C 0013C8DC  2C 00 00 02 */	cmpwi r0, 2
/* 8013F980 0013C8E0  40 82 00 0C */	bne lbl_8013F98C
/* 8013F984 0013C8E4  38 63 05 78 */	addi r3, r3, 0x578
/* 8013F988 0013C8E8  4E 80 00 20 */	blr
lbl_8013F98C:
/* 8013F98C 0013C8EC  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 8013F990 0013C8F0  4E 80 00 20 */	blr

.global Dead__11CChozoGhostFR13CStateManager9EStateMsgf
Dead__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 8013F994 0013C8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F998 0013C8F8  7C 08 02 A6 */	mflr r0
/* 8013F99C 0013C8FC  2C 05 00 01 */	cmpwi r5, 1
/* 8013F9A0 0013C900  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F9A4 0013C904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F9A8 0013C908  7C 7F 1B 78 */	mr r31, r3
/* 8013F9AC 0013C90C  41 82 00 58 */	beq lbl_8013FA04
/* 8013F9B0 0013C910  40 80 00 74 */	bge lbl_8013FA24
/* 8013F9B4 0013C914  2C 05 00 00 */	cmpwi r5, 0
/* 8013F9B8 0013C918  40 80 00 08 */	bge lbl_8013F9C0
/* 8013F9BC 0013C91C  48 00 00 68 */	b lbl_8013FA24
lbl_8013F9C0:
/* 8013F9C0 0013C920  38 BF 06 74 */	addi r5, r31, 0x674
/* 8013F9C4 0013C924  4B F3 CE 99 */	bl ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId
/* 8013F9C8 0013C928  C0 02 9B 74 */	lfs f0, lbl_805AB894@sda21(r2)
/* 8013F9CC 0013C92C  38 A0 00 00 */	li r5, 0
/* 8013F9D0 0013C930  38 7F 06 8C */	addi r3, r31, 0x68c
/* 8013F9D4 0013C934  38 80 00 00 */	li r4, 0
/* 8013F9D8 0013C938  D0 1F 03 E8 */	stfs f0, 0x3e8(r31)
/* 8013F9DC 0013C93C  88 1F 06 64 */	lbz r0, 0x664(r31)
/* 8013F9E0 0013C940  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 8013F9E4 0013C944  98 1F 06 64 */	stb r0, 0x664(r31)
/* 8013F9E8 0013C948  88 1F 06 64 */	lbz r0, 0x664(r31)
/* 8013F9EC 0013C94C  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8013F9F0 0013C950  98 1F 06 64 */	stb r0, 0x664(r31)
/* 8013F9F4 0013C954  48 03 58 31 */	bl SetActive__13CBoneTrackingFb
/* 8013F9F8 0013C958  7F E3 FB 78 */	mr r3, r31
/* 8013F9FC 0013C95C  4B FD B9 7D */	bl Stop__13CPhysicsActorFv
/* 8013FA00 0013C960  48 00 00 24 */	b lbl_8013FA24
lbl_8013FA04:
/* 8013FA04 0013C964  4B FD B9 75 */	bl Stop__13CPhysicsActorFv
/* 8013FA08 0013C968  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8013FA0C 0013C96C  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 8013FA10 0013C970  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 8013FA14 0013C974  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013FA18 0013C978  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8013FA1C 0013C97C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013FA20 0013C980  D0 1F 01 58 */	stfs f0, 0x158(r31)
lbl_8013FA24:
/* 8013FA24 0013C984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013FA28 0013C988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013FA2C 0013C98C  7C 08 03 A6 */	mtlr r0
/* 8013FA30 0013C990  38 21 00 10 */	addi r1, r1, 0x10
/* 8013FA34 0013C994  4E 80 00 20 */	blr

.global Deactivate__11CChozoGhostFR13CStateManager9EStateMsgf
Deactivate__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 8013FA38 0013C998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013FA3C 0013C99C  7C 08 02 A6 */	mflr r0
/* 8013FA40 0013C9A0  2C 05 00 01 */	cmpwi r5, 1
/* 8013FA44 0013C9A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013FA48 0013C9A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013FA4C 0013C9AC  7C 9F 23 78 */	mr r31, r4
/* 8013FA50 0013C9B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013FA54 0013C9B4  7C 7E 1B 78 */	mr r30, r3
/* 8013FA58 0013C9B8  41 82 00 54 */	beq lbl_8013FAAC
/* 8013FA5C 0013C9BC  40 80 00 10 */	bge lbl_8013FA6C
/* 8013FA60 0013C9C0  2C 05 00 00 */	cmpwi r5, 0
/* 8013FA64 0013C9C4  40 80 00 14 */	bge lbl_8013FA78
/* 8013FA68 0013C9C8  48 00 00 98 */	b lbl_8013FB00
lbl_8013FA6C:
/* 8013FA6C 0013C9CC  2C 05 00 03 */	cmpwi r5, 3
/* 8013FA70 0013C9D0  40 80 00 90 */	bge lbl_8013FB00
/* 8013FA74 0013C9D4  48 00 00 84 */	b lbl_8013FAF8
lbl_8013FA78:
/* 8013FA78 0013C9D8  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8013FA7C 0013C9DC  38 80 00 00 */	li r4, 0
/* 8013FA80 0013C9E0  48 03 57 A5 */	bl SetActive__13CBoneTrackingFb
/* 8013FA84 0013C9E4  7F C3 F3 78 */	mr r3, r30
/* 8013FA88 0013C9E8  7F E4 FB 78 */	mr r4, r31
/* 8013FA8C 0013C9EC  38 BE 06 74 */	addi r5, r30, 0x674
/* 8013FA90 0013C9F0  4B F3 CD CD */	bl ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId
/* 8013FA94 0013C9F4  38 60 00 01 */	li r3, 1
/* 8013FA98 0013C9F8  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 8013FA9C 0013C9FC  88 1E 06 65 */	lbz r0, 0x665(r30)
/* 8013FAA0 0013CA00  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8013FAA4 0013CA04  98 1E 06 65 */	stb r0, 0x665(r30)
/* 8013FAA8 0013CA08  48 00 00 58 */	b lbl_8013FB00
lbl_8013FAAC:
/* 8013FAAC 0013CA0C  3C A0 80 3E */	lis r5, lbl_803E190C@ha
/* 8013FAB0 0013CA10  38 C1 00 08 */	addi r6, r1, 8
/* 8013FAB4 0013CA14  39 45 19 0C */	addi r10, r5, lbl_803E190C@l
/* 8013FAB8 0013CA18  38 A0 00 0C */	li r5, 0xc
/* 8013FABC 0013CA1C  81 2A 00 00 */	lwz r9, 0(r10)
/* 8013FAC0 0013CA20  38 E0 00 01 */	li r7, 1
/* 8013FAC4 0013CA24  81 0A 00 04 */	lwz r8, 4(r10)
/* 8013FAC8 0013CA28  80 0A 00 08 */	lwz r0, 8(r10)
/* 8013FACC 0013CA2C  91 21 00 08 */	stw r9, 8(r1)
/* 8013FAD0 0013CA30  91 01 00 0C */	stw r8, 0xc(r1)
/* 8013FAD4 0013CA34  90 01 00 10 */	stw r0, 0x10(r1)
/* 8013FAD8 0013CA38  4B F3 CC DD */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8013FADC 0013CA3C  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 8013FAE0 0013CA40  2C 00 00 02 */	cmpwi r0, 2
/* 8013FAE4 0013CA44  40 82 00 1C */	bne lbl_8013FB00
/* 8013FAE8 0013CA48  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8013FAEC 0013CA4C  38 80 00 01 */	li r4, 1
/* 8013FAF0 0013CA50  4B FF AE E9 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8013FAF4 0013CA54  48 00 00 0C */	b lbl_8013FB00
lbl_8013FAF8:
/* 8013FAF8 0013CA58  38 00 00 00 */	li r0, 0
/* 8013FAFC 0013CA5C  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_8013FB00:
/* 8013FB00 0013CA60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013FB04 0013CA64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013FB08 0013CA68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8013FB0C 0013CA6C  7C 08 03 A6 */	mtlr r0
/* 8013FB10 0013CA70  38 21 00 20 */	addi r1, r1, 0x20
/* 8013FB14 0013CA74  4E 80 00 20 */	blr

.global AggressionCheck__11CChozoGhostFR13CStateManagerf
AggressionCheck__11CChozoGhostFR13CStateManagerf:
/* 8013FB18 0013CA78  88 03 06 65 */	lbz r0, 0x665(r3)
/* 8013FB1C 0013CA7C  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 8013FB20 0013CA80  4E 80 00 20 */	blr

.global ShouldFlinch__11CChozoGhostFR13CStateManagerf
ShouldFlinch__11CChozoGhostFR13CStateManagerf:
/* 8013FB24 0013CA84  88 03 06 64 */	lbz r0, 0x664(r3)
/* 8013FB28 0013CA88  54 03 D7 FE */	rlwinm r3, r0, 0x1a, 0x1f, 0x1f
/* 8013FB2C 0013CA8C  4E 80 00 20 */	blr

.global Leash__11CChozoGhostFR13CStateManagerf
Leash__11CChozoGhostFR13CStateManagerf:
/* 8013FB30 0013CA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013FB34 0013CA94  7C 08 02 A6 */	mflr r0
/* 8013FB38 0013CA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013FB3C 0013CA9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013FB40 0013CAA0  3B E0 00 00 */	li r31, 0
/* 8013FB44 0013CAA4  88 03 06 65 */	lbz r0, 0x665(r3)
/* 8013FB48 0013CAA8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8013FB4C 0013CAAC  40 82 00 10 */	bne lbl_8013FB5C
/* 8013FB50 0013CAB0  48 0B 67 95 */	bl Leash__10CPatternedFR13CStateManagerf
/* 8013FB54 0013CAB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013FB58 0013CAB8  41 82 00 08 */	beq lbl_8013FB60
lbl_8013FB5C:
/* 8013FB5C 0013CABC  3B E0 00 01 */	li r31, 1
lbl_8013FB60:
/* 8013FB60 0013CAC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013FB64 0013CAC4  7F E3 FB 78 */	mr r3, r31
/* 8013FB68 0013CAC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013FB6C 0013CACC  7C 08 03 A6 */	mtlr r0
/* 8013FB70 0013CAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8013FB74 0013CAD4  4E 80 00 20 */	blr

.global sub_8013fb78
sub_8013fb78:
/* 8013FB78 0013CAD8  80 03 06 80 */	lwz r0, 0x680(r3)
/* 8013FB7C 0013CADC  20 00 00 03 */	subfic r0, r0, 3
/* 8013FB80 0013CAE0  7C 00 00 34 */	cntlzw r0, r0
/* 8013FB84 0013CAE4  54 03 D9 7E */	srwi r3, r0, 5
/* 8013FB88 0013CAE8  4E 80 00 20 */	blr

.global Lurk__11CChozoGhostFR13CStateManager9EStateMsgf
Lurk__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 8013FB8C 0013CAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013FB90 0013CAF0  7C 08 02 A6 */	mflr r0
/* 8013FB94 0013CAF4  2C 05 00 01 */	cmpwi r5, 1
/* 8013FB98 0013CAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013FB9C 0013CAFC  41 82 00 20 */	beq lbl_8013FBBC
/* 8013FBA0 0013CB00  40 80 00 28 */	bge lbl_8013FBC8
/* 8013FBA4 0013CB04  2C 05 00 00 */	cmpwi r5, 0
/* 8013FBA8 0013CB08  40 80 00 08 */	bge lbl_8013FBB0
/* 8013FBAC 0013CB0C  48 00 00 1C */	b lbl_8013FBC8
lbl_8013FBB0:
/* 8013FBB0 0013CB10  C0 03 06 84 */	lfs f0, 0x684(r3)
/* 8013FBB4 0013CB14  D0 03 03 40 */	stfs f0, 0x340(r3)
/* 8013FBB8 0013CB18  48 00 00 10 */	b lbl_8013FBC8
lbl_8013FBBC:
/* 8013FBBC 0013CB1C  FC 40 08 90 */	fmr f2, f1
/* 8013FBC0 0013CB20  C0 23 06 78 */	lfs f1, 0x678(r3)
/* 8013FBC4 0013CB24  48 00 19 D9 */	bl sub_8014159c
lbl_8013FBC8:
/* 8013FBC8 0013CB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013FBCC 0013CB2C  7C 08 03 A6 */	mtlr r0
/* 8013FBD0 0013CB30  38 21 00 10 */	addi r1, r1, 0x10
/* 8013FBD4 0013CB34  4E 80 00 20 */	blr

.global Hurled__11CChozoGhostFR13CStateManager9EStateMsgf
Hurled__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 8013FBD8 0013CB38  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8013FBDC 0013CB3C  7C 08 02 A6 */	mflr r0
/* 8013FBE0 0013CB40  90 01 00 94 */	stw r0, 0x94(r1)
/* 8013FBE4 0013CB44  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8013FBE8 0013CB48  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8013FBEC 0013CB4C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8013FBF0 0013CB50  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8013FBF4 0013CB54  2C 05 00 01 */	cmpwi r5, 1
/* 8013FBF8 0013CB58  7C 7F 1B 78 */	mr r31, r3
/* 8013FBFC 0013CB5C  7C 9E 23 78 */	mr r30, r4
/* 8013FC00 0013CB60  41 82 00 50 */	beq lbl_8013FC50
/* 8013FC04 0013CB64  40 80 00 10 */	bge lbl_8013FC14
/* 8013FC08 0013CB68  2C 05 00 00 */	cmpwi r5, 0
/* 8013FC0C 0013CB6C  40 80 00 14 */	bge lbl_8013FC20
/* 8013FC10 0013CB70  48 00 02 10 */	b lbl_8013FE20
lbl_8013FC14:
/* 8013FC14 0013CB74  2C 05 00 03 */	cmpwi r5, 3
/* 8013FC18 0013CB78  40 80 02 08 */	bge lbl_8013FE20
/* 8013FC1C 0013CB7C  48 00 01 D8 */	b lbl_8013FDF4
lbl_8013FC20:
/* 8013FC20 0013CB80  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8013FC24 0013CB84  38 80 00 00 */	li r4, 0
/* 8013FC28 0013CB88  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8013FC2C 0013CB8C  38 60 00 01 */	li r3, 1
/* 8013FC30 0013CB90  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8013FC34 0013CB94  88 1F 06 64 */	lbz r0, 0x664(r31)
/* 8013FC38 0013CB98  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8013FC3C 0013CB9C  98 1F 06 64 */	stb r0, 0x664(r31)
/* 8013FC40 0013CBA0  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 8013FC44 0013CBA4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8013FC48 0013CBA8  98 1F 06 65 */	stb r0, 0x665(r31)
/* 8013FC4C 0013CBAC  48 00 01 D4 */	b lbl_8013FE20
lbl_8013FC50:
/* 8013FC50 0013CBB0  C0 02 9B 68 */	lfs f0, lbl_805AB888@sda21(r2)
/* 8013FC54 0013CBB4  D0 1F 03 E8 */	stfs f0, 0x3e8(r31)
/* 8013FC58 0013CBB8  88 1F 06 64 */	lbz r0, 0x664(r31)
/* 8013FC5C 0013CBBC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8013FC60 0013CBC0  40 82 01 C0 */	bne lbl_8013FE20
/* 8013FC64 0013CBC4  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 8013FC68 0013CBC8  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 8013FC6C 0013CBCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013FC70 0013CBD0  40 80 01 10 */	bge lbl_8013FD80
/* 8013FC74 0013CBD4  80 AD 8B B4 */	lwz r5, lbl_805A7774@sda21(r13)
/* 8013FC78 0013CBD8  38 60 00 00 */	li r3, 0
/* 8013FC7C 0013CBDC  38 80 00 01 */	li r4, 1
/* 8013FC80 0013CBE0  48 24 A2 75 */	bl __shl2i
/* 8013FC84 0013CBE4  38 A0 00 00 */	li r5, 0
/* 8013FC88 0013CBE8  38 00 00 01 */	li r0, 1
/* 8013FC8C 0013CBEC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8013FC90 0013CBF0  3C 80 80 5A */	lis r4, lbl_805A66F4@ha
/* 8013FC94 0013CBF4  38 E4 66 F4 */	addi r7, r4, lbl_805A66F4@l
/* 8013FC98 0013CBF8  C0 22 9B 68 */	lfs f1, lbl_805AB888@sda21(r2)
/* 8013FC9C 0013CBFC  90 61 00 28 */	stw r3, 0x28(r1)
/* 8013FCA0 0013CC00  3C 80 80 5A */	lis r4, lbl_805A6700@ha
/* 8013FCA4 0013CC04  C0 A7 00 04 */	lfs f5, 4(r7)
/* 8013FCA8 0013CC08  38 C4 67 00 */	addi r6, r4, lbl_805A6700@l
/* 8013FCAC 0013CC0C  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8013FCB0 0013CC10  7F C4 F3 78 */	mr r4, r30
/* 8013FCB4 0013CC14  C0 67 00 08 */	lfs f3, 8(r7)
/* 8013FCB8 0013CC18  38 61 00 40 */	addi r3, r1, 0x40
/* 8013FCBC 0013CC1C  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8013FCC0 0013CC20  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8013FCC4 0013CC24  C0 07 00 00 */	lfs f0, 0(r7)
/* 8013FCC8 0013CC28  38 E1 00 28 */	addi r7, r1, 0x28
/* 8013FCCC 0013CC2C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8013FCD0 0013CC30  C0 DF 00 50 */	lfs f6, 0x50(r31)
/* 8013FCD4 0013CC34  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8013FCD8 0013CC38  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8013FCDC 0013CC3C  EC A6 28 2A */	fadds f5, f6, f5
/* 8013FCE0 0013CC40  EC 64 18 2A */	fadds f3, f4, f3
/* 8013FCE4 0013CC44  EC 02 00 2A */	fadds f0, f2, f0
/* 8013FCE8 0013CC48  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8013FCEC 0013CC4C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8013FCF0 0013CC50  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8013FCF4 0013CC54  4B F0 D2 A5 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8013FCF8 0013CC58  88 01 00 60 */	lbz r0, 0x60(r1)
/* 8013FCFC 0013CC5C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8013FD00 0013CC60  28 00 00 00 */	cmplwi r0, 0
/* 8013FD04 0013CC64  C3 E1 00 4C */	lfs f31, 0x4c(r1)
/* 8013FD08 0013CC68  41 82 00 78 */	beq lbl_8013FD80
/* 8013FD0C 0013CC6C  C0 02 9B 78 */	lfs f0, lbl_805AB898@sda21(r2)
/* 8013FD10 0013CC70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013FD14 0013CC74  40 80 00 6C */	bge lbl_8013FD80
/* 8013FD18 0013CC78  88 1F 06 64 */	lbz r0, 0x664(r31)
/* 8013FD1C 0013CC7C  38 60 00 01 */	li r3, 1
/* 8013FD20 0013CC80  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8013FD24 0013CC84  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8013FD28 0013CC88  98 1F 06 64 */	stb r0, 0x664(r31)
/* 8013FD2C 0013CC8C  38 A3 66 A0 */	addi r5, r3, skZero3f@l
/* 8013FD30 0013CC90  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 8013FD34 0013CC94  7F E3 FB 78 */	mr r3, r31
/* 8013FD38 0013CC98  C0 25 00 00 */	lfs f1, 0(r5)
/* 8013FD3C 0013CC9C  38 81 00 10 */	addi r4, r1, 0x10
/* 8013FD40 0013CCA0  D0 3F 01 50 */	stfs f1, 0x150(r31)
/* 8013FD44 0013CCA4  C0 25 00 04 */	lfs f1, 4(r5)
/* 8013FD48 0013CCA8  D0 3F 01 54 */	stfs f1, 0x154(r31)
/* 8013FD4C 0013CCAC  C0 25 00 08 */	lfs f1, 8(r5)
/* 8013FD50 0013CCB0  D0 3F 01 58 */	stfs f1, 0x158(r31)
/* 8013FD54 0013CCB4  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 8013FD58 0013CCB8  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 8013FD5C 0013CCBC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8013FD60 0013CCC0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8013FD64 0013CCC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8013FD68 0013CCC8  4B FD AF 39 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8013FD6C 0013CCCC  D3 FF 06 78 */	stfs f31, 0x678(r31)
/* 8013FD70 0013CCD0  38 60 00 01 */	li r3, 1
/* 8013FD74 0013CCD4  88 1F 03 48 */	lbz r0, 0x348(r31)
/* 8013FD78 0013CCD8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8013FD7C 0013CCDC  98 1F 03 48 */	stb r0, 0x348(r31)
lbl_8013FD80:
/* 8013FD80 0013CCE0  88 1F 06 64 */	lbz r0, 0x664(r31)
/* 8013FD84 0013CCE4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8013FD88 0013CCE8  40 82 00 98 */	bne lbl_8013FE20
/* 8013FD8C 0013CCEC  C0 3F 03 38 */	lfs f1, 0x338(r31)
/* 8013FD90 0013CCF0  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 8013FD94 0013CCF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013FD98 0013CCF8  40 81 00 88 */	ble lbl_8013FE20
/* 8013FD9C 0013CCFC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8013FDA0 0013CD00  38 00 00 0A */	li r0, 0xa
/* 8013FDA4 0013CD04  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 8013FDA8 0013CD08  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013FDAC 0013CD0C  38 81 00 08 */	addi r4, r1, 8
/* 8013FDB0 0013CD10  90 61 00 08 */	stw r3, 8(r1)
/* 8013FDB4 0013CD14  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8013FDB8 0013CD18  38 63 00 04 */	addi r3, r3, 4
/* 8013FDBC 0013CD1C  4B FF 19 FD */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 8013FDC0 0013CD20  34 01 00 08 */	addic. r0, r1, 8
/* 8013FDC4 0013CD24  41 82 00 10 */	beq lbl_8013FDD4
/* 8013FDC8 0013CD28  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8013FDCC 0013CD2C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8013FDD0 0013CD30  90 01 00 08 */	stw r0, 8(r1)
lbl_8013FDD4:
/* 8013FDD4 0013CD34  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8013FDD8 0013CD38  38 80 00 02 */	li r4, 2
/* 8013FDDC 0013CD3C  4B FF AB FD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8013FDE0 0013CD40  88 1F 03 48 */	lbz r0, 0x348(r31)
/* 8013FDE4 0013CD44  38 60 00 01 */	li r3, 1
/* 8013FDE8 0013CD48  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8013FDEC 0013CD4C  98 1F 03 48 */	stb r0, 0x348(r31)
/* 8013FDF0 0013CD50  48 00 00 30 */	b lbl_8013FE20
lbl_8013FDF4:
/* 8013FDF4 0013CD54  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8013FDF8 0013CD58  38 60 00 01 */	li r3, 1
/* 8013FDFC 0013CD5C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8013FE00 0013CD60  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8013FE04 0013CD64  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8013FE08 0013CD68  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 8013FE0C 0013CD6C  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 8013FE10 0013CD70  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013FE14 0013CD74  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8013FE18 0013CD78  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013FE1C 0013CD7C  D0 1F 01 58 */	stfs f0, 0x158(r31)
lbl_8013FE20:
/* 8013FE20 0013CD80  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8013FE24 0013CD84  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8013FE28 0013CD88  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8013FE2C 0013CD8C  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8013FE30 0013CD90  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8013FE34 0013CD94  7C 08 03 A6 */	mtlr r0
/* 8013FE38 0013CD98  38 21 00 90 */	addi r1, r1, 0x90
/* 8013FE3C 0013CD9C  4E 80 00 20 */	blr

.global Taunt__11CChozoGhostFR13CStateManager9EStateMsgf
Taunt__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 8013FE40 0013CDA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013FE44 0013CDA4  7C 08 02 A6 */	mflr r0
/* 8013FE48 0013CDA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013FE4C 0013CDAC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8013FE50 0013CDB0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8013FE54 0013CDB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013FE58 0013CDB8  FF E0 08 90 */	fmr f31, f1
/* 8013FE5C 0013CDBC  2C 05 00 01 */	cmpwi r5, 1
/* 8013FE60 0013CDC0  7C 7F 1B 78 */	mr r31, r3
/* 8013FE64 0013CDC4  41 82 00 2C */	beq lbl_8013FE90
/* 8013FE68 0013CDC8  40 80 00 10 */	bge lbl_8013FE78
/* 8013FE6C 0013CDCC  2C 05 00 00 */	cmpwi r5, 0
/* 8013FE70 0013CDD0  40 80 00 14 */	bge lbl_8013FE84
/* 8013FE74 0013CDD4  48 00 00 74 */	b lbl_8013FEE8
lbl_8013FE78:
/* 8013FE78 0013CDD8  2C 05 00 03 */	cmpwi r5, 3
/* 8013FE7C 0013CDDC  40 80 00 6C */	bge lbl_8013FEE8
/* 8013FE80 0013CDE0  48 00 00 54 */	b lbl_8013FED4
lbl_8013FE84:
/* 8013FE84 0013CDE4  38 00 00 01 */	li r0, 1
/* 8013FE88 0013CDE8  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 8013FE8C 0013CDEC  48 00 00 5C */	b lbl_8013FEE8
lbl_8013FE90:
/* 8013FE90 0013CDF0  3C A0 80 3E */	lis r5, lbl_803E1900@ha
/* 8013FE94 0013CDF4  38 C1 00 08 */	addi r6, r1, 8
/* 8013FE98 0013CDF8  39 45 19 00 */	addi r10, r5, lbl_803E1900@l
/* 8013FE9C 0013CDFC  38 A0 00 10 */	li r5, 0x10
/* 8013FEA0 0013CE00  81 2A 00 00 */	lwz r9, 0(r10)
/* 8013FEA4 0013CE04  38 E0 00 00 */	li r7, 0
/* 8013FEA8 0013CE08  81 0A 00 04 */	lwz r8, 4(r10)
/* 8013FEAC 0013CE0C  80 0A 00 08 */	lwz r0, 8(r10)
/* 8013FEB0 0013CE10  91 21 00 08 */	stw r9, 8(r1)
/* 8013FEB4 0013CE14  91 01 00 0C */	stw r8, 0xc(r1)
/* 8013FEB8 0013CE18  90 01 00 10 */	stw r0, 0x10(r1)
/* 8013FEBC 0013CE1C  4B F3 C8 F9 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8013FEC0 0013CE20  FC 40 F8 90 */	fmr f2, f31
/* 8013FEC4 0013CE24  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 8013FEC8 0013CE28  7F E3 FB 78 */	mr r3, r31
/* 8013FECC 0013CE2C  48 00 16 D1 */	bl sub_8014159c
/* 8013FED0 0013CE30  48 00 00 18 */	b lbl_8013FEE8
lbl_8013FED4:
/* 8013FED4 0013CE34  38 60 00 00 */	li r3, 0
/* 8013FED8 0013CE38  90 7F 03 2C */	stw r3, 0x32c(r31)
/* 8013FEDC 0013CE3C  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 8013FEE0 0013CE40  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8013FEE4 0013CE44  98 1F 06 65 */	stb r0, 0x665(r31)
lbl_8013FEE8:
/* 8013FEE8 0013CE48  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8013FEEC 0013CE4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013FEF0 0013CE50  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8013FEF4 0013CE54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013FEF8 0013CE58  7C 08 03 A6 */	mtlr r0
/* 8013FEFC 0013CE5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8013FF00 0013CE60  4E 80 00 20 */	blr

.global sub_8013ff04
sub_8013ff04:
/* 8013FF04 0013CE64  80 03 06 80 */	lwz r0, 0x680(r3)
/* 8013FF08 0013CE68  20 00 00 01 */	subfic r0, r0, 1
/* 8013FF0C 0013CE6C  7C 00 00 34 */	cntlzw r0, r0
/* 8013FF10 0013CE70  54 03 D9 7E */	srwi r3, r0, 5
/* 8013FF14 0013CE74  4E 80 00 20 */	blr

.global Shuffle__11CChozoGhostFR13CStateManager9EStateMsgf
Shuffle__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 8013FF18 0013CE78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013FF1C 0013CE7C  7C 08 02 A6 */	mflr r0
/* 8013FF20 0013CE80  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013FF24 0013CE84  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8013FF28 0013CE88  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8013FF2C 0013CE8C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013FF30 0013CE90  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8013FF34 0013CE94  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8013FF38 0013CE98  2C 05 00 00 */	cmpwi r5, 0
/* 8013FF3C 0013CE9C  7C 7F 1B 78 */	mr r31, r3
/* 8013FF40 0013CEA0  7C 9D 23 78 */	mr r29, r4
/* 8013FF44 0013CEA4  41 82 00 08 */	beq lbl_8013FF4C
/* 8013FF48 0013CEA8  48 00 01 28 */	b lbl_80140070
lbl_8013FF4C:
/* 8013FF4C 0013CEAC  48 00 0F 8D */	bl sub_80140ed8
/* 8013FF50 0013CEB0  A0 DF 00 08 */	lhz r6, 8(r31)
/* 8013FF54 0013CEB4  7C 7E 1B 78 */	mr r30, r3
/* 8013FF58 0013CEB8  7F A3 EB 78 */	mr r3, r29
/* 8013FF5C 0013CEBC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8013FF60 0013CEC0  B0 C1 00 18 */	sth r6, 0x18(r1)
/* 8013FF64 0013CEC4  38 A1 00 18 */	addi r5, r1, 0x18
/* 8013FF68 0013CEC8  A0 1F 06 C4 */	lhz r0, 0x6c4(r31)
/* 8013FF6C 0013CECC  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 8013FF70 0013CED0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8013FF74 0013CED4  48 0F A2 0D */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 8013FF78 0013CED8  28 03 00 00 */	cmplwi r3, 0
/* 8013FF7C 0013CEDC  41 82 00 48 */	beq lbl_8013FFC4
/* 8013FF80 0013CEE0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8013FF84 0013CEE4  2C 00 00 02 */	cmpwi r0, 2
/* 8013FF88 0013CEE8  40 82 00 34 */	bne lbl_8013FFBC
/* 8013FF8C 0013CEEC  A0 FF 00 08 */	lhz r7, 8(r31)
/* 8013FF90 0013CEF0  7F A4 EB 78 */	mr r4, r29
/* 8013FF94 0013CEF4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8013FF98 0013CEF8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8013FF9C 0013CEFC  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 8013FFA0 0013CF00  38 60 00 01 */	li r3, 1
/* 8013FFA4 0013CF04  A0 1F 06 C4 */	lhz r0, 0x6c4(r31)
/* 8013FFA8 0013CF08  B0 E1 00 08 */	sth r7, 8(r1)
/* 8013FFAC 0013CF0C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8013FFB0 0013CF10  48 0F A1 09 */	bl CanAcceptAttacker__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueId
/* 8013FFB4 0013CF14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013FFB8 0013CF18  40 82 00 0C */	bne lbl_8013FFC4
lbl_8013FFBC:
/* 8013FFBC 0013CF1C  38 00 00 02 */	li r0, 2
/* 8013FFC0 0013CF20  90 1F 06 80 */	stw r0, 0x680(r31)
lbl_8013FFC4:
/* 8013FFC4 0013CF24  7F E3 FB 78 */	mr r3, r31
/* 8013FFC8 0013CF28  7F A4 EB 78 */	mr r4, r29
/* 8013FFCC 0013CF2C  48 00 0F 0D */	bl sub_80140ed8
/* 8013FFD0 0013CF30  80 9F 06 80 */	lwz r4, 0x680(r31)
/* 8013FFD4 0013CF34  7F A5 EB 78 */	mr r5, r29
/* 8013FFD8 0013CF38  48 00 26 B1 */	bl GetBehave__Q211CChozoGhost13CBehaveChanceCFQ211CChozoGhost11EBehaveTypeR13CStateManager
/* 8013FFDC 0013CF3C  90 7F 06 80 */	stw r3, 0x680(r31)
/* 8013FFE0 0013CF40  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 8013FFE4 0013CF44  2C 00 00 01 */	cmpwi r0, 1
/* 8013FFE8 0013CF48  41 82 00 6C */	beq lbl_80140054
/* 8013FFEC 0013CF4C  40 80 00 10 */	bge lbl_8013FFFC
/* 8013FFF0 0013CF50  2C 00 00 00 */	cmpwi r0, 0
/* 8013FFF4 0013CF54  40 80 00 14 */	bge lbl_80140008
/* 8013FFF8 0013CF58  48 00 00 5C */	b lbl_80140054
lbl_8013FFFC:
/* 8013FFFC 0013CF5C  2C 00 00 03 */	cmpwi r0, 3
/* 80140000 0013CF60  40 80 00 54 */	bge lbl_80140054
/* 80140004 0013CF64  48 00 00 10 */	b lbl_80140014
lbl_80140008:
/* 80140008 0013CF68  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8014000C 0013CF6C  D0 1F 06 84 */	stfs f0, 0x684(r31)
/* 80140010 0013CF70  48 00 00 44 */	b lbl_80140054
lbl_80140014:
/* 80140014 0013CF74  C3 FE 00 18 */	lfs f31, 0x18(r30)
/* 80140018 0013CF78  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8014001C 0013CF7C  48 1D 24 C1 */	bl Float__9CRandom16Fv
/* 80140020 0013CF80  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80140024 0013CF84  7C 60 00 26 */	mfcr r3
/* 80140028 0013CF88  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 8014002C 0013CF8C  50 60 3E 72 */	rlwimi r0, r3, 7, 0x19, 0x19
/* 80140030 0013CF90  98 1F 06 65 */	stb r0, 0x665(r31)
/* 80140034 0013CF94  83 DE 00 1C */	lwz r30, 0x1c(r30)
/* 80140038 0013CF98  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8014003C 0013CF9C  48 1D 24 E5 */	bl Next__9CRandom16Fv
/* 80140040 0013CFA0  7C 03 F3 96 */	divwu r0, r3, r30
/* 80140044 0013CFA4  7C 00 F1 D6 */	mullw r0, r0, r30
/* 80140048 0013CFA8  7C 60 18 50 */	subf r3, r0, r3
/* 8014004C 0013CFAC  38 03 00 01 */	addi r0, r3, 1
/* 80140050 0013CFB0  90 1F 06 D8 */	stw r0, 0x6d8(r31)
lbl_80140054:
/* 80140054 0013CFB4  88 1F 06 64 */	lbz r0, 0x664(r31)
/* 80140058 0013CFB8  38 60 00 00 */	li r3, 0
/* 8014005C 0013CFBC  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80140060 0013CFC0  98 1F 06 64 */	stb r0, 0x664(r31)
/* 80140064 0013CFC4  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 80140068 0013CFC8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8014006C 0013CFCC  98 1F 06 65 */	stb r0, 0x665(r31)
lbl_80140070:
/* 80140070 0013CFD0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80140074 0013CFD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80140078 0013CFD8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8014007C 0013CFDC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80140080 0013CFE0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80140084 0013CFE4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80140088 0013CFE8  7C 08 03 A6 */	mtlr r0
/* 8014008C 0013CFEC  38 21 00 40 */	addi r1, r1, 0x40
/* 80140090 0013CFF0  4E 80 00 20 */	blr

.global Land__11CChozoGhostFR13CStateManager9EStateMsgf
Land__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 80140094 0013CFF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80140098 0013CFF8  7C 08 02 A6 */	mflr r0
/* 8014009C 0013CFFC  2C 05 00 01 */	cmpwi r5, 1
/* 801400A0 0013D000  90 01 00 24 */	stw r0, 0x24(r1)
/* 801400A4 0013D004  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801400A8 0013D008  7C 7F 1B 78 */	mr r31, r3
/* 801400AC 0013D00C  41 82 00 08 */	beq lbl_801400B4
/* 801400B0 0013D010  48 00 00 54 */	b lbl_80140104
lbl_801400B4:
/* 801400B4 0013D014  FC 40 08 90 */	fmr f2, f1
/* 801400B8 0013D018  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 801400BC 0013D01C  48 00 14 E1 */	bl sub_8014159c
/* 801400C0 0013D020  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 801400C4 0013D024  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 801400C8 0013D028  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801400CC 0013D02C  EC 20 20 28 */	fsubs f1, f0, f4
/* 801400D0 0013D030  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 801400D4 0013D034  C0 02 9B 7C */	lfs f0, lbl_805AB89C@sda21(r2)
/* 801400D8 0013D038  D0 41 00 08 */	stfs f2, 8(r1)
/* 801400DC 0013D03C  FC 20 0A 10 */	fabs f1, f1
/* 801400E0 0013D040  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801400E4 0013D044  FC 20 08 18 */	frsp f1, f1
/* 801400E8 0013D048  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 801400EC 0013D04C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801400F0 0013D050  40 80 00 14 */	bge lbl_80140104
/* 801400F4 0013D054  88 1F 03 48 */	lbz r0, 0x348(r31)
/* 801400F8 0013D058  38 60 00 01 */	li r3, 1
/* 801400FC 0013D05C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80140100 0013D060  98 1F 03 48 */	stb r0, 0x348(r31)
lbl_80140104:
/* 80140104 0013D064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80140108 0013D068  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014010C 0013D06C  7C 08 03 A6 */	mtlr r0
/* 80140110 0013D070  38 21 00 20 */	addi r1, r1, 0x20
/* 80140114 0013D074  4E 80 00 20 */	blr

.global Attack__11CChozoGhostFR13CStateManager9EStateMsgf
Attack__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 80140118 0013D078  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8014011C 0013D07C  7C 08 02 A6 */	mflr r0
/* 80140120 0013D080  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80140124 0013D084  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80140128 0013D088  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8014012C 0013D08C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80140130 0013D090  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80140134 0013D094  FF E0 08 90 */	fmr f31, f1
/* 80140138 0013D098  2C 05 00 01 */	cmpwi r5, 1
/* 8014013C 0013D09C  7C 7E 1B 78 */	mr r30, r3
/* 80140140 0013D0A0  7C 9F 23 78 */	mr r31, r4
/* 80140144 0013D0A4  41 82 01 A0 */	beq lbl_801402E4
/* 80140148 0013D0A8  40 80 00 10 */	bge lbl_80140158
/* 8014014C 0013D0AC  2C 05 00 00 */	cmpwi r5, 0
/* 80140150 0013D0B0  40 80 00 14 */	bge lbl_80140164
/* 80140154 0013D0B4  48 00 02 68 */	b lbl_801403BC
lbl_80140158:
/* 80140158 0013D0B8  2C 05 00 03 */	cmpwi r5, 3
/* 8014015C 0013D0BC  40 80 02 60 */	bge lbl_801403BC
/* 80140160 0013D0C0  48 00 02 0C */	b lbl_8014036C
lbl_80140164:
/* 80140164 0013D0C4  A0 FE 00 08 */	lhz r7, 8(r30)
/* 80140168 0013D0C8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8014016C 0013D0CC  38 C1 00 18 */	addi r6, r1, 0x18
/* 80140170 0013D0D0  38 60 00 01 */	li r3, 1
/* 80140174 0013D0D4  B0 E1 00 18 */	sth r7, 0x18(r1)
/* 80140178 0013D0D8  A0 1E 06 C4 */	lhz r0, 0x6c4(r30)
/* 8014017C 0013D0DC  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 80140180 0013D0E0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80140184 0013D0E4  48 0F 9E 6D */	bl AddAttacker__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueId
/* 80140188 0013D0E8  38 00 00 01 */	li r0, 1
/* 8014018C 0013D0EC  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80140190 0013D0F0  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 80140194 0013D0F4  2C 00 00 02 */	cmpwi r0, 2
/* 80140198 0013D0F8  41 82 00 2C */	beq lbl_801401C4
/* 8014019C 0013D0FC  40 80 00 10 */	bge lbl_801401AC
/* 801401A0 0013D100  2C 00 00 01 */	cmpwi r0, 1
/* 801401A4 0013D104  40 80 00 14 */	bge lbl_801401B8
/* 801401A8 0013D108  48 00 00 30 */	b lbl_801401D8
lbl_801401AC:
/* 801401AC 0013D10C  2C 00 00 04 */	cmpwi r0, 4
/* 801401B0 0013D110  40 80 00 28 */	bge lbl_801401D8
/* 801401B4 0013D114  48 00 00 1C */	b lbl_801401D0
lbl_801401B8:
/* 801401B8 0013D118  38 00 00 03 */	li r0, 3
/* 801401BC 0013D11C  90 1E 06 7C */	stw r0, 0x67c(r30)
/* 801401C0 0013D120  48 00 00 18 */	b lbl_801401D8
lbl_801401C4:
/* 801401C4 0013D124  38 00 00 04 */	li r0, 4
/* 801401C8 0013D128  90 1E 06 7C */	stw r0, 0x67c(r30)
/* 801401CC 0013D12C  48 00 00 0C */	b lbl_801401D8
lbl_801401D0:
/* 801401D0 0013D130  38 00 00 05 */	li r0, 5
/* 801401D4 0013D134  90 1E 06 7C */	stw r0, 0x67c(r30)
lbl_801401D8:
/* 801401D8 0013D138  88 1E 06 65 */	lbz r0, 0x665(r30)
/* 801401DC 0013D13C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801401E0 0013D140  41 82 00 CC */	beq lbl_801402AC
/* 801401E4 0013D144  80 AD 8B B0 */	lwz r5, lbl_805A7770@sda21(r13)
/* 801401E8 0013D148  38 60 00 00 */	li r3, 0
/* 801401EC 0013D14C  38 80 00 01 */	li r4, 1
/* 801401F0 0013D150  48 24 9D 05 */	bl __shl2i
/* 801401F4 0013D154  3C A0 80 5A */	lis r5, lbl_805A66F4@ha
/* 801401F8 0013D158  39 00 00 00 */	li r8, 0
/* 801401FC 0013D15C  38 C5 66 F4 */	addi r6, r5, lbl_805A66F4@l
/* 80140200 0013D160  38 00 00 01 */	li r0, 1
/* 80140204 0013D164  C0 82 9B 80 */	lfs f4, lbl_805AB8A0@sda21(r2)
/* 80140208 0013D168  38 A1 00 44 */	addi r5, r1, 0x44
/* 8014020C 0013D16C  C0 46 00 08 */	lfs f2, 8(r6)
/* 80140210 0013D170  38 E1 00 50 */	addi r7, r1, 0x50
/* 80140214 0013D174  C0 26 00 00 */	lfs f1, 0(r6)
/* 80140218 0013D178  90 81 00 54 */	stw r4, 0x54(r1)
/* 8014021C 0013D17C  EC A4 00 B2 */	fmuls f5, f4, f2
/* 80140220 0013D180  EC 64 00 72 */	fmuls f3, f4, f1
/* 80140224 0013D184  C0 06 00 04 */	lfs f0, 4(r6)
/* 80140228 0013D188  90 61 00 50 */	stw r3, 0x50(r1)
/* 8014022C 0013D18C  7F E4 FB 78 */	mr r4, r31
/* 80140230 0013D190  EC 24 00 32 */	fmuls f1, f4, f0
/* 80140234 0013D194  91 01 00 5C */	stw r8, 0x5c(r1)
/* 80140238 0013D198  38 61 00 68 */	addi r3, r1, 0x68
/* 8014023C 0013D19C  91 01 00 58 */	stw r8, 0x58(r1)
/* 80140240 0013D1A0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80140244 0013D1A4  C1 1E 00 60 */	lfs f8, 0x60(r30)
/* 80140248 0013D1A8  C0 FE 00 50 */	lfs f7, 0x50(r30)
/* 8014024C 0013D1AC  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80140250 0013D1B0  EC 88 28 2A */	fadds f4, f8, f5
/* 80140254 0013D1B4  EC C7 08 2A */	fadds f6, f7, f1
/* 80140258 0013D1B8  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8014025C 0013D1BC  EC 02 18 2A */	fadds f0, f2, f3
/* 80140260 0013D1C0  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 80140264 0013D1C4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80140268 0013D1C8  D0 C1 00 48 */	stfs f6, 0x48(r1)
/* 8014026C 0013D1CC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80140270 0013D1D0  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 80140274 0013D1D4  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 80140278 0013D1D8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8014027C 0013D1DC  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 80140280 0013D1E0  D1 01 00 40 */	stfs f8, 0x40(r1)
/* 80140284 0013D1E4  4B F0 CD 15 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80140288 0013D1E8  88 01 00 88 */	lbz r0, 0x88(r1)
/* 8014028C 0013D1EC  28 00 00 00 */	cmplwi r0, 0
/* 80140290 0013D1F0  40 82 00 1C */	bne lbl_801402AC
/* 80140294 0013D1F4  38 00 00 02 */	li r0, 2
/* 80140298 0013D1F8  38 7E 04 60 */	addi r3, r30, 0x460
/* 8014029C 0013D1FC  90 1E 06 7C */	stw r0, 0x67c(r30)
/* 801402A0 0013D200  38 80 00 02 */	li r4, 2
/* 801402A4 0013D204  38 A0 00 00 */	li r5, 0
/* 801402A8 0013D208  48 0F 3B 1D */	bl SetAvailableState__20CKnockBackControllerFib
lbl_801402AC:
/* 801402AC 0013D20C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801402B0 0013D210  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 801402B4 0013D214  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 801402B8 0013D218  C0 03 00 04 */	lfs f0, 4(r3)
/* 801402BC 0013D21C  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 801402C0 0013D220  C0 03 00 08 */	lfs f0, 8(r3)
/* 801402C4 0013D224  D0 1E 01 58 */	stfs f0, 0x158(r30)
/* 801402C8 0013D228  C0 03 00 00 */	lfs f0, 0(r3)
/* 801402CC 0013D22C  D0 1E 00 FC */	stfs f0, 0xfc(r30)
/* 801402D0 0013D230  C0 03 00 04 */	lfs f0, 4(r3)
/* 801402D4 0013D234  D0 1E 01 00 */	stfs f0, 0x100(r30)
/* 801402D8 0013D238  C0 03 00 08 */	lfs f0, 8(r3)
/* 801402DC 0013D23C  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 801402E0 0013D240  48 00 00 DC */	b lbl_801403BC
lbl_801402E4:
/* 801402E4 0013D244  3C A0 80 3E */	lis r5, lbl_803E18F4@ha
/* 801402E8 0013D248  38 C1 00 20 */	addi r6, r1, 0x20
/* 801402EC 0013D24C  39 25 18 F4 */	addi r9, r5, lbl_803E18F4@l
/* 801402F0 0013D250  38 A0 00 07 */	li r5, 7
/* 801402F4 0013D254  81 09 00 00 */	lwz r8, 0(r9)
/* 801402F8 0013D258  80 E9 00 04 */	lwz r7, 4(r9)
/* 801402FC 0013D25C  80 09 00 08 */	lwz r0, 8(r9)
/* 80140300 0013D260  91 01 00 20 */	stw r8, 0x20(r1)
/* 80140304 0013D264  90 E1 00 24 */	stw r7, 0x24(r1)
/* 80140308 0013D268  90 01 00 28 */	stw r0, 0x28(r1)
/* 8014030C 0013D26C  80 FE 06 7C */	lwz r7, 0x67c(r30)
/* 80140310 0013D270  4B F3 C4 A5 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80140314 0013D274  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80140318 0013D278  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8014031C 0013D27C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80140320 0013D280  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 80140324 0013D284  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80140328 0013D288  EC 01 00 28 */	fsubs f0, f1, f0
/* 8014032C 0013D28C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80140330 0013D290  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80140334 0013D294  EC 64 18 28 */	fsubs f3, f4, f3
/* 80140338 0013D298  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8014033C 0013D29C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80140340 0013D2A0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80140344 0013D2A4  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80140348 0013D2A8  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8014034C 0013D2AC  80 1E 06 7C */	lwz r0, 0x67c(r30)
/* 80140350 0013D2B0  2C 00 00 02 */	cmpwi r0, 2
/* 80140354 0013D2B4  41 82 00 68 */	beq lbl_801403BC
/* 80140358 0013D2B8  FC 40 F8 90 */	fmr f2, f31
/* 8014035C 0013D2BC  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80140360 0013D2C0  7F C3 F3 78 */	mr r3, r30
/* 80140364 0013D2C4  48 00 12 39 */	bl sub_8014159c
/* 80140368 0013D2C8  48 00 00 54 */	b lbl_801403BC
lbl_8014036C:
/* 8014036C 0013D2CC  38 C0 00 00 */	li r6, 0
/* 80140370 0013D2D0  38 7E 04 60 */	addi r3, r30, 0x460
/* 80140374 0013D2D4  90 DE 03 2C */	stw r6, 0x32c(r30)
/* 80140378 0013D2D8  38 80 00 02 */	li r4, 2
/* 8014037C 0013D2DC  38 A0 00 01 */	li r5, 1
/* 80140380 0013D2E0  88 1E 06 65 */	lbz r0, 0x665(r30)
/* 80140384 0013D2E4  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 80140388 0013D2E8  98 1E 06 65 */	stb r0, 0x665(r30)
/* 8014038C 0013D2EC  48 0F 3A 39 */	bl SetAvailableState__20CKnockBackControllerFib
/* 80140390 0013D2F0  A1 1E 00 08 */	lhz r8, 8(r30)
/* 80140394 0013D2F4  7F E4 FB 78 */	mr r4, r31
/* 80140398 0013D2F8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8014039C 0013D2FC  38 C1 00 0C */	addi r6, r1, 0xc
/* 801403A0 0013D300  B1 01 00 0C */	sth r8, 0xc(r1)
/* 801403A4 0013D304  38 60 00 01 */	li r3, 1
/* 801403A8 0013D308  38 E0 00 01 */	li r7, 1
/* 801403AC 0013D30C  A0 1E 06 C4 */	lhz r0, 0x6c4(r30)
/* 801403B0 0013D310  B1 01 00 08 */	sth r8, 8(r1)
/* 801403B4 0013D314  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801403B8 0013D318  48 0F 9B 19 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
lbl_801403BC:
/* 801403BC 0013D31C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 801403C0 0013D320  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801403C4 0013D324  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801403C8 0013D328  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801403CC 0013D32C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 801403D0 0013D330  7C 08 03 A6 */	mtlr r0
/* 801403D4 0013D334  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801403D8 0013D338  4E 80 00 20 */	blr

.global sub_801403dc
sub_801403dc:
/* 801403DC 0013D33C  80 03 06 80 */	lwz r0, 0x680(r3)
/* 801403E0 0013D340  20 00 00 02 */	subfic r0, r0, 2
/* 801403E4 0013D344  7C 00 00 34 */	cntlzw r0, r0
/* 801403E8 0013D348  54 03 D9 7E */	srwi r3, r0, 5
/* 801403EC 0013D34C  4E 80 00 20 */	blr

.global SelectTarget__11CChozoGhostFR13CStateManager9EStateMsgf
SelectTarget__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 801403F0 0013D350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801403F4 0013D354  7C 08 02 A6 */	mflr r0
/* 801403F8 0013D358  2C 05 00 00 */	cmpwi r5, 0
/* 801403FC 0013D35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140400 0013D360  41 82 00 08 */	beq lbl_80140408
/* 80140404 0013D364  48 00 00 08 */	b lbl_8014040C
lbl_80140408:
/* 80140408 0013D368  48 00 0B 79 */	bl sub_80140f80
lbl_8014040C:
/* 8014040C 0013D36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140410 0013D370  7C 08 03 A6 */	mtlr r0
/* 80140414 0013D374  38 21 00 10 */	addi r1, r1, 0x10
/* 80140418 0013D378  4E 80 00 20 */	blr

.global InRange__11CChozoGhostFR13CStateManagerf
InRange__11CChozoGhostFR13CStateManagerf:
/* 8014041C 0013D37C  88 03 06 65 */	lbz r0, 0x665(r3)
/* 80140420 0013D380  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 80140424 0013D384  4E 80 00 20 */	blr

.global Run__11CChozoGhostFR13CStateManager9EStateMsgf
Run__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 80140428 0013D388  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8014042C 0013D38C  7C 08 02 A6 */	mflr r0
/* 80140430 0013D390  90 01 00 74 */	stw r0, 0x74(r1)
/* 80140434 0013D394  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80140438 0013D398  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8014043C 0013D39C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80140440 0013D3A0  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80140444 0013D3A4  FF E0 08 90 */	fmr f31, f1
/* 80140448 0013D3A8  2C 05 00 01 */	cmpwi r5, 1
/* 8014044C 0013D3AC  7C 7F 1B 78 */	mr r31, r3
/* 80140450 0013D3B0  7C 9E 23 78 */	mr r30, r4
/* 80140454 0013D3B4  41 82 00 60 */	beq lbl_801404B4
/* 80140458 0013D3B8  40 80 00 10 */	bge lbl_80140468
/* 8014045C 0013D3BC  2C 05 00 00 */	cmpwi r5, 0
/* 80140460 0013D3C0  40 80 00 14 */	bge lbl_80140474
/* 80140464 0013D3C4  48 00 02 00 */	b lbl_80140664
lbl_80140468:
/* 80140468 0013D3C8  2C 05 00 03 */	cmpwi r5, 3
/* 8014046C 0013D3CC  40 80 01 F8 */	bge lbl_80140664
/* 80140470 0013D3D0  48 00 01 84 */	b lbl_801405F4
lbl_80140474:
/* 80140474 0013D3D4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80140478 0013D3D8  38 80 00 02 */	li r4, 2
/* 8014047C 0013D3DC  4B FF A5 5D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80140480 0013D3E0  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 80140484 0013D3E4  38 60 00 00 */	li r3, 0
/* 80140488 0013D3E8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8014048C 0013D3EC  38 7F 04 60 */	addi r3, r31, 0x460
/* 80140490 0013D3F0  98 1F 04 00 */	stb r0, 0x400(r31)
/* 80140494 0013D3F4  38 80 00 02 */	li r4, 2
/* 80140498 0013D3F8  38 A0 00 00 */	li r5, 0
/* 8014049C 0013D3FC  48 0F 39 29 */	bl SetAvailableState__20CKnockBackControllerFib
/* 801404A0 0013D400  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 801404A4 0013D404  38 60 00 00 */	li r3, 0
/* 801404A8 0013D408  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801404AC 0013D40C  98 1F 06 65 */	stb r0, 0x665(r31)
/* 801404B0 0013D410  48 00 01 B4 */	b lbl_80140664
lbl_801404B4:
/* 801404B4 0013D414  7F E5 FB 78 */	mr r5, r31
/* 801404B8 0013D418  38 61 00 2C */	addi r3, r1, 0x2c
/* 801404BC 0013D41C  38 9F 06 88 */	addi r4, r31, 0x688
/* 801404C0 0013D420  38 DF 02 E0 */	addi r6, r31, 0x2e0
/* 801404C4 0013D424  4B FF E7 5D */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 801404C8 0013D428  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801404CC 0013D42C  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801404D0 0013D430  C0 C1 00 2C */	lfs f6, 0x2c(r1)
/* 801404D4 0013D434  38 81 00 38 */	addi r4, r1, 0x38
/* 801404D8 0013D438  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 801404DC 0013D43C  C0 81 00 34 */	lfs f4, 0x34(r1)
/* 801404E0 0013D440  C0 43 00 04 */	lfs f2, 4(r3)
/* 801404E4 0013D444  C0 23 00 08 */	lfs f1, 8(r3)
/* 801404E8 0013D448  C0 02 9B 60 */	lfs f0, lbl_805AB880@sda21(r2)
/* 801404EC 0013D44C  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 801404F0 0013D450  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 801404F4 0013D454  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 801404F8 0013D458  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 801404FC 0013D45C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80140500 0013D460  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80140504 0013D464  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80140508 0013D468  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8014050C 0013D46C  38 63 00 04 */	addi r3, r3, 4
/* 80140510 0013D470  4B FF 12 09 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80140514 0013D474  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 80140518 0013D478  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8014051C 0013D47C  41 82 01 48 */	beq lbl_80140664
/* 80140520 0013D480  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 80140524 0013D484  FC 40 F8 90 */	fmr f2, f31
/* 80140528 0013D488  7F E3 FB 78 */	mr r3, r31
/* 8014052C 0013D48C  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80140530 0013D490  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 80140534 0013D494  48 00 10 69 */	bl sub_8014159c
/* 80140538 0013D498  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 8014053C 0013D49C  3C 60 80 57 */	lis r3, lbl_805719CC@ha
/* 80140540 0013D4A0  38 83 19 CC */	addi r4, r3, lbl_805719CC@l
/* 80140544 0013D4A4  7F C6 F3 78 */	mr r6, r30
/* 80140548 0013D4A8  80 65 00 10 */	lwz r3, 0x10(r5)
/* 8014054C 0013D4AC  38 A0 00 01 */	li r5, 1
/* 80140550 0013D4B0  4B EE A8 71 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 80140554 0013D4B4  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 80140558 0013D4B8  38 60 00 00 */	li r3, 0
/* 8014055C 0013D4BC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80140560 0013D4C0  98 1F 06 65 */	stb r0, 0x665(r31)
/* 80140564 0013D4C4  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 80140568 0013D4C8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8014056C 0013D4CC  40 82 00 F8 */	bne lbl_80140664
/* 80140570 0013D4D0  38 7F 01 38 */	addi r3, r31, 0x138
/* 80140574 0013D4D4  48 1D 43 45 */	bl Magnitude__9CVector3fCFv
/* 80140578 0013D4D8  C1 1F 00 50 */	lfs f8, 0x50(r31)
/* 8014057C 0013D4DC  ED 5F 00 72 */	fmuls f10, f31, f1
/* 80140580 0013D4E0  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80140584 0013D4E4  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80140588 0013D4E8  C0 1F 02 E0 */	lfs f0, 0x2e0(r31)
/* 8014058C 0013D4EC  EC E8 08 28 */	fsubs f7, f8, f1
/* 80140590 0013D4F0  C1 3F 00 60 */	lfs f9, 0x60(r31)
/* 80140594 0013D4F4  EC 62 00 28 */	fsubs f3, f2, f0
/* 80140598 0013D4F8  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 8014059C 0013D4FC  C0 A2 9B 84 */	lfs f5, lbl_805AB8A4@sda21(r2)
/* 801405A0 0013D500  EC C9 00 28 */	fsubs f6, f9, f0
/* 801405A4 0013D504  C0 9F 06 6C */	lfs f4, 0x66c(r31)
/* 801405A8 0013D508  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801405AC 0013D50C  EC 07 01 F2 */	fmuls f0, f7, f7
/* 801405B0 0013D510  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801405B4 0013D514  EC 85 22 BA */	fmadds f4, f5, f10, f4
/* 801405B8 0013D518  EC 46 01 B2 */	fmuls f2, f6, f6
/* 801405BC 0013D51C  D1 01 00 18 */	stfs f8, 0x18(r1)
/* 801405C0 0013D520  EC 21 00 2A */	fadds f1, f1, f0
/* 801405C4 0013D524  EC 04 01 32 */	fmuls f0, f4, f4
/* 801405C8 0013D528  D1 21 00 1C */	stfs f9, 0x1c(r1)
/* 801405CC 0013D52C  EC 22 08 2A */	fadds f1, f2, f1
/* 801405D0 0013D530  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801405D4 0013D534  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 801405D8 0013D538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801405DC 0013D53C  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 801405E0 0013D540  7C 60 00 26 */	mfcr r3
/* 801405E4 0013D544  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 801405E8 0013D548  50 60 27 38 */	rlwimi r0, r3, 4, 0x1c, 0x1c
/* 801405EC 0013D54C  98 1F 06 65 */	stb r0, 0x665(r31)
/* 801405F0 0013D550  48 00 00 74 */	b lbl_80140664
lbl_801405F4:
/* 801405F4 0013D554  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801405F8 0013D558  38 80 00 00 */	li r4, 0
/* 801405FC 0013D55C  4B FF A3 DD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80140600 0013D560  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 80140604 0013D564  7F E3 FB 78 */	mr r3, r31
/* 80140608 0013D568  38 81 00 08 */	addi r4, r1, 8
/* 8014060C 0013D56C  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 80140610 0013D570  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80140614 0013D574  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80140618 0013D578  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014061C 0013D57C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80140620 0013D580  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80140624 0013D584  4B F3 C5 39 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80140628 0013D588  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 8014062C 0013D58C  3C 60 80 57 */	lis r3, lbl_805719CC@ha
/* 80140630 0013D590  38 83 19 CC */	addi r4, r3, lbl_805719CC@l
/* 80140634 0013D594  7F C6 F3 78 */	mr r6, r30
/* 80140638 0013D598  80 65 00 10 */	lwz r3, 0x10(r5)
/* 8014063C 0013D59C  38 A0 00 00 */	li r5, 0
/* 80140640 0013D5A0  4B EE A7 81 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 80140644 0013D5A4  38 7F 04 60 */	addi r3, r31, 0x460
/* 80140648 0013D5A8  38 80 00 02 */	li r4, 2
/* 8014064C 0013D5AC  38 A0 00 01 */	li r5, 1
/* 80140650 0013D5B0  48 0F 37 75 */	bl SetAvailableState__20CKnockBackControllerFib
/* 80140654 0013D5B4  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 80140658 0013D5B8  38 60 00 00 */	li r3, 0
/* 8014065C 0013D5BC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80140660 0013D5C0  98 1F 06 65 */	stb r0, 0x665(r31)
lbl_80140664:
/* 80140664 0013D5C4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80140668 0013D5C8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8014066C 0013D5CC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80140670 0013D5D0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80140674 0013D5D4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80140678 0013D5D8  7C 08 03 A6 */	mtlr r0
/* 8014067C 0013D5DC  38 21 00 70 */	addi r1, r1, 0x70
/* 80140680 0013D5E0  4E 80 00 20 */	blr

.global WallDetach__11CChozoGhostFR13CStateManager9EStateMsgf
WallDetach__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 80140684 0013D5E4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80140688 0013D5E8  7C 08 02 A6 */	mflr r0
/* 8014068C 0013D5EC  2C 05 00 01 */	cmpwi r5, 1
/* 80140690 0013D5F0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80140694 0013D5F4  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80140698 0013D5F8  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8014069C 0013D5FC  7C 9E 23 78 */	mr r30, r4
/* 801406A0 0013D600  93 A1 00 74 */	stw r29, 0x74(r1)
/* 801406A4 0013D604  7C 7D 1B 78 */	mr r29, r3
/* 801406A8 0013D608  41 82 01 C4 */	beq lbl_8014086C
/* 801406AC 0013D60C  40 80 00 10 */	bge lbl_801406BC
/* 801406B0 0013D610  2C 05 00 00 */	cmpwi r5, 0
/* 801406B4 0013D614  40 80 00 14 */	bge lbl_801406C8
/* 801406B8 0013D618  48 00 01 B4 */	b lbl_8014086C
lbl_801406BC:
/* 801406BC 0013D61C  2C 05 00 03 */	cmpwi r5, 3
/* 801406C0 0013D620  40 80 01 AC */	bge lbl_8014086C
/* 801406C4 0013D624  48 00 01 68 */	b lbl_8014082C
lbl_801406C8:
/* 801406C8 0013D628  C0 1D 05 6C */	lfs f0, 0x56c(r29)
/* 801406CC 0013D62C  38 A0 00 00 */	li r5, 0
/* 801406D0 0013D630  C0 22 9B 60 */	lfs f1, lbl_805AB880@sda21(r2)
/* 801406D4 0013D634  D0 1D 03 40 */	stfs f0, 0x340(r29)
/* 801406D8 0013D638  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 801406DC 0013D63C  D0 3D 03 E8 */	stfs f1, 0x3e8(r29)
/* 801406E0 0013D640  88 1D 06 64 */	lbz r0, 0x664(r29)
/* 801406E4 0013D644  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 801406E8 0013D648  98 1D 06 64 */	stb r0, 0x664(r29)
/* 801406EC 0013D64C  C0 3D 05 6C */	lfs f1, 0x56c(r29)
/* 801406F0 0013D650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801406F4 0013D654  40 81 00 28 */	ble lbl_8014071C
/* 801406F8 0013D658  D0 3D 06 C8 */	stfs f1, 0x6c8(r29)
/* 801406FC 0013D65C  38 A1 00 60 */	addi r5, r1, 0x60
/* 80140700 0013D660  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 80140704 0013D664  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80140708 0013D668  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 8014070C 0013D66C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80140710 0013D670  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80140714 0013D674  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80140718 0013D678  48 00 05 FD */	bl sub_80140d14
lbl_8014071C:
/* 8014071C 0013D67C  7F A4 EB 78 */	mr r4, r29
/* 80140720 0013D680  7F C5 F3 78 */	mr r5, r30
/* 80140724 0013D684  38 61 00 14 */	addi r3, r1, 0x14
/* 80140728 0013D688  3B E0 00 00 */	li r31, 0
/* 8014072C 0013D68C  38 C0 00 0A */	li r6, 0xa
/* 80140730 0013D690  38 E0 00 06 */	li r7, 6
/* 80140734 0013D694  48 0B 48 65 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 80140738 0013D698  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 8014073C 0013D69C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80140740 0013D6A0  B0 61 00 18 */	sth r3, 0x18(r1)
/* 80140744 0013D6A4  7C 03 00 40 */	cmplw r3, r0
/* 80140748 0013D6A8  41 82 00 24 */	beq lbl_8014076C
/* 8014074C 0013D6AC  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80140750 0013D6B0  7F C3 F3 78 */	mr r3, r30
/* 80140754 0013D6B4  38 81 00 10 */	addi r4, r1, 0x10
/* 80140758 0013D6B8  4B F0 BE 4D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8014075C 0013D6BC  7C 64 1B 78 */	mr r4, r3
/* 80140760 0013D6C0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80140764 0013D6C4  4B F6 F5 2D */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 80140768 0013D6C8  83 E3 00 04 */	lwz r31, 4(r3)
lbl_8014076C:
/* 8014076C 0013D6CC  28 1F 00 00 */	cmplwi r31, 0
/* 80140770 0013D6D0  41 82 00 2C */	beq lbl_8014079C
/* 80140774 0013D6D4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80140778 0013D6D8  7F A3 EB 78 */	mr r3, r29
/* 8014077C 0013D6DC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80140780 0013D6E0  38 81 00 54 */	addi r4, r1, 0x54
/* 80140784 0013D6E4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80140788 0013D6E8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8014078C 0013D6EC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80140790 0013D6F0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80140794 0013D6F4  4B F3 C3 C9 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80140798 0013D6F8  48 00 00 7C */	b lbl_80140814
lbl_8014079C:
/* 8014079C 0013D6FC  C0 22 9B 68 */	lfs f1, lbl_805AB888@sda21(r2)
/* 801407A0 0013D700  7F A3 EB 78 */	mr r3, r29
/* 801407A4 0013D704  C0 1D 06 6C */	lfs f0, 0x66c(r29)
/* 801407A8 0013D708  38 81 00 48 */	addi r4, r1, 0x48
/* 801407AC 0013D70C  C0 FD 00 58 */	lfs f7, 0x58(r29)
/* 801407B0 0013D710  EC 41 00 32 */	fmuls f2, f1, f0
/* 801407B4 0013D714  C0 BD 00 48 */	lfs f5, 0x48(r29)
/* 801407B8 0013D718  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 801407BC 0013D71C  C1 3D 00 60 */	lfs f9, 0x60(r29)
/* 801407C0 0013D720  EC 62 01 F2 */	fmuls f3, f2, f7
/* 801407C4 0013D724  C1 1D 00 50 */	lfs f8, 0x50(r29)
/* 801407C8 0013D728  EC 82 01 72 */	fmuls f4, f2, f5
/* 801407CC 0013D72C  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 801407D0 0013D730  EC 42 00 32 */	fmuls f2, f2, f0
/* 801407D4 0013D734  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801407D8 0013D738  EC C8 20 2A */	fadds f6, f8, f4
/* 801407DC 0013D73C  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 801407E0 0013D740  EC A9 18 2A */	fadds f5, f9, f3
/* 801407E4 0013D744  EC 01 10 2A */	fadds f0, f1, f2
/* 801407E8 0013D748  D0 E1 00 2C */	stfs f7, 0x2c(r1)
/* 801407EC 0013D74C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801407F0 0013D750  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 801407F4 0013D754  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 801407F8 0013D758  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801407FC 0013D75C  D1 01 00 40 */	stfs f8, 0x40(r1)
/* 80140800 0013D760  D1 21 00 44 */	stfs f9, 0x44(r1)
/* 80140804 0013D764  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80140808 0013D768  D0 C1 00 4C */	stfs f6, 0x4c(r1)
/* 8014080C 0013D76C  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 80140810 0013D770  4B F3 C3 4D */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_80140814:
/* 80140814 0013D774  7F A3 EB 78 */	mr r3, r29
/* 80140818 0013D778  7F C5 F3 78 */	mr r5, r30
/* 8014081C 0013D77C  38 80 00 0A */	li r4, 0xa
/* 80140820 0013D780  38 C0 00 06 */	li r6, 6
/* 80140824 0013D784  4B F1 08 9D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80140828 0013D788  48 00 00 44 */	b lbl_8014086C
lbl_8014082C:
/* 8014082C 0013D78C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80140830 0013D790  38 80 00 01 */	li r4, 1
/* 80140834 0013D794  48 03 49 F1 */	bl SetActive__13CBoneTrackingFb
/* 80140838 0013D798  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 8014083C 0013D79C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80140840 0013D7A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80140844 0013D7A4  A0 05 00 08 */	lhz r0, 8(r5)
/* 80140848 0013D7A8  B0 01 00 08 */	sth r0, 8(r1)
/* 8014084C 0013D7AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80140850 0013D7B0  48 03 49 C9 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 80140854 0013D7B4  88 7D 06 65 */	lbz r3, 0x665(r29)
/* 80140858 0013D7B8  38 00 00 00 */	li r0, 0
/* 8014085C 0013D7BC  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 80140860 0013D7C0  38 00 00 03 */	li r0, 3
/* 80140864 0013D7C4  98 7D 06 65 */	stb r3, 0x665(r29)
/* 80140868 0013D7C8  90 1D 06 80 */	stw r0, 0x680(r29)
lbl_8014086C:
/* 8014086C 0013D7CC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80140870 0013D7D0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80140874 0013D7D4  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80140878 0013D7D8  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8014087C 0013D7DC  7C 08 03 A6 */	mtlr r0
/* 80140880 0013D7E0  38 21 00 80 */	addi r1, r1, 0x80
/* 80140884 0013D7E4  4E 80 00 20 */	blr

.global Generate__11CChozoGhostFR13CStateManager9EStateMsgf
Generate__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 80140888 0013D7E8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8014088C 0013D7EC  7C 08 02 A6 */	mflr r0
/* 80140890 0013D7F0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80140894 0013D7F4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80140898 0013D7F8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8014089C 0013D7FC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801408A0 0013D800  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801408A4 0013D804  FF E0 08 90 */	fmr f31, f1
/* 801408A8 0013D808  2C 05 00 01 */	cmpwi r5, 1
/* 801408AC 0013D80C  7C 7E 1B 78 */	mr r30, r3
/* 801408B0 0013D810  7C 9F 23 78 */	mr r31, r4
/* 801408B4 0013D814  41 82 01 20 */	beq lbl_801409D4
/* 801408B8 0013D818  40 80 00 10 */	bge lbl_801408C8
/* 801408BC 0013D81C  2C 05 00 00 */	cmpwi r5, 0
/* 801408C0 0013D820  40 80 00 14 */	bge lbl_801408D4
/* 801408C4 0013D824  48 00 02 2C */	b lbl_80140AF0
lbl_801408C8:
/* 801408C8 0013D828  2C 05 00 03 */	cmpwi r5, 3
/* 801408CC 0013D82C  40 80 02 24 */	bge lbl_80140AF0
/* 801408D0 0013D830  48 00 02 00 */	b lbl_80140AD0
lbl_801408D4:
/* 801408D4 0013D834  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 801408D8 0013D838  38 00 00 01 */	li r0, 1
/* 801408DC 0013D83C  38 A0 00 00 */	li r5, 0
/* 801408E0 0013D840  38 60 00 00 */	li r3, 0
/* 801408E4 0013D844  D0 1E 03 40 */	stfs f0, 0x340(r30)
/* 801408E8 0013D848  38 80 00 01 */	li r4, 1
/* 801408EC 0013D84C  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801408F0 0013D850  88 1E 06 64 */	lbz r0, 0x664(r30)
/* 801408F4 0013D854  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 801408F8 0013D858  98 1E 06 64 */	stb r0, 0x664(r30)
/* 801408FC 0013D85C  80 AD 8B AC */	lwz r5, lbl_805A776C@sda21(r13)
/* 80140900 0013D860  48 24 95 F5 */	bl __shl2i
/* 80140904 0013D864  39 00 00 00 */	li r8, 0
/* 80140908 0013D868  38 00 00 01 */	li r0, 1
/* 8014090C 0013D86C  90 81 00 54 */	stw r4, 0x54(r1)
/* 80140910 0013D870  3C 80 80 5A */	lis r4, lbl_805A6700@ha
/* 80140914 0013D874  38 C4 67 00 */	addi r6, r4, lbl_805A6700@l
/* 80140918 0013D878  C0 22 9B 88 */	lfs f1, lbl_805AB8A8@sda21(r2)
/* 8014091C 0013D87C  90 61 00 50 */	stw r3, 0x50(r1)
/* 80140920 0013D880  7F E4 FB 78 */	mr r4, r31
/* 80140924 0013D884  38 61 00 68 */	addi r3, r1, 0x68
/* 80140928 0013D888  38 A1 00 34 */	addi r5, r1, 0x34
/* 8014092C 0013D88C  91 01 00 5C */	stw r8, 0x5c(r1)
/* 80140930 0013D890  38 E1 00 50 */	addi r7, r1, 0x50
/* 80140934 0013D894  91 01 00 58 */	stw r8, 0x58(r1)
/* 80140938 0013D898  90 01 00 60 */	stw r0, 0x60(r1)
/* 8014093C 0013D89C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80140940 0013D8A0  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80140944 0013D8A4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80140948 0013D8A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8014094C 0013D8AC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80140950 0013D8B0  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80140954 0013D8B4  4B F0 C6 45 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80140958 0013D8B8  88 01 00 88 */	lbz r0, 0x88(r1)
/* 8014095C 0013D8BC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80140960 0013D8C0  28 00 00 00 */	cmplwi r0, 0
/* 80140964 0013D8C4  41 82 00 0C */	beq lbl_80140970
/* 80140968 0013D8C8  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8014096C 0013D8CC  48 00 00 24 */	b lbl_80140990
lbl_80140970:
/* 80140970 0013D8D0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80140974 0013D8D4  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80140978 0013D8D8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8014097C 0013D8DC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80140980 0013D8E0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80140984 0013D8E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80140988 0013D8E8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8014098C 0013D8EC  D0 5E 06 78 */	stfs f2, 0x678(r30)
lbl_80140990:
/* 80140990 0013D8F0  C0 22 9B 60 */	lfs f1, lbl_805AB880@sda21(r2)
/* 80140994 0013D8F4  38 60 00 01 */	li r3, 1
/* 80140998 0013D8F8  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 8014099C 0013D8FC  D0 3E 03 E8 */	stfs f1, 0x3e8(r30)
/* 801409A0 0013D900  88 1E 06 64 */	lbz r0, 0x664(r30)
/* 801409A4 0013D904  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801409A8 0013D908  98 1E 06 64 */	stb r0, 0x664(r30)
/* 801409AC 0013D90C  C0 3E 05 6C */	lfs f1, 0x56c(r30)
/* 801409B0 0013D910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801409B4 0013D914  40 81 01 3C */	ble lbl_80140AF0
/* 801409B8 0013D918  3C 60 80 5A */	lis r3, lbl_805A6700@ha
/* 801409BC 0013D91C  D0 3E 06 C8 */	stfs f1, 0x6c8(r30)
/* 801409C0 0013D920  38 A3 67 00 */	addi r5, r3, lbl_805A6700@l
/* 801409C4 0013D924  7F E4 FB 78 */	mr r4, r31
/* 801409C8 0013D928  7F C3 F3 78 */	mr r3, r30
/* 801409CC 0013D92C  48 00 03 49 */	bl sub_80140d14
/* 801409D0 0013D930  48 00 01 20 */	b lbl_80140AF0
lbl_801409D4:
/* 801409D4 0013D934  3C A0 80 3E */	lis r5, lbl_803E18E8@ha
/* 801409D8 0013D938  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801409DC 0013D93C  39 45 18 E8 */	addi r10, r5, lbl_803E18E8@l
/* 801409E0 0013D940  38 A0 00 0D */	li r5, 0xd
/* 801409E4 0013D944  81 2A 00 00 */	lwz r9, 0(r10)
/* 801409E8 0013D948  38 E0 00 00 */	li r7, 0
/* 801409EC 0013D94C  81 0A 00 04 */	lwz r8, 4(r10)
/* 801409F0 0013D950  80 0A 00 08 */	lwz r0, 8(r10)
/* 801409F4 0013D954  91 21 00 1C */	stw r9, 0x1c(r1)
/* 801409F8 0013D958  91 01 00 20 */	stw r8, 0x20(r1)
/* 801409FC 0013D95C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80140A00 0013D960  4B F3 BD B5 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80140A04 0013D964  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 80140A08 0013D968  2C 00 00 03 */	cmpwi r0, 3
/* 80140A0C 0013D96C  41 82 00 88 */	beq lbl_80140A94
/* 80140A10 0013D970  40 80 00 E0 */	bge lbl_80140AF0
/* 80140A14 0013D974  2C 00 00 02 */	cmpwi r0, 2
/* 80140A18 0013D978  40 80 00 08 */	bge lbl_80140A20
/* 80140A1C 0013D97C  48 00 00 D4 */	b lbl_80140AF0
lbl_80140A20:
/* 80140A20 0013D980  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80140A24 0013D984  38 80 00 00 */	li r4, 0
/* 80140A28 0013D988  4B FF 9F B1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80140A2C 0013D98C  88 1E 06 64 */	lbz r0, 0x664(r30)
/* 80140A30 0013D990  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80140A34 0013D994  40 82 00 BC */	bne lbl_80140AF0
/* 80140A38 0013D998  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80140A3C 0013D99C  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 80140A40 0013D9A0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80140A44 0013D9A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80140A48 0013D9A8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80140A4C 0013D9AC  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80140A50 0013D9B0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80140A54 0013D9B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80140A58 0013D9B8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80140A5C 0013D9BC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80140A60 0013D9C0  40 80 00 90 */	bge lbl_80140AF0
/* 80140A64 0013D9C4  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80140A68 0013D9C8  7F C3 F3 78 */	mr r3, r30
/* 80140A6C 0013D9CC  38 81 00 40 */	addi r4, r1, 0x40
/* 80140A70 0013D9D0  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80140A74 0013D9D4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80140A78 0013D9D8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80140A7C 0013D9DC  4B F1 24 11 */	bl SetTranslation__6CActorFRC9CVector3f
/* 80140A80 0013D9E0  88 1E 06 64 */	lbz r0, 0x664(r30)
/* 80140A84 0013D9E4  38 60 00 01 */	li r3, 1
/* 80140A88 0013D9E8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80140A8C 0013D9EC  98 1E 06 64 */	stb r0, 0x664(r30)
/* 80140A90 0013D9F0  48 00 00 60 */	b lbl_80140AF0
lbl_80140A94:
/* 80140A94 0013D9F4  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80140A98 0013D9F8  38 80 00 01 */	li r4, 1
/* 80140A9C 0013D9FC  48 03 47 89 */	bl SetActive__13CBoneTrackingFb
/* 80140AA0 0013DA00  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80140AA4 0013DA04  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80140AA8 0013DA08  38 81 00 0C */	addi r4, r1, 0xc
/* 80140AAC 0013DA0C  A0 05 00 08 */	lhz r0, 8(r5)
/* 80140AB0 0013DA10  B0 01 00 08 */	sth r0, 8(r1)
/* 80140AB4 0013DA14  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80140AB8 0013DA18  48 03 47 61 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 80140ABC 0013DA1C  FC 40 F8 90 */	fmr f2, f31
/* 80140AC0 0013DA20  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80140AC4 0013DA24  7F C3 F3 78 */	mr r3, r30
/* 80140AC8 0013DA28  48 00 0A D5 */	bl sub_8014159c
/* 80140ACC 0013DA2C  48 00 00 24 */	b lbl_80140AF0
lbl_80140AD0:
/* 80140AD0 0013DA30  38 60 00 00 */	li r3, 0
/* 80140AD4 0013DA34  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 80140AD8 0013DA38  88 1E 06 65 */	lbz r0, 0x665(r30)
/* 80140ADC 0013DA3C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80140AE0 0013DA40  98 1E 06 65 */	stb r0, 0x665(r30)
/* 80140AE4 0013DA44  88 1E 06 64 */	lbz r0, 0x664(r30)
/* 80140AE8 0013DA48  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80140AEC 0013DA4C  98 1E 06 64 */	stb r0, 0x664(r30)
lbl_80140AF0:
/* 80140AF0 0013DA50  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 80140AF4 0013DA54  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80140AF8 0013DA58  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80140AFC 0013DA5C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80140B00 0013DA60  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80140B04 0013DA64  7C 08 03 A6 */	mtlr r0
/* 80140B08 0013DA68  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80140B0C 0013DA6C  4E 80 00 20 */	blr

.global Growth__11CChozoGhostFR13CStateManager9EStateMsgf
Growth__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 80140B10 0013DA70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80140B14 0013DA74  7C 08 02 A6 */	mflr r0
/* 80140B18 0013DA78  2C 05 00 01 */	cmpwi r5, 1
/* 80140B1C 0013DA7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80140B20 0013DA80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80140B24 0013DA84  7C 9F 23 78 */	mr r31, r4
/* 80140B28 0013DA88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80140B2C 0013DA8C  7C 7E 1B 78 */	mr r30, r3
/* 80140B30 0013DA90  41 82 00 B0 */	beq lbl_80140BE0
/* 80140B34 0013DA94  40 80 00 10 */	bge lbl_80140B44
/* 80140B38 0013DA98  2C 05 00 00 */	cmpwi r5, 0
/* 80140B3C 0013DA9C  40 80 00 14 */	bge lbl_80140B50
/* 80140B40 0013DAA0  48 00 00 A0 */	b lbl_80140BE0
lbl_80140B44:
/* 80140B44 0013DAA4  2C 05 00 03 */	cmpwi r5, 3
/* 80140B48 0013DAA8  40 80 00 98 */	bge lbl_80140BE0
/* 80140B4C 0013DAAC  48 00 00 5C */	b lbl_80140BA8
lbl_80140B50:
/* 80140B50 0013DAB0  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 80140B54 0013DAB4  38 80 00 00 */	li r4, 0
/* 80140B58 0013DAB8  D0 1E 03 40 */	stfs f0, 0x340(r30)
/* 80140B5C 0013DABC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80140B60 0013DAC0  4B FF 9E 79 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80140B64 0013DAC4  C0 22 9B 60 */	lfs f1, lbl_805AB880@sda21(r2)
/* 80140B68 0013DAC8  38 60 00 01 */	li r3, 1
/* 80140B6C 0013DACC  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 80140B70 0013DAD0  D0 3E 03 E8 */	stfs f1, 0x3e8(r30)
/* 80140B74 0013DAD4  88 1E 06 64 */	lbz r0, 0x664(r30)
/* 80140B78 0013DAD8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80140B7C 0013DADC  98 1E 06 64 */	stb r0, 0x664(r30)
/* 80140B80 0013DAE0  C0 3E 05 6C */	lfs f1, 0x56c(r30)
/* 80140B84 0013DAE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80140B88 0013DAE8  40 81 00 58 */	ble lbl_80140BE0
/* 80140B8C 0013DAEC  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80140B90 0013DAF0  D0 3E 06 C8 */	stfs f1, 0x6c8(r30)
/* 80140B94 0013DAF4  38 A3 66 F4 */	addi r5, r3, lbl_805A66F4@l
/* 80140B98 0013DAF8  7F E4 FB 78 */	mr r4, r31
/* 80140B9C 0013DAFC  7F C3 F3 78 */	mr r3, r30
/* 80140BA0 0013DB00  48 00 01 75 */	bl sub_80140d14
/* 80140BA4 0013DB04  48 00 00 3C */	b lbl_80140BE0
lbl_80140BA8:
/* 80140BA8 0013DB08  88 1E 06 65 */	lbz r0, 0x665(r30)
/* 80140BAC 0013DB0C  38 60 00 00 */	li r3, 0
/* 80140BB0 0013DB10  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80140BB4 0013DB14  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80140BB8 0013DB18  98 1E 06 65 */	stb r0, 0x665(r30)
/* 80140BBC 0013DB1C  38 80 00 01 */	li r4, 1
/* 80140BC0 0013DB20  48 03 46 65 */	bl SetActive__13CBoneTrackingFb
/* 80140BC4 0013DB24  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80140BC8 0013DB28  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80140BCC 0013DB2C  38 81 00 0C */	addi r4, r1, 0xc
/* 80140BD0 0013DB30  A0 05 00 08 */	lhz r0, 8(r5)
/* 80140BD4 0013DB34  B0 01 00 08 */	sth r0, 8(r1)
/* 80140BD8 0013DB38  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80140BDC 0013DB3C  48 03 46 3D */	bl SetTarget__13CBoneTrackingF9TUniqueId
lbl_80140BE0:
/* 80140BE0 0013DB40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80140BE4 0013DB44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80140BE8 0013DB48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80140BEC 0013DB4C  7C 08 03 A6 */	mtlr r0
/* 80140BF0 0013DB50  38 21 00 20 */	addi r1, r1, 0x20
/* 80140BF4 0013DB54  4E 80 00 20 */	blr

.global AIStage__11CChozoGhostFR13CStateManagerf
AIStage__11CChozoGhostFR13CStateManagerf:
/* 80140BF8 0013DB58  FC 00 08 1E */	fctiwz f0, f1
/* 80140BFC 0013DB5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140C00 0013DB60  80 03 06 3C */	lwz r0, 0x63c(r3)
/* 80140C04 0013DB64  D8 01 00 08 */	stfd f0, 8(r1)
/* 80140C08 0013DB68  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80140C0C 0013DB6C  7C 00 18 50 */	subf r0, r0, r3
/* 80140C10 0013DB70  7C 00 00 34 */	cntlzw r0, r0
/* 80140C14 0013DB74  54 03 D9 7E */	srwi r3, r0, 5
/* 80140C18 0013DB78  38 21 00 10 */	addi r1, r1, 0x10
/* 80140C1C 0013DB7C  4E 80 00 20 */	blr

.global InActive__11CChozoGhostFR13CStateManager9EStateMsgf
InActive__11CChozoGhostFR13CStateManager9EStateMsgf:
/* 80140C20 0013DB80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80140C24 0013DB84  7C 08 02 A6 */	mflr r0
/* 80140C28 0013DB88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80140C2C 0013DB8C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80140C30 0013DB90  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80140C34 0013DB94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80140C38 0013DB98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80140C3C 0013DB9C  2C 05 00 01 */	cmpwi r5, 1
/* 80140C40 0013DBA0  7C 7E 1B 78 */	mr r30, r3
/* 80140C44 0013DBA4  7C 9F 23 78 */	mr r31, r4
/* 80140C48 0013DBA8  41 82 00 AC */	beq lbl_80140CF4
/* 80140C4C 0013DBAC  40 80 00 A8 */	bge lbl_80140CF4
/* 80140C50 0013DBB0  2C 05 00 00 */	cmpwi r5, 0
/* 80140C54 0013DBB4  40 80 00 08 */	bge lbl_80140C5C
/* 80140C58 0013DBB8  48 00 00 9C */	b lbl_80140CF4
lbl_80140C5C:
/* 80140C5C 0013DBBC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80140C60 0013DBC0  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80140C64 0013DBC4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80140C68 0013DBC8  40 82 00 08 */	bne lbl_80140C70
/* 80140C6C 0013DBCC  4B FF A0 85 */	bl Activate__15CBodyControllerFR13CStateManager
lbl_80140C70:
/* 80140C70 0013DBD0  80 1E 06 3C */	lwz r0, 0x63c(r30)
/* 80140C74 0013DBD4  2C 00 00 03 */	cmpwi r0, 3
/* 80140C78 0013DBD8  40 82 00 24 */	bne lbl_80140C9C
/* 80140C7C 0013DBDC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80140C80 0013DBE0  38 80 00 00 */	li r4, 0
/* 80140C84 0013DBE4  4B FF 9D 55 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80140C88 0013DBE8  C3 E2 9B 8C */	lfs f31, lbl_805AB8AC@sda21(r2)
/* 80140C8C 0013DBEC  F3 E1 A0 09 */	psq_st f31, 9(r1), 1, qr2
/* 80140C90 0013DBF0  88 01 00 09 */	lbz r0, 9(r1)
/* 80140C94 0013DBF4  98 1E 04 2F */	stb r0, 0x42f(r30)
/* 80140C98 0013DBF8  48 00 00 20 */	b lbl_80140CB8
lbl_80140C9C:
/* 80140C9C 0013DBFC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80140CA0 0013DC00  38 80 00 01 */	li r4, 1
/* 80140CA4 0013DC04  4B FF 9D 35 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80140CA8 0013DC08  C3 E2 9B 5C */	lfs f31, lbl_805AB87C@sda21(r2)
/* 80140CAC 0013DC0C  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 80140CB0 0013DC10  88 01 00 08 */	lbz r0, 8(r1)
/* 80140CB4 0013DC14  98 1E 04 2F */	stb r0, 0x42f(r30)
lbl_80140CB8:
/* 80140CB8 0013DC18  7F C3 F3 78 */	mr r3, r30
/* 80140CBC 0013DC1C  7F E5 FB 78 */	mr r5, r31
/* 80140CC0 0013DC20  38 80 00 13 */	li r4, 0x13
/* 80140CC4 0013DC24  4B F1 32 BD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80140CC8 0013DC28  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80140CCC 0013DC2C  C4 04 66 A0 */	lfsu f0, skZero3f@l(r4)
/* 80140CD0 0013DC30  38 60 00 01 */	li r3, 1
/* 80140CD4 0013DC34  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 80140CD8 0013DC38  C0 04 00 04 */	lfs f0, 4(r4)
/* 80140CDC 0013DC3C  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 80140CE0 0013DC40  C0 04 00 08 */	lfs f0, 8(r4)
/* 80140CE4 0013DC44  D0 1E 01 58 */	stfs f0, 0x158(r30)
/* 80140CE8 0013DC48  88 1E 06 65 */	lbz r0, 0x665(r30)
/* 80140CEC 0013DC4C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80140CF0 0013DC50  98 1E 06 65 */	stb r0, 0x665(r30)
lbl_80140CF4:
/* 80140CF4 0013DC54  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80140CF8 0013DC58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80140CFC 0013DC5C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80140D00 0013DC60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80140D04 0013DC64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80140D08 0013DC68  7C 08 03 A6 */	mtlr r0
/* 80140D0C 0013DC6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80140D10 0013DC70  4E 80 00 20 */	blr

.global sub_80140d14
sub_80140d14:
/* 80140D14 0013DC74  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80140D18 0013DC78  7C 08 02 A6 */	mflr r0
/* 80140D1C 0013DC7C  90 01 01 14 */	stw r0, 0x114(r1)
/* 80140D20 0013DC80  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80140D24 0013DC84  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 80140D28 0013DC88  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80140D2C 0013DC8C  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 80140D30 0013DC90  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 80140D34 0013DC94  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 80140D38 0013DC98  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80140D3C 0013DC9C  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80140D40 0013DCA0  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 80140D44 0013DCA4  7C 7D 1B 78 */	mr r29, r3
/* 80140D48 0013DCA8  7C 9E 23 78 */	mr r30, r4
/* 80140D4C 0013DCAC  7C BF 2B 78 */	mr r31, r5
/* 80140D50 0013DCB0  38 61 00 50 */	addi r3, r1, 0x50
/* 80140D54 0013DCB4  7F A4 EB 78 */	mr r4, r29
/* 80140D58 0013DCB8  4B FD 9B D5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80140D5C 0013DCBC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80140D60 0013DCC0  38 81 00 50 */	addi r4, r1, 0x50
/* 80140D64 0013DCC4  48 1F 68 A9 */	bl GetCenterPoint__6CAABoxCFv
/* 80140D68 0013DCC8  80 AD 8B A8 */	lwz r5, lbl_805A7768@sda21(r13)
/* 80140D6C 0013DCCC  38 60 00 00 */	li r3, 0
/* 80140D70 0013DCD0  C3 A1 00 2C */	lfs f29, 0x2c(r1)
/* 80140D74 0013DCD4  38 80 00 01 */	li r4, 1
/* 80140D78 0013DCD8  C3 E1 00 30 */	lfs f31, 0x30(r1)
/* 80140D7C 0013DCDC  C3 C1 00 34 */	lfs f30, 0x34(r1)
/* 80140D80 0013DCE0  48 24 91 75 */	bl __shl2i
/* 80140D84 0013DCE4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80140D88 0013DCE8  38 A0 00 00 */	li r5, 0
/* 80140D8C 0013DCEC  C0 22 9B 90 */	lfs f1, lbl_805AB8B0@sda21(r2)
/* 80140D90 0013DCF0  38 00 00 01 */	li r0, 1
/* 80140D94 0013DCF4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80140D98 0013DCF8  FD 20 10 50 */	fneg f9, f2
/* 80140D9C 0013DCFC  EC 81 00 B2 */	fmuls f4, f1, f2
/* 80140DA0 0013DD00  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80140DA4 0013DD04  EC A1 00 F2 */	fmuls f5, f1, f3
/* 80140DA8 0013DD08  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80140DAC 0013DD0C  FD 00 18 50 */	fneg f8, f3
/* 80140DB0 0013DD10  EC 41 00 32 */	fmuls f2, f1, f0
/* 80140DB4 0013DD14  FC 60 00 50 */	fneg f3, f0
/* 80140DB8 0013DD18  90 61 00 38 */	stw r3, 0x38(r1)
/* 80140DBC 0013DD1C  EC FF 28 2A */	fadds f7, f31, f5
/* 80140DC0 0013DD20  7F C4 F3 78 */	mr r4, r30
/* 80140DC4 0013DD24  EC DE 20 2A */	fadds f6, f30, f4
/* 80140DC8 0013DD28  EC 1D 10 2A */	fadds f0, f29, f2
/* 80140DCC 0013DD2C  90 A1 00 44 */	stw r5, 0x44(r1)
/* 80140DD0 0013DD30  38 61 00 68 */	addi r3, r1, 0x68
/* 80140DD4 0013DD34  38 C1 00 08 */	addi r6, r1, 8
/* 80140DD8 0013DD38  38 E1 00 38 */	addi r7, r1, 0x38
/* 80140DDC 0013DD3C  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80140DE0 0013DD40  38 A1 00 20 */	addi r5, r1, 0x20
/* 80140DE4 0013DD44  90 01 00 48 */	stw r0, 0x48(r1)
/* 80140DE8 0013DD48  D0 61 00 08 */	stfs f3, 8(r1)
/* 80140DEC 0013DD4C  D1 01 00 0C */	stfs f8, 0xc(r1)
/* 80140DF0 0013DD50  D1 21 00 10 */	stfs f9, 0x10(r1)
/* 80140DF4 0013DD54  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80140DF8 0013DD58  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80140DFC 0013DD5C  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80140E00 0013DD60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80140E04 0013DD64  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 80140E08 0013DD68  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80140E0C 0013DD6C  4B F0 C1 8D */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80140E10 0013DD70  88 81 00 88 */	lbz r4, 0x88(r1)
/* 80140E14 0013DD74  C0 E1 00 68 */	lfs f7, 0x68(r1)
/* 80140E18 0013DD78  C0 C1 00 6C */	lfs f6, 0x6c(r1)
/* 80140E1C 0013DD7C  28 04 00 00 */	cmplwi r4, 0
/* 80140E20 0013DD80  C0 A1 00 70 */	lfs f5, 0x70(r1)
/* 80140E24 0013DD84  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 80140E28 0013DD88  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 80140E2C 0013DD8C  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80140E30 0013DD90  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80140E34 0013DD94  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80140E38 0013DD98  80 01 00 90 */	lwz r0, 0x90(r1)
/* 80140E3C 0013DD9C  80 61 00 94 */	lwz r3, 0x94(r1)
/* 80140E40 0013DDA0  D0 E1 00 98 */	stfs f7, 0x98(r1)
/* 80140E44 0013DDA4  D0 C1 00 9C */	stfs f6, 0x9c(r1)
/* 80140E48 0013DDA8  D0 A1 00 A0 */	stfs f5, 0xa0(r1)
/* 80140E4C 0013DDAC  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 80140E50 0013DDB0  D0 61 00 A8 */	stfs f3, 0xa8(r1)
/* 80140E54 0013DDB4  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80140E58 0013DDB8  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 80140E5C 0013DDBC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80140E60 0013DDC0  98 81 00 B8 */	stb r4, 0xb8(r1)
/* 80140E64 0013DDC4  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 80140E68 0013DDC8  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80140E6C 0013DDCC  41 82 00 14 */	beq lbl_80140E80
/* 80140E70 0013DDD0  D0 DD 06 CC */	stfs f6, 0x6cc(r29)
/* 80140E74 0013DDD4  D0 BD 06 D0 */	stfs f5, 0x6d0(r29)
/* 80140E78 0013DDD8  D0 9D 06 D4 */	stfs f4, 0x6d4(r29)
/* 80140E7C 0013DDDC  48 00 00 28 */	b lbl_80140EA4
lbl_80140E80:
/* 80140E80 0013DDE0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80140E84 0013DDE4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80140E88 0013DDE8  EC 1D 00 2A */	fadds f0, f29, f0
/* 80140E8C 0013DDEC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80140E90 0013DDF0  EC 5F 10 2A */	fadds f2, f31, f2
/* 80140E94 0013DDF4  EC 3E 08 2A */	fadds f1, f30, f1
/* 80140E98 0013DDF8  D0 1D 06 CC */	stfs f0, 0x6cc(r29)
/* 80140E9C 0013DDFC  D0 5D 06 D0 */	stfs f2, 0x6d0(r29)
/* 80140EA0 0013DE00  D0 3D 06 D4 */	stfs f1, 0x6d4(r29)
lbl_80140EA4:
/* 80140EA4 0013DE04  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 80140EA8 0013DE08  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80140EAC 0013DE0C  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 80140EB0 0013DE10  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80140EB4 0013DE14  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 80140EB8 0013DE18  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 80140EBC 0013DE1C  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80140EC0 0013DE20  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80140EC4 0013DE24  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80140EC8 0013DE28  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 80140ECC 0013DE2C  7C 08 03 A6 */	mtlr r0
/* 80140ED0 0013DE30  38 21 01 10 */	addi r1, r1, 0x110
/* 80140ED4 0013DE34  4E 80 00 20 */	blr

.global sub_80140ed8
sub_80140ed8:
/* 80140ED8 0013DE38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80140EDC 0013DE3C  7C 08 02 A6 */	mflr r0
/* 80140EE0 0013DE40  90 01 00 44 */	stw r0, 0x44(r1)
/* 80140EE4 0013DE44  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80140EE8 0013DE48  7C 7F 1B 78 */	mr r31, r3
/* 80140EEC 0013DE4C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80140EF0 0013DE50  C0 E3 00 60 */	lfs f7, 0x60(r3)
/* 80140EF4 0013DE54  38 61 00 20 */	addi r3, r1, 0x20
/* 80140EF8 0013DE58  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 80140EFC 0013DE5C  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80140F00 0013DE60  C0 DF 00 50 */	lfs f6, 0x50(r31)
/* 80140F04 0013DE64  EC 47 28 28 */	fsubs f2, f7, f5
/* 80140F08 0013DE68  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80140F0C 0013DE6C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80140F10 0013DE70  EC 66 20 28 */	fsubs f3, f6, f4
/* 80140F14 0013DE74  D0 01 00 08 */	stfs f0, 8(r1)
/* 80140F18 0013DE78  EC 01 00 28 */	fsubs f0, f1, f0
/* 80140F1C 0013DE7C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80140F20 0013DE80  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80140F24 0013DE84  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80140F28 0013DE88  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 80140F2C 0013DE8C  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 80140F30 0013DE90  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80140F34 0013DE94  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80140F38 0013DE98  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80140F3C 0013DE9C  48 1D 39 7D */	bl Magnitude__9CVector3fCFv
/* 80140F40 0013DEA0  C0 1F 06 54 */	lfs f0, 0x654(r31)
/* 80140F44 0013DEA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80140F48 0013DEA8  40 80 00 0C */	bge lbl_80140F54
/* 80140F4C 0013DEAC  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 80140F50 0013DEB0  48 00 00 1C */	b lbl_80140F6C
lbl_80140F54:
/* 80140F54 0013DEB4  C0 1F 06 58 */	lfs f0, 0x658(r31)
/* 80140F58 0013DEB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80140F5C 0013DEBC  40 80 00 0C */	bge lbl_80140F68
/* 80140F60 0013DEC0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80140F64 0013DEC4  48 00 00 08 */	b lbl_80140F6C
lbl_80140F68:
/* 80140F68 0013DEC8  38 7F 06 08 */	addi r3, r31, 0x608
lbl_80140F6C:
/* 80140F6C 0013DECC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80140F70 0013DED0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80140F74 0013DED4  7C 08 03 A6 */	mtlr r0
/* 80140F78 0013DED8  38 21 00 40 */	addi r1, r1, 0x40
/* 80140F7C 0013DEDC  4E 80 00 20 */	blr

.global sub_80140f80
sub_80140f80:
/* 80140F80 0013DEE0  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80140F84 0013DEE4  7C 08 02 A6 */	mflr r0
/* 80140F88 0013DEE8  90 01 01 84 */	stw r0, 0x184(r1)
/* 80140F8C 0013DEEC  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 80140F90 0013DEF0  F3 E1 01 78 */	psq_st f31, 376(r1), 0, qr0
/* 80140F94 0013DEF4  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 80140F98 0013DEF8  F3 C1 01 68 */	psq_st f30, 360(r1), 0, qr0
/* 80140F9C 0013DEFC  DB A1 01 50 */	stfd f29, 0x150(r1)
/* 80140FA0 0013DF00  F3 A1 01 58 */	psq_st f29, 344(r1), 0, qr0
/* 80140FA4 0013DF04  DB 81 01 40 */	stfd f28, 0x140(r1)
/* 80140FA8 0013DF08  F3 81 01 48 */	psq_st f28, 328(r1), 0, qr0
/* 80140FAC 0013DF0C  DB 61 01 30 */	stfd f27, 0x130(r1)
/* 80140FB0 0013DF10  F3 61 01 38 */	psq_st f27, 312(r1), 0, qr0
/* 80140FB4 0013DF14  DB 41 01 20 */	stfd f26, 0x120(r1)
/* 80140FB8 0013DF18  F3 41 01 28 */	psq_st f26, 296(r1), 0, qr0
/* 80140FBC 0013DF1C  BF 41 01 08 */	stmw r26, 0x108(r1)
/* 80140FC0 0013DF20  7C 7B 1B 78 */	mr r27, r3
/* 80140FC4 0013DF24  38 60 00 00 */	li r3, 0
/* 80140FC8 0013DF28  88 1B 06 65 */	lbz r0, 0x665(r27)
/* 80140FCC 0013DF2C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80140FD0 0013DF30  C3 C2 9B 94 */	lfs f30, lbl_805AB8B4@sda21(r2)
/* 80140FD4 0013DF34  7C 9C 23 78 */	mr r28, r4
/* 80140FD8 0013DF38  98 1B 06 65 */	stb r0, 0x665(r27)
/* 80140FDC 0013DF3C  3B C0 00 00 */	li r30, 0
/* 80140FE0 0013DF40  83 E4 08 40 */	lwz r31, 0x840(r4)
/* 80140FE4 0013DF44  80 64 09 00 */	lwz r3, 0x900(r4)
/* 80140FE8 0013DF48  48 1D 15 39 */	bl Next__9CRandom16Fv
/* 80140FEC 0013DF4C  3C 80 51 EC */	lis r4, 0x51EB851F@ha
/* 80140FF0 0013DF50  80 BB 06 5C */	lwz r5, 0x65c(r27)
/* 80140FF4 0013DF54  38 04 85 1F */	addi r0, r4, 0x51EB851F@l
/* 80140FF8 0013DF58  7C 00 18 96 */	mulhw r0, r0, r3
/* 80140FFC 0013DF5C  7C 00 2E 70 */	srawi r0, r0, 5
/* 80141000 0013DF60  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80141004 0013DF64  7C 00 22 14 */	add r0, r0, r4
/* 80141008 0013DF68  1C 00 00 64 */	mulli r0, r0, 0x64
/* 8014100C 0013DF6C  7C C0 18 50 */	subf r6, r0, r3
/* 80141010 0013DF70  7C 06 28 00 */	cmpw r6, r5
/* 80141014 0013DF74  40 80 00 0C */	bge lbl_80141020
/* 80141018 0013DF78  38 00 00 00 */	li r0, 0
/* 8014101C 0013DF7C  48 00 00 20 */	b lbl_8014103C
lbl_80141020:
/* 80141020 0013DF80  80 7B 06 60 */	lwz r3, 0x660(r27)
/* 80141024 0013DF84  54 C0 0F FE */	srwi r0, r6, 0x1f
/* 80141028 0013DF88  7C 85 1A 14 */	add r4, r5, r3
/* 8014102C 0013DF8C  7C 64 30 10 */	subfc r3, r4, r6
/* 80141030 0013DF90  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80141034 0013DF94  7C 60 19 10 */	subfe r3, r0, r3
/* 80141038 0013DF98  38 03 00 02 */	addi r0, r3, 2
lbl_8014103C:
/* 8014103C 0013DF9C  C0 22 9B 98 */	lfs f1, lbl_805AB8B8@sda21(r2)
/* 80141040 0013DFA0  2C 00 00 01 */	cmpwi r0, 1
/* 80141044 0013DFA4  C0 1B 06 58 */	lfs f0, 0x658(r27)
/* 80141048 0013DFA8  EF A1 00 32 */	fmuls f29, f1, f0
/* 8014104C 0013DFAC  FF 80 E8 90 */	fmr f28, f29
/* 80141050 0013DFB0  FF 60 E8 90 */	fmr f27, f29
/* 80141054 0013DFB4  41 82 00 30 */	beq lbl_80141084
/* 80141058 0013DFB8  40 80 00 10 */	bge lbl_80141068
/* 8014105C 0013DFBC  2C 00 00 00 */	cmpwi r0, 0
/* 80141060 0013DFC0  40 80 00 14 */	bge lbl_80141074
/* 80141064 0013DFC4  48 00 00 3C */	b lbl_801410A0
lbl_80141068:
/* 80141068 0013DFC8  2C 00 00 03 */	cmpwi r0, 3
/* 8014106C 0013DFCC  40 80 00 34 */	bge lbl_801410A0
/* 80141070 0013DFD0  48 00 00 24 */	b lbl_80141094
lbl_80141074:
/* 80141074 0013DFD4  C0 02 9B 9C */	lfs f0, lbl_805AB8BC@sda21(r2)
/* 80141078 0013DFD8  EF 7D 00 72 */	fmuls f27, f29, f1
/* 8014107C 0013DFDC  EF 9D 00 32 */	fmuls f28, f29, f0
/* 80141080 0013DFE0  48 00 00 20 */	b lbl_801410A0
lbl_80141084:
/* 80141084 0013DFE4  C0 02 9B 9C */	lfs f0, lbl_805AB8BC@sda21(r2)
/* 80141088 0013DFE8  EF BD 00 72 */	fmuls f29, f29, f1
/* 8014108C 0013DFEC  EF 7B 00 32 */	fmuls f27, f27, f0
/* 80141090 0013DFF0  48 00 00 10 */	b lbl_801410A0
lbl_80141094:
/* 80141094 0013DFF4  C0 02 9B 9C */	lfs f0, lbl_805AB8BC@sda21(r2)
/* 80141098 0013DFF8  EF BD 00 72 */	fmuls f29, f29, f1
/* 8014109C 0013DFFC  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_801410A0:
/* 801410A0 0013E000  AB BF 20 08 */	lha r29, 0x2008(r31)
/* 801410A4 0013E004  48 00 02 B4 */	b lbl_80141358
lbl_801410A8:
/* 801410A8 0013E008  7F E3 FB 78 */	mr r3, r31
/* 801410AC 0013E00C  7F A4 EB 78 */	mr r4, r29
/* 801410B0 0013E010  4B EC EC 65 */	bl __vc__11CObjectListFi
/* 801410B4 0013E014  7C 64 1B 78 */	mr r4, r3
/* 801410B8 0013E018  38 61 00 10 */	addi r3, r1, 0x10
/* 801410BC 0013E01C  4B F6 99 71 */	bl "__ct__31TCastToPtr<17CScriptCoverPoint>FP7CEntity"
/* 801410C0 0013E020  83 43 00 04 */	lwz r26, 4(r3)
/* 801410C4 0013E024  28 1A 00 00 */	cmplwi r26, 0
/* 801410C8 0013E028  41 82 02 74 */	beq lbl_8014133C
/* 801410CC 0013E02C  88 1A 00 30 */	lbz r0, 0x30(r26)
/* 801410D0 0013E030  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801410D4 0013E034  41 82 02 68 */	beq lbl_8014133C
/* 801410D8 0013E038  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801410DC 0013E03C  7F 43 D3 78 */	mr r3, r26
/* 801410E0 0013E040  38 81 00 08 */	addi r4, r1, 8
/* 801410E4 0013E044  B0 01 00 08 */	sth r0, 8(r1)
/* 801410E8 0013E048  4B FE C3 2D */	bl GetInUse__17CScriptCoverPointCF9TUniqueId
/* 801410EC 0013E04C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801410F0 0013E050  40 82 02 4C */	bne lbl_8014133C
/* 801410F4 0013E054  80 7A 00 04 */	lwz r3, 4(r26)
/* 801410F8 0013E058  80 1B 00 04 */	lwz r0, 4(r27)
/* 801410FC 0013E05C  7C 03 00 00 */	cmpw r3, r0
/* 80141100 0013E060  40 82 02 3C */	bne lbl_8014133C
/* 80141104 0013E064  C0 BA 00 60 */	lfs f5, 0x60(r26)
/* 80141108 0013E068  38 61 00 6C */	addi r3, r1, 0x6c
/* 8014110C 0013E06C  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 80141110 0013E070  C0 9A 00 50 */	lfs f4, 0x50(r26)
/* 80141114 0013E074  C0 5B 00 50 */	lfs f2, 0x50(r27)
/* 80141118 0013E078  EC 25 00 28 */	fsubs f1, f5, f0
/* 8014111C 0013E07C  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80141120 0013E080  C0 7B 00 40 */	lfs f3, 0x40(r27)
/* 80141124 0013E084  EC 44 10 28 */	fsubs f2, f4, f2
/* 80141128 0013E088  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8014112C 0013E08C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80141130 0013E090  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 80141134 0013E094  D0 A1 00 68 */	stfs f5, 0x68(r1)
/* 80141138 0013E098  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8014113C 0013E09C  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80141140 0013E0A0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80141144 0013E0A4  48 1D 37 75 */	bl Magnitude__9CVector3fCFv
/* 80141148 0013E0A8  C0 42 9B 68 */	lfs f2, lbl_805AB888@sda21(r2)
/* 8014114C 0013E0AC  C0 1B 06 6C */	lfs f0, 0x66c(r27)
/* 80141150 0013E0B0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80141154 0013E0B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80141158 0013E0B8  41 80 01 E4 */	blt lbl_8014133C
/* 8014115C 0013E0BC  C0 1B 06 54 */	lfs f0, 0x654(r27)
/* 80141160 0013E0C0  38 81 00 0C */	addi r4, r1, 0xc
/* 80141164 0013E0C4  38 6D 8B A0 */	addi r3, r13, lbl_805A7760@sda21
/* 80141168 0013E0C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8014116C 0013E0CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80141170 0013E0D0  4B F0 E5 C1 */	bl "Max<f>__5CMathFRCfRCf"
/* 80141174 0013E0D4  80 9C 08 4C */	lwz r4, 0x84c(r28)
/* 80141178 0013E0D8  C3 43 00 00 */	lfs f26, 0(r3)
/* 8014117C 0013E0DC  38 61 00 84 */	addi r3, r1, 0x84
/* 80141180 0013E0E0  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80141184 0013E0E4  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80141188 0013E0E8  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 8014118C 0013E0EC  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 80141190 0013E0F0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80141194 0013E0F4  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 80141198 0013E0F8  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8014119C 0013E0FC  EC 43 10 28 */	fsubs f2, f3, f2
/* 801411A0 0013E100  EC 01 00 28 */	fsubs f0, f1, f0
/* 801411A4 0013E104  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 801411A8 0013E108  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 801411AC 0013E10C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801411B0 0013E110  48 1D 37 09 */	bl Magnitude__9CVector3fCFv
/* 801411B4 0013E114  FF E0 08 90 */	fmr f31, f1
/* 801411B8 0013E118  C0 1B 02 FC */	lfs f0, 0x2fc(r27)
/* 801411BC 0013E11C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801411C0 0013E120  41 80 01 7C */	blt lbl_8014133C
/* 801411C4 0013E124  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 801411C8 0013E128  C0 02 9B A4 */	lfs f0, lbl_805AB8C4@sda21(r2)
/* 801411CC 0013E12C  FC 20 0A 10 */	fabs f1, f1
/* 801411D0 0013E130  FC 20 08 18 */	frsp f1, f1
/* 801411D4 0013E134  EC 21 F8 24 */	fdivs f1, f1, f31
/* 801411D8 0013E138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801411DC 0013E13C  40 81 00 18 */	ble lbl_801411F4
/* 801411E0 0013E140  C0 42 9B A0 */	lfs f2, lbl_805AB8C0@sda21(r2)
/* 801411E4 0013E144  EC 01 00 28 */	fsubs f0, f1, f0
/* 801411E8 0013E148  C0 3B 06 58 */	lfs f1, 0x658(r27)
/* 801411EC 0013E14C  EC 22 00 72 */	fmuls f1, f2, f1
/* 801411F0 0013E150  EF 41 D0 3A */	fmadds f26, f1, f0, f26
lbl_801411F4:
/* 801411F4 0013E154  C0 1B 06 54 */	lfs f0, 0x654(r27)
/* 801411F8 0013E158  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801411FC 0013E15C  40 80 00 7C */	bge lbl_80141278
/* 80141200 0013E160  EF 5A E8 2A */	fadds f26, f26, f29
/* 80141204 0013E164  FC 1A F0 40 */	fcmpo cr0, f26, f30
/* 80141208 0013E168  40 80 00 F4 */	bge lbl_801412FC
/* 8014120C 0013E16C  C0 C2 9B 60 */	lfs f6, lbl_805AB880@sda21(r2)
/* 80141210 0013E170  C0 61 00 84 */	lfs f3, 0x84(r1)
/* 80141214 0013E174  EC E6 F8 24 */	fdivs f7, f6, f31
/* 80141218 0013E178  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 8014121C 0013E17C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80141220 0013E180  C0 22 9B 98 */	lfs f1, lbl_805AB8B8@sda21(r2)
/* 80141224 0013E184  EC A3 01 F2 */	fmuls f5, f3, f7
/* 80141228 0013E188  EC 82 01 F2 */	fmuls f4, f2, f7
/* 8014122C 0013E18C  EC 60 01 F2 */	fmuls f3, f0, f7
/* 80141230 0013E190  D0 A1 00 84 */	stfs f5, 0x84(r1)
/* 80141234 0013E194  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 80141238 0013E198  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 8014123C 0013E19C  80 7C 08 4C */	lwz r3, 0x84c(r28)
/* 80141240 0013E1A0  C0 1B 06 58 */	lfs f0, 0x658(r27)
/* 80141244 0013E1A4  C0 E3 00 48 */	lfs f7, 0x48(r3)
/* 80141248 0013E1A8  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8014124C 0013E1AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80141250 0013E1B0  EC 07 01 32 */	fmuls f0, f7, f4
/* 80141254 0013E1B4  C0 83 00 58 */	lfs f4, 0x58(r3)
/* 80141258 0013E1B8  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8014125C 0013E1BC  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 80141260 0013E1C0  D0 E1 00 58 */	stfs f7, 0x58(r1)
/* 80141264 0013E1C4  D0 81 00 5C */	stfs f4, 0x5c(r1)
/* 80141268 0013E1C8  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 8014126C 0013E1CC  EC 06 00 28 */	fsubs f0, f6, f0
/* 80141270 0013E1D0  EF 41 D0 3A */	fmadds f26, f1, f0, f26
/* 80141274 0013E1D4  48 00 00 88 */	b lbl_801412FC
lbl_80141278:
/* 80141278 0013E1D8  C0 FB 06 58 */	lfs f7, 0x658(r27)
/* 8014127C 0013E1DC  FC 1F 38 40 */	fcmpo cr0, f31, f7
/* 80141280 0013E1E0  40 80 00 78 */	bge lbl_801412F8
/* 80141284 0013E1E4  EF 5A E0 2A */	fadds f26, f26, f28
/* 80141288 0013E1E8  FC 1A F0 40 */	fcmpo cr0, f26, f30
/* 8014128C 0013E1EC  40 80 00 70 */	bge lbl_801412FC
/* 80141290 0013E1F0  C0 C2 9B 60 */	lfs f6, lbl_805AB880@sda21(r2)
/* 80141294 0013E1F4  C0 02 9B 98 */	lfs f0, lbl_805AB8B8@sda21(r2)
/* 80141298 0013E1F8  ED 06 F8 24 */	fdivs f8, f6, f31
/* 8014129C 0013E1FC  C0 61 00 84 */	lfs f3, 0x84(r1)
/* 801412A0 0013E200  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 801412A4 0013E204  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 801412A8 0013E208  EC A3 02 32 */	fmuls f5, f3, f8
/* 801412AC 0013E20C  EC 82 02 32 */	fmuls f4, f2, f8
/* 801412B0 0013E210  EC 61 02 32 */	fmuls f3, f1, f8
/* 801412B4 0013E214  D0 A1 00 84 */	stfs f5, 0x84(r1)
/* 801412B8 0013E218  EC 20 01 F2 */	fmuls f1, f0, f7
/* 801412BC 0013E21C  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 801412C0 0013E220  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 801412C4 0013E224  80 7C 08 4C */	lwz r3, 0x84c(r28)
/* 801412C8 0013E228  C0 E3 00 48 */	lfs f7, 0x48(r3)
/* 801412CC 0013E22C  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 801412D0 0013E230  EC 07 01 32 */	fmuls f0, f7, f4
/* 801412D4 0013E234  C0 83 00 58 */	lfs f4, 0x58(r3)
/* 801412D8 0013E238  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 801412DC 0013E23C  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 801412E0 0013E240  D0 E1 00 4C */	stfs f7, 0x4c(r1)
/* 801412E4 0013E244  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 801412E8 0013E248  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 801412EC 0013E24C  EC 06 00 28 */	fsubs f0, f6, f0
/* 801412F0 0013E250  EF 41 D0 3A */	fmadds f26, f1, f0, f26
/* 801412F4 0013E254  48 00 00 08 */	b lbl_801412FC
lbl_801412F8:
/* 801412F8 0013E258  EF 5A D8 2A */	fadds f26, f26, f27
lbl_801412FC:
/* 801412FC 0013E25C  FC 1A F0 40 */	fcmpo cr0, f26, f30
/* 80141300 0013E260  40 80 00 3C */	bge lbl_8014133C
/* 80141304 0013E264  80 7C 09 00 */	lwz r3, 0x900(r28)
/* 80141308 0013E268  48 1D 11 D5 */	bl Float__9CRandom16Fv
/* 8014130C 0013E26C  C0 1B 06 58 */	lfs f0, 0x658(r27)
/* 80141310 0013E270  EF 40 D0 7A */	fmadds f26, f0, f1, f26
/* 80141314 0013E274  FC 1A F0 40 */	fcmpo cr0, f26, f30
/* 80141318 0013E278  40 80 00 24 */	bge lbl_8014133C
/* 8014131C 0013E27C  C0 1B 03 C8 */	lfs f0, 0x3c8(r27)
/* 80141320 0013E280  FF C0 D0 90 */	fmr f30, f26
/* 80141324 0013E284  7F 5E D3 78 */	mr r30, r26
/* 80141328 0013E288  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8014132C 0013E28C  7C 60 00 26 */	mfcr r3
/* 80141330 0013E290  88 1B 06 65 */	lbz r0, 0x665(r27)
/* 80141334 0013E294  50 60 36 F6 */	rlwimi r0, r3, 6, 0x1b, 0x1b
/* 80141338 0013E298  98 1B 06 65 */	stb r0, 0x665(r27)
lbl_8014133C:
/* 8014133C 0013E29C  2C 1D FF FF */	cmpwi r29, -1
/* 80141340 0013E2A0  41 82 00 14 */	beq lbl_80141354
/* 80141344 0013E2A4  57 A3 18 38 */	slwi r3, r29, 3
/* 80141348 0013E2A8  38 03 00 08 */	addi r0, r3, 8
/* 8014134C 0013E2AC  7F BF 02 AE */	lhax r29, r31, r0
/* 80141350 0013E2B0  48 00 00 08 */	b lbl_80141358
lbl_80141354:
/* 80141354 0013E2B4  3B A0 FF FF */	li r29, -1
lbl_80141358:
/* 80141358 0013E2B8  2C 1D FF FF */	cmpwi r29, -1
/* 8014135C 0013E2BC  40 82 FD 4C */	bne lbl_801410A8
/* 80141360 0013E2C0  28 1E 00 00 */	cmplwi r30, 0
/* 80141364 0013E2C4  41 82 00 54 */	beq lbl_801413B8
/* 80141368 0013E2C8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8014136C 0013E2CC  7F 63 DB 78 */	mr r3, r27
/* 80141370 0013E2D0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80141374 0013E2D4  B0 1B 02 DC */	sth r0, 0x2dc(r27)
/* 80141378 0013E2D8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8014137C 0013E2DC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80141380 0013E2E0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80141384 0013E2E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80141388 0013E2E8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8014138C 0013E2EC  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80141390 0013E2F0  4B F3 B7 CD */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80141394 0013E2F4  7F 63 DB 78 */	mr r3, r27
/* 80141398 0013E2F8  7F 84 E3 78 */	mr r4, r28
/* 8014139C 0013E2FC  38 BB 06 74 */	addi r5, r27, 0x674
/* 801413A0 0013E300  4B F3 B4 BD */	bl ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId
/* 801413A4 0013E304  7F 63 DB 78 */	mr r3, r27
/* 801413A8 0013E308  7F C4 F3 78 */	mr r4, r30
/* 801413AC 0013E30C  38 BB 06 74 */	addi r5, r27, 0x674
/* 801413B0 0013E310  4B F3 B4 65 */	bl SetCoverPoint__10CPatternedFP17CScriptCoverPointR9TUniqueId
/* 801413B4 0013E314  48 00 01 98 */	b lbl_8014154C
lbl_801413B8:
/* 801413B8 0013E318  80 9C 08 4C */	lwz r4, 0x84c(r28)
/* 801413BC 0013E31C  80 1B 00 04 */	lwz r0, 4(r27)
/* 801413C0 0013E320  80 64 00 04 */	lwz r3, 4(r4)
/* 801413C4 0013E324  7C 03 00 00 */	cmpw r3, r0
/* 801413C8 0013E328  40 82 01 64 */	bne lbl_8014152C
/* 801413CC 0013E32C  A0 04 00 08 */	lhz r0, 8(r4)
/* 801413D0 0013E330  38 61 00 30 */	addi r3, r1, 0x30
/* 801413D4 0013E334  38 81 00 24 */	addi r4, r1, 0x24
/* 801413D8 0013E338  B0 1B 02 DC */	sth r0, 0x2dc(r27)
/* 801413DC 0013E33C  80 BC 08 4C */	lwz r5, 0x84c(r28)
/* 801413E0 0013E340  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 801413E4 0013E344  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 801413E8 0013E348  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 801413EC 0013E34C  C0 5B 00 50 */	lfs f2, 0x50(r27)
/* 801413F0 0013E350  EC 25 00 28 */	fsubs f1, f5, f0
/* 801413F4 0013E354  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801413F8 0013E358  C0 7B 00 40 */	lfs f3, 0x40(r27)
/* 801413FC 0013E35C  EC 44 10 28 */	fsubs f2, f4, f2
/* 80141400 0013E360  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80141404 0013E364  EC 00 18 28 */	fsubs f0, f0, f3
/* 80141408 0013E368  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8014140C 0013E36C  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 80141410 0013E370  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80141414 0013E374  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80141418 0013E378  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8014141C 0013E37C  48 1D 34 35 */	bl AsNormalized__9CVector3fCFv
/* 80141420 0013E380  C0 DB 06 54 */	lfs f6, 0x654(r27)
/* 80141424 0013E384  38 60 00 00 */	li r3, 0
/* 80141428 0013E388  80 BC 08 4C */	lwz r5, 0x84c(r28)
/* 8014142C 0013E38C  38 80 00 01 */	li r4, 1
/* 80141430 0013E390  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80141434 0013E394  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80141438 0013E398  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8014143C 0013E39C  EC 86 00 B2 */	fmuls f4, f6, f2
/* 80141440 0013E3A0  C0 A5 00 50 */	lfs f5, 0x50(r5)
/* 80141444 0013E3A4  EC 06 00 32 */	fmuls f0, f6, f0
/* 80141448 0013E3A8  EC 46 00 72 */	fmuls f2, f6, f1
/* 8014144C 0013E3AC  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 80141450 0013E3B0  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 80141454 0013E3B4  EC 85 20 28 */	fsubs f4, f5, f4
/* 80141458 0013E3B8  80 AD 8B A4 */	lwz r5, lbl_805A7764@sda21(r13)
/* 8014145C 0013E3BC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80141460 0013E3C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80141464 0013E3C4  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 80141468 0013E3C8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8014146C 0013E3CC  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80141470 0013E3D0  48 24 8A 85 */	bl __shl2i
/* 80141474 0013E3D4  39 00 00 00 */	li r8, 0
/* 80141478 0013E3D8  38 00 00 01 */	li r0, 1
/* 8014147C 0013E3DC  3C A0 80 5A */	lis r5, lbl_805A6700@ha
/* 80141480 0013E3E0  90 81 00 94 */	stw r4, 0x94(r1)
/* 80141484 0013E3E4  38 C5 67 00 */	addi r6, r5, lbl_805A6700@l
/* 80141488 0013E3E8  C0 22 9B 90 */	lfs f1, lbl_805AB8B0@sda21(r2)
/* 8014148C 0013E3EC  90 61 00 90 */	stw r3, 0x90(r1)
/* 80141490 0013E3F0  7F 84 E3 78 */	mr r4, r28
/* 80141494 0013E3F4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80141498 0013E3F8  38 A1 00 78 */	addi r5, r1, 0x78
/* 8014149C 0013E3FC  91 01 00 9C */	stw r8, 0x9c(r1)
/* 801414A0 0013E400  38 E1 00 90 */	addi r7, r1, 0x90
/* 801414A4 0013E404  91 01 00 98 */	stw r8, 0x98(r1)
/* 801414A8 0013E408  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801414AC 0013E40C  4B F0 BA ED */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 801414B0 0013E410  88 81 00 C8 */	lbz r4, 0xc8(r1)
/* 801414B4 0013E414  C0 E1 00 A8 */	lfs f7, 0xa8(r1)
/* 801414B8 0013E418  C0 C1 00 AC */	lfs f6, 0xac(r1)
/* 801414BC 0013E41C  28 04 00 00 */	cmplwi r4, 0
/* 801414C0 0013E420  C0 A1 00 B0 */	lfs f5, 0xb0(r1)
/* 801414C4 0013E424  C0 81 00 B4 */	lfs f4, 0xb4(r1)
/* 801414C8 0013E428  C0 61 00 B8 */	lfs f3, 0xb8(r1)
/* 801414CC 0013E42C  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 801414D0 0013E430  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 801414D4 0013E434  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 801414D8 0013E438  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 801414DC 0013E43C  80 61 00 D4 */	lwz r3, 0xd4(r1)
/* 801414E0 0013E440  D0 E1 00 D8 */	stfs f7, 0xd8(r1)
/* 801414E4 0013E444  D0 C1 00 DC */	stfs f6, 0xdc(r1)
/* 801414E8 0013E448  D0 A1 00 E0 */	stfs f5, 0xe0(r1)
/* 801414EC 0013E44C  D0 81 00 E4 */	stfs f4, 0xe4(r1)
/* 801414F0 0013E450  D0 61 00 E8 */	stfs f3, 0xe8(r1)
/* 801414F4 0013E454  D0 41 00 EC */	stfs f2, 0xec(r1)
/* 801414F8 0013E458  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 801414FC 0013E45C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80141500 0013E460  98 81 00 F8 */	stb r4, 0xf8(r1)
/* 80141504 0013E464  90 61 01 04 */	stw r3, 0x104(r1)
/* 80141508 0013E468  90 01 01 00 */	stw r0, 0x100(r1)
/* 8014150C 0013E46C  41 82 00 10 */	beq lbl_8014151C
/* 80141510 0013E470  D0 C1 00 78 */	stfs f6, 0x78(r1)
/* 80141514 0013E474  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 80141518 0013E478  D0 81 00 80 */	stfs f4, 0x80(r1)
lbl_8014151C:
/* 8014151C 0013E47C  7F 63 DB 78 */	mr r3, r27
/* 80141520 0013E480  38 81 00 78 */	addi r4, r1, 0x78
/* 80141524 0013E484  4B F3 B6 39 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80141528 0013E488  48 00 00 24 */	b lbl_8014154C
lbl_8014152C:
/* 8014152C 0013E48C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80141530 0013E490  B0 1B 02 DC */	sth r0, 0x2dc(r27)
/* 80141534 0013E494  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 80141538 0013E498  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 8014153C 0013E49C  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80141540 0013E4A0  D0 1B 02 E0 */	stfs f0, 0x2e0(r27)
/* 80141544 0013E4A4  D0 3B 02 E4 */	stfs f1, 0x2e4(r27)
/* 80141548 0013E4A8  D0 5B 02 E8 */	stfs f2, 0x2e8(r27)
lbl_8014154C:
/* 8014154C 0013E4AC  E3 E1 01 78 */	psq_l f31, 376(r1), 0, qr0
/* 80141550 0013E4B0  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 80141554 0013E4B4  E3 C1 01 68 */	psq_l f30, 360(r1), 0, qr0
/* 80141558 0013E4B8  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 8014155C 0013E4BC  E3 A1 01 58 */	psq_l f29, 344(r1), 0, qr0
/* 80141560 0013E4C0  CB A1 01 50 */	lfd f29, 0x150(r1)
/* 80141564 0013E4C4  E3 81 01 48 */	psq_l f28, 328(r1), 0, qr0
/* 80141568 0013E4C8  CB 81 01 40 */	lfd f28, 0x140(r1)
/* 8014156C 0013E4CC  E3 61 01 38 */	psq_l f27, 312(r1), 0, qr0
/* 80141570 0013E4D0  CB 61 01 30 */	lfd f27, 0x130(r1)
/* 80141574 0013E4D4  E3 41 01 28 */	psq_l f26, 296(r1), 0, qr0
/* 80141578 0013E4D8  CB 41 01 20 */	lfd f26, 0x120(r1)
/* 8014157C 0013E4DC  BB 41 01 08 */	lmw r26, 0x108(r1)
/* 80141580 0013E4E0  80 01 01 84 */	lwz r0, 0x184(r1)
/* 80141584 0013E4E4  7C 08 03 A6 */	mtlr r0
/* 80141588 0013E4E8  38 21 01 80 */	addi r1, r1, 0x180
/* 8014158C 0013E4EC  4E 80 00 20 */	blr

.global sub_80141590
sub_80141590:
/* 80141590 0013E4F0  88 03 06 64 */	lbz r0, 0x664(r3)
/* 80141594 0013E4F4  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 80141598 0013E4F8  4E 80 00 20 */	blr

.global sub_8014159c
sub_8014159c:
/* 8014159C 0013E4FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801415A0 0013E500  7C 08 02 A6 */	mflr r0
/* 801415A4 0013E504  C0 62 9B 74 */	lfs f3, lbl_805AB894@sda21(r2)
/* 801415A8 0013E508  90 01 00 24 */	stw r0, 0x24(r1)
/* 801415AC 0013E50C  38 81 00 08 */	addi r4, r1, 8
/* 801415B0 0013E510  C0 A3 00 60 */	lfs f5, 0x60(r3)
/* 801415B4 0013E514  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 801415B8 0013E518  EC 01 28 28 */	fsubs f0, f1, f5
/* 801415BC 0013E51C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801415C0 0013E520  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801415C4 0013E524  EC 03 00 32 */	fmuls f0, f3, f0
/* 801415C8 0013E528  D0 21 00 08 */	stfs f1, 8(r1)
/* 801415CC 0013E52C  EC 00 28 BA */	fmadds f0, f0, f2, f5
/* 801415D0 0013E530  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801415D4 0013E534  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801415D8 0013E538  4B F1 18 B5 */	bl SetTranslation__6CActorFRC9CVector3f
/* 801415DC 0013E53C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801415E0 0013E540  7C 08 03 A6 */	mtlr r0
/* 801415E4 0013E544  38 21 00 20 */	addi r1, r1, 0x20
/* 801415E8 0013E548  4E 80 00 20 */	blr

.global sub_801415ec
sub_801415ec:
/* 801415EC 0013E54C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801415F0 0013E550  7C 08 02 A6 */	mflr r0
/* 801415F4 0013E554  90 01 00 34 */	stw r0, 0x34(r1)
/* 801415F8 0013E558  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801415FC 0013E55C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80141600 0013E560  7C 7E 1B 78 */	mr r30, r3
/* 80141604 0013E564  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80141608 0013E568  A0 63 06 C4 */	lhz r3, 0x6c4(r3)
/* 8014160C 0013E56C  7C 03 00 40 */	cmplw r3, r0
/* 80141610 0013E570  41 82 00 70 */	beq lbl_80141680
/* 80141614 0013E574  A0 1E 06 C4 */	lhz r0, 0x6c4(r30)
/* 80141618 0013E578  7C 83 23 78 */	mr r3, r4
/* 8014161C 0013E57C  38 81 00 18 */	addi r4, r1, 0x18
/* 80141620 0013E580  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80141624 0013E584  4B F0 AF 51 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80141628 0013E588  7C 64 1B 78 */	mr r4, r3
/* 8014162C 0013E58C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80141630 0013E590  4B F6 5F 45 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 80141634 0013E594  83 E3 00 04 */	lwz r31, 4(r3)
/* 80141638 0013E598  28 1F 00 00 */	cmplwi r31, 0
/* 8014163C 0013E59C  41 82 00 44 */	beq lbl_80141680
/* 80141640 0013E5A0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80141644 0013E5A4  7F E3 FB 78 */	mr r3, r31
/* 80141648 0013E5A8  38 81 00 14 */	addi r4, r1, 0x14
/* 8014164C 0013E5AC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80141650 0013E5B0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80141654 0013E5B4  48 0F 79 9D */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 80141658 0013E5B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014165C 0013E5BC  41 82 00 24 */	beq lbl_80141680
/* 80141660 0013E5C0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80141664 0013E5C4  7F E3 FB 78 */	mr r3, r31
/* 80141668 0013E5C8  38 81 00 0C */	addi r4, r1, 0xc
/* 8014166C 0013E5CC  B0 01 00 08 */	sth r0, 8(r1)
/* 80141670 0013E5D0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80141674 0013E5D4  48 0F 7E 81 */	bl RemoveTeamAiRole__10CTeamAiMgrF9TUniqueId
/* 80141678 0013E5D8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8014167C 0013E5DC  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
lbl_80141680:
/* 80141680 0013E5E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80141684 0013E5E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80141688 0013E5E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8014168C 0013E5EC  7C 08 03 A6 */	mtlr r0
/* 80141690 0013E5F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80141694 0013E5F4  4E 80 00 20 */	blr

.global sub_80141698
sub_80141698:
/* 80141698 0013E5F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014169C 0013E5FC  7C 08 02 A6 */	mflr r0
/* 801416A0 0013E600  90 01 00 24 */	stw r0, 0x24(r1)
/* 801416A4 0013E604  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801416A8 0013E608  7C 9F 23 78 */	mr r31, r4
/* 801416AC 0013E60C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801416B0 0013E610  7C 7E 1B 78 */	mr r30, r3
/* 801416B4 0013E614  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801416B8 0013E618  A0 63 06 C4 */	lhz r3, 0x6c4(r3)
/* 801416BC 0013E61C  7C 03 00 40 */	cmplw r3, r0
/* 801416C0 0013E620  40 82 00 1C */	bne lbl_801416DC
/* 801416C4 0013E624  7F C4 F3 78 */	mr r4, r30
/* 801416C8 0013E628  7F E5 FB 78 */	mr r5, r31
/* 801416CC 0013E62C  38 61 00 0C */	addi r3, r1, 0xc
/* 801416D0 0013E630  48 0F 8B 19 */	bl GetTeamAiMgr__10CTeamAiMgrF3CAiRC13CStateManager
/* 801416D4 0013E634  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801416D8 0013E638  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
lbl_801416DC:
/* 801416DC 0013E63C  A0 7E 06 C4 */	lhz r3, 0x6c4(r30)
/* 801416E0 0013E640  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801416E4 0013E644  7C 03 00 40 */	cmplw r3, r0
/* 801416E8 0013E648  41 82 00 44 */	beq lbl_8014172C
/* 801416EC 0013E64C  A0 1E 06 C4 */	lhz r0, 0x6c4(r30)
/* 801416F0 0013E650  7F E3 FB 78 */	mr r3, r31
/* 801416F4 0013E654  38 81 00 08 */	addi r4, r1, 8
/* 801416F8 0013E658  B0 01 00 08 */	sth r0, 8(r1)
/* 801416FC 0013E65C  4B F0 AE 79 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80141700 0013E660  7C 64 1B 78 */	mr r4, r3
/* 80141704 0013E664  38 61 00 10 */	addi r3, r1, 0x10
/* 80141708 0013E668  4B F6 5E 6D */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8014170C 0013E66C  80 63 00 04 */	lwz r3, 4(r3)
/* 80141710 0013E670  28 03 00 00 */	cmplwi r3, 0
/* 80141714 0013E674  41 82 00 18 */	beq lbl_8014172C
/* 80141718 0013E678  7F C4 F3 78 */	mr r4, r30
/* 8014171C 0013E67C  38 A0 00 02 */	li r5, 2
/* 80141720 0013E680  38 C0 00 03 */	li r6, 3
/* 80141724 0013E684  38 E0 FF FF */	li r7, -1
/* 80141728 0013E688  48 0F 80 85 */	bl AssignTeamAiRole__10CTeamAiMgrFRC3CAiiii
lbl_8014172C:
/* 8014172C 0013E68C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80141730 0013E690  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80141734 0013E694  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80141738 0013E698  7C 08 03 A6 */	mtlr r0
/* 8014173C 0013E69C  38 21 00 20 */	addi r1, r1, 0x20
/* 80141740 0013E6A0  4E 80 00 20 */	blr

.global GetOrigin__11CChozoGhostCFv
GetOrigin__11CChozoGhostCFv:
/* 80141744 0013E6A4  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 80141748 0013E6A8  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8014174C 0013E6AC  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80141750 0013E6B0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80141754 0013E6B4  D0 23 00 04 */	stfs f1, 4(r3)
/* 80141758 0013E6B8  D0 43 00 08 */	stfs f2, 8(r3)
/* 8014175C 0013E6BC  4E 80 00 20 */	blr

.global sub_80141760
sub_80141760:
/* 80141760 0013E6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141764 0013E6C4  7C 08 02 A6 */	mflr r0
/* 80141768 0013E6C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014176C 0013E6CC  81 83 00 00 */	lwz r12, 0(r3)
/* 80141770 0013E6D0  81 8C 02 B4 */	lwz r12, 0x2b4(r12)
/* 80141774 0013E6D4  7D 89 03 A6 */	mtctr r12
/* 80141778 0013E6D8  4E 80 04 21 */	bctrl
/* 8014177C 0013E6DC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80141780 0013E6E0  20 00 00 1F */	subfic r0, r0, 0x1f
/* 80141784 0013E6E4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80141788 0013E6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014178C 0013E6EC  7C 08 03 A6 */	mtlr r0
/* 80141790 0013E6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80141794 0013E6F4  4E 80 00 20 */	blr

.global Render__11CChozoGhostCFRC13CStateManager
Render__11CChozoGhostCFRC13CStateManager:
/* 80141798 0013E6F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014179C 0013E6FC  7C 08 02 A6 */	mflr r0
/* 801417A0 0013E700  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 801417A4 0013E704  90 01 00 34 */	stw r0, 0x34(r1)
/* 801417A8 0013E708  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801417AC 0013E70C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801417B0 0013E710  7C 9E 23 78 */	mr r30, r4
/* 801417B4 0013E714  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801417B8 0013E718  7C 7D 1B 78 */	mr r29, r3
/* 801417BC 0013E71C  C0 43 06 C8 */	lfs f2, 0x6c8(r3)
/* 801417C0 0013E720  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801417C4 0013E724  40 81 00 24 */	ble lbl_801417E8
/* 801417C8 0013E728  C0 22 9B A8 */	lfs f1, lbl_805AB8C8@sda21(r2)
/* 801417CC 0013E72C  C0 1D 05 6C */	lfs f0, 0x56c(r29)
/* 801417D0 0013E730  EC 21 00 B2 */	fmuls f1, f1, f2
/* 801417D4 0013E734  EC 21 00 24 */	fdivs f1, f1, f0
/* 801417D8 0013E738  48 1D 36 19 */	bl FastSinR__5CMathFf
/* 801417DC 0013E73C  7F C3 F3 78 */	mr r3, r30
/* 801417E0 0013E740  38 9D 06 CC */	addi r4, r29, 0x6cc
/* 801417E4 0013E744  4B F0 3C 19 */	bl DrawSpaceWarp__13CStateManagerCFRC9CVector3ff
lbl_801417E8:
/* 801417E8 0013E748  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 801417EC 0013E74C  7F C4 F3 78 */	mr r4, r30
/* 801417F0 0013E750  80 63 00 00 */	lwz r3, 0(r3)
/* 801417F4 0013E754  4B F4 FD 65 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 801417F8 0013E758  20 03 00 01 */	subfic r0, r3, 1
/* 801417FC 0013E75C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80141800 0013E760  7C 04 00 34 */	cntlzw r4, r0
/* 80141804 0013E764  54 80 DE 3F */	rlwinm. r0, r4, 0x1b, 0x18, 0x1f
/* 80141808 0013E768  90 61 00 10 */	stw r3, 0x10(r1)
/* 8014180C 0013E76C  54 9F D9 7E */	srwi r31, r4, 5
/* 80141810 0013E770  41 82 00 4C */	beq lbl_8014185C
/* 80141814 0013E774  38 00 00 01 */	li r0, 1
/* 80141818 0013E778  98 0D A8 B9 */	stb r0, lbl_805A9479@sda21(r13)
/* 8014181C 0013E77C  98 0D A8 B8 */	stb r0, lbl_805A9478@sda21(r13)
/* 80141820 0013E780  48 20 87 95 */	bl Black__6CColorFv
/* 80141824 0013E784  C0 22 9B 5C */	lfs f1, lbl_805AB87C@sda21(r2)
/* 80141828 0013E788  7C 64 1B 78 */	mr r4, r3
/* 8014182C 0013E78C  C0 42 9B AC */	lfs f2, lbl_805AB8CC@sda21(r2)
/* 80141830 0013E790  38 60 00 02 */	li r3, 2
/* 80141834 0013E794  48 1C 8A 55 */	bl SetFog__9CGraphicsF11ERglFogModeffRC6CColor
/* 80141838 0013E798  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8014183C 0013E79C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80141840 0013E7A0  38 63 01 20 */	addi r3, r3, 0x120
/* 80141844 0013E7A4  4B F7 67 71 */	bl RenderSystemsToBeDrawnFirst__17CParticleDatabaseCFv
/* 80141848 0013E7A8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8014184C 0013E7AC  7F C3 F3 78 */	mr r3, r30
/* 80141850 0013E7B0  38 81 00 0C */	addi r4, r1, 0xc
/* 80141854 0013E7B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80141858 0013E7B8  4B F0 54 C1 */	bl sub_80046d18
lbl_8014185C:
/* 8014185C 0013E7BC  7F A3 EB 78 */	mr r3, r29
/* 80141860 0013E7C0  7F C4 F3 78 */	mr r4, r30
/* 80141864 0013E7C4  4B F3 67 C9 */	bl Render__10CPatternedCFRC13CStateManager
/* 80141868 0013E7C8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8014186C 0013E7CC  41 82 00 4C */	beq lbl_801418B8
/* 80141870 0013E7D0  48 20 87 45 */	bl Black__6CColorFv
/* 80141874 0013E7D4  C0 22 9B 5C */	lfs f1, lbl_805AB87C@sda21(r2)
/* 80141878 0013E7D8  7C 64 1B 78 */	mr r4, r3
/* 8014187C 0013E7DC  C0 42 9B AC */	lfs f2, lbl_805AB8CC@sda21(r2)
/* 80141880 0013E7E0  38 60 00 02 */	li r3, 2
/* 80141884 0013E7E4  48 1C 8A 05 */	bl SetFog__9CGraphicsF11ERglFogModeffRC6CColor
/* 80141888 0013E7E8  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8014188C 0013E7EC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80141890 0013E7F0  38 63 01 20 */	addi r3, r3, 0x120
/* 80141894 0013E7F4  4B F7 66 91 */	bl RenderSystemsToBeDrawnLast__17CParticleDatabaseCFv
/* 80141898 0013E7F8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8014189C 0013E7FC  7F C3 F3 78 */	mr r3, r30
/* 801418A0 0013E800  38 81 00 08 */	addi r4, r1, 8
/* 801418A4 0013E804  90 01 00 08 */	stw r0, 8(r1)
/* 801418A8 0013E808  4B F0 54 D9 */	bl SetupFogForArea__13CStateManagerCF7TAreaId
/* 801418AC 0013E80C  38 00 00 00 */	li r0, 0
/* 801418B0 0013E810  98 0D A8 B9 */	stb r0, lbl_805A9479@sda21(r13)
/* 801418B4 0013E814  98 0D A8 B8 */	stb r0, lbl_805A9478@sda21(r13)
lbl_801418B8:
/* 801418B8 0013E818  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801418BC 0013E81C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801418C0 0013E820  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801418C4 0013E824  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801418C8 0013E828  7C 08 03 A6 */	mtlr r0
/* 801418CC 0013E82C  38 21 00 30 */	addi r1, r1, 0x30
/* 801418D0 0013E830  4E 80 00 20 */	blr

.global PreRender__11CChozoGhostFR13CStateManagerRC14CFrustumPlanes
PreRender__11CChozoGhostFR13CStateManagerRC14CFrustumPlanes:
/* 801418D4 0013E834  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801418D8 0013E838  7C 08 02 A6 */	mflr r0
/* 801418DC 0013E83C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801418E0 0013E840  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801418E4 0013E844  7C BF 2B 78 */	mr r31, r5
/* 801418E8 0013E848  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801418EC 0013E84C  7C 9E 23 78 */	mr r30, r4
/* 801418F0 0013E850  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801418F4 0013E854  7C 7D 1B 78 */	mr r29, r3
/* 801418F8 0013E858  93 81 00 30 */	stw r28, 0x30(r1)
/* 801418FC 0013E85C  80 64 08 B8 */	lwz r3, 0x8b8(r4)
/* 80141900 0013E860  80 63 00 00 */	lwz r3, 0(r3)
/* 80141904 0013E864  4B F4 FC 55 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80141908 0013E868  20 63 00 01 */	subfic r3, r3, 1
/* 8014190C 0013E86C  88 1D 04 02 */	lbz r0, 0x402(r29)
/* 80141910 0013E870  7C 63 00 34 */	cntlzw r3, r3
/* 80141914 0013E874  7F C4 F3 78 */	mr r4, r30
/* 80141918 0013E878  54 63 DE 3E */	rlwinm r3, r3, 0x1b, 0x18, 0x1f
/* 8014191C 0013E87C  7C 63 00 34 */	cntlzw r3, r3
/* 80141920 0013E880  50 60 EF 7A */	rlwimi r0, r3, 0x1d, 0x1d, 0x1d
/* 80141924 0013E884  98 1D 04 02 */	stb r0, 0x402(r29)
/* 80141928 0013E888  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 8014192C 0013E88C  80 63 00 00 */	lwz r3, 0(r3)
/* 80141930 0013E890  4B F4 FC 29 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80141934 0013E894  2C 03 00 03 */	cmpwi r3, 3
/* 80141938 0013E898  40 82 00 28 */	bne lbl_80141960
/* 8014193C 0013E89C  7F A3 EB 78 */	mr r3, r29
/* 80141940 0013E8A0  38 80 00 00 */	li r4, 0
/* 80141944 0013E8A4  4B F1 1F DD */	bl SetCalculateLighting__6CActorFb
/* 80141948 0013E8A8  83 9D 00 90 */	lwz r28, 0x90(r29)
/* 8014194C 0013E8AC  48 20 86 61 */	bl White__6CColorFv
/* 80141950 0013E8B0  7C 64 1B 78 */	mr r4, r3
/* 80141954 0013E8B4  7F 83 E3 78 */	mr r3, r28
/* 80141958 0013E8B8  4B FC 17 59 */	bl BuildConstantAmbientLighting__12CActorLightsFRC6CColor
/* 8014195C 0013E8BC  48 00 00 10 */	b lbl_8014196C
lbl_80141960:
/* 80141960 0013E8C0  7F A3 EB 78 */	mr r3, r29
/* 80141964 0013E8C4  38 80 00 01 */	li r4, 1
/* 80141968 0013E8C8  4B F1 1F B9 */	bl SetCalculateLighting__6CActorFb
lbl_8014196C:
/* 8014196C 0013E8CC  7F A3 EB 78 */	mr r3, r29
/* 80141970 0013E8D0  80 1D 04 2C */	lwz r0, 0x42c(r29)
/* 80141974 0013E8D4  81 9D 00 00 */	lwz r12, 0(r29)
/* 80141978 0013E8D8  7F C4 F3 78 */	mr r4, r30
/* 8014197C 0013E8DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80141980 0013E8E0  81 8C 02 B4 */	lwz r12, 0x2b4(r12)
/* 80141984 0013E8E4  7D 89 03 A6 */	mtctr r12
/* 80141988 0013E8E8  4E 80 04 21 */	bctrl
/* 8014198C 0013E8EC  7C 7C 1B 78 */	mr r28, r3
/* 80141990 0013E8F0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80141994 0013E8F4  28 00 00 FF */	cmplwi r0, 0xff
/* 80141998 0013E8F8  41 80 00 10 */	blt lbl_801419A8
/* 8014199C 0013E8FC  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801419A0 0013E900  28 00 00 00 */	cmplwi r0, 0
/* 801419A4 0013E904  41 82 00 8C */	beq lbl_80141A30
lbl_801419A8:
/* 801419A8 0013E908  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801419AC 0013E90C  28 00 00 00 */	cmplwi r0, 0
/* 801419B0 0013E910  41 82 00 34 */	beq lbl_801419E4
/* 801419B4 0013E914  54 00 08 3C */	slwi r0, r0, 1
/* 801419B8 0013E918  38 81 00 0C */	addi r4, r1, 0xc
/* 801419BC 0013E91C  20 00 00 FF */	subfic r0, r0, 0xff
/* 801419C0 0013E920  38 6D 8B 9C */	addi r3, r13, lbl_805A775C@sda21
/* 801419C4 0013E924  90 01 00 0C */	stw r0, 0xc(r1)
/* 801419C8 0013E928  48 00 0E F9 */	bl sub_801428c0
/* 801419CC 0013E92C  80 63 00 00 */	lwz r3, 0(r3)
/* 801419D0 0013E930  38 00 00 FF */	li r0, 0xff
/* 801419D4 0013E934  98 01 00 10 */	stb r0, 0x10(r1)
/* 801419D8 0013E938  98 61 00 11 */	stb r3, 0x11(r1)
/* 801419DC 0013E93C  98 61 00 12 */	stb r3, 0x12(r1)
/* 801419E0 0013E940  48 00 00 10 */	b lbl_801419F0
lbl_801419E4:
/* 801419E4 0013E944  48 20 85 C9 */	bl White__6CColorFv
/* 801419E8 0013E948  80 03 00 00 */	lwz r0, 0(r3)
/* 801419EC 0013E94C  90 01 00 10 */	stw r0, 0x10(r1)
lbl_801419F0:
/* 801419F0 0013E950  38 00 00 05 */	li r0, 5
/* 801419F4 0013E954  88 C1 00 10 */	lbz r6, 0x10(r1)
/* 801419F8 0013E958  88 A1 00 11 */	lbz r5, 0x11(r1)
/* 801419FC 0013E95C  38 60 00 00 */	li r3, 0
/* 80141A00 0013E960  98 1D 00 B4 */	stb r0, 0xb4(r29)
/* 80141A04 0013E964  38 00 00 03 */	li r0, 3
/* 80141A08 0013E968  88 81 00 12 */	lbz r4, 0x12(r1)
/* 80141A0C 0013E96C  98 7D 00 B5 */	stb r3, 0xb5(r29)
/* 80141A10 0013E970  98 C1 00 08 */	stb r6, 8(r1)
/* 80141A14 0013E974  98 A1 00 09 */	stb r5, 9(r1)
/* 80141A18 0013E978  98 81 00 0A */	stb r4, 0xa(r1)
/* 80141A1C 0013E97C  9B 81 00 0B */	stb r28, 0xb(r1)
/* 80141A20 0013E980  B0 1D 00 B6 */	sth r0, 0xb6(r29)
/* 80141A24 0013E984  80 01 00 08 */	lwz r0, 8(r1)
/* 80141A28 0013E988  90 1D 00 B8 */	stw r0, 0xb8(r29)
/* 80141A2C 0013E98C  48 00 00 50 */	b lbl_80141A7C
lbl_80141A30:
/* 80141A30 0013E990  C0 22 9B 60 */	lfs f1, lbl_805AB880@sda21(r2)
/* 80141A34 0013E994  38 80 00 00 */	li r4, 0
/* 80141A38 0013E998  38 00 00 03 */	li r0, 3
/* 80141A3C 0013E99C  98 81 00 14 */	stb r4, 0x14(r1)
/* 80141A40 0013E9A0  FC 40 08 90 */	fmr f2, f1
/* 80141A44 0013E9A4  38 61 00 18 */	addi r3, r1, 0x18
/* 80141A48 0013E9A8  FC 60 08 90 */	fmr f3, f1
/* 80141A4C 0013E9AC  98 81 00 15 */	stb r4, 0x15(r1)
/* 80141A50 0013E9B0  FC 80 08 90 */	fmr f4, f1
/* 80141A54 0013E9B4  B0 01 00 16 */	sth r0, 0x16(r1)
/* 80141A58 0013E9B8  48 22 19 95 */	bl __ct__6CColorFffff
/* 80141A5C 0013E9BC  88 01 00 14 */	lbz r0, 0x14(r1)
/* 80141A60 0013E9C0  98 1D 00 B4 */	stb r0, 0xb4(r29)
/* 80141A64 0013E9C4  88 01 00 15 */	lbz r0, 0x15(r1)
/* 80141A68 0013E9C8  98 1D 00 B5 */	stb r0, 0xb5(r29)
/* 80141A6C 0013E9CC  A0 01 00 16 */	lhz r0, 0x16(r1)
/* 80141A70 0013E9D0  B0 1D 00 B6 */	sth r0, 0xb6(r29)
/* 80141A74 0013E9D4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80141A78 0013E9D8  90 1D 00 B8 */	stw r0, 0xb8(r29)
lbl_80141A7C:
/* 80141A7C 0013E9DC  7F A3 EB 78 */	mr r3, r29
/* 80141A80 0013E9E0  7F C4 F3 78 */	mr r4, r30
/* 80141A84 0013E9E4  7F E5 FB 78 */	mr r5, r31
/* 80141A88 0013E9E8  4B F1 32 59 */	bl PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
/* 80141A8C 0013E9EC  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80141A90 0013E9F0  7F C4 F3 78 */	mr r4, r30
/* 80141A94 0013E9F4  81 1D 04 50 */	lwz r8, 0x450(r29)
/* 80141A98 0013E9F8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80141A9C 0013E9FC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80141AA0 0013EA00  38 DD 00 34 */	addi r6, r29, 0x34
/* 80141AA4 0013EA04  38 E1 00 1C */	addi r7, r1, 0x1c
/* 80141AA8 0013EA08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80141AAC 0013EA0C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80141AB0 0013EA10  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80141AB4 0013EA14  C0 05 00 08 */	lfs f0, 8(r5)
/* 80141AB8 0013EA18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80141ABC 0013EA1C  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80141AC0 0013EA20  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80141AC4 0013EA24  48 03 3E 4D */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 80141AC8 0013EA28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80141ACC 0013EA2C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80141AD0 0013EA30  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80141AD4 0013EA34  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80141AD8 0013EA38  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80141ADC 0013EA3C  7C 08 03 A6 */	mtlr r0
/* 80141AE0 0013EA40  38 21 00 40 */	addi r1, r1, 0x40
/* 80141AE4 0013EA44  4E 80 00 20 */	blr

.global GetModelAlphau8__11CChozoGhostCFRC13CStateManager
GetModelAlphau8__11CChozoGhostCFRC13CStateManager:
/* 80141AE8 0013EA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141AEC 0013EA4C  7C 08 02 A6 */	mflr r0
/* 80141AF0 0013EA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80141AF4 0013EA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80141AF8 0013EA58  3B E0 00 FF */	li r31, 0xff
/* 80141AFC 0013EA5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80141B00 0013EA60  7C 7E 1B 78 */	mr r30, r3
/* 80141B04 0013EA64  80 A4 08 B8 */	lwz r5, 0x8b8(r4)
/* 80141B08 0013EA68  80 65 00 00 */	lwz r3, 0(r5)
/* 80141B0C 0013EA6C  4B F4 FA 4D */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80141B10 0013EA70  2C 03 00 01 */	cmpwi r3, 1
/* 80141B14 0013EA74  40 82 00 10 */	bne lbl_80141B24
/* 80141B18 0013EA78  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80141B1C 0013EA7C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80141B20 0013EA80  40 82 00 08 */	bne lbl_80141B28
lbl_80141B24:
/* 80141B24 0013EA84  8B FE 04 2F */	lbz r31, 0x42f(r30)
lbl_80141B28:
/* 80141B28 0013EA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141B2C 0013EA8C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80141B30 0013EA90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80141B34 0013EA94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80141B38 0013EA98  7C 08 03 A6 */	mtlr r0
/* 80141B3C 0013EA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80141B40 0013EAA0  4E 80 00 20 */	blr

.global GetDamageVulnerability__11CChozoGhostCFv
GetDamageVulnerability__11CChozoGhostCFv:
/* 80141B44 0013EAA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141B48 0013EAA8  7C 08 02 A6 */	mflr r0
/* 80141B4C 0013EAAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80141B50 0013EAB0  88 03 06 65 */	lbz r0, 0x665(r3)
/* 80141B54 0013EAB4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80141B58 0013EAB8  41 82 00 10 */	beq lbl_80141B68
/* 80141B5C 0013EABC  3C 60 80 57 */	lis r3, lbl_8056D7E8@ha
/* 80141B60 0013EAC0  38 63 D7 E8 */	addi r3, r3, lbl_8056D7E8@l
/* 80141B64 0013EAC4  48 00 00 08 */	b lbl_80141B6C
lbl_80141B68:
/* 80141B68 0013EAC8  4B F6 12 09 */	bl GetDamageVulnerability__3CAiCFv
lbl_80141B6C:
/* 80141B6C 0013EACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141B70 0013EAD0  7C 08 03 A6 */	mtlr r0
/* 80141B74 0013EAD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80141B78 0013EAD8  4E 80 00 20 */	blr

.global GetCollisionResponseType__11CChozoGhostCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__11CChozoGhostCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 80141B7C 0013EADC  38 60 00 26 */	li r3, 0x26
/* 80141B80 0013EAE0  4E 80 00 20 */	blr

.global CanBeShot__11CChozoGhostFRC13CStateManageri
CanBeShot__11CChozoGhostFRC13CStateManageri:
/* 80141B84 0013EAE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141B88 0013EAE8  7C 08 02 A6 */	mflr r0
/* 80141B8C 0013EAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80141B90 0013EAF0  4B FF FB D1 */	bl sub_80141760
/* 80141B94 0013EAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141B98 0013EAF8  7C 08 03 A6 */	mtlr r0
/* 80141B9C 0013EAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80141BA0 0013EB00  4E 80 00 20 */	blr

.global Touch__11CChozoGhostFR6CActorR13CStateManager
Touch__11CChozoGhostFR6CActorR13CStateManager:
/* 80141BA4 0013EB04  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80141BA8 0013EB08  7C 08 02 A6 */	mflr r0
/* 80141BAC 0013EB0C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80141BB0 0013EB10  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80141BB4 0013EB14  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80141BB8 0013EB18  7C BE 2B 78 */	mr r30, r5
/* 80141BBC 0013EB1C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80141BC0 0013EB20  7C 9D 23 78 */	mr r29, r4
/* 80141BC4 0013EB24  7F C4 F3 78 */	mr r4, r30
/* 80141BC8 0013EB28  93 81 00 60 */	stw r28, 0x60(r1)
/* 80141BCC 0013EB2C  7C 7C 1B 78 */	mr r28, r3
/* 80141BD0 0013EB30  4B FF FB 91 */	bl sub_80141760
/* 80141BD4 0013EB34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80141BD8 0013EB38  41 82 00 C4 */	beq lbl_80141C9C
/* 80141BDC 0013EB3C  7F A4 EB 78 */	mr r4, r29
/* 80141BE0 0013EB40  38 61 00 20 */	addi r3, r1, 0x20
/* 80141BE4 0013EB44  4B F6 A8 1D */	bl "__ct__20TCastToPtr<7CPlayer>FR7CEntity"
/* 80141BE8 0013EB48  83 E3 00 04 */	lwz r31, 4(r3)
/* 80141BEC 0013EB4C  28 1F 00 00 */	cmplwi r31, 0
/* 80141BF0 0013EB50  41 82 00 AC */	beq lbl_80141C9C
/* 80141BF4 0013EB54  C0 3C 04 20 */	lfs f1, 0x420(r28)
/* 80141BF8 0013EB58  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 80141BFC 0013EB5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80141C00 0013EB60  4C 40 13 82 */	cror 2, 0, 2
/* 80141C04 0013EB64  40 82 00 98 */	bne lbl_80141C9C
/* 80141C08 0013EB68  80 AD 8B 98 */	lwz r5, lbl_805A7758@sda21(r13)
/* 80141C0C 0013EB6C  38 60 00 00 */	li r3, 0
/* 80141C10 0013EB70  38 80 00 01 */	li r4, 1
/* 80141C14 0013EB74  48 24 82 E1 */	bl __shl2i
/* 80141C18 0013EB78  38 A0 00 00 */	li r5, 0
/* 80141C1C 0013EB7C  38 00 00 03 */	li r0, 3
/* 80141C20 0013EB80  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80141C24 0013EB84  7F 84 E3 78 */	mr r4, r28
/* 80141C28 0013EB88  90 61 00 28 */	stw r3, 0x28(r1)
/* 80141C2C 0013EB8C  38 61 00 40 */	addi r3, r1, 0x40
/* 80141C30 0013EB90  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80141C34 0013EB94  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80141C38 0013EB98  90 01 00 38 */	stw r0, 0x38(r1)
/* 80141C3C 0013EB9C  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80141C40 0013EBA0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80141C44 0013EBA4  A0 BF 00 08 */	lhz r5, 8(r31)
/* 80141C48 0013EBA8  B0 01 00 08 */	sth r0, 8(r1)
/* 80141C4C 0013EBAC  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 80141C50 0013EBB0  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80141C54 0013EBB4  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80141C58 0013EBB8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80141C5C 0013EBBC  81 9C 00 00 */	lwz r12, 0(r28)
/* 80141C60 0013EBC0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80141C64 0013EBC4  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 80141C68 0013EBC8  7D 89 03 A6 */	mtctr r12
/* 80141C6C 0013EBCC  4E 80 04 21 */	bctrl
/* 80141C70 0013EBD0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80141C74 0013EBD4  7F C3 F3 78 */	mr r3, r30
/* 80141C78 0013EBD8  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 80141C7C 0013EBDC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80141C80 0013EBE0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80141C84 0013EBE4  38 C1 00 0C */	addi r6, r1, 0xc
/* 80141C88 0013EBE8  38 E1 00 40 */	addi r7, r1, 0x40
/* 80141C8C 0013EBEC  39 01 00 28 */	addi r8, r1, 0x28
/* 80141C90 0013EBF0  4B F0 84 11 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80141C94 0013EBF4  C0 1C 04 24 */	lfs f0, 0x424(r28)
/* 80141C98 0013EBF8  D0 1C 04 20 */	stfs f0, 0x420(r28)
lbl_80141C9C:
/* 80141C9C 0013EBFC  7F 83 E3 78 */	mr r3, r28
/* 80141CA0 0013EC00  7F A4 EB 78 */	mr r4, r29
/* 80141CA4 0013EC04  7F C5 F3 78 */	mr r5, r30
/* 80141CA8 0013EC08  4B F3 7D F9 */	bl Touch__10CPatternedFR6CActorR13CStateManager
/* 80141CAC 0013EC0C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80141CB0 0013EC10  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80141CB4 0013EC14  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80141CB8 0013EC18  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80141CBC 0013EC1C  83 81 00 60 */	lwz r28, 0x60(r1)
/* 80141CC0 0013EC20  7C 08 03 A6 */	mtlr r0
/* 80141CC4 0013EC24  38 21 00 70 */	addi r1, r1, 0x70
/* 80141CC8 0013EC28  4E 80 00 20 */	blr

.global AcceptScriptMsg__11CChozoGhostF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__11CChozoGhostF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80141CCC 0013EC2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80141CD0 0013EC30  7C 08 02 A6 */	mflr r0
/* 80141CD4 0013EC34  90 01 00 34 */	stw r0, 0x34(r1)
/* 80141CD8 0013EC38  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80141CDC 0013EC3C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80141CE0 0013EC40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80141CE4 0013EC44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80141CE8 0013EC48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80141CEC 0013EC4C  A0 05 00 00 */	lhz r0, 0(r5)
/* 80141CF0 0013EC50  7C 7F 1B 78 */	mr r31, r3
/* 80141CF4 0013EC54  7C 9D 23 78 */	mr r29, r4
/* 80141CF8 0013EC58  7C DE 33 78 */	mr r30, r6
/* 80141CFC 0013EC5C  B0 01 00 08 */	sth r0, 8(r1)
/* 80141D00 0013EC60  38 A1 00 08 */	addi r5, r1, 8
/* 80141D04 0013EC64  4B F3 AE 75 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80141D08 0013EC68  28 1D 00 28 */	cmplwi r29, 0x28
/* 80141D0C 0013EC6C  41 81 00 DC */	bgt lbl_80141DE8
/* 80141D10 0013EC70  3C 60 80 3E */	lis r3, lbl_803E1BE4@ha
/* 80141D14 0013EC74  57 A0 10 3A */	slwi r0, r29, 2
/* 80141D18 0013EC78  38 63 1B E4 */	addi r3, r3, lbl_803E1BE4@l
/* 80141D1C 0013EC7C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80141D20 0013EC80  7C 09 03 A6 */	mtctr r0
/* 80141D24 0013EC84  4E 80 04 20 */	bctr
.global lbl_80141D28
lbl_80141D28:
/* 80141D28 0013EC88  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80141D2C 0013EC8C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80141D30 0013EC90  41 82 00 B8 */	beq lbl_80141DE8
/* 80141D34 0013EC94  7F E3 FB 78 */	mr r3, r31
/* 80141D38 0013EC98  7F C4 F3 78 */	mr r4, r30
/* 80141D3C 0013EC9C  4B FF F9 5D */	bl sub_80141698
/* 80141D40 0013ECA0  48 00 00 A8 */	b lbl_80141DE8
.global lbl_80141D44
lbl_80141D44:
/* 80141D44 0013ECA4  7F E3 FB 78 */	mr r3, r31
/* 80141D48 0013ECA8  7F C4 F3 78 */	mr r4, r30
/* 80141D4C 0013ECAC  4B FF F9 4D */	bl sub_80141698
/* 80141D50 0013ECB0  48 00 00 98 */	b lbl_80141DE8
.global lbl_80141D54
lbl_80141D54:
/* 80141D54 0013ECB4  88 9F 06 64 */	lbz r4, 0x664(r31)
/* 80141D58 0013ECB8  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 80141D5C 0013ECBC  40 82 00 8C */	bne lbl_80141DE8
/* 80141D60 0013ECC0  38 60 00 01 */	li r3, 1
/* 80141D64 0013ECC4  50 64 2E B4 */	rlwimi r4, r3, 5, 0x1a, 0x1a
/* 80141D68 0013ECC8  98 9F 06 64 */	stb r4, 0x664(r31)
/* 80141D6C 0013ECCC  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 80141D70 0013ECD0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80141D74 0013ECD4  98 1F 04 00 */	stb r0, 0x400(r31)
/* 80141D78 0013ECD8  48 00 00 70 */	b lbl_80141DE8
.global lbl_80141D7C
lbl_80141D7C:
/* 80141D7C 0013ECDC  88 1F 06 64 */	lbz r0, 0x664(r31)
/* 80141D80 0013ECE0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80141D84 0013ECE4  41 82 00 64 */	beq lbl_80141DE8
/* 80141D88 0013ECE8  88 1F 06 65 */	lbz r0, 0x665(r31)
/* 80141D8C 0013ECEC  38 60 00 01 */	li r3, 1
/* 80141D90 0013ECF0  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80141D94 0013ECF4  98 1F 06 65 */	stb r0, 0x665(r31)
/* 80141D98 0013ECF8  48 00 00 50 */	b lbl_80141DE8
.global lbl_80141D9C
lbl_80141D9C:
/* 80141D9C 0013ECFC  7F E3 FB 78 */	mr r3, r31
/* 80141DA0 0013ED00  7F C4 F3 78 */	mr r4, r30
/* 80141DA4 0013ED04  4B FF F8 49 */	bl sub_801415ec
/* 80141DA8 0013ED08  48 00 00 40 */	b lbl_80141DE8
.global lbl_80141DAC
lbl_80141DAC:
/* 80141DAC 0013ED0C  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 80141DB0 0013ED10  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80141DB4 0013ED14  40 82 00 34 */	bne lbl_80141DE8
/* 80141DB8 0013ED18  7F E3 FB 78 */	mr r3, r31
/* 80141DBC 0013ED1C  C3 FF 00 E8 */	lfs f31, 0xe8(r31)
/* 80141DC0 0013ED20  81 9F 00 00 */	lwz r12, 0(r31)
/* 80141DC4 0013ED24  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 80141DC8 0013ED28  7D 89 03 A6 */	mtctr r12
/* 80141DCC 0013ED2C  4E 80 04 21 */	bctrl
/* 80141DD0 0013ED30  FC 20 08 50 */	fneg f1, f1
/* 80141DD4 0013ED34  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 80141DD8 0013ED38  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 80141DDC 0013ED3C  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80141DE0 0013ED40  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 80141DE4 0013ED44  D0 3F 01 58 */	stfs f1, 0x158(r31)
.global lbl_80141DE8
lbl_80141DE8:
/* 80141DE8 0013ED48  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80141DEC 0013ED4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80141DF0 0013ED50  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80141DF4 0013ED54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80141DF8 0013ED58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80141DFC 0013ED5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80141E00 0013ED60  7C 08 03 A6 */	mtlr r0
/* 80141E04 0013ED64  38 21 00 30 */	addi r1, r1, 0x30
/* 80141E08 0013ED68  4E 80 00 20 */	blr

.global Accept__11CChozoGhostFR8IVisitor
Accept__11CChozoGhostFR8IVisitor:
/* 80141E0C 0013ED6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141E10 0013ED70  7C 08 02 A6 */	mflr r0
/* 80141E14 0013ED74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80141E18 0013ED78  7C 60 1B 78 */	mr r0, r3
/* 80141E1C 0013ED7C  7C 83 23 78 */	mr r3, r4
/* 80141E20 0013ED80  81 84 00 00 */	lwz r12, 0(r4)
/* 80141E24 0013ED84  7C 04 03 78 */	mr r4, r0
/* 80141E28 0013ED88  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80141E2C 0013ED8C  7D 89 03 A6 */	mtctr r12
/* 80141E30 0013ED90  4E 80 04 21 */	bctrl
/* 80141E34 0013ED94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141E38 0013ED98  7C 08 03 A6 */	mtlr r0
/* 80141E3C 0013ED9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80141E40 0013EDA0  4E 80 00 20 */	blr

.global "__ct__11CChozoGhostF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoffffUiRC11CDamageInfoUiRC11CDamageInfoRCQ211CChozoGhost13CBehaveChanceRCQ211CChozoGhost13CBehaveChanceRCQ211CChozoGhost13CBehaveChance"
"__ct__11CChozoGhostF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoffffUiRC11CDamageInfoUiRC11CDamageInfoRCQ211CChozoGhost13CBehaveChanceRCQ211CChozoGhost13CBehaveChanceRCQ211CChozoGhost13CBehaveChance":
/* 80141E44 0013EDA4  94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 80141E48 0013EDA8  7C 08 02 A6 */	mflr r0
/* 80141E4C 0013EDAC  90 01 02 F4 */	stw r0, 0x2f4(r1)
/* 80141E50 0013EDB0  DB E1 02 E0 */	stfd f31, 0x2e0(r1)
/* 80141E54 0013EDB4  F3 E1 02 E8 */	psq_st f31, 744(r1), 0, qr0
/* 80141E58 0013EDB8  DB C1 02 D0 */	stfd f30, 0x2d0(r1)
/* 80141E5C 0013EDBC  F3 C1 02 D8 */	psq_st f30, 728(r1), 0, qr0
/* 80141E60 0013EDC0  DB A1 02 C0 */	stfd f29, 0x2c0(r1)
/* 80141E64 0013EDC4  F3 A1 02 C8 */	psq_st f29, 712(r1), 0, qr0
/* 80141E68 0013EDC8  DB 81 02 B0 */	stfd f28, 0x2b0(r1)
/* 80141E6C 0013EDCC  F3 81 02 B8 */	psq_st f28, 696(r1), 0, qr0
/* 80141E70 0013EDD0  DB 61 02 A0 */	stfd f27, 0x2a0(r1)
/* 80141E74 0013EDD4  F3 61 02 A8 */	psq_st f27, 680(r1), 0, qr0
/* 80141E78 0013EDD8  DB 41 02 90 */	stfd f26, 0x290(r1)
/* 80141E7C 0013EDDC  F3 41 02 98 */	psq_st f26, 664(r1), 0, qr0
/* 80141E80 0013EDE0  DB 21 02 80 */	stfd f25, 0x280(r1)
/* 80141E84 0013EDE4  F3 21 02 88 */	psq_st f25, 648(r1), 0, qr0
/* 80141E88 0013EDE8  DB 01 02 70 */	stfd f24, 0x270(r1)
/* 80141E8C 0013EDEC  F3 01 02 78 */	psq_st f24, 632(r1), 0, qr0
/* 80141E90 0013EDF0  DA E1 02 60 */	stfd f23, 0x260(r1)
/* 80141E94 0013EDF4  F2 E1 02 68 */	psq_st f23, 616(r1), 0, qr0
/* 80141E98 0013EDF8  BD E1 02 1C */	stmw r15, 0x21c(r1)
/* 80141E9C 0013EDFC  A0 04 00 00 */	lhz r0, 0(r4)
/* 80141EA0 0013EE00  7C CC 33 78 */	mr r12, r6
/* 80141EA4 0013EE04  7D 0B 43 78 */	mr r11, r8
/* 80141EA8 0013EE08  7C A6 2B 78 */	mr r6, r5
/* 80141EAC 0013EE0C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80141EB0 0013EE10  38 80 00 01 */	li r4, 1
/* 80141EB4 0013EE14  38 00 00 00 */	li r0, 0
/* 80141EB8 0013EE18  FE E0 08 90 */	fmr f23, f1
/* 80141EBC 0013EE1C  91 41 00 08 */	stw r10, 8(r1)
/* 80141EC0 0013EE20  FF 00 10 90 */	fmr f24, f2
/* 80141EC4 0013EE24  FF 20 18 90 */	fmr f25, f3
/* 80141EC8 0013EE28  83 21 02 F8 */	lwz r25, 0x2f8(r1)
/* 80141ECC 0013EE2C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80141ED0 0013EE30  FF 40 20 90 */	fmr f26, f4
/* 80141ED4 0013EE34  83 41 02 FC */	lwz r26, 0x2fc(r1)
/* 80141ED8 0013EE38  90 01 00 10 */	stw r0, 0x10(r1)
/* 80141EDC 0013EE3C  FF 60 28 90 */	fmr f27, f5
/* 80141EE0 0013EE40  83 61 03 00 */	lwz r27, 0x300(r1)
/* 80141EE4 0013EE44  90 81 00 14 */	stw r4, 0x14(r1)
/* 80141EE8 0013EE48  FF 80 30 90 */	fmr f28, f6
/* 80141EEC 0013EE4C  83 81 03 04 */	lwz r28, 0x304(r1)
/* 80141EF0 0013EE50  91 21 00 18 */	stw r9, 0x18(r1)
/* 80141EF4 0013EE54  FF A0 38 90 */	fmr f29, f7
/* 80141EF8 0013EE58  7C E9 3B 78 */	mr r9, r7
/* 80141EFC 0013EE5C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80141F00 0013EE60  FF C0 40 90 */	fmr f30, f8
/* 80141F04 0013EE64  83 A1 03 08 */	lwz r29, 0x308(r1)
/* 80141F08 0013EE68  83 C1 03 0C */	lwz r30, 0x30c(r1)
/* 80141F0C 0013EE6C  83 E1 03 10 */	lwz r31, 0x310(r1)
/* 80141F10 0013EE70  7C 78 1B 78 */	mr r24, r3
/* 80141F14 0013EE74  A2 01 03 16 */	lhz r16, 0x316(r1)
/* 80141F18 0013EE78  A2 21 03 1A */	lhz r17, 0x31a(r1)
/* 80141F1C 0013EE7C  7D 88 63 78 */	mr r8, r12
/* 80141F20 0013EE80  A2 41 03 1E */	lhz r18, 0x31e(r1)
/* 80141F24 0013EE84  7D 6A 5B 78 */	mr r10, r11
/* 80141F28 0013EE88  82 61 03 20 */	lwz r19, 0x320(r1)
/* 80141F2C 0013EE8C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80141F30 0013EE90  82 81 03 24 */	lwz r20, 0x324(r1)
/* 80141F34 0013EE94  38 80 00 06 */	li r4, 6
/* 80141F38 0013EE98  82 A1 03 28 */	lwz r21, 0x328(r1)
/* 80141F3C 0013EE9C  38 E0 00 00 */	li r7, 0
/* 80141F40 0013EEA0  A2 C1 03 2E */	lhz r22, 0x32e(r1)
/* 80141F44 0013EEA4  C3 E1 03 30 */	lfs f31, 0x330(r1)
/* 80141F48 0013EEA8  82 E1 03 34 */	lwz r23, 0x334(r1)
/* 80141F4C 0013EEAC  81 E1 03 38 */	lwz r15, 0x338(r1)
/* 80141F50 0013EEB0  4B F3 B5 01 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 80141F54 0013EEB4  3C 60 80 3E */	lis r3, lbl_803E1918@ha
/* 80141F58 0013EEB8  7F 24 CB 78 */	mr r4, r25
/* 80141F5C 0013EEBC  38 03 19 18 */	addi r0, r3, lbl_803E1918@l
/* 80141F60 0013EEC0  7F 45 D3 78 */	mr r5, r26
/* 80141F64 0013EEC4  90 18 00 00 */	stw r0, 0(r24)
/* 80141F68 0013EEC8  38 78 05 78 */	addi r3, r24, 0x578
/* 80141F6C 0013EECC  D2 F8 05 68 */	stfs f23, 0x568(r24)
/* 80141F70 0013EED0  D3 18 05 6C */	stfs f24, 0x56c(r24)
/* 80141F74 0013EED4  D3 38 05 70 */	stfs f25, 0x570(r24)
/* 80141F78 0013EED8  D3 58 05 74 */	stfs f26, 0x574(r24)
/* 80141F7C 0013EEDC  48 0D A1 2D */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 80141F80 0013EEE0  7F 64 DB 78 */	mr r4, r27
/* 80141F84 0013EEE4  7F 85 E3 78 */	mr r5, r28
/* 80141F88 0013EEE8  38 78 05 A0 */	addi r3, r24, 0x5a0
/* 80141F8C 0013EEEC  48 0D A1 1D */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 80141F90 0013EEF0  80 7D 00 00 */	lwz r3, 0(r29)
/* 80141F94 0013EEF4  38 00 00 00 */	li r0, 0
/* 80141F98 0013EEF8  90 78 05 C8 */	stw r3, 0x5c8(r24)
/* 80141F9C 0013EEFC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80141FA0 0013EF00  D0 18 05 CC */	stfs f0, 0x5cc(r24)
/* 80141FA4 0013EF04  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80141FA8 0013EF08  D0 18 05 D0 */	stfs f0, 0x5d0(r24)
/* 80141FAC 0013EF0C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80141FB0 0013EF10  D0 18 05 D4 */	stfs f0, 0x5d4(r24)
/* 80141FB4 0013EF14  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80141FB8 0013EF18  D0 18 05 D8 */	stfs f0, 0x5d8(r24)
/* 80141FBC 0013EF1C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80141FC0 0013EF20  D0 18 05 DC */	stfs f0, 0x5dc(r24)
/* 80141FC4 0013EF24  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80141FC8 0013EF28  D0 18 05 E0 */	stfs f0, 0x5e0(r24)
/* 80141FCC 0013EF2C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80141FD0 0013EF30  90 78 05 E4 */	stw r3, 0x5e4(r24)
/* 80141FD4 0013EF34  80 7E 00 00 */	lwz r3, 0(r30)
/* 80141FD8 0013EF38  90 78 05 E8 */	stw r3, 0x5e8(r24)
/* 80141FDC 0013EF3C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80141FE0 0013EF40  D0 18 05 EC */	stfs f0, 0x5ec(r24)
/* 80141FE4 0013EF44  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80141FE8 0013EF48  D0 18 05 F0 */	stfs f0, 0x5f0(r24)
/* 80141FEC 0013EF4C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80141FF0 0013EF50  D0 18 05 F4 */	stfs f0, 0x5f4(r24)
/* 80141FF4 0013EF54  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80141FF8 0013EF58  D0 18 05 F8 */	stfs f0, 0x5f8(r24)
/* 80141FFC 0013EF5C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80142000 0013EF60  D0 18 05 FC */	stfs f0, 0x5fc(r24)
/* 80142004 0013EF64  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80142008 0013EF68  D0 18 06 00 */	stfs f0, 0x600(r24)
/* 8014200C 0013EF6C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80142010 0013EF70  90 78 06 04 */	stw r3, 0x604(r24)
/* 80142014 0013EF74  80 7F 00 00 */	lwz r3, 0(r31)
/* 80142018 0013EF78  90 78 06 08 */	stw r3, 0x608(r24)
/* 8014201C 0013EF7C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80142020 0013EF80  D0 18 06 0C */	stfs f0, 0x60c(r24)
/* 80142024 0013EF84  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80142028 0013EF88  D0 18 06 10 */	stfs f0, 0x610(r24)
/* 8014202C 0013EF8C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80142030 0013EF90  D0 18 06 14 */	stfs f0, 0x614(r24)
/* 80142034 0013EF94  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80142038 0013EF98  D0 18 06 18 */	stfs f0, 0x618(r24)
/* 8014203C 0013EF9C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80142040 0013EFA0  D0 18 06 1C */	stfs f0, 0x61c(r24)
/* 80142044 0013EFA4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80142048 0013EFA8  D0 18 06 20 */	stfs f0, 0x620(r24)
/* 8014204C 0013EFAC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80142050 0013EFB0  90 78 06 24 */	stw r3, 0x624(r24)
/* 80142054 0013EFB4  B2 18 06 28 */	sth r16, 0x628(r24)
/* 80142058 0013EFB8  D3 78 06 2C */	stfs f27, 0x62c(r24)
/* 8014205C 0013EFBC  B2 38 06 30 */	sth r17, 0x630(r24)
/* 80142060 0013EFC0  B2 58 06 32 */	sth r18, 0x632(r24)
/* 80142064 0013EFC4  D3 98 06 34 */	stfs f28, 0x634(r24)
/* 80142068 0013EFC8  D3 B8 06 38 */	stfs f29, 0x638(r24)
/* 8014206C 0013EFCC  92 98 06 3C */	stw r20, 0x63c(r24)
/* 80142070 0013EFD0  98 18 06 4C */	stb r0, 0x64c(r24)
/* 80142074 0013EFD4  B2 D8 06 50 */	sth r22, 0x650(r24)
/* 80142078 0013EFD8  D3 D8 06 54 */	stfs f30, 0x654(r24)
/* 8014207C 0013EFDC  D3 F8 06 58 */	stfs f31, 0x658(r24)
/* 80142080 0013EFE0  92 F8 06 5C */	stw r23, 0x65c(r24)
/* 80142084 0013EFE4  91 F8 06 60 */	stw r15, 0x660(r24)
/* 80142088 0013EFE8  88 78 06 64 */	lbz r3, 0x664(r24)
/* 8014208C 0013EFEC  52 63 3E 30 */	rlwimi r3, r19, 7, 0x18, 0x18
/* 80142090 0013EFF0  98 78 06 64 */	stb r3, 0x664(r24)
/* 80142094 0013EFF4  88 78 06 64 */	lbz r3, 0x664(r24)
/* 80142098 0013EFF8  52 63 2E 72 */	rlwimi r3, r19, 5, 0x19, 0x19
/* 8014209C 0013EFFC  98 78 06 64 */	stb r3, 0x664(r24)
/* 801420A0 0013F000  88 78 06 64 */	lbz r3, 0x664(r24)
/* 801420A4 0013F004  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 801420A8 0013F008  98 78 06 64 */	stb r3, 0x664(r24)
/* 801420AC 0013F00C  88 78 06 64 */	lbz r3, 0x664(r24)
/* 801420B0 0013F010  50 03 26 F6 */	rlwimi r3, r0, 4, 0x1b, 0x1b
/* 801420B4 0013F014  98 78 06 64 */	stb r3, 0x664(r24)
/* 801420B8 0013F018  88 78 06 64 */	lbz r3, 0x664(r24)
/* 801420BC 0013F01C  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 801420C0 0013F020  98 78 06 64 */	stb r3, 0x664(r24)
/* 801420C4 0013F024  88 78 06 64 */	lbz r3, 0x664(r24)
/* 801420C8 0013F028  50 03 17 7A */	rlwimi r3, r0, 2, 0x1d, 0x1d
/* 801420CC 0013F02C  98 78 06 64 */	stb r3, 0x664(r24)
/* 801420D0 0013F030  88 78 06 64 */	lbz r3, 0x664(r24)
/* 801420D4 0013F034  50 03 0F BC */	rlwimi r3, r0, 1, 0x1e, 0x1e
/* 801420D8 0013F038  98 78 06 64 */	stb r3, 0x664(r24)
/* 801420DC 0013F03C  88 78 06 64 */	lbz r3, 0x664(r24)
/* 801420E0 0013F040  50 03 07 FE */	rlwimi r3, r0, 0, 0x1f, 0x1f
/* 801420E4 0013F044  98 78 06 64 */	stb r3, 0x664(r24)
/* 801420E8 0013F048  88 78 06 65 */	lbz r3, 0x665(r24)
/* 801420EC 0013F04C  38 80 00 01 */	li r4, 1
/* 801420F0 0013F050  50 83 3E 30 */	rlwimi r3, r4, 7, 0x18, 0x18
/* 801420F4 0013F054  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 801420F8 0013F058  98 78 06 65 */	stb r3, 0x665(r24)
/* 801420FC 0013F05C  38 80 FF FF */	li r4, -1
/* 80142100 0013F060  38 60 00 04 */	li r3, 4
/* 80142104 0013F064  88 B8 06 65 */	lbz r5, 0x665(r24)
/* 80142108 0013F068  50 05 36 72 */	rlwimi r5, r0, 6, 0x19, 0x19
/* 8014210C 0013F06C  98 B8 06 65 */	stb r5, 0x665(r24)
/* 80142110 0013F070  88 B8 06 65 */	lbz r5, 0x665(r24)
/* 80142114 0013F074  50 05 2E B4 */	rlwimi r5, r0, 5, 0x1a, 0x1a
/* 80142118 0013F078  98 B8 06 65 */	stb r5, 0x665(r24)
/* 8014211C 0013F07C  88 B8 06 65 */	lbz r5, 0x665(r24)
/* 80142120 0013F080  50 05 1F 38 */	rlwimi r5, r0, 3, 0x1c, 0x1c
/* 80142124 0013F084  98 B8 06 65 */	stb r5, 0x665(r24)
/* 80142128 0013F088  88 B8 06 65 */	lbz r5, 0x665(r24)
/* 8014212C 0013F08C  50 05 17 7A */	rlwimi r5, r0, 2, 0x1d, 0x1d
/* 80142130 0013F090  98 B8 06 65 */	stb r5, 0x665(r24)
/* 80142134 0013F094  D0 18 06 68 */	stfs f0, 0x668(r24)
/* 80142138 0013F098  D0 18 06 6C */	stfs f0, 0x66c(r24)
/* 8014213C 0013F09C  D0 18 06 70 */	stfs f0, 0x670(r24)
/* 80142140 0013F0A0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80142144 0013F0A4  B0 18 06 74 */	sth r0, 0x674(r24)
/* 80142148 0013F0A8  D0 18 06 78 */	stfs f0, 0x678(r24)
/* 8014214C 0013F0AC  90 98 06 7C */	stw r4, 0x67c(r24)
/* 80142150 0013F0B0  88 18 06 64 */	lbz r0, 0x664(r24)
/* 80142154 0013F0B4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80142158 0013F0B8  41 82 00 08 */	beq lbl_80142160
/* 8014215C 0013F0BC  38 60 00 02 */	li r3, 2
lbl_80142160:
/* 80142160 0013F0C0  90 78 06 80 */	stw r3, 0x680(r24)
/* 80142164 0013F0C4  38 78 06 88 */	addi r3, r24, 0x688
/* 80142168 0013F0C8  C0 02 9B 60 */	lfs f0, lbl_805AB880@sda21(r2)
/* 8014216C 0013F0CC  D0 18 06 84 */	stfs f0, 0x684(r24)
/* 80142170 0013F0D0  4B FF CB E1 */	bl __ct__18CSteeringBehaviorsFv
/* 80142174 0013F0D4  3C 80 80 3D */	lis r4, lbl_803D0078@ha
/* 80142178 0013F0D8  38 61 01 24 */	addi r3, r1, 0x124
/* 8014217C 0013F0DC  38 84 00 78 */	addi r4, r4, lbl_803D0078@l
/* 80142180 0013F0E0  38 84 00 07 */	addi r4, r4, 7
/* 80142184 0013F0E4  4B EC 2B 35 */	bl string_l__4rstlFPCc
/* 80142188 0013F0E8  80 98 00 64 */	lwz r4, 0x64(r24)
/* 8014218C 0013F0EC  38 78 06 8C */	addi r3, r24, 0x68c
/* 80142190 0013F0F0  C0 22 9B B0 */	lfs f1, lbl_805AB8D0@sda21(r2)
/* 80142194 0013F0F4  38 A1 01 24 */	addi r5, r1, 0x124
/* 80142198 0013F0F8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8014219C 0013F0FC  38 C0 00 00 */	li r6, 0
/* 801421A0 0013F100  C0 42 9B A8 */	lfs f2, lbl_805AB8C8@sda21(r2)
/* 801421A4 0013F104  48 03 38 15 */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 801421A8 0013F108  38 61 01 24 */	addi r3, r1, 0x124
/* 801421AC 0013F10C  48 1F B9 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801421B0 0013F110  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801421B4 0013F114  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801421B8 0013F118  C0 02 9B 5C */	lfs f0, lbl_805AB87C@sda21(r2)
/* 801421BC 0013F11C  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 801421C0 0013F120  B0 18 06 C4 */	sth r0, 0x6c4(r24)
/* 801421C4 0013F124  38 00 00 01 */	li r0, 1
/* 801421C8 0013F128  38 78 05 78 */	addi r3, r24, 0x578
/* 801421CC 0013F12C  D0 18 06 C8 */	stfs f0, 0x6c8(r24)
/* 801421D0 0013F130  C0 04 00 00 */	lfs f0, 0(r4)
/* 801421D4 0013F134  D0 18 06 CC */	stfs f0, 0x6cc(r24)
/* 801421D8 0013F138  C0 04 00 04 */	lfs f0, 4(r4)
/* 801421DC 0013F13C  D0 18 06 D0 */	stfs f0, 0x6d0(r24)
/* 801421E0 0013F140  C0 04 00 08 */	lfs f0, 8(r4)
/* 801421E4 0013F144  D0 18 06 D4 */	stfs f0, 0x6d4(r24)
/* 801421E8 0013F148  90 18 06 D8 */	stw r0, 0x6d8(r24)
/* 801421EC 0013F14C  48 1F EB 99 */	bl Lock__6CTokenFv
/* 801421F0 0013F150  38 78 05 A0 */	addi r3, r24, 0x5a0
/* 801421F4 0013F154  48 1F EB 91 */	bl Lock__6CTokenFv
/* 801421F8 0013F158  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801421FC 0013F15C  48 1A 0E 81 */	bl NoParameter__12CPASAnimParmFv
/* 80142200 0013F160  38 61 00 BC */	addi r3, r1, 0xbc
/* 80142204 0013F164  48 1A 0E 79 */	bl NoParameter__12CPASAnimParmFv
/* 80142208 0013F168  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8014220C 0013F16C  48 1A 0E 71 */	bl NoParameter__12CPASAnimParmFv
/* 80142210 0013F170  38 61 00 CC */	addi r3, r1, 0xcc
/* 80142214 0013F174  48 1A 0E 69 */	bl NoParameter__12CPASAnimParmFv
/* 80142218 0013F178  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8014221C 0013F17C  48 1A 0E 61 */	bl NoParameter__12CPASAnimParmFv
/* 80142220 0013F180  38 61 00 DC */	addi r3, r1, 0xdc
/* 80142224 0013F184  48 1A 0E 59 */	bl NoParameter__12CPASAnimParmFv
/* 80142228 0013F188  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8014222C 0013F18C  38 80 00 00 */	li r4, 0
/* 80142230 0013F190  48 1A 0D 55 */	bl FromEnum__12CPASAnimParmFi
/* 80142234 0013F194  38 61 00 EC */	addi r3, r1, 0xec
/* 80142238 0013F198  38 80 00 03 */	li r4, 3
/* 8014223C 0013F19C  48 1A 0D 49 */	bl FromEnum__12CPASAnimParmFi
/* 80142240 0013F1A0  38 61 00 BC */	addi r3, r1, 0xbc
/* 80142244 0013F1A4  38 01 00 B4 */	addi r0, r1, 0xb4
/* 80142248 0013F1A8  90 61 00 08 */	stw r3, 8(r1)
/* 8014224C 0013F1AC  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 80142250 0013F1B0  38 A1 00 EC */	addi r5, r1, 0xec
/* 80142254 0013F1B4  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 80142258 0013F1B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014225C 0013F1BC  38 E1 00 DC */	addi r7, r1, 0xdc
/* 80142260 0013F1C0  39 01 00 D4 */	addi r8, r1, 0xd4
/* 80142264 0013F1C4  39 21 00 CC */	addi r9, r1, 0xcc
/* 80142268 0013F1C8  39 41 00 C4 */	addi r10, r1, 0xc4
/* 8014226C 0013F1CC  38 80 00 0D */	li r4, 0xd
/* 80142270 0013F1D0  4B F3 B0 55 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 80142274 0013F1D4  80 B8 00 64 */	lwz r5, 0x64(r24)
/* 80142278 0013F1D8  7F 03 C3 78 */	mr r3, r24
/* 8014227C 0013F1DC  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 80142280 0013F1E0  C0 45 00 00 */	lfs f2, 0(r5)
/* 80142284 0013F1E4  C0 25 00 04 */	lfs f1, 4(r5)
/* 80142288 0013F1E8  C0 05 00 08 */	lfs f0, 8(r5)
/* 8014228C 0013F1EC  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 80142290 0013F1F0  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 80142294 0013F1F4  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80142298 0013F1F8  4B F3 A7 69 */	bl func_8007CA00
/* 8014229C 0013F1FC  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 801422A0 0013F200  38 61 00 74 */	addi r3, r1, 0x74
/* 801422A4 0013F204  EC 00 00 72 */	fmuls f0, f0, f1
/* 801422A8 0013F208  D0 18 06 68 */	stfs f0, 0x668(r24)
/* 801422AC 0013F20C  48 1A 0D D1 */	bl NoParameter__12CPASAnimParmFv
/* 801422B0 0013F210  38 61 00 7C */	addi r3, r1, 0x7c
/* 801422B4 0013F214  48 1A 0D C9 */	bl NoParameter__12CPASAnimParmFv
/* 801422B8 0013F218  38 61 00 84 */	addi r3, r1, 0x84
/* 801422BC 0013F21C  48 1A 0D C1 */	bl NoParameter__12CPASAnimParmFv
/* 801422C0 0013F220  38 61 00 8C */	addi r3, r1, 0x8c
/* 801422C4 0013F224  48 1A 0D B9 */	bl NoParameter__12CPASAnimParmFv
/* 801422C8 0013F228  38 61 00 94 */	addi r3, r1, 0x94
/* 801422CC 0013F22C  48 1A 0D B1 */	bl NoParameter__12CPASAnimParmFv
/* 801422D0 0013F230  38 61 00 9C */	addi r3, r1, 0x9c
/* 801422D4 0013F234  48 1A 0D A9 */	bl NoParameter__12CPASAnimParmFv
/* 801422D8 0013F238  C0 22 9B B4 */	lfs f1, lbl_805AB8D4@sda21(r2)
/* 801422DC 0013F23C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801422E0 0013F240  48 1A 0D 09 */	bl FromReal32__12CPASAnimParmFf
/* 801422E4 0013F244  38 61 00 AC */	addi r3, r1, 0xac
/* 801422E8 0013F248  38 80 00 01 */	li r4, 1
/* 801422EC 0013F24C  48 1A 0C 99 */	bl FromEnum__12CPASAnimParmFi
/* 801422F0 0013F250  38 61 00 7C */	addi r3, r1, 0x7c
/* 801422F4 0013F254  38 01 00 74 */	addi r0, r1, 0x74
/* 801422F8 0013F258  90 61 00 08 */	stw r3, 8(r1)
/* 801422FC 0013F25C  38 61 01 7C */	addi r3, r1, 0x17c
/* 80142300 0013F260  38 A1 00 AC */	addi r5, r1, 0xac
/* 80142304 0013F264  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 80142308 0013F268  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014230C 0013F26C  38 E1 00 9C */	addi r7, r1, 0x9c
/* 80142310 0013F270  39 01 00 94 */	addi r8, r1, 0x94
/* 80142314 0013F274  39 21 00 8C */	addi r9, r1, 0x8c
/* 80142318 0013F278  39 41 00 84 */	addi r10, r1, 0x84
/* 8014231C 0013F27C  38 80 00 0F */	li r4, 0xf
/* 80142320 0013F280  4B F3 AF A5 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 80142324 0013F284  80 B8 00 64 */	lwz r5, 0x64(r24)
/* 80142328 0013F288  7F 03 C3 78 */	mr r3, r24
/* 8014232C 0013F28C  38 81 01 7C */	addi r4, r1, 0x17c
/* 80142330 0013F290  C0 45 00 00 */	lfs f2, 0(r5)
/* 80142334 0013F294  C0 25 00 04 */	lfs f1, 4(r5)
/* 80142338 0013F298  C0 05 00 08 */	lfs f0, 8(r5)
/* 8014233C 0013F29C  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 80142340 0013F2A0  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80142344 0013F2A4  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80142348 0013F2A8  4B F3 A6 B9 */	bl func_8007CA00
/* 8014234C 0013F2AC  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80142350 0013F2B0  38 61 00 34 */	addi r3, r1, 0x34
/* 80142354 0013F2B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80142358 0013F2B8  D0 18 06 6C */	stfs f0, 0x66c(r24)
/* 8014235C 0013F2BC  48 1A 0D 21 */	bl NoParameter__12CPASAnimParmFv
/* 80142360 0013F2C0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80142364 0013F2C4  48 1A 0D 19 */	bl NoParameter__12CPASAnimParmFv
/* 80142368 0013F2C8  38 61 00 44 */	addi r3, r1, 0x44
/* 8014236C 0013F2CC  48 1A 0D 11 */	bl NoParameter__12CPASAnimParmFv
/* 80142370 0013F2D0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80142374 0013F2D4  48 1A 0D 09 */	bl NoParameter__12CPASAnimParmFv
/* 80142378 0013F2D8  38 61 00 54 */	addi r3, r1, 0x54
/* 8014237C 0013F2DC  48 1A 0D 01 */	bl NoParameter__12CPASAnimParmFv
/* 80142380 0013F2E0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80142384 0013F2E4  48 1A 0C F9 */	bl NoParameter__12CPASAnimParmFv
/* 80142388 0013F2E8  38 61 00 64 */	addi r3, r1, 0x64
/* 8014238C 0013F2EC  38 80 00 01 */	li r4, 1
/* 80142390 0013F2F0  48 1A 0B F5 */	bl FromEnum__12CPASAnimParmFi
/* 80142394 0013F2F4  38 61 00 6C */	addi r3, r1, 0x6c
/* 80142398 0013F2F8  38 80 00 02 */	li r4, 2
/* 8014239C 0013F2FC  48 1A 0B E9 */	bl FromEnum__12CPASAnimParmFi
/* 801423A0 0013F300  38 61 00 3C */	addi r3, r1, 0x3c
/* 801423A4 0013F304  38 01 00 34 */	addi r0, r1, 0x34
/* 801423A8 0013F308  90 61 00 08 */	stw r3, 8(r1)
/* 801423AC 0013F30C  38 61 01 34 */	addi r3, r1, 0x134
/* 801423B0 0013F310  38 A1 00 6C */	addi r5, r1, 0x6c
/* 801423B4 0013F314  38 C1 00 64 */	addi r6, r1, 0x64
/* 801423B8 0013F318  90 01 00 0C */	stw r0, 0xc(r1)
/* 801423BC 0013F31C  38 E1 00 5C */	addi r7, r1, 0x5c
/* 801423C0 0013F320  39 01 00 54 */	addi r8, r1, 0x54
/* 801423C4 0013F324  39 21 00 4C */	addi r9, r1, 0x4c
/* 801423C8 0013F328  39 41 00 44 */	addi r10, r1, 0x44
/* 801423CC 0013F32C  38 80 00 07 */	li r4, 7
/* 801423D0 0013F330  4B F3 AE F5 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801423D4 0013F334  80 B8 00 64 */	lwz r5, 0x64(r24)
/* 801423D8 0013F338  7F 03 C3 78 */	mr r3, r24
/* 801423DC 0013F33C  38 81 01 34 */	addi r4, r1, 0x134
/* 801423E0 0013F340  C0 45 00 00 */	lfs f2, 0(r5)
/* 801423E4 0013F344  C0 25 00 04 */	lfs f1, 4(r5)
/* 801423E8 0013F348  C0 05 00 08 */	lfs f0, 8(r5)
/* 801423EC 0013F34C  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 801423F0 0013F350  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 801423F4 0013F354  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 801423F8 0013F358  4B F3 A6 09 */	bl func_8007CA00
/* 801423FC 0013F35C  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 80142400 0013F360  3C 15 00 01 */	addis r0, r21, 1
/* 80142404 0013F364  28 00 FF FF */	cmplwi r0, 0xffff
/* 80142408 0013F368  EC 00 00 72 */	fmuls f0, f0, f1
/* 8014240C 0013F36C  D0 18 06 70 */	stfs f0, 0x670(r24)
/* 80142410 0013F370  41 82 00 BC */	beq lbl_801424CC
/* 80142414 0013F374  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80142418 0013F378  92 A1 00 30 */	stw r21, 0x30(r1)
/* 8014241C 0013F37C  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80142420 0013F380  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80142424 0013F384  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80142428 0013F388  38 61 00 24 */	addi r3, r1, 0x24
/* 8014242C 0013F38C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80142430 0013F390  81 84 00 00 */	lwz r12, 0(r4)
/* 80142434 0013F394  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80142438 0013F398  7D 89 03 A6 */	mtctr r12
/* 8014243C 0013F39C  4E 80 04 21 */	bctrl
/* 80142440 0013F3A0  39 E1 00 F4 */	addi r15, r1, 0xf4
/* 80142444 0013F3A4  38 81 00 24 */	addi r4, r1, 0x24
/* 80142448 0013F3A8  7D E3 7B 78 */	mr r3, r15
/* 8014244C 0013F3AC  48 1F EA 5D */	bl __ct__6CTokenFRC6CToken
/* 80142450 0013F3B0  7D E3 7B 78 */	mr r3, r15
/* 80142454 0013F3B4  48 1F E9 B9 */	bl GetObj__6CTokenFv
/* 80142458 0013F3B8  80 03 00 04 */	lwz r0, 4(r3)
/* 8014245C 0013F3BC  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80142460 0013F3C0  88 18 06 4C */	lbz r0, 0x64c(r24)
/* 80142464 0013F3C4  28 00 00 00 */	cmplwi r0, 0
/* 80142468 0013F3C8  40 82 00 34 */	bne lbl_8014249C
/* 8014246C 0013F3CC  35 F8 06 40 */	addic. r15, r24, 0x640
/* 80142470 0013F3D0  41 82 00 20 */	beq lbl_80142490
/* 80142474 0013F3D4  7D E3 7B 78 */	mr r3, r15
/* 80142478 0013F3D8  38 81 00 F4 */	addi r4, r1, 0xf4
/* 8014247C 0013F3DC  48 1F EA 2D */	bl __ct__6CTokenFRC6CToken
/* 80142480 0013F3E0  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 80142484 0013F3E4  7D E3 7B 78 */	mr r3, r15
/* 80142488 0013F3E8  90 0F 00 08 */	stw r0, 8(r15)
/* 8014248C 0013F3EC  48 1F E8 F9 */	bl Lock__6CTokenFv
lbl_80142490:
/* 80142490 0013F3F0  38 00 00 01 */	li r0, 1
/* 80142494 0013F3F4  98 18 06 4C */	stb r0, 0x64c(r24)
/* 80142498 0013F3F8  48 00 00 1C */	b lbl_801424B4
lbl_8014249C:
/* 8014249C 0013F3FC  39 F8 06 40 */	addi r15, r24, 0x640
/* 801424A0 0013F400  38 81 00 F4 */	addi r4, r1, 0xf4
/* 801424A4 0013F404  7D E3 7B 78 */	mr r3, r15
/* 801424A8 0013F408  48 1F E8 1D */	bl __as__6CTokenFRC6CToken
/* 801424AC 0013F40C  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 801424B0 0013F410  90 0F 00 08 */	stw r0, 8(r15)
lbl_801424B4:
/* 801424B4 0013F414  38 61 00 F4 */	addi r3, r1, 0xf4
/* 801424B8 0013F418  38 80 00 00 */	li r4, 0
/* 801424BC 0013F41C  48 1F E9 85 */	bl __dt__6CTokenFv
/* 801424C0 0013F420  38 61 00 24 */	addi r3, r1, 0x24
/* 801424C4 0013F424  38 80 FF FF */	li r4, -1
/* 801424C8 0013F428  48 1F E9 79 */	bl __dt__6CTokenFv
lbl_801424CC:
/* 801424CC 0013F42C  88 18 04 E1 */	lbz r0, 0x4e1(r24)
/* 801424D0 0013F430  38 A0 00 00 */	li r5, 0
/* 801424D4 0013F434  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 801424D8 0013F438  7F 03 C3 78 */	mr r3, r24
/* 801424DC 0013F43C  98 18 04 E1 */	stb r0, 0x4e1(r24)
/* 801424E0 0013F440  38 80 00 00 */	li r4, 0
/* 801424E4 0013F444  88 18 04 E1 */	lbz r0, 0x4e1(r24)
/* 801424E8 0013F448  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 801424EC 0013F44C  98 18 04 E1 */	stb r0, 0x4e1(r24)
/* 801424F0 0013F450  88 18 04 E1 */	lbz r0, 0x4e1(r24)
/* 801424F4 0013F454  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 801424F8 0013F458  98 18 04 E1 */	stb r0, 0x4e1(r24)
/* 801424FC 0013F45C  88 18 04 E1 */	lbz r0, 0x4e1(r24)
/* 80142500 0013F460  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80142504 0013F464  98 18 04 E1 */	stb r0, 0x4e1(r24)
/* 80142508 0013F468  4B F1 08 65 */	bl CreateShadow__6CActorFb
/* 8014250C 0013F46C  7F 03 C3 78 */	mr r3, r24
/* 80142510 0013F470  4B F3 53 85 */	bl MakeThermalColdAndHot__10CPatternedFv
/* 80142514 0013F474  34 A1 01 38 */	addic. r5, r1, 0x138
/* 80142518 0013F478  41 82 00 58 */	beq lbl_80142570
/* 8014251C 0013F47C  80 C5 00 00 */	lwz r6, 0(r5)
/* 80142520 0013F480  38 60 00 00 */	li r3, 0
/* 80142524 0013F484  2C 06 00 00 */	cmpwi r6, 0
/* 80142528 0013F488  40 81 00 40 */	ble lbl_80142568
/* 8014252C 0013F48C  2C 06 00 08 */	cmpwi r6, 8
/* 80142530 0013F490  38 86 FF F8 */	addi r4, r6, -8
/* 80142534 0013F494  40 81 00 20 */	ble lbl_80142554
/* 80142538 0013F498  38 04 00 07 */	addi r0, r4, 7
/* 8014253C 0013F49C  54 00 E8 FE */	srwi r0, r0, 3
/* 80142540 0013F4A0  7C 09 03 A6 */	mtctr r0
/* 80142544 0013F4A4  2C 04 00 00 */	cmpwi r4, 0
/* 80142548 0013F4A8  40 81 00 0C */	ble lbl_80142554
lbl_8014254C:
/* 8014254C 0013F4AC  38 63 00 08 */	addi r3, r3, 8
/* 80142550 0013F4B0  42 00 FF FC */	bdnz lbl_8014254C
lbl_80142554:
/* 80142554 0013F4B4  7C 03 30 50 */	subf r0, r3, r6
/* 80142558 0013F4B8  7C 09 03 A6 */	mtctr r0
/* 8014255C 0013F4BC  7C 03 30 00 */	cmpw r3, r6
/* 80142560 0013F4C0  40 80 00 08 */	bge lbl_80142568
lbl_80142564:
/* 80142564 0013F4C4  42 00 00 00 */	bdnz lbl_80142564
lbl_80142568:
/* 80142568 0013F4C8  38 00 00 00 */	li r0, 0
/* 8014256C 0013F4CC  90 05 00 00 */	stw r0, 0(r5)
lbl_80142570:
/* 80142570 0013F4D0  34 A1 01 80 */	addic. r5, r1, 0x180
/* 80142574 0013F4D4  41 82 00 58 */	beq lbl_801425CC
/* 80142578 0013F4D8  80 C5 00 00 */	lwz r6, 0(r5)
/* 8014257C 0013F4DC  38 60 00 00 */	li r3, 0
/* 80142580 0013F4E0  2C 06 00 00 */	cmpwi r6, 0
/* 80142584 0013F4E4  40 81 00 40 */	ble lbl_801425C4
/* 80142588 0013F4E8  2C 06 00 08 */	cmpwi r6, 8
/* 8014258C 0013F4EC  38 86 FF F8 */	addi r4, r6, -8
/* 80142590 0013F4F0  40 81 00 20 */	ble lbl_801425B0
/* 80142594 0013F4F4  38 04 00 07 */	addi r0, r4, 7
/* 80142598 0013F4F8  54 00 E8 FE */	srwi r0, r0, 3
/* 8014259C 0013F4FC  7C 09 03 A6 */	mtctr r0
/* 801425A0 0013F500  2C 04 00 00 */	cmpwi r4, 0
/* 801425A4 0013F504  40 81 00 0C */	ble lbl_801425B0
lbl_801425A8:
/* 801425A8 0013F508  38 63 00 08 */	addi r3, r3, 8
/* 801425AC 0013F50C  42 00 FF FC */	bdnz lbl_801425A8
lbl_801425B0:
/* 801425B0 0013F510  7C 03 30 50 */	subf r0, r3, r6
/* 801425B4 0013F514  7C 09 03 A6 */	mtctr r0
/* 801425B8 0013F518  7C 03 30 00 */	cmpw r3, r6
/* 801425BC 0013F51C  40 80 00 08 */	bge lbl_801425C4
lbl_801425C0:
/* 801425C0 0013F520  42 00 00 00 */	bdnz lbl_801425C0
lbl_801425C4:
/* 801425C4 0013F524  38 00 00 00 */	li r0, 0
/* 801425C8 0013F528  90 05 00 00 */	stw r0, 0(r5)
lbl_801425CC:
/* 801425CC 0013F52C  34 A1 01 C8 */	addic. r5, r1, 0x1c8
/* 801425D0 0013F530  41 82 00 58 */	beq lbl_80142628
/* 801425D4 0013F534  80 C5 00 00 */	lwz r6, 0(r5)
/* 801425D8 0013F538  38 60 00 00 */	li r3, 0
/* 801425DC 0013F53C  2C 06 00 00 */	cmpwi r6, 0
/* 801425E0 0013F540  40 81 00 40 */	ble lbl_80142620
/* 801425E4 0013F544  2C 06 00 08 */	cmpwi r6, 8
/* 801425E8 0013F548  38 86 FF F8 */	addi r4, r6, -8
/* 801425EC 0013F54C  40 81 00 20 */	ble lbl_8014260C
/* 801425F0 0013F550  38 04 00 07 */	addi r0, r4, 7
/* 801425F4 0013F554  54 00 E8 FE */	srwi r0, r0, 3
/* 801425F8 0013F558  7C 09 03 A6 */	mtctr r0
/* 801425FC 0013F55C  2C 04 00 00 */	cmpwi r4, 0
/* 80142600 0013F560  40 81 00 0C */	ble lbl_8014260C
lbl_80142604:
/* 80142604 0013F564  38 63 00 08 */	addi r3, r3, 8
/* 80142608 0013F568  42 00 FF FC */	bdnz lbl_80142604
lbl_8014260C:
/* 8014260C 0013F56C  7C 03 30 50 */	subf r0, r3, r6
/* 80142610 0013F570  7C 09 03 A6 */	mtctr r0
/* 80142614 0013F574  7C 03 30 00 */	cmpw r3, r6
/* 80142618 0013F578  40 80 00 08 */	bge lbl_80142620
lbl_8014261C:
/* 8014261C 0013F57C  42 00 00 00 */	bdnz lbl_8014261C
lbl_80142620:
/* 80142620 0013F580  38 00 00 00 */	li r0, 0
/* 80142624 0013F584  90 05 00 00 */	stw r0, 0(r5)
lbl_80142628:
/* 80142628 0013F588  7F 03 C3 78 */	mr r3, r24
/* 8014262C 0013F58C  E3 E1 02 E8 */	psq_l f31, 744(r1), 0, qr0
/* 80142630 0013F590  CB E1 02 E0 */	lfd f31, 0x2e0(r1)
/* 80142634 0013F594  E3 C1 02 D8 */	psq_l f30, 728(r1), 0, qr0
/* 80142638 0013F598  CB C1 02 D0 */	lfd f30, 0x2d0(r1)
/* 8014263C 0013F59C  E3 A1 02 C8 */	psq_l f29, 712(r1), 0, qr0
/* 80142640 0013F5A0  CB A1 02 C0 */	lfd f29, 0x2c0(r1)
/* 80142644 0013F5A4  E3 81 02 B8 */	psq_l f28, 696(r1), 0, qr0
/* 80142648 0013F5A8  CB 81 02 B0 */	lfd f28, 0x2b0(r1)
/* 8014264C 0013F5AC  E3 61 02 A8 */	psq_l f27, 680(r1), 0, qr0
/* 80142650 0013F5B0  CB 61 02 A0 */	lfd f27, 0x2a0(r1)
/* 80142654 0013F5B4  E3 41 02 98 */	psq_l f26, 664(r1), 0, qr0
/* 80142658 0013F5B8  CB 41 02 90 */	lfd f26, 0x290(r1)
/* 8014265C 0013F5BC  E3 21 02 88 */	psq_l f25, 648(r1), 0, qr0
/* 80142660 0013F5C0  CB 21 02 80 */	lfd f25, 0x280(r1)
/* 80142664 0013F5C4  E3 01 02 78 */	psq_l f24, 632(r1), 0, qr0
/* 80142668 0013F5C8  CB 01 02 70 */	lfd f24, 0x270(r1)
/* 8014266C 0013F5CC  E2 E1 02 68 */	psq_l f23, 616(r1), 0, qr0
/* 80142670 0013F5D0  CA E1 02 60 */	lfd f23, 0x260(r1)
/* 80142674 0013F5D4  B9 E1 02 1C */	lmw r15, 0x21c(r1)
/* 80142678 0013F5D8  80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 8014267C 0013F5DC  7C 08 03 A6 */	mtlr r0
/* 80142680 0013F5E0  38 21 02 F0 */	addi r1, r1, 0x2f0
/* 80142684 0013F5E4  4E 80 00 20 */	blr

.global GetBehave__Q211CChozoGhost13CBehaveChanceCFQ211CChozoGhost11EBehaveTypeR13CStateManager
GetBehave__Q211CChozoGhost13CBehaveChanceCFQ211CChozoGhost11EBehaveTypeR13CStateManager:
/* 80142688 0013F5E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014268C 0013F5EC  7C 08 02 A6 */	mflr r0
/* 80142690 0013F5F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80142694 0013F5F4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80142698 0013F5F8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8014269C 0013F5FC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801426A0 0013F600  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 801426A4 0013F604  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 801426A8 0013F608  F3 A1 00 18 */	psq_st f29, 24(r1), 0, qr0
/* 801426AC 0013F60C  2C 04 00 02 */	cmpwi r4, 2
/* 801426B0 0013F610  C3 E3 00 04 */	lfs f31, 4(r3)
/* 801426B4 0013F614  C3 C3 00 08 */	lfs f30, 8(r3)
/* 801426B8 0013F618  C3 A3 00 0C */	lfs f29, 0xc(r3)
/* 801426BC 0013F61C  41 82 00 54 */	beq lbl_80142710
/* 801426C0 0013F620  40 80 00 14 */	bge lbl_801426D4
/* 801426C4 0013F624  2C 04 00 00 */	cmpwi r4, 0
/* 801426C8 0013F628  41 82 00 18 */	beq lbl_801426E0
/* 801426CC 0013F62C  40 80 00 2C */	bge lbl_801426F8
/* 801426D0 0013F630  48 00 00 70 */	b lbl_80142740
lbl_801426D4:
/* 801426D4 0013F634  2C 04 00 04 */	cmpwi r4, 4
/* 801426D8 0013F638  40 80 00 68 */	bge lbl_80142740
/* 801426DC 0013F63C  48 00 00 4C */	b lbl_80142728
lbl_801426E0:
/* 801426E0 0013F640  C0 02 9B B8 */	lfs f0, lbl_805AB8D8@sda21(r2)
/* 801426E4 0013F644  EC 1F 00 24 */	fdivs f0, f31, f0
/* 801426E8 0013F648  C3 E2 9B 5C */	lfs f31, lbl_805AB87C@sda21(r2)
/* 801426EC 0013F64C  EF DE 00 2A */	fadds f30, f30, f0
/* 801426F0 0013F650  EF BD 00 2A */	fadds f29, f29, f0
/* 801426F4 0013F654  48 00 00 4C */	b lbl_80142740
lbl_801426F8:
/* 801426F8 0013F658  C0 02 9B B8 */	lfs f0, lbl_805AB8D8@sda21(r2)
/* 801426FC 0013F65C  EC 1E 00 24 */	fdivs f0, f30, f0
/* 80142700 0013F660  C3 C2 9B 5C */	lfs f30, lbl_805AB87C@sda21(r2)
/* 80142704 0013F664  EF FF 00 2A */	fadds f31, f31, f0
/* 80142708 0013F668  EF BD 00 2A */	fadds f29, f29, f0
/* 8014270C 0013F66C  48 00 00 34 */	b lbl_80142740
lbl_80142710:
/* 80142710 0013F670  C0 02 9B B8 */	lfs f0, lbl_805AB8D8@sda21(r2)
/* 80142714 0013F674  EC 1D 00 24 */	fdivs f0, f29, f0
/* 80142718 0013F678  C3 A2 9B 5C */	lfs f29, lbl_805AB87C@sda21(r2)
/* 8014271C 0013F67C  EF FF 00 2A */	fadds f31, f31, f0
/* 80142720 0013F680  EF DE 00 2A */	fadds f30, f30, f0
/* 80142724 0013F684  48 00 00 1C */	b lbl_80142740
lbl_80142728:
/* 80142728 0013F688  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8014272C 0013F68C  C0 02 9B B8 */	lfs f0, lbl_805AB8D8@sda21(r2)
/* 80142730 0013F690  EC 01 00 24 */	fdivs f0, f1, f0
/* 80142734 0013F694  EF FF 00 2A */	fadds f31, f31, f0
/* 80142738 0013F698  EF DE 00 2A */	fadds f30, f30, f0
/* 8014273C 0013F69C  EF BD 00 2A */	fadds f29, f29, f0
lbl_80142740:
/* 80142740 0013F6A0  80 65 09 00 */	lwz r3, 0x900(r5)
/* 80142744 0013F6A4  48 1C FD 99 */	bl Float__9CRandom16Fv
/* 80142748 0013F6A8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8014274C 0013F6AC  38 60 00 03 */	li r3, 3
/* 80142750 0013F6B0  40 80 00 0C */	bge lbl_8014275C
/* 80142754 0013F6B4  38 60 00 00 */	li r3, 0
/* 80142758 0013F6B8  48 00 00 28 */	b lbl_80142780
lbl_8014275C:
/* 8014275C 0013F6BC  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80142760 0013F6C0  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80142764 0013F6C4  40 80 00 0C */	bge lbl_80142770
/* 80142768 0013F6C8  38 60 00 01 */	li r3, 1
/* 8014276C 0013F6CC  48 00 00 14 */	b lbl_80142780
lbl_80142770:
/* 80142770 0013F6D0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80142774 0013F6D4  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 80142778 0013F6D8  40 80 00 08 */	bge lbl_80142780
/* 8014277C 0013F6DC  38 60 00 02 */	li r3, 2
lbl_80142780:
/* 80142780 0013F6E0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80142784 0013F6E4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80142788 0013F6E8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8014278C 0013F6EC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80142790 0013F6F0  E3 A1 00 18 */	psq_l f29, 24(r1), 0, qr0
/* 80142794 0013F6F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80142798 0013F6F8  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 8014279C 0013F6FC  7C 08 03 A6 */	mtlr r0
/* 801427A0 0013F700  38 21 00 40 */	addi r1, r1, 0x40
/* 801427A4 0013F704  4E 80 00 20 */	blr

.global __ct__Q211CChozoGhost13CBehaveChanceFR12CInputStream
__ct__Q211CChozoGhost13CBehaveChanceFR12CInputStream:
/* 801427A8 0013F708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801427AC 0013F70C  7C 08 02 A6 */	mflr r0
/* 801427B0 0013F710  90 01 00 14 */	stw r0, 0x14(r1)
/* 801427B4 0013F714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801427B8 0013F718  7C 9F 23 78 */	mr r31, r4
/* 801427BC 0013F71C  93 C1 00 08 */	stw r30, 8(r1)
/* 801427C0 0013F720  7C 7E 1B 78 */	mr r30, r3
/* 801427C4 0013F724  7F E3 FB 78 */	mr r3, r31
/* 801427C8 0013F728  48 1F C4 BD */	bl ReadLong__12CInputStreamFv
/* 801427CC 0013F72C  90 7E 00 00 */	stw r3, 0(r30)
/* 801427D0 0013F730  7F E3 FB 78 */	mr r3, r31
/* 801427D4 0013F734  48 1F C4 55 */	bl ReadFloat__12CInputStreamFv
/* 801427D8 0013F738  D0 3E 00 04 */	stfs f1, 4(r30)
/* 801427DC 0013F73C  7F E3 FB 78 */	mr r3, r31
/* 801427E0 0013F740  48 1F C4 49 */	bl ReadFloat__12CInputStreamFv
/* 801427E4 0013F744  D0 3E 00 08 */	stfs f1, 8(r30)
/* 801427E8 0013F748  7F E3 FB 78 */	mr r3, r31
/* 801427EC 0013F74C  48 1F C4 3D */	bl ReadFloat__12CInputStreamFv
/* 801427F0 0013F750  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 801427F4 0013F754  7F E3 FB 78 */	mr r3, r31
/* 801427F8 0013F758  48 1F C4 31 */	bl ReadFloat__12CInputStreamFv
/* 801427FC 0013F75C  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 80142800 0013F760  7F E3 FB 78 */	mr r3, r31
/* 80142804 0013F764  48 1F C4 25 */	bl ReadFloat__12CInputStreamFv
/* 80142808 0013F768  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 8014280C 0013F76C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80142810 0013F770  2C 00 00 05 */	cmpwi r0, 5
/* 80142814 0013F774  40 81 00 18 */	ble lbl_8014282C
/* 80142818 0013F778  7F E3 FB 78 */	mr r3, r31
/* 8014281C 0013F77C  48 1F C4 0D */	bl ReadFloat__12CInputStreamFv
/* 80142820 0013F780  C0 02 9B BC */	lfs f0, lbl_805AB8DC@sda21(r2)
/* 80142824 0013F784  EC 00 00 72 */	fmuls f0, f0, f1
/* 80142828 0013F788  48 00 00 08 */	b lbl_80142830
lbl_8014282C:
/* 8014282C 0013F78C  C0 02 9B 80 */	lfs f0, lbl_805AB8A0@sda21(r2)
lbl_80142830:
/* 80142830 0013F790  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80142834 0013F794  80 1E 00 00 */	lwz r0, 0(r30)
/* 80142838 0013F798  2C 00 00 06 */	cmpwi r0, 6
/* 8014283C 0013F79C  40 81 00 10 */	ble lbl_8014284C
/* 80142840 0013F7A0  7F E3 FB 78 */	mr r3, r31
/* 80142844 0013F7A4  48 1F C4 41 */	bl ReadLong__12CInputStreamFv
/* 80142848 0013F7A8  48 00 00 08 */	b lbl_80142850
lbl_8014284C:
/* 8014284C 0013F7AC  38 60 00 02 */	li r3, 2
lbl_80142850:
/* 80142850 0013F7B0  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80142854 0013F7B4  7F C3 F3 78 */	mr r3, r30
/* 80142858 0013F7B8  C0 82 9B 60 */	lfs f4, lbl_805AB880@sda21(r2)
/* 8014285C 0013F7BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80142860 0013F7C0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80142864 0013F7C4  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80142868 0013F7C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8014286C 0013F7CC  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 80142870 0013F7D0  EC 02 00 2A */	fadds f0, f2, f0
/* 80142874 0013F7D4  EC 03 00 2A */	fadds f0, f3, f0
/* 80142878 0013F7D8  EC 44 00 24 */	fdivs f2, f4, f0
/* 8014287C 0013F7DC  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80142880 0013F7E0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80142884 0013F7E4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80142888 0013F7E8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8014288C 0013F7EC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80142890 0013F7F0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80142894 0013F7F4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80142898 0013F7F8  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8014289C 0013F7FC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 801428A0 0013F800  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801428A4 0013F804  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 801428A8 0013F808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801428AC 0013F80C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801428B0 0013F810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801428B4 0013F814  7C 08 03 A6 */	mtlr r0
/* 801428B8 0013F818  38 21 00 10 */	addi r1, r1, 0x10
/* 801428BC 0013F81C  4E 80 00 20 */	blr

.global sub_801428c0
sub_801428c0:
/* 801428C0 0013F820  80 A3 00 00 */	lwz r5, 0(r3)
/* 801428C4 0013F824  80 04 00 00 */	lwz r0, 0(r4)
/* 801428C8 0013F828  7C 05 00 00 */	cmpw r5, r0
/* 801428CC 0013F82C  4D 81 00 20 */	bgtlr
/* 801428D0 0013F830  7C 83 23 78 */	mr r3, r4
/* 801428D4 0013F834  4E 80 00 20 */	blr

.global __sinit_CChozoGhost_cpp
__sinit_CChozoGhost_cpp:
/* 801428D8 0013F838  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801428DC 0013F83C  7C 08 02 A6 */	mflr r0
/* 801428E0 0013F840  3C 80 80 3D */	lis r4, lbl_803D0078@ha
/* 801428E4 0013F844  38 84 00 78 */	addi r4, r4, lbl_803D0078@l
/* 801428E8 0013F848  90 01 00 24 */	stw r0, 0x24(r1)
/* 801428EC 0013F84C  38 61 00 08 */	addi r3, r1, 8
/* 801428F0 0013F850  38 84 00 0E */	addi r4, r4, 0xe
/* 801428F4 0013F854  4B EC 23 C5 */	bl string_l__4rstlFPCc
/* 801428F8 0013F858  3C 60 80 57 */	lis r3, lbl_805719CC@ha
/* 801428FC 0013F85C  38 81 00 08 */	addi r4, r1, 8
/* 80142900 0013F860  38 63 19 CC */	addi r3, r3, lbl_805719CC@l
/* 80142904 0013F864  48 1F B8 5D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80142908 0013F868  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8014290C 0013F86C  3C A0 80 47 */	lis r5, lbl_8046C748@ha
/* 80142910 0013F870  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80142914 0013F874  38 A5 C7 48 */	addi r5, r5, lbl_8046C748@l
/* 80142918 0013F878  48 24 6D 75 */	bl __register_global_object
/* 8014291C 0013F87C  38 61 00 08 */	addi r3, r1, 8
/* 80142920 0013F880  48 1F B1 C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80142924 0013F884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80142928 0013F888  7C 08 03 A6 */	mtlr r0
/* 8014292C 0013F88C  38 21 00 20 */	addi r1, r1, 0x20
/* 80142930 0013F890  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AB878
lbl_805AB878:
	# ROM: 0x3F8118
	.4byte 0x42700000

.global lbl_805AB87C
lbl_805AB87C:
	# ROM: 0x3F811C
	.4byte 0

.global lbl_805AB880
lbl_805AB880:
	# ROM: 0x3F8120
	.float 1.0

.global lbl_805AB884
lbl_805AB884:
	# ROM: 0x3F8124
	.4byte 0x42A00000

.global lbl_805AB888
lbl_805AB888:
	# ROM: 0x3F8128
	.float 2.0

.global lbl_805AB88C
lbl_805AB88C:
	# ROM: 0x3F812C
	.4byte 0xC0000000

.global lbl_805AB890
lbl_805AB890:
	# ROM: 0x3F8130
	.float -1.0

.global lbl_805AB894
lbl_805AB894:
	# ROM: 0x3F8134
	.float 4.0

.global lbl_805AB898
lbl_805AB898:
	# ROM: 0x3F8138
	.4byte 0x3F866666

.global lbl_805AB89C
lbl_805AB89C:
	# ROM: 0x3F813C
	.4byte 0x3D4CCCCD

.global lbl_805AB8A0
lbl_805AB8A0:
	# ROM: 0x3F8140
	.float 0.5

.global lbl_805AB8A4
lbl_805AB8A4:
	# ROM: 0x3F8144
	.float 2.5

.global lbl_805AB8A8
lbl_805AB8A8:
	# ROM: 0x3F8148
	.4byte 0x42C80000

.global lbl_805AB8AC
lbl_805AB8AC:
	# ROM: 0x3F814C
	.float 255.0

.global lbl_805AB8B0
lbl_805AB8B0:
	# ROM: 0x3F8150
	.float 8.0

.global lbl_805AB8B4
lbl_805AB8B4:
	# ROM: 0x3F8154
	.4byte 0x7F7FFFFF

.global lbl_805AB8B8
lbl_805AB8B8:
	# ROM: 0x3F8158
	.4byte 0x41200000

.global lbl_805AB8BC
lbl_805AB8BC:
	# ROM: 0x3F815C
	.float 5.0

.global lbl_805AB8C0
lbl_805AB8C0:
	# ROM: 0x3F8160
	.4byte 0x41A00000

.global lbl_805AB8C4
lbl_805AB8C4:
	# ROM: 0x3F8164
	.float 0.2

.global lbl_805AB8C8
lbl_805AB8C8:
	# ROM: 0x3F8168
	.4byte 0x40490FDB

.global lbl_805AB8CC
lbl_805AB8CC:
	# ROM: 0x3F816C
	.4byte 0x42960000

.global lbl_805AB8D0
lbl_805AB8D0:
	# ROM: 0x3F8170
	.4byte 0x3FB2B8C3

.global lbl_805AB8D4
lbl_805AB8D4:
	# ROM: 0x3F8174
	.float 90.0

.global lbl_805AB8D8
lbl_805AB8D8:
	# ROM: 0x3F8178
	.4byte 0x40400000

.global lbl_805AB8DC
lbl_805AB8DC:
	# ROM: 0x3F817C
	.float 0.01


.include "macros.inc"

.section .data
.balign 8

.global lbl_803E2878
lbl_803E2878:
	# ROM: 0x3DF878
	.4byte 0
	.4byte 0
	.4byte __dt__8CMetareeFv
	.4byte Accept__8CMetareeFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__8CMetareeFfR13CStateManager
	.4byte AcceptScriptMsg__8CMetareeF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__8CMetareeFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__8CMetareeFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
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
	.4byte Dead__8CMetareeFR13CStateManager9EStateMsgf
	.4byte PathFind__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__8CMetareeFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__3CAiFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__8CMetareeFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__8CMetareeFR13CStateManager9EStateMsgf
	.4byte InActive__8CMetareeFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__8CMetareeFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__8CMetareeFR13CStateManager9EStateMsgf
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
	.4byte InRange__8CMetareeFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__10CPatternedFR13CStateManagerf
	.4byte SpotPlayer__10CPatternedFR13CStateManagerf
	.4byte PlayerSpot__10CPatternedFR13CStateManagerf
	.4byte PatternOver__10CPatternedFR13CStateManagerf
	.4byte PatternShagged__10CPatternedFR13CStateManagerf
	.4byte HasAttackPattern__10CPatternedFR13CStateManagerf
	.4byte HasPatrolPath__10CPatternedFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__8CMetareeFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__10CPatternedFR13CStateManagerf
	.4byte ShouldAttack__8CMetareeFR13CStateManagerf
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
	.4byte ThinkAboutMove__8CMetareeFf
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

.global lbl_805A77F8
lbl_805A77F8:
	# ROM: 0x3F5198
	.4byte 0x00000013

.global lbl_805A77FC
lbl_805A77FC:
	# ROM: 0x3F519C
	.4byte 0x00000020

.global lbl_805A7800
lbl_805A7800:
	# ROM: 0x3F51A0
	.4byte 0x00000020
	.4byte 0

.section .text, "ax"

.global __dt__8CMetareeFv
__dt__8CMetareeFv:
/* 8014E104 0014B064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014E108 0014B068  7C 08 02 A6 */	mflr r0
/* 8014E10C 0014B06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014E110 0014B070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014E114 0014B074  7C 9F 23 78 */	mr r31, r4
/* 8014E118 0014B078  93 C1 00 08 */	stw r30, 8(r1)
/* 8014E11C 0014B07C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8014E120 0014B080  41 82 00 28 */	beq lbl_8014E148
/* 8014E124 0014B084  3C A0 80 3E */	lis r5, lbl_803E2878@ha
/* 8014E128 0014B088  38 80 00 00 */	li r4, 0
/* 8014E12C 0014B08C  38 05 28 78 */	addi r0, r5, lbl_803E2878@l
/* 8014E130 0014B090  90 1E 00 00 */	stw r0, 0(r30)
/* 8014E134 0014B094  4B F2 94 3D */	bl __dt__10CPatternedFv
/* 8014E138 0014B098  7F E0 07 35 */	extsh. r0, r31
/* 8014E13C 0014B09C  40 81 00 0C */	ble lbl_8014E148
/* 8014E140 0014B0A0  7F C3 F3 78 */	mr r3, r30
/* 8014E144 0014B0A4  48 1C 77 ED */	bl Free__7CMemoryFPCv
lbl_8014E148:
/* 8014E148 0014B0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014E14C 0014B0AC  7F C3 F3 78 */	mr r3, r30
/* 8014E150 0014B0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014E154 0014B0B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014E158 0014B0B8  7C 08 03 A6 */	mtlr r0
/* 8014E15C 0014B0BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014E160 0014B0C0  4E 80 00 20 */	blr

.global Delay__8CMetareeFR13CStateManagerf
Delay__8CMetareeFR13CStateManagerf:
/* 8014E164 0014B0C4  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 8014E168 0014B0C8  C0 03 05 68 */	lfs f0, 0x568(r3)
/* 8014E16C 0014B0CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014E170 0014B0D0  7C 00 00 26 */	mfcr r0
/* 8014E174 0014B0D4  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8014E178 0014B0D8  4E 80 00 20 */	blr

.global Think__8CMetareeFfR13CStateManager
Think__8CMetareeFfR13CStateManager:
/* 8014E17C 0014B0DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014E180 0014B0E0  7C 08 02 A6 */	mflr r0
/* 8014E184 0014B0E4  38 C0 00 01 */	li r6, 1
/* 8014E188 0014B0E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014E18C 0014B0EC  7C C0 33 78 */	mr r0, r6
/* 8014E190 0014B0F0  80 A4 08 B8 */	lwz r5, 0x8b8(r4)
/* 8014E194 0014B0F4  80 A5 00 00 */	lwz r5, 0(r5)
/* 8014E198 0014B0F8  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 8014E19C 0014B0FC  2C 05 00 03 */	cmpwi r5, 3
/* 8014E1A0 0014B100  41 82 00 10 */	beq lbl_8014E1B0
/* 8014E1A4 0014B104  2C 05 00 02 */	cmpwi r5, 2
/* 8014E1A8 0014B108  41 82 00 08 */	beq lbl_8014E1B0
/* 8014E1AC 0014B10C  38 00 00 00 */	li r0, 0
lbl_8014E1B0:
/* 8014E1B0 0014B110  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8014E1B4 0014B114  40 82 00 14 */	bne lbl_8014E1C8
/* 8014E1B8 0014B118  88 03 05 CA */	lbz r0, 0x5ca(r3)
/* 8014E1BC 0014B11C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8014E1C0 0014B120  40 82 00 08 */	bne lbl_8014E1C8
/* 8014E1C4 0014B124  38 C0 00 00 */	li r6, 0
lbl_8014E1C8:
/* 8014E1C8 0014B128  88 03 00 E7 */	lbz r0, 0xe7(r3)
/* 8014E1CC 0014B12C  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 8014E1D0 0014B130  98 03 00 E7 */	stb r0, 0xe7(r3)
/* 8014E1D4 0014B134  4B F2 B9 45 */	bl Think__10CPatternedFfR13CStateManager
/* 8014E1D8 0014B138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014E1DC 0014B13C  7C 08 03 A6 */	mtlr r0
/* 8014E1E0 0014B140  38 21 00 10 */	addi r1, r1, 0x10
/* 8014E1E4 0014B144  4E 80 00 20 */	blr

.global Explode__8CMetareeFR13CStateManager9EStateMsgf
Explode__8CMetareeFR13CStateManager9EStateMsgf:
/* 8014E1E8 0014B148  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014E1EC 0014B14C  7C 08 02 A6 */	mflr r0
/* 8014E1F0 0014B150  2C 05 00 00 */	cmpwi r5, 0
/* 8014E1F4 0014B154  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014E1F8 0014B158  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8014E1FC 0014B15C  7C 9F 23 78 */	mr r31, r4
/* 8014E200 0014B160  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8014E204 0014B164  7C 7E 1B 78 */	mr r30, r3
/* 8014E208 0014B168  41 82 00 08 */	beq lbl_8014E210
/* 8014E20C 0014B16C  48 00 00 94 */	b lbl_8014E2A0
lbl_8014E210:
/* 8014E210 0014B170  80 AD 8C 38 */	lwz r5, lbl_805A77F8@sda21(r13)
/* 8014E214 0014B174  38 60 00 00 */	li r3, 0
/* 8014E218 0014B178  38 80 00 01 */	li r4, 1
/* 8014E21C 0014B17C  48 23 BC D9 */	bl __shl2i
/* 8014E220 0014B180  39 40 00 00 */	li r10, 0
/* 8014E224 0014B184  38 00 00 03 */	li r0, 3
/* 8014E228 0014B188  90 81 00 24 */	stw r4, 0x24(r1)
/* 8014E22C 0014B18C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8014E230 0014B190  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8014E234 0014B194  38 A1 00 14 */	addi r5, r1, 0x14
/* 8014E238 0014B198  90 61 00 20 */	stw r3, 0x20(r1)
/* 8014E23C 0014B19C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8014E240 0014B1A0  7F E3 FB 78 */	mr r3, r31
/* 8014E244 0014B1A4  38 C1 00 0C */	addi r6, r1, 0xc
/* 8014E248 0014B1A8  91 41 00 2C */	stw r10, 0x2c(r1)
/* 8014E24C 0014B1AC  38 FE 05 AC */	addi r7, r30, 0x5ac
/* 8014E250 0014B1B0  39 01 00 20 */	addi r8, r1, 0x20
/* 8014E254 0014B1B4  91 41 00 28 */	stw r10, 0x28(r1)
/* 8014E258 0014B1B8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8014E25C 0014B1BC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8014E260 0014B1C0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8014E264 0014B1C4  81 5F 08 4C */	lwz r10, 0x84c(r31)
/* 8014E268 0014B1C8  B0 01 00 08 */	sth r0, 8(r1)
/* 8014E26C 0014B1CC  A1 4A 00 08 */	lhz r10, 8(r10)
/* 8014E270 0014B1D0  B1 41 00 14 */	sth r10, 0x14(r1)
/* 8014E274 0014B1D4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8014E278 0014B1D8  B1 41 00 10 */	sth r10, 0x10(r1)
/* 8014E27C 0014B1DC  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8014E280 0014B1E0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8014E284 0014B1E4  4B EF BE 1D */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8014E288 0014B1E8  7F C3 F3 78 */	mr r3, r30
/* 8014E28C 0014B1EC  7F E4 FB 78 */	mr r4, r31
/* 8014E290 0014B1F0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8014E294 0014B1F4  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 8014E298 0014B1F8  7D 89 03 A6 */	mtctr r12
/* 8014E29C 0014B1FC  4E 80 04 21 */	bctrl
lbl_8014E2A0:
/* 8014E2A0 0014B200  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8014E2A4 0014B204  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8014E2A8 0014B208  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8014E2AC 0014B20C  7C 08 03 A6 */	mtlr r0
/* 8014E2B0 0014B210  38 21 00 40 */	addi r1, r1, 0x40
/* 8014E2B4 0014B214  4E 80 00 20 */	blr

.global Flee__8CMetareeFR13CStateManager9EStateMsgf
Flee__8CMetareeFR13CStateManager9EStateMsgf:
/* 8014E2B8 0014B218  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8014E2BC 0014B21C  7C 08 02 A6 */	mflr r0
/* 8014E2C0 0014B220  90 01 00 84 */	stw r0, 0x84(r1)
/* 8014E2C4 0014B224  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8014E2C8 0014B228  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 8014E2CC 0014B22C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8014E2D0 0014B230  2C 05 00 01 */	cmpwi r5, 1
/* 8014E2D4 0014B234  7C 7F 1B 78 */	mr r31, r3
/* 8014E2D8 0014B238  41 82 00 F8 */	beq lbl_8014E3D0
/* 8014E2DC 0014B23C  40 80 01 AC */	bge lbl_8014E488
/* 8014E2E0 0014B240  2C 05 00 00 */	cmpwi r5, 0
/* 8014E2E4 0014B244  40 80 00 0C */	bge lbl_8014E2F0
/* 8014E2E8 0014B248  48 00 01 A0 */	b lbl_8014E488
/* 8014E2EC 0014B24C  48 00 01 9C */	b lbl_8014E488
lbl_8014E2F0:
/* 8014E2F0 0014B250  C0 9F 00 E8 */	lfs f4, 0xe8(r31)
/* 8014E2F4 0014B254  C0 5F 05 94 */	lfs f2, 0x594(r31)
/* 8014E2F8 0014B258  C0 3F 05 90 */	lfs f1, 0x590(r31)
/* 8014E2FC 0014B25C  C0 02 9D 8C */	lfs f0, lbl_805ABAAC@sda21(r2)
/* 8014E300 0014B260  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8014E304 0014B264  C0 62 9D 88 */	lfs f3, lbl_805ABAA8@sda21(r2)
/* 8014E308 0014B268  EC 24 00 72 */	fmuls f1, f4, f1
/* 8014E30C 0014B26C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8014E310 0014B270  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8014E314 0014B274  EC 23 00 72 */	fmuls f1, f3, f1
/* 8014E318 0014B278  EC 03 00 32 */	fmuls f0, f3, f0
/* 8014E31C 0014B27C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8014E320 0014B280  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8014E324 0014B284  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8014E328 0014B288  4B EC D2 0D */	bl Identity__10CAxisAngleFv
/* 8014E32C 0014B28C  7C 65 1B 78 */	mr r5, r3
/* 8014E330 0014B290  7F E3 FB 78 */	mr r3, r31
/* 8014E334 0014B294  38 81 00 14 */	addi r4, r1, 0x14
/* 8014E338 0014B298  4B FC E0 61 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 8014E33C 0014B29C  7F E3 FB 78 */	mr r3, r31
/* 8014E340 0014B2A0  C3 FF 00 E8 */	lfs f31, 0xe8(r31)
/* 8014E344 0014B2A4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8014E348 0014B2A8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 8014E34C 0014B2AC  7D 89 03 A6 */	mtctr r12
/* 8014E350 0014B2B0  4E 80 04 21 */	bctrl
/* 8014E354 0014B2B4  FC 20 08 50 */	fneg f1, f1
/* 8014E358 0014B2B8  C0 02 9D 8C */	lfs f0, lbl_805ABAAC@sda21(r2)
/* 8014E35C 0014B2BC  38 61 00 38 */	addi r3, r1, 0x38
/* 8014E360 0014B2C0  38 81 00 08 */	addi r4, r1, 8
/* 8014E364 0014B2C4  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 8014E368 0014B2C8  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8014E36C 0014B2CC  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8014E370 0014B2D0  D0 3F 01 58 */	stfs f1, 0x158(r31)
/* 8014E374 0014B2D4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8014E378 0014B2D8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8014E37C 0014B2DC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8014E380 0014B2E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014E384 0014B2E4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8014E388 0014B2E8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8014E38C 0014B2EC  48 1C 4D B5 */	bl Translate__12CTransform4fFRC9CVector3f
/* 8014E390 0014B2F0  38 7F 00 34 */	addi r3, r31, 0x34
/* 8014E394 0014B2F4  38 81 00 38 */	addi r4, r1, 0x38
/* 8014E398 0014B2F8  48 1C 47 A9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8014E39C 0014B2FC  88 7F 00 E4 */	lbz r3, 0xe4(r31)
/* 8014E3A0 0014B300  38 80 00 01 */	li r4, 1
/* 8014E3A4 0014B304  50 83 26 F6 */	rlwimi r3, r4, 4, 0x1b, 0x1b
/* 8014E3A8 0014B308  38 00 00 00 */	li r0, 0
/* 8014E3AC 0014B30C  98 7F 00 E4 */	stb r3, 0xe4(r31)
/* 8014E3B0 0014B310  88 7F 00 E4 */	lbz r3, 0xe4(r31)
/* 8014E3B4 0014B314  50 83 1F 38 */	rlwimi r3, r4, 3, 0x1c, 0x1c
/* 8014E3B8 0014B318  98 7F 00 E4 */	stb r3, 0xe4(r31)
/* 8014E3BC 0014B31C  88 7F 00 E4 */	lbz r3, 0xe4(r31)
/* 8014E3C0 0014B320  50 83 17 7A */	rlwimi r3, r4, 2, 0x1d, 0x1d
/* 8014E3C4 0014B324  98 7F 00 E4 */	stb r3, 0xe4(r31)
/* 8014E3C8 0014B328  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 8014E3CC 0014B32C  48 00 00 BC */	b lbl_8014E488
lbl_8014E3D0:
/* 8014E3D0 0014B330  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 8014E3D4 0014B334  2C 00 00 00 */	cmpwi r0, 0
/* 8014E3D8 0014B338  41 82 00 08 */	beq lbl_8014E3E0
/* 8014E3DC 0014B33C  48 00 00 AC */	b lbl_8014E488
lbl_8014E3E0:
/* 8014E3E0 0014B340  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 8014E3E4 0014B344  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8014E3E8 0014B348  2C 00 00 02 */	cmpwi r0, 2
/* 8014E3EC 0014B34C  40 82 00 10 */	bne lbl_8014E3FC
/* 8014E3F0 0014B350  38 00 00 01 */	li r0, 1
/* 8014E3F4 0014B354  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 8014E3F8 0014B358  48 00 00 90 */	b lbl_8014E488
lbl_8014E3FC:
/* 8014E3FC 0014B35C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8014E400 0014B360  C0 22 9D 8C */	lfs f1, lbl_805ABAAC@sda21(r2)
/* 8014E404 0014B364  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8014E408 0014B368  C0 02 9D 90 */	lfs f0, lbl_805ABAB0@sda21(r2)
/* 8014E40C 0014B36C  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 8014E410 0014B370  90 01 00 20 */	stw r0, 0x20(r1)
/* 8014E414 0014B374  38 A3 AA 50 */	addi r5, r3, lbl_803DAA50@l
/* 8014E418 0014B378  38 60 00 03 */	li r3, 3
/* 8014E41C 0014B37C  38 00 00 00 */	li r0, 0
/* 8014E420 0014B380  3B E4 00 04 */	addi r31, r4, 4
/* 8014E424 0014B384  90 61 00 24 */	stw r3, 0x24(r1)
/* 8014E428 0014B388  7F E3 FB 78 */	mr r3, r31
/* 8014E42C 0014B38C  38 80 00 03 */	li r4, 3
/* 8014E430 0014B390  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8014E434 0014B394  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8014E438 0014B398  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8014E43C 0014B39C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8014E440 0014B3A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014E444 0014B3A4  4B FE 2F F5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014E448 0014B3A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014E44C 0014B3AC  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 8014E450 0014B3B0  38 83 AA 50 */	addi r4, r3, lbl_803DAA50@l
/* 8014E454 0014B3B4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8014E458 0014B3B8  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 8014E45C 0014B3BC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8014E460 0014B3C0  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8014E464 0014B3C4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8014E468 0014B3C8  90 BF 00 E4 */	stw r5, 0xe4(r31)
/* 8014E46C 0014B3CC  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 8014E470 0014B3D0  90 7F 00 E8 */	stw r3, 0xe8(r31)
/* 8014E474 0014B3D4  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8014E478 0014B3D8  90 BF 00 EC */	stw r5, 0xec(r31)
/* 8014E47C 0014B3DC  90 81 00 20 */	stw r4, 0x20(r1)
/* 8014E480 0014B3E0  90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 8014E484 0014B3E4  90 01 00 20 */	stw r0, 0x20(r1)
lbl_8014E488:
/* 8014E488 0014B3E8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8014E48C 0014B3EC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8014E490 0014B3F0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8014E494 0014B3F4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8014E498 0014B3F8  7C 08 03 A6 */	mtlr r0
/* 8014E49C 0014B3FC  38 21 00 80 */	addi r1, r1, 0x80
/* 8014E4A0 0014B400  4E 80 00 20 */	blr

.global Dead__8CMetareeFR13CStateManager9EStateMsgf
Dead__8CMetareeFR13CStateManager9EStateMsgf:
/* 8014E4A4 0014B404  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014E4A8 0014B408  7C 08 02 A6 */	mflr r0
/* 8014E4AC 0014B40C  2C 05 00 00 */	cmpwi r5, 0
/* 8014E4B0 0014B410  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014E4B4 0014B414  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8014E4B8 0014B418  7C 9F 23 78 */	mr r31, r4
/* 8014E4BC 0014B41C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8014E4C0 0014B420  7C 7E 1B 78 */	mr r30, r3
/* 8014E4C4 0014B424  41 82 00 08 */	beq lbl_8014E4CC
/* 8014E4C8 0014B428  48 00 00 7C */	b lbl_8014E544
lbl_8014E4CC:
/* 8014E4CC 0014B42C  80 AD 8C 40 */	lwz r5, lbl_805A7800@sda21(r13)
/* 8014E4D0 0014B430  38 60 00 00 */	li r3, 0
/* 8014E4D4 0014B434  38 80 00 01 */	li r4, 1
/* 8014E4D8 0014B438  48 23 BA 1D */	bl __shl2i
/* 8014E4DC 0014B43C  39 20 00 00 */	li r9, 0
/* 8014E4E0 0014B440  38 00 00 03 */	li r0, 3
/* 8014E4E4 0014B444  90 81 00 24 */	stw r4, 0x24(r1)
/* 8014E4E8 0014B448  7F C5 F3 78 */	mr r5, r30
/* 8014E4EC 0014B44C  38 81 00 0C */	addi r4, r1, 0xc
/* 8014E4F0 0014B450  38 C1 00 10 */	addi r6, r1, 0x10
/* 8014E4F4 0014B454  90 61 00 20 */	stw r3, 0x20(r1)
/* 8014E4F8 0014B458  7F E3 FB 78 */	mr r3, r31
/* 8014E4FC 0014B45C  38 FE 05 AC */	addi r7, r30, 0x5ac
/* 8014E500 0014B460  39 01 00 20 */	addi r8, r1, 0x20
/* 8014E504 0014B464  91 21 00 2C */	stw r9, 0x2c(r1)
/* 8014E508 0014B468  91 21 00 28 */	stw r9, 0x28(r1)
/* 8014E50C 0014B46C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8014E510 0014B470  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8014E514 0014B474  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8014E518 0014B478  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8014E51C 0014B47C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014E520 0014B480  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8014E524 0014B484  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8014E528 0014B488  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8014E52C 0014B48C  B0 01 00 08 */	sth r0, 8(r1)
/* 8014E530 0014B490  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8014E534 0014B494  4B EF A7 79 */	bl ApplyDamageToWorld__13CStateManagerF9TUniqueIdRC6CActorRC9CVector3fRC11CDamageInfoRC15CMaterialFilter
/* 8014E538 0014B498  7F C3 F3 78 */	mr r3, r30
/* 8014E53C 0014B49C  7F E4 FB 78 */	mr r4, r31
/* 8014E540 0014B4A0  4B F2 A4 C1 */	bl DeathDelete__10CPatternedFR13CStateManager
lbl_8014E544:
/* 8014E544 0014B4A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8014E548 0014B4A8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8014E54C 0014B4AC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8014E550 0014B4B0  7C 08 03 A6 */	mtlr r0
/* 8014E554 0014B4B4  38 21 00 40 */	addi r1, r1, 0x40
/* 8014E558 0014B4B8  4E 80 00 20 */	blr

.global Attack__8CMetareeFR13CStateManager9EStateMsgf
Attack__8CMetareeFR13CStateManager9EStateMsgf:
/* 8014E55C 0014B4BC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8014E560 0014B4C0  7C 08 02 A6 */	mflr r0
/* 8014E564 0014B4C4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8014E568 0014B4C8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8014E56C 0014B4CC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 8014E570 0014B4D0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8014E574 0014B4D4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 8014E578 0014B4D8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8014E57C 0014B4DC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 8014E580 0014B4E0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8014E584 0014B4E4  2C 05 00 01 */	cmpwi r5, 1
/* 8014E588 0014B4E8  7C 7F 1B 78 */	mr r31, r3
/* 8014E58C 0014B4EC  41 82 00 FC */	beq lbl_8014E688
/* 8014E590 0014B4F0  40 80 01 34 */	bge lbl_8014E6C4
/* 8014E594 0014B4F4  2C 05 00 00 */	cmpwi r5, 0
/* 8014E598 0014B4F8  40 80 00 0C */	bge lbl_8014E5A4
/* 8014E59C 0014B4FC  48 00 01 28 */	b lbl_8014E6C4
/* 8014E5A0 0014B500  48 00 01 24 */	b lbl_8014E6C4
lbl_8014E5A4:
/* 8014E5A4 0014B504  38 00 00 00 */	li r0, 0
/* 8014E5A8 0014B508  38 61 00 30 */	addi r3, r1, 0x30
/* 8014E5AC 0014B50C  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 8014E5B0 0014B510  38 81 00 24 */	addi r4, r1, 0x24
/* 8014E5B4 0014B514  C0 3F 05 88 */	lfs f1, 0x588(r31)
/* 8014E5B8 0014B518  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8014E5BC 0014B51C  C0 7F 05 8C */	lfs f3, 0x58c(r31)
/* 8014E5C0 0014B520  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8014E5C4 0014B524  EC 81 00 28 */	fsubs f4, f1, f0
/* 8014E5C8 0014B528  C0 3F 05 84 */	lfs f1, 0x584(r31)
/* 8014E5CC 0014B52C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8014E5D0 0014B530  EC 43 10 28 */	fsubs f2, f3, f2
/* 8014E5D4 0014B534  EC 01 00 28 */	fsubs f0, f1, f0
/* 8014E5D8 0014B538  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8014E5DC 0014B53C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8014E5E0 0014B540  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8014E5E4 0014B544  48 1C 62 6D */	bl AsNormalized__9CVector3fCFv
/* 8014E5E8 0014B548  C3 A1 00 30 */	lfs f29, 0x30(r1)
/* 8014E5EC 0014B54C  7F E3 FB 78 */	mr r3, r31
/* 8014E5F0 0014B550  C0 1F 05 80 */	lfs f0, 0x580(r31)
/* 8014E5F4 0014B554  38 81 00 18 */	addi r4, r1, 0x18
/* 8014E5F8 0014B558  C3 E1 00 34 */	lfs f31, 0x34(r1)
/* 8014E5FC 0014B55C  C3 C1 00 38 */	lfs f30, 0x38(r1)
/* 8014E600 0014B560  EC 40 07 72 */	fmuls f2, f0, f29
/* 8014E604 0014B564  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8014E608 0014B568  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8014E60C 0014B56C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8014E610 0014B570  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8014E614 0014B574  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8014E618 0014B578  4B FC C6 89 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8014E61C 0014B57C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8014E620 0014B580  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8014E624 0014B584  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8014E628 0014B588  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 8014E62C 0014B58C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8014E630 0014B590  38 61 00 08 */	addi r3, r1, 8
/* 8014E634 0014B594  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 8014E638 0014B598  38 A1 00 0C */	addi r5, r1, 0xc
/* 8014E63C 0014B59C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8014E640 0014B5A0  38 E0 00 01 */	li r7, 1
/* 8014E644 0014B5A4  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8014E648 0014B5A8  39 00 00 00 */	li r8, 0
/* 8014E64C 0014B5AC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8014E650 0014B5B0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8014E654 0014B5B4  A0 9F 05 C8 */	lhz r4, 0x5c8(r31)
/* 8014E658 0014B5B8  48 19 BC 59 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 8014E65C 0014B5BC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8014E660 0014B5C0  38 80 00 03 */	li r4, 3
/* 8014E664 0014B5C4  4B FE C3 75 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8014E668 0014B5C8  C0 1F 05 80 */	lfs f0, 0x580(r31)
/* 8014E66C 0014B5CC  EC 40 07 72 */	fmuls f2, f0, f29
/* 8014E670 0014B5D0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8014E674 0014B5D4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8014E678 0014B5D8  D0 5F 05 9C */	stfs f2, 0x59c(r31)
/* 8014E67C 0014B5DC  D0 3F 05 A0 */	stfs f1, 0x5a0(r31)
/* 8014E680 0014B5E0  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 8014E684 0014B5E4  48 00 00 40 */	b lbl_8014E6C4
lbl_8014E688:
/* 8014E688 0014B5E8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8014E68C 0014B5EC  4B FE BA 41 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 8014E690 0014B5F0  C0 02 9D 8C */	lfs f0, lbl_805ABAAC@sda21(r2)
/* 8014E694 0014B5F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8014E698 0014B5F8  40 82 00 14 */	bne lbl_8014E6AC
/* 8014E69C 0014B5FC  7F E3 FB 78 */	mr r3, r31
/* 8014E6A0 0014B600  38 9F 05 9C */	addi r4, r31, 0x59c
/* 8014E6A4 0014B604  4B FC C5 FD */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8014E6A8 0014B608  48 00 00 1C */	b lbl_8014E6C4
lbl_8014E6AC:
/* 8014E6AC 0014B60C  7F E3 FB 78 */	mr r3, r31
/* 8014E6B0 0014B610  4B FC CC C9 */	bl Stop__13CPhysicsActorFv
/* 8014E6B4 0014B614  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8014E6B8 0014B618  7F E3 FB 78 */	mr r3, r31
/* 8014E6BC 0014B61C  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8014E6C0 0014B620  4B FC C5 E1 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
lbl_8014E6C4:
/* 8014E6C4 0014B624  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8014E6C8 0014B628  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8014E6CC 0014B62C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 8014E6D0 0014B630  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8014E6D4 0014B634  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 8014E6D8 0014B638  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8014E6DC 0014B63C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8014E6E0 0014B640  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8014E6E4 0014B644  7C 08 03 A6 */	mtlr r0
/* 8014E6E8 0014B648  38 21 00 80 */	addi r1, r1, 0x80
/* 8014E6EC 0014B64C  4E 80 00 20 */	blr

.global Halt__8CMetareeFR13CStateManager9EStateMsgf
Halt__8CMetareeFR13CStateManager9EStateMsgf:
/* 8014E6F0 0014B650  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8014E6F4 0014B654  7C 08 02 A6 */	mflr r0
/* 8014E6F8 0014B658  2C 05 00 00 */	cmpwi r5, 0
/* 8014E6FC 0014B65C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8014E700 0014B660  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8014E704 0014B664  7C 9F 23 78 */	mr r31, r4
/* 8014E708 0014B668  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8014E70C 0014B66C  7C 7E 1B 78 */	mr r30, r3
/* 8014E710 0014B670  41 82 00 0C */	beq lbl_8014E71C
/* 8014E714 0014B674  41 80 00 E4 */	blt lbl_8014E7F8
/* 8014E718 0014B678  48 00 00 E0 */	b lbl_8014E7F8
lbl_8014E71C:
/* 8014E71C 0014B67C  4B FC CC 5D */	bl Stop__13CPhysicsActorFv
/* 8014E720 0014B680  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8014E724 0014B684  7F C3 F3 78 */	mr r3, r30
/* 8014E728 0014B688  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8014E72C 0014B68C  4B FC C5 75 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8014E730 0014B690  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8014E734 0014B694  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8014E738 0014B698  38 80 00 02 */	li r4, 2
/* 8014E73C 0014B69C  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 8014E740 0014B6A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8014E744 0014B6A4  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 8014E748 0014B6A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8014E74C 0014B6AC  D0 1E 01 58 */	stfs f0, 0x158(r30)
/* 8014E750 0014B6B0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8014E754 0014B6B4  4B FE C2 85 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8014E758 0014B6B8  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8014E75C 0014B6BC  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 8014E760 0014B6C0  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 8014E764 0014B6C4  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 8014E768 0014B6C8  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8014E76C 0014B6CC  38 61 00 14 */	addi r3, r1, 0x14
/* 8014E770 0014B6D0  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 8014E774 0014B6D4  38 BE 05 84 */	addi r5, r30, 0x584
/* 8014E778 0014B6D8  C0 7E 05 78 */	lfs f3, 0x578(r30)
/* 8014E77C 0014B6DC  EC 01 00 2A */	fadds f0, f1, f0
/* 8014E780 0014B6E0  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 8014E784 0014B6E4  38 81 00 08 */	addi r4, r1, 8
/* 8014E788 0014B6E8  C0 3E 05 7C */	lfs f1, 0x57c(r30)
/* 8014E78C 0014B6EC  EC 64 18 2A */	fadds f3, f4, f3
/* 8014E790 0014B6F0  D0 1E 05 84 */	stfs f0, 0x584(r30)
/* 8014E794 0014B6F4  EC 02 08 2A */	fadds f0, f2, f1
/* 8014E798 0014B6F8  D0 7E 05 88 */	stfs f3, 0x588(r30)
/* 8014E79C 0014B6FC  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 8014E7A0 0014B700  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8014E7A4 0014B704  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8014E7A8 0014B708  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8014E7AC 0014B70C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014E7B0 0014B710  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8014E7B4 0014B714  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8014E7B8 0014B718  48 1C 53 59 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8014E7BC 0014B71C  38 7E 00 34 */	addi r3, r30, 0x34
/* 8014E7C0 0014B720  38 81 00 14 */	addi r4, r1, 0x14
/* 8014E7C4 0014B724  48 1C 43 7D */	bl __as__12CTransform4fFRC12CTransform4f
/* 8014E7C8 0014B728  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8014E7CC 0014B72C  38 60 00 01 */	li r3, 1
/* 8014E7D0 0014B730  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8014E7D4 0014B734  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8014E7D8 0014B738  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8014E7DC 0014B73C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8014E7E0 0014B740  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8014E7E4 0014B744  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8014E7E8 0014B748  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8014E7EC 0014B74C  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8014E7F0 0014B750  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 8014E7F4 0014B754  D0 1E 03 40 */	stfs f0, 0x340(r30)
lbl_8014E7F8:
/* 8014E7F8 0014B758  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8014E7FC 0014B75C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8014E800 0014B760  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8014E804 0014B764  7C 08 03 A6 */	mtlr r0
/* 8014E808 0014B768  38 21 00 50 */	addi r1, r1, 0x50
/* 8014E80C 0014B76C  4E 80 00 20 */	blr

.global Active__8CMetareeFR13CStateManager9EStateMsgf
Active__8CMetareeFR13CStateManager9EStateMsgf:
/* 8014E810 0014B770  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8014E814 0014B774  7C 08 02 A6 */	mflr r0
/* 8014E818 0014B778  90 01 00 74 */	stw r0, 0x74(r1)
/* 8014E81C 0014B77C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8014E820 0014B780  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8014E824 0014B784  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8014E828 0014B788  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8014E82C 0014B78C  2C 05 00 01 */	cmpwi r5, 1
/* 8014E830 0014B790  7C 7F 1B 78 */	mr r31, r3
/* 8014E834 0014B794  41 82 01 54 */	beq lbl_8014E988
/* 8014E838 0014B798  40 80 00 10 */	bge lbl_8014E848
/* 8014E83C 0014B79C  2C 05 00 00 */	cmpwi r5, 0
/* 8014E840 0014B7A0  40 80 00 14 */	bge lbl_8014E854
/* 8014E844 0014B7A4  48 00 01 CC */	b lbl_8014EA10
lbl_8014E848:
/* 8014E848 0014B7A8  2C 05 00 03 */	cmpwi r5, 3
/* 8014E84C 0014B7AC  40 80 01 C4 */	bge lbl_8014EA10
/* 8014E850 0014B7B0  48 00 01 A4 */	b lbl_8014E9F4
lbl_8014E854:
/* 8014E854 0014B7B4  39 20 00 00 */	li r9, 0
/* 8014E858 0014B7B8  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 8014E85C 0014B7BC  51 20 3E 30 */	rlwimi r0, r9, 7, 0x18, 0x18
/* 8014E860 0014B7C0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8014E864 0014B7C4  98 1F 04 00 */	stb r0, 0x400(r31)
/* 8014E868 0014B7C8  39 03 AA 68 */	addi r8, r3, lbl_803DAA68@l
/* 8014E86C 0014B7CC  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8014E870 0014B7D0  38 E0 00 0E */	li r7, 0xe
/* 8014E874 0014B7D4  C0 62 9D 8C */	lfs f3, lbl_805ABAAC@sda21(r2)
/* 8014E878 0014B7D8  38 A0 FF FF */	li r5, -1
/* 8014E87C 0014B7DC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8014E880 0014B7E0  38 00 00 01 */	li r0, 1
/* 8014E884 0014B7E4  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 8014E888 0014B7E8  38 C3 A9 F0 */	addi r6, r3, lbl_803DA9F0@l
/* 8014E88C 0014B7EC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8014E890 0014B7F0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8014E894 0014B7F4  C0 3F 05 70 */	lfs f1, 0x570(r31)
/* 8014E898 0014B7F8  EC 64 18 28 */	fsubs f3, f4, f3
/* 8014E89C 0014B7FC  80 61 00 48 */	lwz r3, 0x48(r1)
/* 8014E8A0 0014B800  50 03 F8 00 */	rlwimi r3, r0, 0x1f, 0, 0
/* 8014E8A4 0014B804  D0 1F 05 84 */	stfs f0, 0x584(r31)
/* 8014E8A8 0014B808  EC 02 08 28 */	fsubs f0, f2, f1
/* 8014E8AC 0014B80C  7C 60 1B 78 */	mr r0, r3
/* 8014E8B0 0014B810  38 80 00 0E */	li r4, 0xe
/* 8014E8B4 0014B814  D0 7F 05 88 */	stfs f3, 0x588(r31)
/* 8014E8B8 0014B818  51 20 F0 42 */	rlwimi r0, r9, 0x1e, 1, 1
/* 8014E8BC 0014B81C  D0 1F 05 8C */	stfs f0, 0x58c(r31)
/* 8014E8C0 0014B820  91 01 00 2C */	stw r8, 0x2c(r1)
/* 8014E8C4 0014B824  C0 5F 05 84 */	lfs f2, 0x584(r31)
/* 8014E8C8 0014B828  90 61 00 48 */	stw r3, 0x48(r1)
/* 8014E8CC 0014B82C  C0 3F 05 88 */	lfs f1, 0x588(r31)
/* 8014E8D0 0014B830  C0 1F 05 8C */	lfs f0, 0x58c(r31)
/* 8014E8D4 0014B834  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8014E8D8 0014B838  90 E1 00 30 */	stw r7, 0x30(r1)
/* 8014E8DC 0014B83C  3B C3 00 04 */	addi r30, r3, 4
/* 8014E8E0 0014B840  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8014E8E4 0014B844  7F C3 F3 78 */	mr r3, r30
/* 8014E8E8 0014B848  91 21 00 34 */	stw r9, 0x34(r1)
/* 8014E8EC 0014B84C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8014E8F0 0014B850  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8014E8F4 0014B854  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8014E8F8 0014B858  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8014E8FC 0014B85C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8014E900 0014B860  4B FE 2B 39 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014E904 0014B864  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8014E908 0014B868  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8014E90C 0014B86C  38 A3 A9 F0 */	addi r5, r3, lbl_803DA9F0@l
/* 8014E910 0014B870  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8014E914 0014B874  90 1E 01 90 */	stw r0, 0x190(r30)
/* 8014E918 0014B878  7F E3 FB 78 */	mr r3, r31
/* 8014E91C 0014B87C  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 8014E920 0014B880  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8014E924 0014B884  80 81 00 38 */	lwz r4, 0x38(r1)
/* 8014E928 0014B888  90 DE 01 94 */	stw r6, 0x194(r30)
/* 8014E92C 0014B88C  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 8014E930 0014B890  90 9E 01 98 */	stw r4, 0x198(r30)
/* 8014E934 0014B894  80 81 00 40 */	lwz r4, 0x40(r1)
/* 8014E938 0014B898  90 DE 01 9C */	stw r6, 0x19c(r30)
/* 8014E93C 0014B89C  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 8014E940 0014B8A0  90 9E 01 A0 */	stw r4, 0x1a0(r30)
/* 8014E944 0014B8A4  80 81 00 48 */	lwz r4, 0x48(r1)
/* 8014E948 0014B8A8  90 DE 01 A4 */	stw r6, 0x1a4(r30)
/* 8014E94C 0014B8AC  90 9E 01 A8 */	stw r4, 0x1a8(r30)
/* 8014E950 0014B8B0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8014E954 0014B8B4  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8014E958 0014B8B8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 8014E95C 0014B8BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8014E960 0014B8C0  C3 FF 00 E8 */	lfs f31, 0xe8(r31)
/* 8014E964 0014B8C4  7D 89 03 A6 */	mtctr r12
/* 8014E968 0014B8C8  4E 80 04 21 */	bctrl
/* 8014E96C 0014B8CC  FC 20 08 50 */	fneg f1, f1
/* 8014E970 0014B8D0  C0 02 9D 8C */	lfs f0, lbl_805ABAAC@sda21(r2)
/* 8014E974 0014B8D4  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 8014E978 0014B8D8  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8014E97C 0014B8DC  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8014E980 0014B8E0  D0 3F 01 58 */	stfs f1, 0x158(r31)
/* 8014E984 0014B8E4  48 00 00 8C */	b lbl_8014EA10
lbl_8014E988:
/* 8014E988 0014B8E8  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 8014E98C 0014B8EC  38 61 00 20 */	addi r3, r1, 0x20
/* 8014E990 0014B8F0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8014E994 0014B8F4  38 81 00 14 */	addi r4, r1, 0x14
/* 8014E998 0014B8F8  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 8014E99C 0014B8FC  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 8014E9A0 0014B900  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8014E9A4 0014B904  EC 25 00 28 */	fsubs f1, f5, f0
/* 8014E9A8 0014B908  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8014E9AC 0014B90C  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8014E9B0 0014B910  EC 44 10 28 */	fsubs f2, f4, f2
/* 8014E9B4 0014B914  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014E9B8 0014B918  EC 00 18 28 */	fsubs f0, f0, f3
/* 8014E9BC 0014B91C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8014E9C0 0014B920  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8014E9C4 0014B924  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014E9C8 0014B928  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8014E9CC 0014B92C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8014E9D0 0014B930  48 1C 5E 81 */	bl AsNormalized__9CVector3fCFv
/* 8014E9D4 0014B934  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8014E9D8 0014B938  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8014E9DC 0014B93C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8014E9E0 0014B940  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8014E9E4 0014B944  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8014E9E8 0014B948  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8014E9EC 0014B94C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8014E9F0 0014B950  48 00 00 20 */	b lbl_8014EA10
lbl_8014E9F4:
/* 8014E9F4 0014B954  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8014E9F8 0014B958  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8014E9FC 0014B95C  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 8014EA00 0014B960  C0 03 00 04 */	lfs f0, 4(r3)
/* 8014EA04 0014B964  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8014EA08 0014B968  C0 03 00 08 */	lfs f0, 8(r3)
/* 8014EA0C 0014B96C  D0 1F 01 58 */	stfs f0, 0x158(r31)
lbl_8014EA10:
/* 8014EA10 0014B970  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8014EA14 0014B974  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8014EA18 0014B978  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8014EA1C 0014B97C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8014EA20 0014B980  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8014EA24 0014B984  7C 08 03 A6 */	mtlr r0
/* 8014EA28 0014B988  38 21 00 70 */	addi r1, r1, 0x70
/* 8014EA2C 0014B98C  4E 80 00 20 */	blr

.global InActive__8CMetareeFR13CStateManager9EStateMsgf
InActive__8CMetareeFR13CStateManager9EStateMsgf:
/* 8014EA30 0014B990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014EA34 0014B994  7C 08 02 A6 */	mflr r0
/* 8014EA38 0014B998  2C 05 00 01 */	cmpwi r5, 1
/* 8014EA3C 0014B99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014EA40 0014B9A0  41 82 00 5C */	beq lbl_8014EA9C
/* 8014EA44 0014B9A4  40 80 00 10 */	bge lbl_8014EA54
/* 8014EA48 0014B9A8  2C 05 00 00 */	cmpwi r5, 0
/* 8014EA4C 0014B9AC  40 80 00 14 */	bge lbl_8014EA60
/* 8014EA50 0014B9B0  48 00 00 4C */	b lbl_8014EA9C
lbl_8014EA54:
/* 8014EA54 0014B9B4  2C 05 00 03 */	cmpwi r5, 3
/* 8014EA58 0014B9B8  40 80 00 44 */	bge lbl_8014EA9C
/* 8014EA5C 0014B9BC  48 00 00 30 */	b lbl_8014EA8C
lbl_8014EA60:
/* 8014EA60 0014B9C0  88 03 05 CA */	lbz r0, 0x5ca(r3)
/* 8014EA64 0014B9C4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8014EA68 0014B9C8  40 82 00 14 */	bne lbl_8014EA7C
/* 8014EA6C 0014B9CC  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8014EA70 0014B9D0  38 80 00 01 */	li r4, 1
/* 8014EA74 0014B9D4  4B FE BF 65 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8014EA78 0014B9D8  48 00 00 24 */	b lbl_8014EA9C
lbl_8014EA7C:
/* 8014EA7C 0014B9DC  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8014EA80 0014B9E0  38 80 00 00 */	li r4, 0
/* 8014EA84 0014B9E4  4B FE BF 55 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8014EA88 0014B9E8  48 00 00 14 */	b lbl_8014EA9C
lbl_8014EA8C:
/* 8014EA8C 0014B9EC  88 03 05 CA */	lbz r0, 0x5ca(r3)
/* 8014EA90 0014B9F0  38 80 00 01 */	li r4, 1
/* 8014EA94 0014B9F4  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8014EA98 0014B9F8  98 03 05 CA */	stb r0, 0x5ca(r3)
lbl_8014EA9C:
/* 8014EA9C 0014B9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014EAA0 0014BA00  7C 08 03 A6 */	mtlr r0
/* 8014EAA4 0014BA04  38 21 00 10 */	addi r1, r1, 0x10
/* 8014EAA8 0014BA08  4E 80 00 20 */	blr

.global InRange__8CMetareeFR13CStateManagerf
InRange__8CMetareeFR13CStateManagerf:
/* 8014EAAC 0014BA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014EAB0 0014BA10  7C 08 02 A6 */	mflr r0
/* 8014EAB4 0014BA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014EAB8 0014BA18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014EABC 0014BA1C  3B E0 00 00 */	li r31, 0
/* 8014EAC0 0014BA20  88 03 05 CA */	lbz r0, 0x5ca(r3)
/* 8014EAC4 0014BA24  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8014EAC8 0014BA28  40 82 00 10 */	bne lbl_8014EAD8
/* 8014EACC 0014BA2C  48 0A 7A 01 */	bl InRange__10CPatternedFR13CStateManagerf
/* 8014EAD0 0014BA30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014EAD4 0014BA34  41 82 00 08 */	beq lbl_8014EADC
lbl_8014EAD8:
/* 8014EAD8 0014BA38  3B E0 00 01 */	li r31, 1
lbl_8014EADC:
/* 8014EADC 0014BA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014EAE0 0014BA40  7F E3 FB 78 */	mr r3, r31
/* 8014EAE4 0014BA44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014EAE8 0014BA48  7C 08 03 A6 */	mtlr r0
/* 8014EAEC 0014BA4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8014EAF0 0014BA50  4E 80 00 20 */	blr

.global ShouldAttack__8CMetareeFR13CStateManagerf
ShouldAttack__8CMetareeFR13CStateManagerf:
/* 8014EAF4 0014BA54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014EAF8 0014BA58  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 8014EAFC 0014BA5C  C0 03 05 8C */	lfs f0, 0x58c(r3)
/* 8014EB00 0014BA60  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 8014EB04 0014BA64  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8014EB08 0014BA68  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8014EB0C 0014BA6C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8014EB10 0014BA70  D0 21 00 08 */	stfs f1, 8(r1)
/* 8014EB14 0014BA74  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8014EB18 0014BA78  7C 00 00 26 */	mfcr r0
/* 8014EB1C 0014BA7C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8014EB20 0014BA80  38 21 00 20 */	addi r1, r1, 0x20
/* 8014EB24 0014BA84  4E 80 00 20 */	blr

.global Touch__8CMetareeFR6CActorR13CStateManager
Touch__8CMetareeFR6CActorR13CStateManager:
/* 8014EB28 0014BA88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014EB2C 0014BA8C  7C 08 02 A6 */	mflr r0
/* 8014EB30 0014BA90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014EB34 0014BA94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014EB38 0014BA98  7C BF 2B 78 */	mr r31, r5
/* 8014EB3C 0014BA9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014EB40 0014BAA0  7C 7E 1B 78 */	mr r30, r3
/* 8014EB44 0014BAA4  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8014EB48 0014BAA8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8014EB4C 0014BAAC  41 82 00 6C */	beq lbl_8014EBB8
/* 8014EB50 0014BAB0  38 61 00 08 */	addi r3, r1, 8
/* 8014EB54 0014BAB4  4B F5 EC 25 */	bl "__ct__29TCastToPtr<15CGameProjectile>FR7CEntity"
/* 8014EB58 0014BAB8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8014EB5C 0014BABC  28 05 00 00 */	cmplwi r5, 0
/* 8014EB60 0014BAC0  41 82 00 58 */	beq lbl_8014EBB8
/* 8014EB64 0014BAC4  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014EB68 0014BAC8  A0 85 00 EC */	lhz r4, 0xec(r5)
/* 8014EB6C 0014BACC  A0 03 00 08 */	lhz r0, 8(r3)
/* 8014EB70 0014BAD0  7C 04 00 40 */	cmplw r4, r0
/* 8014EB74 0014BAD4  40 82 00 44 */	bne lbl_8014EBB8
/* 8014EB78 0014BAD8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8014EB7C 0014BADC  38 60 00 01 */	li r3, 1
/* 8014EB80 0014BAE0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8014EB84 0014BAE4  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8014EB88 0014BAE8  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 8014EB8C 0014BAEC  C0 05 02 98 */	lfs f0, 0x298(r5)
/* 8014EB90 0014BAF0  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 8014EB94 0014BAF4  C0 65 02 9C */	lfs f3, 0x29c(r5)
/* 8014EB98 0014BAF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8014EB9C 0014BAFC  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 8014EBA0 0014BB00  C0 25 02 A0 */	lfs f1, 0x2a0(r5)
/* 8014EBA4 0014BB04  EC 64 18 28 */	fsubs f3, f4, f3
/* 8014EBA8 0014BB08  D0 1E 05 90 */	stfs f0, 0x590(r30)
/* 8014EBAC 0014BB0C  EC 02 08 28 */	fsubs f0, f2, f1
/* 8014EBB0 0014BB10  D0 7E 05 94 */	stfs f3, 0x594(r30)
/* 8014EBB4 0014BB14  D0 1E 05 98 */	stfs f0, 0x598(r30)
lbl_8014EBB8:
/* 8014EBB8 0014BB18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014EBBC 0014BB1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014EBC0 0014BB20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014EBC4 0014BB24  7C 08 03 A6 */	mtlr r0
/* 8014EBC8 0014BB28  38 21 00 20 */	addi r1, r1, 0x20
/* 8014EBCC 0014BB2C  4E 80 00 20 */	blr

.global CollidedWith__8CMetareeFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
CollidedWith__8CMetareeFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager:
/* 8014EBD0 0014BB30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014EBD4 0014BB34  7C 08 02 A6 */	mflr r0
/* 8014EBD8 0014BB38  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014EBDC 0014BB3C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8014EBE0 0014BB40  7C DF 33 78 */	mr r31, r6
/* 8014EBE4 0014BB44  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8014EBE8 0014BB48  7C 7E 1B 78 */	mr r30, r3
/* 8014EBEC 0014BB4C  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8014EBF0 0014BB50  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8014EBF4 0014BB54  41 82 00 A8 */	beq lbl_8014EC9C
/* 8014EBF8 0014BB58  80 05 00 00 */	lwz r0, 0(r5)
/* 8014EBFC 0014BB5C  2C 00 00 00 */	cmpwi r0, 0
/* 8014EC00 0014BB60  40 81 00 9C */	ble lbl_8014EC9C
/* 8014EC04 0014BB64  80 AD 8C 3C */	lwz r5, lbl_805A77FC@sda21(r13)
/* 8014EC08 0014BB68  38 60 00 00 */	li r3, 0
/* 8014EC0C 0014BB6C  38 80 00 01 */	li r4, 1
/* 8014EC10 0014BB70  48 23 B2 E5 */	bl __shl2i
/* 8014EC14 0014BB74  39 20 00 00 */	li r9, 0
/* 8014EC18 0014BB78  38 00 00 01 */	li r0, 1
/* 8014EC1C 0014BB7C  90 81 00 24 */	stw r4, 0x24(r1)
/* 8014EC20 0014BB80  7F C5 F3 78 */	mr r5, r30
/* 8014EC24 0014BB84  38 81 00 0C */	addi r4, r1, 0xc
/* 8014EC28 0014BB88  38 C1 00 10 */	addi r6, r1, 0x10
/* 8014EC2C 0014BB8C  90 61 00 20 */	stw r3, 0x20(r1)
/* 8014EC30 0014BB90  7F E3 FB 78 */	mr r3, r31
/* 8014EC34 0014BB94  38 FE 05 AC */	addi r7, r30, 0x5ac
/* 8014EC38 0014BB98  39 01 00 20 */	addi r8, r1, 0x20
/* 8014EC3C 0014BB9C  91 21 00 2C */	stw r9, 0x2c(r1)
/* 8014EC40 0014BBA0  91 21 00 28 */	stw r9, 0x28(r1)
/* 8014EC44 0014BBA4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8014EC48 0014BBA8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8014EC4C 0014BBAC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8014EC50 0014BBB0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8014EC54 0014BBB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014EC58 0014BBB8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8014EC5C 0014BBBC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8014EC60 0014BBC0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8014EC64 0014BBC4  B0 01 00 08 */	sth r0, 8(r1)
/* 8014EC68 0014BBC8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8014EC6C 0014BBCC  4B EF A0 41 */	bl ApplyDamageToWorld__13CStateManagerF9TUniqueIdRC6CActorRC9CVector3fRC11CDamageInfoRC15CMaterialFilter
/* 8014EC70 0014BBD0  7F C3 F3 78 */	mr r3, r30
/* 8014EC74 0014BBD4  7F E5 FB 78 */	mr r5, r31
/* 8014EC78 0014BBD8  38 80 00 01 */	li r4, 1
/* 8014EC7C 0014BBDC  38 C0 FF FF */	li r6, -1
/* 8014EC80 0014BBE0  4B F0 24 41 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8014EC84 0014BBE4  7F C3 F3 78 */	mr r3, r30
/* 8014EC88 0014BBE8  7F E4 FB 78 */	mr r4, r31
/* 8014EC8C 0014BBEC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8014EC90 0014BBF0  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 8014EC94 0014BBF4  7D 89 03 A6 */	mtctr r12
/* 8014EC98 0014BBF8  4E 80 04 21 */	bctrl
lbl_8014EC9C:
/* 8014EC9C 0014BBFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8014ECA0 0014BC00  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8014ECA4 0014BC04  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8014ECA8 0014BC08  7C 08 03 A6 */	mtlr r0
/* 8014ECAC 0014BC0C  38 21 00 40 */	addi r1, r1, 0x40
/* 8014ECB0 0014BC10  4E 80 00 20 */	blr

.global ThinkAboutMove__8CMetareeFf
ThinkAboutMove__8CMetareeFf:
/* 8014ECB4 0014BC14  4E 80 00 20 */	blr

.global AcceptScriptMsg__8CMetareeF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__8CMetareeF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8014ECB8 0014BC18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014ECBC 0014BC1C  7C 08 02 A6 */	mflr r0
/* 8014ECC0 0014BC20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014ECC4 0014BC24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014ECC8 0014BC28  7C DF 33 78 */	mr r31, r6
/* 8014ECCC 0014BC2C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014ECD0 0014BC30  7C 9E 23 78 */	mr r30, r4
/* 8014ECD4 0014BC34  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014ECD8 0014BC38  7C 7D 1B 78 */	mr r29, r3
/* 8014ECDC 0014BC3C  A0 05 00 00 */	lhz r0, 0(r5)
/* 8014ECE0 0014BC40  38 A1 00 08 */	addi r5, r1, 8
/* 8014ECE4 0014BC44  B0 01 00 08 */	sth r0, 8(r1)
/* 8014ECE8 0014BC48  4B F2 DE 91 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8014ECEC 0014BC4C  2C 1E 00 0E */	cmpwi r30, 0xe
/* 8014ECF0 0014BC50  41 82 00 30 */	beq lbl_8014ED20
/* 8014ECF4 0014BC54  40 80 00 10 */	bge lbl_8014ED04
/* 8014ECF8 0014BC58  2C 1E 00 01 */	cmpwi r30, 1
/* 8014ECFC 0014BC5C  41 82 00 34 */	beq lbl_8014ED30
/* 8014ED00 0014BC60  48 00 00 30 */	b lbl_8014ED30
lbl_8014ED04:
/* 8014ED04 0014BC64  2C 1E 00 21 */	cmpwi r30, 0x21
/* 8014ED08 0014BC68  41 82 00 08 */	beq lbl_8014ED10
/* 8014ED0C 0014BC6C  48 00 00 24 */	b lbl_8014ED30
lbl_8014ED10:
/* 8014ED10 0014BC70  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8014ED14 0014BC74  7F E4 FB 78 */	mr r4, r31
/* 8014ED18 0014BC78  4B FE BF D9 */	bl Activate__15CBodyControllerFR13CStateManager
/* 8014ED1C 0014BC7C  48 00 00 14 */	b lbl_8014ED30
lbl_8014ED20:
/* 8014ED20 0014BC80  88 1D 05 CA */	lbz r0, 0x5ca(r29)
/* 8014ED24 0014BC84  38 60 00 01 */	li r3, 1
/* 8014ED28 0014BC88  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8014ED2C 0014BC8C  98 1D 05 CA */	stb r0, 0x5ca(r29)
lbl_8014ED30:
/* 8014ED30 0014BC90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014ED34 0014BC94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014ED38 0014BC98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014ED3C 0014BC9C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014ED40 0014BCA0  7C 08 03 A6 */	mtlr r0
/* 8014ED44 0014BCA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8014ED48 0014BCA8  4E 80 00 20 */	blr

.global Accept__8CMetareeFR8IVisitor
Accept__8CMetareeFR8IVisitor:
/* 8014ED4C 0014BCAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014ED50 0014BCB0  7C 08 02 A6 */	mflr r0
/* 8014ED54 0014BCB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014ED58 0014BCB8  7C 60 1B 78 */	mr r0, r3
/* 8014ED5C 0014BCBC  7C 83 23 78 */	mr r3, r4
/* 8014ED60 0014BCC0  81 84 00 00 */	lwz r12, 0(r4)
/* 8014ED64 0014BCC4  7C 04 03 78 */	mr r4, r0
/* 8014ED68 0014BCC8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8014ED6C 0014BCCC  7D 89 03 A6 */	mtctr r12
/* 8014ED70 0014BCD0  4E 80 04 21 */	bctrl
/* 8014ED74 0014BCD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014ED78 0014BCD8  7C 08 03 A6 */	mtlr r0
/* 8014ED7C 0014BCDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014ED80 0014BCE0  4E 80 00 20 */	blr

.global "__ct__8CMetareeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC11CDamageInfofRC9CVector3ff9EBodyTypeffRC16CActorParameters"
"__ct__8CMetareeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC11CDamageInfofRC9CVector3ff9EBodyTypeffRC16CActorParameters":
/* 8014ED84 0014BCE4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8014ED88 0014BCE8  7C 08 02 A6 */	mflr r0
/* 8014ED8C 0014BCEC  90 01 00 84 */	stw r0, 0x84(r1)
/* 8014ED90 0014BCF0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8014ED94 0014BCF4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 8014ED98 0014BCF8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8014ED9C 0014BCFC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 8014EDA0 0014BD00  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8014EDA4 0014BD04  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 8014EDA8 0014BD08  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8014EDAC 0014BD0C  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 8014EDB0 0014BD10  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 8014EDB4 0014BD14  A0 04 00 00 */	lhz r0, 0(r4)
/* 8014EDB8 0014BD18  7C DB 33 78 */	mr r27, r6
/* 8014EDBC 0014BD1C  7C FC 3B 78 */	mr r28, r7
/* 8014EDC0 0014BD20  7D 0C 43 78 */	mr r12, r8
/* 8014EDC4 0014BD24  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8014EDC8 0014BD28  7D 2B 4B 78 */	mr r11, r9
/* 8014EDCC 0014BD2C  38 80 00 01 */	li r4, 1
/* 8014EDD0 0014BD30  38 00 00 00 */	li r0, 0
/* 8014EDD4 0014BD34  91 41 00 08 */	stw r10, 8(r1)
/* 8014EDD8 0014BD38  FF 80 08 90 */	fmr f28, f1
/* 8014EDDC 0014BD3C  80 C1 00 90 */	lwz r6, 0x90(r1)
/* 8014EDE0 0014BD40  FF A0 10 90 */	fmr f29, f2
/* 8014EDE4 0014BD44  90 81 00 0C */	stw r4, 0xc(r1)
/* 8014EDE8 0014BD48  FF C0 18 90 */	fmr f30, f3
/* 8014EDEC 0014BD4C  80 81 00 94 */	lwz r4, 0x94(r1)
/* 8014EDF0 0014BD50  90 01 00 10 */	stw r0, 0x10(r1)
/* 8014EDF4 0014BD54  FF E0 20 90 */	fmr f31, f4
/* 8014EDF8 0014BD58  83 A1 00 88 */	lwz r29, 0x88(r1)
/* 8014EDFC 0014BD5C  7C 7F 1B 78 */	mr r31, r3
/* 8014EE00 0014BD60  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8014EE04 0014BD64  7C A6 2B 78 */	mr r6, r5
/* 8014EE08 0014BD68  83 C1 00 8C */	lwz r30, 0x8c(r1)
/* 8014EE0C 0014BD6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8014EE10 0014BD70  7F 67 DB 78 */	mr r7, r27
/* 8014EE14 0014BD74  7F 88 E3 78 */	mr r8, r28
/* 8014EE18 0014BD78  7D 89 63 78 */	mr r9, r12
/* 8014EE1C 0014BD7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8014EE20 0014BD80  7D 6A 5B 78 */	mr r10, r11
/* 8014EE24 0014BD84  38 A1 00 20 */	addi r5, r1, 0x20
/* 8014EE28 0014BD88  38 80 00 12 */	li r4, 0x12
/* 8014EE2C 0014BD8C  4B F2 E6 25 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 8014EE30 0014BD90  3C 80 80 3E */	lis r4, lbl_803E2878@ha
/* 8014EE34 0014BD94  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8014EE38 0014BD98  38 04 28 78 */	addi r0, r4, lbl_803E2878@l
/* 8014EE3C 0014BD9C  C0 02 9D 8C */	lfs f0, lbl_805ABAAC@sda21(r2)
/* 8014EE40 0014BDA0  90 1F 00 00 */	stw r0, 0(r31)
/* 8014EE44 0014BDA4  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 8014EE48 0014BDA8  38 C0 00 00 */	li r6, 0
/* 8014EE4C 0014BDAC  38 00 02 25 */	li r0, 0x225
/* 8014EE50 0014BDB0  D3 DF 05 68 */	stfs f30, 0x568(r31)
/* 8014EE54 0014BDB4  38 80 00 01 */	li r4, 1
/* 8014EE58 0014BDB8  7F E3 FB 78 */	mr r3, r31
/* 8014EE5C 0014BDBC  D3 FF 05 6C */	stfs f31, 0x56c(r31)
/* 8014EE60 0014BDC0  D3 9F 05 70 */	stfs f28, 0x570(r31)
/* 8014EE64 0014BDC4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8014EE68 0014BDC8  D0 3F 05 74 */	stfs f1, 0x574(r31)
/* 8014EE6C 0014BDCC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8014EE70 0014BDD0  D0 3F 05 78 */	stfs f1, 0x578(r31)
/* 8014EE74 0014BDD4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8014EE78 0014BDD8  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 8014EE7C 0014BDDC  D3 BF 05 80 */	stfs f29, 0x580(r31)
/* 8014EE80 0014BDE0  C0 25 00 00 */	lfs f1, 0(r5)
/* 8014EE84 0014BDE4  D0 3F 05 84 */	stfs f1, 0x584(r31)
/* 8014EE88 0014BDE8  C0 25 00 04 */	lfs f1, 4(r5)
/* 8014EE8C 0014BDEC  D0 3F 05 88 */	stfs f1, 0x588(r31)
/* 8014EE90 0014BDF0  C0 25 00 08 */	lfs f1, 8(r5)
/* 8014EE94 0014BDF4  D0 3F 05 8C */	stfs f1, 0x58c(r31)
/* 8014EE98 0014BDF8  D0 1F 05 90 */	stfs f0, 0x590(r31)
/* 8014EE9C 0014BDFC  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8014EEA0 0014BE00  D0 1F 05 98 */	stfs f0, 0x598(r31)
/* 8014EEA4 0014BE04  C0 05 00 00 */	lfs f0, 0(r5)
/* 8014EEA8 0014BE08  D0 1F 05 9C */	stfs f0, 0x59c(r31)
/* 8014EEAC 0014BE0C  C0 05 00 04 */	lfs f0, 4(r5)
/* 8014EEB0 0014BE10  D0 1F 05 A0 */	stfs f0, 0x5a0(r31)
/* 8014EEB4 0014BE14  C0 05 00 08 */	lfs f0, 8(r5)
/* 8014EEB8 0014BE18  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 8014EEBC 0014BE1C  90 DF 05 A8 */	stw r6, 0x5a8(r31)
/* 8014EEC0 0014BE20  80 BD 00 00 */	lwz r5, 0(r29)
/* 8014EEC4 0014BE24  90 BF 05 AC */	stw r5, 0x5ac(r31)
/* 8014EEC8 0014BE28  88 BD 00 04 */	lbz r5, 4(r29)
/* 8014EECC 0014BE2C  98 BF 05 B0 */	stb r5, 0x5b0(r31)
/* 8014EED0 0014BE30  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8014EED4 0014BE34  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 8014EED8 0014BE38  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8014EEDC 0014BE3C  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 8014EEE0 0014BE40  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8014EEE4 0014BE44  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 8014EEE8 0014BE48  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8014EEEC 0014BE4C  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 8014EEF0 0014BE50  88 BD 00 18 */	lbz r5, 0x18(r29)
/* 8014EEF4 0014BE54  98 BF 05 C4 */	stb r5, 0x5c4(r31)
/* 8014EEF8 0014BE58  B0 1F 05 C8 */	sth r0, 0x5c8(r31)
/* 8014EEFC 0014BE5C  88 1F 05 CA */	lbz r0, 0x5ca(r31)
/* 8014EF00 0014BE60  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8014EF04 0014BE64  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 8014EF08 0014BE68  88 1F 05 CA */	lbz r0, 0x5ca(r31)
/* 8014EF0C 0014BE6C  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 8014EF10 0014BE70  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 8014EF14 0014BE74  88 1F 05 CA */	lbz r0, 0x5ca(r31)
/* 8014EF18 0014BE78  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 8014EF1C 0014BE7C  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 8014EF20 0014BE80  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8014EF24 0014BE84  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8014EF28 0014BE88  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 8014EF2C 0014BE8C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8014EF30 0014BE90  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 8014EF34 0014BE94  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8014EF38 0014BE98  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 8014EF3C 0014BE9C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8014EF40 0014BEA0  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 8014EF44 0014BEA4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8014EF48 0014BEA8  7C 08 03 A6 */	mtlr r0
/* 8014EF4C 0014BEAC  38 21 00 80 */	addi r1, r1, 0x80
/* 8014EF50 0014BEB0  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABAA8
lbl_805ABAA8:
	# ROM: 0x3F8348
	.float 5.0

.global lbl_805ABAAC
lbl_805ABAAC:
	# ROM: 0x3F834C
	.4byte 0

.global lbl_805ABAB0
lbl_805ABAB0:
	# ROM: 0x3F8350
	.float 1.0
	.4byte 0

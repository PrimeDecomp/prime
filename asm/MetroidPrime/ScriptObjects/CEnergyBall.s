.include "macros.inc"

.section .data
.balign 8

.global lbl_803EC0A0
lbl_803EC0A0:
	# ROM: 0x3E90A0
	.4byte 0
	.4byte 0
	.4byte __dt__11CEnergyBall
	.4byte Accept__11CEnergyBallFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__11CEnergyBallFfR13CStateManager
	.4byte AcceptScriptMsg__11CEnergyBallF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
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
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__11CEnergyBallFRC9CVector3fR13CStateManager
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
	.4byte Generate__11CEnergyBallFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__11CEnergyBallFR13CStateManager9EStateMsgf
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

.global lbl_803EC370
lbl_803EC370:
	# ROM: 0x3E9370
	.4byte 0
	.4byte 0
	.4byte sub_802a001c
	.4byte sub_802a007c
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte sub_802a0164
	.4byte sub_802a0100
	.4byte SetActive__7CEntityFb


.section .sdata
.balign 8

.global lbl_805A85E8
lbl_805A85E8:
	# ROM: 0x3F5F88
	.float 1.0
	.4byte 0

.global lbl_805A85F0
lbl_805A85F0:
	# ROM: 0x3F5F90
	.4byte 0x00000013

.global lbl_805A85F4
lbl_805A85F4:
	# ROM: 0x3F5F94
	.4byte 0x00000020

.global lbl_805A85F8
lbl_805A85F8:
	# ROM: 0x3F5F98
	.float 1.0

.global lbl_805A85FC
lbl_805A85FC:
	# ROM: 0x3F5F9C
	.4byte 0

.global lbl_805A8600
lbl_805A8600:
	# ROM: 0x3F5FA0
	.float 1.0

.global lbl_805A8604
lbl_805A8604:
	# ROM: 0x3F5FA4
	.4byte 0

.global lbl_805A8608
lbl_805A8608:
	# ROM: 0x3F5FA8
	.4byte 0x00000013
	.4byte 0

.section .text, "ax"

.global sub_8029f318
sub_8029f318:
/* 8029F318 0029C278  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8029F31C 0029C27C  7C 08 02 A6 */	mflr r0
/* 8029F320 0029C280  3C E0 80 3D */	lis r7, lbl_803D5EB8@ha
/* 8029F324 0029C284  90 01 00 64 */	stw r0, 0x64(r1)
/* 8029F328 0029C288  38 07 5E B8 */	addi r0, r7, lbl_803D5EB8@l
/* 8029F32C 0029C28C  BF 21 00 44 */	stmw r25, 0x44(r1)
/* 8029F330 0029C290  7C 79 1B 78 */	mr r25, r3
/* 8029F334 0029C294  7C 9A 23 78 */	mr r26, r4
/* 8029F338 0029C298  7C BB 2B 78 */	mr r27, r5
/* 8029F33C 0029C29C  7C DC 33 78 */	mr r28, r6
/* 8029F340 0029C2A0  7C 04 03 78 */	mr r4, r0
/* 8029F344 0029C2A4  38 60 01 10 */	li r3, 0x110
/* 8029F348 0029C2A8  38 A0 00 00 */	li r5, 0
/* 8029F34C 0029C2AC  48 07 65 21 */	bl __nw__FUlPCcPCc
/* 8029F350 0029C2B0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8029F354 0029C2B4  41 82 00 A0 */	beq lbl_8029F3F4
/* 8029F358 0029C2B8  C0 22 C0 F8 */	lfs f1, lbl_805ADE18@sda21(r2)
/* 8029F35C 0029C2BC  7F 84 E3 78 */	mr r4, r28
/* 8029F360 0029C2C0  C0 02 C0 FC */	lfs f0, lbl_805ADE1C@sda21(r2)
/* 8029F364 0029C2C4  38 61 00 10 */	addi r3, r1, 0x10
/* 8029F368 0029C2C8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8029F36C 0029C2CC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8029F370 0029C2D0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8029F374 0029C2D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8029F378 0029C2D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8029F37C 0029C2DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8029F380 0029C2E0  4B DA DD 5D */	bl AllocateUniqueId__13CStateManagerFv
/* 8029F384 0029C2E4  C0 22 C0 FC */	lfs f1, lbl_805ADE1C@sda21(r2)
/* 8029F388 0029C2E8  38 61 00 18 */	addi r3, r1, 0x18
/* 8029F38C 0029C2EC  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8029F390 0029C2F0  FC 40 08 90 */	fmr f2, f1
/* 8029F394 0029C2F4  FC 60 08 90 */	fmr f3, f1
/* 8029F398 0029C2F8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8029F39C 0029C2FC  FC 80 08 90 */	fmr f4, f1
/* 8029F3A0 0029C300  48 0C 40 4D */	bl __ct__6CColorFffff
/* 8029F3A4 0029C304  7C 7E 1B 78 */	mr r30, r3
/* 8029F3A8 0029C308  7F 83 E3 78 */	mr r3, r28
/* 8029F3AC 0029C30C  4B E9 0E 81 */	bl GetScaleForPOV__19CHUDBillboardEffectFRC13CStateManager
/* 8029F3B0 0029C310  7C 7F 1B 78 */	mr r31, r3
/* 8029F3B4 0029C314  7F 83 E3 78 */	mr r3, r28
/* 8029F3B8 0029C318  4B E9 0E 41 */	bl GetNearClipDistance__19CHUDBillboardEffectFRC13CStateManager
/* 8029F3BC 0029C31C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8029F3C0 0029C320  38 01 00 28 */	addi r0, r1, 0x28
/* 8029F3C4 0029C324  90 61 00 08 */	stw r3, 8(r1)
/* 8029F3C8 0029C328  7F A3 EB 78 */	mr r3, r29
/* 8029F3CC 0029C32C  7F 24 CB 78 */	mr r4, r25
/* 8029F3D0 0029C330  7F 45 D3 78 */	mr r5, r26
/* 8029F3D4 0029C334  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029F3D8 0029C338  7F 68 DB 78 */	mr r8, r27
/* 8029F3DC 0029C33C  7F E9 FB 78 */	mr r9, r31
/* 8029F3E0 0029C340  7F CA F3 78 */	mr r10, r30
/* 8029F3E4 0029C344  38 C1 00 14 */	addi r6, r1, 0x14
/* 8029F3E8 0029C348  38 E0 00 01 */	li r7, 1
/* 8029F3EC 0029C34C  4B E9 0B 0D */	bl "__ct__19CHUDBillboardEffectFRCQ24rstl44optional_object<25TToken<15CGenDescription>>RCQ24rstl49optional_object<30TToken<20CElectricDescription>>9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fRC9CVector3fRC6CColorRC9CVector3fRC9CVector3f"
/* 8029F3F0 0029C350  7C 7D 1B 78 */	mr r29, r3
lbl_8029F3F4:
/* 8029F3F4 0029C354  7F 83 E3 78 */	mr r3, r28
/* 8029F3F8 0029C358  7F A4 EB 78 */	mr r4, r29
/* 8029F3FC 0029C35C  4B DA D8 F9 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 8029F400 0029C360  BB 21 00 44 */	lmw r25, 0x44(r1)
/* 8029F404 0029C364  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8029F408 0029C368  7C 08 03 A6 */	mtlr r0
/* 8029F40C 0029C36C  38 21 00 60 */	addi r1, r1, 0x60
/* 8029F410 0029C370  4E 80 00 20 */	blr

.global Death__11CEnergyBallFRC9CVector3fR13CStateManager
Death__11CEnergyBallFRC9CVector3fR13CStateManager:
/* 8029F414 0029C374  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029F418 0029C378  7C 08 02 A6 */	mflr r0
/* 8029F41C 0029C37C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029F420 0029C380  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029F424 0029C384  7C BF 2B 78 */	mr r31, r5
/* 8029F428 0029C388  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029F42C 0029C38C  7C 9E 23 78 */	mr r30, r4
/* 8029F430 0029C390  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8029F434 0029C394  7C 7D 1B 78 */	mr r29, r3
/* 8029F438 0029C398  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F43C 0029C39C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8029F440 0029C3A0  7D 89 03 A6 */	mtctr r12
/* 8029F444 0029C3A4  4E 80 04 21 */	bctrl
/* 8029F448 0029C3A8  28 03 00 00 */	cmplwi r3, 0
/* 8029F44C 0029C3AC  41 82 00 2C */	beq lbl_8029F478
/* 8029F450 0029C3B0  C0 23 00 00 */	lfs f1, 0(r3)
/* 8029F454 0029C3B4  C0 02 C0 F8 */	lfs f0, lbl_805ADE18@sda21(r2)
/* 8029F458 0029C3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F45C 0029C3BC  40 81 00 1C */	ble lbl_8029F478
/* 8029F460 0029C3C0  7F A3 EB 78 */	mr r3, r29
/* 8029F464 0029C3C4  7F C4 F3 78 */	mr r4, r30
/* 8029F468 0029C3C8  7F E5 FB 78 */	mr r5, r31
/* 8029F46C 0029C3CC  38 C0 FF FF */	li r6, -1
/* 8029F470 0029C3D0  4B DD BF 35 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 8029F474 0029C3D4  48 00 00 18 */	b lbl_8029F48C
lbl_8029F478:
/* 8029F478 0029C3D8  7F A3 EB 78 */	mr r3, r29
/* 8029F47C 0029C3DC  7F C4 F3 78 */	mr r4, r30
/* 8029F480 0029C3E0  7F E5 FB 78 */	mr r5, r31
/* 8029F484 0029C3E4  38 C0 00 14 */	li r6, 0x14
/* 8029F488 0029C3E8  4B DD BF 1D */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
lbl_8029F48C:
/* 8029F48C 0029C3EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029F490 0029C3F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029F494 0029C3F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029F498 0029C3F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8029F49C 0029C3FC  7C 08 03 A6 */	mtlr r0
/* 8029F4A0 0029C400  38 21 00 20 */	addi r1, r1, 0x20
/* 8029F4A4 0029C404  4E 80 00 20 */	blr

.global sub_8029f4a8
sub_8029f4a8:
/* 8029F4A8 0029C408  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8029F4AC 0029C40C  7C 08 02 A6 */	mflr r0
/* 8029F4B0 0029C410  90 01 01 04 */	stw r0, 0x104(r1)
/* 8029F4B4 0029C414  BF 41 00 E8 */	stmw r26, 0xe8(r1)
/* 8029F4B8 0029C418  7C 7D 1B 78 */	mr r29, r3
/* 8029F4BC 0029C41C  7C 9E 23 78 */	mr r30, r4
/* 8029F4C0 0029C420  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 8029F4C4 0029C424  C0 1D 05 88 */	lfs f0, 0x588(r29)
/* 8029F4C8 0029C428  C0 E3 00 50 */	lfs f7, 0x50(r3)
/* 8029F4CC 0029C42C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8029F4D0 0029C430  EC 00 00 32 */	fmuls f0, f0, f0
/* 8029F4D4 0029C434  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 8029F4D8 0029C438  EC C7 08 28 */	fsubs f6, f7, f1
/* 8029F4DC 0029C43C  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8029F4E0 0029C440  C1 03 00 60 */	lfs f8, 0x60(r3)
/* 8029F4E4 0029C444  EC 82 08 28 */	fsubs f4, f2, f1
/* 8029F4E8 0029C448  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 8029F4EC 0029C44C  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8029F4F0 0029C450  EC A8 18 28 */	fsubs f5, f8, f3
/* 8029F4F4 0029C454  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8029F4F8 0029C458  D0 E1 00 98 */	stfs f7, 0x98(r1)
/* 8029F4FC 0029C45C  EC 44 01 32 */	fmuls f2, f4, f4
/* 8029F500 0029C460  EC 65 01 72 */	fmuls f3, f5, f5
/* 8029F504 0029C464  D1 01 00 9C */	stfs f8, 0x9c(r1)
/* 8029F508 0029C468  EC 22 08 2A */	fadds f1, f2, f1
/* 8029F50C 0029C46C  D0 81 00 A0 */	stfs f4, 0xa0(r1)
/* 8029F510 0029C470  D0 C1 00 A4 */	stfs f6, 0xa4(r1)
/* 8029F514 0029C474  EC 23 08 2A */	fadds f1, f3, f1
/* 8029F518 0029C478  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 8029F51C 0029C47C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F520 0029C480  4C 40 13 82 */	cror 2, 0, 2
/* 8029F524 0029C484  40 82 02 A4 */	bne lbl_8029F7C8
/* 8029F528 0029C488  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 8029F52C 0029C48C  3B E0 00 01 */	li r31, 1
/* 8029F530 0029C490  2C 00 00 02 */	cmpwi r0, 2
/* 8029F534 0029C494  41 82 00 60 */	beq lbl_8029F594
/* 8029F538 0029C498  40 80 00 14 */	bge lbl_8029F54C
/* 8029F53C 0029C49C  2C 00 00 00 */	cmpwi r0, 0
/* 8029F540 0029C4A0  41 82 00 18 */	beq lbl_8029F558
/* 8029F544 0029C4A4  40 80 00 38 */	bge lbl_8029F57C
/* 8029F548 0029C4A8  48 00 02 5C */	b lbl_8029F7A4
lbl_8029F54C:
/* 8029F54C 0029C4AC  2C 00 00 04 */	cmpwi r0, 4
/* 8029F550 0029C4B0  40 80 02 54 */	bge lbl_8029F7A4
/* 8029F554 0029C4B4  48 00 00 EC */	b lbl_8029F640
lbl_8029F558:
/* 8029F558 0029C4B8  C0 3D 05 98 */	lfs f1, 0x598(r29)
/* 8029F55C 0029C4BC  C0 02 C0 F8 */	lfs f0, lbl_805ADE18@sda21(r2)
/* 8029F560 0029C4C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F564 0029C4C4  7C 60 00 26 */	mfcr r3
/* 8029F568 0029C4C8  88 1D 04 02 */	lbz r0, 0x402(r29)
/* 8029F56C 0029C4CC  50 60 2F 38 */	rlwimi r0, r3, 5, 0x1c, 0x1c
/* 8029F570 0029C4D0  98 1D 04 02 */	stb r0, 0x402(r29)
/* 8029F574 0029C4D4  D0 3D 05 04 */	stfs f1, 0x504(r29)
/* 8029F578 0029C4D8  48 00 02 2C */	b lbl_8029F7A4
lbl_8029F57C:
/* 8029F57C 0029C4DC  A0 DD 05 A0 */	lhz r6, 0x5a0(r29)
/* 8029F580 0029C4E0  80 BD 05 9C */	lwz r5, 0x59c(r29)
/* 8029F584 0029C4E4  80 FD 05 A4 */	lwz r7, 0x5a4(r29)
/* 8029F588 0029C4E8  4B D7 67 8D */	bl Freeze__7CPlayerFR13CStateManagerUiUsUi
/* 8029F58C 0029C4EC  3B E0 00 00 */	li r31, 0
/* 8029F590 0029C4F0  48 00 02 14 */	b lbl_8029F7A4
lbl_8029F594:
/* 8029F594 0029C4F4  38 00 00 00 */	li r0, 0
/* 8029F598 0029C4F8  3C 60 80 3D */	lis r3, lbl_803D5EB8@ha
/* 8029F59C 0029C4FC  38 83 5E B8 */	addi r4, r3, lbl_803D5EB8@l
/* 8029F5A0 0029C500  98 01 00 90 */	stb r0, 0x90(r1)
/* 8029F5A4 0029C504  38 61 00 78 */	addi r3, r1, 0x78
/* 8029F5A8 0029C508  38 84 00 07 */	addi r4, r4, 7
/* 8029F5AC 0029C50C  4B D6 57 0D */	bl string_l__4rstlFPCc
/* 8029F5B0 0029C510  7F C6 F3 78 */	mr r6, r30
/* 8029F5B4 0029C514  38 61 00 88 */	addi r3, r1, 0x88
/* 8029F5B8 0029C518  38 9D 05 A8 */	addi r4, r29, 0x5a8
/* 8029F5BC 0029C51C  38 A1 00 78 */	addi r5, r1, 0x78
/* 8029F5C0 0029C520  4B FF FD 59 */	bl sub_8029f318
/* 8029F5C4 0029C524  38 61 00 78 */	addi r3, r1, 0x78
/* 8029F5C8 0029C528  48 09 E5 19 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8029F5CC 0029C52C  88 01 00 90 */	lbz r0, 0x90(r1)
/* 8029F5D0 0029C530  28 00 00 00 */	cmplwi r0, 0
/* 8029F5D4 0029C534  41 82 00 14 */	beq lbl_8029F5E8
/* 8029F5D8 0029C538  34 61 00 88 */	addic. r3, r1, 0x88
/* 8029F5DC 0029C53C  41 82 00 0C */	beq lbl_8029F5E8
/* 8029F5E0 0029C540  38 80 00 00 */	li r4, 0
/* 8029F5E4 0029C544  48 0A 18 5D */	bl __dt__6CTokenFv
lbl_8029F5E8:
/* 8029F5E8 0029C548  38 00 00 00 */	li r0, 0
/* 8029F5EC 0029C54C  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 8029F5F0 0029C550  98 01 00 90 */	stb r0, 0x90(r1)
/* 8029F5F4 0029C554  38 61 00 3C */	addi r3, r1, 0x3c
/* 8029F5F8 0029C558  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8029F5FC 0029C55C  38 A0 00 7F */	li r5, 0x7f
/* 8029F600 0029C560  A0 9D 05 B4 */	lhz r4, 0x5b4(r29)
/* 8029F604 0029C564  38 C0 00 40 */	li r6, 0x40
/* 8029F608 0029C568  38 E0 00 00 */	li r7, 0
/* 8029F60C 0029C56C  39 20 00 00 */	li r9, 0
/* 8029F610 0029C570  48 04 A7 65 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8029F614 0029C574  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8029F618 0029C578  38 81 00 1C */	addi r4, r1, 0x1c
/* 8029F61C 0029C57C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8029F620 0029C580  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 8029F624 0029C584  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8029F628 0029C588  80 63 00 00 */	lwz r3, 0(r3)
/* 8029F62C 0029C58C  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 8029F630 0029C590  C0 5D 05 BC */	lfs f2, 0x5bc(r29)
/* 8029F634 0029C594  38 63 01 88 */	addi r3, r3, 0x188
/* 8029F638 0029C598  4B F2 15 01 */	bl AddSource__19CStaticInterferenceF9TUniqueIdff
/* 8029F63C 0029C59C  48 00 01 68 */	b lbl_8029F7A4
lbl_8029F640:
/* 8029F640 0029C5A0  38 00 00 00 */	li r0, 0
/* 8029F644 0029C5A4  3C 60 80 3D */	lis r3, lbl_803D5EB8@ha
/* 8029F648 0029C5A8  38 83 5E B8 */	addi r4, r3, lbl_803D5EB8@l
/* 8029F64C 0029C5AC  98 01 00 74 */	stb r0, 0x74(r1)
/* 8029F650 0029C5B0  38 61 00 5C */	addi r3, r1, 0x5c
/* 8029F654 0029C5B4  38 84 00 18 */	addi r4, r4, 0x18
/* 8029F658 0029C5B8  4B D6 56 61 */	bl string_l__4rstlFPCc
/* 8029F65C 0029C5BC  7F C6 F3 78 */	mr r6, r30
/* 8029F660 0029C5C0  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 8029F664 0029C5C4  38 81 00 6C */	addi r4, r1, 0x6c
/* 8029F668 0029C5C8  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8029F66C 0029C5CC  4B FF FC AD */	bl sub_8029f318
/* 8029F670 0029C5D0  38 61 00 5C */	addi r3, r1, 0x5c
/* 8029F674 0029C5D4  48 09 E4 6D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8029F678 0029C5D8  88 01 00 74 */	lbz r0, 0x74(r1)
/* 8029F67C 0029C5DC  28 00 00 00 */	cmplwi r0, 0
/* 8029F680 0029C5E0  41 82 00 14 */	beq lbl_8029F694
/* 8029F684 0029C5E4  34 61 00 6C */	addic. r3, r1, 0x6c
/* 8029F688 0029C5E8  41 82 00 0C */	beq lbl_8029F694
/* 8029F68C 0029C5EC  38 80 00 00 */	li r4, 0
/* 8029F690 0029C5F0  48 0A 17 B1 */	bl __dt__6CTokenFv
lbl_8029F694:
/* 8029F694 0029C5F4  38 00 00 00 */	li r0, 0
/* 8029F698 0029C5F8  3C 60 80 3D */	lis r3, lbl_803D5EB8@ha
/* 8029F69C 0029C5FC  98 01 00 74 */	stb r0, 0x74(r1)
/* 8029F6A0 0029C600  38 83 5E B8 */	addi r4, r3, lbl_803D5EB8@l
/* 8029F6A4 0029C604  3B 60 00 00 */	li r27, 0
/* 8029F6A8 0029C608  3B 40 00 00 */	li r26, 0
/* 8029F6AC 0029C60C  38 60 00 5C */	li r3, 0x5c
/* 8029F6B0 0029C610  38 A0 00 00 */	li r5, 0
/* 8029F6B4 0029C614  48 07 61 B9 */	bl __nw__FUlPCcPCc
/* 8029F6B8 0029C618  7C 7C 1B 79 */	or. r28, r3, r3
/* 8029F6BC 0029C61C  41 82 00 84 */	beq lbl_8029F740
/* 8029F6C0 0029C620  3C 80 80 3D */	lis r4, lbl_803D5EB8@ha
/* 8029F6C4 0029C624  38 61 00 4C */	addi r3, r1, 0x4c
/* 8029F6C8 0029C628  38 84 5E B8 */	addi r4, r4, lbl_803D5EB8@l
/* 8029F6CC 0029C62C  38 84 00 26 */	addi r4, r4, 0x26
/* 8029F6D0 0029C630  4B D6 55 E9 */	bl string_l__4rstlFPCc
/* 8029F6D4 0029C634  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8029F6D8 0029C638  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 8029F6DC 0029C63C  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 8029F6E0 0029C640  38 81 00 34 */	addi r4, r1, 0x34
/* 8029F6E4 0029C644  90 01 00 38 */	stw r0, 0x38(r1)
/* 8029F6E8 0029C648  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8029F6EC 0029C64C  38 C1 00 38 */	addi r6, r1, 0x38
/* 8029F6F0 0029C650  3B 60 00 01 */	li r27, 1
/* 8029F6F4 0029C654  80 1D 00 04 */	lwz r0, 4(r29)
/* 8029F6F8 0029C658  90 01 00 30 */	stw r0, 0x30(r1)
/* 8029F6FC 0029C65C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029F700 0029C660  4B DB 1D 85 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8029F704 0029C664  7F C4 F3 78 */	mr r4, r30
/* 8029F708 0029C668  38 61 00 10 */	addi r3, r1, 0x10
/* 8029F70C 0029C66C  3B 40 00 01 */	li r26, 1
/* 8029F710 0029C670  4B DA D9 CD */	bl AllocateUniqueId__13CStateManagerFv
/* 8029F714 0029C674  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8029F718 0029C678  7F 83 E3 78 */	mr r3, r28
/* 8029F71C 0029C67C  38 81 00 14 */	addi r4, r1, 0x14
/* 8029F720 0029C680  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 8029F724 0029C684  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8029F728 0029C688  38 E1 00 4C */	addi r7, r1, 0x4c
/* 8029F72C 0029C68C  39 1D 05 CC */	addi r8, r29, 0x5cc
/* 8029F730 0029C690  38 C0 00 01 */	li r6, 1
/* 8029F734 0029C694  C0 3D 05 E8 */	lfs f1, 0x5e8(r29)
/* 8029F738 0029C698  48 00 0B 45 */	bl sub_802a027c
/* 8029F73C 0029C69C  7C 7C 1B 78 */	mr r28, r3
lbl_8029F740:
/* 8029F740 0029C6A0  7F C3 F3 78 */	mr r3, r30
/* 8029F744 0029C6A4  7F 84 E3 78 */	mr r4, r28
/* 8029F748 0029C6A8  4B DA D5 AD */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 8029F74C 0029C6AC  7F 40 07 75 */	extsb. r0, r26
/* 8029F750 0029C6B0  41 82 00 44 */	beq lbl_8029F794
/* 8029F754 0029C6B4  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 8029F758 0029C6B8  80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 8029F75C 0029C6BC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8029F760 0029C6C0  90 61 00 24 */	stw r3, 0x24(r1)
/* 8029F764 0029C6C4  7C 64 1B 78 */	mr r4, r3
/* 8029F768 0029C6C8  7C 03 02 14 */	add r0, r3, r0
/* 8029F76C 0029C6CC  90 61 00 20 */	stw r3, 0x20(r1)
/* 8029F770 0029C6D0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8029F774 0029C6D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 8029F778 0029C6D8  48 00 00 08 */	b lbl_8029F780
lbl_8029F77C:
/* 8029F77C 0029C6DC  38 84 00 0C */	addi r4, r4, 0xc
lbl_8029F780:
/* 8029F780 0029C6E0  7C 04 00 40 */	cmplw r4, r0
/* 8029F784 0029C6E4  40 82 FF F8 */	bne lbl_8029F77C
/* 8029F788 0029C6E8  28 03 00 00 */	cmplwi r3, 0
/* 8029F78C 0029C6EC  41 82 00 08 */	beq lbl_8029F794
/* 8029F790 0029C6F0  48 07 61 A1 */	bl Free__7CMemoryFPCv
lbl_8029F794:
/* 8029F794 0029C6F4  7F 60 07 75 */	extsb. r0, r27
/* 8029F798 0029C6F8  41 82 00 0C */	beq lbl_8029F7A4
/* 8029F79C 0029C6FC  38 61 00 4C */	addi r3, r1, 0x4c
/* 8029F7A0 0029C700  48 09 E3 41 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8029F7A4:
/* 8029F7A4 0029C704  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8029F7A8 0029C708  41 82 00 20 */	beq lbl_8029F7C8
/* 8029F7AC 0029C70C  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8029F7B0 0029C710  4B D7 65 4D */	bl GetFrozenState__7CPlayerCFv
/* 8029F7B4 0029C714  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029F7B8 0029C718  41 82 00 10 */	beq lbl_8029F7C8
/* 8029F7BC 0029C71C  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8029F7C0 0029C720  7F C4 F3 78 */	mr r4, r30
/* 8029F7C4 0029C724  4B D7 62 69 */	bl UnFreeze__7CPlayerFR13CStateManager
lbl_8029F7C8:
/* 8029F7C8 0029C728  80 AD 9A 30 */	lwz r5, lbl_805A85F0@sda21(r13)
/* 8029F7CC 0029C72C  38 60 00 00 */	li r3, 0
/* 8029F7D0 0029C730  38 80 00 01 */	li r4, 1
/* 8029F7D4 0029C734  48 0E A7 21 */	bl __shl2i
/* 8029F7D8 0029C738  39 20 00 00 */	li r9, 0
/* 8029F7DC 0029C73C  38 00 00 03 */	li r0, 3
/* 8029F7E0 0029C740  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 8029F7E4 0029C744  7F A5 EB 78 */	mr r5, r29
/* 8029F7E8 0029C748  38 81 00 0C */	addi r4, r1, 0xc
/* 8029F7EC 0029C74C  38 C1 00 40 */	addi r6, r1, 0x40
/* 8029F7F0 0029C750  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 8029F7F4 0029C754  7F C3 F3 78 */	mr r3, r30
/* 8029F7F8 0029C758  38 FD 05 78 */	addi r7, r29, 0x578
/* 8029F7FC 0029C75C  39 01 00 B0 */	addi r8, r1, 0xb0
/* 8029F800 0029C760  91 21 00 BC */	stw r9, 0xbc(r1)
/* 8029F804 0029C764  91 21 00 B8 */	stw r9, 0xb8(r1)
/* 8029F808 0029C768  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8029F80C 0029C76C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 8029F810 0029C770  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8029F814 0029C774  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8029F818 0029C778  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8029F81C 0029C77C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8029F820 0029C780  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8029F824 0029C784  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8029F828 0029C788  B0 01 00 08 */	sth r0, 8(r1)
/* 8029F82C 0029C78C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8029F830 0029C790  4B DA 94 7D */	bl ApplyDamageToWorld__13CStateManagerF9TUniqueIdRC6CActorRC9CVector3fRC11CDamageInfoRC15CMaterialFilter
/* 8029F834 0029C794  7F A3 EB 78 */	mr r3, r29
/* 8029F838 0029C798  7F C4 F3 78 */	mr r4, r30
/* 8029F83C 0029C79C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8029F840 0029C7A0  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 8029F844 0029C7A4  7D 89 03 A6 */	mtctr r12
/* 8029F848 0029C7A8  4E 80 04 21 */	bctrl
/* 8029F84C 0029C7AC  BB 41 00 E8 */	lmw r26, 0xe8(r1)
/* 8029F850 0029C7B0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8029F854 0029C7B4  7C 08 03 A6 */	mtlr r0
/* 8029F858 0029C7B8  38 21 01 00 */	addi r1, r1, 0x100
/* 8029F85C 0029C7BC  4E 80 00 20 */	blr

.global Think__11CEnergyBallFfR13CStateManager
Think__11CEnergyBallFfR13CStateManager:
/* 8029F860 0029C7C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8029F864 0029C7C4  7C 08 02 A6 */	mflr r0
/* 8029F868 0029C7C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8029F86C 0029C7CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8029F870 0029C7D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8029F874 0029C7D4  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8029F878 0029C7D8  7C 7E 1B 78 */	mr r30, r3
/* 8029F87C 0029C7DC  C0 02 C1 00 */	lfs f0, lbl_805ADE20@sda21(r2)
/* 8029F880 0029C7E0  C0 43 05 6C */	lfs f2, 0x56c(r3)
/* 8029F884 0029C7E4  FF E0 08 90 */	fmr f31, f1
/* 8029F888 0029C7E8  C0 22 C1 04 */	lfs f1, lbl_805ADE24@sda21(r2)
/* 8029F88C 0029C7EC  7C 9F 23 78 */	mr r31, r4
/* 8029F890 0029C7F0  EC 42 00 28 */	fsubs f2, f2, f0
/* 8029F894 0029C7F4  C0 0D 9A 38 */	lfs f0, lbl_805A85F8@sda21(r13)
/* 8029F898 0029C7F8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8029F89C 0029C7FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F8A0 0029C800  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8029F8A4 0029C804  40 80 00 0C */	bge lbl_8029F8B0
/* 8029F8A8 0029C808  38 61 00 10 */	addi r3, r1, 0x10
/* 8029F8AC 0029C80C  48 00 00 08 */	b lbl_8029F8B4
lbl_8029F8B0:
/* 8029F8B0 0029C810  38 6D 9A 38 */	addi r3, r13, lbl_805A85F8@sda21
lbl_8029F8B4:
/* 8029F8B4 0029C814  C0 2D 9A 3C */	lfs f1, lbl_805A85FC@sda21(r13)
/* 8029F8B8 0029C818  C0 03 00 00 */	lfs f0, 0(r3)
/* 8029F8BC 0029C81C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F8C0 0029C820  40 80 00 08 */	bge lbl_8029F8C8
/* 8029F8C4 0029C824  48 00 00 08 */	b lbl_8029F8CC
lbl_8029F8C8:
/* 8029F8C8 0029C828  38 6D 9A 3C */	addi r3, r13, lbl_805A85FC@sda21
lbl_8029F8CC:
/* 8029F8CC 0029C82C  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 8029F8D0 0029C830  C0 03 00 00 */	lfs f0, 0(r3)
/* 8029F8D4 0029C834  EC 21 00 32 */	fmuls f1, f1, f0
/* 8029F8D8 0029C838  D0 3E 03 B8 */	stfs f1, 0x3b8(r30)
/* 8029F8DC 0029C83C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8029F8E0 0029C840  4B E9 B0 C5 */	bl SetTurnSpeed__15CBodyControllerFf
/* 8029F8E4 0029C844  FC 20 F8 90 */	fmr f1, f31
/* 8029F8E8 0029C848  7F C3 F3 78 */	mr r3, r30
/* 8029F8EC 0029C84C  7F E4 FB 78 */	mr r4, r31
/* 8029F8F0 0029C850  4B DD A2 29 */	bl Think__10CPatternedFfR13CStateManager
/* 8029F8F4 0029C854  C0 5E 04 28 */	lfs f2, 0x428(r30)
/* 8029F8F8 0029C858  C0 22 88 F0 */	lfs f1, lbl_805AA610@sda21(r2)
/* 8029F8FC 0029C85C  C0 0D 9A 40 */	lfs f0, lbl_805A8600@sda21(r13)
/* 8029F900 0029C860  EC 22 08 24 */	fdivs f1, f2, f1
/* 8029F904 0029C864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F908 0029C868  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8029F90C 0029C86C  40 80 00 0C */	bge lbl_8029F918
/* 8029F910 0029C870  3B 81 00 0C */	addi r28, r1, 0xc
/* 8029F914 0029C874  48 00 00 08 */	b lbl_8029F91C
lbl_8029F918:
/* 8029F918 0029C878  3B 8D 9A 40 */	addi r28, r13, lbl_805A8600@sda21
lbl_8029F91C:
/* 8029F91C 0029C87C  C0 2D 9A 44 */	lfs f1, lbl_805A8604@sda21(r13)
/* 8029F920 0029C880  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8029F924 0029C884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F928 0029C888  40 80 00 08 */	bge lbl_8029F930
/* 8029F92C 0029C88C  48 00 00 08 */	b lbl_8029F934
lbl_8029F930:
/* 8029F930 0029C890  3B 8D 9A 44 */	addi r28, r13, lbl_805A8604@sda21
lbl_8029F934:
/* 8029F934 0029C894  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8029F938 0029C898  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F93C 0029C89C  3B 63 01 20 */	addi r27, r3, 0x120
/* 8029F940 0029C8A0  48 0A A6 5D */	bl Red__6CColorFv
/* 8029F944 0029C8A4  7C 7D 1B 78 */	mr r29, r3
/* 8029F948 0029C8A8  48 0A A6 65 */	bl White__6CColorFv
/* 8029F94C 0029C8AC  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8029F950 0029C8B0  7C 64 1B 78 */	mr r4, r3
/* 8029F954 0029C8B4  7F A5 EB 78 */	mr r5, r29
/* 8029F958 0029C8B8  38 61 00 08 */	addi r3, r1, 8
/* 8029F95C 0029C8BC  48 0C 39 51 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 8029F960 0029C8C0  7F 63 DB 78 */	mr r3, r27
/* 8029F964 0029C8C4  38 81 00 08 */	addi r4, r1, 8
/* 8029F968 0029C8C8  4B E1 81 B1 */	bl SetModulationColorAllActiveEffects__17CParticleDatabaseFRC6CColor
/* 8029F96C 0029C8CC  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 8029F970 0029C8D0  3B 60 00 00 */	li r27, 0
/* 8029F974 0029C8D4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8029F978 0029C8D8  41 82 00 58 */	beq lbl_8029F9D0
/* 8029F97C 0029C8DC  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8029F980 0029C8E0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8029F984 0029C8E4  41 82 00 4C */	beq lbl_8029F9D0
/* 8029F988 0029C8E8  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 8029F98C 0029C8EC  EC 00 F8 2A */	fadds f0, f0, f31
/* 8029F990 0029C8F0  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 8029F994 0029C8F4  C0 3E 05 6C */	lfs f1, 0x56c(r30)
/* 8029F998 0029C8F8  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 8029F99C 0029C8FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F9A0 0029C900  40 81 00 08 */	ble lbl_8029F9A8
/* 8029F9A4 0029C904  3B 60 00 01 */	li r27, 1
lbl_8029F9A8:
/* 8029F9A8 0029C908  7F C3 F3 78 */	mr r3, r30
/* 8029F9AC 0029C90C  FC 20 F8 90 */	fmr f1, f31
/* 8029F9B0 0029C910  81 9E 00 00 */	lwz r12, 0(r30)
/* 8029F9B4 0029C914  7F E4 FB 78 */	mr r4, r31
/* 8029F9B8 0029C918  81 8C 01 A4 */	lwz r12, 0x1a4(r12)
/* 8029F9BC 0029C91C  7D 89 03 A6 */	mtctr r12
/* 8029F9C0 0029C920  4E 80 04 21 */	bctrl
/* 8029F9C4 0029C924  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029F9C8 0029C928  41 82 00 08 */	beq lbl_8029F9D0
/* 8029F9CC 0029C92C  3B 60 00 01 */	li r27, 1
lbl_8029F9D0:
/* 8029F9D0 0029C930  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8029F9D4 0029C934  41 82 00 10 */	beq lbl_8029F9E4
/* 8029F9D8 0029C938  7F C3 F3 78 */	mr r3, r30
/* 8029F9DC 0029C93C  7F E4 FB 78 */	mr r4, r31
/* 8029F9E0 0029C940  4B FF FA C9 */	bl sub_8029f4a8
lbl_8029F9E4:
/* 8029F9E4 0029C944  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8029F9E8 0029C948  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8029F9EC 0029C94C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8029F9F0 0029C950  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8029F9F4 0029C954  7C 08 03 A6 */	mtlr r0
/* 8029F9F8 0029C958  38 21 00 40 */	addi r1, r1, 0x40
/* 8029F9FC 0029C95C  4E 80 00 20 */	blr

.global Attack__11CEnergyBallFR13CStateManager9EStateMsgf
Attack__11CEnergyBallFR13CStateManager9EStateMsgf:
/* 8029FA00 0029C960  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8029FA04 0029C964  7C 08 02 A6 */	mflr r0
/* 8029FA08 0029C968  90 01 00 64 */	stw r0, 0x64(r1)
/* 8029FA0C 0029C96C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8029FA10 0029C970  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8029FA14 0029C974  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8029FA18 0029C978  FF E0 08 90 */	fmr f31, f1
/* 8029FA1C 0029C97C  2C 05 00 01 */	cmpwi r5, 1
/* 8029FA20 0029C980  7C 7F 1B 78 */	mr r31, r3
/* 8029FA24 0029C984  41 82 00 10 */	beq lbl_8029FA34
/* 8029FA28 0029C988  40 80 00 88 */	bge lbl_8029FAB0
/* 8029FA2C 0029C98C  48 00 00 84 */	b lbl_8029FAB0
/* 8029FA30 0029C990  48 00 00 80 */	b lbl_8029FAB0
lbl_8029FA34:
/* 8029FA34 0029C994  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8029FA38 0029C998  38 61 00 20 */	addi r3, r1, 0x20
/* 8029FA3C 0029C99C  4B FE 53 41 */	bl GetEyePosition__7CPlayerCFv
/* 8029FA40 0029C9A0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8029FA44 0029C9A4  7F E5 FB 78 */	mr r5, r31
/* 8029FA48 0029C9A8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8029FA4C 0029C9AC  38 61 00 14 */	addi r3, r1, 0x14
/* 8029FA50 0029C9B0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8029FA54 0029C9B4  38 9F 05 68 */	addi r4, r31, 0x568
/* 8029FA58 0029C9B8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8029FA5C 0029C9BC  38 C1 00 38 */	addi r6, r1, 0x38
/* 8029FA60 0029C9C0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8029FA64 0029C9C4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8029FA68 0029C9C8  4B E9 F1 B9 */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 8029FA6C 0029C9CC  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8029FA70 0029C9D0  FC 20 F8 90 */	fmr f1, f31
/* 8029FA74 0029C9D4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8029FA78 0029C9D8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8029FA7C 0029C9DC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8029FA80 0029C9E0  38 A1 00 08 */	addi r5, r1, 8
/* 8029FA84 0029C9E4  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8029FA88 0029C9E8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8029FA8C 0029C9EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8029FA90 0029C9F0  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 8029FA94 0029C9F4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8029FA98 0029C9F8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8029FA9C 0029C9FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8029FAA0 0029CA00  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8029FAA4 0029CA04  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8029FAA8 0029CA08  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8029FAAC 0029CA0C  4B E9 A9 BD */	bl FaceDirection3D__15CBodyControllerFRC9CVector3ff
lbl_8029FAB0:
/* 8029FAB0 0029CA10  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8029FAB4 0029CA14  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8029FAB8 0029CA18  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8029FABC 0029CA1C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8029FAC0 0029CA20  7C 08 03 A6 */	mtlr r0
/* 8029FAC4 0029CA24  38 21 00 60 */	addi r1, r1, 0x60
/* 8029FAC8 0029CA28  4E 80 00 20 */	blr

.global Generate__11CEnergyBallFR13CStateManager9EStateMsgf
Generate__11CEnergyBallFR13CStateManager9EStateMsgf:
/* 8029FACC 0029CA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029FAD0 0029CA30  7C 08 02 A6 */	mflr r0
/* 8029FAD4 0029CA34  2C 05 00 01 */	cmpwi r5, 1
/* 8029FAD8 0029CA38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029FADC 0029CA3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029FAE0 0029CA40  7C 9F 23 78 */	mr r31, r4
/* 8029FAE4 0029CA44  93 C1 00 08 */	stw r30, 8(r1)
/* 8029FAE8 0029CA48  7C 7E 1B 78 */	mr r30, r3
/* 8029FAEC 0029CA4C  41 82 00 28 */	beq lbl_8029FB14
/* 8029FAF0 0029CA50  40 80 00 10 */	bge lbl_8029FB00
/* 8029FAF4 0029CA54  2C 05 00 00 */	cmpwi r5, 0
/* 8029FAF8 0029CA58  40 80 00 14 */	bge lbl_8029FB0C
/* 8029FAFC 0029CA5C  48 00 00 4C */	b lbl_8029FB48
lbl_8029FB00:
/* 8029FB00 0029CA60  2C 05 00 03 */	cmpwi r5, 3
/* 8029FB04 0029CA64  40 80 00 44 */	bge lbl_8029FB48
/* 8029FB08 0029CA68  48 00 00 38 */	b lbl_8029FB40
lbl_8029FB0C:
/* 8029FB0C 0029CA6C  38 00 00 01 */	li r0, 1
/* 8029FB10 0029CA70  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_8029FB14:
/* 8029FB14 0029CA74  7F C3 F3 78 */	mr r3, r30
/* 8029FB18 0029CA78  7F E4 FB 78 */	mr r4, r31
/* 8029FB1C 0029CA7C  38 A0 00 00 */	li r5, 0
/* 8029FB20 0029CA80  4B DD C6 89 */	bl sub_8007c1a8
/* 8029FB24 0029CA84  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8029FB28 0029CA88  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8029FB2C 0029CA8C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8029FB30 0029CA90  40 82 00 18 */	bne lbl_8029FB48
/* 8029FB34 0029CA94  7F E4 FB 78 */	mr r4, r31
/* 8029FB38 0029CA98  4B E9 B1 B9 */	bl Activate__15CBodyControllerFR13CStateManager
/* 8029FB3C 0029CA9C  48 00 00 0C */	b lbl_8029FB48
lbl_8029FB40:
/* 8029FB40 0029CAA0  38 00 00 00 */	li r0, 0
/* 8029FB44 0029CAA4  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_8029FB48:
/* 8029FB48 0029CAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029FB4C 0029CAAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029FB50 0029CAB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029FB54 0029CAB4  7C 08 03 A6 */	mtlr r0
/* 8029FB58 0029CAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029FB5C 0029CABC  4E 80 00 20 */	blr

.global AcceptScriptMsg__11CEnergyBallF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__11CEnergyBallF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8029FB60 0029CAC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8029FB64 0029CAC4  7C 08 02 A6 */	mflr r0
/* 8029FB68 0029CAC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8029FB6C 0029CACC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8029FB70 0029CAD0  7C DF 33 78 */	mr r31, r6
/* 8029FB74 0029CAD4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8029FB78 0029CAD8  7C BE 2B 78 */	mr r30, r5
/* 8029FB7C 0029CADC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8029FB80 0029CAE0  7C 9D 23 78 */	mr r29, r4
/* 8029FB84 0029CAE4  2C 1D 00 21 */	cmpwi r29, 0x21
/* 8029FB88 0029CAE8  93 81 00 30 */	stw r28, 0x30(r1)
/* 8029FB8C 0029CAEC  7C 7C 1B 78 */	mr r28, r3
/* 8029FB90 0029CAF0  40 82 00 4C */	bne lbl_8029FBDC
/* 8029FB94 0029CAF4  80 AD 9A 34 */	lwz r5, lbl_805A85F4@sda21(r13)
/* 8029FB98 0029CAF8  38 60 00 00 */	li r3, 0
/* 8029FB9C 0029CAFC  38 80 00 01 */	li r4, 1
/* 8029FBA0 0029CB00  48 0E A3 55 */	bl __shl2i
/* 8029FBA4 0029CB04  38 A0 00 00 */	li r5, 0
/* 8029FBA8 0029CB08  38 00 00 01 */	li r0, 1
/* 8029FBAC 0029CB0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8029FBB0 0029CB10  38 81 00 10 */	addi r4, r1, 0x10
/* 8029FBB4 0029CB14  90 61 00 10 */	stw r3, 0x10(r1)
/* 8029FBB8 0029CB18  7F 83 E3 78 */	mr r3, r28
/* 8029FBBC 0029CB1C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8029FBC0 0029CB20  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8029FBC4 0029CB24  90 01 00 20 */	stw r0, 0x20(r1)
/* 8029FBC8 0029CB28  4B DB 3C D9 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8029FBCC 0029CB2C  7F 83 E3 78 */	mr r3, r28
/* 8029FBD0 0029CB30  7F E5 FB 78 */	mr r5, r31
/* 8029FBD4 0029CB34  38 80 00 13 */	li r4, 0x13
/* 8029FBD8 0029CB38  4B DB 43 A9 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8029FBDC:
/* 8029FBDC 0029CB3C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8029FBE0 0029CB40  7F 83 E3 78 */	mr r3, r28
/* 8029FBE4 0029CB44  7F A4 EB 78 */	mr r4, r29
/* 8029FBE8 0029CB48  7F E6 FB 78 */	mr r6, r31
/* 8029FBEC 0029CB4C  B0 01 00 08 */	sth r0, 8(r1)
/* 8029FBF0 0029CB50  38 A1 00 08 */	addi r5, r1, 8
/* 8029FBF4 0029CB54  4B DD CF 85 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8029FBF8 0029CB58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8029FBFC 0029CB5C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8029FC00 0029CB60  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8029FC04 0029CB64  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8029FC08 0029CB68  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8029FC0C 0029CB6C  7C 08 03 A6 */	mtlr r0
/* 8029FC10 0029CB70  38 21 00 40 */	addi r1, r1, 0x40
/* 8029FC14 0029CB74  4E 80 00 20 */	blr

.global Accept__11CEnergyBallFR8IVisitor
Accept__11CEnergyBallFR8IVisitor:
/* 8029FC18 0029CB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029FC1C 0029CB7C  7C 08 02 A6 */	mflr r0
/* 8029FC20 0029CB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029FC24 0029CB84  7C 60 1B 78 */	mr r0, r3
/* 8029FC28 0029CB88  7C 83 23 78 */	mr r3, r4
/* 8029FC2C 0029CB8C  81 84 00 00 */	lwz r12, 0(r4)
/* 8029FC30 0029CB90  7C 04 03 78 */	mr r4, r0
/* 8029FC34 0029CB94  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8029FC38 0029CB98  7D 89 03 A6 */	mtctr r12
/* 8029FC3C 0029CB9C  4E 80 04 21 */	bctrl
/* 8029FC40 0029CBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029FC44 0029CBA4  7C 08 03 A6 */	mtlr r0
/* 8029FC48 0029CBA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029FC4C 0029CBAC  4E 80 00 20 */	blr

.global __dt__11CEnergyBall
__dt__11CEnergyBall:
/* 8029FC50 0029CBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029FC54 0029CBB4  7C 08 02 A6 */	mflr r0
/* 8029FC58 0029CBB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029FC5C 0029CBBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029FC60 0029CBC0  7C 9F 23 78 */	mr r31, r4
/* 8029FC64 0029CBC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8029FC68 0029CBC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8029FC6C 0029CBCC  41 82 00 84 */	beq lbl_8029FCF0
/* 8029FC70 0029CBD0  3C 60 80 3F */	lis r3, lbl_803EC0A0@ha
/* 8029FC74 0029CBD4  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 8029FC78 0029CBD8  38 03 C0 A0 */	addi r0, r3, lbl_803EC0A0@l
/* 8029FC7C 0029CBDC  90 1E 00 00 */	stw r0, 0(r30)
/* 8029FC80 0029CBE0  41 82 00 28 */	beq lbl_8029FCA8
/* 8029FC84 0029CBE4  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 8029FC88 0029CBE8  28 00 00 00 */	cmplwi r0, 0
/* 8029FC8C 0029CBEC  41 82 00 14 */	beq lbl_8029FCA0
/* 8029FC90 0029CBF0  34 7E 05 C0 */	addic. r3, r30, 0x5c0
/* 8029FC94 0029CBF4  41 82 00 0C */	beq lbl_8029FCA0
/* 8029FC98 0029CBF8  38 80 00 00 */	li r4, 0
/* 8029FC9C 0029CBFC  48 0A 11 A5 */	bl __dt__6CTokenFv
lbl_8029FCA0:
/* 8029FCA0 0029CC00  38 00 00 00 */	li r0, 0
/* 8029FCA4 0029CC04  98 1E 05 C8 */	stb r0, 0x5c8(r30)
lbl_8029FCA8:
/* 8029FCA8 0029CC08  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 8029FCAC 0029CC0C  41 82 00 28 */	beq lbl_8029FCD4
/* 8029FCB0 0029CC10  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 8029FCB4 0029CC14  28 00 00 00 */	cmplwi r0, 0
/* 8029FCB8 0029CC18  41 82 00 14 */	beq lbl_8029FCCC
/* 8029FCBC 0029CC1C  34 7E 05 A8 */	addic. r3, r30, 0x5a8
/* 8029FCC0 0029CC20  41 82 00 0C */	beq lbl_8029FCCC
/* 8029FCC4 0029CC24  38 80 00 00 */	li r4, 0
/* 8029FCC8 0029CC28  48 0A 11 79 */	bl __dt__6CTokenFv
lbl_8029FCCC:
/* 8029FCCC 0029CC2C  38 00 00 00 */	li r0, 0
/* 8029FCD0 0029CC30  98 1E 05 B0 */	stb r0, 0x5b0(r30)
lbl_8029FCD4:
/* 8029FCD4 0029CC34  7F C3 F3 78 */	mr r3, r30
/* 8029FCD8 0029CC38  38 80 00 00 */	li r4, 0
/* 8029FCDC 0029CC3C  4B DD 78 95 */	bl __dt__10CPatternedFv
/* 8029FCE0 0029CC40  7F E0 07 35 */	extsh. r0, r31
/* 8029FCE4 0029CC44  40 81 00 0C */	ble lbl_8029FCF0
/* 8029FCE8 0029CC48  7F C3 F3 78 */	mr r3, r30
/* 8029FCEC 0029CC4C  48 07 5C 45 */	bl Free__7CMemoryFPCv
lbl_8029FCF0:
/* 8029FCF0 0029CC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029FCF4 0029CC54  7F C3 F3 78 */	mr r3, r30
/* 8029FCF8 0029CC58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029FCFC 0029CC5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029FD00 0029CC60  7C 08 03 A6 */	mtlr r0
/* 8029FD04 0029CC64  38 21 00 10 */	addi r1, r1, 0x10
/* 8029FD08 0029CC68  4E 80 00 20 */	blr

.global __ct__11CEnergyBall
__ct__11CEnergyBall:
/* 8029FD0C 0029CC6C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8029FD10 0029CC70  7C 08 02 A6 */	mflr r0
/* 8029FD14 0029CC74  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8029FD18 0029CC78  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8029FD1C 0029CC7C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8029FD20 0029CC80  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8029FD24 0029CC84  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 8029FD28 0029CC88  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8029FD2C 0029CC8C  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 8029FD30 0029CC90  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 8029FD34 0029CC94  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 8029FD38 0029CC98  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8029FD3C 0029CC9C  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 8029FD40 0029CCA0  BE A1 00 64 */	stmw r21, 0x64(r1)
/* 8029FD44 0029CCA4  A0 04 00 00 */	lhz r0, 0(r4)
/* 8029FD48 0029CCA8  7D 56 53 78 */	mr r22, r10
/* 8029FD4C 0029CCAC  7C CB 33 78 */	mr r11, r6
/* 8029FD50 0029CCB0  7D 0A 43 78 */	mr r10, r8
/* 8029FD54 0029CCB4  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8029FD58 0029CCB8  7C A6 2B 78 */	mr r6, r5
/* 8029FD5C 0029CCBC  38 80 00 01 */	li r4, 1
/* 8029FD60 0029CCC0  38 00 00 07 */	li r0, 7
/* 8029FD64 0029CCC4  92 C1 00 08 */	stw r22, 8(r1)
/* 8029FD68 0029CCC8  FF 60 08 90 */	fmr f27, f1
/* 8029FD6C 0029CCCC  FF 80 10 90 */	fmr f28, f2
/* 8029FD70 0029CCD0  82 E1 00 E8 */	lwz r23, 0xe8(r1)
/* 8029FD74 0029CCD4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8029FD78 0029CCD8  FF A0 18 90 */	fmr f29, f3
/* 8029FD7C 0029CCDC  FF C0 20 90 */	fmr f30, f4
/* 8029FD80 0029CCE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8029FD84 0029CCE4  FF E0 28 90 */	fmr f31, f5
/* 8029FD88 0029CCE8  83 01 00 EC */	lwz r24, 0xec(r1)
/* 8029FD8C 0029CCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029FD90 0029CCF0  7C 75 1B 78 */	mr r21, r3
/* 8029FD94 0029CCF4  83 21 00 F0 */	lwz r25, 0xf0(r1)
/* 8029FD98 0029CCF8  7D 68 5B 78 */	mr r8, r11
/* 8029FD9C 0029CCFC  91 21 00 18 */	stw r9, 0x18(r1)
/* 8029FDA0 0029CD00  7C E9 3B 78 */	mr r9, r7
/* 8029FDA4 0029CD04  A3 41 00 F6 */	lhz r26, 0xf6(r1)
/* 8029FDA8 0029CD08  38 A1 00 20 */	addi r5, r1, 0x20
/* 8029FDAC 0029CD0C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8029FDB0 0029CD10  38 80 00 28 */	li r4, 0x28
/* 8029FDB4 0029CD14  83 61 00 F8 */	lwz r27, 0xf8(r1)
/* 8029FDB8 0029CD18  38 E0 00 00 */	li r7, 0
/* 8029FDBC 0029CD1C  83 81 00 FC */	lwz r28, 0xfc(r1)
/* 8029FDC0 0029CD20  A3 A1 01 02 */	lhz r29, 0x102(r1)
/* 8029FDC4 0029CD24  83 C1 01 04 */	lwz r30, 0x104(r1)
/* 8029FDC8 0029CD28  83 E1 01 08 */	lwz r31, 0x108(r1)
/* 8029FDCC 0029CD2C  4B DD D6 85 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 8029FDD0 0029CD30  3C 80 80 3F */	lis r4, lbl_803EC0A0@ha
/* 8029FDD4 0029CD34  38 75 05 68 */	addi r3, r21, 0x568
/* 8029FDD8 0029CD38  38 04 C0 A0 */	addi r0, r4, lbl_803EC0A0@l
/* 8029FDDC 0029CD3C  90 15 00 00 */	stw r0, 0(r21)
/* 8029FDE0 0029CD40  4B E9 EF 71 */	bl __ct__18CSteeringBehaviorsFv
/* 8029FDE4 0029CD44  C0 02 C0 F8 */	lfs f0, lbl_805ADE18@sda21(r2)
/* 8029FDE8 0029CD48  3C 60 45 4C */	lis r3, 0x454C5343@ha
/* 8029FDEC 0029CD4C  38 03 53 43 */	addi r0, r3, 0x454C5343@l
/* 8029FDF0 0029CD50  38 61 00 44 */	addi r3, r1, 0x44
/* 8029FDF4 0029CD54  D0 15 05 6C */	stfs f0, 0x56c(r21)
/* 8029FDF8 0029CD58  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8029FDFC 0029CD5C  92 F5 05 70 */	stw r23, 0x570(r21)
/* 8029FE00 0029CD60  D3 75 05 74 */	stfs f27, 0x574(r21)
/* 8029FE04 0029CD64  80 98 00 00 */	lwz r4, 0(r24)
/* 8029FE08 0029CD68  90 95 05 78 */	stw r4, 0x578(r21)
/* 8029FE0C 0029CD6C  88 98 00 04 */	lbz r4, 4(r24)
/* 8029FE10 0029CD70  98 95 05 7C */	stb r4, 0x57c(r21)
/* 8029FE14 0029CD74  C0 18 00 08 */	lfs f0, 8(r24)
/* 8029FE18 0029CD78  D0 15 05 80 */	stfs f0, 0x580(r21)
/* 8029FE1C 0029CD7C  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 8029FE20 0029CD80  D0 15 05 84 */	stfs f0, 0x584(r21)
/* 8029FE24 0029CD84  C0 18 00 10 */	lfs f0, 0x10(r24)
/* 8029FE28 0029CD88  D0 15 05 88 */	stfs f0, 0x588(r21)
/* 8029FE2C 0029CD8C  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 8029FE30 0029CD90  D0 15 05 8C */	stfs f0, 0x58c(r21)
/* 8029FE34 0029CD94  88 98 00 18 */	lbz r4, 0x18(r24)
/* 8029FE38 0029CD98  98 95 05 90 */	stb r4, 0x590(r21)
/* 8029FE3C 0029CD9C  C0 16 00 08 */	lfs f0, 8(r22)
/* 8029FE40 0029CDA0  D0 15 05 94 */	stfs f0, 0x594(r21)
/* 8029FE44 0029CDA4  D3 95 05 98 */	stfs f28, 0x598(r21)
/* 8029FE48 0029CDA8  93 35 05 9C */	stw r25, 0x59c(r21)
/* 8029FE4C 0029CDAC  B3 55 05 A0 */	sth r26, 0x5a0(r21)
/* 8029FE50 0029CDB0  93 75 05 A4 */	stw r27, 0x5a4(r21)
/* 8029FE54 0029CDB4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8029FE58 0029CDB8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8029FE5C 0029CDBC  93 81 00 50 */	stw r28, 0x50(r1)
/* 8029FE60 0029CDC0  81 84 00 00 */	lwz r12, 0(r4)
/* 8029FE64 0029CDC4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8029FE68 0029CDC8  7D 89 03 A6 */	mtctr r12
/* 8029FE6C 0029CDCC  4E 80 04 21 */	bctrl
/* 8029FE70 0029CDD0  38 61 00 3C */	addi r3, r1, 0x3c
/* 8029FE74 0029CDD4  38 81 00 44 */	addi r4, r1, 0x44
/* 8029FE78 0029CDD8  48 0A 10 31 */	bl __ct__6CTokenFRC6CToken
/* 8029FE7C 0029CDDC  38 00 00 01 */	li r0, 1
/* 8029FE80 0029CDE0  34 75 05 A8 */	addic. r3, r21, 0x5a8
/* 8029FE84 0029CDE4  98 15 05 B0 */	stb r0, 0x5b0(r21)
/* 8029FE88 0029CDE8  41 82 00 0C */	beq lbl_8029FE94
/* 8029FE8C 0029CDEC  38 81 00 3C */	addi r4, r1, 0x3c
/* 8029FE90 0029CDF0  48 0A 10 19 */	bl __ct__6CTokenFRC6CToken
lbl_8029FE94:
/* 8029FE94 0029CDF4  38 61 00 3C */	addi r3, r1, 0x3c
/* 8029FE98 0029CDF8  38 80 00 00 */	li r4, 0
/* 8029FE9C 0029CDFC  48 0A 0F A5 */	bl __dt__6CTokenFv
/* 8029FEA0 0029CE00  38 61 00 44 */	addi r3, r1, 0x44
/* 8029FEA4 0029CE04  38 80 FF FF */	li r4, -1
/* 8029FEA8 0029CE08  48 0A 0F 99 */	bl __dt__6CTokenFv
/* 8029FEAC 0029CE0C  B3 B5 05 B4 */	sth r29, 0x5b4(r21)
/* 8029FEB0 0029CE10  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 8029FEB4 0029CE14  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 8029FEB8 0029CE18  38 61 00 2C */	addi r3, r1, 0x2c
/* 8029FEBC 0029CE1C  D3 B5 05 B8 */	stfs f29, 0x5b8(r21)
/* 8029FEC0 0029CE20  38 A1 00 34 */	addi r5, r1, 0x34
/* 8029FEC4 0029CE24  D3 D5 05 BC */	stfs f30, 0x5bc(r21)
/* 8029FEC8 0029CE28  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029FECC 0029CE2C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8029FED0 0029CE30  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8029FED4 0029CE34  81 84 00 00 */	lwz r12, 0(r4)
/* 8029FED8 0029CE38  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8029FEDC 0029CE3C  7D 89 03 A6 */	mtctr r12
/* 8029FEE0 0029CE40  4E 80 04 21 */	bctrl
/* 8029FEE4 0029CE44  38 61 00 24 */	addi r3, r1, 0x24
/* 8029FEE8 0029CE48  38 81 00 2C */	addi r4, r1, 0x2c
/* 8029FEEC 0029CE4C  48 0A 0F BD */	bl __ct__6CTokenFRC6CToken
/* 8029FEF0 0029CE50  38 00 00 01 */	li r0, 1
/* 8029FEF4 0029CE54  34 75 05 C0 */	addic. r3, r21, 0x5c0
/* 8029FEF8 0029CE58  98 15 05 C8 */	stb r0, 0x5c8(r21)
/* 8029FEFC 0029CE5C  41 82 00 0C */	beq lbl_8029FF08
/* 8029FF00 0029CE60  38 81 00 24 */	addi r4, r1, 0x24
/* 8029FF04 0029CE64  48 0A 0F A5 */	bl __ct__6CTokenFRC6CToken
lbl_8029FF08:
/* 8029FF08 0029CE68  38 61 00 24 */	addi r3, r1, 0x24
/* 8029FF0C 0029CE6C  38 80 00 00 */	li r4, 0
/* 8029FF10 0029CE70  48 0A 0F 31 */	bl __dt__6CTokenFv
/* 8029FF14 0029CE74  38 61 00 2C */	addi r3, r1, 0x2c
/* 8029FF18 0029CE78  38 80 FF FF */	li r4, -1
/* 8029FF1C 0029CE7C  48 0A 0F 25 */	bl __dt__6CTokenFv
/* 8029FF20 0029CE80  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029FF24 0029CE84  7E A3 AB 78 */	mr r3, r21
/* 8029FF28 0029CE88  38 80 00 00 */	li r4, 0
/* 8029FF2C 0029CE8C  90 15 05 CC */	stw r0, 0x5cc(r21)
/* 8029FF30 0029CE90  88 1F 00 04 */	lbz r0, 4(r31)
/* 8029FF34 0029CE94  98 15 05 D0 */	stb r0, 0x5d0(r21)
/* 8029FF38 0029CE98  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8029FF3C 0029CE9C  D0 15 05 D4 */	stfs f0, 0x5d4(r21)
/* 8029FF40 0029CEA0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8029FF44 0029CEA4  D0 15 05 D8 */	stfs f0, 0x5d8(r21)
/* 8029FF48 0029CEA8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8029FF4C 0029CEAC  D0 15 05 DC */	stfs f0, 0x5dc(r21)
/* 8029FF50 0029CEB0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8029FF54 0029CEB4  D0 15 05 E0 */	stfs f0, 0x5e0(r21)
/* 8029FF58 0029CEB8  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 8029FF5C 0029CEBC  98 15 05 E4 */	stb r0, 0x5e4(r21)
/* 8029FF60 0029CEC0  D3 F5 05 E8 */	stfs f31, 0x5e8(r21)
/* 8029FF64 0029CEC4  4B DB 2E 09 */	bl CreateShadow__6CActorFb
/* 8029FF68 0029CEC8  88 15 04 E1 */	lbz r0, 0x4e1(r21)
/* 8029FF6C 0029CECC  38 60 00 00 */	li r3, 0
/* 8029FF70 0029CED0  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8029FF74 0029CED4  38 75 04 60 */	addi r3, r21, 0x460
/* 8029FF78 0029CED8  98 15 04 E1 */	stb r0, 0x4e1(r21)
/* 8029FF7C 0029CEDC  38 80 00 00 */	li r4, 0
/* 8029FF80 0029CEE0  4B F9 3D E5 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 8029FF84 0029CEE4  88 15 04 E1 */	lbz r0, 0x4e1(r21)
/* 8029FF88 0029CEE8  38 80 00 00 */	li r4, 0
/* 8029FF8C 0029CEEC  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 8029FF90 0029CEF0  7E A3 AB 78 */	mr r3, r21
/* 8029FF94 0029CEF4  98 15 04 E1 */	stb r0, 0x4e1(r21)
/* 8029FF98 0029CEF8  88 15 04 E2 */	lbz r0, 0x4e2(r21)
/* 8029FF9C 0029CEFC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8029FFA0 0029CF00  98 15 04 E2 */	stb r0, 0x4e2(r21)
/* 8029FFA4 0029CF04  88 15 04 E1 */	lbz r0, 0x4e1(r21)
/* 8029FFA8 0029CF08  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8029FFAC 0029CF0C  98 15 04 E1 */	stb r0, 0x4e1(r21)
/* 8029FFB0 0029CF10  88 15 04 E1 */	lbz r0, 0x4e1(r21)
/* 8029FFB4 0029CF14  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8029FFB8 0029CF18  98 15 04 E1 */	stb r0, 0x4e1(r21)
/* 8029FFBC 0029CF1C  88 15 04 E1 */	lbz r0, 0x4e1(r21)
/* 8029FFC0 0029CF20  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8029FFC4 0029CF24  98 15 04 E1 */	stb r0, 0x4e1(r21)
/* 8029FFC8 0029CF28  88 15 04 E1 */	lbz r0, 0x4e1(r21)
/* 8029FFCC 0029CF2C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8029FFD0 0029CF30  98 15 04 E1 */	stb r0, 0x4e1(r21)
/* 8029FFD4 0029CF34  88 15 04 E1 */	lbz r0, 0x4e1(r21)
/* 8029FFD8 0029CF38  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 8029FFDC 0029CF3C  98 15 04 E1 */	stb r0, 0x4e1(r21)
/* 8029FFE0 0029CF40  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8029FFE4 0029CF44  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8029FFE8 0029CF48  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 8029FFEC 0029CF4C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8029FFF0 0029CF50  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 8029FFF4 0029CF54  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8029FFF8 0029CF58  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 8029FFFC 0029CF5C  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 802A0000 0029CF60  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 802A0004 0029CF64  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 802A0008 0029CF68  BA A1 00 64 */	lmw r21, 0x64(r1)
/* 802A000C 0029CF6C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802A0010 0029CF70  7C 08 03 A6 */	mtlr r0
/* 802A0014 0029CF74  38 21 00 E0 */	addi r1, r1, 0xe0
/* 802A0018 0029CF78  4E 80 00 20 */	blr

.global sub_802a001c
sub_802a001c:
/* 802A001C 0029CF7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0020 0029CF80  7C 08 02 A6 */	mflr r0
/* 802A0024 0029CF84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0028 0029CF88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A002C 0029CF8C  7C 9F 23 78 */	mr r31, r4
/* 802A0030 0029CF90  93 C1 00 08 */	stw r30, 8(r1)
/* 802A0034 0029CF94  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A0038 0029CF98  41 82 00 28 */	beq lbl_802A0060
/* 802A003C 0029CF9C  3C A0 80 3F */	lis r5, lbl_803EC370@ha
/* 802A0040 0029CFA0  38 80 00 00 */	li r4, 0
/* 802A0044 0029CFA4  38 05 C3 70 */	addi r0, r5, lbl_803EC370@l
/* 802A0048 0029CFA8  90 1E 00 00 */	stw r0, 0(r30)
/* 802A004C 0029CFAC  4B DB 12 29 */	bl __dt__7CEntityFv
/* 802A0050 0029CFB0  7F E0 07 35 */	extsh. r0, r31
/* 802A0054 0029CFB4  40 81 00 0C */	ble lbl_802A0060
/* 802A0058 0029CFB8  7F C3 F3 78 */	mr r3, r30
/* 802A005C 0029CFBC  48 07 58 D5 */	bl Free__7CMemoryFPCv
lbl_802A0060:
/* 802A0060 0029CFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0064 0029CFC4  7F C3 F3 78 */	mr r3, r30
/* 802A0068 0029CFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A006C 0029CFCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A0070 0029CFD0  7C 08 03 A6 */	mtlr r0
/* 802A0074 0029CFD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0078 0029CFD8  4E 80 00 20 */	blr

.global sub_802a007c
sub_802a007c:
/* 802A007C 0029CFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0080 0029CFE0  7C 08 02 A6 */	mflr r0
/* 802A0084 0029CFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0088 0029CFE8  7C 60 1B 78 */	mr r0, r3
/* 802A008C 0029CFEC  7C 83 23 78 */	mr r3, r4
/* 802A0090 0029CFF0  81 84 00 00 */	lwz r12, 0(r4)
/* 802A0094 0029CFF4  7C 04 03 78 */	mr r4, r0
/* 802A0098 0029CFF8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802A009C 0029CFFC  7D 89 03 A6 */	mtctr r12
/* 802A00A0 0029D000  4E 80 04 21 */	bctrl
/* 802A00A4 0029D004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A00A8 0029D008  7C 08 03 A6 */	mtlr r0
/* 802A00AC 0029D00C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A00B0 0029D010  4E 80 00 20 */	blr

.global sub_802a00b4
sub_802a00b4:
/* 802A00B4 0029D014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A00B8 0029D018  7C 08 02 A6 */	mflr r0
/* 802A00BC 0029D01C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A00C0 0029D020  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A00C4 0029D024  7C 7F 1B 78 */	mr r31, r3
/* 802A00C8 0029D028  88 03 00 58 */	lbz r0, 0x58(r3)
/* 802A00CC 0029D02C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802A00D0 0029D030  41 82 00 1C */	beq lbl_802A00EC
/* 802A00D4 0029D034  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 802A00D8 0029D038  4B D7 18 6D */	bl DecrementPhazon__7CPlayerFv
/* 802A00DC 0029D03C  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 802A00E0 0029D040  38 60 00 00 */	li r3, 0
/* 802A00E4 0029D044  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802A00E8 0029D048  98 1F 00 58 */	stb r0, 0x58(r31)
lbl_802A00EC:
/* 802A00EC 0029D04C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A00F0 0029D050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A00F4 0029D054  7C 08 03 A6 */	mtlr r0
/* 802A00F8 0029D058  38 21 00 10 */	addi r1, r1, 0x10
/* 802A00FC 0029D05C  4E 80 00 20 */	blr

.global sub_802a0100
sub_802a0100:
/* 802A0100 0029D060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0104 0029D064  7C 08 02 A6 */	mflr r0
/* 802A0108 0029D068  2C 04 00 22 */	cmpwi r4, 0x22
/* 802A010C 0029D06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0110 0029D070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A0114 0029D074  7C 7F 1B 78 */	mr r31, r3
/* 802A0118 0029D078  41 82 00 30 */	beq lbl_802A0148
/* 802A011C 0029D07C  40 80 00 34 */	bge lbl_802A0150
/* 802A0120 0029D080  2C 04 00 21 */	cmpwi r4, 0x21
/* 802A0124 0029D084  40 80 00 08 */	bge lbl_802A012C
/* 802A0128 0029D088  48 00 00 28 */	b lbl_802A0150
lbl_802A012C:
/* 802A012C 0029D08C  80 66 08 4C */	lwz r3, 0x84c(r6)
/* 802A0130 0029D090  4B D7 18 2D */	bl IncrementPhazon__7CPlayerFv
/* 802A0134 0029D094  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 802A0138 0029D098  38 60 00 01 */	li r3, 1
/* 802A013C 0029D09C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802A0140 0029D0A0  98 1F 00 58 */	stb r0, 0x58(r31)
/* 802A0144 0029D0A4  48 00 00 0C */	b lbl_802A0150
lbl_802A0148:
/* 802A0148 0029D0A8  7C C4 33 78 */	mr r4, r6
/* 802A014C 0029D0AC  4B FF FF 69 */	bl sub_802a00b4
lbl_802A0150:
/* 802A0150 0029D0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0154 0029D0B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A0158 0029D0B8  7C 08 03 A6 */	mtlr r0
/* 802A015C 0029D0BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0160 0029D0C0  4E 80 00 20 */	blr

.global sub_802a0164
sub_802a0164:
/* 802A0164 0029D0C4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802A0168 0029D0C8  7C 08 02 A6 */	mflr r0
/* 802A016C 0029D0CC  90 01 00 84 */	stw r0, 0x84(r1)
/* 802A0170 0029D0D0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802A0174 0029D0D4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 802A0178 0029D0D8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802A017C 0029D0DC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 802A0180 0029D0E0  88 03 00 30 */	lbz r0, 0x30(r3)
/* 802A0184 0029D0E4  FF E0 08 90 */	fmr f31, f1
/* 802A0188 0029D0E8  7C 7E 1B 78 */	mr r30, r3
/* 802A018C 0029D0EC  7C 9F 23 78 */	mr r31, r4
/* 802A0190 0029D0F0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802A0194 0029D0F4  41 82 00 C8 */	beq lbl_802A025C
/* 802A0198 0029D0F8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 802A019C 0029D0FC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 802A01A0 0029D100  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802A01A4 0029D104  40 81 00 24 */	ble lbl_802A01C8
/* 802A01A8 0029D108  4B FF FF 0D */	bl sub_802a00b4
/* 802A01AC 0029D10C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 802A01B0 0029D110  7F E3 FB 78 */	mr r3, r31
/* 802A01B4 0029D114  38 81 00 24 */	addi r4, r1, 0x24
/* 802A01B8 0029D118  B0 01 00 20 */	sth r0, 0x20(r1)
/* 802A01BC 0029D11C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 802A01C0 0029D120  4B DA C0 AD */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 802A01C4 0029D124  48 00 00 8C */	b lbl_802A0250
lbl_802A01C8:
/* 802A01C8 0029D128  80 AD 9A 48 */	lwz r5, lbl_805A8608@sda21(r13)
/* 802A01CC 0029D12C  38 60 00 00 */	li r3, 0
/* 802A01D0 0029D130  38 80 00 01 */	li r4, 1
/* 802A01D4 0029D134  48 0E 9D 21 */	bl __shl2i
/* 802A01D8 0029D138  38 A0 00 00 */	li r5, 0
/* 802A01DC 0029D13C  38 00 00 03 */	li r0, 3
/* 802A01E0 0029D140  90 81 00 2C */	stw r4, 0x2c(r1)
/* 802A01E4 0029D144  FC 20 F8 90 */	fmr f1, f31
/* 802A01E8 0029D148  38 9E 00 34 */	addi r4, r30, 0x34
/* 802A01EC 0029D14C  90 61 00 28 */	stw r3, 0x28(r1)
/* 802A01F0 0029D150  38 61 00 40 */	addi r3, r1, 0x40
/* 802A01F4 0029D154  90 A1 00 34 */	stw r5, 0x34(r1)
/* 802A01F8 0029D158  90 A1 00 30 */	stw r5, 0x30(r1)
/* 802A01FC 0029D15C  90 01 00 38 */	stw r0, 0x38(r1)
/* 802A0200 0029D160  A0 1E 00 08 */	lhz r0, 8(r30)
/* 802A0204 0029D164  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802A0208 0029D168  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 802A020C 0029D16C  B0 01 00 08 */	sth r0, 8(r1)
/* 802A0210 0029D170  A0 A5 00 08 */	lhz r5, 8(r5)
/* 802A0214 0029D174  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 802A0218 0029D178  A0 1E 00 08 */	lhz r0, 8(r30)
/* 802A021C 0029D17C  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 802A0220 0029D180  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802A0224 0029D184  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 802A0228 0029D188  4B E2 32 21 */	bl __ct__11CDamageInfoFRC11CDamageInfof
/* 802A022C 0029D18C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 802A0230 0029D190  7F E3 FB 78 */	mr r3, r31
/* 802A0234 0029D194  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 802A0238 0029D198  38 A1 00 14 */	addi r5, r1, 0x14
/* 802A023C 0029D19C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802A0240 0029D1A0  38 C1 00 0C */	addi r6, r1, 0xc
/* 802A0244 0029D1A4  38 E1 00 40 */	addi r7, r1, 0x40
/* 802A0248 0029D1A8  39 01 00 28 */	addi r8, r1, 0x28
/* 802A024C 0029D1AC  4B DA 9E 55 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_802A0250:
/* 802A0250 0029D1B0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 802A0254 0029D1B4  EC 00 F8 2A */	fadds f0, f0, f31
/* 802A0258 0029D1B8  D0 1E 00 54 */	stfs f0, 0x54(r30)
lbl_802A025C:
/* 802A025C 0029D1BC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 802A0260 0029D1C0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802A0264 0029D1C4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 802A0268 0029D1C8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802A026C 0029D1CC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 802A0270 0029D1D0  7C 08 03 A6 */	mtlr r0
/* 802A0274 0029D1D4  38 21 00 80 */	addi r1, r1, 0x80
/* 802A0278 0029D1D8  4E 80 00 20 */	blr

.global sub_802a027c
sub_802a027c:
/* 802A027C 0029D1DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A0280 0029D1E0  7C 08 02 A6 */	mflr r0
/* 802A0284 0029D1E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A0288 0029D1E8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802A028C 0029D1EC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802A0290 0029D1F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A0294 0029D1F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A0298 0029D1F8  A0 04 00 00 */	lhz r0, 0(r4)
/* 802A029C 0029D1FC  FF E0 08 90 */	fmr f31, f1
/* 802A02A0 0029D200  7C 7E 1B 78 */	mr r30, r3
/* 802A02A4 0029D204  7D 1F 43 78 */	mr r31, r8
/* 802A02A8 0029D208  B0 01 00 08 */	sth r0, 8(r1)
/* 802A02AC 0029D20C  38 81 00 08 */	addi r4, r1, 8
/* 802A02B0 0029D210  4B DB 10 75 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802A02B4 0029D214  3C 60 80 3F */	lis r3, lbl_803EC370@ha
/* 802A02B8 0029D218  C0 02 C1 08 */	lfs f0, lbl_805ADE28@sda21(r2)
/* 802A02BC 0029D21C  38 03 C3 70 */	addi r0, r3, lbl_803EC370@l
/* 802A02C0 0029D220  38 80 00 00 */	li r4, 0
/* 802A02C4 0029D224  90 1E 00 00 */	stw r0, 0(r30)
/* 802A02C8 0029D228  7F C3 F3 78 */	mr r3, r30
/* 802A02CC 0029D22C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802A02D0 0029D230  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802A02D4 0029D234  88 1F 00 04 */	lbz r0, 4(r31)
/* 802A02D8 0029D238  98 1E 00 38 */	stb r0, 0x38(r30)
/* 802A02DC 0029D23C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802A02E0 0029D240  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 802A02E4 0029D244  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802A02E8 0029D248  D0 3E 00 40 */	stfs f1, 0x40(r30)
/* 802A02EC 0029D24C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 802A02F0 0029D250  D0 3E 00 44 */	stfs f1, 0x44(r30)
/* 802A02F4 0029D254  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 802A02F8 0029D258  D0 3E 00 48 */	stfs f1, 0x48(r30)
/* 802A02FC 0029D25C  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 802A0300 0029D260  98 1E 00 4C */	stb r0, 0x4c(r30)
/* 802A0304 0029D264  D3 FE 00 50 */	stfs f31, 0x50(r30)
/* 802A0308 0029D268  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 802A030C 0029D26C  88 1E 00 58 */	lbz r0, 0x58(r30)
/* 802A0310 0029D270  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802A0314 0029D274  98 1E 00 58 */	stb r0, 0x58(r30)
/* 802A0318 0029D278  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802A031C 0029D27C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A0320 0029D280  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802A0324 0029D284  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A0328 0029D288  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A032C 0029D28C  7C 08 03 A6 */	mtlr r0
/* 802A0330 0029D290  38 21 00 30 */	addi r1, r1, 0x30
/* 802A0334 0029D294  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ADE18
lbl_805ADE18:
	# ROM: 0x3FA6B8
	.4byte 0

.global lbl_805ADE1C
lbl_805ADE1C:
	# ROM: 0x3FA6BC
	.float 1.0

.global lbl_805ADE20
lbl_805ADE20:
	# ROM: 0x3FA6C0
	.float 2.5

.global lbl_805ADE24
lbl_805ADE24:
	# ROM: 0x3FA6C4
	.float 0.125

.global lbl_805ADE28
lbl_805ADE28:
	# ROM: 0x3FA6C8
	.4byte 0
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D5EB8
lbl_803D5EB8:
	# ROM: 0x3D2EB8
	.asciz "??(??)"
	.byte 0x50
	.asciz "lasmaElectricFx"
	.asciz "PlasmaVisorFx"
	.byte 0x53, 0x75
	.asciz "sDamage"

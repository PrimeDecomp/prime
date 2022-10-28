.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CIceSheegoth_cpp

.section .data
.balign 8

.global lbl_803E4728
lbl_803E4728:
	# ROM: 0x3E1728
	.4byte 0
	.4byte 0
	.4byte __dt__12CIceSheegothFv
	.4byte Accept__12CIceSheegothFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__12CIceSheegothFfR13CStateManager
	.4byte AcceptScriptMsg__12CIceSheegothF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__12CIceSheegothCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__12CIceSheegothCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__12CIceSheegothCFv
	.4byte GetDamageVulnerability__12CIceSheegothCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__12CIceSheegothCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__12CIceSheegothCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__12CIceSheegothCFRC13CStateManager
	.4byte DoUserAnimEvent__12CIceSheegothFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__12CIceSheegothCFv
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
	.4byte Patrol__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte Deactivate__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte Attack__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte Flinch__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__3CAiFR13CStateManager9EStateMsgf
	.4byte Approach__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__12CIceSheegothR13CStateManager9EStateMsgf
	.4byte SpecialAttack__12CIceSheegothR13CStateManager9EStateMsgf
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
	.4byte Leash__12CIceSheegothR13CStateManagerf
	.4byte OffLine__12CIceSheegothR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__12CIceSheegothR13CStateManagerf
	.4byte InRange__10CPatternedFR13CStateManagerf
	.4byte InMaxRange__12CIceSheegothR13CStateManagerf
	.4byte InDetectionRange__12CIceSheegothR13CStateManagerf
	.4byte SpotPlayer__12CIceSheegothR13CStateManagerf
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
	.4byte sub_801a3874
	.4byte ShouldAttack__12CIceSheegothR13CStateManagerf
	.4byte ShouldDoubleSnap__12CIceSheegothR13CStateManagerf
	.4byte InPosition__12CIceSheegothR13CStateManagerf
	.4byte ShouldTurn__12CIceSheegothR13CStateManagerf
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
	.4byte AggressionCheck__12CIceSheegothR13CStateManagerf
	.4byte AttackOver__3CAiFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__12CIceSheegothR13CStateManagerf
	.4byte ShouldFlinch__12CIceSheegothR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__3CAiFR13CStateManagerf
	.4byte ShotAt__12CIceSheegothR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__3CAiFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__3CAiFR13CStateManagerf
	.4byte StartAttack__3CAiFR13CStateManagerf
	.4byte BreakAttack__3CAiFR13CStateManagerf
	.4byte ShouldStrafe__3CAiFR13CStateManagerf
	.4byte ShouldSpecialAttack__12CIceSheegothR13CStateManagerf
	.4byte LostInterest__12CIceSheegothR13CStateManagerf
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
	.4byte GetSearchPath__12CIceSheegothFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__12CIceSheegothCFv
	.4byte ProjectileInfo__12CIceSheegothFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E49F4
lbl_803E49F4:
	# ROM: 0x3E19F4
	.4byte lbl_801A4560
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A489C
	.4byte lbl_801A48D8
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A4884
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A490C
	.4byte lbl_801A4890

.global lbl_803E4A54
lbl_803E4A54:
	# ROM: 0x3E1A54
	.4byte lbl_801A570C
	.4byte lbl_801A5138
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A514C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A51B8
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A5208
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A5068
	.4byte lbl_801A5160
	.4byte lbl_801A51CC
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A52A8
	.4byte lbl_801A550C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A570C
	.4byte lbl_801A56F4

.section .bss
.balign 8

.comm lbl_80572018, 0xC, 4

.section .sdata
.balign 8

.global lbl_805A7BB8
lbl_805A7BB8:
	# ROM: 0x3F5558
	.4byte 0x00000013

.global lbl_805A7BBC
lbl_805A7BBC:
	# ROM: 0x3F555C
	.4byte 0

.global lbl_805A7BC0
lbl_805A7BC0:
	# ROM: 0x3F5560
	.4byte 0

.global lbl_805A7BC4
lbl_805A7BC4:
	# ROM: 0x3F5564
	.4byte 0x00000023

.global lbl_805A7BC8
lbl_805A7BC8:
	# ROM: 0x3F5568
	.4byte 0x00000021

.global lbl_805A7BCC
lbl_805A7BCC:
	# ROM: 0x3F556C
	.4byte 0x00000015

.global lbl_805A7BD0
lbl_805A7BD0:
	# ROM: 0x3F5570
	.4byte 0x00000013

.global lbl_805A7BD4
lbl_805A7BD4:
	# ROM: 0x3F5574
	.4byte 0x0000002F

.global lbl_805A7BD8
lbl_805A7BD8:
	# ROM: 0x3F5578
	.4byte 0x0000001C

.global lbl_805A7BDC
lbl_805A7BDC:
	# ROM: 0x3F557C
	.4byte 0x00000020

.global lbl_805A7BE0
lbl_805A7BE0:
	# ROM: 0x3F5580
	.4byte 0x00000035

.global lbl_805A7BE4
lbl_805A7BE4:
	# ROM: 0x3F5584
	.4byte 0x00000015

.global lbl_805A7BE8
lbl_805A7BE8:
	# ROM: 0x3F5588
	.4byte 0
	.4byte 0

.section .text, "ax"

.global GetSearchPath__12CIceSheegothFv
GetSearchPath__12CIceSheegothFv:
/* 8019E240 0019B1A0  80 03 09 28 */	lwz r0, 0x928(r3)
/* 8019E244 0019B1A4  2C 00 00 00 */	cmpwi r0, 0
/* 8019E248 0019B1A8  40 82 00 0C */	bne lbl_8019E254
/* 8019E24C 0019B1AC  38 63 07 60 */	addi r3, r3, 0x760
/* 8019E250 0019B1B0  4E 80 00 20 */	blr
lbl_8019E254:
/* 8019E254 0019B1B4  38 63 08 44 */	addi r3, r3, 0x844
/* 8019E258 0019B1B8  4E 80 00 20 */	blr

.global GetCollisionPrimitive__12CIceSheegothCFv
GetCollisionPrimitive__12CIceSheegothCFv:
/* 8019E25C 0019B1BC  38 63 0A 30 */	addi r3, r3, 0xa30
/* 8019E260 0019B1C0  4E 80 00 20 */	blr

.global GetGravityConstant__12CIceSheegothCFv
GetGravityConstant__12CIceSheegothCFv:
/* 8019E264 0019B1C4  C0 22 A7 50 */	lfs f1, lbl_805AC470@sda21(r2)
/* 8019E268 0019B1C8  C0 02 96 A0 */	lfs f0, skGravityConstant__13CPhysicsActor@sda21(r2)
/* 8019E26C 0019B1CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8019E270 0019B1D0  4E 80 00 20 */	blr

.global GetSortingBounds__12CIceSheegothCFRC13CStateManager
GetSortingBounds__12CIceSheegothCFRC13CStateManager:
/* 8019E274 0019B1D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8019E278 0019B1D8  7C 08 02 A6 */	mflr r0
/* 8019E27C 0019B1DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8019E280 0019B1E0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8019E284 0019B1E4  7C 7F 1B 78 */	mr r31, r3
/* 8019E288 0019B1E8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8019E28C 0019B1EC  4B EB 53 55 */	bl GetSortingBounds__6CActorCFRC13CStateManager
/* 8019E290 0019B1F0  C0 A1 00 2C */	lfs f5, 0x2c(r1)
/* 8019E294 0019B1F4  38 61 00 20 */	addi r3, r1, 0x20
/* 8019E298 0019B1F8  C0 81 00 30 */	lfs f4, 0x30(r1)
/* 8019E29C 0019B1FC  38 81 00 44 */	addi r4, r1, 0x44
/* 8019E2A0 0019B200  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 8019E2A4 0019B204  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8019E2A8 0019B208  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8019E2AC 0019B20C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8019E2B0 0019B210  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 8019E2B4 0019B214  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 8019E2B8 0019B218  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8019E2BC 0019B21C  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8019E2C0 0019B220  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8019E2C4 0019B224  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8019E2C8 0019B228  48 19 93 45 */	bl GetCenterPoint__6CAABoxCFv
/* 8019E2CC 0019B22C  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 8019E2D0 0019B230  7F E3 FB 78 */	mr r3, r31
/* 8019E2D4 0019B234  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8019E2D8 0019B238  38 81 00 14 */	addi r4, r1, 0x14
/* 8019E2DC 0019B23C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8019E2E0 0019B240  38 A1 00 08 */	addi r5, r1, 8
/* 8019E2E4 0019B244  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8019E2E8 0019B248  EC 63 10 28 */	fsubs f3, f3, f2
/* 8019E2EC 0019B24C  C0 82 A7 54 */	lfs f4, lbl_805AC474@sda21(r2)
/* 8019E2F0 0019B250  EC 41 00 28 */	fsubs f2, f1, f0
/* 8019E2F4 0019B254  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8019E2F8 0019B258  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8019E2FC 0019B25C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8019E300 0019B260  C1 01 00 20 */	lfs f8, 0x20(r1)
/* 8019E304 0019B264  EC 01 00 28 */	fsubs f0, f1, f0
/* 8019E308 0019B268  EC 28 18 2A */	fadds f1, f8, f3
/* 8019E30C 0019B26C  C0 C1 00 24 */	lfs f6, 0x24(r1)
/* 8019E310 0019B270  EC A4 00 B2 */	fmuls f5, f4, f2
/* 8019E314 0019B274  C0 E1 00 28 */	lfs f7, 0x28(r1)
/* 8019E318 0019B278  EC 84 00 32 */	fmuls f4, f4, f0
/* 8019E31C 0019B27C  EC 08 18 28 */	fsubs f0, f8, f3
/* 8019E320 0019B280  EC 66 28 2A */	fadds f3, f6, f5
/* 8019E324 0019B284  D0 21 00 08 */	stfs f1, 8(r1)
/* 8019E328 0019B288  EC 47 20 2A */	fadds f2, f7, f4
/* 8019E32C 0019B28C  EC 26 28 28 */	fsubs f1, f6, f5
/* 8019E330 0019B290  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8019E334 0019B294  EC 07 20 28 */	fsubs f0, f7, f4
/* 8019E338 0019B298  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8019E33C 0019B29C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8019E340 0019B2A0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8019E344 0019B2A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8019E348 0019B2A8  48 19 A1 C1 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8019E34C 0019B2AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8019E350 0019B2B0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8019E354 0019B2B4  7C 08 03 A6 */	mtlr r0
/* 8019E358 0019B2B8  38 21 00 70 */	addi r1, r1, 0x70
/* 8019E35C 0019B2BC  4E 80 00 20 */	blr

.global sub_8019e360
sub_8019e360:
/* 8019E360 0019B2C0  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8019E364 0019B2C4  7C 08 02 A6 */	mflr r0
/* 8019E368 0019B2C8  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8019E36C 0019B2CC  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 8019E370 0019B2D0  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, qr0
/* 8019E374 0019B2D4  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 8019E378 0019B2D8  F3 C1 01 98 */	psq_st f30, 408(r1), 0, qr0
/* 8019E37C 0019B2DC  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 8019E380 0019B2E0  F3 A1 01 88 */	psq_st f29, 392(r1), 0, qr0
/* 8019E384 0019B2E4  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 8019E388 0019B2E8  F3 81 01 78 */	psq_st f28, 376(r1), 0, qr0
/* 8019E38C 0019B2EC  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 8019E390 0019B2F0  F3 61 01 68 */	psq_st f27, 360(r1), 0, qr0
/* 8019E394 0019B2F4  DB 41 01 50 */	stfd f26, 0x150(r1)
/* 8019E398 0019B2F8  F3 41 01 58 */	psq_st f26, 344(r1), 0, qr0
/* 8019E39C 0019B2FC  BF 61 01 3C */	stmw r27, 0x13c(r1)
/* 8019E3A0 0019B300  7C 7E 1B 78 */	mr r30, r3
/* 8019E3A4 0019B304  FF 40 08 90 */	fmr f26, f1
/* 8019E3A8 0019B308  80 A3 04 50 */	lwz r5, 0x450(r3)
/* 8019E3AC 0019B30C  7C 9F 23 78 */	mr r31, r4
/* 8019E3B0 0019B310  80 05 02 EC */	lwz r0, 0x2ec(r5)
/* 8019E3B4 0019B314  2C 00 00 00 */	cmpwi r0, 0
/* 8019E3B8 0019B318  41 82 02 F4 */	beq lbl_8019E6AC
/* 8019E3BC 0019B31C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019E3C0 0019B320  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 8019E3C4 0019B324  7D 89 03 A6 */	mtctr r12
/* 8019E3C8 0019B328  4E 80 04 21 */	bctrl
/* 8019E3CC 0019B32C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8019E3D0 0019B330  41 82 02 DC */	beq lbl_8019E6AC
/* 8019E3D4 0019B334  83 BF 08 4C */	lwz r29, 0x84c(r31)
/* 8019E3D8 0019B338  80 1D 02 F8 */	lwz r0, 0x2f8(r29)
/* 8019E3DC 0019B33C  2C 00 00 01 */	cmpwi r0, 1
/* 8019E3E0 0019B340  41 82 02 CC */	beq lbl_8019E6AC
/* 8019E3E4 0019B344  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 8019E3E8 0019B348  38 61 00 BC */	addi r3, r1, 0xbc
/* 8019E3EC 0019B34C  38 BE 00 34 */	addi r5, r30, 0x34
/* 8019E3F0 0019B350  4B F7 73 C5 */	bl GetBounds__10CModelDataCFRC12CTransform4f
/* 8019E3F4 0019B354  C0 A1 00 BC */	lfs f5, 0xbc(r1)
/* 8019E3F8 0019B358  7F A4 EB 78 */	mr r4, r29
/* 8019E3FC 0019B35C  C0 81 00 C0 */	lfs f4, 0xc0(r1)
/* 8019E400 0019B360  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8019E404 0019B364  C0 61 00 C4 */	lfs f3, 0xc4(r1)
/* 8019E408 0019B368  C0 41 00 C8 */	lfs f2, 0xc8(r1)
/* 8019E40C 0019B36C  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 8019E410 0019B370  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8019E414 0019B374  D0 A1 00 EC */	stfs f5, 0xec(r1)
/* 8019E418 0019B378  D0 81 00 F0 */	stfs f4, 0xf0(r1)
/* 8019E41C 0019B37C  D0 61 00 F4 */	stfs f3, 0xf4(r1)
/* 8019E420 0019B380  D0 41 00 F8 */	stfs f2, 0xf8(r1)
/* 8019E424 0019B384  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 8019E428 0019B388  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8019E42C 0019B38C  4B F7 C5 01 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8019E430 0019B390  C0 A1 00 A4 */	lfs f5, 0xa4(r1)
/* 8019E434 0019B394  38 61 00 EC */	addi r3, r1, 0xec
/* 8019E438 0019B398  C0 81 00 A8 */	lfs f4, 0xa8(r1)
/* 8019E43C 0019B39C  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8019E440 0019B3A0  C0 61 00 AC */	lfs f3, 0xac(r1)
/* 8019E444 0019B3A4  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 8019E448 0019B3A8  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 8019E44C 0019B3AC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8019E450 0019B3B0  D0 A1 00 D4 */	stfs f5, 0xd4(r1)
/* 8019E454 0019B3B4  D0 81 00 D8 */	stfs f4, 0xd8(r1)
/* 8019E458 0019B3B8  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 8019E45C 0019B3BC  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 8019E460 0019B3C0  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 8019E464 0019B3C4  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 8019E468 0019B3C8  48 19 97 1D */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 8019E46C 0019B3CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8019E470 0019B3D0  41 82 02 3C */	beq lbl_8019E6AC
/* 8019E474 0019B3D4  80 DE 00 64 */	lwz r6, 0x64(r30)
/* 8019E478 0019B3D8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8019E47C 0019B3DC  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 8019E480 0019B3E0  C0 02 A7 58 */	lfs f0, lbl_805AC478@sda21(r2)
/* 8019E484 0019B3E4  C0 A6 00 04 */	lfs f5, 4(r6)
/* 8019E488 0019B3E8  FC 20 D0 90 */	fmr f1, f26
/* 8019E48C 0019B3EC  C0 C6 00 00 */	lfs f6, 0(r6)
/* 8019E490 0019B3F0  7F C4 F3 78 */	mr r4, r30
/* 8019E494 0019B3F4  C0 86 00 08 */	lfs f4, 8(r6)
/* 8019E498 0019B3F8  EF 80 01 72 */	fmuls f28, f0, f5
/* 8019E49C 0019B3FC  C0 65 00 00 */	lfs f3, 0(r5)
/* 8019E4A0 0019B400  C0 45 00 04 */	lfs f2, 4(r5)
/* 8019E4A4 0019B404  38 61 01 04 */	addi r3, r1, 0x104
/* 8019E4A8 0019B408  C0 05 00 08 */	lfs f0, 8(r5)
/* 8019E4AC 0019B40C  D0 C1 00 4C */	stfs f6, 0x4c(r1)
/* 8019E4B0 0019B410  C3 62 A7 5C */	lfs f27, lbl_805AC47C@sda21(r2)
/* 8019E4B4 0019B414  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 8019E4B8 0019B418  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 8019E4BC 0019B41C  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 8019E4C0 0019B420  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 8019E4C4 0019B424  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8019E4C8 0019B428  4B F7 D7 E9 */	bl PredictMotion__13CPhysicsActorCFf
/* 8019E4CC 0019B42C  3B 9E 0B 20 */	addi r28, r30, 0xb20
/* 8019E4D0 0019B430  C3 E1 01 04 */	lfs f31, 0x104(r1)
/* 8019E4D4 0019B434  C3 C1 01 08 */	lfs f30, 0x108(r1)
/* 8019E4D8 0019B438  7F 9B E3 78 */	mr r27, r28
/* 8019E4DC 0019B43C  C3 A1 01 0C */	lfs f29, 0x10c(r1)
/* 8019E4E0 0019B440  48 00 00 C0 */	b lbl_8019E5A0
lbl_8019E4E4:
/* 8019E4E4 0019B444  88 1B 00 00 */	lbz r0, 0(r27)
/* 8019E4E8 0019B448  7F E5 FB 78 */	mr r5, r31
/* 8019E4EC 0019B44C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8019E4F0 0019B450  38 C1 00 08 */	addi r6, r1, 8
/* 8019E4F4 0019B454  98 01 00 08 */	stb r0, 8(r1)
/* 8019E4F8 0019B458  80 9E 0A 2C */	lwz r4, 0xa2c(r30)
/* 8019E4FC 0019B45C  48 00 8B 99 */	bl sub_801a7094
/* 8019E500 0019B460  88 01 00 48 */	lbz r0, 0x48(r1)
/* 8019E504 0019B464  28 00 00 00 */	cmplwi r0, 0
/* 8019E508 0019B468  98 01 00 94 */	stb r0, 0x94(r1)
/* 8019E50C 0019B46C  41 82 00 24 */	beq lbl_8019E530
/* 8019E510 0019B470  34 61 00 88 */	addic. r3, r1, 0x88
/* 8019E514 0019B474  41 82 00 1C */	beq lbl_8019E530
/* 8019E518 0019B478  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8019E51C 0019B47C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8019E520 0019B480  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8019E524 0019B484  D0 03 00 04 */	stfs f0, 4(r3)
/* 8019E528 0019B488  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8019E52C 0019B48C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8019E530:
/* 8019E530 0019B490  88 01 00 94 */	lbz r0, 0x94(r1)
/* 8019E534 0019B494  38 60 00 00 */	li r3, 0
/* 8019E538 0019B498  98 61 00 48 */	stb r3, 0x48(r1)
/* 8019E53C 0019B49C  28 00 00 00 */	cmplwi r0, 0
/* 8019E540 0019B4A0  41 82 00 54 */	beq lbl_8019E594
/* 8019E544 0019B4A4  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 8019E548 0019B4A8  38 61 00 7C */	addi r3, r1, 0x7c
/* 8019E54C 0019B4AC  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 8019E550 0019B4B0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8019E554 0019B4B4  EC 42 F0 2A */	fadds f2, f2, f30
/* 8019E558 0019B4B8  EC 21 E8 2A */	fadds f1, f1, f29
/* 8019E55C 0019B4BC  EC 00 F8 2A */	fadds f0, f0, f31
/* 8019E560 0019B4C0  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 8019E564 0019B4C4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8019E568 0019B4C8  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8019E56C 0019B4CC  48 17 63 4D */	bl Magnitude__9CVector3fCFv
/* 8019E570 0019B4D0  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 8019E574 0019B4D4  40 81 00 20 */	ble lbl_8019E594
/* 8019E578 0019B4D8  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 8019E57C 0019B4DC  FF 60 08 90 */	fmr f27, f1
/* 8019E580 0019B4E0  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8019E584 0019B4E4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8019E588 0019B4E8  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8019E58C 0019B4EC  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8019E590 0019B4F0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
lbl_8019E594:
/* 8019E594 0019B4F4  38 00 00 00 */	li r0, 0
/* 8019E598 0019B4F8  3B 7B 00 01 */	addi r27, r27, 1
/* 8019E59C 0019B4FC  98 01 00 94 */	stb r0, 0x94(r1)
lbl_8019E5A0:
/* 8019E5A0 0019B500  80 1E 0B 1C */	lwz r0, 0xb1c(r30)
/* 8019E5A4 0019B504  7C 1C 02 14 */	add r0, r28, r0
/* 8019E5A8 0019B508  7C 1B 00 40 */	cmplw r27, r0
/* 8019E5AC 0019B50C  40 82 FF 38 */	bne lbl_8019E4E4
/* 8019E5B0 0019B510  FC 1B E0 40 */	fcmpo cr0, f27, f28
/* 8019E5B4 0019B514  40 81 00 F8 */	ble lbl_8019E6AC
/* 8019E5B8 0019B518  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 8019E5BC 0019B51C  EF BB E0 28 */	fsubs f29, f27, f28
/* 8019E5C0 0019B520  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8019E5C4 0019B524  38 61 00 24 */	addi r3, r1, 0x24
/* 8019E5C8 0019B528  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8019E5CC 0019B52C  38 81 00 98 */	addi r4, r1, 0x98
/* 8019E5D0 0019B530  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 8019E5D4 0019B534  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8019E5D8 0019B538  EF E4 00 28 */	fsubs f31, f4, f0
/* 8019E5DC 0019B53C  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 8019E5E0 0019B540  EF 83 10 28 */	fsubs f28, f3, f2
/* 8019E5E4 0019B544  EF 61 00 28 */	fsubs f27, f1, f0
/* 8019E5E8 0019B548  48 17 62 69 */	bl AsNormalized__9CVector3fCFv
/* 8019E5EC 0019B54C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8019E5F0 0019B550  EC 1C 07 32 */	fmuls f0, f28, f28
/* 8019E5F4 0019B554  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8019E5F8 0019B558  38 61 00 18 */	addi r3, r1, 0x18
/* 8019E5FC 0019B55C  EC 5D 00 72 */	fmuls f2, f29, f1
/* 8019E600 0019B560  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8019E604 0019B564  EC 7D 00 F2 */	fmuls f3, f29, f3
/* 8019E608 0019B568  EC 9D 00 72 */	fmuls f4, f29, f1
/* 8019E60C 0019B56C  38 9E 00 34 */	addi r4, r30, 0x34
/* 8019E610 0019B570  EC 3C 00 B2 */	fmuls f1, f28, f2
/* 8019E614 0019B574  EC 1F 07 FA */	fmadds f0, f31, f31, f0
/* 8019E618 0019B578  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8019E61C 0019B57C  38 A1 00 70 */	addi r5, r1, 0x70
/* 8019E620 0019B580  EC 3F 08 FA */	fmadds f1, f31, f3, f1
/* 8019E624 0019B584  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8019E628 0019B588  EC 1B 06 FA */	fmadds f0, f27, f27, f0
/* 8019E62C 0019B58C  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 8019E630 0019B590  EC 3B 09 3A */	fmadds f1, f27, f4, f1
/* 8019E634 0019B594  EC 01 00 24 */	fdivs f0, f1, f0
/* 8019E638 0019B598  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8019E63C 0019B59C  EC 20 07 32 */	fmuls f1, f0, f28
/* 8019E640 0019B5A0  EC 00 06 F2 */	fmuls f0, f0, f27
/* 8019E644 0019B5A4  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8019E648 0019B5A8  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8019E64C 0019B5AC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8019E650 0019B5B0  48 17 43 D5 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8019E654 0019B5B4  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 8019E658 0019B5B8  FC 20 D0 90 */	fmr f1, f26
/* 8019E65C 0019B5BC  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8019E660 0019B5C0  7F C4 F3 78 */	mr r4, r30
/* 8019E664 0019B5C4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8019E668 0019B5C8  38 61 00 0C */	addi r3, r1, 0xc
/* 8019E66C 0019B5CC  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 8019E670 0019B5D0  38 A1 00 64 */	addi r5, r1, 0x64
/* 8019E674 0019B5D4  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8019E678 0019B5D8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8019E67C 0019B5DC  4B F7 C9 8D */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8019E680 0019B5E0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8019E684 0019B5E4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8019E688 0019B5E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8019E68C 0019B5EC  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8019E690 0019B5F0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8019E694 0019B5F4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8019E698 0019B5F8  4B E7 CE 9D */	bl Identity__10CAxisAngleFv
/* 8019E69C 0019B5FC  7C 65 1B 78 */	mr r5, r3
/* 8019E6A0 0019B600  7F C3 F3 78 */	mr r3, r30
/* 8019E6A4 0019B604  38 81 00 58 */	addi r4, r1, 0x58
/* 8019E6A8 0019B608  4B F7 DC F1 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_8019E6AC:
/* 8019E6AC 0019B60C  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, qr0
/* 8019E6B0 0019B610  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 8019E6B4 0019B614  E3 C1 01 98 */	psq_l f30, 408(r1), 0, qr0
/* 8019E6B8 0019B618  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 8019E6BC 0019B61C  E3 A1 01 88 */	psq_l f29, 392(r1), 0, qr0
/* 8019E6C0 0019B620  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 8019E6C4 0019B624  E3 81 01 78 */	psq_l f28, 376(r1), 0, qr0
/* 8019E6C8 0019B628  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 8019E6CC 0019B62C  E3 61 01 68 */	psq_l f27, 360(r1), 0, qr0
/* 8019E6D0 0019B630  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 8019E6D4 0019B634  E3 41 01 58 */	psq_l f26, 344(r1), 0, qr0
/* 8019E6D8 0019B638  CB 41 01 50 */	lfd f26, 0x150(r1)
/* 8019E6DC 0019B63C  BB 61 01 3C */	lmw r27, 0x13c(r1)
/* 8019E6E0 0019B640  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8019E6E4 0019B644  7C 08 03 A6 */	mtlr r0
/* 8019E6E8 0019B648  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8019E6EC 0019B64C  4E 80 00 20 */	blr

.global sub_8019e6f0
sub_8019e6f0:
/* 8019E6F0 0019B650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019E6F4 0019B654  7C 08 02 A6 */	mflr r0
/* 8019E6F8 0019B658  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019E6FC 0019B65C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019E700 0019B660  7C 9F 23 78 */	mr r31, r4
/* 8019E704 0019B664  93 C1 00 08 */	stw r30, 8(r1)
/* 8019E708 0019B668  7C 7E 1B 78 */	mr r30, r3
/* 8019E70C 0019B66C  88 03 0B 29 */	lbz r0, 0xb29(r3)
/* 8019E710 0019B670  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8019E714 0019B674  40 82 00 48 */	bne lbl_8019E75C
/* 8019E718 0019B678  4B EB 4D B1 */	bl GetScannableObjectInfo__6CActorCFv
/* 8019E71C 0019B67C  28 03 00 00 */	cmplwi r3, 0
/* 8019E720 0019B680  41 82 00 3C */	beq lbl_8019E75C
/* 8019E724 0019B684  80 BF 08 B8 */	lwz r5, 0x8b8(r31)
/* 8019E728 0019B688  80 83 00 00 */	lwz r4, 0(r3)
/* 8019E72C 0019B68C  80 65 00 00 */	lwz r3, 0(r5)
/* 8019E730 0019B690  4B EF 2F 61 */	bl GetScanTime__12CPlayerStateCFUi
/* 8019E734 0019B694  C0 42 A7 60 */	lfs f2, lbl_805AC480@sda21(r2)
/* 8019E738 0019B698  C0 02 A7 64 */	lfs f0, lbl_805AC484@sda21(r2)
/* 8019E73C 0019B69C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8019E740 0019B6A0  FC 20 0A 10 */	fabs f1, f1
/* 8019E744 0019B6A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019E748 0019B6A8  40 80 00 14 */	bge lbl_8019E75C
/* 8019E74C 0019B6AC  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 8019E750 0019B6B0  38 60 00 01 */	li r3, 1
/* 8019E754 0019B6B4  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8019E758 0019B6B8  98 1E 0B 29 */	stb r0, 0xb29(r30)
lbl_8019E75C:
/* 8019E75C 0019B6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019E760 0019B6C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019E764 0019B6C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019E768 0019B6C8  7C 08 03 A6 */	mtlr r0
/* 8019E76C 0019B6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8019E770 0019B6D0  4E 80 00 20 */	blr

.global sub_8019e774
sub_8019e774:
/* 8019E774 0019B6D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8019E778 0019B6D8  7C 08 02 A6 */	mflr r0
/* 8019E77C 0019B6DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8019E780 0019B6E0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8019E784 0019B6E4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8019E788 0019B6E8  7C BE 2B 78 */	mr r30, r5
/* 8019E78C 0019B6EC  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8019E790 0019B6F0  7C 9D 23 78 */	mr r29, r4
/* 8019E794 0019B6F4  38 81 00 18 */	addi r4, r1, 0x18
/* 8019E798 0019B6F8  93 81 00 60 */	stw r28, 0x60(r1)
/* 8019E79C 0019B6FC  7C 7C 1B 78 */	mr r28, r3
/* 8019E7A0 0019B700  7F A3 EB 78 */	mr r3, r29
/* 8019E7A4 0019B704  A0 05 00 00 */	lhz r0, 0(r5)
/* 8019E7A8 0019B708  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8019E7AC 0019B70C  4B EA DD F9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8019E7B0 0019B710  7C 64 1B 78 */	mr r4, r3
/* 8019E7B4 0019B714  38 61 00 1C */	addi r3, r1, 0x1c
/* 8019E7B8 0019B718  4B F0 70 E1 */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 8019E7BC 0019B71C  83 E3 00 04 */	lwz r31, 4(r3)
/* 8019E7C0 0019B720  28 1F 00 00 */	cmplwi r31, 0
/* 8019E7C4 0019B724  41 82 00 B0 */	beq lbl_8019E874
/* 8019E7C8 0019B728  80 1F 01 2C */	lwz r0, 0x12c(r31)
/* 8019E7CC 0019B72C  38 60 00 00 */	li r3, 0
/* 8019E7D0 0019B730  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 8019E7D4 0019B734  38 80 00 01 */	li r4, 1
/* 8019E7D8 0019B738  90 01 00 40 */	stw r0, 0x40(r1)
/* 8019E7DC 0019B73C  80 AD 8F F8 */	lwz r5, lbl_805A7BB8@sda21(r13)
/* 8019E7E0 0019B740  88 1F 01 30 */	lbz r0, 0x130(r31)
/* 8019E7E4 0019B744  98 01 00 44 */	stb r0, 0x44(r1)
/* 8019E7E8 0019B748  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 8019E7EC 0019B74C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8019E7F0 0019B750  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 8019E7F4 0019B754  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8019E7F8 0019B758  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 8019E7FC 0019B75C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8019E800 0019B760  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 8019E804 0019B764  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8019E808 0019B768  88 1F 01 44 */	lbz r0, 0x144(r31)
/* 8019E80C 0019B76C  98 01 00 58 */	stb r0, 0x58(r1)
/* 8019E810 0019B770  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8019E814 0019B774  48 1E B6 E1 */	bl __shl2i
/* 8019E818 0019B778  39 00 00 00 */	li r8, 0
/* 8019E81C 0019B77C  39 40 00 03 */	li r10, 3
/* 8019E820 0019B780  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8019E824 0019B784  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8019E828 0019B788  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8019E82C 0019B78C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8019E830 0019B790  90 61 00 28 */	stw r3, 0x28(r1)
/* 8019E834 0019B794  7F A3 EB 78 */	mr r3, r29
/* 8019E838 0019B798  38 81 00 14 */	addi r4, r1, 0x14
/* 8019E83C 0019B79C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8019E840 0019B7A0  91 01 00 34 */	stw r8, 0x34(r1)
/* 8019E844 0019B7A4  38 C1 00 0C */	addi r6, r1, 0xc
/* 8019E848 0019B7A8  38 E1 00 40 */	addi r7, r1, 0x40
/* 8019E84C 0019B7AC  91 01 00 30 */	stw r8, 0x30(r1)
/* 8019E850 0019B7B0  39 01 00 28 */	addi r8, r1, 0x28
/* 8019E854 0019B7B4  91 41 00 38 */	stw r10, 0x38(r1)
/* 8019E858 0019B7B8  A1 7F 00 EC */	lhz r11, 0xec(r31)
/* 8019E85C 0019B7BC  B1 61 00 0C */	sth r11, 0xc(r1)
/* 8019E860 0019B7C0  A1 5C 0A F8 */	lhz r10, 0xaf8(r28)
/* 8019E864 0019B7C4  B1 61 00 08 */	sth r11, 8(r1)
/* 8019E868 0019B7C8  B1 41 00 10 */	sth r10, 0x10(r1)
/* 8019E86C 0019B7CC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8019E870 0019B7D0  4B EA B8 31 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_8019E874:
/* 8019E874 0019B7D4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8019E878 0019B7D8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8019E87C 0019B7DC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8019E880 0019B7E0  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8019E884 0019B7E4  83 81 00 60 */	lwz r28, 0x60(r1)
/* 8019E888 0019B7E8  7C 08 03 A6 */	mtlr r0
/* 8019E88C 0019B7EC  38 21 00 70 */	addi r1, r1, 0x70
/* 8019E890 0019B7F0  4E 80 00 20 */	blr

.global sub_8019e894
sub_8019e894:
/* 8019E894 0019B7F4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8019E898 0019B7F8  7C 08 02 A6 */	mflr r0
/* 8019E89C 0019B7FC  54 A5 06 3F */	clrlwi. r5, r5, 0x18
/* 8019E8A0 0019B800  90 01 00 84 */	stw r0, 0x84(r1)
/* 8019E8A4 0019B804  7C 80 23 78 */	mr r0, r4
/* 8019E8A8 0019B808  41 82 00 0C */	beq lbl_8019E8B4
/* 8019E8AC 0019B80C  38 A3 06 54 */	addi r5, r3, 0x654
/* 8019E8B0 0019B810  48 00 00 08 */	b lbl_8019E8B8
lbl_8019E8B4:
/* 8019E8B4 0019B814  38 A3 09 8C */	addi r5, r3, 0x98c
lbl_8019E8B8:
/* 8019E8B8 0019B818  80 E5 00 00 */	lwz r7, 0(r5)
/* 8019E8BC 0019B81C  38 81 00 08 */	addi r4, r1, 8
/* 8019E8C0 0019B820  80 C5 00 04 */	lwz r6, 4(r5)
/* 8019E8C4 0019B824  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8019E8C8 0019B828  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8019E8CC 0019B82C  80 E5 00 08 */	lwz r7, 8(r5)
/* 8019E8D0 0019B830  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 8019E8D4 0019B834  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 8019E8D8 0019B838  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8019E8DC 0019B83C  80 E5 00 10 */	lwz r7, 0x10(r5)
/* 8019E8E0 0019B840  80 C5 00 14 */	lwz r6, 0x14(r5)
/* 8019E8E4 0019B844  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8019E8E8 0019B848  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8019E8EC 0019B84C  80 E5 00 18 */	lwz r7, 0x18(r5)
/* 8019E8F0 0019B850  80 C5 00 1C */	lwz r6, 0x1c(r5)
/* 8019E8F4 0019B854  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 8019E8F8 0019B858  90 C1 00 30 */	stw r6, 0x30(r1)
/* 8019E8FC 0019B85C  80 E5 00 20 */	lwz r7, 0x20(r5)
/* 8019E900 0019B860  80 C5 00 24 */	lwz r6, 0x24(r5)
/* 8019E904 0019B864  90 E1 00 34 */	stw r7, 0x34(r1)
/* 8019E908 0019B868  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8019E90C 0019B86C  80 E5 00 28 */	lwz r7, 0x28(r5)
/* 8019E910 0019B870  80 C5 00 2C */	lwz r6, 0x2c(r5)
/* 8019E914 0019B874  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 8019E918 0019B878  90 C1 00 40 */	stw r6, 0x40(r1)
/* 8019E91C 0019B87C  80 E5 00 30 */	lwz r7, 0x30(r5)
/* 8019E920 0019B880  80 C5 00 34 */	lwz r6, 0x34(r5)
/* 8019E924 0019B884  90 E1 00 44 */	stw r7, 0x44(r1)
/* 8019E928 0019B888  90 C1 00 48 */	stw r6, 0x48(r1)
/* 8019E92C 0019B88C  80 C5 00 38 */	lwz r6, 0x38(r5)
/* 8019E930 0019B890  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 8019E934 0019B894  80 E5 00 3C */	lwz r7, 0x3c(r5)
/* 8019E938 0019B898  80 C5 00 40 */	lwz r6, 0x40(r5)
/* 8019E93C 0019B89C  90 E1 00 50 */	stw r7, 0x50(r1)
/* 8019E940 0019B8A0  90 C1 00 54 */	stw r6, 0x54(r1)
/* 8019E944 0019B8A4  80 E5 00 44 */	lwz r7, 0x44(r5)
/* 8019E948 0019B8A8  80 C5 00 48 */	lwz r6, 0x48(r5)
/* 8019E94C 0019B8AC  90 E1 00 58 */	stw r7, 0x58(r1)
/* 8019E950 0019B8B0  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 8019E954 0019B8B4  80 E5 00 4C */	lwz r7, 0x4c(r5)
/* 8019E958 0019B8B8  80 C5 00 50 */	lwz r6, 0x50(r5)
/* 8019E95C 0019B8BC  90 E1 00 60 */	stw r7, 0x60(r1)
/* 8019E960 0019B8C0  90 C1 00 64 */	stw r6, 0x64(r1)
/* 8019E964 0019B8C4  80 E5 00 54 */	lwz r7, 0x54(r5)
/* 8019E968 0019B8C8  80 C5 00 58 */	lwz r6, 0x58(r5)
/* 8019E96C 0019B8CC  90 E1 00 68 */	stw r7, 0x68(r1)
/* 8019E970 0019B8D0  90 C1 00 6C */	stw r6, 0x6c(r1)
/* 8019E974 0019B8D4  80 C5 00 5C */	lwz r6, 0x5c(r5)
/* 8019E978 0019B8D8  90 C1 00 70 */	stw r6, 0x70(r1)
/* 8019E97C 0019B8DC  80 C5 00 60 */	lwz r6, 0x60(r5)
/* 8019E980 0019B8E0  90 C1 00 74 */	stw r6, 0x74(r1)
/* 8019E984 0019B8E4  80 A5 00 64 */	lwz r5, 0x64(r5)
/* 8019E988 0019B8E8  90 A1 00 78 */	stw r5, 0x78(r1)
/* 8019E98C 0019B8EC  A0 A3 0A F8 */	lhz r5, 0xaf8(r3)
/* 8019E990 0019B8F0  7C 03 03 78 */	mr r3, r0
/* 8019E994 0019B8F4  B0 A1 00 08 */	sth r5, 8(r1)
/* 8019E998 0019B8F8  4B EA DB DD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019E99C 0019B8FC  7C 64 1B 78 */	mr r4, r3
/* 8019E9A0 0019B900  38 61 00 0C */	addi r3, r1, 0xc
/* 8019E9A4 0019B904  4B F1 09 A9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019E9A8 0019B908  80 63 00 04 */	lwz r3, 4(r3)
/* 8019E9AC 0019B90C  28 03 00 00 */	cmplwi r3, 0
/* 8019E9B0 0019B910  41 82 00 0C */	beq lbl_8019E9BC
/* 8019E9B4 0019B914  38 81 00 14 */	addi r4, r1, 0x14
/* 8019E9B8 0019B918  48 00 A1 E1 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_8019E9BC:
/* 8019E9BC 0019B91C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8019E9C0 0019B920  7C 08 03 A6 */	mtlr r0
/* 8019E9C4 0019B924  38 21 00 80 */	addi r1, r1, 0x80
/* 8019E9C8 0019B928  4E 80 00 20 */	blr

.global sub_8019e9cc
sub_8019e9cc:
/* 8019E9CC 0019B92C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8019E9D0 0019B930  7C 08 02 A6 */	mflr r0
/* 8019E9D4 0019B934  90 01 00 94 */	stw r0, 0x94(r1)
/* 8019E9D8 0019B938  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8019E9DC 0019B93C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8019E9E0 0019B940  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8019E9E4 0019B944  93 A1 00 84 */	stw r29, 0x84(r1)
/* 8019E9E8 0019B948  7C 9D 23 78 */	mr r29, r4
/* 8019E9EC 0019B94C  93 81 00 80 */	stw r28, 0x80(r1)
/* 8019E9F0 0019B950  7C 7C 1B 78 */	mr r28, r3
/* 8019E9F4 0019B954  41 82 00 0C */	beq lbl_8019EA00
/* 8019E9F8 0019B958  38 7C 05 84 */	addi r3, r28, 0x584
/* 8019E9FC 0019B95C  48 00 00 0C */	b lbl_8019EA08
lbl_8019EA00:
/* 8019EA00 0019B960  3C 60 80 57 */	lis r3, sImmuneVulnerability__20CDamageVulnerability@ha
/* 8019EA04 0019B964  38 63 D7 18 */	addi r3, r3, sImmuneVulnerability__20CDamageVulnerability@l
lbl_8019EA08:
/* 8019EA08 0019B968  80 83 00 00 */	lwz r4, 0(r3)
/* 8019EA0C 0019B96C  3B FC 0B 00 */	addi r31, r28, 0xb00
/* 8019EA10 0019B970  80 03 00 04 */	lwz r0, 4(r3)
/* 8019EA14 0019B974  7F FE FB 78 */	mr r30, r31
/* 8019EA18 0019B978  90 81 00 14 */	stw r4, 0x14(r1)
/* 8019EA1C 0019B97C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8019EA20 0019B980  80 83 00 08 */	lwz r4, 8(r3)
/* 8019EA24 0019B984  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8019EA28 0019B988  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8019EA2C 0019B98C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8019EA30 0019B990  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8019EA34 0019B994  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8019EA38 0019B998  90 81 00 24 */	stw r4, 0x24(r1)
/* 8019EA3C 0019B99C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8019EA40 0019B9A0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8019EA44 0019B9A4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8019EA48 0019B9A8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8019EA4C 0019B9AC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8019EA50 0019B9B0  80 83 00 20 */	lwz r4, 0x20(r3)
/* 8019EA54 0019B9B4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8019EA58 0019B9B8  90 81 00 34 */	stw r4, 0x34(r1)
/* 8019EA5C 0019B9BC  90 01 00 38 */	stw r0, 0x38(r1)
/* 8019EA60 0019B9C0  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8019EA64 0019B9C4  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8019EA68 0019B9C8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8019EA6C 0019B9CC  90 01 00 40 */	stw r0, 0x40(r1)
/* 8019EA70 0019B9D0  80 83 00 30 */	lwz r4, 0x30(r3)
/* 8019EA74 0019B9D4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8019EA78 0019B9D8  90 81 00 44 */	stw r4, 0x44(r1)
/* 8019EA7C 0019B9DC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8019EA80 0019B9E0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8019EA84 0019B9E4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8019EA88 0019B9E8  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 8019EA8C 0019B9EC  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8019EA90 0019B9F0  90 81 00 50 */	stw r4, 0x50(r1)
/* 8019EA94 0019B9F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8019EA98 0019B9F8  80 83 00 44 */	lwz r4, 0x44(r3)
/* 8019EA9C 0019B9FC  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8019EAA0 0019BA00  90 81 00 58 */	stw r4, 0x58(r1)
/* 8019EAA4 0019BA04  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8019EAA8 0019BA08  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 8019EAAC 0019BA0C  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8019EAB0 0019BA10  90 81 00 60 */	stw r4, 0x60(r1)
/* 8019EAB4 0019BA14  90 01 00 64 */	stw r0, 0x64(r1)
/* 8019EAB8 0019BA18  80 83 00 54 */	lwz r4, 0x54(r3)
/* 8019EABC 0019BA1C  80 03 00 58 */	lwz r0, 0x58(r3)
/* 8019EAC0 0019BA20  90 81 00 68 */	stw r4, 0x68(r1)
/* 8019EAC4 0019BA24  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8019EAC8 0019BA28  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 8019EACC 0019BA2C  90 01 00 70 */	stw r0, 0x70(r1)
/* 8019EAD0 0019BA30  80 03 00 60 */	lwz r0, 0x60(r3)
/* 8019EAD4 0019BA34  90 01 00 74 */	stw r0, 0x74(r1)
/* 8019EAD8 0019BA38  80 03 00 64 */	lwz r0, 0x64(r3)
/* 8019EADC 0019BA3C  90 01 00 78 */	stw r0, 0x78(r1)
/* 8019EAE0 0019BA40  48 00 00 3C */	b lbl_8019EB1C
lbl_8019EAE4:
/* 8019EAE4 0019BA44  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8019EAE8 0019BA48  7F A3 EB 78 */	mr r3, r29
/* 8019EAEC 0019BA4C  38 81 00 08 */	addi r4, r1, 8
/* 8019EAF0 0019BA50  B0 01 00 08 */	sth r0, 8(r1)
/* 8019EAF4 0019BA54  4B EA DA 81 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019EAF8 0019BA58  7C 64 1B 78 */	mr r4, r3
/* 8019EAFC 0019BA5C  38 61 00 0C */	addi r3, r1, 0xc
/* 8019EB00 0019BA60  4B F1 08 4D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019EB04 0019BA64  80 63 00 04 */	lwz r3, 4(r3)
/* 8019EB08 0019BA68  28 03 00 00 */	cmplwi r3, 0
/* 8019EB0C 0019BA6C  41 82 00 0C */	beq lbl_8019EB18
/* 8019EB10 0019BA70  38 81 00 14 */	addi r4, r1, 0x14
/* 8019EB14 0019BA74  48 00 A0 85 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_8019EB18:
/* 8019EB18 0019BA78  3B DE 00 02 */	addi r30, r30, 2
lbl_8019EB1C:
/* 8019EB1C 0019BA7C  80 1C 0A FC */	lwz r0, 0xafc(r28)
/* 8019EB20 0019BA80  54 00 08 3C */	slwi r0, r0, 1
/* 8019EB24 0019BA84  7C 1F 02 14 */	add r0, r31, r0
/* 8019EB28 0019BA88  7C 1E 00 40 */	cmplw r30, r0
/* 8019EB2C 0019BA8C  40 82 FF B8 */	bne lbl_8019EAE4
/* 8019EB30 0019BA90  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8019EB34 0019BA94  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8019EB38 0019BA98  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8019EB3C 0019BA9C  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8019EB40 0019BAA0  83 81 00 80 */	lwz r28, 0x80(r1)
/* 8019EB44 0019BAA4  7C 08 03 A6 */	mtlr r0
/* 8019EB48 0019BAA8  38 21 00 90 */	addi r1, r1, 0x90
/* 8019EB4C 0019BAAC  4E 80 00 20 */	blr

.global sub_8019eb50
sub_8019eb50:
/* 8019EB50 0019BAB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019EB54 0019BAB4  7C 08 02 A6 */	mflr r0
/* 8019EB58 0019BAB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8019EB5C 0019BABC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8019EB60 0019BAC0  3B E0 00 00 */	li r31, 0
/* 8019EB64 0019BAC4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8019EB68 0019BAC8  7C 9E 23 78 */	mr r30, r4
/* 8019EB6C 0019BACC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8019EB70 0019BAD0  7C 7D 1B 78 */	mr r29, r3
/* 8019EB74 0019BAD4  48 00 00 50 */	b lbl_8019EBC4
lbl_8019EB78:
/* 8019EB78 0019BAD8  80 7D 0A 2C */	lwz r3, 0xa2c(r29)
/* 8019EB7C 0019BADC  7F E4 FB 78 */	mr r4, r31
/* 8019EB80 0019BAE0  48 00 86 B9 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8019EB84 0019BAE4  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8019EB88 0019BAE8  7F C3 F3 78 */	mr r3, r30
/* 8019EB8C 0019BAEC  38 81 00 08 */	addi r4, r1, 8
/* 8019EB90 0019BAF0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8019EB94 0019BAF4  B0 01 00 08 */	sth r0, 8(r1)
/* 8019EB98 0019BAF8  4B EA D9 DD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019EB9C 0019BAFC  7C 64 1B 78 */	mr r4, r3
/* 8019EBA0 0019BB00  38 61 00 10 */	addi r3, r1, 0x10
/* 8019EBA4 0019BB04  4B F1 07 A9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019EBA8 0019BB08  80 63 00 04 */	lwz r3, 4(r3)
/* 8019EBAC 0019BB0C  28 03 00 00 */	cmplwi r3, 0
/* 8019EBB0 0019BB10  41 82 00 10 */	beq lbl_8019EBC0
/* 8019EBB4 0019BB14  7F C5 F3 78 */	mr r5, r30
/* 8019EBB8 0019BB18  38 80 00 12 */	li r4, 0x12
/* 8019EBBC 0019BB1C  4B EB 57 95 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8019EBC0:
/* 8019EBC0 0019BB20  3B FF 00 01 */	addi r31, r31, 1
lbl_8019EBC4:
/* 8019EBC4 0019BB24  80 7D 0A 2C */	lwz r3, 0xa2c(r29)
/* 8019EBC8 0019BB28  48 00 86 81 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8019EBCC 0019BB2C  7C 1F 18 40 */	cmplw r31, r3
/* 8019EBD0 0019BB30  41 80 FF A8 */	blt lbl_8019EB78
/* 8019EBD4 0019BB34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019EBD8 0019BB38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8019EBDC 0019BB3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8019EBE0 0019BB40  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8019EBE4 0019BB44  7C 08 03 A6 */	mtlr r0
/* 8019EBE8 0019BB48  38 21 00 30 */	addi r1, r1, 0x30
/* 8019EBEC 0019BB4C  4E 80 00 20 */	blr

.global sub_8019ebf0
sub_8019ebf0:
/* 8019EBF0 0019BB50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019EBF4 0019BB54  7C 08 02 A6 */	mflr r0
/* 8019EBF8 0019BB58  90 01 00 34 */	stw r0, 0x34(r1)
/* 8019EBFC 0019BB5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8019EC00 0019BB60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8019EC04 0019BB64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8019EC08 0019BB68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8019EC0C 0019BB6C  7C 7E 1B 78 */	mr r30, r3
/* 8019EC10 0019BB70  7C 9F 23 78 */	mr r31, r4
/* 8019EC14 0019BB74  C0 03 06 DC */	lfs f0, 0x6dc(r3)
/* 8019EC18 0019BB78  38 81 00 0C */	addi r4, r1, 0xc
/* 8019EC1C 0019BB7C  38 A1 00 08 */	addi r5, r1, 8
/* 8019EC20 0019BB80  38 6D 90 28 */	addi r3, r13, lbl_805A7BE8@sda21
/* 8019EC24 0019BB84  D0 01 00 08 */	stfs f0, 8(r1)
/* 8019EC28 0019BB88  C0 1E 09 74 */	lfs f0, 0x974(r30)
/* 8019EC2C 0019BB8C  EC 00 08 2A */	fadds f0, f0, f1
/* 8019EC30 0019BB90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8019EC34 0019BB94  4B E6 D6 81 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8019EC38 0019BB98  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019EC3C 0019BB9C  C0 42 A7 68 */	lfs f2, lbl_805AC488@sda21(r2)
/* 8019EC40 0019BBA0  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 8019EC44 0019BBA4  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 8019EC48 0019BBA8  C0 3E 06 DC */	lfs f1, 0x6dc(r30)
/* 8019EC4C 0019BBAC  EC 42 00 72 */	fmuls f2, f2, f1
/* 8019EC50 0019BBB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8019EC54 0019BBB4  40 81 00 38 */	ble lbl_8019EC8C
/* 8019EC58 0019BBB8  C0 02 A7 6C */	lfs f0, lbl_805AC48C@sda21(r2)
/* 8019EC5C 0019BBBC  C0 3E 09 74 */	lfs f1, 0x974(r30)
/* 8019EC60 0019BBC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8019EC64 0019BBC4  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 8019EC68 0019BBC8  EF E1 00 24 */	fdivs f31, f1, f0
/* 8019EC6C 0019BBCC  48 17 38 71 */	bl Float__9CRandom16Fv
/* 8019EC70 0019BBD0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8019EC74 0019BBD4  4C 40 13 82 */	cror 2, 0, 2
/* 8019EC78 0019BBD8  7C 60 00 26 */	mfcr r3
/* 8019EC7C 0019BBDC  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 8019EC80 0019BBE0  50 60 46 B4 */	rlwimi r0, r3, 8, 0x1a, 0x1a
/* 8019EC84 0019BBE4  98 1E 0B 29 */	stb r0, 0xb29(r30)
/* 8019EC88 0019BBE8  48 00 00 14 */	b lbl_8019EC9C
lbl_8019EC8C:
/* 8019EC8C 0019BBEC  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 8019EC90 0019BBF0  38 60 00 01 */	li r3, 1
/* 8019EC94 0019BBF4  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8019EC98 0019BBF8  98 1E 0B 29 */	stb r0, 0xb29(r30)
lbl_8019EC9C:
/* 8019EC9C 0019BBFC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8019ECA0 0019BC00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019ECA4 0019BC04  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8019ECA8 0019BC08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8019ECAC 0019BC0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8019ECB0 0019BC10  7C 08 03 A6 */	mtlr r0
/* 8019ECB4 0019BC14  38 21 00 30 */	addi r1, r1, 0x30
/* 8019ECB8 0019BC18  4E 80 00 20 */	blr

.global sub_8019ecbc
sub_8019ecbc:
/* 8019ECBC 0019BC1C  88 03 0B 28 */	lbz r0, 0xb28(r3)
/* 8019ECC0 0019BC20  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8019ECC4 0019BC24  41 82 00 0C */	beq lbl_8019ECD0
/* 8019ECC8 0019BC28  38 60 00 01 */	li r3, 1
/* 8019ECCC 0019BC2C  4E 80 00 20 */	blr
lbl_8019ECD0:
/* 8019ECD0 0019BC30  88 03 0B 29 */	lbz r0, 0xb29(r3)
/* 8019ECD4 0019BC34  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 8019ECD8 0019BC38  4E 80 00 20 */	blr

.global sub_8019ecdc
sub_8019ecdc:
/* 8019ECDC 0019BC3C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8019ECE0 0019BC40  7C 08 02 A6 */	mflr r0
/* 8019ECE4 0019BC44  90 01 00 74 */	stw r0, 0x74(r1)
/* 8019ECE8 0019BC48  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8019ECEC 0019BC4C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8019ECF0 0019BC50  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8019ECF4 0019BC54  7C 7F 1B 78 */	mr r31, r3
/* 8019ECF8 0019BC58  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8019ECFC 0019BC5C  FF E0 08 90 */	fmr f31, f1
/* 8019ED00 0019BC60  7C 85 23 78 */	mr r5, r4
/* 8019ED04 0019BC64  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8019ED08 0019BC68  38 61 00 40 */	addi r3, r1, 0x40
/* 8019ED0C 0019BC6C  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 8019ED10 0019BC70  C0 46 02 00 */	lfs f2, 0x200(r6)
/* 8019ED14 0019BC74  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8019ED18 0019BC78  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8019ED1C 0019BC7C  40 81 00 0C */	ble lbl_8019ED28
/* 8019ED20 0019BC80  C0 02 A7 70 */	lfs f0, lbl_805AC490@sda21(r2)
/* 8019ED24 0019BC84  EC 20 10 24 */	fdivs f1, f0, f2
lbl_8019ED28:
/* 8019ED28 0019BC88  81 84 00 00 */	lwz r12, 0(r4)
/* 8019ED2C 0019BC8C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8019ED30 0019BC90  7D 89 03 A6 */	mtctr r12
/* 8019ED34 0019BC94  4E 80 04 21 */	bctrl
/* 8019ED38 0019BC98  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8019ED3C 0019BC9C  38 61 00 10 */	addi r3, r1, 0x10
/* 8019ED40 0019BCA0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8019ED44 0019BCA4  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8019ED48 0019BCA8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8019ED4C 0019BCAC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8019ED50 0019BCB0  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 8019ED54 0019BCB4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8019ED58 0019BCB8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8019ED5C 0019BCBC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8019ED60 0019BCC0  EC 03 00 28 */	fsubs f0, f3, f0
/* 8019ED64 0019BCC4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8019ED68 0019BCC8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8019ED6C 0019BCCC  48 17 54 95 */	bl __ct__9CVector2fFff
/* 8019ED70 0019BCD0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8019ED74 0019BCD4  38 61 00 08 */	addi r3, r1, 8
/* 8019ED78 0019BCD8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8019ED7C 0019BCDC  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8019ED80 0019BCE0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8019ED84 0019BCE4  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 8019ED88 0019BCE8  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8019ED8C 0019BCEC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8019ED90 0019BCF0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8019ED94 0019BCF4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8019ED98 0019BCF8  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8019ED9C 0019BCFC  48 17 54 65 */	bl __ct__9CVector2fFff
/* 8019EDA0 0019BD00  C0 21 00 08 */	lfs f1, 8(r1)
/* 8019EDA4 0019BD04  38 61 00 18 */	addi r3, r1, 0x18
/* 8019EDA8 0019BD08  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8019EDAC 0019BD0C  38 81 00 20 */	addi r4, r1, 0x20
/* 8019EDB0 0019BD10  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8019EDB4 0019BD14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8019EDB8 0019BD18  48 17 52 0D */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 8019EDBC 0019BD1C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8019EDC0 0019BD20  7C 00 00 26 */	mfcr r0
/* 8019EDC4 0019BD24  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8019EDC8 0019BD28  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8019EDCC 0019BD2C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8019EDD0 0019BD30  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8019EDD4 0019BD34  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8019EDD8 0019BD38  7C 08 03 A6 */	mtlr r0
/* 8019EDDC 0019BD3C  38 21 00 70 */	addi r1, r1, 0x70
/* 8019EDE0 0019BD40  4E 80 00 20 */	blr

.global GetCollisionResponseType__12CIceSheegothCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__12CIceSheegothCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 8019EDE4 0019BD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019EDE8 0019BD48  7C 08 02 A6 */	mflr r0
/* 8019EDEC 0019BD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019EDF0 0019BD50  80 06 00 00 */	lwz r0, 0(r6)
/* 8019EDF4 0019BD54  2C 00 00 01 */	cmpwi r0, 1
/* 8019EDF8 0019BD58  40 82 00 0C */	bne lbl_8019EE04
/* 8019EDFC 0019BD5C  38 60 00 00 */	li r3, 0
/* 8019EE00 0019BD60  48 00 00 08 */	b lbl_8019EE08
lbl_8019EE04:
/* 8019EE04 0019BD64  4B ED 8B B1 */	bl GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
lbl_8019EE08:
/* 8019EE08 0019BD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019EE0C 0019BD6C  7C 08 03 A6 */	mtlr r0
/* 8019EE10 0019BD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8019EE14 0019BD74  4E 80 00 20 */	blr

.global sub_8019ee18
sub_8019ee18:
/* 8019EE18 0019BD78  90 83 09 28 */	stw r4, 0x928(r3)
/* 8019EE1C 0019BD7C  4E 80 00 20 */	blr

.global sub_8019ee20
sub_8019ee20:
/* 8019EE20 0019BD80  94 21 FE 00 */	stwu r1, -0x200(r1)
/* 8019EE24 0019BD84  7C 08 02 A6 */	mflr r0
/* 8019EE28 0019BD88  90 01 02 04 */	stw r0, 0x204(r1)
/* 8019EE2C 0019BD8C  DB E1 01 F0 */	stfd f31, 0x1f0(r1)
/* 8019EE30 0019BD90  F3 E1 01 F8 */	psq_st f31, 504(r1), 0, qr0
/* 8019EE34 0019BD94  93 E1 01 EC */	stw r31, 0x1ec(r1)
/* 8019EE38 0019BD98  93 C1 01 E8 */	stw r30, 0x1e8(r1)
/* 8019EE3C 0019BD9C  93 A1 01 E4 */	stw r29, 0x1e4(r1)
/* 8019EE40 0019BDA0  7C 7F 1B 78 */	mr r31, r3
/* 8019EE44 0019BDA4  7C 9E 23 78 */	mr r30, r4
/* 8019EE48 0019BDA8  A0 03 0A 80 */	lhz r0, 0xa80(r3)
/* 8019EE4C 0019BDAC  FF E0 08 90 */	fmr f31, f1
/* 8019EE50 0019BDB0  7F C3 F3 78 */	mr r3, r30
/* 8019EE54 0019BDB4  38 81 00 0C */	addi r4, r1, 0xc
/* 8019EE58 0019BDB8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8019EE5C 0019BDBC  4B EA D7 19 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019EE60 0019BDC0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8019EE64 0019BDC4  41 82 00 5C */	beq lbl_8019EEC0
/* 8019EE68 0019BDC8  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 8019EE6C 0019BDCC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8019EE70 0019BDD0  41 82 00 50 */	beq lbl_8019EEC0
/* 8019EE74 0019BDD4  3C 80 80 3D */	lis r4, lbl_803D13D8@ha
/* 8019EE78 0019BDD8  38 61 00 74 */	addi r3, r1, 0x74
/* 8019EE7C 0019BDDC  38 84 13 D8 */	addi r4, r4, lbl_803D13D8@l
/* 8019EE80 0019BDE0  38 84 00 4E */	addi r4, r4, 0x4e
/* 8019EE84 0019BDE4  4B E6 5E 35 */	bl string_l__4rstlFPCc
/* 8019EE88 0019BDE8  7F E4 FB 78 */	mr r4, r31
/* 8019EE8C 0019BDEC  38 61 01 74 */	addi r3, r1, 0x174
/* 8019EE90 0019BDF0  38 A1 00 74 */	addi r5, r1, 0x74
/* 8019EE94 0019BDF4  4B ED 9A E5 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8019EE98 0019BDF8  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 8019EE9C 0019BDFC  38 81 01 74 */	addi r4, r1, 0x174
/* 8019EEA0 0019BE00  48 17 3C D5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8019EEA4 0019BE04  38 61 00 74 */	addi r3, r1, 0x74
/* 8019EEA8 0019BE08  48 19 EC 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8019EEAC 0019BE0C  FC 20 F8 90 */	fmr f1, f31
/* 8019EEB0 0019BE10  7F A3 EB 78 */	mr r3, r29
/* 8019EEB4 0019BE14  7F C5 F3 78 */	mr r5, r30
/* 8019EEB8 0019BE18  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 8019EEBC 0019BE1C  4B FF 95 45 */	bl SetTransform__13CFlameThrowerFRC12CTransform4f
lbl_8019EEC0:
/* 8019EEC0 0019BE20  A0 1F 0A F6 */	lhz r0, 0xaf6(r31)
/* 8019EEC4 0019BE24  7F C3 F3 78 */	mr r3, r30
/* 8019EEC8 0019BE28  38 81 00 08 */	addi r4, r1, 8
/* 8019EECC 0019BE2C  B0 01 00 08 */	sth r0, 8(r1)
/* 8019EED0 0019BE30  4B EA D6 D5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8019EED4 0019BE34  7C 64 1B 78 */	mr r4, r3
/* 8019EED8 0019BE38  38 61 00 18 */	addi r3, r1, 0x18
/* 8019EEDC 0019BE3C  4B F1 04 71 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019EEE0 0019BE40  83 C3 00 04 */	lwz r30, 4(r3)
/* 8019EEE4 0019BE44  28 1E 00 00 */	cmplwi r30, 0
/* 8019EEE8 0019BE48  41 82 03 FC */	beq lbl_8019F2E4
/* 8019EEEC 0019BE4C  C0 22 A7 68 */	lfs f1, lbl_805AC488@sda21(r2)
/* 8019EEF0 0019BE50  C0 1F 06 DC */	lfs f0, 0x6dc(r31)
/* 8019EEF4 0019BE54  C0 42 A7 6C */	lfs f2, lbl_805AC48C@sda21(r2)
/* 8019EEF8 0019BE58  EC 21 00 32 */	fmuls f1, f1, f0
/* 8019EEFC 0019BE5C  C0 7F 09 74 */	lfs f3, 0x974(r31)
/* 8019EF00 0019BE60  EC 02 00 72 */	fmuls f0, f2, f1
/* 8019EF04 0019BE64  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8019EF08 0019BE68  4C 41 13 82 */	cror 2, 1, 2
/* 8019EF0C 0019BE6C  40 82 00 68 */	bne lbl_8019EF74
/* 8019EF10 0019BE70  80 7F 0A 9C */	lwz r3, 0xa9c(r31)
/* 8019EF14 0019BE74  38 80 00 00 */	li r4, 0
/* 8019EF18 0019BE78  81 83 00 00 */	lwz r12, 0(r3)
/* 8019EF1C 0019BE7C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019EF20 0019BE80  7D 89 03 A6 */	mtctr r12
/* 8019EF24 0019BE84  4E 80 04 21 */	bctrl
/* 8019EF28 0019BE88  80 7F 0A B0 */	lwz r3, 0xab0(r31)
/* 8019EF2C 0019BE8C  38 80 00 00 */	li r4, 0
/* 8019EF30 0019BE90  81 83 00 00 */	lwz r12, 0(r3)
/* 8019EF34 0019BE94  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019EF38 0019BE98  7D 89 03 A6 */	mtctr r12
/* 8019EF3C 0019BE9C  4E 80 04 21 */	bctrl
/* 8019EF40 0019BEA0  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 8019EF44 0019BEA4  38 80 00 01 */	li r4, 1
/* 8019EF48 0019BEA8  81 83 00 00 */	lwz r12, 0(r3)
/* 8019EF4C 0019BEAC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019EF50 0019BEB0  7D 89 03 A6 */	mtctr r12
/* 8019EF54 0019BEB4  4E 80 04 21 */	bctrl
/* 8019EF58 0019BEB8  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8019EF5C 0019BEBC  38 80 00 01 */	li r4, 1
/* 8019EF60 0019BEC0  81 83 00 00 */	lwz r12, 0(r3)
/* 8019EF64 0019BEC4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019EF68 0019BEC8  7D 89 03 A6 */	mtctr r12
/* 8019EF6C 0019BECC  4E 80 04 21 */	bctrl
/* 8019EF70 0019BED0  48 00 01 4C */	b lbl_8019F0BC
lbl_8019EF74:
/* 8019EF74 0019BED4  C0 02 A7 74 */	lfs f0, lbl_805AC494@sda21(r2)
/* 8019EF78 0019BED8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019EF7C 0019BEDC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8019EF80 0019BEE0  4C 41 13 82 */	cror 2, 1, 2
/* 8019EF84 0019BEE4  40 82 00 68 */	bne lbl_8019EFEC
/* 8019EF88 0019BEE8  80 7F 0A 9C */	lwz r3, 0xa9c(r31)
/* 8019EF8C 0019BEEC  38 80 00 00 */	li r4, 0
/* 8019EF90 0019BEF0  81 83 00 00 */	lwz r12, 0(r3)
/* 8019EF94 0019BEF4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019EF98 0019BEF8  7D 89 03 A6 */	mtctr r12
/* 8019EF9C 0019BEFC  4E 80 04 21 */	bctrl
/* 8019EFA0 0019BF00  80 7F 0A B0 */	lwz r3, 0xab0(r31)
/* 8019EFA4 0019BF04  38 80 00 01 */	li r4, 1
/* 8019EFA8 0019BF08  81 83 00 00 */	lwz r12, 0(r3)
/* 8019EFAC 0019BF0C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019EFB0 0019BF10  7D 89 03 A6 */	mtctr r12
/* 8019EFB4 0019BF14  4E 80 04 21 */	bctrl
/* 8019EFB8 0019BF18  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 8019EFBC 0019BF1C  38 80 00 00 */	li r4, 0
/* 8019EFC0 0019BF20  81 83 00 00 */	lwz r12, 0(r3)
/* 8019EFC4 0019BF24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019EFC8 0019BF28  7D 89 03 A6 */	mtctr r12
/* 8019EFCC 0019BF2C  4E 80 04 21 */	bctrl
/* 8019EFD0 0019BF30  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8019EFD4 0019BF34  38 80 00 00 */	li r4, 0
/* 8019EFD8 0019BF38  81 83 00 00 */	lwz r12, 0(r3)
/* 8019EFDC 0019BF3C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019EFE0 0019BF40  7D 89 03 A6 */	mtctr r12
/* 8019EFE4 0019BF44  4E 80 04 21 */	bctrl
/* 8019EFE8 0019BF48  48 00 00 D4 */	b lbl_8019F0BC
lbl_8019EFEC:
/* 8019EFEC 0019BF4C  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 8019EFF0 0019BF50  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8019EFF4 0019BF54  40 81 00 68 */	ble lbl_8019F05C
/* 8019EFF8 0019BF58  80 7F 0A 9C */	lwz r3, 0xa9c(r31)
/* 8019EFFC 0019BF5C  38 80 00 01 */	li r4, 1
/* 8019F000 0019BF60  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F004 0019BF64  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F008 0019BF68  7D 89 03 A6 */	mtctr r12
/* 8019F00C 0019BF6C  4E 80 04 21 */	bctrl
/* 8019F010 0019BF70  80 7F 0A B0 */	lwz r3, 0xab0(r31)
/* 8019F014 0019BF74  38 80 00 00 */	li r4, 0
/* 8019F018 0019BF78  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F01C 0019BF7C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F020 0019BF80  7D 89 03 A6 */	mtctr r12
/* 8019F024 0019BF84  4E 80 04 21 */	bctrl
/* 8019F028 0019BF88  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 8019F02C 0019BF8C  38 80 00 00 */	li r4, 0
/* 8019F030 0019BF90  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F034 0019BF94  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F038 0019BF98  7D 89 03 A6 */	mtctr r12
/* 8019F03C 0019BF9C  4E 80 04 21 */	bctrl
/* 8019F040 0019BFA0  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8019F044 0019BFA4  38 80 00 00 */	li r4, 0
/* 8019F048 0019BFA8  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F04C 0019BFAC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F050 0019BFB0  7D 89 03 A6 */	mtctr r12
/* 8019F054 0019BFB4  4E 80 04 21 */	bctrl
/* 8019F058 0019BFB8  48 00 00 64 */	b lbl_8019F0BC
lbl_8019F05C:
/* 8019F05C 0019BFBC  80 7F 0A 9C */	lwz r3, 0xa9c(r31)
/* 8019F060 0019BFC0  38 80 00 00 */	li r4, 0
/* 8019F064 0019BFC4  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F068 0019BFC8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F06C 0019BFCC  7D 89 03 A6 */	mtctr r12
/* 8019F070 0019BFD0  4E 80 04 21 */	bctrl
/* 8019F074 0019BFD4  80 7F 0A B0 */	lwz r3, 0xab0(r31)
/* 8019F078 0019BFD8  38 80 00 00 */	li r4, 0
/* 8019F07C 0019BFDC  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F080 0019BFE0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F084 0019BFE4  7D 89 03 A6 */	mtctr r12
/* 8019F088 0019BFE8  4E 80 04 21 */	bctrl
/* 8019F08C 0019BFEC  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 8019F090 0019BFF0  38 80 00 00 */	li r4, 0
/* 8019F094 0019BFF4  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F098 0019BFF8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F09C 0019BFFC  7D 89 03 A6 */	mtctr r12
/* 8019F0A0 0019C000  4E 80 04 21 */	bctrl
/* 8019F0A4 0019C004  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8019F0A8 0019C008  38 80 00 00 */	li r4, 0
/* 8019F0AC 0019C00C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F0B0 0019C010  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F0B4 0019C014  7D 89 03 A6 */	mtctr r12
/* 8019F0B8 0019C018  4E 80 04 21 */	bctrl
lbl_8019F0BC:
/* 8019F0BC 0019C01C  83 BF 0A 9C */	lwz r29, 0xa9c(r31)
/* 8019F0C0 0019C020  38 61 01 44 */	addi r3, r1, 0x144
/* 8019F0C4 0019C024  38 9F 00 34 */	addi r4, r31, 0x34
/* 8019F0C8 0019C028  48 17 3B 79 */	bl GetRotation__12CTransform4fCFv
/* 8019F0CC 0019C02C  7F A3 EB 78 */	mr r3, r29
/* 8019F0D0 0019C030  38 81 01 44 */	addi r4, r1, 0x144
/* 8019F0D4 0019C034  81 9D 00 00 */	lwz r12, 0(r29)
/* 8019F0D8 0019C038  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8019F0DC 0019C03C  7D 89 03 A6 */	mtctr r12
/* 8019F0E0 0019C040  4E 80 04 21 */	bctrl
/* 8019F0E4 0019C044  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8019F0E8 0019C048  38 81 00 68 */	addi r4, r1, 0x68
/* 8019F0EC 0019C04C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8019F0F0 0019C050  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8019F0F4 0019C054  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8019F0F8 0019C058  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8019F0FC 0019C05C  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8019F100 0019C060  80 7F 0A 9C */	lwz r3, 0xa9c(r31)
/* 8019F104 0019C064  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F108 0019C068  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8019F10C 0019C06C  7D 89 03 A6 */	mtctr r12
/* 8019F110 0019C070  4E 80 04 21 */	bctrl
/* 8019F114 0019C074  83 BF 0A B0 */	lwz r29, 0xab0(r31)
/* 8019F118 0019C078  38 61 01 14 */	addi r3, r1, 0x114
/* 8019F11C 0019C07C  38 9F 00 34 */	addi r4, r31, 0x34
/* 8019F120 0019C080  48 17 3B 21 */	bl GetRotation__12CTransform4fCFv
/* 8019F124 0019C084  7F A3 EB 78 */	mr r3, r29
/* 8019F128 0019C088  38 81 01 14 */	addi r4, r1, 0x114
/* 8019F12C 0019C08C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8019F130 0019C090  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8019F134 0019C094  7D 89 03 A6 */	mtctr r12
/* 8019F138 0019C098  4E 80 04 21 */	bctrl
/* 8019F13C 0019C09C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8019F140 0019C0A0  38 81 00 5C */	addi r4, r1, 0x5c
/* 8019F144 0019C0A4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8019F148 0019C0A8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8019F14C 0019C0AC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8019F150 0019C0B0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8019F154 0019C0B4  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8019F158 0019C0B8  80 7F 0A B0 */	lwz r3, 0xab0(r31)
/* 8019F15C 0019C0BC  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F160 0019C0C0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8019F164 0019C0C4  7D 89 03 A6 */	mtctr r12
/* 8019F168 0019C0C8  4E 80 04 21 */	bctrl
/* 8019F16C 0019C0CC  83 BF 0A C4 */	lwz r29, 0xac4(r31)
/* 8019F170 0019C0D0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8019F174 0019C0D4  38 9F 00 34 */	addi r4, r31, 0x34
/* 8019F178 0019C0D8  48 17 3A C9 */	bl GetRotation__12CTransform4fCFv
/* 8019F17C 0019C0DC  7F A3 EB 78 */	mr r3, r29
/* 8019F180 0019C0E0  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8019F184 0019C0E4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8019F188 0019C0E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8019F18C 0019C0EC  7D 89 03 A6 */	mtctr r12
/* 8019F190 0019C0F0  4E 80 04 21 */	bctrl
/* 8019F194 0019C0F4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8019F198 0019C0F8  38 81 00 50 */	addi r4, r1, 0x50
/* 8019F19C 0019C0FC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8019F1A0 0019C100  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8019F1A4 0019C104  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8019F1A8 0019C108  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8019F1AC 0019C10C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8019F1B0 0019C110  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 8019F1B4 0019C114  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F1B8 0019C118  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8019F1BC 0019C11C  7D 89 03 A6 */	mtctr r12
/* 8019F1C0 0019C120  4E 80 04 21 */	bctrl
/* 8019F1C4 0019C124  83 BF 0A D8 */	lwz r29, 0xad8(r31)
/* 8019F1C8 0019C128  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8019F1CC 0019C12C  38 9F 00 34 */	addi r4, r31, 0x34
/* 8019F1D0 0019C130  48 17 3A 71 */	bl GetRotation__12CTransform4fCFv
/* 8019F1D4 0019C134  7F A3 EB 78 */	mr r3, r29
/* 8019F1D8 0019C138  38 81 00 B4 */	addi r4, r1, 0xb4
/* 8019F1DC 0019C13C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8019F1E0 0019C140  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8019F1E4 0019C144  7D 89 03 A6 */	mtctr r12
/* 8019F1E8 0019C148  4E 80 04 21 */	bctrl
/* 8019F1EC 0019C14C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8019F1F0 0019C150  38 81 00 44 */	addi r4, r1, 0x44
/* 8019F1F4 0019C154  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8019F1F8 0019C158  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8019F1FC 0019C15C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8019F200 0019C160  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8019F204 0019C164  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8019F208 0019C168  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8019F20C 0019C16C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F210 0019C170  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8019F214 0019C174  7D 89 03 A6 */	mtctr r12
/* 8019F218 0019C178  4E 80 04 21 */	bctrl
/* 8019F21C 0019C17C  80 7F 0A EC */	lwz r3, 0xaec(r31)
/* 8019F220 0019C180  28 03 00 00 */	cmplwi r3, 0
/* 8019F224 0019C184  41 82 01 20 */	beq lbl_8019F344
/* 8019F228 0019C188  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F22C 0019C18C  38 80 00 01 */	li r4, 1
/* 8019F230 0019C190  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F234 0019C194  7D 89 03 A6 */	mtctr r12
/* 8019F238 0019C198  4E 80 04 21 */	bctrl
/* 8019F23C 0019C19C  83 BF 0A EC */	lwz r29, 0xaec(r31)
/* 8019F240 0019C1A0  38 61 00 84 */	addi r3, r1, 0x84
/* 8019F244 0019C1A4  38 9F 00 34 */	addi r4, r31, 0x34
/* 8019F248 0019C1A8  48 17 39 F9 */	bl GetRotation__12CTransform4fCFv
/* 8019F24C 0019C1AC  7F A3 EB 78 */	mr r3, r29
/* 8019F250 0019C1B0  38 81 00 84 */	addi r4, r1, 0x84
/* 8019F254 0019C1B4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8019F258 0019C1B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8019F25C 0019C1BC  7D 89 03 A6 */	mtctr r12
/* 8019F260 0019C1C0  4E 80 04 21 */	bctrl
/* 8019F264 0019C1C4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8019F268 0019C1C8  38 81 00 38 */	addi r4, r1, 0x38
/* 8019F26C 0019C1CC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8019F270 0019C1D0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8019F274 0019C1D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8019F278 0019C1D8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8019F27C 0019C1DC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8019F280 0019C1E0  80 7F 0A EC */	lwz r3, 0xaec(r31)
/* 8019F284 0019C1E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F288 0019C1E8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8019F28C 0019C1EC  7D 89 03 A6 */	mtctr r12
/* 8019F290 0019C1F0  4E 80 04 21 */	bctrl
/* 8019F294 0019C1F4  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8019F298 0019C1F8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8019F29C 0019C1FC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019F2A0 0019C200  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8019F2A4 0019C204  C0 03 00 04 */	lfs f0, 4(r3)
/* 8019F2A8 0019C208  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8019F2AC 0019C20C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8019F2B0 0019C210  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8019F2B4 0019C214  80 7F 0A EC */	lwz r3, 0xaec(r31)
/* 8019F2B8 0019C218  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F2BC 0019C21C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8019F2C0 0019C220  7D 89 03 A6 */	mtctr r12
/* 8019F2C4 0019C224  4E 80 04 21 */	bctrl
/* 8019F2C8 0019C228  80 7F 0A EC */	lwz r3, 0xaec(r31)
/* 8019F2CC 0019C22C  FC 20 F8 90 */	fmr f1, f31
/* 8019F2D0 0019C230  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F2D4 0019C234  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8019F2D8 0019C238  7D 89 03 A6 */	mtctr r12
/* 8019F2DC 0019C23C  4E 80 04 21 */	bctrl
/* 8019F2E0 0019C240  48 00 00 64 */	b lbl_8019F344
lbl_8019F2E4:
/* 8019F2E4 0019C244  80 7F 0A 9C */	lwz r3, 0xa9c(r31)
/* 8019F2E8 0019C248  38 80 00 00 */	li r4, 0
/* 8019F2EC 0019C24C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F2F0 0019C250  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F2F4 0019C254  7D 89 03 A6 */	mtctr r12
/* 8019F2F8 0019C258  4E 80 04 21 */	bctrl
/* 8019F2FC 0019C25C  80 7F 0A B0 */	lwz r3, 0xab0(r31)
/* 8019F300 0019C260  38 80 00 00 */	li r4, 0
/* 8019F304 0019C264  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F308 0019C268  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F30C 0019C26C  7D 89 03 A6 */	mtctr r12
/* 8019F310 0019C270  4E 80 04 21 */	bctrl
/* 8019F314 0019C274  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 8019F318 0019C278  38 80 00 00 */	li r4, 0
/* 8019F31C 0019C27C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F320 0019C280  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F324 0019C284  7D 89 03 A6 */	mtctr r12
/* 8019F328 0019C288  4E 80 04 21 */	bctrl
/* 8019F32C 0019C28C  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8019F330 0019C290  38 80 00 00 */	li r4, 0
/* 8019F334 0019C294  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F338 0019C298  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019F33C 0019C29C  7D 89 03 A6 */	mtctr r12
/* 8019F340 0019C2A0  4E 80 04 21 */	bctrl
lbl_8019F344:
/* 8019F344 0019C2A4  80 7F 0A 9C */	lwz r3, 0xa9c(r31)
/* 8019F348 0019C2A8  FC 20 F8 90 */	fmr f1, f31
/* 8019F34C 0019C2AC  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F350 0019C2B0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8019F354 0019C2B4  7D 89 03 A6 */	mtctr r12
/* 8019F358 0019C2B8  4E 80 04 21 */	bctrl
/* 8019F35C 0019C2BC  80 7F 0A B0 */	lwz r3, 0xab0(r31)
/* 8019F360 0019C2C0  FC 20 F8 90 */	fmr f1, f31
/* 8019F364 0019C2C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F368 0019C2C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8019F36C 0019C2CC  7D 89 03 A6 */	mtctr r12
/* 8019F370 0019C2D0  4E 80 04 21 */	bctrl
/* 8019F374 0019C2D4  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 8019F378 0019C2D8  FC 20 F8 90 */	fmr f1, f31
/* 8019F37C 0019C2DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F380 0019C2E0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8019F384 0019C2E4  7D 89 03 A6 */	mtctr r12
/* 8019F388 0019C2E8  4E 80 04 21 */	bctrl
/* 8019F38C 0019C2EC  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8019F390 0019C2F0  FC 20 F8 90 */	fmr f1, f31
/* 8019F394 0019C2F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F398 0019C2F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8019F39C 0019C2FC  7D 89 03 A6 */	mtctr r12
/* 8019F3A0 0019C300  4E 80 04 21 */	bctrl
/* 8019F3A4 0019C304  C0 22 A7 68 */	lfs f1, lbl_805AC488@sda21(r2)
/* 8019F3A8 0019C308  C0 1F 06 DC */	lfs f0, 0x6dc(r31)
/* 8019F3AC 0019C30C  C0 42 A7 74 */	lfs f2, lbl_805AC494@sda21(r2)
/* 8019F3B0 0019C310  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019F3B4 0019C314  C0 3F 09 74 */	lfs f1, 0x974(r31)
/* 8019F3B8 0019C318  EC 02 00 32 */	fmuls f0, f2, f0
/* 8019F3BC 0019C31C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F3C0 0019C320  4C 41 13 82 */	cror 2, 1, 2
/* 8019F3C4 0019C324  40 82 00 5C */	bne lbl_8019F420
/* 8019F3C8 0019C328  80 1F 0A F0 */	lwz r0, 0xaf0(r31)
/* 8019F3CC 0019C32C  28 00 00 00 */	cmplwi r0, 0
/* 8019F3D0 0019C330  40 82 00 74 */	bne lbl_8019F444
/* 8019F3D4 0019C334  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8019F3D8 0019C338  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8019F3DC 0019C33C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8019F3E0 0019C340  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 8019F3E4 0019C344  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8019F3E8 0019C348  38 61 00 14 */	addi r3, r1, 0x14
/* 8019F3EC 0019C34C  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 8019F3F0 0019C350  38 A1 00 20 */	addi r5, r1, 0x20
/* 8019F3F4 0019C354  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8019F3F8 0019C358  38 E0 00 00 */	li r7, 0
/* 8019F3FC 0019C35C  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8019F400 0019C360  39 00 00 01 */	li r8, 1
/* 8019F404 0019C364  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8019F408 0019C368  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8019F40C 0019C36C  A0 9F 07 40 */	lhz r4, 0x740(r31)
/* 8019F410 0019C370  48 14 AE A1 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 8019F414 0019C374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019F418 0019C378  90 1F 0A F0 */	stw r0, 0xaf0(r31)
/* 8019F41C 0019C37C  48 00 00 28 */	b lbl_8019F444
lbl_8019F420:
/* 8019F420 0019C380  80 1F 0A F0 */	lwz r0, 0xaf0(r31)
/* 8019F424 0019C384  28 00 00 00 */	cmplwi r0, 0
/* 8019F428 0019C388  41 82 00 1C */	beq lbl_8019F444
/* 8019F42C 0019C38C  80 1F 0A F0 */	lwz r0, 0xaf0(r31)
/* 8019F430 0019C390  38 61 00 10 */	addi r3, r1, 0x10
/* 8019F434 0019C394  90 01 00 10 */	stw r0, 0x10(r1)
/* 8019F438 0019C398  48 14 AA 4D */	bl RemoveEmitter__11CSfxManagerF10CSfxHandle
/* 8019F43C 0019C39C  38 00 00 00 */	li r0, 0
/* 8019F440 0019C3A0  90 1F 0A F0 */	stw r0, 0xaf0(r31)
lbl_8019F444:
/* 8019F444 0019C3A4  E3 E1 01 F8 */	psq_l f31, 504(r1), 0, qr0
/* 8019F448 0019C3A8  80 01 02 04 */	lwz r0, 0x204(r1)
/* 8019F44C 0019C3AC  CB E1 01 F0 */	lfd f31, 0x1f0(r1)
/* 8019F450 0019C3B0  83 E1 01 EC */	lwz r31, 0x1ec(r1)
/* 8019F454 0019C3B4  83 C1 01 E8 */	lwz r30, 0x1e8(r1)
/* 8019F458 0019C3B8  83 A1 01 E4 */	lwz r29, 0x1e4(r1)
/* 8019F45C 0019C3BC  7C 08 03 A6 */	mtlr r0
/* 8019F460 0019C3C0  38 21 02 00 */	addi r1, r1, 0x200
/* 8019F464 0019C3C4  4E 80 00 20 */	blr

.global CreateFlameThrower__12CIceSheegothFR13CStateManager
CreateFlameThrower__12CIceSheegothFR13CStateManager:
/* 8019F468 0019C3C8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8019F46C 0019C3CC  7C 08 02 A6 */	mflr r0
/* 8019F470 0019C3D0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8019F474 0019C3D4  BF 21 00 74 */	stmw r25, 0x74(r1)
/* 8019F478 0019C3D8  7C 7E 1B 78 */	mr r30, r3
/* 8019F47C 0019C3DC  7C 9F 23 78 */	mr r31, r4
/* 8019F480 0019C3E0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8019F484 0019C3E4  A0 63 0A 80 */	lhz r3, 0xa80(r3)
/* 8019F488 0019C3E8  7C 03 00 40 */	cmplw r3, r0
/* 8019F48C 0019C3EC  40 82 01 2C */	bne lbl_8019F5B8
/* 8019F490 0019C3F0  80 FE 06 E8 */	lwz r7, 0x6e8(r30)
/* 8019F494 0019C3F4  38 C0 00 06 */	li r6, 6
/* 8019F498 0019C3F8  C0 42 A7 78 */	lfs f2, lbl_805AC498@sda21(r2)
/* 8019F49C 0019C3FC  38 A0 00 04 */	li r5, 4
/* 8019F4A0 0019C400  C0 22 A7 7C */	lfs f1, lbl_805AC49C@sda21(r2)
/* 8019F4A4 0019C404  38 00 00 0F */	li r0, 0xf
/* 8019F4A8 0019C408  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 8019F4AC 0019C40C  38 61 00 34 */	addi r3, r1, 0x34
/* 8019F4B0 0019C410  90 C1 00 50 */	stw r6, 0x50(r1)
/* 8019F4B4 0019C414  90 A1 00 54 */	stw r5, 0x54(r1)
/* 8019F4B8 0019C418  90 E1 00 58 */	stw r7, 0x58(r1)
/* 8019F4BC 0019C41C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8019F4C0 0019C420  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8019F4C4 0019C424  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8019F4C8 0019C428  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8019F4CC 0019C42C  4B EA DC 11 */	bl AllocateUniqueId__13CStateManagerFv
/* 8019F4D0 0019C430  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 8019F4D4 0019C434  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 8019F4D8 0019C438  38 63 13 D8 */	addi r3, r3, lbl_803D13D8@l
/* 8019F4DC 0019C43C  3B 20 00 00 */	li r25, 0
/* 8019F4E0 0019C440  B0 1E 0A 80 */	sth r0, 0xa80(r30)
/* 8019F4E4 0019C444  38 83 00 8C */	addi r4, r3, 0x8c
/* 8019F4E8 0019C448  38 60 04 08 */	li r3, 0x408
/* 8019F4EC 0019C44C  38 A0 00 00 */	li r5, 0
/* 8019F4F0 0019C450  48 17 63 7D */	bl __nw__FUlPCcPCc
/* 8019F4F4 0019C454  7C 7D 1B 79 */	or. r29, r3, r3
/* 8019F4F8 0019C458  41 82 00 A0 */	beq lbl_8019F598
/* 8019F4FC 0019C45C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8019F500 0019C460  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 8019F504 0019C464  83 9E 07 58 */	lwz r28, 0x758(r30)
/* 8019F508 0019C468  38 83 13 D8 */	addi r4, r3, lbl_803D13D8@l
/* 8019F50C 0019C46C  A3 7E 07 54 */	lhz r27, 0x754(r30)
/* 8019F510 0019C470  38 61 00 40 */	addi r3, r1, 0x40
/* 8019F514 0019C474  83 5E 07 50 */	lwz r26, 0x750(r30)
/* 8019F518 0019C478  38 84 00 93 */	addi r4, r4, 0x93
/* 8019F51C 0019C47C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8019F520 0019C480  B0 01 00 30 */	sth r0, 0x30(r1)
/* 8019F524 0019C484  80 BE 00 04 */	lwz r5, 4(r30)
/* 8019F528 0019C488  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 8019F52C 0019C48C  A0 1E 0A 80 */	lhz r0, 0xa80(r30)
/* 8019F530 0019C490  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8019F534 0019C494  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8019F538 0019C498  4B E6 57 81 */	bl string_l__4rstlFPCc
/* 8019F53C 0019C49C  38 01 00 28 */	addi r0, r1, 0x28
/* 8019F540 0019C4A0  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 8019F544 0019C4A4  90 01 00 08 */	stw r0, 8(r1)
/* 8019F548 0019C4A8  38 01 00 3C */	addi r0, r1, 0x3c
/* 8019F54C 0019C4AC  39 03 66 70 */	addi r8, r3, sIdentity__12CTransform4f@l
/* 8019F550 0019C4B0  38 81 00 30 */	addi r4, r1, 0x30
/* 8019F554 0019C4B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019F558 0019C4B8  38 00 00 00 */	li r0, 0
/* 8019F55C 0019C4BC  7F A3 EB 78 */	mr r3, r29
/* 8019F560 0019C4C0  38 A1 00 40 */	addi r5, r1, 0x40
/* 8019F564 0019C4C4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8019F568 0019C4C8  38 9E 0A 84 */	addi r4, r30, 0xa84
/* 8019F56C 0019C4CC  38 E1 00 50 */	addi r7, r1, 0x50
/* 8019F570 0019C4D0  39 5E 06 EC */	addi r10, r30, 0x6ec
/* 8019F574 0019C4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019F578 0019C4D8  3B 20 00 01 */	li r25, 1
/* 8019F57C 0019C4DC  38 C0 00 03 */	li r6, 3
/* 8019F580 0019C4E0  39 20 00 2F */	li r9, 0x2f
/* 8019F584 0019C4E4  93 41 00 18 */	stw r26, 0x18(r1)
/* 8019F588 0019C4E8  93 61 00 1C */	stw r27, 0x1c(r1)
/* 8019F58C 0019C4EC  93 81 00 20 */	stw r28, 0x20(r1)
/* 8019F590 0019C4F0  4B FF 95 61 */	bl "__ct__13CFlameThrowerFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC10CFlameInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId9TUniqueIdUi"
/* 8019F594 0019C4F4  7C 7D 1B 78 */	mr r29, r3
lbl_8019F598:
/* 8019F598 0019C4F8  7F 20 07 75 */	extsb. r0, r25
/* 8019F59C 0019C4FC  7F BA EB 78 */	mr r26, r29
/* 8019F5A0 0019C500  41 82 00 0C */	beq lbl_8019F5AC
/* 8019F5A4 0019C504  38 61 00 40 */	addi r3, r1, 0x40
/* 8019F5A8 0019C508  48 19 E5 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8019F5AC:
/* 8019F5AC 0019C50C  7F E3 FB 78 */	mr r3, r31
/* 8019F5B0 0019C510  7F 44 D3 78 */	mr r4, r26
/* 8019F5B4 0019C514  4B EA D5 61 */	bl AddObject__13CStateManagerFR7CEntity
lbl_8019F5B8:
/* 8019F5B8 0019C518  BB 21 00 74 */	lmw r25, 0x74(r1)
/* 8019F5BC 0019C51C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8019F5C0 0019C520  7C 08 03 A6 */	mtlr r0
/* 8019F5C4 0019C524  38 21 00 90 */	addi r1, r1, 0x90
/* 8019F5C8 0019C528  4E 80 00 20 */	blr

.global sub_8019f5cc
sub_8019f5cc:
/* 8019F5CC 0019C52C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019F5D0 0019C530  7C 08 02 A6 */	mflr r0
/* 8019F5D4 0019C534  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 8019F5D8 0019C538  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019F5DC 0019C53C  C0 43 09 5C */	lfs f2, 0x95c(r3)
/* 8019F5E0 0019C540  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8019F5E4 0019C544  40 81 00 0C */	ble lbl_8019F5F0
/* 8019F5E8 0019C548  C0 42 A7 60 */	lfs f2, lbl_805AC480@sda21(r2)
/* 8019F5EC 0019C54C  48 00 00 08 */	b lbl_8019F5F4
lbl_8019F5F0:
/* 8019F5F0 0019C550  C0 43 09 44 */	lfs f2, 0x944(r3)
lbl_8019F5F4:
/* 8019F5F4 0019C554  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8019F5F8 0019C558  C0 63 09 48 */	lfs f3, 0x948(r3)
/* 8019F5FC 0019C55C  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8019F600 0019C560  40 81 00 30 */	ble lbl_8019F630
/* 8019F604 0019C564  C0 02 A7 74 */	lfs f0, lbl_805AC494@sda21(r2)
/* 8019F608 0019C568  EC 00 18 7A */	fmadds f0, f0, f1, f3
/* 8019F60C 0019C56C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8019F610 0019C570  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8019F614 0019C574  40 80 00 0C */	bge lbl_8019F620
/* 8019F618 0019C578  38 81 00 10 */	addi r4, r1, 0x10
/* 8019F61C 0019C57C  48 00 00 08 */	b lbl_8019F624
lbl_8019F620:
/* 8019F620 0019C580  38 81 00 0C */	addi r4, r1, 0xc
lbl_8019F624:
/* 8019F624 0019C584  C0 04 00 00 */	lfs f0, 0(r4)
/* 8019F628 0019C588  D0 03 09 48 */	stfs f0, 0x948(r3)
/* 8019F62C 0019C58C  48 00 00 30 */	b lbl_8019F65C
lbl_8019F630:
/* 8019F630 0019C590  40 80 00 2C */	bge lbl_8019F65C
/* 8019F634 0019C594  C0 02 A7 74 */	lfs f0, lbl_805AC494@sda21(r2)
/* 8019F638 0019C598  EC 00 18 7C */	fnmsubs f0, f0, f1, f3
/* 8019F63C 0019C59C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8019F640 0019C5A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8019F644 0019C5A4  40 80 00 0C */	bge lbl_8019F650
/* 8019F648 0019C5A8  38 81 00 08 */	addi r4, r1, 8
/* 8019F64C 0019C5AC  48 00 00 08 */	b lbl_8019F654
lbl_8019F650:
/* 8019F650 0019C5B0  38 81 00 10 */	addi r4, r1, 0x10
lbl_8019F654:
/* 8019F654 0019C5B4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8019F658 0019C5B8  D0 03 09 48 */	stfs f0, 0x948(r3)
lbl_8019F65C:
/* 8019F65C 0019C5BC  C0 23 09 48 */	lfs f1, 0x948(r3)
/* 8019F660 0019C5C0  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8019F664 0019C5C4  FC 40 08 90 */	fmr f2, f1
/* 8019F668 0019C5C8  38 63 00 04 */	addi r3, r3, 4
/* 8019F66C 0019C5CC  4B F9 21 7D */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 8019F670 0019C5D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019F674 0019C5D4  7C 08 03 A6 */	mtlr r0
/* 8019F678 0019C5D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8019F67C 0019C5DC  4E 80 00 20 */	blr

.global sub_8019f680
sub_8019f680:
/* 8019F680 0019C5E0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8019F684 0019C5E4  7C 08 02 A6 */	mflr r0
/* 8019F688 0019C5E8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8019F68C 0019C5EC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8019F690 0019C5F0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8019F694 0019C5F4  BF 61 00 6C */	stmw r27, 0x6c(r1)
/* 8019F698 0019C5F8  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8019F69C 0019C5FC  7C 7C 1B 78 */	mr r28, r3
/* 8019F6A0 0019C600  7C 9D 23 78 */	mr r29, r4
/* 8019F6A4 0019C604  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8019F6A8 0019C608  41 82 03 44 */	beq lbl_8019F9EC
/* 8019F6AC 0019C60C  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 8019F6B0 0019C610  7F A3 EB 78 */	mr r3, r29
/* 8019F6B4 0019C614  38 81 00 1C */	addi r4, r1, 0x1c
/* 8019F6B8 0019C618  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8019F6BC 0019C61C  A0 1C 0A F8 */	lhz r0, 0xaf8(r28)
/* 8019F6C0 0019C620  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8019F6C4 0019C624  4B EA CE B1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019F6C8 0019C628  7C 64 1B 78 */	mr r4, r3
/* 8019F6CC 0019C62C  38 61 00 58 */	addi r3, r1, 0x58
/* 8019F6D0 0019C630  4B F0 FC 7D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019F6D4 0019C634  80 63 00 04 */	lwz r3, 4(r3)
/* 8019F6D8 0019C638  28 03 00 00 */	cmplwi r3, 0
/* 8019F6DC 0019C63C  41 82 00 3C */	beq lbl_8019F718
/* 8019F6E0 0019C640  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F6E4 0019C644  7F A4 EB 78 */	mr r4, r29
/* 8019F6E8 0019C648  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019F6EC 0019C64C  7D 89 03 A6 */	mtctr r12
/* 8019F6F0 0019C650  4E 80 04 21 */	bctrl
/* 8019F6F4 0019C654  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019F6F8 0019C658  38 61 00 2C */	addi r3, r1, 0x2c
/* 8019F6FC 0019C65C  C0 3C 09 70 */	lfs f1, 0x970(r28)
/* 8019F700 0019C660  38 81 00 28 */	addi r4, r1, 0x28
/* 8019F704 0019C664  EC 01 00 28 */	fsubs f0, f1, f0
/* 8019F708 0019C668  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8019F70C 0019C66C  4B EB 00 25 */	bl "Max<f>__5CMathFRCfRCf"
/* 8019F710 0019C670  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019F714 0019C674  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_8019F718:
/* 8019F718 0019C678  3B FC 0B 00 */	addi r31, r28, 0xb00
/* 8019F71C 0019C67C  7F FE FB 78 */	mr r30, r31
/* 8019F720 0019C680  48 00 00 74 */	b lbl_8019F794
lbl_8019F724:
/* 8019F724 0019C684  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8019F728 0019C688  7F A3 EB 78 */	mr r3, r29
/* 8019F72C 0019C68C  38 81 00 18 */	addi r4, r1, 0x18
/* 8019F730 0019C690  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8019F734 0019C694  4B EA CE 41 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019F738 0019C698  7C 64 1B 78 */	mr r4, r3
/* 8019F73C 0019C69C  38 61 00 50 */	addi r3, r1, 0x50
/* 8019F740 0019C6A0  4B F0 FC 0D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019F744 0019C6A4  80 63 00 04 */	lwz r3, 4(r3)
/* 8019F748 0019C6A8  28 03 00 00 */	cmplwi r3, 0
/* 8019F74C 0019C6AC  41 82 00 44 */	beq lbl_8019F790
/* 8019F750 0019C6B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F754 0019C6B4  7F A4 EB 78 */	mr r4, r29
/* 8019F758 0019C6B8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019F75C 0019C6BC  7D 89 03 A6 */	mtctr r12
/* 8019F760 0019C6C0  4E 80 04 21 */	bctrl
/* 8019F764 0019C6C4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019F768 0019C6C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8019F76C 0019C6CC  C0 3C 09 70 */	lfs f1, 0x970(r28)
/* 8019F770 0019C6D0  38 81 00 24 */	addi r4, r1, 0x24
/* 8019F774 0019C6D4  C0 42 A7 80 */	lfs f2, lbl_805AC4A0@sda21(r2)
/* 8019F778 0019C6D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8019F77C 0019C6DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8019F780 0019C6E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8019F784 0019C6E4  4B EA FF AD */	bl "Max<f>__5CMathFRCfRCf"
/* 8019F788 0019C6E8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019F78C 0019C6EC  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_8019F790:
/* 8019F790 0019C6F0  3B DE 00 02 */	addi r30, r30, 2
lbl_8019F794:
/* 8019F794 0019C6F4  80 1C 0A FC */	lwz r0, 0xafc(r28)
/* 8019F798 0019C6F8  54 00 08 3C */	slwi r0, r0, 1
/* 8019F79C 0019C6FC  7C 1F 02 14 */	add r0, r31, r0
/* 8019F7A0 0019C700  7C 1E 00 40 */	cmplw r30, r0
/* 8019F7A4 0019C704  40 82 FF 80 */	bne lbl_8019F724
/* 8019F7A8 0019C708  3B DC 0B 08 */	addi r30, r28, 0xb08
/* 8019F7AC 0019C70C  7F DB F3 78 */	mr r27, r30
/* 8019F7B0 0019C710  48 00 00 6C */	b lbl_8019F81C
lbl_8019F7B4:
/* 8019F7B4 0019C714  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8019F7B8 0019C718  7F A3 EB 78 */	mr r3, r29
/* 8019F7BC 0019C71C  38 81 00 14 */	addi r4, r1, 0x14
/* 8019F7C0 0019C720  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8019F7C4 0019C724  4B EA CD B1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019F7C8 0019C728  7C 64 1B 78 */	mr r4, r3
/* 8019F7CC 0019C72C  38 61 00 48 */	addi r3, r1, 0x48
/* 8019F7D0 0019C730  4B F0 FB 7D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019F7D4 0019C734  80 63 00 04 */	lwz r3, 4(r3)
/* 8019F7D8 0019C738  28 03 00 00 */	cmplwi r3, 0
/* 8019F7DC 0019C73C  41 82 00 3C */	beq lbl_8019F818
/* 8019F7E0 0019C740  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F7E4 0019C744  7F A4 EB 78 */	mr r4, r29
/* 8019F7E8 0019C748  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019F7EC 0019C74C  7D 89 03 A6 */	mtctr r12
/* 8019F7F0 0019C750  4E 80 04 21 */	bctrl
/* 8019F7F4 0019C754  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019F7F8 0019C758  38 61 00 2C */	addi r3, r1, 0x2c
/* 8019F7FC 0019C75C  C0 3C 09 70 */	lfs f1, 0x970(r28)
/* 8019F800 0019C760  38 81 00 20 */	addi r4, r1, 0x20
/* 8019F804 0019C764  EC 01 00 28 */	fsubs f0, f1, f0
/* 8019F808 0019C768  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8019F80C 0019C76C  4B EA FF 25 */	bl "Max<f>__5CMathFRCfRCf"
/* 8019F810 0019C770  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019F814 0019C774  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_8019F818:
/* 8019F818 0019C778  3B 7B 00 02 */	addi r27, r27, 2
lbl_8019F81C:
/* 8019F81C 0019C77C  80 1C 0B 04 */	lwz r0, 0xb04(r28)
/* 8019F820 0019C780  54 00 08 3C */	slwi r0, r0, 1
/* 8019F824 0019C784  7C 1E 02 14 */	add r0, r30, r0
/* 8019F828 0019C788  7C 1B 00 40 */	cmplw r27, r0
/* 8019F82C 0019C78C  40 82 FF 88 */	bne lbl_8019F7B4
/* 8019F830 0019C790  7F 83 E3 78 */	mr r3, r28
/* 8019F834 0019C794  7F A4 EB 78 */	mr r4, r29
/* 8019F838 0019C798  81 9C 00 00 */	lwz r12, 0(r28)
/* 8019F83C 0019C79C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019F840 0019C7A0  7D 89 03 A6 */	mtctr r12
/* 8019F844 0019C7A4  4E 80 04 21 */	bctrl
/* 8019F848 0019C7A8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8019F84C 0019C7AC  7F 83 E3 78 */	mr r3, r28
/* 8019F850 0019C7B0  81 9C 00 00 */	lwz r12, 0(r28)
/* 8019F854 0019C7B4  7F A4 EB 78 */	mr r4, r29
/* 8019F858 0019C7B8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8019F85C 0019C7BC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019F860 0019C7C0  EF E1 00 28 */	fsubs f31, f1, f0
/* 8019F864 0019C7C4  7D 89 03 A6 */	mtctr r12
/* 8019F868 0019C7C8  4E 80 04 21 */	bctrl
/* 8019F86C 0019C7CC  D3 E3 00 00 */	stfs f31, 0(r3)
/* 8019F870 0019C7D0  7F 83 E3 78 */	mr r3, r28
/* 8019F874 0019C7D4  7F A4 EB 78 */	mr r4, r29
/* 8019F878 0019C7D8  81 9C 00 00 */	lwz r12, 0(r28)
/* 8019F87C 0019C7DC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019F880 0019C7E0  7D 89 03 A6 */	mtctr r12
/* 8019F884 0019C7E4  4E 80 04 21 */	bctrl
/* 8019F888 0019C7E8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8019F88C 0019C7EC  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 8019F890 0019C7F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F894 0019C7F4  4C 40 13 82 */	cror 2, 0, 2
/* 8019F898 0019C7F8  40 82 00 3C */	bne lbl_8019F8D4
/* 8019F89C 0019C7FC  81 9C 00 00 */	lwz r12, 0(r28)
/* 8019F8A0 0019C800  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8019F8A4 0019C804  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 8019F8A8 0019C808  7F 83 E3 78 */	mr r3, r28
/* 8019F8AC 0019C80C  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8019F8B0 0019C810  7F A4 EB 78 */	mr r4, r29
/* 8019F8B4 0019C814  38 C0 00 14 */	li r6, 0x14
/* 8019F8B8 0019C818  7D 89 03 A6 */	mtctr r12
/* 8019F8BC 0019C81C  4E 80 04 21 */	bctrl
/* 8019F8C0 0019C820  88 1C 0B 28 */	lbz r0, 0xb28(r28)
/* 8019F8C4 0019C824  38 60 00 01 */	li r3, 1
/* 8019F8C8 0019C828  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8019F8CC 0019C82C  98 1C 0B 28 */	stb r0, 0xb28(r28)
/* 8019F8D0 0019C830  48 00 01 1C */	b lbl_8019F9EC
lbl_8019F8D4:
/* 8019F8D4 0019C834  A0 1C 0A F8 */	lhz r0, 0xaf8(r28)
/* 8019F8D8 0019C838  7F A3 EB 78 */	mr r3, r29
/* 8019F8DC 0019C83C  38 81 00 10 */	addi r4, r1, 0x10
/* 8019F8E0 0019C840  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8019F8E4 0019C844  4B EA CC 91 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019F8E8 0019C848  7C 64 1B 78 */	mr r4, r3
/* 8019F8EC 0019C84C  38 61 00 40 */	addi r3, r1, 0x40
/* 8019F8F0 0019C850  4B F0 FA 5D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019F8F4 0019C854  80 63 00 04 */	lwz r3, 4(r3)
/* 8019F8F8 0019C858  28 03 00 00 */	cmplwi r3, 0
/* 8019F8FC 0019C85C  41 82 00 20 */	beq lbl_8019F91C
/* 8019F900 0019C860  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F904 0019C864  7F A4 EB 78 */	mr r4, r29
/* 8019F908 0019C868  C3 FC 09 70 */	lfs f31, 0x970(r28)
/* 8019F90C 0019C86C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019F910 0019C870  7D 89 03 A6 */	mtctr r12
/* 8019F914 0019C874  4E 80 04 21 */	bctrl
/* 8019F918 0019C878  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_8019F91C:
/* 8019F91C 0019C87C  7F FB FB 78 */	mr r27, r31
/* 8019F920 0019C880  48 00 00 50 */	b lbl_8019F970
lbl_8019F924:
/* 8019F924 0019C884  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8019F928 0019C888  7F A3 EB 78 */	mr r3, r29
/* 8019F92C 0019C88C  38 81 00 0C */	addi r4, r1, 0xc
/* 8019F930 0019C890  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8019F934 0019C894  4B EA CC 41 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019F938 0019C898  7C 64 1B 78 */	mr r4, r3
/* 8019F93C 0019C89C  38 61 00 38 */	addi r3, r1, 0x38
/* 8019F940 0019C8A0  4B F0 FA 0D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019F944 0019C8A4  80 63 00 04 */	lwz r3, 4(r3)
/* 8019F948 0019C8A8  28 03 00 00 */	cmplwi r3, 0
/* 8019F94C 0019C8AC  41 82 00 20 */	beq lbl_8019F96C
/* 8019F950 0019C8B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F954 0019C8B4  7F A4 EB 78 */	mr r4, r29
/* 8019F958 0019C8B8  C3 FC 09 70 */	lfs f31, 0x970(r28)
/* 8019F95C 0019C8BC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019F960 0019C8C0  7D 89 03 A6 */	mtctr r12
/* 8019F964 0019C8C4  4E 80 04 21 */	bctrl
/* 8019F968 0019C8C8  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_8019F96C:
/* 8019F96C 0019C8CC  3B 7B 00 02 */	addi r27, r27, 2
lbl_8019F970:
/* 8019F970 0019C8D0  80 1C 0A FC */	lwz r0, 0xafc(r28)
/* 8019F974 0019C8D4  54 00 08 3C */	slwi r0, r0, 1
/* 8019F978 0019C8D8  7C 1F 02 14 */	add r0, r31, r0
/* 8019F97C 0019C8DC  7C 1B 00 40 */	cmplw r27, r0
/* 8019F980 0019C8E0  40 82 FF A4 */	bne lbl_8019F924
/* 8019F984 0019C8E4  7F DB F3 78 */	mr r27, r30
/* 8019F988 0019C8E8  48 00 00 50 */	b lbl_8019F9D8
lbl_8019F98C:
/* 8019F98C 0019C8EC  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8019F990 0019C8F0  7F A3 EB 78 */	mr r3, r29
/* 8019F994 0019C8F4  38 81 00 08 */	addi r4, r1, 8
/* 8019F998 0019C8F8  B0 01 00 08 */	sth r0, 8(r1)
/* 8019F99C 0019C8FC  4B EA CB D9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019F9A0 0019C900  7C 64 1B 78 */	mr r4, r3
/* 8019F9A4 0019C904  38 61 00 30 */	addi r3, r1, 0x30
/* 8019F9A8 0019C908  4B F0 F9 A5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019F9AC 0019C90C  80 63 00 04 */	lwz r3, 4(r3)
/* 8019F9B0 0019C910  28 03 00 00 */	cmplwi r3, 0
/* 8019F9B4 0019C914  41 82 00 20 */	beq lbl_8019F9D4
/* 8019F9B8 0019C918  81 83 00 00 */	lwz r12, 0(r3)
/* 8019F9BC 0019C91C  7F A4 EB 78 */	mr r4, r29
/* 8019F9C0 0019C920  C3 FC 09 70 */	lfs f31, 0x970(r28)
/* 8019F9C4 0019C924  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019F9C8 0019C928  7D 89 03 A6 */	mtctr r12
/* 8019F9CC 0019C92C  4E 80 04 21 */	bctrl
/* 8019F9D0 0019C930  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_8019F9D4:
/* 8019F9D4 0019C934  3B 7B 00 02 */	addi r27, r27, 2
lbl_8019F9D8:
/* 8019F9D8 0019C938  80 1C 0B 04 */	lwz r0, 0xb04(r28)
/* 8019F9DC 0019C93C  54 00 08 3C */	slwi r0, r0, 1
/* 8019F9E0 0019C940  7C 1E 02 14 */	add r0, r30, r0
/* 8019F9E4 0019C944  7C 1B 00 40 */	cmplw r27, r0
/* 8019F9E8 0019C948  40 82 FF A4 */	bne lbl_8019F98C
lbl_8019F9EC:
/* 8019F9EC 0019C94C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8019F9F0 0019C950  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8019F9F4 0019C954  BB 61 00 6C */	lmw r27, 0x6c(r1)
/* 8019F9F8 0019C958  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8019F9FC 0019C95C  7C 08 03 A6 */	mtlr r0
/* 8019FA00 0019C960  38 21 00 90 */	addi r1, r1, 0x90
/* 8019FA04 0019C964  4E 80 00 20 */	blr

.global sub_8019fa08
sub_8019fa08:
/* 8019FA08 0019C968  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8019FA0C 0019C96C  7C 08 02 A6 */	mflr r0
/* 8019FA10 0019C970  90 01 00 54 */	stw r0, 0x54(r1)
/* 8019FA14 0019C974  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 8019FA18 0019C978  7C 7D 1B 78 */	mr r29, r3
/* 8019FA1C 0019C97C  7C 9E 23 78 */	mr r30, r4
/* 8019FA20 0019C980  81 83 00 00 */	lwz r12, 0(r3)
/* 8019FA24 0019C984  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019FA28 0019C988  7D 89 03 A6 */	mtctr r12
/* 8019FA2C 0019C98C  4E 80 04 21 */	bctrl
/* 8019FA30 0019C990  7C 7F 1B 78 */	mr r31, r3
/* 8019FA34 0019C994  3B 9D 0B 00 */	addi r28, r29, 0xb00
/* 8019FA38 0019C998  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019FA3C 0019C99C  7F 9B E3 78 */	mr r27, r28
/* 8019FA40 0019C9A0  D0 1D 09 70 */	stfs f0, 0x970(r29)
/* 8019FA44 0019C9A4  48 00 00 58 */	b lbl_8019FA9C
lbl_8019FA48:
/* 8019FA48 0019C9A8  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8019FA4C 0019C9AC  7F C3 F3 78 */	mr r3, r30
/* 8019FA50 0019C9B0  38 81 00 10 */	addi r4, r1, 0x10
/* 8019FA54 0019C9B4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8019FA58 0019C9B8  4B EA CB 1D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019FA5C 0019C9BC  7C 64 1B 78 */	mr r4, r3
/* 8019FA60 0019C9C0  38 61 00 24 */	addi r3, r1, 0x24
/* 8019FA64 0019C9C4  4B F0 F8 E9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019FA68 0019C9C8  80 63 00 04 */	lwz r3, 4(r3)
/* 8019FA6C 0019C9CC  28 03 00 00 */	cmplwi r3, 0
/* 8019FA70 0019C9D0  41 82 00 28 */	beq lbl_8019FA98
/* 8019FA74 0019C9D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8019FA78 0019C9D8  7F C4 F3 78 */	mr r4, r30
/* 8019FA7C 0019C9DC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019FA80 0019C9E0  7D 89 03 A6 */	mtctr r12
/* 8019FA84 0019C9E4  4E 80 04 21 */	bctrl
/* 8019FA88 0019C9E8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8019FA8C 0019C9EC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8019FA90 0019C9F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8019FA94 0019C9F4  D0 03 00 04 */	stfs f0, 4(r3)
lbl_8019FA98:
/* 8019FA98 0019C9F8  3B 7B 00 02 */	addi r27, r27, 2
lbl_8019FA9C:
/* 8019FA9C 0019C9FC  80 1D 0A FC */	lwz r0, 0xafc(r29)
/* 8019FAA0 0019CA00  54 00 08 3C */	slwi r0, r0, 1
/* 8019FAA4 0019CA04  7C 1C 02 14 */	add r0, r28, r0
/* 8019FAA8 0019CA08  7C 1B 00 40 */	cmplw r27, r0
/* 8019FAAC 0019CA0C  40 82 FF 9C */	bne lbl_8019FA48
/* 8019FAB0 0019CA10  A0 1D 0A F8 */	lhz r0, 0xaf8(r29)
/* 8019FAB4 0019CA14  7F C3 F3 78 */	mr r3, r30
/* 8019FAB8 0019CA18  38 81 00 0C */	addi r4, r1, 0xc
/* 8019FABC 0019CA1C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8019FAC0 0019CA20  4B EA CA B5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019FAC4 0019CA24  7C 64 1B 78 */	mr r4, r3
/* 8019FAC8 0019CA28  38 61 00 1C */	addi r3, r1, 0x1c
/* 8019FACC 0019CA2C  4B F0 F8 81 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019FAD0 0019CA30  80 63 00 04 */	lwz r3, 4(r3)
/* 8019FAD4 0019CA34  28 03 00 00 */	cmplwi r3, 0
/* 8019FAD8 0019CA38  41 82 00 28 */	beq lbl_8019FB00
/* 8019FADC 0019CA3C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019FAE0 0019CA40  7F C4 F3 78 */	mr r4, r30
/* 8019FAE4 0019CA44  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019FAE8 0019CA48  7D 89 03 A6 */	mtctr r12
/* 8019FAEC 0019CA4C  4E 80 04 21 */	bctrl
/* 8019FAF0 0019CA50  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8019FAF4 0019CA54  D0 03 00 00 */	stfs f0, 0(r3)
/* 8019FAF8 0019CA58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8019FAFC 0019CA5C  D0 03 00 04 */	stfs f0, 4(r3)
lbl_8019FB00:
/* 8019FB00 0019CA60  3B 9D 0B 08 */	addi r28, r29, 0xb08
/* 8019FB04 0019CA64  7F 9B E3 78 */	mr r27, r28
/* 8019FB08 0019CA68  48 00 00 58 */	b lbl_8019FB60
lbl_8019FB0C:
/* 8019FB0C 0019CA6C  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8019FB10 0019CA70  7F C3 F3 78 */	mr r3, r30
/* 8019FB14 0019CA74  38 81 00 08 */	addi r4, r1, 8
/* 8019FB18 0019CA78  B0 01 00 08 */	sth r0, 8(r1)
/* 8019FB1C 0019CA7C  4B EA CA 59 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019FB20 0019CA80  7C 64 1B 78 */	mr r4, r3
/* 8019FB24 0019CA84  38 61 00 14 */	addi r3, r1, 0x14
/* 8019FB28 0019CA88  4B F0 F8 25 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019FB2C 0019CA8C  80 63 00 04 */	lwz r3, 4(r3)
/* 8019FB30 0019CA90  28 03 00 00 */	cmplwi r3, 0
/* 8019FB34 0019CA94  41 82 00 28 */	beq lbl_8019FB5C
/* 8019FB38 0019CA98  81 83 00 00 */	lwz r12, 0(r3)
/* 8019FB3C 0019CA9C  7F C4 F3 78 */	mr r4, r30
/* 8019FB40 0019CAA0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8019FB44 0019CAA4  7D 89 03 A6 */	mtctr r12
/* 8019FB48 0019CAA8  4E 80 04 21 */	bctrl
/* 8019FB4C 0019CAAC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8019FB50 0019CAB0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8019FB54 0019CAB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8019FB58 0019CAB8  D0 03 00 04 */	stfs f0, 4(r3)
lbl_8019FB5C:
/* 8019FB5C 0019CABC  3B 7B 00 02 */	addi r27, r27, 2
lbl_8019FB60:
/* 8019FB60 0019CAC0  80 1D 0B 04 */	lwz r0, 0xb04(r29)
/* 8019FB64 0019CAC4  54 00 08 3C */	slwi r0, r0, 1
/* 8019FB68 0019CAC8  7C 1C 02 14 */	add r0, r28, r0
/* 8019FB6C 0019CACC  7C 1B 00 40 */	cmplw r27, r0
/* 8019FB70 0019CAD0  40 82 FF 9C */	bne lbl_8019FB0C
/* 8019FB74 0019CAD4  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 8019FB78 0019CAD8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8019FB7C 0019CADC  7C 08 03 A6 */	mtlr r0
/* 8019FB80 0019CAE0  38 21 00 50 */	addi r1, r1, 0x50
/* 8019FB84 0019CAE4  4E 80 00 20 */	blr

.global sub_8019fb88
sub_8019fb88:
/* 8019FB88 0019CAE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019FB8C 0019CAEC  7C 08 02 A6 */	mflr r0
/* 8019FB90 0019CAF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8019FB94 0019CAF4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8019FB98 0019CAF8  3B E0 00 00 */	li r31, 0
/* 8019FB9C 0019CAFC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8019FBA0 0019CB00  7C BE 2B 78 */	mr r30, r5
/* 8019FBA4 0019CB04  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8019FBA8 0019CB08  7C 9D 23 78 */	mr r29, r4
/* 8019FBAC 0019CB0C  93 81 00 20 */	stw r28, 0x20(r1)
/* 8019FBB0 0019CB10  7C 7C 1B 78 */	mr r28, r3
/* 8019FBB4 0019CB14  48 00 00 5C */	b lbl_8019FC10
lbl_8019FBB8:
/* 8019FBB8 0019CB18  80 7C 0A 2C */	lwz r3, 0xa2c(r28)
/* 8019FBBC 0019CB1C  7F E4 FB 78 */	mr r4, r31
/* 8019FBC0 0019CB20  48 00 76 79 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8019FBC4 0019CB24  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8019FBC8 0019CB28  7F A3 EB 78 */	mr r3, r29
/* 8019FBCC 0019CB2C  38 81 00 08 */	addi r4, r1, 8
/* 8019FBD0 0019CB30  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8019FBD4 0019CB34  B0 01 00 08 */	sth r0, 8(r1)
/* 8019FBD8 0019CB38  4B EA C9 9D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8019FBDC 0019CB3C  7C 64 1B 78 */	mr r4, r3
/* 8019FBE0 0019CB40  38 61 00 10 */	addi r3, r1, 0x10
/* 8019FBE4 0019CB44  4B F0 F7 69 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8019FBE8 0019CB48  80 63 00 04 */	lwz r3, 4(r3)
/* 8019FBEC 0019CB4C  28 03 00 00 */	cmplwi r3, 0
/* 8019FBF0 0019CB50  41 82 00 1C */	beq lbl_8019FC0C
/* 8019FBF4 0019CB54  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8019FBF8 0019CB58  D0 03 03 04 */	stfs f0, 0x304(r3)
/* 8019FBFC 0019CB5C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8019FC00 0019CB60  D0 03 03 08 */	stfs f0, 0x308(r3)
/* 8019FC04 0019CB64  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8019FC08 0019CB68  D0 03 03 0C */	stfs f0, 0x30c(r3)
lbl_8019FC0C:
/* 8019FC0C 0019CB6C  3B FF 00 01 */	addi r31, r31, 1
lbl_8019FC10:
/* 8019FC10 0019CB70  80 7C 0A 2C */	lwz r3, 0xa2c(r28)
/* 8019FC14 0019CB74  48 00 76 35 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8019FC18 0019CB78  7C 1F 18 40 */	cmplw r31, r3
/* 8019FC1C 0019CB7C  41 80 FF 9C */	blt lbl_8019FBB8
/* 8019FC20 0019CB80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019FC24 0019CB84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8019FC28 0019CB88  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8019FC2C 0019CB8C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8019FC30 0019CB90  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8019FC34 0019CB94  7C 08 03 A6 */	mtlr r0
/* 8019FC38 0019CB98  38 21 00 30 */	addi r1, r1, 0x30
/* 8019FC3C 0019CB9C  4E 80 00 20 */	blr

.global sub_8019fc40
sub_8019fc40:
/* 8019FC40 0019CBA0  80 03 0A FC */	lwz r0, 0xafc(r3)
/* 8019FC44 0019CBA4  38 63 0B 00 */	addi r3, r3, 0xb00
/* 8019FC48 0019CBA8  7C 66 1B 78 */	mr r6, r3
/* 8019FC4C 0019CBAC  54 00 08 3C */	slwi r0, r0, 1
/* 8019FC50 0019CBB0  7C A3 02 14 */	add r5, r3, r0
/* 8019FC54 0019CBB4  48 00 00 20 */	b lbl_8019FC74
lbl_8019FC58:
/* 8019FC58 0019CBB8  A0 66 00 00 */	lhz r3, 0(r6)
/* 8019FC5C 0019CBBC  A0 04 00 08 */	lhz r0, 8(r4)
/* 8019FC60 0019CBC0  7C 03 00 40 */	cmplw r3, r0
/* 8019FC64 0019CBC4  40 82 00 0C */	bne lbl_8019FC70
/* 8019FC68 0019CBC8  38 60 00 01 */	li r3, 1
/* 8019FC6C 0019CBCC  4E 80 00 20 */	blr
lbl_8019FC70:
/* 8019FC70 0019CBD0  38 C6 00 02 */	addi r6, r6, 2
lbl_8019FC74:
/* 8019FC74 0019CBD4  7C 06 28 40 */	cmplw r6, r5
/* 8019FC78 0019CBD8  40 82 FF E0 */	bne lbl_8019FC58
/* 8019FC7C 0019CBDC  38 60 00 00 */	li r3, 0
/* 8019FC80 0019CBE0  4E 80 00 20 */	blr

.global sub_8019fc84
sub_8019fc84:
/* 8019FC84 0019CBE4  A0 84 00 08 */	lhz r4, 8(r4)
/* 8019FC88 0019CBE8  A0 03 0A F8 */	lhz r0, 0xaf8(r3)
/* 8019FC8C 0019CBEC  7C 04 00 50 */	subf r0, r4, r0
/* 8019FC90 0019CBF0  7C 00 00 34 */	cntlzw r0, r0
/* 8019FC94 0019CBF4  54 03 D9 7E */	srwi r3, r0, 5
/* 8019FC98 0019CBF8  4E 80 00 20 */	blr

.global sub_8019fc9c
sub_8019fc9c:
/* 8019FC9C 0019CBFC  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8019FCA0 0019CC00  7C 08 02 A6 */	mflr r0
/* 8019FCA4 0019CC04  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8019FCA8 0019CC08  BE E1 00 CC */	stmw r23, 0xcc(r1)
/* 8019FCAC 0019CC0C  7C 77 1B 78 */	mr r23, r3
/* 8019FCB0 0019CC10  7C B8 2B 78 */	mr r24, r5
/* 8019FCB4 0019CC14  7C D9 33 78 */	mr r25, r6
/* 8019FCB8 0019CC18  7C 9E 23 78 */	mr r30, r4
/* 8019FCBC 0019CC1C  3B A1 00 60 */	addi r29, r1, 0x60
/* 8019FCC0 0019CC20  3B 81 00 A4 */	addi r28, r1, 0xa4
/* 8019FCC4 0019CC24  3B 77 0B 20 */	addi r27, r23, 0xb20
/* 8019FCC8 0019CC28  3B 40 00 00 */	li r26, 0
/* 8019FCCC 0019CC2C  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8019FCD0 0019CC30  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8019FCD4 0019CC34  48 00 01 40 */	b lbl_8019FE14
lbl_8019FCD8:
/* 8019FCD8 0019CC38  80 9E 00 00 */	lwz r4, 0(r30)
/* 8019FCDC 0019CC3C  38 61 00 24 */	addi r3, r1, 0x24
/* 8019FCE0 0019CC40  4B E6 4F D9 */	bl string_l__4rstlFPCc
/* 8019FCE4 0019CC44  7F E4 FB 78 */	mr r4, r31
/* 8019FCE8 0019CC48  38 61 00 0C */	addi r3, r1, 0xc
/* 8019FCEC 0019CC4C  38 A1 00 24 */	addi r5, r1, 0x24
/* 8019FCF0 0019CC50  4B E8 EB 49 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8019FCF4 0019CC54  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8019FCF8 0019CC58  38 61 00 24 */	addi r3, r1, 0x24
/* 8019FCFC 0019CC5C  98 01 00 10 */	stb r0, 0x10(r1)
/* 8019FD00 0019CC60  48 19 DD E1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8019FD04 0019CC64  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8019FD08 0019CC68  28 00 00 FF */	cmplwi r0, 0xff
/* 8019FD0C 0019CC6C  41 82 01 00 */	beq lbl_8019FE0C
/* 8019FD10 0019CC70  80 9E 00 00 */	lwz r4, 0(r30)
/* 8019FD14 0019CC74  38 61 00 14 */	addi r3, r1, 0x14
/* 8019FD18 0019CC78  4B E6 4F A1 */	bl string_l__4rstlFPCc
/* 8019FD1C 0019CC7C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8019FD20 0019CC80  38 61 00 34 */	addi r3, r1, 0x34
/* 8019FD24 0019CC84  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8019FD28 0019CC88  38 81 00 08 */	addi r4, r1, 8
/* 8019FD2C 0019CC8C  98 01 00 08 */	stb r0, 8(r1)
/* 8019FD30 0019CC90  38 A1 00 14 */	addi r5, r1, 0x14
/* 8019FD34 0019CC94  C0 42 A7 84 */	lfs f2, lbl_805AC4A4@sda21(r2)
/* 8019FD38 0019CC98  48 00 8A D5 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 8019FD3C 0019CC9C  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 8019FD40 0019CCA0  7F 83 E3 78 */	mr r3, r28
/* 8019FD44 0019CCA4  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 8019FD48 0019CCA8  7F A4 EB 78 */	mr r4, r29
/* 8019FD4C 0019CCAC  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 8019FD50 0019CCB0  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 8019FD54 0019CCB4  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 8019FD58 0019CCB8  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 8019FD5C 0019CCBC  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 8019FD60 0019CCC0  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 8019FD64 0019CCC4  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 8019FD68 0019CCC8  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8019FD6C 0019CCCC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8019FD70 0019CCD0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8019FD74 0019CCD4  90 E1 00 78 */	stw r7, 0x78(r1)
/* 8019FD78 0019CCD8  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 8019FD7C 0019CCDC  98 A1 00 80 */	stb r5, 0x80(r1)
/* 8019FD80 0019CCE0  98 01 00 81 */	stb r0, 0x81(r1)
/* 8019FD84 0019CCE4  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 8019FD88 0019CCE8  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 8019FD8C 0019CCEC  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 8019FD90 0019CCF0  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8019FD94 0019CCF4  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 8019FD98 0019CCF8  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8019FD9C 0019CCFC  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8019FDA0 0019CD00  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8019FDA4 0019CD04  48 19 E3 BD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8019FDA8 0019CD08  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 8019FDAC 0019CD0C  28 1D 00 00 */	cmplwi r29, 0
/* 8019FDB0 0019CD10  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8019FDB4 0019CD14  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 8019FDB8 0019CD18  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8019FDBC 0019CD1C  41 82 00 0C */	beq lbl_8019FDC8
/* 8019FDC0 0019CD20  7F A3 EB 78 */	mr r3, r29
/* 8019FDC4 0019CD24  48 19 DD 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8019FDC8:
/* 8019FDC8 0019CD28  38 61 00 14 */	addi r3, r1, 0x14
/* 8019FDCC 0019CD2C  48 19 DD 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8019FDD0 0019CD30  7F 23 CB 78 */	mr r3, r25
/* 8019FDD4 0019CD34  38 81 00 78 */	addi r4, r1, 0x78
/* 8019FDD8 0019CD38  4B FB 64 59 */	bl sub_80156230
/* 8019FDDC 0019CD3C  80 17 0B 1C */	lwz r0, 0xb1c(r23)
/* 8019FDE0 0019CD40  7C 7B 02 15 */	add. r3, r27, r0
/* 8019FDE4 0019CD44  41 82 00 0C */	beq lbl_8019FDF0
/* 8019FDE8 0019CD48  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8019FDEC 0019CD4C  98 03 00 00 */	stb r0, 0(r3)
lbl_8019FDF0:
/* 8019FDF0 0019CD50  80 77 0B 1C */	lwz r3, 0xb1c(r23)
/* 8019FDF4 0019CD54  28 1C 00 00 */	cmplwi r28, 0
/* 8019FDF8 0019CD58  38 03 00 01 */	addi r0, r3, 1
/* 8019FDFC 0019CD5C  90 17 0B 1C */	stw r0, 0xb1c(r23)
/* 8019FE00 0019CD60  41 82 00 0C */	beq lbl_8019FE0C
/* 8019FE04 0019CD64  7F 83 E3 78 */	mr r3, r28
/* 8019FE08 0019CD68  48 19 DC D9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8019FE0C:
/* 8019FE0C 0019CD6C  3B DE 00 08 */	addi r30, r30, 8
/* 8019FE10 0019CD70  3B 5A 00 01 */	addi r26, r26, 1
lbl_8019FE14:
/* 8019FE14 0019CD74  7C 1A C0 00 */	cmpw r26, r24
/* 8019FE18 0019CD78  41 80 FE C0 */	blt lbl_8019FCD8
/* 8019FE1C 0019CD7C  BA E1 00 CC */	lmw r23, 0xcc(r1)
/* 8019FE20 0019CD80  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8019FE24 0019CD84  7C 08 03 A6 */	mtlr r0
/* 8019FE28 0019CD88  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8019FE2C 0019CD8C  4E 80 00 20 */	blr

.global sub_8019fe30
sub_8019fe30:
/* 8019FE30 0019CD90  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8019FE34 0019CD94  7C 08 02 A6 */	mflr r0
/* 8019FE38 0019CD98  90 01 01 04 */	stw r0, 0x104(r1)
/* 8019FE3C 0019CD9C  BF 21 00 E4 */	stmw r25, 0xe4(r1)
/* 8019FE40 0019CDA0  7C B9 2B 78 */	mr r25, r5
/* 8019FE44 0019CDA4  7C DA 33 78 */	mr r26, r6
/* 8019FE48 0019CDA8  7C 9E 23 78 */	mr r30, r4
/* 8019FE4C 0019CDAC  3B A1 00 7C */	addi r29, r1, 0x7c
/* 8019FE50 0019CDB0  3B 81 00 C0 */	addi r28, r1, 0xc0
/* 8019FE54 0019CDB4  3B 60 00 00 */	li r27, 0
/* 8019FE58 0019CDB8  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8019FE5C 0019CDBC  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8019FE60 0019CDC0  48 00 01 6C */	b lbl_8019FFCC
lbl_8019FE64:
/* 8019FE64 0019CDC4  80 9E 00 00 */	lwz r4, 0(r30)
/* 8019FE68 0019CDC8  38 61 00 40 */	addi r3, r1, 0x40
/* 8019FE6C 0019CDCC  4B E6 4E 4D */	bl string_l__4rstlFPCc
/* 8019FE70 0019CDD0  7F E4 FB 78 */	mr r4, r31
/* 8019FE74 0019CDD4  38 61 00 14 */	addi r3, r1, 0x14
/* 8019FE78 0019CDD8  38 A1 00 40 */	addi r5, r1, 0x40
/* 8019FE7C 0019CDDC  4B E8 E9 BD */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8019FE80 0019CDE0  88 01 00 14 */	lbz r0, 0x14(r1)
/* 8019FE84 0019CDE4  38 61 00 40 */	addi r3, r1, 0x40
/* 8019FE88 0019CDE8  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8019FE8C 0019CDEC  48 19 DC 55 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8019FE90 0019CDF0  80 9E 00 04 */	lwz r4, 4(r30)
/* 8019FE94 0019CDF4  38 61 00 30 */	addi r3, r1, 0x30
/* 8019FE98 0019CDF8  4B E6 4E 21 */	bl string_l__4rstlFPCc
/* 8019FE9C 0019CDFC  7F E4 FB 78 */	mr r4, r31
/* 8019FEA0 0019CE00  38 61 00 10 */	addi r3, r1, 0x10
/* 8019FEA4 0019CE04  38 A1 00 30 */	addi r5, r1, 0x30
/* 8019FEA8 0019CE08  4B E8 E9 91 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8019FEAC 0019CE0C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8019FEB0 0019CE10  38 61 00 30 */	addi r3, r1, 0x30
/* 8019FEB4 0019CE14  98 01 00 18 */	stb r0, 0x18(r1)
/* 8019FEB8 0019CE18  48 19 DC 29 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8019FEBC 0019CE1C  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 8019FEC0 0019CE20  28 00 00 FF */	cmplwi r0, 0xff
/* 8019FEC4 0019CE24  41 82 01 00 */	beq lbl_8019FFC4
/* 8019FEC8 0019CE28  88 01 00 18 */	lbz r0, 0x18(r1)
/* 8019FECC 0019CE2C  28 00 00 FF */	cmplwi r0, 0xff
/* 8019FED0 0019CE30  41 82 00 F4 */	beq lbl_8019FFC4
/* 8019FED4 0019CE34  80 9E 00 00 */	lwz r4, 0(r30)
/* 8019FED8 0019CE38  38 61 00 20 */	addi r3, r1, 0x20
/* 8019FEDC 0019CE3C  4B E6 4D DD */	bl string_l__4rstlFPCc
/* 8019FEE0 0019CE40  88 A1 00 18 */	lbz r5, 0x18(r1)
/* 8019FEE4 0019CE44  38 61 00 50 */	addi r3, r1, 0x50
/* 8019FEE8 0019CE48  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 8019FEEC 0019CE4C  38 81 00 0C */	addi r4, r1, 0xc
/* 8019FEF0 0019CE50  98 A1 00 08 */	stb r5, 8(r1)
/* 8019FEF4 0019CE54  38 A1 00 08 */	addi r5, r1, 8
/* 8019FEF8 0019CE58  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8019FEFC 0019CE5C  38 E1 00 20 */	addi r7, r1, 0x20
/* 8019FF00 0019CE60  98 01 00 0C */	stb r0, 0xc(r1)
/* 8019FF04 0019CE64  38 C0 00 01 */	li r6, 1
/* 8019FF08 0019CE68  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8019FF0C 0019CE6C  C0 62 A7 84 */	lfs f3, lbl_805AC4A4@sda21(r2)
/* 8019FF10 0019CE70  48 00 88 45 */	bl "SphereSubdivideCollision__26CJointCollisionDescriptionF6CSegId6CSegIdffQ226CJointCollisionDescription16EOrientationTypeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 8019FF14 0019CE74  80 E1 00 50 */	lwz r7, 0x50(r1)
/* 8019FF18 0019CE78  7F 83 E3 78 */	mr r3, r28
/* 8019FF1C 0019CE7C  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 8019FF20 0019CE80  7F A4 EB 78 */	mr r4, r29
/* 8019FF24 0019CE84  88 A1 00 58 */	lbz r5, 0x58(r1)
/* 8019FF28 0019CE88  88 01 00 59 */	lbz r0, 0x59(r1)
/* 8019FF2C 0019CE8C  C0 E1 00 5C */	lfs f7, 0x5c(r1)
/* 8019FF30 0019CE90  C0 C1 00 60 */	lfs f6, 0x60(r1)
/* 8019FF34 0019CE94  C0 A1 00 64 */	lfs f5, 0x64(r1)
/* 8019FF38 0019CE98  C0 81 00 68 */	lfs f4, 0x68(r1)
/* 8019FF3C 0019CE9C  C0 61 00 6C */	lfs f3, 0x6c(r1)
/* 8019FF40 0019CEA0  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 8019FF44 0019CEA4  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8019FF48 0019CEA8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8019FF4C 0019CEAC  90 E1 00 94 */	stw r7, 0x94(r1)
/* 8019FF50 0019CEB0  90 C1 00 98 */	stw r6, 0x98(r1)
/* 8019FF54 0019CEB4  98 A1 00 9C */	stb r5, 0x9c(r1)
/* 8019FF58 0019CEB8  98 01 00 9D */	stb r0, 0x9d(r1)
/* 8019FF5C 0019CEBC  D0 E1 00 A0 */	stfs f7, 0xa0(r1)
/* 8019FF60 0019CEC0  D0 C1 00 A4 */	stfs f6, 0xa4(r1)
/* 8019FF64 0019CEC4  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 8019FF68 0019CEC8  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 8019FF6C 0019CECC  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 8019FF70 0019CED0  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8019FF74 0019CED4  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8019FF78 0019CED8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8019FF7C 0019CEDC  48 19 E1 E5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8019FF80 0019CEE0  A0 01 00 8C */	lhz r0, 0x8c(r1)
/* 8019FF84 0019CEE4  28 1D 00 00 */	cmplwi r29, 0
/* 8019FF88 0019CEE8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8019FF8C 0019CEEC  B0 01 00 D0 */	sth r0, 0xd0(r1)
/* 8019FF90 0019CEF0  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8019FF94 0019CEF4  41 82 00 0C */	beq lbl_8019FFA0
/* 8019FF98 0019CEF8  7F A3 EB 78 */	mr r3, r29
/* 8019FF9C 0019CEFC  48 19 DB 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8019FFA0:
/* 8019FFA0 0019CF00  38 61 00 20 */	addi r3, r1, 0x20
/* 8019FFA4 0019CF04  48 19 DB 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8019FFA8 0019CF08  7F 43 D3 78 */	mr r3, r26
/* 8019FFAC 0019CF0C  38 81 00 94 */	addi r4, r1, 0x94
/* 8019FFB0 0019CF10  4B FB 62 81 */	bl sub_80156230
/* 8019FFB4 0019CF14  28 1C 00 00 */	cmplwi r28, 0
/* 8019FFB8 0019CF18  41 82 00 0C */	beq lbl_8019FFC4
/* 8019FFBC 0019CF1C  7F 83 E3 78 */	mr r3, r28
/* 8019FFC0 0019CF20  48 19 DB 21 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8019FFC4:
/* 8019FFC4 0019CF24  3B DE 00 10 */	addi r30, r30, 0x10
/* 8019FFC8 0019CF28  3B 7B 00 01 */	addi r27, r27, 1
lbl_8019FFCC:
/* 8019FFCC 0019CF2C  7C 1B C8 00 */	cmpw r27, r25
/* 8019FFD0 0019CF30  41 80 FE 94 */	blt lbl_8019FE64
/* 8019FFD4 0019CF34  BB 21 00 E4 */	lmw r25, 0xe4(r1)
/* 8019FFD8 0019CF38  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8019FFDC 0019CF3C  7C 08 03 A6 */	mtlr r0
/* 8019FFE0 0019CF40  38 21 01 00 */	addi r1, r1, 0x100
/* 8019FFE4 0019CF44  4E 80 00 20 */	blr

.global sub_8019ffe8
sub_8019ffe8:
/* 8019FFE8 0019CF48  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8019FFEC 0019CF4C  7C 08 02 A6 */	mflr r0
/* 8019FFF0 0019CF50  3C A0 80 3D */	lis r5, lbl_803D1360@ha
/* 8019FFF4 0019CF54  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8019FFF8 0019CF58  38 00 00 00 */	li r0, 0
/* 8019FFFC 0019CF5C  BE E1 00 BC */	stmw r23, 0xbc(r1)
/* 801A0000 0019CF60  7C 7E 1B 78 */	mr r30, r3
/* 801A0004 0019CF64  7C 9F 23 78 */	mr r31, r4
/* 801A0008 0019CF68  3A E5 13 60 */	addi r23, r5, lbl_803D1360@l
/* 801A000C 0019CF6C  38 61 00 88 */	addi r3, r1, 0x88
/* 801A0010 0019CF70  38 80 00 0B */	li r4, 0xb
/* 801A0014 0019CF74  90 01 00 8C */	stw r0, 0x8c(r1)
/* 801A0018 0019CF78  90 01 00 90 */	stw r0, 0x90(r1)
/* 801A001C 0019CF7C  90 01 00 94 */	stw r0, 0x94(r1)
/* 801A0020 0019CF80  4B FB 67 99 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 801A0024 0019CF84  7F C3 F3 78 */	mr r3, r30
/* 801A0028 0019CF88  38 97 00 40 */	addi r4, r23, 0x40
/* 801A002C 0019CF8C  38 C1 00 88 */	addi r6, r1, 0x88
/* 801A0030 0019CF90  38 A0 00 07 */	li r5, 7
/* 801A0034 0019CF94  4B FF FC 69 */	bl sub_8019fc9c
/* 801A0038 0019CF98  7F C3 F3 78 */	mr r3, r30
/* 801A003C 0019CF9C  38 97 00 00 */	addi r4, r23, 0
/* 801A0040 0019CFA0  38 C1 00 88 */	addi r6, r1, 0x88
/* 801A0044 0019CFA4  38 A0 00 02 */	li r5, 2
/* 801A0048 0019CFA8  4B FF FD E9 */	bl sub_8019fe30
/* 801A004C 0019CFAC  7F C3 F3 78 */	mr r3, r30
/* 801A0050 0019CFB0  38 97 00 20 */	addi r4, r23, 0x20
/* 801A0054 0019CFB4  38 C1 00 88 */	addi r6, r1, 0x88
/* 801A0058 0019CFB8  38 A0 00 02 */	li r5, 2
/* 801A005C 0019CFBC  4B FF FD D5 */	bl sub_8019fe30
/* 801A0060 0019CFC0  3C 80 80 3D */	lis r4, lbl_803D13D8@ha
/* 801A0064 0019CFC4  38 60 00 18 */	li r3, 0x18
/* 801A0068 0019CFC8  38 84 13 D8 */	addi r4, r4, lbl_803D13D8@l
/* 801A006C 0019CFCC  38 A0 00 00 */	li r5, 0
/* 801A0070 0019CFD0  38 84 00 8C */	addi r4, r4, 0x8c
/* 801A0074 0019CFD4  48 17 57 F9 */	bl __nw__FUlPCcPCc
/* 801A0078 0019CFD8  7C 77 1B 79 */	or. r23, r3, r3
/* 801A007C 0019CFDC  41 82 00 38 */	beq lbl_801A00B4
/* 801A0080 0019CFE0  81 3E 00 04 */	lwz r9, 4(r30)
/* 801A0084 0019CFE4  7F E4 FB 78 */	mr r4, r31
/* 801A0088 0019CFE8  38 A1 00 10 */	addi r5, r1, 0x10
/* 801A008C 0019CFEC  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801A0090 0019CFF0  91 21 00 1C */	stw r9, 0x1c(r1)
/* 801A0094 0019CFF4  38 E1 00 88 */	addi r7, r1, 0x88
/* 801A0098 0019CFF8  39 00 00 01 */	li r8, 1
/* 801A009C 0019CFFC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801A00A0 0019D000  91 21 00 18 */	stw r9, 0x18(r1)
/* 801A00A4 0019D004  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801A00A8 0019D008  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A00AC 0019D00C  48 00 78 85 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 801A00B0 0019D010  7C 77 1B 78 */	mr r23, r3
lbl_801A00B4:
/* 801A00B4 0019D014  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 801A00B8 0019D018  38 80 00 01 */	li r4, 1
/* 801A00BC 0019D01C  48 00 78 21 */	bl __dt__22CCollisionActorManagerFv
/* 801A00C0 0019D020  92 FE 0A 2C */	stw r23, 0xa2c(r30)
/* 801A00C4 0019D024  7F E4 FB 78 */	mr r4, r31
/* 801A00C8 0019D028  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 801A00CC 0019D02C  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 801A00D0 0019D030  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 801A00D4 0019D034  48 00 72 25 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801A00D8 0019D038  38 00 00 00 */	li r0, 0
/* 801A00DC 0019D03C  80 AD 90 0C */	lwz r5, lbl_805A7BCC@sda21(r13)
/* 801A00E0 0019D040  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A00E4 0019D044  38 60 00 00 */	li r3, 0
/* 801A00E8 0019D048  38 80 00 01 */	li r4, 1
/* 801A00EC 0019D04C  90 01 00 30 */	stw r0, 0x30(r1)
/* 801A00F0 0019D050  48 1E 9E 05 */	bl __shl2i
/* 801A00F4 0019D054  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801A00F8 0019D058  38 A1 00 30 */	addi r5, r1, 0x30
/* 801A00FC 0019D05C  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 801A0100 0019D060  7C 00 1B 78 */	or r0, r0, r3
/* 801A0104 0019D064  7C C3 23 78 */	or r3, r6, r4
/* 801A0108 0019D068  90 01 00 30 */	stw r0, 0x30(r1)
/* 801A010C 0019D06C  7F E4 FB 78 */	mr r4, r31
/* 801A0110 0019D070  90 61 00 34 */	stw r3, 0x34(r1)
/* 801A0114 0019D074  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 801A0118 0019D078  48 00 71 39 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 801A011C 0019D07C  80 BE 0B 04 */	lwz r5, 0xb04(r30)
/* 801A0120 0019D080  3B 5E 0B 08 */	addi r26, r30, 0xb08
/* 801A0124 0019D084  38 60 00 00 */	li r3, 0
/* 801A0128 0019D088  2C 05 00 00 */	cmpwi r5, 0
/* 801A012C 0019D08C  40 81 00 40 */	ble lbl_801A016C
/* 801A0130 0019D090  2C 05 00 08 */	cmpwi r5, 8
/* 801A0134 0019D094  38 85 FF F8 */	addi r4, r5, -8
/* 801A0138 0019D098  40 81 00 20 */	ble lbl_801A0158
/* 801A013C 0019D09C  38 04 00 07 */	addi r0, r4, 7
/* 801A0140 0019D0A0  54 00 E8 FE */	srwi r0, r0, 3
/* 801A0144 0019D0A4  7C 09 03 A6 */	mtctr r0
/* 801A0148 0019D0A8  2C 04 00 00 */	cmpwi r4, 0
/* 801A014C 0019D0AC  40 81 00 0C */	ble lbl_801A0158
lbl_801A0150:
/* 801A0150 0019D0B0  38 63 00 08 */	addi r3, r3, 8
/* 801A0154 0019D0B4  42 00 FF FC */	bdnz lbl_801A0150
lbl_801A0158:
/* 801A0158 0019D0B8  7C 03 28 50 */	subf r0, r3, r5
/* 801A015C 0019D0BC  7C 09 03 A6 */	mtctr r0
/* 801A0160 0019D0C0  7C 03 28 00 */	cmpw r3, r5
/* 801A0164 0019D0C4  40 80 00 08 */	bge lbl_801A016C
lbl_801A0168:
/* 801A0168 0019D0C8  42 00 00 00 */	bdnz lbl_801A0168
lbl_801A016C:
/* 801A016C 0019D0CC  38 60 00 00 */	li r3, 0
/* 801A0170 0019D0D0  3B 7E 0B 00 */	addi r27, r30, 0xb00
/* 801A0174 0019D0D4  90 7E 0B 04 */	stw r3, 0xb04(r30)
/* 801A0178 0019D0D8  80 BE 0A FC */	lwz r5, 0xafc(r30)
/* 801A017C 0019D0DC  2C 05 00 00 */	cmpwi r5, 0
/* 801A0180 0019D0E0  40 81 00 40 */	ble lbl_801A01C0
/* 801A0184 0019D0E4  2C 05 00 08 */	cmpwi r5, 8
/* 801A0188 0019D0E8  38 85 FF F8 */	addi r4, r5, -8
/* 801A018C 0019D0EC  40 81 00 20 */	ble lbl_801A01AC
/* 801A0190 0019D0F0  38 04 00 07 */	addi r0, r4, 7
/* 801A0194 0019D0F4  54 00 E8 FE */	srwi r0, r0, 3
/* 801A0198 0019D0F8  7C 09 03 A6 */	mtctr r0
/* 801A019C 0019D0FC  2C 04 00 00 */	cmpwi r4, 0
/* 801A01A0 0019D100  40 81 00 0C */	ble lbl_801A01AC
lbl_801A01A4:
/* 801A01A4 0019D104  38 63 00 08 */	addi r3, r3, 8
/* 801A01A8 0019D108  42 00 FF FC */	bdnz lbl_801A01A4
lbl_801A01AC:
/* 801A01AC 0019D10C  7C 03 28 50 */	subf r0, r3, r5
/* 801A01B0 0019D110  7C 09 03 A6 */	mtctr r0
/* 801A01B4 0019D114  7C 03 28 00 */	cmpw r3, r5
/* 801A01B8 0019D118  40 80 00 08 */	bge lbl_801A01C0
lbl_801A01BC:
/* 801A01BC 0019D11C  42 00 00 00 */	bdnz lbl_801A01BC
lbl_801A01C0:
/* 801A01C0 0019D120  38 00 00 00 */	li r0, 0
/* 801A01C4 0019D124  3B 9E 05 EC */	addi r28, r30, 0x5ec
/* 801A01C8 0019D128  90 1E 0A FC */	stw r0, 0xafc(r30)
/* 801A01CC 0019D12C  3B 20 00 00 */	li r25, 0
/* 801A01D0 0019D130  48 00 01 CC */	b lbl_801A039C
lbl_801A01D4:
/* 801A01D4 0019D134  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 801A01D8 0019D138  7F 24 CB 78 */	mr r4, r25
/* 801A01DC 0019D13C  48 00 70 5D */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801A01E0 0019D140  7C 7D 1B 78 */	mr r29, r3
/* 801A01E4 0019D144  7F E3 FB 78 */	mr r3, r31
/* 801A01E8 0019D148  A0 1D 00 3C */	lhz r0, 0x3c(r29)
/* 801A01EC 0019D14C  38 81 00 08 */	addi r4, r1, 8
/* 801A01F0 0019D150  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801A01F4 0019D154  B0 01 00 08 */	sth r0, 8(r1)
/* 801A01F8 0019D158  4B EA C3 7D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801A01FC 0019D15C  7C 64 1B 78 */	mr r4, r3
/* 801A0200 0019D160  38 61 00 28 */	addi r3, r1, 0x28
/* 801A0204 0019D164  4B F0 F1 49 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801A0208 0019D168  83 03 00 04 */	lwz r24, 4(r3)
/* 801A020C 0019D16C  28 18 00 00 */	cmplwi r24, 0
/* 801A0210 0019D170  41 82 01 88 */	beq lbl_801A0398
/* 801A0214 0019D174  3C 80 80 57 */	lis r4, sImmuneVulnerability__20CDamageVulnerability@ha
/* 801A0218 0019D178  7F 03 C3 78 */	mr r3, r24
/* 801A021C 0019D17C  38 84 D7 18 */	addi r4, r4, sImmuneVulnerability__20CDamageVulnerability@l
/* 801A0220 0019D180  48 00 89 79 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801A0224 0019D184  80 82 A7 40 */	lwz r4, lbl_805AC460@sda21(r2)
/* 801A0228 0019D188  38 61 00 78 */	addi r3, r1, 0x78
/* 801A022C 0019D18C  4B E6 4A 8D */	bl string_l__4rstlFPCc
/* 801A0230 0019D190  38 7D 00 2C */	addi r3, r29, 0x2c
/* 801A0234 0019D194  38 81 00 78 */	addi r4, r1, 0x78
/* 801A0238 0019D198  4B EB 23 A9 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801A023C 0019D19C  7C 77 1B 78 */	mr r23, r3
/* 801A0240 0019D1A0  38 61 00 78 */	addi r3, r1, 0x78
/* 801A0244 0019D1A4  48 19 D8 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801A0248 0019D1A8  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801A024C 0019D1AC  41 82 00 1C */	beq lbl_801A0268
/* 801A0250 0019D1B0  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801A0254 0019D1B4  7F 03 C3 78 */	mr r3, r24
/* 801A0258 0019D1B8  38 9E 09 8C */	addi r4, r30, 0x98c
/* 801A025C 0019D1BC  B0 1E 0A F8 */	sth r0, 0xaf8(r30)
/* 801A0260 0019D1C0  48 00 89 39 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801A0264 0019D1C4  48 00 01 34 */	b lbl_801A0398
lbl_801A0268:
/* 801A0268 0019D1C8  80 82 A7 44 */	lwz r4, lbl_805AC464@sda21(r2)
/* 801A026C 0019D1CC  38 61 00 68 */	addi r3, r1, 0x68
/* 801A0270 0019D1D0  4B E6 4A 49 */	bl string_l__4rstlFPCc
/* 801A0274 0019D1D4  38 7D 00 2C */	addi r3, r29, 0x2c
/* 801A0278 0019D1D8  38 81 00 68 */	addi r4, r1, 0x68
/* 801A027C 0019D1DC  4B EB 23 65 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801A0280 0019D1E0  7C 77 1B 78 */	mr r23, r3
/* 801A0284 0019D1E4  38 61 00 68 */	addi r3, r1, 0x68
/* 801A0288 0019D1E8  48 19 D8 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801A028C 0019D1EC  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801A0290 0019D1F0  41 82 00 18 */	beq lbl_801A02A8
/* 801A0294 0019D1F4  3C 80 80 57 */	lis r4, sPassThroughVulnerability__20CDamageVulnerability@ha
/* 801A0298 0019D1F8  7F 03 C3 78 */	mr r3, r24
/* 801A029C 0019D1FC  38 84 D7 E8 */	addi r4, r4, sPassThroughVulnerability__20CDamageVulnerability@l
/* 801A02A0 0019D200  48 00 88 F9 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801A02A4 0019D204  48 00 00 F4 */	b lbl_801A0398
lbl_801A02A8:
/* 801A02A8 0019D208  80 82 A7 3C */	lwz r4, lbl_805AC45C@sda21(r2)
/* 801A02AC 0019D20C  38 61 00 58 */	addi r3, r1, 0x58
/* 801A02B0 0019D210  4B E6 4A 09 */	bl string_l__4rstlFPCc
/* 801A02B4 0019D214  38 7D 00 2C */	addi r3, r29, 0x2c
/* 801A02B8 0019D218  38 81 00 58 */	addi r4, r1, 0x58
/* 801A02BC 0019D21C  4B EB 23 25 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801A02C0 0019D220  7C 77 1B 78 */	mr r23, r3
/* 801A02C4 0019D224  38 61 00 58 */	addi r3, r1, 0x58
/* 801A02C8 0019D228  48 19 D8 19 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801A02CC 0019D22C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801A02D0 0019D230  41 82 00 18 */	beq lbl_801A02E8
/* 801A02D4 0019D234  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 801A02D8 0019D238  38 00 00 00 */	li r0, 0
/* 801A02DC 0019D23C  B0 7E 0A F6 */	sth r3, 0xaf6(r30)
/* 801A02E0 0019D240  90 18 03 00 */	stw r0, 0x300(r24)
/* 801A02E4 0019D244  48 00 00 B4 */	b lbl_801A0398
lbl_801A02E8:
/* 801A02E8 0019D248  80 82 A7 48 */	lwz r4, lbl_805AC468@sda21(r2)
/* 801A02EC 0019D24C  38 61 00 48 */	addi r3, r1, 0x48
/* 801A02F0 0019D250  4B E6 49 C9 */	bl string_l__4rstlFPCc
/* 801A02F4 0019D254  38 7D 00 2C */	addi r3, r29, 0x2c
/* 801A02F8 0019D258  38 81 00 48 */	addi r4, r1, 0x48
/* 801A02FC 0019D25C  4B EB 22 E5 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801A0300 0019D260  7C 77 1B 78 */	mr r23, r3
/* 801A0304 0019D264  38 61 00 48 */	addi r3, r1, 0x48
/* 801A0308 0019D268  48 19 D7 D9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801A030C 0019D26C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801A0310 0019D270  40 82 00 30 */	bne lbl_801A0340
/* 801A0314 0019D274  80 82 A7 4C */	lwz r4, lbl_805AC46C@sda21(r2)
/* 801A0318 0019D278  38 61 00 38 */	addi r3, r1, 0x38
/* 801A031C 0019D27C  4B E6 49 9D */	bl string_l__4rstlFPCc
/* 801A0320 0019D280  38 7D 00 2C */	addi r3, r29, 0x2c
/* 801A0324 0019D284  38 81 00 38 */	addi r4, r1, 0x38
/* 801A0328 0019D288  4B EB 22 B9 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801A032C 0019D28C  7C 7D 1B 78 */	mr r29, r3
/* 801A0330 0019D290  38 61 00 38 */	addi r3, r1, 0x38
/* 801A0334 0019D294  48 19 D7 AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801A0338 0019D298  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801A033C 0019D29C  41 82 00 2C */	beq lbl_801A0368
lbl_801A0340:
/* 801A0340 0019D2A0  80 1E 0A FC */	lwz r0, 0xafc(r30)
/* 801A0344 0019D2A4  54 00 08 3C */	slwi r0, r0, 1
/* 801A0348 0019D2A8  7C 7B 02 15 */	add. r3, r27, r0
/* 801A034C 0019D2AC  41 82 00 0C */	beq lbl_801A0358
/* 801A0350 0019D2B0  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801A0354 0019D2B4  B0 03 00 00 */	sth r0, 0(r3)
lbl_801A0358:
/* 801A0358 0019D2B8  80 7E 0A FC */	lwz r3, 0xafc(r30)
/* 801A035C 0019D2BC  38 03 00 01 */	addi r0, r3, 1
/* 801A0360 0019D2C0  90 1E 0A FC */	stw r0, 0xafc(r30)
/* 801A0364 0019D2C4  48 00 00 34 */	b lbl_801A0398
lbl_801A0368:
/* 801A0368 0019D2C8  80 1E 0B 04 */	lwz r0, 0xb04(r30)
/* 801A036C 0019D2CC  54 00 08 3C */	slwi r0, r0, 1
/* 801A0370 0019D2D0  7C 7A 02 15 */	add. r3, r26, r0
/* 801A0374 0019D2D4  41 82 00 0C */	beq lbl_801A0380
/* 801A0378 0019D2D8  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801A037C 0019D2DC  B0 03 00 00 */	sth r0, 0(r3)
lbl_801A0380:
/* 801A0380 0019D2E0  80 BE 0B 04 */	lwz r5, 0xb04(r30)
/* 801A0384 0019D2E4  7F 03 C3 78 */	mr r3, r24
/* 801A0388 0019D2E8  7F 84 E3 78 */	mr r4, r28
/* 801A038C 0019D2EC  38 05 00 01 */	addi r0, r5, 1
/* 801A0390 0019D2F0  90 1E 0B 04 */	stw r0, 0xb04(r30)
/* 801A0394 0019D2F4  48 00 88 05 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_801A0398:
/* 801A0398 0019D2F8  3B 39 00 01 */	addi r25, r25, 1
lbl_801A039C:
/* 801A039C 0019D2FC  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 801A03A0 0019D300  48 00 6E A9 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801A03A4 0019D304  7C 19 18 40 */	cmplw r25, r3
/* 801A03A8 0019D308  41 80 FE 2C */	blt lbl_801A01D4
/* 801A03AC 0019D30C  7F C3 F3 78 */	mr r3, r30
/* 801A03B0 0019D310  7F E4 FB 78 */	mr r4, r31
/* 801A03B4 0019D314  4B FF F6 55 */	bl sub_8019fa08
/* 801A03B8 0019D318  80 AD 90 14 */	lwz r5, lbl_805A7BD4@sda21(r13)
/* 801A03BC 0019D31C  38 60 00 00 */	li r3, 0
/* 801A03C0 0019D320  38 80 00 01 */	li r4, 1
/* 801A03C4 0019D324  48 1E 9B 31 */	bl __shl2i
/* 801A03C8 0019D328  80 AD 90 18 */	lwz r5, lbl_805A7BD8@sda21(r13)
/* 801A03CC 0019D32C  7C 98 23 78 */	mr r24, r4
/* 801A03D0 0019D330  7C 77 1B 78 */	mr r23, r3
/* 801A03D4 0019D334  38 60 00 00 */	li r3, 0
/* 801A03D8 0019D338  38 80 00 01 */	li r4, 1
/* 801A03DC 0019D33C  48 1E 9B 19 */	bl __shl2i
/* 801A03E0 0019D340  80 AD 90 1C */	lwz r5, lbl_805A7BDC@sda21(r13)
/* 801A03E4 0019D344  7F 18 23 78 */	or r24, r24, r4
/* 801A03E8 0019D348  7E F7 1B 78 */	or r23, r23, r3
/* 801A03EC 0019D34C  38 60 00 00 */	li r3, 0
/* 801A03F0 0019D350  38 80 00 01 */	li r4, 1
/* 801A03F4 0019D354  48 1E 9B 01 */	bl __shl2i
/* 801A03F8 0019D358  80 AD 90 10 */	lwz r5, lbl_805A7BD0@sda21(r13)
/* 801A03FC 0019D35C  7F 18 23 78 */	or r24, r24, r4
/* 801A0400 0019D360  7E F7 1B 78 */	or r23, r23, r3
/* 801A0404 0019D364  38 60 00 00 */	li r3, 0
/* 801A0408 0019D368  38 80 00 01 */	li r4, 1
/* 801A040C 0019D36C  48 1E 9A E9 */	bl __shl2i
/* 801A0410 0019D370  38 00 00 03 */	li r0, 3
/* 801A0414 0019D374  90 81 00 9C */	stw r4, 0x9c(r1)
/* 801A0418 0019D378  38 81 00 98 */	addi r4, r1, 0x98
/* 801A041C 0019D37C  90 61 00 98 */	stw r3, 0x98(r1)
/* 801A0420 0019D380  7F C3 F3 78 */	mr r3, r30
/* 801A0424 0019D384  93 01 00 A4 */	stw r24, 0xa4(r1)
/* 801A0428 0019D388  92 E1 00 A0 */	stw r23, 0xa0(r1)
/* 801A042C 0019D38C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 801A0430 0019D390  4B EB 34 71 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 801A0434 0019D394  7F C3 F3 78 */	mr r3, r30
/* 801A0438 0019D398  7F E5 FB 78 */	mr r5, r31
/* 801A043C 0019D39C  38 80 00 12 */	li r4, 0x12
/* 801A0440 0019D3A0  4B EB 3F 11 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801A0444 0019D3A4  38 00 00 00 */	li r0, 0
/* 801A0448 0019D3A8  80 AD 90 20 */	lwz r5, lbl_805A7BE0@sda21(r13)
/* 801A044C 0019D3AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A0450 0019D3B0  38 60 00 00 */	li r3, 0
/* 801A0454 0019D3B4  38 80 00 01 */	li r4, 1
/* 801A0458 0019D3B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 801A045C 0019D3BC  48 1E 9A 99 */	bl __shl2i
/* 801A0460 0019D3C0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801A0464 0019D3C4  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 801A0468 0019D3C8  7C 00 1B 78 */	or r0, r0, r3
/* 801A046C 0019D3CC  80 AD 90 24 */	lwz r5, lbl_805A7BE4@sda21(r13)
/* 801A0470 0019D3D0  7C C4 23 78 */	or r4, r6, r4
/* 801A0474 0019D3D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 801A0478 0019D3D8  38 60 00 00 */	li r3, 0
/* 801A047C 0019D3DC  90 81 00 24 */	stw r4, 0x24(r1)
/* 801A0480 0019D3E0  38 80 00 01 */	li r4, 1
/* 801A0484 0019D3E4  48 1E 9A 71 */	bl __shl2i
/* 801A0488 0019D3E8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801A048C 0019D3EC  38 A1 00 20 */	addi r5, r1, 0x20
/* 801A0490 0019D3F0  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 801A0494 0019D3F4  7C 00 1B 78 */	or r0, r0, r3
/* 801A0498 0019D3F8  7C C3 23 78 */	or r3, r6, r4
/* 801A049C 0019D3FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 801A04A0 0019D400  7F E4 FB 78 */	mr r4, r31
/* 801A04A4 0019D404  90 61 00 24 */	stw r3, 0x24(r1)
/* 801A04A8 0019D408  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 801A04AC 0019D40C  48 00 6D A5 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 801A04B0 0019D410  38 61 00 88 */	addi r3, r1, 0x88
/* 801A04B4 0019D414  38 80 FF FF */	li r4, -1
/* 801A04B8 0019D418  4B FB 5E 75 */	bl sub_8015632c
/* 801A04BC 0019D41C  BA E1 00 BC */	lmw r23, 0xbc(r1)
/* 801A04C0 0019D420  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801A04C4 0019D424  7C 08 03 A6 */	mtlr r0
/* 801A04C8 0019D428  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801A04CC 0019D42C  4E 80 00 20 */	blr

.global sub_801a04d0
sub_801a04d0:
/* 801A04D0 0019D430  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801A04D4 0019D434  7C 08 02 A6 */	mflr r0
/* 801A04D8 0019D438  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801A04DC 0019D43C  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801A04E0 0019D440  7C BF 2B 78 */	mr r31, r5
/* 801A04E4 0019D444  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 801A04E8 0019D448  7C 7E 1B 78 */	mr r30, r3
/* 801A04EC 0019D44C  7F E3 FB 78 */	mr r3, r31
/* 801A04F0 0019D450  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 801A04F4 0019D454  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 801A04F8 0019D458  A0 04 00 00 */	lhz r0, 0(r4)
/* 801A04FC 0019D45C  38 81 00 3C */	addi r4, r1, 0x3c
/* 801A0500 0019D460  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 801A0504 0019D464  4B EA C0 A1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A0508 0019D468  7C 64 1B 78 */	mr r4, r3
/* 801A050C 0019D46C  38 61 00 40 */	addi r3, r1, 0x40
/* 801A0510 0019D470  4B F0 EE 3D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801A0514 0019D474  83 A3 00 04 */	lwz r29, 4(r3)
/* 801A0518 0019D478  28 1D 00 00 */	cmplwi r29, 0
/* 801A051C 0019D47C  41 82 01 CC */	beq lbl_801A06E8
/* 801A0520 0019D480  7F C3 F3 78 */	mr r3, r30
/* 801A0524 0019D484  7F E4 FB 78 */	mr r4, r31
/* 801A0528 0019D488  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A052C 0019D48C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801A0530 0019D490  7D 89 03 A6 */	mtctr r12
/* 801A0534 0019D494  4E 80 04 21 */	bctrl
/* 801A0538 0019D498  C0 23 00 00 */	lfs f1, 0(r3)
/* 801A053C 0019D49C  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A0540 0019D4A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A0544 0019D4A4  40 81 01 A4 */	ble lbl_801A06E8
/* 801A0548 0019D4A8  88 7E 0B 28 */	lbz r3, 0xb28(r30)
/* 801A054C 0019D4AC  3B 80 00 00 */	li r28, 0
/* 801A0550 0019D4B0  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 801A0554 0019D4B4  41 82 00 2C */	beq lbl_801A0580
/* 801A0558 0019D4B8  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801A055C 0019D4BC  41 82 00 18 */	beq lbl_801A0574
/* 801A0560 0019D4C0  7F C3 F3 78 */	mr r3, r30
/* 801A0564 0019D4C4  7F A4 EB 78 */	mr r4, r29
/* 801A0568 0019D4C8  4B FF F7 1D */	bl sub_8019fc84
/* 801A056C 0019D4CC  7C 7C 1B 78 */	mr r28, r3
/* 801A0570 0019D4D0  48 00 00 10 */	b lbl_801A0580
lbl_801A0574:
/* 801A0574 0019D4D4  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 801A0578 0019D4D8  41 82 00 08 */	beq lbl_801A0580
/* 801A057C 0019D4DC  3B 80 00 01 */	li r28, 1
lbl_801A0580:
/* 801A0580 0019D4E0  7F A4 EB 78 */	mr r4, r29
/* 801A0584 0019D4E4  38 61 00 38 */	addi r3, r1, 0x38
/* 801A0588 0019D4E8  48 00 86 05 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801A058C 0019D4EC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801A0590 0019D4F0  A0 81 00 38 */	lhz r4, 0x38(r1)
/* 801A0594 0019D4F4  A0 03 00 08 */	lhz r0, 8(r3)
/* 801A0598 0019D4F8  7C 04 00 40 */	cmplw r4, r0
/* 801A059C 0019D4FC  40 82 01 4C */	bne lbl_801A06E8
/* 801A05A0 0019D500  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801A05A4 0019D504  41 82 00 98 */	beq lbl_801A063C
/* 801A05A8 0019D508  80 AD 8F F8 */	lwz r5, lbl_805A7BB8@sda21(r13)
/* 801A05AC 0019D50C  38 60 00 00 */	li r3, 0
/* 801A05B0 0019D510  38 80 00 01 */	li r4, 1
/* 801A05B4 0019D514  48 1E 99 41 */	bl __shl2i
/* 801A05B8 0019D518  39 40 00 00 */	li r10, 0
/* 801A05BC 0019D51C  38 00 00 03 */	li r0, 3
/* 801A05C0 0019D520  90 81 00 84 */	stw r4, 0x84(r1)
/* 801A05C4 0019D524  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801A05C8 0019D528  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 801A05CC 0019D52C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801A05D0 0019D530  90 61 00 80 */	stw r3, 0x80(r1)
/* 801A05D4 0019D534  38 81 00 34 */	addi r4, r1, 0x34
/* 801A05D8 0019D538  7F E3 FB 78 */	mr r3, r31
/* 801A05DC 0019D53C  38 C1 00 24 */	addi r6, r1, 0x24
/* 801A05E0 0019D540  91 41 00 8C */	stw r10, 0x8c(r1)
/* 801A05E4 0019D544  38 FE 07 24 */	addi r7, r30, 0x724
/* 801A05E8 0019D548  39 01 00 80 */	addi r8, r1, 0x80
/* 801A05EC 0019D54C  91 41 00 88 */	stw r10, 0x88(r1)
/* 801A05F0 0019D550  90 01 00 90 */	stw r0, 0x90(r1)
/* 801A05F4 0019D554  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801A05F8 0019D558  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801A05FC 0019D55C  81 5F 08 4C */	lwz r10, 0x84c(r31)
/* 801A0600 0019D560  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801A0604 0019D564  A1 4A 00 08 */	lhz r10, 8(r10)
/* 801A0608 0019D568  B1 41 00 2C */	sth r10, 0x2c(r1)
/* 801A060C 0019D56C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801A0610 0019D570  B1 41 00 28 */	sth r10, 0x28(r1)
/* 801A0614 0019D574  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801A0618 0019D578  B0 01 00 34 */	sth r0, 0x34(r1)
/* 801A061C 0019D57C  4B EA 9A 85 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801A0620 0019D580  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 801A0624 0019D584  38 60 00 00 */	li r3, 0
/* 801A0628 0019D588  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801A062C 0019D58C  98 1E 0B 28 */	stb r0, 0xb28(r30)
/* 801A0630 0019D590  C0 1E 04 24 */	lfs f0, 0x424(r30)
/* 801A0634 0019D594  D0 1E 04 20 */	stfs f0, 0x420(r30)
/* 801A0638 0019D598  48 00 00 B0 */	b lbl_801A06E8
lbl_801A063C:
/* 801A063C 0019D59C  C0 3E 04 20 */	lfs f1, 0x420(r30)
/* 801A0640 0019D5A0  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A0644 0019D5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A0648 0019D5A8  4C 40 13 82 */	cror 2, 0, 2
/* 801A064C 0019D5AC  40 82 00 9C */	bne lbl_801A06E8
/* 801A0650 0019D5B0  80 AD 8F F8 */	lwz r5, lbl_805A7BB8@sda21(r13)
/* 801A0654 0019D5B4  38 60 00 00 */	li r3, 0
/* 801A0658 0019D5B8  38 80 00 01 */	li r4, 1
/* 801A065C 0019D5BC  48 1E 98 99 */	bl __shl2i
/* 801A0660 0019D5C0  38 A0 00 00 */	li r5, 0
/* 801A0664 0019D5C4  38 00 00 03 */	li r0, 3
/* 801A0668 0019D5C8  90 81 00 4C */	stw r4, 0x4c(r1)
/* 801A066C 0019D5CC  7F C4 F3 78 */	mr r4, r30
/* 801A0670 0019D5D0  90 61 00 48 */	stw r3, 0x48(r1)
/* 801A0674 0019D5D4  38 61 00 60 */	addi r3, r1, 0x60
/* 801A0678 0019D5D8  90 A1 00 54 */	stw r5, 0x54(r1)
/* 801A067C 0019D5DC  90 A1 00 50 */	stw r5, 0x50(r1)
/* 801A0680 0019D5E0  90 01 00 58 */	stw r0, 0x58(r1)
/* 801A0684 0019D5E4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801A0688 0019D5E8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801A068C 0019D5EC  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801A0690 0019D5F0  B0 01 00 08 */	sth r0, 8(r1)
/* 801A0694 0019D5F4  A0 A5 00 08 */	lhz r5, 8(r5)
/* 801A0698 0019D5F8  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 801A069C 0019D5FC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801A06A0 0019D600  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 801A06A4 0019D604  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801A06A8 0019D608  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A06AC 0019D60C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801A06B0 0019D610  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 801A06B4 0019D614  7D 89 03 A6 */	mtctr r12
/* 801A06B8 0019D618  4E 80 04 21 */	bctrl
/* 801A06BC 0019D61C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801A06C0 0019D620  7F E3 FB 78 */	mr r3, r31
/* 801A06C4 0019D624  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 801A06C8 0019D628  38 A1 00 14 */	addi r5, r1, 0x14
/* 801A06CC 0019D62C  38 81 00 1C */	addi r4, r1, 0x1c
/* 801A06D0 0019D630  38 C1 00 0C */	addi r6, r1, 0xc
/* 801A06D4 0019D634  38 E1 00 60 */	addi r7, r1, 0x60
/* 801A06D8 0019D638  39 01 00 48 */	addi r8, r1, 0x48
/* 801A06DC 0019D63C  4B EA 99 C5 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801A06E0 0019D640  C0 1E 04 24 */	lfs f0, 0x424(r30)
/* 801A06E4 0019D644  D0 1E 04 20 */	stfs f0, 0x420(r30)
lbl_801A06E8:
/* 801A06E8 0019D648  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801A06EC 0019D64C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801A06F0 0019D650  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 801A06F4 0019D654  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 801A06F8 0019D658  83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 801A06FC 0019D65C  7C 08 03 A6 */	mtlr r0
/* 801A0700 0019D660  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801A0704 0019D664  4E 80 00 20 */	blr

.global sub_801a0708
sub_801a0708:
/* 801A0708 0019D668  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 801A070C 0019D66C  7C 08 02 A6 */	mflr r0
/* 801A0710 0019D670  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 801A0714 0019D674  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 801A0718 0019D678  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, qr0
/* 801A071C 0019D67C  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 801A0720 0019D680  F3 C1 01 98 */	psq_st f30, 408(r1), 0, qr0
/* 801A0724 0019D684  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 801A0728 0019D688  F3 A1 01 88 */	psq_st f29, 392(r1), 0, qr0
/* 801A072C 0019D68C  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 801A0730 0019D690  F3 81 01 78 */	psq_st f28, 376(r1), 0, qr0
/* 801A0734 0019D694  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 801A0738 0019D698  F3 61 01 68 */	psq_st f27, 360(r1), 0, qr0
/* 801A073C 0019D69C  DB 41 01 50 */	stfd f26, 0x150(r1)
/* 801A0740 0019D6A0  F3 41 01 58 */	psq_st f26, 344(r1), 0, qr0
/* 801A0744 0019D6A4  DB 21 01 40 */	stfd f25, 0x140(r1)
/* 801A0748 0019D6A8  F3 21 01 48 */	psq_st f25, 328(r1), 0, qr0
/* 801A074C 0019D6AC  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 801A0750 0019D6B0  93 C1 01 38 */	stw r30, 0x138(r1)
/* 801A0754 0019D6B4  93 A1 01 34 */	stw r29, 0x134(r1)
/* 801A0758 0019D6B8  93 81 01 30 */	stw r28, 0x130(r1)
/* 801A075C 0019D6BC  7C 9E 23 78 */	mr r30, r4
/* 801A0760 0019D6C0  7C 7D 1B 78 */	mr r29, r3
/* 801A0764 0019D6C4  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 801A0768 0019D6C8  38 61 00 50 */	addi r3, r1, 0x50
/* 801A076C 0019D6CC  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801A0770 0019D6D0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801A0774 0019D6D4  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 801A0778 0019D6D8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801A077C 0019D6DC  EC 81 00 28 */	fsubs f4, f1, f0
/* 801A0780 0019D6E0  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 801A0784 0019D6E4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801A0788 0019D6E8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801A078C 0019D6EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A0790 0019D6F0  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 801A0794 0019D6F4  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801A0798 0019D6F8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801A079C 0019D6FC  48 17 41 1D */	bl Magnitude__9CVector3fCFv
/* 801A07A0 0019D700  FF C0 08 90 */	fmr f30, f1
/* 801A07A4 0019D704  C0 42 A7 8C */	lfs f2, lbl_805AC4AC@sda21(r2)
/* 801A07A8 0019D708  C0 22 A7 88 */	lfs f1, lbl_805AC4A8@sda21(r2)
/* 801A07AC 0019D70C  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A07B0 0019D710  EF E2 0F BC */	fnmsubs f31, f2, f30, f1
/* 801A07B4 0019D714  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801A07B8 0019D718  40 81 02 28 */	ble lbl_801A09E0
/* 801A07BC 0019D71C  80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 801A07C0 0019D720  2C 00 00 02 */	cmpwi r0, 2
/* 801A07C4 0019D724  40 82 00 0C */	bne lbl_801A07D0
/* 801A07C8 0019D728  80 1F 02 AC */	lwz r0, 0x2ac(r31)
/* 801A07CC 0019D72C  48 00 00 08 */	b lbl_801A07D4
lbl_801A07D0:
/* 801A07D0 0019D730  38 00 00 04 */	li r0, 4
lbl_801A07D4:
/* 801A07D4 0019D734  2C 00 00 01 */	cmpwi r0, 1
/* 801A07D8 0019D738  41 82 02 08 */	beq lbl_801A09E0
/* 801A07DC 0019D73C  88 1F 09 C4 */	lbz r0, 0x9c4(r31)
/* 801A07E0 0019D740  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801A07E4 0019D744  40 82 01 FC */	bne lbl_801A09E0
/* 801A07E8 0019D748  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 801A07EC 0019D74C  38 60 00 01 */	li r3, 1
/* 801A07F0 0019D750  2C 00 00 01 */	cmpwi r0, 1
/* 801A07F4 0019D754  41 82 00 C0 */	beq lbl_801A08B4
/* 801A07F8 0019D758  80 9E 08 70 */	lwz r4, 0x870(r30)
/* 801A07FC 0019D75C  38 61 00 08 */	addi r3, r1, 8
/* 801A0800 0019D760  80 A4 00 7C */	lwz r5, 0x7c(r4)
/* 801A0804 0019D764  A3 85 00 08 */	lhz r28, 8(r5)
/* 801A0808 0019D768  4B E6 B3 D1 */	bl GetCurrentCameraId__14CCameraManagerCFv
/* 801A080C 0019D76C  A0 01 00 08 */	lhz r0, 8(r1)
/* 801A0810 0019D770  7C 00 E0 40 */	cmplw r0, r28
/* 801A0814 0019D774  40 82 00 98 */	bne lbl_801A08AC
/* 801A0818 0019D778  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 801A081C 0019D77C  FC 40 F8 90 */	fmr f2, f31
/* 801A0820 0019D780  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 801A0824 0019D784  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A0828 0019D788  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 801A082C 0019D78C  38 81 00 38 */	addi r4, r1, 0x38
/* 801A0830 0019D790  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801A0834 0019D794  C0 22 A7 88 */	lfs f1, lbl_805AC4A8@sda21(r2)
/* 801A0838 0019D798  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 801A083C 0019D79C  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 801A0840 0019D7A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801A0844 0019D7A4  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 801A0848 0019D7A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A084C 0019D7AC  90 C1 00 38 */	stw r6, 0x38(r1)
/* 801A0850 0019D7B0  C0 62 A7 90 */	lfs f3, lbl_805AC4B0@sda21(r2)
/* 801A0854 0019D7B4  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 801A0858 0019D7B8  90 01 00 40 */	stw r0, 0x40(r1)
/* 801A085C 0019D7BC  4B FB CD 69 */	bl BuildPatternedExplodeShakeData__16CCameraShakeDataFRC9CVector3ffff
/* 801A0860 0019D7C0  80 7E 08 70 */	lwz r3, 0x870(r30)
/* 801A0864 0019D7C4  38 81 00 5C */	addi r4, r1, 0x5c
/* 801A0868 0019D7C8  38 A0 00 01 */	li r5, 1
/* 801A086C 0019D7CC  4B E6 A1 B5 */	bl AddCameraShaker__14CCameraManagerFRC16CCameraShakeDatab
/* 801A0870 0019D7D0  34 81 00 DC */	addic. r4, r1, 0xdc
/* 801A0874 0019D7D4  41 82 00 10 */	beq lbl_801A0884
/* 801A0878 0019D7D8  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801A087C 0019D7DC  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801A0880 0019D7E0  90 04 00 00 */	stw r0, 0(r4)
lbl_801A0884:
/* 801A0884 0019D7E4  34 81 00 A0 */	addic. r4, r1, 0xa0
/* 801A0888 0019D7E8  41 82 00 10 */	beq lbl_801A0898
/* 801A088C 0019D7EC  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801A0890 0019D7F0  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801A0894 0019D7F4  90 04 00 00 */	stw r0, 0(r4)
lbl_801A0898:
/* 801A0898 0019D7F8  34 81 00 64 */	addic. r4, r1, 0x64
/* 801A089C 0019D7FC  41 82 00 10 */	beq lbl_801A08AC
/* 801A08A0 0019D800  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801A08A4 0019D804  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801A08A8 0019D808  90 04 00 00 */	stw r0, 0(r4)
lbl_801A08AC:
/* 801A08AC 0019D80C  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A08B0 0019D810  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
lbl_801A08B4:
/* 801A08B4 0019D814  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A08B8 0019D818  41 82 01 28 */	beq lbl_801A09E0
/* 801A08BC 0019D81C  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A08C0 0019D820  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801A08C4 0019D824  41 82 00 0C */	beq lbl_801A08D0
/* 801A08C8 0019D828  C0 62 A7 94 */	lfs f3, lbl_805AC4B4@sda21(r2)
/* 801A08CC 0019D82C  48 00 00 08 */	b lbl_801A08D4
lbl_801A08D0:
/* 801A08D0 0019D830  C0 62 A7 98 */	lfs f3, lbl_805AC4B8@sda21(r2)
lbl_801A08D4:
/* 801A08D4 0019D834  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801A08D8 0019D838  C0 1D 09 78 */	lfs f0, 0x978(r29)
/* 801A08DC 0019D83C  38 83 66 F4 */	addi r4, r3, sUpVector__9CVector3f@l
/* 801A08E0 0019D840  C0 44 00 00 */	lfs f2, 0(r4)
/* 801A08E4 0019D844  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801A08E8 0019D848  C0 24 00 04 */	lfs f1, 4(r4)
/* 801A08EC 0019D84C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A08F0 0019D850  C0 04 00 08 */	lfs f0, 8(r4)
/* 801A08F4 0019D854  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801A08F8 0019D858  EC 23 00 72 */	fmuls f1, f3, f1
/* 801A08FC 0019D85C  C7 63 66 A0 */	lfsu f27, sZeroVector__9CVector3f@l(r3)
/* 801A0900 0019D860  EC 03 00 32 */	fmuls f0, f3, f0
/* 801A0904 0019D864  EF 9F 00 B2 */	fmuls f28, f31, f2
/* 801A0908 0019D868  EF BF 00 72 */	fmuls f29, f31, f1
/* 801A090C 0019D86C  C3 43 00 04 */	lfs f26, 4(r3)
/* 801A0910 0019D870  EF DF 00 32 */	fmuls f30, f31, f0
/* 801A0914 0019D874  C3 23 00 08 */	lfs f25, 8(r3)
/* 801A0918 0019D878  40 81 00 7C */	ble lbl_801A0994
/* 801A091C 0019D87C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 801A0920 0019D880  38 61 00 0C */	addi r3, r1, 0xc
/* 801A0924 0019D884  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 801A0928 0019D888  48 17 38 D9 */	bl __ct__9CVector2fFff
/* 801A092C 0019D88C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801A0930 0019D890  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801A0934 0019D894  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A0938 0019D898  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801A093C 0019D89C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801A0940 0019D8A0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801A0944 0019D8A4  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A0948 0019D8A8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801A094C 0019D8AC  41 82 00 48 */	beq lbl_801A0994
/* 801A0950 0019D8B0  38 61 00 44 */	addi r3, r1, 0x44
/* 801A0954 0019D8B4  48 17 3D A5 */	bl CanBeNormalized__9CVector3fCFv
/* 801A0958 0019D8B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A095C 0019D8BC  41 82 00 38 */	beq lbl_801A0994
/* 801A0960 0019D8C0  38 61 00 20 */	addi r3, r1, 0x20
/* 801A0964 0019D8C4  38 81 00 44 */	addi r4, r1, 0x44
/* 801A0968 0019D8C8  48 17 3E E9 */	bl AsNormalized__9CVector3fCFv
/* 801A096C 0019D8CC  C0 62 A7 9C */	lfs f3, lbl_805AC4BC@sda21(r2)
/* 801A0970 0019D8D0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801A0974 0019D8D4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801A0978 0019D8D8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801A097C 0019D8DC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801A0980 0019D8E0  EC 23 00 72 */	fmuls f1, f3, f1
/* 801A0984 0019D8E4  EC 03 00 32 */	fmuls f0, f3, f0
/* 801A0988 0019D8E8  EF 7F 00 B2 */	fmuls f27, f31, f2
/* 801A098C 0019D8EC  EF 5F 00 72 */	fmuls f26, f31, f1
/* 801A0990 0019D8F0  EF 3F 00 32 */	fmuls f25, f31, f0
lbl_801A0994:
/* 801A0994 0019D8F4  EC 5C D8 2A */	fadds f2, f28, f27
/* 801A0998 0019D8F8  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 801A099C 0019D8FC  EC 3D D0 2A */	fadds f1, f29, f26
/* 801A09A0 0019D900  EC 1E C8 2A */	fadds f0, f30, f25
/* 801A09A4 0019D904  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801A09A8 0019D908  EC 23 00 72 */	fmuls f1, f3, f1
/* 801A09AC 0019D90C  EC 03 00 32 */	fmuls f0, f3, f0
/* 801A09B0 0019D910  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801A09B4 0019D914  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A09B8 0019D918  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A09BC 0019D91C  4B E7 AB 79 */	bl Identity__10CAxisAngleFv
/* 801A09C0 0019D920  7C 65 1B 78 */	mr r5, r3
/* 801A09C4 0019D924  7F E3 FB 78 */	mr r3, r31
/* 801A09C8 0019D928  38 81 00 14 */	addi r4, r1, 0x14
/* 801A09CC 0019D92C  4B F7 B9 CD */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 801A09D0 0019D930  7F E3 FB 78 */	mr r3, r31
/* 801A09D4 0019D934  7F C5 F3 78 */	mr r5, r30
/* 801A09D8 0019D938  38 80 00 02 */	li r4, 2
/* 801A09DC 0019D93C  48 0E 5A 11 */	bl SetMoveState__7CPlayerFQ27NPlayer20EPlayerMovementStateR13CStateManager
lbl_801A09E0:
/* 801A09E0 0019D940  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A09E4 0019D944  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801A09E8 0019D948  41 82 00 1C */	beq lbl_801A0A04
/* 801A09EC 0019D94C  C0 22 A7 A0 */	lfs f1, lbl_805AC4C0@sda21(r2)
/* 801A09F0 0019D950  7F A3 EB 78 */	mr r3, r29
/* 801A09F4 0019D954  C0 1D 06 DC */	lfs f0, 0x6dc(r29)
/* 801A09F8 0019D958  7F C4 F3 78 */	mr r4, r30
/* 801A09FC 0019D95C  EC 21 00 32 */	fmuls f1, f1, f0
/* 801A0A00 0019D960  4B FF E1 F1 */	bl sub_8019ebf0
lbl_801A0A04:
/* 801A0A04 0019D964  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, qr0
/* 801A0A08 0019D968  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 801A0A0C 0019D96C  E3 C1 01 98 */	psq_l f30, 408(r1), 0, qr0
/* 801A0A10 0019D970  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 801A0A14 0019D974  E3 A1 01 88 */	psq_l f29, 392(r1), 0, qr0
/* 801A0A18 0019D978  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 801A0A1C 0019D97C  E3 81 01 78 */	psq_l f28, 376(r1), 0, qr0
/* 801A0A20 0019D980  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 801A0A24 0019D984  E3 61 01 68 */	psq_l f27, 360(r1), 0, qr0
/* 801A0A28 0019D988  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 801A0A2C 0019D98C  E3 41 01 58 */	psq_l f26, 344(r1), 0, qr0
/* 801A0A30 0019D990  CB 41 01 50 */	lfd f26, 0x150(r1)
/* 801A0A34 0019D994  E3 21 01 48 */	psq_l f25, 328(r1), 0, qr0
/* 801A0A38 0019D998  CB 21 01 40 */	lfd f25, 0x140(r1)
/* 801A0A3C 0019D99C  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 801A0A40 0019D9A0  83 C1 01 38 */	lwz r30, 0x138(r1)
/* 801A0A44 0019D9A4  83 A1 01 34 */	lwz r29, 0x134(r1)
/* 801A0A48 0019D9A8  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 801A0A4C 0019D9AC  83 81 01 30 */	lwz r28, 0x130(r1)
/* 801A0A50 0019D9B0  7C 08 03 A6 */	mtlr r0
/* 801A0A54 0019D9B4  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 801A0A58 0019D9B8  4E 80 00 20 */	blr

.global sub_801a0a5c
sub_801a0a5c:
/* 801A0A5C 0019D9BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801A0A60 0019D9C0  7C 08 02 A6 */	mflr r0
/* 801A0A64 0019D9C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A0A68 0019D9C8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801A0A6C 0019D9CC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801A0A70 0019D9D0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801A0A74 0019D9D4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801A0A78 0019D9D8  7C 7E 1B 78 */	mr r30, r3
/* 801A0A7C 0019D9DC  7C BF 2B 78 */	mr r31, r5
/* 801A0A80 0019D9E0  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801A0A84 0019D9E4  7C 85 23 78 */	mr r5, r4
/* 801A0A88 0019D9E8  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801A0A8C 0019D9EC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801A0A90 0019D9F0  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A0A94 0019D9F4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801A0A98 0019D9F8  D0 5F 00 04 */	stfs f2, 4(r31)
/* 801A0A9C 0019D9FC  D0 7F 00 08 */	stfs f3, 8(r31)
/* 801A0AA0 0019DA00  C0 03 09 54 */	lfs f0, 0x954(r3)
/* 801A0AA4 0019DA04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801A0AA8 0019DA08  4C 40 13 82 */	cror 2, 0, 2
/* 801A0AAC 0019DA0C  40 82 00 C0 */	bne lbl_801A0B6C
/* 801A0AB0 0019DA10  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 801A0AB4 0019DA14  38 61 00 14 */	addi r3, r1, 0x14
/* 801A0AB8 0019DA18  81 84 00 00 */	lwz r12, 0(r4)
/* 801A0ABC 0019DA1C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801A0AC0 0019DA20  7D 89 03 A6 */	mtctr r12
/* 801A0AC4 0019DA24  4E 80 04 21 */	bctrl
/* 801A0AC8 0019DA28  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801A0ACC 0019DA2C  38 61 00 20 */	addi r3, r1, 0x20
/* 801A0AD0 0019DA30  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801A0AD4 0019DA34  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801A0AD8 0019DA38  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801A0ADC 0019DA3C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801A0AE0 0019DA40  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801A0AE4 0019DA44  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801A0AE8 0019DA48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801A0AEC 0019DA4C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801A0AF0 0019DA50  C0 5F 00 08 */	lfs f2, 8(r31)
/* 801A0AF4 0019DA54  EC 81 00 28 */	fsubs f4, f1, f0
/* 801A0AF8 0019DA58  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801A0AFC 0019DA5C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 801A0B00 0019DA60  EC 43 10 28 */	fsubs f2, f3, f2
/* 801A0B04 0019DA64  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A0B08 0019DA68  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801A0B0C 0019DA6C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801A0B10 0019DA70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A0B14 0019DA74  48 17 3B E5 */	bl CanBeNormalized__9CVector3fCFv
/* 801A0B18 0019DA78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A0B1C 0019DA7C  41 82 00 50 */	beq lbl_801A0B6C
/* 801A0B20 0019DA80  C3 FE 02 FC */	lfs f31, 0x2fc(r30)
/* 801A0B24 0019DA84  38 61 00 08 */	addi r3, r1, 8
/* 801A0B28 0019DA88  38 81 00 20 */	addi r4, r1, 0x20
/* 801A0B2C 0019DA8C  48 17 3D 25 */	bl AsNormalized__9CVector3fCFv
/* 801A0B30 0019DA90  C0 01 00 08 */	lfs f0, 8(r1)
/* 801A0B34 0019DA94  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 801A0B38 0019DA98  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801A0B3C 0019DA9C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 801A0B40 0019DAA0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801A0B44 0019DAA4  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 801A0B48 0019DAA8  EC 01 00 2A */	fadds f0, f1, f0
/* 801A0B4C 0019DAAC  EC 3F 00 B2 */	fmuls f1, f31, f2
/* 801A0B50 0019DAB0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801A0B54 0019DAB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801A0B58 0019DAB8  EC 00 18 2A */	fadds f0, f0, f3
/* 801A0B5C 0019DABC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801A0B60 0019DAC0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801A0B64 0019DAC4  EC 00 08 2A */	fadds f0, f0, f1
/* 801A0B68 0019DAC8  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_801A0B6C:
/* 801A0B6C 0019DACC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801A0B70 0019DAD0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A0B74 0019DAD4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801A0B78 0019DAD8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801A0B7C 0019DADC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801A0B80 0019DAE0  7C 08 03 A6 */	mtlr r0
/* 801A0B84 0019DAE4  38 21 00 50 */	addi r1, r1, 0x50
/* 801A0B88 0019DAE8  4E 80 00 20 */	blr

.global sub_801a0b8c
sub_801a0b8c:
/* 801A0B8C 0019DAEC  88 03 0B 29 */	lbz r0, 0xb29(r3)
/* 801A0B90 0019DAF0  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801A0B94 0019DAF4  41 82 00 0C */	beq lbl_801A0BA0
/* 801A0B98 0019DAF8  C0 62 A7 74 */	lfs f3, lbl_805AC494@sda21(r2)
/* 801A0B9C 0019DAFC  48 00 00 08 */	b lbl_801A0BA4
lbl_801A0BA0:
/* 801A0BA0 0019DB00  C0 62 A7 60 */	lfs f3, lbl_805AC480@sda21(r2)
lbl_801A0BA4:
/* 801A0BA4 0019DB04  C0 43 09 54 */	lfs f2, 0x954(r3)
/* 801A0BA8 0019DB08  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A0BAC 0019DB0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A0BB0 0019DB10  40 81 00 0C */	ble lbl_801A0BBC
/* 801A0BB4 0019DB14  EC 03 10 7C */	fnmsubs f0, f3, f1, f2
/* 801A0BB8 0019DB18  D0 03 09 54 */	stfs f0, 0x954(r3)
lbl_801A0BBC:
/* 801A0BBC 0019DB1C  C0 43 09 60 */	lfs f2, 0x960(r3)
/* 801A0BC0 0019DB20  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A0BC4 0019DB24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A0BC8 0019DB28  40 81 00 0C */	ble lbl_801A0BD4
/* 801A0BCC 0019DB2C  EC 02 08 28 */	fsubs f0, f2, f1
/* 801A0BD0 0019DB30  D0 03 09 60 */	stfs f0, 0x960(r3)
lbl_801A0BD4:
/* 801A0BD4 0019DB34  C0 43 09 7C */	lfs f2, 0x97c(r3)
/* 801A0BD8 0019DB38  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A0BDC 0019DB3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A0BE0 0019DB40  40 81 00 0C */	ble lbl_801A0BEC
/* 801A0BE4 0019DB44  EC 02 08 28 */	fsubs f0, f2, f1
/* 801A0BE8 0019DB48  D0 03 09 7C */	stfs f0, 0x97c(r3)
lbl_801A0BEC:
/* 801A0BEC 0019DB4C  C0 43 09 58 */	lfs f2, 0x958(r3)
/* 801A0BF0 0019DB50  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A0BF4 0019DB54  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A0BF8 0019DB58  40 81 00 0C */	ble lbl_801A0C04
/* 801A0BFC 0019DB5C  EC 02 08 28 */	fsubs f0, f2, f1
/* 801A0C00 0019DB60  D0 03 09 58 */	stfs f0, 0x958(r3)
lbl_801A0C04:
/* 801A0C04 0019DB64  C0 43 09 68 */	lfs f2, 0x968(r3)
/* 801A0C08 0019DB68  C0 03 07 4C */	lfs f0, 0x74c(r3)
/* 801A0C0C 0019DB6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A0C10 0019DB70  4C 80 00 20 */	bgelr
/* 801A0C14 0019DB74  EC 02 08 2A */	fadds f0, f2, f1
/* 801A0C18 0019DB78  D0 03 09 68 */	stfs f0, 0x968(r3)
/* 801A0C1C 0019DB7C  4E 80 00 20 */	blr

.global sub_801a0c20
sub_801a0c20:
/* 801A0C20 0019DB80  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801A0C24 0019DB84  7C 08 02 A6 */	mflr r0
/* 801A0C28 0019DB88  C0 02 A7 A4 */	lfs f0, lbl_805AC4C4@sda21(r2)
/* 801A0C2C 0019DB8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A0C30 0019DB90  38 81 00 14 */	addi r4, r1, 0x14
/* 801A0C34 0019DB94  C0 22 A7 74 */	lfs f1, lbl_805AC494@sda21(r2)
/* 801A0C38 0019DB98  38 A1 00 08 */	addi r5, r1, 8
/* 801A0C3C 0019DB9C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801A0C40 0019DBA0  7C 7F 1B 78 */	mr r31, r3
/* 801A0C44 0019DBA4  80 C3 00 64 */	lwz r6, 0x64(r3)
/* 801A0C48 0019DBA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A0C4C 0019DBAC  C0 86 00 04 */	lfs f4, 4(r6)
/* 801A0C50 0019DBB0  C0 A6 00 00 */	lfs f5, 0(r6)
/* 801A0C54 0019DBB4  EC 40 01 32 */	fmuls f2, f0, f4
/* 801A0C58 0019DBB8  C0 66 00 08 */	lfs f3, 8(r6)
/* 801A0C5C 0019DBBC  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801A0C60 0019DBC0  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A0C64 0019DBC4  D0 5F 09 78 */	stfs f2, 0x978(r31)
/* 801A0C68 0019DBC8  C0 5F 09 78 */	lfs f2, 0x978(r31)
/* 801A0C6C 0019DBCC  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 801A0C70 0019DBD0  FC 80 10 50 */	fneg f4, f2
/* 801A0C74 0019DBD4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 801A0C78 0019DBD8  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 801A0C7C 0019DBDC  D0 41 00 08 */	stfs f2, 8(r1)
/* 801A0C80 0019DBE0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801A0C84 0019DBE4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801A0C88 0019DBE8  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801A0C8C 0019DBEC  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 801A0C90 0019DBF0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A0C94 0019DBF4  48 19 78 75 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801A0C98 0019DBF8  7F E3 FB 78 */	mr r3, r31
/* 801A0C9C 0019DBFC  38 81 00 2C */	addi r4, r1, 0x2c
/* 801A0CA0 0019DC00  4B F7 99 B9 */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
/* 801A0CA4 0019DC04  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801A0CA8 0019DC08  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801A0CAC 0019DC0C  C0 22 A7 7C */	lfs f1, lbl_805AC49C@sda21(r2)
/* 801A0CB0 0019DC10  90 7F 0A 40 */	stw r3, 0xa40(r31)
/* 801A0CB4 0019DC14  90 1F 0A 44 */	stw r0, 0xa44(r31)
/* 801A0CB8 0019DC18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A0CBC 0019DC1C  90 1F 0A 48 */	stw r0, 0xa48(r31)
/* 801A0CC0 0019DC20  80 61 00 38 */	lwz r3, 0x38(r1)
/* 801A0CC4 0019DC24  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801A0CC8 0019DC28  90 7F 0A 4C */	stw r3, 0xa4c(r31)
/* 801A0CCC 0019DC2C  90 1F 0A 50 */	stw r0, 0xa50(r31)
/* 801A0CD0 0019DC30  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801A0CD4 0019DC34  90 1F 0A 54 */	stw r0, 0xa54(r31)
/* 801A0CD8 0019DC38  C0 1F 09 78 */	lfs f0, 0x978(r31)
/* 801A0CDC 0019DC3C  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 801A0CE0 0019DC40  C0 1F 09 78 */	lfs f0, 0x978(r31)
/* 801A0CE4 0019DC44  D0 1F 08 30 */	stfs f0, 0x830(r31)
/* 801A0CE8 0019DC48  D0 3F 08 38 */	stfs f1, 0x838(r31)
/* 801A0CEC 0019DC4C  C0 1F 09 78 */	lfs f0, 0x978(r31)
/* 801A0CF0 0019DC50  D0 1F 09 18 */	stfs f0, 0x918(r31)
/* 801A0CF4 0019DC54  C0 1F 09 78 */	lfs f0, 0x978(r31)
/* 801A0CF8 0019DC58  D0 1F 09 14 */	stfs f0, 0x914(r31)
/* 801A0CFC 0019DC5C  D0 3F 09 1C */	stfs f1, 0x91c(r31)
/* 801A0D00 0019DC60  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801A0D04 0019DC64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A0D08 0019DC68  7C 08 03 A6 */	mtlr r0
/* 801A0D0C 0019DC6C  38 21 00 50 */	addi r1, r1, 0x50
/* 801A0D10 0019DC70  4E 80 00 20 */	blr

.global sub_801a0d14
sub_801a0d14:
/* 801A0D14 0019DC74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A0D18 0019DC78  7C 08 02 A6 */	mflr r0
/* 801A0D1C 0019DC7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A0D20 0019DC80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A0D24 0019DC84  7C 9F 23 78 */	mr r31, r4
/* 801A0D28 0019DC88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A0D2C 0019DC8C  7C 7E 1B 78 */	mr r30, r3
/* 801A0D30 0019DC90  7C A3 2B 78 */	mr r3, r5
/* 801A0D34 0019DC94  A0 04 0A F6 */	lhz r0, 0xaf6(r4)
/* 801A0D38 0019DC98  38 81 00 08 */	addi r4, r1, 8
/* 801A0D3C 0019DC9C  B0 01 00 08 */	sth r0, 8(r1)
/* 801A0D40 0019DCA0  4B EA B8 65 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A0D44 0019DCA4  7C 64 1B 78 */	mr r4, r3
/* 801A0D48 0019DCA8  38 61 00 0C */	addi r3, r1, 0xc
/* 801A0D4C 0019DCAC  4B F0 E6 01 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801A0D50 0019DCB0  80 63 00 04 */	lwz r3, 4(r3)
/* 801A0D54 0019DCB4  28 03 00 00 */	cmplwi r3, 0
/* 801A0D58 0019DCB8  41 82 00 20 */	beq lbl_801A0D78
/* 801A0D5C 0019DCBC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801A0D60 0019DCC0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801A0D64 0019DCC4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801A0D68 0019DCC8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801A0D6C 0019DCCC  D0 3E 00 04 */	stfs f1, 4(r30)
/* 801A0D70 0019DCD0  D0 5E 00 08 */	stfs f2, 8(r30)
/* 801A0D74 0019DCD4  48 00 00 1C */	b lbl_801A0D90
lbl_801A0D78:
/* 801A0D78 0019DCD8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801A0D7C 0019DCDC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801A0D80 0019DCE0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801A0D84 0019DCE4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801A0D88 0019DCE8  D0 3E 00 04 */	stfs f1, 4(r30)
/* 801A0D8C 0019DCEC  D0 5E 00 08 */	stfs f2, 8(r30)
lbl_801A0D90:
/* 801A0D90 0019DCF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A0D94 0019DCF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A0D98 0019DCF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A0D9C 0019DCFC  7C 08 03 A6 */	mtlr r0
/* 801A0DA0 0019DD00  38 21 00 20 */	addi r1, r1, 0x20
/* 801A0DA4 0019DD04  4E 80 00 20 */	blr

.global sub_801a0da8
sub_801a0da8:
/* 801A0DA8 0019DD08  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801A0DAC 0019DD0C  7C 08 02 A6 */	mflr r0
/* 801A0DB0 0019DD10  90 01 00 74 */	stw r0, 0x74(r1)
/* 801A0DB4 0019DD14  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801A0DB8 0019DD18  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801A0DBC 0019DD1C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801A0DC0 0019DD20  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801A0DC4 0019DD24  93 A1 00 54 */	stw r29, 0x54(r1)
/* 801A0DC8 0019DD28  93 81 00 50 */	stw r28, 0x50(r1)
/* 801A0DCC 0019DD2C  83 C4 00 F0 */	lwz r30, 0xf0(r4)
/* 801A0DD0 0019DD30  7C 9D 23 78 */	mr r29, r4
/* 801A0DD4 0019DD34  7C 7C 1B 78 */	mr r28, r3
/* 801A0DD8 0019DD38  3B E0 00 00 */	li r31, 0
/* 801A0DDC 0019DD3C  2C 1E 00 06 */	cmpwi r30, 6
/* 801A0DE0 0019DD40  41 82 00 24 */	beq lbl_801A0E04
/* 801A0DE4 0019DD44  2C 1E 00 03 */	cmpwi r30, 3
/* 801A0DE8 0019DD48  41 82 00 1C */	beq lbl_801A0E04
/* 801A0DEC 0019DD4C  88 1D 01 30 */	lbz r0, 0x130(r29)
/* 801A0DF0 0019DD50  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801A0DF4 0019DD54  41 82 00 0C */	beq lbl_801A0E00
/* 801A0DF8 0019DD58  2C 1E 00 00 */	cmpwi r30, 0
/* 801A0DFC 0019DD5C  41 82 00 08 */	beq lbl_801A0E04
lbl_801A0E00:
/* 801A0E00 0019DD60  3B E0 00 01 */	li r31, 1
lbl_801A0E04:
/* 801A0E04 0019DD64  A0 1D 00 EC */	lhz r0, 0xec(r29)
/* 801A0E08 0019DD68  7C A3 2B 78 */	mr r3, r5
/* 801A0E0C 0019DD6C  38 81 00 0C */	addi r4, r1, 0xc
/* 801A0E10 0019DD70  B0 01 00 08 */	sth r0, 8(r1)
/* 801A0E14 0019DD74  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801A0E18 0019DD78  4B EA B7 8D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A0E1C 0019DD7C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801A0E20 0019DD80  7C 7F 1B 78 */	mr r31, r3
/* 801A0E24 0019DD84  41 82 01 58 */	beq lbl_801A0F7C
/* 801A0E28 0019DD88  28 1F 00 00 */	cmplwi r31, 0
/* 801A0E2C 0019DD8C  41 82 01 50 */	beq lbl_801A0F7C
/* 801A0E30 0019DD90  7F E4 FB 78 */	mr r4, r31
/* 801A0E34 0019DD94  38 61 00 10 */	addi r3, r1, 0x10
/* 801A0E38 0019DD98  4B F0 47 05 */	bl "__ct__30TPatternedCast<12CIceSheegoth>FP7CEntity"
/* 801A0E3C 0019DD9C  4B F0 46 D5 */	bl "CastTo<12CIceSheegoth>__10CPatternedFRC30TPatternedCast<12CIceSheegoth>"
/* 801A0E40 0019DDA0  28 03 00 00 */	cmplwi r3, 0
/* 801A0E44 0019DDA4  40 82 01 38 */	bne lbl_801A0F7C
/* 801A0E48 0019DDA8  80 7D 00 04 */	lwz r3, 4(r29)
/* 801A0E4C 0019DDAC  80 1C 00 04 */	lwz r0, 4(r28)
/* 801A0E50 0019DDB0  7C 03 00 00 */	cmpw r3, r0
/* 801A0E54 0019DDB4  40 82 01 28 */	bne lbl_801A0F7C
/* 801A0E58 0019DDB8  38 61 00 28 */	addi r3, r1, 0x28
/* 801A0E5C 0019DDBC  38 9C 00 34 */	addi r4, r28, 0x34
/* 801A0E60 0019DDC0  38 BC 05 74 */	addi r5, r28, 0x574
/* 801A0E64 0019DDC4  48 17 1C 1D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 801A0E68 0019DDC8  C0 7C 00 40 */	lfs f3, 0x40(r28)
/* 801A0E6C 0019DDCC  2C 1E 00 02 */	cmpwi r30, 2
/* 801A0E70 0019DDD0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801A0E74 0019DDD4  C0 5C 00 50 */	lfs f2, 0x50(r28)
/* 801A0E78 0019DDD8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801A0E7C 0019DDDC  EC 83 00 2A */	fadds f4, f3, f0
/* 801A0E80 0019DDE0  C0 FD 00 50 */	lfs f7, 0x50(r29)
/* 801A0E84 0019DDE4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801A0E88 0019DDE8  EC 62 08 2A */	fadds f3, f2, f1
/* 801A0E8C 0019DDEC  C1 1D 00 40 */	lfs f8, 0x40(r29)
/* 801A0E90 0019DDF0  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 801A0E94 0019DDF4  EC A7 00 28 */	fsubs f5, f7, f0
/* 801A0E98 0019DDF8  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 801A0E9C 0019DDFC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801A0EA0 0019DE00  EC C8 10 28 */	fsubs f6, f8, f2
/* 801A0EA4 0019DE04  EC 41 00 28 */	fsubs f2, f1, f0
/* 801A0EA8 0019DE08  40 82 00 38 */	bne lbl_801A0EE0
/* 801A0EAC 0019DE0C  88 7D 01 30 */	lbz r3, 0x130(r29)
/* 801A0EB0 0019DE10  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801A0EB4 0019DE14  40 82 00 2C */	bne lbl_801A0EE0
/* 801A0EB8 0019DE18  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801A0EBC 0019DE1C  40 82 00 24 */	bne lbl_801A0EE0
/* 801A0EC0 0019DE20  EC 25 01 72 */	fmuls f1, f5, f5
/* 801A0EC4 0019DE24  C0 02 A7 A8 */	lfs f0, lbl_805AC4C8@sda21(r2)
/* 801A0EC8 0019DE28  EC 26 09 BA */	fmadds f1, f6, f6, f1
/* 801A0ECC 0019DE2C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801A0ED0 0019DE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A0ED4 0019DE34  40 80 00 0C */	bge lbl_801A0EE0
/* 801A0ED8 0019DE38  38 60 00 00 */	li r3, 0
/* 801A0EDC 0019DE3C  48 00 00 A4 */	b lbl_801A0F80
lbl_801A0EE0:
/* 801A0EE0 0019DE40  EC 28 20 28 */	fsubs f1, f8, f4
/* 801A0EE4 0019DE44  38 61 00 14 */	addi r3, r1, 0x14
/* 801A0EE8 0019DE48  EC 47 18 28 */	fsubs f2, f7, f3
/* 801A0EEC 0019DE4C  48 17 33 15 */	bl __ct__9CVector2fFff
/* 801A0EF0 0019DE50  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 801A0EF4 0019DE54  38 61 00 34 */	addi r3, r1, 0x34
/* 801A0EF8 0019DE58  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801A0EFC 0019DE5C  38 81 00 40 */	addi r4, r1, 0x40
/* 801A0F00 0019DE60  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A0F04 0019DE64  C0 BC 00 58 */	lfs f5, 0x58(r28)
/* 801A0F08 0019DE68  C0 9C 00 48 */	lfs f4, 0x48(r28)
/* 801A0F0C 0019DE6C  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 801A0F10 0019DE70  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801A0F14 0019DE74  C3 FC 05 70 */	lfs f31, 0x570(r28)
/* 801A0F18 0019DE78  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801A0F1C 0019DE7C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801A0F20 0019DE80  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801A0F24 0019DE84  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801A0F28 0019DE88  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 801A0F2C 0019DE8C  48 17 37 05 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 801A0F30 0019DE90  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 801A0F34 0019DE94  41 80 00 40 */	blt lbl_801A0F74
/* 801A0F38 0019DE98  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 801A0F3C 0019DE9C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801A0F40 0019DEA0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 801A0F44 0019DEA4  38 81 00 40 */	addi r4, r1, 0x40
/* 801A0F48 0019DEA8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801A0F4C 0019DEAC  FC 40 10 50 */	fneg f2, f2
/* 801A0F50 0019DEB0  FC 20 08 50 */	fneg f1, f1
/* 801A0F54 0019DEB4  C3 FC 05 6C */	lfs f31, 0x56c(r28)
/* 801A0F58 0019DEB8  FC 00 00 50 */	fneg f0, f0
/* 801A0F5C 0019DEBC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801A0F60 0019DEC0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801A0F64 0019DEC4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801A0F68 0019DEC8  48 17 36 C9 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 801A0F6C 0019DECC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 801A0F70 0019DED0  40 80 00 0C */	bge lbl_801A0F7C
lbl_801A0F74:
/* 801A0F74 0019DED4  38 60 00 01 */	li r3, 1
/* 801A0F78 0019DED8  48 00 00 08 */	b lbl_801A0F80
lbl_801A0F7C:
/* 801A0F7C 0019DEDC  38 60 00 00 */	li r3, 0
lbl_801A0F80:
/* 801A0F80 0019DEE0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801A0F84 0019DEE4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801A0F88 0019DEE8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801A0F8C 0019DEEC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801A0F90 0019DEF0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801A0F94 0019DEF4  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 801A0F98 0019DEF8  83 81 00 50 */	lwz r28, 0x50(r1)
/* 801A0F9C 0019DEFC  7C 08 03 A6 */	mtlr r0
/* 801A0FA0 0019DF00  38 21 00 70 */	addi r1, r1, 0x70
/* 801A0FA4 0019DF04  4E 80 00 20 */	blr

.global sub_801a0fa8
sub_801a0fa8:
/* 801A0FA8 0019DF08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A0FAC 0019DF0C  7C 08 02 A6 */	mflr r0
/* 801A0FB0 0019DF10  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A0FB4 0019DF14  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801A0FB8 0019DF18  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801A0FBC 0019DF1C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801A0FC0 0019DF20  7C 7B 1B 78 */	mr r27, r3
/* 801A0FC4 0019DF24  7C DE 33 78 */	mr r30, r6
/* 801A0FC8 0019DF28  C0 26 00 04 */	lfs f1, 4(r6)
/* 801A0FCC 0019DF2C  7C BD 2B 78 */	mr r29, r5
/* 801A0FD0 0019DF30  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801A0FD4 0019DF34  7C 9C 23 78 */	mr r28, r4
/* 801A0FD8 0019DF38  C0 66 00 00 */	lfs f3, 0(r6)
/* 801A0FDC 0019DF3C  3B FD 00 04 */	addi r31, r29, 4
/* 801A0FE0 0019DF40  EC 81 00 28 */	fsubs f4, f1, f0
/* 801A0FE4 0019DF44  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801A0FE8 0019DF48  C0 46 00 08 */	lfs f2, 8(r6)
/* 801A0FEC 0019DF4C  EC 63 00 28 */	fsubs f3, f3, f0
/* 801A0FF0 0019DF50  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801A0FF4 0019DF54  EC 04 01 32 */	fmuls f0, f4, f4
/* 801A0FF8 0019DF58  EC 22 08 28 */	fsubs f1, f2, f1
/* 801A0FFC 0019DF5C  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 801A1000 0019DF60  EF E1 00 7A */	fmadds f31, f1, f1, f0
/* 801A1004 0019DF64  48 00 00 84 */	b lbl_801A1088
lbl_801A1008:
/* 801A1008 0019DF68  A0 1F 00 00 */	lhz r0, 0(r31)
/* 801A100C 0019DF6C  7F 83 E3 78 */	mr r3, r28
/* 801A1010 0019DF70  38 81 00 08 */	addi r4, r1, 8
/* 801A1014 0019DF74  B0 01 00 08 */	sth r0, 8(r1)
/* 801A1018 0019DF78  4B EA B5 8D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A101C 0019DF7C  7C 64 1B 78 */	mr r4, r3
/* 801A1020 0019DF80  38 61 00 0C */	addi r3, r1, 0xc
/* 801A1024 0019DF84  4B F0 45 19 */	bl "__ct__30TPatternedCast<12CIceSheegoth>FP7CEntity"
/* 801A1028 0019DF88  4B F0 44 E9 */	bl "CastTo<12CIceSheegoth>__10CPatternedFRC30TPatternedCast<12CIceSheegoth>"
/* 801A102C 0019DF8C  28 03 00 00 */	cmplwi r3, 0
/* 801A1030 0019DF90  41 82 00 54 */	beq lbl_801A1084
/* 801A1034 0019DF94  A0 83 00 08 */	lhz r4, 8(r3)
/* 801A1038 0019DF98  A0 1B 00 08 */	lhz r0, 8(r27)
/* 801A103C 0019DF9C  7C 04 00 40 */	cmplw r4, r0
/* 801A1040 0019DFA0  41 82 00 44 */	beq lbl_801A1084
/* 801A1044 0019DFA4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801A1048 0019DFA8  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801A104C 0019DFAC  C0 7E 00 00 */	lfs f3, 0(r30)
/* 801A1050 0019DFB0  EC 81 00 28 */	fsubs f4, f1, f0
/* 801A1054 0019DFB4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801A1058 0019DFB8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 801A105C 0019DFBC  EC 63 00 28 */	fsubs f3, f3, f0
/* 801A1060 0019DFC0  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801A1064 0019DFC4  EC 04 01 32 */	fmuls f0, f4, f4
/* 801A1068 0019DFC8  EC 22 08 28 */	fsubs f1, f2, f1
/* 801A106C 0019DFCC  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 801A1070 0019DFD0  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 801A1074 0019DFD4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801A1078 0019DFD8  40 80 00 0C */	bge lbl_801A1084
/* 801A107C 0019DFDC  38 60 00 00 */	li r3, 0
/* 801A1080 0019DFE0  48 00 00 24 */	b lbl_801A10A4
lbl_801A1084:
/* 801A1084 0019DFE4  3B FF 00 02 */	addi r31, r31, 2
lbl_801A1088:
/* 801A1088 0019DFE8  80 1D 00 00 */	lwz r0, 0(r29)
/* 801A108C 0019DFEC  54 00 08 3C */	slwi r0, r0, 1
/* 801A1090 0019DFF0  7C 7D 02 14 */	add r3, r29, r0
/* 801A1094 0019DFF4  38 03 00 04 */	addi r0, r3, 4
/* 801A1098 0019DFF8  7C 1F 00 40 */	cmplw r31, r0
/* 801A109C 0019DFFC  40 82 FF 6C */	bne lbl_801A1008
/* 801A10A0 0019E000  38 60 00 01 */	li r3, 1
lbl_801A10A4:
/* 801A10A4 0019E004  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801A10A8 0019E008  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801A10AC 0019E00C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801A10B0 0019E010  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A10B4 0019E014  7C 08 03 A6 */	mtlr r0
/* 801A10B8 0019E018  38 21 00 40 */	addi r1, r1, 0x40
/* 801A10BC 0019E01C  4E 80 00 20 */	blr

.global sub_801a10c0
sub_801a10c0:
/* 801A10C0 0019E020  94 21 ED 40 */	stwu r1, -0x12c0(r1)
/* 801A10C4 0019E024  7C 08 02 A6 */	mflr r0
/* 801A10C8 0019E028  90 01 12 C4 */	stw r0, 0x12c4(r1)
/* 801A10CC 0019E02C  38 00 12 B8 */	li r0, 0x12b8
/* 801A10D0 0019E030  DB E1 12 B0 */	stfd f31, 0x12b0(r1)
/* 801A10D4 0019E034  13 E1 00 0E */	psq_stx f31, r1, r0, 0, qr0
/* 801A10D8 0019E038  38 00 12 A8 */	li r0, 0x12a8
/* 801A10DC 0019E03C  DB C1 12 A0 */	stfd f30, 0x12a0(r1)
/* 801A10E0 0019E040  13 C1 00 0E */	psq_stx f30, r1, r0, 0, qr0
/* 801A10E4 0019E044  38 00 12 98 */	li r0, 0x1298
/* 801A10E8 0019E048  DB A1 12 90 */	stfd f29, 0x1290(r1)
/* 801A10EC 0019E04C  13 A1 00 0E */	psq_stx f29, r1, r0, 0, qr0
/* 801A10F0 0019E050  38 00 12 88 */	li r0, 0x1288
/* 801A10F4 0019E054  DB 81 12 80 */	stfd f28, 0x1280(r1)
/* 801A10F8 0019E058  13 81 00 0E */	psq_stx f28, r1, r0, 0, qr0
/* 801A10FC 0019E05C  38 00 12 78 */	li r0, 0x1278
/* 801A1100 0019E060  DB 61 12 70 */	stfd f27, 0x1270(r1)
/* 801A1104 0019E064  13 61 00 0E */	psq_stx f27, r1, r0, 0, qr0
/* 801A1108 0019E068  38 00 12 68 */	li r0, 0x1268
/* 801A110C 0019E06C  DB 41 12 60 */	stfd f26, 0x1260(r1)
/* 801A1110 0019E070  13 41 00 0E */	psq_stx f26, r1, r0, 0, qr0
/* 801A1114 0019E074  BF 41 12 48 */	stmw r26, 0x1248(r1)
/* 801A1118 0019E078  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801A111C 0019E07C  7C 7C 1B 78 */	mr r28, r3
/* 801A1120 0019E080  7C 9D 23 78 */	mr r29, r4
/* 801A1124 0019E084  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801A1128 0019E088  41 82 06 10 */	beq lbl_801A1738
/* 801A112C 0019E08C  C0 7C 05 80 */	lfs f3, 0x580(r28)
/* 801A1130 0019E090  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 801A1134 0019E094  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 801A1138 0019E098  38 81 00 F8 */	addi r4, r1, 0xf8
/* 801A113C 0019E09C  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 801A1140 0019E0A0  38 A1 00 EC */	addi r5, r1, 0xec
/* 801A1144 0019E0A4  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801A1148 0019E0A8  EF E2 18 2A */	fadds f31, f2, f3
/* 801A114C 0019E0AC  EF C1 18 2A */	fadds f30, f1, f3
/* 801A1150 0019E0B0  EF A0 18 2A */	fadds f29, f0, f3
/* 801A1154 0019E0B4  EF 80 18 28 */	fsubs f28, f0, f3
/* 801A1158 0019E0B8  D3 E1 00 F4 */	stfs f31, 0xf4(r1)
/* 801A115C 0019E0BC  EF 61 18 28 */	fsubs f27, f1, f3
/* 801A1160 0019E0C0  EF 42 18 28 */	fsubs f26, f2, f3
/* 801A1164 0019E0C4  D3 A1 00 EC */	stfs f29, 0xec(r1)
/* 801A1168 0019E0C8  D3 C1 00 F0 */	stfs f30, 0xf0(r1)
/* 801A116C 0019E0CC  D3 81 00 F8 */	stfs f28, 0xf8(r1)
/* 801A1170 0019E0D0  D3 61 00 FC */	stfs f27, 0xfc(r1)
/* 801A1174 0019E0D4  D3 41 01 00 */	stfs f26, 0x100(r1)
/* 801A1178 0019E0D8  48 19 73 91 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801A117C 0019E0DC  80 AD 90 04 */	lwz r5, lbl_805A7BC4@sda21(r13)
/* 801A1180 0019E0E0  38 60 00 00 */	li r3, 0
/* 801A1184 0019E0E4  38 80 00 01 */	li r4, 1
/* 801A1188 0019E0E8  48 1E 8D 6D */	bl __shl2i
/* 801A118C 0019E0EC  38 00 00 00 */	li r0, 0
/* 801A1190 0019E0F0  39 00 00 01 */	li r8, 1
/* 801A1194 0019E0F4  90 81 01 B4 */	stw r4, 0x1b4(r1)
/* 801A1198 0019E0F8  38 81 0A 44 */	addi r4, r1, 0xa44
/* 801A119C 0019E0FC  38 A1 01 C8 */	addi r5, r1, 0x1c8
/* 801A11A0 0019E100  38 C1 01 B0 */	addi r6, r1, 0x1b0
/* 801A11A4 0019E104  90 61 01 B0 */	stw r3, 0x1b0(r1)
/* 801A11A8 0019E108  7F A3 EB 78 */	mr r3, r29
/* 801A11AC 0019E10C  38 E0 00 00 */	li r7, 0
/* 801A11B0 0019E110  91 01 01 78 */	stw r8, 0x178(r1)
/* 801A11B4 0019E114  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 801A11B8 0019E118  90 01 01 B8 */	stw r0, 0x1b8(r1)
/* 801A11BC 0019E11C  91 01 01 C0 */	stw r8, 0x1c0(r1)
/* 801A11C0 0019E120  90 01 0A 44 */	stw r0, 0xa44(r1)
/* 801A11C4 0019E124  4B EA B5 5D */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 801A11C8 0019E128  80 01 0A 44 */	lwz r0, 0xa44(r1)
/* 801A11CC 0019E12C  2C 00 00 00 */	cmpwi r0, 0
/* 801A11D0 0019E130  41 82 05 14 */	beq lbl_801A16E4
/* 801A11D4 0019E134  7F 84 E3 78 */	mr r4, r28
/* 801A11D8 0019E138  7F A5 EB 78 */	mr r5, r29
/* 801A11DC 0019E13C  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801A11E0 0019E140  4B FF FB 35 */	bl sub_801a0d14
/* 801A11E4 0019E144  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 801A11E8 0019E148  38 61 01 98 */	addi r3, r1, 0x198
/* 801A11EC 0019E14C  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 801A11F0 0019E150  38 81 00 D4 */	addi r4, r1, 0xd4
/* 801A11F4 0019E154  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 801A11F8 0019E158  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 801A11FC 0019E15C  D0 41 01 40 */	stfs f2, 0x140(r1)
/* 801A1200 0019E160  D0 21 01 44 */	stfs f1, 0x144(r1)
/* 801A1204 0019E164  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 801A1208 0019E168  D3 A1 00 C8 */	stfs f29, 0xc8(r1)
/* 801A120C 0019E16C  D3 C1 00 CC */	stfs f30, 0xcc(r1)
/* 801A1210 0019E170  D3 E1 00 D0 */	stfs f31, 0xd0(r1)
/* 801A1214 0019E174  D3 81 00 D4 */	stfs f28, 0xd4(r1)
/* 801A1218 0019E178  D3 61 00 D8 */	stfs f27, 0xd8(r1)
/* 801A121C 0019E17C  D3 41 00 DC */	stfs f26, 0xdc(r1)
/* 801A1220 0019E180  48 19 72 E9 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801A1224 0019E184  80 AD 90 08 */	lwz r5, lbl_805A7BC8@sda21(r13)
/* 801A1228 0019E188  38 60 00 00 */	li r3, 0
/* 801A122C 0019E18C  38 80 00 01 */	li r4, 1
/* 801A1230 0019E190  48 1E 8C C5 */	bl __shl2i
/* 801A1234 0019E194  38 00 00 00 */	li r0, 0
/* 801A1238 0019E198  39 00 00 01 */	li r8, 1
/* 801A123C 0019E19C  90 81 01 84 */	stw r4, 0x184(r1)
/* 801A1240 0019E1A0  38 81 02 40 */	addi r4, r1, 0x240
/* 801A1244 0019E1A4  38 A1 01 98 */	addi r5, r1, 0x198
/* 801A1248 0019E1A8  38 C1 01 80 */	addi r6, r1, 0x180
/* 801A124C 0019E1AC  90 61 01 80 */	stw r3, 0x180(r1)
/* 801A1250 0019E1B0  7F A3 EB 78 */	mr r3, r29
/* 801A1254 0019E1B4  38 E0 00 00 */	li r7, 0
/* 801A1258 0019E1B8  91 01 01 60 */	stw r8, 0x160(r1)
/* 801A125C 0019E1BC  90 01 01 8C */	stw r0, 0x18c(r1)
/* 801A1260 0019E1C0  90 01 01 88 */	stw r0, 0x188(r1)
/* 801A1264 0019E1C4  91 01 01 90 */	stw r8, 0x190(r1)
/* 801A1268 0019E1C8  90 01 02 40 */	stw r0, 0x240(r1)
/* 801A126C 0019E1CC  4B EA B4 B5 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 801A1270 0019E1D0  3B E1 0A 48 */	addi r31, r1, 0xa48
/* 801A1274 0019E1D4  7F FE FB 78 */	mr r30, r31
/* 801A1278 0019E1D8  48 00 04 04 */	b lbl_801A167C
lbl_801A127C:
/* 801A127C 0019E1DC  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801A1280 0019E1E0  7F A3 EB 78 */	mr r3, r29
/* 801A1284 0019E1E4  38 81 00 08 */	addi r4, r1, 8
/* 801A1288 0019E1E8  B0 01 00 08 */	sth r0, 8(r1)
/* 801A128C 0019E1EC  4B EA B2 E9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801A1290 0019E1F0  7C 64 1B 78 */	mr r4, r3
/* 801A1294 0019E1F4  38 61 00 0C */	addi r3, r1, 0xc
/* 801A1298 0019E1F8  4B F0 C4 75 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 801A129C 0019E1FC  83 43 00 04 */	lwz r26, 4(r3)
/* 801A12A0 0019E200  28 1A 00 00 */	cmplwi r26, 0
/* 801A12A4 0019E204  41 82 03 D4 */	beq lbl_801A1678
/* 801A12A8 0019E208  7F 83 E3 78 */	mr r3, r28
/* 801A12AC 0019E20C  7F 44 D3 78 */	mr r4, r26
/* 801A12B0 0019E210  7F A5 EB 78 */	mr r5, r29
/* 801A12B4 0019E214  4B FF FA F5 */	bl sub_801a0da8
/* 801A12B8 0019E218  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A12BC 0019E21C  41 82 03 BC */	beq lbl_801A1678
/* 801A12C0 0019E220  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 801A12C4 0019E224  38 61 00 BC */	addi r3, r1, 0xbc
/* 801A12C8 0019E228  C0 BA 00 50 */	lfs f5, 0x50(r26)
/* 801A12CC 0019E22C  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 801A12D0 0019E230  C0 9A 00 60 */	lfs f4, 0x60(r26)
/* 801A12D4 0019E234  EC 40 28 28 */	fsubs f2, f0, f5
/* 801A12D8 0019E238  C0 7A 00 40 */	lfs f3, 0x40(r26)
/* 801A12DC 0019E23C  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 801A12E0 0019E240  EC 21 20 28 */	fsubs f1, f1, f4
/* 801A12E4 0019E244  D0 41 01 38 */	stfs f2, 0x138(r1)
/* 801A12E8 0019E248  EC 00 18 28 */	fsubs f0, f0, f3
/* 801A12EC 0019E24C  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 801A12F0 0019E250  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 801A12F4 0019E254  C0 5A 02 9C */	lfs f2, 0x29c(r26)
/* 801A12F8 0019E258  C0 3A 02 A0 */	lfs f1, 0x2a0(r26)
/* 801A12FC 0019E25C  C0 1A 02 98 */	lfs f0, 0x298(r26)
/* 801A1300 0019E260  EC 45 10 28 */	fsubs f2, f5, f2
/* 801A1304 0019E264  EC 24 08 28 */	fsubs f1, f4, f1
/* 801A1308 0019E268  EC 03 00 28 */	fsubs f0, f3, f0
/* 801A130C 0019E26C  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 801A1310 0019E270  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 801A1314 0019E274  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 801A1318 0019E278  48 17 33 E1 */	bl CanBeNormalized__9CVector3fCFv
/* 801A131C 0019E27C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A1320 0019E280  41 82 03 58 */	beq lbl_801A1678
/* 801A1324 0019E284  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 801A1328 0019E288  7F 83 E3 78 */	mr r3, r28
/* 801A132C 0019E28C  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 801A1330 0019E290  7F A4 EB 78 */	mr r4, r29
/* 801A1334 0019E294  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 801A1338 0019E298  38 A1 02 40 */	addi r5, r1, 0x240
/* 801A133C 0019E29C  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 801A1340 0019E2A0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 801A1344 0019E2A4  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801A1348 0019E2A8  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 801A134C 0019E2AC  4B FF FC 5D */	bl sub_801a0fa8
/* 801A1350 0019E2B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A1354 0019E2B4  41 82 03 24 */	beq lbl_801A1678
/* 801A1358 0019E2B8  38 61 01 34 */	addi r3, r1, 0x134
/* 801A135C 0019E2BC  48 17 35 5D */	bl Magnitude__9CVector3fCFv
/* 801A1360 0019E2C0  C0 9A 00 50 */	lfs f4, 0x50(r26)
/* 801A1364 0019E2C4  FF E0 08 90 */	fmr f31, f1
/* 801A1368 0019E2C8  C0 1A 02 9C */	lfs f0, 0x29c(r26)
/* 801A136C 0019E2CC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801A1370 0019E2D0  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 801A1374 0019E2D4  38 81 00 98 */	addi r4, r1, 0x98
/* 801A1378 0019E2D8  C0 5A 02 A0 */	lfs f2, 0x2a0(r26)
/* 801A137C 0019E2DC  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 801A1380 0019E2E0  EC 84 00 28 */	fsubs f4, f4, f0
/* 801A1384 0019E2E4  C0 1A 02 98 */	lfs f0, 0x298(r26)
/* 801A1388 0019E2E8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801A138C 0019E2EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A1390 0019E2F0  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 801A1394 0019E2F4  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 801A1398 0019E2F8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 801A139C 0019E2FC  48 17 34 B5 */	bl AsNormalized__9CVector3fCFv
/* 801A13A0 0019E300  C0 02 A7 88 */	lfs f0, lbl_805AC4A8@sda21(r2)
/* 801A13A4 0019E304  3B 7A 01 70 */	addi r27, r26, 0x170
/* 801A13A8 0019E308  C0 42 A7 AC */	lfs f2, lbl_805AC4CC@sda21(r2)
/* 801A13AC 0019E30C  38 61 00 8C */	addi r3, r1, 0x8c
/* 801A13B0 0019E310  ED 20 07 F2 */	fmuls f9, f0, f31
/* 801A13B4 0019E314  C0 81 00 A4 */	lfs f4, 0xa4(r1)
/* 801A13B8 0019E318  EC 22 07 F2 */	fmuls f1, f2, f31
/* 801A13BC 0019E31C  C0 61 00 A8 */	lfs f3, 0xa8(r1)
/* 801A13C0 0019E320  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 801A13C4 0019E324  38 81 00 80 */	addi r4, r1, 0x80
/* 801A13C8 0019E328  EC A9 01 32 */	fmuls f5, f9, f4
/* 801A13CC 0019E32C  C0 DA 00 40 */	lfs f6, 0x40(r26)
/* 801A13D0 0019E330  EC 69 00 F2 */	fmuls f3, f9, f3
/* 801A13D4 0019E334  C1 1A 00 50 */	lfs f8, 0x50(r26)
/* 801A13D8 0019E338  C0 FA 00 60 */	lfs f7, 0x60(r26)
/* 801A13DC 0019E33C  EC 09 00 32 */	fmuls f0, f9, f0
/* 801A13E0 0019E340  ED 48 18 2A */	fadds f10, f8, f3
/* 801A13E4 0019E344  C0 61 01 44 */	lfs f3, 0x144(r1)
/* 801A13E8 0019E348  C0 82 A7 5C */	lfs f4, lbl_805AC47C@sda21(r2)
/* 801A13EC 0019E34C  ED 27 00 2A */	fadds f9, f7, f0
/* 801A13F0 0019E350  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 801A13F4 0019E354  EC A6 28 2A */	fadds f5, f6, f5
/* 801A13F8 0019E358  ED 63 20 2A */	fadds f11, f3, f4
/* 801A13FC 0019E35C  C0 61 01 48 */	lfs f3, 0x148(r1)
/* 801A1400 0019E360  EC 42 00 72 */	fmuls f2, f2, f1
/* 801A1404 0019E364  D0 A1 01 28 */	stfs f5, 0x128(r1)
/* 801A1408 0019E368  EC 00 20 2A */	fadds f0, f0, f4
/* 801A140C 0019E36C  C0 22 A7 B0 */	lfs f1, lbl_805AC4D0@sda21(r2)
/* 801A1410 0019E370  EC 43 10 2A */	fadds f2, f3, f2
/* 801A1414 0019E374  D1 41 01 2C */	stfs f10, 0x12c(r1)
/* 801A1418 0019E378  38 A1 01 28 */	addi r5, r1, 0x128
/* 801A141C 0019E37C  38 C1 01 1C */	addi r6, r1, 0x11c
/* 801A1420 0019E380  D1 21 01 30 */	stfs f9, 0x130(r1)
/* 801A1424 0019E384  38 E1 01 40 */	addi r7, r1, 0x140
/* 801A1428 0019E388  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 801A142C 0019E38C  D1 61 01 20 */	stfs f11, 0x120(r1)
/* 801A1430 0019E390  D0 41 01 24 */	stfs f2, 0x124(r1)
/* 801A1434 0019E394  D0 C1 00 80 */	stfs f6, 0x80(r1)
/* 801A1438 0019E398  D1 01 00 84 */	stfs f8, 0x84(r1)
/* 801A143C 0019E39C  D0 E1 00 88 */	stfs f7, 0x88(r1)
/* 801A1440 0019E3A0  48 17 3A D9 */	bl GetBezierPoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff
/* 801A1444 0019E3A4  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 801A1448 0019E3A8  38 61 00 74 */	addi r3, r1, 0x74
/* 801A144C 0019E3AC  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 801A1450 0019E3B0  38 81 00 68 */	addi r4, r1, 0x68
/* 801A1454 0019E3B4  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 801A1458 0019E3B8  38 A1 01 28 */	addi r5, r1, 0x128
/* 801A145C 0019E3BC  C3 E1 00 8C */	lfs f31, 0x8c(r1)
/* 801A1460 0019E3C0  38 C1 01 1C */	addi r6, r1, 0x11c
/* 801A1464 0019E3C4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801A1468 0019E3C8  38 E1 01 40 */	addi r7, r1, 0x140
/* 801A146C 0019E3CC  C3 A1 00 90 */	lfs f29, 0x90(r1)
/* 801A1470 0019E3D0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 801A1474 0019E3D4  C3 C1 00 94 */	lfs f30, 0x94(r1)
/* 801A1478 0019E3D8  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 801A147C 0019E3DC  C0 22 A7 B4 */	lfs f1, lbl_805AC4D4@sda21(r2)
/* 801A1480 0019E3E0  48 17 3A 99 */	bl GetBezierPoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff
/* 801A1484 0019E3E4  C0 C1 00 78 */	lfs f6, 0x78(r1)
/* 801A1488 0019E3E8  38 61 00 44 */	addi r3, r1, 0x44
/* 801A148C 0019E3EC  C0 E1 00 7C */	lfs f7, 0x7c(r1)
/* 801A1490 0019E3F0  C0 A1 00 74 */	lfs f5, 0x74(r1)
/* 801A1494 0019E3F4  EC 06 E8 28 */	fsubs f0, f6, f29
/* 801A1498 0019E3F8  EC 67 F0 28 */	fsubs f3, f7, f30
/* 801A149C 0019E3FC  C0 41 01 44 */	lfs f2, 0x144(r1)
/* 801A14A0 0019E400  EC 85 F8 28 */	fsubs f4, f5, f31
/* 801A14A4 0019E404  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 801A14A8 0019E408  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801A14AC 0019E40C  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 801A14B0 0019E410  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 801A14B4 0019E414  EC C2 30 28 */	fsubs f6, f2, f6
/* 801A14B8 0019E418  EC 81 38 28 */	fsubs f4, f1, f7
/* 801A14BC 0019E41C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801A14C0 0019E420  EC 00 28 28 */	fsubs f0, f0, f5
/* 801A14C4 0019E424  C0 7A 00 50 */	lfs f3, 0x50(r26)
/* 801A14C8 0019E428  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 801A14CC 0019E42C  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 801A14D0 0019E430  EC 7D 18 28 */	fsubs f3, f29, f3
/* 801A14D4 0019E434  EC 5E 10 28 */	fsubs f2, f30, f2
/* 801A14D8 0019E438  EC 3F 08 28 */	fsubs f1, f31, f1
/* 801A14DC 0019E43C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801A14E0 0019E440  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 801A14E4 0019E444  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801A14E8 0019E448  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801A14EC 0019E44C  D0 C1 00 60 */	stfs f6, 0x60(r1)
/* 801A14F0 0019E450  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 801A14F4 0019E454  48 17 33 C5 */	bl Magnitude__9CVector3fCFv
/* 801A14F8 0019E458  FF E0 08 90 */	fmr f31, f1
/* 801A14FC 0019E45C  38 61 00 50 */	addi r3, r1, 0x50
/* 801A1500 0019E460  48 17 33 B9 */	bl Magnitude__9CVector3fCFv
/* 801A1504 0019E464  EF E1 F8 2A */	fadds f31, f1, f31
/* 801A1508 0019E468  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A150C 0019E46C  48 17 33 AD */	bl Magnitude__9CVector3fCFv
/* 801A1510 0019E470  C0 9A 00 50 */	lfs f4, 0x50(r26)
/* 801A1514 0019E474  EF 41 F8 2A */	fadds f26, f1, f31
/* 801A1518 0019E478  C0 1A 02 9C */	lfs f0, 0x29c(r26)
/* 801A151C 0019E47C  38 61 00 38 */	addi r3, r1, 0x38
/* 801A1520 0019E480  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 801A1524 0019E484  C0 5A 02 A0 */	lfs f2, 0x2a0(r26)
/* 801A1528 0019E488  EC 84 00 28 */	fsubs f4, f4, f0
/* 801A152C 0019E48C  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 801A1530 0019E490  C0 1A 02 98 */	lfs f0, 0x298(r26)
/* 801A1534 0019E494  EC 43 10 28 */	fsubs f2, f3, f2
/* 801A1538 0019E498  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A153C 0019E49C  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801A1540 0019E4A0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801A1544 0019E4A4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801A1548 0019E4A8  48 17 33 71 */	bl Magnitude__9CVector3fCFv
/* 801A154C 0019E4AC  EC 21 D0 24 */	fdivs f1, f1, f26
/* 801A1550 0019E4B0  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 801A1554 0019E4B4  C0 5A 00 50 */	lfs f2, 0x50(r26)
/* 801A1558 0019E4B8  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A155C 0019E4BC  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 801A1560 0019E4C0  38 81 00 20 */	addi r4, r1, 0x20
/* 801A1564 0019E4C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A1568 0019E4C8  38 A1 01 28 */	addi r5, r1, 0x128
/* 801A156C 0019E4CC  38 C1 01 1C */	addi r6, r1, 0x11c
/* 801A1570 0019E4D0  38 E1 01 40 */	addi r7, r1, 0x140
/* 801A1574 0019E4D4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801A1578 0019E4D8  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 801A157C 0019E4DC  48 17 39 9D */	bl GetBezierPoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff
/* 801A1580 0019E4E0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 801A1584 0019E4E4  38 61 01 10 */	addi r3, r1, 0x110
/* 801A1588 0019E4E8  C0 1A 00 50 */	lfs f0, 0x50(r26)
/* 801A158C 0019E4EC  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 801A1590 0019E4F0  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 801A1594 0019E4F4  EC 81 00 28 */	fsubs f4, f1, f0
/* 801A1598 0019E4F8  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 801A159C 0019E4FC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801A15A0 0019E500  EC 43 10 28 */	fsubs f2, f3, f2
/* 801A15A4 0019E504  D0 81 01 14 */	stfs f4, 0x114(r1)
/* 801A15A8 0019E508  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A15AC 0019E50C  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 801A15B0 0019E510  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 801A15B4 0019E514  48 17 31 45 */	bl CanBeNormalized__9CVector3fCFv
/* 801A15B8 0019E518  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A15BC 0019E51C  41 82 00 BC */	beq lbl_801A1678
/* 801A15C0 0019E520  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A15C4 0019E524  3C A0 80 5A */	lis r5, sUpVector__9CVector3f@ha
/* 801A15C8 0019E528  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 801A15CC 0019E52C  38 C5 66 F4 */	addi r6, r5, sUpVector__9CVector3f@l
/* 801A15D0 0019E530  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 801A15D4 0019E534  38 A1 01 10 */	addi r5, r1, 0x110
/* 801A15D8 0019E538  48 17 25 39 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801A15DC 0019E53C  38 61 02 10 */	addi r3, r1, 0x210
/* 801A15E0 0019E540  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 801A15E4 0019E544  48 17 15 91 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801A15E8 0019E548  38 61 02 10 */	addi r3, r1, 0x210
/* 801A15EC 0019E54C  48 17 1D B9 */	bl Orthonormalize__12CTransform4fFv
/* 801A15F0 0019E550  7F 63 DB 78 */	mr r3, r27
/* 801A15F4 0019E554  38 81 02 10 */	addi r4, r1, 0x210
/* 801A15F8 0019E558  48 10 EE AD */	bl SetWorldSpaceOrientation__17CProjectileWeaponFRC12CTransform4f
/* 801A15FC 0019E55C  7F 63 DB 78 */	mr r3, r27
/* 801A1600 0019E560  48 10 DB 35 */	bl GetVelocity__17CProjectileWeaponCFv
/* 801A1604 0019E564  7C 64 1B 78 */	mr r4, r3
/* 801A1608 0019E568  38 61 00 14 */	addi r3, r1, 0x14
/* 801A160C 0019E56C  48 17 32 45 */	bl AsNormalized__9CVector3fCFv
/* 801A1610 0019E570  C0 62 A7 B8 */	lfs f3, lbl_805AC4D8@sda21(r2)
/* 801A1614 0019E574  7F 63 DB 78 */	mr r3, r27
/* 801A1618 0019E578  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801A161C 0019E57C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801A1620 0019E580  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801A1624 0019E584  EF A3 00 B2 */	fmuls f29, f3, f2
/* 801A1628 0019E588  EF C3 00 72 */	fmuls f30, f3, f1
/* 801A162C 0019E58C  EF E3 00 32 */	fmuls f31, f3, f0
/* 801A1630 0019E590  48 10 DB 05 */	bl GetVelocity__17CProjectileWeaponCFv
/* 801A1634 0019E594  C0 02 A7 58 */	lfs f0, lbl_805AC478@sda21(r2)
/* 801A1638 0019E598  38 81 01 04 */	addi r4, r1, 0x104
/* 801A163C 0019E59C  C0 C3 00 04 */	lfs f6, 4(r3)
/* 801A1640 0019E5A0  EC 9E 00 32 */	fmuls f4, f30, f0
/* 801A1644 0019E5A4  C0 A2 A7 BC */	lfs f5, lbl_805AC4DC@sda21(r2)
/* 801A1648 0019E5A8  EC 5F 00 32 */	fmuls f2, f31, f0
/* 801A164C 0019E5AC  C0 63 00 08 */	lfs f3, 8(r3)
/* 801A1650 0019E5B0  C0 23 00 00 */	lfs f1, 0(r3)
/* 801A1654 0019E5B4  EC 1D 00 32 */	fmuls f0, f29, f0
/* 801A1658 0019E5B8  EC 86 21 7A */	fmadds f4, f6, f5, f4
/* 801A165C 0019E5BC  7F 63 DB 78 */	mr r3, r27
/* 801A1660 0019E5C0  EC 43 11 7A */	fmadds f2, f3, f5, f2
/* 801A1664 0019E5C4  EC 01 01 7A */	fmadds f0, f1, f5, f0
/* 801A1668 0019E5C8  D0 81 01 08 */	stfs f4, 0x108(r1)
/* 801A166C 0019E5CC  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 801A1670 0019E5D0  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 801A1674 0019E5D4  48 10 DA C9 */	bl SetVelocity__17CProjectileWeaponFRC9CVector3f
lbl_801A1678:
/* 801A1678 0019E5D8  3B DE 00 02 */	addi r30, r30, 2
lbl_801A167C:
/* 801A167C 0019E5DC  80 01 0A 44 */	lwz r0, 0xa44(r1)
/* 801A1680 0019E5E0  54 00 08 3C */	slwi r0, r0, 1
/* 801A1684 0019E5E4  7C 1F 02 14 */	add r0, r31, r0
/* 801A1688 0019E5E8  7C 1E 00 40 */	cmplw r30, r0
/* 801A168C 0019E5EC  40 82 FB F0 */	bne lbl_801A127C
/* 801A1690 0019E5F0  80 A1 02 40 */	lwz r5, 0x240(r1)
/* 801A1694 0019E5F4  38 60 00 00 */	li r3, 0
/* 801A1698 0019E5F8  2C 05 00 00 */	cmpwi r5, 0
/* 801A169C 0019E5FC  40 81 00 40 */	ble lbl_801A16DC
/* 801A16A0 0019E600  2C 05 00 08 */	cmpwi r5, 8
/* 801A16A4 0019E604  38 85 FF F8 */	addi r4, r5, -8
/* 801A16A8 0019E608  40 81 00 20 */	ble lbl_801A16C8
/* 801A16AC 0019E60C  38 04 00 07 */	addi r0, r4, 7
/* 801A16B0 0019E610  54 00 E8 FE */	srwi r0, r0, 3
/* 801A16B4 0019E614  7C 09 03 A6 */	mtctr r0
/* 801A16B8 0019E618  2C 04 00 00 */	cmpwi r4, 0
/* 801A16BC 0019E61C  40 81 00 0C */	ble lbl_801A16C8
lbl_801A16C0:
/* 801A16C0 0019E620  38 63 00 08 */	addi r3, r3, 8
/* 801A16C4 0019E624  42 00 FF FC */	bdnz lbl_801A16C0
lbl_801A16C8:
/* 801A16C8 0019E628  7C 03 28 50 */	subf r0, r3, r5
/* 801A16CC 0019E62C  7C 09 03 A6 */	mtctr r0
/* 801A16D0 0019E630  7C 03 28 00 */	cmpw r3, r5
/* 801A16D4 0019E634  40 80 00 08 */	bge lbl_801A16DC
lbl_801A16D8:
/* 801A16D8 0019E638  42 00 00 00 */	bdnz lbl_801A16D8
lbl_801A16DC:
/* 801A16DC 0019E63C  38 00 00 00 */	li r0, 0
/* 801A16E0 0019E640  90 01 02 40 */	stw r0, 0x240(r1)
lbl_801A16E4:
/* 801A16E4 0019E644  80 A1 0A 44 */	lwz r5, 0xa44(r1)
/* 801A16E8 0019E648  38 60 00 00 */	li r3, 0
/* 801A16EC 0019E64C  2C 05 00 00 */	cmpwi r5, 0
/* 801A16F0 0019E650  40 81 00 40 */	ble lbl_801A1730
/* 801A16F4 0019E654  2C 05 00 08 */	cmpwi r5, 8
/* 801A16F8 0019E658  38 85 FF F8 */	addi r4, r5, -8
/* 801A16FC 0019E65C  40 81 00 20 */	ble lbl_801A171C
/* 801A1700 0019E660  38 04 00 07 */	addi r0, r4, 7
/* 801A1704 0019E664  54 00 E8 FE */	srwi r0, r0, 3
/* 801A1708 0019E668  7C 09 03 A6 */	mtctr r0
/* 801A170C 0019E66C  2C 04 00 00 */	cmpwi r4, 0
/* 801A1710 0019E670  40 81 00 0C */	ble lbl_801A171C
lbl_801A1714:
/* 801A1714 0019E674  38 63 00 08 */	addi r3, r3, 8
/* 801A1718 0019E678  42 00 FF FC */	bdnz lbl_801A1714
lbl_801A171C:
/* 801A171C 0019E67C  7C 03 28 50 */	subf r0, r3, r5
/* 801A1720 0019E680  7C 09 03 A6 */	mtctr r0
/* 801A1724 0019E684  7C 03 28 00 */	cmpw r3, r5
/* 801A1728 0019E688  40 80 00 08 */	bge lbl_801A1730
lbl_801A172C:
/* 801A172C 0019E68C  42 00 00 00 */	bdnz lbl_801A172C
lbl_801A1730:
/* 801A1730 0019E690  38 00 00 00 */	li r0, 0
/* 801A1734 0019E694  90 01 0A 44 */	stw r0, 0xa44(r1)
lbl_801A1738:
/* 801A1738 0019E698  38 00 12 B8 */	li r0, 0x12b8
/* 801A173C 0019E69C  13 E1 00 0C */	psq_lx f31, r1, r0, 0, qr0
/* 801A1740 0019E6A0  CB E1 12 B0 */	lfd f31, 0x12b0(r1)
/* 801A1744 0019E6A4  38 00 12 A8 */	li r0, 0x12a8
/* 801A1748 0019E6A8  13 C1 00 0C */	psq_lx f30, r1, r0, 0, qr0
/* 801A174C 0019E6AC  CB C1 12 A0 */	lfd f30, 0x12a0(r1)
/* 801A1750 0019E6B0  38 00 12 98 */	li r0, 0x1298
/* 801A1754 0019E6B4  13 A1 00 0C */	psq_lx f29, r1, r0, 0, qr0
/* 801A1758 0019E6B8  CB A1 12 90 */	lfd f29, 0x1290(r1)
/* 801A175C 0019E6BC  38 00 12 88 */	li r0, 0x1288
/* 801A1760 0019E6C0  13 81 00 0C */	psq_lx f28, r1, r0, 0, qr0
/* 801A1764 0019E6C4  CB 81 12 80 */	lfd f28, 0x1280(r1)
/* 801A1768 0019E6C8  38 00 12 78 */	li r0, 0x1278
/* 801A176C 0019E6CC  13 61 00 0C */	psq_lx f27, r1, r0, 0, qr0
/* 801A1770 0019E6D0  CB 61 12 70 */	lfd f27, 0x1270(r1)
/* 801A1774 0019E6D4  38 00 12 68 */	li r0, 0x1268
/* 801A1778 0019E6D8  13 41 00 0C */	psq_lx f26, r1, r0, 0, qr0
/* 801A177C 0019E6DC  CB 41 12 60 */	lfd f26, 0x1260(r1)
/* 801A1780 0019E6E0  BB 41 12 48 */	lmw r26, 0x1248(r1)
/* 801A1784 0019E6E4  80 01 12 C4 */	lwz r0, 0x12c4(r1)
/* 801A1788 0019E6E8  7C 08 03 A6 */	mtlr r0
/* 801A178C 0019E6EC  38 21 12 C0 */	addi r1, r1, 0x12c0
/* 801A1790 0019E6F0  4E 80 00 20 */	blr

.global sub_801a1794
sub_801a1794:
/* 801A1794 0019E6F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A1798 0019E6F8  7C 08 02 A6 */	mflr r0
/* 801A179C 0019E6FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A17A0 0019E700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A17A4 0019E704  7C 7F 1B 78 */	mr r31, r3
/* 801A17A8 0019E708  81 83 00 00 */	lwz r12, 0(r3)
/* 801A17AC 0019E70C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801A17B0 0019E710  7D 89 03 A6 */	mtctr r12
/* 801A17B4 0019E714  4E 80 04 21 */	bctrl
/* 801A17B8 0019E718  28 03 00 00 */	cmplwi r3, 0
/* 801A17BC 0019E71C  41 82 00 24 */	beq lbl_801A17E0
/* 801A17C0 0019E720  C0 22 A7 C0 */	lfs f1, lbl_805AC4E0@sda21(r2)
/* 801A17C4 0019E724  C0 1F 09 70 */	lfs f0, 0x970(r31)
/* 801A17C8 0019E728  C0 43 00 00 */	lfs f2, 0(r3)
/* 801A17CC 0019E72C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A17D0 0019E730  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A17D4 0019E734  7C 00 00 26 */	mfcr r0
/* 801A17D8 0019E738  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801A17DC 0019E73C  48 00 00 08 */	b lbl_801A17E4
lbl_801A17E0:
/* 801A17E0 0019E740  38 60 00 00 */	li r3, 0
lbl_801A17E4:
/* 801A17E4 0019E744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A17E8 0019E748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A17EC 0019E74C  7C 08 03 A6 */	mtlr r0
/* 801A17F0 0019E750  38 21 00 10 */	addi r1, r1, 0x10
/* 801A17F4 0019E754  4E 80 00 20 */	blr

.global Flinch__12CIceSheegothR13CStateManager9EStateMsgf
Flinch__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A17F8 0019E758  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A17FC 0019E75C  7C 08 02 A6 */	mflr r0
/* 801A1800 0019E760  2C 05 00 01 */	cmpwi r5, 1
/* 801A1804 0019E764  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A1808 0019E768  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A180C 0019E76C  7C 9F 23 78 */	mr r31, r4
/* 801A1810 0019E770  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801A1814 0019E774  7C 7E 1B 78 */	mr r30, r3
/* 801A1818 0019E778  41 82 00 54 */	beq lbl_801A186C
/* 801A181C 0019E77C  40 80 00 10 */	bge lbl_801A182C
/* 801A1820 0019E780  2C 05 00 00 */	cmpwi r5, 0
/* 801A1824 0019E784  40 80 00 14 */	bge lbl_801A1838
/* 801A1828 0019E788  48 00 01 54 */	b lbl_801A197C
lbl_801A182C:
/* 801A182C 0019E78C  2C 05 00 03 */	cmpwi r5, 3
/* 801A1830 0019E790  40 80 01 4C */	bge lbl_801A197C
/* 801A1834 0019E794  48 00 01 20 */	b lbl_801A1954
lbl_801A1838:
/* 801A1838 0019E798  38 00 00 00 */	li r0, 0
/* 801A183C 0019E79C  38 C0 00 01 */	li r6, 1
/* 801A1840 0019E7A0  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A1844 0019E7A4  38 A0 00 01 */	li r5, 1
/* 801A1848 0019E7A8  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A184C 0019E7AC  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 801A1850 0019E7B0  98 1E 0B 29 */	stb r0, 0xb29(r30)
/* 801A1854 0019E7B4  4B FF D1 79 */	bl sub_8019e9cc
/* 801A1858 0019E7B8  7F C3 F3 78 */	mr r3, r30
/* 801A185C 0019E7BC  7F E4 FB 78 */	mr r4, r31
/* 801A1860 0019E7C0  38 A0 00 01 */	li r5, 1
/* 801A1864 0019E7C4  4B FF D0 31 */	bl sub_8019e894
/* 801A1868 0019E7C8  48 00 01 14 */	b lbl_801A197C
lbl_801A186C:
/* 801A186C 0019E7CC  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801A1870 0019E7D0  2C 00 00 03 */	cmpwi r0, 3
/* 801A1874 0019E7D4  41 82 00 C4 */	beq lbl_801A1938
/* 801A1878 0019E7D8  40 80 01 04 */	bge lbl_801A197C
/* 801A187C 0019E7DC  2C 00 00 00 */	cmpwi r0, 0
/* 801A1880 0019E7E0  41 82 00 08 */	beq lbl_801A1888
/* 801A1884 0019E7E4  48 00 00 F8 */	b lbl_801A197C
lbl_801A1888:
/* 801A1888 0019E7E8  80 BE 04 50 */	lwz r5, 0x450(r30)
/* 801A188C 0019E7EC  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 801A1890 0019E7F0  2C 00 00 06 */	cmpwi r0, 6
/* 801A1894 0019E7F4  40 82 00 10 */	bne lbl_801A18A4
/* 801A1898 0019E7F8  38 00 00 03 */	li r0, 3
/* 801A189C 0019E7FC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A18A0 0019E800  48 00 00 DC */	b lbl_801A197C
lbl_801A18A4:
/* 801A18A4 0019E804  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A18A8 0019E808  C0 5E 09 80 */	lfs f2, 0x980(r30)
/* 801A18AC 0019E80C  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 801A18B0 0019E810  C0 3E 09 84 */	lfs f1, 0x984(r30)
/* 801A18B4 0019E814  C0 1E 09 88 */	lfs f0, 0x988(r30)
/* 801A18B8 0019E818  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 801A18BC 0019E81C  38 C0 00 04 */	li r6, 4
/* 801A18C0 0019E820  38 00 00 01 */	li r0, 1
/* 801A18C4 0019E824  3B E5 00 04 */	addi r31, r5, 4
/* 801A18C8 0019E828  90 81 00 08 */	stw r4, 8(r1)
/* 801A18CC 0019E82C  38 A3 AA 44 */	addi r5, r3, lbl_803DAA44@l
/* 801A18D0 0019E830  38 80 00 04 */	li r4, 4
/* 801A18D4 0019E834  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801A18D8 0019E838  7F E3 FB 78 */	mr r3, r31
/* 801A18DC 0019E83C  90 A1 00 08 */	stw r5, 8(r1)
/* 801A18E0 0019E840  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801A18E4 0019E844  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801A18E8 0019E848  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801A18EC 0019E84C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A18F0 0019E850  4B F8 FB 49 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A18F4 0019E854  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801A18F8 0019E858  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 801A18FC 0019E85C  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 801A1900 0019E860  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A1904 0019E864  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 801A1908 0019E868  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A190C 0019E86C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801A1910 0019E870  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801A1914 0019E874  90 BF 00 FC */	stw r5, 0xfc(r31)
/* 801A1918 0019E878  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801A191C 0019E87C  90 7F 01 00 */	stw r3, 0x100(r31)
/* 801A1920 0019E880  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801A1924 0019E884  90 BF 01 04 */	stw r5, 0x104(r31)
/* 801A1928 0019E888  90 81 00 08 */	stw r4, 8(r1)
/* 801A192C 0019E88C  90 7F 01 08 */	stw r3, 0x108(r31)
/* 801A1930 0019E890  90 01 00 08 */	stw r0, 8(r1)
/* 801A1934 0019E894  48 00 00 48 */	b lbl_801A197C
lbl_801A1938:
/* 801A1938 0019E898  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A193C 0019E89C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A1940 0019E8A0  2C 00 00 06 */	cmpwi r0, 6
/* 801A1944 0019E8A4  41 82 00 38 */	beq lbl_801A197C
/* 801A1948 0019E8A8  38 00 00 04 */	li r0, 4
/* 801A194C 0019E8AC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A1950 0019E8B0  48 00 00 2C */	b lbl_801A197C
lbl_801A1954:
/* 801A1954 0019E8B4  38 A0 00 01 */	li r5, 1
/* 801A1958 0019E8B8  4B FF D0 75 */	bl sub_8019e9cc
/* 801A195C 0019E8BC  7F C3 F3 78 */	mr r3, r30
/* 801A1960 0019E8C0  7F E4 FB 78 */	mr r4, r31
/* 801A1964 0019E8C4  38 A0 00 01 */	li r5, 1
/* 801A1968 0019E8C8  4B FF CF 2D */	bl sub_8019e894
/* 801A196C 0019E8CC  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A1970 0019E8D0  38 60 00 00 */	li r3, 0
/* 801A1974 0019E8D4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801A1978 0019E8D8  98 1E 0B 29 */	stb r0, 0xb29(r30)
lbl_801A197C:
/* 801A197C 0019E8DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A1980 0019E8E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A1984 0019E8E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801A1988 0019E8E8  7C 08 03 A6 */	mtlr r0
/* 801A198C 0019E8EC  38 21 00 30 */	addi r1, r1, 0x30
/* 801A1990 0019E8F0  4E 80 00 20 */	blr

.global TurnAround__12CIceSheegothR13CStateManager9EStateMsgf
TurnAround__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A1994 0019E8F4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801A1998 0019E8F8  7C 08 02 A6 */	mflr r0
/* 801A199C 0019E8FC  90 01 00 74 */	stw r0, 0x74(r1)
/* 801A19A0 0019E900  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801A19A4 0019E904  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801A19A8 0019E908  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801A19AC 0019E90C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801A19B0 0019E910  FF E0 08 90 */	fmr f31, f1
/* 801A19B4 0019E914  2C 05 00 01 */	cmpwi r5, 1
/* 801A19B8 0019E918  7C 7E 1B 78 */	mr r30, r3
/* 801A19BC 0019E91C  7C 9F 23 78 */	mr r31, r4
/* 801A19C0 0019E920  41 82 00 88 */	beq lbl_801A1A48
/* 801A19C4 0019E924  40 80 00 10 */	bge lbl_801A19D4
/* 801A19C8 0019E928  2C 05 00 00 */	cmpwi r5, 0
/* 801A19CC 0019E92C  40 80 00 14 */	bge lbl_801A19E0
/* 801A19D0 0019E930  48 00 01 A4 */	b lbl_801A1B74
lbl_801A19D4:
/* 801A19D4 0019E934  2C 05 00 03 */	cmpwi r5, 3
/* 801A19D8 0019E938  40 80 01 9C */	bge lbl_801A1B74
/* 801A19DC 0019E93C  48 00 01 84 */	b lbl_801A1B60
lbl_801A19E0:
/* 801A19E0 0019E940  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801A19E4 0019E944  38 7E 09 F4 */	addi r3, r30, 0x9f4
/* 801A19E8 0019E948  38 81 00 0C */	addi r4, r1, 0xc
/* 801A19EC 0019E94C  A0 05 00 08 */	lhz r0, 8(r5)
/* 801A19F0 0019E950  B0 01 00 08 */	sth r0, 8(r1)
/* 801A19F4 0019E954  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801A19F8 0019E958  4B FD 38 21 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 801A19FC 0019E95C  38 7E 09 F4 */	addi r3, r30, 0x9f4
/* 801A1A00 0019E960  38 80 00 01 */	li r4, 1
/* 801A1A04 0019E964  4B FD 38 21 */	bl SetActive__13CBoneTrackingFb
/* 801A1A08 0019E968  7F C3 F3 78 */	mr r3, r30
/* 801A1A0C 0019E96C  7F E4 FB 78 */	mr r4, r31
/* 801A1A10 0019E970  38 BE 02 E0 */	addi r5, r30, 0x2e0
/* 801A1A14 0019E974  4B FF F0 49 */	bl sub_801a0a5c
/* 801A1A18 0019E978  7F C3 F3 78 */	mr r3, r30
/* 801A1A1C 0019E97C  38 80 00 00 */	li r4, 0
/* 801A1A20 0019E980  4B FF D3 F9 */	bl sub_8019ee18
/* 801A1A24 0019E984  FC 20 F8 90 */	fmr f1, f31
/* 801A1A28 0019E988  7F C3 F3 78 */	mr r3, r30
/* 801A1A2C 0019E98C  7F E4 FB 78 */	mr r4, r31
/* 801A1A30 0019E990  38 A0 00 00 */	li r5, 0
/* 801A1A34 0019E994  48 05 4C 99 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A1A38 0019E998  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A1A3C 0019E99C  38 63 00 04 */	addi r3, r3, 4
/* 801A1A40 0019E9A0  4B F8 FA 69 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 801A1A44 0019E9A4  48 00 01 30 */	b lbl_801A1B74
lbl_801A1A48:
/* 801A1A48 0019E9A8  C0 22 A7 C4 */	lfs f1, lbl_805AC4E4@sda21(r2)
/* 801A1A4C 0019E9AC  4B FF D2 91 */	bl sub_8019ecdc
/* 801A1A50 0019E9B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A1A54 0019E9B4  41 82 00 E0 */	beq lbl_801A1B34
/* 801A1A58 0019E9B8  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 801A1A5C 0019E9BC  7F E5 FB 78 */	mr r5, r31
/* 801A1A60 0019E9C0  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A1A64 0019E9C4  38 61 00 1C */	addi r3, r1, 0x1c
/* 801A1A68 0019E9C8  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801A1A6C 0019E9CC  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801A1A70 0019E9D0  C0 46 02 00 */	lfs f2, 0x200(r6)
/* 801A1A74 0019E9D4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801A1A78 0019E9D8  40 81 00 0C */	ble lbl_801A1A84
/* 801A1A7C 0019E9DC  C0 02 A7 70 */	lfs f0, lbl_805AC490@sda21(r2)
/* 801A1A80 0019E9E0  EC 20 10 24 */	fdivs f1, f0, f2
lbl_801A1A84:
/* 801A1A84 0019E9E4  81 84 00 00 */	lwz r12, 0(r4)
/* 801A1A88 0019E9E8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801A1A8C 0019E9EC  7D 89 03 A6 */	mtctr r12
/* 801A1A90 0019E9F0  4E 80 04 21 */	bctrl
/* 801A1A94 0019E9F4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801A1A98 0019E9F8  38 61 00 28 */	addi r3, r1, 0x28
/* 801A1A9C 0019E9FC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801A1AA0 0019EA00  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 801A1AA4 0019EA04  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801A1AA8 0019EA08  EC 81 00 28 */	fsubs f4, f1, f0
/* 801A1AAC 0019EA0C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801A1AB0 0019EA10  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801A1AB4 0019EA14  EC 43 10 28 */	fsubs f2, f3, f2
/* 801A1AB8 0019EA18  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 801A1ABC 0019EA1C  EC 21 00 28 */	fsubs f1, f1, f0
/* 801A1AC0 0019EA20  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A1AC4 0019EA24  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801A1AC8 0019EA28  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801A1ACC 0019EA2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801A1AD0 0019EA30  48 17 2C 29 */	bl CanBeNormalized__9CVector3fCFv
/* 801A1AD4 0019EA34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A1AD8 0019EA38  41 82 00 5C */	beq lbl_801A1B34
/* 801A1ADC 0019EA3C  38 61 00 10 */	addi r3, r1, 0x10
/* 801A1AE0 0019EA40  38 81 00 28 */	addi r4, r1, 0x28
/* 801A1AE4 0019EA44  48 17 2D 6D */	bl AsNormalized__9CVector3fCFv
/* 801A1AE8 0019EA48  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A1AEC 0019EA4C  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 801A1AF0 0019EA50  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 801A1AF4 0019EA54  38 81 00 34 */	addi r4, r1, 0x34
/* 801A1AF8 0019EA58  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801A1AFC 0019EA5C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801A1B00 0019EA60  C0 83 00 08 */	lfs f4, 8(r3)
/* 801A1B04 0019EA64  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801A1B08 0019EA68  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A1B0C 0019EA6C  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 801A1B10 0019EA70  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 801A1B14 0019EA74  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801A1B18 0019EA78  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801A1B1C 0019EA7C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801A1B20 0019EA80  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801A1B24 0019EA84  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801A1B28 0019EA88  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A1B2C 0019EA8C  38 63 00 04 */	addi r3, r3, 4
/* 801A1B30 0019EA90  4B F8 FB E9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801A1B34:
/* 801A1B34 0019EA94  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A1B38 0019EA98  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A1B3C 0019EA9C  2C 00 00 08 */	cmpwi r0, 8
/* 801A1B40 0019EAA0  40 82 00 0C */	bne lbl_801A1B4C
/* 801A1B44 0019EAA4  C0 22 A7 74 */	lfs f1, lbl_805AC494@sda21(r2)
/* 801A1B48 0019EAA8  48 00 00 08 */	b lbl_801A1B50
lbl_801A1B4C:
/* 801A1B4C 0019EAAC  C0 22 A7 60 */	lfs f1, lbl_805AC480@sda21(r2)
lbl_801A1B50:
/* 801A1B50 0019EAB0  C0 1E 09 4C */	lfs f0, 0x94c(r30)
/* 801A1B54 0019EAB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A1B58 0019EAB8  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 801A1B5C 0019EABC  48 00 00 18 */	b lbl_801A1B74
lbl_801A1B60:
/* 801A1B60 0019EAC0  38 7E 09 F4 */	addi r3, r30, 0x9f4
/* 801A1B64 0019EAC4  38 80 00 00 */	li r4, 0
/* 801A1B68 0019EAC8  4B FD 36 BD */	bl SetActive__13CBoneTrackingFb
/* 801A1B6C 0019EACC  C0 1E 09 4C */	lfs f0, 0x94c(r30)
/* 801A1B70 0019EAD0  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
lbl_801A1B74:
/* 801A1B74 0019EAD4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801A1B78 0019EAD8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801A1B7C 0019EADC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801A1B80 0019EAE0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801A1B84 0019EAE4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801A1B88 0019EAE8  7C 08 03 A6 */	mtlr r0
/* 801A1B8C 0019EAEC  38 21 00 70 */	addi r1, r1, 0x70
/* 801A1B90 0019EAF0  4E 80 00 20 */	blr

.global Enraged__12CIceSheegothR13CStateManager9EStateMsgf
Enraged__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A1B94 0019EAF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A1B98 0019EAF8  7C 08 02 A6 */	mflr r0
/* 801A1B9C 0019EAFC  2C 05 00 01 */	cmpwi r5, 1
/* 801A1BA0 0019EB00  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A1BA4 0019EB04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A1BA8 0019EB08  41 82 00 30 */	beq lbl_801A1BD8
/* 801A1BAC 0019EB0C  40 80 01 4C */	bge lbl_801A1CF8
/* 801A1BB0 0019EB10  2C 05 00 00 */	cmpwi r5, 0
/* 801A1BB4 0019EB14  40 80 00 08 */	bge lbl_801A1BBC
/* 801A1BB8 0019EB18  48 00 01 40 */	b lbl_801A1CF8
lbl_801A1BBC:
/* 801A1BBC 0019EB1C  38 00 00 00 */	li r0, 0
/* 801A1BC0 0019EB20  38 80 00 01 */	li r4, 1
/* 801A1BC4 0019EB24  90 03 05 68 */	stw r0, 0x568(r3)
/* 801A1BC8 0019EB28  88 03 0B 28 */	lbz r0, 0xb28(r3)
/* 801A1BCC 0019EB2C  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 801A1BD0 0019EB30  98 03 0B 28 */	stb r0, 0xb28(r3)
/* 801A1BD4 0019EB34  48 00 01 24 */	b lbl_801A1CF8
lbl_801A1BD8:
/* 801A1BD8 0019EB38  80 03 05 68 */	lwz r0, 0x568(r3)
/* 801A1BDC 0019EB3C  2C 00 00 03 */	cmpwi r0, 3
/* 801A1BE0 0019EB40  41 82 01 00 */	beq lbl_801A1CE0
/* 801A1BE4 0019EB44  40 80 01 14 */	bge lbl_801A1CF8
/* 801A1BE8 0019EB48  2C 00 00 00 */	cmpwi r0, 0
/* 801A1BEC 0019EB4C  41 82 00 08 */	beq lbl_801A1BF4
/* 801A1BF0 0019EB50  48 00 01 08 */	b lbl_801A1CF8
lbl_801A1BF4:
/* 801A1BF4 0019EB54  81 43 04 50 */	lwz r10, 0x450(r3)
/* 801A1BF8 0019EB58  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 801A1BFC 0019EB5C  2C 00 00 0C */	cmpwi r0, 0xc
/* 801A1C00 0019EB60  40 82 00 10 */	bne lbl_801A1C10
/* 801A1C04 0019EB64  38 00 00 03 */	li r0, 3
/* 801A1C08 0019EB68  90 03 05 68 */	stw r0, 0x568(r3)
/* 801A1C0C 0019EB6C  48 00 00 EC */	b lbl_801A1CF8
lbl_801A1C10:
/* 801A1C10 0019EB70  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 801A1C14 0019EB74  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A1C18 0019EB78  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 801A1C1C 0019EB7C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 801A1C20 0019EB80  38 60 00 00 */	li r3, 0
/* 801A1C24 0019EB84  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 801A1C28 0019EB88  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 801A1C2C 0019EB8C  C0 45 00 00 */	lfs f2, 0(r5)
/* 801A1C30 0019EB90  C0 25 00 04 */	lfs f1, 4(r5)
/* 801A1C34 0019EB94  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 801A1C38 0019EB98  C0 05 00 08 */	lfs f0, 8(r5)
/* 801A1C3C 0019EB9C  7C 80 23 78 */	mr r0, r4
/* 801A1C40 0019EBA0  39 00 00 0E */	li r8, 0xe
/* 801A1C44 0019EBA4  38 C0 00 03 */	li r6, 3
/* 801A1C48 0019EBA8  38 A0 FF FF */	li r5, -1
/* 801A1C4C 0019EBAC  3B EA 00 04 */	addi r31, r10, 4
/* 801A1C50 0019EBB0  91 21 00 08 */	stw r9, 8(r1)
/* 801A1C54 0019EBB4  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 801A1C58 0019EBB8  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 801A1C5C 0019EBBC  7F E3 FB 78 */	mr r3, r31
/* 801A1C60 0019EBC0  90 81 00 24 */	stw r4, 0x24(r1)
/* 801A1C64 0019EBC4  38 80 00 0E */	li r4, 0xe
/* 801A1C68 0019EBC8  91 01 00 0C */	stw r8, 0xc(r1)
/* 801A1C6C 0019EBCC  90 E1 00 08 */	stw r7, 8(r1)
/* 801A1C70 0019EBD0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 801A1C74 0019EBD4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801A1C78 0019EBD8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A1C7C 0019EBDC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A1C80 0019EBE0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801A1C84 0019EBE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A1C88 0019EBE8  4B F8 F7 B1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A1C8C 0019EBEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801A1C90 0019EBF0  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801A1C94 0019EBF4  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801A1C98 0019EBF8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A1C9C 0019EBFC  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801A1CA0 0019EC00  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A1CA4 0019EC04  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801A1CA8 0019EC08  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801A1CAC 0019EC0C  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801A1CB0 0019EC10  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801A1CB4 0019EC14  90 7F 01 98 */	stw r3, 0x198(r31)
/* 801A1CB8 0019EC18  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801A1CBC 0019EC1C  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801A1CC0 0019EC20  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801A1CC4 0019EC24  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 801A1CC8 0019EC28  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801A1CCC 0019EC2C  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801A1CD0 0019EC30  90 81 00 08 */	stw r4, 8(r1)
/* 801A1CD4 0019EC34  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 801A1CD8 0019EC38  90 01 00 08 */	stw r0, 8(r1)
/* 801A1CDC 0019EC3C  48 00 00 1C */	b lbl_801A1CF8
lbl_801A1CE0:
/* 801A1CE0 0019EC40  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801A1CE4 0019EC44  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801A1CE8 0019EC48  2C 00 00 0C */	cmpwi r0, 0xc
/* 801A1CEC 0019EC4C  41 82 00 0C */	beq lbl_801A1CF8
/* 801A1CF0 0019EC50  38 00 00 04 */	li r0, 4
/* 801A1CF4 0019EC54  90 03 05 68 */	stw r0, 0x568(r3)
lbl_801A1CF8:
/* 801A1CF8 0019EC58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A1CFC 0019EC5C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A1D00 0019EC60  7C 08 03 A6 */	mtlr r0
/* 801A1D04 0019EC64  38 21 00 30 */	addi r1, r1, 0x30
/* 801A1D08 0019EC68  4E 80 00 20 */	blr

.global Taunt__12CIceSheegothR13CStateManager9EStateMsgf
Taunt__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A1D0C 0019EC6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A1D10 0019EC70  7C 08 02 A6 */	mflr r0
/* 801A1D14 0019EC74  2C 05 00 01 */	cmpwi r5, 1
/* 801A1D18 0019EC78  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A1D1C 0019EC7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A1D20 0019EC80  7C 7F 1B 78 */	mr r31, r3
/* 801A1D24 0019EC84  41 82 00 44 */	beq lbl_801A1D68
/* 801A1D28 0019EC88  40 80 00 10 */	bge lbl_801A1D38
/* 801A1D2C 0019EC8C  2C 05 00 00 */	cmpwi r5, 0
/* 801A1D30 0019EC90  40 80 00 14 */	bge lbl_801A1D44
/* 801A1D34 0019EC94  48 00 01 04 */	b lbl_801A1E38
lbl_801A1D38:
/* 801A1D38 0019EC98  2C 05 00 03 */	cmpwi r5, 3
/* 801A1D3C 0019EC9C  40 80 00 FC */	bge lbl_801A1E38
/* 801A1D40 0019ECA0  48 00 00 E0 */	b lbl_801A1E20
lbl_801A1D44:
/* 801A1D44 0019ECA4  38 00 00 00 */	li r0, 0
/* 801A1D48 0019ECA8  38 C0 00 01 */	li r6, 1
/* 801A1D4C 0019ECAC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A1D50 0019ECB0  38 A0 00 01 */	li r5, 1
/* 801A1D54 0019ECB4  88 1F 0B 29 */	lbz r0, 0xb29(r31)
/* 801A1D58 0019ECB8  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 801A1D5C 0019ECBC  98 1F 0B 29 */	stb r0, 0xb29(r31)
/* 801A1D60 0019ECC0  4B FF CB 35 */	bl sub_8019e894
/* 801A1D64 0019ECC4  48 00 00 D4 */	b lbl_801A1E38
lbl_801A1D68:
/* 801A1D68 0019ECC8  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801A1D6C 0019ECCC  2C 00 00 03 */	cmpwi r0, 3
/* 801A1D70 0019ECD0  41 82 00 94 */	beq lbl_801A1E04
/* 801A1D74 0019ECD4  40 80 00 C4 */	bge lbl_801A1E38
/* 801A1D78 0019ECD8  2C 00 00 00 */	cmpwi r0, 0
/* 801A1D7C 0019ECDC  41 82 00 08 */	beq lbl_801A1D84
/* 801A1D80 0019ECE0  48 00 00 B8 */	b lbl_801A1E38
lbl_801A1D84:
/* 801A1D84 0019ECE4  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 801A1D88 0019ECE8  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801A1D8C 0019ECEC  2C 00 00 10 */	cmpwi r0, 0x10
/* 801A1D90 0019ECF0  40 82 00 10 */	bne lbl_801A1DA0
/* 801A1D94 0019ECF4  38 00 00 03 */	li r0, 3
/* 801A1D98 0019ECF8  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A1D9C 0019ECFC  48 00 00 9C */	b lbl_801A1E38
lbl_801A1DA0:
/* 801A1DA0 0019ED00  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801A1DA4 0019ED04  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801A1DA8 0019ED08  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801A1DAC 0019ED0C  38 80 00 12 */	li r4, 0x12
/* 801A1DB0 0019ED10  90 01 00 08 */	stw r0, 8(r1)
/* 801A1DB4 0019ED14  38 A3 AA 14 */	addi r5, r3, lbl_803DAA14@l
/* 801A1DB8 0019ED18  38 00 00 00 */	li r0, 0
/* 801A1DBC 0019ED1C  3B E6 00 04 */	addi r31, r6, 4
/* 801A1DC0 0019ED20  90 81 00 0C */	stw r4, 0xc(r1)
/* 801A1DC4 0019ED24  7F E3 FB 78 */	mr r3, r31
/* 801A1DC8 0019ED28  38 80 00 12 */	li r4, 0x12
/* 801A1DCC 0019ED2C  90 A1 00 08 */	stw r5, 8(r1)
/* 801A1DD0 0019ED30  90 01 00 10 */	stw r0, 0x10(r1)
/* 801A1DD4 0019ED34  4B F8 F6 65 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A1DD8 0019ED38  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801A1DDC 0019ED3C  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801A1DE0 0019ED40  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 801A1DE4 0019ED44  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A1DE8 0019ED48  90 1F 02 14 */	stw r0, 0x214(r31)
/* 801A1DEC 0019ED4C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A1DF0 0019ED50  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801A1DF4 0019ED54  90 81 00 08 */	stw r4, 8(r1)
/* 801A1DF8 0019ED58  90 7F 02 18 */	stw r3, 0x218(r31)
/* 801A1DFC 0019ED5C  90 01 00 08 */	stw r0, 8(r1)
/* 801A1E00 0019ED60  48 00 00 38 */	b lbl_801A1E38
lbl_801A1E04:
/* 801A1E04 0019ED64  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A1E08 0019ED68  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A1E0C 0019ED6C  2C 00 00 10 */	cmpwi r0, 0x10
/* 801A1E10 0019ED70  41 82 00 28 */	beq lbl_801A1E38
/* 801A1E14 0019ED74  38 00 00 04 */	li r0, 4
/* 801A1E18 0019ED78  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A1E1C 0019ED7C  48 00 00 1C */	b lbl_801A1E38
lbl_801A1E20:
/* 801A1E20 0019ED80  38 A0 00 00 */	li r5, 0
/* 801A1E24 0019ED84  4B FF CA 71 */	bl sub_8019e894
/* 801A1E28 0019ED88  88 1F 0B 29 */	lbz r0, 0xb29(r31)
/* 801A1E2C 0019ED8C  38 60 00 00 */	li r3, 0
/* 801A1E30 0019ED90  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801A1E34 0019ED94  98 1F 0B 29 */	stb r0, 0xb29(r31)
lbl_801A1E38:
/* 801A1E38 0019ED98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A1E3C 0019ED9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A1E40 0019EDA0  7C 08 03 A6 */	mtlr r0
/* 801A1E44 0019EDA4  38 21 00 20 */	addi r1, r1, 0x20
/* 801A1E48 0019EDA8  4E 80 00 20 */	blr

.global Crouch__12CIceSheegothR13CStateManager9EStateMsgf
Crouch__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A1E4C 0019EDAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A1E50 0019EDB0  7C 08 02 A6 */	mflr r0
/* 801A1E54 0019EDB4  2C 05 00 01 */	cmpwi r5, 1
/* 801A1E58 0019EDB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A1E5C 0019EDBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A1E60 0019EDC0  7C 9F 23 78 */	mr r31, r4
/* 801A1E64 0019EDC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A1E68 0019EDC8  7C 7E 1B 78 */	mr r30, r3
/* 801A1E6C 0019EDCC  41 82 00 88 */	beq lbl_801A1EF4
/* 801A1E70 0019EDD0  40 80 00 10 */	bge lbl_801A1E80
/* 801A1E74 0019EDD4  2C 05 00 00 */	cmpwi r5, 0
/* 801A1E78 0019EDD8  40 80 00 14 */	bge lbl_801A1E8C
/* 801A1E7C 0019EDDC  48 00 00 78 */	b lbl_801A1EF4
lbl_801A1E80:
/* 801A1E80 0019EDE0  2C 05 00 03 */	cmpwi r5, 3
/* 801A1E84 0019EDE4  40 80 00 70 */	bge lbl_801A1EF4
/* 801A1E88 0019EDE8  48 00 00 5C */	b lbl_801A1EE4
lbl_801A1E8C:
/* 801A1E8C 0019EDEC  7F E6 FB 78 */	mr r6, r31
/* 801A1E90 0019EDF0  38 80 00 29 */	li r4, 0x29
/* 801A1E94 0019EDF4  38 A0 00 28 */	li r5, 0x28
/* 801A1E98 0019EDF8  4B EB 20 3D */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 801A1E9C 0019EDFC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801A1EA0 0019EE00  7F E6 FB 78 */	mr r6, r31
/* 801A1EA4 0019EE04  38 81 00 0C */	addi r4, r1, 0xc
/* 801A1EA8 0019EE08  38 A0 00 08 */	li r5, 8
/* 801A1EAC 0019EE0C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801A1EB0 0019EE10  B0 01 00 08 */	sth r0, 8(r1)
/* 801A1EB4 0019EE14  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801A1EB8 0019EE18  4B FD 93 9D */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
/* 801A1EBC 0019EE1C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A1EC0 0019EE20  38 80 00 00 */	li r4, 0
/* 801A1EC4 0019EE24  4B F9 8B 15 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801A1EC8 0019EE28  C0 1E 07 4C */	lfs f0, 0x74c(r30)
/* 801A1ECC 0019EE2C  38 60 00 00 */	li r3, 0
/* 801A1ED0 0019EE30  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 801A1ED4 0019EE34  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801A1ED8 0019EE38  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801A1EDC 0019EE3C  98 1E 04 00 */	stb r0, 0x400(r30)
/* 801A1EE0 0019EE40  48 00 00 14 */	b lbl_801A1EF4
lbl_801A1EE4:
/* 801A1EE4 0019EE44  7F E6 FB 78 */	mr r6, r31
/* 801A1EE8 0019EE48  38 80 00 29 */	li r4, 0x29
/* 801A1EEC 0019EE4C  38 A0 00 28 */	li r5, 0x28
/* 801A1EF0 0019EE50  4B EB 23 C5 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
lbl_801A1EF4:
/* 801A1EF4 0019EE54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A1EF8 0019EE58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A1EFC 0019EE5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A1F00 0019EE60  7C 08 03 A6 */	mtlr r0
/* 801A1F04 0019EE64  38 21 00 20 */	addi r1, r1, 0x20
/* 801A1F08 0019EE68  4E 80 00 20 */	blr

.global Deactivate__12CIceSheegothR13CStateManager9EStateMsgf
Deactivate__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A1F0C 0019EE6C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801A1F10 0019EE70  7C 08 02 A6 */	mflr r0
/* 801A1F14 0019EE74  2C 05 00 01 */	cmpwi r5, 1
/* 801A1F18 0019EE78  90 01 00 84 */	stw r0, 0x84(r1)
/* 801A1F1C 0019EE7C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801A1F20 0019EE80  7C 7F 1B 78 */	mr r31, r3
/* 801A1F24 0019EE84  41 82 00 20 */	beq lbl_801A1F44
/* 801A1F28 0019EE88  40 80 02 98 */	bge lbl_801A21C0
/* 801A1F2C 0019EE8C  2C 05 00 00 */	cmpwi r5, 0
/* 801A1F30 0019EE90  40 80 00 08 */	bge lbl_801A1F38
/* 801A1F34 0019EE94  48 00 02 8C */	b lbl_801A21C0
lbl_801A1F38:
/* 801A1F38 0019EE98  38 00 00 01 */	li r0, 1
/* 801A1F3C 0019EE9C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A1F40 0019EEA0  48 00 02 80 */	b lbl_801A21C0
lbl_801A1F44:
/* 801A1F44 0019EEA4  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801A1F48 0019EEA8  2C 00 00 02 */	cmpwi r0, 2
/* 801A1F4C 0019EEAC  41 82 00 D8 */	beq lbl_801A2024
/* 801A1F50 0019EEB0  40 80 00 14 */	bge lbl_801A1F64
/* 801A1F54 0019EEB4  2C 00 00 00 */	cmpwi r0, 0
/* 801A1F58 0019EEB8  41 82 01 58 */	beq lbl_801A20B0
/* 801A1F5C 0019EEBC  40 80 00 14 */	bge lbl_801A1F70
/* 801A1F60 0019EEC0  48 00 02 60 */	b lbl_801A21C0
lbl_801A1F64:
/* 801A1F64 0019EEC4  2C 00 00 04 */	cmpwi r0, 4
/* 801A1F68 0019EEC8  40 80 02 58 */	bge lbl_801A21C0
/* 801A1F6C 0019EECC  48 00 02 3C */	b lbl_801A21A8
lbl_801A1F70:
/* 801A1F70 0019EED0  38 DF 03 A0 */	addi r6, r31, 0x3a0
/* 801A1F74 0019EED4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801A1F78 0019EED8  C0 3F 03 A4 */	lfs f1, 0x3a4(r31)
/* 801A1F7C 0019EEDC  C0 7F 03 A0 */	lfs f3, 0x3a0(r31)
/* 801A1F80 0019EEE0  EC 81 00 28 */	fsubs f4, f1, f0
/* 801A1F84 0019EEE4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801A1F88 0019EEE8  C0 5F 03 A8 */	lfs f2, 0x3a8(r31)
/* 801A1F8C 0019EEEC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801A1F90 0019EEF0  EC 63 08 28 */	fsubs f3, f3, f1
/* 801A1F94 0019EEF4  EC 24 01 32 */	fmuls f1, f4, f4
/* 801A1F98 0019EEF8  EC 42 00 28 */	fsubs f2, f2, f0
/* 801A1F9C 0019EEFC  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A1FA0 0019EF00  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 801A1FA4 0019EF04  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801A1FA8 0019EF08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A1FAC 0019EF0C  4C 40 13 82 */	cror 2, 0, 2
/* 801A1FB0 0019EF10  40 82 00 10 */	bne lbl_801A1FC0
/* 801A1FB4 0019EF14  38 00 00 02 */	li r0, 2
/* 801A1FB8 0019EF18  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A1FBC 0019EF1C  48 00 02 04 */	b lbl_801A21C0
lbl_801A1FC0:
/* 801A1FC0 0019EF20  C0 22 A7 C8 */	lfs f1, lbl_805AC4E8@sda21(r2)
/* 801A1FC4 0019EF24  7F E5 FB 78 */	mr r5, r31
/* 801A1FC8 0019EF28  38 61 00 08 */	addi r3, r1, 8
/* 801A1FCC 0019EF2C  38 9F 04 5C */	addi r4, r31, 0x45c
/* 801A1FD0 0019EF30  4B F9 CB 4D */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801A1FD4 0019EF34  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A1FD8 0019EF38  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 801A1FDC 0019EF3C  C0 C1 00 08 */	lfs f6, 8(r1)
/* 801A1FE0 0019EF40  38 81 00 5C */	addi r4, r1, 0x5c
/* 801A1FE4 0019EF44  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 801A1FE8 0019EF48  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 801A1FEC 0019EF4C  C0 43 00 04 */	lfs f2, 4(r3)
/* 801A1FF0 0019EF50  C0 23 00 08 */	lfs f1, 8(r3)
/* 801A1FF4 0019EF54  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A1FF8 0019EF58  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 801A1FFC 0019EF5C  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 801A2000 0019EF60  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 801A2004 0019EF64  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 801A2008 0019EF68  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 801A200C 0019EF6C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 801A2010 0019EF70  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801A2014 0019EF74  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2018 0019EF78  38 63 00 04 */	addi r3, r3, 4
/* 801A201C 0019EF7C  4B F8 F6 FD */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801A2020 0019EF80  48 00 01 A0 */	b lbl_801A21C0
lbl_801A2024:
/* 801A2024 0019EF84  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 801A2028 0019EF88  38 61 00 14 */	addi r3, r1, 0x14
/* 801A202C 0019EF8C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801A2030 0019EF90  38 9F 09 38 */	addi r4, r31, 0x938
/* 801A2034 0019EF94  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 801A2038 0019EF98  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A203C 0019EF9C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A2040 0019EFA0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801A2044 0019EFA4  48 17 25 ED */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 801A2048 0019EFA8  C0 02 A7 CC */	lfs f0, lbl_805AC4EC@sda21(r2)
/* 801A204C 0019EFAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2050 0019EFB0  40 81 00 54 */	ble lbl_801A20A4
/* 801A2054 0019EFB4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A2058 0019EFB8  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 801A205C 0019EFBC  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A2060 0019EFC0  38 81 00 40 */	addi r4, r1, 0x40
/* 801A2064 0019EFC4  C0 43 00 04 */	lfs f2, 4(r3)
/* 801A2068 0019EFC8  C0 23 00 08 */	lfs f1, 8(r3)
/* 801A206C 0019EFCC  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801A2070 0019EFD0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801A2074 0019EFD4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801A2078 0019EFD8  C0 3F 09 38 */	lfs f1, 0x938(r31)
/* 801A207C 0019EFDC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801A2080 0019EFE0  C0 3F 09 3C */	lfs f1, 0x93c(r31)
/* 801A2084 0019EFE4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801A2088 0019EFE8  C0 3F 09 40 */	lfs f1, 0x940(r31)
/* 801A208C 0019EFEC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801A2090 0019EFF0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801A2094 0019EFF4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2098 0019EFF8  38 63 00 04 */	addi r3, r3, 4
/* 801A209C 0019EFFC  4B F8 F6 7D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801A20A0 0019F000  48 00 01 20 */	b lbl_801A21C0
lbl_801A20A4:
/* 801A20A4 0019F004  38 00 00 00 */	li r0, 0
/* 801A20A8 0019F008  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A20AC 0019F00C  48 00 01 14 */	b lbl_801A21C0
lbl_801A20B0:
/* 801A20B0 0019F010  81 5F 04 50 */	lwz r10, 0x450(r31)
/* 801A20B4 0019F014  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 801A20B8 0019F018  2C 00 00 0C */	cmpwi r0, 0xc
/* 801A20BC 0019F01C  40 82 00 1C */	bne lbl_801A20D8
/* 801A20C0 0019F020  38 00 00 03 */	li r0, 3
/* 801A20C4 0019F024  38 80 00 00 */	li r4, 0
/* 801A20C8 0019F028  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A20CC 0019F02C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A20D0 0019F030  4B F9 89 09 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801A20D4 0019F034  48 00 00 EC */	b lbl_801A21C0
lbl_801A20D8:
/* 801A20D8 0019F038  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 801A20DC 0019F03C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A20E0 0019F040  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 801A20E4 0019F044  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 801A20E8 0019F048  38 60 00 00 */	li r3, 0
/* 801A20EC 0019F04C  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 801A20F0 0019F050  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 801A20F4 0019F054  C0 45 00 00 */	lfs f2, 0(r5)
/* 801A20F8 0019F058  C0 25 00 04 */	lfs f1, 4(r5)
/* 801A20FC 0019F05C  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 801A2100 0019F060  C0 05 00 08 */	lfs f0, 8(r5)
/* 801A2104 0019F064  7C 80 23 78 */	mr r0, r4
/* 801A2108 0019F068  39 00 00 0E */	li r8, 0xe
/* 801A210C 0019F06C  38 C0 00 01 */	li r6, 1
/* 801A2110 0019F070  38 A0 FF FF */	li r5, -1
/* 801A2114 0019F074  3B EA 00 04 */	addi r31, r10, 4
/* 801A2118 0019F078  91 21 00 20 */	stw r9, 0x20(r1)
/* 801A211C 0019F07C  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 801A2120 0019F080  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 801A2124 0019F084  7F E3 FB 78 */	mr r3, r31
/* 801A2128 0019F088  90 81 00 3C */	stw r4, 0x3c(r1)
/* 801A212C 0019F08C  38 80 00 0E */	li r4, 0xe
/* 801A2130 0019F090  91 01 00 24 */	stw r8, 0x24(r1)
/* 801A2134 0019F094  90 E1 00 20 */	stw r7, 0x20(r1)
/* 801A2138 0019F098  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801A213C 0019F09C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801A2140 0019F0A0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801A2144 0019F0A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801A2148 0019F0A8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 801A214C 0019F0AC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801A2150 0019F0B0  4B F8 F2 E9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A2154 0019F0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A2158 0019F0B8  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801A215C 0019F0BC  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801A2160 0019F0C0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A2164 0019F0C4  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801A2168 0019F0C8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A216C 0019F0CC  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 801A2170 0019F0D0  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801A2174 0019F0D4  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801A2178 0019F0D8  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 801A217C 0019F0DC  90 7F 01 98 */	stw r3, 0x198(r31)
/* 801A2180 0019F0E0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 801A2184 0019F0E4  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801A2188 0019F0E8  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 801A218C 0019F0EC  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 801A2190 0019F0F0  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 801A2194 0019F0F4  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801A2198 0019F0F8  90 81 00 20 */	stw r4, 0x20(r1)
/* 801A219C 0019F0FC  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 801A21A0 0019F100  90 01 00 20 */	stw r0, 0x20(r1)
/* 801A21A4 0019F104  48 00 00 1C */	b lbl_801A21C0
lbl_801A21A8:
/* 801A21A8 0019F108  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A21AC 0019F10C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A21B0 0019F110  2C 00 00 0C */	cmpwi r0, 0xc
/* 801A21B4 0019F114  41 82 00 0C */	beq lbl_801A21C0
/* 801A21B8 0019F118  38 00 00 04 */	li r0, 4
/* 801A21BC 0019F11C  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_801A21C0:
/* 801A21C0 0019F120  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801A21C4 0019F124  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801A21C8 0019F128  7C 08 03 A6 */	mtlr r0
/* 801A21CC 0019F12C  38 21 00 80 */	addi r1, r1, 0x80
/* 801A21D0 0019F130  4E 80 00 20 */	blr

.global Generate__12CIceSheegothR13CStateManager9EStateMsgf
Generate__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A21D4 0019F134  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A21D8 0019F138  7C 08 02 A6 */	mflr r0
/* 801A21DC 0019F13C  2C 05 00 01 */	cmpwi r5, 1
/* 801A21E0 0019F140  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A21E4 0019F144  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A21E8 0019F148  7C 9F 23 78 */	mr r31, r4
/* 801A21EC 0019F14C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801A21F0 0019F150  7C 7E 1B 78 */	mr r30, r3
/* 801A21F4 0019F154  41 82 00 38 */	beq lbl_801A222C
/* 801A21F8 0019F158  40 80 01 7C */	bge lbl_801A2374
/* 801A21FC 0019F15C  2C 05 00 00 */	cmpwi r5, 0
/* 801A2200 0019F160  40 80 00 08 */	bge lbl_801A2208
/* 801A2204 0019F164  48 00 01 70 */	b lbl_801A2374
lbl_801A2208:
/* 801A2208 0019F168  38 00 00 00 */	li r0, 0
/* 801A220C 0019F16C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A2210 0019F170  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 801A2214 0019F174  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 801A2218 0019F178  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 801A221C 0019F17C  D0 1E 09 38 */	stfs f0, 0x938(r30)
/* 801A2220 0019F180  D0 3E 09 3C */	stfs f1, 0x93c(r30)
/* 801A2224 0019F184  D0 5E 09 40 */	stfs f2, 0x940(r30)
/* 801A2228 0019F188  48 00 01 4C */	b lbl_801A2374
lbl_801A222C:
/* 801A222C 0019F18C  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801A2230 0019F190  2C 00 00 03 */	cmpwi r0, 3
/* 801A2234 0019F194  41 82 01 28 */	beq lbl_801A235C
/* 801A2238 0019F198  40 80 01 3C */	bge lbl_801A2374
/* 801A223C 0019F19C  2C 00 00 00 */	cmpwi r0, 0
/* 801A2240 0019F1A0  41 82 00 08 */	beq lbl_801A2248
/* 801A2244 0019F1A4  48 00 01 30 */	b lbl_801A2374
lbl_801A2248:
/* 801A2248 0019F1A8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A224C 0019F1AC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A2250 0019F1B0  2C 00 00 0C */	cmpwi r0, 0xc
/* 801A2254 0019F1B4  40 82 00 2C */	bne lbl_801A2280
/* 801A2258 0019F1B8  38 80 00 01 */	li r4, 1
/* 801A225C 0019F1BC  4B F9 87 7D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801A2260 0019F1C0  38 00 00 03 */	li r0, 3
/* 801A2264 0019F1C4  7F C3 F3 78 */	mr r3, r30
/* 801A2268 0019F1C8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A226C 0019F1CC  7F E5 FB 78 */	mr r5, r31
/* 801A2270 0019F1D0  38 80 00 0A */	li r4, 0xa
/* 801A2274 0019F1D4  38 C0 FF FF */	li r6, -1
/* 801A2278 0019F1D8  4B EA EE 49 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801A227C 0019F1DC  48 00 00 F8 */	b lbl_801A2374
lbl_801A2280:
/* 801A2280 0019F1E0  88 1E 07 5C */	lbz r0, 0x75c(r30)
/* 801A2284 0019F1E4  39 20 00 00 */	li r9, 0
/* 801A2288 0019F1E8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801A228C 0019F1EC  41 82 00 08 */	beq lbl_801A2294
/* 801A2290 0019F1F0  39 20 00 08 */	li r9, 8
lbl_801A2294:
/* 801A2294 0019F1F4  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801A2298 0019F1F8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A229C 0019F1FC  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801A22A0 0019F200  39 05 AA 68 */	addi r8, r5, lbl_803DAA68@l
/* 801A22A4 0019F204  3C C0 80 3E */	lis r6, lbl_803DA9F0@ha
/* 801A22A8 0019F208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A22AC 0019F20C  38 80 00 00 */	li r4, 0
/* 801A22B0 0019F210  C0 23 00 04 */	lfs f1, 4(r3)
/* 801A22B4 0019F214  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A22B8 0019F218  50 80 F8 00 */	rlwimi r0, r4, 0x1f, 0, 0
/* 801A22BC 0019F21C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A22C0 0019F220  38 E0 00 0E */	li r7, 0xe
/* 801A22C4 0019F224  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A22C8 0019F228  50 80 F0 42 */	rlwimi r0, r4, 0x1e, 1, 1
/* 801A22CC 0019F22C  38 A0 FF FF */	li r5, -1
/* 801A22D0 0019F230  3B E3 00 04 */	addi r31, r3, 4
/* 801A22D4 0019F234  91 01 00 08 */	stw r8, 8(r1)
/* 801A22D8 0019F238  38 C6 A9 F0 */	addi r6, r6, lbl_803DA9F0@l
/* 801A22DC 0019F23C  7F E3 FB 78 */	mr r3, r31
/* 801A22E0 0019F240  38 80 00 0E */	li r4, 0xe
/* 801A22E4 0019F244  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801A22E8 0019F248  90 C1 00 08 */	stw r6, 8(r1)
/* 801A22EC 0019F24C  91 21 00 10 */	stw r9, 0x10(r1)
/* 801A22F0 0019F250  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801A22F4 0019F254  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A22F8 0019F258  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A22FC 0019F25C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801A2300 0019F260  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A2304 0019F264  4B F8 F1 35 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A2308 0019F268  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801A230C 0019F26C  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801A2310 0019F270  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801A2314 0019F274  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A2318 0019F278  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801A231C 0019F27C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A2320 0019F280  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801A2324 0019F284  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801A2328 0019F288  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801A232C 0019F28C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801A2330 0019F290  90 7F 01 98 */	stw r3, 0x198(r31)
/* 801A2334 0019F294  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801A2338 0019F298  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801A233C 0019F29C  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801A2340 0019F2A0  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 801A2344 0019F2A4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801A2348 0019F2A8  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801A234C 0019F2AC  90 81 00 08 */	stw r4, 8(r1)
/* 801A2350 0019F2B0  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 801A2354 0019F2B4  90 01 00 08 */	stw r0, 8(r1)
/* 801A2358 0019F2B8  48 00 00 1C */	b lbl_801A2374
lbl_801A235C:
/* 801A235C 0019F2BC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A2360 0019F2C0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A2364 0019F2C4  2C 00 00 0C */	cmpwi r0, 0xc
/* 801A2368 0019F2C8  41 82 00 0C */	beq lbl_801A2374
/* 801A236C 0019F2CC  38 00 00 04 */	li r0, 4
/* 801A2370 0019F2D0  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_801A2374:
/* 801A2374 0019F2D4  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A2378 0019F2D8  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 801A237C 0019F2DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A2380 0019F2E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A2384 0019F2E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801A2388 0019F2E8  7C 08 03 A6 */	mtlr r0
/* 801A238C 0019F2EC  38 21 00 30 */	addi r1, r1, 0x30
/* 801A2390 0019F2F0  4E 80 00 20 */	blr

.global TargetPatrol__12CIceSheegothR13CStateManager9EStateMsgf
TargetPatrol__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A2394 0019F2F4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801A2398 0019F2F8  7C 08 02 A6 */	mflr r0
/* 801A239C 0019F2FC  90 01 01 14 */	stw r0, 0x114(r1)
/* 801A23A0 0019F300  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 801A23A4 0019F304  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 801A23A8 0019F308  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 801A23AC 0019F30C  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 801A23B0 0019F310  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 801A23B4 0019F314  7C BE 2B 78 */	mr r30, r5
/* 801A23B8 0019F318  FF E0 08 90 */	fmr f31, f1
/* 801A23BC 0019F31C  2C 1E 00 01 */	cmpwi r30, 1
/* 801A23C0 0019F320  7C 7F 1B 78 */	mr r31, r3
/* 801A23C4 0019F324  7C 9D 23 78 */	mr r29, r4
/* 801A23C8 0019F328  41 82 02 10 */	beq lbl_801A25D8
/* 801A23CC 0019F32C  40 80 03 A0 */	bge lbl_801A276C
/* 801A23D0 0019F330  2C 1E 00 00 */	cmpwi r30, 0
/* 801A23D4 0019F334  40 80 00 08 */	bge lbl_801A23DC
/* 801A23D8 0019F338  48 00 03 94 */	b lbl_801A276C
lbl_801A23DC:
/* 801A23DC 0019F33C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A23E0 0019F340  38 80 00 01 */	li r4, 1
/* 801A23E4 0019F344  4B F9 85 F5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801A23E8 0019F348  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 801A23EC 0019F34C  38 60 00 00 */	li r3, 0
/* 801A23F0 0019F350  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801A23F4 0019F354  7F E3 FB 78 */	mr r3, r31
/* 801A23F8 0019F358  98 1F 04 00 */	stb r0, 0x400(r31)
/* 801A23FC 0019F35C  7F A4 EB 78 */	mr r4, r29
/* 801A2400 0019F360  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A2404 0019F364  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A2408 0019F368  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801A240C 0019F36C  7D 89 03 A6 */	mtctr r12
/* 801A2410 0019F370  4E 80 04 21 */	bctrl
/* 801A2414 0019F374  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2418 0019F378  41 82 00 28 */	beq lbl_801A2440
/* 801A241C 0019F37C  FC 20 F8 90 */	fmr f1, f31
/* 801A2420 0019F380  7F E3 FB 78 */	mr r3, r31
/* 801A2424 0019F384  7F A4 EB 78 */	mr r4, r29
/* 801A2428 0019F388  7F C5 F3 78 */	mr r5, r30
/* 801A242C 0019F38C  48 05 4A 49 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 801A2430 0019F390  7F E3 FB 78 */	mr r3, r31
/* 801A2434 0019F394  7F A4 EB 78 */	mr r4, r29
/* 801A2438 0019F398  48 05 2E 59 */	bl UpdateDest__10CPatternedFR13CStateManager
/* 801A243C 0019F39C  48 00 00 10 */	b lbl_801A244C
lbl_801A2440:
/* 801A2440 0019F3A0  7F E3 FB 78 */	mr r3, r31
/* 801A2444 0019F3A4  38 9F 03 A0 */	addi r4, r31, 0x3a0
/* 801A2448 0019F3A8  4B ED A7 15 */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_801A244C:
/* 801A244C 0019F3AC  C0 1F 02 E0 */	lfs f0, 0x2e0(r31)
/* 801A2450 0019F3B0  7F E5 FB 78 */	mr r5, r31
/* 801A2454 0019F3B4  C0 22 A7 C8 */	lfs f1, lbl_805AC4E8@sda21(r2)
/* 801A2458 0019F3B8  38 61 00 44 */	addi r3, r1, 0x44
/* 801A245C 0019F3BC  D0 1F 09 2C */	stfs f0, 0x92c(r31)
/* 801A2460 0019F3C0  38 9F 04 5C */	addi r4, r31, 0x45c
/* 801A2464 0019F3C4  38 DF 09 2C */	addi r6, r31, 0x92c
/* 801A2468 0019F3C8  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 801A246C 0019F3CC  D0 1F 09 30 */	stfs f0, 0x930(r31)
/* 801A2470 0019F3D0  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 801A2474 0019F3D4  D0 1F 09 34 */	stfs f0, 0x934(r31)
/* 801A2478 0019F3D8  4B F9 C6 A5 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801A247C 0019F3DC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 801A2480 0019F3E0  7F E3 FB 78 */	mr r3, r31
/* 801A2484 0019F3E4  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 801A2488 0019F3E8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801A248C 0019F3EC  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 801A2490 0019F3F0  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 801A2494 0019F3F4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801A2498 0019F3F8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A249C 0019F3FC  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801A24A0 0019F400  7D 89 03 A6 */	mtctr r12
/* 801A24A4 0019F404  4E 80 04 21 */	bctrl
/* 801A24A8 0019F408  28 03 00 00 */	cmplwi r3, 0
/* 801A24AC 0019F40C  41 82 00 DC */	beq lbl_801A2588
/* 801A24B0 0019F410  7F E3 FB 78 */	mr r3, r31
/* 801A24B4 0019F414  38 80 00 00 */	li r4, 0
/* 801A24B8 0019F418  4B FF C9 61 */	bl sub_8019ee18
/* 801A24BC 0019F41C  FC 20 F8 90 */	fmr f1, f31
/* 801A24C0 0019F420  7F E3 FB 78 */	mr r3, r31
/* 801A24C4 0019F424  7F A4 EB 78 */	mr r4, r29
/* 801A24C8 0019F428  7F C5 F3 78 */	mr r5, r30
/* 801A24CC 0019F42C  48 05 42 01 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A24D0 0019F430  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801A24D4 0019F434  38 61 00 68 */	addi r3, r1, 0x68
/* 801A24D8 0019F438  C0 04 00 04 */	lfs f0, 4(r4)
/* 801A24DC 0019F43C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801A24E0 0019F440  C0 04 00 08 */	lfs f0, 8(r4)
/* 801A24E4 0019F444  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801A24E8 0019F448  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801A24EC 0019F44C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801A24F0 0019F450  48 17 22 09 */	bl CanBeNormalized__9CVector3fCFv
/* 801A24F4 0019F454  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A24F8 0019F458  41 82 02 74 */	beq lbl_801A276C
/* 801A24FC 0019F45C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2500 0019F460  38 63 00 04 */	addi r3, r3, 4
/* 801A2504 0019F464  4B F8 EF A5 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 801A2508 0019F468  38 61 00 74 */	addi r3, r1, 0x74
/* 801A250C 0019F46C  48 17 23 AD */	bl Magnitude__9CVector3fCFv
/* 801A2510 0019F470  FF E0 08 90 */	fmr f31, f1
/* 801A2514 0019F474  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A2518 0019F478  38 81 00 68 */	addi r4, r1, 0x68
/* 801A251C 0019F47C  48 17 23 35 */	bl AsNormalized__9CVector3fCFv
/* 801A2520 0019F480  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801A2524 0019F484  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A2528 0019F488  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 801A252C 0019F48C  38 81 00 D4 */	addi r4, r1, 0xd4
/* 801A2530 0019F490  EC DF 00 32 */	fmuls f6, f31, f0
/* 801A2534 0019F494  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801A2538 0019F498  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801A253C 0019F49C  EC BF 00 72 */	fmuls f5, f31, f1
/* 801A2540 0019F4A0  C0 43 00 04 */	lfs f2, 4(r3)
/* 801A2544 0019F4A4  EC 9F 00 32 */	fmuls f4, f31, f0
/* 801A2548 0019F4A8  C0 23 00 08 */	lfs f1, 8(r3)
/* 801A254C 0019F4AC  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A2550 0019F4B0  D0 A1 00 D4 */	stfs f5, 0xd4(r1)
/* 801A2554 0019F4B4  D0 81 00 D8 */	stfs f4, 0xd8(r1)
/* 801A2558 0019F4B8  D0 C1 00 DC */	stfs f6, 0xdc(r1)
/* 801A255C 0019F4BC  D0 61 00 E0 */	stfs f3, 0xe0(r1)
/* 801A2560 0019F4C0  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 801A2564 0019F4C4  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 801A2568 0019F4C8  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 801A256C 0019F4CC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2570 0019F4D0  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 801A2574 0019F4D4  38 63 00 04 */	addi r3, r3, 4
/* 801A2578 0019F4D8  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801A257C 0019F4DC  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 801A2580 0019F4E0  4B F8 F1 99 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801A2584 0019F4E4  48 00 01 E8 */	b lbl_801A276C
lbl_801A2588:
/* 801A2588 0019F4E8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A258C 0019F4EC  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 801A2590 0019F4F0  C0 C1 00 74 */	lfs f6, 0x74(r1)
/* 801A2594 0019F4F4  38 81 00 B8 */	addi r4, r1, 0xb8
/* 801A2598 0019F4F8  C0 A1 00 78 */	lfs f5, 0x78(r1)
/* 801A259C 0019F4FC  C0 81 00 7C */	lfs f4, 0x7c(r1)
/* 801A25A0 0019F500  C0 43 00 04 */	lfs f2, 4(r3)
/* 801A25A4 0019F504  C0 23 00 08 */	lfs f1, 8(r3)
/* 801A25A8 0019F508  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A25AC 0019F50C  D0 C1 00 B8 */	stfs f6, 0xb8(r1)
/* 801A25B0 0019F510  D0 A1 00 BC */	stfs f5, 0xbc(r1)
/* 801A25B4 0019F514  D0 81 00 C0 */	stfs f4, 0xc0(r1)
/* 801A25B8 0019F518  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 801A25BC 0019F51C  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 801A25C0 0019F520  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 801A25C4 0019F524  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 801A25C8 0019F528  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A25CC 0019F52C  38 63 00 04 */	addi r3, r3, 4
/* 801A25D0 0019F530  4B F8 F1 49 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801A25D4 0019F534  48 00 01 98 */	b lbl_801A276C
lbl_801A25D8:
/* 801A25D8 0019F538  C0 22 A7 C8 */	lfs f1, lbl_805AC4E8@sda21(r2)
/* 801A25DC 0019F53C  7F E5 FB 78 */	mr r5, r31
/* 801A25E0 0019F540  38 61 00 20 */	addi r3, r1, 0x20
/* 801A25E4 0019F544  38 9F 04 5C */	addi r4, r31, 0x45c
/* 801A25E8 0019F548  38 DF 09 2C */	addi r6, r31, 0x92c
/* 801A25EC 0019F54C  4B F9 C5 31 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801A25F0 0019F550  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801A25F4 0019F554  7F E3 FB 78 */	mr r3, r31
/* 801A25F8 0019F558  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801A25FC 0019F55C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801A2600 0019F560  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801A2604 0019F564  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801A2608 0019F568  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801A260C 0019F56C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A2610 0019F570  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801A2614 0019F574  7D 89 03 A6 */	mtctr r12
/* 801A2618 0019F578  4E 80 04 21 */	bctrl
/* 801A261C 0019F57C  28 03 00 00 */	cmplwi r3, 0
/* 801A2620 0019F580  41 82 01 00 */	beq lbl_801A2720
/* 801A2624 0019F584  7F E3 FB 78 */	mr r3, r31
/* 801A2628 0019F588  7F A4 EB 78 */	mr r4, r29
/* 801A262C 0019F58C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A2630 0019F590  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A2634 0019F594  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801A2638 0019F598  7D 89 03 A6 */	mtctr r12
/* 801A263C 0019F59C  4E 80 04 21 */	bctrl
/* 801A2640 0019F5A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2644 0019F5A4  40 82 00 DC */	bne lbl_801A2720
/* 801A2648 0019F5A8  7F E3 FB 78 */	mr r3, r31
/* 801A264C 0019F5AC  38 80 00 00 */	li r4, 0
/* 801A2650 0019F5B0  4B FF C7 C9 */	bl sub_8019ee18
/* 801A2654 0019F5B4  FC 20 F8 90 */	fmr f1, f31
/* 801A2658 0019F5B8  7F E3 FB 78 */	mr r3, r31
/* 801A265C 0019F5BC  7F A4 EB 78 */	mr r4, r29
/* 801A2660 0019F5C0  7F C5 F3 78 */	mr r5, r30
/* 801A2664 0019F5C4  48 05 40 69 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A2668 0019F5C8  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801A266C 0019F5CC  38 61 00 50 */	addi r3, r1, 0x50
/* 801A2670 0019F5D0  C0 04 00 04 */	lfs f0, 4(r4)
/* 801A2674 0019F5D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801A2678 0019F5D8  C0 04 00 08 */	lfs f0, 8(r4)
/* 801A267C 0019F5DC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801A2680 0019F5E0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801A2684 0019F5E4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801A2688 0019F5E8  48 17 20 71 */	bl CanBeNormalized__9CVector3fCFv
/* 801A268C 0019F5EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2690 0019F5F0  41 82 00 DC */	beq lbl_801A276C
/* 801A2694 0019F5F4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2698 0019F5F8  38 63 00 04 */	addi r3, r3, 4
/* 801A269C 0019F5FC  4B F8 EE 0D */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 801A26A0 0019F600  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A26A4 0019F604  48 17 22 15 */	bl Magnitude__9CVector3fCFv
/* 801A26A8 0019F608  FF E0 08 90 */	fmr f31, f1
/* 801A26AC 0019F60C  38 61 00 08 */	addi r3, r1, 8
/* 801A26B0 0019F610  38 81 00 50 */	addi r4, r1, 0x50
/* 801A26B4 0019F614  48 17 21 9D */	bl AsNormalized__9CVector3fCFv
/* 801A26B8 0019F618  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801A26BC 0019F61C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A26C0 0019F620  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 801A26C4 0019F624  38 81 00 9C */	addi r4, r1, 0x9c
/* 801A26C8 0019F628  EC DF 00 32 */	fmuls f6, f31, f0
/* 801A26CC 0019F62C  C0 21 00 08 */	lfs f1, 8(r1)
/* 801A26D0 0019F630  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801A26D4 0019F634  EC BF 00 72 */	fmuls f5, f31, f1
/* 801A26D8 0019F638  C0 43 00 04 */	lfs f2, 4(r3)
/* 801A26DC 0019F63C  EC 9F 00 32 */	fmuls f4, f31, f0
/* 801A26E0 0019F640  C0 23 00 08 */	lfs f1, 8(r3)
/* 801A26E4 0019F644  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A26E8 0019F648  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 801A26EC 0019F64C  D0 81 00 A0 */	stfs f4, 0xa0(r1)
/* 801A26F0 0019F650  D0 C1 00 A4 */	stfs f6, 0xa4(r1)
/* 801A26F4 0019F654  D0 61 00 A8 */	stfs f3, 0xa8(r1)
/* 801A26F8 0019F658  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 801A26FC 0019F65C  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 801A2700 0019F660  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A2704 0019F664  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2708 0019F668  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 801A270C 0019F66C  38 63 00 04 */	addi r3, r3, 4
/* 801A2710 0019F670  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 801A2714 0019F674  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 801A2718 0019F678  4B F8 F0 01 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801A271C 0019F67C  48 00 00 50 */	b lbl_801A276C
lbl_801A2720:
/* 801A2720 0019F680  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A2724 0019F684  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 801A2728 0019F688  C0 C1 00 5C */	lfs f6, 0x5c(r1)
/* 801A272C 0019F68C  38 81 00 80 */	addi r4, r1, 0x80
/* 801A2730 0019F690  C0 A1 00 60 */	lfs f5, 0x60(r1)
/* 801A2734 0019F694  C0 81 00 64 */	lfs f4, 0x64(r1)
/* 801A2738 0019F698  C0 43 00 04 */	lfs f2, 4(r3)
/* 801A273C 0019F69C  C0 23 00 08 */	lfs f1, 8(r3)
/* 801A2740 0019F6A0  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A2744 0019F6A4  D0 C1 00 80 */	stfs f6, 0x80(r1)
/* 801A2748 0019F6A8  D0 A1 00 84 */	stfs f5, 0x84(r1)
/* 801A274C 0019F6AC  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 801A2750 0019F6B0  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 801A2754 0019F6B4  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 801A2758 0019F6B8  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 801A275C 0019F6BC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 801A2760 0019F6C0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2764 0019F6C4  38 63 00 04 */	addi r3, r3, 4
/* 801A2768 0019F6C8  4B F8 EF B1 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801A276C:
/* 801A276C 0019F6CC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 801A2770 0019F6D0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801A2774 0019F6D4  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 801A2778 0019F6D8  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 801A277C 0019F6DC  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 801A2780 0019F6E0  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 801A2784 0019F6E4  7C 08 03 A6 */	mtlr r0
/* 801A2788 0019F6E8  38 21 01 10 */	addi r1, r1, 0x110
/* 801A278C 0019F6EC  4E 80 00 20 */	blr

.global Approach__12CIceSheegothR13CStateManager9EStateMsgf
Approach__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A2790 0019F6F0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801A2794 0019F6F4  7C 08 02 A6 */	mflr r0
/* 801A2798 0019F6F8  90 01 00 84 */	stw r0, 0x84(r1)
/* 801A279C 0019F6FC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801A27A0 0019F700  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801A27A4 0019F704  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801A27A8 0019F708  93 C1 00 68 */	stw r30, 0x68(r1)
/* 801A27AC 0019F70C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 801A27B0 0019F710  7C BD 2B 78 */	mr r29, r5
/* 801A27B4 0019F714  FF E0 08 90 */	fmr f31, f1
/* 801A27B8 0019F718  2C 1D 00 01 */	cmpwi r29, 1
/* 801A27BC 0019F71C  7C 7E 1B 78 */	mr r30, r3
/* 801A27C0 0019F720  7C 9F 23 78 */	mr r31, r4
/* 801A27C4 0019F724  41 82 01 00 */	beq lbl_801A28C4
/* 801A27C8 0019F728  40 80 00 10 */	bge lbl_801A27D8
/* 801A27CC 0019F72C  2C 1D 00 00 */	cmpwi r29, 0
/* 801A27D0 0019F730  40 80 00 14 */	bge lbl_801A27E4
/* 801A27D4 0019F734  48 00 03 70 */	b lbl_801A2B44
lbl_801A27D8:
/* 801A27D8 0019F738  2C 1D 00 03 */	cmpwi r29, 3
/* 801A27DC 0019F73C  40 80 03 68 */	bge lbl_801A2B44
/* 801A27E0 0019F740  48 00 03 44 */	b lbl_801A2B24
lbl_801A27E4:
/* 801A27E4 0019F744  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A27E8 0019F748  38 80 00 01 */	li r4, 1
/* 801A27EC 0019F74C  4B F9 81 ED */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801A27F0 0019F750  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801A27F4 0019F754  38 7E 09 F4 */	addi r3, r30, 0x9f4
/* 801A27F8 0019F758  38 81 00 0C */	addi r4, r1, 0xc
/* 801A27FC 0019F75C  A0 05 00 08 */	lhz r0, 8(r5)
/* 801A2800 0019F760  B0 01 00 08 */	sth r0, 8(r1)
/* 801A2804 0019F764  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801A2808 0019F768  4B FD 2A 11 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 801A280C 0019F76C  38 7E 09 F4 */	addi r3, r30, 0x9f4
/* 801A2810 0019F770  38 80 00 01 */	li r4, 1
/* 801A2814 0019F774  4B FD 2A 11 */	bl SetActive__13CBoneTrackingFb
/* 801A2818 0019F778  7F C3 F3 78 */	mr r3, r30
/* 801A281C 0019F77C  7F E4 FB 78 */	mr r4, r31
/* 801A2820 0019F780  38 BE 02 E0 */	addi r5, r30, 0x2e0
/* 801A2824 0019F784  4B FF E2 39 */	bl sub_801a0a5c
/* 801A2828 0019F788  7F C3 F3 78 */	mr r3, r30
/* 801A282C 0019F78C  38 80 00 00 */	li r4, 0
/* 801A2830 0019F790  4B FF C5 E9 */	bl sub_8019ee18
/* 801A2834 0019F794  FC 20 F8 90 */	fmr f1, f31
/* 801A2838 0019F798  7F C3 F3 78 */	mr r3, r30
/* 801A283C 0019F79C  7F E4 FB 78 */	mr r4, r31
/* 801A2840 0019F7A0  38 A0 00 00 */	li r5, 0
/* 801A2844 0019F7A4  48 05 3E 89 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A2848 0019F7A8  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A284C 0019F7AC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801A2850 0019F7B0  40 82 00 10 */	bne lbl_801A2860
/* 801A2854 0019F7B4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A2858 0019F7B8  38 63 00 04 */	addi r3, r3, 4
/* 801A285C 0019F7BC  4B F8 EC 4D */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
lbl_801A2860:
/* 801A2860 0019F7C0  88 9E 07 5C */	lbz r4, 0x75c(r30)
/* 801A2864 0019F7C4  38 60 00 01 */	li r3, 1
/* 801A2868 0019F7C8  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A286C 0019F7CC  54 84 CF FE */	rlwinm r4, r4, 0x19, 0x1f, 0x1f
/* 801A2870 0019F7D0  7C 84 00 34 */	cntlzw r4, r4
/* 801A2874 0019F7D4  50 80 16 30 */	rlwimi r0, r4, 2, 0x18, 0x18
/* 801A2878 0019F7D8  98 1E 0B 29 */	stb r0, 0xb29(r30)
/* 801A287C 0019F7DC  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A2880 0019F7E0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801A2884 0019F7E4  98 1E 0B 29 */	stb r0, 0xb29(r30)
/* 801A2888 0019F7E8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801A288C 0019F7EC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801A2890 0019F7F0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801A2894 0019F7F4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801A2898 0019F7F8  D0 1E 09 2C */	stfs f0, 0x92c(r30)
/* 801A289C 0019F7FC  D0 3E 09 30 */	stfs f1, 0x930(r30)
/* 801A28A0 0019F800  D0 5E 09 34 */	stfs f2, 0x934(r30)
/* 801A28A4 0019F804  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801A28A8 0019F808  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801A28AC 0019F80C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801A28B0 0019F810  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801A28B4 0019F814  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A28B8 0019F818  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801A28BC 0019F81C  D0 5E 09 34 */	stfs f2, 0x934(r30)
/* 801A28C0 0019F820  48 00 02 84 */	b lbl_801A2B44
lbl_801A28C4:
/* 801A28C4 0019F824  38 80 00 01 */	li r4, 1
/* 801A28C8 0019F828  4B FF C5 51 */	bl sub_8019ee18
/* 801A28CC 0019F82C  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A28D0 0019F830  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801A28D4 0019F834  41 82 00 E8 */	beq lbl_801A29BC
/* 801A28D8 0019F838  C0 1E 09 2C */	lfs f0, 0x92c(r30)
/* 801A28DC 0019F83C  38 7E 08 44 */	addi r3, r30, 0x844
/* 801A28E0 0019F840  38 81 00 1C */	addi r4, r1, 0x1c
/* 801A28E4 0019F844  38 BE 02 E0 */	addi r5, r30, 0x2e0
/* 801A28E8 0019F848  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 801A28EC 0019F84C  C0 1E 09 30 */	lfs f0, 0x930(r30)
/* 801A28F0 0019F850  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 801A28F4 0019F854  C0 1E 09 34 */	lfs f0, 0x934(r30)
/* 801A28F8 0019F858  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 801A28FC 0019F85C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801A2900 0019F860  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801A2904 0019F864  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801A2908 0019F868  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A290C 0019F86C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801A2910 0019F870  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801A2914 0019F874  48 02 47 E9 */	bl FindClosestReachablePoint__15CPathFindSearchCFRC9CVector3fR9CVector3f
/* 801A2918 0019F878  2C 03 00 00 */	cmpwi r3, 0
/* 801A291C 0019F87C  40 82 00 90 */	bne lbl_801A29AC
/* 801A2920 0019F880  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 801A2924 0019F884  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 801A2928 0019F888  C0 DE 00 40 */	lfs f6, 0x40(r30)
/* 801A292C 0019F88C  EC 20 28 28 */	fsubs f1, f0, f5
/* 801A2930 0019F890  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 801A2934 0019F894  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 801A2938 0019F898  EC 60 30 28 */	fsubs f3, f0, f6
/* 801A293C 0019F89C  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 801A2940 0019F8A0  EC 21 00 72 */	fmuls f1, f1, f1
/* 801A2944 0019F8A4  EC 40 20 28 */	fsubs f2, f0, f4
/* 801A2948 0019F8A8  C0 02 A7 D0 */	lfs f0, lbl_805AC4F0@sda21(r2)
/* 801A294C 0019F8AC  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 801A2950 0019F8B0  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801A2954 0019F8B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2958 0019F8B8  40 80 00 10 */	bge lbl_801A2968
/* 801A295C 0019F8BC  D0 DE 02 E0 */	stfs f6, 0x2e0(r30)
/* 801A2960 0019F8C0  D0 BE 02 E4 */	stfs f5, 0x2e4(r30)
/* 801A2964 0019F8C4  D0 9E 02 E8 */	stfs f4, 0x2e8(r30)
lbl_801A2968:
/* 801A2968 0019F8C8  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 801A296C 0019F8CC  FC 20 F8 90 */	fmr f1, f31
/* 801A2970 0019F8D0  7F C3 F3 78 */	mr r3, r30
/* 801A2974 0019F8D4  7F E4 FB 78 */	mr r4, r31
/* 801A2978 0019F8D8  D0 1E 09 2C */	stfs f0, 0x92c(r30)
/* 801A297C 0019F8DC  38 A0 00 00 */	li r5, 0
/* 801A2980 0019F8E0  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 801A2984 0019F8E4  D0 1E 09 30 */	stfs f0, 0x930(r30)
/* 801A2988 0019F8E8  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 801A298C 0019F8EC  D0 1E 09 34 */	stfs f0, 0x934(r30)
/* 801A2990 0019F8F0  48 05 3D 3D */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A2994 0019F8F4  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A2998 0019F8F8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801A299C 0019F8FC  40 82 00 10 */	bne lbl_801A29AC
/* 801A29A0 0019F900  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A29A4 0019F904  38 63 00 04 */	addi r3, r3, 4
/* 801A29A8 0019F908  4B F8 EB 01 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
lbl_801A29AC:
/* 801A29AC 0019F90C  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A29B0 0019F910  38 60 00 00 */	li r3, 0
/* 801A29B4 0019F914  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801A29B8 0019F918  98 1E 0B 29 */	stb r0, 0xb29(r30)
lbl_801A29BC:
/* 801A29BC 0019F91C  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A29C0 0019F920  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801A29C4 0019F924  41 82 00 70 */	beq lbl_801A2A34
/* 801A29C8 0019F928  7F C3 F3 78 */	mr r3, r30
/* 801A29CC 0019F92C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A29D0 0019F930  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801A29D4 0019F934  7D 89 03 A6 */	mtctr r12
/* 801A29D8 0019F938  4E 80 04 21 */	bctrl
/* 801A29DC 0019F93C  28 03 00 00 */	cmplwi r3, 0
/* 801A29E0 0019F940  41 82 00 54 */	beq lbl_801A2A34
/* 801A29E4 0019F944  7F C3 F3 78 */	mr r3, r30
/* 801A29E8 0019F948  7F E4 FB 78 */	mr r4, r31
/* 801A29EC 0019F94C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A29F0 0019F950  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A29F4 0019F954  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801A29F8 0019F958  7D 89 03 A6 */	mtctr r12
/* 801A29FC 0019F95C  4E 80 04 21 */	bctrl
/* 801A2A00 0019F960  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2A04 0019F964  40 82 00 30 */	bne lbl_801A2A34
/* 801A2A08 0019F968  80 7E 08 48 */	lwz r3, 0x848(r30)
/* 801A2A0C 0019F96C  80 9E 09 0C */	lwz r4, 0x90c(r30)
/* 801A2A10 0019F970  38 03 FF FF */	addi r0, r3, -1
/* 801A2A14 0019F974  7C 04 00 00 */	cmpw r4, r0
/* 801A2A18 0019F978  40 80 00 1C */	bge lbl_801A2A34
/* 801A2A1C 0019F97C  FC 20 F8 90 */	fmr f1, f31
/* 801A2A20 0019F980  7F C3 F3 78 */	mr r3, r30
/* 801A2A24 0019F984  7F E4 FB 78 */	mr r4, r31
/* 801A2A28 0019F988  7F A5 EB 78 */	mr r5, r29
/* 801A2A2C 0019F98C  48 05 3C A1 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A2A30 0019F990  48 00 00 B8 */	b lbl_801A2AE8
lbl_801A2A34:
/* 801A2A34 0019F994  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801A2A38 0019F998  7F C3 F3 78 */	mr r3, r30
/* 801A2A3C 0019F99C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801A2A40 0019F9A0  7F E4 FB 78 */	mr r4, r31
/* 801A2A44 0019F9A4  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 801A2A48 0019F9A8  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 801A2A4C 0019F9AC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801A2A50 0019F9B0  EC 82 00 28 */	fsubs f4, f2, f0
/* 801A2A54 0019F9B4  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 801A2A58 0019F9B8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801A2A5C 0019F9BC  EC 63 08 28 */	fsubs f3, f3, f1
/* 801A2A60 0019F9C0  C0 22 A7 C4 */	lfs f1, lbl_805AC4E4@sda21(r2)
/* 801A2A64 0019F9C4  EC 02 00 28 */	fsubs f0, f2, f0
/* 801A2A68 0019F9C8  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801A2A6C 0019F9CC  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801A2A70 0019F9D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801A2A74 0019F9D4  4B FF C2 69 */	bl sub_8019ecdc
/* 801A2A78 0019F9D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2A7C 0019F9DC  41 82 00 6C */	beq lbl_801A2AE8
/* 801A2A80 0019F9E0  38 61 00 34 */	addi r3, r1, 0x34
/* 801A2A84 0019F9E4  48 17 1C 75 */	bl CanBeNormalized__9CVector3fCFv
/* 801A2A88 0019F9E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2A8C 0019F9EC  41 82 00 5C */	beq lbl_801A2AE8
/* 801A2A90 0019F9F0  38 61 00 10 */	addi r3, r1, 0x10
/* 801A2A94 0019F9F4  38 81 00 34 */	addi r4, r1, 0x34
/* 801A2A98 0019F9F8  48 17 1D B9 */	bl AsNormalized__9CVector3fCFv
/* 801A2A9C 0019F9FC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A2AA0 0019FA00  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 801A2AA4 0019FA04  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 801A2AA8 0019FA08  38 81 00 40 */	addi r4, r1, 0x40
/* 801A2AAC 0019FA0C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801A2AB0 0019FA10  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801A2AB4 0019FA14  C0 83 00 08 */	lfs f4, 8(r3)
/* 801A2AB8 0019FA18  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801A2ABC 0019FA1C  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A2AC0 0019FA20  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 801A2AC4 0019FA24  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 801A2AC8 0019FA28  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 801A2ACC 0019FA2C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801A2AD0 0019FA30  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801A2AD4 0019FA34  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801A2AD8 0019FA38  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801A2ADC 0019FA3C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A2AE0 0019FA40  38 63 00 04 */	addi r3, r3, 4
/* 801A2AE4 0019FA44  4B F8 EC 35 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801A2AE8:
/* 801A2AE8 0019FA48  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A2AEC 0019FA4C  38 60 00 01 */	li r3, 1
/* 801A2AF0 0019FA50  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801A2AF4 0019FA54  98 1E 0B 29 */	stb r0, 0xb29(r30)
/* 801A2AF8 0019FA58  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A2AFC 0019FA5C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A2B00 0019FA60  2C 00 00 08 */	cmpwi r0, 8
/* 801A2B04 0019FA64  40 82 00 0C */	bne lbl_801A2B10
/* 801A2B08 0019FA68  C0 22 A7 74 */	lfs f1, lbl_805AC494@sda21(r2)
/* 801A2B0C 0019FA6C  48 00 00 08 */	b lbl_801A2B14
lbl_801A2B10:
/* 801A2B10 0019FA70  C0 22 A7 60 */	lfs f1, lbl_805AC480@sda21(r2)
lbl_801A2B14:
/* 801A2B14 0019FA74  C0 1E 09 4C */	lfs f0, 0x94c(r30)
/* 801A2B18 0019FA78  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A2B1C 0019FA7C  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 801A2B20 0019FA80  48 00 00 24 */	b lbl_801A2B44
lbl_801A2B24:
/* 801A2B24 0019FA84  38 7E 09 F4 */	addi r3, r30, 0x9f4
/* 801A2B28 0019FA88  38 80 00 00 */	li r4, 0
/* 801A2B2C 0019FA8C  4B FD 26 F9 */	bl SetActive__13CBoneTrackingFb
/* 801A2B30 0019FA90  7F C3 F3 78 */	mr r3, r30
/* 801A2B34 0019FA94  38 80 00 00 */	li r4, 0
/* 801A2B38 0019FA98  4B FF C2 E1 */	bl sub_8019ee18
/* 801A2B3C 0019FA9C  C0 1E 09 4C */	lfs f0, 0x94c(r30)
/* 801A2B40 0019FAA0  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
lbl_801A2B44:
/* 801A2B44 0019FAA4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801A2B48 0019FAA8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801A2B4C 0019FAAC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801A2B50 0019FAB0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801A2B54 0019FAB4  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801A2B58 0019FAB8  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 801A2B5C 0019FABC  7C 08 03 A6 */	mtlr r0
/* 801A2B60 0019FAC0  38 21 00 80 */	addi r1, r1, 0x80
/* 801A2B64 0019FAC4  4E 80 00 20 */	blr

.global PathFind__12CIceSheegothR13CStateManager9EStateMsgf
PathFind__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A2B68 0019FAC8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801A2B6C 0019FACC  7C 08 02 A6 */	mflr r0
/* 801A2B70 0019FAD0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801A2B74 0019FAD4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801A2B78 0019FAD8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 801A2B7C 0019FADC  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801A2B80 0019FAE0  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801A2B84 0019FAE4  93 A1 00 84 */	stw r29, 0x84(r1)
/* 801A2B88 0019FAE8  7C BE 2B 78 */	mr r30, r5
/* 801A2B8C 0019FAEC  FF E0 08 90 */	fmr f31, f1
/* 801A2B90 0019FAF0  2C 1E 00 01 */	cmpwi r30, 1
/* 801A2B94 0019FAF4  7C 7F 1B 78 */	mr r31, r3
/* 801A2B98 0019FAF8  7C 9D 23 78 */	mr r29, r4
/* 801A2B9C 0019FAFC  41 82 00 B8 */	beq lbl_801A2C54
/* 801A2BA0 0019FB00  40 80 00 10 */	bge lbl_801A2BB0
/* 801A2BA4 0019FB04  2C 1E 00 00 */	cmpwi r30, 0
/* 801A2BA8 0019FB08  40 80 00 14 */	bge lbl_801A2BBC
/* 801A2BAC 0019FB0C  48 00 02 D4 */	b lbl_801A2E80
lbl_801A2BB0:
/* 801A2BB0 0019FB10  2C 1E 00 03 */	cmpwi r30, 3
/* 801A2BB4 0019FB14  40 80 02 CC */	bge lbl_801A2E80
/* 801A2BB8 0019FB18  48 00 02 B4 */	b lbl_801A2E6C
lbl_801A2BBC:
/* 801A2BBC 0019FB1C  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A2BC0 0019FB20  38 60 00 00 */	li r3, 0
/* 801A2BC4 0019FB24  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801A2BC8 0019FB28  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A2BCC 0019FB2C  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 801A2BD0 0019FB30  38 80 00 01 */	li r4, 1
/* 801A2BD4 0019FB34  88 1F 0B 29 */	lbz r0, 0xb29(r31)
/* 801A2BD8 0019FB38  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801A2BDC 0019FB3C  98 1F 0B 29 */	stb r0, 0xb29(r31)
/* 801A2BE0 0019FB40  D0 1F 09 68 */	stfs f0, 0x968(r31)
/* 801A2BE4 0019FB44  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2BE8 0019FB48  4B F9 7D F1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801A2BEC 0019FB4C  80 BD 08 4C */	lwz r5, 0x84c(r29)
/* 801A2BF0 0019FB50  38 7F 09 F4 */	addi r3, r31, 0x9f4
/* 801A2BF4 0019FB54  38 81 00 0C */	addi r4, r1, 0xc
/* 801A2BF8 0019FB58  A0 05 00 08 */	lhz r0, 8(r5)
/* 801A2BFC 0019FB5C  B0 01 00 08 */	sth r0, 8(r1)
/* 801A2C00 0019FB60  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801A2C04 0019FB64  4B FD 26 15 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 801A2C08 0019FB68  38 7F 09 F4 */	addi r3, r31, 0x9f4
/* 801A2C0C 0019FB6C  38 80 00 01 */	li r4, 1
/* 801A2C10 0019FB70  4B FD 26 15 */	bl SetActive__13CBoneTrackingFb
/* 801A2C14 0019FB74  7F E3 FB 78 */	mr r3, r31
/* 801A2C18 0019FB78  7F A4 EB 78 */	mr r4, r29
/* 801A2C1C 0019FB7C  38 BF 02 E0 */	addi r5, r31, 0x2e0
/* 801A2C20 0019FB80  4B FF DE 3D */	bl sub_801a0a5c
/* 801A2C24 0019FB84  7F E3 FB 78 */	mr r3, r31
/* 801A2C28 0019FB88  38 80 00 00 */	li r4, 0
/* 801A2C2C 0019FB8C  4B FF C1 ED */	bl sub_8019ee18
/* 801A2C30 0019FB90  88 1F 07 5C */	lbz r0, 0x75c(r31)
/* 801A2C34 0019FB94  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801A2C38 0019FB98  40 82 02 48 */	bne lbl_801A2E80
/* 801A2C3C 0019FB9C  FC 20 F8 90 */	fmr f1, f31
/* 801A2C40 0019FBA0  7F E3 FB 78 */	mr r3, r31
/* 801A2C44 0019FBA4  7F A4 EB 78 */	mr r4, r29
/* 801A2C48 0019FBA8  7F C5 F3 78 */	mr r5, r30
/* 801A2C4C 0019FBAC  48 05 3A 81 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A2C50 0019FBB0  48 00 02 30 */	b lbl_801A2E80
lbl_801A2C54:
/* 801A2C54 0019FBB4  38 80 00 00 */	li r4, 0
/* 801A2C58 0019FBB8  4B FF C1 C1 */	bl sub_8019ee18
/* 801A2C5C 0019FBBC  88 1F 07 5C */	lbz r0, 0x75c(r31)
/* 801A2C60 0019FBC0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801A2C64 0019FBC4  40 82 01 28 */	bne lbl_801A2D8C
/* 801A2C68 0019FBC8  7F E3 FB 78 */	mr r3, r31
/* 801A2C6C 0019FBCC  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A2C70 0019FBD0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801A2C74 0019FBD4  7D 89 03 A6 */	mtctr r12
/* 801A2C78 0019FBD8  4E 80 04 21 */	bctrl
/* 801A2C7C 0019FBDC  28 03 00 00 */	cmplwi r3, 0
/* 801A2C80 0019FBE0  41 82 01 0C */	beq lbl_801A2D8C
/* 801A2C84 0019FBE4  7F E3 FB 78 */	mr r3, r31
/* 801A2C88 0019FBE8  7F A4 EB 78 */	mr r4, r29
/* 801A2C8C 0019FBEC  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A2C90 0019FBF0  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A2C94 0019FBF4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801A2C98 0019FBF8  7D 89 03 A6 */	mtctr r12
/* 801A2C9C 0019FBFC  4E 80 04 21 */	bctrl
/* 801A2CA0 0019FC00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2CA4 0019FC04  40 82 00 E8 */	bne lbl_801A2D8C
/* 801A2CA8 0019FC08  80 7F 07 64 */	lwz r3, 0x764(r31)
/* 801A2CAC 0019FC0C  80 9F 08 28 */	lwz r4, 0x828(r31)
/* 801A2CB0 0019FC10  38 03 FF FF */	addi r0, r3, -1
/* 801A2CB4 0019FC14  7C 04 00 00 */	cmpw r4, r0
/* 801A2CB8 0019FC18  40 80 00 D4 */	bge lbl_801A2D8C
/* 801A2CBC 0019FC1C  FC 20 F8 90 */	fmr f1, f31
/* 801A2CC0 0019FC20  7F E3 FB 78 */	mr r3, r31
/* 801A2CC4 0019FC24  7F A4 EB 78 */	mr r4, r29
/* 801A2CC8 0019FC28  7F C5 F3 78 */	mr r5, r30
/* 801A2CCC 0019FC2C  48 05 3A 01 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A2CD0 0019FC30  C0 62 A7 5C */	lfs f3, lbl_805AC47C@sda21(r2)
/* 801A2CD4 0019FC34  D0 7F 09 68 */	stfs f3, 0x968(r31)
/* 801A2CD8 0019FC38  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2CDC 0019FC3C  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 801A2CE0 0019FC40  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 801A2CE4 0019FC44  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 801A2CE8 0019FC48  C0 43 00 04 */	lfs f2, 4(r3)
/* 801A2CEC 0019FC4C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801A2CF0 0019FC50  C0 23 00 08 */	lfs f1, 8(r3)
/* 801A2CF4 0019FC54  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A2CF8 0019FC58  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801A2CFC 0019FC5C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 801A2D00 0019FC60  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 801A2D04 0019FC64  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801A2D08 0019FC68  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 801A2D0C 0019FC6C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801A2D10 0019FC70  40 80 01 30 */	bge lbl_801A2E40
/* 801A2D14 0019FC74  38 61 00 34 */	addi r3, r1, 0x34
/* 801A2D18 0019FC78  48 17 19 E1 */	bl CanBeNormalized__9CVector3fCFv
/* 801A2D1C 0019FC7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2D20 0019FC80  41 82 01 20 */	beq lbl_801A2E40
/* 801A2D24 0019FC84  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2D28 0019FC88  38 63 00 04 */	addi r3, r3, 4
/* 801A2D2C 0019FC8C  4B F8 E7 7D */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 801A2D30 0019FC90  38 61 00 1C */	addi r3, r1, 0x1c
/* 801A2D34 0019FC94  38 81 00 34 */	addi r4, r1, 0x34
/* 801A2D38 0019FC98  48 17 1B 19 */	bl AsNormalized__9CVector3fCFv
/* 801A2D3C 0019FC9C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A2D40 0019FCA0  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 801A2D44 0019FCA4  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 801A2D48 0019FCA8  38 81 00 5C */	addi r4, r1, 0x5c
/* 801A2D4C 0019FCAC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801A2D50 0019FCB0  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801A2D54 0019FCB4  C0 83 00 08 */	lfs f4, 8(r3)
/* 801A2D58 0019FCB8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801A2D5C 0019FCBC  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A2D60 0019FCC0  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 801A2D64 0019FCC4  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 801A2D68 0019FCC8  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 801A2D6C 0019FCCC  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 801A2D70 0019FCD0  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 801A2D74 0019FCD4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 801A2D78 0019FCD8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801A2D7C 0019FCDC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2D80 0019FCE0  38 63 00 04 */	addi r3, r3, 4
/* 801A2D84 0019FCE4  4B F8 E9 95 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801A2D88 0019FCE8  48 00 00 B8 */	b lbl_801A2E40
lbl_801A2D8C:
/* 801A2D8C 0019FCEC  80 BD 08 4C */	lwz r5, 0x84c(r29)
/* 801A2D90 0019FCF0  7F E3 FB 78 */	mr r3, r31
/* 801A2D94 0019FCF4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801A2D98 0019FCF8  7F A4 EB 78 */	mr r4, r29
/* 801A2D9C 0019FCFC  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 801A2DA0 0019FD00  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 801A2DA4 0019FD04  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801A2DA8 0019FD08  EC 82 00 28 */	fsubs f4, f2, f0
/* 801A2DAC 0019FD0C  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 801A2DB0 0019FD10  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801A2DB4 0019FD14  EC 63 08 28 */	fsubs f3, f3, f1
/* 801A2DB8 0019FD18  C0 22 A7 C4 */	lfs f1, lbl_805AC4E4@sda21(r2)
/* 801A2DBC 0019FD1C  EC 02 00 28 */	fsubs f0, f2, f0
/* 801A2DC0 0019FD20  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801A2DC4 0019FD24  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 801A2DC8 0019FD28  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A2DCC 0019FD2C  4B FF BF 11 */	bl sub_8019ecdc
/* 801A2DD0 0019FD30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2DD4 0019FD34  41 82 00 6C */	beq lbl_801A2E40
/* 801A2DD8 0019FD38  38 61 00 28 */	addi r3, r1, 0x28
/* 801A2DDC 0019FD3C  48 17 19 1D */	bl CanBeNormalized__9CVector3fCFv
/* 801A2DE0 0019FD40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2DE4 0019FD44  41 82 00 5C */	beq lbl_801A2E40
/* 801A2DE8 0019FD48  38 61 00 10 */	addi r3, r1, 0x10
/* 801A2DEC 0019FD4C  38 81 00 28 */	addi r4, r1, 0x28
/* 801A2DF0 0019FD50  48 17 1A 61 */	bl AsNormalized__9CVector3fCFv
/* 801A2DF4 0019FD54  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A2DF8 0019FD58  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 801A2DFC 0019FD5C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 801A2E00 0019FD60  38 81 00 40 */	addi r4, r1, 0x40
/* 801A2E04 0019FD64  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801A2E08 0019FD68  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801A2E0C 0019FD6C  C0 83 00 08 */	lfs f4, 8(r3)
/* 801A2E10 0019FD70  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801A2E14 0019FD74  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A2E18 0019FD78  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 801A2E1C 0019FD7C  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 801A2E20 0019FD80  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 801A2E24 0019FD84  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801A2E28 0019FD88  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801A2E2C 0019FD8C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801A2E30 0019FD90  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801A2E34 0019FD94  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2E38 0019FD98  38 63 00 04 */	addi r3, r3, 4
/* 801A2E3C 0019FD9C  4B F8 E8 DD */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801A2E40:
/* 801A2E40 0019FDA0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2E44 0019FDA4  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A2E48 0019FDA8  2C 00 00 08 */	cmpwi r0, 8
/* 801A2E4C 0019FDAC  40 82 00 0C */	bne lbl_801A2E58
/* 801A2E50 0019FDB0  C0 22 A7 74 */	lfs f1, lbl_805AC494@sda21(r2)
/* 801A2E54 0019FDB4  48 00 00 08 */	b lbl_801A2E5C
lbl_801A2E58:
/* 801A2E58 0019FDB8  C0 22 A7 60 */	lfs f1, lbl_805AC480@sda21(r2)
lbl_801A2E5C:
/* 801A2E5C 0019FDBC  C0 1F 09 4C */	lfs f0, 0x94c(r31)
/* 801A2E60 0019FDC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A2E64 0019FDC4  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 801A2E68 0019FDC8  48 00 00 18 */	b lbl_801A2E80
lbl_801A2E6C:
/* 801A2E6C 0019FDCC  38 7F 09 F4 */	addi r3, r31, 0x9f4
/* 801A2E70 0019FDD0  38 80 00 00 */	li r4, 0
/* 801A2E74 0019FDD4  4B FD 23 B1 */	bl SetActive__13CBoneTrackingFb
/* 801A2E78 0019FDD8  C0 1F 09 4C */	lfs f0, 0x94c(r31)
/* 801A2E7C 0019FDDC  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
lbl_801A2E80:
/* 801A2E80 0019FDE0  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 801A2E84 0019FDE4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801A2E88 0019FDE8  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801A2E8C 0019FDEC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801A2E90 0019FDF0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801A2E94 0019FDF4  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 801A2E98 0019FDF8  7C 08 03 A6 */	mtlr r0
/* 801A2E9C 0019FDFC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801A2EA0 0019FE00  4E 80 00 20 */	blr

.global DoubleSnap__12CIceSheegothR13CStateManager9EStateMsgf
DoubleSnap__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A2EA4 0019FE04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A2EA8 0019FE08  7C 08 02 A6 */	mflr r0
/* 801A2EAC 0019FE0C  2C 05 00 01 */	cmpwi r5, 1
/* 801A2EB0 0019FE10  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A2EB4 0019FE14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A2EB8 0019FE18  7C 7F 1B 78 */	mr r31, r3
/* 801A2EBC 0019FE1C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801A2EC0 0019FE20  7C 9E 23 78 */	mr r30, r4
/* 801A2EC4 0019FE24  41 82 00 4C */	beq lbl_801A2F10
/* 801A2EC8 0019FE28  40 80 00 10 */	bge lbl_801A2ED8
/* 801A2ECC 0019FE2C  2C 05 00 00 */	cmpwi r5, 0
/* 801A2ED0 0019FE30  40 80 00 14 */	bge lbl_801A2EE4
/* 801A2ED4 0019FE34  48 00 01 B8 */	b lbl_801A308C
lbl_801A2ED8:
/* 801A2ED8 0019FE38  2C 05 00 03 */	cmpwi r5, 3
/* 801A2EDC 0019FE3C  40 80 01 B0 */	bge lbl_801A308C
/* 801A2EE0 0019FE40  48 00 01 44 */	b lbl_801A3024
lbl_801A2EE4:
/* 801A2EE4 0019FE44  38 00 00 00 */	li r0, 0
/* 801A2EE8 0019FE48  38 60 00 01 */	li r3, 1
/* 801A2EEC 0019FE4C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A2EF0 0019FE50  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A2EF4 0019FE54  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801A2EF8 0019FE58  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 801A2EFC 0019FE5C  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 801A2F00 0019FE60  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A2F04 0019FE64  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801A2F08 0019FE68  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 801A2F0C 0019FE6C  48 00 01 80 */	b lbl_801A308C
lbl_801A2F10:
/* 801A2F10 0019FE70  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801A2F14 0019FE74  2C 00 00 03 */	cmpwi r0, 3
/* 801A2F18 0019FE78  41 82 00 F0 */	beq lbl_801A3008
/* 801A2F1C 0019FE7C  40 80 01 70 */	bge lbl_801A308C
/* 801A2F20 0019FE80  2C 00 00 00 */	cmpwi r0, 0
/* 801A2F24 0019FE84  41 82 00 08 */	beq lbl_801A2F2C
/* 801A2F28 0019FE88  48 00 01 64 */	b lbl_801A308C
lbl_801A2F2C:
/* 801A2F2C 0019FE8C  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801A2F30 0019FE90  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801A2F34 0019FE94  2C 00 00 07 */	cmpwi r0, 7
/* 801A2F38 0019FE98  40 82 00 10 */	bne lbl_801A2F48
/* 801A2F3C 0019FE9C  38 00 00 03 */	li r0, 3
/* 801A2F40 0019FEA0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A2F44 0019FEA4  48 00 01 48 */	b lbl_801A308C
lbl_801A2F48:
/* 801A2F48 0019FEA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801A2F4C 0019FEAC  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 801A2F50 0019FEB0  7D 89 03 A6 */	mtctr r12
/* 801A2F54 0019FEB4  4E 80 04 21 */	bctrl
/* 801A2F58 0019FEB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2F5C 0019FEBC  41 82 01 30 */	beq lbl_801A308C
/* 801A2F60 0019FEC0  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801A2F64 0019FEC4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A2F68 0019FEC8  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801A2F6C 0019FECC  38 E4 AA 68 */	addi r7, r4, lbl_803DAA68@l
/* 801A2F70 0019FED0  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 801A2F74 0019FED4  90 E1 00 08 */	stw r7, 8(r1)
/* 801A2F78 0019FED8  38 00 00 00 */	li r0, 0
/* 801A2F7C 0019FEDC  C0 23 00 04 */	lfs f1, 4(r3)
/* 801A2F80 0019FEE0  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A2F84 0019FEE4  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 801A2F88 0019FEE8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A2F8C 0019FEEC  38 C0 00 05 */	li r6, 5
/* 801A2F90 0019FEF0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801A2F94 0019FEF4  38 80 00 05 */	li r4, 5
/* 801A2F98 0019FEF8  3B E3 00 04 */	addi r31, r3, 4
/* 801A2F9C 0019FEFC  90 A1 00 08 */	stw r5, 8(r1)
/* 801A2FA0 0019FF00  7F E3 FB 78 */	mr r3, r31
/* 801A2FA4 0019FF04  90 01 00 10 */	stw r0, 0x10(r1)
/* 801A2FA8 0019FF08  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801A2FAC 0019FF0C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A2FB0 0019FF10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A2FB4 0019FF14  98 01 00 20 */	stb r0, 0x20(r1)
/* 801A2FB8 0019FF18  4B F8 E4 81 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A2FBC 0019FF1C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801A2FC0 0019FF20  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 801A2FC4 0019FF24  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 801A2FC8 0019FF28  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A2FCC 0019FF2C  90 1F 01 10 */	stw r0, 0x110(r31)
/* 801A2FD0 0019FF30  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A2FD4 0019FF34  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801A2FD8 0019FF38  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801A2FDC 0019FF3C  90 7F 01 14 */	stw r3, 0x114(r31)
/* 801A2FE0 0019FF40  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801A2FE4 0019FF44  90 BF 01 18 */	stw r5, 0x118(r31)
/* 801A2FE8 0019FF48  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801A2FEC 0019FF4C  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 801A2FF0 0019FF50  88 61 00 20 */	lbz r3, 0x20(r1)
/* 801A2FF4 0019FF54  90 BF 01 20 */	stw r5, 0x120(r31)
/* 801A2FF8 0019FF58  90 81 00 08 */	stw r4, 8(r1)
/* 801A2FFC 0019FF5C  98 7F 01 24 */	stb r3, 0x124(r31)
/* 801A3000 0019FF60  90 01 00 08 */	stw r0, 8(r1)
/* 801A3004 0019FF64  48 00 00 88 */	b lbl_801A308C
lbl_801A3008:
/* 801A3008 0019FF68  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A300C 0019FF6C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A3010 0019FF70  2C 00 00 07 */	cmpwi r0, 7
/* 801A3014 0019FF74  41 82 00 78 */	beq lbl_801A308C
/* 801A3018 0019FF78  38 00 00 04 */	li r0, 4
/* 801A301C 0019FF7C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A3020 0019FF80  48 00 00 6C */	b lbl_801A308C
lbl_801A3024:
/* 801A3024 0019FF84  4B FF E7 71 */	bl sub_801a1794
/* 801A3028 0019FF88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A302C 0019FF8C  41 82 00 28 */	beq lbl_801A3054
/* 801A3030 0019FF90  7F E3 FB 78 */	mr r3, r31
/* 801A3034 0019FF94  7F C4 F3 78 */	mr r4, r30
/* 801A3038 0019FF98  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A303C 0019FF9C  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A3040 0019FFA0  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 801A3044 0019FFA4  7D 89 03 A6 */	mtctr r12
/* 801A3048 0019FFA8  4E 80 04 21 */	bctrl
/* 801A304C 0019FFAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3050 0019FFB0  40 82 00 1C */	bne lbl_801A306C
lbl_801A3054:
/* 801A3054 0019FFB4  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801A3058 0019FFB8  48 16 F4 85 */	bl Float__9CRandom16Fv
/* 801A305C 0019FFBC  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 801A3060 0019FFC0  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 801A3064 0019FFC4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801A3068 0019FFC8  D0 1F 09 58 */	stfs f0, 0x958(r31)
lbl_801A306C:
/* 801A306C 0019FFCC  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A3070 0019FFD0  38 60 00 00 */	li r3, 0
/* 801A3074 0019FFD4  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801A3078 0019FFD8  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 801A307C 0019FFDC  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 801A3080 0019FFE0  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A3084 0019FFE4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801A3088 0019FFE8  98 1F 0B 28 */	stb r0, 0xb28(r31)
lbl_801A308C:
/* 801A308C 0019FFEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A3090 0019FFF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A3094 0019FFF4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801A3098 0019FFF8  7C 08 03 A6 */	mtlr r0
/* 801A309C 0019FFFC  38 21 00 30 */	addi r1, r1, 0x30
/* 801A30A0 001A0000  4E 80 00 20 */	blr

.global SpecialAttack__12CIceSheegothR13CStateManager9EStateMsgf
SpecialAttack__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A30A4 001A0004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A30A8 001A0008  7C 08 02 A6 */	mflr r0
/* 801A30AC 001A000C  2C 05 00 01 */	cmpwi r5, 1
/* 801A30B0 001A0010  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A30B4 001A0014  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A30B8 001A0018  7C 9F 23 78 */	mr r31, r4
/* 801A30BC 001A001C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A30C0 001A0020  7C 7E 1B 78 */	mr r30, r3
/* 801A30C4 001A0024  41 82 00 50 */	beq lbl_801A3114
/* 801A30C8 001A0028  40 80 00 10 */	bge lbl_801A30D8
/* 801A30CC 001A002C  2C 05 00 00 */	cmpwi r5, 0
/* 801A30D0 001A0030  40 80 00 14 */	bge lbl_801A30E4
/* 801A30D4 001A0034  48 00 01 54 */	b lbl_801A3228
lbl_801A30D8:
/* 801A30D8 001A0038  2C 05 00 03 */	cmpwi r5, 3
/* 801A30DC 001A003C  40 80 01 4C */	bge lbl_801A3228
/* 801A30E0 001A0040  48 00 01 0C */	b lbl_801A31EC
lbl_801A30E4:
/* 801A30E4 001A0044  38 80 00 00 */	li r4, 0
/* 801A30E8 001A0048  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A30EC 001A004C  90 9E 05 68 */	stw r4, 0x568(r30)
/* 801A30F0 001A0050  38 60 00 01 */	li r3, 1
/* 801A30F4 001A0054  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 801A30F8 001A0058  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 801A30FC 001A005C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801A3100 001A0060  98 1E 0B 28 */	stb r0, 0xb28(r30)
/* 801A3104 001A0064  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A3108 001A0068  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 801A310C 001A006C  98 1E 0B 29 */	stb r0, 0xb29(r30)
/* 801A3110 001A0070  48 00 01 18 */	b lbl_801A3228
lbl_801A3114:
/* 801A3114 001A0074  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801A3118 001A0078  2C 00 00 03 */	cmpwi r0, 3
/* 801A311C 001A007C  41 82 00 B4 */	beq lbl_801A31D0
/* 801A3120 001A0080  40 80 01 08 */	bge lbl_801A3228
/* 801A3124 001A0084  2C 00 00 00 */	cmpwi r0, 0
/* 801A3128 001A0088  41 82 00 08 */	beq lbl_801A3130
/* 801A312C 001A008C  48 00 00 FC */	b lbl_801A3228
lbl_801A3130:
/* 801A3130 001A0090  80 FE 04 50 */	lwz r7, 0x450(r30)
/* 801A3134 001A0094  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 801A3138 001A0098  2C 00 00 09 */	cmpwi r0, 9
/* 801A313C 001A009C  40 82 00 20 */	bne lbl_801A315C
/* 801A3140 001A00A0  38 00 00 03 */	li r0, 3
/* 801A3144 001A00A4  C0 22 A7 74 */	lfs f1, lbl_805AC494@sda21(r2)
/* 801A3148 001A00A8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A314C 001A00AC  C0 1E 09 4C */	lfs f0, 0x94c(r30)
/* 801A3150 001A00B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A3154 001A00B4  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 801A3158 001A00B8  48 00 00 D0 */	b lbl_801A3228
lbl_801A315C:
/* 801A315C 001A00BC  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801A3160 001A00C0  3C 60 80 3E */	lis r3, lbl_803E10B0@ha
/* 801A3164 001A00C4  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801A3168 001A00C8  38 80 00 07 */	li r4, 7
/* 801A316C 001A00CC  90 01 00 08 */	stw r0, 8(r1)
/* 801A3170 001A00D0  38 C3 10 B0 */	addi r6, r3, lbl_803E10B0@l
/* 801A3174 001A00D4  38 A0 00 00 */	li r5, 0
/* 801A3178 001A00D8  38 00 00 01 */	li r0, 1
/* 801A317C 001A00DC  3B E7 00 04 */	addi r31, r7, 4
/* 801A3180 001A00E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 801A3184 001A00E4  7F E3 FB 78 */	mr r3, r31
/* 801A3188 001A00E8  38 80 00 07 */	li r4, 7
/* 801A318C 001A00EC  90 C1 00 08 */	stw r6, 8(r1)
/* 801A3190 001A00F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801A3194 001A00F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A3198 001A00F8  4B F8 E2 A1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A319C 001A00FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801A31A0 001A0100  3C 60 80 3E */	lis r3, lbl_803E10B0@ha
/* 801A31A4 001A0104  38 83 10 B0 */	addi r4, r3, lbl_803E10B0@l
/* 801A31A8 001A0108  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A31AC 001A010C  90 1F 01 48 */	stw r0, 0x148(r31)
/* 801A31B0 001A0110  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A31B4 001A0114  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801A31B8 001A0118  90 81 00 08 */	stw r4, 8(r1)
/* 801A31BC 001A011C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801A31C0 001A0120  90 BF 01 4C */	stw r5, 0x14c(r31)
/* 801A31C4 001A0124  90 7F 01 50 */	stw r3, 0x150(r31)
/* 801A31C8 001A0128  90 01 00 08 */	stw r0, 8(r1)
/* 801A31CC 001A012C  48 00 00 5C */	b lbl_801A3228
lbl_801A31D0:
/* 801A31D0 001A0130  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A31D4 001A0134  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A31D8 001A0138  2C 00 00 09 */	cmpwi r0, 9
/* 801A31DC 001A013C  41 82 00 4C */	beq lbl_801A3228
/* 801A31E0 001A0140  38 00 00 04 */	li r0, 4
/* 801A31E4 001A0144  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A31E8 001A0148  48 00 00 40 */	b lbl_801A3228
lbl_801A31EC:
/* 801A31EC 001A014C  4B FF E5 A9 */	bl sub_801a1794
/* 801A31F0 001A0150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A31F4 001A0154  40 82 00 1C */	bne lbl_801A3210
/* 801A31F8 001A0158  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801A31FC 001A015C  48 16 F2 E1 */	bl Float__9CRandom16Fv
/* 801A3200 001A0160  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 801A3204 001A0164  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 801A3208 001A0168  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801A320C 001A016C  D0 1E 09 54 */	stfs f0, 0x954(r30)
lbl_801A3210:
/* 801A3210 001A0170  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 801A3214 001A0174  38 60 00 00 */	li r3, 0
/* 801A3218 001A0178  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801A321C 001A017C  98 1E 0B 28 */	stb r0, 0xb28(r30)
/* 801A3220 001A0180  C0 1E 09 4C */	lfs f0, 0x94c(r30)
/* 801A3224 001A0184  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
lbl_801A3228:
/* 801A3228 001A0188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A322C 001A018C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A3230 001A0190  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A3234 001A0194  7C 08 03 A6 */	mtlr r0
/* 801A3238 001A0198  38 21 00 20 */	addi r1, r1, 0x20
/* 801A323C 001A019C  4E 80 00 20 */	blr

.global Attack__12CIceSheegothR13CStateManager9EStateMsgf
Attack__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A3240 001A01A0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801A3244 001A01A4  7C 08 02 A6 */	mflr r0
/* 801A3248 001A01A8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801A324C 001A01AC  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801A3250 001A01B0  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 801A3254 001A01B4  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801A3258 001A01B8  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801A325C 001A01BC  93 A1 00 94 */	stw r29, 0x94(r1)
/* 801A3260 001A01C0  7C BD 2B 78 */	mr r29, r5
/* 801A3264 001A01C4  FF E0 08 90 */	fmr f31, f1
/* 801A3268 001A01C8  2C 1D 00 01 */	cmpwi r29, 1
/* 801A326C 001A01CC  7C 7E 1B 78 */	mr r30, r3
/* 801A3270 001A01D0  7C 9F 23 78 */	mr r31, r4
/* 801A3274 001A01D4  41 82 00 C0 */	beq lbl_801A3334
/* 801A3278 001A01D8  40 80 00 10 */	bge lbl_801A3288
/* 801A327C 001A01DC  2C 1D 00 00 */	cmpwi r29, 0
/* 801A3280 001A01E0  40 80 00 14 */	bge lbl_801A3294
/* 801A3284 001A01E4  48 00 03 40 */	b lbl_801A35C4
lbl_801A3288:
/* 801A3288 001A01E8  2C 1D 00 03 */	cmpwi r29, 3
/* 801A328C 001A01EC  40 80 03 38 */	bge lbl_801A35C4
/* 801A3290 001A01F0  48 00 02 CC */	b lbl_801A355C
lbl_801A3294:
/* 801A3294 001A01F4  38 00 00 00 */	li r0, 0
/* 801A3298 001A01F8  38 80 00 01 */	li r4, 1
/* 801A329C 001A01FC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A32A0 001A0200  7F E5 FB 78 */	mr r5, r31
/* 801A32A4 001A0204  38 61 00 08 */	addi r3, r1, 8
/* 801A32A8 001A0208  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A32AC 001A020C  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 801A32B0 001A0210  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801A32B4 001A0214  98 1E 0B 28 */	stb r0, 0xb28(r30)
/* 801A32B8 001A0218  54 04 D7 FE */	rlwinm r4, r0, 0x1a, 0x1f, 0x1f
/* 801A32BC 001A021C  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 801A32C0 001A0220  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 801A32C4 001A0224  98 1E 0B 28 */	stb r0, 0xb28(r30)
/* 801A32C8 001A0228  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801A32CC 001A022C  81 84 00 00 */	lwz r12, 0(r4)
/* 801A32D0 001A0230  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801A32D4 001A0234  7D 89 03 A6 */	mtctr r12
/* 801A32D8 001A0238  4E 80 04 21 */	bctrl
/* 801A32DC 001A023C  C0 01 00 08 */	lfs f0, 8(r1)
/* 801A32E0 001A0240  7F C3 F3 78 */	mr r3, r30
/* 801A32E4 001A0244  38 80 00 00 */	li r4, 0
/* 801A32E8 001A0248  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 801A32EC 001A024C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801A32F0 001A0250  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 801A32F4 001A0254  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801A32F8 001A0258  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 801A32FC 001A025C  4B FF BB 1D */	bl sub_8019ee18
/* 801A3300 001A0260  FC 20 F8 90 */	fmr f1, f31
/* 801A3304 001A0264  7F C3 F3 78 */	mr r3, r30
/* 801A3308 001A0268  7F E4 FB 78 */	mr r4, r31
/* 801A330C 001A026C  7F A5 EB 78 */	mr r5, r29
/* 801A3310 001A0270  48 05 33 BD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A3314 001A0274  3C 80 80 57 */	lis r4, lbl_80572018@ha
/* 801A3318 001A0278  7F C3 F3 78 */	mr r3, r30
/* 801A331C 001A027C  38 A4 20 18 */	addi r5, r4, lbl_80572018@l
/* 801A3320 001A0280  7F E4 FB 78 */	mr r4, r31
/* 801A3324 001A0284  4B FF C8 65 */	bl sub_8019fb88
/* 801A3328 001A0288  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A332C 001A028C  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 801A3330 001A0290  48 00 02 94 */	b lbl_801A35C4
lbl_801A3334:
/* 801A3334 001A0294  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801A3338 001A0298  2C 00 00 03 */	cmpwi r0, 3
/* 801A333C 001A029C  41 82 02 04 */	beq lbl_801A3540
/* 801A3340 001A02A0  40 80 02 84 */	bge lbl_801A35C4
/* 801A3344 001A02A4  2C 00 00 00 */	cmpwi r0, 0
/* 801A3348 001A02A8  41 82 00 08 */	beq lbl_801A3350
/* 801A334C 001A02AC  48 00 02 78 */	b lbl_801A35C4
lbl_801A3350:
/* 801A3350 001A02B0  C0 1E 09 5C */	lfs f0, 0x95c(r30)
/* 801A3354 001A02B4  EC 00 F8 2A */	fadds f0, f0, f31
/* 801A3358 001A02B8  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 801A335C 001A02BC  C0 3E 09 5C */	lfs f1, 0x95c(r30)
/* 801A3360 001A02C0  C0 1E 07 44 */	lfs f0, 0x744(r30)
/* 801A3364 001A02C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3368 001A02C8  40 80 01 CC */	bge lbl_801A3534
/* 801A336C 001A02CC  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 801A3370 001A02D0  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801A3374 001A02D4  40 82 00 DC */	bne lbl_801A3450
/* 801A3378 001A02D8  38 00 00 03 */	li r0, 3
/* 801A337C 001A02DC  39 00 00 01 */	li r8, 1
/* 801A3380 001A02E0  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A3384 001A02E4  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 801A3388 001A02E8  51 00 17 7A */	rlwimi r0, r8, 2, 0x1d, 0x1d
/* 801A338C 001A02EC  98 1E 0B 28 */	stb r0, 0xb28(r30)
/* 801A3390 001A02F0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801A3394 001A02F4  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 801A3398 001A02F8  2C 00 00 01 */	cmpwi r0, 1
/* 801A339C 001A02FC  40 82 00 08 */	bne lbl_801A33A4
/* 801A33A0 001A0300  39 00 00 02 */	li r8, 2
lbl_801A33A4:
/* 801A33A4 001A0304  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801A33A8 001A0308  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A33AC 001A030C  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 801A33B0 001A0310  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A33B4 001A0314  38 E5 AA 68 */	addi r7, r5, lbl_803DAA68@l
/* 801A33B8 001A0318  C0 44 00 00 */	lfs f2, 0(r4)
/* 801A33BC 001A031C  C0 24 00 04 */	lfs f1, 4(r4)
/* 801A33C0 001A0320  3C A0 80 3E */	lis r5, lbl_803DA9D8@ha
/* 801A33C4 001A0324  C0 04 00 08 */	lfs f0, 8(r4)
/* 801A33C8 001A0328  38 C0 00 05 */	li r6, 5
/* 801A33CC 001A032C  38 00 00 00 */	li r0, 0
/* 801A33D0 001A0330  3B E3 00 04 */	addi r31, r3, 4
/* 801A33D4 001A0334  90 E1 00 14 */	stw r7, 0x14(r1)
/* 801A33D8 001A0338  38 A5 A9 D8 */	addi r5, r5, lbl_803DA9D8@l
/* 801A33DC 001A033C  7F E3 FB 78 */	mr r3, r31
/* 801A33E0 001A0340  38 80 00 05 */	li r4, 5
/* 801A33E4 001A0344  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A33E8 001A0348  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801A33EC 001A034C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801A33F0 001A0350  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801A33F4 001A0354  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801A33F8 001A0358  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A33FC 001A035C  98 01 00 2C */	stb r0, 0x2c(r1)
/* 801A3400 001A0360  4B F8 E0 39 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A3404 001A0364  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801A3408 001A0368  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 801A340C 001A036C  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 801A3410 001A0370  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A3414 001A0374  90 1F 01 10 */	stw r0, 0x110(r31)
/* 801A3418 001A0378  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A341C 001A037C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801A3420 001A0380  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801A3424 001A0384  90 7F 01 14 */	stw r3, 0x114(r31)
/* 801A3428 001A0388  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801A342C 001A038C  90 BF 01 18 */	stw r5, 0x118(r31)
/* 801A3430 001A0390  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 801A3434 001A0394  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 801A3438 001A0398  88 61 00 2C */	lbz r3, 0x2c(r1)
/* 801A343C 001A039C  90 BF 01 20 */	stw r5, 0x120(r31)
/* 801A3440 001A03A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 801A3444 001A03A4  98 7F 01 24 */	stb r3, 0x124(r31)
/* 801A3448 001A03A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A344C 001A03AC  48 00 01 78 */	b lbl_801A35C4
lbl_801A3450:
/* 801A3450 001A03B0  7F C4 F3 78 */	mr r4, r30
/* 801A3454 001A03B4  38 61 00 30 */	addi r3, r1, 0x30
/* 801A3458 001A03B8  38 BE 0A F4 */	addi r5, r30, 0xaf4
/* 801A345C 001A03BC  4B ED 54 5D */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801A3460 001A03C0  38 61 00 60 */	addi r3, r1, 0x60
/* 801A3464 001A03C4  38 81 00 30 */	addi r4, r1, 0x30
/* 801A3468 001A03C8  48 16 F7 0D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801A346C 001A03CC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801A3470 001A03D0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 801A3474 001A03D4  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801A3478 001A03D8  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 801A347C 001A03DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A3480 001A03E0  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 801A3484 001A03E4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 801A3488 001A03E8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801A348C 001A03EC  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 801A3490 001A03F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A3494 001A03F4  C0 61 00 8C */	lfs f3, 0x8c(r1)
/* 801A3498 001A03F8  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 801A349C 001A03FC  EC 64 18 28 */	fsubs f3, f4, f3
/* 801A34A0 001A0400  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 801A34A4 001A0404  EC 21 00 BA */	fmadds f1, f1, f2, f0
/* 801A34A8 001A0408  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A34AC 001A040C  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 801A34B0 001A0410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A34B4 001A0414  40 81 00 74 */	ble lbl_801A3528
/* 801A34B8 001A0418  7F C3 F3 78 */	mr r3, r30
/* 801A34BC 001A041C  38 80 00 00 */	li r4, 0
/* 801A34C0 001A0420  4B FF B9 59 */	bl sub_8019ee18
/* 801A34C4 001A0424  7F C3 F3 78 */	mr r3, r30
/* 801A34C8 001A0428  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A34CC 001A042C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801A34D0 001A0430  7D 89 03 A6 */	mtctr r12
/* 801A34D4 001A0434  4E 80 04 21 */	bctrl
/* 801A34D8 001A0438  28 03 00 00 */	cmplwi r3, 0
/* 801A34DC 001A043C  41 82 00 40 */	beq lbl_801A351C
/* 801A34E0 001A0440  7F C3 F3 78 */	mr r3, r30
/* 801A34E4 001A0444  7F E4 FB 78 */	mr r4, r31
/* 801A34E8 001A0448  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A34EC 001A044C  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A34F0 001A0450  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801A34F4 001A0454  7D 89 03 A6 */	mtctr r12
/* 801A34F8 001A0458  4E 80 04 21 */	bctrl
/* 801A34FC 001A045C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3500 001A0460  40 82 00 1C */	bne lbl_801A351C
/* 801A3504 001A0464  FC 20 F8 90 */	fmr f1, f31
/* 801A3508 001A0468  7F C3 F3 78 */	mr r3, r30
/* 801A350C 001A046C  7F E4 FB 78 */	mr r4, r31
/* 801A3510 001A0470  7F A5 EB 78 */	mr r5, r29
/* 801A3514 001A0474  48 05 31 B9 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801A3518 001A0478  48 00 00 AC */	b lbl_801A35C4
lbl_801A351C:
/* 801A351C 001A047C  38 00 00 04 */	li r0, 4
/* 801A3520 001A0480  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A3524 001A0484  48 00 00 A0 */	b lbl_801A35C4
lbl_801A3528:
/* 801A3528 001A0488  38 00 00 04 */	li r0, 4
/* 801A352C 001A048C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A3530 001A0490  48 00 00 94 */	b lbl_801A35C4
lbl_801A3534:
/* 801A3534 001A0494  38 00 00 04 */	li r0, 4
/* 801A3538 001A0498  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A353C 001A049C  48 00 00 88 */	b lbl_801A35C4
lbl_801A3540:
/* 801A3540 001A04A0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A3544 001A04A4  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A3548 001A04A8  2C 00 00 07 */	cmpwi r0, 7
/* 801A354C 001A04AC  41 82 00 78 */	beq lbl_801A35C4
/* 801A3550 001A04B0  38 00 00 04 */	li r0, 4
/* 801A3554 001A04B4  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801A3558 001A04B8  48 00 00 6C */	b lbl_801A35C4
lbl_801A355C:
/* 801A355C 001A04BC  4B FF E2 39 */	bl sub_801a1794
/* 801A3560 001A04C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3564 001A04C4  40 82 00 1C */	bne lbl_801A3580
/* 801A3568 001A04C8  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801A356C 001A04CC  48 16 EF 71 */	bl Float__9CRandom16Fv
/* 801A3570 001A04D0  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 801A3574 001A04D4  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 801A3578 001A04D8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801A357C 001A04DC  D0 1E 09 54 */	stfs f0, 0x954(r30)
lbl_801A3580:
/* 801A3580 001A04E0  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801A3584 001A04E4  7F C3 F3 78 */	mr r3, r30
/* 801A3588 001A04E8  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 801A358C 001A04EC  7F E4 FB 78 */	mr r4, r31
/* 801A3590 001A04F0  4B FF C5 F9 */	bl sub_8019fb88
/* 801A3594 001A04F4  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 801A3598 001A04F8  38 60 00 00 */	li r3, 0
/* 801A359C 001A04FC  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801A35A0 001A0500  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A35A4 001A0504  98 1E 0B 28 */	stb r0, 0xb28(r30)
/* 801A35A8 001A0508  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 801A35AC 001A050C  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 801A35B0 001A0510  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801A35B4 001A0514  98 1E 0B 28 */	stb r0, 0xb28(r30)
/* 801A35B8 001A0518  C0 3E 07 48 */	lfs f1, 0x748(r30)
/* 801A35BC 001A051C  D0 3E 09 60 */	stfs f1, 0x960(r30)
/* 801A35C0 001A0520  D0 1E 09 5C */	stfs f0, 0x95c(r30)
lbl_801A35C4:
/* 801A35C4 001A0524  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A35C8 001A0528  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 801A35CC 001A052C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 801A35D0 001A0530  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801A35D4 001A0534  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801A35D8 001A0538  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801A35DC 001A053C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 801A35E0 001A0540  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 801A35E4 001A0544  7C 08 03 A6 */	mtlr r0
/* 801A35E8 001A0548  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801A35EC 001A054C  4E 80 00 20 */	blr

.global ProjectileAttack__12CIceSheegothR13CStateManager9EStateMsgf
ProjectileAttack__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A35F0 001A0550  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A35F4 001A0554  7C 08 02 A6 */	mflr r0
/* 801A35F8 001A0558  2C 05 00 01 */	cmpwi r5, 1
/* 801A35FC 001A055C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A3600 001A0560  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801A3604 001A0564  7C 7F 1B 78 */	mr r31, r3
/* 801A3608 001A0568  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801A360C 001A056C  7C 9E 23 78 */	mr r30, r4
/* 801A3610 001A0570  41 82 00 64 */	beq lbl_801A3674
/* 801A3614 001A0574  40 80 00 10 */	bge lbl_801A3624
/* 801A3618 001A0578  2C 05 00 00 */	cmpwi r5, 0
/* 801A361C 001A057C  40 80 00 14 */	bge lbl_801A3630
/* 801A3620 001A0580  48 00 02 1C */	b lbl_801A383C
lbl_801A3624:
/* 801A3624 001A0584  2C 05 00 03 */	cmpwi r5, 3
/* 801A3628 001A0588  40 80 02 14 */	bge lbl_801A383C
/* 801A362C 001A058C  48 00 01 54 */	b lbl_801A3780
lbl_801A3630:
/* 801A3630 001A0590  38 E0 00 00 */	li r7, 0
/* 801A3634 001A0594  38 C0 00 01 */	li r6, 1
/* 801A3638 001A0598  90 FF 05 68 */	stw r7, 0x568(r31)
/* 801A363C 001A059C  38 A0 00 01 */	li r5, 1
/* 801A3640 001A05A0  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A3644 001A05A4  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A3648 001A05A8  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 801A364C 001A05AC  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 801A3650 001A05B0  88 1F 0B 29 */	lbz r0, 0xb29(r31)
/* 801A3654 001A05B4  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 801A3658 001A05B8  98 1F 0B 29 */	stb r0, 0xb29(r31)
/* 801A365C 001A05BC  88 1F 0B 29 */	lbz r0, 0xb29(r31)
/* 801A3660 001A05C0  50 E0 26 F6 */	rlwimi r0, r7, 4, 0x1b, 0x1b
/* 801A3664 001A05C4  98 1F 0B 29 */	stb r0, 0xb29(r31)
/* 801A3668 001A05C8  D0 1F 09 68 */	stfs f0, 0x968(r31)
/* 801A366C 001A05CC  4B FF B3 61 */	bl sub_8019e9cc
/* 801A3670 001A05D0  48 00 01 CC */	b lbl_801A383C
lbl_801A3674:
/* 801A3674 001A05D4  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801A3678 001A05D8  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801A367C 001A05DC  2C 00 00 03 */	cmpwi r0, 3
/* 801A3680 001A05E0  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801A3684 001A05E4  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801A3688 001A05E8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801A368C 001A05EC  41 82 00 D8 */	beq lbl_801A3764
/* 801A3690 001A05F0  40 80 01 AC */	bge lbl_801A383C
/* 801A3694 001A05F4  2C 00 00 00 */	cmpwi r0, 0
/* 801A3698 001A05F8  41 82 00 08 */	beq lbl_801A36A0
/* 801A369C 001A05FC  48 00 01 A0 */	b lbl_801A383C
lbl_801A36A0:
/* 801A36A0 001A0600  80 FF 04 50 */	lwz r7, 0x450(r31)
/* 801A36A4 001A0604  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 801A36A8 001A0608  2C 00 00 12 */	cmpwi r0, 0x12
/* 801A36AC 001A060C  40 82 00 20 */	bne lbl_801A36CC
/* 801A36B0 001A0610  38 00 00 03 */	li r0, 3
/* 801A36B4 001A0614  C0 22 A7 74 */	lfs f1, lbl_805AC494@sda21(r2)
/* 801A36B8 001A0618  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A36BC 001A061C  C0 1F 09 4C */	lfs f0, 0x94c(r31)
/* 801A36C0 001A0620  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A36C4 001A0624  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 801A36C8 001A0628  48 00 01 74 */	b lbl_801A383C
lbl_801A36CC:
/* 801A36CC 001A062C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801A36D0 001A0630  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 801A36D4 001A0634  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801A36D8 001A0638  38 80 00 06 */	li r4, 6
/* 801A36DC 001A063C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A36E0 001A0640  38 C3 A9 CC */	addi r6, r3, lbl_803DA9CC@l
/* 801A36E4 001A0644  38 A0 00 02 */	li r5, 2
/* 801A36E8 001A0648  38 00 00 00 */	li r0, 0
/* 801A36EC 001A064C  3B E7 00 04 */	addi r31, r7, 4
/* 801A36F0 001A0650  90 81 00 18 */	stw r4, 0x18(r1)
/* 801A36F4 001A0654  7F E3 FB 78 */	mr r3, r31
/* 801A36F8 001A0658  38 80 00 06 */	li r4, 6
/* 801A36FC 001A065C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801A3700 001A0660  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 801A3704 001A0664  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A3708 001A0668  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801A370C 001A066C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801A3710 001A0670  98 01 00 2C */	stb r0, 0x2c(r1)
/* 801A3714 001A0674  4B F8 DD 25 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A3718 001A0678  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801A371C 001A067C  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 801A3720 001A0680  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 801A3724 001A0684  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A3728 001A0688  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 801A372C 001A068C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A3730 001A0690  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801A3734 001A0694  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801A3738 001A0698  90 7F 01 30 */	stw r3, 0x130(r31)
/* 801A373C 001A069C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801A3740 001A06A0  90 BF 01 34 */	stw r5, 0x134(r31)
/* 801A3744 001A06A4  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 801A3748 001A06A8  90 7F 01 38 */	stw r3, 0x138(r31)
/* 801A374C 001A06AC  88 61 00 2C */	lbz r3, 0x2c(r1)
/* 801A3750 001A06B0  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 801A3754 001A06B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 801A3758 001A06B8  98 7F 01 40 */	stb r3, 0x140(r31)
/* 801A375C 001A06BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A3760 001A06C0  48 00 00 DC */	b lbl_801A383C
lbl_801A3764:
/* 801A3764 001A06C4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A3768 001A06C8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801A376C 001A06CC  2C 00 00 12 */	cmpwi r0, 0x12
/* 801A3770 001A06D0  41 82 00 CC */	beq lbl_801A383C
/* 801A3774 001A06D4  38 00 00 04 */	li r0, 4
/* 801A3778 001A06D8  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801A377C 001A06DC  48 00 00 C0 */	b lbl_801A383C
lbl_801A3780:
/* 801A3780 001A06E0  C0 1F 09 4C */	lfs f0, 0x94c(r31)
/* 801A3784 001A06E4  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 801A3788 001A06E8  4B FF E0 0D */	bl sub_801a1794
/* 801A378C 001A06EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3790 001A06F0  40 82 00 1C */	bne lbl_801A37AC
/* 801A3794 001A06F4  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801A3798 001A06F8  48 16 ED 45 */	bl Float__9CRandom16Fv
/* 801A379C 001A06FC  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 801A37A0 001A0700  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 801A37A4 001A0704  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801A37A8 001A0708  D0 1F 09 54 */	stfs f0, 0x954(r31)
lbl_801A37AC:
/* 801A37AC 001A070C  A0 1F 0A 80 */	lhz r0, 0xa80(r31)
/* 801A37B0 001A0710  7F C3 F3 78 */	mr r3, r30
/* 801A37B4 001A0714  38 81 00 08 */	addi r4, r1, 8
/* 801A37B8 001A0718  B0 01 00 08 */	sth r0, 8(r1)
/* 801A37BC 001A071C  4B EA 8D B9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801A37C0 001A0720  28 03 00 00 */	cmplwi r3, 0
/* 801A37C4 001A0724  41 82 00 10 */	beq lbl_801A37D4
/* 801A37C8 001A0728  7F C4 F3 78 */	mr r4, r30
/* 801A37CC 001A072C  38 A0 00 00 */	li r5, 0
/* 801A37D0 001A0730  4B FF 49 F1 */	bl Reset__13CFlameThrowerFR13CStateManagerb
lbl_801A37D4:
/* 801A37D4 001A0734  7F E3 FB 78 */	mr r3, r31
/* 801A37D8 001A0738  7F C4 F3 78 */	mr r4, r30
/* 801A37DC 001A073C  38 A0 00 00 */	li r5, 0
/* 801A37E0 001A0740  4B FF B1 ED */	bl sub_8019e9cc
/* 801A37E4 001A0744  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801A37E8 001A0748  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801A37EC 001A074C  2C 00 00 12 */	cmpwi r0, 0x12
/* 801A37F0 001A0750  40 82 00 30 */	bne lbl_801A3820
/* 801A37F4 001A0754  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A37F8 001A0758  38 00 00 0C */	li r0, 0xc
/* 801A37FC 001A075C  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 801A3800 001A0760  90 01 00 10 */	stw r0, 0x10(r1)
/* 801A3804 001A0764  38 64 00 04 */	addi r3, r4, 4
/* 801A3808 001A0768  38 81 00 0C */	addi r4, r1, 0xc
/* 801A380C 001A076C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801A3810 001A0770  4B F8 DF A9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801A3814 001A0774  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A3818 001A0778  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A381C 001A077C  90 01 00 0C */	stw r0, 0xc(r1)
lbl_801A3820:
/* 801A3820 001A0780  88 1F 0B 29 */	lbz r0, 0xb29(r31)
/* 801A3824 001A0784  38 60 00 00 */	li r3, 0
/* 801A3828 001A0788  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801A382C 001A078C  98 1F 0B 29 */	stb r0, 0xb29(r31)
/* 801A3830 001A0790  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A3834 001A0794  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801A3838 001A0798  98 1F 0B 28 */	stb r0, 0xb28(r31)
lbl_801A383C:
/* 801A383C 001A079C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A3840 001A07A0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801A3844 001A07A4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801A3848 001A07A8  7C 08 03 A6 */	mtlr r0
/* 801A384C 001A07AC  38 21 00 40 */	addi r1, r1, 0x40
/* 801A3850 001A07B0  4E 80 00 20 */	blr

.global Patrol__12CIceSheegothR13CStateManager9EStateMsgf
Patrol__12CIceSheegothR13CStateManager9EStateMsgf:
/* 801A3854 001A07B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A3858 001A07B8  7C 08 02 A6 */	mflr r0
/* 801A385C 001A07BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A3860 001A07C0  48 05 36 15 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 801A3864 001A07C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A3868 001A07C8  7C 08 03 A6 */	mtlr r0
/* 801A386C 001A07CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A3870 001A07D0  4E 80 00 20 */	blr

.global sub_801a3874
sub_801a3874:
/* 801A3874 001A07D4  80 03 05 68 */	lwz r0, 0x568(r3)
/* 801A3878 001A07D8  20 00 00 04 */	subfic r0, r0, 4
/* 801A387C 001A07DC  7C 00 00 34 */	cntlzw r0, r0
/* 801A3880 001A07E0  54 03 D9 7E */	srwi r3, r0, 5
/* 801A3884 001A07E4  4E 80 00 20 */	blr

.global SpotPlayer__12CIceSheegothR13CStateManagerf
SpotPlayer__12CIceSheegothR13CStateManagerf:
/* 801A3888 001A07E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A388C 001A07EC  7C 08 02 A6 */	mflr r0
/* 801A3890 001A07F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A3894 001A07F4  88 03 0B 28 */	lbz r0, 0xb28(r3)
/* 801A3898 001A07F8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801A389C 001A07FC  41 82 00 08 */	beq lbl_801A38A4
/* 801A38A0 001A0800  48 00 00 0C */	b lbl_801A38AC
lbl_801A38A4:
/* 801A38A4 001A0804  48 05 29 59 */	bl SpotPlayer__10CPatternedFR13CStateManagerf
/* 801A38A8 001A0808  7C 60 1B 78 */	mr r0, r3
lbl_801A38AC:
/* 801A38AC 001A080C  7C 03 03 78 */	mr r3, r0
/* 801A38B0 001A0810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A38B4 001A0814  7C 08 03 A6 */	mtlr r0
/* 801A38B8 001A0818  38 21 00 10 */	addi r1, r1, 0x10
/* 801A38BC 001A081C  4E 80 00 20 */	blr

.global InDetectionRange__12CIceSheegothR13CStateManagerf
InDetectionRange__12CIceSheegothR13CStateManagerf:
/* 801A38C0 001A0820  88 03 0B 28 */	lbz r0, 0xb28(r3)
/* 801A38C4 001A0824  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801A38C8 001A0828  40 82 00 90 */	bne lbl_801A3958
/* 801A38CC 001A082C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801A38D0 001A0830  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A38D4 001A0834  C0 A4 00 40 */	lfs f5, 0x40(r4)
/* 801A38D8 001A0838  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 801A38DC 001A083C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A38E0 001A0840  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 801A38E4 001A0844  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 801A38E8 001A0848  EC A5 10 28 */	fsubs f5, f5, f2
/* 801A38EC 001A084C  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801A38F0 001A0850  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801A38F4 001A0854  EC 84 18 28 */	fsubs f4, f4, f3
/* 801A38F8 001A0858  EC 62 00 28 */	fsubs f3, f2, f0
/* 801A38FC 001A085C  40 81 00 08 */	ble lbl_801A3904
/* 801A3900 001A0860  48 00 00 08 */	b lbl_801A3908
lbl_801A3904:
/* 801A3904 001A0864  C0 22 A7 60 */	lfs f1, lbl_805AC480@sda21(r2)
lbl_801A3908:
/* 801A3908 001A0868  EC 04 01 32 */	fmuls f0, f4, f4
/* 801A390C 001A086C  C0 43 03 BC */	lfs f2, 0x3bc(r3)
/* 801A3910 001A0870  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801A3914 001A0874  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801A3918 001A0878  EC 25 01 7A */	fmadds f1, f5, f5, f0
/* 801A391C 001A087C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801A3920 001A0880  EC 23 08 2A */	fadds f1, f3, f1
/* 801A3924 001A0884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3928 001A0888  40 80 00 30 */	bge lbl_801A3958
/* 801A392C 001A088C  C0 23 03 C0 */	lfs f1, 0x3c0(r3)
/* 801A3930 001A0890  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A3934 001A0894  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3938 001A0898  40 81 00 18 */	ble lbl_801A3950
/* 801A393C 001A089C  EC 01 00 72 */	fmuls f0, f1, f1
/* 801A3940 001A08A0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801A3944 001A08A4  7C 00 00 26 */	mfcr r0
/* 801A3948 001A08A8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801A394C 001A08AC  4E 80 00 20 */	blr
lbl_801A3950:
/* 801A3950 001A08B0  38 60 00 01 */	li r3, 1
/* 801A3954 001A08B4  4E 80 00 20 */	blr
lbl_801A3958:
/* 801A3958 001A08B8  7C 03 03 78 */	mr r3, r0
/* 801A395C 001A08BC  4E 80 00 20 */	blr

.global InPosition__12CIceSheegothR13CStateManagerf
InPosition__12CIceSheegothR13CStateManagerf:
/* 801A3960 001A08C0  C0 23 09 30 */	lfs f1, 0x930(r3)
/* 801A3964 001A08C4  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801A3968 001A08C8  C0 63 09 2C */	lfs f3, 0x92c(r3)
/* 801A396C 001A08CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801A3970 001A08D0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801A3974 001A08D4  C0 43 09 34 */	lfs f2, 0x934(r3)
/* 801A3978 001A08D8  EC 63 00 28 */	fsubs f3, f3, f0
/* 801A397C 001A08DC  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801A3980 001A08E0  EC 21 00 72 */	fmuls f1, f1, f1
/* 801A3984 001A08E4  EC 42 00 28 */	fsubs f2, f2, f0
/* 801A3988 001A08E8  C0 02 A7 D0 */	lfs f0, lbl_805AC4F0@sda21(r2)
/* 801A398C 001A08EC  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 801A3990 001A08F0  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801A3994 001A08F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3998 001A08F8  7C 00 00 26 */	mfcr r0
/* 801A399C 001A08FC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801A39A0 001A0900  4E 80 00 20 */	blr

.global AggressionCheck__12CIceSheegothR13CStateManagerf
AggressionCheck__12CIceSheegothR13CStateManagerf:
/* 801A39A4 001A0904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A39A8 001A0908  7C 08 02 A6 */	mflr r0
/* 801A39AC 001A090C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A39B0 001A0910  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801A39B4 001A0914  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801A39B8 001A0918  41 82 00 24 */	beq lbl_801A39DC
/* 801A39BC 001A091C  88 03 0B 28 */	lbz r0, 0xb28(r3)
/* 801A39C0 001A0920  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801A39C4 001A0924  40 82 00 18 */	bne lbl_801A39DC
/* 801A39C8 001A0928  4B FF DD CD */	bl sub_801a1794
/* 801A39CC 001A092C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A39D0 001A0930  41 82 00 0C */	beq lbl_801A39DC
/* 801A39D4 001A0934  38 60 00 01 */	li r3, 1
/* 801A39D8 001A0938  48 00 00 08 */	b lbl_801A39E0
lbl_801A39DC:
/* 801A39DC 001A093C  38 60 00 00 */	li r3, 0
lbl_801A39E0:
/* 801A39E0 001A0940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A39E4 001A0944  7C 08 03 A6 */	mtlr r0
/* 801A39E8 001A0948  38 21 00 10 */	addi r1, r1, 0x10
/* 801A39EC 001A094C  4E 80 00 20 */	blr

.global ShouldFlinch__12CIceSheegothR13CStateManagerf
ShouldFlinch__12CIceSheegothR13CStateManagerf:
/* 801A39F0 001A0950  88 03 0B 29 */	lbz r0, 0xb29(r3)
/* 801A39F4 001A0954  38 80 00 00 */	li r4, 0
/* 801A39F8 001A0958  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801A39FC 001A095C  41 82 00 18 */	beq lbl_801A3A14
/* 801A3A00 001A0960  C0 23 09 7C */	lfs f1, 0x97c(r3)
/* 801A3A04 001A0964  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A3A08 001A0968  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3A0C 001A096C  40 81 00 08 */	ble lbl_801A3A14
/* 801A3A10 001A0970  38 80 00 01 */	li r4, 1
lbl_801A3A14:
/* 801A3A14 001A0974  7C 83 23 78 */	mr r3, r4
/* 801A3A18 001A0978  4E 80 00 20 */	blr

.global ShouldTurn__12CIceSheegothR13CStateManagerf
ShouldTurn__12CIceSheegothR13CStateManagerf:
/* 801A3A1C 001A097C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801A3A20 001A0980  7C 08 02 A6 */	mflr r0
/* 801A3A24 001A0984  90 01 00 74 */	stw r0, 0x74(r1)
/* 801A3A28 001A0988  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801A3A2C 001A098C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801A3A30 001A0990  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801A3A34 001A0994  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A3A38 001A0998  7C 7F 1B 78 */	mr r31, r3
/* 801A3A3C 001A099C  7C 85 23 78 */	mr r5, r4
/* 801A3A40 001A09A0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801A3A44 001A09A4  40 82 00 0C */	bne lbl_801A3A50
/* 801A3A48 001A09A8  C3 E2 A7 D4 */	lfs f31, lbl_805AC4F4@sda21(r2)
/* 801A3A4C 001A09AC  48 00 00 08 */	b lbl_801A3A54
lbl_801A3A50:
/* 801A3A50 001A09B0  FF E0 08 90 */	fmr f31, f1
lbl_801A3A54:
/* 801A3A54 001A09B4  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 801A3A58 001A09B8  38 61 00 40 */	addi r3, r1, 0x40
/* 801A3A5C 001A09BC  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A3A60 001A09C0  81 84 00 00 */	lwz r12, 0(r4)
/* 801A3A64 001A09C4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801A3A68 001A09C8  7D 89 03 A6 */	mtctr r12
/* 801A3A6C 001A09CC  4E 80 04 21 */	bctrl
/* 801A3A70 001A09D0  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 801A3A74 001A09D4  38 61 00 10 */	addi r3, r1, 0x10
/* 801A3A78 001A09D8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801A3A7C 001A09DC  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 801A3A80 001A09E0  EC 42 00 28 */	fsubs f2, f2, f0
/* 801A3A84 001A09E4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801A3A88 001A09E8  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 801A3A8C 001A09EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801A3A90 001A09F0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801A3A94 001A09F4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801A3A98 001A09F8  EC 03 00 28 */	fsubs f0, f3, f0
/* 801A3A9C 001A09FC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801A3AA0 001A0A00  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801A3AA4 001A0A04  48 17 07 5D */	bl __ct__9CVector2fFff
/* 801A3AA8 001A0A08  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801A3AAC 001A0A0C  38 61 00 08 */	addi r3, r1, 8
/* 801A3AB0 001A0A10  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801A3AB4 001A0A14  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801A3AB8 001A0A18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801A3ABC 001A0A1C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 801A3AC0 001A0A20  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801A3AC4 001A0A24  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 801A3AC8 001A0A28  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801A3ACC 001A0A2C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801A3AD0 001A0A30  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801A3AD4 001A0A34  48 17 07 2D */	bl __ct__9CVector2fFff
/* 801A3AD8 001A0A38  C0 21 00 08 */	lfs f1, 8(r1)
/* 801A3ADC 001A0A3C  38 61 00 18 */	addi r3, r1, 0x18
/* 801A3AE0 001A0A40  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801A3AE4 001A0A44  38 81 00 20 */	addi r4, r1, 0x20
/* 801A3AE8 001A0A48  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A3AEC 001A0A4C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A3AF0 001A0A50  48 17 04 D5 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 801A3AF4 001A0A54  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 801A3AF8 001A0A58  7C 00 00 26 */	mfcr r0
/* 801A3AFC 001A0A5C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801A3B00 001A0A60  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801A3B04 001A0A64  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801A3B08 001A0A68  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801A3B0C 001A0A6C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801A3B10 001A0A70  7C 08 03 A6 */	mtlr r0
/* 801A3B14 001A0A74  38 21 00 70 */	addi r1, r1, 0x70
/* 801A3B18 001A0A78  4E 80 00 20 */	blr

.global ShouldFire__12CIceSheegothR13CStateManagerf
ShouldFire__12CIceSheegothR13CStateManagerf:
/* 801A3B1C 001A0A7C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801A3B20 001A0A80  7C 08 02 A6 */	mflr r0
/* 801A3B24 001A0A84  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801A3B28 001A0A88  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801A3B2C 001A0A8C  7C 9F 23 78 */	mr r31, r4
/* 801A3B30 001A0A90  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801A3B34 001A0A94  7C 7E 1B 78 */	mr r30, r3
/* 801A3B38 001A0A98  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 801A3B3C 001A0A9C  80 63 00 04 */	lwz r3, 4(r3)
/* 801A3B40 001A0AA0  80 05 00 04 */	lwz r0, 4(r5)
/* 801A3B44 001A0AA4  7C 03 00 00 */	cmpw r3, r0
/* 801A3B48 001A0AA8  40 82 01 14 */	bne lbl_801A3C5C
/* 801A3B4C 001A0AAC  C0 3E 09 54 */	lfs f1, 0x954(r30)
/* 801A3B50 001A0AB0  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A3B54 001A0AB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3B58 001A0AB8  4C 40 13 82 */	cror 2, 0, 2
/* 801A3B5C 001A0ABC  40 82 01 00 */	bne lbl_801A3C5C
/* 801A3B60 001A0AC0  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 801A3B64 001A0AC4  7F C4 F3 78 */	mr r4, r30
/* 801A3B68 001A0AC8  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 801A3B6C 001A0ACC  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A3B70 001A0AD0  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801A3B74 001A0AD4  38 BE 0A F4 */	addi r5, r30, 0xaf4
/* 801A3B78 001A0AD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A3B7C 001A0ADC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801A3B80 001A0AE0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801A3B84 001A0AE4  4B ED 4D 35 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801A3B88 001A0AE8  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A3B8C 001A0AEC  38 81 00 2C */	addi r4, r1, 0x2c
/* 801A3B90 001A0AF0  48 16 EF E5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801A3B94 001A0AF4  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 801A3B98 001A0AF8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801A3B9C 001A0AFC  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 801A3BA0 001A0B00  EC 60 08 28 */	fsubs f3, f0, f1
/* 801A3BA4 001A0B04  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801A3BA8 001A0B08  C0 A1 00 88 */	lfs f5, 0x88(r1)
/* 801A3BAC 001A0B0C  EC 80 10 28 */	fsubs f4, f0, f2
/* 801A3BB0 001A0B10  C0 C1 00 28 */	lfs f6, 0x28(r1)
/* 801A3BB4 001A0B14  EC 03 00 F2 */	fmuls f0, f3, f3
/* 801A3BB8 001A0B18  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801A3BBC 001A0B1C  EC 46 28 28 */	fsubs f2, f6, f5
/* 801A3BC0 001A0B20  EC 04 01 3A */	fmadds f0, f4, f4, f0
/* 801A3BC4 001A0B24  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A3BC8 001A0B28  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 801A3BCC 001A0B2C  EC 22 00 BA */	fmadds f1, f2, f2, f0
/* 801A3BD0 001A0B30  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 801A3BD4 001A0B34  C0 1E 03 00 */	lfs f0, 0x300(r30)
/* 801A3BD8 001A0B38  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801A3BDC 001A0B3C  EC C6 20 28 */	fsubs f6, f6, f4
/* 801A3BE0 001A0B40  EC 00 00 32 */	fmuls f0, f0, f0
/* 801A3BE4 001A0B44  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 801A3BE8 001A0B48  EC A5 20 28 */	fsubs f5, f5, f4
/* 801A3BEC 001A0B4C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801A3BF0 001A0B50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3BF4 001A0B54  D0 41 00 08 */	stfs f2, 8(r1)
/* 801A3BF8 001A0B58  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 801A3BFC 001A0B5C  4C 40 13 82 */	cror 2, 0, 2
/* 801A3C00 001A0B60  40 82 00 5C */	bne lbl_801A3C5C
/* 801A3C04 001A0B64  FC 00 32 10 */	fabs f0, f6
/* 801A3C08 001A0B68  FC 00 00 18 */	frsp f0, f0
/* 801A3C0C 001A0B6C  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 801A3C10 001A0B70  40 80 00 4C */	bge lbl_801A3C5C
/* 801A3C14 001A0B74  7F C3 F3 78 */	mr r3, r30
/* 801A3C18 001A0B78  7F E4 FB 78 */	mr r4, r31
/* 801A3C1C 001A0B7C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A3C20 001A0B80  C0 22 A7 C4 */	lfs f1, lbl_805AC4E4@sda21(r2)
/* 801A3C24 001A0B84  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 801A3C28 001A0B88  7D 89 03 A6 */	mtctr r12
/* 801A3C2C 001A0B8C  4E 80 04 21 */	bctrl
/* 801A3C30 001A0B90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3C34 001A0B94  40 82 00 28 */	bne lbl_801A3C5C
/* 801A3C38 001A0B98  7F C3 F3 78 */	mr r3, r30
/* 801A3C3C 001A0B9C  7F E4 FB 78 */	mr r4, r31
/* 801A3C40 001A0BA0  38 A1 00 14 */	addi r5, r1, 0x14
/* 801A3C44 001A0BA4  38 C1 00 20 */	addi r6, r1, 0x20
/* 801A3C48 001A0BA8  48 05 11 89 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801A3C4C 001A0BAC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801A3C50 001A0BB0  7C 00 00 34 */	cntlzw r0, r0
/* 801A3C54 001A0BB4  54 03 D9 7E */	srwi r3, r0, 5
/* 801A3C58 001A0BB8  48 00 00 08 */	b lbl_801A3C60
lbl_801A3C5C:
/* 801A3C5C 001A0BBC  38 60 00 00 */	li r3, 0
lbl_801A3C60:
/* 801A3C60 001A0BC0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801A3C64 001A0BC4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801A3C68 001A0BC8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 801A3C6C 001A0BCC  7C 08 03 A6 */	mtlr r0
/* 801A3C70 001A0BD0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801A3C74 001A0BD4  4E 80 00 20 */	blr

.global ShouldDoubleSnap__12CIceSheegothR13CStateManagerf
ShouldDoubleSnap__12CIceSheegothR13CStateManagerf:
/* 801A3C78 001A0BD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A3C7C 001A0BDC  7C 08 02 A6 */	mflr r0
/* 801A3C80 001A0BE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A3C84 001A0BE4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801A3C88 001A0BE8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801A3C8C 001A0BEC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801A3C90 001A0BF0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 801A3C94 001A0BF4  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 801A3C98 001A0BF8  F3 A1 00 18 */	psq_st f29, 24(r1), 0, qr0
/* 801A3C9C 001A0BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A3CA0 001A0C00  93 C1 00 08 */	stw r30, 8(r1)
/* 801A3CA4 001A0C04  7C 9F 23 78 */	mr r31, r4
/* 801A3CA8 001A0C08  7C 7E 1B 78 */	mr r30, r3
/* 801A3CAC 001A0C0C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801A3CB0 001A0C10  80 A3 00 04 */	lwz r5, 4(r3)
/* 801A3CB4 001A0C14  80 04 00 04 */	lwz r0, 4(r4)
/* 801A3CB8 001A0C18  7C 05 00 00 */	cmpw r5, r0
/* 801A3CBC 001A0C1C  40 82 00 A4 */	bne lbl_801A3D60
/* 801A3CC0 001A0C20  C0 3E 09 58 */	lfs f1, 0x958(r30)
/* 801A3CC4 001A0C24  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A3CC8 001A0C28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3CCC 001A0C2C  4C 40 13 82 */	cror 2, 0, 2
/* 801A3CD0 001A0C30  40 82 00 90 */	bne lbl_801A3D60
/* 801A3CD4 001A0C34  38 80 00 01 */	li r4, 1
/* 801A3CD8 001A0C38  4B FF B1 41 */	bl sub_8019ee18
/* 801A3CDC 001A0C3C  7F C3 F3 78 */	mr r3, r30
/* 801A3CE0 001A0C40  C0 3E 09 2C */	lfs f1, 0x92c(r30)
/* 801A3CE4 001A0C44  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A3CE8 001A0C48  7F E4 FB 78 */	mr r4, r31
/* 801A3CEC 001A0C4C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801A3CF0 001A0C50  3B E0 00 00 */	li r31, 0
/* 801A3CF4 001A0C54  C0 7E 09 30 */	lfs f3, 0x930(r30)
/* 801A3CF8 001A0C58  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801A3CFC 001A0C5C  EF A1 00 28 */	fsubs f29, f1, f0
/* 801A3D00 001A0C60  C0 3E 09 34 */	lfs f1, 0x934(r30)
/* 801A3D04 001A0C64  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801A3D08 001A0C68  EF C3 10 28 */	fsubs f30, f3, f2
/* 801A3D0C 001A0C6C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801A3D10 001A0C70  EF E1 00 28 */	fsubs f31, f1, f0
/* 801A3D14 001A0C74  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A3D18 001A0C78  7D 89 03 A6 */	mtctr r12
/* 801A3D1C 001A0C7C  4E 80 04 21 */	bctrl
/* 801A3D20 001A0C80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3D24 001A0C84  40 82 00 30 */	bne lbl_801A3D54
/* 801A3D28 001A0C88  80 7E 08 48 */	lwz r3, 0x848(r30)
/* 801A3D2C 001A0C8C  80 9E 09 0C */	lwz r4, 0x90c(r30)
/* 801A3D30 001A0C90  38 03 FF FF */	addi r0, r3, -1
/* 801A3D34 001A0C94  7C 04 00 00 */	cmpw r4, r0
/* 801A3D38 001A0C98  40 80 00 1C */	bge lbl_801A3D54
/* 801A3D3C 001A0C9C  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 801A3D40 001A0CA0  C0 02 A7 D0 */	lfs f0, lbl_805AC4F0@sda21(r2)
/* 801A3D44 001A0CA4  EC 3D 0F 7A */	fmadds f1, f29, f29, f1
/* 801A3D48 001A0CA8  EC 3F 0F FA */	fmadds f1, f31, f31, f1
/* 801A3D4C 001A0CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3D50 001A0CB0  40 80 00 08 */	bge lbl_801A3D58
lbl_801A3D54:
/* 801A3D54 001A0CB4  3B E0 00 01 */	li r31, 1
lbl_801A3D58:
/* 801A3D58 001A0CB8  7F E3 FB 78 */	mr r3, r31
/* 801A3D5C 001A0CBC  48 00 00 08 */	b lbl_801A3D64
lbl_801A3D60:
/* 801A3D60 001A0CC0  38 60 00 00 */	li r3, 0
lbl_801A3D64:
/* 801A3D64 001A0CC4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801A3D68 001A0CC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801A3D6C 001A0CCC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 801A3D70 001A0CD0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801A3D74 001A0CD4  E3 A1 00 18 */	psq_l f29, 24(r1), 0, qr0
/* 801A3D78 001A0CD8  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 801A3D7C 001A0CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A3D80 001A0CE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A3D84 001A0CE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A3D88 001A0CE8  7C 08 03 A6 */	mtlr r0
/* 801A3D8C 001A0CEC  38 21 00 40 */	addi r1, r1, 0x40
/* 801A3D90 001A0CF0  4E 80 00 20 */	blr

.global ShouldSpecialAttack__12CIceSheegothR13CStateManagerf
ShouldSpecialAttack__12CIceSheegothR13CStateManagerf:
/* 801A3D94 001A0CF4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801A3D98 001A0CF8  7C 08 02 A6 */	mflr r0
/* 801A3D9C 001A0CFC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801A3DA0 001A0D00  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801A3DA4 001A0D04  7C 9F 23 78 */	mr r31, r4
/* 801A3DA8 001A0D08  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801A3DAC 001A0D0C  7C 7E 1B 78 */	mr r30, r3
/* 801A3DB0 001A0D10  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801A3DB4 001A0D14  80 A3 00 04 */	lwz r5, 4(r3)
/* 801A3DB8 001A0D18  80 04 00 04 */	lwz r0, 4(r4)
/* 801A3DBC 001A0D1C  7C 05 00 00 */	cmpw r5, r0
/* 801A3DC0 001A0D20  40 82 01 2C */	bne lbl_801A3EEC
/* 801A3DC4 001A0D24  C0 3E 09 54 */	lfs f1, 0x954(r30)
/* 801A3DC8 001A0D28  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A3DCC 001A0D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3DD0 001A0D30  4C 40 13 82 */	cror 2, 0, 2
/* 801A3DD4 001A0D34  40 82 01 18 */	bne lbl_801A3EEC
/* 801A3DD8 001A0D38  C0 22 A7 68 */	lfs f1, lbl_805AC488@sda21(r2)
/* 801A3DDC 001A0D3C  C0 1E 06 DC */	lfs f0, 0x6dc(r30)
/* 801A3DE0 001A0D40  C0 5E 09 74 */	lfs f2, 0x974(r30)
/* 801A3DE4 001A0D44  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A3DE8 001A0D48  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A3DEC 001A0D4C  4C 41 13 82 */	cror 2, 1, 2
/* 801A3DF0 001A0D50  40 82 00 FC */	bne lbl_801A3EEC
/* 801A3DF4 001A0D54  4B FF AE C9 */	bl sub_8019ecbc
/* 801A3DF8 001A0D58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3DFC 001A0D5C  41 82 00 F0 */	beq lbl_801A3EEC
/* 801A3E00 001A0D60  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801A3E04 001A0D64  7F E5 FB 78 */	mr r5, r31
/* 801A3E08 001A0D68  38 61 00 08 */	addi r3, r1, 8
/* 801A3E0C 001A0D6C  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A3E10 001A0D70  81 84 00 00 */	lwz r12, 0(r4)
/* 801A3E14 001A0D74  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801A3E18 001A0D78  7D 89 03 A6 */	mtctr r12
/* 801A3E1C 001A0D7C  4E 80 04 21 */	bctrl
/* 801A3E20 001A0D80  C0 41 00 08 */	lfs f2, 8(r1)
/* 801A3E24 001A0D84  7F C4 F3 78 */	mr r4, r30
/* 801A3E28 001A0D88  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801A3E2C 001A0D8C  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A3E30 001A0D90  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801A3E34 001A0D94  38 BE 0A F4 */	addi r5, r30, 0xaf4
/* 801A3E38 001A0D98  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801A3E3C 001A0D9C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801A3E40 001A0DA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A3E44 001A0DA4  4B ED 4A 75 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801A3E48 001A0DA8  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A3E4C 001A0DAC  38 81 00 2C */	addi r4, r1, 0x2c
/* 801A3E50 001A0DB0  48 16 ED 25 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801A3E54 001A0DB4  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 801A3E58 001A0DB8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801A3E5C 001A0DBC  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 801A3E60 001A0DC0  EC 80 10 28 */	fsubs f4, f0, f2
/* 801A3E64 001A0DC4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801A3E68 001A0DC8  C0 C1 00 88 */	lfs f6, 0x88(r1)
/* 801A3E6C 001A0DCC  EC A0 18 28 */	fsubs f5, f0, f3
/* 801A3E70 001A0DD0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801A3E74 001A0DD4  EC 04 01 32 */	fmuls f0, f4, f4
/* 801A3E78 001A0DD8  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 801A3E7C 001A0DDC  EC 21 30 28 */	fsubs f1, f1, f6
/* 801A3E80 001A0DE0  EC 05 01 7A */	fmadds f0, f5, f5, f0
/* 801A3E84 001A0DE4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801A3E88 001A0DE8  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 801A3E8C 001A0DEC  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 801A3E90 001A0DF0  C0 1E 02 FC */	lfs f0, 0x2fc(r30)
/* 801A3E94 001A0DF4  EC 00 00 32 */	fmuls f0, f0, f0
/* 801A3E98 001A0DF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3E9C 001A0DFC  4C 41 13 82 */	cror 2, 1, 2
/* 801A3EA0 001A0E00  40 82 00 4C */	bne lbl_801A3EEC
/* 801A3EA4 001A0E04  7F C3 F3 78 */	mr r3, r30
/* 801A3EA8 001A0E08  7F E4 FB 78 */	mr r4, r31
/* 801A3EAC 001A0E0C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A3EB0 001A0E10  C0 22 A7 C4 */	lfs f1, lbl_805AC4E4@sda21(r2)
/* 801A3EB4 001A0E14  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 801A3EB8 001A0E18  7D 89 03 A6 */	mtctr r12
/* 801A3EBC 001A0E1C  4E 80 04 21 */	bctrl
/* 801A3EC0 001A0E20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3EC4 001A0E24  40 82 00 28 */	bne lbl_801A3EEC
/* 801A3EC8 001A0E28  7F C3 F3 78 */	mr r3, r30
/* 801A3ECC 001A0E2C  7F E4 FB 78 */	mr r4, r31
/* 801A3ED0 001A0E30  38 A1 00 14 */	addi r5, r1, 0x14
/* 801A3ED4 001A0E34  38 C1 00 20 */	addi r6, r1, 0x20
/* 801A3ED8 001A0E38  48 05 0E F9 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801A3EDC 001A0E3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3EE0 001A0E40  40 82 00 0C */	bne lbl_801A3EEC
/* 801A3EE4 001A0E44  38 60 00 01 */	li r3, 1
/* 801A3EE8 001A0E48  48 00 00 08 */	b lbl_801A3EF0
lbl_801A3EEC:
/* 801A3EEC 001A0E4C  38 60 00 00 */	li r3, 0
lbl_801A3EF0:
/* 801A3EF0 001A0E50  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801A3EF4 001A0E54  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801A3EF8 001A0E58  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 801A3EFC 001A0E5C  7C 08 03 A6 */	mtlr r0
/* 801A3F00 001A0E60  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801A3F04 001A0E64  4E 80 00 20 */	blr

.global ShouldAttack__12CIceSheegothR13CStateManagerf
ShouldAttack__12CIceSheegothR13CStateManagerf:
/* 801A3F08 001A0E68  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801A3F0C 001A0E6C  7C 08 02 A6 */	mflr r0
/* 801A3F10 001A0E70  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801A3F14 001A0E74  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801A3F18 001A0E78  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 801A3F1C 001A0E7C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801A3F20 001A0E80  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 801A3F24 001A0E84  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801A3F28 001A0E88  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801A3F2C 001A0E8C  93 A1 00 94 */	stw r29, 0x94(r1)
/* 801A3F30 001A0E90  7C 9E 23 78 */	mr r30, r4
/* 801A3F34 001A0E94  7C 7D 1B 78 */	mr r29, r3
/* 801A3F38 001A0E98  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 801A3F3C 001A0E9C  80 63 00 04 */	lwz r3, 4(r3)
/* 801A3F40 001A0EA0  80 1F 00 04 */	lwz r0, 4(r31)
/* 801A3F44 001A0EA4  7C 03 00 00 */	cmpw r3, r0
/* 801A3F48 001A0EA8  40 82 01 50 */	bne lbl_801A4098
/* 801A3F4C 001A0EAC  88 1D 07 5C */	lbz r0, 0x75c(r29)
/* 801A3F50 001A0EB0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801A3F54 001A0EB4  40 82 01 44 */	bne lbl_801A4098
/* 801A3F58 001A0EB8  7F E3 FB 78 */	mr r3, r31
/* 801A3F5C 001A0EBC  4B E7 1D A1 */	bl GetFrozenState__7CPlayerCFv
/* 801A3F60 001A0EC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3F64 001A0EC4  40 82 01 34 */	bne lbl_801A4098
/* 801A3F68 001A0EC8  7F E4 FB 78 */	mr r4, r31
/* 801A3F6C 001A0ECC  7F C5 F3 78 */	mr r5, r30
/* 801A3F70 001A0ED0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A3F74 001A0ED4  38 61 00 08 */	addi r3, r1, 8
/* 801A3F78 001A0ED8  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A3F7C 001A0EDC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801A3F80 001A0EE0  7D 89 03 A6 */	mtctr r12
/* 801A3F84 001A0EE4  4E 80 04 21 */	bctrl
/* 801A3F88 001A0EE8  C0 A1 00 08 */	lfs f5, 8(r1)
/* 801A3F8C 001A0EEC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801A3F90 001A0EF0  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 801A3F94 001A0EF4  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 801A3F98 001A0EF8  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A3F9C 001A0EFC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801A3FA0 001A0F00  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801A3FA4 001A0F04  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 801A3FA8 001A0F08  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 801A3FAC 001A0F0C  EC C2 00 28 */	fsubs f6, f2, f0
/* 801A3FB0 001A0F10  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 801A3FB4 001A0F14  C0 1D 09 54 */	lfs f0, 0x954(r29)
/* 801A3FB8 001A0F18  EC A5 18 28 */	fsubs f5, f5, f3
/* 801A3FBC 001A0F1C  EC 64 10 28 */	fsubs f3, f4, f2
/* 801A3FC0 001A0F20  EC 46 01 B2 */	fmuls f2, f6, f6
/* 801A3FC4 001A0F24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801A3FC8 001A0F28  EC 05 11 7A */	fmadds f0, f5, f5, f2
/* 801A3FCC 001A0F2C  EF E3 00 FA */	fmadds f31, f3, f3, f0
/* 801A3FD0 001A0F30  4C 40 13 82 */	cror 2, 0, 2
/* 801A3FD4 001A0F34  40 82 00 14 */	bne lbl_801A3FE8
/* 801A3FD8 001A0F38  C0 1D 09 60 */	lfs f0, 0x960(r29)
/* 801A3FDC 001A0F3C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801A3FE0 001A0F40  4C 40 13 82 */	cror 2, 0, 2
/* 801A3FE4 001A0F44  41 82 00 18 */	beq lbl_801A3FFC
lbl_801A3FE8:
/* 801A3FE8 001A0F48  C0 1D 02 FC */	lfs f0, 0x2fc(r29)
/* 801A3FEC 001A0F4C  EC 00 00 32 */	fmuls f0, f0, f0
/* 801A3FF0 001A0F50  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801A3FF4 001A0F54  4C 40 13 82 */	cror 2, 0, 2
/* 801A3FF8 001A0F58  40 82 00 A0 */	bne lbl_801A4098
lbl_801A3FFC:
/* 801A3FFC 001A0F5C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801A4000 001A0F60  C3 DD 07 44 */	lfs f30, 0x744(r29)
/* 801A4004 001A0F64  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801A4008 001A0F68  4B F8 FE A5 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 801A400C 001A0F6C  EC 01 07 B2 */	fmuls f0, f1, f30
/* 801A4010 001A0F70  EC 00 00 32 */	fmuls f0, f0, f0
/* 801A4014 001A0F74  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801A4018 001A0F78  40 81 00 80 */	ble lbl_801A4098
/* 801A401C 001A0F7C  7F A3 EB 78 */	mr r3, r29
/* 801A4020 001A0F80  7F C4 F3 78 */	mr r4, r30
/* 801A4024 001A0F84  81 9D 00 00 */	lwz r12, 0(r29)
/* 801A4028 001A0F88  C0 22 A7 C4 */	lfs f1, lbl_805AC4E4@sda21(r2)
/* 801A402C 001A0F8C  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 801A4030 001A0F90  7D 89 03 A6 */	mtctr r12
/* 801A4034 001A0F94  4E 80 04 21 */	bctrl
/* 801A4038 001A0F98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A403C 001A0F9C  40 82 00 5C */	bne lbl_801A4098
/* 801A4040 001A0FA0  7F A4 EB 78 */	mr r4, r29
/* 801A4044 001A0FA4  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A4048 001A0FA8  38 BD 0A F4 */	addi r5, r29, 0xaf4
/* 801A404C 001A0FAC  4B ED 48 6D */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801A4050 001A0FB0  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A4054 001A0FB4  38 81 00 2C */	addi r4, r1, 0x2c
/* 801A4058 001A0FB8  48 16 EB 1D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801A405C 001A0FBC  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 801A4060 001A0FC0  7F A3 EB 78 */	mr r3, r29
/* 801A4064 001A0FC4  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 801A4068 001A0FC8  7F C4 F3 78 */	mr r4, r30
/* 801A406C 001A0FCC  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801A4070 001A0FD0  38 A1 00 14 */	addi r5, r1, 0x14
/* 801A4074 001A0FD4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801A4078 001A0FD8  38 C1 00 20 */	addi r6, r1, 0x20
/* 801A407C 001A0FDC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A4080 001A0FE0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A4084 001A0FE4  48 05 0D 4D */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801A4088 001A0FE8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801A408C 001A0FEC  7C 00 00 34 */	cntlzw r0, r0
/* 801A4090 001A0FF0  54 03 D9 7E */	srwi r3, r0, 5
/* 801A4094 001A0FF4  48 00 00 08 */	b lbl_801A409C
lbl_801A4098:
/* 801A4098 001A0FF8  38 60 00 00 */	li r3, 0
lbl_801A409C:
/* 801A409C 001A0FFC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 801A40A0 001A1000  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801A40A4 001A1004  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 801A40A8 001A1008  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 801A40AC 001A100C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801A40B0 001A1010  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 801A40B4 001A1014  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801A40B8 001A1018  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 801A40BC 001A101C  7C 08 03 A6 */	mtlr r0
/* 801A40C0 001A1020  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801A40C4 001A1024  4E 80 00 20 */	blr

.global Leash__12CIceSheegothR13CStateManagerf
Leash__12CIceSheegothR13CStateManagerf:
/* 801A40C8 001A1028  C0 C3 00 50 */	lfs f6, 0x50(r3)
/* 801A40CC 001A102C  C0 03 03 A4 */	lfs f0, 0x3a4(r3)
/* 801A40D0 001A1030  C0 43 03 C8 */	lfs f2, 0x3c8(r3)
/* 801A40D4 001A1034  EC 60 30 28 */	fsubs f3, f0, f6
/* 801A40D8 001A1038  C0 E3 00 40 */	lfs f7, 0x40(r3)
/* 801A40DC 001A103C  C0 23 03 A0 */	lfs f1, 0x3a0(r3)
/* 801A40E0 001A1040  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801A40E4 001A1044  C0 A3 00 60 */	lfs f5, 0x60(r3)
/* 801A40E8 001A1048  C0 43 03 A8 */	lfs f2, 0x3a8(r3)
/* 801A40EC 001A104C  EC 81 38 28 */	fsubs f4, f1, f7
/* 801A40F0 001A1050  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801A40F4 001A1054  EC 42 28 28 */	fsubs f2, f2, f5
/* 801A40F8 001A1058  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 801A40FC 001A105C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801A4100 001A1060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A4104 001A1064  40 81 00 5C */	ble lbl_801A4160
/* 801A4108 001A1068  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801A410C 001A106C  38 00 00 00 */	li r0, 0
/* 801A4110 001A1070  C0 03 03 CC */	lfs f0, 0x3cc(r3)
/* 801A4114 001A1074  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801A4118 001A1078  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 801A411C 001A107C  EC 00 00 32 */	fmuls f0, f0, f0
/* 801A4120 001A1080  EC 61 30 28 */	fsubs f3, f1, f6
/* 801A4124 001A1084  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 801A4128 001A1088  EC 82 38 28 */	fsubs f4, f2, f7
/* 801A412C 001A108C  EC 41 28 28 */	fsubs f2, f1, f5
/* 801A4130 001A1090  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801A4134 001A1094  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 801A4138 001A1098  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801A413C 001A109C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A4140 001A10A0  40 81 00 18 */	ble lbl_801A4158
/* 801A4144 001A10A4  C0 23 03 D4 */	lfs f1, 0x3d4(r3)
/* 801A4148 001A10A8  C0 03 03 D0 */	lfs f0, 0x3d0(r3)
/* 801A414C 001A10AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A4150 001A10B0  40 81 00 08 */	ble lbl_801A4158
/* 801A4154 001A10B4  38 00 00 01 */	li r0, 1
lbl_801A4158:
/* 801A4158 001A10B8  7C 03 03 78 */	mr r3, r0
/* 801A415C 001A10BC  4E 80 00 20 */	blr
lbl_801A4160:
/* 801A4160 001A10C0  38 60 00 00 */	li r3, 0
/* 801A4164 001A10C4  4E 80 00 20 */	blr

.global LostInterest__12CIceSheegothR13CStateManagerf
LostInterest__12CIceSheegothR13CStateManagerf:
/* 801A4168 001A10C8  C0 23 09 68 */	lfs f1, 0x968(r3)
/* 801A416C 001A10CC  C0 03 07 4C */	lfs f0, 0x74c(r3)
/* 801A4170 001A10D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A4174 001A10D4  4C 41 13 82 */	cror 2, 1, 2
/* 801A4178 001A10D8  7C 00 00 26 */	mfcr r0
/* 801A417C 001A10DC  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 801A4180 001A10E0  4E 80 00 20 */	blr

.global OffLine__12CIceSheegothR13CStateManagerf
OffLine__12CIceSheegothR13CStateManagerf:
/* 801A4184 001A10E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A4188 001A10E8  7C 08 02 A6 */	mflr r0
/* 801A418C 001A10EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A4190 001A10F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A4194 001A10F4  7C 9F 23 78 */	mr r31, r4
/* 801A4198 001A10F8  38 80 00 00 */	li r4, 0
/* 801A419C 001A10FC  93 C1 00 08 */	stw r30, 8(r1)
/* 801A41A0 001A1100  7C 7E 1B 78 */	mr r30, r3
/* 801A41A4 001A1104  4B FF AC 75 */	bl sub_8019ee18
/* 801A41A8 001A1108  7F C3 F3 78 */	mr r3, r30
/* 801A41AC 001A110C  7F E4 FB 78 */	mr r4, r31
/* 801A41B0 001A1110  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A41B4 001A1114  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A41B8 001A1118  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801A41BC 001A111C  7D 89 03 A6 */	mtctr r12
/* 801A41C0 001A1120  4E 80 04 21 */	bctrl
/* 801A41C4 001A1124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A41C8 001A1128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A41CC 001A112C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A41D0 001A1130  7C 08 03 A6 */	mtlr r0
/* 801A41D4 001A1134  38 21 00 10 */	addi r1, r1, 0x10
/* 801A41D8 001A1138  4E 80 00 20 */	blr

.global TooClose__12CIceSheegothR13CStateManagerf
TooClose__12CIceSheegothR13CStateManagerf:
/* 801A41DC 001A113C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801A41E0 001A1140  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 801A41E4 001A1144  2C 00 00 01 */	cmpwi r0, 1
/* 801A41E8 001A1148  40 82 00 5C */	bne lbl_801A4244
/* 801A41EC 001A114C  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 801A41F0 001A1150  38 00 00 00 */	li r0, 0
/* 801A41F4 001A1154  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801A41F8 001A1158  C0 84 00 40 */	lfs f4, 0x40(r4)
/* 801A41FC 001A115C  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 801A4200 001A1160  EC A1 00 28 */	fsubs f5, f1, f0
/* 801A4204 001A1164  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A4208 001A1168  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801A420C 001A116C  EC 64 18 28 */	fsubs f3, f4, f3
/* 801A4210 001A1170  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801A4214 001A1174  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 801A4218 001A1178  EC 02 08 28 */	fsubs f0, f2, f1
/* 801A421C 001A117C  40 80 00 20 */	bge lbl_801A423C
/* 801A4220 001A1180  EC 20 00 32 */	fmuls f1, f0, f0
/* 801A4224 001A1184  C0 03 09 78 */	lfs f0, 0x978(r3)
/* 801A4228 001A1188  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 801A422C 001A118C  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 801A4230 001A1190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A4234 001A1194  40 80 00 08 */	bge lbl_801A423C
/* 801A4238 001A1198  38 00 00 01 */	li r0, 1
lbl_801A423C:
/* 801A423C 001A119C  7C 03 03 78 */	mr r3, r0
/* 801A4240 001A11A0  4E 80 00 20 */	blr
lbl_801A4244:
/* 801A4244 001A11A4  38 60 00 00 */	li r3, 0
/* 801A4248 001A11A8  4E 80 00 20 */	blr

.global ShotAt__12CIceSheegothR13CStateManagerf
ShotAt__12CIceSheegothR13CStateManagerf:
/* 801A424C 001A11AC  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801A4250 001A11B0  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 801A4254 001A11B4  7C 03 00 D0 */	neg r0, r3
/* 801A4258 001A11B8  7C 00 1B 78 */	or r0, r0, r3
/* 801A425C 001A11BC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801A4260 001A11C0  4E 80 00 20 */	blr

.global InMaxRange__12CIceSheegothR13CStateManagerf
InMaxRange__12CIceSheegothR13CStateManagerf:
/* 801A4264 001A11C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A4268 001A11C8  7C 08 02 A6 */	mflr r0
/* 801A426C 001A11CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A4270 001A11D0  88 03 07 5C */	lbz r0, 0x75c(r3)
/* 801A4274 001A11D4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801A4278 001A11D8  41 82 00 0C */	beq lbl_801A4284
/* 801A427C 001A11DC  38 60 00 01 */	li r3, 1
/* 801A4280 001A11E0  48 00 00 08 */	b lbl_801A4288
lbl_801A4284:
/* 801A4284 001A11E4  48 05 21 61 */	bl InMaxRange__10CPatternedFR13CStateManagerf
lbl_801A4288:
/* 801A4288 001A11E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A428C 001A11EC  7C 08 03 A6 */	mtlr r0
/* 801A4290 001A11F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801A4294 001A11F4  4E 80 00 20 */	blr

.global GetDamageVulnerability__12CIceSheegothCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__12CIceSheegothCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 801A4298 001A11F8  3C 60 80 57 */	lis r3, sPassThroughVulnerability__20CDamageVulnerability@ha
/* 801A429C 001A11FC  38 63 D7 E8 */	addi r3, r3, sPassThroughVulnerability__20CDamageVulnerability@l
/* 801A42A0 001A1200  4E 80 00 20 */	blr

.global GetDamageVulnerability__12CIceSheegothCFv
GetDamageVulnerability__12CIceSheegothCFv:
/* 801A42A4 001A1204  3C 60 80 57 */	lis r3, sPassThroughVulnerability__20CDamageVulnerability@ha
/* 801A42A8 001A1208  38 63 D7 E8 */	addi r3, r3, sPassThroughVulnerability__20CDamageVulnerability@l
/* 801A42AC 001A120C  4E 80 00 20 */	blr

.global GetAimPosition__12CIceSheegothCFRC13CStateManagerf
GetAimPosition__12CIceSheegothCFRC13CStateManagerf:
/* 801A42B0 001A1210  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801A42B4 001A1214  7C 08 02 A6 */	mflr r0
/* 801A42B8 001A1218  90 01 00 94 */	stw r0, 0x94(r1)
/* 801A42BC 001A121C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801A42C0 001A1220  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 801A42C4 001A1224  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801A42C8 001A1228  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 801A42CC 001A122C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 801A42D0 001A1230  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 801A42D4 001A1234  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 801A42D8 001A1238  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 801A42DC 001A123C  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 801A42E0 001A1240  7C 9E 23 78 */	mr r30, r4
/* 801A42E4 001A1244  FF 80 08 90 */	fmr f28, f1
/* 801A42E8 001A1248  80 84 04 50 */	lwz r4, 0x450(r4)
/* 801A42EC 001A124C  7C 7D 1B 78 */	mr r29, r3
/* 801A42F0 001A1250  7C BF 2B 78 */	mr r31, r5
/* 801A42F4 001A1254  80 04 02 EC */	lwz r0, 0x2ec(r4)
/* 801A42F8 001A1258  2C 00 00 00 */	cmpwi r0, 0
/* 801A42FC 001A125C  41 82 01 B4 */	beq lbl_801A44B0
/* 801A4300 001A1260  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801A4304 001A1264  7F E4 FB 78 */	mr r4, r31
/* 801A4308 001A1268  80 63 00 00 */	lwz r3, 0(r3)
/* 801A430C 001A126C  4B EE D2 4D */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 801A4310 001A1270  2C 03 00 03 */	cmpwi r3, 3
/* 801A4314 001A1274  40 82 00 E8 */	bne lbl_801A43FC
/* 801A4318 001A1278  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A431C 001A127C  C7 E3 66 A0 */	lfsu f31, sZeroVector__9CVector3f@l(r3)
/* 801A4320 001A1280  3B 9E 0B 00 */	addi r28, r30, 0xb00
/* 801A4324 001A1284  C3 C3 00 04 */	lfs f30, 4(r3)
/* 801A4328 001A1288  7F 9B E3 78 */	mr r27, r28
/* 801A432C 001A128C  C3 A3 00 08 */	lfs f29, 8(r3)
/* 801A4330 001A1290  48 00 00 4C */	b lbl_801A437C
lbl_801A4334:
/* 801A4334 001A1294  A0 1B 00 00 */	lhz r0, 0(r27)
/* 801A4338 001A1298  7F E3 FB 78 */	mr r3, r31
/* 801A433C 001A129C  38 81 00 10 */	addi r4, r1, 0x10
/* 801A4340 001A12A0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A4344 001A12A4  4B EA 82 61 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A4348 001A12A8  7C 64 1B 78 */	mr r4, r3
/* 801A434C 001A12AC  38 61 00 24 */	addi r3, r1, 0x24
/* 801A4350 001A12B0  4B F0 AF FD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801A4354 001A12B4  80 63 00 04 */	lwz r3, 4(r3)
/* 801A4358 001A12B8  28 03 00 00 */	cmplwi r3, 0
/* 801A435C 001A12BC  41 82 00 1C */	beq lbl_801A4378
/* 801A4360 001A12C0  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 801A4364 001A12C4  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801A4368 001A12C8  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801A436C 001A12CC  EF FF 10 2A */	fadds f31, f31, f2
/* 801A4370 001A12D0  EF DE 08 2A */	fadds f30, f30, f1
/* 801A4374 001A12D4  EF BD 00 2A */	fadds f29, f29, f0
lbl_801A4378:
/* 801A4378 001A12D8  3B 7B 00 02 */	addi r27, r27, 2
lbl_801A437C:
/* 801A437C 001A12DC  80 7E 0A FC */	lwz r3, 0xafc(r30)
/* 801A4380 001A12E0  54 60 08 3C */	slwi r0, r3, 1
/* 801A4384 001A12E4  7C 1C 02 14 */	add r0, r28, r0
/* 801A4388 001A12E8  7C 1B 00 40 */	cmplw r27, r0
/* 801A438C 001A12EC  40 82 FF A8 */	bne lbl_801A4334
/* 801A4390 001A12F0  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A4394 001A12F4  38 00 00 00 */	li r0, 0
/* 801A4398 001A12F8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 801A439C 001A12FC  40 82 00 14 */	bne lbl_801A43B0
/* 801A43A0 001A1300  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 801A43A4 001A1304  40 82 00 0C */	bne lbl_801A43B0
/* 801A43A8 001A1308  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 801A43AC 001A130C  41 82 00 08 */	beq lbl_801A43B4
lbl_801A43B0:
/* 801A43B0 001A1310  38 00 00 01 */	li r0, 1
lbl_801A43B4:
/* 801A43B4 001A1314  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801A43B8 001A1318  41 82 00 F8 */	beq lbl_801A44B0
/* 801A43BC 001A131C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801A43C0 001A1320  3C 00 43 30 */	lis r0, 0x4330
/* 801A43C4 001A1324  90 61 00 34 */	stw r3, 0x34(r1)
/* 801A43C8 001A1328  C8 22 A7 D8 */	lfd f1, lbl_805AC4F8@sda21(r2)
/* 801A43CC 001A132C  90 01 00 30 */	stw r0, 0x30(r1)
/* 801A43D0 001A1330  C0 42 A7 60 */	lfs f2, lbl_805AC480@sda21(r2)
/* 801A43D4 001A1334  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801A43D8 001A1338  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A43DC 001A133C  EC 02 00 24 */	fdivs f0, f2, f0
/* 801A43E0 001A1340  EF FF 00 32 */	fmuls f31, f31, f0
/* 801A43E4 001A1344  EF DE 00 32 */	fmuls f30, f30, f0
/* 801A43E8 001A1348  EF BD 00 32 */	fmuls f29, f29, f0
/* 801A43EC 001A134C  D3 FD 00 00 */	stfs f31, 0(r29)
/* 801A43F0 001A1350  D3 DD 00 04 */	stfs f30, 4(r29)
/* 801A43F4 001A1354  D3 BD 00 08 */	stfs f29, 8(r29)
/* 801A43F8 001A1358  48 00 00 CC */	b lbl_801A44C4
lbl_801A43FC:
/* 801A43FC 001A135C  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A4400 001A1360  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801A4404 001A1364  40 82 00 1C */	bne lbl_801A4420
/* 801A4408 001A1368  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801A440C 001A136C  7F E4 FB 78 */	mr r4, r31
/* 801A4410 001A1370  80 63 00 00 */	lwz r3, 0(r3)
/* 801A4414 001A1374  4B EE D1 45 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 801A4418 001A1378  2C 03 00 02 */	cmpwi r3, 2
/* 801A441C 001A137C  40 82 00 4C */	bne lbl_801A4468
lbl_801A4420:
/* 801A4420 001A1380  A0 1E 0A F8 */	lhz r0, 0xaf8(r30)
/* 801A4424 001A1384  7F E3 FB 78 */	mr r3, r31
/* 801A4428 001A1388  38 81 00 0C */	addi r4, r1, 0xc
/* 801A442C 001A138C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801A4430 001A1390  4B EA 81 75 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A4434 001A1394  7C 64 1B 78 */	mr r4, r3
/* 801A4438 001A1398  38 61 00 1C */	addi r3, r1, 0x1c
/* 801A443C 001A139C  4B F0 AF 11 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801A4440 001A13A0  80 63 00 04 */	lwz r3, 4(r3)
/* 801A4444 001A13A4  28 03 00 00 */	cmplwi r3, 0
/* 801A4448 001A13A8  41 82 00 68 */	beq lbl_801A44B0
/* 801A444C 001A13AC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801A4450 001A13B0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801A4454 001A13B4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801A4458 001A13B8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801A445C 001A13BC  D0 3D 00 04 */	stfs f1, 4(r29)
/* 801A4460 001A13C0  D0 5D 00 08 */	stfs f2, 8(r29)
/* 801A4464 001A13C4  48 00 00 60 */	b lbl_801A44C4
lbl_801A4468:
/* 801A4468 001A13C8  A0 1E 0A F6 */	lhz r0, 0xaf6(r30)
/* 801A446C 001A13CC  7F E3 FB 78 */	mr r3, r31
/* 801A4470 001A13D0  38 81 00 08 */	addi r4, r1, 8
/* 801A4474 001A13D4  B0 01 00 08 */	sth r0, 8(r1)
/* 801A4478 001A13D8  4B EA 81 2D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A447C 001A13DC  7C 64 1B 78 */	mr r4, r3
/* 801A4480 001A13E0  38 61 00 14 */	addi r3, r1, 0x14
/* 801A4484 001A13E4  4B F0 AE C9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801A4488 001A13E8  80 63 00 04 */	lwz r3, 4(r3)
/* 801A448C 001A13EC  28 03 00 00 */	cmplwi r3, 0
/* 801A4490 001A13F0  41 82 00 20 */	beq lbl_801A44B0
/* 801A4494 001A13F4  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801A4498 001A13F8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801A449C 001A13FC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801A44A0 001A1400  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801A44A4 001A1404  D0 3D 00 04 */	stfs f1, 4(r29)
/* 801A44A8 001A1408  D0 5D 00 08 */	stfs f2, 8(r29)
/* 801A44AC 001A140C  48 00 00 18 */	b lbl_801A44C4
lbl_801A44B0:
/* 801A44B0 001A1410  FC 20 E0 90 */	fmr f1, f28
/* 801A44B4 001A1414  7F A3 EB 78 */	mr r3, r29
/* 801A44B8 001A1418  7F C4 F3 78 */	mr r4, r30
/* 801A44BC 001A141C  7F E5 FB 78 */	mr r5, r31
/* 801A44C0 001A1420  4B ED 41 29 */	bl GetAimPosition__10CPatternedCFRC13CStateManagerf
lbl_801A44C4:
/* 801A44C4 001A1424  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 801A44C8 001A1428  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801A44CC 001A142C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 801A44D0 001A1430  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801A44D4 001A1434  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 801A44D8 001A1438  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 801A44DC 001A143C  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 801A44E0 001A1440  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 801A44E4 001A1444  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 801A44E8 001A1448  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801A44EC 001A144C  7C 08 03 A6 */	mtlr r0
/* 801A44F0 001A1450  38 21 00 90 */	addi r1, r1, 0x90
/* 801A44F4 001A1454  4E 80 00 20 */	blr

.global DoUserAnimEvent__12CIceSheegothFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__12CIceSheegothFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 801A44F8 001A1458  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 801A44FC 001A145C  7C 08 02 A6 */	mflr r0
/* 801A4500 001A1460  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 801A4504 001A1464  DB E1 01 D0 */	stfd f31, 0x1d0(r1)
/* 801A4508 001A1468  F3 E1 01 D8 */	psq_st f31, 472(r1), 0, qr0
/* 801A450C 001A146C  DB C1 01 C0 */	stfd f30, 0x1c0(r1)
/* 801A4510 001A1470  F3 C1 01 C8 */	psq_st f30, 456(r1), 0, qr0
/* 801A4514 001A1474  DB A1 01 B0 */	stfd f29, 0x1b0(r1)
/* 801A4518 001A1478  F3 A1 01 B8 */	psq_st f29, 440(r1), 0, qr0
/* 801A451C 001A147C  DB 81 01 A0 */	stfd f28, 0x1a0(r1)
/* 801A4520 001A1480  F3 81 01 A8 */	psq_st f28, 424(r1), 0, qr0
/* 801A4524 001A1484  BF 61 01 8C */	stmw r27, 0x18c(r1)
/* 801A4528 001A1488  7C DF 33 78 */	mr r31, r6
/* 801A452C 001A148C  FF E0 08 90 */	fmr f31, f1
/* 801A4530 001A1490  28 1F 00 17 */	cmplwi r31, 0x17
/* 801A4534 001A1494  7C 7C 1B 78 */	mr r28, r3
/* 801A4538 001A1498  7C 9D 23 78 */	mr r29, r4
/* 801A453C 001A149C  7C BE 2B 78 */	mr r30, r5
/* 801A4540 001A14A0  3B 60 00 00 */	li r27, 0
/* 801A4544 001A14A4  41 81 03 C8 */	bgt lbl_801A490C
/* 801A4548 001A14A8  3C A0 80 3E */	lis r5, lbl_803E49F4@ha
/* 801A454C 001A14AC  57 E0 10 3A */	slwi r0, r31, 2
/* 801A4550 001A14B0  38 A5 49 F4 */	addi r5, r5, lbl_803E49F4@l
/* 801A4554 001A14B4  7C 05 00 2E */	lwzx r0, r5, r0
/* 801A4558 001A14B8  7C 09 03 A6 */	mtctr r0
/* 801A455C 001A14BC  4E 80 04 20 */	bctr
.global lbl_801A4560
lbl_801A4560:
/* 801A4560 001A14C0  7F 84 E3 78 */	mr r4, r28
/* 801A4564 001A14C4  38 61 00 EC */	addi r3, r1, 0xec
/* 801A4568 001A14C8  38 BE 00 3C */	addi r5, r30, 0x3c
/* 801A456C 001A14CC  4B ED 44 0D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801A4570 001A14D0  38 61 01 4C */	addi r3, r1, 0x14c
/* 801A4574 001A14D4  38 81 00 EC */	addi r4, r1, 0xec
/* 801A4578 001A14D8  48 16 E5 FD */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801A457C 001A14DC  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 801A4580 001A14E0  7F A5 EB 78 */	mr r5, r29
/* 801A4584 001A14E4  38 61 00 80 */	addi r3, r1, 0x80
/* 801A4588 001A14E8  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A458C 001A14EC  81 84 00 00 */	lwz r12, 0(r4)
/* 801A4590 001A14F0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801A4594 001A14F4  7D 89 03 A6 */	mtctr r12
/* 801A4598 001A14F8  4E 80 04 21 */	bctrl
/* 801A459C 001A14FC  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 801A45A0 001A1500  7F 83 E3 78 */	mr r3, r28
/* 801A45A4 001A1504  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 801A45A8 001A1508  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801A45AC 001A150C  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 801A45B0 001A1510  C0 41 01 58 */	lfs f2, 0x158(r1)
/* 801A45B4 001A1514  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801A45B8 001A1518  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 801A45BC 001A151C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801A45C0 001A1520  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 801A45C4 001A1524  83 7D 08 4C */	lwz r27, 0x84c(r29)
/* 801A45C8 001A1528  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 801A45CC 001A152C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 801A45D0 001A1530  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801A45D4 001A1534  81 9C 00 00 */	lwz r12, 0(r28)
/* 801A45D8 001A1538  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 801A45DC 001A153C  7D 89 03 A6 */	mtctr r12
/* 801A45E0 001A1540  4E 80 04 21 */	bctrl
/* 801A45E4 001A1544  FC 20 F8 90 */	fmr f1, f31
/* 801A45E8 001A1548  7C 64 1B 78 */	mr r4, r3
/* 801A45EC 001A154C  7F 67 DB 78 */	mr r7, r27
/* 801A45F0 001A1550  38 61 00 74 */	addi r3, r1, 0x74
/* 801A45F4 001A1554  38 A1 00 68 */	addi r5, r1, 0x68
/* 801A45F8 001A1558  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 801A45FC 001A155C  39 00 00 01 */	li r8, 1
/* 801A4600 001A1560  48 07 78 ED */	bl PredictInterceptPos__15CProjectileInfoFRC9CVector3fRC9CVector3fRC7CPlayerbf
/* 801A4604 001A1564  C0 A1 00 74 */	lfs f5, 0x74(r1)
/* 801A4608 001A1568  38 61 00 98 */	addi r3, r1, 0x98
/* 801A460C 001A156C  C0 81 00 78 */	lfs f4, 0x78(r1)
/* 801A4610 001A1570  38 81 00 8C */	addi r4, r1, 0x8c
/* 801A4614 001A1574  C0 61 00 7C */	lfs f3, 0x7c(r1)
/* 801A4618 001A1578  C0 41 01 68 */	lfs f2, 0x168(r1)
/* 801A461C 001A157C  C0 21 01 78 */	lfs f1, 0x178(r1)
/* 801A4620 001A1580  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 801A4624 001A1584  EC C4 10 28 */	fsubs f6, f4, f2
/* 801A4628 001A1588  D0 A1 00 A4 */	stfs f5, 0xa4(r1)
/* 801A462C 001A158C  EC 43 08 28 */	fsubs f2, f3, f1
/* 801A4630 001A1590  EC 05 00 28 */	fsubs f0, f5, f0
/* 801A4634 001A1594  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 801A4638 001A1598  D0 61 00 AC */	stfs f3, 0xac(r1)
/* 801A463C 001A159C  C0 9C 00 58 */	lfs f4, 0x58(r28)
/* 801A4640 001A15A0  C0 7C 00 48 */	lfs f3, 0x48(r28)
/* 801A4644 001A15A4  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 801A4648 001A15A8  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 801A464C 001A15AC  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 801A4650 001A15B0  D0 81 00 A0 */	stfs f4, 0xa0(r1)
/* 801A4654 001A15B4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801A4658 001A15B8  D0 C1 00 90 */	stfs f6, 0x90(r1)
/* 801A465C 001A15BC  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 801A4660 001A15C0  48 16 FF D1 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 801A4664 001A15C4  C0 02 A7 E0 */	lfs f0, lbl_805AC500@sda21(r2)
/* 801A4668 001A15C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A466C 001A15CC  40 81 00 C8 */	ble lbl_801A4734
/* 801A4670 001A15D0  38 61 00 8C */	addi r3, r1, 0x8c
/* 801A4674 001A15D4  48 17 00 85 */	bl CanBeNormalized__9CVector3fCFv
/* 801A4678 001A15D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A467C 001A15DC  41 82 00 74 */	beq lbl_801A46F0
/* 801A4680 001A15E0  C0 02 A7 E0 */	lfs f0, lbl_805AC500@sda21(r2)
/* 801A4684 001A15E4  38 61 00 50 */	addi r3, r1, 0x50
/* 801A4688 001A15E8  38 81 00 8C */	addi r4, r1, 0x8c
/* 801A468C 001A15EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A4690 001A15F0  48 17 01 C1 */	bl AsNormalized__9CVector3fCFv
/* 801A4694 001A15F4  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A4698 001A15F8  38 81 00 98 */	addi r4, r1, 0x98
/* 801A469C 001A15FC  38 A1 00 50 */	addi r5, r1, 0x50
/* 801A46A0 001A1600  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801A46A4 001A1604  48 17 02 B1 */	bl Slerp__9CVector3fFRC9CVector3fRC9CVector3fRC9CRelAngle
/* 801A46A8 001A1608  C3 C1 00 5C */	lfs f30, 0x5c(r1)
/* 801A46AC 001A160C  38 61 00 8C */	addi r3, r1, 0x8c
/* 801A46B0 001A1610  C3 A1 00 60 */	lfs f29, 0x60(r1)
/* 801A46B4 001A1614  C3 81 00 64 */	lfs f28, 0x64(r1)
/* 801A46B8 001A1618  48 17 02 01 */	bl Magnitude__9CVector3fCFv
/* 801A46BC 001A161C  EC 81 07 72 */	fmuls f4, f1, f29
/* 801A46C0 001A1620  C0 A1 01 68 */	lfs f5, 0x168(r1)
/* 801A46C4 001A1624  EC 41 07 32 */	fmuls f2, f1, f28
/* 801A46C8 001A1628  C0 61 01 78 */	lfs f3, 0x178(r1)
/* 801A46CC 001A162C  EC 01 07 B2 */	fmuls f0, f1, f30
/* 801A46D0 001A1630  C0 21 01 58 */	lfs f1, 0x158(r1)
/* 801A46D4 001A1634  EC 85 20 2A */	fadds f4, f5, f4
/* 801A46D8 001A1638  EC 43 10 2A */	fadds f2, f3, f2
/* 801A46DC 001A163C  EC 01 00 2A */	fadds f0, f1, f0
/* 801A46E0 001A1640  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 801A46E4 001A1644  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 801A46E8 001A1648  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 801A46EC 001A164C  48 00 00 48 */	b lbl_801A4734
lbl_801A46F0:
/* 801A46F0 001A1650  38 61 00 8C */	addi r3, r1, 0x8c
/* 801A46F4 001A1654  48 17 01 C5 */	bl Magnitude__9CVector3fCFv
/* 801A46F8 001A1658  C0 61 01 60 */	lfs f3, 0x160(r1)
/* 801A46FC 001A165C  C0 41 01 70 */	lfs f2, 0x170(r1)
/* 801A4700 001A1660  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 801A4704 001A1664  EC 81 00 F2 */	fmuls f4, f1, f3
/* 801A4708 001A1668  C0 A1 01 68 */	lfs f5, 0x168(r1)
/* 801A470C 001A166C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801A4710 001A1670  C0 61 01 78 */	lfs f3, 0x178(r1)
/* 801A4714 001A1674  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A4718 001A1678  C0 21 01 58 */	lfs f1, 0x158(r1)
/* 801A471C 001A167C  EC 85 20 2A */	fadds f4, f5, f4
/* 801A4720 001A1680  EC 43 10 2A */	fadds f2, f3, f2
/* 801A4724 001A1684  EC 01 00 2A */	fadds f0, f1, f0
/* 801A4728 001A1688  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 801A472C 001A168C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 801A4730 001A1690  D0 41 00 AC */	stfs f2, 0xac(r1)
lbl_801A4734:
/* 801A4734 001A1694  C0 41 01 58 */	lfs f2, 0x158(r1)
/* 801A4738 001A1698  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801A473C 001A169C  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 801A4740 001A16A0  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 801A4744 001A16A4  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 801A4748 001A16A8  38 61 00 BC */	addi r3, r1, 0xbc
/* 801A474C 001A16AC  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801A4750 001A16B0  38 81 00 44 */	addi r4, r1, 0x44
/* 801A4754 001A16B4  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 801A4758 001A16B8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801A475C 001A16BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801A4760 001A16C0  48 16 F3 B1 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801A4764 001A16C4  38 61 01 1C */	addi r3, r1, 0x11c
/* 801A4768 001A16C8  38 81 00 BC */	addi r4, r1, 0xbc
/* 801A476C 001A16CC  48 16 E4 09 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801A4770 001A16D0  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A4774 001A16D4  39 60 00 00 */	li r11, 0
/* 801A4778 001A16D8  99 61 00 40 */	stb r11, 0x40(r1)
/* 801A477C 001A16DC  38 01 00 28 */	addi r0, r1, 0x28
/* 801A4780 001A16E0  A1 42 C5 FC */	lhz r10, kInternalInvalidSfxId__11CSfxManager@sda21(r2)
/* 801A4784 001A16E4  7F 83 E3 78 */	mr r3, r28
/* 801A4788 001A16E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A478C 001A16EC  7F A5 EB 78 */	mr r5, r29
/* 801A4790 001A16F0  38 81 01 1C */	addi r4, r1, 0x11c
/* 801A4794 001A16F4  39 21 00 34 */	addi r9, r1, 0x34
/* 801A4798 001A16F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801A479C 001A16FC  38 C0 00 04 */	li r6, 4
/* 801A47A0 001A1700  38 E0 00 00 */	li r7, 0
/* 801A47A4 001A1704  39 00 00 00 */	li r8, 0
/* 801A47A8 001A1708  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801A47AC 001A170C  91 61 00 08 */	stw r11, 8(r1)
/* 801A47B0 001A1710  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A47B4 001A1714  4B ED 32 45 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 801A47B8 001A1718  88 01 00 40 */	lbz r0, 0x40(r1)
/* 801A47BC 001A171C  28 00 00 00 */	cmplwi r0, 0
/* 801A47C0 001A1720  41 82 00 1C */	beq lbl_801A47DC
/* 801A47C4 001A1724  34 61 00 34 */	addic. r3, r1, 0x34
/* 801A47C8 001A1728  41 82 00 14 */	beq lbl_801A47DC
/* 801A47CC 001A172C  28 03 00 00 */	cmplwi r3, 0
/* 801A47D0 001A1730  41 82 00 0C */	beq lbl_801A47DC
/* 801A47D4 001A1734  38 80 00 00 */	li r4, 0
/* 801A47D8 001A1738  48 19 C6 69 */	bl __dt__6CTokenFv
lbl_801A47DC:
/* 801A47DC 001A173C  38 00 00 00 */	li r0, 0
/* 801A47E0 001A1740  C0 42 A7 68 */	lfs f2, lbl_805AC488@sda21(r2)
/* 801A47E4 001A1744  98 01 00 40 */	stb r0, 0x40(r1)
/* 801A47E8 001A1748  C0 0D 90 00 */	lfs f0, lbl_805A7BC0@sda21(r13)
/* 801A47EC 001A174C  C0 3C 06 DC */	lfs f1, 0x6dc(r28)
/* 801A47F0 001A1750  C0 7C 09 74 */	lfs f3, 0x974(r28)
/* 801A47F4 001A1754  EC 22 00 72 */	fmuls f1, f2, f1
/* 801A47F8 001A1758  EC 23 08 28 */	fsubs f1, f3, f1
/* 801A47FC 001A175C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801A4800 001A1760  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A4804 001A1764  40 80 00 0C */	bge lbl_801A4810
/* 801A4808 001A1768  38 61 00 18 */	addi r3, r1, 0x18
/* 801A480C 001A176C  48 00 00 08 */	b lbl_801A4814
lbl_801A4810:
/* 801A4810 001A1770  38 6D 90 00 */	addi r3, r13, lbl_805A7BC0@sda21
lbl_801A4814:
/* 801A4814 001A1774  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A4818 001A1778  D0 1C 09 74 */	stfs f0, 0x974(r28)
/* 801A481C 001A177C  88 1C 0B 28 */	lbz r0, 0xb28(r28)
/* 801A4820 001A1780  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801A4824 001A1784  41 82 00 58 */	beq lbl_801A487C
/* 801A4828 001A1788  7F 83 E3 78 */	mr r3, r28
/* 801A482C 001A178C  7F A4 EB 78 */	mr r4, r29
/* 801A4830 001A1790  81 9C 00 00 */	lwz r12, 0(r28)
/* 801A4834 001A1794  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A4838 001A1798  81 8C 02 70 */	lwz r12, 0x270(r12)
/* 801A483C 001A179C  7D 89 03 A6 */	mtctr r12
/* 801A4840 001A17A0  4E 80 04 21 */	bctrl
/* 801A4844 001A17A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A4848 001A17A8  40 82 00 34 */	bne lbl_801A487C
/* 801A484C 001A17AC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A4850 001A17B0  38 00 00 0A */	li r0, 0xa
/* 801A4854 001A17B4  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801A4858 001A17B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A485C 001A17BC  38 81 00 20 */	addi r4, r1, 0x20
/* 801A4860 001A17C0  90 61 00 20 */	stw r3, 0x20(r1)
/* 801A4864 001A17C4  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 801A4868 001A17C8  38 63 00 04 */	addi r3, r3, 4
/* 801A486C 001A17CC  4B F8 CF 4D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801A4870 001A17D0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A4874 001A17D4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A4878 001A17D8  90 01 00 20 */	stw r0, 0x20(r1)
lbl_801A487C:
/* 801A487C 001A17DC  3B 60 00 01 */	li r27, 1
/* 801A4880 001A17E0  48 00 00 8C */	b lbl_801A490C
.global lbl_801A4884
lbl_801A4884:
/* 801A4884 001A17E4  4B FF BE 85 */	bl sub_801a0708
/* 801A4888 001A17E8  3B 60 00 01 */	li r27, 1
/* 801A488C 001A17EC  48 00 00 80 */	b lbl_801A490C
.global lbl_801A4890
lbl_801A4890:
/* 801A4890 001A17F0  4B FF A2 C1 */	bl sub_8019eb50
/* 801A4894 001A17F4  3B 60 00 01 */	li r27, 1
/* 801A4898 001A17F8  48 00 00 74 */	b lbl_801A490C
.global lbl_801A489C
lbl_801A489C:
/* 801A489C 001A17FC  88 1C 0B 28 */	lbz r0, 0xb28(r28)
/* 801A48A0 001A1800  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801A48A4 001A1804  41 82 00 68 */	beq lbl_801A490C
/* 801A48A8 001A1808  A0 1C 0A 80 */	lhz r0, 0xa80(r28)
/* 801A48AC 001A180C  7F A3 EB 78 */	mr r3, r29
/* 801A48B0 001A1810  38 81 00 14 */	addi r4, r1, 0x14
/* 801A48B4 001A1814  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801A48B8 001A1818  4B EA 7C BD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801A48BC 001A181C  28 03 00 00 */	cmplwi r3, 0
/* 801A48C0 001A1820  41 82 00 4C */	beq lbl_801A490C
/* 801A48C4 001A1824  7F A5 EB 78 */	mr r5, r29
/* 801A48C8 001A1828  38 9C 00 34 */	addi r4, r28, 0x34
/* 801A48CC 001A182C  38 C0 00 00 */	li r6, 0
/* 801A48D0 001A1830  4B FF 3A 1D */	bl Fire__13CFlameThrowerFRC12CTransform4fR13CStateManagerb
/* 801A48D4 001A1834  48 00 00 38 */	b lbl_801A490C
.global lbl_801A48D8
lbl_801A48D8:
/* 801A48D8 001A1838  88 1C 0B 28 */	lbz r0, 0xb28(r28)
/* 801A48DC 001A183C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801A48E0 001A1840  41 82 00 2C */	beq lbl_801A490C
/* 801A48E4 001A1844  A0 1C 0A 80 */	lhz r0, 0xa80(r28)
/* 801A48E8 001A1848  7F A3 EB 78 */	mr r3, r29
/* 801A48EC 001A184C  38 81 00 10 */	addi r4, r1, 0x10
/* 801A48F0 001A1850  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A48F4 001A1854  4B EA 7C 81 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801A48F8 001A1858  28 03 00 00 */	cmplwi r3, 0
/* 801A48FC 001A185C  41 82 00 10 */	beq lbl_801A490C
/* 801A4900 001A1860  7F A4 EB 78 */	mr r4, r29
/* 801A4904 001A1864  38 A0 00 00 */	li r5, 0
/* 801A4908 001A1868  4B FF 38 B9 */	bl Reset__13CFlameThrowerFR13CStateManagerb
.global lbl_801A490C
lbl_801A490C:
/* 801A490C 001A186C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801A4910 001A1870  40 82 00 1C */	bne lbl_801A492C
/* 801A4914 001A1874  FC 20 F8 90 */	fmr f1, f31
/* 801A4918 001A1878  7F 83 E3 78 */	mr r3, r28
/* 801A491C 001A187C  7F A4 EB 78 */	mr r4, r29
/* 801A4920 001A1880  7F C5 F3 78 */	mr r5, r30
/* 801A4924 001A1884  7F E6 FB 78 */	mr r6, r31
/* 801A4928 001A1888  4B ED 45 89 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_801A492C:
/* 801A492C 001A188C  E3 E1 01 D8 */	psq_l f31, 472(r1), 0, qr0
/* 801A4930 001A1890  CB E1 01 D0 */	lfd f31, 0x1d0(r1)
/* 801A4934 001A1894  E3 C1 01 C8 */	psq_l f30, 456(r1), 0, qr0
/* 801A4938 001A1898  CB C1 01 C0 */	lfd f30, 0x1c0(r1)
/* 801A493C 001A189C  E3 A1 01 B8 */	psq_l f29, 440(r1), 0, qr0
/* 801A4940 001A18A0  CB A1 01 B0 */	lfd f29, 0x1b0(r1)
/* 801A4944 001A18A4  E3 81 01 A8 */	psq_l f28, 424(r1), 0, qr0
/* 801A4948 001A18A8  CB 81 01 A0 */	lfd f28, 0x1a0(r1)
/* 801A494C 001A18AC  BB 61 01 8C */	lmw r27, 0x18c(r1)
/* 801A4950 001A18B0  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 801A4954 001A18B4  7C 08 03 A6 */	mtlr r0
/* 801A4958 001A18B8  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 801A495C 001A18BC  4E 80 00 20 */	blr

.global ProjectileInfo__12CIceSheegothFv
ProjectileInfo__12CIceSheegothFv:
/* 801A4960 001A18C0  38 63 0A 58 */	addi r3, r3, 0xa58
/* 801A4964 001A18C4  4E 80 00 20 */	blr

.global AddToRenderer__12CIceSheegothCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__12CIceSheegothCFRC14CFrustumPlanesRC13CStateManager:
/* 801A4968 001A18C8  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 801A496C 001A18CC  7C 08 02 A6 */	mflr r0
/* 801A4970 001A18D0  90 01 02 34 */	stw r0, 0x234(r1)
/* 801A4974 001A18D4  93 E1 02 2C */	stw r31, 0x22c(r1)
/* 801A4978 001A18D8  7C 9F 23 78 */	mr r31, r4
/* 801A497C 001A18DC  93 C1 02 28 */	stw r30, 0x228(r1)
/* 801A4980 001A18E0  7C 7E 1B 78 */	mr r30, r3
/* 801A4984 001A18E4  93 A1 02 24 */	stw r29, 0x224(r1)
/* 801A4988 001A18E8  7C BD 2B 78 */	mr r29, r5
/* 801A498C 001A18EC  4B ED 2F 2D */	bl AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
/* 801A4990 001A18F0  80 1D 0F 34 */	lwz r0, 0xf34(r29)
/* 801A4994 001A18F4  2C 00 00 00 */	cmpwi r0, 0
/* 801A4998 001A18F8  41 82 00 14 */	beq lbl_801A49AC
/* 801A499C 001A18FC  41 80 06 48 */	blt lbl_801A4FE4
/* 801A49A0 001A1900  2C 00 00 03 */	cmpwi r0, 3
/* 801A49A4 001A1904  40 80 06 40 */	bge lbl_801A4FE4
/* 801A49A8 001A1908  48 00 00 60 */	b lbl_801A4A08
lbl_801A49AC:
/* 801A49AC 001A190C  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A49B0 001A1910  C0 1E 04 28 */	lfs f0, 0x428(r30)
/* 801A49B4 001A1914  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801A49B8 001A1918  40 82 06 2C */	bne lbl_801A4FE4
/* 801A49BC 001A191C  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 801A49C0 001A1920  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801A49C4 001A1924  41 82 06 20 */	beq lbl_801A4FE4
/* 801A49C8 001A1928  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 801A49CC 001A192C  38 80 00 00 */	li r4, 0
/* 801A49D0 001A1930  28 03 00 00 */	cmplwi r3, 0
/* 801A49D4 001A1934  41 82 00 20 */	beq lbl_801A49F4
/* 801A49D8 001A1938  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801A49DC 001A193C  28 00 00 00 */	cmplwi r0, 0
/* 801A49E0 001A1940  40 82 00 10 */	bne lbl_801A49F0
/* 801A49E4 001A1944  88 03 00 28 */	lbz r0, 0x28(r3)
/* 801A49E8 001A1948  28 00 00 00 */	cmplwi r0, 0
/* 801A49EC 001A194C  41 82 00 08 */	beq lbl_801A49F4
lbl_801A49F0:
/* 801A49F0 001A1950  38 80 00 01 */	li r4, 1
lbl_801A49F4:
/* 801A49F4 001A1954  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801A49F8 001A1958  41 82 05 EC */	beq lbl_801A4FE4
/* 801A49FC 001A195C  7F E4 FB 78 */	mr r4, r31
/* 801A4A00 001A1960  4B F7 12 81 */	bl RenderParticles__10CModelDataCFRC14CFrustumPlanes
/* 801A4A04 001A1964  48 00 05 E0 */	b lbl_801A4FE4
lbl_801A4A08:
/* 801A4A08 001A1968  80 9E 0A EC */	lwz r4, 0xaec(r30)
/* 801A4A0C 001A196C  38 A0 00 00 */	li r5, 0
/* 801A4A10 001A1970  3B A0 00 00 */	li r29, 0
/* 801A4A14 001A1974  28 04 00 00 */	cmplwi r4, 0
/* 801A4A18 001A1978  41 82 00 24 */	beq lbl_801A4A3C
/* 801A4A1C 001A197C  81 84 00 00 */	lwz r12, 0(r4)
/* 801A4A20 001A1980  38 61 01 3C */	addi r3, r1, 0x13c
/* 801A4A24 001A1984  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801A4A28 001A1988  7D 89 03 A6 */	mtctr r12
/* 801A4A2C 001A198C  4E 80 04 21 */	bctrl
/* 801A4A30 001A1990  38 61 01 3C */	addi r3, r1, 0x13c
/* 801A4A34 001A1994  38 A0 00 01 */	li r5, 1
/* 801A4A38 001A1998  48 00 00 14 */	b lbl_801A4A4C
lbl_801A4A3C:
/* 801A4A3C 001A199C  38 00 00 00 */	li r0, 0
/* 801A4A40 001A19A0  38 61 01 20 */	addi r3, r1, 0x120
/* 801A4A44 001A19A4  98 01 01 38 */	stb r0, 0x138(r1)
/* 801A4A48 001A19A8  3B A0 00 01 */	li r29, 1
lbl_801A4A4C:
/* 801A4A4C 001A19AC  88 03 00 18 */	lbz r0, 0x18(r3)
/* 801A4A50 001A19B0  28 00 00 00 */	cmplwi r0, 0
/* 801A4A54 001A19B4  98 01 02 14 */	stb r0, 0x214(r1)
/* 801A4A58 001A19B8  41 82 00 3C */	beq lbl_801A4A94
/* 801A4A5C 001A19BC  34 81 01 FC */	addic. r4, r1, 0x1fc
/* 801A4A60 001A19C0  41 82 00 34 */	beq lbl_801A4A94
/* 801A4A64 001A19C4  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A4A68 001A19C8  D0 04 00 00 */	stfs f0, 0(r4)
/* 801A4A6C 001A19CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A4A70 001A19D0  D0 04 00 04 */	stfs f0, 4(r4)
/* 801A4A74 001A19D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A4A78 001A19D8  D0 04 00 08 */	stfs f0, 8(r4)
/* 801A4A7C 001A19DC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801A4A80 001A19E0  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801A4A84 001A19E4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801A4A88 001A19E8  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 801A4A8C 001A19EC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801A4A90 001A19F0  D0 04 00 14 */	stfs f0, 0x14(r4)
lbl_801A4A94:
/* 801A4A94 001A19F4  7F A0 07 75 */	extsb. r0, r29
/* 801A4A98 001A19F8  41 82 00 0C */	beq lbl_801A4AA4
/* 801A4A9C 001A19FC  38 00 00 00 */	li r0, 0
/* 801A4AA0 001A1A00  98 01 01 38 */	stb r0, 0x138(r1)
lbl_801A4AA4:
/* 801A4AA4 001A1A04  7C A0 07 75 */	extsb. r0, r5
/* 801A4AA8 001A1A08  41 82 00 0C */	beq lbl_801A4AB4
/* 801A4AAC 001A1A0C  38 00 00 00 */	li r0, 0
/* 801A4AB0 001A1A10  98 01 01 54 */	stb r0, 0x154(r1)
lbl_801A4AB4:
/* 801A4AB4 001A1A14  80 9E 0A 9C */	lwz r4, 0xa9c(r30)
/* 801A4AB8 001A1A18  38 A0 00 00 */	li r5, 0
/* 801A4ABC 001A1A1C  3B A0 00 00 */	li r29, 0
/* 801A4AC0 001A1A20  28 04 00 00 */	cmplwi r4, 0
/* 801A4AC4 001A1A24  41 82 00 24 */	beq lbl_801A4AE8
/* 801A4AC8 001A1A28  81 84 00 00 */	lwz r12, 0(r4)
/* 801A4ACC 001A1A2C  38 61 01 04 */	addi r3, r1, 0x104
/* 801A4AD0 001A1A30  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801A4AD4 001A1A34  7D 89 03 A6 */	mtctr r12
/* 801A4AD8 001A1A38  4E 80 04 21 */	bctrl
/* 801A4ADC 001A1A3C  38 61 01 04 */	addi r3, r1, 0x104
/* 801A4AE0 001A1A40  38 A0 00 01 */	li r5, 1
/* 801A4AE4 001A1A44  48 00 00 14 */	b lbl_801A4AF8
lbl_801A4AE8:
/* 801A4AE8 001A1A48  38 00 00 00 */	li r0, 0
/* 801A4AEC 001A1A4C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 801A4AF0 001A1A50  98 01 01 00 */	stb r0, 0x100(r1)
/* 801A4AF4 001A1A54  3B A0 00 01 */	li r29, 1
lbl_801A4AF8:
/* 801A4AF8 001A1A58  88 03 00 18 */	lbz r0, 0x18(r3)
/* 801A4AFC 001A1A5C  28 00 00 00 */	cmplwi r0, 0
/* 801A4B00 001A1A60  98 01 01 F8 */	stb r0, 0x1f8(r1)
/* 801A4B04 001A1A64  41 82 00 3C */	beq lbl_801A4B40
/* 801A4B08 001A1A68  34 81 01 E0 */	addic. r4, r1, 0x1e0
/* 801A4B0C 001A1A6C  41 82 00 34 */	beq lbl_801A4B40
/* 801A4B10 001A1A70  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A4B14 001A1A74  D0 04 00 00 */	stfs f0, 0(r4)
/* 801A4B18 001A1A78  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A4B1C 001A1A7C  D0 04 00 04 */	stfs f0, 4(r4)
/* 801A4B20 001A1A80  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A4B24 001A1A84  D0 04 00 08 */	stfs f0, 8(r4)
/* 801A4B28 001A1A88  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801A4B2C 001A1A8C  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801A4B30 001A1A90  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801A4B34 001A1A94  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 801A4B38 001A1A98  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801A4B3C 001A1A9C  D0 04 00 14 */	stfs f0, 0x14(r4)
lbl_801A4B40:
/* 801A4B40 001A1AA0  7F A0 07 75 */	extsb. r0, r29
/* 801A4B44 001A1AA4  41 82 00 0C */	beq lbl_801A4B50
/* 801A4B48 001A1AA8  38 00 00 00 */	li r0, 0
/* 801A4B4C 001A1AAC  98 01 01 00 */	stb r0, 0x100(r1)
lbl_801A4B50:
/* 801A4B50 001A1AB0  7C A0 07 75 */	extsb. r0, r5
/* 801A4B54 001A1AB4  41 82 00 0C */	beq lbl_801A4B60
/* 801A4B58 001A1AB8  38 00 00 00 */	li r0, 0
/* 801A4B5C 001A1ABC  98 01 01 1C */	stb r0, 0x11c(r1)
lbl_801A4B60:
/* 801A4B60 001A1AC0  80 9E 0A B0 */	lwz r4, 0xab0(r30)
/* 801A4B64 001A1AC4  38 A0 00 00 */	li r5, 0
/* 801A4B68 001A1AC8  3B A0 00 00 */	li r29, 0
/* 801A4B6C 001A1ACC  28 04 00 00 */	cmplwi r4, 0
/* 801A4B70 001A1AD0  41 82 00 24 */	beq lbl_801A4B94
/* 801A4B74 001A1AD4  81 84 00 00 */	lwz r12, 0(r4)
/* 801A4B78 001A1AD8  38 61 00 CC */	addi r3, r1, 0xcc
/* 801A4B7C 001A1ADC  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801A4B80 001A1AE0  7D 89 03 A6 */	mtctr r12
/* 801A4B84 001A1AE4  4E 80 04 21 */	bctrl
/* 801A4B88 001A1AE8  38 61 00 CC */	addi r3, r1, 0xcc
/* 801A4B8C 001A1AEC  38 A0 00 01 */	li r5, 1
/* 801A4B90 001A1AF0  48 00 00 14 */	b lbl_801A4BA4
lbl_801A4B94:
/* 801A4B94 001A1AF4  38 00 00 00 */	li r0, 0
/* 801A4B98 001A1AF8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801A4B9C 001A1AFC  98 01 00 C8 */	stb r0, 0xc8(r1)
/* 801A4BA0 001A1B00  3B A0 00 01 */	li r29, 1
lbl_801A4BA4:
/* 801A4BA4 001A1B04  88 03 00 18 */	lbz r0, 0x18(r3)
/* 801A4BA8 001A1B08  28 00 00 00 */	cmplwi r0, 0
/* 801A4BAC 001A1B0C  98 01 01 DC */	stb r0, 0x1dc(r1)
/* 801A4BB0 001A1B10  41 82 00 3C */	beq lbl_801A4BEC
/* 801A4BB4 001A1B14  34 81 01 C4 */	addic. r4, r1, 0x1c4
/* 801A4BB8 001A1B18  41 82 00 34 */	beq lbl_801A4BEC
/* 801A4BBC 001A1B1C  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A4BC0 001A1B20  D0 04 00 00 */	stfs f0, 0(r4)
/* 801A4BC4 001A1B24  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A4BC8 001A1B28  D0 04 00 04 */	stfs f0, 4(r4)
/* 801A4BCC 001A1B2C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A4BD0 001A1B30  D0 04 00 08 */	stfs f0, 8(r4)
/* 801A4BD4 001A1B34  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801A4BD8 001A1B38  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801A4BDC 001A1B3C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801A4BE0 001A1B40  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 801A4BE4 001A1B44  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801A4BE8 001A1B48  D0 04 00 14 */	stfs f0, 0x14(r4)
lbl_801A4BEC:
/* 801A4BEC 001A1B4C  7F A0 07 75 */	extsb. r0, r29
/* 801A4BF0 001A1B50  41 82 00 0C */	beq lbl_801A4BFC
/* 801A4BF4 001A1B54  38 00 00 00 */	li r0, 0
/* 801A4BF8 001A1B58  98 01 00 C8 */	stb r0, 0xc8(r1)
lbl_801A4BFC:
/* 801A4BFC 001A1B5C  7C A0 07 75 */	extsb. r0, r5
/* 801A4C00 001A1B60  41 82 00 0C */	beq lbl_801A4C0C
/* 801A4C04 001A1B64  38 00 00 00 */	li r0, 0
/* 801A4C08 001A1B68  98 01 00 E4 */	stb r0, 0xe4(r1)
lbl_801A4C0C:
/* 801A4C0C 001A1B6C  80 9E 0A C4 */	lwz r4, 0xac4(r30)
/* 801A4C10 001A1B70  38 A0 00 00 */	li r5, 0
/* 801A4C14 001A1B74  3B A0 00 00 */	li r29, 0
/* 801A4C18 001A1B78  28 04 00 00 */	cmplwi r4, 0
/* 801A4C1C 001A1B7C  41 82 00 24 */	beq lbl_801A4C40
/* 801A4C20 001A1B80  81 84 00 00 */	lwz r12, 0(r4)
/* 801A4C24 001A1B84  38 61 00 94 */	addi r3, r1, 0x94
/* 801A4C28 001A1B88  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801A4C2C 001A1B8C  7D 89 03 A6 */	mtctr r12
/* 801A4C30 001A1B90  4E 80 04 21 */	bctrl
/* 801A4C34 001A1B94  38 61 00 94 */	addi r3, r1, 0x94
/* 801A4C38 001A1B98  38 A0 00 01 */	li r5, 1
/* 801A4C3C 001A1B9C  48 00 00 14 */	b lbl_801A4C50
lbl_801A4C40:
/* 801A4C40 001A1BA0  38 00 00 00 */	li r0, 0
/* 801A4C44 001A1BA4  38 61 00 78 */	addi r3, r1, 0x78
/* 801A4C48 001A1BA8  98 01 00 90 */	stb r0, 0x90(r1)
/* 801A4C4C 001A1BAC  3B A0 00 01 */	li r29, 1
lbl_801A4C50:
/* 801A4C50 001A1BB0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 801A4C54 001A1BB4  28 00 00 00 */	cmplwi r0, 0
/* 801A4C58 001A1BB8  98 01 01 C0 */	stb r0, 0x1c0(r1)
/* 801A4C5C 001A1BBC  41 82 00 3C */	beq lbl_801A4C98
/* 801A4C60 001A1BC0  34 81 01 A8 */	addic. r4, r1, 0x1a8
/* 801A4C64 001A1BC4  41 82 00 34 */	beq lbl_801A4C98
/* 801A4C68 001A1BC8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A4C6C 001A1BCC  D0 04 00 00 */	stfs f0, 0(r4)
/* 801A4C70 001A1BD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A4C74 001A1BD4  D0 04 00 04 */	stfs f0, 4(r4)
/* 801A4C78 001A1BD8  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A4C7C 001A1BDC  D0 04 00 08 */	stfs f0, 8(r4)
/* 801A4C80 001A1BE0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801A4C84 001A1BE4  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801A4C88 001A1BE8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801A4C8C 001A1BEC  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 801A4C90 001A1BF0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801A4C94 001A1BF4  D0 04 00 14 */	stfs f0, 0x14(r4)
lbl_801A4C98:
/* 801A4C98 001A1BF8  7F A0 07 75 */	extsb. r0, r29
/* 801A4C9C 001A1BFC  41 82 00 0C */	beq lbl_801A4CA8
/* 801A4CA0 001A1C00  38 00 00 00 */	li r0, 0
/* 801A4CA4 001A1C04  98 01 00 90 */	stb r0, 0x90(r1)
lbl_801A4CA8:
/* 801A4CA8 001A1C08  7C A0 07 75 */	extsb. r0, r5
/* 801A4CAC 001A1C0C  41 82 00 0C */	beq lbl_801A4CB8
/* 801A4CB0 001A1C10  38 00 00 00 */	li r0, 0
/* 801A4CB4 001A1C14  98 01 00 AC */	stb r0, 0xac(r1)
lbl_801A4CB8:
/* 801A4CB8 001A1C18  80 9E 0A D8 */	lwz r4, 0xad8(r30)
/* 801A4CBC 001A1C1C  38 A0 00 00 */	li r5, 0
/* 801A4CC0 001A1C20  3B A0 00 00 */	li r29, 0
/* 801A4CC4 001A1C24  28 04 00 00 */	cmplwi r4, 0
/* 801A4CC8 001A1C28  41 82 00 24 */	beq lbl_801A4CEC
/* 801A4CCC 001A1C2C  81 84 00 00 */	lwz r12, 0(r4)
/* 801A4CD0 001A1C30  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A4CD4 001A1C34  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801A4CD8 001A1C38  7D 89 03 A6 */	mtctr r12
/* 801A4CDC 001A1C3C  4E 80 04 21 */	bctrl
/* 801A4CE0 001A1C40  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A4CE4 001A1C44  38 A0 00 01 */	li r5, 1
/* 801A4CE8 001A1C48  48 00 00 14 */	b lbl_801A4CFC
lbl_801A4CEC:
/* 801A4CEC 001A1C4C  38 00 00 00 */	li r0, 0
/* 801A4CF0 001A1C50  38 61 00 40 */	addi r3, r1, 0x40
/* 801A4CF4 001A1C54  98 01 00 58 */	stb r0, 0x58(r1)
/* 801A4CF8 001A1C58  3B A0 00 01 */	li r29, 1
lbl_801A4CFC:
/* 801A4CFC 001A1C5C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 801A4D00 001A1C60  28 00 00 00 */	cmplwi r0, 0
/* 801A4D04 001A1C64  98 01 01 A4 */	stb r0, 0x1a4(r1)
/* 801A4D08 001A1C68  41 82 00 3C */	beq lbl_801A4D44
/* 801A4D0C 001A1C6C  34 81 01 8C */	addic. r4, r1, 0x18c
/* 801A4D10 001A1C70  41 82 00 34 */	beq lbl_801A4D44
/* 801A4D14 001A1C74  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A4D18 001A1C78  D0 04 00 00 */	stfs f0, 0(r4)
/* 801A4D1C 001A1C7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A4D20 001A1C80  D0 04 00 04 */	stfs f0, 4(r4)
/* 801A4D24 001A1C84  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A4D28 001A1C88  D0 04 00 08 */	stfs f0, 8(r4)
/* 801A4D2C 001A1C8C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801A4D30 001A1C90  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801A4D34 001A1C94  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801A4D38 001A1C98  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 801A4D3C 001A1C9C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801A4D40 001A1CA0  D0 04 00 14 */	stfs f0, 0x14(r4)
lbl_801A4D44:
/* 801A4D44 001A1CA4  7F A0 07 75 */	extsb. r0, r29
/* 801A4D48 001A1CA8  41 82 00 0C */	beq lbl_801A4D54
/* 801A4D4C 001A1CAC  38 00 00 00 */	li r0, 0
/* 801A4D50 001A1CB0  98 01 00 58 */	stb r0, 0x58(r1)
lbl_801A4D54:
/* 801A4D54 001A1CB4  7C A0 07 75 */	extsb. r0, r5
/* 801A4D58 001A1CB8  41 82 00 0C */	beq lbl_801A4D64
/* 801A4D5C 001A1CBC  38 00 00 00 */	li r0, 0
/* 801A4D60 001A1CC0  98 01 00 74 */	stb r0, 0x74(r1)
lbl_801A4D64:
/* 801A4D64 001A1CC4  80 9E 0A D8 */	lwz r4, 0xad8(r30)
/* 801A4D68 001A1CC8  38 A0 00 00 */	li r5, 0
/* 801A4D6C 001A1CCC  3B A0 00 00 */	li r29, 0
/* 801A4D70 001A1CD0  28 04 00 00 */	cmplwi r4, 0
/* 801A4D74 001A1CD4  41 82 00 24 */	beq lbl_801A4D98
/* 801A4D78 001A1CD8  81 84 00 00 */	lwz r12, 0(r4)
/* 801A4D7C 001A1CDC  38 61 00 24 */	addi r3, r1, 0x24
/* 801A4D80 001A1CE0  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801A4D84 001A1CE4  7D 89 03 A6 */	mtctr r12
/* 801A4D88 001A1CE8  4E 80 04 21 */	bctrl
/* 801A4D8C 001A1CEC  38 61 00 24 */	addi r3, r1, 0x24
/* 801A4D90 001A1CF0  38 A0 00 01 */	li r5, 1
/* 801A4D94 001A1CF4  48 00 00 14 */	b lbl_801A4DA8
lbl_801A4D98:
/* 801A4D98 001A1CF8  38 00 00 00 */	li r0, 0
/* 801A4D9C 001A1CFC  38 61 00 08 */	addi r3, r1, 8
/* 801A4DA0 001A1D00  98 01 00 20 */	stb r0, 0x20(r1)
/* 801A4DA4 001A1D04  3B A0 00 01 */	li r29, 1
lbl_801A4DA8:
/* 801A4DA8 001A1D08  88 03 00 18 */	lbz r0, 0x18(r3)
/* 801A4DAC 001A1D0C  28 00 00 00 */	cmplwi r0, 0
/* 801A4DB0 001A1D10  98 01 01 88 */	stb r0, 0x188(r1)
/* 801A4DB4 001A1D14  41 82 00 3C */	beq lbl_801A4DF0
/* 801A4DB8 001A1D18  34 81 01 70 */	addic. r4, r1, 0x170
/* 801A4DBC 001A1D1C  41 82 00 34 */	beq lbl_801A4DF0
/* 801A4DC0 001A1D20  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A4DC4 001A1D24  D0 04 00 00 */	stfs f0, 0(r4)
/* 801A4DC8 001A1D28  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A4DCC 001A1D2C  D0 04 00 04 */	stfs f0, 4(r4)
/* 801A4DD0 001A1D30  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A4DD4 001A1D34  D0 04 00 08 */	stfs f0, 8(r4)
/* 801A4DD8 001A1D38  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801A4DDC 001A1D3C  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801A4DE0 001A1D40  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801A4DE4 001A1D44  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 801A4DE8 001A1D48  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801A4DEC 001A1D4C  D0 04 00 14 */	stfs f0, 0x14(r4)
lbl_801A4DF0:
/* 801A4DF0 001A1D50  7F A0 07 75 */	extsb. r0, r29
/* 801A4DF4 001A1D54  41 82 00 0C */	beq lbl_801A4E00
/* 801A4DF8 001A1D58  38 00 00 00 */	li r0, 0
/* 801A4DFC 001A1D5C  98 01 00 20 */	stb r0, 0x20(r1)
lbl_801A4E00:
/* 801A4E00 001A1D60  7C A0 07 75 */	extsb. r0, r5
/* 801A4E04 001A1D64  41 82 00 0C */	beq lbl_801A4E10
/* 801A4E08 001A1D68  38 00 00 00 */	li r0, 0
/* 801A4E0C 001A1D6C  98 01 00 3C */	stb r0, 0x3c(r1)
lbl_801A4E10:
/* 801A4E10 001A1D70  3C 60 80 5A */	lis r3, mskInvertedBox__6CAABox@ha
/* 801A4E14 001A1D74  C4 A3 67 54 */	lfsu f5, mskInvertedBox__6CAABox@l(r3)
/* 801A4E18 001A1D78  88 01 02 14 */	lbz r0, 0x214(r1)
/* 801A4E1C 001A1D7C  C0 83 00 04 */	lfs f4, 4(r3)
/* 801A4E20 001A1D80  C0 63 00 08 */	lfs f3, 8(r3)
/* 801A4E24 001A1D84  28 00 00 00 */	cmplwi r0, 0
/* 801A4E28 001A1D88  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 801A4E2C 001A1D8C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 801A4E30 001A1D90  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801A4E34 001A1D94  D0 A1 01 58 */	stfs f5, 0x158(r1)
/* 801A4E38 001A1D98  D0 81 01 5C */	stfs f4, 0x15c(r1)
/* 801A4E3C 001A1D9C  D0 61 01 60 */	stfs f3, 0x160(r1)
/* 801A4E40 001A1DA0  D0 41 01 64 */	stfs f2, 0x164(r1)
/* 801A4E44 001A1DA4  D0 21 01 68 */	stfs f1, 0x168(r1)
/* 801A4E48 001A1DA8  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 801A4E4C 001A1DAC  41 82 00 20 */	beq lbl_801A4E6C
/* 801A4E50 001A1DB0  3B A1 01 FC */	addi r29, r1, 0x1fc
/* 801A4E54 001A1DB4  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4E58 001A1DB8  7F A4 EB 78 */	mr r4, r29
/* 801A4E5C 001A1DBC  48 19 2C AD */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 801A4E60 001A1DC0  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4E64 001A1DC4  38 9D 00 0C */	addi r4, r29, 0xc
/* 801A4E68 001A1DC8  48 19 2C A1 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
lbl_801A4E6C:
/* 801A4E6C 001A1DCC  88 01 01 88 */	lbz r0, 0x188(r1)
/* 801A4E70 001A1DD0  28 00 00 00 */	cmplwi r0, 0
/* 801A4E74 001A1DD4  41 82 00 20 */	beq lbl_801A4E94
/* 801A4E78 001A1DD8  3B A1 01 70 */	addi r29, r1, 0x170
/* 801A4E7C 001A1DDC  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4E80 001A1DE0  7F A4 EB 78 */	mr r4, r29
/* 801A4E84 001A1DE4  48 19 2C 85 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 801A4E88 001A1DE8  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4E8C 001A1DEC  38 9D 00 0C */	addi r4, r29, 0xc
/* 801A4E90 001A1DF0  48 19 2C 79 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
lbl_801A4E94:
/* 801A4E94 001A1DF4  88 01 01 F8 */	lbz r0, 0x1f8(r1)
/* 801A4E98 001A1DF8  28 00 00 00 */	cmplwi r0, 0
/* 801A4E9C 001A1DFC  41 82 00 20 */	beq lbl_801A4EBC
/* 801A4EA0 001A1E00  3B A1 01 E0 */	addi r29, r1, 0x1e0
/* 801A4EA4 001A1E04  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4EA8 001A1E08  7F A4 EB 78 */	mr r4, r29
/* 801A4EAC 001A1E0C  48 19 2C 5D */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 801A4EB0 001A1E10  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4EB4 001A1E14  38 9D 00 0C */	addi r4, r29, 0xc
/* 801A4EB8 001A1E18  48 19 2C 51 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
lbl_801A4EBC:
/* 801A4EBC 001A1E1C  88 01 01 DC */	lbz r0, 0x1dc(r1)
/* 801A4EC0 001A1E20  28 00 00 00 */	cmplwi r0, 0
/* 801A4EC4 001A1E24  41 82 00 20 */	beq lbl_801A4EE4
/* 801A4EC8 001A1E28  3B A1 01 C4 */	addi r29, r1, 0x1c4
/* 801A4ECC 001A1E2C  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4ED0 001A1E30  7F A4 EB 78 */	mr r4, r29
/* 801A4ED4 001A1E34  48 19 2C 35 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 801A4ED8 001A1E38  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4EDC 001A1E3C  38 9D 00 0C */	addi r4, r29, 0xc
/* 801A4EE0 001A1E40  48 19 2C 29 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
lbl_801A4EE4:
/* 801A4EE4 001A1E44  88 01 01 C0 */	lbz r0, 0x1c0(r1)
/* 801A4EE8 001A1E48  28 00 00 00 */	cmplwi r0, 0
/* 801A4EEC 001A1E4C  41 82 00 20 */	beq lbl_801A4F0C
/* 801A4EF0 001A1E50  3B A1 01 A8 */	addi r29, r1, 0x1a8
/* 801A4EF4 001A1E54  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4EF8 001A1E58  7F A4 EB 78 */	mr r4, r29
/* 801A4EFC 001A1E5C  48 19 2C 0D */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 801A4F00 001A1E60  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4F04 001A1E64  38 9D 00 0C */	addi r4, r29, 0xc
/* 801A4F08 001A1E68  48 19 2C 01 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
lbl_801A4F0C:
/* 801A4F0C 001A1E6C  88 01 01 A4 */	lbz r0, 0x1a4(r1)
/* 801A4F10 001A1E70  28 00 00 00 */	cmplwi r0, 0
/* 801A4F14 001A1E74  41 82 00 20 */	beq lbl_801A4F34
/* 801A4F18 001A1E78  3B A1 01 8C */	addi r29, r1, 0x18c
/* 801A4F1C 001A1E7C  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4F20 001A1E80  7F A4 EB 78 */	mr r4, r29
/* 801A4F24 001A1E84  48 19 2B E5 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 801A4F28 001A1E88  38 61 01 58 */	addi r3, r1, 0x158
/* 801A4F2C 001A1E8C  38 9D 00 0C */	addi r4, r29, 0xc
/* 801A4F30 001A1E90  48 19 2B D9 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
lbl_801A4F34:
/* 801A4F34 001A1E94  7F E3 FB 78 */	mr r3, r31
/* 801A4F38 001A1E98  38 81 01 58 */	addi r4, r1, 0x158
/* 801A4F3C 001A1E9C  48 1A 02 95 */	bl BoxInFrustumPlanes__14CFrustumPlanesCFRC6CAABox
/* 801A4F40 001A1EA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A4F44 001A1EA4  41 82 00 84 */	beq lbl_801A4FC8
/* 801A4F48 001A1EA8  80 9E 0A EC */	lwz r4, 0xaec(r30)
/* 801A4F4C 001A1EAC  28 04 00 00 */	cmplwi r4, 0
/* 801A4F50 001A1EB0  41 82 00 18 */	beq lbl_801A4F68
/* 801A4F54 001A1EB4  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 801A4F58 001A1EB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4F5C 001A1EBC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801A4F60 001A1EC0  7D 89 03 A6 */	mtctr r12
/* 801A4F64 001A1EC4  4E 80 04 21 */	bctrl
lbl_801A4F68:
/* 801A4F68 001A1EC8  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 801A4F6C 001A1ECC  80 9E 0A 9C */	lwz r4, 0xa9c(r30)
/* 801A4F70 001A1ED0  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4F74 001A1ED4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801A4F78 001A1ED8  7D 89 03 A6 */	mtctr r12
/* 801A4F7C 001A1EDC  4E 80 04 21 */	bctrl
/* 801A4F80 001A1EE0  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 801A4F84 001A1EE4  80 9E 0A B0 */	lwz r4, 0xab0(r30)
/* 801A4F88 001A1EE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4F8C 001A1EEC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801A4F90 001A1EF0  7D 89 03 A6 */	mtctr r12
/* 801A4F94 001A1EF4  4E 80 04 21 */	bctrl
/* 801A4F98 001A1EF8  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 801A4F9C 001A1EFC  80 9E 0A C4 */	lwz r4, 0xac4(r30)
/* 801A4FA0 001A1F00  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4FA4 001A1F04  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801A4FA8 001A1F08  7D 89 03 A6 */	mtctr r12
/* 801A4FAC 001A1F0C  4E 80 04 21 */	bctrl
/* 801A4FB0 001A1F10  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 801A4FB4 001A1F14  80 9E 0A D8 */	lwz r4, 0xad8(r30)
/* 801A4FB8 001A1F18  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4FBC 001A1F1C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801A4FC0 001A1F20  7D 89 03 A6 */	mtctr r12
/* 801A4FC4 001A1F24  4E 80 04 21 */	bctrl
lbl_801A4FC8:
/* 801A4FC8 001A1F28  38 00 00 00 */	li r0, 0
/* 801A4FCC 001A1F2C  98 01 01 88 */	stb r0, 0x188(r1)
/* 801A4FD0 001A1F30  98 01 01 A4 */	stb r0, 0x1a4(r1)
/* 801A4FD4 001A1F34  98 01 01 C0 */	stb r0, 0x1c0(r1)
/* 801A4FD8 001A1F38  98 01 01 DC */	stb r0, 0x1dc(r1)
/* 801A4FDC 001A1F3C  98 01 01 F8 */	stb r0, 0x1f8(r1)
/* 801A4FE0 001A1F40  98 01 02 14 */	stb r0, 0x214(r1)
lbl_801A4FE4:
/* 801A4FE4 001A1F44  80 01 02 34 */	lwz r0, 0x234(r1)
/* 801A4FE8 001A1F48  83 E1 02 2C */	lwz r31, 0x22c(r1)
/* 801A4FEC 001A1F4C  83 C1 02 28 */	lwz r30, 0x228(r1)
/* 801A4FF0 001A1F50  83 A1 02 24 */	lwz r29, 0x224(r1)
/* 801A4FF4 001A1F54  7C 08 03 A6 */	mtlr r0
/* 801A4FF8 001A1F58  38 21 02 30 */	addi r1, r1, 0x230
/* 801A4FFC 001A1F5C  4E 80 00 20 */	blr

.global Render__12CIceSheegothCFRC13CStateManager
Render__12CIceSheegothCFRC13CStateManager:
/* 801A5000 001A1F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A5004 001A1F64  7C 08 02 A6 */	mflr r0
/* 801A5008 001A1F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A500C 001A1F6C  4B ED 30 21 */	bl Render__10CPatternedCFRC13CStateManager
/* 801A5010 001A1F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A5014 001A1F74  7C 08 03 A6 */	mtlr r0
/* 801A5018 001A1F78  38 21 00 10 */	addi r1, r1, 0x10
/* 801A501C 001A1F7C  4E 80 00 20 */	blr

.global AcceptScriptMsg__12CIceSheegothF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__12CIceSheegothF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801A5020 001A1F80  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801A5024 001A1F84  7C 08 02 A6 */	mflr r0
/* 801A5028 001A1F88  90 01 01 04 */	stw r0, 0x104(r1)
/* 801A502C 001A1F8C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 801A5030 001A1F90  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 801A5034 001A1F94  BF 41 00 D8 */	stmw r26, 0xd8(r1)
/* 801A5038 001A1F98  7C 9C 23 78 */	mr r28, r4
/* 801A503C 001A1F9C  7C 7F 1B 78 */	mr r31, r3
/* 801A5040 001A1FA0  28 1C 00 30 */	cmplwi r28, 0x30
/* 801A5044 001A1FA4  7C BD 2B 78 */	mr r29, r5
/* 801A5048 001A1FA8  7C DE 33 78 */	mr r30, r6
/* 801A504C 001A1FAC  41 81 06 C0 */	bgt lbl_801A570C
/* 801A5050 001A1FB0  3C 80 80 3E */	lis r4, lbl_803E4A54@ha
/* 801A5054 001A1FB4  57 80 10 3A */	slwi r0, r28, 2
/* 801A5058 001A1FB8  38 84 4A 54 */	addi r4, r4, lbl_803E4A54@l
/* 801A505C 001A1FBC  7C 04 00 2E */	lwzx r0, r4, r0
/* 801A5060 001A1FC0  7C 09 03 A6 */	mtctr r0
/* 801A5064 001A1FC4  4E 80 04 20 */	bctr
.global lbl_801A5068
lbl_801A5068:
/* 801A5068 001A1FC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801A506C 001A1FCC  7F C4 F3 78 */	mr r4, r30
/* 801A5070 001A1FD0  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A5074 001A1FD4  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801A5078 001A1FD8  7D 89 03 A6 */	mtctr r12
/* 801A507C 001A1FDC  4E 80 04 21 */	bctrl
/* 801A5080 001A1FE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A5084 001A1FE4  40 82 00 10 */	bne lbl_801A5094
/* 801A5088 001A1FE8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A508C 001A1FEC  38 80 00 00 */	li r4, 0
/* 801A5090 001A1FF0  4B F9 59 49 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_801A5094:
/* 801A5094 001A1FF4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A5098 001A1FF8  7F C4 F3 78 */	mr r4, r30
/* 801A509C 001A1FFC  4B F9 5C 55 */	bl Activate__15CBodyControllerFR13CStateManager
/* 801A50A0 001A2000  7F E3 FB 78 */	mr r3, r31
/* 801A50A4 001A2004  7F C4 F3 78 */	mr r4, r30
/* 801A50A8 001A2008  4B FF AF 41 */	bl sub_8019ffe8
/* 801A50AC 001A200C  7F E3 FB 78 */	mr r3, r31
/* 801A50B0 001A2010  7F C4 F3 78 */	mr r4, r30
/* 801A50B4 001A2014  4B FF A3 B5 */	bl CreateFlameThrower__12CIceSheegothFR13CStateManager
/* 801A50B8 001A2018  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A50BC 001A201C  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801A50C0 001A2020  4B F8 ED ED */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 801A50C4 001A2024  FF E0 08 90 */	fmr f31, f1
/* 801A50C8 001A2028  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A50CC 001A202C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801A50D0 001A2030  40 81 00 28 */	ble lbl_801A50F8
/* 801A50D4 001A2034  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801A50D8 001A2038  38 80 00 01 */	li r4, 1
/* 801A50DC 001A203C  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801A50E0 001A2040  4B F8 EC F5 */	bl GetLocomotionSpeed__14CBodyStateInfoCFQ23pas15ELocomotionAnim
/* 801A50E4 001A2044  C0 02 A7 E4 */	lfs f0, lbl_805AC504@sda21(r2)
/* 801A50E8 001A2048  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A50EC 001A204C  EC 00 F8 24 */	fdivs f0, f0, f31
/* 801A50F0 001A2050  D0 1F 09 48 */	stfs f0, 0x948(r31)
/* 801A50F4 001A2054  D0 1F 09 44 */	stfs f0, 0x944(r31)
lbl_801A50F8:
/* 801A50F8 001A2058  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 801A50FC 001A205C  38 00 00 01 */	li r0, 1
/* 801A5100 001A2060  80 82 A7 40 */	lwz r4, lbl_805AC460@sda21(r2)
/* 801A5104 001A2064  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801A5108 001A2068  90 05 00 34 */	stw r0, 0x34(r5)
/* 801A510C 001A206C  4B E5 FB AD */	bl string_l__4rstlFPCc
/* 801A5110 001A2070  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 801A5114 001A2074  38 61 00 08 */	addi r3, r1, 8
/* 801A5118 001A2078  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 801A511C 001A207C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801A5120 001A2080  4B E8 97 19 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801A5124 001A2084  88 01 00 08 */	lbz r0, 8(r1)
/* 801A5128 001A2088  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801A512C 001A208C  98 1F 0A F4 */	stb r0, 0xaf4(r31)
/* 801A5130 001A2090  48 19 89 B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801A5134 001A2094  48 00 05 D8 */	b lbl_801A570C
.global lbl_801A5138
lbl_801A5138:
/* 801A5138 001A2098  80 7F 0A 2C */	lwz r3, 0xa2c(r31)
/* 801A513C 001A209C  7F C4 F3 78 */	mr r4, r30
/* 801A5140 001A20A0  38 A0 00 01 */	li r5, 1
/* 801A5144 001A20A4  48 00 21 B5 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801A5148 001A20A8  48 00 05 C4 */	b lbl_801A570C
.global lbl_801A514C
lbl_801A514C:
/* 801A514C 001A20AC  80 7F 0A 2C */	lwz r3, 0xa2c(r31)
/* 801A5150 001A20B0  7F C4 F3 78 */	mr r4, r30
/* 801A5154 001A20B4  38 A0 00 00 */	li r5, 0
/* 801A5158 001A20B8  48 00 21 A1 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801A515C 001A20BC  48 00 05 B0 */	b lbl_801A570C
.global lbl_801A5160
lbl_801A5160:
/* 801A5160 001A20C0  80 7F 0A 2C */	lwz r3, 0xa2c(r31)
/* 801A5164 001A20C4  7F C4 F3 78 */	mr r4, r30
/* 801A5168 001A20C8  48 00 22 5D */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 801A516C 001A20CC  A0 7F 0A 80 */	lhz r3, 0xa80(r31)
/* 801A5170 001A20D0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801A5174 001A20D4  7C 03 00 40 */	cmplw r3, r0
/* 801A5178 001A20D8  41 82 00 20 */	beq lbl_801A5198
/* 801A517C 001A20DC  A0 1F 0A 80 */	lhz r0, 0xa80(r31)
/* 801A5180 001A20E0  7F C3 F3 78 */	mr r3, r30
/* 801A5184 001A20E4  38 81 00 3C */	addi r4, r1, 0x3c
/* 801A5188 001A20E8  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 801A518C 001A20EC  4B EA 70 E1 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 801A5190 001A20F0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801A5194 001A20F4  B0 1F 0A 80 */	sth r0, 0xa80(r31)
lbl_801A5198:
/* 801A5198 001A20F8  80 1F 0A F0 */	lwz r0, 0xaf0(r31)
/* 801A519C 001A20FC  28 00 00 00 */	cmplwi r0, 0
/* 801A51A0 001A2100  41 82 05 6C */	beq lbl_801A570C
/* 801A51A4 001A2104  80 1F 0A F0 */	lwz r0, 0xaf0(r31)
/* 801A51A8 001A2108  38 61 00 50 */	addi r3, r1, 0x50
/* 801A51AC 001A210C  90 01 00 50 */	stw r0, 0x50(r1)
/* 801A51B0 001A2110  48 14 4C D5 */	bl RemoveEmitter__11CSfxManagerF10CSfxHandle
/* 801A51B4 001A2114  48 00 05 58 */	b lbl_801A570C
.global lbl_801A51B8
lbl_801A51B8:
/* 801A51B8 001A2118  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A51BC 001A211C  38 60 00 01 */	li r3, 1
/* 801A51C0 001A2120  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801A51C4 001A2124  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 801A51C8 001A2128  48 00 05 44 */	b lbl_801A570C
.global lbl_801A51CC
lbl_801A51CC:
/* 801A51CC 001A212C  80 BF 00 04 */	lwz r5, 4(r31)
/* 801A51D0 001A2130  80 9E 08 50 */	lwz r4, 0x850(r30)
/* 801A51D4 001A2134  54 A3 18 38 */	slwi r3, r5, 3
/* 801A51D8 001A2138  90 A1 00 54 */	stw r5, 0x54(r1)
/* 801A51DC 001A213C  80 84 00 20 */	lwz r4, 0x20(r4)
/* 801A51E0 001A2140  38 03 00 04 */	addi r0, r3, 4
/* 801A51E4 001A2144  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 801A51E8 001A2148  7C 84 00 2E */	lwzx r4, r4, r0
/* 801A51EC 001A214C  80 64 01 2C */	lwz r3, 0x12c(r4)
/* 801A51F0 001A2150  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 801A51F4 001A2154  90 1F 07 60 */	stw r0, 0x760(r31)
/* 801A51F8 001A2158  80 64 01 2C */	lwz r3, 0x12c(r4)
/* 801A51FC 001A215C  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 801A5200 001A2160  90 1F 08 44 */	stw r0, 0x844(r31)
/* 801A5204 001A2164  48 00 05 08 */	b lbl_801A570C
.global lbl_801A5208
lbl_801A5208:
/* 801A5208 001A2168  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801A520C 001A216C  7F C5 F3 78 */	mr r5, r30
/* 801A5210 001A2170  38 81 00 38 */	addi r4, r1, 0x38
/* 801A5214 001A2174  B0 01 00 38 */	sth r0, 0x38(r1)
/* 801A5218 001A2178  4B FF B2 B9 */	bl sub_801a04d0
/* 801A521C 001A217C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801A5220 001A2180  7F C3 F3 78 */	mr r3, r30
/* 801A5224 001A2184  38 81 00 34 */	addi r4, r1, 0x34
/* 801A5228 001A2188  B0 01 00 34 */	sth r0, 0x34(r1)
/* 801A522C 001A218C  4B EA 73 49 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801A5230 001A2190  7C 64 1B 78 */	mr r4, r3
/* 801A5234 001A2194  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801A5238 001A2198  4B F0 A1 15 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801A523C 001A219C  80 83 00 04 */	lwz r4, 4(r3)
/* 801A5240 001A21A0  28 04 00 00 */	cmplwi r4, 0
/* 801A5244 001A21A4  41 82 04 C8 */	beq lbl_801A570C
/* 801A5248 001A21A8  38 61 00 30 */	addi r3, r1, 0x30
/* 801A524C 001A21AC  48 00 39 41 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801A5250 001A21B0  A0 01 00 30 */	lhz r0, 0x30(r1)
/* 801A5254 001A21B4  7F C3 F3 78 */	mr r3, r30
/* 801A5258 001A21B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 801A525C 001A21BC  B0 01 00 48 */	sth r0, 0x48(r1)
/* 801A5260 001A21C0  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801A5264 001A21C4  4B EA 73 41 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A5268 001A21C8  7C 64 1B 78 */	mr r4, r3
/* 801A526C 001A21CC  38 61 00 68 */	addi r3, r1, 0x68
/* 801A5270 001A21D0  4B F0 06 29 */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 801A5274 001A21D4  80 83 00 04 */	lwz r4, 4(r3)
/* 801A5278 001A21D8  28 04 00 00 */	cmplwi r4, 0
/* 801A527C 001A21DC  41 82 04 90 */	beq lbl_801A570C
/* 801A5280 001A21E0  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801A5284 001A21E4  A0 84 00 EC */	lhz r4, 0xec(r4)
/* 801A5288 001A21E8  A0 03 00 08 */	lhz r0, 8(r3)
/* 801A528C 001A21EC  7C 04 00 40 */	cmplw r4, r0
/* 801A5290 001A21F0  40 82 04 7C */	bne lbl_801A570C
/* 801A5294 001A21F4  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A5298 001A21F8  38 60 00 01 */	li r3, 1
/* 801A529C 001A21FC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801A52A0 001A2200  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 801A52A4 001A2204  48 00 04 68 */	b lbl_801A570C
.global lbl_801A52A8
lbl_801A52A8:
/* 801A52A8 001A2208  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801A52AC 001A220C  7F C3 F3 78 */	mr r3, r30
/* 801A52B0 001A2210  38 81 00 28 */	addi r4, r1, 0x28
/* 801A52B4 001A2214  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801A52B8 001A2218  4B EA 72 BD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801A52BC 001A221C  7C 64 1B 78 */	mr r4, r3
/* 801A52C0 001A2220  38 61 00 98 */	addi r3, r1, 0x98
/* 801A52C4 001A2224  4B F0 A0 89 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801A52C8 001A2228  83 43 00 04 */	lwz r26, 4(r3)
/* 801A52CC 001A222C  28 1A 00 00 */	cmplwi r26, 0
/* 801A52D0 001A2230  41 82 02 20 */	beq lbl_801A54F0
/* 801A52D4 001A2234  7F 44 D3 78 */	mr r4, r26
/* 801A52D8 001A2238  38 61 00 24 */	addi r3, r1, 0x24
/* 801A52DC 001A223C  48 00 38 B1 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801A52E0 001A2240  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 801A52E4 001A2244  7F C3 F3 78 */	mr r3, r30
/* 801A52E8 001A2248  38 81 00 20 */	addi r4, r1, 0x20
/* 801A52EC 001A224C  B0 01 00 44 */	sth r0, 0x44(r1)
/* 801A52F0 001A2250  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801A52F4 001A2254  4B EA 72 B1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A52F8 001A2258  7C 64 1B 78 */	mr r4, r3
/* 801A52FC 001A225C  38 61 00 60 */	addi r3, r1, 0x60
/* 801A5300 001A2260  4B F0 05 99 */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 801A5304 001A2264  83 63 00 04 */	lwz r27, 4(r3)
/* 801A5308 001A2268  28 1B 00 00 */	cmplwi r27, 0
/* 801A530C 001A226C  41 82 01 A0 */	beq lbl_801A54AC
/* 801A5310 001A2270  A0 7D 00 00 */	lhz r3, 0(r29)
/* 801A5314 001A2274  A0 1F 0A F6 */	lhz r0, 0xaf6(r31)
/* 801A5318 001A2278  7C 03 00 40 */	cmplw r3, r0
/* 801A531C 001A227C  40 82 01 3C */	bne lbl_801A5458
/* 801A5320 001A2280  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A5324 001A2284  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801A5328 001A2288  40 82 01 30 */	bne lbl_801A5458
/* 801A532C 001A228C  C0 3B 01 34 */	lfs f1, 0x134(r27)
/* 801A5330 001A2290  7F E3 FB 78 */	mr r3, r31
/* 801A5334 001A2294  7F C4 F3 78 */	mr r4, r30
/* 801A5338 001A2298  4B FF 98 B9 */	bl sub_8019ebf0
/* 801A533C 001A229C  80 7F 0A EC */	lwz r3, 0xaec(r31)
/* 801A5340 001A22A0  28 03 00 00 */	cmplwi r3, 0
/* 801A5344 001A22A4  41 82 00 1C */	beq lbl_801A5360
/* 801A5348 001A22A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801A534C 001A22AC  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 801A5350 001A22B0  7D 89 03 A6 */	mtctr r12
/* 801A5354 001A22B4  4E 80 04 21 */	bctrl
/* 801A5358 001A22B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A535C 001A22BC  41 82 01 50 */	beq lbl_801A54AC
lbl_801A5360:
/* 801A5360 001A22C0  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 801A5364 001A22C4  3B 60 00 00 */	li r27, 0
/* 801A5368 001A22C8  38 83 13 D8 */	addi r4, r3, lbl_803D13D8@l
/* 801A536C 001A22CC  38 60 03 40 */	li r3, 0x340
/* 801A5370 001A22D0  38 84 00 8C */	addi r4, r4, 0x8c
/* 801A5374 001A22D4  38 A0 00 00 */	li r5, 0
/* 801A5378 001A22D8  48 17 04 F5 */	bl __nw__FUlPCcPCc
/* 801A537C 001A22DC  7C 7A 1B 79 */	or. r26, r3, r3
/* 801A5380 001A22E0  41 82 00 2C */	beq lbl_801A53AC
/* 801A5384 001A22E4  38 61 00 90 */	addi r3, r1, 0x90
/* 801A5388 001A22E8  38 9F 0A DC */	addi r4, r31, 0xadc
/* 801A538C 001A22EC  48 19 BB 1D */	bl __ct__6CTokenFRC6CToken
/* 801A5390 001A22F0  7F 43 D3 78 */	mr r3, r26
/* 801A5394 001A22F4  38 81 00 90 */	addi r4, r1, 0x90
/* 801A5398 001A22F8  3B 60 00 01 */	li r27, 1
/* 801A539C 001A22FC  38 A0 00 00 */	li r5, 0
/* 801A53A0 001A2300  38 C0 00 01 */	li r6, 1
/* 801A53A4 001A2304  48 17 A0 3D */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801A53A8 001A2308  7C 7A 1B 78 */	mr r26, r3
lbl_801A53AC:
/* 801A53AC 001A230C  7C 1A 00 D0 */	neg r0, r26
/* 801A53B0 001A2310  38 61 00 88 */	addi r3, r1, 0x88
/* 801A53B4 001A2314  7C 04 D3 78 */	or r4, r0, r26
/* 801A53B8 001A2318  38 1F 0A E8 */	addi r0, r31, 0xae8
/* 801A53BC 001A231C  54 84 0F FE */	srwi r4, r4, 0x1f
/* 801A53C0 001A2320  93 41 00 8C */	stw r26, 0x8c(r1)
/* 801A53C4 001A2324  7C 03 00 40 */	cmplw r3, r0
/* 801A53C8 001A2328  98 81 00 88 */	stb r4, 0x88(r1)
/* 801A53CC 001A232C  41 82 00 48 */	beq lbl_801A5414
/* 801A53D0 001A2330  88 1F 0A E8 */	lbz r0, 0xae8(r31)
/* 801A53D4 001A2334  28 00 00 00 */	cmplwi r0, 0
/* 801A53D8 001A2338  41 82 00 24 */	beq lbl_801A53FC
/* 801A53DC 001A233C  80 7F 0A EC */	lwz r3, 0xaec(r31)
/* 801A53E0 001A2340  28 03 00 00 */	cmplwi r3, 0
/* 801A53E4 001A2344  41 82 00 18 */	beq lbl_801A53FC
/* 801A53E8 001A2348  81 83 00 00 */	lwz r12, 0(r3)
/* 801A53EC 001A234C  38 80 00 01 */	li r4, 1
/* 801A53F0 001A2350  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A53F4 001A2354  7D 89 03 A6 */	mtctr r12
/* 801A53F8 001A2358  4E 80 04 21 */	bctrl
lbl_801A53FC:
/* 801A53FC 001A235C  88 61 00 88 */	lbz r3, 0x88(r1)
/* 801A5400 001A2360  38 00 00 00 */	li r0, 0
/* 801A5404 001A2364  98 7F 0A E8 */	stb r3, 0xae8(r31)
/* 801A5408 001A2368  80 61 00 8C */	lwz r3, 0x8c(r1)
/* 801A540C 001A236C  90 7F 0A EC */	stw r3, 0xaec(r31)
/* 801A5410 001A2370  98 01 00 88 */	stb r0, 0x88(r1)
lbl_801A5414:
/* 801A5414 001A2374  88 01 00 88 */	lbz r0, 0x88(r1)
/* 801A5418 001A2378  28 00 00 00 */	cmplwi r0, 0
/* 801A541C 001A237C  41 82 00 24 */	beq lbl_801A5440
/* 801A5420 001A2380  80 61 00 8C */	lwz r3, 0x8c(r1)
/* 801A5424 001A2384  28 03 00 00 */	cmplwi r3, 0
/* 801A5428 001A2388  41 82 00 18 */	beq lbl_801A5440
/* 801A542C 001A238C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A5430 001A2390  38 80 00 01 */	li r4, 1
/* 801A5434 001A2394  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A5438 001A2398  7D 89 03 A6 */	mtctr r12
/* 801A543C 001A239C  4E 80 04 21 */	bctrl
lbl_801A5440:
/* 801A5440 001A23A0  7F 60 07 75 */	extsb. r0, r27
/* 801A5444 001A23A4  41 82 00 68 */	beq lbl_801A54AC
/* 801A5448 001A23A8  38 61 00 90 */	addi r3, r1, 0x90
/* 801A544C 001A23AC  38 80 00 00 */	li r4, 0
/* 801A5450 001A23B0  48 19 B9 F1 */	bl __dt__6CTokenFv
/* 801A5454 001A23B4  48 00 00 58 */	b lbl_801A54AC
lbl_801A5458:
/* 801A5458 001A23B8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A545C 001A23BC  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801A5460 001A23C0  7F E3 FB 78 */	mr r3, r31
/* 801A5464 001A23C4  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A5468 001A23C8  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 801A546C 001A23CC  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 801A5470 001A23D0  7D 89 03 A6 */	mtctr r12
/* 801A5474 001A23D4  4E 80 04 21 */	bctrl
/* 801A5478 001A23D8  7F E3 FB 78 */	mr r3, r31
/* 801A547C 001A23DC  7F 44 D3 78 */	mr r4, r26
/* 801A5480 001A23E0  4B FF A7 C1 */	bl sub_8019fc40
/* 801A5484 001A23E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A5488 001A23E8  41 82 00 24 */	beq lbl_801A54AC
/* 801A548C 001A23EC  C0 02 A7 E8 */	lfs f0, lbl_805AC508@sda21(r2)
/* 801A5490 001A23F0  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 801A5494 001A23F4  C0 5B 00 58 */	lfs f2, 0x58(r27)
/* 801A5498 001A23F8  C0 3B 00 48 */	lfs f1, 0x48(r27)
/* 801A549C 001A23FC  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 801A54A0 001A2400  D0 1F 09 80 */	stfs f0, 0x980(r31)
/* 801A54A4 001A2404  D0 3F 09 84 */	stfs f1, 0x984(r31)
/* 801A54A8 001A2408  D0 5F 09 88 */	stfs f2, 0x988(r31)
lbl_801A54AC:
/* 801A54AC 001A240C  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A54B0 001A2410  38 60 00 01 */	li r3, 1
/* 801A54B4 001A2414  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801A54B8 001A2418  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A54BC 001A241C  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 801A54C0 001A2420  7F C3 F3 78 */	mr r3, r30
/* 801A54C4 001A2424  38 81 00 B4 */	addi r4, r1, 0xb4
/* 801A54C8 001A2428  38 A0 00 00 */	li r5, 0
/* 801A54CC 001A242C  D0 1F 09 68 */	stfs f0, 0x968(r31)
/* 801A54D0 001A2430  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801A54D4 001A2434  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801A54D8 001A2438  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801A54DC 001A243C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A54E0 001A2440  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 801A54E4 001A2444  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 801A54E8 001A2448  4B EA 32 9D */	bl InformListeners__13CStateManagerFRC9CVector3f16EListenNoiseType
/* 801A54EC 001A244C  48 00 02 20 */	b lbl_801A570C
lbl_801A54F0:
/* 801A54F0 001A2450  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801A54F4 001A2454  7F E3 FB 78 */	mr r3, r31
/* 801A54F8 001A2458  7F C4 F3 78 */	mr r4, r30
/* 801A54FC 001A245C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801A5500 001A2460  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801A5504 001A2464  4B FF 92 71 */	bl sub_8019e774
/* 801A5508 001A2468  48 00 02 04 */	b lbl_801A570C
.global lbl_801A550C
lbl_801A550C:
/* 801A550C 001A246C  A0 7D 00 00 */	lhz r3, 0(r29)
/* 801A5510 001A2470  A0 1F 0A F6 */	lhz r0, 0xaf6(r31)
/* 801A5514 001A2474  7C 03 00 40 */	cmplw r3, r0
/* 801A5518 001A2478  40 82 01 98 */	bne lbl_801A56B0
/* 801A551C 001A247C  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A5520 001A2480  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801A5524 001A2484  40 82 01 8C */	bne lbl_801A56B0
/* 801A5528 001A2488  B0 61 00 18 */	sth r3, 0x18(r1)
/* 801A552C 001A248C  7F C3 F3 78 */	mr r3, r30
/* 801A5530 001A2490  38 81 00 18 */	addi r4, r1, 0x18
/* 801A5534 001A2494  4B EA 70 41 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801A5538 001A2498  7C 64 1B 78 */	mr r4, r3
/* 801A553C 001A249C  38 61 00 80 */	addi r3, r1, 0x80
/* 801A5540 001A24A0  4B F0 9E 0D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801A5544 001A24A4  80 83 00 04 */	lwz r4, 4(r3)
/* 801A5548 001A24A8  28 04 00 00 */	cmplwi r4, 0
/* 801A554C 001A24AC  41 82 01 64 */	beq lbl_801A56B0
/* 801A5550 001A24B0  38 61 00 14 */	addi r3, r1, 0x14
/* 801A5554 001A24B4  48 00 36 39 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801A5558 001A24B8  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801A555C 001A24BC  7F C3 F3 78 */	mr r3, r30
/* 801A5560 001A24C0  38 81 00 10 */	addi r4, r1, 0x10
/* 801A5564 001A24C4  B0 01 00 40 */	sth r0, 0x40(r1)
/* 801A5568 001A24C8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A556C 001A24CC  4B EA 70 39 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801A5570 001A24D0  7C 64 1B 78 */	mr r4, r3
/* 801A5574 001A24D4  38 61 00 58 */	addi r3, r1, 0x58
/* 801A5578 001A24D8  4B F0 03 21 */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 801A557C 001A24DC  80 63 00 04 */	lwz r3, 4(r3)
/* 801A5580 001A24E0  28 03 00 00 */	cmplwi r3, 0
/* 801A5584 001A24E4  41 82 01 2C */	beq lbl_801A56B0
/* 801A5588 001A24E8  C0 23 01 34 */	lfs f1, 0x134(r3)
/* 801A558C 001A24EC  7F E3 FB 78 */	mr r3, r31
/* 801A5590 001A24F0  7F C4 F3 78 */	mr r4, r30
/* 801A5594 001A24F4  4B FF 96 5D */	bl sub_8019ebf0
/* 801A5598 001A24F8  80 7F 0A EC */	lwz r3, 0xaec(r31)
/* 801A559C 001A24FC  28 03 00 00 */	cmplwi r3, 0
/* 801A55A0 001A2500  41 82 00 1C */	beq lbl_801A55BC
/* 801A55A4 001A2504  81 83 00 00 */	lwz r12, 0(r3)
/* 801A55A8 001A2508  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 801A55AC 001A250C  7D 89 03 A6 */	mtctr r12
/* 801A55B0 001A2510  4E 80 04 21 */	bctrl
/* 801A55B4 001A2514  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A55B8 001A2518  41 82 00 F8 */	beq lbl_801A56B0
lbl_801A55BC:
/* 801A55BC 001A251C  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 801A55C0 001A2520  3B 60 00 00 */	li r27, 0
/* 801A55C4 001A2524  38 83 13 D8 */	addi r4, r3, lbl_803D13D8@l
/* 801A55C8 001A2528  38 60 03 40 */	li r3, 0x340
/* 801A55CC 001A252C  38 84 00 8C */	addi r4, r4, 0x8c
/* 801A55D0 001A2530  38 A0 00 00 */	li r5, 0
/* 801A55D4 001A2534  48 17 02 99 */	bl __nw__FUlPCcPCc
/* 801A55D8 001A2538  7C 7A 1B 79 */	or. r26, r3, r3
/* 801A55DC 001A253C  41 82 00 2C */	beq lbl_801A5608
/* 801A55E0 001A2540  38 61 00 78 */	addi r3, r1, 0x78
/* 801A55E4 001A2544  38 9F 0A DC */	addi r4, r31, 0xadc
/* 801A55E8 001A2548  48 19 B8 C1 */	bl __ct__6CTokenFRC6CToken
/* 801A55EC 001A254C  7F 43 D3 78 */	mr r3, r26
/* 801A55F0 001A2550  38 81 00 78 */	addi r4, r1, 0x78
/* 801A55F4 001A2554  3B 60 00 01 */	li r27, 1
/* 801A55F8 001A2558  38 A0 00 00 */	li r5, 0
/* 801A55FC 001A255C  38 C0 00 01 */	li r6, 1
/* 801A5600 001A2560  48 17 9D E1 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801A5604 001A2564  7C 7A 1B 78 */	mr r26, r3
lbl_801A5608:
/* 801A5608 001A2568  7C 1A 00 D0 */	neg r0, r26
/* 801A560C 001A256C  38 61 00 70 */	addi r3, r1, 0x70
/* 801A5610 001A2570  7C 04 D3 78 */	or r4, r0, r26
/* 801A5614 001A2574  38 1F 0A E8 */	addi r0, r31, 0xae8
/* 801A5618 001A2578  54 84 0F FE */	srwi r4, r4, 0x1f
/* 801A561C 001A257C  93 41 00 74 */	stw r26, 0x74(r1)
/* 801A5620 001A2580  7C 03 00 40 */	cmplw r3, r0
/* 801A5624 001A2584  98 81 00 70 */	stb r4, 0x70(r1)
/* 801A5628 001A2588  41 82 00 48 */	beq lbl_801A5670
/* 801A562C 001A258C  88 1F 0A E8 */	lbz r0, 0xae8(r31)
/* 801A5630 001A2590  28 00 00 00 */	cmplwi r0, 0
/* 801A5634 001A2594  41 82 00 24 */	beq lbl_801A5658
/* 801A5638 001A2598  80 7F 0A EC */	lwz r3, 0xaec(r31)
/* 801A563C 001A259C  28 03 00 00 */	cmplwi r3, 0
/* 801A5640 001A25A0  41 82 00 18 */	beq lbl_801A5658
/* 801A5644 001A25A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801A5648 001A25A8  38 80 00 01 */	li r4, 1
/* 801A564C 001A25AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A5650 001A25B0  7D 89 03 A6 */	mtctr r12
/* 801A5654 001A25B4  4E 80 04 21 */	bctrl
lbl_801A5658:
/* 801A5658 001A25B8  88 61 00 70 */	lbz r3, 0x70(r1)
/* 801A565C 001A25BC  38 00 00 00 */	li r0, 0
/* 801A5660 001A25C0  98 7F 0A E8 */	stb r3, 0xae8(r31)
/* 801A5664 001A25C4  80 61 00 74 */	lwz r3, 0x74(r1)
/* 801A5668 001A25C8  90 7F 0A EC */	stw r3, 0xaec(r31)
/* 801A566C 001A25CC  98 01 00 70 */	stb r0, 0x70(r1)
lbl_801A5670:
/* 801A5670 001A25D0  88 01 00 70 */	lbz r0, 0x70(r1)
/* 801A5674 001A25D4  28 00 00 00 */	cmplwi r0, 0
/* 801A5678 001A25D8  41 82 00 24 */	beq lbl_801A569C
/* 801A567C 001A25DC  80 61 00 74 */	lwz r3, 0x74(r1)
/* 801A5680 001A25E0  28 03 00 00 */	cmplwi r3, 0
/* 801A5684 001A25E4  41 82 00 18 */	beq lbl_801A569C
/* 801A5688 001A25E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801A568C 001A25EC  38 80 00 01 */	li r4, 1
/* 801A5690 001A25F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A5694 001A25F4  7D 89 03 A6 */	mtctr r12
/* 801A5698 001A25F8  4E 80 04 21 */	bctrl
lbl_801A569C:
/* 801A569C 001A25FC  7F 60 07 75 */	extsb. r0, r27
/* 801A56A0 001A2600  41 82 00 10 */	beq lbl_801A56B0
/* 801A56A4 001A2604  38 61 00 78 */	addi r3, r1, 0x78
/* 801A56A8 001A2608  38 80 00 00 */	li r4, 0
/* 801A56AC 001A260C  48 19 B7 95 */	bl __dt__6CTokenFv
lbl_801A56B0:
/* 801A56B0 001A2610  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801A56B4 001A2614  7F C3 F3 78 */	mr r3, r30
/* 801A56B8 001A2618  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801A56BC 001A261C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 801A56C0 001A2620  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801A56C4 001A2624  38 A0 00 00 */	li r5, 0
/* 801A56C8 001A2628  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801A56CC 001A262C  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 801A56D0 001A2630  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 801A56D4 001A2634  4B EA 30 B1 */	bl InformListeners__13CStateManagerFRC9CVector3f16EListenNoiseType
/* 801A56D8 001A2638  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 801A56DC 001A263C  38 60 00 01 */	li r3, 1
/* 801A56E0 001A2640  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801A56E4 001A2644  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A56E8 001A2648  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 801A56EC 001A264C  D0 1F 09 68 */	stfs f0, 0x968(r31)
/* 801A56F0 001A2650  48 00 00 1C */	b lbl_801A570C
.global lbl_801A56F4
lbl_801A56F4:
/* 801A56F4 001A2654  80 7F 0A 2C */	lwz r3, 0xa2c(r31)
/* 801A56F8 001A2658  28 03 00 00 */	cmplwi r3, 0
/* 801A56FC 001A265C  41 82 00 10 */	beq lbl_801A570C
/* 801A5700 001A2660  7F C4 F3 78 */	mr r4, r30
/* 801A5704 001A2664  38 A0 00 00 */	li r5, 0
/* 801A5708 001A2668  48 00 17 B9 */	bl SetMovable__22CCollisionActorManagerFb
.global lbl_801A570C
lbl_801A570C:
/* 801A570C 001A266C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801A5710 001A2670  7F E3 FB 78 */	mr r3, r31
/* 801A5714 001A2674  7F 84 E3 78 */	mr r4, r28
/* 801A5718 001A2678  7F C6 F3 78 */	mr r6, r30
/* 801A571C 001A267C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801A5720 001A2680  38 A1 00 0C */	addi r5, r1, 0xc
/* 801A5724 001A2684  4B ED 74 55 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801A5728 001A2688  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 801A572C 001A268C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 801A5730 001A2690  BB 41 00 D8 */	lmw r26, 0xd8(r1)
/* 801A5734 001A2694  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801A5738 001A2698  7C 08 03 A6 */	mtlr r0
/* 801A573C 001A269C  38 21 01 00 */	addi r1, r1, 0x100
/* 801A5740 001A26A0  4E 80 00 20 */	blr

.global Think__12CIceSheegothFfR13CStateManager
Think__12CIceSheegothFfR13CStateManager:
/* 801A5744 001A26A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801A5748 001A26A8  7C 08 02 A6 */	mflr r0
/* 801A574C 001A26AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A5750 001A26B0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801A5754 001A26B4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801A5758 001A26B8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801A575C 001A26BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801A5760 001A26C0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801A5764 001A26C4  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801A5768 001A26C8  FF E0 08 90 */	fmr f31, f1
/* 801A576C 001A26CC  7C 7E 1B 78 */	mr r30, r3
/* 801A5770 001A26D0  7C 9F 23 78 */	mr r31, r4
/* 801A5774 001A26D4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801A5778 001A26D8  41 82 02 0C */	beq lbl_801A5984
/* 801A577C 001A26DC  4B ED 43 9D */	bl Think__10CPatternedFfR13CStateManager
/* 801A5780 001A26E0  7F C3 F3 78 */	mr r3, r30
/* 801A5784 001A26E4  7F E4 FB 78 */	mr r4, r31
/* 801A5788 001A26E8  4B FF B9 39 */	bl sub_801a10c0
/* 801A578C 001A26EC  FC 20 F8 90 */	fmr f1, f31
/* 801A5790 001A26F0  7F C3 F3 78 */	mr r3, r30
/* 801A5794 001A26F4  4B FF B3 F9 */	bl sub_801a0b8c
/* 801A5798 001A26F8  7F C3 F3 78 */	mr r3, r30
/* 801A579C 001A26FC  7F E4 FB 78 */	mr r4, r31
/* 801A57A0 001A2700  4B FF 8F 51 */	bl sub_8019e6f0
/* 801A57A4 001A2704  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801A57A8 001A2708  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801A57AC 001A270C  40 82 00 64 */	bne lbl_801A5810
/* 801A57B0 001A2710  C0 5E 06 DC */	lfs f2, 0x6dc(r30)
/* 801A57B4 001A2714  C0 3E 09 74 */	lfs f1, 0x974(r30)
/* 801A57B8 001A2718  C0 0D 8F FC */	lfs f0, lbl_805A7BBC@sda21(r13)
/* 801A57BC 001A271C  EC 3F 08 BC */	fnmsubs f1, f31, f2, f1
/* 801A57C0 001A2720  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801A57C4 001A2724  D0 21 00 08 */	stfs f1, 8(r1)
/* 801A57C8 001A2728  40 80 00 0C */	bge lbl_801A57D4
/* 801A57CC 001A272C  38 61 00 08 */	addi r3, r1, 8
/* 801A57D0 001A2730  48 00 00 08 */	b lbl_801A57D8
lbl_801A57D4:
/* 801A57D4 001A2734  38 6D 8F FC */	addi r3, r13, lbl_805A7BBC@sda21
lbl_801A57D8:
/* 801A57D8 001A2738  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A57DC 001A273C  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 801A57E0 001A2740  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A57E4 001A2744  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801A57E8 001A2748  4B F8 E8 91 */	bl GetCurrentState__14CBodyStateInfoCFv
/* 801A57EC 001A274C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A57F0 001A2750  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801A57F4 001A2754  7D 89 03 A6 */	mtctr r12
/* 801A57F8 001A2758  4E 80 04 21 */	bctrl
/* 801A57FC 001A275C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A5800 001A2760  41 82 00 10 */	beq lbl_801A5810
/* 801A5804 001A2764  7F C3 F3 78 */	mr r3, r30
/* 801A5808 001A2768  7F E4 FB 78 */	mr r4, r31
/* 801A580C 001A276C  4B FF 93 45 */	bl sub_8019eb50
lbl_801A5810:
/* 801A5810 001A2770  C0 3E 09 6C */	lfs f1, 0x96c(r30)
/* 801A5814 001A2774  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A5818 001A2778  EC 21 F8 28 */	fsubs f1, f1, f31
/* 801A581C 001A277C  D0 3E 09 6C */	stfs f1, 0x96c(r30)
/* 801A5820 001A2780  C0 3E 09 6C */	lfs f1, 0x96c(r30)
/* 801A5824 001A2784  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A5828 001A2788  40 80 00 A0 */	bge lbl_801A58C8
/* 801A582C 001A278C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A5830 001A2790  C0 02 A7 60 */	lfs f0, lbl_805AC480@sda21(r2)
/* 801A5834 001A2794  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A5838 001A2798  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801A583C 001A279C  3C 80 80 3E */	lis r4, lbl_803E10C8@ha
/* 801A5840 001A27A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 801A5844 001A27A4  38 C4 10 C8 */	addi r6, r4, lbl_803E10C8@l
/* 801A5848 001A27A8  38 80 00 1A */	li r4, 0x1a
/* 801A584C 001A27AC  38 A0 00 04 */	li r5, 4
/* 801A5850 001A27B0  38 00 00 00 */	li r0, 0
/* 801A5854 001A27B4  3B A3 00 04 */	addi r29, r3, 4
/* 801A5858 001A27B8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801A585C 001A27BC  7F A3 EB 78 */	mr r3, r29
/* 801A5860 001A27C0  38 80 00 1A */	li r4, 0x1a
/* 801A5864 001A27C4  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A5868 001A27C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A586C 001A27CC  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801A5870 001A27D0  98 01 00 28 */	stb r0, 0x28(r1)
/* 801A5874 001A27D4  4B F8 BB C5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801A5878 001A27D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801A587C 001A27DC  3C 60 80 3E */	lis r3, lbl_803E10C8@ha
/* 801A5880 001A27E0  38 83 10 C8 */	addi r4, r3, lbl_803E10C8@l
/* 801A5884 001A27E4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801A5888 001A27E8  90 1D 02 88 */	stw r0, 0x288(r29)
/* 801A588C 001A27EC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801A5890 001A27F0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801A5894 001A27F4  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801A5898 001A27F8  D0 1D 02 8C */	stfs f0, 0x28c(r29)
/* 801A589C 001A27FC  88 61 00 28 */	lbz r3, 0x28(r1)
/* 801A58A0 001A2800  90 BD 02 90 */	stw r5, 0x290(r29)
/* 801A58A4 001A2804  98 7D 02 94 */	stb r3, 0x294(r29)
/* 801A58A8 001A2808  90 81 00 18 */	stw r4, 0x18(r1)
/* 801A58AC 001A280C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801A58B0 001A2810  90 01 00 18 */	stw r0, 0x18(r1)
/* 801A58B4 001A2814  48 16 CC 29 */	bl Float__9CRandom16Fv
/* 801A58B8 001A2818  C0 42 A7 6C */	lfs f2, lbl_805AC48C@sda21(r2)
/* 801A58BC 001A281C  C0 02 A7 74 */	lfs f0, lbl_805AC494@sda21(r2)
/* 801A58C0 001A2820  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801A58C4 001A2824  D0 1E 09 6C */	stfs f0, 0x96c(r30)
lbl_801A58C8:
/* 801A58C8 001A2828  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 801A58CC 001A282C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801A58D0 001A2830  4B E8 71 35 */	bl PreRender__9CAnimDataFv
/* 801A58D4 001A2834  FC 20 F8 90 */	fmr f1, f31
/* 801A58D8 001A2838  38 7E 09 F4 */	addi r3, r30, 0x9f4
/* 801A58DC 001A283C  4B FD 00 CD */	bl Update__13CBoneTrackingFf
/* 801A58E0 001A2840  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 801A58E4 001A2844  7F E4 FB 78 */	mr r4, r31
/* 801A58E8 001A2848  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 801A58EC 001A284C  38 7E 09 F4 */	addi r3, r30, 0x9f4
/* 801A58F0 001A2850  C0 05 00 00 */	lfs f0, 0(r5)
/* 801A58F4 001A2854  38 DE 00 34 */	addi r6, r30, 0x34
/* 801A58F8 001A2858  38 E1 00 0C */	addi r7, r1, 0xc
/* 801A58FC 001A285C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801A5900 001A2860  C0 05 00 04 */	lfs f0, 4(r5)
/* 801A5904 001A2864  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A5908 001A2868  C0 05 00 08 */	lfs f0, 8(r5)
/* 801A590C 001A286C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A5910 001A2870  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 801A5914 001A2874  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 801A5918 001A2878  4B FC FF F9 */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 801A591C 001A287C  FC 20 F8 90 */	fmr f1, f31
/* 801A5920 001A2880  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 801A5924 001A2884  7F E4 FB 78 */	mr r4, r31
/* 801A5928 001A2888  38 A0 00 00 */	li r5, 0
/* 801A592C 001A288C  48 00 1B 25 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 801A5930 001A2890  FC 20 F8 90 */	fmr f1, f31
/* 801A5934 001A2894  7F C3 F3 78 */	mr r3, r30
/* 801A5938 001A2898  7F E4 FB 78 */	mr r4, r31
/* 801A593C 001A289C  4B FF 8A 25 */	bl sub_8019e360
/* 801A5940 001A28A0  7F C3 F3 78 */	mr r3, r30
/* 801A5944 001A28A4  7F E4 FB 78 */	mr r4, r31
/* 801A5948 001A28A8  4B FF 9D 39 */	bl sub_8019f680
/* 801A594C 001A28AC  FC 20 F8 90 */	fmr f1, f31
/* 801A5950 001A28B0  7F C3 F3 78 */	mr r3, r30
/* 801A5954 001A28B4  4B FF 9C 79 */	bl sub_8019f5cc
/* 801A5958 001A28B8  FC 20 F8 90 */	fmr f1, f31
/* 801A595C 001A28BC  7F C3 F3 78 */	mr r3, r30
/* 801A5960 001A28C0  7F E4 FB 78 */	mr r4, r31
/* 801A5964 001A28C4  4B FF 94 BD */	bl sub_8019ee20
/* 801A5968 001A28C8  C0 3E 04 28 */	lfs f1, 0x428(r30)
/* 801A596C 001A28CC  7F C3 F3 78 */	mr r3, r30
/* 801A5970 001A28D0  C0 02 A7 5C */	lfs f0, lbl_805AC47C@sda21(r2)
/* 801A5974 001A28D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A5978 001A28D8  7C 00 00 26 */	mfcr r0
/* 801A597C 001A28DC  54 04 17 FE */	rlwinm r4, r0, 2, 0x1f, 0x1f
/* 801A5980 001A28E0  4B ED 1E D5 */	bl UpdateThermalFrozenState__10CPatternedFb
lbl_801A5984:
/* 801A5984 001A28E4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801A5988 001A28E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A598C 001A28EC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801A5990 001A28F0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801A5994 001A28F4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801A5998 001A28F8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801A599C 001A28FC  7C 08 03 A6 */	mtlr r0
/* 801A59A0 001A2900  38 21 00 50 */	addi r1, r1, 0x50
/* 801A59A4 001A2904  4E 80 00 20 */	blr

.global Accept__12CIceSheegothFR8IVisitor
Accept__12CIceSheegothFR8IVisitor:
/* 801A59A8 001A2908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A59AC 001A290C  7C 08 02 A6 */	mflr r0
/* 801A59B0 001A2910  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A59B4 001A2914  7C 60 1B 78 */	mr r0, r3
/* 801A59B8 001A2918  7C 83 23 78 */	mr r3, r4
/* 801A59BC 001A291C  81 84 00 00 */	lwz r12, 0(r4)
/* 801A59C0 001A2920  7C 04 03 78 */	mr r4, r0
/* 801A59C4 001A2924  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801A59C8 001A2928  7D 89 03 A6 */	mtctr r12
/* 801A59CC 001A292C  4E 80 04 21 */	bctrl
/* 801A59D0 001A2930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A59D4 001A2934  7C 08 03 A6 */	mtlr r0
/* 801A59D8 001A2938  38 21 00 10 */	addi r1, r1, 0x10
/* 801A59DC 001A293C  4E 80 00 20 */	blr

.global __dt__12CIceSheegothFv
__dt__12CIceSheegothFv:
/* 801A59E0 001A2940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A59E4 001A2944  7C 08 02 A6 */	mflr r0
/* 801A59E8 001A2948  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A59EC 001A294C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A59F0 001A2950  7C 9F 23 78 */	mr r31, r4
/* 801A59F4 001A2954  93 C1 00 08 */	stw r30, 8(r1)
/* 801A59F8 001A2958  7C 7E 1B 79 */	or. r30, r3, r3
/* 801A59FC 001A295C  41 82 04 24 */	beq lbl_801A5E20
/* 801A5A00 001A2960  3C 60 80 3E */	lis r3, lbl_803E4728@ha
/* 801A5A04 001A2964  34 1E 0B 1C */	addic. r0, r30, 0xb1c
/* 801A5A08 001A2968  38 03 47 28 */	addi r0, r3, lbl_803E4728@l
/* 801A5A0C 001A296C  90 1E 00 00 */	stw r0, 0(r30)
/* 801A5A10 001A2970  41 82 00 58 */	beq lbl_801A5A68
/* 801A5A14 001A2974  80 BE 0B 1C */	lwz r5, 0xb1c(r30)
/* 801A5A18 001A2978  38 60 00 00 */	li r3, 0
/* 801A5A1C 001A297C  2C 05 00 00 */	cmpwi r5, 0
/* 801A5A20 001A2980  40 81 00 40 */	ble lbl_801A5A60
/* 801A5A24 001A2984  2C 05 00 08 */	cmpwi r5, 8
/* 801A5A28 001A2988  38 85 FF F8 */	addi r4, r5, -8
/* 801A5A2C 001A298C  40 81 00 20 */	ble lbl_801A5A4C
/* 801A5A30 001A2990  38 04 00 07 */	addi r0, r4, 7
/* 801A5A34 001A2994  54 00 E8 FE */	srwi r0, r0, 3
/* 801A5A38 001A2998  7C 09 03 A6 */	mtctr r0
/* 801A5A3C 001A299C  2C 04 00 00 */	cmpwi r4, 0
/* 801A5A40 001A29A0  40 81 00 0C */	ble lbl_801A5A4C
lbl_801A5A44:
/* 801A5A44 001A29A4  38 63 00 08 */	addi r3, r3, 8
/* 801A5A48 001A29A8  42 00 FF FC */	bdnz lbl_801A5A44
lbl_801A5A4C:
/* 801A5A4C 001A29AC  7C 03 28 50 */	subf r0, r3, r5
/* 801A5A50 001A29B0  7C 09 03 A6 */	mtctr r0
/* 801A5A54 001A29B4  7C 03 28 00 */	cmpw r3, r5
/* 801A5A58 001A29B8  40 80 00 08 */	bge lbl_801A5A60
lbl_801A5A5C:
/* 801A5A5C 001A29BC  42 00 00 00 */	bdnz lbl_801A5A5C
lbl_801A5A60:
/* 801A5A60 001A29C0  38 00 00 00 */	li r0, 0
/* 801A5A64 001A29C4  90 1E 0B 1C */	stw r0, 0xb1c(r30)
lbl_801A5A68:
/* 801A5A68 001A29C8  34 1E 0B 04 */	addic. r0, r30, 0xb04
/* 801A5A6C 001A29CC  41 82 00 58 */	beq lbl_801A5AC4
/* 801A5A70 001A29D0  80 BE 0B 04 */	lwz r5, 0xb04(r30)
/* 801A5A74 001A29D4  38 60 00 00 */	li r3, 0
/* 801A5A78 001A29D8  2C 05 00 00 */	cmpwi r5, 0
/* 801A5A7C 001A29DC  40 81 00 40 */	ble lbl_801A5ABC
/* 801A5A80 001A29E0  2C 05 00 08 */	cmpwi r5, 8
/* 801A5A84 001A29E4  38 85 FF F8 */	addi r4, r5, -8
/* 801A5A88 001A29E8  40 81 00 20 */	ble lbl_801A5AA8
/* 801A5A8C 001A29EC  38 04 00 07 */	addi r0, r4, 7
/* 801A5A90 001A29F0  54 00 E8 FE */	srwi r0, r0, 3
/* 801A5A94 001A29F4  7C 09 03 A6 */	mtctr r0
/* 801A5A98 001A29F8  2C 04 00 00 */	cmpwi r4, 0
/* 801A5A9C 001A29FC  40 81 00 0C */	ble lbl_801A5AA8
lbl_801A5AA0:
/* 801A5AA0 001A2A00  38 63 00 08 */	addi r3, r3, 8
/* 801A5AA4 001A2A04  42 00 FF FC */	bdnz lbl_801A5AA0
lbl_801A5AA8:
/* 801A5AA8 001A2A08  7C 03 28 50 */	subf r0, r3, r5
/* 801A5AAC 001A2A0C  7C 09 03 A6 */	mtctr r0
/* 801A5AB0 001A2A10  7C 03 28 00 */	cmpw r3, r5
/* 801A5AB4 001A2A14  40 80 00 08 */	bge lbl_801A5ABC
lbl_801A5AB8:
/* 801A5AB8 001A2A18  42 00 00 00 */	bdnz lbl_801A5AB8
lbl_801A5ABC:
/* 801A5ABC 001A2A1C  38 00 00 00 */	li r0, 0
/* 801A5AC0 001A2A20  90 1E 0B 04 */	stw r0, 0xb04(r30)
lbl_801A5AC4:
/* 801A5AC4 001A2A24  34 1E 0A FC */	addic. r0, r30, 0xafc
/* 801A5AC8 001A2A28  41 82 00 58 */	beq lbl_801A5B20
/* 801A5ACC 001A2A2C  80 BE 0A FC */	lwz r5, 0xafc(r30)
/* 801A5AD0 001A2A30  38 60 00 00 */	li r3, 0
/* 801A5AD4 001A2A34  2C 05 00 00 */	cmpwi r5, 0
/* 801A5AD8 001A2A38  40 81 00 40 */	ble lbl_801A5B18
/* 801A5ADC 001A2A3C  2C 05 00 08 */	cmpwi r5, 8
/* 801A5AE0 001A2A40  38 85 FF F8 */	addi r4, r5, -8
/* 801A5AE4 001A2A44  40 81 00 20 */	ble lbl_801A5B04
/* 801A5AE8 001A2A48  38 04 00 07 */	addi r0, r4, 7
/* 801A5AEC 001A2A4C  54 00 E8 FE */	srwi r0, r0, 3
/* 801A5AF0 001A2A50  7C 09 03 A6 */	mtctr r0
/* 801A5AF4 001A2A54  2C 04 00 00 */	cmpwi r4, 0
/* 801A5AF8 001A2A58  40 81 00 0C */	ble lbl_801A5B04
lbl_801A5AFC:
/* 801A5AFC 001A2A5C  38 63 00 08 */	addi r3, r3, 8
/* 801A5B00 001A2A60  42 00 FF FC */	bdnz lbl_801A5AFC
lbl_801A5B04:
/* 801A5B04 001A2A64  7C 03 28 50 */	subf r0, r3, r5
/* 801A5B08 001A2A68  7C 09 03 A6 */	mtctr r0
/* 801A5B0C 001A2A6C  7C 03 28 00 */	cmpw r3, r5
/* 801A5B10 001A2A70  40 80 00 08 */	bge lbl_801A5B18
lbl_801A5B14:
/* 801A5B14 001A2A74  42 00 00 00 */	bdnz lbl_801A5B14
lbl_801A5B18:
/* 801A5B18 001A2A78  38 00 00 00 */	li r0, 0
/* 801A5B1C 001A2A7C  90 1E 0A FC */	stw r0, 0xafc(r30)
lbl_801A5B20:
/* 801A5B20 001A2A80  34 1E 0A E8 */	addic. r0, r30, 0xae8
/* 801A5B24 001A2A84  41 82 00 30 */	beq lbl_801A5B54
/* 801A5B28 001A2A88  88 1E 0A E8 */	lbz r0, 0xae8(r30)
/* 801A5B2C 001A2A8C  28 00 00 00 */	cmplwi r0, 0
/* 801A5B30 001A2A90  41 82 00 24 */	beq lbl_801A5B54
/* 801A5B34 001A2A94  80 7E 0A EC */	lwz r3, 0xaec(r30)
/* 801A5B38 001A2A98  28 03 00 00 */	cmplwi r3, 0
/* 801A5B3C 001A2A9C  41 82 00 18 */	beq lbl_801A5B54
/* 801A5B40 001A2AA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801A5B44 001A2AA4  38 80 00 01 */	li r4, 1
/* 801A5B48 001A2AA8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A5B4C 001A2AAC  7D 89 03 A6 */	mtctr r12
/* 801A5B50 001A2AB0  4E 80 04 21 */	bctrl
lbl_801A5B54:
/* 801A5B54 001A2AB4  34 1E 0A DC */	addic. r0, r30, 0xadc
/* 801A5B58 001A2AB8  41 82 00 18 */	beq lbl_801A5B70
/* 801A5B5C 001A2ABC  34 1E 0A DC */	addic. r0, r30, 0xadc
/* 801A5B60 001A2AC0  41 82 00 10 */	beq lbl_801A5B70
/* 801A5B64 001A2AC4  38 7E 0A DC */	addi r3, r30, 0xadc
/* 801A5B68 001A2AC8  38 80 00 00 */	li r4, 0
/* 801A5B6C 001A2ACC  48 19 B2 D5 */	bl __dt__6CTokenFv
lbl_801A5B70:
/* 801A5B70 001A2AD0  34 1E 0A D4 */	addic. r0, r30, 0xad4
/* 801A5B74 001A2AD4  41 82 00 30 */	beq lbl_801A5BA4
/* 801A5B78 001A2AD8  88 1E 0A D4 */	lbz r0, 0xad4(r30)
/* 801A5B7C 001A2ADC  28 00 00 00 */	cmplwi r0, 0
/* 801A5B80 001A2AE0  41 82 00 24 */	beq lbl_801A5BA4
/* 801A5B84 001A2AE4  80 7E 0A D8 */	lwz r3, 0xad8(r30)
/* 801A5B88 001A2AE8  28 03 00 00 */	cmplwi r3, 0
/* 801A5B8C 001A2AEC  41 82 00 18 */	beq lbl_801A5BA4
/* 801A5B90 001A2AF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801A5B94 001A2AF4  38 80 00 01 */	li r4, 1
/* 801A5B98 001A2AF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A5B9C 001A2AFC  7D 89 03 A6 */	mtctr r12
/* 801A5BA0 001A2B00  4E 80 04 21 */	bctrl
lbl_801A5BA4:
/* 801A5BA4 001A2B04  34 1E 0A C8 */	addic. r0, r30, 0xac8
/* 801A5BA8 001A2B08  41 82 00 18 */	beq lbl_801A5BC0
/* 801A5BAC 001A2B0C  34 1E 0A C8 */	addic. r0, r30, 0xac8
/* 801A5BB0 001A2B10  41 82 00 10 */	beq lbl_801A5BC0
/* 801A5BB4 001A2B14  38 7E 0A C8 */	addi r3, r30, 0xac8
/* 801A5BB8 001A2B18  38 80 00 00 */	li r4, 0
/* 801A5BBC 001A2B1C  48 19 B2 85 */	bl __dt__6CTokenFv
lbl_801A5BC0:
/* 801A5BC0 001A2B20  34 1E 0A C0 */	addic. r0, r30, 0xac0
/* 801A5BC4 001A2B24  41 82 00 30 */	beq lbl_801A5BF4
/* 801A5BC8 001A2B28  88 1E 0A C0 */	lbz r0, 0xac0(r30)
/* 801A5BCC 001A2B2C  28 00 00 00 */	cmplwi r0, 0
/* 801A5BD0 001A2B30  41 82 00 24 */	beq lbl_801A5BF4
/* 801A5BD4 001A2B34  80 7E 0A C4 */	lwz r3, 0xac4(r30)
/* 801A5BD8 001A2B38  28 03 00 00 */	cmplwi r3, 0
/* 801A5BDC 001A2B3C  41 82 00 18 */	beq lbl_801A5BF4
/* 801A5BE0 001A2B40  81 83 00 00 */	lwz r12, 0(r3)
/* 801A5BE4 001A2B44  38 80 00 01 */	li r4, 1
/* 801A5BE8 001A2B48  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A5BEC 001A2B4C  7D 89 03 A6 */	mtctr r12
/* 801A5BF0 001A2B50  4E 80 04 21 */	bctrl
lbl_801A5BF4:
/* 801A5BF4 001A2B54  34 1E 0A B4 */	addic. r0, r30, 0xab4
/* 801A5BF8 001A2B58  41 82 00 18 */	beq lbl_801A5C10
/* 801A5BFC 001A2B5C  34 1E 0A B4 */	addic. r0, r30, 0xab4
/* 801A5C00 001A2B60  41 82 00 10 */	beq lbl_801A5C10
/* 801A5C04 001A2B64  38 7E 0A B4 */	addi r3, r30, 0xab4
/* 801A5C08 001A2B68  38 80 00 00 */	li r4, 0
/* 801A5C0C 001A2B6C  48 19 B2 35 */	bl __dt__6CTokenFv
lbl_801A5C10:
/* 801A5C10 001A2B70  34 1E 0A AC */	addic. r0, r30, 0xaac
/* 801A5C14 001A2B74  41 82 00 30 */	beq lbl_801A5C44
/* 801A5C18 001A2B78  88 1E 0A AC */	lbz r0, 0xaac(r30)
/* 801A5C1C 001A2B7C  28 00 00 00 */	cmplwi r0, 0
/* 801A5C20 001A2B80  41 82 00 24 */	beq lbl_801A5C44
/* 801A5C24 001A2B84  80 7E 0A B0 */	lwz r3, 0xab0(r30)
/* 801A5C28 001A2B88  28 03 00 00 */	cmplwi r3, 0
/* 801A5C2C 001A2B8C  41 82 00 18 */	beq lbl_801A5C44
/* 801A5C30 001A2B90  81 83 00 00 */	lwz r12, 0(r3)
/* 801A5C34 001A2B94  38 80 00 01 */	li r4, 1
/* 801A5C38 001A2B98  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A5C3C 001A2B9C  7D 89 03 A6 */	mtctr r12
/* 801A5C40 001A2BA0  4E 80 04 21 */	bctrl
lbl_801A5C44:
/* 801A5C44 001A2BA4  34 1E 0A A0 */	addic. r0, r30, 0xaa0
/* 801A5C48 001A2BA8  41 82 00 18 */	beq lbl_801A5C60
/* 801A5C4C 001A2BAC  34 1E 0A A0 */	addic. r0, r30, 0xaa0
/* 801A5C50 001A2BB0  41 82 00 10 */	beq lbl_801A5C60
/* 801A5C54 001A2BB4  38 7E 0A A0 */	addi r3, r30, 0xaa0
/* 801A5C58 001A2BB8  38 80 00 00 */	li r4, 0
/* 801A5C5C 001A2BBC  48 19 B1 E5 */	bl __dt__6CTokenFv
lbl_801A5C60:
/* 801A5C60 001A2BC0  34 1E 0A 98 */	addic. r0, r30, 0xa98
/* 801A5C64 001A2BC4  41 82 00 30 */	beq lbl_801A5C94
/* 801A5C68 001A2BC8  88 1E 0A 98 */	lbz r0, 0xa98(r30)
/* 801A5C6C 001A2BCC  28 00 00 00 */	cmplwi r0, 0
/* 801A5C70 001A2BD0  41 82 00 24 */	beq lbl_801A5C94
/* 801A5C74 001A2BD4  80 7E 0A 9C */	lwz r3, 0xa9c(r30)
/* 801A5C78 001A2BD8  28 03 00 00 */	cmplwi r3, 0
/* 801A5C7C 001A2BDC  41 82 00 18 */	beq lbl_801A5C94
/* 801A5C80 001A2BE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801A5C84 001A2BE4  38 80 00 01 */	li r4, 1
/* 801A5C88 001A2BE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A5C8C 001A2BEC  7D 89 03 A6 */	mtctr r12
/* 801A5C90 001A2BF0  4E 80 04 21 */	bctrl
lbl_801A5C94:
/* 801A5C94 001A2BF4  34 1E 0A 8C */	addic. r0, r30, 0xa8c
/* 801A5C98 001A2BF8  41 82 00 18 */	beq lbl_801A5CB0
/* 801A5C9C 001A2BFC  34 1E 0A 8C */	addic. r0, r30, 0xa8c
/* 801A5CA0 001A2C00  41 82 00 10 */	beq lbl_801A5CB0
/* 801A5CA4 001A2C04  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 801A5CA8 001A2C08  38 80 00 00 */	li r4, 0
/* 801A5CAC 001A2C0C  48 19 B1 95 */	bl __dt__6CTokenFv
lbl_801A5CB0:
/* 801A5CB0 001A2C10  34 1E 0A 84 */	addic. r0, r30, 0xa84
/* 801A5CB4 001A2C14  41 82 00 10 */	beq lbl_801A5CC4
/* 801A5CB8 001A2C18  38 7E 0A 84 */	addi r3, r30, 0xa84
/* 801A5CBC 001A2C1C  38 80 00 00 */	li r4, 0
/* 801A5CC0 001A2C20  48 19 B1 81 */	bl __dt__6CTokenFv
lbl_801A5CC4:
/* 801A5CC4 001A2C24  34 1E 0A 58 */	addic. r0, r30, 0xa58
/* 801A5CC8 001A2C28  41 82 00 20 */	beq lbl_801A5CE8
/* 801A5CCC 001A2C2C  34 1E 0A 58 */	addic. r0, r30, 0xa58
/* 801A5CD0 001A2C30  41 82 00 18 */	beq lbl_801A5CE8
/* 801A5CD4 001A2C34  34 1E 0A 58 */	addic. r0, r30, 0xa58
/* 801A5CD8 001A2C38  41 82 00 10 */	beq lbl_801A5CE8
/* 801A5CDC 001A2C3C  38 7E 0A 58 */	addi r3, r30, 0xa58
/* 801A5CE0 001A2C40  38 80 00 00 */	li r4, 0
/* 801A5CE4 001A2C44  48 19 B1 5D */	bl __dt__6CTokenFv
lbl_801A5CE8:
/* 801A5CE8 001A2C48  34 1E 0A 30 */	addic. r0, r30, 0xa30
/* 801A5CEC 001A2C4C  41 82 00 24 */	beq lbl_801A5D10
/* 801A5CF0 001A2C50  3C 60 80 3F */	lis r3, __vt__16CCollidableAABox@ha
/* 801A5CF4 001A2C54  34 1E 0A 30 */	addic. r0, r30, 0xa30
/* 801A5CF8 001A2C58  38 03 CA D0 */	addi r0, r3, __vt__16CCollidableAABox@l
/* 801A5CFC 001A2C5C  90 1E 0A 30 */	stw r0, 0xa30(r30)
/* 801A5D00 001A2C60  41 82 00 10 */	beq lbl_801A5D10
/* 801A5D04 001A2C64  3C 60 80 3E */	lis r3, __vt__19CCollisionPrimitive@ha
/* 801A5D08 001A2C68  38 03 97 E4 */	addi r0, r3, __vt__19CCollisionPrimitive@l
/* 801A5D0C 001A2C6C  90 1E 0A 30 */	stw r0, 0xa30(r30)
lbl_801A5D10:
/* 801A5D10 001A2C70  34 1E 0A 2C */	addic. r0, r30, 0xa2c
/* 801A5D14 001A2C74  41 82 00 10 */	beq lbl_801A5D24
/* 801A5D18 001A2C78  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 801A5D1C 001A2C7C  38 80 00 01 */	li r4, 1
/* 801A5D20 001A2C80  48 00 1B BD */	bl __dt__22CCollisionActorManagerFv
lbl_801A5D24:
/* 801A5D24 001A2C84  34 1E 09 F4 */	addic. r0, r30, 0x9f4
/* 801A5D28 001A2C88  41 82 00 14 */	beq lbl_801A5D3C
/* 801A5D2C 001A2C8C  34 1E 0A 18 */	addic. r0, r30, 0xa18
/* 801A5D30 001A2C90  41 82 00 0C */	beq lbl_801A5D3C
/* 801A5D34 001A2C94  38 00 00 00 */	li r0, 0
/* 801A5D38 001A2C98  98 1E 0A 24 */	stb r0, 0xa24(r30)
lbl_801A5D3C:
/* 801A5D3C 001A2C9C  34 1E 08 44 */	addic. r0, r30, 0x844
/* 801A5D40 001A2CA0  41 82 00 60 */	beq lbl_801A5DA0
/* 801A5D44 001A2CA4  34 1E 08 48 */	addic. r0, r30, 0x848
/* 801A5D48 001A2CA8  41 82 00 58 */	beq lbl_801A5DA0
/* 801A5D4C 001A2CAC  80 BE 08 48 */	lwz r5, 0x848(r30)
/* 801A5D50 001A2CB0  38 60 00 00 */	li r3, 0
/* 801A5D54 001A2CB4  2C 05 00 00 */	cmpwi r5, 0
/* 801A5D58 001A2CB8  40 81 00 40 */	ble lbl_801A5D98
/* 801A5D5C 001A2CBC  2C 05 00 08 */	cmpwi r5, 8
/* 801A5D60 001A2CC0  38 85 FF F8 */	addi r4, r5, -8
/* 801A5D64 001A2CC4  40 81 00 20 */	ble lbl_801A5D84
/* 801A5D68 001A2CC8  38 04 00 07 */	addi r0, r4, 7
/* 801A5D6C 001A2CCC  54 00 E8 FE */	srwi r0, r0, 3
/* 801A5D70 001A2CD0  7C 09 03 A6 */	mtctr r0
/* 801A5D74 001A2CD4  2C 04 00 00 */	cmpwi r4, 0
/* 801A5D78 001A2CD8  40 81 00 0C */	ble lbl_801A5D84
lbl_801A5D7C:
/* 801A5D7C 001A2CDC  38 63 00 08 */	addi r3, r3, 8
/* 801A5D80 001A2CE0  42 00 FF FC */	bdnz lbl_801A5D7C
lbl_801A5D84:
/* 801A5D84 001A2CE4  7C 03 28 50 */	subf r0, r3, r5
/* 801A5D88 001A2CE8  7C 09 03 A6 */	mtctr r0
/* 801A5D8C 001A2CEC  7C 03 28 00 */	cmpw r3, r5
/* 801A5D90 001A2CF0  40 80 00 08 */	bge lbl_801A5D98
lbl_801A5D94:
/* 801A5D94 001A2CF4  42 00 00 00 */	bdnz lbl_801A5D94
lbl_801A5D98:
/* 801A5D98 001A2CF8  38 00 00 00 */	li r0, 0
/* 801A5D9C 001A2CFC  90 1E 08 48 */	stw r0, 0x848(r30)
lbl_801A5DA0:
/* 801A5DA0 001A2D00  34 1E 07 60 */	addic. r0, r30, 0x760
/* 801A5DA4 001A2D04  41 82 00 60 */	beq lbl_801A5E04
/* 801A5DA8 001A2D08  34 1E 07 64 */	addic. r0, r30, 0x764
/* 801A5DAC 001A2D0C  41 82 00 58 */	beq lbl_801A5E04
/* 801A5DB0 001A2D10  80 BE 07 64 */	lwz r5, 0x764(r30)
/* 801A5DB4 001A2D14  38 60 00 00 */	li r3, 0
/* 801A5DB8 001A2D18  2C 05 00 00 */	cmpwi r5, 0
/* 801A5DBC 001A2D1C  40 81 00 40 */	ble lbl_801A5DFC
/* 801A5DC0 001A2D20  2C 05 00 08 */	cmpwi r5, 8
/* 801A5DC4 001A2D24  38 85 FF F8 */	addi r4, r5, -8
/* 801A5DC8 001A2D28  40 81 00 20 */	ble lbl_801A5DE8
/* 801A5DCC 001A2D2C  38 04 00 07 */	addi r0, r4, 7
/* 801A5DD0 001A2D30  54 00 E8 FE */	srwi r0, r0, 3
/* 801A5DD4 001A2D34  7C 09 03 A6 */	mtctr r0
/* 801A5DD8 001A2D38  2C 04 00 00 */	cmpwi r4, 0
/* 801A5DDC 001A2D3C  40 81 00 0C */	ble lbl_801A5DE8
lbl_801A5DE0:
/* 801A5DE0 001A2D40  38 63 00 08 */	addi r3, r3, 8
/* 801A5DE4 001A2D44  42 00 FF FC */	bdnz lbl_801A5DE0
lbl_801A5DE8:
/* 801A5DE8 001A2D48  7C 03 28 50 */	subf r0, r3, r5
/* 801A5DEC 001A2D4C  7C 09 03 A6 */	mtctr r0
/* 801A5DF0 001A2D50  7C 03 28 00 */	cmpw r3, r5
/* 801A5DF4 001A2D54  40 80 00 08 */	bge lbl_801A5DFC
lbl_801A5DF8:
/* 801A5DF8 001A2D58  42 00 00 00 */	bdnz lbl_801A5DF8
lbl_801A5DFC:
/* 801A5DFC 001A2D5C  38 00 00 00 */	li r0, 0
/* 801A5E00 001A2D60  90 1E 07 64 */	stw r0, 0x764(r30)
lbl_801A5E04:
/* 801A5E04 001A2D64  7F C3 F3 78 */	mr r3, r30
/* 801A5E08 001A2D68  38 80 00 00 */	li r4, 0
/* 801A5E0C 001A2D6C  4B ED 17 65 */	bl __dt__10CPatternedFv
/* 801A5E10 001A2D70  7F E0 07 35 */	extsh. r0, r31
/* 801A5E14 001A2D74  40 81 00 0C */	ble lbl_801A5E20
/* 801A5E18 001A2D78  7F C3 F3 78 */	mr r3, r30
/* 801A5E1C 001A2D7C  48 16 FB 15 */	bl Free__7CMemoryFPCv
lbl_801A5E20:
/* 801A5E20 001A2D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A5E24 001A2D84  7F C3 F3 78 */	mr r3, r30
/* 801A5E28 001A2D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A5E2C 001A2D8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A5E30 001A2D90  7C 08 03 A6 */	mtlr r0
/* 801A5E34 001A2D94  38 21 00 10 */	addi r1, r1, 0x10
/* 801A5E38 001A2D98  4E 80 00 20 */	blr

.global "__ct__12CIceSheegothF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC16CIceSheegothData"
"__ct__12CIceSheegothF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC16CIceSheegothData":
/* 801A5E3C 001A2D9C  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 801A5E40 001A2DA0  7C 08 02 A6 */	mflr r0
/* 801A5E44 001A2DA4  39 60 00 01 */	li r11, 1
/* 801A5E48 001A2DA8  7D 0C 43 78 */	mr r12, r8
/* 801A5E4C 001A2DAC  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 801A5E50 001A2DB0  93 E1 01 AC */	stw r31, 0x1ac(r1)
/* 801A5E54 001A2DB4  83 E1 01 B8 */	lwz r31, 0x1b8(r1)
/* 801A5E58 001A2DB8  93 C1 01 A8 */	stw r30, 0x1a8(r1)
/* 801A5E5C 001A2DBC  7D 3E 4B 78 */	mr r30, r9
/* 801A5E60 001A2DC0  7C E9 3B 78 */	mr r9, r7
/* 801A5E64 001A2DC4  38 E0 00 00 */	li r7, 0
/* 801A5E68 001A2DC8  93 A1 01 A4 */	stw r29, 0x1a4(r1)
/* 801A5E6C 001A2DCC  7C 7D 1B 78 */	mr r29, r3
/* 801A5E70 001A2DD0  93 81 01 A0 */	stw r28, 0x1a0(r1)
/* 801A5E74 001A2DD4  7C DC 33 78 */	mr r28, r6
/* 801A5E78 001A2DD8  7C A6 2B 78 */	mr r6, r5
/* 801A5E7C 001A2DDC  38 A1 00 20 */	addi r5, r1, 0x20
/* 801A5E80 001A2DE0  A0 04 00 00 */	lhz r0, 0(r4)
/* 801A5E84 001A2DE4  38 80 00 00 */	li r4, 0
/* 801A5E88 001A2DE8  7F 88 E3 78 */	mr r8, r28
/* 801A5E8C 001A2DEC  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801A5E90 001A2DF0  38 00 00 02 */	li r0, 2
/* 801A5E94 001A2DF4  93 C1 00 08 */	stw r30, 8(r1)
/* 801A5E98 001A2DF8  90 81 00 0C */	stw r4, 0xc(r1)
/* 801A5E9C 001A2DFC  38 80 00 0F */	li r4, 0xf
/* 801A5EA0 001A2E00  91 61 00 10 */	stw r11, 0x10(r1)
/* 801A5EA4 001A2E04  91 61 00 14 */	stw r11, 0x14(r1)
/* 801A5EA8 001A2E08  91 41 00 18 */	stw r10, 0x18(r1)
/* 801A5EAC 001A2E0C  7D 8A 63 78 */	mr r10, r12
/* 801A5EB0 001A2E10  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A5EB4 001A2E14  4B ED 75 9D */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 801A5EB8 001A2E18  3C 60 80 3E */	lis r3, lbl_803E4728@ha
/* 801A5EBC 001A2E1C  38 00 FF FF */	li r0, -1
/* 801A5EC0 001A2E20  38 63 47 28 */	addi r3, r3, lbl_803E4728@l
/* 801A5EC4 001A2E24  7F E4 FB 78 */	mr r4, r31
/* 801A5EC8 001A2E28  90 7D 00 00 */	stw r3, 0(r29)
/* 801A5ECC 001A2E2C  38 7D 05 6C */	addi r3, r29, 0x56c
/* 801A5ED0 001A2E30  90 1D 05 68 */	stw r0, 0x568(r29)
/* 801A5ED4 001A2E34  48 00 09 F5 */	bl __ct__16CIceSheegothDataFR16CIceSheegothData
/* 801A5ED8 001A2E38  C0 22 A7 60 */	lfs f1, lbl_805AC480@sda21(r2)
/* 801A5EDC 001A2E3C  38 7D 07 60 */	addi r3, r29, 0x760
/* 801A5EE0 001A2E40  80 DE 01 0C */	lwz r6, 0x10c(r30)
/* 801A5EE4 001A2E44  38 80 00 00 */	li r4, 0
/* 801A5EE8 001A2E48  FC 40 08 90 */	fmr f2, f1
/* 801A5EEC 001A2E4C  38 A0 00 01 */	li r5, 1
/* 801A5EF0 001A2E50  48 02 2E A5 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 801A5EF4 001A2E54  C0 22 A7 60 */	lfs f1, lbl_805AC480@sda21(r2)
/* 801A5EF8 001A2E58  38 7D 08 44 */	addi r3, r29, 0x844
/* 801A5EFC 001A2E5C  80 DE 01 0C */	lwz r6, 0x10c(r30)
/* 801A5F00 001A2E60  38 80 00 00 */	li r4, 0
/* 801A5F04 001A2E64  FC 40 08 90 */	fmr f2, f1
/* 801A5F08 001A2E68  38 A0 00 01 */	li r5, 1
/* 801A5F0C 001A2E6C  48 02 2E 89 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 801A5F10 001A2E70  38 00 00 00 */	li r0, 0
/* 801A5F14 001A2E74  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801A5F18 001A2E78  90 1D 09 28 */	stw r0, 0x928(r29)
/* 801A5F1C 001A2E7C  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 801A5F20 001A2E80  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 801A5F24 001A2E84  C0 42 A7 60 */	lfs f2, lbl_805AC480@sda21(r2)
/* 801A5F28 001A2E88  C0 05 00 00 */	lfs f0, 0(r5)
/* 801A5F2C 001A2E8C  38 83 13 D8 */	addi r4, r3, lbl_803D13D8@l
/* 801A5F30 001A2E90  C0 22 A7 5C */	lfs f1, lbl_805AC47C@sda21(r2)
/* 801A5F34 001A2E94  38 61 01 28 */	addi r3, r1, 0x128
/* 801A5F38 001A2E98  D0 1D 09 2C */	stfs f0, 0x92c(r29)
/* 801A5F3C 001A2E9C  38 84 00 A5 */	addi r4, r4, 0xa5
/* 801A5F40 001A2EA0  C0 02 A7 74 */	lfs f0, lbl_805AC494@sda21(r2)
/* 801A5F44 001A2EA4  C0 65 00 04 */	lfs f3, 4(r5)
/* 801A5F48 001A2EA8  D0 7D 09 30 */	stfs f3, 0x930(r29)
/* 801A5F4C 001A2EAC  C0 65 00 08 */	lfs f3, 8(r5)
/* 801A5F50 001A2EB0  D0 7D 09 34 */	stfs f3, 0x934(r29)
/* 801A5F54 001A2EB4  C0 65 00 00 */	lfs f3, 0(r5)
/* 801A5F58 001A2EB8  D0 7D 09 38 */	stfs f3, 0x938(r29)
/* 801A5F5C 001A2EBC  C0 65 00 04 */	lfs f3, 4(r5)
/* 801A5F60 001A2EC0  D0 7D 09 3C */	stfs f3, 0x93c(r29)
/* 801A5F64 001A2EC4  C0 65 00 08 */	lfs f3, 8(r5)
/* 801A5F68 001A2EC8  D0 7D 09 40 */	stfs f3, 0x940(r29)
/* 801A5F6C 001A2ECC  D0 5D 09 44 */	stfs f2, 0x944(r29)
/* 801A5F70 001A2ED0  D0 5D 09 48 */	stfs f2, 0x948(r29)
/* 801A5F74 001A2ED4  C0 5D 03 B4 */	lfs f2, 0x3b4(r29)
/* 801A5F78 001A2ED8  D0 5D 09 4C */	stfs f2, 0x94c(r29)
/* 801A5F7C 001A2EDC  D0 3D 09 50 */	stfs f1, 0x950(r29)
/* 801A5F80 001A2EE0  D0 3D 09 54 */	stfs f1, 0x954(r29)
/* 801A5F84 001A2EE4  D0 3D 09 58 */	stfs f1, 0x958(r29)
/* 801A5F88 001A2EE8  D0 3D 09 5C */	stfs f1, 0x95c(r29)
/* 801A5F8C 001A2EEC  D0 3D 09 60 */	stfs f1, 0x960(r29)
/* 801A5F90 001A2EF0  D0 3D 09 68 */	stfs f1, 0x968(r29)
/* 801A5F94 001A2EF4  D0 1D 09 6C */	stfs f0, 0x96c(r29)
/* 801A5F98 001A2EF8  D0 3D 09 70 */	stfs f1, 0x970(r29)
/* 801A5F9C 001A2EFC  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 801A5FA0 001A2F00  D0 1D 09 74 */	stfs f0, 0x974(r29)
/* 801A5FA4 001A2F04  D0 3D 09 78 */	stfs f1, 0x978(r29)
/* 801A5FA8 001A2F08  D0 3D 09 7C */	stfs f1, 0x97c(r29)
/* 801A5FAC 001A2F0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 801A5FB0 001A2F10  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 801A5FB4 001A2F14  C0 05 00 04 */	lfs f0, 4(r5)
/* 801A5FB8 001A2F18  D0 1D 09 84 */	stfs f0, 0x984(r29)
/* 801A5FBC 001A2F1C  C0 05 00 08 */	lfs f0, 8(r5)
/* 801A5FC0 001A2F20  D0 1D 09 88 */	stfs f0, 0x988(r29)
/* 801A5FC4 001A2F24  80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 801A5FC8 001A2F28  80 1E 00 60 */	lwz r0, 0x60(r30)
/* 801A5FCC 001A2F2C  90 BD 09 8C */	stw r5, 0x98c(r29)
/* 801A5FD0 001A2F30  90 1D 09 90 */	stw r0, 0x990(r29)
/* 801A5FD4 001A2F34  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 801A5FD8 001A2F38  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 801A5FDC 001A2F3C  90 BD 09 94 */	stw r5, 0x994(r29)
/* 801A5FE0 001A2F40  90 1D 09 98 */	stw r0, 0x998(r29)
/* 801A5FE4 001A2F44  80 BE 00 6C */	lwz r5, 0x6c(r30)
/* 801A5FE8 001A2F48  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 801A5FEC 001A2F4C  90 BD 09 9C */	stw r5, 0x99c(r29)
/* 801A5FF0 001A2F50  90 1D 09 A0 */	stw r0, 0x9a0(r29)
/* 801A5FF4 001A2F54  80 BE 00 74 */	lwz r5, 0x74(r30)
/* 801A5FF8 001A2F58  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 801A5FFC 001A2F5C  90 BD 09 A4 */	stw r5, 0x9a4(r29)
/* 801A6000 001A2F60  90 1D 09 A8 */	stw r0, 0x9a8(r29)
/* 801A6004 001A2F64  80 BE 00 7C */	lwz r5, 0x7c(r30)
/* 801A6008 001A2F68  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 801A600C 001A2F6C  90 BD 09 AC */	stw r5, 0x9ac(r29)
/* 801A6010 001A2F70  90 1D 09 B0 */	stw r0, 0x9b0(r29)
/* 801A6014 001A2F74  80 BE 00 84 */	lwz r5, 0x84(r30)
/* 801A6018 001A2F78  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 801A601C 001A2F7C  90 BD 09 B4 */	stw r5, 0x9b4(r29)
/* 801A6020 001A2F80  90 1D 09 B8 */	stw r0, 0x9b8(r29)
/* 801A6024 001A2F84  80 BE 00 8C */	lwz r5, 0x8c(r30)
/* 801A6028 001A2F88  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 801A602C 001A2F8C  90 BD 09 BC */	stw r5, 0x9bc(r29)
/* 801A6030 001A2F90  90 1D 09 C0 */	stw r0, 0x9c0(r29)
/* 801A6034 001A2F94  80 1E 00 94 */	lwz r0, 0x94(r30)
/* 801A6038 001A2F98  90 1D 09 C4 */	stw r0, 0x9c4(r29)
/* 801A603C 001A2F9C  80 BE 00 98 */	lwz r5, 0x98(r30)
/* 801A6040 001A2FA0  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 801A6044 001A2FA4  90 BD 09 C8 */	stw r5, 0x9c8(r29)
/* 801A6048 001A2FA8  90 1D 09 CC */	stw r0, 0x9cc(r29)
/* 801A604C 001A2FAC  80 BE 00 A0 */	lwz r5, 0xa0(r30)
/* 801A6050 001A2FB0  80 1E 00 A4 */	lwz r0, 0xa4(r30)
/* 801A6054 001A2FB4  90 BD 09 D0 */	stw r5, 0x9d0(r29)
/* 801A6058 001A2FB8  90 1D 09 D4 */	stw r0, 0x9d4(r29)
/* 801A605C 001A2FBC  80 BE 00 A8 */	lwz r5, 0xa8(r30)
/* 801A6060 001A2FC0  80 1E 00 AC */	lwz r0, 0xac(r30)
/* 801A6064 001A2FC4  90 BD 09 D8 */	stw r5, 0x9d8(r29)
/* 801A6068 001A2FC8  90 1D 09 DC */	stw r0, 0x9dc(r29)
/* 801A606C 001A2FCC  80 BE 00 B0 */	lwz r5, 0xb0(r30)
/* 801A6070 001A2FD0  80 1E 00 B4 */	lwz r0, 0xb4(r30)
/* 801A6074 001A2FD4  90 BD 09 E0 */	stw r5, 0x9e0(r29)
/* 801A6078 001A2FD8  90 1D 09 E4 */	stw r0, 0x9e4(r29)
/* 801A607C 001A2FDC  80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 801A6080 001A2FE0  90 1D 09 E8 */	stw r0, 0x9e8(r29)
/* 801A6084 001A2FE4  80 1E 00 BC */	lwz r0, 0xbc(r30)
/* 801A6088 001A2FE8  90 1D 09 EC */	stw r0, 0x9ec(r29)
/* 801A608C 001A2FEC  80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 801A6090 001A2FF0  90 1D 09 F0 */	stw r0, 0x9f0(r29)
/* 801A6094 001A2FF4  4B E5 EC 25 */	bl string_l__4rstlFPCc
/* 801A6098 001A2FF8  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 801A609C 001A2FFC  38 7D 09 F4 */	addi r3, r29, 0x9f4
/* 801A60A0 001A3000  C0 22 A7 EC */	lfs f1, lbl_805AC50C@sda21(r2)
/* 801A60A4 001A3004  38 A1 01 28 */	addi r5, r1, 0x128
/* 801A60A8 001A3008  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801A60AC 001A300C  38 C0 00 00 */	li r6, 0
/* 801A60B0 001A3010  C0 42 A7 F0 */	lfs f2, lbl_805AC510@sda21(r2)
/* 801A60B4 001A3014  4B FC F9 05 */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 801A60B8 001A3018  38 61 01 28 */	addi r3, r1, 0x128
/* 801A60BC 001A301C  48 19 7A 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801A60C0 001A3020  38 00 00 00 */	li r0, 0
/* 801A60C4 001A3024  7F A4 EB 78 */	mr r4, r29
/* 801A60C8 001A3028  90 1D 0A 2C */	stw r0, 0xa2c(r29)
/* 801A60CC 001A302C  3B DD 00 68 */	addi r30, r29, 0x68
/* 801A60D0 001A3030  38 61 01 38 */	addi r3, r1, 0x138
/* 801A60D4 001A3034  4B F7 48 59 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801A60D8 001A3038  3B 9D 0A 30 */	addi r28, r29, 0xa30
/* 801A60DC 001A303C  7F C4 F3 78 */	mr r4, r30
/* 801A60E0 001A3040  7F 83 E3 78 */	mr r3, r28
/* 801A60E4 001A3044  48 12 97 D1 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 801A60E8 001A3048  3C 80 80 3F */	lis r4, __vt__16CCollidableAABox@ha
/* 801A60EC 001A304C  38 7D 0A 58 */	addi r3, r29, 0xa58
/* 801A60F0 001A3050  38 04 CA D0 */	addi r0, r4, __vt__16CCollidableAABox@l
/* 801A60F4 001A3054  38 BF 01 54 */	addi r5, r31, 0x154
/* 801A60F8 001A3058  90 1C 00 00 */	stw r0, 0(r28)
/* 801A60FC 001A305C  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 801A6100 001A3060  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 801A6104 001A3064  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 801A6108 001A3068  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 801A610C 001A306C  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 801A6110 001A3070  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 801A6114 001A3074  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 801A6118 001A3078  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 801A611C 001A307C  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 801A6120 001A3080  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 801A6124 001A3084  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 801A6128 001A3088  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 801A612C 001A308C  80 9F 01 50 */	lwz r4, 0x150(r31)
/* 801A6130 001A3090  48 07 5F 79 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 801A6134 001A3094  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801A6138 001A3098  3B 80 00 00 */	li r28, 0
/* 801A613C 001A309C  3B C0 00 00 */	li r30, 0
/* 801A6140 001A30A0  B0 1D 0A 80 */	sth r0, 0xa80(r29)
/* 801A6144 001A30A4  80 9F 01 78 */	lwz r4, 0x178(r31)
/* 801A6148 001A30A8  3C 04 00 01 */	addis r0, r4, 1
/* 801A614C 001A30AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 801A6150 001A30B0  41 82 00 3C */	beq lbl_801A618C
/* 801A6154 001A30B4  3C 60 57 50 */	lis r3, 0x57505343@ha
/* 801A6158 001A30B8  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 801A615C 001A30BC  38 03 53 43 */	addi r0, r3, 0x57505343@l
/* 801A6160 001A30C0  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801A6164 001A30C4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801A6168 001A30C8  38 61 00 DC */	addi r3, r1, 0xdc
/* 801A616C 001A30CC  38 A1 00 E4 */	addi r5, r1, 0xe4
/* 801A6170 001A30D0  81 84 00 00 */	lwz r12, 0(r4)
/* 801A6174 001A30D4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A6178 001A30D8  7D 89 03 A6 */	mtctr r12
/* 801A617C 001A30DC  4E 80 04 21 */	bctrl
/* 801A6180 001A30E0  38 81 00 DC */	addi r4, r1, 0xdc
/* 801A6184 001A30E4  3B 80 00 01 */	li r28, 1
/* 801A6188 001A30E8  48 00 00 30 */	b lbl_801A61B8
lbl_801A618C:
/* 801A618C 001A30EC  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801A6190 001A30F0  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 801A6194 001A30F4  38 A3 13 D8 */	addi r5, r3, lbl_803D13D8@l
/* 801A6198 001A30F8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 801A619C 001A30FC  81 84 00 00 */	lwz r12, 0(r4)
/* 801A61A0 001A3100  38 A5 00 AC */	addi r5, r5, 0xac
/* 801A61A4 001A3104  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801A61A8 001A3108  7D 89 03 A6 */	mtctr r12
/* 801A61AC 001A310C  4E 80 04 21 */	bctrl
/* 801A61B0 001A3110  3B C0 00 01 */	li r30, 1
/* 801A61B4 001A3114  38 81 00 D4 */	addi r4, r1, 0xd4
lbl_801A61B8:
/* 801A61B8 001A3118  38 7D 0A 84 */	addi r3, r29, 0xa84
/* 801A61BC 001A311C  48 19 AC ED */	bl __ct__6CTokenFRC6CToken
/* 801A61C0 001A3120  7F C0 07 75 */	extsb. r0, r30
/* 801A61C4 001A3124  41 82 00 10 */	beq lbl_801A61D4
/* 801A61C8 001A3128  38 61 00 D4 */	addi r3, r1, 0xd4
/* 801A61CC 001A312C  38 80 FF FF */	li r4, -1
/* 801A61D0 001A3130  48 19 AC 71 */	bl __dt__6CTokenFv
lbl_801A61D4:
/* 801A61D4 001A3134  7F 80 07 75 */	extsb. r0, r28
/* 801A61D8 001A3138  41 82 00 10 */	beq lbl_801A61E8
/* 801A61DC 001A313C  38 61 00 DC */	addi r3, r1, 0xdc
/* 801A61E0 001A3140  38 80 FF FF */	li r4, -1
/* 801A61E4 001A3144  48 19 AC 5D */	bl __dt__6CTokenFv
lbl_801A61E8:
/* 801A61E8 001A3148  80 DF 01 A0 */	lwz r6, 0x1a0(r31)
/* 801A61EC 001A314C  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801A61F0 001A3150  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801A61F4 001A3154  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801A61F8 001A3158  90 01 00 CC */	stw r0, 0xcc(r1)
/* 801A61FC 001A315C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 801A6200 001A3160  38 A1 00 CC */	addi r5, r1, 0xcc
/* 801A6204 001A3164  90 C1 00 D0 */	stw r6, 0xd0(r1)
/* 801A6208 001A3168  81 84 00 00 */	lwz r12, 0(r4)
/* 801A620C 001A316C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A6210 001A3170  7D 89 03 A6 */	mtctr r12
/* 801A6214 001A3174  4E 80 04 21 */	bctrl
/* 801A6218 001A3178  3B 9D 0A 8C */	addi r28, r29, 0xa8c
/* 801A621C 001A317C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 801A6220 001A3180  7F 83 E3 78 */	mr r3, r28
/* 801A6224 001A3184  48 19 AC 85 */	bl __ct__6CTokenFRC6CToken
/* 801A6228 001A3188  7F 83 E3 78 */	mr r3, r28
/* 801A622C 001A318C  48 19 AB E1 */	bl GetObj__6CTokenFv
/* 801A6230 001A3190  80 03 00 04 */	lwz r0, 4(r3)
/* 801A6234 001A3194  38 61 00 C4 */	addi r3, r1, 0xc4
/* 801A6238 001A3198  38 80 FF FF */	li r4, -1
/* 801A623C 001A319C  90 1C 00 08 */	stw r0, 8(r28)
/* 801A6240 001A31A0  48 19 AC 01 */	bl __dt__6CTokenFv
/* 801A6244 001A31A4  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 801A6248 001A31A8  3B 80 00 00 */	li r28, 0
/* 801A624C 001A31AC  38 83 13 D8 */	addi r4, r3, lbl_803D13D8@l
/* 801A6250 001A31B0  38 60 03 40 */	li r3, 0x340
/* 801A6254 001A31B4  38 84 00 8C */	addi r4, r4, 0x8c
/* 801A6258 001A31B8  38 A0 00 00 */	li r5, 0
/* 801A625C 001A31BC  48 16 F6 11 */	bl __nw__FUlPCcPCc
/* 801A6260 001A31C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 801A6264 001A31C4  41 82 00 2C */	beq lbl_801A6290
/* 801A6268 001A31C8  38 61 00 BC */	addi r3, r1, 0xbc
/* 801A626C 001A31CC  38 9D 0A 8C */	addi r4, r29, 0xa8c
/* 801A6270 001A31D0  48 19 AC 39 */	bl __ct__6CTokenFRC6CToken
/* 801A6274 001A31D4  7F C3 F3 78 */	mr r3, r30
/* 801A6278 001A31D8  38 81 00 BC */	addi r4, r1, 0xbc
/* 801A627C 001A31DC  3B 80 00 01 */	li r28, 1
/* 801A6280 001A31E0  38 A0 00 00 */	li r5, 0
/* 801A6284 001A31E4  38 C0 00 01 */	li r6, 1
/* 801A6288 001A31E8  48 17 91 59 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801A628C 001A31EC  7C 7E 1B 78 */	mr r30, r3
lbl_801A6290:
/* 801A6290 001A31F0  7C 7E 00 D0 */	neg r3, r30
/* 801A6294 001A31F4  7F 80 07 75 */	extsb. r0, r28
/* 801A6298 001A31F8  7C 60 F3 78 */	or r0, r3, r30
/* 801A629C 001A31FC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801A62A0 001A3200  98 1D 0A 98 */	stb r0, 0xa98(r29)
/* 801A62A4 001A3204  93 DD 0A 9C */	stw r30, 0xa9c(r29)
/* 801A62A8 001A3208  41 82 00 10 */	beq lbl_801A62B8
/* 801A62AC 001A320C  38 61 00 BC */	addi r3, r1, 0xbc
/* 801A62B0 001A3210  38 80 00 00 */	li r4, 0
/* 801A62B4 001A3214  48 19 AB 8D */	bl __dt__6CTokenFv
lbl_801A62B8:
/* 801A62B8 001A3218  80 DF 01 A4 */	lwz r6, 0x1a4(r31)
/* 801A62BC 001A321C  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801A62C0 001A3220  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801A62C4 001A3224  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801A62C8 001A3228  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801A62CC 001A322C  38 61 00 AC */	addi r3, r1, 0xac
/* 801A62D0 001A3230  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 801A62D4 001A3234  90 C1 00 B8 */	stw r6, 0xb8(r1)
/* 801A62D8 001A3238  81 84 00 00 */	lwz r12, 0(r4)
/* 801A62DC 001A323C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A62E0 001A3240  7D 89 03 A6 */	mtctr r12
/* 801A62E4 001A3244  4E 80 04 21 */	bctrl
/* 801A62E8 001A3248  3B 9D 0A A0 */	addi r28, r29, 0xaa0
/* 801A62EC 001A324C  38 81 00 AC */	addi r4, r1, 0xac
/* 801A62F0 001A3250  7F 83 E3 78 */	mr r3, r28
/* 801A62F4 001A3254  48 19 AB B5 */	bl __ct__6CTokenFRC6CToken
/* 801A62F8 001A3258  7F 83 E3 78 */	mr r3, r28
/* 801A62FC 001A325C  48 19 AB 11 */	bl GetObj__6CTokenFv
/* 801A6300 001A3260  80 03 00 04 */	lwz r0, 4(r3)
/* 801A6304 001A3264  38 61 00 AC */	addi r3, r1, 0xac
/* 801A6308 001A3268  38 80 FF FF */	li r4, -1
/* 801A630C 001A326C  90 1C 00 08 */	stw r0, 8(r28)
/* 801A6310 001A3270  48 19 AB 31 */	bl __dt__6CTokenFv
/* 801A6314 001A3274  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 801A6318 001A3278  3B 80 00 00 */	li r28, 0
/* 801A631C 001A327C  38 83 13 D8 */	addi r4, r3, lbl_803D13D8@l
/* 801A6320 001A3280  38 60 03 40 */	li r3, 0x340
/* 801A6324 001A3284  38 84 00 8C */	addi r4, r4, 0x8c
/* 801A6328 001A3288  38 A0 00 00 */	li r5, 0
/* 801A632C 001A328C  48 16 F5 41 */	bl __nw__FUlPCcPCc
/* 801A6330 001A3290  7C 7E 1B 79 */	or. r30, r3, r3
/* 801A6334 001A3294  41 82 00 2C */	beq lbl_801A6360
/* 801A6338 001A3298  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801A633C 001A329C  38 9D 0A A0 */	addi r4, r29, 0xaa0
/* 801A6340 001A32A0  48 19 AB 69 */	bl __ct__6CTokenFRC6CToken
/* 801A6344 001A32A4  7F C3 F3 78 */	mr r3, r30
/* 801A6348 001A32A8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 801A634C 001A32AC  3B 80 00 01 */	li r28, 1
/* 801A6350 001A32B0  38 A0 00 00 */	li r5, 0
/* 801A6354 001A32B4  38 C0 00 01 */	li r6, 1
/* 801A6358 001A32B8  48 17 90 89 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801A635C 001A32BC  7C 7E 1B 78 */	mr r30, r3
lbl_801A6360:
/* 801A6360 001A32C0  7C 7E 00 D0 */	neg r3, r30
/* 801A6364 001A32C4  7F 80 07 75 */	extsb. r0, r28
/* 801A6368 001A32C8  7C 60 F3 78 */	or r0, r3, r30
/* 801A636C 001A32CC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801A6370 001A32D0  98 1D 0A AC */	stb r0, 0xaac(r29)
/* 801A6374 001A32D4  93 DD 0A B0 */	stw r30, 0xab0(r29)
/* 801A6378 001A32D8  41 82 00 10 */	beq lbl_801A6388
/* 801A637C 001A32DC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801A6380 001A32E0  38 80 00 00 */	li r4, 0
/* 801A6384 001A32E4  48 19 AA BD */	bl __dt__6CTokenFv
lbl_801A6388:
/* 801A6388 001A32E8  80 DF 01 A8 */	lwz r6, 0x1a8(r31)
/* 801A638C 001A32EC  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801A6390 001A32F0  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801A6394 001A32F4  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801A6398 001A32F8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 801A639C 001A32FC  38 61 00 94 */	addi r3, r1, 0x94
/* 801A63A0 001A3300  38 A1 00 9C */	addi r5, r1, 0x9c
/* 801A63A4 001A3304  90 C1 00 A0 */	stw r6, 0xa0(r1)
/* 801A63A8 001A3308  81 84 00 00 */	lwz r12, 0(r4)
/* 801A63AC 001A330C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A63B0 001A3310  7D 89 03 A6 */	mtctr r12
/* 801A63B4 001A3314  4E 80 04 21 */	bctrl
/* 801A63B8 001A3318  3B 9D 0A B4 */	addi r28, r29, 0xab4
/* 801A63BC 001A331C  38 81 00 94 */	addi r4, r1, 0x94
/* 801A63C0 001A3320  7F 83 E3 78 */	mr r3, r28
/* 801A63C4 001A3324  48 19 AA E5 */	bl __ct__6CTokenFRC6CToken
/* 801A63C8 001A3328  7F 83 E3 78 */	mr r3, r28
/* 801A63CC 001A332C  48 19 AA 41 */	bl GetObj__6CTokenFv
/* 801A63D0 001A3330  80 03 00 04 */	lwz r0, 4(r3)
/* 801A63D4 001A3334  38 61 00 94 */	addi r3, r1, 0x94
/* 801A63D8 001A3338  38 80 FF FF */	li r4, -1
/* 801A63DC 001A333C  90 1C 00 08 */	stw r0, 8(r28)
/* 801A63E0 001A3340  48 19 AA 61 */	bl __dt__6CTokenFv
/* 801A63E4 001A3344  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 801A63E8 001A3348  3B 80 00 00 */	li r28, 0
/* 801A63EC 001A334C  38 83 13 D8 */	addi r4, r3, lbl_803D13D8@l
/* 801A63F0 001A3350  38 60 03 40 */	li r3, 0x340
/* 801A63F4 001A3354  38 84 00 8C */	addi r4, r4, 0x8c
/* 801A63F8 001A3358  38 A0 00 00 */	li r5, 0
/* 801A63FC 001A335C  48 16 F4 71 */	bl __nw__FUlPCcPCc
/* 801A6400 001A3360  7C 7E 1B 79 */	or. r30, r3, r3
/* 801A6404 001A3364  41 82 00 2C */	beq lbl_801A6430
/* 801A6408 001A3368  38 61 00 8C */	addi r3, r1, 0x8c
/* 801A640C 001A336C  38 9D 0A B4 */	addi r4, r29, 0xab4
/* 801A6410 001A3370  48 19 AA 99 */	bl __ct__6CTokenFRC6CToken
/* 801A6414 001A3374  7F C3 F3 78 */	mr r3, r30
/* 801A6418 001A3378  38 81 00 8C */	addi r4, r1, 0x8c
/* 801A641C 001A337C  3B 80 00 01 */	li r28, 1
/* 801A6420 001A3380  38 A0 00 00 */	li r5, 0
/* 801A6424 001A3384  38 C0 00 01 */	li r6, 1
/* 801A6428 001A3388  48 17 8F B9 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801A642C 001A338C  7C 7E 1B 78 */	mr r30, r3
lbl_801A6430:
/* 801A6430 001A3390  7C 7E 00 D0 */	neg r3, r30
/* 801A6434 001A3394  7F 80 07 75 */	extsb. r0, r28
/* 801A6438 001A3398  7C 60 F3 78 */	or r0, r3, r30
/* 801A643C 001A339C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801A6440 001A33A0  98 1D 0A C0 */	stb r0, 0xac0(r29)
/* 801A6444 001A33A4  93 DD 0A C4 */	stw r30, 0xac4(r29)
/* 801A6448 001A33A8  41 82 00 10 */	beq lbl_801A6458
/* 801A644C 001A33AC  38 61 00 8C */	addi r3, r1, 0x8c
/* 801A6450 001A33B0  38 80 00 00 */	li r4, 0
/* 801A6454 001A33B4  48 19 A9 ED */	bl __dt__6CTokenFv
lbl_801A6458:
/* 801A6458 001A33B8  80 DF 01 AC */	lwz r6, 0x1ac(r31)
/* 801A645C 001A33BC  3C 60 45 4C */	lis r3, 0x454C5343@ha
/* 801A6460 001A33C0  38 03 53 43 */	addi r0, r3, 0x454C5343@l
/* 801A6464 001A33C4  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801A6468 001A33C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 801A646C 001A33CC  38 61 00 7C */	addi r3, r1, 0x7c
/* 801A6470 001A33D0  38 A1 00 84 */	addi r5, r1, 0x84
/* 801A6474 001A33D4  90 C1 00 88 */	stw r6, 0x88(r1)
/* 801A6478 001A33D8  81 84 00 00 */	lwz r12, 0(r4)
/* 801A647C 001A33DC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A6480 001A33E0  7D 89 03 A6 */	mtctr r12
/* 801A6484 001A33E4  4E 80 04 21 */	bctrl
/* 801A6488 001A33E8  3B 9D 0A C8 */	addi r28, r29, 0xac8
/* 801A648C 001A33EC  38 81 00 7C */	addi r4, r1, 0x7c
/* 801A6490 001A33F0  7F 83 E3 78 */	mr r3, r28
/* 801A6494 001A33F4  48 19 AA 15 */	bl __ct__6CTokenFRC6CToken
/* 801A6498 001A33F8  7F 83 E3 78 */	mr r3, r28
/* 801A649C 001A33FC  48 19 A9 71 */	bl GetObj__6CTokenFv
/* 801A64A0 001A3400  80 03 00 04 */	lwz r0, 4(r3)
/* 801A64A4 001A3404  38 61 00 7C */	addi r3, r1, 0x7c
/* 801A64A8 001A3408  38 80 FF FF */	li r4, -1
/* 801A64AC 001A340C  90 1C 00 08 */	stw r0, 8(r28)
/* 801A64B0 001A3410  48 19 A9 91 */	bl __dt__6CTokenFv
/* 801A64B4 001A3414  3C 60 80 3D */	lis r3, lbl_803D13D8@ha
/* 801A64B8 001A3418  3B 80 00 00 */	li r28, 0
/* 801A64BC 001A341C  38 83 13 D8 */	addi r4, r3, lbl_803D13D8@l
/* 801A64C0 001A3420  38 60 04 58 */	li r3, 0x458
/* 801A64C4 001A3424  38 84 00 8C */	addi r4, r4, 0x8c
/* 801A64C8 001A3428  38 A0 00 00 */	li r5, 0
/* 801A64CC 001A342C  48 16 F3 A1 */	bl __nw__FUlPCcPCc
/* 801A64D0 001A3430  7C 7E 1B 79 */	or. r30, r3, r3
/* 801A64D4 001A3434  41 82 00 24 */	beq lbl_801A64F8
/* 801A64D8 001A3438  38 61 00 74 */	addi r3, r1, 0x74
/* 801A64DC 001A343C  38 9D 0A C8 */	addi r4, r29, 0xac8
/* 801A64E0 001A3440  48 19 A9 C9 */	bl __ct__6CTokenFRC6CToken
/* 801A64E4 001A3444  7F C3 F3 78 */	mr r3, r30
/* 801A64E8 001A3448  38 81 00 74 */	addi r4, r1, 0x74
/* 801A64EC 001A344C  3B 80 00 01 */	li r28, 1
/* 801A64F0 001A3450  48 1B BC 81 */	bl "__ct__17CParticleElectricF30TToken<20CElectricDescription>"
/* 801A64F4 001A3454  7C 7E 1B 78 */	mr r30, r3
lbl_801A64F8:
/* 801A64F8 001A3458  7C 7E 00 D0 */	neg r3, r30
/* 801A64FC 001A345C  7F 80 07 75 */	extsb. r0, r28
/* 801A6500 001A3460  7C 60 F3 78 */	or r0, r3, r30
/* 801A6504 001A3464  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801A6508 001A3468  98 1D 0A D4 */	stb r0, 0xad4(r29)
/* 801A650C 001A346C  93 DD 0A D8 */	stw r30, 0xad8(r29)
/* 801A6510 001A3470  41 82 00 10 */	beq lbl_801A6520
/* 801A6514 001A3474  38 61 00 74 */	addi r3, r1, 0x74
/* 801A6518 001A3478  38 80 00 00 */	li r4, 0
/* 801A651C 001A347C  48 19 A9 25 */	bl __dt__6CTokenFv
lbl_801A6520:
/* 801A6520 001A3480  80 DF 01 9C */	lwz r6, 0x19c(r31)
/* 801A6524 001A3484  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801A6528 001A3488  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801A652C 001A348C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801A6530 001A3490  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801A6534 001A3494  38 61 00 64 */	addi r3, r1, 0x64
/* 801A6538 001A3498  38 A1 00 6C */	addi r5, r1, 0x6c
/* 801A653C 001A349C  90 C1 00 70 */	stw r6, 0x70(r1)
/* 801A6540 001A34A0  81 84 00 00 */	lwz r12, 0(r4)
/* 801A6544 001A34A4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A6548 001A34A8  7D 89 03 A6 */	mtctr r12
/* 801A654C 001A34AC  4E 80 04 21 */	bctrl
/* 801A6550 001A34B0  3B 9D 0A DC */	addi r28, r29, 0xadc
/* 801A6554 001A34B4  38 81 00 64 */	addi r4, r1, 0x64
/* 801A6558 001A34B8  7F 83 E3 78 */	mr r3, r28
/* 801A655C 001A34BC  48 19 A9 4D */	bl __ct__6CTokenFRC6CToken
/* 801A6560 001A34C0  7F 83 E3 78 */	mr r3, r28
/* 801A6564 001A34C4  48 19 A8 A9 */	bl GetObj__6CTokenFv
/* 801A6568 001A34C8  80 03 00 04 */	lwz r0, 4(r3)
/* 801A656C 001A34CC  38 61 00 64 */	addi r3, r1, 0x64
/* 801A6570 001A34D0  38 80 FF FF */	li r4, -1
/* 801A6574 001A34D4  90 1C 00 08 */	stw r0, 8(r28)
/* 801A6578 001A34D8  48 19 A8 C9 */	bl __dt__6CTokenFv
/* 801A657C 001A34DC  38 80 00 00 */	li r4, 0
/* 801A6580 001A34E0  38 00 00 FF */	li r0, 0xff
/* 801A6584 001A34E4  98 9D 0A E8 */	stb r4, 0xae8(r29)
/* 801A6588 001A34E8  38 7D 0A 58 */	addi r3, r29, 0xa58
/* 801A658C 001A34EC  90 9D 0A EC */	stw r4, 0xaec(r29)
/* 801A6590 001A34F0  90 9D 0A F0 */	stw r4, 0xaf0(r29)
/* 801A6594 001A34F4  98 1D 0A F4 */	stb r0, 0xaf4(r29)
/* 801A6598 001A34F8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801A659C 001A34FC  B0 1D 0A F6 */	sth r0, 0xaf6(r29)
/* 801A65A0 001A3500  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801A65A4 001A3504  B0 1D 0A F8 */	sth r0, 0xaf8(r29)
/* 801A65A8 001A3508  90 9D 0A FC */	stw r4, 0xafc(r29)
/* 801A65AC 001A350C  90 9D 0B 04 */	stw r4, 0xb04(r29)
/* 801A65B0 001A3510  90 9D 0B 1C */	stw r4, 0xb1c(r29)
/* 801A65B4 001A3514  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A65B8 001A3518  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801A65BC 001A351C  98 1D 0B 28 */	stb r0, 0xb28(r29)
/* 801A65C0 001A3520  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A65C4 001A3524  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801A65C8 001A3528  98 1D 0B 28 */	stb r0, 0xb28(r29)
/* 801A65CC 001A352C  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A65D0 001A3530  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 801A65D4 001A3534  98 1D 0B 28 */	stb r0, 0xb28(r29)
/* 801A65D8 001A3538  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A65DC 001A353C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 801A65E0 001A3540  98 1D 0B 28 */	stb r0, 0xb28(r29)
/* 801A65E4 001A3544  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A65E8 001A3548  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 801A65EC 001A354C  98 1D 0B 28 */	stb r0, 0xb28(r29)
/* 801A65F0 001A3550  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A65F4 001A3554  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 801A65F8 001A3558  98 1D 0B 28 */	stb r0, 0xb28(r29)
/* 801A65FC 001A355C  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A6600 001A3560  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 801A6604 001A3564  98 1D 0B 28 */	stb r0, 0xb28(r29)
/* 801A6608 001A3568  88 1D 0B 28 */	lbz r0, 0xb28(r29)
/* 801A660C 001A356C  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 801A6610 001A3570  98 1D 0B 28 */	stb r0, 0xb28(r29)
/* 801A6614 001A3574  88 1D 0B 29 */	lbz r0, 0xb29(r29)
/* 801A6618 001A3578  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801A661C 001A357C  98 1D 0B 29 */	stb r0, 0xb29(r29)
/* 801A6620 001A3580  88 1D 0B 29 */	lbz r0, 0xb29(r29)
/* 801A6624 001A3584  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801A6628 001A3588  98 1D 0B 29 */	stb r0, 0xb29(r29)
/* 801A662C 001A358C  88 1D 0B 29 */	lbz r0, 0xb29(r29)
/* 801A6630 001A3590  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 801A6634 001A3594  98 1D 0B 29 */	stb r0, 0xb29(r29)
/* 801A6638 001A3598  88 1D 0B 29 */	lbz r0, 0xb29(r29)
/* 801A663C 001A359C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 801A6640 001A35A0  98 1D 0B 29 */	stb r0, 0xb29(r29)
/* 801A6644 001A35A4  88 1D 0B 29 */	lbz r0, 0xb29(r29)
/* 801A6648 001A35A8  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 801A664C 001A35AC  98 1D 0B 29 */	stb r0, 0xb29(r29)
/* 801A6650 001A35B0  88 1D 0B 29 */	lbz r0, 0xb29(r29)
/* 801A6654 001A35B4  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 801A6658 001A35B8  98 1D 0B 29 */	stb r0, 0xb29(r29)
/* 801A665C 001A35BC  48 19 A7 29 */	bl Lock__6CTokenFv
/* 801A6660 001A35C0  7F A3 EB 78 */	mr r3, r29
/* 801A6664 001A35C4  4B FF A5 BD */	bl sub_801a0c20
/* 801A6668 001A35C8  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 801A666C 001A35CC  38 80 00 00 */	li r4, 0
/* 801A6670 001A35D0  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801A6674 001A35D4  38 61 00 24 */	addi r3, r1, 0x24
/* 801A6678 001A35D8  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 801A667C 001A35DC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 801A6680 001A35E0  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801A6684 001A35E4  98 1D 04 E2 */	stb r0, 0x4e2(r29)
/* 801A6688 001A35E8  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 801A668C 001A35EC  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 801A6690 001A35F0  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 801A6694 001A35F4  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 801A6698 001A35F8  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 801A669C 001A35FC  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 801A66A0 001A3600  48 13 C9 DD */	bl NoParameter__12CPASAnimParmFv
/* 801A66A4 001A3604  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A66A8 001A3608  48 13 C9 D5 */	bl NoParameter__12CPASAnimParmFv
/* 801A66AC 001A360C  38 61 00 34 */	addi r3, r1, 0x34
/* 801A66B0 001A3610  48 13 C9 CD */	bl NoParameter__12CPASAnimParmFv
/* 801A66B4 001A3614  38 61 00 3C */	addi r3, r1, 0x3c
/* 801A66B8 001A3618  48 13 C9 C5 */	bl NoParameter__12CPASAnimParmFv
/* 801A66BC 001A361C  38 61 00 44 */	addi r3, r1, 0x44
/* 801A66C0 001A3620  48 13 C9 BD */	bl NoParameter__12CPASAnimParmFv
/* 801A66C4 001A3624  38 61 00 4C */	addi r3, r1, 0x4c
/* 801A66C8 001A3628  48 13 C9 B5 */	bl NoParameter__12CPASAnimParmFv
/* 801A66CC 001A362C  38 61 00 54 */	addi r3, r1, 0x54
/* 801A66D0 001A3630  38 80 00 00 */	li r4, 0
/* 801A66D4 001A3634  48 13 C8 B1 */	bl FromEnum__12CPASAnimParmFi
/* 801A66D8 001A3638  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A66DC 001A363C  38 80 00 01 */	li r4, 1
/* 801A66E0 001A3640  48 13 C8 A5 */	bl FromEnum__12CPASAnimParmFi
/* 801A66E4 001A3644  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A66E8 001A3648  38 01 00 24 */	addi r0, r1, 0x24
/* 801A66EC 001A364C  90 61 00 08 */	stw r3, 8(r1)
/* 801A66F0 001A3650  38 61 01 50 */	addi r3, r1, 0x150
/* 801A66F4 001A3654  38 A1 00 5C */	addi r5, r1, 0x5c
/* 801A66F8 001A3658  38 C1 00 54 */	addi r6, r1, 0x54
/* 801A66FC 001A365C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A6700 001A3660  38 E1 00 4C */	addi r7, r1, 0x4c
/* 801A6704 001A3664  39 01 00 44 */	addi r8, r1, 0x44
/* 801A6708 001A3668  39 21 00 3C */	addi r9, r1, 0x3c
/* 801A670C 001A366C  39 41 00 34 */	addi r10, r1, 0x34
/* 801A6710 001A3670  38 80 00 03 */	li r4, 3
/* 801A6714 001A3674  4B ED 6B B1 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801A6718 001A3678  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 801A671C 001A367C  7F A3 EB 78 */	mr r3, r29
/* 801A6720 001A3680  38 81 01 50 */	addi r4, r1, 0x150
/* 801A6724 001A3684  C0 45 00 00 */	lfs f2, 0(r5)
/* 801A6728 001A3688  C0 25 00 04 */	lfs f1, 4(r5)
/* 801A672C 001A368C  C0 05 00 08 */	lfs f0, 8(r5)
/* 801A6730 001A3690  D0 41 01 1C */	stfs f2, 0x11c(r1)
/* 801A6734 001A3694  D0 21 01 20 */	stfs f1, 0x120(r1)
/* 801A6738 001A3698  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 801A673C 001A369C  4B ED 62 C5 */	bl func_8007CA00
/* 801A6740 001A36A0  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 801A6744 001A36A4  38 81 01 10 */	addi r4, r1, 0x110
/* 801A6748 001A36A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A674C 001A36AC  D0 1D 09 50 */	stfs f0, 0x950(r29)
/* 801A6750 001A36B0  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 801A6754 001A36B4  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A6758 001A36B8  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 801A675C 001A36BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A6760 001A36C0  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 801A6764 001A36C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A6768 001A36C8  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 801A676C 001A36CC  80 7D 0A 9C */	lwz r3, 0xa9c(r29)
/* 801A6770 001A36D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801A6774 001A36D4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801A6778 001A36D8  7D 89 03 A6 */	mtctr r12
/* 801A677C 001A36DC  4E 80 04 21 */	bctrl
/* 801A6780 001A36E0  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 801A6784 001A36E4  38 81 01 04 */	addi r4, r1, 0x104
/* 801A6788 001A36E8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A678C 001A36EC  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 801A6790 001A36F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A6794 001A36F4  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 801A6798 001A36F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A679C 001A36FC  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 801A67A0 001A3700  80 7D 0A B0 */	lwz r3, 0xab0(r29)
/* 801A67A4 001A3704  81 83 00 00 */	lwz r12, 0(r3)
/* 801A67A8 001A3708  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801A67AC 001A370C  7D 89 03 A6 */	mtctr r12
/* 801A67B0 001A3710  4E 80 04 21 */	bctrl
/* 801A67B4 001A3714  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 801A67B8 001A3718  38 81 00 F8 */	addi r4, r1, 0xf8
/* 801A67BC 001A371C  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A67C0 001A3720  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 801A67C4 001A3724  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A67C8 001A3728  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 801A67CC 001A372C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A67D0 001A3730  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 801A67D4 001A3734  80 7D 0A C4 */	lwz r3, 0xac4(r29)
/* 801A67D8 001A3738  81 83 00 00 */	lwz r12, 0(r3)
/* 801A67DC 001A373C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801A67E0 001A3740  7D 89 03 A6 */	mtctr r12
/* 801A67E4 001A3744  4E 80 04 21 */	bctrl
/* 801A67E8 001A3748  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 801A67EC 001A374C  38 81 00 EC */	addi r4, r1, 0xec
/* 801A67F0 001A3750  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A67F4 001A3754  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 801A67F8 001A3758  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A67FC 001A375C  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 801A6800 001A3760  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A6804 001A3764  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 801A6808 001A3768  80 7D 0A D8 */	lwz r3, 0xad8(r29)
/* 801A680C 001A376C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A6810 001A3770  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801A6814 001A3774  7D 89 03 A6 */	mtctr r12
/* 801A6818 001A3778  4E 80 04 21 */	bctrl
/* 801A681C 001A377C  80 9D 04 50 */	lwz r4, 0x450(r29)
/* 801A6820 001A3780  38 A0 00 01 */	li r5, 1
/* 801A6824 001A3784  7F A3 EB 78 */	mr r3, r29
/* 801A6828 001A3788  88 04 02 D8 */	lbz r0, 0x2d8(r4)
/* 801A682C 001A378C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801A6830 001A3790  98 04 02 D8 */	stb r0, 0x2d8(r4)
/* 801A6834 001A3794  4B ED 10 61 */	bl MakeThermalColdAndHot__10CPatternedFv
/* 801A6838 001A3798  88 1D 03 28 */	lbz r0, 0x328(r29)
/* 801A683C 001A379C  38 60 00 01 */	li r3, 1
/* 801A6840 001A37A0  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801A6844 001A37A4  34 A1 01 54 */	addic. r5, r1, 0x154
/* 801A6848 001A37A8  98 1D 03 28 */	stb r0, 0x328(r29)
/* 801A684C 001A37AC  41 82 00 58 */	beq lbl_801A68A4
/* 801A6850 001A37B0  80 C5 00 00 */	lwz r6, 0(r5)
/* 801A6854 001A37B4  38 60 00 00 */	li r3, 0
/* 801A6858 001A37B8  2C 06 00 00 */	cmpwi r6, 0
/* 801A685C 001A37BC  40 81 00 40 */	ble lbl_801A689C
/* 801A6860 001A37C0  2C 06 00 08 */	cmpwi r6, 8
/* 801A6864 001A37C4  38 86 FF F8 */	addi r4, r6, -8
/* 801A6868 001A37C8  40 81 00 20 */	ble lbl_801A6888
/* 801A686C 001A37CC  38 04 00 07 */	addi r0, r4, 7
/* 801A6870 001A37D0  54 00 E8 FE */	srwi r0, r0, 3
/* 801A6874 001A37D4  7C 09 03 A6 */	mtctr r0
/* 801A6878 001A37D8  2C 04 00 00 */	cmpwi r4, 0
/* 801A687C 001A37DC  40 81 00 0C */	ble lbl_801A6888
lbl_801A6880:
/* 801A6880 001A37E0  38 63 00 08 */	addi r3, r3, 8
/* 801A6884 001A37E4  42 00 FF FC */	bdnz lbl_801A6880
lbl_801A6888:
/* 801A6888 001A37E8  7C 03 30 50 */	subf r0, r3, r6
/* 801A688C 001A37EC  7C 09 03 A6 */	mtctr r0
/* 801A6890 001A37F0  7C 03 30 00 */	cmpw r3, r6
/* 801A6894 001A37F4  40 80 00 08 */	bge lbl_801A689C
lbl_801A6898:
/* 801A6898 001A37F8  42 00 00 00 */	bdnz lbl_801A6898
lbl_801A689C:
/* 801A689C 001A37FC  38 00 00 00 */	li r0, 0
/* 801A68A0 001A3800  90 05 00 00 */	stw r0, 0(r5)
lbl_801A68A4:
/* 801A68A4 001A3804  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 801A68A8 001A3808  7F A3 EB 78 */	mr r3, r29
/* 801A68AC 001A380C  83 E1 01 AC */	lwz r31, 0x1ac(r1)
/* 801A68B0 001A3810  83 C1 01 A8 */	lwz r30, 0x1a8(r1)
/* 801A68B4 001A3814  83 A1 01 A4 */	lwz r29, 0x1a4(r1)
/* 801A68B8 001A3818  83 81 01 A0 */	lwz r28, 0x1a0(r1)
/* 801A68BC 001A381C  7C 08 03 A6 */	mtlr r0
/* 801A68C0 001A3820  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 801A68C4 001A3824  4E 80 00 20 */	blr

.global __ct__16CIceSheegothDataFR16CIceSheegothData
__ct__16CIceSheegothDataFR16CIceSheegothData:
/* 801A68C8 001A3828  C0 04 00 00 */	lfs f0, 0(r4)
/* 801A68CC 001A382C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801A68D0 001A3830  C0 04 00 04 */	lfs f0, 4(r4)
/* 801A68D4 001A3834  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A68D8 001A3838  C0 04 00 08 */	lfs f0, 8(r4)
/* 801A68DC 001A383C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A68E0 001A3840  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801A68E4 001A3844  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801A68E8 001A3848  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801A68EC 001A384C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801A68F0 001A3850  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801A68F4 001A3854  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801A68F8 001A3858  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 801A68FC 001A385C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801A6900 001A3860  90 A3 00 18 */	stw r5, 0x18(r3)
/* 801A6904 001A3864  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801A6908 001A3868  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 801A690C 001A386C  80 04 00 24 */	lwz r0, 0x24(r4)
/* 801A6910 001A3870  90 A3 00 20 */	stw r5, 0x20(r3)
/* 801A6914 001A3874  90 03 00 24 */	stw r0, 0x24(r3)
/* 801A6918 001A3878  80 A4 00 28 */	lwz r5, 0x28(r4)
/* 801A691C 001A387C  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 801A6920 001A3880  90 A3 00 28 */	stw r5, 0x28(r3)
/* 801A6924 001A3884  90 03 00 2C */	stw r0, 0x2c(r3)
/* 801A6928 001A3888  80 A4 00 30 */	lwz r5, 0x30(r4)
/* 801A692C 001A388C  80 04 00 34 */	lwz r0, 0x34(r4)
/* 801A6930 001A3890  90 A3 00 30 */	stw r5, 0x30(r3)
/* 801A6934 001A3894  90 03 00 34 */	stw r0, 0x34(r3)
/* 801A6938 001A3898  80 A4 00 38 */	lwz r5, 0x38(r4)
/* 801A693C 001A389C  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 801A6940 001A38A0  90 A3 00 38 */	stw r5, 0x38(r3)
/* 801A6944 001A38A4  90 03 00 3C */	stw r0, 0x3c(r3)
/* 801A6948 001A38A8  80 A4 00 40 */	lwz r5, 0x40(r4)
/* 801A694C 001A38AC  80 04 00 44 */	lwz r0, 0x44(r4)
/* 801A6950 001A38B0  90 A3 00 40 */	stw r5, 0x40(r3)
/* 801A6954 001A38B4  90 03 00 44 */	stw r0, 0x44(r3)
/* 801A6958 001A38B8  80 A4 00 48 */	lwz r5, 0x48(r4)
/* 801A695C 001A38BC  80 04 00 4C */	lwz r0, 0x4c(r4)
/* 801A6960 001A38C0  90 A3 00 48 */	stw r5, 0x48(r3)
/* 801A6964 001A38C4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 801A6968 001A38C8  80 04 00 50 */	lwz r0, 0x50(r4)
/* 801A696C 001A38CC  90 03 00 50 */	stw r0, 0x50(r3)
/* 801A6970 001A38D0  80 A4 00 54 */	lwz r5, 0x54(r4)
/* 801A6974 001A38D4  80 04 00 58 */	lwz r0, 0x58(r4)
/* 801A6978 001A38D8  90 A3 00 54 */	stw r5, 0x54(r3)
/* 801A697C 001A38DC  90 03 00 58 */	stw r0, 0x58(r3)
/* 801A6980 001A38E0  80 A4 00 5C */	lwz r5, 0x5c(r4)
/* 801A6984 001A38E4  80 04 00 60 */	lwz r0, 0x60(r4)
/* 801A6988 001A38E8  90 A3 00 5C */	stw r5, 0x5c(r3)
/* 801A698C 001A38EC  90 03 00 60 */	stw r0, 0x60(r3)
/* 801A6990 001A38F0  80 A4 00 64 */	lwz r5, 0x64(r4)
/* 801A6994 001A38F4  80 04 00 68 */	lwz r0, 0x68(r4)
/* 801A6998 001A38F8  90 A3 00 64 */	stw r5, 0x64(r3)
/* 801A699C 001A38FC  90 03 00 68 */	stw r0, 0x68(r3)
/* 801A69A0 001A3900  80 A4 00 6C */	lwz r5, 0x6c(r4)
/* 801A69A4 001A3904  80 04 00 70 */	lwz r0, 0x70(r4)
/* 801A69A8 001A3908  90 A3 00 6C */	stw r5, 0x6c(r3)
/* 801A69AC 001A390C  90 03 00 70 */	stw r0, 0x70(r3)
/* 801A69B0 001A3910  80 04 00 74 */	lwz r0, 0x74(r4)
/* 801A69B4 001A3914  90 03 00 74 */	stw r0, 0x74(r3)
/* 801A69B8 001A3918  80 04 00 78 */	lwz r0, 0x78(r4)
/* 801A69BC 001A391C  90 03 00 78 */	stw r0, 0x78(r3)
/* 801A69C0 001A3920  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 801A69C4 001A3924  90 03 00 7C */	stw r0, 0x7c(r3)
/* 801A69C8 001A3928  80 A4 00 80 */	lwz r5, 0x80(r4)
/* 801A69CC 001A392C  80 04 00 84 */	lwz r0, 0x84(r4)
/* 801A69D0 001A3930  90 A3 00 80 */	stw r5, 0x80(r3)
/* 801A69D4 001A3934  90 03 00 84 */	stw r0, 0x84(r3)
/* 801A69D8 001A3938  80 A4 00 88 */	lwz r5, 0x88(r4)
/* 801A69DC 001A393C  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 801A69E0 001A3940  90 A3 00 88 */	stw r5, 0x88(r3)
/* 801A69E4 001A3944  90 03 00 8C */	stw r0, 0x8c(r3)
/* 801A69E8 001A3948  80 A4 00 90 */	lwz r5, 0x90(r4)
/* 801A69EC 001A394C  80 04 00 94 */	lwz r0, 0x94(r4)
/* 801A69F0 001A3950  90 A3 00 90 */	stw r5, 0x90(r3)
/* 801A69F4 001A3954  90 03 00 94 */	stw r0, 0x94(r3)
/* 801A69F8 001A3958  80 A4 00 98 */	lwz r5, 0x98(r4)
/* 801A69FC 001A395C  80 04 00 9C */	lwz r0, 0x9c(r4)
/* 801A6A00 001A3960  90 A3 00 98 */	stw r5, 0x98(r3)
/* 801A6A04 001A3964  90 03 00 9C */	stw r0, 0x9c(r3)
/* 801A6A08 001A3968  80 A4 00 A0 */	lwz r5, 0xa0(r4)
/* 801A6A0C 001A396C  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 801A6A10 001A3970  90 A3 00 A0 */	stw r5, 0xa0(r3)
/* 801A6A14 001A3974  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 801A6A18 001A3978  80 A4 00 A8 */	lwz r5, 0xa8(r4)
/* 801A6A1C 001A397C  80 04 00 AC */	lwz r0, 0xac(r4)
/* 801A6A20 001A3980  90 A3 00 A8 */	stw r5, 0xa8(r3)
/* 801A6A24 001A3984  90 03 00 AC */	stw r0, 0xac(r3)
/* 801A6A28 001A3988  80 A4 00 B0 */	lwz r5, 0xb0(r4)
/* 801A6A2C 001A398C  80 04 00 B4 */	lwz r0, 0xb4(r4)
/* 801A6A30 001A3990  90 A3 00 B0 */	stw r5, 0xb0(r3)
/* 801A6A34 001A3994  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 801A6A38 001A3998  80 04 00 B8 */	lwz r0, 0xb8(r4)
/* 801A6A3C 001A399C  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 801A6A40 001A39A0  80 A4 00 BC */	lwz r5, 0xbc(r4)
/* 801A6A44 001A39A4  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 801A6A48 001A39A8  90 A3 00 BC */	stw r5, 0xbc(r3)
/* 801A6A4C 001A39AC  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 801A6A50 001A39B0  80 A4 00 C4 */	lwz r5, 0xc4(r4)
/* 801A6A54 001A39B4  80 04 00 C8 */	lwz r0, 0xc8(r4)
/* 801A6A58 001A39B8  90 A3 00 C4 */	stw r5, 0xc4(r3)
/* 801A6A5C 001A39BC  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 801A6A60 001A39C0  80 A4 00 CC */	lwz r5, 0xcc(r4)
/* 801A6A64 001A39C4  80 04 00 D0 */	lwz r0, 0xd0(r4)
/* 801A6A68 001A39C8  90 A3 00 CC */	stw r5, 0xcc(r3)
/* 801A6A6C 001A39CC  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 801A6A70 001A39D0  80 A4 00 D4 */	lwz r5, 0xd4(r4)
/* 801A6A74 001A39D4  80 04 00 D8 */	lwz r0, 0xd8(r4)
/* 801A6A78 001A39D8  90 A3 00 D4 */	stw r5, 0xd4(r3)
/* 801A6A7C 001A39DC  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 801A6A80 001A39E0  80 04 00 DC */	lwz r0, 0xdc(r4)
/* 801A6A84 001A39E4  90 03 00 DC */	stw r0, 0xdc(r3)
/* 801A6A88 001A39E8  80 04 00 E0 */	lwz r0, 0xe0(r4)
/* 801A6A8C 001A39EC  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 801A6A90 001A39F0  80 04 00 E4 */	lwz r0, 0xe4(r4)
/* 801A6A94 001A39F4  90 03 00 E4 */	stw r0, 0xe4(r3)
/* 801A6A98 001A39F8  80 A4 00 E8 */	lwz r5, 0xe8(r4)
/* 801A6A9C 001A39FC  80 04 00 EC */	lwz r0, 0xec(r4)
/* 801A6AA0 001A3A00  90 A3 00 E8 */	stw r5, 0xe8(r3)
/* 801A6AA4 001A3A04  90 03 00 EC */	stw r0, 0xec(r3)
/* 801A6AA8 001A3A08  80 A4 00 F0 */	lwz r5, 0xf0(r4)
/* 801A6AAC 001A3A0C  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 801A6AB0 001A3A10  90 A3 00 F0 */	stw r5, 0xf0(r3)
/* 801A6AB4 001A3A14  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 801A6AB8 001A3A18  80 A4 00 F8 */	lwz r5, 0xf8(r4)
/* 801A6ABC 001A3A1C  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 801A6AC0 001A3A20  90 A3 00 F8 */	stw r5, 0xf8(r3)
/* 801A6AC4 001A3A24  90 03 00 FC */	stw r0, 0xfc(r3)
/* 801A6AC8 001A3A28  80 A4 01 00 */	lwz r5, 0x100(r4)
/* 801A6ACC 001A3A2C  80 04 01 04 */	lwz r0, 0x104(r4)
/* 801A6AD0 001A3A30  90 A3 01 00 */	stw r5, 0x100(r3)
/* 801A6AD4 001A3A34  90 03 01 04 */	stw r0, 0x104(r3)
/* 801A6AD8 001A3A38  80 A4 01 08 */	lwz r5, 0x108(r4)
/* 801A6ADC 001A3A3C  80 04 01 0C */	lwz r0, 0x10c(r4)
/* 801A6AE0 001A3A40  90 A3 01 08 */	stw r5, 0x108(r3)
/* 801A6AE4 001A3A44  90 03 01 0C */	stw r0, 0x10c(r3)
/* 801A6AE8 001A3A48  80 A4 01 10 */	lwz r5, 0x110(r4)
/* 801A6AEC 001A3A4C  80 04 01 14 */	lwz r0, 0x114(r4)
/* 801A6AF0 001A3A50  90 A3 01 10 */	stw r5, 0x110(r3)
/* 801A6AF4 001A3A54  90 03 01 14 */	stw r0, 0x114(r3)
/* 801A6AF8 001A3A58  80 A4 01 18 */	lwz r5, 0x118(r4)
/* 801A6AFC 001A3A5C  80 04 01 1C */	lwz r0, 0x11c(r4)
/* 801A6B00 001A3A60  90 A3 01 18 */	stw r5, 0x118(r3)
/* 801A6B04 001A3A64  90 03 01 1C */	stw r0, 0x11c(r3)
/* 801A6B08 001A3A68  80 04 01 20 */	lwz r0, 0x120(r4)
/* 801A6B0C 001A3A6C  90 03 01 20 */	stw r0, 0x120(r3)
/* 801A6B10 001A3A70  80 A4 01 24 */	lwz r5, 0x124(r4)
/* 801A6B14 001A3A74  80 04 01 28 */	lwz r0, 0x128(r4)
/* 801A6B18 001A3A78  90 A3 01 24 */	stw r5, 0x124(r3)
/* 801A6B1C 001A3A7C  90 03 01 28 */	stw r0, 0x128(r3)
/* 801A6B20 001A3A80  80 A4 01 2C */	lwz r5, 0x12c(r4)
/* 801A6B24 001A3A84  80 04 01 30 */	lwz r0, 0x130(r4)
/* 801A6B28 001A3A88  90 A3 01 2C */	stw r5, 0x12c(r3)
/* 801A6B2C 001A3A8C  90 03 01 30 */	stw r0, 0x130(r3)
/* 801A6B30 001A3A90  80 A4 01 34 */	lwz r5, 0x134(r4)
/* 801A6B34 001A3A94  80 04 01 38 */	lwz r0, 0x138(r4)
/* 801A6B38 001A3A98  90 A3 01 34 */	stw r5, 0x134(r3)
/* 801A6B3C 001A3A9C  90 03 01 38 */	stw r0, 0x138(r3)
/* 801A6B40 001A3AA0  80 A4 01 3C */	lwz r5, 0x13c(r4)
/* 801A6B44 001A3AA4  80 04 01 40 */	lwz r0, 0x140(r4)
/* 801A6B48 001A3AA8  90 A3 01 3C */	stw r5, 0x13c(r3)
/* 801A6B4C 001A3AAC  90 03 01 40 */	stw r0, 0x140(r3)
/* 801A6B50 001A3AB0  80 04 01 44 */	lwz r0, 0x144(r4)
/* 801A6B54 001A3AB4  90 03 01 44 */	stw r0, 0x144(r3)
/* 801A6B58 001A3AB8  80 04 01 48 */	lwz r0, 0x148(r4)
/* 801A6B5C 001A3ABC  90 03 01 48 */	stw r0, 0x148(r3)
/* 801A6B60 001A3AC0  80 04 01 4C */	lwz r0, 0x14c(r4)
/* 801A6B64 001A3AC4  90 03 01 4C */	stw r0, 0x14c(r3)
/* 801A6B68 001A3AC8  80 04 01 50 */	lwz r0, 0x150(r4)
/* 801A6B6C 001A3ACC  90 03 01 50 */	stw r0, 0x150(r3)
/* 801A6B70 001A3AD0  80 04 01 54 */	lwz r0, 0x154(r4)
/* 801A6B74 001A3AD4  90 03 01 54 */	stw r0, 0x154(r3)
/* 801A6B78 001A3AD8  88 04 01 58 */	lbz r0, 0x158(r4)
/* 801A6B7C 001A3ADC  98 03 01 58 */	stb r0, 0x158(r3)
/* 801A6B80 001A3AE0  C0 04 01 5C */	lfs f0, 0x15c(r4)
/* 801A6B84 001A3AE4  D0 03 01 5C */	stfs f0, 0x15c(r3)
/* 801A6B88 001A3AE8  C0 04 01 60 */	lfs f0, 0x160(r4)
/* 801A6B8C 001A3AEC  D0 03 01 60 */	stfs f0, 0x160(r3)
/* 801A6B90 001A3AF0  C0 04 01 64 */	lfs f0, 0x164(r4)
/* 801A6B94 001A3AF4  D0 03 01 64 */	stfs f0, 0x164(r3)
/* 801A6B98 001A3AF8  C0 04 01 68 */	lfs f0, 0x168(r4)
/* 801A6B9C 001A3AFC  D0 03 01 68 */	stfs f0, 0x168(r3)
/* 801A6BA0 001A3B00  88 04 01 6C */	lbz r0, 0x16c(r4)
/* 801A6BA4 001A3B04  98 03 01 6C */	stb r0, 0x16c(r3)
/* 801A6BA8 001A3B08  C0 04 01 70 */	lfs f0, 0x170(r4)
/* 801A6BAC 001A3B0C  D0 03 01 70 */	stfs f0, 0x170(r3)
/* 801A6BB0 001A3B10  C0 04 01 74 */	lfs f0, 0x174(r4)
/* 801A6BB4 001A3B14  D0 03 01 74 */	stfs f0, 0x174(r3)
/* 801A6BB8 001A3B18  80 04 01 78 */	lwz r0, 0x178(r4)
/* 801A6BBC 001A3B1C  90 03 01 78 */	stw r0, 0x178(r3)
/* 801A6BC0 001A3B20  80 04 01 7C */	lwz r0, 0x17c(r4)
/* 801A6BC4 001A3B24  90 03 01 7C */	stw r0, 0x17c(r3)
/* 801A6BC8 001A3B28  80 04 01 80 */	lwz r0, 0x180(r4)
/* 801A6BCC 001A3B2C  90 03 01 80 */	stw r0, 0x180(r3)
/* 801A6BD0 001A3B30  88 04 01 84 */	lbz r0, 0x184(r4)
/* 801A6BD4 001A3B34  98 03 01 84 */	stb r0, 0x184(r3)
/* 801A6BD8 001A3B38  C0 04 01 88 */	lfs f0, 0x188(r4)
/* 801A6BDC 001A3B3C  D0 03 01 88 */	stfs f0, 0x188(r3)
/* 801A6BE0 001A3B40  C0 04 01 8C */	lfs f0, 0x18c(r4)
/* 801A6BE4 001A3B44  D0 03 01 8C */	stfs f0, 0x18c(r3)
/* 801A6BE8 001A3B48  C0 04 01 90 */	lfs f0, 0x190(r4)
/* 801A6BEC 001A3B4C  D0 03 01 90 */	stfs f0, 0x190(r3)
/* 801A6BF0 001A3B50  C0 04 01 94 */	lfs f0, 0x194(r4)
/* 801A6BF4 001A3B54  D0 03 01 94 */	stfs f0, 0x194(r3)
/* 801A6BF8 001A3B58  88 04 01 98 */	lbz r0, 0x198(r4)
/* 801A6BFC 001A3B5C  98 03 01 98 */	stb r0, 0x198(r3)
/* 801A6C00 001A3B60  80 04 01 9C */	lwz r0, 0x19c(r4)
/* 801A6C04 001A3B64  90 03 01 9C */	stw r0, 0x19c(r3)
/* 801A6C08 001A3B68  80 04 01 A0 */	lwz r0, 0x1a0(r4)
/* 801A6C0C 001A3B6C  90 03 01 A0 */	stw r0, 0x1a0(r3)
/* 801A6C10 001A3B70  80 04 01 A4 */	lwz r0, 0x1a4(r4)
/* 801A6C14 001A3B74  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 801A6C18 001A3B78  80 04 01 A8 */	lwz r0, 0x1a8(r4)
/* 801A6C1C 001A3B7C  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 801A6C20 001A3B80  80 04 01 AC */	lwz r0, 0x1ac(r4)
/* 801A6C24 001A3B84  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 801A6C28 001A3B88  C0 04 01 B0 */	lfs f0, 0x1b0(r4)
/* 801A6C2C 001A3B8C  D0 03 01 B0 */	stfs f0, 0x1b0(r3)
/* 801A6C30 001A3B90  C0 04 01 B4 */	lfs f0, 0x1b4(r4)
/* 801A6C34 001A3B94  D0 03 01 B4 */	stfs f0, 0x1b4(r3)
/* 801A6C38 001A3B98  80 04 01 B8 */	lwz r0, 0x1b8(r4)
/* 801A6C3C 001A3B9C  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 801A6C40 001A3BA0  88 04 01 BC */	lbz r0, 0x1bc(r4)
/* 801A6C44 001A3BA4  98 03 01 BC */	stb r0, 0x1bc(r3)
/* 801A6C48 001A3BA8  C0 04 01 C0 */	lfs f0, 0x1c0(r4)
/* 801A6C4C 001A3BAC  D0 03 01 C0 */	stfs f0, 0x1c0(r3)
/* 801A6C50 001A3BB0  C0 04 01 C4 */	lfs f0, 0x1c4(r4)
/* 801A6C54 001A3BB4  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 801A6C58 001A3BB8  C0 04 01 C8 */	lfs f0, 0x1c8(r4)
/* 801A6C5C 001A3BBC  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 801A6C60 001A3BC0  C0 04 01 CC */	lfs f0, 0x1cc(r4)
/* 801A6C64 001A3BC4  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 801A6C68 001A3BC8  88 04 01 D0 */	lbz r0, 0x1d0(r4)
/* 801A6C6C 001A3BCC  98 03 01 D0 */	stb r0, 0x1d0(r3)
/* 801A6C70 001A3BD0  A0 04 01 D4 */	lhz r0, 0x1d4(r4)
/* 801A6C74 001A3BD4  B0 03 01 D4 */	sth r0, 0x1d4(r3)
/* 801A6C78 001A3BD8  C0 04 01 D8 */	lfs f0, 0x1d8(r4)
/* 801A6C7C 001A3BDC  D0 03 01 D8 */	stfs f0, 0x1d8(r3)
/* 801A6C80 001A3BE0  C0 04 01 DC */	lfs f0, 0x1dc(r4)
/* 801A6C84 001A3BE4  D0 03 01 DC */	stfs f0, 0x1dc(r3)
/* 801A6C88 001A3BE8  C0 04 01 E0 */	lfs f0, 0x1e0(r4)
/* 801A6C8C 001A3BEC  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 801A6C90 001A3BF0  80 04 01 E4 */	lwz r0, 0x1e4(r4)
/* 801A6C94 001A3BF4  90 03 01 E4 */	stw r0, 0x1e4(r3)
/* 801A6C98 001A3BF8  A0 04 01 E8 */	lhz r0, 0x1e8(r4)
/* 801A6C9C 001A3BFC  B0 03 01 E8 */	sth r0, 0x1e8(r3)
/* 801A6CA0 001A3C00  80 04 01 EC */	lwz r0, 0x1ec(r4)
/* 801A6CA4 001A3C04  90 03 01 EC */	stw r0, 0x1ec(r3)
/* 801A6CA8 001A3C08  88 04 01 F0 */	lbz r0, 0x1f0(r4)
/* 801A6CAC 001A3C0C  98 03 01 F0 */	stb r0, 0x1f0(r3)
/* 801A6CB0 001A3C10  4E 80 00 20 */	blr

.global __ct__16CIceSheegothDataFR12CInputStreami
__ct__16CIceSheegothDataFR12CInputStreami:
/* 801A6CB4 001A3C14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A6CB8 001A3C18  7C 08 02 A6 */	mflr r0
/* 801A6CBC 001A3C1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A6CC0 001A3C20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A6CC4 001A3C24  7C 9F 23 78 */	mr r31, r4
/* 801A6CC8 001A3C28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A6CCC 001A3C2C  7C 7E 1B 78 */	mr r30, r3
/* 801A6CD0 001A3C30  7F E3 FB 78 */	mr r3, r31
/* 801A6CD4 001A3C34  48 19 7F 55 */	bl ReadFloat__12CInputStreamFv
/* 801A6CD8 001A3C38  C0 02 A7 F4 */	lfs f0, lbl_805AC514@sda21(r2)
/* 801A6CDC 001A3C3C  7F E3 FB 78 */	mr r3, r31
/* 801A6CE0 001A3C40  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A6CE4 001A3C44  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801A6CE8 001A3C48  48 19 7F 41 */	bl ReadFloat__12CInputStreamFv
/* 801A6CEC 001A3C4C  C0 02 A7 F4 */	lfs f0, lbl_805AC514@sda21(r2)
/* 801A6CF0 001A3C50  7F E4 FB 78 */	mr r4, r31
/* 801A6CF4 001A3C54  38 61 00 08 */	addi r3, r1, 8
/* 801A6CF8 001A3C58  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A6CFC 001A3C5C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 801A6D00 001A3C60  48 16 DE 8D */	bl __ct__9CVector3fFR12CInputStream
/* 801A6D04 001A3C64  C0 01 00 08 */	lfs f0, 8(r1)
/* 801A6D08 001A3C68  7F E3 FB 78 */	mr r3, r31
/* 801A6D0C 001A3C6C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 801A6D10 001A3C70  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801A6D14 001A3C74  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 801A6D18 001A3C78  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801A6D1C 001A3C7C  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 801A6D20 001A3C80  48 19 7F 09 */	bl ReadFloat__12CInputStreamFv
/* 801A6D24 001A3C84  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 801A6D28 001A3C88  7F E4 FB 78 */	mr r4, r31
/* 801A6D2C 001A3C8C  38 7E 00 18 */	addi r3, r30, 0x18
/* 801A6D30 001A3C90  4B F5 BE 29 */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 801A6D34 001A3C94  7F E4 FB 78 */	mr r4, r31
/* 801A6D38 001A3C98  38 7E 00 80 */	addi r3, r30, 0x80
/* 801A6D3C 001A3C9C  4B F5 BE 1D */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 801A6D40 001A3CA0  7F E4 FB 78 */	mr r4, r31
/* 801A6D44 001A3CA4  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 801A6D48 001A3CA8  4B F5 BE 11 */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 801A6D4C 001A3CAC  7F E3 FB 78 */	mr r3, r31
/* 801A6D50 001A3CB0  48 19 7F 35 */	bl ReadLong__12CInputStreamFv
/* 801A6D54 001A3CB4  90 7E 01 50 */	stw r3, 0x150(r30)
/* 801A6D58 001A3CB8  7F E4 FB 78 */	mr r4, r31
/* 801A6D5C 001A3CBC  38 7E 01 54 */	addi r3, r30, 0x154
/* 801A6D60 001A3CC0  4B F1 C8 01 */	bl __ct__11CDamageInfoFR12CInputStream
/* 801A6D64 001A3CC4  7F E3 FB 78 */	mr r3, r31
/* 801A6D68 001A3CC8  48 19 7E C1 */	bl ReadFloat__12CInputStreamFv
/* 801A6D6C 001A3CCC  D0 3E 01 70 */	stfs f1, 0x170(r30)
/* 801A6D70 001A3CD0  7F E3 FB 78 */	mr r3, r31
/* 801A6D74 001A3CD4  48 19 7E B5 */	bl ReadFloat__12CInputStreamFv
/* 801A6D78 001A3CD8  D0 3E 01 74 */	stfs f1, 0x174(r30)
/* 801A6D7C 001A3CDC  7F E3 FB 78 */	mr r3, r31
/* 801A6D80 001A3CE0  48 19 7F 05 */	bl ReadLong__12CInputStreamFv
/* 801A6D84 001A3CE4  90 7E 01 78 */	stw r3, 0x178(r30)
/* 801A6D88 001A3CE8  7F E3 FB 78 */	mr r3, r31
/* 801A6D8C 001A3CEC  48 19 7E F9 */	bl ReadLong__12CInputStreamFv
/* 801A6D90 001A3CF0  90 7E 01 7C */	stw r3, 0x17c(r30)
/* 801A6D94 001A3CF4  7F E4 FB 78 */	mr r4, r31
/* 801A6D98 001A3CF8  38 7E 01 80 */	addi r3, r30, 0x180
/* 801A6D9C 001A3CFC  4B F1 C7 C5 */	bl __ct__11CDamageInfoFR12CInputStream
/* 801A6DA0 001A3D00  7F E3 FB 78 */	mr r3, r31
/* 801A6DA4 001A3D04  48 19 7E E1 */	bl ReadLong__12CInputStreamFv
/* 801A6DA8 001A3D08  90 7E 01 9C */	stw r3, 0x19c(r30)
/* 801A6DAC 001A3D0C  7F E3 FB 78 */	mr r3, r31
/* 801A6DB0 001A3D10  48 19 7E D5 */	bl ReadLong__12CInputStreamFv
/* 801A6DB4 001A3D14  90 7E 01 A0 */	stw r3, 0x1a0(r30)
/* 801A6DB8 001A3D18  7F E3 FB 78 */	mr r3, r31
/* 801A6DBC 001A3D1C  48 19 7E C9 */	bl ReadLong__12CInputStreamFv
/* 801A6DC0 001A3D20  90 7E 01 A4 */	stw r3, 0x1a4(r30)
/* 801A6DC4 001A3D24  7F E3 FB 78 */	mr r3, r31
/* 801A6DC8 001A3D28  48 19 7E BD */	bl ReadLong__12CInputStreamFv
/* 801A6DCC 001A3D2C  90 7E 01 A8 */	stw r3, 0x1a8(r30)
/* 801A6DD0 001A3D30  7F E3 FB 78 */	mr r3, r31
/* 801A6DD4 001A3D34  48 19 7E B1 */	bl ReadLong__12CInputStreamFv
/* 801A6DD8 001A3D38  90 7E 01 AC */	stw r3, 0x1ac(r30)
/* 801A6DDC 001A3D3C  7F E3 FB 78 */	mr r3, r31
/* 801A6DE0 001A3D40  48 19 7E 49 */	bl ReadFloat__12CInputStreamFv
/* 801A6DE4 001A3D44  D0 3E 01 B0 */	stfs f1, 0x1b0(r30)
/* 801A6DE8 001A3D48  7F E3 FB 78 */	mr r3, r31
/* 801A6DEC 001A3D4C  48 19 7E 3D */	bl ReadFloat__12CInputStreamFv
/* 801A6DF0 001A3D50  D0 3E 01 B4 */	stfs f1, 0x1b4(r30)
/* 801A6DF4 001A3D54  7F E4 FB 78 */	mr r4, r31
/* 801A6DF8 001A3D58  38 7E 01 B8 */	addi r3, r30, 0x1b8
/* 801A6DFC 001A3D5C  4B F1 C7 65 */	bl __ct__11CDamageInfoFR12CInputStream
/* 801A6E00 001A3D60  7F E3 FB 78 */	mr r3, r31
/* 801A6E04 001A3D64  48 19 7E 81 */	bl ReadLong__12CInputStreamFv
/* 801A6E08 001A3D68  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 801A6E0C 001A3D6C  48 14 1B A5 */	bl TranslateSFXID__11CSfxManagerFUs
/* 801A6E10 001A3D70  B0 7E 01 D4 */	sth r3, 0x1d4(r30)
/* 801A6E14 001A3D74  7F E3 FB 78 */	mr r3, r31
/* 801A6E18 001A3D78  48 19 7E 11 */	bl ReadFloat__12CInputStreamFv
/* 801A6E1C 001A3D7C  D0 3E 01 D8 */	stfs f1, 0x1d8(r30)
/* 801A6E20 001A3D80  7F E3 FB 78 */	mr r3, r31
/* 801A6E24 001A3D84  48 19 7E 05 */	bl ReadFloat__12CInputStreamFv
/* 801A6E28 001A3D88  D0 3E 01 DC */	stfs f1, 0x1dc(r30)
/* 801A6E2C 001A3D8C  7F E3 FB 78 */	mr r3, r31
/* 801A6E30 001A3D90  48 19 7D F9 */	bl ReadFloat__12CInputStreamFv
/* 801A6E34 001A3D94  D0 3E 01 E0 */	stfs f1, 0x1e0(r30)
/* 801A6E38 001A3D98  7F E3 FB 78 */	mr r3, r31
/* 801A6E3C 001A3D9C  48 19 7E 49 */	bl ReadLong__12CInputStreamFv
/* 801A6E40 001A3DA0  90 7E 01 E4 */	stw r3, 0x1e4(r30)
/* 801A6E44 001A3DA4  7F E3 FB 78 */	mr r3, r31
/* 801A6E48 001A3DA8  48 19 7E 3D */	bl ReadLong__12CInputStreamFv
/* 801A6E4C 001A3DAC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 801A6E50 001A3DB0  48 14 1B 61 */	bl TranslateSFXID__11CSfxManagerFUs
/* 801A6E54 001A3DB4  B0 7E 01 E8 */	sth r3, 0x1e8(r30)
/* 801A6E58 001A3DB8  7F E3 FB 78 */	mr r3, r31
/* 801A6E5C 001A3DBC  48 19 7E 29 */	bl ReadLong__12CInputStreamFv
/* 801A6E60 001A3DC0  90 7E 01 EC */	stw r3, 0x1ec(r30)
/* 801A6E64 001A3DC4  7F E3 FB 78 */	mr r3, r31
/* 801A6E68 001A3DC8  48 19 7E 75 */	bl ReadBool__12CInputStreamFv
/* 801A6E6C 001A3DCC  88 1E 01 F0 */	lbz r0, 0x1f0(r30)
/* 801A6E70 001A3DD0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801A6E74 001A3DD4  7F E3 FB 78 */	mr r3, r31
/* 801A6E78 001A3DD8  98 1E 01 F0 */	stb r0, 0x1f0(r30)
/* 801A6E7C 001A3DDC  48 19 7E 61 */	bl ReadBool__12CInputStreamFv
/* 801A6E80 001A3DE0  88 1E 01 F0 */	lbz r0, 0x1f0(r30)
/* 801A6E84 001A3DE4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801A6E88 001A3DE8  7F C3 F3 78 */	mr r3, r30
/* 801A6E8C 001A3DEC  98 1E 01 F0 */	stb r0, 0x1f0(r30)
/* 801A6E90 001A3DF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A6E94 001A3DF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A6E98 001A3DF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A6E9C 001A3DFC  7C 08 03 A6 */	mtlr r0
/* 801A6EA0 001A3E00  38 21 00 20 */	addi r1, r1, 0x20
/* 801A6EA4 001A3E04  4E 80 00 20 */	blr

.global __sinit_CIceSheegoth_cpp
__sinit_CIceSheegoth_cpp:
/* 801A6EA8 001A3E08  C0 02 A7 74 */	lfs f0, lbl_805AC494@sda21(r2)
/* 801A6EAC 001A3E0C  3C 60 80 57 */	lis r3, lbl_80572018@ha
/* 801A6EB0 001A3E10  D4 03 20 18 */	stfsu f0, lbl_80572018@l(r3)
/* 801A6EB4 001A3E14  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A6EB8 001A3E18  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A6EBC 001A3E1C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AC458
lbl_805AC458:
	# ROM: 0x3F8CF8
	.4byte 0x00000025

.global lbl_805AC45C
lbl_805AC45C:
	# ROM: 0x3F8CFC
	.4byte lbl_803D143E

.global lbl_805AC460
lbl_805AC460:
	# ROM: 0x3F8D00
	.4byte lbl_803D1426

.global lbl_805AC464
lbl_805AC464:
	# ROM: 0x3F8D04
	.4byte lbl_803D1412

.global lbl_805AC468
lbl_805AC468:
	# ROM: 0x3F8D08
	.4byte lbl_803D144E

.global lbl_805AC46C
lbl_805AC46C:
	# ROM: 0x3F8D0C
	.4byte lbl_803D1459

.global lbl_805AC470
lbl_805AC470:
	# ROM: 0x3F8D10
	.4byte 0x41200000

.global lbl_805AC474
lbl_805AC474:
	# ROM: 0x3F8D14
	.float 0.125

.global lbl_805AC478
lbl_805AC478:
	# ROM: 0x3F8D18
	.float 0.6

.global lbl_805AC47C
lbl_805AC47C:
	# ROM: 0x3F8D1C
	.4byte 0

.global lbl_805AC480
lbl_805AC480:
	# ROM: 0x3F8D20
	.float 1.0

.global lbl_805AC484
lbl_805AC484:
	# ROM: 0x3F8D24
	.4byte 0x3727C5AC

.global lbl_805AC488
lbl_805AC488:
	# ROM: 0x3F8D28
	.float 0.33333334

.global lbl_805AC48C
lbl_805AC48C:
	# ROM: 0x3F8D2C
	.4byte 0x40400000

.global lbl_805AC490
lbl_805AC490:
	# ROM: 0x3F8D30
	.float 1.25

.global lbl_805AC494
lbl_805AC494:
	# ROM: 0x3F8D34
	.float 2.0

.global lbl_805AC498
lbl_805AC498:
	# ROM: 0x3F8D38
	.4byte 0x3D800000

.global lbl_805AC49C
lbl_805AC49C:
	# ROM: 0x3F8D3C
	.4byte 0x41A00000

.global lbl_805AC4A0
lbl_805AC4A0:
	# ROM: 0x3F8D40
	.float 4.0

.global lbl_805AC4A4
lbl_805AC4A4:
	# ROM: 0x3F8D44
	.4byte 0x447A0000

.global lbl_805AC4A8
lbl_805AC4A8:
	# ROM: 0x3F8D48
	.float 0.5

.global lbl_805AC4AC
lbl_805AC4AC:
	# ROM: 0x3F8D4C
	.float 0.01

.global lbl_805AC4B0
lbl_805AC4B0:
	# ROM: 0x3F8D50
	.4byte 0x42480000

.global lbl_805AC4B4
lbl_805AC4B4:
	# ROM: 0x3F8D54
	.4byte 0x42200000

.global lbl_805AC4B8
lbl_805AC4B8:
	# ROM: 0x3F8D58
	.4byte 0x41C80000

.global lbl_805AC4BC
lbl_805AC4BC:
	# ROM: 0x3F8D5C
	.4byte 0x41480000

.global lbl_805AC4C0
lbl_805AC4C0:
	# ROM: 0x3F8D60
	.float 0.25

.global lbl_805AC4C4
lbl_805AC4C4:
	# ROM: 0x3F8D64
	.4byte 0x3FE00000

.global lbl_805AC4C8
lbl_805AC4C8:
	# ROM: 0x3F8D68
	.4byte 0x42C80000

.global lbl_805AC4CC
lbl_805AC4CC:
	# ROM: 0x3F8D6C
	.float 0.4

.global lbl_805AC4D0
lbl_805AC4D0:
	# ROM: 0x3F8D70
	.4byte 0x3EAA7EFA

.global lbl_805AC4D4
lbl_805AC4D4:
	# ROM: 0x3F8D74
	.4byte 0x3F2A7EFA

.global lbl_805AC4D8
lbl_805AC4D8:
	# ROM: 0x3F8D78
	.4byte 0x3F4CCCCD

.global lbl_805AC4DC
lbl_805AC4DC:
	# ROM: 0x3F8D7C
	.4byte 0x3ECCCCCC

.global lbl_805AC4E0
lbl_805AC4E0:
	# ROM: 0x3F8D80
	.float 0.3

.global lbl_805AC4E4
lbl_805AC4E4:
	# ROM: 0x3F8D84
	.4byte 0x3E860A92

.global lbl_805AC4E8
lbl_805AC4E8:
	# ROM: 0x3F8D88
	.float 15.0

.global lbl_805AC4EC
lbl_805AC4EC:
	# ROM: 0x3F8D8C
	.4byte 0x3DB2B8C2

.global lbl_805AC4F0
lbl_805AC4F0:
	# ROM: 0x3F8D90
	.4byte 0x42A20000

.global lbl_805AC4F4
lbl_805AC4F4:
	# ROM: 0x3F8D94
	.float 0.7853982

.global lbl_805AC4F8
lbl_805AC4F8:
	# ROM: 0x3F8D98
	.double 4.503601774854144E15

.global lbl_805AC500
lbl_805AC500:
	# ROM: 0x3F8DA0
	.4byte 0x3F860A92

.global lbl_805AC504
lbl_805AC504:
	# ROM: 0x3F8DA4
	.float 0.9

.global lbl_805AC508
lbl_805AC508:
	# ROM: 0x3F8DA8
	.float 0.2

.global lbl_805AC50C
lbl_805AC50C:
	# ROM: 0x3F8DAC
	.4byte 0x3FB2B8C3

.global lbl_805AC510
lbl_805AC510:
	# ROM: 0x3F8DB0
	.4byte 0x40490FDB

.global lbl_805AC514
lbl_805AC514:
	# ROM: 0x3F8DB4
	.float 0.017453292


.section .rodata
.balign 8
.global lbl_803D1360
lbl_803D1360:
	# ROM: 0x3CE360
	.4byte lbl_803D13D8
	.4byte lbl_803D13DE
	.float 0.4
	.float 0.75
	.4byte lbl_803D13E5
	.4byte lbl_803D13ED
	.float 0.4
	.float 0.75
	.4byte lbl_803D13F5
	.4byte lbl_803D13FB
	.float 0.4
	.float 0.75
	.4byte lbl_803D1402
	.4byte lbl_803D140A
	.float 0.4
	.float 0.75
	.4byte lbl_803D1412
	.4byte 0x3F0CCCCD
	.4byte lbl_803D141F
	.4byte 0x3F8CCCCD
	.4byte lbl_803D1426
	.4byte 0x3F8CCCCD
	.4byte lbl_803D1434
	.float 0.7
	.4byte lbl_803D143E
	.4byte 0x3F99999A
	.4byte lbl_803D144E
	.float 0.6
	.4byte lbl_803D1459
	.float 0.6

.global lbl_803D13D8
lbl_803D13D8:

	# ROM: 0x3CE3D8
	.asciz "L_hip"

.global lbl_803D13DE
lbl_803D13DE:

	# ROM: 0x3CE3DE
	.byte 0x4C, 0x5F
	.asciz "knee"

.global lbl_803D13E5
lbl_803D13E5:

	# ROM: 0x3CE3E5
	.byte 0x4C, 0x5F, 0x61
	.asciz "nkle"

.global lbl_803D13ED
lbl_803D13ED:

	# ROM: 0x3CE3ED
	.byte 0x4C, 0x5F, 0x54
	.asciz "oe_3"

.global lbl_803D13F5
lbl_803D13F5:

	# ROM: 0x3CE3F5
	.byte 0x52, 0x5F, 0x68
	.byte 0x69, 0x70, 0x00

.global lbl_803D13FB
lbl_803D13FB:

	# ROM: 0x3CE3FB
	.byte 0x52
	.asciz "_knee"

.global lbl_803D1402
lbl_803D1402:

	# ROM: 0x3CE402
	.byte 0x52, 0x5F
	.asciz "ankle"

.global lbl_803D140A
lbl_803D140A:

	# ROM: 0x3CE40A
	.byte 0x52, 0x5F
	.asciz "Toe_3"

.global lbl_803D1412
lbl_803D1412:

	# ROM: 0x3CE412
	.byte 0x4A, 0x61
	.asciz "w_end_LCTR"

.global lbl_803D141F
lbl_803D141F:

	# ROM: 0x3CE41F
	.byte 0x50
	.asciz "elvis"

.global lbl_803D1426
lbl_803D1426:

	# ROM: 0x3CE426
	.byte 0x4C, 0x43
	.asciz "TR_SHEMOUTH"

.global lbl_803D1434
lbl_803D1434:

	# ROM: 0x3CE434
	.asciz "butt_LCTR"

.global lbl_803D143E
lbl_803D143E:

	# ROM: 0x3CE43E
	.byte 0x49, 0x63
	.asciz "e_Shards_LCTR"

.global lbl_803D144E
lbl_803D144E:

	# ROM: 0x3CE44E
	.byte 0x47, 0x69
	.asciz "llL_LCTR"

.global lbl_803D1459
lbl_803D1459:

	# ROM: 0x3CE459
	.byte 0x47, 0x69, 0x6C
	.asciz "lR_LCTR"
	.asciz "??(??)"
	.byte 0x49
	.asciz "ceSheegoth_Flame"
	.byte 0x48, 0x65, 0x61
	.4byte 0x645F3100
	.asciz "FlameThrower"
	.balign 4
	.4byte 0

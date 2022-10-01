.include "macros.inc"

.section .data
.balign 8

.global lbl_803DF890
lbl_803DF890:
	# ROM: 0x3DC890
	.4byte 0
	.4byte 0
	.4byte __dt__7CBeetleFv
	.4byte Accept__7CBeetleFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__7CBeetleFfR13CStateManager
	.4byte AcceptScriptMsg__7CBeetleF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__7CBeetleFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__7CBeetleCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__7CBeetleCFv
	.4byte GetDamageVulnerability__7CBeetleCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__7CBeetleCFRC13CStateManager
	.4byte GetAimPosition__7CBeetleCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__7CBeetleCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__7CBeetleFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__9CBeetleFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__7CBeetleFRC9CVector3fR13CStateManager
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__7CBeetleFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__7CBeetleCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__7CBeetleCFv
	.4byte Patrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte FollowPattern__7CBeetleFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__7CBeetleFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__7CBeetleFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__7CBeetleFR13CStateManager9EStateMsgf
	.4byte Deactivate__7CBeetleFR13CStateManager9EStateMsgf
	.4byte Attack__7CBeetleFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__7CBeetleFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__7CBeetleFR13CStateManager9EStateMsgf
	.4byte Shuffle__7CBeetleFR13CStateManager9EStateMsgf
	.4byte TurnAround__7CBeetleFR13CStateManager9EStateMsgf
	.4byte Skid__7CBeetleFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__7CBeetleFR13CStateManager9EStateMsgf
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
	.4byte Retreat__7CBeetleFR13CStateManager9EStateMsgf
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
	.4byte InAttackPosition__7CBeetleFR13CStateManager9EStateMsgf
	.4byte Leash__10CPatternedFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__7CBeetleFR13CStateManager9EStateMsgf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__7CBeetleFR13CStateManager9EStateMsgf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__10CPatternedFR13CStateManagerf
	.4byte SpotPlayer__10CPatternedFR13CStateManagerf
	.4byte PlayerSpot__10CPatternedFR13CStateManagerf
	.4byte PatternOver__7CBeetleFR13CStateManagerf
	.4byte PatternShagged__10CPatternedFR13CStateManagerf
	.4byte HasAttackPattern__7CBeetleFR13CStateManagerf
	.4byte HasPatrolPath__10CPatternedFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__10CPatternedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__7CBeetleFR13CStateManagerf
	.4byte ShouldAttack__7CBeetleFR13CStateManagerf
	.4byte ShouldDoubleSnap__7CBeetleFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__7CBeetleFR13CStateManagerf
	.4byte HitSomething__7CBeetleFR13CStateManagerf
	.4byte ShouldJumpBack__7CBeetleFR13CStateManagerf
	.4byte Stuck__7CBeetleFR13CStateManagerf
	.4byte NoPathNodes__7CBeetleFR13CStateManagerf
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
	.4byte ShouldTaunt__7CBeetleFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__3CAiFR13CStateManagerf
	.4byte ShotAt__7CBeetleFR13CStateManagerf
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
	.4byte Burn__7CBeetleFff
	.4byte Shock__7CBeetleFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte GetSearchPath__7CBeetleFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__7CBeetleCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803DFB5C
lbl_803DFB5C:
	# ROM: 0x3DCB5C
	.4byte lbl_800E79FC
	.4byte lbl_800E78E0
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E78EC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E78FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E7930
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E79FC
	.4byte lbl_800E78EC
	.4byte lbl_800E7984
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7338
lbl_805A7338:
	# ROM: 0x3F4CD8
	.4byte 0x00000013

.global lbl_805A733C
lbl_805A733C:
	# ROM: 0x3F4CDC
	.4byte 0x00000013

.global lbl_805A7340
lbl_805A7340:
	# ROM: 0x3F4CE0
	.4byte 0

.global lbl_805A7344
lbl_805A7344:
	# ROM: 0x3F4CE4
	.4byte 0x00000021

.global lbl_805A7348
lbl_805A7348:
	# ROM: 0x3F4CE8
	.4byte 0x00000013

.global lbl_805A734C
lbl_805A734C:
	# ROM: 0x3F4CEC
	.4byte 0x00000021

.global lbl_805A7350
lbl_805A7350:
	# ROM: 0x3F4CF0
	.4byte 0x00000013

.global lbl_805A7354
lbl_805A7354:
	# ROM: 0x3F4CF4
	.4byte 0x0000001D

.global lbl_805A7358
lbl_805A7358:
	# ROM: 0x3F4CF8
	.4byte 0x0000001E
	.4byte 0

.section .sbss
.balign 8

# CBeetleFR
.global lbl_805A8EC0
lbl_805A8EC0:
	.skip 0x8
.global lbl_805A8EC8
lbl_805A8EC8:
	.skip 0x4
.global lbl_805A8ECC
lbl_805A8ECC:
	.skip 0x4

.section .sdata2, "a"
.balign 8

.global lbl_805AACE0
lbl_805AACE0:
	# ROM: 0x3F7580
	.4byte lbl_803CE5D0

.global lbl_805AACE4
lbl_805AACE4:
	# ROM: 0x3F7584
	.4byte lbl_803CE5DE

.global lbl_805AACE8
lbl_805AACE8:
	# ROM: 0x3F7588
	.4byte lbl_803CE5DE

.global lbl_805AACEC
lbl_805AACEC:
	# ROM: 0x3F758C
	.float 4.0

.global lbl_805AACF0
lbl_805AACF0:
	# ROM: 0x3F7590
	.float 0.5

.global lbl_805AACF4
lbl_805AACF4:
	# ROM: 0x3F7594
	.4byte 0x42990000

.global lbl_805AACF8
lbl_805AACF8:
	# ROM: 0x3F7598
	.float 255.0

.global lbl_805AACFC
lbl_805AACFC:
	# ROM: 0x3F759C
	.4byte 0x42C80000

.global lbl_805AAD00
lbl_805AAD00:
	# ROM: 0x3F75A0
	.float 2.0

.global lbl_805AAD04
lbl_805AAD04:
	# ROM: 0x3F75A4
	.4byte 0

.global lbl_805AAD08
lbl_805AAD08:
	# ROM: 0x3F75A8
	.float 1.0

.global lbl_805AAD0C
lbl_805AAD0C:
	# ROM: 0x3F75AC
	.4byte 0x41200000

.global lbl_805AAD10
lbl_805AAD10:
	# ROM: 0x3F75B0
	.4byte 0xBF000000

.global lbl_805AAD14
lbl_805AAD14:
	# ROM: 0x3F75B4
	.float 1.5

.global lbl_805AAD18
lbl_805AAD18:
	# ROM: 0x3F75B8
	.float 0.1

.global lbl_805AAD1C
lbl_805AAD1C:
	# ROM: 0x3F75BC
	.4byte 0x40400000

.global lbl_805AAD20
lbl_805AAD20:
	# ROM: 0x3F75C0
	.float 5.0

.global lbl_805AAD24
lbl_805AAD24:
	# ROM: 0x3F75C4
	.float 0.75

.global lbl_805AAD28
lbl_805AAD28:
	# ROM: 0x3F75C8
	.float 1.1920929E-7

.global lbl_805AAD2C
lbl_805AAD2C:
	# ROM: 0x3F75CC
	.4byte 0x3F060A92

.global lbl_805AAD30
lbl_805AAD30:
	# ROM: 0x3F75D0
	.4byte 0x3F7AE148

.global lbl_805AAD34
lbl_805AAD34:
	# ROM: 0x3F75D4
	.4byte 0x7F7FFFFF

.section .text, "ax"

.global GetSearchPath__7CBeetleFv
GetSearchPath__7CBeetleFv:
/* 800E2EDC 000DFE3C  38 63 05 FC */	addi r3, r3, 0x5fc
/* 800E2EE0 000DFE40  4E 80 00 20 */	blr

.global NoPathNodes__7CBeetleFR13CStateManagerf
NoPathNodes__7CBeetleFR13CStateManagerf:
/* 800E2EE4 000DFE44  38 60 00 00 */	li r3, 0
/* 800E2EE8 000DFE48  4E 80 00 20 */	blr

.global PathShagged__7CBeetleFR13CStateManager9EStateMsgf
PathShagged__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E2EEC 000DFE4C  38 60 00 00 */	li r3, 0
/* 800E2EF0 000DFE50  4E 80 00 20 */	blr

.global IsListening__7CBeetleCFv
IsListening__7CBeetleCFv:
/* 800E2EF4 000DFE54  38 60 00 01 */	li r3, 1
/* 800E2EF8 000DFE58  4E 80 00 20 */	blr

.global GetGravityConstant__7CBeetleCFv
GetGravityConstant__7CBeetleCFv:
/* 800E2EFC 000DFE5C  C0 22 8F CC */	lfs f1, lbl_805AACEC@sda21(r2)
/* 800E2F00 000DFE60  C0 02 96 A0 */	lfs f0, skGravityConstant__13CPhysicsActor@sda21(r2)
/* 800E2F04 000DFE64  EC 21 00 32 */	fmuls f1, f1, f0
/* 800E2F08 000DFE68  4E 80 00 20 */	blr

.global RefinePathFindDest__7CBeetleFR13CStateManagerR9CVector3f
RefinePathFindDest__7CBeetleFR13CStateManagerR9CVector3f:
/* 800E2F0C 000DFE6C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E2F10 000DFE70  7C 08 02 A6 */	mflr r0
/* 800E2F14 000DFE74  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E2F18 000DFE78  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800E2F1C 000DFE7C  7C BF 2B 78 */	mr r31, r5
/* 800E2F20 000DFE80  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E2F24 000DFE84  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800E2F28 000DFE88  7C 7E 1B 78 */	mr r30, r3
/* 800E2F2C 000DFE8C  7C 83 23 78 */	mr r3, r4
/* 800E2F30 000DFE90  80 C4 08 4C */	lwz r6, 0x84c(r4)
/* 800E2F34 000DFE94  38 81 00 10 */	addi r4, r1, 0x10
/* 800E2F38 000DFE98  C0 46 00 60 */	lfs f2, 0x60(r6)
/* 800E2F3C 000DFE9C  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 800E2F40 000DFEA0  C0 06 00 40 */	lfs f0, 0x40(r6)
/* 800E2F44 000DFEA4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 800E2F48 000DFEA8  D0 3F 00 04 */	stfs f1, 4(r31)
/* 800E2F4C 000DFEAC  D0 5F 00 08 */	stfs f2, 8(r31)
/* 800E2F50 000DFEB0  A0 DE 00 08 */	lhz r6, 8(r30)
/* 800E2F54 000DFEB4  A0 1E 05 70 */	lhz r0, 0x570(r30)
/* 800E2F58 000DFEB8  B0 C1 00 08 */	sth r6, 8(r1)
/* 800E2F5C 000DFEBC  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 800E2F60 000DFEC0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E2F64 000DFEC4  48 15 72 1D */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 800E2F68 000DFEC8  28 03 00 00 */	cmplwi r3, 0
/* 800E2F6C 000DFECC  41 82 00 20 */	beq lbl_800E2F8C
/* 800E2F70 000DFED0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800E2F74 000DFED4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 800E2F78 000DFED8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 800E2F7C 000DFEDC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 800E2F80 000DFEE0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800E2F84 000DFEE4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 800E2F88 000DFEE8  48 00 00 E8 */	b lbl_800E3070
lbl_800E2F8C:
/* 800E2F8C 000DFEEC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 800E2F90 000DFEF0  38 61 00 38 */	addi r3, r1, 0x38
/* 800E2F94 000DFEF4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 800E2F98 000DFEF8  C0 7F 00 08 */	lfs f3, 8(r31)
/* 800E2F9C 000DFEFC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 800E2FA0 000DFF00  EC 81 00 28 */	fsubs f4, f1, f0
/* 800E2FA4 000DFF04  C0 3F 00 00 */	lfs f1, 0(r31)
/* 800E2FA8 000DFF08  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 800E2FAC 000DFF0C  EC 43 10 28 */	fsubs f2, f3, f2
/* 800E2FB0 000DFF10  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 800E2FB4 000DFF14  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E2FB8 000DFF18  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 800E2FBC 000DFF1C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800E2FC0 000DFF20  48 23 17 39 */	bl CanBeNormalized__9CVector3fCFv
/* 800E2FC4 000DFF24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E2FC8 000DFF28  41 82 00 3C */	beq lbl_800E3004
/* 800E2FCC 000DFF2C  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E2FD0 000DFF30  38 81 00 38 */	addi r4, r1, 0x38
/* 800E2FD4 000DFF34  48 23 18 7D */	bl AsNormalized__9CVector3fCFv
/* 800E2FD8 000DFF38  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 800E2FDC 000DFF3C  38 61 00 20 */	addi r3, r1, 0x20
/* 800E2FE0 000DFF40  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 800E2FE4 000DFF44  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800E2FE8 000DFF48  FC 40 10 50 */	fneg f2, f2
/* 800E2FEC 000DFF4C  FC 20 08 50 */	fneg f1, f1
/* 800E2FF0 000DFF50  FC 00 00 50 */	fneg f0, f0
/* 800E2FF4 000DFF54  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800E2FF8 000DFF58  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800E2FFC 000DFF5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E3000 000DFF60  48 00 00 20 */	b lbl_800E3020
lbl_800E3004:
/* 800E3004 000DFF64  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 800E3008 000DFF68  38 61 00 14 */	addi r3, r1, 0x14
/* 800E300C 000DFF6C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 800E3010 000DFF70  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 800E3014 000DFF74  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800E3018 000DFF78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E301C 000DFF7C  D0 41 00 1C */	stfs f2, 0x1c(r1)
lbl_800E3020:
/* 800E3020 000DFF80  C0 3E 02 FC */	lfs f1, 0x2fc(r30)
/* 800E3024 000DFF84  C0 1E 03 00 */	lfs f0, 0x300(r30)
/* 800E3028 000DFF88  C0 82 8F D0 */	lfs f4, lbl_805AACF0@sda21(r2)
/* 800E302C 000DFF8C  EC 41 00 2A */	fadds f2, f1, f0
/* 800E3030 000DFF90  C0 03 00 00 */	lfs f0, 0(r3)
/* 800E3034 000DFF94  C0 3F 00 00 */	lfs f1, 0(r31)
/* 800E3038 000DFF98  C0 63 00 04 */	lfs f3, 4(r3)
/* 800E303C 000DFF9C  EC 84 00 B2 */	fmuls f4, f4, f2
/* 800E3040 000DFFA0  C0 43 00 08 */	lfs f2, 8(r3)
/* 800E3044 000DFFA4  EC 04 00 32 */	fmuls f0, f4, f0
/* 800E3048 000DFFA8  EC 64 00 F2 */	fmuls f3, f4, f3
/* 800E304C 000DFFAC  EC 44 00 B2 */	fmuls f2, f4, f2
/* 800E3050 000DFFB0  EC 01 00 2A */	fadds f0, f1, f0
/* 800E3054 000DFFB4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 800E3058 000DFFB8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800E305C 000DFFBC  EC 00 18 2A */	fadds f0, f0, f3
/* 800E3060 000DFFC0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 800E3064 000DFFC4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800E3068 000DFFC8  EC 00 10 2A */	fadds f0, f0, f2
/* 800E306C 000DFFCC  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_800E3070:
/* 800E3070 000DFFD0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E3074 000DFFD4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800E3078 000DFFD8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800E307C 000DFFDC  7C 08 03 A6 */	mtlr r0
/* 800E3080 000DFFE0  38 21 00 50 */	addi r1, r1, 0x50
/* 800E3084 000DFFE4  4E 80 00 20 */	blr

.global PreRender__7CBeetleFR13CStateManagerRC14CFrustumPlanes
PreRender__7CBeetleFR13CStateManagerRC14CFrustumPlanes:
/* 800E3088 000DFFE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E308C 000DFFEC  7C 08 02 A6 */	mflr r0
/* 800E3090 000DFFF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E3094 000DFFF4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800E3098 000DFFF8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 800E309C 000DFFFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E30A0 000E0000  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E30A4 000E0004  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E30A8 000E0008  88 03 04 00 */	lbz r0, 0x400(r3)
/* 800E30AC 000E000C  7C 7D 1B 78 */	mr r29, r3
/* 800E30B0 000E0010  7C 9E 23 78 */	mr r30, r4
/* 800E30B4 000E0014  7C BF 2B 78 */	mr r31, r5
/* 800E30B8 000E0018  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E30BC 000E001C  41 82 00 94 */	beq lbl_800E3150
/* 800E30C0 000E0020  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 800E30C4 000E0024  80 63 00 00 */	lwz r3, 0(r3)
/* 800E30C8 000E0028  4B FA E4 91 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 800E30CC 000E002C  2C 03 00 02 */	cmpwi r3, 2
/* 800E30D0 000E0030  41 82 00 70 */	beq lbl_800E3140
/* 800E30D4 000E0034  40 80 00 10 */	bge lbl_800E30E4
/* 800E30D8 000E0038  2C 03 00 01 */	cmpwi r3, 1
/* 800E30DC 000E003C  40 80 00 14 */	bge lbl_800E30F0
/* 800E30E0 000E0040  48 00 00 60 */	b lbl_800E3140
lbl_800E30E4:
/* 800E30E4 000E0044  2C 03 00 04 */	cmpwi r3, 4
/* 800E30E8 000E0048  40 80 00 58 */	bge lbl_800E3140
/* 800E30EC 000E004C  48 00 00 18 */	b lbl_800E3104
lbl_800E30F0:
/* 800E30F0 000E0050  C3 E2 8F D4 */	lfs f31, lbl_805AACF4@sda21(r2)
/* 800E30F4 000E0054  F3 E1 A0 0B */	psq_st f31, 11(r1), 1, qr2
/* 800E30F8 000E0058  88 01 00 0B */	lbz r0, 0xb(r1)
/* 800E30FC 000E005C  98 1D 04 2F */	stb r0, 0x42f(r29)
/* 800E3100 000E0060  48 00 00 50 */	b lbl_800E3150
lbl_800E3104:
/* 800E3104 000E0064  88 1D 08 38 */	lbz r0, 0x838(r29)
/* 800E3108 000E0068  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E310C 000E006C  41 82 00 20 */	beq lbl_800E312C
/* 800E3110 000E0070  C0 22 8F D8 */	lfs f1, lbl_805AACF8@sda21(r2)
/* 800E3114 000E0074  C0 1D 08 30 */	lfs f0, 0x830(r29)
/* 800E3118 000E0078  EF E1 00 32 */	fmuls f31, f1, f0
/* 800E311C 000E007C  F3 E1 A0 0A */	psq_st f31, 10(r1), 1, qr2
/* 800E3120 000E0080  88 01 00 0A */	lbz r0, 0xa(r1)
/* 800E3124 000E0084  98 1D 04 2F */	stb r0, 0x42f(r29)
/* 800E3128 000E0088  48 00 00 28 */	b lbl_800E3150
lbl_800E312C:
/* 800E312C 000E008C  C3 E2 8F D8 */	lfs f31, lbl_805AACF8@sda21(r2)
/* 800E3130 000E0090  F3 E1 A0 09 */	psq_st f31, 9(r1), 1, qr2
/* 800E3134 000E0094  88 01 00 09 */	lbz r0, 9(r1)
/* 800E3138 000E0098  98 1D 04 2F */	stb r0, 0x42f(r29)
/* 800E313C 000E009C  48 00 00 14 */	b lbl_800E3150
lbl_800E3140:
/* 800E3140 000E00A0  C3 E2 8F D8 */	lfs f31, lbl_805AACF8@sda21(r2)
/* 800E3144 000E00A4  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 800E3148 000E00A8  88 01 00 08 */	lbz r0, 8(r1)
/* 800E314C 000E00AC  98 1D 04 2F */	stb r0, 0x42f(r29)
lbl_800E3150:
/* 800E3150 000E00B0  7F A3 EB 78 */	mr r3, r29
/* 800E3154 000E00B4  7F C4 F3 78 */	mr r4, r30
/* 800E3158 000E00B8  7F E5 FB 78 */	mr r5, r31
/* 800E315C 000E00BC  4B F9 51 81 */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 800E3160 000E00C0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 800E3164 000E00C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E3168 000E00C8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800E316C 000E00CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E3170 000E00D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E3174 000E00D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E3178 000E00D8  7C 08 03 A6 */	mtlr r0
/* 800E317C 000E00DC  38 21 00 30 */	addi r1, r1, 0x30
/* 800E3180 000E00E0  4E 80 00 20 */	blr

.global FindFurthestRetreatPoint__7CBeetleFR13CStateManager
FindFurthestRetreatPoint__7CBeetleFR13CStateManager:
/* 800E3184 000E00E4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800E3188 000E00E8  7C 08 02 A6 */	mflr r0
/* 800E318C 000E00EC  90 01 00 74 */	stw r0, 0x74(r1)
/* 800E3190 000E00F0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800E3194 000E00F4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 800E3198 000E00F8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800E319C 000E00FC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800E31A0 000E0100  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800E31A4 000E0104  93 81 00 50 */	stw r28, 0x50(r1)
/* 800E31A8 000E0108  7C 7C 1B 78 */	mr r28, r3
/* 800E31AC 000E010C  7C 9D 23 78 */	mr r29, r4
/* 800E31B0 000E0110  80 03 06 E0 */	lwz r0, 0x6e0(r3)
/* 800E31B4 000E0114  3B C0 FF FF */	li r30, -1
/* 800E31B8 000E0118  2C 00 00 00 */	cmpwi r0, 0
/* 800E31BC 000E011C  40 81 01 08 */	ble lbl_800E32C4
/* 800E31C0 000E0120  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 800E31C4 000E0124  38 61 00 28 */	addi r3, r1, 0x28
/* 800E31C8 000E0128  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 800E31CC 000E012C  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 800E31D0 000E0130  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 800E31D4 000E0134  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 800E31D8 000E0138  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800E31DC 000E013C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800E31E0 000E0140  48 23 10 21 */	bl __ct__9CVector2fFff
/* 800E31E4 000E0144  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800E31E8 000E0148  38 80 00 00 */	li r4, 0
/* 800E31EC 000E014C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800E31F0 000E0150  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 800E31F4 000E0154  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800E31F8 000E0158  80 BC 06 E0 */	lwz r5, 0x6e0(r28)
/* 800E31FC 000E015C  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 800E3200 000E0160  38 A5 FF FF */	addi r5, r5, -1
/* 800E3204 000E0164  48 22 F3 91 */	bl Range__9CRandom16Fii
/* 800E3208 000E0168  7C 7E 1B 78 */	mr r30, r3
/* 800E320C 000E016C  3B FC 06 E4 */	addi r31, r28, 0x6e4
/* 800E3210 000E0170  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 800E3214 000E0174  38 61 00 18 */	addi r3, r1, 0x18
/* 800E3218 000E0178  7C 9F 02 14 */	add r4, r31, r0
/* 800E321C 000E017C  C0 24 00 00 */	lfs f1, 0(r4)
/* 800E3220 000E0180  C0 44 00 04 */	lfs f2, 4(r4)
/* 800E3224 000E0184  48 23 0F DD */	bl __ct__9CVector2fFff
/* 800E3228 000E0188  38 61 00 20 */	addi r3, r1, 0x20
/* 800E322C 000E018C  38 81 00 38 */	addi r4, r1, 0x38
/* 800E3230 000E0190  38 A1 00 18 */	addi r5, r1, 0x18
/* 800E3234 000E0194  48 23 0D 05 */	bl __mi__FRC9CVector2fRC9CVector2f
/* 800E3238 000E0198  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800E323C 000E019C  38 61 00 30 */	addi r3, r1, 0x30
/* 800E3240 000E01A0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800E3244 000E01A4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800E3248 000E01A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800E324C 000E01AC  48 23 0E 91 */	bl MagSquared__9CVector2fCFv
/* 800E3250 000E01B0  FF E0 08 90 */	fmr f31, f1
/* 800E3254 000E01B4  C0 02 8F DC */	lfs f0, lbl_805AACFC@sda21(r2)
/* 800E3258 000E01B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800E325C 000E01BC  40 80 00 68 */	bge lbl_800E32C4
/* 800E3260 000E01C0  3B A0 00 00 */	li r29, 0
/* 800E3264 000E01C4  48 00 00 54 */	b lbl_800E32B8
lbl_800E3268:
/* 800E3268 000E01C8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 800E326C 000E01CC  38 61 00 08 */	addi r3, r1, 8
/* 800E3270 000E01D0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 800E3274 000E01D4  48 23 0F 8D */	bl __ct__9CVector2fFff
/* 800E3278 000E01D8  38 61 00 10 */	addi r3, r1, 0x10
/* 800E327C 000E01DC  38 81 00 38 */	addi r4, r1, 0x38
/* 800E3280 000E01E0  38 A1 00 08 */	addi r5, r1, 8
/* 800E3284 000E01E4  48 23 0C B5 */	bl __mi__FRC9CVector2fRC9CVector2f
/* 800E3288 000E01E8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800E328C 000E01EC  38 61 00 30 */	addi r3, r1, 0x30
/* 800E3290 000E01F0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800E3294 000E01F4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800E3298 000E01F8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800E329C 000E01FC  48 23 0E 41 */	bl MagSquared__9CVector2fCFv
/* 800E32A0 000E0200  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 800E32A4 000E0204  40 81 00 0C */	ble lbl_800E32B0
/* 800E32A8 000E0208  FF E0 08 90 */	fmr f31, f1
/* 800E32AC 000E020C  7F BE EB 78 */	mr r30, r29
lbl_800E32B0:
/* 800E32B0 000E0210  3B FF 00 0C */	addi r31, r31, 0xc
/* 800E32B4 000E0214  3B BD 00 01 */	addi r29, r29, 1
lbl_800E32B8:
/* 800E32B8 000E0218  80 1C 06 E0 */	lwz r0, 0x6e0(r28)
/* 800E32BC 000E021C  7C 1D 00 00 */	cmpw r29, r0
/* 800E32C0 000E0220  41 80 FF A8 */	blt lbl_800E3268
lbl_800E32C4:
/* 800E32C4 000E0224  7F C3 F3 78 */	mr r3, r30
/* 800E32C8 000E0228  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 800E32CC 000E022C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800E32D0 000E0230  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800E32D4 000E0234  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800E32D8 000E0238  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800E32DC 000E023C  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800E32E0 000E0240  83 81 00 50 */	lwz r28, 0x50(r1)
/* 800E32E4 000E0244  7C 08 03 A6 */	mtlr r0
/* 800E32E8 000E0248  38 21 00 70 */	addi r1, r1, 0x70
/* 800E32EC 000E024C  4E 80 00 20 */	blr

.global SetupRetreatPoints__7CBeetleFR13CStateManager
SetupRetreatPoints__7CBeetleFR13CStateManager:
/* 800E32F0 000E0250  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E32F4 000E0254  7C 08 02 A6 */	mflr r0
/* 800E32F8 000E0258  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E32FC 000E025C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E3300 000E0260  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800E3304 000E0264  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800E3308 000E0268  7C 9D 23 78 */	mr r29, r4
/* 800E330C 000E026C  93 81 00 20 */	stw r28, 0x20(r1)
/* 800E3310 000E0270  7C 7C 1B 78 */	mr r28, r3
/* 800E3314 000E0274  3B DC 06 E4 */	addi r30, r28, 0x6e4
/* 800E3318 000E0278  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 800E331C 000E027C  48 00 00 A8 */	b lbl_800E33C4
lbl_800E3320:
/* 800E3320 000E0280  80 1F 00 00 */	lwz r0, 0(r31)
/* 800E3324 000E0284  2C 00 00 0C */	cmpwi r0, 0xc
/* 800E3328 000E0288  40 82 00 98 */	bne lbl_800E33C0
/* 800E332C 000E028C  80 1F 00 04 */	lwz r0, 4(r31)
/* 800E3330 000E0290  2C 00 00 06 */	cmpwi r0, 6
/* 800E3334 000E0294  40 82 00 8C */	bne lbl_800E33C0
/* 800E3338 000E0298  80 1F 00 08 */	lwz r0, 8(r31)
/* 800E333C 000E029C  7F A4 EB 78 */	mr r4, r29
/* 800E3340 000E02A0  38 61 00 0C */	addi r3, r1, 0xc
/* 800E3344 000E02A4  38 A1 00 14 */	addi r5, r1, 0x14
/* 800E3348 000E02A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E334C 000E02AC  4B F6 4B D1 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 800E3350 000E02B0  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 800E3354 000E02B4  7F A3 EB 78 */	mr r3, r29
/* 800E3358 000E02B8  38 81 00 08 */	addi r4, r1, 8
/* 800E335C 000E02BC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E3360 000E02C0  B0 01 00 08 */	sth r0, 8(r1)
/* 800E3364 000E02C4  4B F6 92 41 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 800E3368 000E02C8  7C 64 1B 78 */	mr r4, r3
/* 800E336C 000E02CC  38 61 00 18 */	addi r3, r1, 0x18
/* 800E3370 000E02D0  4B FC 31 DD */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 800E3374 000E02D4  80 63 00 04 */	lwz r3, 4(r3)
/* 800E3378 000E02D8  28 03 00 00 */	cmplwi r3, 0
/* 800E337C 000E02DC  41 82 00 44 */	beq lbl_800E33C0
/* 800E3380 000E02E0  80 1C 06 E0 */	lwz r0, 0x6e0(r28)
/* 800E3384 000E02E4  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 800E3388 000E02E8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800E338C 000E02EC  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 800E3390 000E02F0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800E3394 000E02F4  7C 7E 02 15 */	add. r3, r30, r0
/* 800E3398 000E02F8  41 82 00 10 */	beq lbl_800E33A8
/* 800E339C 000E02FC  D0 03 00 00 */	stfs f0, 0(r3)
/* 800E33A0 000E0300  D0 23 00 04 */	stfs f1, 4(r3)
/* 800E33A4 000E0304  D0 43 00 08 */	stfs f2, 8(r3)
lbl_800E33A8:
/* 800E33A8 000E0308  80 7C 06 E0 */	lwz r3, 0x6e0(r28)
/* 800E33AC 000E030C  38 03 00 01 */	addi r0, r3, 1
/* 800E33B0 000E0310  90 1C 06 E0 */	stw r0, 0x6e0(r28)
/* 800E33B4 000E0314  80 1C 06 E0 */	lwz r0, 0x6e0(r28)
/* 800E33B8 000E0318  2C 00 00 08 */	cmpwi r0, 8
/* 800E33BC 000E031C  41 82 00 20 */	beq lbl_800E33DC
lbl_800E33C0:
/* 800E33C0 000E0320  3B FF 00 0C */	addi r31, r31, 0xc
lbl_800E33C4:
/* 800E33C4 000E0324  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 800E33C8 000E0328  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 800E33CC 000E032C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800E33D0 000E0330  7C 03 02 14 */	add r0, r3, r0
/* 800E33D4 000E0334  7C 1F 00 40 */	cmplw r31, r0
/* 800E33D8 000E0338  40 82 FF 48 */	bne lbl_800E3320
lbl_800E33DC:
/* 800E33DC 000E033C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E33E0 000E0340  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E33E4 000E0344  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800E33E8 000E0348  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800E33EC 000E034C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800E33F0 000E0350  7C 08 03 A6 */	mtlr r0
/* 800E33F4 000E0354  38 21 00 30 */	addi r1, r1, 0x30
/* 800E33F8 000E0358  4E 80 00 20 */	blr

.global SeparateFromMelees__7CBeetleFR13CStateManager
SeparateFromMelees__7CBeetleFR13CStateManager:
/* 800E33FC 000E035C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800E3400 000E0360  7C 08 02 A6 */	mflr r0
/* 800E3404 000E0364  90 01 00 84 */	stw r0, 0x84(r1)
/* 800E3408 000E0368  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800E340C 000E036C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 800E3410 000E0370  BF 41 00 58 */	stmw r26, 0x58(r1)
/* 800E3414 000E0374  7C 9C 23 78 */	mr r28, r4
/* 800E3418 000E0378  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 800E341C 000E037C  83 DC 08 38 */	lwz r30, 0x838(r28)
/* 800E3420 000E0380  7C 7B 1B 78 */	mr r27, r3
/* 800E3424 000E0384  3B E4 66 A0 */	addi r31, r4, sZeroVector__9CVector3f@l
/* 800E3428 000E0388  AB BE 20 08 */	lha r29, 0x2008(r30)
/* 800E342C 000E038C  48 00 01 48 */	b lbl_800E3574
lbl_800E3430:
/* 800E3430 000E0390  7F C3 F3 78 */	mr r3, r30
/* 800E3434 000E0394  7F A4 EB 78 */	mr r4, r29
/* 800E3438 000E0398  4B F2 C8 A5 */	bl __vc__11CObjectListCFi
/* 800E343C 000E039C  7C 64 1B 78 */	mr r4, r3
/* 800E3440 000E03A0  38 61 00 14 */	addi r3, r1, 0x14
/* 800E3444 000E03A4  4B FC 96 19 */	bl "__ct__24TCastToPtr<10CPatterned>FP7CEntity"
/* 800E3448 000E03A8  83 43 00 04 */	lwz r26, 4(r3)
/* 800E344C 000E03AC  28 1A 00 00 */	cmplwi r26, 0
/* 800E3450 000E03B0  41 82 01 08 */	beq lbl_800E3558
/* 800E3454 000E03B4  7C 1A D8 40 */	cmplw r26, r27
/* 800E3458 000E03B8  41 82 01 00 */	beq lbl_800E3558
/* 800E345C 000E03BC  80 7A 00 04 */	lwz r3, 4(r26)
/* 800E3460 000E03C0  80 1B 00 04 */	lwz r0, 4(r27)
/* 800E3464 000E03C4  7C 03 00 00 */	cmpw r3, r0
/* 800E3468 000E03C8  40 82 00 F0 */	bne lbl_800E3558
/* 800E346C 000E03CC  A0 DA 00 08 */	lhz r6, 8(r26)
/* 800E3470 000E03D0  7F 83 E3 78 */	mr r3, r28
/* 800E3474 000E03D4  C3 E2 8F CC */	lfs f31, lbl_805AACEC@sda21(r2)
/* 800E3478 000E03D8  38 81 00 10 */	addi r4, r1, 0x10
/* 800E347C 000E03DC  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 800E3480 000E03E0  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E3484 000E03E4  A0 1B 05 70 */	lhz r0, 0x570(r27)
/* 800E3488 000E03E8  B0 C1 00 08 */	sth r6, 8(r1)
/* 800E348C 000E03EC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E3490 000E03F0  48 15 6C F1 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 800E3494 000E03F4  28 03 00 00 */	cmplwi r3, 0
/* 800E3498 000E03F8  41 82 00 18 */	beq lbl_800E34B0
/* 800E349C 000E03FC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800E34A0 000E0400  2C 00 00 01 */	cmpwi r0, 1
/* 800E34A4 000E0404  40 82 00 0C */	bne lbl_800E34B0
/* 800E34A8 000E0408  C0 02 8F E0 */	lfs f0, lbl_805AAD00@sda21(r2)
/* 800E34AC 000E040C  EF FF 00 32 */	fmuls f31, f31, f0
lbl_800E34B0:
/* 800E34B0 000E0410  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 800E34B4 000E0414  FC 20 F8 90 */	fmr f1, f31
/* 800E34B8 000E0418  C0 5A 00 50 */	lfs f2, 0x50(r26)
/* 800E34BC 000E041C  7F 65 DB 78 */	mr r5, r27
/* 800E34C0 000E0420  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 800E34C4 000E0424  38 61 00 28 */	addi r3, r1, 0x28
/* 800E34C8 000E0428  38 9B 04 5C */	addi r4, r27, 0x45c
/* 800E34CC 000E042C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800E34D0 000E0430  38 C1 00 1C */	addi r6, r1, 0x1c
/* 800E34D4 000E0434  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800E34D8 000E0438  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 800E34DC 000E043C  48 05 B4 15 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 800E34E0 000E0440  C0 C1 00 28 */	lfs f6, 0x28(r1)
/* 800E34E4 000E0444  38 00 00 00 */	li r0, 0
/* 800E34E8 000E0448  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E34EC 000E044C  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 800E34F0 000E0450  FC 00 30 00 */	fcmpu cr0, f0, f6
/* 800E34F4 000E0454  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 800E34F8 000E0458  40 82 00 14 */	bne lbl_800E350C
/* 800E34FC 000E045C  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 800E3500 000E0460  40 82 00 0C */	bne lbl_800E350C
/* 800E3504 000E0464  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 800E3508 000E0468  41 82 00 08 */	beq lbl_800E3510
lbl_800E350C:
/* 800E350C 000E046C  38 00 00 01 */	li r0, 1
lbl_800E3510:
/* 800E3510 000E0470  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800E3514 000E0474  41 82 00 44 */	beq lbl_800E3558
/* 800E3518 000E0478  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E351C 000E047C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 800E3520 000E0480  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800E3524 000E0484  38 81 00 34 */	addi r4, r1, 0x34
/* 800E3528 000E0488  C0 63 66 A0 */	lfs f3, sZeroVector__9CVector3f@l(r3)
/* 800E352C 000E048C  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E3530 000E0490  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 800E3534 000E0494  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 800E3538 000E0498  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 800E353C 000E049C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 800E3540 000E04A0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800E3544 000E04A4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 800E3548 000E04A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800E354C 000E04AC  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 800E3550 000E04B0  38 63 00 04 */	addi r3, r3, 4
/* 800E3554 000E04B4  48 04 E1 C5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_800E3558:
/* 800E3558 000E04B8  2C 1D FF FF */	cmpwi r29, -1
/* 800E355C 000E04BC  41 82 00 14 */	beq lbl_800E3570
/* 800E3560 000E04C0  57 A3 18 38 */	slwi r3, r29, 3
/* 800E3564 000E04C4  38 03 00 08 */	addi r0, r3, 8
/* 800E3568 000E04C8  7F BE 02 AE */	lhax r29, r30, r0
/* 800E356C 000E04CC  48 00 00 08 */	b lbl_800E3574
lbl_800E3570:
/* 800E3570 000E04D0  3B A0 FF FF */	li r29, -1
lbl_800E3574:
/* 800E3574 000E04D4  2C 1D FF FF */	cmpwi r29, -1
/* 800E3578 000E04D8  40 82 FE B8 */	bne lbl_800E3430
/* 800E357C 000E04DC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 800E3580 000E04E0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800E3584 000E04E4  BB 41 00 58 */	lmw r26, 0x58(r1)
/* 800E3588 000E04E8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800E358C 000E04EC  7C 08 03 A6 */	mtlr r0
/* 800E3590 000E04F0  38 21 00 80 */	addi r1, r1, 0x80
/* 800E3594 000E04F4  4E 80 00 20 */	blr

.global GetOrigin__7CBeetleCFv
GetOrigin__7CBeetleCFv:
/* 800E3598 000E04F8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800E359C 000E04FC  7C 08 02 A6 */	mflr r0
/* 800E35A0 000E0500  90 01 00 84 */	stw r0, 0x84(r1)
/* 800E35A4 000E0504  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800E35A8 000E0508  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 800E35AC 000E050C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800E35B0 000E0510  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800E35B4 000E0514  93 A1 00 64 */	stw r29, 0x64(r1)
/* 800E35B8 000E0518  7C 9E 23 78 */	mr r30, r4
/* 800E35BC 000E051C  7C FF 3B 78 */	mr r31, r7
/* 800E35C0 000E0520  C0 64 02 FC */	lfs f3, 0x2fc(r4)
/* 800E35C4 000E0524  7C 7D 1B 78 */	mr r29, r3
/* 800E35C8 000E0528  C0 44 03 00 */	lfs f2, 0x300(r4)
/* 800E35CC 000E052C  38 61 00 50 */	addi r3, r1, 0x50
/* 800E35D0 000E0530  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 800E35D4 000E0534  C0 07 00 04 */	lfs f0, 4(r7)
/* 800E35D8 000E0538  EC 83 10 2A */	fadds f4, f3, f2
/* 800E35DC 000E053C  C0 A2 8F D0 */	lfs f5, lbl_805AACF0@sda21(r2)
/* 800E35E0 000E0540  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 800E35E4 000E0544  EC C1 00 28 */	fsubs f6, f1, f0
/* 800E35E8 000E0548  C0 47 00 08 */	lfs f2, 8(r7)
/* 800E35EC 000E054C  EF E5 01 32 */	fmuls f31, f5, f4
/* 800E35F0 000E0550  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 800E35F4 000E0554  C0 07 00 00 */	lfs f0, 0(r7)
/* 800E35F8 000E0558  EC 43 10 28 */	fsubs f2, f3, f2
/* 800E35FC 000E055C  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 800E3600 000E0560  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E3604 000E0564  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 800E3608 000E0568  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800E360C 000E056C  48 23 10 ED */	bl CanBeNormalized__9CVector3fCFv
/* 800E3610 000E0570  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E3614 000E0574  41 82 00 60 */	beq lbl_800E3674
/* 800E3618 000E0578  38 61 00 44 */	addi r3, r1, 0x44
/* 800E361C 000E057C  38 81 00 50 */	addi r4, r1, 0x50
/* 800E3620 000E0580  48 23 12 31 */	bl AsNormalized__9CVector3fCFv
/* 800E3624 000E0584  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 800E3628 000E0588  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E362C 000E058C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 800E3630 000E0590  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800E3634 000E0594  EC BF 00 B2 */	fmuls f5, f31, f2
/* 800E3638 000E0598  EC 9F 00 72 */	fmuls f4, f31, f1
/* 800E363C 000E059C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800E3640 000E05A0  EC 7F 00 32 */	fmuls f3, f31, f0
/* 800E3644 000E05A4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 800E3648 000E05A8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800E364C 000E05AC  EC 21 28 2A */	fadds f1, f1, f5
/* 800E3650 000E05B0  EC 42 18 2A */	fadds f2, f2, f3
/* 800E3654 000E05B4  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 800E3658 000E05B8  EC 00 20 2A */	fadds f0, f0, f4
/* 800E365C 000E05BC  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 800E3660 000E05C0  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 800E3664 000E05C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800E3668 000E05C8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 800E366C 000E05CC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 800E3670 000E05D0  48 00 00 5C */	b lbl_800E36CC
lbl_800E3674:
/* 800E3674 000E05D4  C1 1E 00 58 */	lfs f8, 0x58(r30)
/* 800E3678 000E05D8  38 61 00 08 */	addi r3, r1, 8
/* 800E367C 000E05DC  C0 FE 00 48 */	lfs f7, 0x48(r30)
/* 800E3680 000E05E0  C0 9E 00 38 */	lfs f4, 0x38(r30)
/* 800E3684 000E05E4  EC BF 02 32 */	fmuls f5, f31, f8
/* 800E3688 000E05E8  EC DF 01 F2 */	fmuls f6, f31, f7
/* 800E368C 000E05EC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 800E3690 000E05F0  EC 7F 01 32 */	fmuls f3, f31, f4
/* 800E3694 000E05F4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800E3698 000E05F8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800E369C 000E05FC  EC 42 30 2A */	fadds f2, f2, f6
/* 800E36A0 000E0600  EC 21 28 2A */	fadds f1, f1, f5
/* 800E36A4 000E0604  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 800E36A8 000E0608  EC 00 18 2A */	fadds f0, f0, f3
/* 800E36AC 000E060C  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 800E36B0 000E0610  D1 01 00 28 */	stfs f8, 0x28(r1)
/* 800E36B4 000E0614  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 800E36B8 000E0618  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 800E36BC 000E061C  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 800E36C0 000E0620  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E36C4 000E0624  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800E36C8 000E0628  D0 21 00 10 */	stfs f1, 0x10(r1)
lbl_800E36CC:
/* 800E36CC 000E062C  C0 23 00 04 */	lfs f1, 4(r3)
/* 800E36D0 000E0630  C0 43 00 08 */	lfs f2, 8(r3)
/* 800E36D4 000E0634  C0 03 00 00 */	lfs f0, 0(r3)
/* 800E36D8 000E0638  D0 1D 00 00 */	stfs f0, 0(r29)
/* 800E36DC 000E063C  D0 3D 00 04 */	stfs f1, 4(r29)
/* 800E36E0 000E0640  D0 5D 00 08 */	stfs f2, 8(r29)
/* 800E36E4 000E0644  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 800E36E8 000E0648  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800E36EC 000E064C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800E36F0 000E0650  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800E36F4 000E0654  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800E36F8 000E0658  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 800E36FC 000E065C  7C 08 03 A6 */	mtlr r0
/* 800E3700 000E0660  38 21 00 80 */	addi r1, r1, 0x80
/* 800E3704 000E0664  4E 80 00 20 */	blr

.global SquadRemove__7CBeetleFR13CStateManager
SquadRemove__7CBeetleFR13CStateManager:
/* 800E3708 000E0668  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E370C 000E066C  7C 08 02 A6 */	mflr r0
/* 800E3710 000E0670  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E3714 000E0674  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E3718 000E0678  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800E371C 000E067C  7C 7E 1B 78 */	mr r30, r3
/* 800E3720 000E0680  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800E3724 000E0684  A0 63 05 70 */	lhz r3, 0x570(r3)
/* 800E3728 000E0688  7C 03 00 40 */	cmplw r3, r0
/* 800E372C 000E068C  41 82 00 68 */	beq lbl_800E3794
/* 800E3730 000E0690  A0 1E 05 70 */	lhz r0, 0x570(r30)
/* 800E3734 000E0694  7C 83 23 78 */	mr r3, r4
/* 800E3738 000E0698  38 81 00 18 */	addi r4, r1, 0x18
/* 800E373C 000E069C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 800E3740 000E06A0  4B F6 8E 35 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800E3744 000E06A4  7C 64 1B 78 */	mr r4, r3
/* 800E3748 000E06A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 800E374C 000E06AC  4B FC 3E 29 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 800E3750 000E06B0  83 E3 00 04 */	lwz r31, 4(r3)
/* 800E3754 000E06B4  28 1F 00 00 */	cmplwi r31, 0
/* 800E3758 000E06B8  41 82 00 3C */	beq lbl_800E3794
/* 800E375C 000E06BC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 800E3760 000E06C0  7F E3 FB 78 */	mr r3, r31
/* 800E3764 000E06C4  38 81 00 14 */	addi r4, r1, 0x14
/* 800E3768 000E06C8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E376C 000E06CC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 800E3770 000E06D0  48 15 58 81 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 800E3774 000E06D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E3778 000E06D8  41 82 00 1C */	beq lbl_800E3794
/* 800E377C 000E06DC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 800E3780 000E06E0  7F E3 FB 78 */	mr r3, r31
/* 800E3784 000E06E4  38 81 00 0C */	addi r4, r1, 0xc
/* 800E3788 000E06E8  B0 01 00 08 */	sth r0, 8(r1)
/* 800E378C 000E06EC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800E3790 000E06F0  48 15 5D 65 */	bl RemoveTeamAiRole__10CTeamAiMgrF9TUniqueId
lbl_800E3794:
/* 800E3794 000E06F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E3798 000E06F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E379C 000E06FC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800E37A0 000E0700  7C 08 03 A6 */	mtlr r0
/* 800E37A4 000E0704  38 21 00 30 */	addi r1, r1, 0x30
/* 800E37A8 000E0708  4E 80 00 20 */	blr

.global SquadAdd__7CBeetleFR13CStateManager
SquadAdd__7CBeetleFR13CStateManager:
/* 800E37AC 000E070C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E37B0 000E0710  7C 08 02 A6 */	mflr r0
/* 800E37B4 000E0714  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E37B8 000E0718  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E37BC 000E071C  7C 7F 1B 78 */	mr r31, r3
/* 800E37C0 000E0720  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800E37C4 000E0724  A0 63 05 70 */	lhz r3, 0x570(r3)
/* 800E37C8 000E0728  7C 03 00 40 */	cmplw r3, r0
/* 800E37CC 000E072C  41 82 00 44 */	beq lbl_800E3810
/* 800E37D0 000E0730  A0 1F 05 70 */	lhz r0, 0x570(r31)
/* 800E37D4 000E0734  7C 83 23 78 */	mr r3, r4
/* 800E37D8 000E0738  38 81 00 08 */	addi r4, r1, 8
/* 800E37DC 000E073C  B0 01 00 08 */	sth r0, 8(r1)
/* 800E37E0 000E0740  4B F6 8D 95 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800E37E4 000E0744  7C 64 1B 78 */	mr r4, r3
/* 800E37E8 000E0748  38 61 00 0C */	addi r3, r1, 0xc
/* 800E37EC 000E074C  4B FC 3D 89 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 800E37F0 000E0750  80 63 00 04 */	lwz r3, 4(r3)
/* 800E37F4 000E0754  28 03 00 00 */	cmplwi r3, 0
/* 800E37F8 000E0758  41 82 00 18 */	beq lbl_800E3810
/* 800E37FC 000E075C  7F E4 FB 78 */	mr r4, r31
/* 800E3800 000E0760  38 A0 00 01 */	li r5, 1
/* 800E3804 000E0764  38 C0 00 03 */	li r6, 3
/* 800E3808 000E0768  38 E0 FF FF */	li r7, -1
/* 800E380C 000E076C  48 15 5F A1 */	bl AssignTeamAiRole__10CTeamAiMgrFRC3CAiiii
lbl_800E3810:
/* 800E3810 000E0770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E3814 000E0774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E3818 000E0778  7C 08 03 A6 */	mtlr r0
/* 800E381C 000E077C  38 21 00 20 */	addi r1, r1, 0x20
/* 800E3820 000E0780  4E 80 00 20 */	blr

.global Death__7CBeetleFRC9CVector3fR13CStateManager
Death__7CBeetleFRC9CVector3fR13CStateManager:
/* 800E3824 000E0784  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800E3828 000E0788  7C 08 02 A6 */	mflr r0
/* 800E382C 000E078C  90 01 00 94 */	stw r0, 0x94(r1)
/* 800E3830 000E0790  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800E3834 000E0794  7C BF 2B 78 */	mr r31, r5
/* 800E3838 000E0798  93 C1 00 88 */	stw r30, 0x88(r1)
/* 800E383C 000E079C  7C 9E 23 78 */	mr r30, r4
/* 800E3840 000E07A0  93 A1 00 84 */	stw r29, 0x84(r1)
/* 800E3844 000E07A4  7C 7D 1B 78 */	mr r29, r3
/* 800E3848 000E07A8  88 03 04 00 */	lbz r0, 0x400(r3)
/* 800E384C 000E07AC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E3850 000E07B0  41 82 00 D8 */	beq lbl_800E3928
/* 800E3854 000E07B4  80 1D 03 FC */	lwz r0, 0x3fc(r29)
/* 800E3858 000E07B8  2C 00 00 01 */	cmpwi r0, 1
/* 800E385C 000E07BC  40 82 00 C8 */	bne lbl_800E3924
/* 800E3860 000E07C0  38 61 00 48 */	addi r3, r1, 0x48
/* 800E3864 000E07C4  38 9D 00 34 */	addi r4, r29, 0x34
/* 800E3868 000E07C8  48 22 F3 0D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800E386C 000E07CC  80 82 8F C8 */	lwz r4, lbl_805AACE8@sda21(r2)
/* 800E3870 000E07D0  38 61 00 08 */	addi r3, r1, 8
/* 800E3874 000E07D4  4B F2 14 45 */	bl string_l__4rstlFPCc
/* 800E3878 000E07D8  7F A4 EB 78 */	mr r4, r29
/* 800E387C 000E07DC  38 61 00 18 */	addi r3, r1, 0x18
/* 800E3880 000E07E0  38 A1 00 08 */	addi r5, r1, 8
/* 800E3884 000E07E4  4B F9 50 F5 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800E3888 000E07E8  38 7D 00 34 */	addi r3, r29, 0x34
/* 800E388C 000E07EC  38 81 00 18 */	addi r4, r1, 0x18
/* 800E3890 000E07F0  48 22 F2 B1 */	bl __as__12CTransform4fFRC12CTransform4f
/* 800E3894 000E07F4  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 800E3898 000E07F8  38 80 00 01 */	li r4, 1
/* 800E389C 000E07FC  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 800E38A0 000E0800  38 61 00 08 */	addi r3, r1, 8
/* 800E38A4 000E0804  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 800E38A8 000E0808  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 800E38AC 000E080C  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 800E38B0 000E0810  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 800E38B4 000E0814  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 800E38B8 000E0818  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 800E38BC 000E081C  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 800E38C0 000E0820  48 25 A2 21 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800E38C4 000E0824  7F A3 EB 78 */	mr r3, r29
/* 800E38C8 000E0828  7F C5 F3 78 */	mr r5, r30
/* 800E38CC 000E082C  38 80 00 14 */	li r4, 0x14
/* 800E38D0 000E0830  38 C0 FF FF */	li r6, -1
/* 800E38D4 000E0834  4B F6 D7 ED */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 800E38D8 000E0838  38 7D 00 34 */	addi r3, r29, 0x34
/* 800E38DC 000E083C  38 81 00 48 */	addi r4, r1, 0x48
/* 800E38E0 000E0840  48 22 F2 61 */	bl __as__12CTransform4fFRC12CTransform4f
/* 800E38E4 000E0844  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 800E38E8 000E0848  38 E0 00 01 */	li r7, 1
/* 800E38EC 000E084C  50 E0 26 F6 */	rlwimi r0, r7, 4, 0x1b, 0x1b
/* 800E38F0 000E0850  7F A3 EB 78 */	mr r3, r29
/* 800E38F4 000E0854  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 800E38F8 000E0858  7F C4 F3 78 */	mr r4, r30
/* 800E38FC 000E085C  7F E5 FB 78 */	mr r5, r31
/* 800E3900 000E0860  38 C0 FF FF */	li r6, -1
/* 800E3904 000E0864  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 800E3908 000E0868  50 E0 1F 38 */	rlwimi r0, r7, 3, 0x1c, 0x1c
/* 800E390C 000E086C  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 800E3910 000E0870  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 800E3914 000E0874  50 E0 17 7A */	rlwimi r0, r7, 2, 0x1d, 0x1d
/* 800E3918 000E0878  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 800E391C 000E087C  4B F9 7A 89 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 800E3920 000E0880  48 00 00 08 */	b lbl_800E3928
lbl_800E3924:
/* 800E3924 000E0884  4B F9 7A 81 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
lbl_800E3928:
/* 800E3928 000E0888  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800E392C 000E088C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800E3930 000E0890  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 800E3934 000E0894  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 800E3938 000E0898  7C 08 03 A6 */	mtlr r0
/* 800E393C 000E089C  38 21 00 90 */	addi r1, r1, 0x90
/* 800E3940 000E08A0  4E 80 00 20 */	blr

.global Render__7CBeetleCFRC13CStateManager
Render__7CBeetleCFRC13CStateManager:
/* 800E3944 000E08A4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800E3948 000E08A8  7C 08 02 A6 */	mflr r0
/* 800E394C 000E08AC  90 01 00 94 */	stw r0, 0x94(r1)
/* 800E3950 000E08B0  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800E3954 000E08B4  7C 9F 23 78 */	mr r31, r4
/* 800E3958 000E08B8  93 C1 00 88 */	stw r30, 0x88(r1)
/* 800E395C 000E08BC  7C 7E 1B 78 */	mr r30, r3
/* 800E3960 000E08C0  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 800E3964 000E08C4  2C 00 00 01 */	cmpwi r0, 1
/* 800E3968 000E08C8  40 82 00 F8 */	bne lbl_800E3A60
/* 800E396C 000E08CC  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 800E3970 000E08D0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E3974 000E08D4  41 82 00 EC */	beq lbl_800E3A60
/* 800E3978 000E08D8  80 82 8F C8 */	lwz r4, lbl_805AACE8@sda21(r2)
/* 800E397C 000E08DC  38 61 00 18 */	addi r3, r1, 0x18
/* 800E3980 000E08E0  4B F2 13 39 */	bl string_l__4rstlFPCc
/* 800E3984 000E08E4  7F C4 F3 78 */	mr r4, r30
/* 800E3988 000E08E8  38 61 00 28 */	addi r3, r1, 0x28
/* 800E398C 000E08EC  38 A1 00 18 */	addi r5, r1, 0x18
/* 800E3990 000E08F0  4B F9 4F E9 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800E3994 000E08F4  38 61 00 58 */	addi r3, r1, 0x58
/* 800E3998 000E08F8  38 81 00 28 */	addi r4, r1, 0x28
/* 800E399C 000E08FC  48 22 F1 D9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800E39A0 000E0900  38 61 00 18 */	addi r3, r1, 0x18
/* 800E39A4 000E0904  48 25 A1 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800E39A8 000E0908  C0 3E 04 28 */	lfs f1, 0x428(r30)
/* 800E39AC 000E090C  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E39B0 000E0910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E39B4 000E0914  4C 41 13 82 */	cror 2, 1, 2
/* 800E39B8 000E0918  40 82 00 58 */	bne lbl_800E3A10
/* 800E39BC 000E091C  88 1E 04 2F */	lbz r0, 0x42f(r30)
/* 800E39C0 000E0920  28 00 00 FF */	cmplwi r0, 0xff
/* 800E39C4 000E0924  40 82 00 4C */	bne lbl_800E3A10
/* 800E39C8 000E0928  88 1E 05 F8 */	lbz r0, 0x5f8(r30)
/* 800E39CC 000E092C  28 00 00 00 */	cmplwi r0, 0
/* 800E39D0 000E0930  41 82 00 90 */	beq lbl_800E3A60
/* 800E39D4 000E0934  80 1E 04 2C */	lwz r0, 0x42c(r30)
/* 800E39D8 000E0938  38 60 00 02 */	li r3, 2
/* 800E39DC 000E093C  38 A0 00 00 */	li r5, 0
/* 800E39E0 000E0940  39 00 00 03 */	li r8, 3
/* 800E39E4 000E0944  98 61 00 10 */	stb r3, 0x10(r1)
/* 800E39E8 000E0948  7F E4 FB 78 */	mr r4, r31
/* 800E39EC 000E094C  80 DE 00 90 */	lwz r6, 0x90(r30)
/* 800E39F0 000E0950  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 800E39F4 000E0954  98 A1 00 11 */	stb r5, 0x11(r1)
/* 800E39F8 000E0958  38 A1 00 58 */	addi r5, r1, 0x58
/* 800E39FC 000E095C  38 E1 00 10 */	addi r7, r1, 0x10
/* 800E3A00 000E0960  B1 01 00 12 */	sth r8, 0x12(r1)
/* 800E3A04 000E0964  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E3A08 000E0968  48 03 13 B5 */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
/* 800E3A0C 000E096C  48 00 00 54 */	b lbl_800E3A60
lbl_800E3A10:
/* 800E3A10 000E0970  88 1E 05 F8 */	lbz r0, 0x5f8(r30)
/* 800E3A14 000E0974  28 00 00 00 */	cmplwi r0, 0
/* 800E3A18 000E0978  41 82 00 48 */	beq lbl_800E3A60
/* 800E3A1C 000E097C  C0 22 8F E8 */	lfs f1, lbl_805AAD08@sda21(r2)
/* 800E3A20 000E0980  38 80 00 00 */	li r4, 0
/* 800E3A24 000E0984  38 00 00 03 */	li r0, 3
/* 800E3A28 000E0988  98 81 00 08 */	stb r4, 8(r1)
/* 800E3A2C 000E098C  FC 40 08 90 */	fmr f2, f1
/* 800E3A30 000E0990  38 61 00 0C */	addi r3, r1, 0xc
/* 800E3A34 000E0994  FC 60 08 90 */	fmr f3, f1
/* 800E3A38 000E0998  98 81 00 09 */	stb r4, 9(r1)
/* 800E3A3C 000E099C  FC 80 08 90 */	fmr f4, f1
/* 800E3A40 000E09A0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 800E3A44 000E09A4  48 27 F9 A9 */	bl __ct__6CColorFffff
/* 800E3A48 000E09A8  80 DE 00 90 */	lwz r6, 0x90(r30)
/* 800E3A4C 000E09AC  7F E4 FB 78 */	mr r4, r31
/* 800E3A50 000E09B0  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 800E3A54 000E09B4  38 A1 00 58 */	addi r5, r1, 0x58
/* 800E3A58 000E09B8  38 E1 00 08 */	addi r7, r1, 8
/* 800E3A5C 000E09BC  48 03 13 61 */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
lbl_800E3A60:
/* 800E3A60 000E09C0  7F C3 F3 78 */	mr r3, r30
/* 800E3A64 000E09C4  7F E4 FB 78 */	mr r4, r31
/* 800E3A68 000E09C8  4B F9 45 C5 */	bl Render__10CPatternedCFRC13CStateManager
/* 800E3A6C 000E09CC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800E3A70 000E09D0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800E3A74 000E09D4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 800E3A78 000E09D8  7C 08 03 A6 */	mtlr r0
/* 800E3A7C 000E09DC  38 21 00 90 */	addi r1, r1, 0x90
/* 800E3A80 000E09E0  4E 80 00 20 */	blr

.global GetAimPosition__7CBeetleCFRC13CStateManagerf
GetAimPosition__7CBeetleCFRC13CStateManagerf:
/* 800E3A84 000E09E4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 800E3A88 000E09E8  7C 08 02 A6 */	mflr r0
/* 800E3A8C 000E09EC  90 01 01 14 */	stw r0, 0x114(r1)
/* 800E3A90 000E09F0  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 800E3A94 000E09F4  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 800E3A98 000E09F8  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 800E3A9C 000E09FC  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 800E3AA0 000E0A00  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 800E3AA4 000E0A04  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 800E3AA8 000E0A08  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 800E3AAC 000E0A0C  F3 81 00 D8 */	psq_st f28, 216(r1), 0, qr0
/* 800E3AB0 000E0A10  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 800E3AB4 000E0A14  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 800E3AB8 000E0A18  7C 9F 23 78 */	mr r31, r4
/* 800E3ABC 000E0A1C  7C 7E 1B 78 */	mr r30, r3
/* 800E3AC0 000E0A20  80 04 03 FC */	lwz r0, 0x3fc(r4)
/* 800E3AC4 000E0A24  2C 00 00 01 */	cmpwi r0, 1
/* 800E3AC8 000E0A28  41 82 00 0C */	beq lbl_800E3AD4
/* 800E3ACC 000E0A2C  2C 00 00 02 */	cmpwi r0, 2
/* 800E3AD0 000E0A30  40 82 01 80 */	bne lbl_800E3C50
lbl_800E3AD4:
/* 800E3AD4 000E0A34  80 82 8F C4 */	lwz r4, lbl_805AACE4@sda21(r2)
/* 800E3AD8 000E0A38  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E3ADC 000E0A3C  4B F2 11 DD */	bl string_l__4rstlFPCc
/* 800E3AE0 000E0A40  7F E4 FB 78 */	mr r4, r31
/* 800E3AE4 000E0A44  38 61 00 60 */	addi r3, r1, 0x60
/* 800E3AE8 000E0A48  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800E3AEC 000E0A4C  4B F9 4E 8D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800E3AF0 000E0A50  38 61 00 90 */	addi r3, r1, 0x90
/* 800E3AF4 000E0A54  38 81 00 60 */	addi r4, r1, 0x60
/* 800E3AF8 000E0A58  48 22 F0 7D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800E3AFC 000E0A5C  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E3B00 000E0A60  48 25 9F E1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800E3B04 000E0A64  C3 E2 8F EC */	lfs f31, lbl_805AAD0C@sda21(r2)
/* 800E3B08 000E0A68  38 61 00 20 */	addi r3, r1, 0x20
/* 800E3B0C 000E0A6C  C3 9F 00 60 */	lfs f28, 0x60(r31)
/* 800E3B10 000E0A70  38 81 00 90 */	addi r4, r1, 0x90
/* 800E3B14 000E0A74  C3 BF 00 50 */	lfs f29, 0x50(r31)
/* 800E3B18 000E0A78  38 BF 05 74 */	addi r5, r31, 0x574
/* 800E3B1C 000E0A7C  C3 DF 00 40 */	lfs f30, 0x40(r31)
/* 800E3B20 000E0A80  48 22 EF C9 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 800E3B24 000E0A84  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 800E3B28 000E0A88  7F E4 FB 78 */	mr r4, r31
/* 800E3B2C 000E0A8C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800E3B30 000E0A90  38 61 00 48 */	addi r3, r1, 0x48
/* 800E3B34 000E0A94  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800E3B38 000E0A98  EC 42 E0 28 */	fsubs f2, f2, f28
/* 800E3B3C 000E0A9C  EC 21 F0 28 */	fsubs f1, f1, f30
/* 800E3B40 000E0AA0  EC 00 E8 28 */	fsubs f0, f0, f29
/* 800E3B44 000E0AA4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800E3B48 000E0AA8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 800E3B4C 000E0AAC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800E3B50 000E0AB0  48 03 6D DD */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800E3B54 000E0AB4  39 21 00 48 */	addi r9, r1, 0x48
/* 800E3B58 000E0AB8  38 00 00 03 */	li r0, 3
/* 800E3B5C 000E0ABC  7D 26 4B 78 */	mr r6, r9
/* 800E3B60 000E0AC0  38 81 00 3C */	addi r4, r1, 0x3c
/* 800E3B64 000E0AC4  38 A1 00 14 */	addi r5, r1, 0x14
/* 800E3B68 000E0AC8  38 E1 00 08 */	addi r7, r1, 8
/* 800E3B6C 000E0ACC  C0 42 8F E4 */	lfs f2, lbl_805AAD04@sda21(r2)
/* 800E3B70 000E0AD0  39 00 00 00 */	li r8, 0
/* 800E3B74 000E0AD4  7C 09 03 A6 */	mtctr r0
lbl_800E3B78:
/* 800E3B78 000E0AD8  C0 84 00 00 */	lfs f4, 0(r4)
/* 800E3B7C 000E0ADC  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 800E3B80 000E0AE0  40 80 00 3C */	bge lbl_800E3BBC
/* 800E3B84 000E0AE4  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 800E3B88 000E0AE8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 800E3B8C 000E0AEC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800E3B90 000E0AF0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800E3B94 000E0AF4  C0 26 00 00 */	lfs f1, 0(r6)
/* 800E3B98 000E0AF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E3B9C 000E0AFC  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 800E3BA0 000E0B00  C0 05 00 00 */	lfs f0, 0(r5)
/* 800E3BA4 000E0B04  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E3BA8 000E0B08  EC 00 20 24 */	fdivs f0, f0, f4
/* 800E3BAC 000E0B0C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800E3BB0 000E0B10  40 80 00 48 */	bge lbl_800E3BF8
/* 800E3BB4 000E0B14  FF E0 00 90 */	fmr f31, f0
/* 800E3BB8 000E0B18  48 00 00 40 */	b lbl_800E3BF8
lbl_800E3BBC:
/* 800E3BBC 000E0B1C  40 81 00 3C */	ble lbl_800E3BF8
/* 800E3BC0 000E0B20  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 800E3BC4 000E0B24  7C 69 42 14 */	add r3, r9, r8
/* 800E3BC8 000E0B28  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 800E3BCC 000E0B2C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800E3BD0 000E0B30  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800E3BD4 000E0B34  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800E3BD8 000E0B38  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E3BDC 000E0B3C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 800E3BE0 000E0B40  C0 07 00 00 */	lfs f0, 0(r7)
/* 800E3BE4 000E0B44  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E3BE8 000E0B48  EC 00 20 24 */	fdivs f0, f0, f4
/* 800E3BEC 000E0B4C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800E3BF0 000E0B50  40 80 00 08 */	bge lbl_800E3BF8
/* 800E3BF4 000E0B54  FF E0 00 90 */	fmr f31, f0
lbl_800E3BF8:
/* 800E3BF8 000E0B58  38 84 00 04 */	addi r4, r4, 4
/* 800E3BFC 000E0B5C  38 A5 00 04 */	addi r5, r5, 4
/* 800E3C00 000E0B60  38 C6 00 04 */	addi r6, r6, 4
/* 800E3C04 000E0B64  38 E7 00 04 */	addi r7, r7, 4
/* 800E3C08 000E0B68  39 08 00 04 */	addi r8, r8, 4
/* 800E3C0C 000E0B6C  42 00 FF 6C */	bdnz lbl_800E3B78
/* 800E3C10 000E0B70  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800E3C14 000E0B74  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 800E3C18 000E0B78  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800E3C1C 000E0B7C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 800E3C20 000E0B80  EC 9F 00 F2 */	fmuls f4, f31, f3
/* 800E3C24 000E0B84  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 800E3C28 000E0B88  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 800E3C2C 000E0B8C  EC 01 00 2A */	fadds f0, f1, f0
/* 800E3C30 000E0B90  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 800E3C34 000E0B94  EC 3F 00 B2 */	fmuls f1, f31, f2
/* 800E3C38 000E0B98  EC 45 20 2A */	fadds f2, f5, f4
/* 800E3C3C 000E0B9C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800E3C40 000E0BA0  EC 03 08 2A */	fadds f0, f3, f1
/* 800E3C44 000E0BA4  D0 5E 00 04 */	stfs f2, 4(r30)
/* 800E3C48 000E0BA8  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800E3C4C 000E0BAC  48 00 00 08 */	b lbl_800E3C54
lbl_800E3C50:
/* 800E3C50 000E0BB0  48 03 68 B9 */	bl GetAimPosition__13CPhysicsActorCFRC13CStateManagerf
lbl_800E3C54:
/* 800E3C54 000E0BB4  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 800E3C58 000E0BB8  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 800E3C5C 000E0BBC  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 800E3C60 000E0BC0  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 800E3C64 000E0BC4  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 800E3C68 000E0BC8  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 800E3C6C 000E0BCC  E3 81 00 D8 */	psq_l f28, 216(r1), 0, qr0
/* 800E3C70 000E0BD0  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 800E3C74 000E0BD4  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 800E3C78 000E0BD8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 800E3C7C 000E0BDC  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 800E3C80 000E0BE0  7C 08 03 A6 */	mtlr r0
/* 800E3C84 000E0BE4  38 21 01 10 */	addi r1, r1, 0x110
/* 800E3C88 000E0BE8  4E 80 00 20 */	blr

.global TakeDamage__7CBeetleFRC9CVector3ff
TakeDamage__7CBeetleFRC9CVector3ff:
/* 800E3C8C 000E0BEC  C0 02 88 F0 */	lfs f0, lbl_805AA610@sda21(r2)
/* 800E3C90 000E0BF0  D0 03 04 28 */	stfs f0, 0x428(r3)
/* 800E3C94 000E0BF4  4E 80 00 20 */	blr

.global GetCollisionResponseType__7CBeetleCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__7CBeetleCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 800E3C98 000E0BF8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800E3C9C 000E0BFC  7C 08 02 A6 */	mflr r0
/* 800E3CA0 000E0C00  90 01 00 74 */	stw r0, 0x74(r1)
/* 800E3CA4 000E0C04  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 800E3CA8 000E0C08  7C 7B 1B 78 */	mr r27, r3
/* 800E3CAC 000E0C0C  7C 9C 23 78 */	mr r28, r4
/* 800E3CB0 000E0C10  7C BD 2B 78 */	mr r29, r5
/* 800E3CB4 000E0C14  7C DE 33 78 */	mr r30, r6
/* 800E3CB8 000E0C18  3B E0 00 13 */	li r31, 0x13
/* 800E3CBC 000E0C1C  80 63 04 50 */	lwz r3, 0x450(r3)
/* 800E3CC0 000E0C20  88 03 03 00 */	lbz r0, 0x300(r3)
/* 800E3CC4 000E0C24  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 800E3CC8 000E0C28  41 82 00 18 */	beq lbl_800E3CE0
/* 800E3CCC 000E0C2C  80 1E 00 00 */	lwz r0, 0(r30)
/* 800E3CD0 000E0C30  2C 00 00 01 */	cmpwi r0, 1
/* 800E3CD4 000E0C34  40 82 00 0C */	bne lbl_800E3CE0
/* 800E3CD8 000E0C38  3B E0 00 00 */	li r31, 0
/* 800E3CDC 000E0C3C  48 00 00 FC */	b lbl_800E3DD8
lbl_800E3CE0:
/* 800E3CE0 000E0C40  88 1B 08 38 */	lbz r0, 0x838(r27)
/* 800E3CE4 000E0C44  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E3CE8 000E0C48  41 82 00 0C */	beq lbl_800E3CF4
/* 800E3CEC 000E0C4C  3B E0 00 45 */	li r31, 0x45
/* 800E3CF0 000E0C50  48 00 00 E8 */	b lbl_800E3DD8
lbl_800E3CF4:
/* 800E3CF4 000E0C54  80 1B 03 FC */	lwz r0, 0x3fc(r27)
/* 800E3CF8 000E0C58  2C 00 00 01 */	cmpwi r0, 1
/* 800E3CFC 000E0C5C  40 82 00 DC */	bne lbl_800E3DD8
/* 800E3D00 000E0C60  7F 64 DB 78 */	mr r4, r27
/* 800E3D04 000E0C64  38 61 00 38 */	addi r3, r1, 0x38
/* 800E3D08 000E0C68  48 03 6C 25 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800E3D0C 000E0C6C  38 61 00 14 */	addi r3, r1, 0x14
/* 800E3D10 000E0C70  38 81 00 38 */	addi r4, r1, 0x38
/* 800E3D14 000E0C74  48 25 38 F9 */	bl GetCenterPoint__6CAABoxCFv
/* 800E3D18 000E0C78  C0 3C 00 04 */	lfs f1, 4(r28)
/* 800E3D1C 000E0C7C  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E3D20 000E0C80  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800E3D24 000E0C84  38 81 00 20 */	addi r4, r1, 0x20
/* 800E3D28 000E0C88  C0 7C 00 08 */	lfs f3, 8(r28)
/* 800E3D2C 000E0C8C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 800E3D30 000E0C90  EC 81 00 28 */	fsubs f4, f1, f0
/* 800E3D34 000E0C94  C0 3C 00 00 */	lfs f1, 0(r28)
/* 800E3D38 000E0C98  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800E3D3C 000E0C9C  EC 43 10 28 */	fsubs f2, f3, f2
/* 800E3D40 000E0CA0  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 800E3D44 000E0CA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E3D48 000E0CA8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800E3D4C 000E0CAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800E3D50 000E0CB0  48 23 00 81 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 800E3D54 000E0CB4  C0 BB 00 48 */	lfs f5, 0x48(r27)
/* 800E3D58 000E0CB8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 800E3D5C 000E0CBC  C0 9B 00 38 */	lfs f4, 0x38(r27)
/* 800E3D60 000E0CC0  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 800E3D64 000E0CC4  EC 05 00 32 */	fmuls f0, f5, f0
/* 800E3D68 000E0CC8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 800E3D6C 000E0CCC  EC 45 00 B2 */	fmuls f2, f5, f2
/* 800E3D70 000E0CD0  C0 DB 00 58 */	lfs f6, 0x58(r27)
/* 800E3D74 000E0CD4  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 800E3D78 000E0CD8  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 800E3D7C 000E0CDC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 800E3D80 000E0CE0  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 800E3D84 000E0CE4  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 800E3D88 000E0CE8  EC 26 00 7A */	fmadds f1, f6, f1, f0
/* 800E3D8C 000E0CEC  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E3D90 000E0CF0  EC 46 10 FA */	fmadds f2, f6, f3, f2
/* 800E3D94 000E0CF4  D0 81 00 08 */	stfs f4, 8(r1)
/* 800E3D98 000E0CF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E3D9C 000E0CFC  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 800E3DA0 000E0D00  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 800E3DA4 000E0D04  40 81 00 18 */	ble lbl_800E3DBC
/* 800E3DA8 000E0D08  C0 02 8F F0 */	lfs f0, lbl_805AAD10@sda21(r2)
/* 800E3DAC 000E0D0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800E3DB0 000E0D10  40 80 00 0C */	bge lbl_800E3DBC
/* 800E3DB4 000E0D14  3B E0 00 2C */	li r31, 0x2c
/* 800E3DB8 000E0D18  48 00 00 20 */	b lbl_800E3DD8
lbl_800E3DBC:
/* 800E3DBC 000E0D1C  7F C4 F3 78 */	mr r4, r30
/* 800E3DC0 000E0D20  38 7B 07 44 */	addi r3, r27, 0x744
/* 800E3DC4 000E0D24  38 A0 00 00 */	li r5, 0
/* 800E3DC8 000E0D28  48 01 E9 41 */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponModei
/* 800E3DCC 000E0D2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E3DD0 000E0D30  40 82 00 08 */	bne lbl_800E3DD8
/* 800E3DD4 000E0D34  3B E0 00 45 */	li r31, 0x45
lbl_800E3DD8:
/* 800E3DD8 000E0D38  7F E3 FB 78 */	mr r3, r31
/* 800E3DDC 000E0D3C  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 800E3DE0 000E0D40  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800E3DE4 000E0D44  7C 08 03 A6 */	mtlr r0
/* 800E3DE8 000E0D48  38 21 00 70 */	addi r1, r1, 0x70
/* 800E3DEC 000E0D4C  4E 80 00 20 */	blr

.global GetDamageVulnerability__7CBeetleCFv
GetDamageVulnerability__7CBeetleCFv:
/* 800E3DF0 000E0D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E3DF4 000E0D54  7C 08 02 A6 */	mflr r0
/* 800E3DF8 000E0D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E3DFC 000E0D5C  88 03 08 38 */	lbz r0, 0x838(r3)
/* 800E3E00 000E0D60  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E3E04 000E0D64  41 82 00 10 */	beq lbl_800E3E14
/* 800E3E08 000E0D68  3C 60 80 57 */	lis r3, sPassThroughVulnerability__20CDamageVulnerability@ha
/* 800E3E0C 000E0D6C  38 63 D7 E8 */	addi r3, r3, sPassThroughVulnerability__20CDamageVulnerability@l
/* 800E3E10 000E0D70  48 00 00 38 */	b lbl_800E3E48
lbl_800E3E14:
/* 800E3E14 000E0D74  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 800E3E18 000E0D78  2C 00 00 01 */	cmpwi r0, 1
/* 800E3E1C 000E0D7C  40 82 00 28 */	bne lbl_800E3E44
/* 800E3E20 000E0D80  80 83 04 50 */	lwz r4, 0x450(r3)
/* 800E3E24 000E0D84  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E3E28 000E0D88  C0 24 03 20 */	lfs f1, 0x320(r4)
/* 800E3E2C 000E0D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E3E30 000E0D90  40 81 00 0C */	ble lbl_800E3E3C
/* 800E3E34 000E0D94  38 63 07 AC */	addi r3, r3, 0x7ac
/* 800E3E38 000E0D98  48 00 00 10 */	b lbl_800E3E48
lbl_800E3E3C:
/* 800E3E3C 000E0D9C  38 63 07 44 */	addi r3, r3, 0x744
/* 800E3E40 000E0DA0  48 00 00 08 */	b lbl_800E3E48
lbl_800E3E44:
/* 800E3E44 000E0DA4  4B FB EF 2D */	bl GetDamageVulnerability__3CAiCFv
lbl_800E3E48:
/* 800E3E48 000E0DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E3E4C 000E0DAC  7C 08 03 A6 */	mtlr r0
/* 800E3E50 000E0DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 800E3E54 000E0DB4  4E 80 00 20 */	blr

.global GetDamageVulnerability__7CBeetleCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__7CBeetleCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 800E3E58 000E0DB8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800E3E5C 000E0DBC  7C 08 02 A6 */	mflr r0
/* 800E3E60 000E0DC0  90 01 00 64 */	stw r0, 0x64(r1)
/* 800E3E64 000E0DC4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800E3E68 000E0DC8  7C BF 2B 78 */	mr r31, r5
/* 800E3E6C 000E0DCC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800E3E70 000E0DD0  7C 9E 23 78 */	mr r30, r4
/* 800E3E74 000E0DD4  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800E3E78 000E0DD8  7C 7D 1B 78 */	mr r29, r3
/* 800E3E7C 000E0DDC  88 03 08 38 */	lbz r0, 0x838(r3)
/* 800E3E80 000E0DE0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E3E84 000E0DE4  41 82 00 10 */	beq lbl_800E3E94
/* 800E3E88 000E0DE8  3C 60 80 57 */	lis r3, sPassThroughVulnerability__20CDamageVulnerability@ha
/* 800E3E8C 000E0DEC  38 63 D7 E8 */	addi r3, r3, sPassThroughVulnerability__20CDamageVulnerability@l
/* 800E3E90 000E0DF0  48 00 00 F8 */	b lbl_800E3F88
lbl_800E3E94:
/* 800E3E94 000E0DF4  80 1D 03 FC */	lwz r0, 0x3fc(r29)
/* 800E3E98 000E0DF8  2C 00 00 01 */	cmpwi r0, 1
/* 800E3E9C 000E0DFC  40 82 00 DC */	bne lbl_800E3F78
/* 800E3EA0 000E0E00  88 06 00 04 */	lbz r0, 4(r6)
/* 800E3EA4 000E0E04  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E3EA8 000E0E08  41 82 00 18 */	beq lbl_800E3EC0
/* 800E3EAC 000E0E0C  80 06 00 00 */	lwz r0, 0(r6)
/* 800E3EB0 000E0E10  2C 00 00 02 */	cmpwi r0, 2
/* 800E3EB4 000E0E14  40 82 00 0C */	bne lbl_800E3EC0
/* 800E3EB8 000E0E18  38 7D 07 AC */	addi r3, r29, 0x7ac
/* 800E3EBC 000E0E1C  48 00 00 CC */	b lbl_800E3F88
lbl_800E3EC0:
/* 800E3EC0 000E0E20  7F A4 EB 78 */	mr r4, r29
/* 800E3EC4 000E0E24  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E3EC8 000E0E28  48 03 6A 65 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800E3ECC 000E0E2C  38 61 00 08 */	addi r3, r1, 8
/* 800E3ED0 000E0E30  38 81 00 2C */	addi r4, r1, 0x2c
/* 800E3ED4 000E0E34  48 25 37 39 */	bl GetCenterPoint__6CAABoxCFv
/* 800E3ED8 000E0E38  C0 3E 00 04 */	lfs f1, 4(r30)
/* 800E3EDC 000E0E3C  38 61 00 20 */	addi r3, r1, 0x20
/* 800E3EE0 000E0E40  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800E3EE4 000E0E44  38 81 00 14 */	addi r4, r1, 0x14
/* 800E3EE8 000E0E48  C0 7E 00 08 */	lfs f3, 8(r30)
/* 800E3EEC 000E0E4C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 800E3EF0 000E0E50  EC 81 00 28 */	fsubs f4, f1, f0
/* 800E3EF4 000E0E54  C0 3E 00 00 */	lfs f1, 0(r30)
/* 800E3EF8 000E0E58  C0 01 00 08 */	lfs f0, 8(r1)
/* 800E3EFC 000E0E5C  EC 43 10 28 */	fsubs f2, f3, f2
/* 800E3F00 000E0E60  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 800E3F04 000E0E64  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E3F08 000E0E68  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800E3F0C 000E0E6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E3F10 000E0E70  48 22 FE C1 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 800E3F14 000E0E74  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 800E3F18 000E0E78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800E3F1C 000E0E7C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 800E3F20 000E0E80  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E3F24 000E0E84  C0 9D 00 38 */	lfs f4, 0x38(r29)
/* 800E3F28 000E0E88  C0 3F 00 00 */	lfs f1, 0(r31)
/* 800E3F2C 000E0E8C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800E3F30 000E0E90  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 800E3F34 000E0E94  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 800E3F38 000E0E98  C0 BD 00 58 */	lfs f5, 0x58(r29)
/* 800E3F3C 000E0E9C  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 800E3F40 000E0EA0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800E3F44 000E0EA4  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 800E3F48 000E0EA8  EC 25 00 7A */	fmadds f1, f5, f1, f0
/* 800E3F4C 000E0EAC  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E3F50 000E0EB0  EC 45 10 FA */	fmadds f2, f5, f3, f2
/* 800E3F54 000E0EB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E3F58 000E0EB8  40 81 00 18 */	ble lbl_800E3F70
/* 800E3F5C 000E0EBC  C0 02 8F F0 */	lfs f0, lbl_805AAD10@sda21(r2)
/* 800E3F60 000E0EC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800E3F64 000E0EC4  40 80 00 0C */	bge lbl_800E3F70
/* 800E3F68 000E0EC8  38 7D 07 AC */	addi r3, r29, 0x7ac
/* 800E3F6C 000E0ECC  48 00 00 1C */	b lbl_800E3F88
lbl_800E3F70:
/* 800E3F70 000E0ED0  38 7D 07 44 */	addi r3, r29, 0x744
/* 800E3F74 000E0ED4  48 00 00 14 */	b lbl_800E3F88
lbl_800E3F78:
/* 800E3F78 000E0ED8  81 83 00 00 */	lwz r12, 0(r3)
/* 800E3F7C 000E0EDC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800E3F80 000E0EE0  7D 89 03 A6 */	mtctr r12
/* 800E3F84 000E0EE4  4E 80 04 21 */	bctrl
lbl_800E3F88:
/* 800E3F88 000E0EE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800E3F8C 000E0EEC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800E3F90 000E0EF0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800E3F94 000E0EF4  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800E3F98 000E0EF8  7C 08 03 A6 */	mtlr r0
/* 800E3F9C 000E0EFC  38 21 00 60 */	addi r1, r1, 0x60
/* 800E3FA0 000E0F00  4E 80 00 20 */	blr

.global Shock__7CBeetleFff
Shock__7CBeetleFff:
/* 800E3FA4 000E0F04  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800E3FA8 000E0F08  7C 08 02 A6 */	mflr r0
/* 800E3FAC 000E0F0C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800E3FB0 000E0F10  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 800E3FB4 000E0F14  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 800E3FB8 000E0F18  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 800E3FBC 000E0F1C  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 800E3FC0 000E0F20  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 800E3FC4 000E0F24  81 83 00 00 */	lwz r12, 0(r3)
/* 800E3FC8 000E0F28  FF C0 08 90 */	fmr f30, f1
/* 800E3FCC 000E0F2C  FF E0 10 90 */	fmr f31, f2
/* 800E3FD0 000E0F30  7C 7F 1B 78 */	mr r31, r3
/* 800E3FD4 000E0F34  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800E3FD8 000E0F38  7D 89 03 A6 */	mtctr r12
/* 800E3FDC 000E0F3C  4E 80 04 21 */	bctrl
/* 800E3FE0 000E0F40  80 83 00 00 */	lwz r4, 0(r3)
/* 800E3FE4 000E0F44  80 03 00 04 */	lwz r0, 4(r3)
/* 800E3FE8 000E0F48  90 81 00 10 */	stw r4, 0x10(r1)
/* 800E3FEC 000E0F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E3FF0 000E0F50  80 83 00 08 */	lwz r4, 8(r3)
/* 800E3FF4 000E0F54  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800E3FF8 000E0F58  90 81 00 18 */	stw r4, 0x18(r1)
/* 800E3FFC 000E0F5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800E4000 000E0F60  80 83 00 10 */	lwz r4, 0x10(r3)
/* 800E4004 000E0F64  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800E4008 000E0F68  90 81 00 20 */	stw r4, 0x20(r1)
/* 800E400C 000E0F6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E4010 000E0F70  80 83 00 18 */	lwz r4, 0x18(r3)
/* 800E4014 000E0F74  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800E4018 000E0F78  90 81 00 28 */	stw r4, 0x28(r1)
/* 800E401C 000E0F7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800E4020 000E0F80  80 83 00 20 */	lwz r4, 0x20(r3)
/* 800E4024 000E0F84  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800E4028 000E0F88  90 81 00 30 */	stw r4, 0x30(r1)
/* 800E402C 000E0F8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E4030 000E0F90  80 83 00 28 */	lwz r4, 0x28(r3)
/* 800E4034 000E0F94  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800E4038 000E0F98  90 81 00 38 */	stw r4, 0x38(r1)
/* 800E403C 000E0F9C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800E4040 000E0FA0  80 83 00 30 */	lwz r4, 0x30(r3)
/* 800E4044 000E0FA4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800E4048 000E0FA8  90 81 00 40 */	stw r4, 0x40(r1)
/* 800E404C 000E0FAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E4050 000E0FB0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800E4054 000E0FB4  90 01 00 48 */	stw r0, 0x48(r1)
/* 800E4058 000E0FB8  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 800E405C 000E0FBC  80 03 00 40 */	lwz r0, 0x40(r3)
/* 800E4060 000E0FC0  90 81 00 4C */	stw r4, 0x4c(r1)
/* 800E4064 000E0FC4  90 01 00 50 */	stw r0, 0x50(r1)
/* 800E4068 000E0FC8  80 83 00 44 */	lwz r4, 0x44(r3)
/* 800E406C 000E0FCC  80 03 00 48 */	lwz r0, 0x48(r3)
/* 800E4070 000E0FD0  90 81 00 54 */	stw r4, 0x54(r1)
/* 800E4074 000E0FD4  90 01 00 58 */	stw r0, 0x58(r1)
/* 800E4078 000E0FD8  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 800E407C 000E0FDC  80 03 00 50 */	lwz r0, 0x50(r3)
/* 800E4080 000E0FE0  90 81 00 5C */	stw r4, 0x5c(r1)
/* 800E4084 000E0FE4  90 01 00 60 */	stw r0, 0x60(r1)
/* 800E4088 000E0FE8  80 83 00 54 */	lwz r4, 0x54(r3)
/* 800E408C 000E0FEC  80 03 00 58 */	lwz r0, 0x58(r3)
/* 800E4090 000E0FF0  90 81 00 64 */	stw r4, 0x64(r1)
/* 800E4094 000E0FF4  90 01 00 68 */	stw r0, 0x68(r1)
/* 800E4098 000E0FF8  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 800E409C 000E0FFC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800E40A0 000E1000  80 03 00 60 */	lwz r0, 0x60(r3)
/* 800E40A4 000E1004  90 01 00 70 */	stw r0, 0x70(r1)
/* 800E40A8 000E1008  80 03 00 64 */	lwz r0, 0x64(r3)
/* 800E40AC 000E100C  90 01 00 74 */	stw r0, 0x74(r1)
/* 800E40B0 000E1010  88 1F 08 38 */	lbz r0, 0x838(r31)
/* 800E40B4 000E1014  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E40B8 000E1018  40 82 00 E0 */	bne lbl_800E4198
/* 800E40BC 000E101C  80 1F 03 FC */	lwz r0, 0x3fc(r31)
/* 800E40C0 000E1020  2C 00 00 01 */	cmpwi r0, 1
/* 800E40C4 000E1024  40 82 00 D4 */	bne lbl_800E4198
/* 800E40C8 000E1028  80 7F 07 AC */	lwz r3, 0x7ac(r31)
/* 800E40CC 000E102C  80 1F 07 B0 */	lwz r0, 0x7b0(r31)
/* 800E40D0 000E1030  90 61 00 10 */	stw r3, 0x10(r1)
/* 800E40D4 000E1034  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E40D8 000E1038  80 7F 07 B4 */	lwz r3, 0x7b4(r31)
/* 800E40DC 000E103C  80 1F 07 B8 */	lwz r0, 0x7b8(r31)
/* 800E40E0 000E1040  90 61 00 18 */	stw r3, 0x18(r1)
/* 800E40E4 000E1044  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800E40E8 000E1048  80 7F 07 BC */	lwz r3, 0x7bc(r31)
/* 800E40EC 000E104C  80 1F 07 C0 */	lwz r0, 0x7c0(r31)
/* 800E40F0 000E1050  90 61 00 20 */	stw r3, 0x20(r1)
/* 800E40F4 000E1054  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E40F8 000E1058  80 7F 07 C4 */	lwz r3, 0x7c4(r31)
/* 800E40FC 000E105C  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 800E4100 000E1060  90 61 00 28 */	stw r3, 0x28(r1)
/* 800E4104 000E1064  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800E4108 000E1068  80 7F 07 CC */	lwz r3, 0x7cc(r31)
/* 800E410C 000E106C  80 1F 07 D0 */	lwz r0, 0x7d0(r31)
/* 800E4110 000E1070  90 61 00 30 */	stw r3, 0x30(r1)
/* 800E4114 000E1074  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E4118 000E1078  80 7F 07 D4 */	lwz r3, 0x7d4(r31)
/* 800E411C 000E107C  80 1F 07 D8 */	lwz r0, 0x7d8(r31)
/* 800E4120 000E1080  90 61 00 38 */	stw r3, 0x38(r1)
/* 800E4124 000E1084  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800E4128 000E1088  80 7F 07 DC */	lwz r3, 0x7dc(r31)
/* 800E412C 000E108C  80 1F 07 E0 */	lwz r0, 0x7e0(r31)
/* 800E4130 000E1090  90 61 00 40 */	stw r3, 0x40(r1)
/* 800E4134 000E1094  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E4138 000E1098  80 1F 07 E4 */	lwz r0, 0x7e4(r31)
/* 800E413C 000E109C  90 01 00 48 */	stw r0, 0x48(r1)
/* 800E4140 000E10A0  80 7F 07 E8 */	lwz r3, 0x7e8(r31)
/* 800E4144 000E10A4  80 1F 07 EC */	lwz r0, 0x7ec(r31)
/* 800E4148 000E10A8  90 61 00 4C */	stw r3, 0x4c(r1)
/* 800E414C 000E10AC  90 01 00 50 */	stw r0, 0x50(r1)
/* 800E4150 000E10B0  80 7F 07 F0 */	lwz r3, 0x7f0(r31)
/* 800E4154 000E10B4  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 800E4158 000E10B8  90 61 00 54 */	stw r3, 0x54(r1)
/* 800E415C 000E10BC  90 01 00 58 */	stw r0, 0x58(r1)
/* 800E4160 000E10C0  80 7F 07 F8 */	lwz r3, 0x7f8(r31)
/* 800E4164 000E10C4  80 1F 07 FC */	lwz r0, 0x7fc(r31)
/* 800E4168 000E10C8  90 61 00 5C */	stw r3, 0x5c(r1)
/* 800E416C 000E10CC  90 01 00 60 */	stw r0, 0x60(r1)
/* 800E4170 000E10D0  80 7F 08 00 */	lwz r3, 0x800(r31)
/* 800E4174 000E10D4  80 1F 08 04 */	lwz r0, 0x804(r31)
/* 800E4178 000E10D8  90 61 00 64 */	stw r3, 0x64(r1)
/* 800E417C 000E10DC  90 01 00 68 */	stw r0, 0x68(r1)
/* 800E4180 000E10E0  80 1F 08 08 */	lwz r0, 0x808(r31)
/* 800E4184 000E10E4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800E4188 000E10E8  80 1F 08 0C */	lwz r0, 0x80c(r31)
/* 800E418C 000E10EC  90 01 00 70 */	stw r0, 0x70(r1)
/* 800E4190 000E10F0  80 1F 08 10 */	lwz r0, 0x810(r31)
/* 800E4194 000E10F4  90 01 00 74 */	stw r0, 0x74(r1)
lbl_800E4198:
/* 800E4198 000E10F8  88 01 00 0C */	lbz r0, 0xc(r1)
/* 800E419C 000E10FC  38 80 00 00 */	li r4, 0
/* 800E41A0 000E1100  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 800E41A4 000E1104  38 A0 00 02 */	li r5, 2
/* 800E41A8 000E1108  98 01 00 0C */	stb r0, 0xc(r1)
/* 800E41AC 000E110C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800E41B0 000E1110  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 800E41B4 000E1114  38 61 00 10 */	addi r3, r1, 0x10
/* 800E41B8 000E1118  98 01 00 0C */	stb r0, 0xc(r1)
/* 800E41BC 000E111C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800E41C0 000E1120  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 800E41C4 000E1124  38 81 00 08 */	addi r4, r1, 8
/* 800E41C8 000E1128  90 A1 00 08 */	stw r5, 8(r1)
/* 800E41CC 000E112C  38 A0 00 00 */	li r5, 0
/* 800E41D0 000E1130  98 01 00 0C */	stb r0, 0xc(r1)
/* 800E41D4 000E1134  48 01 E2 E9 */	bl GetVulnerability__20CDamageVulnerabilityCFRC11CWeaponModei
/* 800E41D8 000E1138  2C 03 00 01 */	cmpwi r3, 1
/* 800E41DC 000E113C  41 82 00 34 */	beq lbl_800E4210
/* 800E41E0 000E1140  40 80 00 40 */	bge lbl_800E4220
/* 800E41E4 000E1144  2C 03 00 00 */	cmpwi r3, 0
/* 800E41E8 000E1148  40 80 00 08 */	bge lbl_800E41F0
/* 800E41EC 000E114C  48 00 00 34 */	b lbl_800E4220
lbl_800E41F0:
/* 800E41F0 000E1150  C0 02 8F F4 */	lfs f0, lbl_805AAD14@sda21(r2)
/* 800E41F4 000E1154  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E41F8 000E1158  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800E41FC 000E115C  48 05 5D 71 */	bl SetElectrocuting__15CBodyControllerFf
/* 800E4200 000E1160  C0 02 8F F4 */	lfs f0, lbl_805AAD14@sda21(r2)
/* 800E4204 000E1164  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E4208 000E1168  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 800E420C 000E116C  48 00 00 14 */	b lbl_800E4220
lbl_800E4210:
/* 800E4210 000E1170  FC 20 F0 90 */	fmr f1, f30
/* 800E4214 000E1174  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E4218 000E1178  48 05 5D 55 */	bl SetElectrocuting__15CBodyControllerFf
/* 800E421C 000E117C  D3 FF 03 F0 */	stfs f31, 0x3f0(r31)
lbl_800E4220:
/* 800E4220 000E1180  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 800E4224 000E1184  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 800E4228 000E1188  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 800E422C 000E118C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 800E4230 000E1190  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800E4234 000E1194  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 800E4238 000E1198  7C 08 03 A6 */	mtlr r0
/* 800E423C 000E119C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800E4240 000E11A0  4E 80 00 20 */	blr

.global Burn__7CBeetleFff
Burn__7CBeetleFff:
/* 800E4244 000E11A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800E4248 000E11A8  7C 08 02 A6 */	mflr r0
/* 800E424C 000E11AC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800E4250 000E11B0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 800E4254 000E11B4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 800E4258 000E11B8  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 800E425C 000E11BC  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 800E4260 000E11C0  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 800E4264 000E11C4  81 83 00 00 */	lwz r12, 0(r3)
/* 800E4268 000E11C8  FF C0 08 90 */	fmr f30, f1
/* 800E426C 000E11CC  FF E0 10 90 */	fmr f31, f2
/* 800E4270 000E11D0  7C 7F 1B 78 */	mr r31, r3
/* 800E4274 000E11D4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800E4278 000E11D8  7D 89 03 A6 */	mtctr r12
/* 800E427C 000E11DC  4E 80 04 21 */	bctrl
/* 800E4280 000E11E0  80 83 00 00 */	lwz r4, 0(r3)
/* 800E4284 000E11E4  80 03 00 04 */	lwz r0, 4(r3)
/* 800E4288 000E11E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 800E428C 000E11EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E4290 000E11F0  80 83 00 08 */	lwz r4, 8(r3)
/* 800E4294 000E11F4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800E4298 000E11F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 800E429C 000E11FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800E42A0 000E1200  80 83 00 10 */	lwz r4, 0x10(r3)
/* 800E42A4 000E1204  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800E42A8 000E1208  90 81 00 20 */	stw r4, 0x20(r1)
/* 800E42AC 000E120C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E42B0 000E1210  80 83 00 18 */	lwz r4, 0x18(r3)
/* 800E42B4 000E1214  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800E42B8 000E1218  90 81 00 28 */	stw r4, 0x28(r1)
/* 800E42BC 000E121C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800E42C0 000E1220  80 83 00 20 */	lwz r4, 0x20(r3)
/* 800E42C4 000E1224  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800E42C8 000E1228  90 81 00 30 */	stw r4, 0x30(r1)
/* 800E42CC 000E122C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E42D0 000E1230  80 83 00 28 */	lwz r4, 0x28(r3)
/* 800E42D4 000E1234  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800E42D8 000E1238  90 81 00 38 */	stw r4, 0x38(r1)
/* 800E42DC 000E123C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800E42E0 000E1240  80 83 00 30 */	lwz r4, 0x30(r3)
/* 800E42E4 000E1244  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800E42E8 000E1248  90 81 00 40 */	stw r4, 0x40(r1)
/* 800E42EC 000E124C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E42F0 000E1250  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800E42F4 000E1254  90 01 00 48 */	stw r0, 0x48(r1)
/* 800E42F8 000E1258  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 800E42FC 000E125C  80 03 00 40 */	lwz r0, 0x40(r3)
/* 800E4300 000E1260  90 81 00 4C */	stw r4, 0x4c(r1)
/* 800E4304 000E1264  90 01 00 50 */	stw r0, 0x50(r1)
/* 800E4308 000E1268  80 83 00 44 */	lwz r4, 0x44(r3)
/* 800E430C 000E126C  80 03 00 48 */	lwz r0, 0x48(r3)
/* 800E4310 000E1270  90 81 00 54 */	stw r4, 0x54(r1)
/* 800E4314 000E1274  90 01 00 58 */	stw r0, 0x58(r1)
/* 800E4318 000E1278  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 800E431C 000E127C  80 03 00 50 */	lwz r0, 0x50(r3)
/* 800E4320 000E1280  90 81 00 5C */	stw r4, 0x5c(r1)
/* 800E4324 000E1284  90 01 00 60 */	stw r0, 0x60(r1)
/* 800E4328 000E1288  80 83 00 54 */	lwz r4, 0x54(r3)
/* 800E432C 000E128C  80 03 00 58 */	lwz r0, 0x58(r3)
/* 800E4330 000E1290  90 81 00 64 */	stw r4, 0x64(r1)
/* 800E4334 000E1294  90 01 00 68 */	stw r0, 0x68(r1)
/* 800E4338 000E1298  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 800E433C 000E129C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800E4340 000E12A0  80 03 00 60 */	lwz r0, 0x60(r3)
/* 800E4344 000E12A4  90 01 00 70 */	stw r0, 0x70(r1)
/* 800E4348 000E12A8  80 03 00 64 */	lwz r0, 0x64(r3)
/* 800E434C 000E12AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 800E4350 000E12B0  88 1F 08 38 */	lbz r0, 0x838(r31)
/* 800E4354 000E12B4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E4358 000E12B8  40 82 00 E0 */	bne lbl_800E4438
/* 800E435C 000E12BC  80 1F 03 FC */	lwz r0, 0x3fc(r31)
/* 800E4360 000E12C0  2C 00 00 01 */	cmpwi r0, 1
/* 800E4364 000E12C4  40 82 00 D4 */	bne lbl_800E4438
/* 800E4368 000E12C8  80 7F 07 AC */	lwz r3, 0x7ac(r31)
/* 800E436C 000E12CC  80 1F 07 B0 */	lwz r0, 0x7b0(r31)
/* 800E4370 000E12D0  90 61 00 10 */	stw r3, 0x10(r1)
/* 800E4374 000E12D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E4378 000E12D8  80 7F 07 B4 */	lwz r3, 0x7b4(r31)
/* 800E437C 000E12DC  80 1F 07 B8 */	lwz r0, 0x7b8(r31)
/* 800E4380 000E12E0  90 61 00 18 */	stw r3, 0x18(r1)
/* 800E4384 000E12E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800E4388 000E12E8  80 7F 07 BC */	lwz r3, 0x7bc(r31)
/* 800E438C 000E12EC  80 1F 07 C0 */	lwz r0, 0x7c0(r31)
/* 800E4390 000E12F0  90 61 00 20 */	stw r3, 0x20(r1)
/* 800E4394 000E12F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E4398 000E12F8  80 7F 07 C4 */	lwz r3, 0x7c4(r31)
/* 800E439C 000E12FC  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 800E43A0 000E1300  90 61 00 28 */	stw r3, 0x28(r1)
/* 800E43A4 000E1304  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800E43A8 000E1308  80 7F 07 CC */	lwz r3, 0x7cc(r31)
/* 800E43AC 000E130C  80 1F 07 D0 */	lwz r0, 0x7d0(r31)
/* 800E43B0 000E1310  90 61 00 30 */	stw r3, 0x30(r1)
/* 800E43B4 000E1314  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E43B8 000E1318  80 7F 07 D4 */	lwz r3, 0x7d4(r31)
/* 800E43BC 000E131C  80 1F 07 D8 */	lwz r0, 0x7d8(r31)
/* 800E43C0 000E1320  90 61 00 38 */	stw r3, 0x38(r1)
/* 800E43C4 000E1324  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800E43C8 000E1328  80 7F 07 DC */	lwz r3, 0x7dc(r31)
/* 800E43CC 000E132C  80 1F 07 E0 */	lwz r0, 0x7e0(r31)
/* 800E43D0 000E1330  90 61 00 40 */	stw r3, 0x40(r1)
/* 800E43D4 000E1334  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E43D8 000E1338  80 1F 07 E4 */	lwz r0, 0x7e4(r31)
/* 800E43DC 000E133C  90 01 00 48 */	stw r0, 0x48(r1)
/* 800E43E0 000E1340  80 7F 07 E8 */	lwz r3, 0x7e8(r31)
/* 800E43E4 000E1344  80 1F 07 EC */	lwz r0, 0x7ec(r31)
/* 800E43E8 000E1348  90 61 00 4C */	stw r3, 0x4c(r1)
/* 800E43EC 000E134C  90 01 00 50 */	stw r0, 0x50(r1)
/* 800E43F0 000E1350  80 7F 07 F0 */	lwz r3, 0x7f0(r31)
/* 800E43F4 000E1354  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 800E43F8 000E1358  90 61 00 54 */	stw r3, 0x54(r1)
/* 800E43FC 000E135C  90 01 00 58 */	stw r0, 0x58(r1)
/* 800E4400 000E1360  80 7F 07 F8 */	lwz r3, 0x7f8(r31)
/* 800E4404 000E1364  80 1F 07 FC */	lwz r0, 0x7fc(r31)
/* 800E4408 000E1368  90 61 00 5C */	stw r3, 0x5c(r1)
/* 800E440C 000E136C  90 01 00 60 */	stw r0, 0x60(r1)
/* 800E4410 000E1370  80 7F 08 00 */	lwz r3, 0x800(r31)
/* 800E4414 000E1374  80 1F 08 04 */	lwz r0, 0x804(r31)
/* 800E4418 000E1378  90 61 00 64 */	stw r3, 0x64(r1)
/* 800E441C 000E137C  90 01 00 68 */	stw r0, 0x68(r1)
/* 800E4420 000E1380  80 1F 08 08 */	lwz r0, 0x808(r31)
/* 800E4424 000E1384  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800E4428 000E1388  80 1F 08 0C */	lwz r0, 0x80c(r31)
/* 800E442C 000E138C  90 01 00 70 */	stw r0, 0x70(r1)
/* 800E4430 000E1390  80 1F 08 10 */	lwz r0, 0x810(r31)
/* 800E4434 000E1394  90 01 00 74 */	stw r0, 0x74(r1)
lbl_800E4438:
/* 800E4438 000E1398  88 01 00 0C */	lbz r0, 0xc(r1)
/* 800E443C 000E139C  38 80 00 00 */	li r4, 0
/* 800E4440 000E13A0  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 800E4444 000E13A4  38 A0 00 02 */	li r5, 2
/* 800E4448 000E13A8  98 01 00 0C */	stb r0, 0xc(r1)
/* 800E444C 000E13AC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800E4450 000E13B0  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 800E4454 000E13B4  38 61 00 10 */	addi r3, r1, 0x10
/* 800E4458 000E13B8  98 01 00 0C */	stb r0, 0xc(r1)
/* 800E445C 000E13BC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800E4460 000E13C0  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 800E4464 000E13C4  38 81 00 08 */	addi r4, r1, 8
/* 800E4468 000E13C8  90 A1 00 08 */	stw r5, 8(r1)
/* 800E446C 000E13CC  38 A0 00 00 */	li r5, 0
/* 800E4470 000E13D0  98 01 00 0C */	stb r0, 0xc(r1)
/* 800E4474 000E13D4  48 01 E0 49 */	bl GetVulnerability__20CDamageVulnerabilityCFRC11CWeaponModei
/* 800E4478 000E13D8  2C 03 00 01 */	cmpwi r3, 1
/* 800E447C 000E13DC  41 82 00 34 */	beq lbl_800E44B0
/* 800E4480 000E13E0  40 80 00 40 */	bge lbl_800E44C0
/* 800E4484 000E13E4  2C 03 00 00 */	cmpwi r3, 0
/* 800E4488 000E13E8  40 80 00 08 */	bge lbl_800E4490
/* 800E448C 000E13EC  48 00 00 34 */	b lbl_800E44C0
lbl_800E4490:
/* 800E4490 000E13F0  C0 02 8F F4 */	lfs f0, lbl_805AAD14@sda21(r2)
/* 800E4494 000E13F4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E4498 000E13F8  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800E449C 000E13FC  48 05 5B F9 */	bl SetOnFire__15CBodyControllerFf
/* 800E44A0 000E1400  C0 02 8F F4 */	lfs f0, lbl_805AAD14@sda21(r2)
/* 800E44A4 000E1404  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E44A8 000E1408  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 800E44AC 000E140C  48 00 00 14 */	b lbl_800E44C0
lbl_800E44B0:
/* 800E44B0 000E1410  FC 20 F0 90 */	fmr f1, f30
/* 800E44B4 000E1414  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E44B8 000E1418  48 05 5B DD */	bl SetOnFire__15CBodyControllerFf
/* 800E44BC 000E141C  D3 FF 03 EC */	stfs f31, 0x3ec(r31)
lbl_800E44C0:
/* 800E44C0 000E1420  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 800E44C4 000E1424  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 800E44C8 000E1428  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 800E44CC 000E142C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 800E44D0 000E1430  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800E44D4 000E1434  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 800E44D8 000E1438  7C 08 03 A6 */	mtlr r0
/* 800E44DC 000E143C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800E44E0 000E1440  4E 80 00 20 */	blr

.global CollidedWith__9CBeetleFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
CollidedWith__9CBeetleFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager:
/* 800E44E4 000E1444  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E44E8 000E1448  7C 08 02 A6 */	mflr r0
/* 800E44EC 000E144C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E44F0 000E1450  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800E44F4 000E1454  7C 7A 1B 78 */	mr r26, r3
/* 800E44F8 000E1458  7C 9B 23 78 */	mr r27, r4
/* 800E44FC 000E145C  7C BC 2B 78 */	mr r28, r5
/* 800E4500 000E1460  7C DD 33 78 */	mr r29, r6
/* 800E4504 000E1464  88 0D A3 00 */	lbz r0, lbl_805A8EC0@sda21(r13)
/* 800E4508 000E1468  7C 00 07 75 */	extsb. r0, r0
/* 800E450C 000E146C  40 82 00 68 */	bne lbl_800E4574
/* 800E4510 000E1470  38 00 00 00 */	li r0, 0
/* 800E4514 000E1474  80 AD 87 94 */	lwz r5, lbl_805A7354@sda21(r13)
/* 800E4518 000E1478  90 0D A3 0C */	stw r0, lbl_805A8ECC@sda21(r13)
/* 800E451C 000E147C  38 60 00 00 */	li r3, 0
/* 800E4520 000E1480  38 80 00 01 */	li r4, 1
/* 800E4524 000E1484  90 0D A3 08 */	stw r0, lbl_805A8EC8@sda21(r13)
/* 800E4528 000E1488  48 2A 59 CD */	bl __shl2i
/* 800E452C 000E148C  80 0D A3 08 */	lwz r0, lbl_805A8EC8@sda21(r13)
/* 800E4530 000E1490  80 CD A3 0C */	lwz r6, lbl_805A8ECC@sda21(r13)
/* 800E4534 000E1494  7C 00 1B 78 */	or r0, r0, r3
/* 800E4538 000E1498  80 AD 87 98 */	lwz r5, lbl_805A7358@sda21(r13)
/* 800E453C 000E149C  7C C4 23 78 */	or r4, r6, r4
/* 800E4540 000E14A0  90 0D A3 08 */	stw r0, lbl_805A8EC8@sda21(r13)
/* 800E4544 000E14A4  38 60 00 00 */	li r3, 0
/* 800E4548 000E14A8  90 8D A3 0C */	stw r4, lbl_805A8ECC@sda21(r13)
/* 800E454C 000E14AC  38 80 00 01 */	li r4, 1
/* 800E4550 000E14B0  48 2A 59 A5 */	bl __shl2i
/* 800E4554 000E14B4  80 AD A3 08 */	lwz r5, lbl_805A8EC8@sda21(r13)
/* 800E4558 000E14B8  38 00 00 01 */	li r0, 1
/* 800E455C 000E14BC  80 CD A3 0C */	lwz r6, lbl_805A8ECC@sda21(r13)
/* 800E4560 000E14C0  7C A3 1B 78 */	or r3, r5, r3
/* 800E4564 000E14C4  98 0D A3 00 */	stb r0, lbl_805A8EC0@sda21(r13)
/* 800E4568 000E14C8  7C C0 23 78 */	or r0, r6, r4
/* 800E456C 000E14CC  90 0D A3 0C */	stw r0, lbl_805A8ECC@sda21(r13)
/* 800E4570 000E14D0  90 6D A3 08 */	stw r3, lbl_805A8EC8@sda21(r13)
lbl_800E4574:
/* 800E4574 000E14D4  3B FC 00 04 */	addi r31, r28, 4
/* 800E4578 000E14D8  3B C0 00 00 */	li r30, 0
/* 800E457C 000E14DC  48 00 00 8C */	b lbl_800E4608
lbl_800E4580:
/* 800E4580 000E14E0  80 AD A3 08 */	lwz r5, lbl_805A8EC8@sda21(r13)
/* 800E4584 000E14E4  38 60 00 00 */	li r3, 0
/* 800E4588 000E14E8  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 800E458C 000E14EC  80 CD A3 0C */	lwz r6, lbl_805A8ECC@sda21(r13)
/* 800E4590 000E14F0  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 800E4594 000E14F4  7C A0 00 38 */	and r0, r5, r0
/* 800E4598 000E14F8  7C 00 1A 78 */	xor r0, r0, r3
/* 800E459C 000E14FC  7C C4 20 38 */	and r4, r6, r4
/* 800E45A0 000E1500  7C 83 1A 78 */	xor r3, r4, r3
/* 800E45A4 000E1504  7C 60 03 79 */	or. r0, r3, r0
/* 800E45A8 000E1508  41 82 00 58 */	beq lbl_800E4600
/* 800E45AC 000E150C  80 9A 04 50 */	lwz r4, 0x450(r26)
/* 800E45B0 000E1510  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 800E45B4 000E1514  2C 00 00 07 */	cmpwi r0, 7
/* 800E45B8 000E1518  40 82 00 48 */	bne lbl_800E4600
/* 800E45BC 000E151C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E45C0 000E1520  38 00 00 0C */	li r0, 0xc
/* 800E45C4 000E1524  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 800E45C8 000E1528  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E45CC 000E152C  38 64 00 04 */	addi r3, r4, 4
/* 800E45D0 000E1530  38 81 00 08 */	addi r4, r1, 8
/* 800E45D4 000E1534  90 A1 00 08 */	stw r5, 8(r1)
/* 800E45D8 000E1538  48 04 D1 E1 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 800E45DC 000E153C  34 01 00 08 */	addic. r0, r1, 8
/* 800E45E0 000E1540  41 82 00 10 */	beq lbl_800E45F0
/* 800E45E4 000E1544  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E45E8 000E1548  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E45EC 000E154C  90 01 00 08 */	stw r0, 8(r1)
lbl_800E45F0:
/* 800E45F0 000E1550  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 800E45F4 000E1554  7F 43 D3 78 */	mr r3, r26
/* 800E45F8 000E1558  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 800E45FC 000E155C  48 03 66 A5 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
lbl_800E4600:
/* 800E4600 000E1560  3B FF 00 60 */	addi r31, r31, 0x60
/* 800E4604 000E1564  3B DE 00 01 */	addi r30, r30, 1
lbl_800E4608:
/* 800E4608 000E1568  80 1C 00 00 */	lwz r0, 0(r28)
/* 800E460C 000E156C  7C 1E 00 00 */	cmpw r30, r0
/* 800E4610 000E1570  41 80 FF 70 */	blt lbl_800E4580
/* 800E4614 000E1574  7F 43 D3 78 */	mr r3, r26
/* 800E4618 000E1578  7F 64 DB 78 */	mr r4, r27
/* 800E461C 000E157C  7F 85 E3 78 */	mr r5, r28
/* 800E4620 000E1580  7F A6 EB 78 */	mr r6, r29
/* 800E4624 000E1584  4B F9 50 2D */	bl CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
/* 800E4628 000E1588  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800E462C 000E158C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E4630 000E1590  7C 08 03 A6 */	mtlr r0
/* 800E4634 000E1594  38 21 00 30 */	addi r1, r1, 0x30
/* 800E4638 000E1598  4E 80 00 20 */	blr

.global Think__7CBeetleFfR13CStateManager
Think__7CBeetleFfR13CStateManager:
/* 800E463C 000E159C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E4640 000E15A0  7C 08 02 A6 */	mflr r0
/* 800E4644 000E15A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E4648 000E15A8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800E464C 000E15AC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 800E4650 000E15B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E4654 000E15B4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800E4658 000E15B8  88 03 00 30 */	lbz r0, 0x30(r3)
/* 800E465C 000E15BC  FF E0 08 90 */	fmr f31, f1
/* 800E4660 000E15C0  7C 7E 1B 78 */	mr r30, r3
/* 800E4664 000E15C4  7C 9F 23 78 */	mr r31, r4
/* 800E4668 000E15C8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800E466C 000E15CC  41 82 01 68 */	beq lbl_800E47D4
/* 800E4670 000E15D0  A0 DE 00 08 */	lhz r6, 8(r30)
/* 800E4674 000E15D4  7F E3 FB 78 */	mr r3, r31
/* 800E4678 000E15D8  38 81 00 10 */	addi r4, r1, 0x10
/* 800E467C 000E15DC  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E4680 000E15E0  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 800E4684 000E15E4  A0 1E 05 70 */	lhz r0, 0x570(r30)
/* 800E4688 000E15E8  B0 C1 00 08 */	sth r6, 8(r1)
/* 800E468C 000E15EC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E4690 000E15F0  48 15 5A F1 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 800E4694 000E15F4  28 03 00 00 */	cmplwi r3, 0
/* 800E4698 000E15F8  41 82 00 24 */	beq lbl_800E46BC
/* 800E469C 000E15FC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800E46A0 000E1600  38 80 00 01 */	li r4, 1
/* 800E46A4 000E1604  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 800E46A8 000E1608  2C 00 00 01 */	cmpwi r0, 1
/* 800E46AC 000E160C  40 82 00 08 */	bne lbl_800E46B4
/* 800E46B0 000E1610  38 80 00 02 */	li r4, 2
lbl_800E46B4:
/* 800E46B4 000E1614  48 05 63 25 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 800E46B8 000E1618  48 00 00 1C */	b lbl_800E46D4
lbl_800E46BC:
/* 800E46BC 000E161C  7F C3 F3 78 */	mr r3, r30
/* 800E46C0 000E1620  7F E4 FB 78 */	mr r4, r31
/* 800E46C4 000E1624  4B FF F0 E9 */	bl SquadAdd__7CBeetleFR13CStateManager
/* 800E46C8 000E1628  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 800E46CC 000E162C  38 80 00 02 */	li r4, 2
/* 800E46D0 000E1630  48 05 63 09 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_800E46D4:
/* 800E46D4 000E1634  7F C3 F3 78 */	mr r3, r30
/* 800E46D8 000E1638  81 9E 00 00 */	lwz r12, 0(r30)
/* 800E46DC 000E163C  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E46E0 000E1640  7D 89 03 A6 */	mtctr r12
/* 800E46E4 000E1644  4E 80 04 21 */	bctrl
/* 800E46E8 000E1648  7C 64 1B 78 */	mr r4, r3
/* 800E46EC 000E164C  38 7E 04 60 */	addi r3, r30, 0x460
/* 800E46F0 000E1650  48 14 F6 75 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 800E46F4 000E1654  C0 3E 08 14 */	lfs f1, 0x814(r30)
/* 800E46F8 000E1658  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E46FC 000E165C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E4700 000E1660  40 81 00 0C */	ble lbl_800E470C
/* 800E4704 000E1664  EC 01 F8 28 */	fsubs f0, f1, f31
/* 800E4708 000E1668  D0 1E 08 14 */	stfs f0, 0x814(r30)
lbl_800E470C:
/* 800E470C 000E166C  C0 5E 08 28 */	lfs f2, 0x828(r30)
/* 800E4710 000E1670  38 61 00 14 */	addi r3, r1, 0x14
/* 800E4714 000E1674  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 800E4718 000E1678  C0 3E 08 24 */	lfs f1, 0x824(r30)
/* 800E471C 000E167C  EC 42 00 28 */	fsubs f2, f2, f0
/* 800E4720 000E1680  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 800E4724 000E1684  C0 7E 08 2C */	lfs f3, 0x82c(r30)
/* 800E4728 000E1688  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E472C 000E168C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 800E4730 000E1690  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800E4734 000E1694  EC 03 00 28 */	fsubs f0, f3, f0
/* 800E4738 000E1698  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800E473C 000E169C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800E4740 000E16A0  48 22 FA C1 */	bl __ct__9CVector2fFff
/* 800E4744 000E16A4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800E4748 000E16A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 800E474C 000E16AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800E4750 000E16B0  7C 64 1B 78 */	mr r4, r3
/* 800E4754 000E16B4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800E4758 000E16B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800E475C 000E16BC  48 22 F8 4D */	bl Dot__9CVector2fFRC9CVector2fRC9CVector2f
/* 800E4760 000E16C0  C0 02 8F F8 */	lfs f0, lbl_805AAD18@sda21(r2)
/* 800E4764 000E16C4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E4768 000E16C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E476C 000E16CC  40 81 00 14 */	ble lbl_800E4780
/* 800E4770 000E16D0  80 7E 08 20 */	lwz r3, 0x820(r30)
/* 800E4774 000E16D4  38 03 00 01 */	addi r0, r3, 1
/* 800E4778 000E16D8  90 1E 08 20 */	stw r0, 0x820(r30)
/* 800E477C 000E16DC  48 00 00 0C */	b lbl_800E4788
lbl_800E4780:
/* 800E4780 000E16E0  38 00 00 00 */	li r0, 0
/* 800E4784 000E16E4  90 1E 08 20 */	stw r0, 0x820(r30)
lbl_800E4788:
/* 800E4788 000E16E8  FC 20 F8 90 */	fmr f1, f31
/* 800E478C 000E16EC  7F C3 F3 78 */	mr r3, r30
/* 800E4790 000E16F0  7F E4 FB 78 */	mr r4, r31
/* 800E4794 000E16F4  4B F9 53 85 */	bl Think__10CPatternedFfR13CStateManager
/* 800E4798 000E16F8  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 800E479C 000E16FC  C0 7E 01 3C */	lfs f3, 0x13c(r30)
/* 800E47A0 000E1700  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800E47A4 000E1704  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 800E47A8 000E1708  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 800E47AC 000E170C  EC 9F 00 F2 */	fmuls f4, f31, f3
/* 800E47B0 000E1710  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 800E47B4 000E1714  EC 01 00 2A */	fadds f0, f1, f0
/* 800E47B8 000E1718  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 800E47BC 000E171C  EC 3F 00 B2 */	fmuls f1, f31, f2
/* 800E47C0 000E1720  EC 45 20 2A */	fadds f2, f5, f4
/* 800E47C4 000E1724  D0 1E 08 24 */	stfs f0, 0x824(r30)
/* 800E47C8 000E1728  EC 03 08 2A */	fadds f0, f3, f1
/* 800E47CC 000E172C  D0 5E 08 28 */	stfs f2, 0x828(r30)
/* 800E47D0 000E1730  D0 1E 08 2C */	stfs f0, 0x82c(r30)
lbl_800E47D4:
/* 800E47D4 000E1734  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 800E47D8 000E1738  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E47DC 000E173C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800E47E0 000E1740  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E47E4 000E1744  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800E47E8 000E1748  7C 08 03 A6 */	mtlr r0
/* 800E47EC 000E174C  38 21 00 50 */	addi r1, r1, 0x50
/* 800E47F0 000E1750  4E 80 00 20 */	blr

.global DoUserAnimEvent__7CBeetleFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__7CBeetleFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 800E47F4 000E1754  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 800E47F8 000E1758  7C 08 02 A6 */	mflr r0
/* 800E47FC 000E175C  90 01 01 64 */	stw r0, 0x164(r1)
/* 800E4800 000E1760  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 800E4804 000E1764  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 800E4808 000E1768  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 800E480C 000E176C  F3 C1 01 48 */	psq_st f30, 328(r1), 0, qr0
/* 800E4810 000E1770  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 800E4814 000E1774  F3 A1 01 38 */	psq_st f29, 312(r1), 0, qr0
/* 800E4818 000E1778  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 800E481C 000E177C  F3 81 01 28 */	psq_st f28, 296(r1), 0, qr0
/* 800E4820 000E1780  DB 61 01 10 */	stfd f27, 0x110(r1)
/* 800E4824 000E1784  F3 61 01 18 */	psq_st f27, 280(r1), 0, qr0
/* 800E4828 000E1788  DB 41 01 00 */	stfd f26, 0x100(r1)
/* 800E482C 000E178C  F3 41 01 08 */	psq_st f26, 264(r1), 0, qr0
/* 800E4830 000E1790  DB 21 00 F0 */	stfd f25, 0xf0(r1)
/* 800E4834 000E1794  F3 21 00 F8 */	psq_st f25, 248(r1), 0, qr0
/* 800E4838 000E1798  93 E1 00 EC */	stw r31, 0xec(r1)
/* 800E483C 000E179C  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 800E4840 000E17A0  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 800E4844 000E17A4  93 81 00 E0 */	stw r28, 0xe0(r1)
/* 800E4848 000E17A8  7C DF 33 78 */	mr r31, r6
/* 800E484C 000E17AC  FF E0 08 90 */	fmr f31, f1
/* 800E4850 000E17B0  2C 1F 00 07 */	cmpwi r31, 7
/* 800E4854 000E17B4  7C 7C 1B 78 */	mr r28, r3
/* 800E4858 000E17B8  7C 9D 23 78 */	mr r29, r4
/* 800E485C 000E17BC  7C BE 2B 78 */	mr r30, r5
/* 800E4860 000E17C0  38 00 00 00 */	li r0, 0
/* 800E4864 000E17C4  41 82 00 5C */	beq lbl_800E48C0
/* 800E4868 000E17C8  40 80 00 14 */	bge lbl_800E487C
/* 800E486C 000E17CC  2C 1F 00 05 */	cmpwi r31, 5
/* 800E4870 000E17D0  41 82 00 18 */	beq lbl_800E4888
/* 800E4874 000E17D4  40 80 01 E4 */	bge lbl_800E4A58
/* 800E4878 000E17D8  48 00 01 E4 */	b lbl_800E4A5C
lbl_800E487C:
/* 800E487C 000E17DC  2C 1F 00 09 */	cmpwi r31, 9
/* 800E4880 000E17E0  40 80 01 DC */	bge lbl_800E4A5C
/* 800E4884 000E17E4  48 00 00 60 */	b lbl_800E48E4
lbl_800E4888:
/* 800E4888 000E17E8  7F A6 EB 78 */	mr r6, r29
/* 800E488C 000E17EC  38 80 00 21 */	li r4, 0x21
/* 800E4890 000E17F0  38 A0 00 13 */	li r5, 0x13
/* 800E4894 000E17F4  4B F6 FA 21 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 800E4898 000E17F8  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 800E489C 000E17FC  38 60 00 01 */	li r3, 1
/* 800E48A0 000E1800  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800E48A4 000E1804  7F 83 E3 78 */	mr r3, r28
/* 800E48A8 000E1808  98 1C 03 28 */	stb r0, 0x328(r28)
/* 800E48AC 000E180C  7F A5 EB 78 */	mr r5, r29
/* 800E48B0 000E1810  38 80 00 25 */	li r4, 0x25
/* 800E48B4 000E1814  4B F6 F6 CD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 800E48B8 000E1818  38 00 00 01 */	li r0, 1
/* 800E48BC 000E181C  48 00 01 A0 */	b lbl_800E4A5C
lbl_800E48C0:
/* 800E48C0 000E1820  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 800E48C4 000E1824  38 80 00 00 */	li r4, 0
/* 800E48C8 000E1828  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 800E48CC 000E182C  7F A5 EB 78 */	mr r5, r29
/* 800E48D0 000E1830  98 1C 03 28 */	stb r0, 0x328(r28)
/* 800E48D4 000E1834  38 80 00 25 */	li r4, 0x25
/* 800E48D8 000E1838  4B F6 FA 79 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 800E48DC 000E183C  38 00 00 01 */	li r0, 1
/* 800E48E0 000E1840  48 00 01 7C */	b lbl_800E4A5C
lbl_800E48E4:
/* 800E48E4 000E1844  80 BC 00 64 */	lwz r5, 0x64(r28)
/* 800E48E8 000E1848  38 61 00 44 */	addi r3, r1, 0x44
/* 800E48EC 000E184C  80 82 8F C0 */	lwz r4, lbl_805AACE0@sda21(r2)
/* 800E48F0 000E1850  C3 65 00 00 */	lfs f27, 0(r5)
/* 800E48F4 000E1854  C3 45 00 04 */	lfs f26, 4(r5)
/* 800E48F8 000E1858  C3 25 00 08 */	lfs f25, 8(r5)
/* 800E48FC 000E185C  4B F2 03 BD */	bl string_l__4rstlFPCc
/* 800E4900 000E1860  7F 84 E3 78 */	mr r4, r28
/* 800E4904 000E1864  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800E4908 000E1868  38 A1 00 44 */	addi r5, r1, 0x44
/* 800E490C 000E186C  4B F6 E5 F5 */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800E4910 000E1870  C3 81 00 D4 */	lfs f28, 0xd4(r1)
/* 800E4914 000E1874  38 61 00 44 */	addi r3, r1, 0x44
/* 800E4918 000E1878  C3 A1 00 C4 */	lfs f29, 0xc4(r1)
/* 800E491C 000E187C  C3 C1 00 B4 */	lfs f30, 0xb4(r1)
/* 800E4920 000E1880  48 25 91 C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800E4924 000E1884  EC 5B 07 B2 */	fmuls f2, f27, f30
/* 800E4928 000E1888  38 61 00 38 */	addi r3, r1, 0x38
/* 800E492C 000E188C  EC 3A 07 72 */	fmuls f1, f26, f29
/* 800E4930 000E1890  38 9C 00 34 */	addi r4, r28, 0x34
/* 800E4934 000E1894  EC 19 07 32 */	fmuls f0, f25, f28
/* 800E4938 000E1898  38 A1 00 54 */	addi r5, r1, 0x54
/* 800E493C 000E189C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 800E4940 000E18A0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 800E4944 000E18A4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800E4948 000E18A8  48 22 E1 A1 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 800E494C 000E18AC  C0 02 8F E0 */	lfs f0, lbl_805AAD00@sda21(r2)
/* 800E4950 000E18B0  38 61 00 90 */	addi r3, r1, 0x90
/* 800E4954 000E18B4  C0 22 8F D0 */	lfs f1, lbl_805AACF0@sda21(r2)
/* 800E4958 000E18B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 800E495C 000E18BC  ED 1A 00 32 */	fmuls f8, f26, f0
/* 800E4960 000E18C0  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 800E4964 000E18C4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 800E4968 000E18C8  EC FB 00 32 */	fmuls f7, f27, f0
/* 800E496C 000E18CC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800E4970 000E18D0  ED 39 00 72 */	fmuls f9, f25, f1
/* 800E4974 000E18D4  EC C2 38 2A */	fadds f6, f2, f7
/* 800E4978 000E18D8  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 800E497C 000E18DC  EC A3 40 2A */	fadds f5, f3, f8
/* 800E4980 000E18E0  38 A1 00 20 */	addi r5, r1, 0x20
/* 800E4984 000E18E4  EC 80 48 2A */	fadds f4, f0, f9
/* 800E4988 000E18E8  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 800E498C 000E18EC  EC 42 38 28 */	fsubs f2, f2, f7
/* 800E4990 000E18F0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800E4994 000E18F4  EC 23 40 28 */	fsubs f1, f3, f8
/* 800E4998 000E18F8  EC 00 48 28 */	fsubs f0, f0, f9
/* 800E499C 000E18FC  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 800E49A0 000E1900  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 800E49A4 000E1904  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 800E49A8 000E1908  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 800E49AC 000E190C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800E49B0 000E1910  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800E49B4 000E1914  48 25 3B 55 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 800E49B8 000E1918  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 800E49BC 000E191C  38 61 00 78 */	addi r3, r1, 0x78
/* 800E49C0 000E1920  48 03 5F 6D */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800E49C4 000E1924  38 61 00 90 */	addi r3, r1, 0x90
/* 800E49C8 000E1928  38 81 00 78 */	addi r4, r1, 0x78
/* 800E49CC 000E192C  48 25 31 B9 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 800E49D0 000E1930  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E49D4 000E1934  41 82 00 7C */	beq lbl_800E4A50
/* 800E49D8 000E1938  80 AD 87 78 */	lwz r5, lbl_805A7338@sda21(r13)
/* 800E49DC 000E193C  38 60 00 00 */	li r3, 0
/* 800E49E0 000E1940  38 80 00 01 */	li r4, 1
/* 800E49E4 000E1944  48 2A 55 11 */	bl __shl2i
/* 800E49E8 000E1948  39 40 00 00 */	li r10, 0
/* 800E49EC 000E194C  38 00 00 03 */	li r0, 3
/* 800E49F0 000E1950  90 81 00 64 */	stw r4, 0x64(r1)
/* 800E49F4 000E1954  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 800E49F8 000E1958  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 800E49FC 000E195C  38 A1 00 14 */	addi r5, r1, 0x14
/* 800E4A00 000E1960  90 61 00 60 */	stw r3, 0x60(r1)
/* 800E4A04 000E1964  38 81 00 1C */	addi r4, r1, 0x1c
/* 800E4A08 000E1968  7F A3 EB 78 */	mr r3, r29
/* 800E4A0C 000E196C  38 C1 00 0C */	addi r6, r1, 0xc
/* 800E4A10 000E1970  91 41 00 6C */	stw r10, 0x6c(r1)
/* 800E4A14 000E1974  38 FC 05 84 */	addi r7, r28, 0x584
/* 800E4A18 000E1978  39 01 00 60 */	addi r8, r1, 0x60
/* 800E4A1C 000E197C  91 41 00 68 */	stw r10, 0x68(r1)
/* 800E4A20 000E1980  90 01 00 70 */	stw r0, 0x70(r1)
/* 800E4A24 000E1984  A0 1C 00 08 */	lhz r0, 8(r28)
/* 800E4A28 000E1988  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800E4A2C 000E198C  81 5D 08 4C */	lwz r10, 0x84c(r29)
/* 800E4A30 000E1990  B0 01 00 08 */	sth r0, 8(r1)
/* 800E4A34 000E1994  A1 4A 00 08 */	lhz r10, 8(r10)
/* 800E4A38 000E1998  B1 41 00 14 */	sth r10, 0x14(r1)
/* 800E4A3C 000E199C  A0 1C 00 08 */	lhz r0, 8(r28)
/* 800E4A40 000E19A0  B1 41 00 10 */	sth r10, 0x10(r1)
/* 800E4A44 000E19A4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 800E4A48 000E19A8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 800E4A4C 000E19AC  4B F6 56 55 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_800E4A50:
/* 800E4A50 000E19B0  38 00 00 01 */	li r0, 1
/* 800E4A54 000E19B4  48 00 00 08 */	b lbl_800E4A5C
lbl_800E4A58:
/* 800E4A58 000E19B8  38 00 00 01 */	li r0, 1
lbl_800E4A5C:
/* 800E4A5C 000E19BC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800E4A60 000E19C0  40 82 00 1C */	bne lbl_800E4A7C
/* 800E4A64 000E19C4  FC 20 F8 90 */	fmr f1, f31
/* 800E4A68 000E19C8  7F 83 E3 78 */	mr r3, r28
/* 800E4A6C 000E19CC  7F A4 EB 78 */	mr r4, r29
/* 800E4A70 000E19D0  7F C5 F3 78 */	mr r5, r30
/* 800E4A74 000E19D4  7F E6 FB 78 */	mr r6, r31
/* 800E4A78 000E19D8  4B F9 44 39 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_800E4A7C:
/* 800E4A7C 000E19DC  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 800E4A80 000E19E0  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 800E4A84 000E19E4  E3 C1 01 48 */	psq_l f30, 328(r1), 0, qr0
/* 800E4A88 000E19E8  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 800E4A8C 000E19EC  E3 A1 01 38 */	psq_l f29, 312(r1), 0, qr0
/* 800E4A90 000E19F0  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 800E4A94 000E19F4  E3 81 01 28 */	psq_l f28, 296(r1), 0, qr0
/* 800E4A98 000E19F8  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 800E4A9C 000E19FC  E3 61 01 18 */	psq_l f27, 280(r1), 0, qr0
/* 800E4AA0 000E1A00  CB 61 01 10 */	lfd f27, 0x110(r1)
/* 800E4AA4 000E1A04  E3 41 01 08 */	psq_l f26, 264(r1), 0, qr0
/* 800E4AA8 000E1A08  CB 41 01 00 */	lfd f26, 0x100(r1)
/* 800E4AAC 000E1A0C  E3 21 00 F8 */	psq_l f25, 248(r1), 0, qr0
/* 800E4AB0 000E1A10  CB 21 00 F0 */	lfd f25, 0xf0(r1)
/* 800E4AB4 000E1A14  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 800E4AB8 000E1A18  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 800E4ABC 000E1A1C  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 800E4AC0 000E1A20  80 01 01 64 */	lwz r0, 0x164(r1)
/* 800E4AC4 000E1A24  83 81 00 E0 */	lwz r28, 0xe0(r1)
/* 800E4AC8 000E1A28  7C 08 03 A6 */	mtlr r0
/* 800E4ACC 000E1A2C  38 21 01 60 */	addi r1, r1, 0x160
/* 800E4AD0 000E1A30  4E 80 00 20 */	blr

.global Retreat__7CBeetleFR13CStateManager9EStateMsgf
Retreat__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E4AD4 000E1A34  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800E4AD8 000E1A38  7C 08 02 A6 */	mflr r0
/* 800E4ADC 000E1A3C  90 01 01 04 */	stw r0, 0x104(r1)
/* 800E4AE0 000E1A40  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 800E4AE4 000E1A44  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 800E4AE8 000E1A48  93 E1 00 EC */	stw r31, 0xec(r1)
/* 800E4AEC 000E1A4C  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 800E4AF0 000E1A50  FF E0 08 90 */	fmr f31, f1
/* 800E4AF4 000E1A54  2C 05 00 01 */	cmpwi r5, 1
/* 800E4AF8 000E1A58  7C 7F 1B 78 */	mr r31, r3
/* 800E4AFC 000E1A5C  7C 9E 23 78 */	mr r30, r4
/* 800E4B00 000E1A60  41 82 00 48 */	beq lbl_800E4B48
/* 800E4B04 000E1A64  40 80 00 10 */	bge lbl_800E4B14
/* 800E4B08 000E1A68  2C 05 00 00 */	cmpwi r5, 0
/* 800E4B0C 000E1A6C  40 80 00 14 */	bge lbl_800E4B20
/* 800E4B10 000E1A70  48 00 04 9C */	b lbl_800E4FAC
lbl_800E4B14:
/* 800E4B14 000E1A74  2C 05 00 03 */	cmpwi r5, 3
/* 800E4B18 000E1A78  40 80 04 94 */	bge lbl_800E4FAC
/* 800E4B1C 000E1A7C  48 00 04 00 */	b lbl_800E4F1C
lbl_800E4B20:
/* 800E4B20 000E1A80  38 00 00 00 */	li r0, 0
/* 800E4B24 000E1A84  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E4B28 000E1A88  4B FF EB E1 */	bl SquadRemove__7CBeetleFR13CStateManager
/* 800E4B2C 000E1A8C  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E4B30 000E1A90  C0 22 8F E0 */	lfs f1, lbl_805AAD00@sda21(r2)
/* 800E4B34 000E1A94  D0 1F 08 18 */	stfs f0, 0x818(r31)
/* 800E4B38 000E1A98  C0 1F 08 1C */	lfs f0, 0x81c(r31)
/* 800E4B3C 000E1A9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E4B40 000E1AA0  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 800E4B44 000E1AA4  48 00 04 68 */	b lbl_800E4FAC
lbl_800E4B48:
/* 800E4B48 000E1AA8  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 800E4B4C 000E1AAC  2C 00 00 02 */	cmpwi r0, 2
/* 800E4B50 000E1AB0  41 82 01 F8 */	beq lbl_800E4D48
/* 800E4B54 000E1AB4  40 80 00 10 */	bge lbl_800E4B64
/* 800E4B58 000E1AB8  2C 00 00 00 */	cmpwi r0, 0
/* 800E4B5C 000E1ABC  41 82 00 14 */	beq lbl_800E4B70
/* 800E4B60 000E1AC0  48 00 04 4C */	b lbl_800E4FAC
lbl_800E4B64:
/* 800E4B64 000E1AC4  2C 00 00 04 */	cmpwi r0, 4
/* 800E4B68 000E1AC8  40 80 04 44 */	bge lbl_800E4FAC
/* 800E4B6C 000E1ACC  48 00 02 90 */	b lbl_800E4DFC
lbl_800E4B70:
/* 800E4B70 000E1AD0  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 800E4B74 000E1AD4  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 800E4B78 000E1AD8  2C 00 00 0C */	cmpwi r0, 0xc
/* 800E4B7C 000E1ADC  40 82 00 64 */	bne lbl_800E4BE0
/* 800E4B80 000E1AE0  7F C8 F3 78 */	mr r8, r30
/* 800E4B84 000E1AE4  38 80 00 21 */	li r4, 0x21
/* 800E4B88 000E1AE8  38 A0 00 13 */	li r5, 0x13
/* 800E4B8C 000E1AEC  38 C0 00 28 */	li r6, 0x28
/* 800E4B90 000E1AF0  38 E0 00 29 */	li r7, 0x29
/* 800E4B94 000E1AF4  4B F6 F1 55 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 800E4B98 000E1AF8  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800E4B9C 000E1AFC  7F C6 F3 78 */	mr r6, r30
/* 800E4BA0 000E1B00  38 81 00 14 */	addi r4, r1, 0x14
/* 800E4BA4 000E1B04  38 A0 00 08 */	li r5, 8
/* 800E4BA8 000E1B08  B0 01 00 14 */	sth r0, 0x14(r1)
/* 800E4BAC 000E1B0C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E4BB0 000E1B10  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 800E4BB4 000E1B14  48 09 66 A1 */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
/* 800E4BB8 000E1B18  88 1F 08 38 */	lbz r0, 0x838(r31)
/* 800E4BBC 000E1B1C  38 60 00 01 */	li r3, 1
/* 800E4BC0 000E1B20  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800E4BC4 000E1B24  98 1F 08 38 */	stb r0, 0x838(r31)
/* 800E4BC8 000E1B28  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E4BCC 000E1B2C  48 05 5C ED */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 800E4BD0 000E1B30  D0 3F 05 A8 */	stfs f1, 0x5a8(r31)
/* 800E4BD4 000E1B34  38 00 00 02 */	li r0, 2
/* 800E4BD8 000E1B38  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E4BDC 000E1B3C  48 00 03 D0 */	b lbl_800E4FAC
lbl_800E4BE0:
/* 800E4BE0 000E1B40  81 83 00 00 */	lwz r12, 0(r3)
/* 800E4BE4 000E1B44  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E4BE8 000E1B48  7D 89 03 A6 */	mtctr r12
/* 800E4BEC 000E1B4C  4E 80 04 21 */	bctrl
/* 800E4BF0 000E1B50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E4BF4 000E1B54  41 82 00 D4 */	beq lbl_800E4CC8
/* 800E4BF8 000E1B58  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 800E4BFC 000E1B5C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E4C00 000E1B60  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 800E4C04 000E1B64  39 46 AA 68 */	addi r10, r6, lbl_803DAA68@l
/* 800E4C08 000E1B68  3D 00 80 3E */	lis r8, lbl_803DA9F0@ha
/* 800E4C0C 000E1B6C  80 81 00 E0 */	lwz r4, 0xe0(r1)
/* 800E4C10 000E1B70  38 A0 00 00 */	li r5, 0
/* 800E4C14 000E1B74  C0 23 00 04 */	lfs f1, 4(r3)
/* 800E4C18 000E1B78  50 A4 F8 00 */	rlwimi r4, r5, 0x1f, 0, 0
/* 800E4C1C 000E1B7C  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E4C20 000E1B80  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E4C24 000E1B84  7C 80 23 78 */	mr r0, r4
/* 800E4C28 000E1B88  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 800E4C2C 000E1B8C  39 20 00 0E */	li r9, 0xe
/* 800E4C30 000E1B90  38 E0 00 01 */	li r7, 1
/* 800E4C34 000E1B94  38 C0 FF FF */	li r6, -1
/* 800E4C38 000E1B98  50 A0 F0 42 */	rlwimi r0, r5, 0x1e, 1, 1
/* 800E4C3C 000E1B9C  3B E3 00 04 */	addi r31, r3, 4
/* 800E4C40 000E1BA0  91 41 00 C4 */	stw r10, 0xc4(r1)
/* 800E4C44 000E1BA4  39 08 A9 F0 */	addi r8, r8, lbl_803DA9F0@l
/* 800E4C48 000E1BA8  7F E3 FB 78 */	mr r3, r31
/* 800E4C4C 000E1BAC  38 80 00 0E */	li r4, 0xe
/* 800E4C50 000E1BB0  91 21 00 C8 */	stw r9, 0xc8(r1)
/* 800E4C54 000E1BB4  91 01 00 C4 */	stw r8, 0xc4(r1)
/* 800E4C58 000E1BB8  90 E1 00 CC */	stw r7, 0xcc(r1)
/* 800E4C5C 000E1BBC  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 800E4C60 000E1BC0  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 800E4C64 000E1BC4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800E4C68 000E1BC8  90 C1 00 DC */	stw r6, 0xdc(r1)
/* 800E4C6C 000E1BCC  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 800E4C70 000E1BD0  48 04 C7 C9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E4C74 000E1BD4  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 800E4C78 000E1BD8  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 800E4C7C 000E1BDC  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 800E4C80 000E1BE0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E4C84 000E1BE4  90 1F 01 90 */	stw r0, 0x190(r31)
/* 800E4C88 000E1BE8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E4C8C 000E1BEC  80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 800E4C90 000E1BF0  80 61 00 D0 */	lwz r3, 0xd0(r1)
/* 800E4C94 000E1BF4  90 BF 01 94 */	stw r5, 0x194(r31)
/* 800E4C98 000E1BF8  80 A1 00 D4 */	lwz r5, 0xd4(r1)
/* 800E4C9C 000E1BFC  90 7F 01 98 */	stw r3, 0x198(r31)
/* 800E4CA0 000E1C00  80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 800E4CA4 000E1C04  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 800E4CA8 000E1C08  80 A1 00 DC */	lwz r5, 0xdc(r1)
/* 800E4CAC 000E1C0C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 800E4CB0 000E1C10  80 61 00 E0 */	lwz r3, 0xe0(r1)
/* 800E4CB4 000E1C14  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 800E4CB8 000E1C18  90 81 00 C4 */	stw r4, 0xc4(r1)
/* 800E4CBC 000E1C1C  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 800E4CC0 000E1C20  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 800E4CC4 000E1C24  48 00 02 E8 */	b lbl_800E4FAC
lbl_800E4CC8:
/* 800E4CC8 000E1C28  80 FE 08 4C */	lwz r7, 0x84c(r30)
/* 800E4CCC 000E1C2C  7F E5 FB 78 */	mr r5, r31
/* 800E4CD0 000E1C30  38 61 00 60 */	addi r3, r1, 0x60
/* 800E4CD4 000E1C34  38 9F 04 5C */	addi r4, r31, 0x45c
/* 800E4CD8 000E1C38  C0 47 00 60 */	lfs f2, 0x60(r7)
/* 800E4CDC 000E1C3C  38 C1 00 54 */	addi r6, r1, 0x54
/* 800E4CE0 000E1C40  C0 27 00 50 */	lfs f1, 0x50(r7)
/* 800E4CE4 000E1C44  C0 07 00 40 */	lfs f0, 0x40(r7)
/* 800E4CE8 000E1C48  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800E4CEC 000E1C4C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 800E4CF0 000E1C50  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 800E4CF4 000E1C54  48 05 9F 2D */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 800E4CF8 000E1C58  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E4CFC 000E1C5C  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 800E4D00 000E1C60  C0 C1 00 60 */	lfs f6, 0x60(r1)
/* 800E4D04 000E1C64  38 81 00 A8 */	addi r4, r1, 0xa8
/* 800E4D08 000E1C68  C0 A1 00 64 */	lfs f5, 0x64(r1)
/* 800E4D0C 000E1C6C  C0 81 00 68 */	lfs f4, 0x68(r1)
/* 800E4D10 000E1C70  C0 43 00 04 */	lfs f2, 4(r3)
/* 800E4D14 000E1C74  C0 23 00 08 */	lfs f1, 8(r3)
/* 800E4D18 000E1C78  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E4D1C 000E1C7C  D0 C1 00 A8 */	stfs f6, 0xa8(r1)
/* 800E4D20 000E1C80  D0 A1 00 AC */	stfs f5, 0xac(r1)
/* 800E4D24 000E1C84  D0 81 00 B0 */	stfs f4, 0xb0(r1)
/* 800E4D28 000E1C88  D0 61 00 B4 */	stfs f3, 0xb4(r1)
/* 800E4D2C 000E1C8C  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 800E4D30 000E1C90  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 800E4D34 000E1C94  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800E4D38 000E1C98  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E4D3C 000E1C9C  38 63 00 04 */	addi r3, r3, 4
/* 800E4D40 000E1CA0  48 04 C9 D9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 800E4D44 000E1CA4  48 00 02 68 */	b lbl_800E4FAC
lbl_800E4D48:
/* 800E4D48 000E1CA8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E4D4C 000E1CAC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 800E4D50 000E1CB0  2C 00 00 0C */	cmpwi r0, 0xc
/* 800E4D54 000E1CB4  41 82 00 88 */	beq lbl_800E4DDC
/* 800E4D58 000E1CB8  38 00 00 03 */	li r0, 3
/* 800E4D5C 000E1CBC  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E4D60 000E1CC0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E4D64 000E1CC4  7F E4 FB 78 */	mr r4, r31
/* 800E4D68 000E1CC8  38 61 00 90 */	addi r3, r1, 0x90
/* 800E4D6C 000E1CCC  D0 1F 08 30 */	stfs f0, 0x830(r31)
/* 800E4D70 000E1CD0  48 03 5B BD */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800E4D74 000E1CD4  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 800E4D78 000E1CD8  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 800E4D7C 000E1CDC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 800E4D80 000E1CE0  38 A3 67 00 */	addi r5, r3, sDownVector__9CVector3f@l
/* 800E4D84 000E1CE4  C0 82 8F FC */	lfs f4, lbl_805AAD1C@sda21(r2)
/* 800E4D88 000E1CE8  7F E3 FB 78 */	mr r3, r31
/* 800E4D8C 000E1CEC  EC 61 00 28 */	fsubs f3, f1, f0
/* 800E4D90 000E1CF0  C0 25 00 04 */	lfs f1, 4(r5)
/* 800E4D94 000E1CF4  C0 45 00 08 */	lfs f2, 8(r5)
/* 800E4D98 000E1CF8  38 81 00 48 */	addi r4, r1, 0x48
/* 800E4D9C 000E1CFC  C0 05 00 00 */	lfs f0, 0(r5)
/* 800E4DA0 000E1D00  EC C4 00 F2 */	fmuls f6, f4, f3
/* 800E4DA4 000E1D04  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 800E4DA8 000E1D08  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 800E4DAC 000E1D0C  EC 86 00 72 */	fmuls f4, f6, f1
/* 800E4DB0 000E1D10  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 800E4DB4 000E1D14  EC 46 00 B2 */	fmuls f2, f6, f2
/* 800E4DB8 000E1D18  EC 06 00 32 */	fmuls f0, f6, f0
/* 800E4DBC 000E1D1C  EC 85 20 2A */	fadds f4, f5, f4
/* 800E4DC0 000E1D20  EC 43 10 2A */	fadds f2, f3, f2
/* 800E4DC4 000E1D24  EC 01 00 2A */	fadds f0, f1, f0
/* 800E4DC8 000E1D28  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 800E4DCC 000E1D2C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800E4DD0 000E1D30  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 800E4DD4 000E1D34  4B F6 E0 B9 */	bl SetTranslation__6CActorFRC9CVector3f
/* 800E4DD8 000E1D38  48 00 01 D4 */	b lbl_800E4FAC
lbl_800E4DDC:
/* 800E4DDC 000E1D3C  48 05 5A DD */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 800E4DE0 000E1D40  C0 5F 05 A8 */	lfs f2, 0x5a8(r31)
/* 800E4DE4 000E1D44  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E4DE8 000E1D48  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800E4DEC 000E1D4C  40 81 00 08 */	ble lbl_800E4DF4
/* 800E4DF0 000E1D50  EC 01 10 24 */	fdivs f0, f1, f2
lbl_800E4DF4:
/* 800E4DF4 000E1D54  D0 1F 08 30 */	stfs f0, 0x830(r31)
/* 800E4DF8 000E1D58  48 00 01 B4 */	b lbl_800E4FAC
lbl_800E4DFC:
/* 800E4DFC 000E1D5C  C0 1F 08 18 */	lfs f0, 0x818(r31)
/* 800E4E00 000E1D60  EC 00 F8 2A */	fadds f0, f0, f31
/* 800E4E04 000E1D64  D0 1F 08 18 */	stfs f0, 0x818(r31)
/* 800E4E08 000E1D68  C0 3F 08 18 */	lfs f1, 0x818(r31)
/* 800E4E0C 000E1D6C  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 800E4E10 000E1D70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E4E14 000E1D74  4C 41 13 82 */	cror 2, 1, 2
/* 800E4E18 000E1D78  40 82 00 18 */	bne lbl_800E4E30
/* 800E4E1C 000E1D7C  38 00 00 04 */	li r0, 4
/* 800E4E20 000E1D80  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E4E24 000E1D84  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E4E28 000E1D88  D0 1F 08 30 */	stfs f0, 0x830(r31)
/* 800E4E2C 000E1D8C  48 00 01 80 */	b lbl_800E4FAC
lbl_800E4E30:
/* 800E4E30 000E1D90  7F E4 FB 78 */	mr r4, r31
/* 800E4E34 000E1D94  38 61 00 78 */	addi r3, r1, 0x78
/* 800E4E38 000E1D98  48 03 5A F5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800E4E3C 000E1D9C  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 800E4E40 000E1DA0  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 800E4E44 000E1DA4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 800E4E48 000E1DA8  38 63 67 00 */	addi r3, r3, sDownVector__9CVector3f@l
/* 800E4E4C 000E1DAC  C0 82 8F FC */	lfs f4, lbl_805AAD1C@sda21(r2)
/* 800E4E50 000E1DB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E4E54 000E1DB4  C0 63 00 08 */	lfs f3, 8(r3)
/* 800E4E58 000E1DB8  C0 43 00 00 */	lfs f2, 0(r3)
/* 800E4E5C 000E1DBC  C0 23 00 04 */	lfs f1, 4(r3)
/* 800E4E60 000E1DC0  EC 84 00 32 */	fmuls f4, f4, f0
/* 800E4E64 000E1DC4  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E4E68 000E1DC8  EC 64 00 F2 */	fmuls f3, f4, f3
/* 800E4E6C 000E1DCC  EC 44 00 B2 */	fmuls f2, f4, f2
/* 800E4E70 000E1DD0  EC 24 00 72 */	fmuls f1, f4, f1
/* 800E4E74 000E1DD4  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 800E4E78 000E1DD8  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 800E4E7C 000E1DDC  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 800E4E80 000E1DE0  C0 9F 08 34 */	lfs f4, 0x834(r31)
/* 800E4E84 000E1DE4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 800E4E88 000E1DE8  40 81 00 2C */	ble lbl_800E4EB4
/* 800E4E8C 000E1DEC  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E4E90 000E1DF0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 800E4E94 000E1DF4  EC 00 20 24 */	fdivs f0, f0, f4
/* 800E4E98 000E1DF8  EC 80 00 72 */	fmuls f4, f0, f1
/* 800E4E9C 000E1DFC  EC 20 00 F2 */	fmuls f1, f0, f3
/* 800E4EA0 000E1E00  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E4EA4 000E1E04  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 800E4EA8 000E1E08  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800E4EAC 000E1E0C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 800E4EB0 000E1E10  48 00 00 08 */	b lbl_800E4EB8
lbl_800E4EB4:
/* 800E4EB4 000E1E14  38 A1 00 6C */	addi r5, r1, 0x6c
lbl_800E4EB8:
/* 800E4EB8 000E1E18  C0 45 00 04 */	lfs f2, 4(r5)
/* 800E4EBC 000E1E1C  7F E3 FB 78 */	mr r3, r31
/* 800E4EC0 000E1E20  C0 25 00 08 */	lfs f1, 8(r5)
/* 800E4EC4 000E1E24  38 81 00 30 */	addi r4, r1, 0x30
/* 800E4EC8 000E1E28  C0 05 00 00 */	lfs f0, 0(r5)
/* 800E4ECC 000E1E2C  EC 9F 00 B2 */	fmuls f4, f31, f2
/* 800E4ED0 000E1E30  C0 DF 00 50 */	lfs f6, 0x50(r31)
/* 800E4ED4 000E1E34  EC 7F 00 72 */	fmuls f3, f31, f1
/* 800E4ED8 000E1E38  C0 FF 00 60 */	lfs f7, 0x60(r31)
/* 800E4EDC 000E1E3C  EC 5F 00 32 */	fmuls f2, f31, f0
/* 800E4EE0 000E1E40  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 800E4EE4 000E1E44  EC A6 20 2A */	fadds f5, f6, f4
/* 800E4EE8 000E1E48  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 800E4EEC 000E1E4C  EC 87 18 2A */	fadds f4, f7, f3
/* 800E4EF0 000E1E50  EC 01 10 2A */	fadds f0, f1, f2
/* 800E4EF4 000E1E54  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800E4EF8 000E1E58  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 800E4EFC 000E1E5C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800E4F00 000E1E60  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 800E4F04 000E1E64  D0 E1 00 2C */	stfs f7, 0x2c(r1)
/* 800E4F08 000E1E68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800E4F0C 000E1E6C  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 800E4F10 000E1E70  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 800E4F14 000E1E74  4B F6 DF 79 */	bl SetTranslation__6CActorFRC9CVector3f
/* 800E4F18 000E1E78  48 00 00 94 */	b lbl_800E4FAC
lbl_800E4F1C:
/* 800E4F1C 000E1E7C  4B FF E2 69 */	bl FindFurthestRetreatPoint__7CBeetleFR13CStateManager
/* 800E4F20 000E1E80  2C 03 FF FF */	cmpwi r3, -1
/* 800E4F24 000E1E84  41 82 00 38 */	beq lbl_800E4F5C
/* 800E4F28 000E1E88  1C 03 00 0C */	mulli r0, r3, 0xc
/* 800E4F2C 000E1E8C  7F E3 FB 78 */	mr r3, r31
/* 800E4F30 000E1E90  7C 9F 02 14 */	add r4, r31, r0
/* 800E4F34 000E1E94  38 84 06 E4 */	addi r4, r4, 0x6e4
/* 800E4F38 000E1E98  4B F6 DF 55 */	bl SetTranslation__6CActorFRC9CVector3f
/* 800E4F3C 000E1E9C  7F E3 FB 78 */	mr r3, r31
/* 800E4F40 000E1EA0  7F C8 F3 78 */	mr r8, r30
/* 800E4F44 000E1EA4  38 80 00 21 */	li r4, 0x21
/* 800E4F48 000E1EA8  38 A0 00 13 */	li r5, 0x13
/* 800E4F4C 000E1EAC  38 C0 00 28 */	li r6, 0x28
/* 800E4F50 000E1EB0  38 E0 00 29 */	li r7, 0x29
/* 800E4F54 000E1EB4  4B F6 F1 AD */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 800E4F58 000E1EB8  48 00 00 30 */	b lbl_800E4F88
lbl_800E4F5C:
/* 800E4F5C 000E1EBC  7F E3 FB 78 */	mr r3, r31
/* 800E4F60 000E1EC0  7F C5 F3 78 */	mr r5, r30
/* 800E4F64 000E1EC4  38 80 00 11 */	li r4, 0x11
/* 800E4F68 000E1EC8  38 C0 FF FF */	li r6, -1
/* 800E4F6C 000E1ECC  4B F6 C1 55 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 800E4F70 000E1ED0  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800E4F74 000E1ED4  7F C3 F3 78 */	mr r3, r30
/* 800E4F78 000E1ED8  38 81 00 0C */	addi r4, r1, 0xc
/* 800E4F7C 000E1EDC  B0 01 00 08 */	sth r0, 8(r1)
/* 800E4F80 000E1EE0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800E4F84 000E1EE4  4B F6 72 E9 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
lbl_800E4F88:
/* 800E4F88 000E1EE8  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 800E4F8C 000E1EEC  38 60 00 00 */	li r3, 0
/* 800E4F90 000E1EF0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 800E4F94 000E1EF4  98 1F 04 00 */	stb r0, 0x400(r31)
/* 800E4F98 000E1EF8  C0 1F 08 1C */	lfs f0, 0x81c(r31)
/* 800E4F9C 000E1EFC  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 800E4FA0 000E1F00  88 1F 08 38 */	lbz r0, 0x838(r31)
/* 800E4FA4 000E1F04  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800E4FA8 000E1F08  98 1F 08 38 */	stb r0, 0x838(r31)
lbl_800E4FAC:
/* 800E4FAC 000E1F0C  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 800E4FB0 000E1F10  80 01 01 04 */	lwz r0, 0x104(r1)
/* 800E4FB4 000E1F14  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 800E4FB8 000E1F18  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 800E4FBC 000E1F1C  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 800E4FC0 000E1F20  7C 08 03 A6 */	mtlr r0
/* 800E4FC4 000E1F24  38 21 01 00 */	addi r1, r1, 0x100
/* 800E4FC8 000E1F28  4E 80 00 20 */	blr

.global PathFind__7CBeetleFR13CStateManager9EStateMsgf
PathFind__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E4FCC 000E1F2C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 800E4FD0 000E1F30  7C 08 02 A6 */	mflr r0
/* 800E4FD4 000E1F34  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 800E4FD8 000E1F38  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 800E4FDC 000E1F3C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 800E4FE0 000E1F40  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 800E4FE4 000E1F44  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 800E4FE8 000E1F48  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 800E4FEC 000E1F4C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 800E4FF0 000E1F50  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800E4FF4 000E1F54  93 C1 00 88 */	stw r30, 0x88(r1)
/* 800E4FF8 000E1F58  93 A1 00 84 */	stw r29, 0x84(r1)
/* 800E4FFC 000E1F5C  7C BF 2B 78 */	mr r31, r5
/* 800E5000 000E1F60  FF A0 08 90 */	fmr f29, f1
/* 800E5004 000E1F64  2C 1F 00 01 */	cmpwi r31, 1
/* 800E5008 000E1F68  7C 7D 1B 78 */	mr r29, r3
/* 800E500C 000E1F6C  7C 9E 23 78 */	mr r30, r4
/* 800E5010 000E1F70  41 82 00 54 */	beq lbl_800E5064
/* 800E5014 000E1F74  40 80 02 34 */	bge lbl_800E5248
/* 800E5018 000E1F78  2C 1F 00 00 */	cmpwi r31, 0
/* 800E501C 000E1F7C  40 80 00 08 */	bge lbl_800E5024
/* 800E5020 000E1F80  48 00 02 28 */	b lbl_800E5248
lbl_800E5024:
/* 800E5024 000E1F84  81 83 00 00 */	lwz r12, 0(r3)
/* 800E5028 000E1F88  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 800E502C 000E1F8C  7D 89 03 A6 */	mtctr r12
/* 800E5030 000E1F90  4E 80 04 21 */	bctrl
/* 800E5034 000E1F94  28 03 00 00 */	cmplwi r3, 0
/* 800E5038 000E1F98  41 82 02 10 */	beq lbl_800E5248
/* 800E503C 000E1F9C  7F A3 EB 78 */	mr r3, r29
/* 800E5040 000E1FA0  7F C4 F3 78 */	mr r4, r30
/* 800E5044 000E1FA4  38 BD 02 E0 */	addi r5, r29, 0x2e0
/* 800E5048 000E1FA8  4B FF DE C5 */	bl RefinePathFindDest__7CBeetleFR13CStateManagerR9CVector3f
/* 800E504C 000E1FAC  FC 20 E8 90 */	fmr f1, f29
/* 800E5050 000E1FB0  7F A3 EB 78 */	mr r3, r29
/* 800E5054 000E1FB4  7F C4 F3 78 */	mr r4, r30
/* 800E5058 000E1FB8  7F E5 FB 78 */	mr r5, r31
/* 800E505C 000E1FBC  48 11 16 71 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 800E5060 000E1FC0  48 00 01 E8 */	b lbl_800E5248
lbl_800E5064:
/* 800E5064 000E1FC4  80 DE 08 4C */	lwz r6, 0x84c(r30)
/* 800E5068 000E1FC8  38 A1 00 38 */	addi r5, r1, 0x38
/* 800E506C 000E1FCC  C0 46 00 60 */	lfs f2, 0x60(r6)
/* 800E5070 000E1FD0  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 800E5074 000E1FD4  C0 06 00 40 */	lfs f0, 0x40(r6)
/* 800E5078 000E1FD8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800E507C 000E1FDC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 800E5080 000E1FE0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 800E5084 000E1FE4  4B FF DE 89 */	bl RefinePathFindDest__7CBeetleFR13CStateManagerR9CVector3f
/* 800E5088 000E1FE8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 800E508C 000E1FEC  7F A3 EB 78 */	mr r3, r29
/* 800E5090 000E1FF0  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 800E5094 000E1FF4  7F C4 F3 78 */	mr r4, r30
/* 800E5098 000E1FF8  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 800E509C 000E1FFC  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 800E50A0 000E2000  EC 81 00 28 */	fsubs f4, f1, f0
/* 800E50A4 000E2004  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 800E50A8 000E2008  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 800E50AC 000E200C  EC 43 10 28 */	fsubs f2, f3, f2
/* 800E50B0 000E2010  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 800E50B4 000E2014  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E50B8 000E2018  C0 22 8F E4 */	lfs f1, lbl_805AAD04@sda21(r2)
/* 800E50BC 000E201C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800E50C0 000E2020  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800E50C4 000E2024  81 9D 00 00 */	lwz r12, 0(r29)
/* 800E50C8 000E2028  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800E50CC 000E202C  7D 89 03 A6 */	mtctr r12
/* 800E50D0 000E2030  4E 80 04 21 */	bctrl
/* 800E50D4 000E2034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E50D8 000E2038  40 82 00 40 */	bne lbl_800E5118
/* 800E50DC 000E203C  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 800E50E0 000E2040  80 9D 06 C4 */	lwz r4, 0x6c4(r29)
/* 800E50E4 000E2044  38 03 FF FF */	addi r0, r3, -1
/* 800E50E8 000E2048  7C 04 00 00 */	cmpw r4, r0
/* 800E50EC 000E204C  40 80 00 2C */	bge lbl_800E5118
/* 800E50F0 000E2050  FC 20 E8 90 */	fmr f1, f29
/* 800E50F4 000E2054  7F A3 EB 78 */	mr r3, r29
/* 800E50F8 000E2058  7F C4 F3 78 */	mr r4, r30
/* 800E50FC 000E205C  7F E5 FB 78 */	mr r5, r31
/* 800E5100 000E2060  48 11 15 CD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 800E5104 000E2064  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 800E5108 000E2068  C3 A3 00 04 */	lfs f29, 4(r3)
/* 800E510C 000E206C  C3 E3 00 08 */	lfs f31, 8(r3)
/* 800E5110 000E2070  C3 C3 00 0C */	lfs f30, 0xc(r3)
/* 800E5114 000E2074  48 00 00 28 */	b lbl_800E513C
lbl_800E5118:
/* 800E5118 000E2078  C0 22 90 00 */	lfs f1, lbl_805AAD20@sda21(r2)
/* 800E511C 000E207C  7F A5 EB 78 */	mr r5, r29
/* 800E5120 000E2080  38 61 00 14 */	addi r3, r1, 0x14
/* 800E5124 000E2084  38 9D 04 5C */	addi r4, r29, 0x45c
/* 800E5128 000E2088  38 C1 00 38 */	addi r6, r1, 0x38
/* 800E512C 000E208C  48 05 99 F1 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 800E5130 000E2090  C3 A1 00 14 */	lfs f29, 0x14(r1)
/* 800E5134 000E2094  C3 E1 00 18 */	lfs f31, 0x18(r1)
/* 800E5138 000E2098  C3 C1 00 1C */	lfs f30, 0x1c(r1)
lbl_800E513C:
/* 800E513C 000E209C  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 800E5140 000E20A0  C0 9D 00 38 */	lfs f4, 0x38(r29)
/* 800E5144 000E20A4  EC 02 07 F2 */	fmuls f0, f2, f31
/* 800E5148 000E20A8  C0 BD 00 58 */	lfs f5, 0x58(r29)
/* 800E514C 000E20AC  C0 62 8F E4 */	lfs f3, lbl_805AAD04@sda21(r2)
/* 800E5150 000E20B0  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 800E5154 000E20B4  EC 04 07 7A */	fmadds f0, f4, f29, f0
/* 800E5158 000E20B8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 800E515C 000E20BC  EC 05 07 BA */	fmadds f0, f5, f30, f0
/* 800E5160 000E20C0  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 800E5164 000E20C4  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 800E5168 000E20C8  4C 41 13 82 */	cror 2, 1, 2
/* 800E516C 000E20CC  41 82 00 28 */	beq lbl_800E5194
/* 800E5170 000E20D0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800E5174 000E20D4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 800E5178 000E20D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E517C 000E20DC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 800E5180 000E20E0  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 800E5184 000E20E4  EC 05 00 BA */	fmadds f0, f5, f2, f0
/* 800E5188 000E20E8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 800E518C 000E20EC  4C 40 13 82 */	cror 2, 0, 2
/* 800E5190 000E20F0  40 82 00 48 */	bne lbl_800E51D8
lbl_800E5194:
/* 800E5194 000E20F4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E5198 000E20F8  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 800E519C 000E20FC  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E51A0 000E2100  38 81 00 60 */	addi r4, r1, 0x60
/* 800E51A4 000E2104  C0 43 00 04 */	lfs f2, 4(r3)
/* 800E51A8 000E2108  C0 23 00 08 */	lfs f1, 8(r3)
/* 800E51AC 000E210C  D3 A1 00 60 */	stfs f29, 0x60(r1)
/* 800E51B0 000E2110  D3 E1 00 64 */	stfs f31, 0x64(r1)
/* 800E51B4 000E2114  D3 C1 00 68 */	stfs f30, 0x68(r1)
/* 800E51B8 000E2118  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 800E51BC 000E211C  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 800E51C0 000E2120  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 800E51C4 000E2124  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800E51C8 000E2128  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 800E51CC 000E212C  38 63 00 04 */	addi r3, r3, 4
/* 800E51D0 000E2130  48 04 C5 49 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 800E51D4 000E2134  48 00 00 68 */	b lbl_800E523C
lbl_800E51D8:
/* 800E51D8 000E2138  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E51DC 000E213C  48 22 F5 1D */	bl CanBeNormalized__9CVector3fCFv
/* 800E51E0 000E2140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E51E4 000E2144  41 82 00 18 */	beq lbl_800E51FC
/* 800E51E8 000E2148  38 61 00 08 */	addi r3, r1, 8
/* 800E51EC 000E214C  38 81 00 2C */	addi r4, r1, 0x2c
/* 800E51F0 000E2150  48 22 F6 61 */	bl AsNormalized__9CVector3fCFv
/* 800E51F4 000E2154  38 61 00 08 */	addi r3, r1, 8
/* 800E51F8 000E2158  48 00 00 08 */	b lbl_800E5200
lbl_800E51FC:
/* 800E51FC 000E215C  38 61 00 20 */	addi r3, r1, 0x20
lbl_800E5200:
/* 800E5200 000E2160  C0 23 00 00 */	lfs f1, 0(r3)
/* 800E5204 000E2164  38 81 00 44 */	addi r4, r1, 0x44
/* 800E5208 000E2168  C0 43 00 04 */	lfs f2, 4(r3)
/* 800E520C 000E216C  C0 63 00 08 */	lfs f3, 8(r3)
/* 800E5210 000E2170  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E5214 000E2174  D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 800E5218 000E2178  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 800E521C 000E217C  D3 C1 00 4C */	stfs f30, 0x4c(r1)
/* 800E5220 000E2180  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 800E5224 000E2184  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 800E5228 000E2188  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 800E522C 000E218C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800E5230 000E2190  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 800E5234 000E2194  38 63 00 04 */	addi r3, r3, 4
/* 800E5238 000E2198  48 04 C4 E1 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_800E523C:
/* 800E523C 000E219C  7F A3 EB 78 */	mr r3, r29
/* 800E5240 000E21A0  7F C4 F3 78 */	mr r4, r30
/* 800E5244 000E21A4  4B FF E1 B9 */	bl SeparateFromMelees__7CBeetleFR13CStateManager
lbl_800E5248:
/* 800E5248 000E21A8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 800E524C 000E21AC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 800E5250 000E21B0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 800E5254 000E21B4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 800E5258 000E21B8  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 800E525C 000E21BC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 800E5260 000E21C0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800E5264 000E21C4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 800E5268 000E21C8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 800E526C 000E21CC  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 800E5270 000E21D0  7C 08 03 A6 */	mtlr r0
/* 800E5274 000E21D4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 800E5278 000E21D8  4E 80 00 20 */	blr

.global Taunt__7CBeetleFR13CStateManager9EStateMsgf
Taunt__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E527C 000E21DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E5280 000E21E0  7C 08 02 A6 */	mflr r0
/* 800E5284 000E21E4  2C 05 00 01 */	cmpwi r5, 1
/* 800E5288 000E21E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E528C 000E21EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E5290 000E21F0  7C 7F 1B 78 */	mr r31, r3
/* 800E5294 000E21F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E5298 000E21F8  41 82 00 A0 */	beq lbl_800E5338
/* 800E529C 000E21FC  40 80 00 EC */	bge lbl_800E5388
/* 800E52A0 000E2200  2C 05 00 00 */	cmpwi r5, 0
/* 800E52A4 000E2204  40 80 00 08 */	bge lbl_800E52AC
/* 800E52A8 000E2208  48 00 00 E0 */	b lbl_800E5388
lbl_800E52AC:
/* 800E52AC 000E220C  80 64 09 00 */	lwz r3, 0x900(r4)
/* 800E52B0 000E2210  48 22 D2 2D */	bl Float__9CRandom16Fv
/* 800E52B4 000E2214  C0 02 90 04 */	lfs f0, lbl_805AAD24@sda21(r2)
/* 800E52B8 000E2218  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E52BC 000E221C  40 80 00 0C */	bge lbl_800E52C8
/* 800E52C0 000E2220  38 A0 00 01 */	li r5, 1
/* 800E52C4 000E2224  48 00 00 08 */	b lbl_800E52CC
lbl_800E52C8:
/* 800E52C8 000E2228  38 A0 00 00 */	li r5, 0
lbl_800E52CC:
/* 800E52CC 000E222C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 800E52D0 000E2230  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E52D4 000E2234  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 800E52D8 000E2238  3C 80 80 3E */	lis r4, lbl_803DAA14@ha
/* 800E52DC 000E223C  90 01 00 08 */	stw r0, 8(r1)
/* 800E52E0 000E2240  38 04 AA 14 */	addi r0, r4, lbl_803DAA14@l
/* 800E52E4 000E2244  38 80 00 12 */	li r4, 0x12
/* 800E52E8 000E2248  3B C3 00 04 */	addi r30, r3, 4
/* 800E52EC 000E224C  90 81 00 0C */	stw r4, 0xc(r1)
/* 800E52F0 000E2250  7F C3 F3 78 */	mr r3, r30
/* 800E52F4 000E2254  38 80 00 12 */	li r4, 0x12
/* 800E52F8 000E2258  90 01 00 08 */	stw r0, 8(r1)
/* 800E52FC 000E225C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800E5300 000E2260  48 04 C1 39 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E5304 000E2264  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800E5308 000E2268  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 800E530C 000E226C  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 800E5310 000E2270  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E5314 000E2274  90 1E 02 14 */	stw r0, 0x214(r30)
/* 800E5318 000E2278  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 800E531C 000E227C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 800E5320 000E2280  38 00 00 02 */	li r0, 2
/* 800E5324 000E2284  90 81 00 08 */	stw r4, 8(r1)
/* 800E5328 000E2288  90 BE 02 18 */	stw r5, 0x218(r30)
/* 800E532C 000E228C  90 61 00 08 */	stw r3, 8(r1)
/* 800E5330 000E2290  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E5334 000E2294  48 00 00 54 */	b lbl_800E5388
lbl_800E5338:
/* 800E5338 000E2298  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 800E533C 000E229C  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 800E5340 000E22A0  2C 00 00 10 */	cmpwi r0, 0x10
/* 800E5344 000E22A4  41 82 00 10 */	beq lbl_800E5354
/* 800E5348 000E22A8  38 00 00 04 */	li r0, 4
/* 800E534C 000E22AC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E5350 000E22B0  48 00 00 38 */	b lbl_800E5388
lbl_800E5354:
/* 800E5354 000E22B4  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 800E5358 000E22B8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800E535C 000E22BC  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 800E5360 000E22C0  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 800E5364 000E22C4  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 800E5368 000E22C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E536C 000E22CC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 800E5370 000E22D0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 800E5374 000E22D4  EC 64 18 28 */	fsubs f3, f4, f3
/* 800E5378 000E22D8  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 800E537C 000E22DC  EC 02 08 28 */	fsubs f0, f2, f1
/* 800E5380 000E22E0  D0 65 00 20 */	stfs f3, 0x20(r5)
/* 800E5384 000E22E4  D0 05 00 24 */	stfs f0, 0x24(r5)
lbl_800E5388:
/* 800E5388 000E22E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E538C 000E22EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E5390 000E22F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E5394 000E22F4  7C 08 03 A6 */	mtlr r0
/* 800E5398 000E22F8  38 21 00 20 */	addi r1, r1, 0x20
/* 800E539C 000E22FC  4E 80 00 20 */	blr

.global Skid__7CBeetleFR13CStateManager9EStateMsgf
Skid__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E53A0 000E2300  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E53A4 000E2304  7C 08 02 A6 */	mflr r0
/* 800E53A8 000E2308  2C 05 00 01 */	cmpwi r5, 1
/* 800E53AC 000E230C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E53B0 000E2310  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E53B4 000E2314  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800E53B8 000E2318  7C 7E 1B 78 */	mr r30, r3
/* 800E53BC 000E231C  41 82 01 14 */	beq lbl_800E54D0
/* 800E53C0 000E2320  40 80 00 10 */	bge lbl_800E53D0
/* 800E53C4 000E2324  2C 05 00 00 */	cmpwi r5, 0
/* 800E53C8 000E2328  40 80 00 14 */	bge lbl_800E53DC
/* 800E53CC 000E232C  48 00 01 30 */	b lbl_800E54FC
lbl_800E53D0:
/* 800E53D0 000E2330  2C 05 00 03 */	cmpwi r5, 3
/* 800E53D4 000E2334  40 80 01 28 */	bge lbl_800E54FC
/* 800E53D8 000E2338  48 00 01 14 */	b lbl_800E54EC
lbl_800E53DC:
/* 800E53DC 000E233C  81 83 00 00 */	lwz r12, 0(r3)
/* 800E53E0 000E2340  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E53E4 000E2344  7D 89 03 A6 */	mtctr r12
/* 800E53E8 000E2348  4E 80 04 21 */	bctrl
/* 800E53EC 000E234C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E53F0 000E2350  41 82 01 0C */	beq lbl_800E54FC
/* 800E53F4 000E2354  88 1E 08 38 */	lbz r0, 0x838(r30)
/* 800E53F8 000E2358  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 800E53FC 000E235C  41 82 01 00 */	beq lbl_800E54FC
/* 800E5400 000E2360  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 800E5404 000E2364  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E5408 000E2368  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 800E540C 000E236C  38 E3 AA 68 */	addi r7, r3, lbl_803DAA68@l
/* 800E5410 000E2370  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 800E5414 000E2374  3C 80 80 3E */	lis r4, lbl_803DAA08@ha
/* 800E5418 000E2378  D0 41 00 08 */	stfs f2, 8(r1)
/* 800E541C 000E237C  38 C0 00 11 */	li r6, 0x11
/* 800E5420 000E2380  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 800E5424 000E2384  38 00 00 00 */	li r0, 0
/* 800E5428 000E2388  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800E542C 000E238C  38 A4 AA 08 */	addi r5, r4, lbl_803DAA08@l
/* 800E5430 000E2390  81 41 00 08 */	lwz r10, 8(r1)
/* 800E5434 000E2394  3B E3 00 04 */	addi r31, r3, 4
/* 800E5438 000E2398  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800E543C 000E239C  7F E3 FB 78 */	mr r3, r31
/* 800E5440 000E23A0  81 21 00 0C */	lwz r9, 0xc(r1)
/* 800E5444 000E23A4  38 80 00 11 */	li r4, 0x11
/* 800E5448 000E23A8  81 01 00 10 */	lwz r8, 0x10(r1)
/* 800E544C 000E23AC  91 41 00 14 */	stw r10, 0x14(r1)
/* 800E5450 000E23B0  91 21 00 18 */	stw r9, 0x18(r1)
/* 800E5454 000E23B4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 800E5458 000E23B8  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800E545C 000E23BC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800E5460 000E23C0  90 E1 00 20 */	stw r7, 0x20(r1)
/* 800E5464 000E23C4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800E5468 000E23C8  90 C1 00 24 */	stw r6, 0x24(r1)
/* 800E546C 000E23CC  90 A1 00 20 */	stw r5, 0x20(r1)
/* 800E5470 000E23D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 800E5474 000E23D4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 800E5478 000E23D8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800E547C 000E23DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800E5480 000E23E0  48 04 BF B9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E5484 000E23E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E5488 000E23E8  3C 60 80 3E */	lis r3, lbl_803DAA08@ha
/* 800E548C 000E23EC  38 83 AA 08 */	addi r4, r3, lbl_803DAA08@l
/* 800E5490 000E23F0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E5494 000E23F4  90 1F 01 FC */	stw r0, 0x1fc(r31)
/* 800E5498 000E23F8  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 800E549C 000E23FC  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 800E54A0 000E2400  38 00 00 02 */	li r0, 2
/* 800E54A4 000E2404  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 800E54A8 000E2408  90 DF 02 00 */	stw r6, 0x200(r31)
/* 800E54AC 000E240C  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 800E54B0 000E2410  90 BF 02 04 */	stw r5, 0x204(r31)
/* 800E54B4 000E2414  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 800E54B8 000E2418  90 DF 02 08 */	stw r6, 0x208(r31)
/* 800E54BC 000E241C  90 BF 02 0C */	stw r5, 0x20c(r31)
/* 800E54C0 000E2420  90 81 00 20 */	stw r4, 0x20(r1)
/* 800E54C4 000E2424  90 61 00 20 */	stw r3, 0x20(r1)
/* 800E54C8 000E2428  90 1E 05 68 */	stw r0, 0x568(r30)
/* 800E54CC 000E242C  48 00 00 30 */	b lbl_800E54FC
lbl_800E54D0:
/* 800E54D0 000E2430  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 800E54D4 000E2434  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 800E54D8 000E2438  2C 00 00 0F */	cmpwi r0, 0xf
/* 800E54DC 000E243C  41 82 00 20 */	beq lbl_800E54FC
/* 800E54E0 000E2440  38 00 00 04 */	li r0, 4
/* 800E54E4 000E2444  90 1E 05 68 */	stw r0, 0x568(r30)
/* 800E54E8 000E2448  48 00 00 14 */	b lbl_800E54FC
lbl_800E54EC:
/* 800E54EC 000E244C  88 1E 08 38 */	lbz r0, 0x838(r30)
/* 800E54F0 000E2450  38 60 00 00 */	li r3, 0
/* 800E54F4 000E2454  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 800E54F8 000E2458  98 1E 08 38 */	stb r0, 0x838(r30)
lbl_800E54FC:
/* 800E54FC 000E245C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E5500 000E2460  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E5504 000E2464  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800E5508 000E2468  7C 08 03 A6 */	mtlr r0
/* 800E550C 000E246C  38 21 00 40 */	addi r1, r1, 0x40
/* 800E5510 000E2470  4E 80 00 20 */	blr

.global PatternOver__7CBeetleFR13CStateManagerf
PatternOver__7CBeetleFR13CStateManagerf:
/* 800E5514 000E2474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E5518 000E2478  7C 08 02 A6 */	mflr r0
/* 800E551C 000E247C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E5520 000E2480  81 83 00 00 */	lwz r12, 0(r3)
/* 800E5524 000E2484  81 8C 01 D8 */	lwz r12, 0x1d8(r12)
/* 800E5528 000E2488  7D 89 03 A6 */	mtctr r12
/* 800E552C 000E248C  4E 80 04 21 */	bctrl
/* 800E5530 000E2490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E5534 000E2494  7C 08 03 A6 */	mtlr r0
/* 800E5538 000E2498  38 21 00 10 */	addi r1, r1, 0x10
/* 800E553C 000E249C  4E 80 00 20 */	blr

.global ShotAt__7CBeetleFR13CStateManagerf
ShotAt__7CBeetleFR13CStateManagerf:
/* 800E5540 000E24A0  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 800E5544 000E24A4  2C 00 00 02 */	cmpwi r0, 2
/* 800E5548 000E24A8  40 82 00 28 */	bne lbl_800E5570
/* 800E554C 000E24AC  80 03 06 E0 */	lwz r0, 0x6e0(r3)
/* 800E5550 000E24B0  2C 00 00 00 */	cmpwi r0, 0
/* 800E5554 000E24B4  40 81 00 1C */	ble lbl_800E5570
/* 800E5558 000E24B8  88 03 04 00 */	lbz r0, 0x400(r3)
/* 800E555C 000E24BC  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 800E5560 000E24C0  7C 03 00 D0 */	neg r0, r3
/* 800E5564 000E24C4  7C 00 1B 78 */	or r0, r0, r3
/* 800E5568 000E24C8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800E556C 000E24CC  4E 80 00 20 */	blr
lbl_800E5570:
/* 800E5570 000E24D0  38 60 00 00 */	li r3, 0
/* 800E5574 000E24D4  4E 80 00 20 */	blr

.global ShouldTaunt__7CBeetleFR13CStateManagerf
ShouldTaunt__7CBeetleFR13CStateManagerf:
/* 800E5578 000E24D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E557C 000E24DC  7C 08 02 A6 */	mflr r0
/* 800E5580 000E24E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E5584 000E24E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E5588 000E24E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E558C 000E24EC  7C 7F 1B 78 */	mr r31, r3
/* 800E5590 000E24F0  A0 C3 00 08 */	lhz r6, 8(r3)
/* 800E5594 000E24F4  7C 83 23 78 */	mr r3, r4
/* 800E5598 000E24F8  38 81 00 10 */	addi r4, r1, 0x10
/* 800E559C 000E24FC  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 800E55A0 000E2500  A0 1F 05 70 */	lhz r0, 0x570(r31)
/* 800E55A4 000E2504  B0 C1 00 08 */	sth r6, 8(r1)
/* 800E55A8 000E2508  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E55AC 000E250C  48 15 4B D5 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 800E55B0 000E2510  28 03 00 00 */	cmplwi r3, 0
/* 800E55B4 000E2514  41 82 00 5C */	beq lbl_800E5610
/* 800E55B8 000E2518  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800E55BC 000E251C  2C 00 00 03 */	cmpwi r0, 3
/* 800E55C0 000E2520  41 82 00 0C */	beq lbl_800E55CC
/* 800E55C4 000E2524  2C 00 00 04 */	cmpwi r0, 4
/* 800E55C8 000E2528  40 82 00 48 */	bne lbl_800E5610
lbl_800E55CC:
/* 800E55CC 000E252C  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 800E55D0 000E2530  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 800E55D4 000E2534  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 800E55D8 000E2538  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E55DC 000E253C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800E55E0 000E2540  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 800E55E4 000E2544  EC 63 00 28 */	fsubs f3, f3, f0
/* 800E55E8 000E2548  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 800E55EC 000E254C  EC 21 00 72 */	fmuls f1, f1, f1
/* 800E55F0 000E2550  EC 42 00 28 */	fsubs f2, f2, f0
/* 800E55F4 000E2554  C0 02 8F DC */	lfs f0, lbl_805AACFC@sda21(r2)
/* 800E55F8 000E2558  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 800E55FC 000E255C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 800E5600 000E2560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E5604 000E2564  7C 00 00 26 */	mfcr r0
/* 800E5608 000E2568  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800E560C 000E256C  48 00 00 08 */	b lbl_800E5614
lbl_800E5610:
/* 800E5610 000E2570  38 60 00 00 */	li r3, 0
lbl_800E5614:
/* 800E5614 000E2574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E5618 000E2578  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E561C 000E257C  7C 08 03 A6 */	mtlr r0
/* 800E5620 000E2580  38 21 00 20 */	addi r1, r1, 0x20
/* 800E5624 000E2584  4E 80 00 20 */	blr

.global AnimOver__7CBeetleFR13CStateManagerf
AnimOver__7CBeetleFR13CStateManagerf:
/* 800E5628 000E2588  80 03 05 68 */	lwz r0, 0x568(r3)
/* 800E562C 000E258C  20 00 00 04 */	subfic r0, r0, 4
/* 800E5630 000E2590  7C 00 00 34 */	cntlzw r0, r0
/* 800E5634 000E2594  54 03 D9 7E */	srwi r3, r0, 5
/* 800E5638 000E2598  4E 80 00 20 */	blr

.global TurnAround__7CBeetleFR13CStateManager9EStateMsgf
TurnAround__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E563C 000E259C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E5640 000E25A0  7C 08 02 A6 */	mflr r0
/* 800E5644 000E25A4  2C 05 00 01 */	cmpwi r5, 1
/* 800E5648 000E25A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E564C 000E25AC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800E5650 000E25B0  7C 7F 1B 78 */	mr r31, r3
/* 800E5654 000E25B4  41 82 00 20 */	beq lbl_800E5674
/* 800E5658 000E25B8  40 80 01 2C */	bge lbl_800E5784
/* 800E565C 000E25BC  2C 05 00 00 */	cmpwi r5, 0
/* 800E5660 000E25C0  40 80 00 08 */	bge lbl_800E5668
/* 800E5664 000E25C4  48 00 01 20 */	b lbl_800E5784
lbl_800E5668:
/* 800E5668 000E25C8  38 00 00 00 */	li r0, 0
/* 800E566C 000E25CC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E5670 000E25D0  48 00 01 14 */	b lbl_800E5784
lbl_800E5674:
/* 800E5674 000E25D4  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 800E5678 000E25D8  2C 00 00 01 */	cmpwi r0, 1
/* 800E567C 000E25DC  41 82 01 08 */	beq lbl_800E5784
/* 800E5680 000E25E0  40 80 00 10 */	bge lbl_800E5690
/* 800E5684 000E25E4  2C 00 00 00 */	cmpwi r0, 0
/* 800E5688 000E25E8  40 80 00 14 */	bge lbl_800E569C
/* 800E568C 000E25EC  48 00 00 F8 */	b lbl_800E5784
lbl_800E5690:
/* 800E5690 000E25F0  2C 00 00 03 */	cmpwi r0, 3
/* 800E5694 000E25F4  40 80 00 F0 */	bge lbl_800E5784
/* 800E5698 000E25F8  48 00 00 D4 */	b lbl_800E576C
lbl_800E569C:
/* 800E569C 000E25FC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E56A0 000E2600  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 800E56A4 000E2604  2C 00 00 08 */	cmpwi r0, 8
/* 800E56A8 000E2608  40 82 00 10 */	bne lbl_800E56B8
/* 800E56AC 000E260C  38 00 00 02 */	li r0, 2
/* 800E56B0 000E2610  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E56B4 000E2614  48 00 00 D0 */	b lbl_800E5784
lbl_800E56B8:
/* 800E56B8 000E2618  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 800E56BC 000E261C  38 61 00 14 */	addi r3, r1, 0x14
/* 800E56C0 000E2620  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 800E56C4 000E2624  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 800E56C8 000E2628  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 800E56CC 000E262C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 800E56D0 000E2630  EC 81 00 28 */	fsubs f4, f1, f0
/* 800E56D4 000E2634  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 800E56D8 000E2638  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800E56DC 000E263C  EC 43 10 28 */	fsubs f2, f3, f2
/* 800E56E0 000E2640  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E56E4 000E2644  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 800E56E8 000E2648  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800E56EC 000E264C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E56F0 000E2650  48 22 F1 C9 */	bl Magnitude__9CVector3fCFv
/* 800E56F4 000E2654  C0 02 90 08 */	lfs f0, lbl_805AAD28@sda21(r2)
/* 800E56F8 000E2658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E56FC 000E265C  40 81 00 18 */	ble lbl_800E5714
/* 800E5700 000E2660  38 61 00 08 */	addi r3, r1, 8
/* 800E5704 000E2664  38 81 00 14 */	addi r4, r1, 0x14
/* 800E5708 000E2668  48 22 F1 49 */	bl AsNormalized__9CVector3fCFv
/* 800E570C 000E266C  38 81 00 08 */	addi r4, r1, 8
/* 800E5710 000E2670  48 00 00 0C */	b lbl_800E571C
lbl_800E5714:
/* 800E5714 000E2674  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E5718 000E2678  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
lbl_800E571C:
/* 800E571C 000E267C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E5720 000E2680  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 800E5724 000E2684  C0 84 00 00 */	lfs f4, 0(r4)
/* 800E5728 000E2688  C0 A4 00 04 */	lfs f5, 4(r4)
/* 800E572C 000E268C  C0 C4 00 08 */	lfs f6, 8(r4)
/* 800E5730 000E2690  38 81 00 20 */	addi r4, r1, 0x20
/* 800E5734 000E2694  C0 43 00 04 */	lfs f2, 4(r3)
/* 800E5738 000E2698  C0 23 00 08 */	lfs f1, 8(r3)
/* 800E573C 000E269C  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E5740 000E26A0  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 800E5744 000E26A4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 800E5748 000E26A8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800E574C 000E26AC  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 800E5750 000E26B0  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 800E5754 000E26B4  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 800E5758 000E26B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800E575C 000E26BC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E5760 000E26C0  38 63 00 04 */	addi r3, r3, 4
/* 800E5764 000E26C4  48 04 BF B5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 800E5768 000E26C8  48 00 00 1C */	b lbl_800E5784
lbl_800E576C:
/* 800E576C 000E26CC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E5770 000E26D0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 800E5774 000E26D4  2C 00 00 08 */	cmpwi r0, 8
/* 800E5778 000E26D8  41 82 00 0C */	beq lbl_800E5784
/* 800E577C 000E26DC  38 00 00 04 */	li r0, 4
/* 800E5780 000E26E0  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_800E5784:
/* 800E5784 000E26E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E5788 000E26E8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800E578C 000E26EC  7C 08 03 A6 */	mtlr r0
/* 800E5790 000E26F0  38 21 00 50 */	addi r1, r1, 0x50
/* 800E5794 000E26F4  4E 80 00 20 */	blr

.global ShouldTurn__7CBeetleFR13CStateManagerf
ShouldTurn__7CBeetleFR13CStateManagerf:
/* 800E5798 000E26F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800E579C 000E26FC  7C 08 02 A6 */	mflr r0
/* 800E57A0 000E2700  90 01 00 64 */	stw r0, 0x64(r1)
/* 800E57A4 000E2704  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800E57A8 000E2708  7C 7F 1B 78 */	mr r31, r3
/* 800E57AC 000E270C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 800E57B0 000E2710  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 800E57B4 000E2714  38 61 00 10 */	addi r3, r1, 0x10
/* 800E57B8 000E2718  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 800E57BC 000E271C  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 800E57C0 000E2720  EC 44 08 28 */	fsubs f2, f4, f1
/* 800E57C4 000E2724  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 800E57C8 000E2728  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 800E57CC 000E272C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 800E57D0 000E2730  EC 20 08 28 */	fsubs f1, f0, f1
/* 800E57D4 000E2734  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800E57D8 000E2738  EC 65 18 28 */	fsubs f3, f5, f3
/* 800E57DC 000E273C  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 800E57E0 000E2740  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 800E57E4 000E2744  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 800E57E8 000E2748  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800E57EC 000E274C  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 800E57F0 000E2750  48 22 EA 11 */	bl __ct__9CVector2fFff
/* 800E57F4 000E2754  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800E57F8 000E2758  38 61 00 08 */	addi r3, r1, 8
/* 800E57FC 000E275C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800E5800 000E2760  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800E5804 000E2764  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E5808 000E2768  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 800E580C 000E276C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 800E5810 000E2770  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 800E5814 000E2774  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800E5818 000E2778  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 800E581C 000E277C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800E5820 000E2780  48 22 E9 E1 */	bl __ct__9CVector2fFff
/* 800E5824 000E2784  C0 21 00 08 */	lfs f1, 8(r1)
/* 800E5828 000E2788  38 61 00 18 */	addi r3, r1, 0x18
/* 800E582C 000E278C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800E5830 000E2790  38 81 00 20 */	addi r4, r1, 0x20
/* 800E5834 000E2794  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800E5838 000E2798  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800E583C 000E279C  48 22 E7 89 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 800E5840 000E27A0  C0 02 90 0C */	lfs f0, lbl_805AAD2C@sda21(r2)
/* 800E5844 000E27A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E5848 000E27A8  7C 00 00 26 */	mfcr r0
/* 800E584C 000E27AC  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 800E5850 000E27B0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800E5854 000E27B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800E5858 000E27B8  7C 08 03 A6 */	mtlr r0
/* 800E585C 000E27BC  38 21 00 60 */	addi r1, r1, 0x60
/* 800E5860 000E27C0  4E 80 00 20 */	blr

.global Stuck__7CBeetleFR13CStateManagerf
Stuck__7CBeetleFR13CStateManagerf:
/* 800E5864 000E27C4  80 63 08 20 */	lwz r3, 0x820(r3)
/* 800E5868 000E27C8  38 00 00 1E */	li r0, 0x1e
/* 800E586C 000E27CC  7C 60 02 78 */	xor r0, r3, r0
/* 800E5870 000E27D0  7C 00 00 34 */	cntlzw r0, r0
/* 800E5874 000E27D4  7C 60 00 30 */	slw r0, r3, r0
/* 800E5878 000E27D8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800E587C 000E27DC  4E 80 00 20 */	blr

.global HitSomething__7CBeetleFR13CStateManagerf
HitSomething__7CBeetleFR13CStateManagerf:
/* 800E5880 000E27E0  88 03 08 38 */	lbz r0, 0x838(r3)
/* 800E5884 000E27E4  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 800E5888 000E27E8  4E 80 00 20 */	blr

.global Shuffle__7CBeetleFR13CStateManager9EStateMsgf
Shuffle__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E588C 000E27EC  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 800E5890 000E27F0  7C 08 02 A6 */	mflr r0
/* 800E5894 000E27F4  90 01 01 34 */	stw r0, 0x134(r1)
/* 800E5898 000E27F8  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 800E589C 000E27FC  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 800E58A0 000E2800  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 800E58A4 000E2804  F3 C1 01 18 */	psq_st f30, 280(r1), 0, qr0
/* 800E58A8 000E2808  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 800E58AC 000E280C  F3 A1 01 08 */	psq_st f29, 264(r1), 0, qr0
/* 800E58B0 000E2810  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 800E58B4 000E2814  F3 81 00 F8 */	psq_st f28, 248(r1), 0, qr0
/* 800E58B8 000E2818  93 E1 00 EC */	stw r31, 0xec(r1)
/* 800E58BC 000E281C  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 800E58C0 000E2820  2C 05 00 01 */	cmpwi r5, 1
/* 800E58C4 000E2824  7C 7F 1B 78 */	mr r31, r3
/* 800E58C8 000E2828  41 82 00 28 */	beq lbl_800E58F0
/* 800E58CC 000E282C  40 80 03 9C */	bge lbl_800E5C68
/* 800E58D0 000E2830  2C 05 00 00 */	cmpwi r5, 0
/* 800E58D4 000E2834  40 80 00 08 */	bge lbl_800E58DC
/* 800E58D8 000E2838  48 00 03 90 */	b lbl_800E5C68
lbl_800E58DC:
/* 800E58DC 000E283C  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 800E58E0 000E2840  38 60 00 00 */	li r3, 0
/* 800E58E4 000E2844  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 800E58E8 000E2848  98 1F 03 28 */	stb r0, 0x328(r31)
/* 800E58EC 000E284C  48 00 03 7C */	b lbl_800E5C68
lbl_800E58F0:
/* 800E58F0 000E2850  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 800E58F4 000E2854  38 61 00 9C */	addi r3, r1, 0x9c
/* 800E58F8 000E2858  C0 5F 02 FC */	lfs f2, 0x2fc(r31)
/* 800E58FC 000E285C  C0 3F 03 00 */	lfs f1, 0x300(r31)
/* 800E5900 000E2860  C3 A4 00 60 */	lfs f29, 0x60(r4)
/* 800E5904 000E2864  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 800E5908 000E2868  EC 42 08 2A */	fadds f2, f2, f1
/* 800E590C 000E286C  C0 62 8F D0 */	lfs f3, lbl_805AACF0@sda21(r2)
/* 800E5910 000E2870  C3 C4 00 50 */	lfs f30, 0x50(r4)
/* 800E5914 000E2874  EC 80 E8 28 */	fsubs f4, f0, f29
/* 800E5918 000E2878  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 800E591C 000E287C  EF 83 00 B2 */	fmuls f28, f3, f2
/* 800E5920 000E2880  C3 E4 00 40 */	lfs f31, 0x40(r4)
/* 800E5924 000E2884  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800E5928 000E2888  EC 21 F0 28 */	fsubs f1, f1, f30
/* 800E592C 000E288C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 800E5930 000E2890  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 800E5934 000E2894  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 800E5938 000E2898  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 800E593C 000E289C  48 22 ED BD */	bl CanBeNormalized__9CVector3fCFv
/* 800E5940 000E28A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E5944 000E28A4  41 82 00 54 */	beq lbl_800E5998
/* 800E5948 000E28A8  38 61 00 84 */	addi r3, r1, 0x84
/* 800E594C 000E28AC  38 81 00 9C */	addi r4, r1, 0x9c
/* 800E5950 000E28B0  48 22 EF 01 */	bl AsNormalized__9CVector3fCFv
/* 800E5954 000E28B4  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 800E5958 000E28B8  38 61 00 6C */	addi r3, r1, 0x6c
/* 800E595C 000E28BC  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 800E5960 000E28C0  EC 7C 00 32 */	fmuls f3, f28, f0
/* 800E5964 000E28C4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 800E5968 000E28C8  EC 5C 00 72 */	fmuls f2, f28, f1
/* 800E596C 000E28CC  EC 3C 00 32 */	fmuls f1, f28, f0
/* 800E5970 000E28D0  EC 9D 18 2A */	fadds f4, f29, f3
/* 800E5974 000E28D4  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 800E5978 000E28D8  EC 1F 10 2A */	fadds f0, f31, f2
/* 800E597C 000E28DC  EC 7E 08 2A */	fadds f3, f30, f1
/* 800E5980 000E28E0  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 800E5984 000E28E4  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 800E5988 000E28E8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800E598C 000E28EC  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 800E5990 000E28F0  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 800E5994 000E28F4  48 00 00 50 */	b lbl_800E59E4
lbl_800E5998:
/* 800E5998 000E28F8  C0 DF 00 58 */	lfs f6, 0x58(r31)
/* 800E599C 000E28FC  38 61 00 48 */	addi r3, r1, 0x48
/* 800E59A0 000E2900  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 800E59A4 000E2904  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 800E59A8 000E2908  EC 5C 01 B2 */	fmuls f2, f28, f6
/* 800E59AC 000E290C  EC 7C 00 72 */	fmuls f3, f28, f1
/* 800E59B0 000E2910  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 800E59B4 000E2914  EC 3C 00 32 */	fmuls f1, f28, f0
/* 800E59B8 000E2918  EC 9D 10 2A */	fadds f4, f29, f2
/* 800E59BC 000E291C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800E59C0 000E2920  EC BE 18 2A */	fadds f5, f30, f3
/* 800E59C4 000E2924  EC 1F 08 2A */	fadds f0, f31, f1
/* 800E59C8 000E2928  D0 C1 00 68 */	stfs f6, 0x68(r1)
/* 800E59CC 000E292C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 800E59D0 000E2930  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 800E59D4 000E2934  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 800E59D8 000E2938  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800E59DC 000E293C  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 800E59E0 000E2940  D0 81 00 50 */	stfs f4, 0x50(r1)
lbl_800E59E4:
/* 800E59E4 000E2944  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 800E59E8 000E2948  C0 03 00 04 */	lfs f0, 4(r3)
/* 800E59EC 000E294C  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 800E59F0 000E2950  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E59F4 000E2954  C0 03 00 00 */	lfs f0, 0(r3)
/* 800E59F8 000E2958  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 800E59FC 000E295C  EC 63 00 28 */	fsubs f3, f3, f0
/* 800E5A00 000E2960  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E5A04 000E2964  EC 21 00 72 */	fmuls f1, f1, f1
/* 800E5A08 000E2968  EC 42 00 28 */	fsubs f2, f2, f0
/* 800E5A0C 000E296C  C0 02 8F CC */	lfs f0, lbl_805AACEC@sda21(r2)
/* 800E5A10 000E2970  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 800E5A14 000E2974  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 800E5A18 000E2978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E5A1C 000E297C  40 81 02 3C */	ble lbl_800E5C58
/* 800E5A20 000E2980  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 800E5A24 000E2984  7F E3 FB 78 */	mr r3, r31
/* 800E5A28 000E2988  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 800E5A2C 000E298C  38 81 00 3C */	addi r4, r1, 0x3c
/* 800E5A30 000E2990  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 800E5A34 000E2994  FC 40 10 50 */	fneg f2, f2
/* 800E5A38 000E2998  FC 20 08 50 */	fneg f1, f1
/* 800E5A3C 000E299C  FC 00 00 50 */	fneg f0, f0
/* 800E5A40 000E29A0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 800E5A44 000E29A4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 800E5A48 000E29A8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800E5A4C 000E29AC  48 10 F2 C1 */	bl GetStepDirection__10CPatternedFRC9CVector3f
/* 800E5A50 000E29B0  2C 03 00 02 */	cmpwi r3, 2
/* 800E5A54 000E29B4  40 80 00 10 */	bge lbl_800E5A64
/* 800E5A58 000E29B8  2C 03 00 00 */	cmpwi r3, 0
/* 800E5A5C 000E29BC  40 80 00 14 */	bge lbl_800E5A70
/* 800E5A60 000E29C0  48 00 01 CC */	b lbl_800E5C2C
lbl_800E5A64:
/* 800E5A64 000E29C4  2C 03 00 04 */	cmpwi r3, 4
/* 800E5A68 000E29C8  40 80 01 C4 */	bge lbl_800E5C2C
/* 800E5A6C 000E29CC  48 00 01 50 */	b lbl_800E5BBC
lbl_800E5A70:
/* 800E5A70 000E29D0  C0 3F 03 00 */	lfs f1, 0x300(r31)
/* 800E5A74 000E29D4  7F E5 FB 78 */	mr r5, r31
/* 800E5A78 000E29D8  38 61 00 30 */	addi r3, r1, 0x30
/* 800E5A7C 000E29DC  38 9F 04 5C */	addi r4, r31, 0x45c
/* 800E5A80 000E29E0  38 DF 02 E0 */	addi r6, r31, 0x2e0
/* 800E5A84 000E29E4  48 05 90 99 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 800E5A88 000E29E8  C3 A1 00 34 */	lfs f29, 0x34(r1)
/* 800E5A8C 000E29EC  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 800E5A90 000E29F0  C3 E1 00 30 */	lfs f31, 0x30(r1)
/* 800E5A94 000E29F4  EC 02 07 72 */	fmuls f0, f2, f29
/* 800E5A98 000E29F8  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 800E5A9C 000E29FC  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 800E5AA0 000E2A00  C3 C1 00 38 */	lfs f30, 0x38(r1)
/* 800E5AA4 000E2A04  EC 04 07 FA */	fmadds f0, f4, f31, f0
/* 800E5AA8 000E2A08  C0 62 8F E4 */	lfs f3, lbl_805AAD04@sda21(r2)
/* 800E5AAC 000E2A0C  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 800E5AB0 000E2A10  EC 05 07 BA */	fmadds f0, f5, f30, f0
/* 800E5AB4 000E2A14  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 800E5AB8 000E2A18  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 800E5ABC 000E2A1C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 800E5AC0 000E2A20  4C 41 13 82 */	cror 2, 1, 2
/* 800E5AC4 000E2A24  41 82 00 28 */	beq lbl_800E5AEC
/* 800E5AC8 000E2A28  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 800E5ACC 000E2A2C  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 800E5AD0 000E2A30  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E5AD4 000E2A34  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 800E5AD8 000E2A38  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 800E5ADC 000E2A3C  EC 05 00 BA */	fmadds f0, f5, f2, f0
/* 800E5AE0 000E2A40  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 800E5AE4 000E2A44  4C 41 13 82 */	cror 2, 1, 2
/* 800E5AE8 000E2A48  40 82 00 48 */	bne lbl_800E5B30
lbl_800E5AEC:
/* 800E5AEC 000E2A4C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E5AF0 000E2A50  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 800E5AF4 000E2A54  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E5AF8 000E2A58  38 81 00 C4 */	addi r4, r1, 0xc4
/* 800E5AFC 000E2A5C  C0 43 00 04 */	lfs f2, 4(r3)
/* 800E5B00 000E2A60  C0 23 00 08 */	lfs f1, 8(r3)
/* 800E5B04 000E2A64  D3 E1 00 C4 */	stfs f31, 0xc4(r1)
/* 800E5B08 000E2A68  D3 A1 00 C8 */	stfs f29, 0xc8(r1)
/* 800E5B0C 000E2A6C  D3 C1 00 CC */	stfs f30, 0xcc(r1)
/* 800E5B10 000E2A70  D0 61 00 D0 */	stfs f3, 0xd0(r1)
/* 800E5B14 000E2A74  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 800E5B18 000E2A78  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 800E5B1C 000E2A7C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800E5B20 000E2A80  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E5B24 000E2A84  38 63 00 04 */	addi r3, r3, 4
/* 800E5B28 000E2A88  48 04 BB F1 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 800E5B2C 000E2A8C  48 00 01 00 */	b lbl_800E5C2C
lbl_800E5B30:
/* 800E5B30 000E2A90  38 61 00 9C */	addi r3, r1, 0x9c
/* 800E5B34 000E2A94  48 22 EB C5 */	bl CanBeNormalized__9CVector3fCFv
/* 800E5B38 000E2A98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E5B3C 000E2A9C  41 82 00 3C */	beq lbl_800E5B78
/* 800E5B40 000E2AA0  38 61 00 24 */	addi r3, r1, 0x24
/* 800E5B44 000E2AA4  38 81 00 9C */	addi r4, r1, 0x9c
/* 800E5B48 000E2AA8  48 22 ED 09 */	bl AsNormalized__9CVector3fCFv
/* 800E5B4C 000E2AAC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 800E5B50 000E2AB0  38 61 00 18 */	addi r3, r1, 0x18
/* 800E5B54 000E2AB4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800E5B58 000E2AB8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800E5B5C 000E2ABC  FC 40 10 50 */	fneg f2, f2
/* 800E5B60 000E2AC0  FC 20 08 50 */	fneg f1, f1
/* 800E5B64 000E2AC4  FC 00 00 50 */	fneg f0, f0
/* 800E5B68 000E2AC8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800E5B6C 000E2ACC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800E5B70 000E2AD0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800E5B74 000E2AD4  48 00 00 08 */	b lbl_800E5B7C
lbl_800E5B78:
/* 800E5B78 000E2AD8  38 61 00 90 */	addi r3, r1, 0x90
lbl_800E5B7C:
/* 800E5B7C 000E2ADC  C0 23 00 00 */	lfs f1, 0(r3)
/* 800E5B80 000E2AE0  38 81 00 A8 */	addi r4, r1, 0xa8
/* 800E5B84 000E2AE4  C0 43 00 04 */	lfs f2, 4(r3)
/* 800E5B88 000E2AE8  C0 63 00 08 */	lfs f3, 8(r3)
/* 800E5B8C 000E2AEC  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E5B90 000E2AF0  D3 E1 00 A8 */	stfs f31, 0xa8(r1)
/* 800E5B94 000E2AF4  D3 A1 00 AC */	stfs f29, 0xac(r1)
/* 800E5B98 000E2AF8  D3 C1 00 B0 */	stfs f30, 0xb0(r1)
/* 800E5B9C 000E2AFC  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 800E5BA0 000E2B00  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 800E5BA4 000E2B04  D0 61 00 BC */	stfs f3, 0xbc(r1)
/* 800E5BA8 000E2B08  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800E5BAC 000E2B0C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E5BB0 000E2B10  38 63 00 04 */	addi r3, r3, 4
/* 800E5BB4 000E2B14  48 04 BB 65 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 800E5BB8 000E2B18  48 00 00 74 */	b lbl_800E5C2C
lbl_800E5BBC:
/* 800E5BBC 000E2B1C  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 800E5BC0 000E2B20  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 800E5BC4 000E2B24  38 05 AA 68 */	addi r0, r5, lbl_803DAA68@l
/* 800E5BC8 000E2B28  3C A0 80 3E */	lis r5, lbl_803DA9E4@ha
/* 800E5BCC 000E2B2C  90 01 00 08 */	stw r0, 8(r1)
/* 800E5BD0 000E2B30  38 A5 A9 E4 */	addi r5, r5, lbl_803DA9E4@l
/* 800E5BD4 000E2B34  38 C0 00 01 */	li r6, 1
/* 800E5BD8 000E2B38  38 00 00 00 */	li r0, 0
/* 800E5BDC 000E2B3C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 800E5BE0 000E2B40  3B C4 00 04 */	addi r30, r4, 4
/* 800E5BE4 000E2B44  38 80 00 01 */	li r4, 1
/* 800E5BE8 000E2B48  90 61 00 10 */	stw r3, 0x10(r1)
/* 800E5BEC 000E2B4C  7F C3 F3 78 */	mr r3, r30
/* 800E5BF0 000E2B50  90 A1 00 08 */	stw r5, 8(r1)
/* 800E5BF4 000E2B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E5BF8 000E2B58  48 04 B8 41 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E5BFC 000E2B5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800E5C00 000E2B60  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 800E5C04 000E2B64  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 800E5C08 000E2B68  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E5C0C 000E2B6C  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 800E5C10 000E2B70  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E5C14 000E2B74  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 800E5C18 000E2B78  90 81 00 08 */	stw r4, 8(r1)
/* 800E5C1C 000E2B7C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800E5C20 000E2B80  90 BE 00 CC */	stw r5, 0xcc(r30)
/* 800E5C24 000E2B84  90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 800E5C28 000E2B88  90 01 00 08 */	stw r0, 8(r1)
lbl_800E5C2C:
/* 800E5C2C 000E2B8C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 800E5C30 000E2B90  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 800E5C34 000E2B94  FC 00 00 50 */	fneg f0, f0
/* 800E5C38 000E2B98  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 800E5C3C 000E2B9C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E5C40 000E2BA0  FC 20 08 50 */	fneg f1, f1
/* 800E5C44 000E2BA4  FC 40 10 50 */	fneg f2, f2
/* 800E5C48 000E2BA8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800E5C4C 000E2BAC  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 800E5C50 000E2BB0  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 800E5C54 000E2BB4  48 00 00 14 */	b lbl_800E5C68
lbl_800E5C58:
/* 800E5C58 000E2BB8  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 800E5C5C 000E2BBC  38 60 00 01 */	li r3, 1
/* 800E5C60 000E2BC0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 800E5C64 000E2BC4  98 1F 03 28 */	stb r0, 0x328(r31)
lbl_800E5C68:
/* 800E5C68 000E2BC8  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 800E5C6C 000E2BCC  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 800E5C70 000E2BD0  E3 C1 01 18 */	psq_l f30, 280(r1), 0, qr0
/* 800E5C74 000E2BD4  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 800E5C78 000E2BD8  E3 A1 01 08 */	psq_l f29, 264(r1), 0, qr0
/* 800E5C7C 000E2BDC  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 800E5C80 000E2BE0  E3 81 00 F8 */	psq_l f28, 248(r1), 0, qr0
/* 800E5C84 000E2BE4  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 800E5C88 000E2BE8  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 800E5C8C 000E2BEC  80 01 01 34 */	lwz r0, 0x134(r1)
/* 800E5C90 000E2BF0  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 800E5C94 000E2BF4  7C 08 03 A6 */	mtlr r0
/* 800E5C98 000E2BF8  38 21 01 30 */	addi r1, r1, 0x130
/* 800E5C9C 000E2BFC  4E 80 00 20 */	blr

.global DoubleSnap__7CBeetleFR13CStateManager9EStateMsgf
DoubleSnap__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E5CA0 000E2C00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E5CA4 000E2C04  7C 08 02 A6 */	mflr r0
/* 800E5CA8 000E2C08  2C 05 00 01 */	cmpwi r5, 1
/* 800E5CAC 000E2C0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E5CB0 000E2C10  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E5CB4 000E2C14  41 82 00 20 */	beq lbl_800E5CD4
/* 800E5CB8 000E2C18  40 80 01 50 */	bge lbl_800E5E08
/* 800E5CBC 000E2C1C  2C 05 00 00 */	cmpwi r5, 0
/* 800E5CC0 000E2C20  40 80 00 08 */	bge lbl_800E5CC8
/* 800E5CC4 000E2C24  48 00 01 44 */	b lbl_800E5E08
lbl_800E5CC8:
/* 800E5CC8 000E2C28  38 00 00 00 */	li r0, 0
/* 800E5CCC 000E2C2C  90 03 05 68 */	stw r0, 0x568(r3)
/* 800E5CD0 000E2C30  48 00 01 38 */	b lbl_800E5E08
lbl_800E5CD4:
/* 800E5CD4 000E2C34  80 03 05 68 */	lwz r0, 0x568(r3)
/* 800E5CD8 000E2C38  2C 00 00 01 */	cmpwi r0, 1
/* 800E5CDC 000E2C3C  41 82 01 2C */	beq lbl_800E5E08
/* 800E5CE0 000E2C40  40 80 00 10 */	bge lbl_800E5CF0
/* 800E5CE4 000E2C44  2C 00 00 00 */	cmpwi r0, 0
/* 800E5CE8 000E2C48  40 80 00 14 */	bge lbl_800E5CFC
/* 800E5CEC 000E2C4C  48 00 01 1C */	b lbl_800E5E08
lbl_800E5CF0:
/* 800E5CF0 000E2C50  2C 00 00 03 */	cmpwi r0, 3
/* 800E5CF4 000E2C54  40 80 01 14 */	bge lbl_800E5E08
/* 800E5CF8 000E2C58  48 00 00 C4 */	b lbl_800E5DBC
lbl_800E5CFC:
/* 800E5CFC 000E2C5C  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 800E5D00 000E2C60  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 800E5D04 000E2C64  2C 00 00 07 */	cmpwi r0, 7
/* 800E5D08 000E2C68  40 82 00 10 */	bne lbl_800E5D18
/* 800E5D0C 000E2C6C  38 00 00 02 */	li r0, 2
/* 800E5D10 000E2C70  90 03 05 68 */	stw r0, 0x568(r3)
/* 800E5D14 000E2C74  48 00 00 F4 */	b lbl_800E5E08
lbl_800E5D18:
/* 800E5D18 000E2C78  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 800E5D1C 000E2C7C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E5D20 000E2C80  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 800E5D24 000E2C84  38 A4 AA 68 */	addi r5, r4, lbl_803DAA68@l
/* 800E5D28 000E2C88  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 800E5D2C 000E2C8C  90 A1 00 08 */	stw r5, 8(r1)
/* 800E5D30 000E2C90  38 00 00 00 */	li r0, 0
/* 800E5D34 000E2C94  C0 23 00 04 */	lfs f1, 4(r3)
/* 800E5D38 000E2C98  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E5D3C 000E2C9C  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 800E5D40 000E2CA0  38 60 00 05 */	li r3, 5
/* 800E5D44 000E2CA4  3B E6 00 04 */	addi r31, r6, 4
/* 800E5D48 000E2CA8  90 61 00 0C */	stw r3, 0xc(r1)
/* 800E5D4C 000E2CAC  38 80 00 05 */	li r4, 5
/* 800E5D50 000E2CB0  7F E3 FB 78 */	mr r3, r31
/* 800E5D54 000E2CB4  90 A1 00 08 */	stw r5, 8(r1)
/* 800E5D58 000E2CB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 800E5D5C 000E2CBC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800E5D60 000E2CC0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800E5D64 000E2CC4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800E5D68 000E2CC8  98 01 00 20 */	stb r0, 0x20(r1)
/* 800E5D6C 000E2CCC  48 04 B6 CD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E5D70 000E2CD0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800E5D74 000E2CD4  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 800E5D78 000E2CD8  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 800E5D7C 000E2CDC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E5D80 000E2CE0  90 1F 01 10 */	stw r0, 0x110(r31)
/* 800E5D84 000E2CE4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E5D88 000E2CE8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800E5D8C 000E2CEC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 800E5D90 000E2CF0  90 7F 01 14 */	stw r3, 0x114(r31)
/* 800E5D94 000E2CF4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800E5D98 000E2CF8  90 BF 01 18 */	stw r5, 0x118(r31)
/* 800E5D9C 000E2CFC  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 800E5DA0 000E2D00  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 800E5DA4 000E2D04  88 61 00 20 */	lbz r3, 0x20(r1)
/* 800E5DA8 000E2D08  90 BF 01 20 */	stw r5, 0x120(r31)
/* 800E5DAC 000E2D0C  90 81 00 08 */	stw r4, 8(r1)
/* 800E5DB0 000E2D10  98 7F 01 24 */	stb r3, 0x124(r31)
/* 800E5DB4 000E2D14  90 01 00 08 */	stw r0, 8(r1)
/* 800E5DB8 000E2D18  48 00 00 50 */	b lbl_800E5E08
lbl_800E5DBC:
/* 800E5DBC 000E2D1C  80 83 04 50 */	lwz r4, 0x450(r3)
/* 800E5DC0 000E2D20  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 800E5DC4 000E2D24  2C 00 00 07 */	cmpwi r0, 7
/* 800E5DC8 000E2D28  41 82 00 10 */	beq lbl_800E5DD8
/* 800E5DCC 000E2D2C  38 00 00 04 */	li r0, 4
/* 800E5DD0 000E2D30  90 03 05 68 */	stw r0, 0x568(r3)
/* 800E5DD4 000E2D34  48 00 00 34 */	b lbl_800E5E08
lbl_800E5DD8:
/* 800E5DD8 000E2D38  C0 23 02 E0 */	lfs f1, 0x2e0(r3)
/* 800E5DDC 000E2D3C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800E5DE0 000E2D40  C0 83 02 E4 */	lfs f4, 0x2e4(r3)
/* 800E5DE4 000E2D44  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 800E5DE8 000E2D48  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5DEC 000E2D4C  C0 43 02 E8 */	lfs f2, 0x2e8(r3)
/* 800E5DF0 000E2D50  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 800E5DF4 000E2D54  EC 64 18 28 */	fsubs f3, f4, f3
/* 800E5DF8 000E2D58  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 800E5DFC 000E2D5C  EC 02 08 28 */	fsubs f0, f2, f1
/* 800E5E00 000E2D60  D0 64 00 20 */	stfs f3, 0x20(r4)
/* 800E5E04 000E2D64  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_800E5E08:
/* 800E5E08 000E2D68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E5E0C 000E2D6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E5E10 000E2D70  7C 08 03 A6 */	mtlr r0
/* 800E5E14 000E2D74  38 21 00 30 */	addi r1, r1, 0x30
/* 800E5E18 000E2D78  4E 80 00 20 */	blr

.global ShouldDoubleSnap__7CBeetleFR13CStateManagerf
ShouldDoubleSnap__7CBeetleFR13CStateManagerf:
/* 800E5E1C 000E2D7C  94 21 F6 C0 */	stwu r1, -0x940(r1)
/* 800E5E20 000E2D80  7C 08 02 A6 */	mflr r0
/* 800E5E24 000E2D84  90 01 09 44 */	stw r0, 0x944(r1)
/* 800E5E28 000E2D88  DB E1 09 30 */	stfd f31, 0x930(r1)
/* 800E5E2C 000E2D8C  F3 E1 09 38 */	psq_st f31, -1736(r1), 0, qr0
/* 800E5E30 000E2D90  DB C1 09 20 */	stfd f30, 0x920(r1)
/* 800E5E34 000E2D94  F3 C1 09 28 */	psq_st f30, -1752(r1), 0, qr0
/* 800E5E38 000E2D98  DB A1 09 10 */	stfd f29, 0x910(r1)
/* 800E5E3C 000E2D9C  F3 A1 09 18 */	psq_st f29, -1768(r1), 0, qr0
/* 800E5E40 000E2DA0  DB 81 09 00 */	stfd f28, 0x900(r1)
/* 800E5E44 000E2DA4  F3 81 09 08 */	psq_st f28, -1784(r1), 0, qr0
/* 800E5E48 000E2DA8  93 E1 08 FC */	stw r31, 0x8fc(r1)
/* 800E5E4C 000E2DAC  93 C1 08 F8 */	stw r30, 0x8f8(r1)
/* 800E5E50 000E2DB0  93 A1 08 F4 */	stw r29, 0x8f4(r1)
/* 800E5E54 000E2DB4  81 83 00 00 */	lwz r12, 0(r3)
/* 800E5E58 000E2DB8  7C 7D 1B 78 */	mr r29, r3
/* 800E5E5C 000E2DBC  7C 9E 23 78 */	mr r30, r4
/* 800E5E60 000E2DC0  3B E0 00 00 */	li r31, 0
/* 800E5E64 000E2DC4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 800E5E68 000E2DC8  7D 89 03 A6 */	mtctr r12
/* 800E5E6C 000E2DCC  4E 80 04 21 */	bctrl
/* 800E5E70 000E2DD0  28 03 00 00 */	cmplwi r3, 0
/* 800E5E74 000E2DD4  40 82 02 54 */	bne lbl_800E60C8
/* 800E5E78 000E2DD8  7F A3 EB 78 */	mr r3, r29
/* 800E5E7C 000E2DDC  81 9D 00 00 */	lwz r12, 0(r29)
/* 800E5E80 000E2DE0  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E5E84 000E2DE4  7D 89 03 A6 */	mtctr r12
/* 800E5E88 000E2DE8  4E 80 04 21 */	bctrl
/* 800E5E8C 000E2DEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E5E90 000E2DF0  41 82 02 38 */	beq lbl_800E60C8
/* 800E5E94 000E2DF4  80 DE 08 4C */	lwz r6, 0x84c(r30)
/* 800E5E98 000E2DF8  7F C3 F3 78 */	mr r3, r30
/* 800E5E9C 000E2DFC  A0 1D 00 08 */	lhz r0, 8(r29)
/* 800E5EA0 000E2E00  38 81 00 10 */	addi r4, r1, 0x10
/* 800E5EA4 000E2E04  C0 3D 05 A0 */	lfs f1, 0x5a0(r29)
/* 800E5EA8 000E2E08  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E5EAC 000E2E0C  C0 1D 03 00 */	lfs f0, 0x300(r29)
/* 800E5EB0 000E2E10  C3 E6 00 40 */	lfs f31, 0x40(r6)
/* 800E5EB4 000E2E14  EC 01 00 2A */	fadds f0, f1, f0
/* 800E5EB8 000E2E18  C3 C6 00 50 */	lfs f30, 0x50(r6)
/* 800E5EBC 000E2E1C  C3 A6 00 60 */	lfs f29, 0x60(r6)
/* 800E5EC0 000E2E20  B0 01 00 08 */	sth r0, 8(r1)
/* 800E5EC4 000E2E24  EF 80 00 32 */	fmuls f28, f0, f0
/* 800E5EC8 000E2E28  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800E5ECC 000E2E2C  A0 1D 05 70 */	lhz r0, 0x570(r29)
/* 800E5ED0 000E2E30  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E5ED4 000E2E34  48 15 42 AD */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 800E5ED8 000E2E38  28 03 00 00 */	cmplwi r3, 0
/* 800E5EDC 000E2E3C  41 82 00 10 */	beq lbl_800E5EEC
/* 800E5EE0 000E2E40  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 800E5EE4 000E2E44  C3 C3 00 20 */	lfs f30, 0x20(r3)
/* 800E5EE8 000E2E48  C3 A3 00 24 */	lfs f29, 0x24(r3)
lbl_800E5EEC:
/* 800E5EEC 000E2E4C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 800E5EF0 000E2E50  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 800E5EF4 000E2E54  EC 5E 08 28 */	fsubs f2, f30, f1
/* 800E5EF8 000E2E58  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 800E5EFC 000E2E5C  EC 7F 00 28 */	fsubs f3, f31, f0
/* 800E5F00 000E2E60  EC 9D 08 28 */	fsubs f4, f29, f1
/* 800E5F04 000E2E64  EC 02 00 B2 */	fmuls f0, f2, f2
/* 800E5F08 000E2E68  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 800E5F0C 000E2E6C  EC 23 00 F2 */	fmuls f1, f3, f3
/* 800E5F10 000E2E70  EC 44 01 32 */	fmuls f2, f4, f4
/* 800E5F14 000E2E74  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 800E5F18 000E2E78  EC 01 00 2A */	fadds f0, f1, f0
/* 800E5F1C 000E2E7C  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 800E5F20 000E2E80  EC 02 00 2A */	fadds f0, f2, f0
/* 800E5F24 000E2E84  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 800E5F28 000E2E88  40 81 01 A0 */	ble lbl_800E60C8
/* 800E5F2C 000E2E8C  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 800E5F30 000E2E90  38 61 00 30 */	addi r3, r1, 0x30
/* 800E5F34 000E2E94  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 800E5F38 000E2E98  38 81 00 48 */	addi r4, r1, 0x48
/* 800E5F3C 000E2E9C  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 800E5F40 000E2EA0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800E5F44 000E2EA4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 800E5F48 000E2EA8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800E5F4C 000E2EAC  48 22 E9 05 */	bl AsNormalized__9CVector3fCFv
/* 800E5F50 000E2EB0  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 800E5F54 000E2EB4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800E5F58 000E2EB8  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 800E5F5C 000E2EBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E5F60 000E2EC0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 800E5F64 000E2EC4  C0 81 00 44 */	lfs f4, 0x44(r1)
/* 800E5F68 000E2EC8  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 800E5F6C 000E2ECC  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 800E5F70 000E2ED0  C0 02 90 10 */	lfs f0, lbl_805AAD30@sda21(r2)
/* 800E5F74 000E2ED4  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 800E5F78 000E2ED8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E5F7C 000E2EDC  40 81 01 4C */	ble lbl_800E60C8
/* 800E5F80 000E2EE0  38 00 00 00 */	li r0, 0
/* 800E5F84 000E2EE4  80 AD 87 8C */	lwz r5, lbl_805A734C@sda21(r13)
/* 800E5F88 000E2EE8  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 800E5F8C 000E2EEC  38 60 00 00 */	li r3, 0
/* 800E5F90 000E2EF0  38 80 00 01 */	li r4, 1
/* 800E5F94 000E2EF4  48 2A 3F 61 */	bl __shl2i
/* 800E5F98 000E2EF8  39 20 00 01 */	li r9, 1
/* 800E5F9C 000E2EFC  38 00 00 00 */	li r0, 0
/* 800E5FA0 000E2F00  90 81 00 A4 */	stw r4, 0xa4(r1)
/* 800E5FA4 000E2F04  7F A8 EB 78 */	mr r8, r29
/* 800E5FA8 000E2F08  38 81 00 E8 */	addi r4, r1, 0xe8
/* 800E5FAC 000E2F0C  38 A1 00 24 */	addi r5, r1, 0x24
/* 800E5FB0 000E2F10  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 800E5FB4 000E2F14  7F C3 F3 78 */	mr r3, r30
/* 800E5FB8 000E2F18  38 C1 00 3C */	addi r6, r1, 0x3c
/* 800E5FBC 000E2F1C  38 E1 00 A0 */	addi r7, r1, 0xa0
/* 800E5FC0 000E2F20  90 01 00 AC */	stw r0, 0xac(r1)
/* 800E5FC4 000E2F24  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 800E5FC8 000E2F28  91 21 00 B0 */	stw r9, 0xb0(r1)
/* 800E5FCC 000E2F2C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 800E5FD0 000E2F30  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 800E5FD4 000E2F34  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 800E5FD8 000E2F38  91 21 00 80 */	stw r9, 0x80(r1)
/* 800E5FDC 000E2F3C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E5FE0 000E2F40  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800E5FE4 000E2F44  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 800E5FE8 000E2F48  C0 3D 05 A0 */	lfs f1, 0x5a0(r29)
/* 800E5FEC 000E2F4C  4B F6 66 ED */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC9CVector3fRC9CVector3ffRC15CMaterialFilterPC6CActor"
/* 800E5FF0 000E2F50  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800E5FF4 000E2F54  38 60 00 00 */	li r3, 0
/* 800E5FF8 000E2F58  80 AD 87 90 */	lwz r5, lbl_805A7350@sda21(r13)
/* 800E5FFC 000E2F5C  38 80 00 01 */	li r4, 1
/* 800E6000 000E2F60  B0 01 00 14 */	sth r0, 0x14(r1)
/* 800E6004 000E2F64  48 2A 3E F1 */	bl __shl2i
/* 800E6008 000E2F68  39 40 00 01 */	li r10, 1
/* 800E600C 000E2F6C  38 00 00 00 */	li r0, 0
/* 800E6010 000E2F70  90 81 00 8C */	stw r4, 0x8c(r1)
/* 800E6014 000E2F74  7F C4 F3 78 */	mr r4, r30
/* 800E6018 000E2F78  38 A1 00 14 */	addi r5, r1, 0x14
/* 800E601C 000E2F7C  38 C1 00 18 */	addi r6, r1, 0x18
/* 800E6020 000E2F80  90 61 00 88 */	stw r3, 0x88(r1)
/* 800E6024 000E2F84  38 61 00 B8 */	addi r3, r1, 0xb8
/* 800E6028 000E2F88  38 E1 00 3C */	addi r7, r1, 0x3c
/* 800E602C 000E2F8C  39 01 00 88 */	addi r8, r1, 0x88
/* 800E6030 000E2F90  90 01 00 94 */	stw r0, 0x94(r1)
/* 800E6034 000E2F94  39 21 00 E8 */	addi r9, r1, 0xe8
/* 800E6038 000E2F98  90 01 00 90 */	stw r0, 0x90(r1)
/* 800E603C 000E2F9C  91 41 00 98 */	stw r10, 0x98(r1)
/* 800E6040 000E2FA0  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 800E6044 000E2FA4  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 800E6048 000E2FA8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 800E604C 000E2FAC  91 41 00 68 */	stw r10, 0x68(r1)
/* 800E6050 000E2FB0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800E6054 000E2FB4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800E6058 000E2FB8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800E605C 000E2FBC  C0 3D 05 A0 */	lfs f1, 0x5a0(r29)
/* 800E6060 000E2FC0  4B F6 6F 65 */	bl "RayWorldIntersection__13CStateManagerCFR9TUniqueIdRC9CVector3fRC9CVector3ffRC15CMaterialFilterRCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 800E6064 000E2FC4  88 01 00 D8 */	lbz r0, 0xd8(r1)
/* 800E6068 000E2FC8  28 00 00 00 */	cmplwi r0, 0
/* 800E606C 000E2FCC  40 82 00 08 */	bne lbl_800E6074
/* 800E6070 000E2FD0  3B E0 00 01 */	li r31, 1
lbl_800E6074:
/* 800E6074 000E2FD4  80 A1 00 E8 */	lwz r5, 0xe8(r1)
/* 800E6078 000E2FD8  38 60 00 00 */	li r3, 0
/* 800E607C 000E2FDC  2C 05 00 00 */	cmpwi r5, 0
/* 800E6080 000E2FE0  40 81 00 40 */	ble lbl_800E60C0
/* 800E6084 000E2FE4  2C 05 00 08 */	cmpwi r5, 8
/* 800E6088 000E2FE8  38 85 FF F8 */	addi r4, r5, -8
/* 800E608C 000E2FEC  40 81 00 20 */	ble lbl_800E60AC
/* 800E6090 000E2FF0  38 04 00 07 */	addi r0, r4, 7
/* 800E6094 000E2FF4  54 00 E8 FE */	srwi r0, r0, 3
/* 800E6098 000E2FF8  7C 09 03 A6 */	mtctr r0
/* 800E609C 000E2FFC  2C 04 00 00 */	cmpwi r4, 0
/* 800E60A0 000E3000  40 81 00 0C */	ble lbl_800E60AC
lbl_800E60A4:
/* 800E60A4 000E3004  38 63 00 08 */	addi r3, r3, 8
/* 800E60A8 000E3008  42 00 FF FC */	bdnz lbl_800E60A4
lbl_800E60AC:
/* 800E60AC 000E300C  7C 03 28 50 */	subf r0, r3, r5
/* 800E60B0 000E3010  7C 09 03 A6 */	mtctr r0
/* 800E60B4 000E3014  7C 03 28 00 */	cmpw r3, r5
/* 800E60B8 000E3018  40 80 00 08 */	bge lbl_800E60C0
lbl_800E60BC:
/* 800E60BC 000E301C  42 00 00 00 */	bdnz lbl_800E60BC
lbl_800E60C0:
/* 800E60C0 000E3020  38 00 00 00 */	li r0, 0
/* 800E60C4 000E3024  90 01 00 E8 */	stw r0, 0xe8(r1)
lbl_800E60C8:
/* 800E60C8 000E3028  7F E3 FB 78 */	mr r3, r31
/* 800E60CC 000E302C  E3 E1 09 38 */	psq_l f31, -1736(r1), 0, qr0
/* 800E60D0 000E3030  CB E1 09 30 */	lfd f31, 0x930(r1)
/* 800E60D4 000E3034  E3 C1 09 28 */	psq_l f30, -1752(r1), 0, qr0
/* 800E60D8 000E3038  CB C1 09 20 */	lfd f30, 0x920(r1)
/* 800E60DC 000E303C  E3 A1 09 18 */	psq_l f29, -1768(r1), 0, qr0
/* 800E60E0 000E3040  CB A1 09 10 */	lfd f29, 0x910(r1)
/* 800E60E4 000E3044  E3 81 09 08 */	psq_l f28, -1784(r1), 0, qr0
/* 800E60E8 000E3048  CB 81 09 00 */	lfd f28, 0x900(r1)
/* 800E60EC 000E304C  83 E1 08 FC */	lwz r31, 0x8fc(r1)
/* 800E60F0 000E3050  83 C1 08 F8 */	lwz r30, 0x8f8(r1)
/* 800E60F4 000E3054  80 01 09 44 */	lwz r0, 0x944(r1)
/* 800E60F8 000E3058  83 A1 08 F4 */	lwz r29, 0x8f4(r1)
/* 800E60FC 000E305C  7C 08 03 A6 */	mtlr r0
/* 800E6100 000E3060  38 21 09 40 */	addi r1, r1, 0x940
/* 800E6104 000E3064  4E 80 00 20 */	blr

.global JumpBack__7CBeetleFR13CStateManager9EStateMsgf
JumpBack__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E6108 000E3068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E610C 000E306C  7C 08 02 A6 */	mflr r0
/* 800E6110 000E3070  2C 05 00 01 */	cmpwi r5, 1
/* 800E6114 000E3074  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E6118 000E3078  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E611C 000E307C  7C 7F 1B 78 */	mr r31, r3
/* 800E6120 000E3080  41 82 00 20 */	beq lbl_800E6140
/* 800E6124 000E3084  40 80 01 04 */	bge lbl_800E6228
/* 800E6128 000E3088  2C 05 00 00 */	cmpwi r5, 0
/* 800E612C 000E308C  40 80 00 08 */	bge lbl_800E6134
/* 800E6130 000E3090  48 00 00 F8 */	b lbl_800E6228
lbl_800E6134:
/* 800E6134 000E3094  38 00 00 00 */	li r0, 0
/* 800E6138 000E3098  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E613C 000E309C  48 00 00 EC */	b lbl_800E6228
lbl_800E6140:
/* 800E6140 000E30A0  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 800E6144 000E30A4  2C 00 00 01 */	cmpwi r0, 1
/* 800E6148 000E30A8  41 82 00 E0 */	beq lbl_800E6228
/* 800E614C 000E30AC  40 80 00 10 */	bge lbl_800E615C
/* 800E6150 000E30B0  2C 00 00 00 */	cmpwi r0, 0
/* 800E6154 000E30B4  40 80 00 14 */	bge lbl_800E6168
/* 800E6158 000E30B8  48 00 00 D0 */	b lbl_800E6228
lbl_800E615C:
/* 800E615C 000E30BC  2C 00 00 03 */	cmpwi r0, 3
/* 800E6160 000E30C0  40 80 00 C8 */	bge lbl_800E6228
/* 800E6164 000E30C4  48 00 00 AC */	b lbl_800E6210
lbl_800E6168:
/* 800E6168 000E30C8  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 800E616C 000E30CC  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 800E6170 000E30D0  2C 00 00 03 */	cmpwi r0, 3
/* 800E6174 000E30D4  40 82 00 10 */	bne lbl_800E6184
/* 800E6178 000E30D8  38 00 00 02 */	li r0, 2
/* 800E617C 000E30DC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E6180 000E30E0  48 00 00 A8 */	b lbl_800E6228
lbl_800E6184:
/* 800E6184 000E30E4  81 83 00 00 */	lwz r12, 0(r3)
/* 800E6188 000E30E8  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E618C 000E30EC  7D 89 03 A6 */	mtctr r12
/* 800E6190 000E30F0  4E 80 04 21 */	bctrl
/* 800E6194 000E30F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6198 000E30F8  41 82 00 90 */	beq lbl_800E6228
/* 800E619C 000E30FC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E61A0 000E3100  38 C0 00 01 */	li r6, 1
/* 800E61A4 000E3104  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E61A8 000E3108  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E61AC 000E310C  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 800E61B0 000E3110  90 01 00 08 */	stw r0, 8(r1)
/* 800E61B4 000E3114  38 A4 A9 E4 */	addi r5, r4, lbl_803DA9E4@l
/* 800E61B8 000E3118  38 00 00 00 */	li r0, 0
/* 800E61BC 000E311C  3B E3 00 04 */	addi r31, r3, 4
/* 800E61C0 000E3120  90 C1 00 0C */	stw r6, 0xc(r1)
/* 800E61C4 000E3124  7F E3 FB 78 */	mr r3, r31
/* 800E61C8 000E3128  38 80 00 01 */	li r4, 1
/* 800E61CC 000E312C  90 A1 00 08 */	stw r5, 8(r1)
/* 800E61D0 000E3130  90 C1 00 10 */	stw r6, 0x10(r1)
/* 800E61D4 000E3134  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E61D8 000E3138  48 04 B2 61 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E61DC 000E313C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800E61E0 000E3140  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 800E61E4 000E3144  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 800E61E8 000E3148  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E61EC 000E314C  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 800E61F0 000E3150  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E61F4 000E3154  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 800E61F8 000E3158  90 81 00 08 */	stw r4, 8(r1)
/* 800E61FC 000E315C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800E6200 000E3160  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 800E6204 000E3164  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 800E6208 000E3168  90 01 00 08 */	stw r0, 8(r1)
/* 800E620C 000E316C  48 00 00 1C */	b lbl_800E6228
lbl_800E6210:
/* 800E6210 000E3170  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E6214 000E3174  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 800E6218 000E3178  2C 00 00 03 */	cmpwi r0, 3
/* 800E621C 000E317C  41 82 00 0C */	beq lbl_800E6228
/* 800E6220 000E3180  38 00 00 04 */	li r0, 4
/* 800E6224 000E3184  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_800E6228:
/* 800E6228 000E3188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E622C 000E318C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E6230 000E3190  7C 08 03 A6 */	mtlr r0
/* 800E6234 000E3194  38 21 00 20 */	addi r1, r1, 0x20
/* 800E6238 000E3198  4E 80 00 20 */	blr

.global ShouldJumpBack__7CBeetleFR13CStateManagerf
ShouldJumpBack__7CBeetleFR13CStateManagerf:
/* 800E623C 000E319C  94 21 F7 30 */	stwu r1, -0x8d0(r1)
/* 800E6240 000E31A0  7C 08 02 A6 */	mflr r0
/* 800E6244 000E31A4  90 01 08 D4 */	stw r0, 0x8d4(r1)
/* 800E6248 000E31A8  93 E1 08 CC */	stw r31, 0x8cc(r1)
/* 800E624C 000E31AC  93 C1 08 C8 */	stw r30, 0x8c8(r1)
/* 800E6250 000E31B0  7C 9E 23 78 */	mr r30, r4
/* 800E6254 000E31B4  93 A1 08 C4 */	stw r29, 0x8c4(r1)
/* 800E6258 000E31B8  7C 7D 1B 78 */	mr r29, r3
/* 800E625C 000E31BC  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 800E6260 000E31C0  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 800E6264 000E31C4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800E6268 000E31C8  FC 40 10 50 */	fneg f2, f2
/* 800E626C 000E31CC  FC 20 08 50 */	fneg f1, f1
/* 800E6270 000E31D0  FC 00 00 50 */	fneg f0, f0
/* 800E6274 000E31D4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800E6278 000E31D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800E627C 000E31DC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800E6280 000E31E0  48 03 47 41 */	bl GetBaseBoundingBox__13CPhysicsActorCFv
/* 800E6284 000E31E4  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 800E6288 000E31E8  38 00 00 00 */	li r0, 0
/* 800E628C 000E31EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E6290 000E31F0  3B E0 00 00 */	li r31, 0
/* 800E6294 000E31F4  C0 42 8F D0 */	lfs f2, lbl_805AACF0@sda21(r2)
/* 800E6298 000E31F8  38 60 00 00 */	li r3, 0
/* 800E629C 000E31FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E62A0 000E3200  C0 9D 00 50 */	lfs f4, 0x50(r29)
/* 800E62A4 000E3204  C0 62 8F E4 */	lfs f3, lbl_805AAD04@sda21(r2)
/* 800E62A8 000E3208  38 80 00 01 */	li r4, 1
/* 800E62AC 000E320C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 800E62B0 000E3210  EC 22 00 72 */	fmuls f1, f2, f1
/* 800E62B4 000E3214  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 800E62B8 000E3218  EC 84 18 2A */	fadds f4, f4, f3
/* 800E62BC 000E321C  EC 00 18 2A */	fadds f0, f0, f3
/* 800E62C0 000E3220  80 AD 87 84 */	lwz r5, lbl_805A7344@sda21(r13)
/* 800E62C4 000E3224  EC 22 08 2A */	fadds f1, f2, f1
/* 800E62C8 000E3228  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 800E62CC 000E322C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E62D0 000E3230  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 800E62D4 000E3234  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800E62D8 000E3238  48 2A 3C 1D */	bl __shl2i
/* 800E62DC 000E323C  39 20 00 01 */	li r9, 1
/* 800E62E0 000E3240  38 00 00 00 */	li r0, 0
/* 800E62E4 000E3244  90 81 00 74 */	stw r4, 0x74(r1)
/* 800E62E8 000E3248  7F A8 EB 78 */	mr r8, r29
/* 800E62EC 000E324C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 800E62F0 000E3250  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E62F4 000E3254  90 61 00 70 */	stw r3, 0x70(r1)
/* 800E62F8 000E3258  7F C3 F3 78 */	mr r3, r30
/* 800E62FC 000E325C  38 C1 00 18 */	addi r6, r1, 0x18
/* 800E6300 000E3260  38 E1 00 70 */	addi r7, r1, 0x70
/* 800E6304 000E3264  90 01 00 7C */	stw r0, 0x7c(r1)
/* 800E6308 000E3268  90 01 00 78 */	stw r0, 0x78(r1)
/* 800E630C 000E326C  91 21 00 80 */	stw r9, 0x80(r1)
/* 800E6310 000E3270  91 21 00 50 */	stw r9, 0x50(r1)
/* 800E6314 000E3274  C0 3D 05 A4 */	lfs f1, 0x5a4(r29)
/* 800E6318 000E3278  4B F6 63 C1 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC9CVector3fRC9CVector3ffRC15CMaterialFilterPC6CActor"
/* 800E631C 000E327C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800E6320 000E3280  38 60 00 00 */	li r3, 0
/* 800E6324 000E3284  80 AD 87 88 */	lwz r5, lbl_805A7348@sda21(r13)
/* 800E6328 000E3288  38 80 00 01 */	li r4, 1
/* 800E632C 000E328C  B0 01 00 08 */	sth r0, 8(r1)
/* 800E6330 000E3290  48 2A 3B C5 */	bl __shl2i
/* 800E6334 000E3294  39 40 00 01 */	li r10, 1
/* 800E6338 000E3298  38 00 00 00 */	li r0, 0
/* 800E633C 000E329C  90 81 00 5C */	stw r4, 0x5c(r1)
/* 800E6340 000E32A0  7F C4 F3 78 */	mr r4, r30
/* 800E6344 000E32A4  38 A1 00 08 */	addi r5, r1, 8
/* 800E6348 000E32A8  38 C1 00 0C */	addi r6, r1, 0xc
/* 800E634C 000E32AC  90 61 00 58 */	stw r3, 0x58(r1)
/* 800E6350 000E32B0  38 61 00 88 */	addi r3, r1, 0x88
/* 800E6354 000E32B4  38 E1 00 18 */	addi r7, r1, 0x18
/* 800E6358 000E32B8  39 01 00 58 */	addi r8, r1, 0x58
/* 800E635C 000E32BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 800E6360 000E32C0  39 21 00 B8 */	addi r9, r1, 0xb8
/* 800E6364 000E32C4  90 01 00 60 */	stw r0, 0x60(r1)
/* 800E6368 000E32C8  91 41 00 68 */	stw r10, 0x68(r1)
/* 800E636C 000E32CC  91 41 00 38 */	stw r10, 0x38(r1)
/* 800E6370 000E32D0  C0 3D 05 A4 */	lfs f1, 0x5a4(r29)
/* 800E6374 000E32D4  4B F6 6C 51 */	bl "RayWorldIntersection__13CStateManagerCFR9TUniqueIdRC9CVector3fRC9CVector3ffRC15CMaterialFilterRCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 800E6378 000E32D8  88 01 00 A8 */	lbz r0, 0xa8(r1)
/* 800E637C 000E32DC  28 00 00 00 */	cmplwi r0, 0
/* 800E6380 000E32E0  40 82 00 08 */	bne lbl_800E6388
/* 800E6384 000E32E4  3B E0 00 01 */	li r31, 1
lbl_800E6388:
/* 800E6388 000E32E8  80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 800E638C 000E32EC  38 60 00 00 */	li r3, 0
/* 800E6390 000E32F0  2C 05 00 00 */	cmpwi r5, 0
/* 800E6394 000E32F4  40 81 00 40 */	ble lbl_800E63D4
/* 800E6398 000E32F8  2C 05 00 08 */	cmpwi r5, 8
/* 800E639C 000E32FC  38 85 FF F8 */	addi r4, r5, -8
/* 800E63A0 000E3300  40 81 00 20 */	ble lbl_800E63C0
/* 800E63A4 000E3304  38 04 00 07 */	addi r0, r4, 7
/* 800E63A8 000E3308  54 00 E8 FE */	srwi r0, r0, 3
/* 800E63AC 000E330C  7C 09 03 A6 */	mtctr r0
/* 800E63B0 000E3310  2C 04 00 00 */	cmpwi r4, 0
/* 800E63B4 000E3314  40 81 00 0C */	ble lbl_800E63C0
lbl_800E63B8:
/* 800E63B8 000E3318  38 63 00 08 */	addi r3, r3, 8
/* 800E63BC 000E331C  42 00 FF FC */	bdnz lbl_800E63B8
lbl_800E63C0:
/* 800E63C0 000E3320  7C 03 28 50 */	subf r0, r3, r5
/* 800E63C4 000E3324  7C 09 03 A6 */	mtctr r0
/* 800E63C8 000E3328  7C 03 28 00 */	cmpw r3, r5
/* 800E63CC 000E332C  40 80 00 08 */	bge lbl_800E63D4
lbl_800E63D0:
/* 800E63D0 000E3330  42 00 00 00 */	bdnz lbl_800E63D0
lbl_800E63D4:
/* 800E63D4 000E3334  38 00 00 00 */	li r0, 0
/* 800E63D8 000E3338  7F E3 FB 78 */	mr r3, r31
/* 800E63DC 000E333C  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 800E63E0 000E3340  83 E1 08 CC */	lwz r31, 0x8cc(r1)
/* 800E63E4 000E3344  83 C1 08 C8 */	lwz r30, 0x8c8(r1)
/* 800E63E8 000E3348  83 A1 08 C4 */	lwz r29, 0x8c4(r1)
/* 800E63EC 000E334C  80 01 08 D4 */	lwz r0, 0x8d4(r1)
/* 800E63F0 000E3350  7C 08 03 A6 */	mtlr r0
/* 800E63F4 000E3354  38 21 08 D0 */	addi r1, r1, 0x8d0
/* 800E63F8 000E3358  4E 80 00 20 */	blr

.global ShouldAttack__7CBeetleFR13CStateManagerf
ShouldAttack__7CBeetleFR13CStateManagerf:
/* 800E63FC 000E335C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E6400 000E3360  7C 08 02 A6 */	mflr r0
/* 800E6404 000E3364  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E6408 000E3368  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E640C 000E336C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E6410 000E3370  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800E6414 000E3374  7C 7E 1B 78 */	mr r30, r3
/* 800E6418 000E3378  C0 23 08 14 */	lfs f1, 0x814(r3)
/* 800E641C 000E337C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6420 000E3380  4C 40 13 82 */	cror 2, 0, 2
/* 800E6424 000E3384  40 82 00 74 */	bne lbl_800E6498
/* 800E6428 000E3388  A0 1E 05 70 */	lhz r0, 0x570(r30)
/* 800E642C 000E338C  7C 83 23 78 */	mr r3, r4
/* 800E6430 000E3390  38 81 00 18 */	addi r4, r1, 0x18
/* 800E6434 000E3394  B0 01 00 18 */	sth r0, 0x18(r1)
/* 800E6438 000E3398  4B F6 61 3D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800E643C 000E339C  7C 64 1B 78 */	mr r4, r3
/* 800E6440 000E33A0  38 61 00 1C */	addi r3, r1, 0x1c
/* 800E6444 000E33A4  4B FC 11 31 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 800E6448 000E33A8  83 E3 00 04 */	lwz r31, 4(r3)
/* 800E644C 000E33AC  28 1F 00 00 */	cmplwi r31, 0
/* 800E6450 000E33B0  41 82 00 40 */	beq lbl_800E6490
/* 800E6454 000E33B4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 800E6458 000E33B8  7F E3 FB 78 */	mr r3, r31
/* 800E645C 000E33BC  38 81 00 14 */	addi r4, r1, 0x14
/* 800E6460 000E33C0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E6464 000E33C4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 800E6468 000E33C8  48 15 2C 9D */	bl HasTeamAiRole__10CTeamAiMgrCF9TUniqueId
/* 800E646C 000E33CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6470 000E33D0  41 82 00 20 */	beq lbl_800E6490
/* 800E6474 000E33D4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 800E6478 000E33D8  7F E3 FB 78 */	mr r3, r31
/* 800E647C 000E33DC  38 81 00 0C */	addi r4, r1, 0xc
/* 800E6480 000E33E0  B0 01 00 08 */	sth r0, 8(r1)
/* 800E6484 000E33E4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800E6488 000E33E8  48 15 28 25 */	bl AddMeleeAttacker__10CTeamAiMgrF9TUniqueId
/* 800E648C 000E33EC  48 00 00 10 */	b lbl_800E649C
lbl_800E6490:
/* 800E6490 000E33F0  38 60 00 01 */	li r3, 1
/* 800E6494 000E33F4  48 00 00 08 */	b lbl_800E649C
lbl_800E6498:
/* 800E6498 000E33F8  38 60 00 00 */	li r3, 0
lbl_800E649C:
/* 800E649C 000E33FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E64A0 000E3400  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E64A4 000E3404  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800E64A8 000E3408  7C 08 03 A6 */	mtlr r0
/* 800E64AC 000E340C  38 21 00 30 */	addi r1, r1, 0x30
/* 800E64B0 000E3410  4E 80 00 20 */	blr

.global InAttackPosition__7CBeetleFR13CStateManager9EStateMsgf
InAttackPosition__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E64B4 000E3414  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E64B8 000E3418  7C 08 02 A6 */	mflr r0
/* 800E64BC 000E341C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E64C0 000E3420  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E64C4 000E3424  3B E0 00 00 */	li r31, 0
/* 800E64C8 000E3428  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 800E64CC 000E342C  C0 03 02 FC */	lfs f0, 0x2fc(r3)
/* 800E64D0 000E3430  C0 E5 00 50 */	lfs f7, 0x50(r5)
/* 800E64D4 000E3434  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 800E64D8 000E3438  EC 00 00 32 */	fmuls f0, f0, f0
/* 800E64DC 000E343C  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 800E64E0 000E3440  EC C7 08 28 */	fsubs f6, f7, f1
/* 800E64E4 000E3444  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 800E64E8 000E3448  C1 05 00 60 */	lfs f8, 0x60(r5)
/* 800E64EC 000E344C  EC 82 08 28 */	fsubs f4, f2, f1
/* 800E64F0 000E3450  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 800E64F4 000E3454  D0 41 00 08 */	stfs f2, 8(r1)
/* 800E64F8 000E3458  EC A8 18 28 */	fsubs f5, f8, f3
/* 800E64FC 000E345C  EC 26 01 B2 */	fmuls f1, f6, f6
/* 800E6500 000E3460  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 800E6504 000E3464  EC 44 01 32 */	fmuls f2, f4, f4
/* 800E6508 000E3468  EC 65 01 72 */	fmuls f3, f5, f5
/* 800E650C 000E346C  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 800E6510 000E3470  EC 22 08 2A */	fadds f1, f2, f1
/* 800E6514 000E3474  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 800E6518 000E3478  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 800E651C 000E347C  EC 23 08 2A */	fadds f1, f3, f1
/* 800E6520 000E3480  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 800E6524 000E3484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6528 000E3488  40 81 00 34 */	ble lbl_800E655C
/* 800E652C 000E348C  C0 03 03 00 */	lfs f0, 0x300(r3)
/* 800E6530 000E3490  EC 00 00 32 */	fmuls f0, f0, f0
/* 800E6534 000E3494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6538 000E3498  40 80 00 24 */	bge lbl_800E655C
/* 800E653C 000E349C  81 83 00 00 */	lwz r12, 0(r3)
/* 800E6540 000E34A0  C0 23 03 C8 */	lfs f1, 0x3c8(r3)
/* 800E6544 000E34A4  81 8C 01 AC */	lwz r12, 0x1ac(r12)
/* 800E6548 000E34A8  7D 89 03 A6 */	mtctr r12
/* 800E654C 000E34AC  4E 80 04 21 */	bctrl
/* 800E6550 000E34B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6554 000E34B4  41 82 00 08 */	beq lbl_800E655C
/* 800E6558 000E34B8  3B E0 00 01 */	li r31, 1
lbl_800E655C:
/* 800E655C 000E34BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E6560 000E34C0  7F E3 FB 78 */	mr r3, r31
/* 800E6564 000E34C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E6568 000E34C8  7C 08 03 A6 */	mtlr r0
/* 800E656C 000E34CC  38 21 00 30 */	addi r1, r1, 0x30
/* 800E6570 000E34D0  4E 80 00 20 */	blr

.global InRange__7CBeetleFR13CStateManager9EStateMsgf
InRange__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E6574 000E34D4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E6578 000E34D8  7C 08 02 A6 */	mflr r0
/* 800E657C 000E34DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E6580 000E34E0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800E6584 000E34E4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 800E6588 000E34E8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800E658C 000E34EC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 800E6590 000E34F0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 800E6594 000E34F4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 800E6598 000E34F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E659C 000E34FC  80 C4 08 4C */	lwz r6, 0x84c(r4)
/* 800E65A0 000E3500  7C 7F 1B 78 */	mr r31, r3
/* 800E65A4 000E3504  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800E65A8 000E3508  7C 83 23 78 */	mr r3, r4
/* 800E65AC 000E350C  C3 E6 00 40 */	lfs f31, 0x40(r6)
/* 800E65B0 000E3510  38 81 00 10 */	addi r4, r1, 0x10
/* 800E65B4 000E3514  C3 C6 00 50 */	lfs f30, 0x50(r6)
/* 800E65B8 000E3518  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E65BC 000E351C  C3 A6 00 60 */	lfs f29, 0x60(r6)
/* 800E65C0 000E3520  B0 01 00 08 */	sth r0, 8(r1)
/* 800E65C4 000E3524  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800E65C8 000E3528  A0 1F 05 70 */	lhz r0, 0x570(r31)
/* 800E65CC 000E352C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E65D0 000E3530  48 15 3B B1 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 800E65D4 000E3534  28 03 00 00 */	cmplwi r3, 0
/* 800E65D8 000E3538  41 82 00 1C */	beq lbl_800E65F4
/* 800E65DC 000E353C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800E65E0 000E3540  2C 00 00 01 */	cmpwi r0, 1
/* 800E65E4 000E3544  40 82 00 10 */	bne lbl_800E65F4
/* 800E65E8 000E3548  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 800E65EC 000E354C  C3 C3 00 20 */	lfs f30, 0x20(r3)
/* 800E65F0 000E3550  C3 A3 00 24 */	lfs f29, 0x24(r3)
lbl_800E65F4:
/* 800E65F4 000E3554  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 800E65F8 000E3558  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 800E65FC 000E355C  EC 7E 00 28 */	fsubs f3, f30, f0
/* 800E6600 000E3560  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 800E6604 000E3564  EC 9F 10 28 */	fsubs f4, f31, f2
/* 800E6608 000E3568  C0 02 8F DC */	lfs f0, lbl_805AACFC@sda21(r2)
/* 800E660C 000E356C  EC 5D 08 28 */	fsubs f2, f29, f1
/* 800E6610 000E3570  EC 23 00 F2 */	fmuls f1, f3, f3
/* 800E6614 000E3574  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 800E6618 000E3578  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 800E661C 000E357C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6620 000E3580  7C 00 00 26 */	mfcr r0
/* 800E6624 000E3584  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800E6628 000E3588  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 800E662C 000E358C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800E6630 000E3590  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 800E6634 000E3594  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800E6638 000E3598  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 800E663C 000E359C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 800E6640 000E35A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E6644 000E35A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E6648 000E35A8  7C 08 03 A6 */	mtlr r0
/* 800E664C 000E35AC  38 21 00 50 */	addi r1, r1, 0x50
/* 800E6650 000E35B0  4E 80 00 20 */	blr

.global HasAttackPattern__7CBeetleFR13CStateManagerf
HasAttackPattern__7CBeetleFR13CStateManagerf:
/* 800E6654 000E35B4  38 60 00 01 */	li r3, 1
/* 800E6658 000E35B8  4E 80 00 20 */	blr

.global FollowPattern__7CBeetleFR13CStateManager9EStateMsgf
FollowPattern__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E665C 000E35BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E6660 000E35C0  7C 08 02 A6 */	mflr r0
/* 800E6664 000E35C4  2C 05 00 01 */	cmpwi r5, 1
/* 800E6668 000E35C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E666C 000E35CC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E6670 000E35D0  7C 9F 23 78 */	mr r31, r4
/* 800E6674 000E35D4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800E6678 000E35D8  7C 7E 1B 78 */	mr r30, r3
/* 800E667C 000E35DC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 800E6680 000E35E0  41 82 00 20 */	beq lbl_800E66A0
/* 800E6684 000E35E4  40 80 02 04 */	bge lbl_800E6888
/* 800E6688 000E35E8  2C 05 00 00 */	cmpwi r5, 0
/* 800E668C 000E35EC  40 80 00 08 */	bge lbl_800E6694
/* 800E6690 000E35F0  48 00 01 F8 */	b lbl_800E6888
lbl_800E6694:
/* 800E6694 000E35F4  38 00 00 01 */	li r0, 1
/* 800E6698 000E35F8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 800E669C 000E35FC  48 00 01 EC */	b lbl_800E6888
lbl_800E66A0:
/* 800E66A0 000E3600  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 800E66A4 000E3604  2C 00 00 02 */	cmpwi r0, 2
/* 800E66A8 000E3608  41 82 01 74 */	beq lbl_800E681C
/* 800E66AC 000E360C  40 80 00 10 */	bge lbl_800E66BC
/* 800E66B0 000E3610  2C 00 00 01 */	cmpwi r0, 1
/* 800E66B4 000E3614  40 80 00 14 */	bge lbl_800E66C8
/* 800E66B8 000E3618  48 00 01 98 */	b lbl_800E6850
lbl_800E66BC:
/* 800E66BC 000E361C  2C 00 00 04 */	cmpwi r0, 4
/* 800E66C0 000E3620  40 80 01 90 */	bge lbl_800E6850
/* 800E66C4 000E3624  48 00 00 B0 */	b lbl_800E6774
lbl_800E66C8:
/* 800E66C8 000E3628  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 800E66CC 000E362C  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 800E66D0 000E3630  2C 00 00 03 */	cmpwi r0, 3
/* 800E66D4 000E3634  40 82 00 10 */	bne lbl_800E66E4
/* 800E66D8 000E3638  38 00 00 03 */	li r0, 3
/* 800E66DC 000E363C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 800E66E0 000E3640  48 00 01 70 */	b lbl_800E6850
lbl_800E66E4:
/* 800E66E4 000E3644  81 83 00 00 */	lwz r12, 0(r3)
/* 800E66E8 000E3648  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E66EC 000E364C  7D 89 03 A6 */	mtctr r12
/* 800E66F0 000E3650  4E 80 04 21 */	bctrl
/* 800E66F4 000E3654  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E66F8 000E3658  41 82 01 58 */	beq lbl_800E6850
/* 800E66FC 000E365C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 800E6700 000E3660  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 800E6704 000E3664  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 800E6708 000E3668  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 800E670C 000E366C  90 01 00 18 */	stw r0, 0x18(r1)
/* 800E6710 000E3670  38 C4 A9 E4 */	addi r6, r4, lbl_803DA9E4@l
/* 800E6714 000E3674  38 80 00 01 */	li r4, 1
/* 800E6718 000E3678  38 A0 00 02 */	li r5, 2
/* 800E671C 000E367C  38 00 00 00 */	li r0, 0
/* 800E6720 000E3680  3B A3 00 04 */	addi r29, r3, 4
/* 800E6724 000E3684  90 81 00 1C */	stw r4, 0x1c(r1)
/* 800E6728 000E3688  7F A3 EB 78 */	mr r3, r29
/* 800E672C 000E368C  38 80 00 01 */	li r4, 1
/* 800E6730 000E3690  90 C1 00 18 */	stw r6, 0x18(r1)
/* 800E6734 000E3694  90 A1 00 20 */	stw r5, 0x20(r1)
/* 800E6738 000E3698  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E673C 000E369C  48 04 AC FD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E6740 000E36A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800E6744 000E36A4  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 800E6748 000E36A8  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 800E674C 000E36AC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E6750 000E36B0  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 800E6754 000E36B4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E6758 000E36B8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 800E675C 000E36BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 800E6760 000E36C0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 800E6764 000E36C4  90 BD 00 CC */	stw r5, 0xcc(r29)
/* 800E6768 000E36C8  90 7D 00 D0 */	stw r3, 0xd0(r29)
/* 800E676C 000E36CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 800E6770 000E36D0  48 00 00 E0 */	b lbl_800E6850
lbl_800E6774:
/* 800E6774 000E36D4  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 800E6778 000E36D8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 800E677C 000E36DC  2C 00 00 03 */	cmpwi r0, 3
/* 800E6780 000E36E0  41 82 00 D0 */	beq lbl_800E6850
/* 800E6784 000E36E4  81 83 00 00 */	lwz r12, 0(r3)
/* 800E6788 000E36E8  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E678C 000E36EC  7D 89 03 A6 */	mtctr r12
/* 800E6790 000E36F0  4E 80 04 21 */	bctrl
/* 800E6794 000E36F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6798 000E36F8  41 82 00 B8 */	beq lbl_800E6850
/* 800E679C 000E36FC  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 800E67A0 000E3700  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 800E67A4 000E3704  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 800E67A8 000E3708  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 800E67AC 000E370C  90 01 00 08 */	stw r0, 8(r1)
/* 800E67B0 000E3710  38 C4 A9 E4 */	addi r6, r4, lbl_803DA9E4@l
/* 800E67B4 000E3714  38 80 00 01 */	li r4, 1
/* 800E67B8 000E3718  38 A0 00 03 */	li r5, 3
/* 800E67BC 000E371C  38 00 00 00 */	li r0, 0
/* 800E67C0 000E3720  3B A3 00 04 */	addi r29, r3, 4
/* 800E67C4 000E3724  90 81 00 0C */	stw r4, 0xc(r1)
/* 800E67C8 000E3728  7F A3 EB 78 */	mr r3, r29
/* 800E67CC 000E372C  38 80 00 01 */	li r4, 1
/* 800E67D0 000E3730  90 C1 00 08 */	stw r6, 8(r1)
/* 800E67D4 000E3734  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800E67D8 000E3738  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E67DC 000E373C  48 04 AC 5D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E67E0 000E3740  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800E67E4 000E3744  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 800E67E8 000E3748  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 800E67EC 000E374C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E67F0 000E3750  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 800E67F4 000E3754  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 800E67F8 000E3758  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 800E67FC 000E375C  38 00 00 02 */	li r0, 2
/* 800E6800 000E3760  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 800E6804 000E3764  90 DD 00 CC */	stw r6, 0xcc(r29)
/* 800E6808 000E3768  90 BD 00 D0 */	stw r5, 0xd0(r29)
/* 800E680C 000E376C  90 81 00 08 */	stw r4, 8(r1)
/* 800E6810 000E3770  90 61 00 08 */	stw r3, 8(r1)
/* 800E6814 000E3774  90 1E 05 68 */	stw r0, 0x568(r30)
/* 800E6818 000E3778  48 00 00 38 */	b lbl_800E6850
lbl_800E681C:
/* 800E681C 000E377C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 800E6820 000E3780  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 800E6824 000E3784  2C 00 00 03 */	cmpwi r0, 3
/* 800E6828 000E3788  41 82 00 28 */	beq lbl_800E6850
/* 800E682C 000E378C  C0 3E 08 14 */	lfs f1, 0x814(r30)
/* 800E6830 000E3790  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E6834 000E3794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6838 000E3798  4C 40 13 82 */	cror 2, 0, 2
/* 800E683C 000E379C  40 82 00 0C */	bne lbl_800E6848
/* 800E6840 000E37A0  38 00 00 04 */	li r0, 4
/* 800E6844 000E37A4  48 00 00 08 */	b lbl_800E684C
lbl_800E6848:
/* 800E6848 000E37A8  38 00 00 01 */	li r0, 1
lbl_800E684C:
/* 800E684C 000E37AC  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_800E6850:
/* 800E6850 000E37B0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 800E6854 000E37B4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 800E6858 000E37B8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 800E685C 000E37BC  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 800E6860 000E37C0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 800E6864 000E37C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E6868 000E37C8  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 800E686C 000E37CC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 800E6870 000E37D0  EC 64 18 28 */	fsubs f3, f4, f3
/* 800E6874 000E37D4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 800E6878 000E37D8  EC 22 08 28 */	fsubs f1, f2, f1
/* 800E687C 000E37DC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800E6880 000E37E0  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 800E6884 000E37E4  D0 23 00 24 */	stfs f1, 0x24(r3)
lbl_800E6888:
/* 800E6888 000E37E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E688C 000E37EC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E6890 000E37F0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800E6894 000E37F4  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 800E6898 000E37F8  7C 08 03 A6 */	mtlr r0
/* 800E689C 000E37FC  38 21 00 40 */	addi r1, r1, 0x40
/* 800E68A0 000E3800  4E 80 00 20 */	blr

.global Attack__7CBeetleFR13CStateManager9EStateMsgf
Attack__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E68A4 000E3804  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800E68A8 000E3808  7C 08 02 A6 */	mflr r0
/* 800E68AC 000E380C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800E68B0 000E3810  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 800E68B4 000E3814  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 800E68B8 000E3818  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 800E68BC 000E381C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 800E68C0 000E3820  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 800E68C4 000E3824  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 800E68C8 000E3828  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 800E68CC 000E382C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 800E68D0 000E3830  2C 05 00 01 */	cmpwi r5, 1
/* 800E68D4 000E3834  7C 7F 1B 78 */	mr r31, r3
/* 800E68D8 000E3838  7C 9E 23 78 */	mr r30, r4
/* 800E68DC 000E383C  41 82 00 7C */	beq lbl_800E6958
/* 800E68E0 000E3840  40 80 00 10 */	bge lbl_800E68F0
/* 800E68E4 000E3844  2C 05 00 00 */	cmpwi r5, 0
/* 800E68E8 000E3848  40 80 00 14 */	bge lbl_800E68FC
/* 800E68EC 000E384C  48 00 02 F8 */	b lbl_800E6BE4
lbl_800E68F0:
/* 800E68F0 000E3850  2C 05 00 03 */	cmpwi r5, 3
/* 800E68F4 000E3854  40 80 02 F0 */	bge lbl_800E6BE4
/* 800E68F8 000E3858  48 00 02 AC */	b lbl_800E6BA4
lbl_800E68FC:
/* 800E68FC 000E385C  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 800E6900 000E3860  38 80 00 00 */	li r4, 0
/* 800E6904 000E3864  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 800E6908 000E3868  38 00 00 00 */	li r0, 0
/* 800E690C 000E386C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 800E6910 000E3870  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800E6914 000E3874  88 7F 08 38 */	lbz r3, 0x838(r31)
/* 800E6918 000E3878  50 83 2E B4 */	rlwimi r3, r4, 5, 0x1a, 0x1a
/* 800E691C 000E387C  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 800E6920 000E3880  C0 65 00 40 */	lfs f3, 0x40(r5)
/* 800E6924 000E3884  54 64 DF FE */	rlwinm r4, r3, 0x1b, 0x1f, 0x1f
/* 800E6928 000E3888  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800E692C 000E388C  98 7F 08 38 */	stb r3, 0x838(r31)
/* 800E6930 000E3890  88 7F 08 38 */	lbz r3, 0x838(r31)
/* 800E6934 000E3894  50 83 3E 30 */	rlwimi r3, r4, 7, 0x18, 0x18
/* 800E6938 000E3898  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 800E693C 000E389C  98 7F 08 38 */	stb r3, 0x838(r31)
/* 800E6940 000E38A0  D0 7F 02 E0 */	stfs f3, 0x2e0(r31)
/* 800E6944 000E38A4  D0 9F 02 E4 */	stfs f4, 0x2e4(r31)
/* 800E6948 000E38A8  D0 5F 02 E8 */	stfs f2, 0x2e8(r31)
/* 800E694C 000E38AC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 800E6950 000E38B0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E6954 000E38B4  48 00 02 90 */	b lbl_800E6BE4
lbl_800E6958:
/* 800E6958 000E38B8  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 800E695C 000E38BC  2C 00 00 01 */	cmpwi r0, 1
/* 800E6960 000E38C0  41 82 01 94 */	beq lbl_800E6AF4
/* 800E6964 000E38C4  40 80 00 10 */	bge lbl_800E6974
/* 800E6968 000E38C8  2C 00 00 00 */	cmpwi r0, 0
/* 800E696C 000E38CC  40 80 00 14 */	bge lbl_800E6980
/* 800E6970 000E38D0  48 00 02 14 */	b lbl_800E6B84
lbl_800E6974:
/* 800E6974 000E38D4  2C 00 00 03 */	cmpwi r0, 3
/* 800E6978 000E38D8  40 80 02 0C */	bge lbl_800E6B84
/* 800E697C 000E38DC  48 00 01 F0 */	b lbl_800E6B6C
lbl_800E6980:
/* 800E6980 000E38E0  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 800E6984 000E38E4  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 800E6988 000E38E8  2C 00 00 07 */	cmpwi r0, 7
/* 800E698C 000E38EC  40 82 00 1C */	bne lbl_800E69A8
/* 800E6990 000E38F0  38 60 00 01 */	li r3, 1
/* 800E6994 000E38F4  90 7F 05 68 */	stw r3, 0x568(r31)
/* 800E6998 000E38F8  88 1F 08 38 */	lbz r0, 0x838(r31)
/* 800E699C 000E38FC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 800E69A0 000E3900  98 1F 08 38 */	stb r0, 0x838(r31)
/* 800E69A4 000E3904  48 00 01 E0 */	b lbl_800E6B84
lbl_800E69A8:
/* 800E69A8 000E3908  81 83 00 00 */	lwz r12, 0(r3)
/* 800E69AC 000E390C  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E69B0 000E3910  7D 89 03 A6 */	mtctr r12
/* 800E69B4 000E3914  4E 80 04 21 */	bctrl
/* 800E69B8 000E3918  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E69BC 000E391C  41 82 01 C8 */	beq lbl_800E6B84
/* 800E69C0 000E3920  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 800E69C4 000E3924  7F C5 F3 78 */	mr r5, r30
/* 800E69C8 000E3928  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E69CC 000E392C  C0 22 8F E4 */	lfs f1, lbl_805AAD04@sda21(r2)
/* 800E69D0 000E3930  81 84 00 00 */	lwz r12, 0(r4)
/* 800E69D4 000E3934  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 800E69D8 000E3938  7D 89 03 A6 */	mtctr r12
/* 800E69DC 000E393C  4E 80 04 21 */	bctrl
/* 800E69E0 000E3940  C3 DF 00 60 */	lfs f30, 0x60(r31)
/* 800E69E4 000E3944  38 61 00 44 */	addi r3, r1, 0x44
/* 800E69E8 000E3948  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 800E69EC 000E394C  C3 A1 00 2C */	lfs f29, 0x2c(r1)
/* 800E69F0 000E3950  EC 5E F0 28 */	fsubs f2, f30, f30
/* 800E69F4 000E3954  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 800E69F8 000E3958  C3 E1 00 30 */	lfs f31, 0x30(r1)
/* 800E69FC 000E395C  EC 1D 08 28 */	fsubs f0, f29, f1
/* 800E6A00 000E3960  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800E6A04 000E3964  EC 7F 20 28 */	fsubs f3, f31, f4
/* 800E6A08 000E3968  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 800E6A0C 000E396C  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 800E6A10 000E3970  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800E6A14 000E3974  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 800E6A18 000E3978  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 800E6A1C 000E397C  48 22 DC DD */	bl CanBeNormalized__9CVector3fCFv
/* 800E6A20 000E3980  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6A24 000E3984  41 82 00 38 */	beq lbl_800E6A5C
/* 800E6A28 000E3988  38 61 00 14 */	addi r3, r1, 0x14
/* 800E6A2C 000E398C  38 81 00 44 */	addi r4, r1, 0x44
/* 800E6A30 000E3990  48 22 DE 21 */	bl AsNormalized__9CVector3fCFv
/* 800E6A34 000E3994  C0 62 90 00 */	lfs f3, lbl_805AAD20@sda21(r2)
/* 800E6A38 000E3998  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 800E6A3C 000E399C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800E6A40 000E39A0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800E6A44 000E39A4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800E6A48 000E39A8  EC 23 00 72 */	fmuls f1, f3, f1
/* 800E6A4C 000E39AC  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E6A50 000E39B0  EF BD 10 2A */	fadds f29, f29, f2
/* 800E6A54 000E39B4  EF FF 08 2A */	fadds f31, f31, f1
/* 800E6A58 000E39B8  EF DE 00 2A */	fadds f30, f30, f0
lbl_800E6A5C:
/* 800E6A5C 000E39BC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E6A60 000E39C0  38 00 00 01 */	li r0, 1
/* 800E6A64 000E39C4  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 800E6A68 000E39C8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E6A6C 000E39CC  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 800E6A70 000E39D0  90 A1 00 50 */	stw r5, 0x50(r1)
/* 800E6A74 000E39D4  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 800E6A78 000E39D8  38 80 00 05 */	li r4, 5
/* 800E6A7C 000E39DC  3B C3 00 04 */	addi r30, r3, 4
/* 800E6A80 000E39E0  90 81 00 54 */	stw r4, 0x54(r1)
/* 800E6A84 000E39E4  7F C3 F3 78 */	mr r3, r30
/* 800E6A88 000E39E8  38 80 00 05 */	li r4, 5
/* 800E6A8C 000E39EC  90 A1 00 50 */	stw r5, 0x50(r1)
/* 800E6A90 000E39F0  90 01 00 58 */	stw r0, 0x58(r1)
/* 800E6A94 000E39F4  D3 A1 00 5C */	stfs f29, 0x5c(r1)
/* 800E6A98 000E39F8  D3 E1 00 60 */	stfs f31, 0x60(r1)
/* 800E6A9C 000E39FC  D3 C1 00 64 */	stfs f30, 0x64(r1)
/* 800E6AA0 000E3A00  98 01 00 68 */	stb r0, 0x68(r1)
/* 800E6AA4 000E3A04  48 04 A9 95 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E6AA8 000E3A08  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E6AAC 000E3A0C  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 800E6AB0 000E3A10  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 800E6AB4 000E3A14  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E6AB8 000E3A18  90 1E 01 10 */	stw r0, 0x110(r30)
/* 800E6ABC 000E3A1C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E6AC0 000E3A20  80 61 00 58 */	lwz r3, 0x58(r1)
/* 800E6AC4 000E3A24  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 800E6AC8 000E3A28  90 7E 01 14 */	stw r3, 0x114(r30)
/* 800E6ACC 000E3A2C  80 61 00 60 */	lwz r3, 0x60(r1)
/* 800E6AD0 000E3A30  90 BE 01 18 */	stw r5, 0x118(r30)
/* 800E6AD4 000E3A34  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 800E6AD8 000E3A38  90 7E 01 1C */	stw r3, 0x11c(r30)
/* 800E6ADC 000E3A3C  88 61 00 68 */	lbz r3, 0x68(r1)
/* 800E6AE0 000E3A40  90 BE 01 20 */	stw r5, 0x120(r30)
/* 800E6AE4 000E3A44  90 81 00 50 */	stw r4, 0x50(r1)
/* 800E6AE8 000E3A48  98 7E 01 24 */	stb r3, 0x124(r30)
/* 800E6AEC 000E3A4C  90 01 00 50 */	stw r0, 0x50(r1)
/* 800E6AF0 000E3A50  48 00 00 94 */	b lbl_800E6B84
lbl_800E6AF4:
/* 800E6AF4 000E3A54  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 800E6AF8 000E3A58  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 800E6AFC 000E3A5C  2C 00 00 07 */	cmpwi r0, 7
/* 800E6B00 000E3A60  41 82 00 10 */	beq lbl_800E6B10
/* 800E6B04 000E3A64  38 00 00 04 */	li r0, 4
/* 800E6B08 000E3A68  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E6B0C 000E3A6C  48 00 00 78 */	b lbl_800E6B84
lbl_800E6B10:
/* 800E6B10 000E3A70  81 83 00 00 */	lwz r12, 0(r3)
/* 800E6B14 000E3A74  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E6B18 000E3A78  7D 89 03 A6 */	mtctr r12
/* 800E6B1C 000E3A7C  4E 80 04 21 */	bctrl
/* 800E6B20 000E3A80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6B24 000E3A84  41 82 00 3C */	beq lbl_800E6B60
/* 800E6B28 000E3A88  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 800E6B2C 000E3A8C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800E6B30 000E3A90  C0 9F 02 E4 */	lfs f4, 0x2e4(r31)
/* 800E6B34 000E3A94  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 800E6B38 000E3A98  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E6B3C 000E3A9C  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 800E6B40 000E3AA0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 800E6B44 000E3AA4  EC 64 18 28 */	fsubs f3, f4, f3
/* 800E6B48 000E3AA8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E6B4C 000E3AAC  EC 22 08 28 */	fsubs f1, f2, f1
/* 800E6B50 000E3AB0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800E6B54 000E3AB4  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 800E6B58 000E3AB8  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 800E6B5C 000E3ABC  48 00 00 28 */	b lbl_800E6B84
lbl_800E6B60:
/* 800E6B60 000E3AC0  38 00 00 02 */	li r0, 2
/* 800E6B64 000E3AC4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 800E6B68 000E3AC8  48 00 00 1C */	b lbl_800E6B84
lbl_800E6B6C:
/* 800E6B6C 000E3ACC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 800E6B70 000E3AD0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 800E6B74 000E3AD4  2C 00 00 07 */	cmpwi r0, 7
/* 800E6B78 000E3AD8  41 82 00 0C */	beq lbl_800E6B84
/* 800E6B7C 000E3ADC  38 00 00 04 */	li r0, 4
/* 800E6B80 000E3AE0  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_800E6B84:
/* 800E6B84 000E3AE4  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 800E6B88 000E3AE8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 800E6B8C 000E3AEC  41 82 00 58 */	beq lbl_800E6BE4
/* 800E6B90 000E3AF0  88 1F 08 38 */	lbz r0, 0x838(r31)
/* 800E6B94 000E3AF4  38 60 00 01 */	li r3, 1
/* 800E6B98 000E3AF8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 800E6B9C 000E3AFC  98 1F 08 38 */	stb r0, 0x838(r31)
/* 800E6BA0 000E3B00  48 00 00 44 */	b lbl_800E6BE4
lbl_800E6BA4:
/* 800E6BA4 000E3B04  A1 1F 00 08 */	lhz r8, 8(r31)
/* 800E6BA8 000E3B08  38 A1 00 10 */	addi r5, r1, 0x10
/* 800E6BAC 000E3B0C  38 C1 00 0C */	addi r6, r1, 0xc
/* 800E6BB0 000E3B10  38 60 00 00 */	li r3, 0
/* 800E6BB4 000E3B14  B1 01 00 0C */	sth r8, 0xc(r1)
/* 800E6BB8 000E3B18  38 E0 00 01 */	li r7, 1
/* 800E6BBC 000E3B1C  A0 1F 05 70 */	lhz r0, 0x570(r31)
/* 800E6BC0 000E3B20  B1 01 00 08 */	sth r8, 8(r1)
/* 800E6BC4 000E3B24  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E6BC8 000E3B28  48 15 33 09 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
/* 800E6BCC 000E3B2C  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 800E6BD0 000E3B30  48 22 B9 0D */	bl Float__9CRandom16Fv
/* 800E6BD4 000E3B34  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 800E6BD8 000E3B38  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 800E6BDC 000E3B3C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 800E6BE0 000E3B40  D0 1F 08 14 */	stfs f0, 0x814(r31)
lbl_800E6BE4:
/* 800E6BE4 000E3B44  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 800E6BE8 000E3B48  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800E6BEC 000E3B4C  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 800E6BF0 000E3B50  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 800E6BF4 000E3B54  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 800E6BF8 000E3B58  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 800E6BFC 000E3B5C  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 800E6C00 000E3B60  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800E6C04 000E3B64  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 800E6C08 000E3B68  7C 08 03 A6 */	mtlr r0
/* 800E6C0C 000E3B6C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800E6C10 000E3B70  4E 80 00 20 */	blr

.global TargetPlayer__7CBeetleFR13CStateManager9EStateMsgf
TargetPlayer__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E6C14 000E3B74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E6C18 000E3B78  7C 08 02 A6 */	mflr r0
/* 800E6C1C 000E3B7C  2C 05 00 00 */	cmpwi r5, 0
/* 800E6C20 000E3B80  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E6C24 000E3B84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E6C28 000E3B88  7C 9F 23 78 */	mr r31, r4
/* 800E6C2C 000E3B8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E6C30 000E3B90  7C 7E 1B 78 */	mr r30, r3
/* 800E6C34 000E3B94  41 82 00 08 */	beq lbl_800E6C3C
/* 800E6C38 000E3B98  48 00 00 9C */	b lbl_800E6CD4
lbl_800E6C3C:
/* 800E6C3C 000E3B9C  A0 DE 00 08 */	lhz r6, 8(r30)
/* 800E6C40 000E3BA0  7F E3 FB 78 */	mr r3, r31
/* 800E6C44 000E3BA4  38 81 00 10 */	addi r4, r1, 0x10
/* 800E6C48 000E3BA8  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E6C4C 000E3BAC  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 800E6C50 000E3BB0  A0 1E 05 70 */	lhz r0, 0x570(r30)
/* 800E6C54 000E3BB4  B0 C1 00 08 */	sth r6, 8(r1)
/* 800E6C58 000E3BB8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E6C5C 000E3BBC  48 15 35 25 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 800E6C60 000E3BC0  28 03 00 00 */	cmplwi r3, 0
/* 800E6C64 000E3BC4  41 82 00 20 */	beq lbl_800E6C84
/* 800E6C68 000E3BC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800E6C6C 000E3BCC  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 800E6C70 000E3BD0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 800E6C74 000E3BD4  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 800E6C78 000E3BD8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800E6C7C 000E3BDC  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 800E6C80 000E3BE0  48 00 00 20 */	b lbl_800E6CA0
lbl_800E6C84:
/* 800E6C84 000E3BE4  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 800E6C88 000E3BE8  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 800E6C8C 000E3BEC  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 800E6C90 000E3BF0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800E6C94 000E3BF4  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 800E6C98 000E3BF8  D0 3E 02 E4 */	stfs f1, 0x2e4(r30)
/* 800E6C9C 000E3BFC  D0 5E 02 E8 */	stfs f2, 0x2e8(r30)
lbl_800E6CA0:
/* 800E6CA0 000E3C00  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 800E6CA4 000E3C04  38 60 00 00 */	li r3, 0
/* 800E6CA8 000E3C08  A0 04 00 08 */	lhz r0, 8(r4)
/* 800E6CAC 000E3C0C  B0 1E 02 DC */	sth r0, 0x2dc(r30)
/* 800E6CB0 000E3C10  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 800E6CB4 000E3C14  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 800E6CB8 000E3C18  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 800E6CBC 000E3C1C  D0 1E 02 EC */	stfs f0, 0x2ec(r30)
/* 800E6CC0 000E3C20  D0 3E 02 F0 */	stfs f1, 0x2f0(r30)
/* 800E6CC4 000E3C24  D0 5E 02 F4 */	stfs f2, 0x2f4(r30)
/* 800E6CC8 000E3C28  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 800E6CCC 000E3C2C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 800E6CD0 000E3C30  98 1E 03 28 */	stb r0, 0x328(r30)
lbl_800E6CD4:
/* 800E6CD4 000E3C34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6CD8 000E3C38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E6CDC 000E3C3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E6CE0 000E3C40  7C 08 03 A6 */	mtlr r0
/* 800E6CE4 000E3C44  38 21 00 20 */	addi r1, r1, 0x20
/* 800E6CE8 000E3C48  4E 80 00 20 */	blr

.global Deactivate__7CBeetleFR13CStateManager9EStateMsgf
Deactivate__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E6CEC 000E3C4C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 800E6CF0 000E3C50  7C 08 02 A6 */	mflr r0
/* 800E6CF4 000E3C54  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 800E6CF8 000E3C58  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 800E6CFC 000E3C5C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 800E6D00 000E3C60  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 800E6D04 000E3C64  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 800E6D08 000E3C68  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 800E6D0C 000E3C6C  7C 7E 1B 78 */	mr r30, r3
/* 800E6D10 000E3C70  FF E0 08 90 */	fmr f31, f1
/* 800E6D14 000E3C74  2C 05 00 01 */	cmpwi r5, 1
/* 800E6D18 000E3C78  83 E3 04 50 */	lwz r31, 0x450(r3)
/* 800E6D1C 000E3C7C  7C 9D 23 78 */	mr r29, r4
/* 800E6D20 000E3C80  41 82 00 2C */	beq lbl_800E6D4C
/* 800E6D24 000E3C84  40 80 03 C8 */	bge lbl_800E70EC
/* 800E6D28 000E3C88  2C 05 00 00 */	cmpwi r5, 0
/* 800E6D2C 000E3C8C  40 80 00 08 */	bge lbl_800E6D34
/* 800E6D30 000E3C90  48 00 03 BC */	b lbl_800E70EC
lbl_800E6D34:
/* 800E6D34 000E3C94  38 00 00 00 */	li r0, 0
/* 800E6D38 000E3C98  90 1E 05 68 */	stw r0, 0x568(r30)
/* 800E6D3C 000E3C9C  4B FF C9 CD */	bl SquadRemove__7CBeetleFR13CStateManager
/* 800E6D40 000E3CA0  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E6D44 000E3CA4  D0 1E 08 18 */	stfs f0, 0x818(r30)
/* 800E6D48 000E3CA8  48 00 03 A4 */	b lbl_800E70EC
lbl_800E6D4C:
/* 800E6D4C 000E3CAC  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 800E6D50 000E3CB0  2C 00 00 02 */	cmpwi r0, 2
/* 800E6D54 000E3CB4  41 82 01 F4 */	beq lbl_800E6F48
/* 800E6D58 000E3CB8  40 80 00 10 */	bge lbl_800E6D68
/* 800E6D5C 000E3CBC  2C 00 00 00 */	cmpwi r0, 0
/* 800E6D60 000E3CC0  41 82 00 14 */	beq lbl_800E6D74
/* 800E6D64 000E3CC4  48 00 03 88 */	b lbl_800E70EC
lbl_800E6D68:
/* 800E6D68 000E3CC8  2C 00 00 04 */	cmpwi r0, 4
/* 800E6D6C 000E3CCC  40 80 03 80 */	bge lbl_800E70EC
/* 800E6D70 000E3CD0  48 00 02 8C */	b lbl_800E6FFC
lbl_800E6D74:
/* 800E6D74 000E3CD4  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 800E6D78 000E3CD8  2C 00 00 0C */	cmpwi r0, 0xc
/* 800E6D7C 000E3CDC  40 82 00 64 */	bne lbl_800E6DE0
/* 800E6D80 000E3CE0  7F A8 EB 78 */	mr r8, r29
/* 800E6D84 000E3CE4  38 80 00 21 */	li r4, 0x21
/* 800E6D88 000E3CE8  38 A0 00 13 */	li r5, 0x13
/* 800E6D8C 000E3CEC  38 C0 00 28 */	li r6, 0x28
/* 800E6D90 000E3CF0  38 E0 00 29 */	li r7, 0x29
/* 800E6D94 000E3CF4  4B F6 CF 55 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 800E6D98 000E3CF8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 800E6D9C 000E3CFC  7F A6 EB 78 */	mr r6, r29
/* 800E6DA0 000E3D00  38 81 00 14 */	addi r4, r1, 0x14
/* 800E6DA4 000E3D04  38 A0 00 08 */	li r5, 8
/* 800E6DA8 000E3D08  B0 01 00 14 */	sth r0, 0x14(r1)
/* 800E6DAC 000E3D0C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E6DB0 000E3D10  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 800E6DB4 000E3D14  48 09 44 A1 */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
/* 800E6DB8 000E3D18  88 1E 08 38 */	lbz r0, 0x838(r30)
/* 800E6DBC 000E3D1C  38 60 00 01 */	li r3, 1
/* 800E6DC0 000E3D20  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800E6DC4 000E3D24  98 1E 08 38 */	stb r0, 0x838(r30)
/* 800E6DC8 000E3D28  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 800E6DCC 000E3D2C  48 05 3A ED */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 800E6DD0 000E3D30  D0 3E 05 A8 */	stfs f1, 0x5a8(r30)
/* 800E6DD4 000E3D34  38 00 00 02 */	li r0, 2
/* 800E6DD8 000E3D38  90 1E 05 68 */	stw r0, 0x568(r30)
/* 800E6DDC 000E3D3C  48 00 03 10 */	b lbl_800E70EC
lbl_800E6DE0:
/* 800E6DE0 000E3D40  81 83 00 00 */	lwz r12, 0(r3)
/* 800E6DE4 000E3D44  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 800E6DE8 000E3D48  7D 89 03 A6 */	mtctr r12
/* 800E6DEC 000E3D4C  4E 80 04 21 */	bctrl
/* 800E6DF0 000E3D50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6DF4 000E3D54  41 82 00 D4 */	beq lbl_800E6EC8
/* 800E6DF8 000E3D58  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 800E6DFC 000E3D5C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E6E00 000E3D60  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 800E6E04 000E3D64  80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 800E6E08 000E3D68  38 60 00 00 */	li r3, 0
/* 800E6E0C 000E3D6C  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 800E6E10 000E3D70  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 800E6E14 000E3D74  C0 45 00 00 */	lfs f2, 0(r5)
/* 800E6E18 000E3D78  C0 25 00 04 */	lfs f1, 4(r5)
/* 800E6E1C 000E3D7C  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 800E6E20 000E3D80  C0 05 00 08 */	lfs f0, 8(r5)
/* 800E6E24 000E3D84  7C 80 23 78 */	mr r0, r4
/* 800E6E28 000E3D88  39 00 00 0E */	li r8, 0xe
/* 800E6E2C 000E3D8C  38 C0 00 01 */	li r6, 1
/* 800E6E30 000E3D90  38 A0 FF FF */	li r5, -1
/* 800E6E34 000E3D94  3B FF 00 04 */	addi r31, r31, 4
/* 800E6E38 000E3D98  91 21 00 AC */	stw r9, 0xac(r1)
/* 800E6E3C 000E3D9C  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 800E6E40 000E3DA0  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 800E6E44 000E3DA4  7F E3 FB 78 */	mr r3, r31
/* 800E6E48 000E3DA8  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 800E6E4C 000E3DAC  38 80 00 0E */	li r4, 0xe
/* 800E6E50 000E3DB0  91 01 00 B0 */	stw r8, 0xb0(r1)
/* 800E6E54 000E3DB4  90 E1 00 AC */	stw r7, 0xac(r1)
/* 800E6E58 000E3DB8  90 C1 00 B4 */	stw r6, 0xb4(r1)
/* 800E6E5C 000E3DBC  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 800E6E60 000E3DC0  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 800E6E64 000E3DC4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800E6E68 000E3DC8  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 800E6E6C 000E3DCC  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 800E6E70 000E3DD0  48 04 A5 C9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E6E74 000E3DD4  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 800E6E78 000E3DD8  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 800E6E7C 000E3DDC  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 800E6E80 000E3DE0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E6E84 000E3DE4  90 1F 01 90 */	stw r0, 0x190(r31)
/* 800E6E88 000E3DE8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E6E8C 000E3DEC  80 A1 00 B4 */	lwz r5, 0xb4(r1)
/* 800E6E90 000E3DF0  80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 800E6E94 000E3DF4  90 BF 01 94 */	stw r5, 0x194(r31)
/* 800E6E98 000E3DF8  80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 800E6E9C 000E3DFC  90 7F 01 98 */	stw r3, 0x198(r31)
/* 800E6EA0 000E3E00  80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 800E6EA4 000E3E04  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 800E6EA8 000E3E08  80 A1 00 C4 */	lwz r5, 0xc4(r1)
/* 800E6EAC 000E3E0C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 800E6EB0 000E3E10  80 61 00 C8 */	lwz r3, 0xc8(r1)
/* 800E6EB4 000E3E14  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 800E6EB8 000E3E18  90 81 00 AC */	stw r4, 0xac(r1)
/* 800E6EBC 000E3E1C  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 800E6EC0 000E3E20  90 01 00 AC */	stw r0, 0xac(r1)
/* 800E6EC4 000E3E24  48 00 02 28 */	b lbl_800E70EC
lbl_800E6EC8:
/* 800E6EC8 000E3E28  80 FD 08 4C */	lwz r7, 0x84c(r29)
/* 800E6ECC 000E3E2C  7F C5 F3 78 */	mr r5, r30
/* 800E6ED0 000E3E30  38 61 00 54 */	addi r3, r1, 0x54
/* 800E6ED4 000E3E34  38 9E 04 5C */	addi r4, r30, 0x45c
/* 800E6ED8 000E3E38  C0 47 00 60 */	lfs f2, 0x60(r7)
/* 800E6EDC 000E3E3C  38 C1 00 48 */	addi r6, r1, 0x48
/* 800E6EE0 000E3E40  C0 27 00 50 */	lfs f1, 0x50(r7)
/* 800E6EE4 000E3E44  C0 07 00 40 */	lfs f0, 0x40(r7)
/* 800E6EE8 000E3E48  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800E6EEC 000E3E4C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 800E6EF0 000E3E50  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 800E6EF4 000E3E54  48 05 7D 2D */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 800E6EF8 000E3E58  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E6EFC 000E3E5C  C0 C1 00 54 */	lfs f6, 0x54(r1)
/* 800E6F00 000E3E60  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 800E6F04 000E3E64  C0 A1 00 58 */	lfs f5, 0x58(r1)
/* 800E6F08 000E3E68  C0 81 00 5C */	lfs f4, 0x5c(r1)
/* 800E6F0C 000E3E6C  38 7F 00 04 */	addi r3, r31, 4
/* 800E6F10 000E3E70  C0 65 00 00 */	lfs f3, 0(r5)
/* 800E6F14 000E3E74  38 81 00 90 */	addi r4, r1, 0x90
/* 800E6F18 000E3E78  C0 45 00 04 */	lfs f2, 4(r5)
/* 800E6F1C 000E3E7C  C0 25 00 08 */	lfs f1, 8(r5)
/* 800E6F20 000E3E80  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E6F24 000E3E84  D0 C1 00 90 */	stfs f6, 0x90(r1)
/* 800E6F28 000E3E88  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 800E6F2C 000E3E8C  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 800E6F30 000E3E90  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 800E6F34 000E3E94  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 800E6F38 000E3E98  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 800E6F3C 000E3E9C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 800E6F40 000E3EA0  48 04 A7 D9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 800E6F44 000E3EA4  48 00 01 A8 */	b lbl_800E70EC
lbl_800E6F48:
/* 800E6F48 000E3EA8  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 800E6F4C 000E3EAC  2C 00 00 0C */	cmpwi r0, 0xc
/* 800E6F50 000E3EB0  41 82 00 88 */	beq lbl_800E6FD8
/* 800E6F54 000E3EB4  38 00 00 03 */	li r0, 3
/* 800E6F58 000E3EB8  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E6F5C 000E3EBC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 800E6F60 000E3EC0  7F C4 F3 78 */	mr r4, r30
/* 800E6F64 000E3EC4  38 61 00 78 */	addi r3, r1, 0x78
/* 800E6F68 000E3EC8  D0 1E 08 30 */	stfs f0, 0x830(r30)
/* 800E6F6C 000E3ECC  48 03 39 C1 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800E6F70 000E3ED0  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 800E6F74 000E3ED4  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 800E6F78 000E3ED8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 800E6F7C 000E3EDC  38 A3 67 00 */	addi r5, r3, sDownVector__9CVector3f@l
/* 800E6F80 000E3EE0  C0 82 8F FC */	lfs f4, lbl_805AAD1C@sda21(r2)
/* 800E6F84 000E3EE4  7F C3 F3 78 */	mr r3, r30
/* 800E6F88 000E3EE8  EC 61 00 28 */	fsubs f3, f1, f0
/* 800E6F8C 000E3EEC  C0 25 00 04 */	lfs f1, 4(r5)
/* 800E6F90 000E3EF0  C0 45 00 08 */	lfs f2, 8(r5)
/* 800E6F94 000E3EF4  38 81 00 3C */	addi r4, r1, 0x3c
/* 800E6F98 000E3EF8  C0 05 00 00 */	lfs f0, 0(r5)
/* 800E6F9C 000E3EFC  EC C4 00 F2 */	fmuls f6, f4, f3
/* 800E6FA0 000E3F00  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 800E6FA4 000E3F04  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 800E6FA8 000E3F08  EC 86 00 72 */	fmuls f4, f6, f1
/* 800E6FAC 000E3F0C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 800E6FB0 000E3F10  EC 46 00 B2 */	fmuls f2, f6, f2
/* 800E6FB4 000E3F14  EC 06 00 32 */	fmuls f0, f6, f0
/* 800E6FB8 000E3F18  EC 85 20 2A */	fadds f4, f5, f4
/* 800E6FBC 000E3F1C  EC 43 10 2A */	fadds f2, f3, f2
/* 800E6FC0 000E3F20  EC 01 00 2A */	fadds f0, f1, f0
/* 800E6FC4 000E3F24  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 800E6FC8 000E3F28  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800E6FCC 000E3F2C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800E6FD0 000E3F30  4B F6 BE BD */	bl SetTranslation__6CActorFRC9CVector3f
/* 800E6FD4 000E3F34  48 00 01 18 */	b lbl_800E70EC
lbl_800E6FD8:
/* 800E6FD8 000E3F38  7F E3 FB 78 */	mr r3, r31
/* 800E6FDC 000E3F3C  48 05 38 DD */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 800E6FE0 000E3F40  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 800E6FE4 000E3F44  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E6FE8 000E3F48  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800E6FEC 000E3F4C  40 81 00 08 */	ble lbl_800E6FF4
/* 800E6FF0 000E3F50  EC 01 10 24 */	fdivs f0, f1, f2
lbl_800E6FF4:
/* 800E6FF4 000E3F54  D0 1E 08 30 */	stfs f0, 0x830(r30)
/* 800E6FF8 000E3F58  48 00 00 F4 */	b lbl_800E70EC
lbl_800E6FFC:
/* 800E6FFC 000E3F5C  C0 3E 08 18 */	lfs f1, 0x818(r30)
/* 800E7000 000E3F60  C0 02 90 04 */	lfs f0, lbl_805AAD24@sda21(r2)
/* 800E7004 000E3F64  EC 21 F8 2A */	fadds f1, f1, f31
/* 800E7008 000E3F68  D0 3E 08 18 */	stfs f1, 0x818(r30)
/* 800E700C 000E3F6C  C0 3E 08 18 */	lfs f1, 0x818(r30)
/* 800E7010 000E3F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E7014 000E3F74  4C 41 13 82 */	cror 2, 1, 2
/* 800E7018 000E3F78  40 82 00 40 */	bne lbl_800E7058
/* 800E701C 000E3F7C  7F A5 EB 78 */	mr r5, r29
/* 800E7020 000E3F80  38 80 00 11 */	li r4, 0x11
/* 800E7024 000E3F84  38 C0 FF FF */	li r6, -1
/* 800E7028 000E3F88  4B F6 A0 99 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 800E702C 000E3F8C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 800E7030 000E3F90  7F A3 EB 78 */	mr r3, r29
/* 800E7034 000E3F94  38 81 00 0C */	addi r4, r1, 0xc
/* 800E7038 000E3F98  B0 01 00 08 */	sth r0, 8(r1)
/* 800E703C 000E3F9C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800E7040 000E3FA0  4B F6 52 2D */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 800E7044 000E3FA4  38 00 00 04 */	li r0, 4
/* 800E7048 000E3FA8  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E704C 000E3FAC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 800E7050 000E3FB0  D0 1E 08 30 */	stfs f0, 0x830(r30)
/* 800E7054 000E3FB4  48 00 00 98 */	b lbl_800E70EC
lbl_800E7058:
/* 800E7058 000E3FB8  7F C4 F3 78 */	mr r4, r30
/* 800E705C 000E3FBC  38 61 00 60 */	addi r3, r1, 0x60
/* 800E7060 000E3FC0  48 03 38 CD */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800E7064 000E3FC4  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 800E7068 000E3FC8  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 800E706C 000E3FCC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 800E7070 000E3FD0  38 A3 67 00 */	addi r5, r3, sDownVector__9CVector3f@l
/* 800E7074 000E3FD4  C0 DE 00 60 */	lfs f6, 0x60(r30)
/* 800E7078 000E3FD8  7F C3 F3 78 */	mr r3, r30
/* 800E707C 000E3FDC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E7080 000E3FE0  C0 42 8F CC */	lfs f2, lbl_805AACEC@sda21(r2)
/* 800E7084 000E3FE4  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 800E7088 000E3FE8  38 81 00 30 */	addi r4, r1, 0x30
/* 800E708C 000E3FEC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 800E7090 000E3FF0  EC 82 00 72 */	fmuls f4, f2, f1
/* 800E7094 000E3FF4  C0 65 00 08 */	lfs f3, 8(r5)
/* 800E7098 000E3FF8  C0 45 00 00 */	lfs f2, 0(r5)
/* 800E709C 000E3FFC  C0 25 00 04 */	lfs f1, 4(r5)
/* 800E70A0 000E4000  EC 64 00 F2 */	fmuls f3, f4, f3
/* 800E70A4 000E4004  EC 44 00 B2 */	fmuls f2, f4, f2
/* 800E70A8 000E4008  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E70AC 000E400C  EC 24 00 72 */	fmuls f1, f4, f1
/* 800E70B0 000E4010  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 800E70B4 000E4014  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 800E70B8 000E4018  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 800E70BC 000E401C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 800E70C0 000E4020  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 800E70C4 000E4024  EC 86 18 2A */	fadds f4, f6, f3
/* 800E70C8 000E4028  EC 00 10 2A */	fadds f0, f0, f2
/* 800E70CC 000E402C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800E70D0 000E4030  EC 45 08 2A */	fadds f2, f5, f1
/* 800E70D4 000E4034  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800E70D8 000E4038  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 800E70DC 000E403C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800E70E0 000E4040  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800E70E4 000E4044  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 800E70E8 000E4048  4B F6 BD A5 */	bl SetTranslation__6CActorFRC9CVector3f
lbl_800E70EC:
/* 800E70EC 000E404C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 800E70F0 000E4050  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 800E70F4 000E4054  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 800E70F8 000E4058  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 800E70FC 000E405C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 800E7100 000E4060  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 800E7104 000E4064  7C 08 03 A6 */	mtlr r0
/* 800E7108 000E4068  38 21 00 F0 */	addi r1, r1, 0xf0
/* 800E710C 000E406C  4E 80 00 20 */	blr

.global Generate__7CBeetleFR13CStateManager9EStateMsgf
Generate__7CBeetleFR13CStateManager9EStateMsgf:
/* 800E7110 000E4070  94 21 F6 20 */	stwu r1, -0x9e0(r1)
/* 800E7114 000E4074  7C 08 02 A6 */	mflr r0
/* 800E7118 000E4078  90 01 09 E4 */	stw r0, 0x9e4(r1)
/* 800E711C 000E407C  DB E1 09 D0 */	stfd f31, 0x9d0(r1)
/* 800E7120 000E4080  F3 E1 09 D8 */	psq_st f31, -1576(r1), 0, qr0
/* 800E7124 000E4084  DB C1 09 C0 */	stfd f30, 0x9c0(r1)
/* 800E7128 000E4088  F3 C1 09 C8 */	psq_st f30, -1592(r1), 0, qr0
/* 800E712C 000E408C  DB A1 09 B0 */	stfd f29, 0x9b0(r1)
/* 800E7130 000E4090  F3 A1 09 B8 */	psq_st f29, -1608(r1), 0, qr0
/* 800E7134 000E4094  DB 81 09 A0 */	stfd f28, 0x9a0(r1)
/* 800E7138 000E4098  F3 81 09 A8 */	psq_st f28, -1624(r1), 0, qr0
/* 800E713C 000E409C  BF 61 09 8C */	stmw r27, 0x98c(r1)
/* 800E7140 000E40A0  7C 7C 1B 78 */	mr r28, r3
/* 800E7144 000E40A4  FF 80 08 90 */	fmr f28, f1
/* 800E7148 000E40A8  2C 05 00 01 */	cmpwi r5, 1
/* 800E714C 000E40AC  83 E3 04 50 */	lwz r31, 0x450(r3)
/* 800E7150 000E40B0  7C 9D 23 78 */	mr r29, r4
/* 800E7154 000E40B4  41 82 02 B8 */	beq lbl_800E740C
/* 800E7158 000E40B8  40 80 00 10 */	bge lbl_800E7168
/* 800E715C 000E40BC  2C 05 00 00 */	cmpwi r5, 0
/* 800E7160 000E40C0  40 80 00 14 */	bge lbl_800E7174
/* 800E7164 000E40C4  48 00 06 70 */	b lbl_800E77D4
lbl_800E7168:
/* 800E7168 000E40C8  2C 05 00 03 */	cmpwi r5, 3
/* 800E716C 000E40CC  40 80 06 68 */	bge lbl_800E77D4
/* 800E7170 000E40D0  48 00 06 1C */	b lbl_800E778C
lbl_800E7174:
/* 800E7174 000E40D4  80 1C 05 6C */	lwz r0, 0x56c(r28)
/* 800E7178 000E40D8  2C 00 00 00 */	cmpwi r0, 0
/* 800E717C 000E40DC  41 82 00 10 */	beq lbl_800E718C
/* 800E7180 000E40E0  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 800E7184 000E40E4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E7188 000E40E8  41 82 01 80 */	beq lbl_800E7308
lbl_800E718C:
/* 800E718C 000E40EC  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 800E7190 000E40F0  38 C0 00 00 */	li r6, 0
/* 800E7194 000E40F4  39 25 AA 68 */	addi r9, r5, lbl_803DAA68@l
/* 800E7198 000E40F8  80 61 00 EC */	lwz r3, 0xec(r1)
/* 800E719C 000E40FC  50 C3 F8 00 */	rlwimi r3, r6, 0x1f, 0, 0
/* 800E71A0 000E4100  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 800E71A4 000E4104  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 800E71A8 000E4108  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 800E71AC 000E410C  7C 60 1B 78 */	mr r0, r3
/* 800E71B0 000E4110  39 00 00 0E */	li r8, 0xe
/* 800E71B4 000E4114  C0 24 00 04 */	lfs f1, 4(r4)
/* 800E71B8 000E4118  38 A0 FF FF */	li r5, -1
/* 800E71BC 000E411C  C0 04 00 08 */	lfs f0, 8(r4)
/* 800E71C0 000E4120  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 800E71C4 000E4124  91 21 00 D0 */	stw r9, 0xd0(r1)
/* 800E71C8 000E4128  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 800E71CC 000E412C  3B DF 00 04 */	addi r30, r31, 4
/* 800E71D0 000E4130  38 80 00 0E */	li r4, 0xe
/* 800E71D4 000E4134  90 61 00 EC */	stw r3, 0xec(r1)
/* 800E71D8 000E4138  7F C3 F3 78 */	mr r3, r30
/* 800E71DC 000E413C  91 01 00 D4 */	stw r8, 0xd4(r1)
/* 800E71E0 000E4140  90 E1 00 D0 */	stw r7, 0xd0(r1)
/* 800E71E4 000E4144  90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 800E71E8 000E4148  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 800E71EC 000E414C  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 800E71F0 000E4150  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 800E71F4 000E4154  90 A1 00 E8 */	stw r5, 0xe8(r1)
/* 800E71F8 000E4158  90 01 00 EC */	stw r0, 0xec(r1)
/* 800E71FC 000E415C  48 04 A2 3D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E7200 000E4160  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 800E7204 000E4164  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 800E7208 000E4168  38 E3 A9 F0 */	addi r7, r3, lbl_803DA9F0@l
/* 800E720C 000E416C  81 01 00 D8 */	lwz r8, 0xd8(r1)
/* 800E7210 000E4170  90 1E 01 90 */	stw r0, 0x190(r30)
/* 800E7214 000E4174  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 800E7218 000E4178  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 800E721C 000E417C  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 800E7220 000E4180  91 1E 01 94 */	stw r8, 0x194(r30)
/* 800E7224 000E4184  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 800E7228 000E4188  80 A1 00 DC */	lwz r5, 0xdc(r1)
/* 800E722C 000E418C  38 61 01 20 */	addi r3, r1, 0x120
/* 800E7230 000E4190  81 21 00 E0 */	lwz r9, 0xe0(r1)
/* 800E7234 000E4194  38 81 00 48 */	addi r4, r1, 0x48
/* 800E7238 000E4198  90 BE 01 98 */	stw r5, 0x198(r30)
/* 800E723C 000E419C  38 A1 00 6C */	addi r5, r1, 0x6c
/* 800E7240 000E41A0  81 01 00 E4 */	lwz r8, 0xe4(r1)
/* 800E7244 000E41A4  91 3E 01 9C */	stw r9, 0x19c(r30)
/* 800E7248 000E41A8  81 21 00 E8 */	lwz r9, 0xe8(r1)
/* 800E724C 000E41AC  91 1E 01 A0 */	stw r8, 0x1a0(r30)
/* 800E7250 000E41B0  81 01 00 EC */	lwz r8, 0xec(r1)
/* 800E7254 000E41B4  91 3E 01 A4 */	stw r9, 0x1a4(r30)
/* 800E7258 000E41B8  91 1E 01 A8 */	stw r8, 0x1a8(r30)
/* 800E725C 000E41BC  81 1D 08 4C */	lwz r8, 0x84c(r29)
/* 800E7260 000E41C0  90 E1 00 D0 */	stw r7, 0xd0(r1)
/* 800E7264 000E41C4  C0 48 00 60 */	lfs f2, 0x60(r8)
/* 800E7268 000E41C8  C0 28 00 50 */	lfs f1, 0x50(r8)
/* 800E726C 000E41CC  C0 08 00 40 */	lfs f0, 0x40(r8)
/* 800E7270 000E41D0  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 800E7274 000E41D4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800E7278 000E41D8  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 800E727C 000E41DC  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 800E7280 000E41E0  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 800E7284 000E41E4  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 800E7288 000E41E8  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 800E728C 000E41EC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 800E7290 000E41F0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800E7294 000E41F4  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 800E7298 000E41F8  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 800E729C 000E41FC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800E72A0 000E4200  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 800E72A4 000E4204  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 800E72A8 000E4208  48 22 C8 69 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 800E72AC 000E420C  38 61 01 50 */	addi r3, r1, 0x150
/* 800E72B0 000E4210  38 81 01 20 */	addi r4, r1, 0x120
/* 800E72B4 000E4214  48 22 B8 C1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800E72B8 000E4218  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 800E72BC 000E421C  38 7C 00 34 */	addi r3, r28, 0x34
/* 800E72C0 000E4220  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 800E72C4 000E4224  38 81 01 50 */	addi r4, r1, 0x150
/* 800E72C8 000E4228  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 800E72CC 000E422C  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 800E72D0 000E4230  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 800E72D4 000E4234  D0 41 01 7C */	stfs f2, 0x17c(r1)
/* 800E72D8 000E4238  48 22 B8 69 */	bl __as__12CTransform4fFRC12CTransform4f
/* 800E72DC 000E423C  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 800E72E0 000E4240  38 60 00 01 */	li r3, 1
/* 800E72E4 000E4244  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 800E72E8 000E4248  98 1C 00 E4 */	stb r0, 0xe4(r28)
/* 800E72EC 000E424C  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 800E72F0 000E4250  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 800E72F4 000E4254  98 1C 00 E4 */	stb r0, 0xe4(r28)
/* 800E72F8 000E4258  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 800E72FC 000E425C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 800E7300 000E4260  98 1C 00 E4 */	stb r0, 0xe4(r28)
/* 800E7304 000E4264  48 00 00 D0 */	b lbl_800E73D4
lbl_800E7308:
/* 800E7308 000E4268  81 1C 03 88 */	lwz r8, 0x388(r28)
/* 800E730C 000E426C  3C E0 80 3E */	lis r7, lbl_803DAA68@ha
/* 800E7310 000E4270  38 C0 00 00 */	li r6, 0
/* 800E7314 000E4274  80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 800E7318 000E4278  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 800E731C 000E427C  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 800E7320 000E4280  50 C5 F8 00 */	rlwimi r5, r6, 0x1f, 0, 0
/* 800E7324 000E4284  38 E7 AA 68 */	addi r7, r7, lbl_803DAA68@l
/* 800E7328 000E4288  C0 24 00 04 */	lfs f1, 4(r4)
/* 800E732C 000E428C  20 68 FF FF */	subfic r3, r8, -1
/* 800E7330 000E4290  C0 04 00 08 */	lfs f0, 8(r4)
/* 800E7334 000E4294  38 08 00 01 */	addi r0, r8, 1
/* 800E7338 000E4298  7C 60 03 78 */	or r0, r3, r0
/* 800E733C 000E429C  90 A1 00 CC */	stw r5, 0xcc(r1)
/* 800E7340 000E42A0  38 80 00 0E */	li r4, 0xe
/* 800E7344 000E42A4  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 800E7348 000E42A8  90 E1 00 B0 */	stw r7, 0xb0(r1)
/* 800E734C 000E42AC  38 E3 A9 F0 */	addi r7, r3, lbl_803DA9F0@l
/* 800E7350 000E42B0  50 05 F8 42 */	rlwimi r5, r0, 0x1f, 1, 1
/* 800E7354 000E42B4  3B DF 00 04 */	addi r30, r31, 4
/* 800E7358 000E42B8  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 800E735C 000E42BC  7F C3 F3 78 */	mr r3, r30
/* 800E7360 000E42C0  38 80 00 0E */	li r4, 0xe
/* 800E7364 000E42C4  90 E1 00 B0 */	stw r7, 0xb0(r1)
/* 800E7368 000E42C8  90 C1 00 B8 */	stw r6, 0xb8(r1)
/* 800E736C 000E42CC  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 800E7370 000E42D0  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 800E7374 000E42D4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 800E7378 000E42D8  91 01 00 C8 */	stw r8, 0xc8(r1)
/* 800E737C 000E42DC  90 A1 00 CC */	stw r5, 0xcc(r1)
/* 800E7380 000E42E0  48 04 A0 B9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E7384 000E42E4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800E7388 000E42E8  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 800E738C 000E42EC  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 800E7390 000E42F0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E7394 000E42F4  90 1E 01 90 */	stw r0, 0x190(r30)
/* 800E7398 000E42F8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E739C 000E42FC  80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 800E73A0 000E4300  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 800E73A4 000E4304  90 BE 01 94 */	stw r5, 0x194(r30)
/* 800E73A8 000E4308  80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 800E73AC 000E430C  90 7E 01 98 */	stw r3, 0x198(r30)
/* 800E73B0 000E4310  80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 800E73B4 000E4314  90 BE 01 9C */	stw r5, 0x19c(r30)
/* 800E73B8 000E4318  80 A1 00 C8 */	lwz r5, 0xc8(r1)
/* 800E73BC 000E431C  90 7E 01 A0 */	stw r3, 0x1a0(r30)
/* 800E73C0 000E4320  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 800E73C4 000E4324  90 BE 01 A4 */	stw r5, 0x1a4(r30)
/* 800E73C8 000E4328  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 800E73CC 000E432C  90 7E 01 A8 */	stw r3, 0x1a8(r30)
/* 800E73D0 000E4330  90 01 00 B0 */	stw r0, 0xb0(r1)
lbl_800E73D4:
/* 800E73D4 000E4334  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 800E73D8 000E4338  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800E73DC 000E433C  40 82 00 10 */	bne lbl_800E73EC
/* 800E73E0 000E4340  7F E3 FB 78 */	mr r3, r31
/* 800E73E4 000E4344  7F A4 EB 78 */	mr r4, r29
/* 800E73E8 000E4348  48 05 39 09 */	bl Activate__15CBodyControllerFR13CStateManager
lbl_800E73EC:
/* 800E73EC 000E434C  7F 83 E3 78 */	mr r3, r28
/* 800E73F0 000E4350  7F A6 EB 78 */	mr r6, r29
/* 800E73F4 000E4354  38 80 00 21 */	li r4, 0x21
/* 800E73F8 000E4358  38 A0 00 13 */	li r5, 0x13
/* 800E73FC 000E435C  4B F6 CA D9 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 800E7400 000E4360  38 00 00 00 */	li r0, 0
/* 800E7404 000E4364  90 1C 05 68 */	stw r0, 0x568(r28)
/* 800E7408 000E4368  48 00 03 CC */	b lbl_800E77D4
lbl_800E740C:
/* 800E740C 000E436C  80 1C 05 68 */	lwz r0, 0x568(r28)
/* 800E7410 000E4370  2C 00 00 01 */	cmpwi r0, 1
/* 800E7414 000E4374  41 82 03 C0 */	beq lbl_800E77D4
/* 800E7418 000E4378  40 80 00 10 */	bge lbl_800E7428
/* 800E741C 000E437C  2C 00 00 00 */	cmpwi r0, 0
/* 800E7420 000E4380  40 80 00 14 */	bge lbl_800E7434
/* 800E7424 000E4384  48 00 03 B0 */	b lbl_800E77D4
lbl_800E7428:
/* 800E7428 000E4388  2C 00 00 03 */	cmpwi r0, 3
/* 800E742C 000E438C  40 80 03 A8 */	bge lbl_800E77D4
/* 800E7430 000E4390  48 00 00 F0 */	b lbl_800E7520
lbl_800E7434:
/* 800E7434 000E4394  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 800E7438 000E4398  2C 00 00 0C */	cmpwi r0, 0xc
/* 800E743C 000E439C  40 82 00 1C */	bne lbl_800E7458
/* 800E7440 000E43A0  38 00 00 02 */	li r0, 2
/* 800E7444 000E43A4  90 1C 05 68 */	stw r0, 0x568(r28)
/* 800E7448 000E43A8  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 800E744C 000E43AC  48 05 34 6D */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 800E7450 000E43B0  D0 3C 05 A8 */	stfs f1, 0x5a8(r28)
/* 800E7454 000E43B4  48 00 03 80 */	b lbl_800E77D4
lbl_800E7458:
/* 800E7458 000E43B8  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 800E745C 000E43BC  38 C0 00 00 */	li r6, 0
/* 800E7460 000E43C0  39 25 AA 68 */	addi r9, r5, lbl_803DAA68@l
/* 800E7464 000E43C4  80 61 00 AC */	lwz r3, 0xac(r1)
/* 800E7468 000E43C8  50 C3 F8 00 */	rlwimi r3, r6, 0x1f, 0, 0
/* 800E746C 000E43CC  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 800E7470 000E43D0  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 800E7474 000E43D4  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 800E7478 000E43D8  7C 60 1B 78 */	mr r0, r3
/* 800E747C 000E43DC  39 00 00 0E */	li r8, 0xe
/* 800E7480 000E43E0  C0 24 00 04 */	lfs f1, 4(r4)
/* 800E7484 000E43E4  38 A0 FF FF */	li r5, -1
/* 800E7488 000E43E8  C0 04 00 08 */	lfs f0, 8(r4)
/* 800E748C 000E43EC  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 800E7490 000E43F0  91 21 00 90 */	stw r9, 0x90(r1)
/* 800E7494 000E43F4  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 800E7498 000E43F8  3B DF 00 04 */	addi r30, r31, 4
/* 800E749C 000E43FC  38 80 00 0E */	li r4, 0xe
/* 800E74A0 000E4400  90 61 00 AC */	stw r3, 0xac(r1)
/* 800E74A4 000E4404  7F C3 F3 78 */	mr r3, r30
/* 800E74A8 000E4408  91 01 00 94 */	stw r8, 0x94(r1)
/* 800E74AC 000E440C  90 E1 00 90 */	stw r7, 0x90(r1)
/* 800E74B0 000E4410  90 C1 00 98 */	stw r6, 0x98(r1)
/* 800E74B4 000E4414  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 800E74B8 000E4418  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 800E74BC 000E441C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 800E74C0 000E4420  90 A1 00 A8 */	stw r5, 0xa8(r1)
/* 800E74C4 000E4424  90 01 00 AC */	stw r0, 0xac(r1)
/* 800E74C8 000E4428  48 04 9F 71 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 800E74CC 000E442C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800E74D0 000E4430  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 800E74D4 000E4434  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 800E74D8 000E4438  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 800E74DC 000E443C  90 1E 01 90 */	stw r0, 0x190(r30)
/* 800E74E0 000E4440  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 800E74E4 000E4444  80 A1 00 98 */	lwz r5, 0x98(r1)
/* 800E74E8 000E4448  80 61 00 9C */	lwz r3, 0x9c(r1)
/* 800E74EC 000E444C  90 BE 01 94 */	stw r5, 0x194(r30)
/* 800E74F0 000E4450  80 A1 00 A0 */	lwz r5, 0xa0(r1)
/* 800E74F4 000E4454  90 7E 01 98 */	stw r3, 0x198(r30)
/* 800E74F8 000E4458  80 61 00 A4 */	lwz r3, 0xa4(r1)
/* 800E74FC 000E445C  90 BE 01 9C */	stw r5, 0x19c(r30)
/* 800E7500 000E4460  80 A1 00 A8 */	lwz r5, 0xa8(r1)
/* 800E7504 000E4464  90 7E 01 A0 */	stw r3, 0x1a0(r30)
/* 800E7508 000E4468  80 61 00 AC */	lwz r3, 0xac(r1)
/* 800E750C 000E446C  90 BE 01 A4 */	stw r5, 0x1a4(r30)
/* 800E7510 000E4470  90 81 00 90 */	stw r4, 0x90(r1)
/* 800E7514 000E4474  90 7E 01 A8 */	stw r3, 0x1a8(r30)
/* 800E7518 000E4478  90 01 00 90 */	stw r0, 0x90(r1)
/* 800E751C 000E447C  48 00 02 B8 */	b lbl_800E77D4
lbl_800E7520:
/* 800E7520 000E4480  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 800E7524 000E4484  2C 00 00 0C */	cmpwi r0, 0xc
/* 800E7528 000E4488  41 82 00 10 */	beq lbl_800E7538
/* 800E752C 000E448C  38 00 00 04 */	li r0, 4
/* 800E7530 000E4490  90 1C 05 68 */	stw r0, 0x568(r28)
/* 800E7534 000E4494  48 00 02 A0 */	b lbl_800E77D4
lbl_800E7538:
/* 800E7538 000E4498  80 1C 00 68 */	lwz r0, 0x68(r28)
/* 800E753C 000E449C  38 80 00 00 */	li r4, 0
/* 800E7540 000E44A0  80 BC 00 6C */	lwz r5, 0x6c(r28)
/* 800E7544 000E44A4  3C 60 00 08 */	lis r3, 8
/* 800E7548 000E44A8  7C 00 20 38 */	and r0, r0, r4
/* 800E754C 000E44AC  7C A3 18 38 */	and r3, r5, r3
/* 800E7550 000E44B0  7C 63 22 78 */	xor r3, r3, r4
/* 800E7554 000E44B4  7C 00 22 78 */	xor r0, r0, r4
/* 800E7558 000E44B8  7C 60 03 79 */	or. r0, r3, r0
/* 800E755C 000E44BC  41 82 02 78 */	beq lbl_800E77D4
/* 800E7560 000E44C0  C0 3C 05 A8 */	lfs f1, 0x5a8(r28)
/* 800E7564 000E44C4  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E7568 000E44C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E756C 000E44CC  40 81 02 68 */	ble lbl_800E77D4
/* 800E7570 000E44D0  90 81 01 80 */	stw r4, 0x180(r1)
/* 800E7574 000E44D4  38 61 01 08 */	addi r3, r1, 0x108
/* 800E7578 000E44D8  C0 A2 90 00 */	lfs f5, lbl_805AAD20@sda21(r2)
/* 800E757C 000E44DC  38 81 00 3C */	addi r4, r1, 0x3c
/* 800E7580 000E44E0  C0 FC 00 60 */	lfs f7, 0x60(r28)
/* 800E7584 000E44E4  38 A1 00 30 */	addi r5, r1, 0x30
/* 800E7588 000E44E8  C0 DC 00 50 */	lfs f6, 0x50(r28)
/* 800E758C 000E44EC  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 800E7590 000E44F0  EC 07 28 2A */	fadds f0, f7, f5
/* 800E7594 000E44F4  EC 66 28 2A */	fadds f3, f6, f5
/* 800E7598 000E44F8  EC 81 28 2A */	fadds f4, f1, f5
/* 800E759C 000E44FC  EC 41 28 28 */	fsubs f2, f1, f5
/* 800E75A0 000E4500  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800E75A4 000E4504  EC 26 28 28 */	fsubs f1, f6, f5
/* 800E75A8 000E4508  EC 07 28 28 */	fsubs f0, f7, f5
/* 800E75AC 000E450C  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 800E75B0 000E4510  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 800E75B4 000E4514  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 800E75B8 000E4518  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 800E75BC 000E451C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800E75C0 000E4520  48 25 0F 49 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 800E75C4 000E4524  80 AD 87 7C */	lwz r5, lbl_805A733C@sda21(r13)
/* 800E75C8 000E4528  38 60 00 00 */	li r3, 0
/* 800E75CC 000E452C  38 80 00 01 */	li r4, 1
/* 800E75D0 000E4530  48 2A 29 25 */	bl __shl2i
/* 800E75D4 000E4534  39 00 00 01 */	li r8, 1
/* 800E75D8 000E4538  38 00 00 00 */	li r0, 0
/* 800E75DC 000E453C  90 81 00 F4 */	stw r4, 0xf4(r1)
/* 800E75E0 000E4540  7F 87 E3 78 */	mr r7, r28
/* 800E75E4 000E4544  38 81 01 80 */	addi r4, r1, 0x180
/* 800E75E8 000E4548  38 A1 01 08 */	addi r5, r1, 0x108
/* 800E75EC 000E454C  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 800E75F0 000E4550  7F A3 EB 78 */	mr r3, r29
/* 800E75F4 000E4554  38 C1 00 F0 */	addi r6, r1, 0xf0
/* 800E75F8 000E4558  91 01 00 88 */	stw r8, 0x88(r1)
/* 800E75FC 000E455C  90 01 00 FC */	stw r0, 0xfc(r1)
/* 800E7600 000E4560  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 800E7604 000E4564  91 01 01 00 */	stw r8, 0x100(r1)
/* 800E7608 000E4568  4B F6 51 19 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 800E760C 000E456C  80 01 01 80 */	lwz r0, 0x180(r1)
/* 800E7610 000E4570  2C 00 00 00 */	cmpwi r0, 0
/* 800E7614 000E4574  41 82 01 20 */	beq lbl_800E7734
/* 800E7618 000E4578  C0 02 90 00 */	lfs f0, lbl_805AAD20@sda21(r2)
/* 800E761C 000E457C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E7620 000E4580  C7 E3 66 A0 */	lfsu f31, sZeroVector__9CVector3f@l(r3)
/* 800E7624 000E4584  3B E1 01 84 */	addi r31, r1, 0x184
/* 800E7628 000E4588  EC 20 07 32 */	fmuls f1, f0, f28
/* 800E762C 000E458C  C0 1C 05 A8 */	lfs f0, 0x5a8(r28)
/* 800E7630 000E4590  C3 C3 00 04 */	lfs f30, 4(r3)
/* 800E7634 000E4594  7F FB FB 78 */	mr r27, r31
/* 800E7638 000E4598  C3 A3 00 08 */	lfs f29, 8(r3)
/* 800E763C 000E459C  3B C1 00 68 */	addi r30, r1, 0x68
/* 800E7640 000E45A0  EF 81 00 24 */	fdivs f28, f1, f0
/* 800E7644 000E45A4  48 00 00 AC */	b lbl_800E76F0
lbl_800E7648:
/* 800E7648 000E45A8  A0 1B 00 00 */	lhz r0, 0(r27)
/* 800E764C 000E45AC  7F A3 EB 78 */	mr r3, r29
/* 800E7650 000E45B0  38 81 00 08 */	addi r4, r1, 8
/* 800E7654 000E45B4  B0 01 00 08 */	sth r0, 8(r1)
/* 800E7658 000E45B8  4B F6 4F 1D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800E765C 000E45BC  28 03 00 00 */	cmplwi r3, 0
/* 800E7660 000E45C0  41 82 00 8C */	beq lbl_800E76EC
/* 800E7664 000E45C4  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 800E7668 000E45C8  7F 85 E3 78 */	mr r5, r28
/* 800E766C 000E45CC  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 800E7670 000E45D0  38 9C 04 5C */	addi r4, r28, 0x45c
/* 800E7674 000E45D4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800E7678 000E45D8  38 61 00 24 */	addi r3, r1, 0x24
/* 800E767C 000E45DC  C0 22 90 00 */	lfs f1, lbl_805AAD20@sda21(r2)
/* 800E7680 000E45E0  38 C1 00 18 */	addi r6, r1, 0x18
/* 800E7684 000E45E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800E7688 000E45E8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800E768C 000E45EC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 800E7690 000E45F0  48 05 72 61 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 800E7694 000E45F4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 800E7698 000E45F8  C0 0D 87 80 */	lfs f0, lbl_805A7340@sda21(r13)
/* 800E769C 000E45FC  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 800E76A0 000E4600  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 800E76A4 000E4604  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800E76A8 000E4608  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 800E76AC 000E460C  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 800E76B0 000E4610  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 800E76B4 000E4614  40 80 00 0C */	bge lbl_800E76C0
/* 800E76B8 000E4618  7F C3 F3 78 */	mr r3, r30
/* 800E76BC 000E461C  48 00 00 08 */	b lbl_800E76C4
lbl_800E76C0:
/* 800E76C0 000E4620  38 6D 87 80 */	addi r3, r13, lbl_805A7340@sda21
lbl_800E76C4:
/* 800E76C4 000E4624  C0 63 00 00 */	lfs f3, 0(r3)
/* 800E76C8 000E4628  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 800E76CC 000E462C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 800E76D0 000E4630  EC 1C 00 F2 */	fmuls f0, f28, f3
/* 800E76D4 000E4634  EC 5C 00 B2 */	fmuls f2, f28, f2
/* 800E76D8 000E4638  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 800E76DC 000E463C  EC 3C 00 72 */	fmuls f1, f28, f1
/* 800E76E0 000E4640  EF BD 00 2A */	fadds f29, f29, f0
/* 800E76E4 000E4644  EF FF 10 2A */	fadds f31, f31, f2
/* 800E76E8 000E4648  EF DE 08 2A */	fadds f30, f30, f1
lbl_800E76EC:
/* 800E76EC 000E464C  3B 7B 00 02 */	addi r27, r27, 2
lbl_800E76F0:
/* 800E76F0 000E4650  80 01 01 80 */	lwz r0, 0x180(r1)
/* 800E76F4 000E4654  54 00 08 3C */	slwi r0, r0, 1
/* 800E76F8 000E4658  7C 1F 02 14 */	add r0, r31, r0
/* 800E76FC 000E465C  7C 1B 00 40 */	cmplw r27, r0
/* 800E7700 000E4660  40 82 FF 48 */	bne lbl_800E7648
/* 800E7704 000E4664  C0 5C 00 50 */	lfs f2, 0x50(r28)
/* 800E7708 000E4668  7F 83 E3 78 */	mr r3, r28
/* 800E770C 000E466C  C0 3C 00 60 */	lfs f1, 0x60(r28)
/* 800E7710 000E4670  38 81 00 0C */	addi r4, r1, 0xc
/* 800E7714 000E4674  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 800E7718 000E4678  EC 42 F0 2A */	fadds f2, f2, f30
/* 800E771C 000E467C  EC 21 E8 2A */	fadds f1, f1, f29
/* 800E7720 000E4680  EC 00 F8 2A */	fadds f0, f0, f31
/* 800E7724 000E4684  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800E7728 000E4688  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E772C 000E468C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800E7730 000E4690  4B F6 B7 5D */	bl SetTranslation__6CActorFRC9CVector3f
lbl_800E7734:
/* 800E7734 000E4694  80 A1 01 80 */	lwz r5, 0x180(r1)
/* 800E7738 000E4698  38 60 00 00 */	li r3, 0
/* 800E773C 000E469C  2C 05 00 00 */	cmpwi r5, 0
/* 800E7740 000E46A0  40 81 00 40 */	ble lbl_800E7780
/* 800E7744 000E46A4  2C 05 00 08 */	cmpwi r5, 8
/* 800E7748 000E46A8  38 85 FF F8 */	addi r4, r5, -8
/* 800E774C 000E46AC  40 81 00 20 */	ble lbl_800E776C
/* 800E7750 000E46B0  38 04 00 07 */	addi r0, r4, 7
/* 800E7754 000E46B4  54 00 E8 FE */	srwi r0, r0, 3
/* 800E7758 000E46B8  7C 09 03 A6 */	mtctr r0
/* 800E775C 000E46BC  2C 04 00 00 */	cmpwi r4, 0
/* 800E7760 000E46C0  40 81 00 0C */	ble lbl_800E776C
lbl_800E7764:
/* 800E7764 000E46C4  38 63 00 08 */	addi r3, r3, 8
/* 800E7768 000E46C8  42 00 FF FC */	bdnz lbl_800E7764
lbl_800E776C:
/* 800E776C 000E46CC  7C 03 28 50 */	subf r0, r3, r5
/* 800E7770 000E46D0  7C 09 03 A6 */	mtctr r0
/* 800E7774 000E46D4  7C 03 28 00 */	cmpw r3, r5
/* 800E7778 000E46D8  40 80 00 08 */	bge lbl_800E7780
lbl_800E777C:
/* 800E777C 000E46DC  42 00 00 00 */	bdnz lbl_800E777C
lbl_800E7780:
/* 800E7780 000E46E0  38 00 00 00 */	li r0, 0
/* 800E7784 000E46E4  90 01 01 80 */	stw r0, 0x180(r1)
/* 800E7788 000E46E8  48 00 00 4C */	b lbl_800E77D4
lbl_800E778C:
/* 800E778C 000E46EC  7F A7 EB 78 */	mr r7, r29
/* 800E7790 000E46F0  38 80 00 21 */	li r4, 0x21
/* 800E7794 000E46F4  38 A0 00 13 */	li r5, 0x13
/* 800E7798 000E46F8  38 C0 00 25 */	li r6, 0x25
/* 800E779C 000E46FC  4B F6 CA 49 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 800E77A0 000E4700  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 800E77A4 000E4704  38 60 00 00 */	li r3, 0
/* 800E77A8 000E4708  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800E77AC 000E470C  98 1C 03 28 */	stb r0, 0x328(r28)
/* 800E77B0 000E4710  88 1C 08 38 */	lbz r0, 0x838(r28)
/* 800E77B4 000E4714  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800E77B8 000E4718  98 1C 08 38 */	stb r0, 0x838(r28)
/* 800E77BC 000E471C  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 800E77C0 000E4720  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 800E77C4 000E4724  41 82 00 10 */	beq lbl_800E77D4
/* 800E77C8 000E4728  7F 83 E3 78 */	mr r3, r28
/* 800E77CC 000E472C  7F A4 EB 78 */	mr r4, r29
/* 800E77D0 000E4730  4B F9 12 31 */	bl DeathDelete__10CPatternedFR13CStateManager
lbl_800E77D4:
/* 800E77D4 000E4734  E3 E1 09 D8 */	psq_l f31, -1576(r1), 0, qr0
/* 800E77D8 000E4738  CB E1 09 D0 */	lfd f31, 0x9d0(r1)
/* 800E77DC 000E473C  E3 C1 09 C8 */	psq_l f30, -1592(r1), 0, qr0
/* 800E77E0 000E4740  CB C1 09 C0 */	lfd f30, 0x9c0(r1)
/* 800E77E4 000E4744  E3 A1 09 B8 */	psq_l f29, -1608(r1), 0, qr0
/* 800E77E8 000E4748  CB A1 09 B0 */	lfd f29, 0x9b0(r1)
/* 800E77EC 000E474C  E3 81 09 A8 */	psq_l f28, -1624(r1), 0, qr0
/* 800E77F0 000E4750  CB 81 09 A0 */	lfd f28, 0x9a0(r1)
/* 800E77F4 000E4754  BB 61 09 8C */	lmw r27, 0x98c(r1)
/* 800E77F8 000E4758  80 01 09 E4 */	lwz r0, 0x9e4(r1)
/* 800E77FC 000E475C  7C 08 03 A6 */	mtlr r0
/* 800E7800 000E4760  38 21 09 E0 */	addi r1, r1, 0x9e0
/* 800E7804 000E4764  4E 80 00 20 */	blr

.global GetOrbitPosition__7CBeetleCFRC13CStateManager
GetOrbitPosition__7CBeetleCFRC13CStateManager:
/* 800E7808 000E4768  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800E780C 000E476C  7C 08 02 A6 */	mflr r0
/* 800E7810 000E4770  90 01 00 64 */	stw r0, 0x64(r1)
/* 800E7814 000E4774  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800E7818 000E4778  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 800E781C 000E477C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 800E7820 000E4780  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 800E7824 000E4784  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E7828 000E4788  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800E782C 000E478C  7C 7E 1B 78 */	mr r30, r3
/* 800E7830 000E4790  7C 9F 23 78 */	mr r31, r4
/* 800E7834 000E4794  38 61 00 14 */	addi r3, r1, 0x14
/* 800E7838 000E4798  4B F9 0D 75 */	bl GetOrbitPosition__10CPatternedCFRC13CStateManager
/* 800E783C 000E479C  C3 E1 00 14 */	lfs f31, 0x14(r1)
/* 800E7840 000E47A0  7F E4 FB 78 */	mr r4, r31
/* 800E7844 000E47A4  C3 C1 00 18 */	lfs f30, 0x18(r1)
/* 800E7848 000E47A8  38 61 00 20 */	addi r3, r1, 0x20
/* 800E784C 000E47AC  48 03 30 E1 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800E7850 000E47B0  38 61 00 08 */	addi r3, r1, 8
/* 800E7854 000E47B4  38 81 00 20 */	addi r4, r1, 0x20
/* 800E7858 000E47B8  48 24 FD B5 */	bl GetCenterPoint__6CAABoxCFv
/* 800E785C 000E47BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800E7860 000E47C0  D3 FE 00 00 */	stfs f31, 0(r30)
/* 800E7864 000E47C4  D3 DE 00 04 */	stfs f30, 4(r30)
/* 800E7868 000E47C8  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800E786C 000E47CC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 800E7870 000E47D0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800E7874 000E47D4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 800E7878 000E47D8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 800E787C 000E47DC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E7880 000E47E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800E7884 000E47E4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800E7888 000E47E8  7C 08 03 A6 */	mtlr r0
/* 800E788C 000E47EC  38 21 00 60 */	addi r1, r1, 0x60
/* 800E7890 000E47F0  4E 80 00 20 */	blr

.global AcceptScriptMsg__7CBeetleF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__7CBeetleF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 800E7894 000E47F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E7898 000E47F8  7C 08 02 A6 */	mflr r0
/* 800E789C 000E47FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E78A0 000E4800  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800E78A4 000E4804  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800E78A8 000E4808  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800E78AC 000E480C  7C 9C 23 78 */	mr r28, r4
/* 800E78B0 000E4810  7C 7B 1B 78 */	mr r27, r3
/* 800E78B4 000E4814  28 1C 00 23 */	cmplwi r28, 0x23
/* 800E78B8 000E4818  7C BD 2B 78 */	mr r29, r5
/* 800E78BC 000E481C  7C DE 33 78 */	mr r30, r6
/* 800E78C0 000E4820  3B E0 00 01 */	li r31, 1
/* 800E78C4 000E4824  41 81 01 38 */	bgt lbl_800E79FC
/* 800E78C8 000E4828  3C 80 80 3E */	lis r4, lbl_803DFB5C@ha
/* 800E78CC 000E482C  57 80 10 3A */	slwi r0, r28, 2
/* 800E78D0 000E4830  38 84 FB 5C */	addi r4, r4, lbl_803DFB5C@l
/* 800E78D4 000E4834  7C 04 00 2E */	lwzx r0, r4, r0
/* 800E78D8 000E4838  7C 09 03 A6 */	mtctr r0
/* 800E78DC 000E483C  4E 80 04 20 */	bctr
.global lbl_800E78E0
lbl_800E78E0:
/* 800E78E0 000E4840  7F C4 F3 78 */	mr r4, r30
/* 800E78E4 000E4844  4B FF BE C9 */	bl SquadAdd__7CBeetleFR13CStateManager
/* 800E78E8 000E4848  48 00 01 14 */	b lbl_800E79FC
.global lbl_800E78EC
lbl_800E78EC:
/* 800E78EC 000E484C  7F 63 DB 78 */	mr r3, r27
/* 800E78F0 000E4850  7F C4 F3 78 */	mr r4, r30
/* 800E78F4 000E4854  4B FF BE 15 */	bl SquadRemove__7CBeetleFR13CStateManager
/* 800E78F8 000E4858  48 00 01 04 */	b lbl_800E79FC
.global lbl_800E78FC
lbl_800E78FC:
/* 800E78FC 000E485C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 800E7900 000E4860  C4 04 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r4)
/* 800E7904 000E4864  38 60 00 01 */	li r3, 1
/* 800E7908 000E4868  3B E0 00 00 */	li r31, 0
/* 800E790C 000E486C  D0 1B 01 50 */	stfs f0, 0x150(r27)
/* 800E7910 000E4870  C0 04 00 04 */	lfs f0, 4(r4)
/* 800E7914 000E4874  D0 1B 01 54 */	stfs f0, 0x154(r27)
/* 800E7918 000E4878  C0 04 00 08 */	lfs f0, 8(r4)
/* 800E791C 000E487C  D0 1B 01 58 */	stfs f0, 0x158(r27)
/* 800E7920 000E4880  88 1B 03 28 */	lbz r0, 0x328(r27)
/* 800E7924 000E4884  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 800E7928 000E4888  98 1B 03 28 */	stb r0, 0x328(r27)
/* 800E792C 000E488C  48 00 00 D0 */	b lbl_800E79FC
.global lbl_800E7930
lbl_800E7930:
/* 800E7930 000E4890  80 9B 04 50 */	lwz r4, 0x450(r27)
/* 800E7934 000E4894  88 04 03 00 */	lbz r0, 0x300(r4)
/* 800E7938 000E4898  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 800E793C 000E489C  40 82 00 40 */	bne lbl_800E797C
/* 800E7940 000E48A0  81 83 00 00 */	lwz r12, 0(r3)
/* 800E7944 000E48A4  C3 FB 00 E8 */	lfs f31, 0xe8(r27)
/* 800E7948 000E48A8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 800E794C 000E48AC  7D 89 03 A6 */	mtctr r12
/* 800E7950 000E48B0  4E 80 04 21 */	bctrl
/* 800E7954 000E48B4  EC 01 07 F2 */	fmuls f0, f1, f31
/* 800E7958 000E48B8  C0 22 8F E4 */	lfs f1, lbl_805AAD04@sda21(r2)
/* 800E795C 000E48BC  38 60 00 00 */	li r3, 0
/* 800E7960 000E48C0  D0 3B 01 50 */	stfs f1, 0x150(r27)
/* 800E7964 000E48C4  FC 00 00 50 */	fneg f0, f0
/* 800E7968 000E48C8  D0 3B 01 54 */	stfs f1, 0x154(r27)
/* 800E796C 000E48CC  D0 1B 01 58 */	stfs f0, 0x158(r27)
/* 800E7970 000E48D0  88 1B 03 28 */	lbz r0, 0x328(r27)
/* 800E7974 000E48D4  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 800E7978 000E48D8  98 1B 03 28 */	stb r0, 0x328(r27)
lbl_800E797C:
/* 800E797C 000E48DC  3B E0 00 00 */	li r31, 0
/* 800E7980 000E48E0  48 00 00 7C */	b lbl_800E79FC
.global lbl_800E7984
lbl_800E7984:
/* 800E7984 000E48E4  A0 7B 05 70 */	lhz r3, 0x570(r27)
/* 800E7988 000E48E8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800E798C 000E48EC  7C 03 00 40 */	cmplw r3, r0
/* 800E7990 000E48F0  40 82 00 34 */	bne lbl_800E79C4
/* 800E7994 000E48F4  7F 64 DB 78 */	mr r4, r27
/* 800E7998 000E48F8  7F C5 F3 78 */	mr r5, r30
/* 800E799C 000E48FC  38 61 00 0C */	addi r3, r1, 0xc
/* 800E79A0 000E4900  48 15 28 49 */	bl GetTeamAiMgr__10CTeamAiMgrF3CAiRC13CStateManager
/* 800E79A4 000E4904  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 800E79A8 000E4908  B0 1B 05 70 */	sth r0, 0x570(r27)
/* 800E79AC 000E490C  88 1B 00 30 */	lbz r0, 0x30(r27)
/* 800E79B0 000E4910  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800E79B4 000E4914  41 82 00 10 */	beq lbl_800E79C4
/* 800E79B8 000E4918  7F 63 DB 78 */	mr r3, r27
/* 800E79BC 000E491C  7F C4 F3 78 */	mr r4, r30
/* 800E79C0 000E4920  4B FF BD ED */	bl SquadAdd__7CBeetleFR13CStateManager
lbl_800E79C4:
/* 800E79C4 000E4924  7F 63 DB 78 */	mr r3, r27
/* 800E79C8 000E4928  7F C4 F3 78 */	mr r4, r30
/* 800E79CC 000E492C  4B FF B9 25 */	bl SetupRetreatPoints__7CBeetleFR13CStateManager
/* 800E79D0 000E4930  80 BB 00 04 */	lwz r5, 4(r27)
/* 800E79D4 000E4934  80 9E 08 50 */	lwz r4, 0x850(r30)
/* 800E79D8 000E4938  54 A3 18 38 */	slwi r3, r5, 3
/* 800E79DC 000E493C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 800E79E0 000E4940  80 84 00 20 */	lwz r4, 0x20(r4)
/* 800E79E4 000E4944  38 03 00 04 */	addi r0, r3, 4
/* 800E79E8 000E4948  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800E79EC 000E494C  7C 64 00 2E */	lwzx r3, r4, r0
/* 800E79F0 000E4950  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 800E79F4 000E4954  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 800E79F8 000E4958  90 1B 05 FC */	stw r0, 0x5fc(r27)
.global lbl_800E79FC
lbl_800E79FC:
/* 800E79FC 000E495C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800E7A00 000E4960  41 82 00 20 */	beq lbl_800E7A20
/* 800E7A04 000E4964  A0 1D 00 00 */	lhz r0, 0(r29)
/* 800E7A08 000E4968  7F 63 DB 78 */	mr r3, r27
/* 800E7A0C 000E496C  7F 84 E3 78 */	mr r4, r28
/* 800E7A10 000E4970  7F C6 F3 78 */	mr r6, r30
/* 800E7A14 000E4974  B0 01 00 08 */	sth r0, 8(r1)
/* 800E7A18 000E4978  38 A1 00 08 */	addi r5, r1, 8
/* 800E7A1C 000E497C  4B F9 51 5D */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
lbl_800E7A20:
/* 800E7A20 000E4980  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 800E7A24 000E4984  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800E7A28 000E4988  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800E7A2C 000E498C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E7A30 000E4990  7C 08 03 A6 */	mtlr r0
/* 800E7A34 000E4994  38 21 00 40 */	addi r1, r1, 0x40
/* 800E7A38 000E4998  4E 80 00 20 */	blr

.global Accept__7CBeetleFR8IVisitor
Accept__7CBeetleFR8IVisitor:
/* 800E7A3C 000E499C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E7A40 000E49A0  7C 08 02 A6 */	mflr r0
/* 800E7A44 000E49A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E7A48 000E49A8  7C 60 1B 78 */	mr r0, r3
/* 800E7A4C 000E49AC  7C 83 23 78 */	mr r3, r4
/* 800E7A50 000E49B0  81 84 00 00 */	lwz r12, 0(r4)
/* 800E7A54 000E49B4  7C 04 03 78 */	mr r4, r0
/* 800E7A58 000E49B8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 800E7A5C 000E49BC  7D 89 03 A6 */	mtctr r12
/* 800E7A60 000E49C0  4E 80 04 21 */	bctrl
/* 800E7A64 000E49C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E7A68 000E49C8  7C 08 03 A6 */	mtlr r0
/* 800E7A6C 000E49CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800E7A70 000E49D0  4E 80 00 20 */	blr

.global __dt__7CBeetleFv
__dt__7CBeetleFv:
/* 800E7A74 000E49D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E7A78 000E49D8  7C 08 02 A6 */	mflr r0
/* 800E7A7C 000E49DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E7A80 000E49E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E7A84 000E49E4  7C 9F 23 78 */	mr r31, r4
/* 800E7A88 000E49E8  93 C1 00 08 */	stw r30, 8(r1)
/* 800E7A8C 000E49EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800E7A90 000E49F0  41 82 01 14 */	beq lbl_800E7BA4
/* 800E7A94 000E49F4  3C 60 80 3E */	lis r3, lbl_803DF890@ha
/* 800E7A98 000E49F8  34 1E 06 E0 */	addic. r0, r30, 0x6e0
/* 800E7A9C 000E49FC  38 03 F8 90 */	addi r0, r3, lbl_803DF890@l
/* 800E7AA0 000E4A00  90 1E 00 00 */	stw r0, 0(r30)
/* 800E7AA4 000E4A04  41 82 00 58 */	beq lbl_800E7AFC
/* 800E7AA8 000E4A08  80 BE 06 E0 */	lwz r5, 0x6e0(r30)
/* 800E7AAC 000E4A0C  38 60 00 00 */	li r3, 0
/* 800E7AB0 000E4A10  2C 05 00 00 */	cmpwi r5, 0
/* 800E7AB4 000E4A14  40 81 00 40 */	ble lbl_800E7AF4
/* 800E7AB8 000E4A18  2C 05 00 08 */	cmpwi r5, 8
/* 800E7ABC 000E4A1C  38 85 FF F8 */	addi r4, r5, -8
/* 800E7AC0 000E4A20  40 81 00 20 */	ble lbl_800E7AE0
/* 800E7AC4 000E4A24  38 04 00 07 */	addi r0, r4, 7
/* 800E7AC8 000E4A28  54 00 E8 FE */	srwi r0, r0, 3
/* 800E7ACC 000E4A2C  7C 09 03 A6 */	mtctr r0
/* 800E7AD0 000E4A30  2C 04 00 00 */	cmpwi r4, 0
/* 800E7AD4 000E4A34  40 81 00 0C */	ble lbl_800E7AE0
lbl_800E7AD8:
/* 800E7AD8 000E4A38  38 63 00 08 */	addi r3, r3, 8
/* 800E7ADC 000E4A3C  42 00 FF FC */	bdnz lbl_800E7AD8
lbl_800E7AE0:
/* 800E7AE0 000E4A40  7C 03 28 50 */	subf r0, r3, r5
/* 800E7AE4 000E4A44  7C 09 03 A6 */	mtctr r0
/* 800E7AE8 000E4A48  7C 03 28 00 */	cmpw r3, r5
/* 800E7AEC 000E4A4C  40 80 00 08 */	bge lbl_800E7AF4
lbl_800E7AF0:
/* 800E7AF0 000E4A50  42 00 00 00 */	bdnz lbl_800E7AF0
lbl_800E7AF4:
/* 800E7AF4 000E4A54  38 00 00 00 */	li r0, 0
/* 800E7AF8 000E4A58  90 1E 06 E0 */	stw r0, 0x6e0(r30)
lbl_800E7AFC:
/* 800E7AFC 000E4A5C  34 1E 05 FC */	addic. r0, r30, 0x5fc
/* 800E7B00 000E4A60  41 82 00 60 */	beq lbl_800E7B60
/* 800E7B04 000E4A64  34 1E 06 00 */	addic. r0, r30, 0x600
/* 800E7B08 000E4A68  41 82 00 58 */	beq lbl_800E7B60
/* 800E7B0C 000E4A6C  80 BE 06 00 */	lwz r5, 0x600(r30)
/* 800E7B10 000E4A70  38 60 00 00 */	li r3, 0
/* 800E7B14 000E4A74  2C 05 00 00 */	cmpwi r5, 0
/* 800E7B18 000E4A78  40 81 00 40 */	ble lbl_800E7B58
/* 800E7B1C 000E4A7C  2C 05 00 08 */	cmpwi r5, 8
/* 800E7B20 000E4A80  38 85 FF F8 */	addi r4, r5, -8
/* 800E7B24 000E4A84  40 81 00 20 */	ble lbl_800E7B44
/* 800E7B28 000E4A88  38 04 00 07 */	addi r0, r4, 7
/* 800E7B2C 000E4A8C  54 00 E8 FE */	srwi r0, r0, 3
/* 800E7B30 000E4A90  7C 09 03 A6 */	mtctr r0
/* 800E7B34 000E4A94  2C 04 00 00 */	cmpwi r4, 0
/* 800E7B38 000E4A98  40 81 00 0C */	ble lbl_800E7B44
lbl_800E7B3C:
/* 800E7B3C 000E4A9C  38 63 00 08 */	addi r3, r3, 8
/* 800E7B40 000E4AA0  42 00 FF FC */	bdnz lbl_800E7B3C
lbl_800E7B44:
/* 800E7B44 000E4AA4  7C 03 28 50 */	subf r0, r3, r5
/* 800E7B48 000E4AA8  7C 09 03 A6 */	mtctr r0
/* 800E7B4C 000E4AAC  7C 03 28 00 */	cmpw r3, r5
/* 800E7B50 000E4AB0  40 80 00 08 */	bge lbl_800E7B58
lbl_800E7B54:
/* 800E7B54 000E4AB4  42 00 00 00 */	bdnz lbl_800E7B54
lbl_800E7B58:
/* 800E7B58 000E4AB8  38 00 00 00 */	li r0, 0
/* 800E7B5C 000E4ABC  90 1E 06 00 */	stw r0, 0x600(r30)
lbl_800E7B60:
/* 800E7B60 000E4AC0  34 1E 05 AC */	addic. r0, r30, 0x5ac
/* 800E7B64 000E4AC4  41 82 00 24 */	beq lbl_800E7B88
/* 800E7B68 000E4AC8  88 1E 05 F8 */	lbz r0, 0x5f8(r30)
/* 800E7B6C 000E4ACC  28 00 00 00 */	cmplwi r0, 0
/* 800E7B70 000E4AD0  41 82 00 10 */	beq lbl_800E7B80
/* 800E7B74 000E4AD4  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 800E7B78 000E4AD8  38 80 FF FF */	li r4, -1
/* 800E7B7C 000E4ADC  48 02 EE D1 */	bl __dt__10CModelDataFv
lbl_800E7B80:
/* 800E7B80 000E4AE0  38 00 00 00 */	li r0, 0
/* 800E7B84 000E4AE4  98 1E 05 F8 */	stb r0, 0x5f8(r30)
lbl_800E7B88:
/* 800E7B88 000E4AE8  7F C3 F3 78 */	mr r3, r30
/* 800E7B8C 000E4AEC  38 80 00 00 */	li r4, 0
/* 800E7B90 000E4AF0  4B F8 F9 E1 */	bl __dt__10CPatternedFv
/* 800E7B94 000E4AF4  7F E0 07 35 */	extsh. r0, r31
/* 800E7B98 000E4AF8  40 81 00 0C */	ble lbl_800E7BA4
/* 800E7B9C 000E4AFC  7F C3 F3 78 */	mr r3, r30
/* 800E7BA0 000E4B00  48 22 DD 91 */	bl Free__7CMemoryFPCv
lbl_800E7BA4:
/* 800E7BA4 000E4B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E7BA8 000E4B08  7F C3 F3 78 */	mr r3, r30
/* 800E7BAC 000E4B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E7BB0 000E4B10  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E7BB4 000E4B14  7C 08 03 A6 */	mtlr r0
/* 800E7BB8 000E4B18  38 21 00 10 */	addi r1, r1, 0x10
/* 800E7BBC 000E4B1C  4E 80 00 20 */	blr

.global "__ct__7CBeetleF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned11EFlavorTypeQ27CBeetle13EEntranceTypeRC11CDamageInfoRC20CDamageVulnerabilityRC9CVector3ffRC20CDamageVulnerabilityRC16CActorParametersRCQ24rstl29optional_object<10CStaticRes>"
"__ct__7CBeetleF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned11EFlavorTypeQ27CBeetle13EEntranceTypeRC11CDamageInfoRC20CDamageVulnerabilityRC9CVector3ffRC20CDamageVulnerabilityRC16CActorParametersRCQ24rstl29optional_object<10CStaticRes>":
/* 800E7BC0 000E4B20  94 21 FD 70 */	stwu r1, -0x290(r1)
/* 800E7BC4 000E4B24  7C 08 02 A6 */	mflr r0
/* 800E7BC8 000E4B28  90 01 02 94 */	stw r0, 0x294(r1)
/* 800E7BCC 000E4B2C  DB E1 02 80 */	stfd f31, 0x280(r1)
/* 800E7BD0 000E4B30  F3 E1 02 88 */	psq_st f31, 648(r1), 0, qr0
/* 800E7BD4 000E4B34  DB C1 02 70 */	stfd f30, 0x270(r1)
/* 800E7BD8 000E4B38  F3 C1 02 78 */	psq_st f30, 632(r1), 0, qr0
/* 800E7BDC 000E4B3C  DB A1 02 60 */	stfd f29, 0x260(r1)
/* 800E7BE0 000E4B40  F3 A1 02 68 */	psq_st f29, 616(r1), 0, qr0
/* 800E7BE4 000E4B44  BE A1 02 34 */	stmw r21, 0x234(r1)
/* 800E7BE8 000E4B48  A0 04 00 00 */	lhz r0, 0(r4)
/* 800E7BEC 000E4B4C  7D 3B 4B 78 */	mr r27, r9
/* 800E7BF0 000E4B50  7C CC 33 78 */	mr r12, r6
/* 800E7BF4 000E4B54  7C 8A 00 D0 */	neg r4, r10
/* 800E7BF8 000E4B58  B0 01 00 20 */	sth r0, 0x20(r1)
/* 800E7BFC 000E4B5C  7C 84 53 78 */	or r4, r4, r10
/* 800E7C00 000E4B60  7D 0B 43 78 */	mr r11, r8
/* 800E7C04 000E4B64  7C E9 3B 78 */	mr r9, r7
/* 800E7C08 000E4B68  93 61 00 08 */	stw r27, 8(r1)
/* 800E7C0C 000E4B6C  38 00 00 00 */	li r0, 0
/* 800E7C10 000E4B70  7D 47 53 78 */	mr r7, r10
/* 800E7C14 000E4B74  80 C1 02 AC */	lwz r6, 0x2ac(r1)
/* 800E7C18 000E4B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E7C1C 000E4B7C  38 00 00 01 */	li r0, 1
/* 800E7C20 000E4B80  FF A0 08 90 */	fmr f29, f1
/* 800E7C24 000E4B84  54 84 0F FE */	srwi r4, r4, 0x1f
/* 800E7C28 000E4B88  90 01 00 10 */	stw r0, 0x10(r1)
/* 800E7C2C 000E4B8C  FF C0 10 90 */	fmr f30, f2
/* 800E7C30 000E4B90  FF E0 18 90 */	fmr f31, f3
/* 800E7C34 000E4B94  83 81 02 98 */	lwz r28, 0x298(r1)
/* 800E7C38 000E4B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E7C3C 000E4B9C  7C 7A 1B 78 */	mr r26, r3
/* 800E7C40 000E4BA0  83 A1 02 9C */	lwz r29, 0x29c(r1)
/* 800E7C44 000E4BA4  7D 88 63 78 */	mr r8, r12
/* 800E7C48 000E4BA8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 800E7C4C 000E4BAC  7C A6 2B 78 */	mr r6, r5
/* 800E7C50 000E4BB0  83 C1 02 A0 */	lwz r30, 0x2a0(r1)
/* 800E7C54 000E4BB4  7D 6A 5B 78 */	mr r10, r11
/* 800E7C58 000E4BB8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 800E7C5C 000E4BBC  38 A1 00 20 */	addi r5, r1, 0x20
/* 800E7C60 000E4BC0  82 C1 02 A4 */	lwz r22, 0x2a4(r1)
/* 800E7C64 000E4BC4  38 80 00 03 */	li r4, 3
/* 800E7C68 000E4BC8  83 E1 02 A8 */	lwz r31, 0x2a8(r1)
/* 800E7C6C 000E4BCC  82 E1 02 B0 */	lwz r23, 0x2b0(r1)
/* 800E7C70 000E4BD0  4B F9 57 E1 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 800E7C74 000E4BD4  3C 60 80 3E */	lis r3, lbl_803DF890@ha
/* 800E7C78 000E4BD8  38 00 FF FF */	li r0, -1
/* 800E7C7C 000E4BDC  38 63 F8 90 */	addi r3, r3, lbl_803DF890@l
/* 800E7C80 000E4BE0  C0 22 90 14 */	lfs f1, lbl_805AAD34@sda21(r2)
/* 800E7C84 000E4BE4  90 7A 00 00 */	stw r3, 0(r26)
/* 800E7C88 000E4BE8  3B 20 00 00 */	li r25, 0
/* 800E7C8C 000E4BEC  C0 02 8F E4 */	lfs f0, lbl_805AAD04@sda21(r2)
/* 800E7C90 000E4BF0  3B 00 00 00 */	li r24, 0
/* 800E7C94 000E4BF4  90 1A 05 68 */	stw r0, 0x568(r26)
/* 800E7C98 000E4BF8  3A A0 00 00 */	li r21, 0
/* 800E7C9C 000E4BFC  93 9A 05 6C */	stw r28, 0x56c(r26)
/* 800E7CA0 000E4C00  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800E7CA4 000E4C04  B0 1A 05 70 */	sth r0, 0x570(r26)
/* 800E7CA8 000E4C08  C0 56 00 00 */	lfs f2, 0(r22)
/* 800E7CAC 000E4C0C  D0 5A 05 74 */	stfs f2, 0x574(r26)
/* 800E7CB0 000E4C10  C0 56 00 04 */	lfs f2, 4(r22)
/* 800E7CB4 000E4C14  D0 5A 05 78 */	stfs f2, 0x578(r26)
/* 800E7CB8 000E4C18  C0 56 00 08 */	lfs f2, 8(r22)
/* 800E7CBC 000E4C1C  D0 5A 05 7C */	stfs f2, 0x57c(r26)
/* 800E7CC0 000E4C20  D3 FA 05 80 */	stfs f31, 0x580(r26)
/* 800E7CC4 000E4C24  80 1D 00 00 */	lwz r0, 0(r29)
/* 800E7CC8 000E4C28  90 1A 05 84 */	stw r0, 0x584(r26)
/* 800E7CCC 000E4C2C  88 1D 00 04 */	lbz r0, 4(r29)
/* 800E7CD0 000E4C30  98 1A 05 88 */	stb r0, 0x588(r26)
/* 800E7CD4 000E4C34  C0 5D 00 08 */	lfs f2, 8(r29)
/* 800E7CD8 000E4C38  D0 5A 05 8C */	stfs f2, 0x58c(r26)
/* 800E7CDC 000E4C3C  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 800E7CE0 000E4C40  D0 5A 05 90 */	stfs f2, 0x590(r26)
/* 800E7CE4 000E4C44  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 800E7CE8 000E4C48  D0 5A 05 94 */	stfs f2, 0x594(r26)
/* 800E7CEC 000E4C4C  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 800E7CF0 000E4C50  D0 5A 05 98 */	stfs f2, 0x598(r26)
/* 800E7CF4 000E4C54  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 800E7CF8 000E4C58  98 1A 05 9C */	stb r0, 0x59c(r26)
/* 800E7CFC 000E4C5C  D0 3A 05 A0 */	stfs f1, 0x5a0(r26)
/* 800E7D00 000E4C60  D0 3A 05 A4 */	stfs f1, 0x5a4(r26)
/* 800E7D04 000E4C64  D0 1A 05 A8 */	stfs f0, 0x5a8(r26)
/* 800E7D08 000E4C68  88 17 00 10 */	lbz r0, 0x10(r23)
/* 800E7D0C 000E4C6C  28 00 00 00 */	cmplwi r0, 0
/* 800E7D10 000E4C70  41 82 00 2C */	beq lbl_800E7D3C
/* 800E7D14 000E4C74  7E E4 BB 78 */	mr r4, r23
/* 800E7D18 000E4C78  38 61 01 50 */	addi r3, r1, 0x150
/* 800E7D1C 000E4C7C  48 02 F0 41 */	bl __ct__10CModelDataFRC10CStaticRes
/* 800E7D20 000E4C80  38 61 01 00 */	addi r3, r1, 0x100
/* 800E7D24 000E4C84  38 81 01 50 */	addi r4, r1, 0x150
/* 800E7D28 000E4C88  3B 20 00 01 */	li r25, 1
/* 800E7D2C 000E4C8C  48 00 05 6D */	bl sub_800e8298
/* 800E7D30 000E4C90  38 81 01 00 */	addi r4, r1, 0x100
/* 800E7D34 000E4C94  3B 00 00 01 */	li r24, 1
/* 800E7D38 000E4C98  48 00 00 14 */	b lbl_800E7D4C
lbl_800E7D3C:
/* 800E7D3C 000E4C9C  38 00 00 00 */	li r0, 0
/* 800E7D40 000E4CA0  38 81 00 B0 */	addi r4, r1, 0xb0
/* 800E7D44 000E4CA4  98 01 00 FC */	stb r0, 0xfc(r1)
/* 800E7D48 000E4CA8  3A A0 00 01 */	li r21, 1
lbl_800E7D4C:
/* 800E7D4C 000E4CAC  38 7A 05 AC */	addi r3, r26, 0x5ac
/* 800E7D50 000E4CB0  48 00 04 DD */	bl sub_800e822c
/* 800E7D54 000E4CB4  7E A0 07 75 */	extsb. r0, r21
/* 800E7D58 000E4CB8  41 82 00 24 */	beq lbl_800E7D7C
/* 800E7D5C 000E4CBC  88 01 00 FC */	lbz r0, 0xfc(r1)
/* 800E7D60 000E4CC0  28 00 00 00 */	cmplwi r0, 0
/* 800E7D64 000E4CC4  41 82 00 10 */	beq lbl_800E7D74
/* 800E7D68 000E4CC8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 800E7D6C 000E4CCC  38 80 FF FF */	li r4, -1
/* 800E7D70 000E4CD0  48 02 EC DD */	bl __dt__10CModelDataFv
lbl_800E7D74:
/* 800E7D74 000E4CD4  38 00 00 00 */	li r0, 0
/* 800E7D78 000E4CD8  98 01 00 FC */	stb r0, 0xfc(r1)
lbl_800E7D7C:
/* 800E7D7C 000E4CDC  7F 00 07 75 */	extsb. r0, r24
/* 800E7D80 000E4CE0  41 82 00 24 */	beq lbl_800E7DA4
/* 800E7D84 000E4CE4  88 01 01 4C */	lbz r0, 0x14c(r1)
/* 800E7D88 000E4CE8  28 00 00 00 */	cmplwi r0, 0
/* 800E7D8C 000E4CEC  41 82 00 10 */	beq lbl_800E7D9C
/* 800E7D90 000E4CF0  38 61 01 00 */	addi r3, r1, 0x100
/* 800E7D94 000E4CF4  38 80 FF FF */	li r4, -1
/* 800E7D98 000E4CF8  48 02 EC B5 */	bl __dt__10CModelDataFv
lbl_800E7D9C:
/* 800E7D9C 000E4CFC  38 00 00 00 */	li r0, 0
/* 800E7DA0 000E4D00  98 01 01 4C */	stb r0, 0x14c(r1)
lbl_800E7DA4:
/* 800E7DA4 000E4D04  7F 20 07 75 */	extsb. r0, r25
/* 800E7DA8 000E4D08  41 82 00 10 */	beq lbl_800E7DB8
/* 800E7DAC 000E4D0C  38 61 01 50 */	addi r3, r1, 0x150
/* 800E7DB0 000E4D10  38 80 FF FF */	li r4, -1
/* 800E7DB4 000E4D14  48 02 EC 99 */	bl __dt__10CModelDataFv
lbl_800E7DB8:
/* 800E7DB8 000E4D18  C0 22 8F E8 */	lfs f1, lbl_805AAD08@sda21(r2)
/* 800E7DBC 000E4D1C  38 7A 05 FC */	addi r3, r26, 0x5fc
/* 800E7DC0 000E4D20  80 DB 01 0C */	lwz r6, 0x10c(r27)
/* 800E7DC4 000E4D24  38 80 00 00 */	li r4, 0
/* 800E7DC8 000E4D28  FC 40 08 90 */	fmr f2, f1
/* 800E7DCC 000E4D2C  38 A0 00 01 */	li r5, 1
/* 800E7DD0 000E4D30  48 0E 0F C5 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 800E7DD4 000E4D34  38 00 00 00 */	li r0, 0
/* 800E7DD8 000E4D38  90 1A 06 E0 */	stw r0, 0x6e0(r26)
/* 800E7DDC 000E4D3C  80 9E 00 00 */	lwz r4, 0(r30)
/* 800E7DE0 000E4D40  80 7E 00 04 */	lwz r3, 4(r30)
/* 800E7DE4 000E4D44  90 9A 07 44 */	stw r4, 0x744(r26)
/* 800E7DE8 000E4D48  90 7A 07 48 */	stw r3, 0x748(r26)
/* 800E7DEC 000E4D4C  80 9E 00 08 */	lwz r4, 8(r30)
/* 800E7DF0 000E4D50  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800E7DF4 000E4D54  90 9A 07 4C */	stw r4, 0x74c(r26)
/* 800E7DF8 000E4D58  90 7A 07 50 */	stw r3, 0x750(r26)
/* 800E7DFC 000E4D5C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 800E7E00 000E4D60  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 800E7E04 000E4D64  90 9A 07 54 */	stw r4, 0x754(r26)
/* 800E7E08 000E4D68  90 7A 07 58 */	stw r3, 0x758(r26)
/* 800E7E0C 000E4D6C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 800E7E10 000E4D70  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 800E7E14 000E4D74  90 9A 07 5C */	stw r4, 0x75c(r26)
/* 800E7E18 000E4D78  90 7A 07 60 */	stw r3, 0x760(r26)
/* 800E7E1C 000E4D7C  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 800E7E20 000E4D80  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 800E7E24 000E4D84  90 9A 07 64 */	stw r4, 0x764(r26)
/* 800E7E28 000E4D88  90 7A 07 68 */	stw r3, 0x768(r26)
/* 800E7E2C 000E4D8C  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 800E7E30 000E4D90  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 800E7E34 000E4D94  90 9A 07 6C */	stw r4, 0x76c(r26)
/* 800E7E38 000E4D98  90 7A 07 70 */	stw r3, 0x770(r26)
/* 800E7E3C 000E4D9C  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 800E7E40 000E4DA0  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 800E7E44 000E4DA4  90 9A 07 74 */	stw r4, 0x774(r26)
/* 800E7E48 000E4DA8  90 7A 07 78 */	stw r3, 0x778(r26)
/* 800E7E4C 000E4DAC  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 800E7E50 000E4DB0  90 7A 07 7C */	stw r3, 0x77c(r26)
/* 800E7E54 000E4DB4  80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 800E7E58 000E4DB8  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 800E7E5C 000E4DBC  90 9A 07 80 */	stw r4, 0x780(r26)
/* 800E7E60 000E4DC0  90 7A 07 84 */	stw r3, 0x784(r26)
/* 800E7E64 000E4DC4  80 9E 00 44 */	lwz r4, 0x44(r30)
/* 800E7E68 000E4DC8  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 800E7E6C 000E4DCC  90 9A 07 88 */	stw r4, 0x788(r26)
/* 800E7E70 000E4DD0  90 7A 07 8C */	stw r3, 0x78c(r26)
/* 800E7E74 000E4DD4  80 9E 00 4C */	lwz r4, 0x4c(r30)
/* 800E7E78 000E4DD8  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 800E7E7C 000E4DDC  90 9A 07 90 */	stw r4, 0x790(r26)
/* 800E7E80 000E4DE0  90 7A 07 94 */	stw r3, 0x794(r26)
/* 800E7E84 000E4DE4  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 800E7E88 000E4DE8  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 800E7E8C 000E4DEC  90 9A 07 98 */	stw r4, 0x798(r26)
/* 800E7E90 000E4DF0  90 7A 07 9C */	stw r3, 0x79c(r26)
/* 800E7E94 000E4DF4  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 800E7E98 000E4DF8  90 7A 07 A0 */	stw r3, 0x7a0(r26)
/* 800E7E9C 000E4DFC  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 800E7EA0 000E4E00  90 7A 07 A4 */	stw r3, 0x7a4(r26)
/* 800E7EA4 000E4E04  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 800E7EA8 000E4E08  90 7A 07 A8 */	stw r3, 0x7a8(r26)
/* 800E7EAC 000E4E0C  80 9F 00 00 */	lwz r4, 0(r31)
/* 800E7EB0 000E4E10  80 7F 00 04 */	lwz r3, 4(r31)
/* 800E7EB4 000E4E14  90 9A 07 AC */	stw r4, 0x7ac(r26)
/* 800E7EB8 000E4E18  90 7A 07 B0 */	stw r3, 0x7b0(r26)
/* 800E7EBC 000E4E1C  80 9F 00 08 */	lwz r4, 8(r31)
/* 800E7EC0 000E4E20  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 800E7EC4 000E4E24  90 9A 07 B4 */	stw r4, 0x7b4(r26)
/* 800E7EC8 000E4E28  90 7A 07 B8 */	stw r3, 0x7b8(r26)
/* 800E7ECC 000E4E2C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 800E7ED0 000E4E30  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800E7ED4 000E4E34  90 9A 07 BC */	stw r4, 0x7bc(r26)
/* 800E7ED8 000E4E38  90 7A 07 C0 */	stw r3, 0x7c0(r26)
/* 800E7EDC 000E4E3C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 800E7EE0 000E4E40  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800E7EE4 000E4E44  90 9A 07 C4 */	stw r4, 0x7c4(r26)
/* 800E7EE8 000E4E48  90 7A 07 C8 */	stw r3, 0x7c8(r26)
/* 800E7EEC 000E4E4C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 800E7EF0 000E4E50  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 800E7EF4 000E4E54  90 9A 07 CC */	stw r4, 0x7cc(r26)
/* 800E7EF8 000E4E58  90 7A 07 D0 */	stw r3, 0x7d0(r26)
/* 800E7EFC 000E4E5C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 800E7F00 000E4E60  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 800E7F04 000E4E64  90 9A 07 D4 */	stw r4, 0x7d4(r26)
/* 800E7F08 000E4E68  90 7A 07 D8 */	stw r3, 0x7d8(r26)
/* 800E7F0C 000E4E6C  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 800E7F10 000E4E70  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 800E7F14 000E4E74  90 9A 07 DC */	stw r4, 0x7dc(r26)
/* 800E7F18 000E4E78  90 7A 07 E0 */	stw r3, 0x7e0(r26)
/* 800E7F1C 000E4E7C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 800E7F20 000E4E80  90 7A 07 E4 */	stw r3, 0x7e4(r26)
/* 800E7F24 000E4E84  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 800E7F28 000E4E88  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 800E7F2C 000E4E8C  90 9A 07 E8 */	stw r4, 0x7e8(r26)
/* 800E7F30 000E4E90  90 7A 07 EC */	stw r3, 0x7ec(r26)
/* 800E7F34 000E4E94  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 800E7F38 000E4E98  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800E7F3C 000E4E9C  90 9A 07 F0 */	stw r4, 0x7f0(r26)
/* 800E7F40 000E4EA0  90 7A 07 F4 */	stw r3, 0x7f4(r26)
/* 800E7F44 000E4EA4  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 800E7F48 000E4EA8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 800E7F4C 000E4EAC  90 9A 07 F8 */	stw r4, 0x7f8(r26)
/* 800E7F50 000E4EB0  90 7A 07 FC */	stw r3, 0x7fc(r26)
/* 800E7F54 000E4EB4  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 800E7F58 000E4EB8  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 800E7F5C 000E4EBC  90 9A 08 00 */	stw r4, 0x800(r26)
/* 800E7F60 000E4EC0  90 7A 08 04 */	stw r3, 0x804(r26)
/* 800E7F64 000E4EC4  80 BF 00 5C */	lwz r5, 0x5c(r31)
/* 800E7F68 000E4EC8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800E7F6C 000E4ECC  C0 22 90 14 */	lfs f1, lbl_805AAD34@sda21(r2)
/* 800E7F70 000E4ED0  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 800E7F74 000E4ED4  90 BA 08 08 */	stw r5, 0x808(r26)
/* 800E7F78 000E4ED8  38 61 00 64 */	addi r3, r1, 0x64
/* 800E7F7C 000E4EDC  C0 02 8F E8 */	lfs f0, lbl_805AAD08@sda21(r2)
/* 800E7F80 000E4EE0  80 BF 00 60 */	lwz r5, 0x60(r31)
/* 800E7F84 000E4EE4  90 BA 08 0C */	stw r5, 0x80c(r26)
/* 800E7F88 000E4EE8  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 800E7F8C 000E4EEC  90 BA 08 10 */	stw r5, 0x810(r26)
/* 800E7F90 000E4EF0  D3 BA 08 14 */	stfs f29, 0x814(r26)
/* 800E7F94 000E4EF4  D0 3A 08 18 */	stfs f1, 0x818(r26)
/* 800E7F98 000E4EF8  C0 3A 03 B4 */	lfs f1, 0x3b4(r26)
/* 800E7F9C 000E4EFC  D0 3A 08 1C */	stfs f1, 0x81c(r26)
/* 800E7FA0 000E4F00  90 1A 08 20 */	stw r0, 0x820(r26)
/* 800E7FA4 000E4F04  C0 24 00 00 */	lfs f1, 0(r4)
/* 800E7FA8 000E4F08  D0 3A 08 24 */	stfs f1, 0x824(r26)
/* 800E7FAC 000E4F0C  C0 24 00 04 */	lfs f1, 4(r4)
/* 800E7FB0 000E4F10  D0 3A 08 28 */	stfs f1, 0x828(r26)
/* 800E7FB4 000E4F14  C0 24 00 08 */	lfs f1, 8(r4)
/* 800E7FB8 000E4F18  D0 3A 08 2C */	stfs f1, 0x82c(r26)
/* 800E7FBC 000E4F1C  D0 1A 08 30 */	stfs f0, 0x830(r26)
/* 800E7FC0 000E4F20  D3 DA 08 34 */	stfs f30, 0x834(r26)
/* 800E7FC4 000E4F24  88 9A 08 38 */	lbz r4, 0x838(r26)
/* 800E7FC8 000E4F28  50 04 3E 30 */	rlwimi r4, r0, 7, 0x18, 0x18
/* 800E7FCC 000E4F2C  98 9A 08 38 */	stb r4, 0x838(r26)
/* 800E7FD0 000E4F30  88 9A 08 38 */	lbz r4, 0x838(r26)
/* 800E7FD4 000E4F34  50 04 36 72 */	rlwimi r4, r0, 6, 0x19, 0x19
/* 800E7FD8 000E4F38  98 9A 08 38 */	stb r4, 0x838(r26)
/* 800E7FDC 000E4F3C  88 9A 08 38 */	lbz r4, 0x838(r26)
/* 800E7FE0 000E4F40  50 04 2E B4 */	rlwimi r4, r0, 5, 0x1a, 0x1a
/* 800E7FE4 000E4F44  98 9A 08 38 */	stb r4, 0x838(r26)
/* 800E7FE8 000E4F48  48 1F B0 95 */	bl NoParameter__12CPASAnimParmFv
/* 800E7FEC 000E4F4C  38 61 00 6C */	addi r3, r1, 0x6c
/* 800E7FF0 000E4F50  48 1F B0 8D */	bl NoParameter__12CPASAnimParmFv
/* 800E7FF4 000E4F54  38 61 00 74 */	addi r3, r1, 0x74
/* 800E7FF8 000E4F58  48 1F B0 85 */	bl NoParameter__12CPASAnimParmFv
/* 800E7FFC 000E4F5C  38 61 00 7C */	addi r3, r1, 0x7c
/* 800E8000 000E4F60  48 1F B0 7D */	bl NoParameter__12CPASAnimParmFv
/* 800E8004 000E4F64  38 61 00 84 */	addi r3, r1, 0x84
/* 800E8008 000E4F68  48 1F B0 75 */	bl NoParameter__12CPASAnimParmFv
/* 800E800C 000E4F6C  38 61 00 8C */	addi r3, r1, 0x8c
/* 800E8010 000E4F70  48 1F B0 6D */	bl NoParameter__12CPASAnimParmFv
/* 800E8014 000E4F74  38 61 00 94 */	addi r3, r1, 0x94
/* 800E8018 000E4F78  38 80 00 01 */	li r4, 1
/* 800E801C 000E4F7C  48 1F AF 69 */	bl FromEnum__12CPASAnimParmFi
/* 800E8020 000E4F80  38 61 00 9C */	addi r3, r1, 0x9c
/* 800E8024 000E4F84  38 80 00 00 */	li r4, 0
/* 800E8028 000E4F88  48 1F AF 5D */	bl FromEnum__12CPASAnimParmFi
/* 800E802C 000E4F8C  38 61 00 6C */	addi r3, r1, 0x6c
/* 800E8030 000E4F90  38 01 00 64 */	addi r0, r1, 0x64
/* 800E8034 000E4F94  90 61 00 08 */	stw r3, 8(r1)
/* 800E8038 000E4F98  38 61 01 E4 */	addi r3, r1, 0x1e4
/* 800E803C 000E4F9C  38 A1 00 9C */	addi r5, r1, 0x9c
/* 800E8040 000E4FA0  38 C1 00 94 */	addi r6, r1, 0x94
/* 800E8044 000E4FA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E8048 000E4FA8  38 E1 00 8C */	addi r7, r1, 0x8c
/* 800E804C 000E4FAC  39 01 00 84 */	addi r8, r1, 0x84
/* 800E8050 000E4FB0  39 21 00 7C */	addi r9, r1, 0x7c
/* 800E8054 000E4FB4  39 41 00 74 */	addi r10, r1, 0x74
/* 800E8058 000E4FB8  38 80 00 07 */	li r4, 7
/* 800E805C 000E4FBC  4B F9 52 69 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 800E8060 000E4FC0  7F 43 D3 78 */	mr r3, r26
/* 800E8064 000E4FC4  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 800E8068 000E4FC8  4B F9 49 99 */	bl func_8007CA00
/* 800E806C 000E4FCC  D0 3A 05 A0 */	stfs f1, 0x5a0(r26)
/* 800E8070 000E4FD0  38 61 00 24 */	addi r3, r1, 0x24
/* 800E8074 000E4FD4  48 1F B0 09 */	bl NoParameter__12CPASAnimParmFv
/* 800E8078 000E4FD8  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E807C 000E4FDC  48 1F B0 01 */	bl NoParameter__12CPASAnimParmFv
/* 800E8080 000E4FE0  38 61 00 34 */	addi r3, r1, 0x34
/* 800E8084 000E4FE4  48 1F AF F9 */	bl NoParameter__12CPASAnimParmFv
/* 800E8088 000E4FE8  38 61 00 3C */	addi r3, r1, 0x3c
/* 800E808C 000E4FEC  48 1F AF F1 */	bl NoParameter__12CPASAnimParmFv
/* 800E8090 000E4FF0  38 61 00 44 */	addi r3, r1, 0x44
/* 800E8094 000E4FF4  48 1F AF E9 */	bl NoParameter__12CPASAnimParmFv
/* 800E8098 000E4FF8  38 61 00 4C */	addi r3, r1, 0x4c
/* 800E809C 000E4FFC  48 1F AF E1 */	bl NoParameter__12CPASAnimParmFv
/* 800E80A0 000E5000  38 61 00 54 */	addi r3, r1, 0x54
/* 800E80A4 000E5004  38 80 00 00 */	li r4, 0
/* 800E80A8 000E5008  48 1F AE DD */	bl FromEnum__12CPASAnimParmFi
/* 800E80AC 000E500C  38 61 00 5C */	addi r3, r1, 0x5c
/* 800E80B0 000E5010  38 80 00 01 */	li r4, 1
/* 800E80B4 000E5014  48 1F AE D1 */	bl FromEnum__12CPASAnimParmFi
/* 800E80B8 000E5018  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E80BC 000E501C  38 01 00 24 */	addi r0, r1, 0x24
/* 800E80C0 000E5020  90 61 00 08 */	stw r3, 8(r1)
/* 800E80C4 000E5024  38 61 01 9C */	addi r3, r1, 0x19c
/* 800E80C8 000E5028  38 A1 00 5C */	addi r5, r1, 0x5c
/* 800E80CC 000E502C  38 C1 00 54 */	addi r6, r1, 0x54
/* 800E80D0 000E5030  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E80D4 000E5034  38 E1 00 4C */	addi r7, r1, 0x4c
/* 800E80D8 000E5038  39 01 00 44 */	addi r8, r1, 0x44
/* 800E80DC 000E503C  39 21 00 3C */	addi r9, r1, 0x3c
/* 800E80E0 000E5040  39 41 00 34 */	addi r10, r1, 0x34
/* 800E80E4 000E5044  38 80 00 03 */	li r4, 3
/* 800E80E8 000E5048  4B F9 51 DD */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 800E80EC 000E504C  80 BA 00 64 */	lwz r5, 0x64(r26)
/* 800E80F0 000E5050  7F 43 D3 78 */	mr r3, r26
/* 800E80F4 000E5054  38 81 01 9C */	addi r4, r1, 0x19c
/* 800E80F8 000E5058  C0 45 00 00 */	lfs f2, 0(r5)
/* 800E80FC 000E505C  C0 25 00 04 */	lfs f1, 4(r5)
/* 800E8100 000E5060  C0 05 00 08 */	lfs f0, 8(r5)
/* 800E8104 000E5064  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 800E8108 000E5068  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 800E810C 000E506C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 800E8110 000E5070  4B F9 48 F1 */	bl func_8007CA00
/* 800E8114 000E5074  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 800E8118 000E5078  7F 43 D3 78 */	mr r3, r26
/* 800E811C 000E507C  EC 00 00 72 */	fmuls f0, f0, f1
/* 800E8120 000E5080  D0 1A 05 A4 */	stfs f0, 0x5a4(r26)
/* 800E8124 000E5084  4B F8 F7 71 */	bl MakeThermalColdAndHot__10CPatternedFv
/* 800E8128 000E5088  80 1A 03 FC */	lwz r0, 0x3fc(r26)
/* 800E812C 000E508C  2C 00 00 01 */	cmpwi r0, 1
/* 800E8130 000E5090  40 82 00 14 */	bne lbl_800E8144
/* 800E8134 000E5094  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 800E8138 000E5098  38 60 00 01 */	li r3, 1
/* 800E813C 000E509C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 800E8140 000E50A0  98 1A 04 E2 */	stb r0, 0x4e2(r26)
lbl_800E8144:
/* 800E8144 000E50A4  34 A1 01 A0 */	addic. r5, r1, 0x1a0
/* 800E8148 000E50A8  41 82 00 58 */	beq lbl_800E81A0
/* 800E814C 000E50AC  80 C5 00 00 */	lwz r6, 0(r5)
/* 800E8150 000E50B0  38 60 00 00 */	li r3, 0
/* 800E8154 000E50B4  2C 06 00 00 */	cmpwi r6, 0
/* 800E8158 000E50B8  40 81 00 40 */	ble lbl_800E8198
/* 800E815C 000E50BC  2C 06 00 08 */	cmpwi r6, 8
/* 800E8160 000E50C0  38 86 FF F8 */	addi r4, r6, -8
/* 800E8164 000E50C4  40 81 00 20 */	ble lbl_800E8184
/* 800E8168 000E50C8  38 04 00 07 */	addi r0, r4, 7
/* 800E816C 000E50CC  54 00 E8 FE */	srwi r0, r0, 3
/* 800E8170 000E50D0  7C 09 03 A6 */	mtctr r0
/* 800E8174 000E50D4  2C 04 00 00 */	cmpwi r4, 0
/* 800E8178 000E50D8  40 81 00 0C */	ble lbl_800E8184
lbl_800E817C:
/* 800E817C 000E50DC  38 63 00 08 */	addi r3, r3, 8
/* 800E8180 000E50E0  42 00 FF FC */	bdnz lbl_800E817C
lbl_800E8184:
/* 800E8184 000E50E4  7C 03 30 50 */	subf r0, r3, r6
/* 800E8188 000E50E8  7C 09 03 A6 */	mtctr r0
/* 800E818C 000E50EC  7C 03 30 00 */	cmpw r3, r6
/* 800E8190 000E50F0  40 80 00 08 */	bge lbl_800E8198
lbl_800E8194:
/* 800E8194 000E50F4  42 00 00 00 */	bdnz lbl_800E8194
lbl_800E8198:
/* 800E8198 000E50F8  38 00 00 00 */	li r0, 0
/* 800E819C 000E50FC  90 05 00 00 */	stw r0, 0(r5)
lbl_800E81A0:
/* 800E81A0 000E5100  34 A1 01 E8 */	addic. r5, r1, 0x1e8
/* 800E81A4 000E5104  41 82 00 58 */	beq lbl_800E81FC
/* 800E81A8 000E5108  80 C5 00 00 */	lwz r6, 0(r5)
/* 800E81AC 000E510C  38 60 00 00 */	li r3, 0
/* 800E81B0 000E5110  2C 06 00 00 */	cmpwi r6, 0
/* 800E81B4 000E5114  40 81 00 40 */	ble lbl_800E81F4
/* 800E81B8 000E5118  2C 06 00 08 */	cmpwi r6, 8
/* 800E81BC 000E511C  38 86 FF F8 */	addi r4, r6, -8
/* 800E81C0 000E5120  40 81 00 20 */	ble lbl_800E81E0
/* 800E81C4 000E5124  38 04 00 07 */	addi r0, r4, 7
/* 800E81C8 000E5128  54 00 E8 FE */	srwi r0, r0, 3
/* 800E81CC 000E512C  7C 09 03 A6 */	mtctr r0
/* 800E81D0 000E5130  2C 04 00 00 */	cmpwi r4, 0
/* 800E81D4 000E5134  40 81 00 0C */	ble lbl_800E81E0
lbl_800E81D8:
/* 800E81D8 000E5138  38 63 00 08 */	addi r3, r3, 8
/* 800E81DC 000E513C  42 00 FF FC */	bdnz lbl_800E81D8
lbl_800E81E0:
/* 800E81E0 000E5140  7C 03 30 50 */	subf r0, r3, r6
/* 800E81E4 000E5144  7C 09 03 A6 */	mtctr r0
/* 800E81E8 000E5148  7C 03 30 00 */	cmpw r3, r6
/* 800E81EC 000E514C  40 80 00 08 */	bge lbl_800E81F4
lbl_800E81F0:
/* 800E81F0 000E5150  42 00 00 00 */	bdnz lbl_800E81F0
lbl_800E81F4:
/* 800E81F4 000E5154  38 00 00 00 */	li r0, 0
/* 800E81F8 000E5158  90 05 00 00 */	stw r0, 0(r5)
lbl_800E81FC:
/* 800E81FC 000E515C  7F 43 D3 78 */	mr r3, r26
/* 800E8200 000E5160  E3 E1 02 88 */	psq_l f31, 648(r1), 0, qr0
/* 800E8204 000E5164  CB E1 02 80 */	lfd f31, 0x280(r1)
/* 800E8208 000E5168  E3 C1 02 78 */	psq_l f30, 632(r1), 0, qr0
/* 800E820C 000E516C  CB C1 02 70 */	lfd f30, 0x270(r1)
/* 800E8210 000E5170  E3 A1 02 68 */	psq_l f29, 616(r1), 0, qr0
/* 800E8214 000E5174  CB A1 02 60 */	lfd f29, 0x260(r1)
/* 800E8218 000E5178  BA A1 02 34 */	lmw r21, 0x234(r1)
/* 800E821C 000E517C  80 01 02 94 */	lwz r0, 0x294(r1)
/* 800E8220 000E5180  7C 08 03 A6 */	mtlr r0
/* 800E8224 000E5184  38 21 02 90 */	addi r1, r1, 0x290
/* 800E8228 000E5188  4E 80 00 20 */	blr

.global sub_800e822c
sub_800e822c:
/* 800E822C 000E518C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E8230 000E5190  7C 08 02 A6 */	mflr r0
/* 800E8234 000E5194  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E8238 000E5198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E823C 000E519C  7C 7F 1B 78 */	mr r31, r3
/* 800E8240 000E51A0  88 04 00 4C */	lbz r0, 0x4c(r4)
/* 800E8244 000E51A4  98 03 00 4C */	stb r0, 0x4c(r3)
/* 800E8248 000E51A8  88 04 00 4C */	lbz r0, 0x4c(r4)
/* 800E824C 000E51AC  28 00 00 00 */	cmplwi r0, 0
/* 800E8250 000E51B0  41 82 00 08 */	beq lbl_800E8258
/* 800E8254 000E51B4  48 00 00 1D */	bl sub_800e8270
lbl_800E8258:
/* 800E8258 000E51B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E825C 000E51BC  7F E3 FB 78 */	mr r3, r31
/* 800E8260 000E51C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E8264 000E51C4  7C 08 03 A6 */	mtlr r0
/* 800E8268 000E51C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E826C 000E51CC  4E 80 00 20 */	blr

.global sub_800e8270
sub_800e8270:
/* 800E8270 000E51D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E8274 000E51D4  7C 08 02 A6 */	mflr r0
/* 800E8278 000E51D8  28 03 00 00 */	cmplwi r3, 0
/* 800E827C 000E51DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E8280 000E51E0  41 82 00 08 */	beq lbl_800E8288
/* 800E8284 000E51E4  4B F3 0B 09 */	bl __ct__10CModelDataFRC10CModelData
lbl_800E8288:
/* 800E8288 000E51E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E828C 000E51EC  7C 08 03 A6 */	mtlr r0
/* 800E8290 000E51F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800E8294 000E51F4  4E 80 00 20 */	blr

.global sub_800e8298
sub_800e8298:
/* 800E8298 000E51F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E829C 000E51FC  7C 08 02 A6 */	mflr r0
/* 800E82A0 000E5200  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E82A4 000E5204  38 00 00 01 */	li r0, 1
/* 800E82A8 000E5208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E82AC 000E520C  7C 7F 1B 78 */	mr r31, r3
/* 800E82B0 000E5210  98 03 00 4C */	stb r0, 0x4c(r3)
/* 800E82B4 000E5214  4B FF FF BD */	bl sub_800e8270
/* 800E82B8 000E5218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E82BC 000E521C  7F E3 FB 78 */	mr r3, r31
/* 800E82C0 000E5220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E82C4 000E5224  7C 08 03 A6 */	mtlr r0
/* 800E82C8 000E5228  38 21 00 10 */	addi r1, r1, 0x10
/* 800E82CC 000E522C  4E 80 00 20 */	blr
